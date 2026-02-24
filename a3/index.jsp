<!DOCTYPE html>
<html lang="en">
  <head>
    <!--
"Time-stamp: <Sat, 01-02-21, 19:40:00 Eastern Standard Time>"
//-->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="description"
      content="My online portfolio that illustrates skills acquired while working through various project requirements."
    />
    <meta name="author" content="Khushi Patel" />
    <link rel="icon" href="favicon.ico" />

    <!-- Same theme include pattern as A2 -->
    <link rel="stylesheet" href="./../css/fsu-theme.css" />
    <title>LIS4368 - Assignment 3</title>

    <%@ include file="/css/include_css.jsp" %>
  </head>
  <body>
    <!-- display application path -->
    <% //= request.getContextPath() %>

    <!-- can also find path like this...<a href="${pageContext.request.contextPath}${'/a5/index.jsp'}">A5</a> -->

    <%@ include file="/global/nav.jsp" %>

    <div class="container">
      <div class="starter-template">
        <div class="page-header"><%@ include file="/global/header.jsp" %></div>

        <h2>Assignment 3 Screenshots</h2>
        <p class="lead">Petstore ERD, Tables, JSP, and Skillset Screenshots</p>

        <hr />

        <!-- 1. ERD -->
        <h4>1. Petstore Database (Entity Relationship Diagram)</h4>
        <p>Screenshot of the Petstore ERD from MySQL Workbench.</p>
        <img
          src="./img/ERD_screenshot.png"
          class="img-responsive center-block"
          alt="A3 ERD"
        />

        <br /><br />

        <!-- 2. Table data screenshots -->
        <h4>2. Tables Data Screenshots (First 10 Records)</h4>
        <p>
          Screenshots of the first 10 records from each table after forward
          engineering the database and inserting sample data.
        </p>

        <h5>2.1 petstore Table</h5>
        <p>Screenshot of 10 records from the <code>petstore</code> table.</p>
        <img
          src="./img/petstore_table.png"
          class="img-responsive center-block"
          alt="petstore table records"
        />

        <br /><br />

        <h5>2.2 pet Table</h5>
        <p>Screenshot of 10 records from the <code>pet</code> table.</p>
        <img
          src="./img/pet_table.png"
          class="img-responsive center-block"
          alt="pet table records"
        />

        <br /><br />

        <h5>2.3 customer Table</h5>
        <p>Screenshot of 10 records from the <code>customer</code> table.</p>
        <img
          src="./img/customer_table.png"
          class="img-responsive center-block"
          alt="customer table records"
        />

        <br /><br />

        <!-- 3. Docs -->
        <h4>3. MySQL Workbench and SQL Files</h4>
        <p>
          Links to the ERD and SQL Forward Engineer script stored in the
          <code>a3/docs</code> folder.
        </p>
        <a href="docs/a3.mwb">A3 MWB File (a3.mwb)</a>
        <br />
        <a href="docs/a3.sql">A3 SQL File (a3.sql)</a>

        <br /><br />

        <!-- 4. Skillsets section like A2, but for Skillsets 4, 5, and 6 -->
        <h4>4. Skillsets Screenshots (Skillsets 4, 5, and 6)</h4>
        <table class="table table-bordered skills-table">
          <thead>
            <tr>
              <th>Skillset #4 - Directory_Info</th>
              <th>Skillset #5 - Character_Info</th>
              <th>Skillset #6 - Determine_Character</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <img
                  src="./img/Directory_Info.png"
                  class="img-responsive center-block"
                  alt="Directory_Info skillset screenshot"
                />
              </td>
              <td>
                <img
                  src="./img/Character_Info.png"
                  class="img-responsive center-block"
                  alt="Character_Info skillset screenshot"
                />
              </td>
              <td>
                <img
                  src="./img/Determine_Character.png"
                  class="img-responsive center-block"
                  alt="Determine_Character skillset screenshot"
                />
              </td>
            </tr>
          </tbody>
        </table>

        <%@ include file="/global/footer.jsp" %>
      </div>
      <!-- end starter-template -->
    </div>
    <!-- end container -->

    <%@ include file="/js/include_js.jsp" %>
  </body>
</html>
