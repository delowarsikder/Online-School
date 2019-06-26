<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Page</title>
    <%--    <link id="Link1" rel="stylesheet" runat="server" media="screen" href="css/Login.css" />--%>
    <link rel="stylesheet" runat="server" media="screen" href="css/Login.css" />
    <style type="text/css">
        .login_registration {
            width: 175px;
        }

        body {
            background: url("image/login.png");
        }

        .login-box {
            -webkit-box-shadow: -1px -8px 22px 3px rgba(207,172,16,1);
            -moz-box-shadow: -1px -8px 22px 3px rgba(207,172,16,1);
            box-shadow: -1px -8px 22px 3px rgba(207,172,16,1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <img src="image/user.png" class="user">
            <h1>Login Here</h1>
            <%--for login user name--%>

            <p>User Name</p>

            <asp:TextBox ID="loginUsername" class="input_name_password" placeholder="Enter Username" runat="server" Width="180px" OnTextChanged="loginUsername_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginUsername" ErrorMessage="Please Enter User Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <%--for password  --%>
            <p>Password</p>
            <asp:TextBox ID="loginPassword" class="input_name_password" placeholder="Enter Password" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginPassword" ErrorMessage="Please Enter correct password" ForeColor="#CC0000"></asp:RequiredFieldValidator>

            <%--log in --%>

            <br />

            <asp:Button ID="Button_login" class="login_registration" runat="server" OnClick="Button_login_Click" Text="Login" />

            <br />
            <%--<asp:Button ID="Button_registration" class="login_registration" runat="server" OnClick="Button_registration_Click" Text="Register" />--%>
            <div class="login_registration">
                <asp:HyperLink ID="Registraion" runat="server" NavigateUrl="~/Registration.aspx" Font-Size="Medium" EnableTheming="True" Font-Bold="True" Font-Names="Adobe Myungjo Std M" ForeColor="#FF3300">Registration</asp:HyperLink>

            </div>

            <br />
            <div>
                <asp:CheckBox ID="set_cokie" runat="server" Text="Remember me" OnCheckedChanged="set_cokie_CheckedChanged"></asp:CheckBox>
            </div>
            <br />
            <a href="#">Forget Password</a>


        </div>
    </form>
</body>
</html>
