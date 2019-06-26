<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>

    <style>
        body {
            background: url("image/contact_bg.png");
            font-family: FontAwesome;
        }

        .table {
            width: 500px;
            margin: 10px auto;
            -webkit-box-shadow: 12px 5px 7px 3px rgba(207,80,16,1);
            -moz-box-shadow: 12px 5px 7px 3px rgba(207,80,16,1);
            box-shadow: 12px 5px 7px 3px rgba(207,80,16,1);
        }

        .wrapper {
            margin: 10px auto;
            width: 960px;
            /* background: #656901;*/
            -webkit-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            -moz-box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
            box-shadow: 0px 0px 20px 10px rgba(13,4,6,0.99);
        }

        .auto-style1 {
            width: 204px;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li { float:none;
            
        }
        ul {
        background:none;
        }
       #nav li {
            float: left;
        }

           #nav li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

               #nav li a:hover:not(.active) {
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

        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <%--navigation--%>

        <div class="wrapper">

            <ul id="nav">
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
        </div>
        <div class="table">

            <table>
                <caption>
                    <h1>Send Us Your Opinion</h1>
                </caption>

                <tr>
                    <td>
                        <b>Name:</b>
                    </td>
                    <td>
                        <asp:TextBox
                            ID="txtName"
                            Width="200px"
                            placeholder="Enter your name" required="true"
                            runat="server">
                        </asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator
                            ForeColor="Red"
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="txtName"
                            ErrorMessage="Name is required"
                            Text="*">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        <b>Email:</b>
                    </td>
                    <td>
                        <asp:TextBox
                            ID="txtEmail"
                            Width="200px" placeholder="Enter your valid email" required="true"
                            runat="server">
                        </asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator
                            Display="Dynamic"
                            ForeColor="Red"
                            ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required"
                            Text="*">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator
                            Display="Dynamic"
                            ForeColor="Red"
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ErrorMessage="Invalid Email"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail"
                            Text="*">
                        </asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>


                <tr>
                    <td>
                        <b>Subject:</b>
                    </td>
                    <td>
                        <asp:TextBox
                            ID="txtSubject"
                            Width="200px" placeholder="your topic" required="true"
                            runat="server">
                        </asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator
                            ForeColor="Red"
                            ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="txtSubject"
                            ErrorMessage="Subject is required"
                            Text="*">
                        </asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td style="vertical-align: top">
                        <b>Comments:</b>
                    </td>
                    <td style="vertical-align: top">
                        <asp:TextBox
                            ID="txtComments"
                            Width="200px"
                            TextMode="MultiLine" placeholder='&#xf075;Enter your comment' required="true"
                            Rows="5"
                            runat="server">
                        </asp:TextBox>
                    </td>
                    <td style="vertical-align: top" class="auto-style1">
                        <asp:RequiredFieldValidator
                            ForeColor="Red"
                            ID="RequiredFieldValidator4"
                            runat="server"
                            ControlToValidate="txtComments"
                            ErrorMessage="Comments is required"
                            Text="*">
                        
                        </asp:RequiredFieldValidator>

                    </td>
                   
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary
                            HeaderText="Please fix the following errors"
                            ForeColor="Red"
                            ID="ValidationSummary1"
                            runat="server" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style2">
                        <asp:Label
                            ID="lblMessage"
                            runat="server"
                            Font-Bold="true">
                        </asp:Label>
                       
                    </td>
                </tr>
                <tr>
                    <td colspan="4">

                        <asp:Button
                            ID="SendButton"
                            runat="server"
                            Text="Submit"
                            OnClick="Submit_Click" BackColor="#660033" Font-Bold="True" Font-Size="Larger" ForeColor="#669900" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        <script type="text/javascript">
            //<![CDATA[
            var RequiredFieldValidator1 = document.all ? document.all["RequiredFieldValidator1"] : document.getElementById("RequiredFieldValidator1");
            RequiredFieldValidator1.controltovalidate = "txtName";
            RequiredFieldValidator1.errormessage = "Name is required";
            RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            RequiredFieldValidator1.initialvalue = "";
            var RequiredFieldValidator2 = document.all ? document.all["RequiredFieldValidator2"] : document.getElementById("RequiredFieldValidator2");
            RequiredFieldValidator2.controltovalidate = "txtEmail";
            RequiredFieldValidator2.errormessage = "Email is required";
            RequiredFieldValidator2.display = "Dynamic";
            RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            RequiredFieldValidator2.initialvalue = "";
            var RegularExpressionValidator1 = document.all ? document.all["RegularExpressionValidator1"] : document.getElementById("RegularExpressionValidator1");
            RegularExpressionValidator1.controltovalidate = "txtEmail";
            RegularExpressionValidator1.errormessage = "Invalid Email";
            RegularExpressionValidator1.display = "Dynamic";
            RegularExpressionValidator1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
            RegularExpressionValidator1.validationexpression = "\\w+([-+.\']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            var RequiredFieldValidator3 = document.all ? document.all["RequiredFieldValidator3"] : document.getElementById("RequiredFieldValidator3");
            RequiredFieldValidator3.controltovalidate = "txtSubject";
            RequiredFieldValidator3.errormessage = "Subject is required";
            RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            RequiredFieldValidator3.initialvalue = "";
            var RequiredFieldValidator4 = document.all ? document.all["RequiredFieldValidator4"] : document.getElementById("RequiredFieldValidator4");
            RequiredFieldValidator4.controltovalidate = "txtComments";
            RequiredFieldValidator4.errormessage = "Comments is required";
            RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            RequiredFieldValidator4.initialvalue = "";
            var ValidationSummary1 = document.all ? document.all["ValidationSummary1"] : document.getElementById("ValidationSummary1");
            ValidationSummary1.headertext = "Please fix the following errors";
            //]]>
</script>
    </form>
</body>
</html>
