<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addyear.aspx.cs" Inherits="my_proj.addyear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{ background-image: url("addyear.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
           
        }
       
        h2{
            font-size:27px;
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
           text-shadow:0.5px 0.5px  #410b6b;
            }
        form{
            text-align: center;
            border-radius: 20px;
            border: 2px solid black;
            position: absolute;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-left: 22px;
            padding-right: 22px;
            left: 215px;
            top:85px ;
            background-color:#6610a5;
            box-shadow:5px 8px 40px black;
            border: 2px solid black;
        }a{
             color:moccasin;
            text-shadow:1px 1px  black;
         }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <h2> Select what action you want to perform</h2><br/>
        <div id="div">
            <a href="Fybsc.aspx" target="_blank">1). FyBsc Cs</a><br/><br/>
            <a href="Sybsc.aspx" target="_blank">2). SyBsc Cs </a><br/><br/>
            <a href="TyBsc.aspx" target="_blank">3). TyBsc Cs </a><br/><br/>


        </div>
    </form>
</body>
</html>