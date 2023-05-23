<?php

namespace App\Http\Controllers;

use App\Models\Diesel;
use App\Models\DieselExport;
use App\Models\Section;
use App\Models\subSection;
use App\Models\Supplier;
use Illuminate\Http\Request;

class HistoricalController extends Controller
{
    //
    // *************************************************wared***************************************************
    public function waredindex()
    {
        $diesel = Diesel::select("*")->whereRaw('YEAR(diesels.date) = 2022')->get();
        $supplier = Supplier::all();
        return view('historical.waredindex',compact('diesel','supplier'));
    }

    public function waredreport()
    {
   
        $diesel = Diesel::select("*")->whereRaw('YEAR(diesels.date) = 2022')->get();
        $supplier = Supplier::all();
        return view('historical.waredreport',compact('diesel','supplier'));
    }

    public function datewared(Request $request)
    {   
     
        // قم بتحميل التاريخ الأول والتاريخ الثاني من النموذج
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $diesel = Diesel::whereBetween('date', [$startDate, $endDate])->whereRaw('YEAR(diesels.date) = 2022')->get();

        
        // قم بعرض نتيجة البحث
        return view('historical.waredreport',compact('diesel'));
    }
    // *************************************************export***************************************************
    public function exportindex()
    {
        $dieselexport = DieselExport::select("*")->whereRaw('YEAR(diesel_exports.date) = 2022')->get();
        $section = DieselExport::with('section')->get();
        $subSection = DieselExport::with('subSection')->get();
        return view('historical.exportindex',compact('dieselexport','section'));
    }

    public function exportreport()
    {      
        $dieselexport =  DieselExport::select("*")->whereRaw('YEAR(diesel_exports.date) = 2022')->get();
        $section = Section::all();
        $subSection = subSection::all();
        return view('historical.exportreport',compact('dieselexport','section','subSection'));
    }


    public function searchdate(Request $request)
    {   
     
        // قم بتحميل التاريخ الأول والتاريخ الثاني من النموذج
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
        $dieselexport = DieselExport::whereBetween('date', [$startDate, $endDate])->whereRaw('YEAR(diesel_exports.date) = 2022')->get();

        
        // قم بعرض نتيجة البحث
        return view('historical.exportreport',compact('dieselexport'));
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
        // قم بعرض نتيجة البحث
        return view('historical.exportreport', compact('dieselexport', 'section', 'subSection'));
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
        return view('historical.exportreport', compact('dieselexport', 'section', 'subSection'))->with('success', 'تمت عملية البحث !');
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

        return view('historical.exportreport', compact('dieselexport', 'section', 'subSection'));
    }

    public function totalreport(Request $request)
    {
     
         // قم بتنفيذ الاستعلام والحصول على نتيجة البحث
         $dieselexport = DieselExport::all();
         $diesel = Diesel::all();
        return view('historical.total_report',compact('dieselexport','diesel'));
    }

    public function searchtotal(Request $request)
    {
        // تحميل السند الأول والسند الثاني من النموذج
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');
    
        // الحصول على مجموع الديزل الوارد بين التواريخ المحددة
        $diesel = Diesel::whereBetween('date', [$startDate, $endDate])->get();
    
        // الحصول على مجموع الديزل الصادر بين التواريخ المحددة
        $dieselexport = DieselExport::whereBetween('date', [$startDate, $endDate])->get();
    
        // حساب المتبقي من الديزل بين التواريخ المحددة
        // $totalRemaining = $totalImport - $totalExport;
    
        // عرض نتائج البحث
        return view('historical.total_report', compact('diesel', 'dieselexport'));
    }

}

