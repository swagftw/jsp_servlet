<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/JDBC"
         user = "clip"  password = "Roothere6^s"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from auth;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>username</th>
            <th>email</th>
            <th>password</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.username}"/></td>
               <td><c:out value = "${row.email}"/></td>
               <td><c:out value = "${row.password}"/></td>
            </tr>
         </c:forEach>
      </table>
   </body>
</html>