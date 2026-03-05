<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="description"
      content="Project 1 portfolio page for customer form validation."
    />
    <meta name="author" content="Khushi Patel" />
    <link rel="icon" href="favicon.ico" />
    <link rel="stylesheet" href="./../css/fsu-theme.css" />
    <title>LIS4368 - Project1</title>

    <%@ include file="/css/include_css.jsp" %>
  </head>

  <body>
    <%@ include file="/global/nav.jsp" %>

    <div class="container">
      <div class="starter-template">
        <div class="page-header"><%@ include file="/global/header.jsp" %></div>

        <div class="page-header">
          <h2>Project 1</h2>
          <h3>Customer Form Validation</h3>
        </div>

        <form
          id="add_customer_form"
          method="post"
          class="form-horizontal"
          action="#"
        >
          <!-- First Name -->
          <div class="form-group">
            <label class="col-sm-4 control-label">First Name:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_fname"
                maxlength="15"
              />
            </div>
          </div>

          <!-- Last Name -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Last Name:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_lname"
                maxlength="30"
              />
            </div>
          </div>

          <!-- Street -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Street:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_street"
                maxlength="30"
              />
            </div>
          </div>

          <!-- City -->
          <div class="form-group">
            <label class="col-sm-4 control-label">City:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_city"
                maxlength="30"
              />
            </div>
          </div>

          <!-- State -->
          <div class="form-group">
            <label class="col-sm-4 control-label">State:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_state"
                maxlength="2"
              />
            </div>
          </div>

          <!-- Zip -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Zip:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_zip"
                maxlength="9"
              />
            </div>
          </div>

          <!-- Phone -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Phone:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_phone"
                maxlength="10"
              />
            </div>
          </div>

          <!-- Email -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Email:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_email"
                maxlength="100"
              />
            </div>
          </div>

          <!-- Balance -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Balance:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_balance"
                maxlength="6"
              />
            </div>
          </div>

          <!-- Total Sales -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Total Sales:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_total_sales"
                maxlength="6"
              />
            </div>
          </div>

          <!-- Notes (optional) -->
          <div class="form-group">
            <label class="col-sm-4 control-label">Notes:</label>
            <div class="col-sm-4">
              <input
                type="text"
                class="form-control"
                name="cus_notes"
                maxlength="255"
              />
            </div>
          </div>

          <!-- Submit -->
          <div class="form-group">
            <div class="col-sm-6 col-sm-offset-3">
              <button
                type="submit"
                class="btn btn-primary"
                name="signup"
                value="Sign up"
              >
                Submit
              </button>
            </div>
          </div>
        </form>

        <%@ include file="/global/footer.jsp" %>
      </div>
    </div>

    <%@ include file="/js/include_js.jsp" %>

    <script type="text/javascript">
      $(document).ready(function () {
        $("#add_customer_form").formValidation({
          message: "This value is not valid",
          icon: {
            valid: "fa fa-check",
            invalid: "fa fa-times",
            validating: "fa fa-refresh",
          },
          fields: {
            cus_fname: {
              validators: {
                notEmpty: { message: "First name required" },
                stringLength: {
                  min: 1,
                  max: 15,
                  message: "First name no more than 15 characters",
                },
                regexp: {
                  regexp: /^[a-zA-Z\-]+$/,
                  message: "First name can only contain letters and hyphens",
                },
              },
            },

            cus_lname: {
              validators: {
                notEmpty: { message: "Last name required" },
                stringLength: {
                  min: 1,
                  max: 30,
                  message: "Last name no more than 30 characters",
                },
                regexp: {
                  regexp: /^[a-zA-Z\-]+$/,
                  message: "Last name can only contain letters and hyphens",
                },
              },
            },

            cus_street: {
              validators: {
                notEmpty: { message: "Street required" },
                stringLength: {
                  min: 1,
                  max: 30,
                  message: "Street no more than 30 characters",
                },
                regexp: {
                  regexp: /^[a-zA-Z0-9,\-\. ]+$/,
                  message:
                    "Street can only contain letters, numbers, commas, hyphens, periods, and spaces",
                },
              },
            },

            cus_city: {
              validators: {
                notEmpty: { message: "City required" },
                stringLength: {
                  min: 1,
                  max: 30,
                  message: "City no more than 30 characters",
                },
                regexp: {
                  regexp: /^[a-zA-Z0-9\- ]+$/,
                  message:
                    "City can only contain letters, numbers, hyphens, and spaces",
                },
              },
            },

            cus_state: {
              validators: {
                notEmpty: { message: "State required" },
                stringLength: {
                  min: 2,
                  max: 2,
                  message: "State must be exactly 2 characters",
                },
                regexp: {
                  regexp: /^[a-zA-Z]{2}$/,
                  message: "State can only contain letters",
                },
              },
            },

            cus_zip: {
              validators: {
                notEmpty: { message: "Zip required" },
                stringLength: {
                  min: 5,
                  max: 9,
                  message: "Zip must be between 5 and 9 characters",
                },
                regexp: {
                  regexp: /^[0-9]+$/,
                  message: "Zip can only contain numbers",
                },
              },
            },

            cus_phone: {
              validators: {
                notEmpty: { message: "Phone required" },
                stringLength: {
                  min: 10,
                  max: 10,
                  message: "Phone must be exactly 10 digits",
                },
                regexp: {
                  regexp: /^[0-9]{10}$/,
                  message: "Phone can only contain numbers",
                },
              },
            },

            cus_email: {
              validators: {
                notEmpty: { message: "Email required" },
                stringLength: {
                  min: 1,
                  max: 100,
                  message: "Email no more than 100 characters",
                },
                regexp: {
                  regexp: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
                  message: "Must include valid email",
                },
              },
            },

            cus_balance: {
              validators: {
                notEmpty: { message: "Balance required" },
                stringLength: {
                  min: 1,
                  max: 6,
                  message: "Balance no more than 6 characters",
                },
                regexp: {
                  regexp: /^[0-9]+(\.[0-9]+)?$/,
                  message:
                    "Balance can only contain numbers and an optional decimal point",
                },
              },
            },

            cus_total_sales: {
              validators: {
                notEmpty: { message: "Total sales required" },
                stringLength: {
                  min: 1,
                  max: 6,
                  message: "Total sales no more than 6 characters",
                },
                regexp: {
                  regexp: /^[0-9]+(\.[0-9]+)?$/,
                  message:
                    "Total sales can only contain numbers and an optional decimal point",
                },
              },
            },

            cus_notes: {
              validators: {
                stringLength: {
                  max: 255,
                  message: "Notes no more than 255 characters",
                },
                // Notes is optional, so no notEmpty here
              },
            },
          },
        });
      });
    </script>
  </body>
</html>
