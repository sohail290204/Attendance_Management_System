<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateTybsc.aspx.cs" Inherits="my_proj.UpdateTybsc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <style>
        body{
             
            font-family:Arial, Helvetica, sans-serif;
            background-image: url("updatee.jpg");
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
            border-radius: 30px;
            left:220px;
            box-shadow:5px 12px 40px black;
            background-color:#bb3580;
            top:20px;
            width:380px ;
        }
            input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            width:180px;
        }
       #Button1,#Button2{
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
         #Button1:hover{
              box-shadow:1px 1px 5px black;
             width:70px;
           
             background-color:#3c5db8;
         }
         #Button2:hover{
             box-shadow:1px 1px 5px black;
             width:120px;
           
             background-color:#3c5db8;
         }
         #Button1{
            top:125px;
            left:100px;
            position:absolute;
        }
          input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            border:2px solid black;
            background-color:#d8a27d;
            width:180px;
        } input[type=text]:hover{
            border-radius: 30px;
            text-align: center;
            background-color:#e7b2b1;
            padding: 5px;
            box-shadow:1px 1px 2px black;
            width:190px;
            
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h2>Ty Student Details</h2>
            <label>Enter Students RollNo
            </label>
            &nbsp;<asp:TextBox ID="RollNo" runat="server" placeholder="Roll No"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search " OnClick="Button1_Click" />
            <br /><br /><br />
            <label id="label1">Name :</label>
            <asp:TextBox ID="Name" runat="server" placeholder="Name"></asp:TextBox>
            
            <br /><br />
            <label id="label2">Phone No :</label>
             <asp:TextBox ID="PhoneNo" runat="server" placeholder="Phone No"></asp:TextBox>
            <br /><br />
            
            <label id="label3">Department :</label>
            <asp:TextBox ID="Department" runat="server" placeholder="Department"></asp:TextBox>
            <br /><br />
            <label id="label4">Password :</label>
             <asp:TextBox ID="Password" runat="server" placeholder="Password"></asp:TextBox>
            <br /><br />
            <label id="label5">Address :</label>
             <asp:TextBox ID="Address" runat="server" placeholder="Address"></asp:TextBox>
            <br /><br />
           <asp:Button ID="Button2" runat="server" Text="Update Details" OnClick="Button2_Click" />  
        </div>
    </form>
</body>
</html>