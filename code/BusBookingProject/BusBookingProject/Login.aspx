<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: radial-gradient(circle, #1a82f7, #2F2727);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .centered-form {
            max-width: 400px;
            background: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .centered-form .panel-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-bottom: 1rem;
        }

        .input-group {
            margin-bottom: 1rem;
        }

        .input-group-addon {
            background-color: #f1f1f1;
        }

        .form-control {
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            width: 100%;
        }

        .btn-success:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }

        .checkbox label {
            font-weight: normal;
            color: #555;
        }

        .register-link {
            display: block;
            text-align: center;
            margin-top: 1rem;
            font-size: 14px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centered-form">
        <div class="panel panel-default">
            <div class="panel-title">
                Sign In
            </div>
            <div class="panel-body">
                <asp:Label ID="lblErrorMsg" runat="server" CssClass="text-danger" />
                <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />

                <div id="loginform" class="form-horizontal">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox runat="server" placeholder="Enter Mobile No" ID="txtUserId" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                            CssClass="text-danger" ErrorMessage="The mobile number field is required." />
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password Here" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" CssClass="text-danger" ID="rfvPassword"
                            ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                    </div>

                    <div class="checkbox">
                        <label>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me</asp:Label>
                        </label>
                    </div>

                    <div class="form-group">
                        <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success" ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" />
                    </div>

                    <a href="UserRegistration.aspx" class="register-link">Register as a new user</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
