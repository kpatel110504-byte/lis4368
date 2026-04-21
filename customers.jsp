<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="description"
      content="My online portfolio that illustrates skills acquired while working through various project requirements."
    />
    <meta name="author" content="Khushi Patel" />
    <link rel="icon" href="favicon.ico" />

    <title>LIS4368 - JSP Forms</title>
    <link rel="stylesheet" href="./css/fsu-theme.css" />
    <%@ include file="/css/include_css.jsp" %>
  </head>
  <body>
    <%@ include file="./global/nav_global.jsp" %>

    <div class="container-fluid">
      <div class="starter-template">
        <div class="page-header">
          <%@ include file="/p2/global/header.jsp" %>
        </div>

        <h2>Customers</h2>

        <form
          id="add_customer_form"
          method="post"
          class="form-horizontal"
          action="${pageContext.request.contextPath}/customerAdmin"
        >
          <input type="hidden" name="action" value="join" />
          <input type="submit" value="Add" />
        </form>

        <div class="table-responsive">
          <table id="myTable" class="table table-striped table-condensed">
            <thead>
              <tr>
                <th class="text-center">Fname</th>
                <th class="text-center">Lname</th>
                <th class="text-center">Street</th>
                <th class="text-center">City</th>
                <th class="text-center">State</th>
                <th class="text-center">Zip</th>
                <th class="text-center">Phone</th>
                <th class="text-center">Email</th>
                <th class="text-center">Balance</th>
                <th class="text-center">Total Sales</th>
                <th class="text-center">Notes</th>
                <th class="text-center">&nbsp;</th>
                <th class="text-center">&nbsp;</th>
              </tr>
            </thead>

            <tbody>
              <c:forEach var="user" items="${users}">
                <tr class="text-left">
                  <td><c:out value="${user.fname}" /></td>
                  <td><c:out value="${user.lname}" /></td>
                  <td><c:out value="${user.street}" /></td>
                  <td><c:out value="${user.city}" /></td>
                  <td><c:out value="${user.state}" /></td>
                  <td><c:out value="${user.zip}" /></td>
                  <td><c:out value="${user.phone}" /></td>
                  <td><c:out value="${user.email}" /></td>
                  <td class="text-right"><c:out value="${user.balance}" /></td>
                  <td class="text-right">
                    <c:out value="${user.totalSales}" />
                  </td>
                  <td><c:out value="${user.notes}" /></td>

                  <td>
                    <form
                      id="edit_customer_form"
                      class="form-horizontal"
                      action="${pageContext.request.contextPath}/customerAdmin"
                      method="post"
                    >
                      <input
                        type="hidden"
                        name="modify_customer"
                        value="${user.id}"
                      />
                      <button type="submit">Edit</button>
                    </form>
                  </td>

                  <td>
                    <form
                      onsubmit="
                        return confirm('Do you really want to delete record?');
                      "
                      id="delete_customer_form"
                      class="form-horizontal"
                      action="${pageContext.request.contextPath}/customerAdmin"
                      method="post"
                    >
                      <input
                        type="hidden"
                        name="delete_customer"
                        value="${user.id}"
                      />
                      <button type="submit">Delete</button>
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>

        <%@ include file="/global/footer.jsp" %>
      </div>
    </div>

    <%@ include file="/js/include_js.jsp" %>

    <script type="text/javascript">
      $(document).ready(function () {
        $("#myTable").DataTable({
          lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, "All"],
          ],
          columns: [
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            { orderable: false },
            { orderable: false },
          ],
        });
      });
    </script>
  </body>
</html>
