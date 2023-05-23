@extends('layout.master')

@section('title')
    عرض الوارد
@endsection

@section('page_title')
    لوحة التحكم
@endsection
@section('sub_main')
    الوارد
@endsection
@section('sub_title')
    صفحة العرض
@endsection
@section('css')
@endsection

@section('content')
    <div class="container">

        <!--begin::Card-->
        <div class="card card-custom">
            <div class="card-header flex-wrap border-0 pt-6 pb-0">
                <div class="card-title">
                    <h3 class="card-label">عرض الوارد </h3>
                </div>
                <div class="card-toolbar">
                    <!--begin::Dropdown-->
                    <div class="dropdown dropdown-inline mr-2">
                        <button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="svg-icon svg-icon-md">
                                <!--begin::Svg Icon | path:assets/media/svg/icons/Design/PenAndRuller.svg-->
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                    width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24" />
                                        <path
                                            d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z"
                                            fill="#000000" opacity="0.3" />
                                        <path
                                            d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z"
                                            fill="#000000" />
                                    </g>
                                </svg>
                                <!--end::Svg Icon-->
                            </span>تقارير</button>
                        <!--begin::Dropdown Menu-->
                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                            <!--begin::Navigation-->
                            <ul class="navi flex-column navi-hover py-2">
                                <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">
                                    اختر:</li>
                                <li class="navi-item">
                                    <a href="https://master/CoreArchive/public/dieselfilter" class="navi-link">
                                        <span class="svg-icon svg-icon-primary svg-icon-2x">
                                            <!--begin::Svg Icon | path:/var/www/preview.keenthemes.com/metronic/releases/2021-05-14-112058/theme/html/demo1/dist/../src/media/svg/icons/Communication/Clipboard-list.svg-->
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="20px"
                                                viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="0" y="0" width="24" height="24" />
                                                    <path
                                                        d="M8,3 L8,3.5 C8,4.32842712 8.67157288,5 9.5,5 L14.5,5 C15.3284271,5 16,4.32842712 16,3.5 L16,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,21 C20,22.1045695 19.1045695,23 18,23 L6,23 C4.8954305,23 4,22.1045695 4,21 L4,5 C4,3.8954305 4.8954305,3 6,3 L8,3 Z"
                                                        fill="#000000" opacity="0.3" />
                                                    <path
                                                        d="M11,2 C11,1.44771525 11.4477153,1 12,1 C12.5522847,1 13,1.44771525 13,2 L14.5,2 C14.7761424,2 15,2.22385763 15,2.5 L15,3.5 C15,3.77614237 14.7761424,4 14.5,4 L9.5,4 C9.22385763,4 9,3.77614237 9,3.5 L9,2.5 C9,2.22385763 9.22385763,2 9.5,2 L11,2 Z"
                                                        fill="#000000" />
                                                    <rect fill="#000000" opacity="0.3" x="10" y="9"
                                                        width="7" height="2" rx="1" />
                                                    <rect fill="#000000" opacity="0.3" x="7" y="9"
                                                        width="2" height="2" rx="1" />
                                                    <rect fill="#000000" opacity="0.3" x="7" y="13"
                                                        width="2" height="2" rx="1" />
                                                    <rect fill="#000000" opacity="0.3" x="10" y="13"
                                                        width="7" height="2" rx="1" />
                                                    <rect fill="#000000" opacity="0.3" x="7" y="17"
                                                        width="2" height="2" rx="1" />
                                                    <rect fill="#000000" opacity="0.3" x="10" y="17"
                                                        width="7" height="2" rx="1" />
                                                </g>
                                            </svg>
                                            <!--end::Svg Icon-->
                                        </span>
                                        <span class="navi-text">الوارد</span>
                                    </a>
                                </li>


                            </ul>
                            <!--end::Navigation-->
                        </div>
                        <!--end::Dropdown Menu-->
                    </div>
                    <!--end::Dropdown-->
                    <!--begin::Button-->
                    <a href="https://master/CoreArchive/public/diesel/create" class="btn btn-primary font-weight-bolder">
                        <span class="svg-icon svg-icon-md">
                            <!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24" />
                                    <circle fill="#000000" cx="9" cy="15" r="6" />
                                    <path
                                        d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z"
                                        fill="#000000" opacity="0.3" />
                                </g>
                            </svg>
                            <!--end::Svg Icon-->
                        </span>إنشاء وارد جديد</a>
                    <!--end::Button-->
                </div>
            </div>
            <div class="card-body">
                <!--begin: Search Form-->
                <!--begin::Search Form-->
                <div class="mb-7">
                    <div class="row align-items-center">
                        <div class="col-lg-9 col-xl-8">
                            <div class="row align-items-center">
                                <div class="col-md-4 my-2 my-md-0">
                                    <div class="input-icon">
                                        <input type="text" class="form-control" placeholder="ابحث..."
                                            id="kt_datatable_search_query" />
                                        <span>
                                            <i class="flaticon2-search-1 text-muted"></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-xl-4 mt-5 mt-lg-0">
                                    <a href="#" class="btn btn-light-primary px-6 font-weight-bold">البحث</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--end::Search Form-->
                <!--end: Search Form-->
                <!--begin: Datatable-->

                <table class="datatable datatable-bordered datatable-head-custom" id="kt_datatable">
                    <thead>
                        <tr>
                            {{-- <th title="Field #1">{{ '#' }}</th> --}}
                            <th title="Field #2">{{ 'اسم المورد' }}</th>
                            <th title="Field #3">{{ 'كمية التوريد' }}</th>
                            <th title="Field #4">{{ 'جهة التوريد' }}</th>
                            <th title="Field #6">{{ 'رقم الفاتورة' }}</th>
                            <th title="Field #5">{{ 'سند التوريد' }}</th>
                            <th title="Field #8">{{ 'تاريخ التوريد ' }} </th>
                            {{-- <th title="Field #7">{{ 'الملف' }}</th> --}}
                            <th title="Field #8">{{ 'الاجراءات ' }} </th>
                        </tr>
                    </thead>
                    <tbody class="datatable-body">
                        @foreach ($diesel as $diesels)
                            <tr data-row="0" class="datatable-row" style="left: 0px;">
                                {{-- <td data-field="id" aria-label="0374-5070" class="datatable-cell"><span
                            style="width: 10px;">{{$diesels->id}}</span></td> --}}
                                <td data-field="name_supplier" aria-label="0374-5070" class="datatable-cell">
                                    {{ $diesels->supplier->name_supplier }}</span></td>
                                <td data-field="quantity" aria-label="0374-5070" class="datatable-cell"><span
                                        style="width: 137px;">{{ $diesels->quantity }}</span></td>
                                <td data-field="type" aria-label="0374-5070" class="datatable-cell"><span
                                        style="width: 137px;">{{ $diesels->type }}</span></td>
                                <td data-field="invoice_num" aria-label="0374-5070" class="datatable-cell"><span
                                        style="width: 137px;">{{ $diesels->invoice_num }}</span></td>
                                <td data-field="voucher" aria-label="0374-5070" class="datatable-cell"><span
                                        style="width: 137px;">{{ $diesels->voucher }}</span></td>
                                <td data-field="date" aria-label="0374-5070" class="datatable-cell"><span
                                        style="width: 137px;">{{ $diesels->date }}</span></td>
                                {{-- <td data-field="file" aria-label="0374-5070" class="datatable-cell">
                                <a href="https://master/CoreArchive/public/filediesel/{{ $diesels->file }}" target="_blank">{{ $diesels->file }}</a></td> --}}

                                <td data-field="Actions" data-autohide-disabled="false" aria-label="null"
                                    class="datatable-cell">
                                    <span style="overflow: visible; position: relative; width: 110px;">

                                        <a href="#" onclick="confirmDelete('{{ $diesels->id }}', this)"
                                            class="btn btn-sm btn-clean btn-icon" title="Delete"><i
                                                class="la la-trash"></i></a>
                                        <a href="{{ url('/diesel/' . $diesels->id . '/edit') }}"
                                            class="btn btn-sm btn-clean btn-icon" title="Edit details"><i
                                                class="la la-edit"></i></a>
                                        <a href="{{ url('/diesel/' . $diesels->id) }}" title="View diesels"><button
                                            class="btn btn-sm btn-clean btn-icon"> <svg
                                                xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path
                                                    d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                                                <path
                                                    d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                                            </svg></button>
                                        </a>
                                    </span>
                                </td>

                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <!--end: Datatable-->
            </div>
        </div>
        <!--end::Card-->

        <div class="card text-center">

            <div class="card-body">
                <h4 class="alert bg-primary-o-50 text-primary mb-0">كميات السولار</h4>
                <table class="table table-striped  table-hover table-checkable" id="myTable">
                    <thead class="bg-primary text-white">
                        <tr>

                            <th>{{ 'شهر 1' }} </th>
                            <th>{{ 'شهر 2' }}</th>
                            <th>{{ 'شهر 3' }} </th>
                            <th>{{ 'شهر 4' }} </th>
                            <th>{{ 'شهر 5' }} </th>
                            <th>{{ 'شهر 6 ' }} </th>
                            <th>{{ 'شهر 7 ' }} </th>
                            <th>{{ 'شهر 8 ' }} </th>
                            <th>{{ 'شهر 9 ' }} </th>
                            <th>{{ 'شهر 10 ' }} </th>
                            <th>{{ 'شهر 11 ' }} </th>
                            <th>{{ 'شهر 12 ' }} </th>
                            <th>{{ 'عدد الوارد' }}</th>
                            <th>{{ 'مجموع الوارد' }}</th>
                            <th>{{ 'مجموع المتبقي من السولار' }} </th>


                        </tr>
                    </thead>


                    <tbody>
                        <tr>
                            <td>
                                {{-- <li class="list-group-item">   --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 1 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                                </li>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 2 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 3 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 4 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 5 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 6 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">  --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 7 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">   --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 8 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>


                            <td>
                                {{-- <li class="list-group-item"> --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 9 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">   --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 10 && YEAR(diesels.date) = 2022')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">   --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 11 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{-- <li class="list-group-item">   --}}
                                {{ \App\Models\Diesel::select('quantity')->whereRaw('MONTH(diesels.date) = 12 && YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span>
                            </td>

                            <td>
                                {{ \App\Models\Diesel::select('id')->whereRaw('YEAR(diesels.date) = 2023')->count('id') }}
                                </li>
                            </td>
                            <td> {{ \App\Models\Diesel::select('quantity')->whereRaw('YEAR(diesels.date) = 2023')->sum('quantity') }}
                                <span>لتر</span> </li>
                            </td>
                            <td> {{ \App\Models\Diesel::sum('quantity') - \App\Models\DieselExport::sum('quantity') }}
                                {{-- <td>   {{ \App\Models\Diesel::select('quantity')->whereRaw('YEAR(diesels.date) = 2022')->sum('quantity') - \App\Models\DieselExport::select('quantity')->whereRaw('YEAR(diesel_exports.date) = 2022')->sum('quantity') }} --}}

                                <span>لتر</span>
                                </li>
                            </td>

                        </tr>

                    </tbody>
                </table>
            </div>

        </div>

    </div>
@endsection

@section('scripts')
    {{-- <script src="{{ asset('assets/js/pages/crud/ktdatatable/base/data-local.js') }}" type="text/javascript"></script> --}}
    <script>
        function confirmDelete(id, reference) {
            Swal.fire({
                title: 'هل تريد الحذف؟',
                text: "لن تتمكن من التراجع عن هذا",
                icon: 'warning',
                showCancelButton: true,
                cancelButtonColor: '#d33',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'نعم, احذف!'
            }).then((result) => {
                if (result.isConfirmed) {
                    performDelete(id, reference);
                }
            });
        }

        function performDelete(id, reference) {
            axios.delete('/diesel/' + id)
                .then(function(response) {
                    console.log(response);
                    reference.closest('tr').remove();
                    showMessage(response.data);
                })
                .catch(function(error) {
                    console.log(error.response);
                    showMessage(error.response.data);
                });
        }

        function showMessage(message) {
            Swal.fire(
                'تم الحذف بنجاح!',
                'تم حذف ملفك.',
                'success'
            );
        }
    </script>
@endsection
