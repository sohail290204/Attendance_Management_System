<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_admin.aspx.cs" Inherits="my_proj.add_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
            background-image: url("add_admin.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
            
        }
       
        h2{
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            text-shadow:0.5px 0.5px #450099;
            }
        form{
            text-align: center;
            border-radius: 20px;
            border: 2px solid black;
            position: absolute;
            padding-top: 15px;
            padding-bottom: 15px;
            padding-left:20px;
            background-color: #7f0198;
            padding-right: 20px;
            left: 215px;
             box-shadow:5px 8px 40px black;
            top:75px ;
             text-shadow:0.2px 0.2px #450099;
        }
        #Button1,#Button2,#Button3,#Button4{
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
             width:100px;
         }
         #Button3:hover,#Button4:hover{
             width:110px;
         }
        label{
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size: 16px ;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Select what action you want to perform</h2><br/>
           <!-- <a href="add_teacher.aspx" target="_blank">1). Add Teacher </a><br/><br/>
            <a href="addyear.aspx" target="_blank">2). Add Student </a><br/><br/>
            <a href="ViewStudent.aspx" target="_blank">3). View Student </a><br/><br/>
            <a href="ViewTeacher.aspx" target="_blank">4). View Teacher </a><br/><br/>  -->

            <label>1). Add Teacher </label>&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Text="Add Tracher" OnClick="Button1_Click" /><br/><br/>
            <label>2). Add Student </label> &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button2" runat="server" Text="Add Student" OnClick="Button2_Click" /><br/><br/>
            <label>3). View Student </label> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" Text=" View Student" OnClick="Button3_Click" /><br/><br/>
             <label>4). View Teacher </label> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button4" runat="server" Text="View Teacher" OnClick="Button4_Click" /><br/><br/>
        </div>
    </form>
</body>
</html>
