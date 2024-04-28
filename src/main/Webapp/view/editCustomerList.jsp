<%@ include file="Common/header.jspf" %>
<%@ include file="Common/navigation.jspf" %>
<h1>edit</h1>
 <div class="container">

        <h1 class="p-3"> Edit Item </h1>

        <form:form action="/editSaveCustomerList" method="post" modelAttribute="customer">
			<form:input path="id" type="hidden"/>
          <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="firstName">firstName</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="firstName" id="firstName"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
             <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="lastName">lastName</label>
            		<div class="col-md-6">
            			<form:input type="text" path="lastName" id="lastName"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="street">street</label>
            		<div class="col-md-6">
            			<form:input type="text" path="street" id="street"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="status">address</label>
            		<div class="col-md-6">
            			<form:input type="text" path="address" id="address"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="status">city</label>
            		<div class="col-md-6">
            			<form:input type="text" path="city" id="city"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="state">state</label>
            		<div class="col-md-6">
            			<form:input type="text" path="state" id="state"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="email">email</label>
            		<div class="col-md-6">
            			<form:input type="text" path="email" id="email"
            				class="form-control input-sm" value="Email" />
            		</div>
            	</div>
            </div>
            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="phone">phone</label>
            		<div class="col-md-6">
            			<form:input type="text" path="phone" id="phone"
            				class="form-control input-sm" value="+91" />
            		</div>
            	</div>
            </div>
            
      


            <div class="row p-2">
            	<div class="col-md-2">
            		<button type="submit" value="Register" class="btn btn-success">Save</button>
            	</div>
            </div>

        </form:form>

    </div>

    <script th:inline="javascript">
                window.onload = function() {
                    var msg = "${message}";
                    console.log(msg);
                    if (msg == "Edit Failure") {
        				Command: toastr["error"]("Something went wrong with the edit.")
        			}
        			toastr.options = {
                          "closeButton": true,
                          "debug": false,
                          "newestOnTop": false,
                          "progressBar": true,
                          "positionClass": "toast-top-right",
                          "preventDuplicates": false,
                          "showDuration": "300",
                          "hideDuration": "1000",
                          "timeOut": "5000",
                          "extendedTimeOut": "1000",
                          "showEasing": "swing",
                          "hideEasing": "linear",
                          "showMethod": "fadeIn",
                          "hideMethod": "fadeOut"
                        }
        	    }
            </script>

</body>
</html>