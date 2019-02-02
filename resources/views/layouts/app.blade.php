<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link href="{{asset('css/bootstrap.css')}}" type="text/css" rel="stylesheet">
        <link href="{{asset('css/datatables.css')}}" type="text/css" rel="stylesheet">
        <link href="{{asset('css/responsive.bootstrap.min.css')}}" type="text/css" rel="stylesheet">
        <link href="{{asset('css/style.css')}}" type="text/css" rel="stylesheet">
        <link href="{{asset('css/fonts/font.css')}}" type="text/css" rel="stylesheet">

        <style>
            #dataList_filter
            {
                display:none;
            }
            #users_filter
            {
                display:none;
            }
        </style>
    </head>
    <body>
        <div class="overlay"></div>
        <div class="container-fluid">
            <div class="top_header">
                <div class="toggle_menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <div class="logo_left">
                    <a href="#">
                        <h3>KYC-DATA Interface</h3>
                    </a>
                </div>
                <div class="logo_right">
                    <img src="{{asset('images/icon.png')}}" alt="">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="menu">
                <i class="closeMenu menupopup">&#10006;</i>

                @if(Auth::user()->role_id !==2 && Auth::user()->role_id !==3)
                <div class="language">
                    <a class="active" href="{{route('lang.en')}}">EN</a> | 
                    <a href="{{route('lang.de')}}">DE</a>
                </div>
                @endif
                <h3>{{__('table.menu')}}</h3>
                <nav>
                    <ul>
                        @if(Auth::user()->role_id !==2 && Auth::user()->role_id !==3)
                        <li><a href="{{route('umIndex')}}"><i class="fa fa-angle-right"></i>{{__('table.userMangement')}}</a></li>
                        @endif
                        <li><a href="{{route('homeIndex')}}"><i class="fa fa-angle-right"></i>{{__('table.datalist')}}</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i>{{__('table.anotherApp')}}</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i>{{__('table.anotherApp')}}</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i>{{__('table.anotherApp')}}</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i>{{__('table.setting')}}</a></li>
                        <li><a href="{{route('logout')}}"><i class="fa fa-angle-right"></i>{{__('table.logout')}}</a></li>
                    </ul>
                </nav>
            </div>
        @yield ('content')
        </div>
        <script src="{{asset('js/jquery.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/bootstrap.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/datatables.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/dataTables.responsive.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/custom.js')}}" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
/*
                var table = $('#dataList').DataTable( {
                    responsive: true,
                    bFilter: true,
                    retrieve: true,
                    "columnDefs": [ {
                          "targets": 'no-sort',
                          "orderable": false,
                    },

                    { responsivePriority: 1, targets: 0 },
                    { responsivePriority: 2, targets: -1 }
                } });*/

                var table = $('#dataList').DataTable(
                    {
                        "responsive": true,
                        "bFilter": true,
                        "processing": true,
                        "sAjaxSource": "/application/getentries",
                        "destroy": true,
                        "aoColumns": [
                            { mData: 'firstname' } ,
                            { mData: 'lastname'  },
                            { mData: 'city' } ,
                            { mData: 'countryname'  },
                            { mData: 'weecityofbirth' } ,
                            { mData: 'weecountryofbirth'  },
                            { mData: 'weenationality' } ,
                            { mData: 'weeidentificationtype'  },
                            { mData: 'weeidnumber' } ,
                            { mData: 'weeissuingauthority'  },
                            { mData: 'weeissuedon'  },
                            { mData: 'weevaliduntil'  },
                            { mData: 'invoice_amount_net'  },
                            { mData: 'doc_count'  },
                            { mData: 'custom_column'  },
                            { mData: 'kycfollowup'  },
                            { mData: 'kycinternalok'  },

                        ],
                        "columnDefs": [
                            {
                                "targets": [ 15 ],
                                "visible": false
                            },
                            {
                                "targets": [ 16 ],
                                "visible": false
                            },
                            {
                                "targets": 'no-sort',
                                "orderable": false
                            },
                            { className: "bg_white", "targets": [ 14 ] },
                            { className: "text-right", "targets": [ 13 ] },
                            { className: "text-right", "targets": [ 12 ] }
                        ],
                        "oLanguage": {
                            "loadingRecords": '&nbsp;',
                            "processing": '<b style="font-size: 20px;">Loading...</b>'
                        },
                        "createdRow": function ( row, data, index ) {
                            if ( data.kycfollowup == 1) {
                                $(row).addClass('active');
                            }
                        }
                    }
                );

                $('#searchOutside').keyup(function(){
                    table.search($(this).val()).draw() ;
                });

                $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var rangetype =  parseInt($('#statusFilter').val());
                        var min = 0;  var max = 99999;

                        var orderamount = parseFloat( data[12] ) || 0; // use data for the order column

                        switch(rangetype){
                            case 1:
                                return true;
                            case 2:
                                min = 0; max=2000;
                                break;
                            case 3:
                                min = 2001; max=10000;
                                break;
                            case 4:
                                min = 10001; max=100000;
                                break;
                            case 5:
                                max = -1;
                                min = 100001;
                                if (orderamount <= min){
                                    return true;
                                }
                        }

                        if (min <= orderamount   && orderamount <= max  ){
                            return true;
                        }
                        return false;
                    }
                );
                $('#statusFilter').on('change', function(){

                    table.draw();
                });

            });
        </script>


        <script type="text/javascript">
            $(document).ready(function() {
                var table = $('#users').DataTable( {
                    responsive: true,
                    bFilter: true,
                    "columnDefs": [ {
                          "targets": 'no-sort',
                          "orderable": false,
                    },



                    { responsivePriority: 1, targets: 0 },
                    { responsivePriority: 2, targets: -1 }
                    /*{
                       "targets": [ 0, 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11 , 12 , 13 ],
                        render: function ( data, type, row ) {
                            return type === 'display' && data.length > 10 ?
                                data.substr( 0, 13) +'…' :
                                data;
                        }
                    }*/]


                });

                $('#userSearch').keyup(function(){
                    table.search($(this).val()).draw() ;
                })

            });
        </script>
    </body>
</html>





