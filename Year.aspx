<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Year.aspx.cs" Inherits="my_proj.Year" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> body{
            text-align: center;
            font-family:Arial, Helvetica, sans-serif;
             background-image: url("Year.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height:410px;
        }
        form{
            position:absolute;
            text-align:center;
            border:2px solid black;
            border-radius:30px;
            padding-top:20px;
            padding-right:50px;
            padding-left:50px;
            left:280px;
            top:50px;
            padding-bottom:220px;
            text-shadow:0.5px 0px #4d1085;
            background-color: #d383ed;
            box-shadow:2px 2px 20px black;
        }
        a{
             text-shadow:0.2px 0.2px black;
        }
        #UG{
             position:absolute;
             left:25px;

        }
         #PG{
             position:absolute;
             left:220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Select the UG/PG Courses </h2>
            <div id="UG">
            <h3> UG</h3>
        <a href="Fy_att.aspx" target="_blank">1). First Year Bsc Cs</a><br /><br />
        <a href="Sy_att.aspx" target="_blank">2). Second Year Bsc Cs</a><br /><br />
        <a href="Ty_att.aspx" target="_blank">3). Third Year Bsc Cs</a><br /><br />
             </div>
            <div id="PG">
                <h3> PG</h3>
        <a href="ComingSoon.aspx" target="_blank">1). Msc Cs part 1</a><br /><br />
        <a href="ComingSoon.aspx" target="_blank">2). Msc Cs part 2</a><br /><br />
        <a href="ComingSoon.aspx" target="_blank">3). Msc IT part 1</a><br /><br />
        <a href="ComingSoon.aspx" target="_blank">4). Msc IT part 2</a><br /><br />
            </div>
        </div>

    </form>
</body>
</html>
