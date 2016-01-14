<%-- 
    Document   : register
    Created on : Aug 22, 2014, 10:12:25 PM
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <%@include file="header.jsp"%>
        <%@include file="sidepane.jsp"%>
    </head>
    <script type="text/javascript">
        
        function check()
        {    
            if(!document.getElementById("text1").value.length)
            {
                alert("Please Enter Your Name");
                return false;
            }
            if(!document.getElementById("text2").value.length)
            {
                alert("Please Enter Your Contact No");
                return false;
            }
            if(!document.getElementById("text3").value.length)
            {
                alert("Please Enter Your Email id");
                return false;
            }
            if(!document.getElementById("text4").value.length)
            {
                alert("Please Enter Your Address");
                return false;
            }
            if(!document.getElementById("text5").value.length || (document.getElementById("text5").value != document.getElementById("text6").value))
            {
                alert("Password Mismatch, Please Enter Again ");
                document.getElementById(text5).value = "";
                document.getElementById(text6).value = "";
                return false;
            }
            generate_id();
        }
        
        function generate_id()
        {    
            //take uid...autogenerated from database
            
            alert("Your User Id: "+uid+", Please keep it safe");
        }
   
        
        </script>
    <body text="#0066FF">
        <form action="features.jsp" method="post" onsubmit="return check();" autocomplete="on">
            <br>
            <br>
            <br>
            <br>
            <h3>
            Name:   <input type="text" name="uname"  id="text1"/> </br>
            Contact No.: <input type="text" name="cno" id="text2"/> </br>
            Email Id:    <input type="email" name="email"  id="text3"/> </br>
            Address:     <input type="text" name="add"  id="text4"/> </br>
            Password: <input type="password" name="pass"  id="text5"/> </br>
            Confirm Password: <input type="password" name="cpass"  id="text6"/> </br>
            Course Joined: 
            <select id="text10" name="text10">            //can we write type=number here??? if yes then no need to use parseInt
                <option value="4">B.Tech</option>
                <option value="2">M.Tech</option>
                <option value="5">Integrated Dual Degree</option>
                <option value="3">MCA</option>
                <option value="5">PhD</option>
            </select>    </br>
            Session of Joining: <input type="radio" name="Autumn" value="1" id="text7" checked/> Autumn
            <input type="radio" name="Spring" value="2" id="text8"/> Spring </br>
            
            Year of Joining: <input type="text" name="year"  id="text9"/>
            
            Type: </br><input type="radio" name="type" value="s" checked/> Student
               <input type="radio" name="type" value="e" /> Employee
               </br></br></br>
               
               <% 
                    
               
               %>

            <input type="submit" value="Confirmed Your Details"/>
            
        </form>
    </body>
</html>
