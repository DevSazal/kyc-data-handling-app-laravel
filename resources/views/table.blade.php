<form  method="post" action="{{route('umEdit')}}" id="userDetailsEdit" >
			<div class="edit_form addUser" id="addUser">
				<i class="closeMenu editpopup">&#10006;</i>
				<h3>EDIT</h3>
				<div class="edit_box">
					<div class="row">
						
							@csrf
						
						<div class="col-md-12">
							<div class="edit_form_inner">
								<label>First Name</label>
								<input type="hidden" name="id" id="id">
								<input id="firstName" type="text"  class="form_con" name="firstName">
							</div>
							<div class="edit_form_inner">
								<label>Last Name</label>
								<input id="lastName" type="text"  class="form_con" name="lastName">
							</div>
							<div class="edit_form_inner">
								<label>Email</label>
								<input id="email" type="text"  class="form_con" name="email">
							</div>
							<div class="edit_form_inner">
								<label>User Name</label>
								<input id="userName" type="text" class="form_con" name="userName">
							</div>
							<div class="edit_form_inner">
								{{-- <label>Created At</label> --}}
								<input id="createdAt" type="hidden"  class="form_con" name="createdAt">
							</div>
							<div class="edit_form_inner">
								<label>User Group</label>
								<select id="roleName" class="form_con" name="roleName">
									<option value="1">Administrator</option>
									<option value="2">Internal</option>
									<option value="3">External</option>
								</select>
							</div>
							<div class="edit_form_inner">
								<div class="green">
									<label class="chkcontainer">
								  		<input id="active" type="checkbox" name="active">Active
								  		<span class="checkmark"></span>
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="edit_form_inner">
								<button class="btn_save" value="submit" name="submit" type="submit">Save</button>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
			</div>
		</form>



		<form  method="post" action="{{route('user.add')}}" id="" >
			<div class="edit_form addUser" id="addUserrr">
				<i class="closeMenu editpopup">&#10006;</i>
				<h3>Add User</h3>
				<div class="edit_box">
					<div class="row">
						
							@csrf
						
						<div class="col-md-12">
							<div class="edit_form_inner">
								<label>First Name</label>
								<input type="hidden" name="id" id="id">
								<input id="firstName" type="text"  class="form_con" name="firstName">
							</div>
							<div class="edit_form_inner">
								<label>Last Name</label>
								<input id="lastName" type="text"  class="form_con" name="lastName">
							</div>
							<div class="edit_form_inner">
								<label>Email</label>
								<input id="email" type="text"  class="form_con" name="email">
							</div>
							<div class="edit_form_inner">
								<label>User Name</label>
								<input id="userName" type="text" class="form_con" name="userName">
							</div>
							<div class="edit_form_inner">
							{{-- 	<label>Created At</label> --}}
								<input id="createdAt" type="hidden" placeholder="System will create Automatically"  class="form_con" name="createdAt" readonly>
							</div>
							<div class="edit_form_inner">
								<label>User Group</label>
								<select id="roleName" class="form_con" name="roleName">
									<option value="1">Administrator</option>
									<option value="2">Internal</option>
									<option value="3">External</option>
								</select>
							</div>
							<div class="edit_form_inner">
								<div class="green">
									<label class="chkcontainer">
								  		<input id="active" type="checkbox" name="active">Active
								  		<span class="checkmark"></span>
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="edit_form_inner">
								<button class="btn_save" name="ssss" type="submit">Save</button>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
			</div>
		</form>











