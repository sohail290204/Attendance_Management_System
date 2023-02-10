<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTeacher.aspx.cs" Inherits="my_proj.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image: url("add_teacher.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:480px;
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
        }
        form{
            position: absolute;
            border: 2px solid black;
            padding-right: 50px;
            padding-left: 50px;
            padding-top: 20px;
            padding-bottom: 20px;
             box-shadow:8px 10px 40px black;
             background-color: #bb21ee;
            border-radius: 30px;
            left:220px;
            top:20px;
            width:400px ;
        }
             input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            background-color:#ebb196;
            width:180px;
             border:2px solid black;
        } input[type=text]:hover{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            box-shadow:1px 1px 2px black;
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
             
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h2> Teacher Details</h2>
            <label>Enter Teacher Id</label>
            <asp:TextBox ID="Id" runat="server" placeholder="Id"></asp:TextBox>
            
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /><br /><br />
            <label>Name</label>
            <asp:TextBox ID="Name" runat="server" placeholder="Name"></asp:TextBox>
            <br /><br />
            <label>Phone No</label>
            <asp:TextBox ID="PhoneNo" runat="server" placeholder="Phone No"></asp:TextBox>
            <br /><br />
            <label>Subject</label>
            <asp:TextBox ID="Subject" runat="server" placeholder="Subject"></asp:TextBox>
            <br /><br />
            <label>Department</label>
            <asp:TextBox ID="Department" runat="server" placeholder="Department"></asp:TextBox>
            <br /><br />
            <label>Password</label>
            <asp:TextBox ID="Password" runat="server" placeholder="Password"></asp:TextBox>
            <br /><br />
            <label>Address</label>
            <asp:TextBox ID="Address" runat="server" placeholder="Address"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
