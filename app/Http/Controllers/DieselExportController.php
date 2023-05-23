<?php

namespace App\Http\Controllers;

use App\Models\Diesel;
use App\Models\DieselExport;
use App\Models\Section;
use App\Models\subSection;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DieselExportController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:diesels', ['only' => ['index','show','create', 'store','edit', 'update','destroy']]);
    }

    public function index()
    {
        //
        // $diesel = Diesel::all();
        $dieselexport = DieselExport::select("*")->whereRaw('YEAR(diesel_exports.date) = 2023 ')->get();
        $section = DieselExport::with('section')->get();
        $subSection = DieselExport::with('subSection')->get();
        return view('dieselexport.index', compact('dieselexport', 'section'));
    }

    public function create()
    {
        //
        $section = Section::all();
        $subSection = subSection::all();
        $dieselexport = DieselExport::all();
        return view('dieselexport.create', compact('dieselexport', 'section', 'subSection'));
    }


    public function store(Request $request)
    {
        //
        $request->validate([
            'num_section' => 'required',
            'num_note' => 'required',
            'section_id' => 'required',
            'sub_section_id' => 'required',
            'voucher' => 'required',
            'quantity' => 'required',
            'date' => 'required',

        ]);
        $dieselexport = new DieselExport();

        $dieselexport->num_section = $request->num_section;
        $dieselexport->num_note = $request->num_note;
        $dieselexport->section_id = $request->section_id;
        $dieselexport->sub_section_id = $request->sub_section_id;
        $dieselexport->voucher = $request->voucher;


        // لادخال كمية الصادر بناء على كمية الوارد
        if ((Diesel::sum("quantity") - DieselExport::sum("quantity")) >= $request->quantity) {

            $dieselexport->quantity = $request->quantity;
        } else {
            return back()->with('warning', 'تحقق من كمية السولار المتبقي');
        }
        //انتها شرط الكمية
        $dieselexport->date = $request->date;

        if ($dieselexport->save()) {
            return redirect('dieselexport')->with('success', 'تمت الاضافة بنجاح!');
        }
    }


    public function show($id)
    {
        //
        $dieselexport = DieselExport::find($id);
        return view('dieselexport.show')->with('dieselexport', $dieselexport);
    }


    public function edit($id)
    {
        //
        $dieselexport = DieselExport::find($id);
        $section = Section::all();
        $subSection = subSection::all();
        return view('dieselexport.edit', compact('dieselexport', 'section', 'subSection'))->with('dieselexport', $dieselexport);
    }


    public function update(Request $request, $id)
    {
        //
        $dieselexport = DieselExport::find($id);
        $dieselexport->num_section = $request->num_section;
        $dieselexport->num_note = $request->num_note;
        $dieselexport->section_id = $request->section_id;
        $dieselexport->voucher = $request->voucher;

        // لادخال كمية الصادر بناء على كمية الوارد
        if ((Diesel::sum("quantity") > $request->quantity)) {

            $dieselexport->quantity = $request->quantity;
        } else {
            return back()->with('warning', 'تحقق من كمية السولار المتبقي');
        }
        //انتها شرط الكمية
        $dieselexport->date = $request->date;

        $dieselexport->save();
        return redirect('dieselexport')->with('info', 'تمت التعديل بنجاح!');
    }

    public function destroy($id)
    {
        //
        DieselExport::destroy($id);
        // return redirect('dieselexport')->with('danger', 'تمت الحذف بنجاح!');

    }

    public function report(Request $request)
    {
        //
        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::select("*")->whereRaw('YEAR(diesel_exports.date) = 2023 ')->get();
        $section = Section::all();
        $subSection = subSection::all();
        return view('dieselexport.report', compact('dieselexport', 'section', 'subSection'));
    }

    public function searchvou(Request $request)
    {
        $section = Section::all();
        $subSection = subSection::all();
        // قم بتحميل السند الأول السند الثاني من النموذج
        $startVoucher = $request->input('start_voucher');
        $endVoucher = $request->input('end_voucher');


        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::whereBetween('voucher', [$startVoucher, $endVoucher])->get();
        // $dieselexport=DieselExport::select('quantity')->whereBetween('voucher', [$startVoucher, $endVoucher])->sum('quantity')->get();

        // قم بعرض نتيجة البحث
        return view('dieselexport.report', compact('dieselexport', 'section', 'subSection'));
    }

    public function searchdate(Request $request)
    {
        $section = Section::all();
        $subSection = subSection::all();
        // قم بتحميل التاريخ الأول والتاريخ الثاني من النموذج
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::whereBetween('date', [$startDate, $endDate])->get();

        // قم بعرض نتيجة البحث
        return view('dieselexport.report', compact('dieselexport', 'section', 'subSection'));
    }

    public function searchsec(Request $request)
    {
        $section = Section::all();
        $subSection = subSection::all();
        // قم بتحميل الإيصال الأول الإيصال الثاني من النموذج
        $startNum = $request->input('startNum');
        $endNum = $request->input('endNum');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::whereBetween('num_section', [$startNum, $endNum])->get();

        // قم بعرض نتيجة البحث
        return view('dieselexport.report', compact('dieselexport', 'section', 'subSection'))->with('success', 'تمت عملية البحث !');
    }

    public function searchname(Request $request)
    {
        $section = Section::all();
        $subSection = subSection::all();
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');
        $section_id = $request->input('section_id');
        $subSection_id = $request->input('subSection_id'); // تحميل القيمة الجديدة (إذا تم تحديدها)
        $dieselexport = DieselExport::whereBetween('date', [$startDate, $endDate])
            ->where('section_id', 'like', '%' . $section_id . '%');
        if ($subSection_id) { // إذا تم تحديد قيمة للعنصر البحثي الجديد
            $dieselexport->where('subSection_id', 'like', '%' . $subSection_id . '%');
        }
        $dieselexport = $dieselexport->get();

        return view('dieselexport.report', compact('dieselexport', 'section', 'subSection'));
    }


    public function totalreport(Request $request)
    {

        $dieselexport = DieselExport::select("*")->whereRaw('YEAR(diesel_exports.date) = 2023 ')->get();
        $section = Section::all();
        $subSection = subSection::all();
        return view('dieselexport.total_report', compact('dieselexport', 'section', 'subSection'));
    }


    public function searchtotal(Request $request)
    {
        $section = Section::all();
        $subSection = subSection::all();
        // قم بتحميل السند الأول السند الثاني من النموذج
        $startVoucher = $request->input('start_voucher');
        $endVoucher = $request->input('end_voucher');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::whereBetween('voucher', [$startVoucher, $endVoucher])->get();
        // قم بعرض نتيجة البحث
        return view('dieselexport.total_report', compact('dieselexport', 'section', 'subSection'));
    }
}
