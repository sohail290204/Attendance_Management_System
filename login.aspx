<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="my_proj.login" %>

<!DOCTYPE html>
<html>
    <style>
        body{
            background-image: url("welcomepagebc.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
        }
        h1{
            text-align: center;
            font-size: 35px;
            text-shadow:1px 2px #d53be9;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        
        }
        h2{
            text-align: center;
           text-shadow:1px 1px #6127b0;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        form{
               
            text-align: center;
            border-radius: 20px;
            border: 2px solid black;
            position: absolute;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-left: 18px;
            text-shadow:0.5px 0.5px #6127b0;
            padding-right: 18px;
            left: 285px;
            top:120px ;
            background-color: #a32ee5;
            box-shadow:5px 8px 30px black;
        }
        #Button1,#Button2,#Button3{
             border-radius: 10px;
                padding-top: 4px;
                padding-bottom: 4px;
                width:100px;
                font-size:15px;
                text-align: center;
                background: #ebb196;
                border:2.5px solid darkgreen;
                color:black;
                   text-shadow:0.5px 0.5px #6127b0;
        }
         #Button1:hover,#Button2:hover,#Button3:hover{
                background-color: #3f1969;
                border:2px solid burlywood;
                color:burlywood;
                width:110px;
            }
    </style>
    <body>
        <h1>
            Welcome to Ruia College Attendance Management Website
        </h1><br>
        <form id="form1" runat="server">
            <h2> Select how you want to login</h2><br>
            <label>1). Login as Admin</label>&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Text="Admin" OnClick="Button1_Click" /><br/><br/>
            <label>2). Login as Teacher </label> &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button2" runat="server" Text="Teacher" OnClick="Button2_Click" /><br/><br/>
            <label>3). Login as Student </label> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" Text="Student" OnClick="Button3_Click" /><br/><br/>
          
        </form>
    </body>
</html>