<%@page import="java.sql.*"%>
<%@include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Home</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/news_styles.css">
<link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
 <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header d-flex flex-row">
		<div class="header_content d-flex flex-row align-items-center">
			<!-- Logo -->
			<div class="logo_container">
				<div class="logo">
					<img src="images/logo.png" alt="">
					<span>SM</span>
				</div>
			</div>

			<!-- Main Navigation -->
			<nav class="main_nav_container">
				<div class="main_nav">
					<ul class="main_nav_list">
						<li class="main_nav_item"><a href="AdminHome.jsp">Admin Home</a></li>
						<li class="main_nav_item"><a href="AddStudent.jsp">Add Student</a></li>
						<li class="main_nav_item"><a href="UpdateStudent.jsp">Modify Student</a></li>
						<li class="main_nav_item"><a href="RemoveStudent.jsp">Remove Student</a></li>
						<li class="main_nav_item"><a href="index.jsp">Logout</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="header_side d-flex flex-row justify-content-center align-items-center">
			<img src="images/phone-call.svg" alt="">
			<span>+01 234 567 89</span>
		</div>

		<!-- Hamburger -->
		<div class="hamburger_container">
			<i class="fas fa-bars trans_200"></i>
		</div>

	</header>
	
	<!-- Menu -->
	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<ul class="menu_list menu_mm">
                                                <li class="menu_item menu_mm"><a href="AdminHome.jsp">Admin Home</a></li>
						<li class="menu_item menu_mm"><a href="AddStudent.jsp">Add Student</a></li>
						<li class="menu_item menu_mm"><a href="UpdateStudent.jsp">Modify Student</a></li>
						<li class="menu_item menu_mm"><a href="RemoveStudent.jsp">Remove Student</a></li>
						<li class="menu_item menu_mm"><a href="index.jsp">Logout</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>

			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(images/news_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Admin Home</h1>
		</div>
	</div>

	<!-- News -->

	<div class="news">
		<div class="container">
			
				
				<!-- News Column -->
<form>
    <table align="center" class="current" style="border: 1px solid #000; height:400px;width:100%;padding-left: 10px;">
      
       <tr >
            
            <td align="center"><b>Student Id</b></td>
             <td align="center"><b>First Name</b></td>
             <td align="center"><b>Second Name</b></td>
             <td align="center"><b>Father Name</b></td>
             <td align="center"><b>Email</b></td>
             <td align="center"><b>Contact no.</b></td>
             <td align="center"><b>Class</b></td>
           
            
        </tr>
        <%
        try
        {
Statement st=null;

String stuid="";
String Name1, Name2, father,eid,cno,cls="";
//String status=request.getParameter("status");
//String datauser=session.getAttribute("user2").toString();
String Query = "Select AES_DECRYPT(AES_ENCRYPT(studentid ID,'key_string') (studentfirstname Name1,'key_string'), (studentsecondname Name2,'key_string'), (fathername father,'key_string'),(email eid,'key_string') , (contactno cno,'key_string'), (studentclass cls,'key_string') from studentlist";
///out.println("1");
st=con.createStatement();
//out.println("2");
ResultSet rs = st.executeQuery(Query);
//out.println("3");
 while(rs.next())
     {
             Name1=rs.getString("Name1");
             stuid=rs.getString("ID");
             Name2=rs.getString("Name2");
             father=rs.getString("father");
             eid=rs.getString("eid");
             cno=rs.getString("cno");
             cls=rs.getString("cls");
             
            
%>
<tr>
                                    
                                                <td align="center"><%=stuid%> </td>
                     			   	<td align="center"><%=Name1%> </td>
                                                <td align="center"><%=Name2%> </td>
                                                <td align="center"><%=father%> </td>
                                                <td align="center"><%=eid%></td>
                                                <td align="center"><%=cno%> </td>
                                                <td align="center"><%=cls%> </td>
</tr>
                                <%
                                           }
        } catch(Exception e)
        {
        	out.println(e.getMessage());
        }
                                %>
                                <br><br><br> </table>
              </form>            

				
				<!-- Sidebar Column -->

				
			
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			
			<!-- Newsletter -->



			<!-- Footer Content -->

			<div class="footer_content">
				
			</div>

			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				<div class="footer_copyright">
					<span>Akilesh</span>
				</div>
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/news_custom.js"></script>

</body>
</html>