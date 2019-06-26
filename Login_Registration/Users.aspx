<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .wrapper {
            margin: 10px auto;
            width: 960px;
            /* background: #656901;*/
            -webkit-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            -moz-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
        }
         ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #111;
                }

        .active {
            background-color: #4CAF50;
        }

        .clock {
            background: #720606;
            color: aliceblue;
            float: right;
            display: inline;
            padding: 14px;
            margin: 0;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
     <div class="wrapper">

            <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                <li><a href="https://programmingpathshala.com/">Blog</a></li>
                <li><a href="#contact">Contact Us</a></li>
                <li><a href="Home.aspx">Logout</a> </li>
                <li style="float: right">

                    <%--time--%>

                    <div class="clock">
                        <div id="clockbox"></div>
                    </div>

                    <script src="time.js" type="text/javascript"></script>

                    <%--set time in display--%>
                </li>
                <li style="float: right"><a class="active" href="#about">About</a></li>
            </ul>
   
        <%--<asp:Label ID="L_welcome" runat="server" Text="Welcome..."></asp:Label>--%>
        <asp:GridView ID="userProfile" runat="server">
        </asp:GridView>
    
    </div>
       
    </form>
</body>
</html>
