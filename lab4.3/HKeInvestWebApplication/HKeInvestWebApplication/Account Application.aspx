<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account Application.aspx.cs" Inherits="HKeInvestWebApplication.Account_Application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4>Account Application</h4>
    <div class="form-horizontal">

        <div class="form-group">
        <h5>1. Account Type</h5>
            <asp:CheckBoxList ID="AccountType" runat="server">
                <asp:ListItem>Individual</asp:ListItem>
                    <asp:ListItem>Joint Tenants with Rights of Survivorship</asp:ListItem>
                    <asp:ListItem>Joint Tenants in Common</asp:ListItem>
            </asp:CheckBoxList>
            
        </div>
        
    <div class="form-group" id="clientInfo">
        <div class="form-group">
        <h5>2. Client Information</h5>
        <asp:Label runat="server" Text="Title"  ClientIDMode="Inherit" CssClass="label-control col-md-2" ></asp:Label>
            <div>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                    <asp:ListItem>Ms.</asp:ListItem>
                    <asp:ListItem>Dr.</asp:ListItem>
                    
                </asp:CheckBoxList>
                </div>
        
        <asp:Label runat="server" Text="First Name" AssociatedControlID="FirstName" ClientIDMode="Inherit" CssClass="label-control col-md-2"></asp:Label>
        <div class="col-md-4">
        <asp:TextBox ID="FirstName" runat="server" CssClass="form-control" MaxLength="35"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="FirstName" CssClass="text-danger" Text="*" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="First Name is required."></asp:RequiredFieldValidator>
        </div>
        <asp:Label runat="server" Text="Last Name" Font-Overline="False" AssociatedControlID="LastName" CssClass="label-control col-md-2"></asp:Label>
        <div class="col-md-4">
        <asp:TextBox ID="LastName" runat="server" CssClass="form-control" MaxLength="35"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="LastName" CssClass="text-danger" Text="*" EnableClientScript="false" Display="Dynamic" runat="server" ErrorMessage="Last Name is required."></asp:RequiredFieldValidator>
</div>
            </div>
   

        <div class="form-group">
        <asp:Label  runat="server" Text="Date Of Birth" AssociatedControlID="DateOfBirth" CssClass="label-control col-md-2"></asp:Label>
        <div class="col-md-4">
        <asp:TextBox ID="DateOfBirth" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="DateOfBirth" CssClass="text-danger" Text="*" EnableClientScript="false" Dysplay="Dynamic" runat="server" ErrorMessage="Date of Birth is required."></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ControlToValidate="DateOfBirth" CssClass="text-danger" ValidationExpression="dd/mm/yyyy" Display="Dynamic" Text="*" EnableClientScript="false" runat="server" ErrorMessage="Date of Birth is not validate."></asp:RegularExpressionValidator>
        </div>
        <asp:Label runat="server" Text="Email" AssociatedControlID="Email" CssClass="label-control col-md-2"></asp:Label >
        <div class="col-md-4">
        <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="form-control" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="Email" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="Email address is required." Text="*"></asp:RequiredFieldValidator>
    </div>
        </div>

        <div class="form-group">
            <h6>Home address</h6>
            <div>
            <asp:Label runat="server" Text="Building (if any)" AssociatedControlID="buildingAddress" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
            <asp:TextBox ID="buildingAddress" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
               
                </div>
                </div>
            <div>
            <asp:Label  runat="server" Text="Street " AssociatedControlID="streetAddress" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="streetAddress" runat="server" CssClass="form-control" MaxLength="35"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="streetAddress" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="Street address is required." Text="*"></asp:RequiredFieldValidator>
     
            </div>
                </div>
            <div>
            <asp:Label  runat="server" Text="District " AssociatedControlID="districtAddress" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="districtAddress" runat="server" CssClass="form-control" MaxLength="19"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="districtAddress" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="District address is required." Text="*"></asp:RequiredFieldValidator>
            </div>
                </div>
        </div>

        <div class="form-group">
            <asp:Label  runat="server" Text="Home phone " AssociatedControlID="homePhone" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="homePhone" runat="server" CssClass="form-control" MaxLength="8"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="homePhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="Home phone is required." Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="homePhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" ValidationExpression="^[0-9]{8}$" runat="server" ErrorMessage="The format for home phone is wrong." Text="*"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" Text="Home fax" AssociatedControlID="homeFax" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="homeFax" runat="server" CssClass="form-control" MaxLength="8"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="homeFax" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="Home fax is required." Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="homeFax" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" ValidationExpression="^[0-9]{8}$" runat="server" ErrorMessage="The format for home fax is wrong." Text="*"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label  runat="server" Text="Business phone" AssociatedControlID="businessPhone" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="businessPhone" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="businessPhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="Business phone is required." Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="businessPhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" runat="server" ValidationExpression="^[0-9]{8}$" ErrorMessage="The format for business phone is wrong." Text="*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label  runat="server" Text="Mobile Phone" AssociatedControlID="businessPhone" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="mobilePhone" runat="server" CssClass="form-control" MaxLength="8"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="mobilePhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" runat="server" ErrorMessage="Mobile phone is required."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="mobilePhone" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" runat="server" ValidationExpression="^[0-9]{8}$" ErrorMessage="The format for mobile phone is wrong."></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label  runat="server" Text="Country of citizenship" CssClass="control-label col-md-2" AssociatedControlID="countryCitizenship"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="countryCitizenship" runat="server" CssClass="form-control" MaxLength="70"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="countryCitizenship" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" runat="server" ErrorMessage="Country of citizenship is required."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label  runat="server" Text="Country of legal residence" CssClass="control-label col-md-2" AssociatedControlID="countryResidence"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="countryResidence" runat="server" CssClass="control-label col-md-2" MaxLength="70"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="countryResidence" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" runat="server" ErrorMessage="Country of residence is required."></asp:RequiredFieldValidator>
            </div>
        </div>


    <div class="form-group">
        <asp:Label runat="server" Text="HKID/Passport#" AssociatedControlID="HKID" CssClass="label-control col-md-2"></asp:Label>
        <div class="col-md-4">
        <asp:TextBox ID="HKID" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="HKID" CssClass="text-danger" Text="*" Display="Dynamic" EnableClientScript="false" runat="server" ErrorMessage="A HKID or Passport number is required."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="HKID" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" ValidationExpression="^[0-9a-zA-Z]{8}$" runat="server" ErrorMessage="The format for HKID/Passport is wrong."></asp:RegularExpressionValidator>
    </div>
        </div>

        <div class="form-group">
            <asp:Label  runat="server" Text="Passport country of issue" AssociatedControlID="countryPassport" CssClass="control-label col-md-2"></asp:Label>
            <div class="col-md-4">
                <asp:TextBox ID="countryPassport" runat="server" CssClass="form-control" MaxLength="70"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="countryPassport" CssClass="text-danger" Display="Dynamic" EnableClientScript="false" Text="*" runat="server" ErrorMessage="Passport country of issue is required."></asp:RequiredFieldValidator>
            </div>
        </div>

    

    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
        <asp:Button ID="Update" runat="server" Text="Register" CssClass="btn button-default" Height="34px" OnClick="Update_Click" />
        </div>
      
    </div>
        </div>

    <div class="form-group"></div>

 </div>

</asp:Content>
