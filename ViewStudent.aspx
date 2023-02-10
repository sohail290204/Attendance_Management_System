<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStudent.aspx.cs" Inherits="my_proj.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
            background-image: url("viewstudent.jpg");
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
             background-color: #8a2df7;
            padding-top: 20px;
            padding-bottom: 20px;
            border-radius: 30px;
            left:220px;
            top:20px;
            box-shadow:8px 10px 40px black;
            width:380px;
        }
            input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            background-color:#d56df8;
            width:180px;
             border:2px solid black;
        } input[type=text]:hover{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            box-shadow:1px 1px 2px black;
            width:190px;
            
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
         #Button1:hover,#Button3:hover,#Button4:hover{
             width:100px;
             
         }#Button2:hover{
              width:120px;
              height:30px;
          }
      
         #Button1{
            top:125px;
            left:100px;
            position:absolute;
        }
        #Button3{
            top:125px;
            left:205px;
            position:absolute;
        } #Button4{
            top:125px;
            left:310px;
            position:absolute;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h2> Student Details</h2>
            <label>Enter Students RollNo
            </label>
            &nbsp;<asp:TextBox ID="RollNo" runat="server" placeholder="Roll No"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search in Fy" OnClick="Button1_Click" />
            <asp:Button ID="Button3" runat="server" Text="Search in Sy" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Search in Ty" OnClick="Button4_Click" />
            <br /><br /><br />
            <label id="label1">Name :</label>
            <asp:Label ID="Name" runat="server" ></asp:Label>
            
            <br /><br />
            <label id="label2">Phone No :</label>
            <asp:Label ID="PhoneNo" runat="server" ></asp:Label>
            <br /><br />
            
            <label id="label3">Department :</label>
            <asp:Label ID="Department" runat="server" ></asp:Label>
            <br /><br />
            <label id="label4">Password :</label>
            <asp:Label ID="Password" runat="server" ></asp:Label>
            <br /><br />
            <label id="label5">Address :</label>
            <asp:Label ID="Address" runat="server" ></asp:Label>
            <br /><br />
           <asp:Button ID="Button2" runat="server" Text="Update Details" OnClick="Button2_Click" />  
        </div>
    </form>
</body>
</html>
