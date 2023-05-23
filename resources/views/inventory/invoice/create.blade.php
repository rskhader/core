@extends('layout.master')

@section('title')
    اضافة فاتورة شراء
@endsection

@section('page_title')
    لوحة التحكم
@endsection

@section('sub_main')
    الفواتير
@endsection

@section('sub_title')
    اضافة فاتورة شراء
@endsection

@section('css')
    <style>
        input {
            border: 1px solid #d5c1ff !important;
        }

        .btn.btn-light:hover:not(.btn-text):not(:disabled):not(.disabled), .btn.btn-light:focus:not(.btn-text), .btn.btn-light.focus:not(.btn-text) {
            border: 1px solid #d5c1ff !important;

        }

        .btn.dropdown-toggle.btn-light.bs-placeholder{
            border: 1px solid #d5c1ff !important;

        }
    </style>
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--begin::Card-->
                <div class="card card-custom gutter-b example example-compact">
                    <div class="card-header">
                        <div class="card-title">
                            <h3 class="card-label"> بيانات الفواتير (سند إدخال) <i class="mr-2"></i></h3>
                        </div>
                        <div class="card-toolbar">

                            <a href="{{ url('/inventory/invoice') }}" class="btn btn-info font-weight-bolder">
                                <span class="svg-icon svg-icon-md">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <rect x="0" y="0" width="24" height="24" />
                                            <circle fill="#000000" cx="9" cy="13" r="6" />
                                            <path
                                                d="M8.8012943,7.00241933 C9.83837773,3.20768121 11.7781343,4 14,4 C17.3137083,4 20,6.6862913 20,10 C20,12.2218437 18.7923188,14.1616223 16.9973803,13.1987037 C16.9991904,13.1326638 17,13.0664274 17,13 C17,10.381722 13.418278,7 9,7 C8.93337236,7 8.86733422,7.00080962 8.8012943,7.00241933 Z"
                                                fill="#000000" opacity="0.3" />
                                        </g>
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>عرض فاتورة شراء</a>
                        </div>
                    </div>
                    <!--begin::Form-->
                    <form action="{{ route('invoice.store') }}" method="post" class="form needs-validation " novalidate
                        enctype="multipart/form-data" id="kt_form">
                        @csrf
                        {!! csrf_field() !!}

                        <div class="card-body">
                            <div class="p-3 form-group row">
                                <label for="voucher_no" class="col-lg-2 col-form-label ">
                                    <h6> رقم السند:</h6>
                                </label>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <input type="number" class="@error('voucher_no') is-invalid @enderror form-control"
                                            id="voucher_no" name="voucher_no">
                                        @error('voucher_no')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-1"></div>

                                <label for="voucher_date" class="col-lg-2 col-form-label ">
                                    <h6> تاريخ السند:</h6>
                                </label>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <input type="date" class="form-control" id="voucher_date" name="voucher_date" value="{{ date('Y-m-d') }}">
                                    </div>
                                </div>

                             
                            </div>

                            <div class="p-3 form-group row">

                                <label for="invoice_no" class="col-lg-2 col-form-label ">
                                    <h6> رقم الفاتورة:</h6>
                                </label>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="invoice_no" name="invoice_no">
                                    </div>
                                </div>

                                <div class="col-lg-1"></div>


                                <label for="supplier_item_id" class="col-lg-2 col-form-label ">
                                    <h6> المورد:</h6>
                                </label>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <select class="form-control selectpicker" data-size="7" tabindex="null"
                                            data-live-search="true" title="أدخل اسم المورد" name="supplier_item_id"
                                            id="supplier_item_id">
                                            {{-- <option value="0">{{ 'أدخل اسم المورد' }}</option> --}}
                                            @foreach ($supplier_item as $supplier_items)
                                                <option value="{{ $supplier_items->id }}">
                                                    {{ $supplier_items->supplier_item_name }}
                                                    {{ $supplier_items->supplier_item_num }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <a href="{{ url('inventory/supplier_item/create') }}" title="اضافة مورد جديد"
                                    target="_blank">
                                    <i class="p-3 ki ki-solid-plus icon-md"></i>
                                </a>


                            </div>


                  


                          


                            <div class="p-3 form-group row">

                                <label for="currency_id" class="col-lg-2 col-form-label ">
                                    <h6> معامل الصرف:</h6>
                                </label>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <select class="form-control selectpicker" data-size="7" tabindex="null"
                                            data-live-search="true" title="أدخل معامل الصرف" name="currency_id"
                                            id="currency_id">
                                            @foreach ($currency as $currencys)
                                                <option value="{{ $currencys->id}}">
                                                    {{ $currencys->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                            </div>


                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th width="50%">الصنف
                                            <a href="{{ url('inventory/item/create') }}" title="اضافة صنف جديد"
                                                target="_blank">
                                                <i class="p-3 ki ki-solid-plus icon-md"></i>
                                            </a>
                                            <a href="{{ url('inventory/item') }}" title="عرض الأصناف" target="_blank">
                                                <i class="p-3 far fa-eye icon-md"></i>
                                            </a>
                                        </th>
                                        <th>الكمية</th>
                                        <th>السعر</th>
                                        <th width="5%">جديد</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            {{-- <select name="product[]" class="form-control"> --}}
                                            <select class="form-control selectpicker" data-size="7" tabindex="null"
                                                title="أدخل الصنف" data-live-search="true" name="product[]"
                                                id="product[]">
                                                {{-- <option value="0">{{ 'اختر الصنف' }}</option> --}}
                                                @foreach ($products as $product)
                                                    <option value="{{ $product->id }}">{{ $product->item_num }}
                                                        {{ $product->item_name }}
                                                        {{ ' الرصيد: ' . $product->balance }}</option>
                                                @endforeach
                                            </select>
                                        </td>
                                        <td><input type="text" name="quantity[]" class="form-control"></td>
                                        <td><input type="text" name="price[]" class="form-control"></td>
                                        <td> <button type="button" class="btn btn-primary" id="add-row">+</button>
                                        </td>

                                    </tr>

                                </tbody>
                            </table>

                        </div>

                        <div class="card-footer">
                            <div class="row">
                                <div class="col-lg-2"></div>
                                <div class="col-lg-10">
                                    <button type="submit" class="ml-5 btn btn-success">حفظ</button>

                                    <div class="ml-5 btn-group">
                                        <button type="button" class="btn btn-primary font-weight-bolder">
                                            {{-- <i class="ki ki-check icon-sm"></i> --}}
                                            اختر :
                                        </button>
                                        <button type="button"
                                            class="btn btn-primary dropdown-toggle dropdown-toggle-split"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                            <ul class="nav nav-hover flex-column">

                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/unit/create') }}" class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة وحدة
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/category/create') }}" class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة عائلة
                                                    </a>
                                                </li>

                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/item/create') }}" class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة صنف
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/store/create') }}" class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة مخزن
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/supplier_item/create') }}"
                                                        class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة مورد
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/import_item/create') }}"
                                                        class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة صنف وارد
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/export_item/create') }}"
                                                        class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة صنف صادر
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{ url('/inventory/Custody_item/createe') }}"
                                                        class="nav-link">
                                                        <i class="nav-icon flaticon2-add-1"></i> إضافة عهدة </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </form>
                    <!--end::Form-->
                </div>
                <!--end::Card-->
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        function myFunction() {
            var quantity = parseFloat(document.getElementById("quantity").value);
            var price = parseFloat(document.getElementById("price").value);
            var total = quantity * price;

            document.getElementById("Total").value = total;
        }
    </script>

    <script>
        $(document).ready(function() {
            // السماح بحذف صف من جدول المنتجات
            $(document).on('click', '.delete-row', function() {
                $(this).closest('tr').remove();
                calculateTotalAll();
            });

            // تحويل الزر "add-row" لإضافة الصف إلى جدول المنتجات
            $("#add-row").click(function() {
                var html = "<tr>";
                html +=
                    "<td><select name='product[]' title='اختر الصنف' class='form-control' data-live-search='true'>";
                @foreach ($products as $product)
                    html +=
                        "<option value='{{ $product->id }}'>{{ $product->item_num }} {{ $product->item_name }} {{ $product->balance }}</option>";
                @endforeach
                html += "</select></td>";
                html +=
                    "<td><input type='number' name='quantity[]' class='form-control'  onchange='calculateTotal(this); calculateTotalAll();'></td>";
                html +=
                    "<td><input type='number' name='price[]' class='form-control'  onchange='calculateTotal(this); calculateTotalAll();'></td>";
                // html += "<td> <input type='number' class='form-control' name='Total[]' readonly></td>";
                html += "<td><button type='button' class='btn btn-danger delete-row'>حذف</button></td>";
                html += "</tr>";
                $("table tbody").append(html);
            });

            // حساب الإجمالي الكلي
            function calculateTotalAll() {
                var total = 0;
                $("table tbody tr").each(function() {
                    var quantity = parseFloat($(this).find("input[name='quantity[]']").val());
                    var price = parseFloat($(this).find("input[name='price[]']").val());
                    var subtotal = quantity * price;
                    $(this).find("input[name='Total']").val(subtotal.toFixed(2));
                    total += subtotal;
                });
                $("#total-all").val(total.toFixed(2));
            }

        });

        function calculateTotal(element) {
            var tr = $(element).closest('tr');
            var quantity = parseFloat(tr.find("input[name='quantity[]']").val());
            var price = parseFloat(tr.find("input[name='price[]']").val());
            var total = quantity * price;
            tr.find("input[name='Total[]']").val(total);
        }
    </script>
@endsection
