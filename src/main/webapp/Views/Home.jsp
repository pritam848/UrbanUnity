<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Urban Unity</title>
    
    <!-- ✅ Correct CSS path -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style1.css">
    
    

    <script src="https://kit.fontawesome.com/2edfbc5391.js" crossorigin="anonymous"></script>
</head>
<body>
   <div class="page">
       <div class="navbar">
           <!-- ✅ Correct image path -->
           <img src="${pageContext.request.contextPath}/resources/images/shlogo.jpg" class="logo">
           <h1>Urban <span style="font-family: 'Merienda', cursive; color:rgb(20, 76, 80);">Unity</span></h1>
           <nav>
               <ul>
                   <li><a href="" class="active">Home</a></li>
                   <li><a href="#rules">Rules & Regulations</a></li>
               </ul>
           </nav>
           <!-- ✅ Admin login link updated -->
           <a href="${pageContext.request.contextPath}/adminlogin" class="btn">Admin Login</a>
       </div>

       <div class="row">
           <div class="col-1">
               <img src="${pageContext.request.contextPath}/resources/images/building1.jpg">
           </div>
           <div class="col-2">
               <div class="form-container">
                   <div class="form-btn">
                       <span onclick="login()">Login</span>
                       <span onclick="register()">Register</span>
                       <hr id="indicator">
                   </div>

                   <!-- ✅ Spring-compatible login form -->
                   <form action="${pageContext.request.contextPath}/login" method="post" id="Loginform">
                       <input type="text" placeholder="Username" name="username" required>
                       <input type="email" placeholder="E-mail" name="email" required>
                       <input type="text" placeholder="Flat-No." name="flatno" required>
                       <input type="password" placeholder="Password" name="password" required>
                       <button type="submit" class="btn-losi">Login</button><br>
                       <a href="#">Forget Password...???</a>
                   </form>

                   <!-- ✅ Spring-compatible register form -->
                   <form action="${pageContext.request.contextPath}/register" method="post" id="Regform">
                       <input type="text" placeholder="Username" name="username" required>
                       <input type="email" placeholder="E-mail" name="email" required>
                       <input type="text" placeholder="Flat-No." name="flatno" required>
                       <input type="tel" placeholder="Mobile Number" name="mobno" required>
                       <input type="text" placeholder="Number of Family members" name="fammem" required>
                       <input type="password" placeholder="Password" name="password" required>
                       <button type="submit" class="btn-losi">Register Now</button>
                   </form>
               </div>
           </div>
       </div>
   </div>

   <hr>

   <div id="rules">
       <h1>Rules and Regulations</h1>
       <hr>
       <ul>
           <li>Members and residents are required to keep their flats/homes and nearby premises clean and habitable.</li>  
           <li>The residents should also maintain proper cleanliness etiquette while using common areas, parking lot, etc. and not throw litter from their balconies and windows.</li>
           <li>Members must regularly pay the maintenance charges and all other dues necessitated by the society.</li>
           <li>Keeping pets is allowed after submitting the required NOC to the society. But if pets like dogs are creating any kind of disturbance to other society members then the pets won’t be allowed.</li>
           <li>Every member of the society should park their vehicles in their respective allotted parking spaces only.</li> 
           <li>After using the community hall for any event or function it should be cleaned and no damages should be caused.</li> 
           <li>No member can occupy the area near their front doors, corridors, passage for their personal usage.</li> 
           <li>Salesmen, vendors or any other sellers are not allowed to enter the premises.</li>
           <li>Wastage and over usage of water is not allowed.</li>
           <li>Smoking in lobbies, passage is not allowed. If any irresponsible person is found smoking in the no smoking zone, he/she shall be charged with penalty.</li>   
       </ul>
   </div>

   <hr>

   <footer>
       <div class="main-content">
           <div class="left box">
               <h2>About Us</h2>
               <div class="content">
                   <p>Urban Unity is webapp where society members can get all the updates related to their society. The members also get notified with notices and events held in society and can see information about members in society. Members can also post complaints regarding any issue in society.</p>
               </div>
           </div>

           <div class="center box adjust">
               <div class="cen">
                   <h2>Quick Links</h2>
                   <ul>
                       <li><a href="#Loginform">Login</a></li>
                       <li><a href="#rules">Rules and Regulations</a></li>
                   </ul>
               </div>
           </div>

           <div class="right box">
               <h2>Address</h2>
               <div class="content">
                   <div class="place">
                       <span class="fas fa-map-marker-alt"></span>
                       <span class="text">Akurdi Pune</span>
                   </div>
                   <div class="phone">
                       <span class="fas fa-phone-alt"></span>
                       <span class="text">+91 9145642659</span>
                   </div>
                   <div class="email">
                       <span class="fas fa-envelope"></span>
                       <span class="text">Urban Unity@gmail.com</span>
                   </div>
               </div>
           </div>
       </div>

       <div class="copyright">
           <h3>Copyright ©2024 | Designed with HTML, CSS, Spring MVC</h3>
       </div>
   </footer>

   <script>
       var Loginform = document.getElementById("Loginform");
       var Regform = document.getElementById("Regform");
       var indicator = document.getElementById("indicator");

       function register() {
           Regform.style.transform = "translateX(0px)";
           Loginform.style.transform = "translateX(0px)";
           indicator.style.transform = "translateX(80px)";
       }

       function login() {
           Regform.style.transform = "translateX(300px)";
           Loginform.style.transform = "translateX(300px)";
           indicator.style.transform = "translateX(0px)";
       }
   </script>
</body>
</html>
