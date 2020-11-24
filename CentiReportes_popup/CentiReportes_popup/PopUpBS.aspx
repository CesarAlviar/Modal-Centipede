<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PopUpBS.aspx.cs" Inherits="CentiReportes_popup.PopUpBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Content/bootstrap.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

        <form id="form1" runat="server">
<div class="container">
  <h2>Centered Modal Example</h2>
  <p>Center the modal vertically and horizontally within the page, with the .modal-dialog-centered class.</p>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
          
        <div class="modal-body">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="CO_TABLA" DataValueField="CO_TABLA"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Centipede_GestionConnectionString %>' SelectCommand="SELECT [CO_TABLA] FROM [T_SYSTEM_TABLAS]"></asp:SqlDataSource>
        </div>

        
        <!-- Modal footer -->
        <div class="modal-footer">
            <asp:Button ID="cerrarModal" runat="server" Text="Button" OnClick="cerrarModal_Click" />
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

        </div>
        
      </div>
    </div>
  </div>

    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="CO_Campo" DataValueField="CO_Campo"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Centipede_GestionConnectionString %>' SelectCommand="SELECT [CO_Campo] FROM [T_SYSTEM_CAMPOS] WHERE ([CO_Tabla] = @CO_Tabla)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="CO_Tabla" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
 
</div>
    </form>
</body>
</html>s



</asp:Content>


