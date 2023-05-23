<?php

namespace App\Http\Controllers;

use App\Models\Diesel;
use App\Models\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DieselController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:diesels', ['only' => ['index','show','create', 'store','edit', 'update','destroy']]);
    }
    
    public function index(Request $request)
    {
        //
        $diesel = Diesel::select('*')->whereRaw('YEAR(diesels.date) = 2023')->get();
        $supplier = Supplier::all();
        return view('diesel.index', compact('diesel', 'supplier'));
    }

    public function create()
    {
        //
        $supplier = Supplier::all();
        $diesel = Diesel::all();
        return view('diesel.create', compact('diesel', 'supplier'));
    }


    public function store(Request $request)
    {
        //
        $request->validate([
            'supplier_id' => 'required',
            'voucher' => 'required',
            'type' => 'required',
            'invoice_num' => 'required',
            // 'file' => 'required',
            'quantity' => 'required',
            'date' => 'required',
        ]);
        $diesel = new Diesel();
        $diesel->supplier_id = $request->supplier_id;
        $diesel->voucher = $request->voucher;
        $diesel->type = $request->type;
        $diesel->invoice_num = $request->invoice_num;
        // لحفظ الملف كملف وليس نص
        // $file = $request->file;
        // $file1 = time() . '.' . $file->getClientoriginalExtension();
        // $request->file->move('filediesel', $file1);
        // $diesel->file = $file1;
        // تم الانتهاء
        $diesel->quantity = $request->quantity;
        $diesel->date = $request->date;

        if ($diesel->save()) {
            return redirect('diesel')->with('success', 'تمت الاضافة بنجاح!');
        } else {
            return redirect('diesel.create')->with('warning', '  تحقق من صحة البيانات!');
        }
    }

    public function show($id)
    {
        //
        $diesel = Diesel::find($id);
        $supplier = Supplier::all();

        return view('diesel.show', compact('diesel', 'supplier'))->with('diesel', $diesel);
    }


    public function edit($id)
    {
        //
        $diesel = Diesel::find($id);
        $supplier = Supplier::all();
        return view('diesel.edit', compact('diesel', 'supplier'))->with('diesel', $diesel);
    }


    public function update(Request $request, $id)
    {
        //
        $diesel = Diesel::find($id);
        $diesel->supplier_id = $request->supplier_id;
        $diesel->voucher = $request->voucher;
        $diesel->type = $request->type;
        $diesel->invoice_num = $request->invoice_num;
        //
        // $file = $request->file;
        // $file1 = time() . '.' . $file->getClientoriginalExtension();
        // $request->file->move('filediesel', $file1);
        // $diesel->file = $file1;
        //
        $diesel->quantity = $request->quantity;
        $diesel->date = $request->date;

        if ($diesel->save()) {
            return redirect('diesel')->with('info', 'تمت التعديل بنجاح!');
        } else {
            return redirect('diesel')->with('warning', '  تحقق من صحة البيانات!');
        }
    }


    public function destroy($id)
    {
        //
        Diesel::destroy($id);
        // return redirect('dieselexport')->with('danger', 'تمت الحذف بنجاح!');

    }

    public function report(Request $request)
    {
        //
        $diesel = Diesel::select('*')->whereRaw('YEAR(diesels.date) = 2023')->get();
        $supplier = Supplier::all();
        return view('diesel.report', compact('diesel', 'supplier'));
    }


    public function searchdate(Request $request)
    {
        $supplier = Supplier::all();
        // قم بتحميل التاريخ الأول والتاريخ الثاني من النموذج
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $diesel = Diesel::whereBetween('date', [$startDate, $endDate])->get();

        // قم بعرض نتيجة البحث
        return view('diesel.report', compact('diesel', 'supplier'))->with('success', 'تمت عملية البحث !');
    }

    public function searchvou(Request $request)
    {
        $supplier = Supplier::all();

        // قم بتحميل السند الأول السند الثاني من النموذج
        $startVoucher = $request->input('start_voucher');
        $endVoucher = $request->input('end_voucher');


        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $diesel = Diesel::whereBetween('voucher', [$startVoucher, $endVoucher])->get();

        // قم بعرض نتيجة البحث
        return view('diesel.report', compact('diesel',  'supplier'));
    }
}
