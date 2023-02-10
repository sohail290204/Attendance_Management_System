<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sybsc.aspx.cs" Inherits="my_proj.Sybsc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
            body{ background-image: url("add_teacher.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
           
        }label{
             position:relative;
             left:60px;
     }
         input[type=text]{
             text-align:center;
             position:absolute;
              position:absolute;
             border-radius:35px;
             color:bisque;
             left:180px;
         }
          #Button1{
                text-align:center;
             position:absolute;
             border-radius:10px;
             left:180px;
             padding-top:4px;
             padding-bottom:4px;
             padding-right:7px;
             padding-left:7px;
             
         }
        h2{text-align:center;
            top:50px;
        }
        form{
             position:relative;
            border:2px solid black;
            padding-top:15px;
            padding-bottom:15px;
             background-color: #bb21ee;
            padding-left:15px;
            border-radius:25px;
            width:400px;
            left:260px;
            top:10px;
        }#Button1{
                text-align:center;
             position:absolute;
             border-radius:10px;
             left:180px;
             padding-top:5px;
             padding-bottom:5px;
             padding-right:13px;
             padding-left:13px;
              background:transparent;
            width:90px;
          
            color:black;
             box-shadow:1px 1px 2px black;
            border: 2px solid black;
             
         }#Button1:hover{
              width:95px;
              background-color: #5b09c5;
              color:antiquewhite;
              box-shadow:1px 2px 2px black;
          }
        
      
        #Name,#Id,#PhoneNo,#Address,#Password,#RollNo,#Department{

           border-radius: 30px;
            text-align: center;
            padding: 3px;
            background-color:#430f88;
            width:180px;
            box-shadow:1px 1px 2px black;
             border:2px solid #f131d5;
           } #Name:hover,#Id:hover,#PhoneNo:hover,#Password:hover,#Address:hover,#RollNo:hover,#Department:hover{
               background-color: #729efb;
               border-radius: 30px;
            text-align: center;
            padding: 4px;
            box-shadow:1px 2px 2px black;
            width:190px;
            }
        #name{
            position:absolute;
        }
        #RollNo{
            position:absolute;
        }#PhoneNo{
            position:absolute;
         }#address{
            position:absolute;
         }
         }#Department{
            position:absolute;
         }
</style>
</head>
<body>
    <form id="form1" runat="server">
    
       
            <h2>Add Second Year Student's Details </h2>
            <label> Name </label>
            <asp:TextBox ID="Name" runat="server" placeholder="Enter your Name"></asp:TextBox><br /><br />
            
            <label> Roll No</label> 
            <asp:TextBox ID="RollNo" runat="server" placeholder="Enter your Roll No"></asp:TextBox><br /><br />
            
            <label> PhoneNo </label>
            <asp:TextBox ID="PhoneNo" runat="server" placeholder="Enter your PhoneNo"></asp:TextBox><br /><br />    
        
            <label> Password </label>
            <asp:TextBox ID="Password" runat="server" placeholder="Enter your Password"></asp:TextBox><br /><br />    
            
            <label> Address </label>
            <asp:TextBox ID="Address" runat="server" placeholder="Enter your Address"></asp:TextBox><br /><br />    
           
           
            <label> Department </label>
            <asp:TextBox ID="Department" runat="server" placeholder="Enter your Department"></asp:TextBox><br /><br />
            
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br /><br /> 
    
    </form>
    </body>
</html>
