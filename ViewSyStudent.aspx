<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSyStudent.aspx.cs" Inherits="my_proj.ViewSyStudent" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
              <style>
       body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
             background-image: url("viewfystudent.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:650px;
        }
        form{
            position: absolute;
            border: 2px solid black;
            padding-right: 50px;
            padding-left: 50px;
            padding-top: 20px;
            padding-bottom:30px;
            border-radius: 30px;
            left:280px;
            top:20px;
            
             background-color: #12fae0;
             box-shadow:5px 10px 30px black;
            top:30px;
            font-size: 18px ;
        }
       
        #GridView1{
            border: 2px solid #12fae0;
        }
     #Button1{
          background:transparent;
            border-radius: 10px;
            padding-bottom:5px;
            padding-top:5px;
            padding-right:10px;
            padding-left:10px;
            color:#21242b;
             box-shadow:1px 1px 2px black;
            border: 2px solid black;
     }
            #Button1:hover {
                width:160px ;
                padding-bottom:5.2px;
            padding-top:5.2px;
            padding-right:10px;
            padding-left:10px;
            box-shadow:2px 2px 2px black;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <h2>  <asp:Label ID="Label7" runat="server" ></asp:Label>'s Attandence Record</h2>
            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            <asp:Label ID="Label2" runat="server" ></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="RollNo :"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Department :"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />   <br />
             <asp:Label ID="Label8" runat="server" Text="Lecture attended :"></asp:Label>
           
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>/<asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <br /> <br />       
            <asp:Button ID="Button1" runat="server" Text="Calculate Percentage" OnClick="Button1_Click1" />
            &nbsp;<asp:Label ID="Label13" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
            <br /><br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="Solid" BorderWidth="2px" CaptionAlign="Top" CellPadding="3" CellSpacing="2" Height="5px">
        </asp:GridView>  <br />   <br />

        </div>
    </form>
</body>
</html>
