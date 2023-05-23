@extends('layout.master')

@section('title')
    تقارير الصادر
@endsection

@section('page_title')
    لوحة التحكم
@endsection
@section('sub_main')
    التقارير
@endsection
@section('sub_title')
    صادر السولار
@endsection
@section('css')

<link href="{{ asset('assets/css/buttons.dataTables.min.css') }}" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="{{asset('assets/css/dataTables.foundation.min.css')}}">

<style>

.dataTables_wrapper .dataTable th, .dataTables_wrapper .dataTable td{
    padding-right: 50px !important;
    margin: 10px !important;
}

.dataTables_wrapper .dataTable tfoot th, .dataTables_wrapper .dataTable thead th{
    padding-right: 0px;
    padding-left: 0px;
    text-align: right;
    }

div.dt-buttons{
    top: 50%;
    left: 8%;
    width: 200px;
    margin-left: -100px;
    margin-top: -20px;
    text-align: center;
    padding: 1rem 0

}

div.dt-buttons .dt-button{
    margin : -2px !important;
}

.dataTables_wrapper .dataTable thead th{
    background-color: #E4E6EF;
}

</style>
@endsection



@section('content')
    <div class="container">

        <!-- search  /-->
        <div class="card card-custom">
            <div class="card-header flex-wrap border-0 pt-5 pb-0">
                <div class="card-title">
                    <h3 class="card-label">تقارير صادر السولار </h3>
                </div>
                <div class="card-toolbar">
                    <!--begin::Dropdown-->
                    <a class="btn btn-light-primary px-6 font-weight-bold" href="{{ url('/totalreport') }}">تقارير المجاميع </a>
                    <!--end::Button-->
                </div>
            </div>


            <div class="accordion accordion-light " id="accordionExample5">
                <div class="card">
                    <div class="card-header p-5" style="cursor: auto" id="headingOne5">
                        <div class="card-title">
                            <div data-toggle="collapse" data-target="#collapseOne5"
                                class="btn btn-primary advance_search font-weight-bolder "><i class="flaticon-search"></i>
                                بحــــــث متــقـــــــــدم</div>
                        </div>
                    </div>
                    <div id="collapseOne5" class="collapse pl-5" data-parent="#accordionExample5">
                        <div class="card-body1">

                            <div class="col-lg-4 mb-6">
                                <label>التاريخ:</label>
                                <form action="{{ url('historical/searchdate') }}" method="POST" class="form-group pr-5">
                                    @csrf
                                    <div class="input-daterange input-group">
                                        <div class="col-4 p-0">
                                            <input name="start_date" type="date" class="form-control" id="start_date" />
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                        </div>
                                        <div class="col-4 p-0">
                                            <input name="end_date" type="date" class="form-control" id="end_date" />
                                        </div>
                                        <div class="col-lg-2 mt-auto mb-auto">
                                            <input type="submit" class="btn btn-primary btn-primary--icon" value="بحث" />
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="col-lg-4 mb-6">
                                <label>الايصال:</label>
                                <form action="{{ url('historical/searchsec') }}" method="POST" class="form-group pr-5">
                                    @csrf
                                    <div class="input-daterange input-group">
                                        <div class="col-4 p-0">
                                            <input name="startNum" type="text" class="form-control" id="startNum" />
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                        </div>
                                        <div class="col-4 p-0">
                                            <input name="endNum" type="text" class="form-control" id="endNum" />
                                        </div>
                                        <div class="col-lg-2 mt-auto mb-auto">
                                            <input type="submit" class="btn btn-primary btn-primary--icon" value="بحث" />
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="col-lg-4 mb-6">
                                <label>السند:</label>
                                <form action="{{ url('historical/searchvou') }}" method="POST" class="form-group pr-5">
                                    @csrf
                                    <div class="input-daterange input-group">
                                        <div class="col-4 p-0">
                                            <input name="start_voucher" type="text" class="form-control"
                                                id="start_voucher" />
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                        </div>
                                        <div class="col-4 p-0">
                                            <input name="end_voucher" type="text" class="form-control" id="end_voucher" />
                                        </div>
                                        <div class="col-lg-2 mt-auto mb-auto">
                                            <input type="submit" class="btn btn-primary btn-primary--icon" value="بحث" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-12 mb-6">
                            <form action="{{ url('historical/searchname') }}" method="POST" class="form-group pl-5">
                                @csrf
                                <div class="form-group row">
                                    <div class="col-2 p-0">
                                        <input name="start_date" type="date" class="form-control" id="start_date" />
                                    </div>
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                    </div>
                                    <div class="col-2 p-0">
                                        <input name="end_date" type="date" class="form-control" id="end_date" />
                                    </div>

                                    <div class="col-3 pr-5 pl-5">
                                        <select name="section_id" id="" class="form-control" title="اختر القسم...">
                                            <option value="">{{ 'القسم الرئيسي -------' }}</option>
                                            @foreach ($section as $sections)
                                                <option value="{{ $sections->id }}">{{ $sections->name_section }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-3 pr-5 pl-2">
                                        <select name="subSection_id" id="" class="form-control" title="اختر القسم...">
                                            <option value="">{{ 'القسم الفرعي -------' }}</option>
                                            @foreach ($subSection as $subSections)
                                                <option value="{{ $subSections->id }}">{{ $subSections->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-lg-1 mt-auto mb-auto">
                                        <input type="submit" class="btn btn-primary btn-primary--icon" value="بحث" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            {{-- *********************** --}}
            <div class="card-body">
                <!--begin: Datatable-->
                <table id="example" class="table table-striped dt-responsive " style="width:100%">
                    <thead class="thead_dark">
                        <tr>
                            <th>{{ 'القسم' }}</th>
                            <th>{{ 'القسم الفرعي' }}</th>
                            <th>{{ 'سند الصادر ' }} </th>
                            <th>{{ 'كمية الصادر ' }} </th>
                            <th>{{ 'رقم الإيصال' }}</th>
                            <th>{{ 'رقم الدفتر' }}</th>
                            <th>{{ 'تاريخ الصادر' }}</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($dieselexport as $dieselexports)
                            <tr>
                                <td> {{ $dieselexports->section->name_section }}</td>
                                <td>{{ $dieselexports->subSection->name }}</td>
                                <td>{{ $dieselexports->voucher }}</td>
                                <td>{{ $dieselexports->quantity }}</td>
                                <td>{{ $dieselexports->num_section }}</td>
                                <td>{{ $dieselexports->num_note }}</td>
                                <td>{{ $dieselexports->date }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <!--end: Datatable-->
            </div>
        </div>
    </div>
@endsection


@section('scripts')
    <script src="{{ asset('assets/plugins/custom/datatables/datatables.bundle.js') }}"></script>
    <script src="{{ asset('assets/js/pages/features/miscellaneous/sweetalert2.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/js/pages/data-json.js') }}" type="text/javascript"></script>

    <script>
        $('#kt_datepicker').datepicker({
            todayHighlight: true,
            templates: {
                leftArrow: '<i class="la la-angle-left"></i>',
                rightArrow: '<i class="la la-angle-right"></i>',
            },
            format: 'dd-mm-yyyy',
        });
    </script>
@endsection
