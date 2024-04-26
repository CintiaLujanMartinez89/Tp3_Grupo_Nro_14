<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="Tp3_Grupo_Nro_14.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 530px;
        }
        .auto-style3 {
            width: 300px;
        }
        .auto-style4 {
            margin-bottom: 0px;
        }
        .auto-style5 {
            width: 144px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <table id="Table1" runat="server">
              
          <tr>
            <td style="margin-left: 120px" class="auto-style1">
               
               <strong> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Localidades </span></strong>
                <br />
                <table >
                   
                    <tr>
                        <td class="auto-style5" >Nombre de Localidad:</td>
                        <td >
                            <asp:TextBox ID="txtbLocalidad" runat="server" ValidationGroup="grupo1" CausesValidation="True" ></asp:TextBox>
                        </td>
                        <td class="auto-style3"  >
                            <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="txtbLocalidad" InitialValue="  " ValidationGroup="grupo1" EnableClientScript="False" ClientIDMode="Predictable" Display="Dynamic">Ingrese Localidad</asp:RequiredFieldValidator>
                         <br />
                        </td>
                    </tr>


                    <tr>
                        <td class="auto-style5" >&nbsp;</td>
                        <td >
                            <br />
                            <asp:Button ID="btnGuardarLoc" runat="server" Text="Guardar Localidad" ClientIDMode="AutoID" ValidateRequestMode="Enabled" ValidationGroup="grupo1" OnClick="btnGuardarLoc_Click"   />
                           

                            <br />
                            <br />
                        </td>
                        <td class="auto-style3" >
                            <asp:Label ID="lblLocaGuardada" runat="server"></asp:Label>
                        </td>
                    </tr>


                    <tr>
                        <td class="auto-style5" >&nbsp;</td>
                        <td >
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Usuarios"></asp:Label>
                        </td>
                        <td class="auto-style3" >
                            &nbsp;</td>
                    </tr>


                      <tr>
                        <td class="auto-style5" >&nbsp;</td>
                        <td >
                           
                        </td>
                        <td class="auto-style3" >
                            &nbsp;</td>
                    </tr>


                    <tr>
                        <td class="auto-style5" >Nombre de Usuario:</td>
                        <td >
                            <asp:TextBox ID="txtbUsuario" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                        </td>
                        <td class="auto-style3" >
                            <asp:RequiredFieldValidator ID="rfvNomUsuario" runat="server" ControlToValidate="txtbUsuario" ValidationGroup="grupo2" ErrorMessage="Ingresar Nombre de Usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>

                      <tr>
                        <td class="auto-style5" >Contraseña:</td>
                        <td >
                           
                            <asp:TextBox ID="txtbContraseña" runat="server" TextMode="Password"></asp:TextBox>
                           
                        </td>
                        <td class="auto-style3" >
                            <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtbUsuario" EnableViewState="False" ValidationGroup="grupo2" ErrorMessage="Ingrese una Contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
                          </td>
                    </tr>


                    <tr>
                        <td class="auto-style5" >Repetir Contraseña:</td>
                        <td >
                            <asp:TextBox ID="txtbRepContraseña" runat="server" TextMode="Password" ValidationGroup="grupo2"></asp:TextBox>
                        </td>
                        <td class="auto-style3" >
                            <asp:CompareValidator ID="cvRepContraseña" runat="server" ControlToCompare="txtbContraseña" ControlToValidate="txtbRepContraseña" ValidationGroup="grupo2" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="rfvRepContraseña" runat="server" ControlToValidate="txtbRepContraseña" ErrorMessage="Deber repetir la Contraseña" ValidationGroup="grupo2" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>


                     <tr>
                        <td class="auto-style5" >Correo Electronico:</td>
                        <td >
                            <asp:TextBox ID="txtCorreoElect" runat="server"></asp:TextBox>
                         </td>
                        <td class="auto-style3" >
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreoElect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo2" ErrorMessage="Ingrese un correo electronico valido" ForeColor="Red">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvCorreoElect" runat="server" ControlToValidate="txtCorreoElect" ErrorMessage="Debe ingresar un correo electronico" ValidationGroup="grupo2" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </td>
                    </tr>

                     <tr>
                        <td class="auto-style5" >CP:</td>
                        <td >
                            <asp:TextBox ID="txtCp" runat="server" ValidationGroup="grupo2"></asp:TextBox>
                         </td>
                        <td class="auto-style3" >
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCp" ValidationExpression="^\d{4}$" ErrorMessage="CP debe contener 4 caracteres numericos" ForeColor="#CC0000" ValidationGroup="grupo2">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvCodPost" runat="server" ControlToValidate="txtCp" ErrorMessage="debe ingresar un Codigo Postal" ValidationGroup="grupo2" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </td>
                    </tr>

                     <tr>
                        <td class="auto-style5" >Localidades:</td>
                        <td >
                            <asp:DropDownList ID="ddlLocalidades" runat="server" CssClass="auto-style4" Height="22px" Width="157px">
                                <asp:ListItem>--Seleccionar una Localidad--</asp:ListItem>
                              
                            </asp:DropDownList>
                         </td>
                        <td class="auto-style3">
                            <asp:RequiredFieldValidator ID="rfvDropLocali" runat="server" ControlToValidate="ddlLocalidades" InitialValue="--Seleccionar una Localidad--" ErrorMessage="Debe elegir una localidad" ValidationGroup="grupo2" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </td>
                    </tr>

                     <tr>
                        <td class="auto-style5" >&nbsp;</td>
                        <td >
                            <asp:Button ID="btnGuardarUs" runat="server" Text="Guardar Usuario" ValidationGroup="grupo2" OnClick="btnGuardarUs_Click" />
                         </td>
                        <td class="auto-style3" >
                            &nbsp;</td>
                    </tr>

                     <tr>
                        <td class="auto-style5" >&nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td class="auto-style3" >
                            <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                         </td>
                    </tr>

                 



                     <tr>
                        <td class="auto-style5" >
                            <asp:Button ID="btnIrInicio" runat="server" Text="Ir a Inicio .aspx" OnClick="btnIrInicio_Click" />
                         </td>


                    </tr>

                </table>
            </td>
        </tr>      

                
            </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Underline="False" HeaderText="Debe corregir los siguientes errores:" ValidationGroup="grupo2" ValidateRequestMode="Disabled" Width="533px" Font-Size="Medium" ForeColor="Red" />
       
    </form>
</body>
</html>
