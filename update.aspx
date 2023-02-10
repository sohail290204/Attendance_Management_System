<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="my_proj.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

         body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
            background-image: url("update.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
        }
          h2{
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        form{
            text-align: center;
            border-radius: 20px;
            border: 2px solid black;
            position: absolute;
            padding-top: 15px;
            padding-bottom: 25px;
            padding-left:25px;
            padding-right: 25px;
            left: 230px;
            top:100px ;
            box-shadow:5px 12px 40px black;
            background-color:#0d88c6;
        }
       


         #Button1,#Button2,#Button3{
                text-align: center;
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
         #Button1:hover,#Button3:hover,#Button2:hover{
              box-shadow:1px 1px 5px black;
             width:110px;
           
             background-color:#b86f1d;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2> Select Which Year You Want to Update</h2>
            <label>1). Update Student from FyBsc : </label>
            <asp:Button ID="Button3" runat="server" Text="Update FyBsc" OnClick="Button3_Click" />
            <br /><br />
            <label>2). Update Student from SyBsc : </label>
            <asp:Button ID="Button2" runat="server" Text="Update SyBsc" OnClick="Button2_Click" />
            <br/><br />
            <label>3). Update Student from TyBsc : </label>
            <asp:Button ID="Button1" runat="server" Text="Update TyBsc" OnClick="Button1_Click" />
            <!--<a href="adminlogin.aspx" target="_blank">1). Update Student from FyBsc</a><br/><br/>
            <a href="teacherlogin.aspx" target="_blank">2). Update Student from FyBsc </a><br/><br/>
            <a href="studentlogin.aspx" target="_blank">3). Update Student from FyBsc </a><br/><br/> -->

            
      
            
        </div>
    </form>
</body>
</html>
