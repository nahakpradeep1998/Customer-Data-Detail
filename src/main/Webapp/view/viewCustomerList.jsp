
<%@ include file="Common/header.jspf" %>
<%@ include file="Common/navigation.jspf" %>

<lable for="">Search By Name</lable>
<input type="search" id="" name="q"/>
<button>search</button>
 <div class="container">

        <h1 class="p-3">Customer List</h1>

        <form:form>

            <table class="table table-bordered">
            	<tr>
            		<th>Id</th>
            		<th>FIRST NAME</th>
            		<th>LAST NAME</th>
            		<th>STREET</th>
                    <th>ADDRESS</th>
                     <th>CITY</th>
                    <th>STATE</th>
                    <th>EMAIL</th>
                    <th>PHONE</th>
            		<th>Edit</th>
            		<th>Delete</th>
            	</tr>

            	<c:forEach var="customer" items="${list}">
                    <tr>
                		<td>${customer.id}</td>
                		<td>${customer.firstName}</td>
                		<td>${customer.lastName}</td>
                		<td>${customer.street}</td>
                        <td>${customer.address}</td>
                        <td>${customer.city}</td>
                        <td>${customer.state}</td>
                        <td>${customer.email}</td>
                        <td>${customer.phone}</td>
                		
                		<td><button type="button" class="btn btn-primary">
                		    <a href="/editCustomerList/${customer.id}">Edit</a>
                		</button></td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/deleteCustomerList/${customer.id}">Delete</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>

        <button type="button" class="btn btn-primary btn-block">
        	<a href="/addCustomerList">Add New Customer List</a>
        </button>

    </div>
    <script th:inline="javascript">
                window.onload = function() {
                    var msg = "${message}";
                    
                    if (msg == "Save Success") {
        				Command: toastr["success"]("Item added successfully!!")
        			} else if (msg == "Delete Success") {
        				Command: toastr["success"]("Item deleted successfully!!")
        			} else if (msg == "Delete Failure") {
        			    Command: toastr["error"]("Some error occurred, couldn't delete item")
        			} else if (msg == "Edit Success") {
        				Command: toastr["success"]("Item updated successfully!!")
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