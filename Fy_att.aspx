<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fy_att.aspx.cs" Inherits="my_proj.Fy_att" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
           
             background-image: url("fy_att.jpg");
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
            left:248px;
            top:28px;
            width: 380px ;
            background-color: #79c3e8;
            box-shadow:8px 10px 40px black;
        }
            input[type=text]{
            border-radius: 30px;
            text-align: center;
            padding: 7px;
            background-color:#e1afe2;
            width:180px;
            height: 15px;
             border:2px solid black;
        } input[type=text]:hover{
            border-radius: 30px;
            text-align: center;
            padding: 5px;
            background-color:#cc74cc;
            box-shadow:1px 1px 2px black;
            width:190px;
            color: #faf2e7;
             height: 18px;
            
        }
       #Button1,#Button2,#Button3{
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
             width:120px;
             background-color:#d4895c;
             
         }
  #Button2:hover{
       width:70px;
             background-color:#d4895c;

  }#Button3:hover{
       width:60px;
             background-color:#d4895c;

  }
      
         #Button1{
            top:128px;
            left:200px;
            position:absolute;
        }
        #Button3{
            top:128px;
            left:340px;
            position:absolute;
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h2>First Year Student Details</h2>
            <label>Enter Students RollNo :
            </label>
           <asp:TextBox ID="RollNo" runat="server" placeholder="Roll No"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search Student" OnClick="Button1_Click"  />
             <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click"  />
            <br /><br /><br />
            <label id="label1">Name :</label>
            <asp:Label ID="Name" runat="server" ></asp:Label>
            <br /><br /> 
            <label id="label2">RollNo:</label>
            <asp:Label ID="RollNo1" runat="server" ></asp:Label>
            <br /><br />
            <label id="label3">Department :</label>
            <asp:Label ID="Department" runat="server" ></asp:Label>
  
            <br />
  
            <br />
            <asp:RadioButton ID="Yes" value="Yes" Text="Present" runat="server" GroupName="present" />
            <asp:RadioButton ID="No" value="No" Text="Absent" runat="server" GroupName="present"/>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"  />
           
        </div>
    </form>
</body>
</html>
