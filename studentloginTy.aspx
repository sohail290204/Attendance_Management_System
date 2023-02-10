<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentloginTy.aspx.cs" Inherits="my_proj.studentloginTy" %>

<!DOCTYPE html>
<html>
 <style>
        body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
             background-image: url("adminloginbc.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
        }
        form{
            position: absolute;
            border: 2px solid black;
            padding-right: 50px;
            padding-left: 50px;
            padding-top: 20px;
            padding-bottom: 20px;
            border-radius: 30px;
            left:320px;
            text-shadow:0.5px 0.5px #4d1085;
             background-color: #711eb8;
             box-shadow:5px 10px 30px black;
            top:30px;
            font-size: 18px ; 
        }

       
        input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 7px;
            background-color:#420d79;
            width:180px;
            box-shadow:1px 1px 2px black;
             border:2px solid #f131d5;
             color:bisque;
        } input[type=text]:hover{
            border-radius: 30px;
            text-align: center;
            padding: 7px;
            box-shadow:1px 2px 2px black;
            width:190px;
            
        }

        #Button1,#Button2{
            background:transparent;
            border-radius: 10px;
            padding-bottom:5px;
            padding-top:5px;
            padding-right:10px;
            padding-left:10px;
            color:#ffff2f;
             box-shadow:1px 1px 2px black;
            border: 2px solid black;
        }
  #Button1:hover,#Button2:hover{
             width:70px;
             background-color:#d4895c;
             
         }
        #Label1{
             position:absolute;
            top: 85px;
            left: 48px;
            width: 218px;
            height: 20px;
            color: black;
        }
         h2{
              text-shadow:1px 1px #4d1085;
         }

    </style>
    <body>

        <form id="form1" runat="server">
            <h2>
               Ty Student Login Form
            </h2>

            <label id="uname" >Student RollNo</label>
            <br><br>
            
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your username"></asp:TextBox>
            <br><br>
            <label id="password">Password</label> 
            <br><br>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your password"></asp:TextBox>
            
            <br> <br>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
            <br>
            
            
           
            
        </form>

    </body>
</html>