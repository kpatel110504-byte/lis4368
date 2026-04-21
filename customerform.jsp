<%-- Use core library --%>
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

    <link rel="stylesheet" href="./css/fsu-theme.css" />
    <title>LIS4368 - JSP Forms</title>

    <%@ include file="/css/include_css.jsp" %>
  </head>
  <body>
    <%@ include file="./global/nav_global.jsp" %>

    <div class="container">
      <div class="starter-template">
        <div class="page-header">
          <c:set var="anum" value="${param.assign_num}" scope="request" />
          <c:choose>
            <c:when test="${anum == null || anum == '0'}">
              <%@ include file="/global/header.jsp" %>
            </c:when>

            <c:when test="${anum == 'a4'}">
              <%@ include file="/a4/global/header.jsp" %>
            </c:when>

            <c:when test="${anum == 'a5'}">
              <%@ include file="/a5/global/header.jsp" %>
            </c:when>

            <c:when test="${anum == 'p2'}">
              <%@ include file="/p2/global/header.jsp" %>
            </c:when>

            <c:otherwise>
              <% response.sendRedirect("/lis4368/index.jsp"); %>
            </c:otherwise>
          </c:choose>
        </div>

        <p><i>${message}</i></p>

        <p>
          <a href="${pageContext.request.contextPath}/customerAdmin?action=display_customers">
            Display Customers
          </a>
        </p>

        <form
          id="add_customer_form"
          method="post"
          class="form-horizontal"
          action="${pageContext.request.contextPath}/customerAdmin"
        >
          <input type="hidden" name="action" value="add_customer">

          <div class="form-group">
            <label class="col-sm-4 control-label">FName:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="15" name="fname" value="${user.fname}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">LName:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="30" name="lname" value="${user.lname}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Street:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="30" name="street" value="${user.street}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">City:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="30" name="city" value="${user.city}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">State:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="2" name="state" value="${user.state}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Zip:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="9" name="zip" value="${user.zip}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Phone:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="10" name="phone" value="${user.phone}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Email:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="100" name="email" value="${user.email}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Balance:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="9" name="balance" value="${user.balance}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Total Sales:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="9" name="total_sales" value="${user.totalSales}" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Notes:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" maxlength="255" name="notes" value="${user.notes}" />
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-6 col-sm-offset-3">
              <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
            </div>
          </div>
        </form>

        <%@ include file="/global/footer.jsp" %>
      </div>
    </div>

    <%@ include file="/js/include_js.jsp" %>

    <script type="text/javascript">
      $(document).ready(function() {
        $('#add_customer_form').formValidation({
          message: 'This value is not valid',
          icon: {
            valid: 'fa fa-check',
            invalid: 'fa fa-times',
            validating: 'fa fa-refresh'
          },
          fields: {
            fname: {
              validators: {
                notEmpty: { message: 'First name required' },
                stringLength: { min: 1, max: 15, message: 'First name no more than 15 characters' },
                regexp: {
                  regexp: /^[a-zA-Z\-]+$/,
                  message: 'First name can only contain letters and hyphens.'
                }
              }
            },
            lname: {
              validators: {
                notEmpty: { message: 'Last name required' },
                stringLength: { min: 1, max: 30, message: 'Last name no more than 30 characters' },
                regexp: {
                  regexp: /^[a-zA-Z\-]+$/,
                  message: 'Last name can only contain letters and hyphens'
                }
              }
            },
            street: {
              validators: {
                notEmpty: { message: 'Street required' },
                stringLength: { min: 1, max: 30, message: 'Street must contain no more than 30 characters' },
                regexp: {
                  regexp: /^[a-zA-Z0-9,\s\.\-]+$/,
                  message: 'Street can only contain letters, numbers, commas, periods, or hyphens.'
                }
              }
            },
            city: {
              validators: {
                notEmpty: { message: 'City required' },
                stringLength: { min: 1, max: 30, message: 'City must contain no more than 30 characters' },
                regexp: {
                  regexp: /^[a-zA-Z0-9\s\-]+$/,
                  message: 'City can only contain letters, numbers, space characters, and hyphens(29 Palms)'
                }
              }
            },
            state: {
              validators: {
                notEmpty: { message: 'State required' },
                stringLength: { min: 2, max: 2, message: 'State must be 2 characters' },
                regexp: {
                  regexp: /^[a-zA-Z]+$/,
                  message: 'State can only contain letters.'
                }
              }
            },
            zip: {
              validators: {
                notEmpty: { message: 'Zip required' },
                stringLength: { min: 5, max: 9, message: 'Zip must contain 5 to 9 characters' },
                regexp: {
                  regexp: /^[0-9]+$/,
                  message: 'Zip can only contain numbers.'
                }
              }
            },
            phone: {
              validators: {
                notEmpty: { message: 'Phone required' },
                stringLength: { min: 10, max: 10, message: 'Phone must contain 10 characters' },
                regexp: {
                  regexp: /^[0-9]+$/,
                  message: 'Phone can only contain numbers.'
                }
              }
            },
            email: {
              validators: {
                notEmpty: { message: 'Email address is required' },
                stringLength: { min: 1, max: 100, message: 'Email no more than 100 characters' },
                regexp: {
                  regexp: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
                  message: 'Must include valid email'
                }
              }
            },
            balance: {
    validators: {
        notEmpty: {
            message: 'Balance is required'
        },
        stringLength: {
            min: 1,
            max: 9,
            message: 'Balance must be up to 6 digits, with optional 2 decimal places'
        },
        regexp: {
            regexp: /^\d{1,6}(\.\d{1,2})?$/,
            message: 'Balance must be a valid amount up to 999999.99'
        },
    },
},
            total_sales: {
    validators: {
        notEmpty: {
            message: 'Total sales required'
        },
        stringLength: {
            min: 1,
            max: 9,
            message: 'Total sales must be up to 6 digits, with optional 2 decimal places'
        },
        regexp: {
            regexp: /^\d{1,6}(\.\d{1,2})?$/,
            message: 'Total sales must be a valid amount up to 999999.99'
        },
    },
}
          }
        });
      });
    </script>
  </body>
</html>