<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUp.aspx.cs" Inherits="CentiReportes_popup.PopUp" %>

<!DOCTYPE html>
<script src="Scripts/sweetalert2file.js" type="text/javascript"></script>
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<script src="sweetalert2/dist/sweetalert2.min.js"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <script type="text/javascript">
        function emergente() {

            Swal.fire({
                title: 'Tablas',
                text: 'Elige',
                icon: 'info',
                confirmButtonText: 'Submit',
                input: 'select',
                inputOptions: {
                    
                        listas: 'T_CENTIPANEL_ACCCIONES_LISTAS',
                        listasT: 'T_CENTIPANEL_ACCCIONES_LISTAS_T',
                        tablas: 'T_CENTIPANEL_ACCCIONES_TABLAS',
                        tablasT: 'T_CENTIPANEL_ACCCIONES_TABLAS_T'
                    

                },
                inputPlaceholder: 'Selecciona una Tabla',
                showCancelButton: true,
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    Swal.fire({
                        title: 'Terms and conditions',
                        input: 'checkbox',
                        inputValue: 1,
                        inputPlaceholder:
                            'I agree with the terms and conditions',
                        confirmButtonText:
                            'Continue&nbsp;<i class="fa fa-arrow-right"></i>'
                        
                    }).then((result) => {
                        /* Read more about isConfirmed, isDenied below */
                        if (result.isConfirmed) {
                            Swal.fire('Saved!', '', 'success')
                        }
                    })

                }
            })
        }

    </script>





    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SweetAlert" />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TABLE_NAME" DataValueField="TABLE_NAME">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Centipede_GestionConnectionString %>" SelectCommand="SELECT
  TABLE_NAME
FROM
  Centipede_Gestion.INFORMATION_SCHEMA.TABLES

GO"></asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar Tabla" />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CO_Campo" DataValueField="CO_Campo" Visible="false">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Centipede_GestionConnectionString %>" SelectCommand="SELECT [CO_Campo] FROM [T_SYSTEM_CAMPOS] WHERE ([CO_Tabla] = @CO_Tabla)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CO_Tabla" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>


</body>
</html>
