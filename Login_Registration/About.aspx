<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>

    <style>
        * {
            box-sizing: border-box;
            margin:0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: url("image/teacher_bg.jpg") no-repeat fixed;
            background-size: cover;
            /* background-position: center; */
        }

        .wrapper {
            margin: 10px auto;
            width: 960px;
            /* background: #656901;*/
            -webkit-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            -moz-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
        }
        /* Float four columns side by side */
        .column {
            float: left;
            width: 25%;
            padding: 3px 5px;
            margin: 0px;
        }

        /* Remove extra left and right margins, due to padding in columns */
        .row {
            margin: 0 -5px;
        }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        /* Style the counter cards */
        .card {
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 5px;
            text-align: center;
            background-color: #f1f1f1;
            transition: all ease-out .5s;
        }

        .marque {
            margin: -25px 0px 32px 0px;
            font-size: 20px;
        }


        .card:hover {
            box-shadow: 6px 3px 5px 0 #656901;
            /* this adds the "card" effect */
            padding: 15px;
            text-align: center;
            background-color: #4cff00;
        }
        /* Responsive columns - one column layout (vertical) on small screens */
        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
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

        <%--navigation--%>

        <div class="wrapper">

            <ul>
                <li><a href="HomePage.aspx">Home</a></li>
                <li><a href="https://programmingpathshala.com/">Blog</a></li>
                <li><a href="#contact">Contact Us</a></li>
                <li><a href="Users.aspx"><i class="fas fa-user"></i>Profile</a></li>
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

            <div class="marque">
                <marquee direction="left" scrollamount="2" loop="true" width="100%" height="40px">
    <asp:Label id="lblMarquee" runat="server" ForeColor="ForestGreen" Font-Bold="True" > <h1>Our Teacher Panel</h1></asp:Label></marquee>
            </div>

            <div class="row">
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%">
                        <div class="container">
                            <h4><b>Delowar Sikder</b></h4>
                            <p>Expert In Asp.net</p>
                            <button>View Detail</button>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%"/>
                        <div class="container">
                            <h4><b>Robiul Islam</b></h4>
                            <p>Expert In Asembly</p>
                            <button>View Detail</button>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%"/>
                        <div class="container">
                            <h3><b>Rashed</b></h3>
                            <p>Expert in C</p>
                             <button>View Detail</button>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%"/>
                        <div class="container">
                            <h3><b>Sajib Talukder</b></h3>
                            <p>Expert in Laravel</p>
                             <button>View Detail</button>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%">
                        <div class="container">
                            <h3><b>Nasmus sakib Riad</b></h3>
                            <p>Expert in CG</p>
                             <button>View Detail</button>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <img src="image/img_avatar.png" alt="Avatar" title="Click Here to Learn More" style="width: 100%">
                        <div class="container">
                            <h4><b>Arafat Rohan</b></h4>
                            <p>Expert in Bootstrap</p>
                             <button>View Detail</button>
                        </div>
                    </div>
                </div>

                <%--addditional--%>
            </div>
        </div>
    </form>
</body>
</html>
