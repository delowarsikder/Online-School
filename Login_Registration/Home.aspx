<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Wel Come</title>

    <style>
        body {
        background:url("image/home.png") no-repeat fixed;
        background-size:cover;
        height:100%;
        width:100%;
        }
        #registration_bt_id {
            margin:20px;
            padding:10px;
            background:#00ff21;
            transition:all ease-in-out .5s;
            border:2px solid #f00;
            border-radius:10px;
            width:350px;
        }
        #login_bt_id {
            margin:20px;
            padding:10px;
            background:#00ff21;
            transition:all ease-in-out .5s;
             border:2px solid #f00;
            border-radius:10px;
            width:200px;
        }

        #registration_bt_id:hover {
            margin:20px;
            padding:15px;
            background:#b6ff00;
        }
        #login_bt_id:hover {
            margin:20px;
            padding:15px;
            background:#ff6a00;
        }
        .marque {
            /*background:#cf9201;*/
            color:#850909;
            font-size:50px;
            font-weight:bold;

        }
        .center {
           /* width:300px;*/
            margin:50px 50px 30px 50px; 
            text-align:center;
        }
     
        h2{
            color:#7d1802;
            font-size:40px;
            animation: blinkingText 1s infinite;
        }

        @keyframes blinkingText {
            25% {
                color: rgb(218, 25, 25);
            }

            49% {
                color: #1f0303;
            }

            50% {
                color: #88ac07;
            }

            99% {
                color: rgb(41, 2, 2);
            }

            100% {
                color: #000;
            }
        }
        .clock{
        background: #720606;
        color: aliceblue;
        float: right;
        display: inline;
        padding: 10px;
        margin: 20px;
    }
    </style>
   

</head>
<body>
    <form id="form1" runat="server">
 
            <div class="marque">
                <marquee direction="left" scrollamount="2" loop="true" width="100%" height="50px">
    <asp:Label id="lblMarquee" runat="server" ForeColor="ForestGreen" Font-Bold="True" >WelCome Our Online School</asp:Label></marquee>
            </div>

        <%--time--%>
       
    <div class="clock">
        <div id="clockbox"></div>
    </div>

    <script src="time.js" type="text/javascript"></script>

        <%--set time in display--%>

            <div class="center">
            <h2> Registration Require is you are first user </h2>
            <h2>Or Login With User Id and password</h2>
            <div class="button">

                <asp:Button ID="registration_bt_id" runat="server" Text="Registraion"  ToolTip="Registration" BorderColor="Maroon"  Font-Names="Adobe Fan Heiti Std B" Font-Size="XX-Large" OnClick="registration_bt_id_Click"/>  
                
                <asp:Button ID="login_bt_id" runat="server" Text="LogIn"  ToolTip="Login" BorderColor="Maroon"  Font-Names="Adobe Fan Heiti Std B" Font-Size="XX-Large" OnClick="login_bt_id_Click" />  
            
            </div>
            
            
        </div>
    </form>
</body>
</html>

