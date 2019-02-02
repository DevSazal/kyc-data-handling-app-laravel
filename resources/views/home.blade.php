@extends('layouts.app')

@section('content')


<div class="content">
        <div class="search">
            <input type="text" id="searchOutside" placeholder="{{__('table.searchPlaceholder')}}" class="form_con" name="">
            <button class="search_btn" type="submit"><i class="fa fa-search"></i></button>
        </div>
        <div class="filter_amount">
            <select id="statusFilter" class="form_con">
                <option value="" selected disabled="">{{__('table.filterAmount')}} </option>
                <option value="1">{{__('table.filterAll')}}</option>
                <option value="2">{{__('table.filter0-2000')}}</option>
                <option value="3">{{__('table.filter2000-10000')}}</option>
                <option value="4">{{__('table.filter10000-100000')}}</option>
                <option value="5">{{__('table.filterhigh')}}</option>
            </select>
        </div>
        <div class="allentery">
            <label class="chkcontainer">{{__('table.withoutDoc')}}
                <input id="withoutDocDT" onchange="filterWithoutDoc()" name="withoutDoc" type="checkbox" value="0">
                <span class="checkmark"></span>
            </label>
        </div>
        <div class="allentery followup">
            <label class="chkcontainer">{{__('table.followUp')}}
                <input name="followupsearch" onchange="filterFollowUp()" id="followUpdt" type="checkbox" value="1">
                <span class="checkmark"></span>
            </label>
        </div>
        <div class="allentery internalok">
            <label class="chkcontainer">{{__('table.internalOk')}}
                <input name="internalsearch" onchange="filterInternal()" id="internalOkdt" type="checkbox" value="11">
                <span class="checkmark"></span>
            </label>
        </div>
    </div>
    <div class="data_list">
        <table id="dataList" class="table listtable nowrap">
            <thead>
                <tr>
                    <th data-priority="3" class="no-sort">{{__('table.firstName')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.lastName')}}</th>
                    <th class="no-sort">{{__('table.city')}}</th>
                    <th class="no-sort">{{__('table.country')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.cityOfBirth')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.countryOfBirth')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.nationality')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.documentType')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.idNumber')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.issueAuth')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.issueOn')}}</th>
                    <th data-priority="3" class="no-sort">{{__('table.validUntil')}}</th>
                    <th  data-priority="1" >{{__('table.orderAmount')}}</th>
                    <th  data-priority="2" >{{__('table.numberOfDocument')}}</th>
                    <th data-priority="0" class="no-sort ">
                        <div class="coltranslate">
                        
                        <span>
                            @if(Auth::user()->role_id !==3){{__('table.internalOk')}}
                            @else
                            .
                            @endif
                        </span>
                        
                         <span>

                            @if(Auth::user()->role_id !==2){{__('table.externalOk')}}
                            @else
                            .
                            @endif
                     </span>{{__('table.edit')}}
                        </div>
                     </th>
                    <th style="display: none;" >followup value</th>
                    <th style="display: none;">internal value</th>
                </tr>
            </thead>

        </table>
    </div>
    <form action="{{route('editItem')}}" method="post" id="editform">
        @csrf
    <div class="edit_form">
        <i class="closeMenu editpopup">&#10006;</i>
        <h3>Edit entry #<span id="mySpan"></span></h3>
        <div class="edit_box">
            <div class="row">
                <div class="col-md-4">
                    <h4>Personal</h4>
                    <div class="edit_form_inner">
                        <input id="id" type="hidden"  class="form_con" name="id">
                    </div>
                    <div class="edit_form_inner">
                        <label>First Name</label>
                        <input id="first_name" type="text"  class="form_con" name="first_name" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Last Name</label>
                        <input id="last_name" type="text"  class="form_con" name="last_name" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>City</label>
                        <input id="city" type="text"  class="form_con" name="city" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Country</label>
                        <input id="country" type="text"  class="form_con" name="country" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>City of birth</label>
                        <input id="city_of_birth" type="text"  class="form_con" name="city_of_birth" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Coutry of birth</label>
                        <input id="country_of_birth" type="text" class="form_con" name="country_of_birth" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Nationality</label>
                        <input id="nationality" type="text"  class="form_con" name="nationality" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                </div>
                <div class="col-md-4">
                    <h4>Identity</h4>
                    <div class="edit_form_inner">
                        <label>Document type</label>
                        <select id="document_type" class="form_con" name="document_type" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                            <option value="Passport">Passport</option>
                            <option value="NID">NID</option>
                            <option value="Driving licence">Driving Licence</option>
                            <option value="Social Security Card">Social Security Card</option>
                        </select>
                    </div>
                    <div class="edit_form_inner">
                        <label>ID/Passport No.</label>
                        <input id="document_number" type="text"  class="form_con" name="document_number" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Issuing authority</label>
                        <input id="issuing_authority" type="text"  class="form_con" name="issuing_authority" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Issued on</label>
                        <input id="issue_on" type="text"  class="form_con" name="issue_on" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Valid until</label>
                        <input id="valid_until" type="text"  class="form_con" name="valid_until" {{Auth::user()->role_id==3 ? "disabled" : ""}}>
                    </div>
                    <div class="edit_form_inner">
                        <label>Order amount</label>
                        <b id="order_amount"></b>
                    </div>
                    <div class="edit_form_inner">
                        <label>No.of docs</label>
                        <b id="number_of_document"></b>
                    </div>
                </div>
                <div class="col-md-4">
                    <h4>Documents</h4>
                    <div class="edit_form_inner">
                        <label class="empty">&nbsp;</label>
                        <div class="documentLink">
                            <ul id="document_list">
                                {{-- <li>
                                    <a href="#">
                                        <img src="{{asset('images/icon_01.png')}}" alt="">
                                        <span>Passport-front-view.jpg</span>
                                    </a>
                                </li> --}}
                                {{-- <li>
                                    <a href="#">
                                        <img src="{{asset('images/icon_01.png')}}" alt="">
                                        <span>Visa-document.pdf</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="{{asset('images/icon_01.png')}}" alt="">
                                        <span>Passport-with-face.jpg</span>
                                    </a>
                                </li> --}}
                            </ul>
                        </div>
                    </div>
                    <div class="edit_form_inner">
                        <label class="empty">Comments</label>
                        <textarea id="comment" class="form_con" name="comment"></textarea>
                    </div>
                    <div class="edit_form_inner">
                        <label class="chkcontainer">
                            <input name="follow_up" id="follow_up" type="checkbox" value="" {{Auth::user()->role==3 ? "disabled" : ""}}>Follow-Up (open)
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="edit_form_inner">
                        <button class="btn_save" id="edited" type="submit">Save</button>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    </form>
    <div class="documet_box">
        <i class="closeMenu documentpopup">&#10006;</i>
        <h3>Document view</h3>
        <div class="documentName">
            file Name : <b>Passport-with-face.png</b>
        </div>
        <div class="documet_per">
            <img id="imageshow" src="{{asset('images/document_per.jpg')}}" alt="">
        </div>
    </div>





@endsection



