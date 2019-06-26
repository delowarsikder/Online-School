<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background: url("image/registration.png") no-repeat fixed;
            background-size: cover;
            height: 100%;
            width: 100%;
            padding: 20px;
            overflow: hidden;
        }

        .table {
            margin: 30px 300px;
            padding: 30px;
            display: block;
              -webkit-box-shadow: 2px 0px 14px 7px rgba(89,20,32,1);
            -moz-box-shadow: 2px 0px 14px 7px rgba(89,20,32,1);
            box-shadow: 2px 0px 14px 7px rgba(89,20,32,1);
            overflow: hidden;
        }

        .auto-style1 {
          
        }

        .auto-style2 {
            width: 211px;
            text-align: right;
            height: 30px;
            font-size: 25px;
            font-weight: bold;
            color: #ff0000;
            padding-right: 20px;
        }

        #Reset1 {
            margin-left: 78px;
        }

        #submitResgister {
            background: #4cff00;
            font-size: 20px;
            font-weight: bold;
            color: #ff0000;
        }

        #resetRegistration {
            height: 37px;
            width: 119px;
            margin-left: 77px;
            padding: 10px;
            background: #ff6a00;
            color: aliceblue;
            font-weight: bold;
        }

        .textBox {
        }

        .auto-style3 {
            width: 222px;
        }

        .auto-style4 {
            border-radius: 5px;
            width: 222px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table">

            <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><span id="MainContent_RegisterUser_CreateUserStepContainer_ctl01" class="field-validation-error" data-val="true" data-val-controltovalidate="MainContent_RegisterUser_CreateUserStepContainer_UserName" data-val-errormessage="The user name field is required." data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="visibility: visible;">.<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameId" ErrorMessage="The user name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span></td>
                </tr>
                <tr>
                    <td class="auto-style2">User name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="userNameId" placeholder="user Name" runat="server" required="true" OnTextChanged="userNameId_TextChanged" Width="259px" Height="38px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailId" ErrorMessage="The email address field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailId" ErrorMessage="Please Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email address</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="emailId" placeholder="email@gmail.com" runat="server" TextMode="Email" Width="259px" Height="37px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passId" ErrorMessage="The password field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="passId" placeholder="password" runat="server" TextMode="Password" Width="257px" Height="40px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmPassId" ErrorMessage="The confirm password field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passId" ControlToValidate="confirmPassId" ErrorMessage=" The password and confirmation password do not match." ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="confirmPassId" placeholder="conform password" runat="server" TextMode="Password" ViewStateMode="Disabled" Width="253px" Height="37px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="selectTypeId" ErrorMessage="Select your type" ForeColor="Red" InitialValue="Selcect Type"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Type</td>
                    <td class="auto-style4">

                        <asp:DropDownList ID="selectTypeId" runat="server" Height="48px" Width="251px">
                            <%-- OnSelectedIndexChanged="selectTypeId_SelectedIndexChanged"  error for this--%>
                            <asp:ListItem Value="Selcect Type">Selcect Choice</asp:ListItem>
                            <asp:ListItem>Learner</asp:ListItem>
                            <asp:ListItem>Teacher</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="submitResgister" runat="server" Height="35px" Text="Register" Width="96px" OnClick="submitResgister_Click1" />
                    </td>
                    <td class="auto-style3">
                        <input id="resetRegistration" type="reset" value="reset" /></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
