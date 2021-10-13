<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUsuarios.aspx.cs" Inherits="Aplicacion_Web_Admon_BD_proyecto_final.Views.frmUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager runat="server" ID="ResourceManager1" DirectMethodNamespace="CompanyX" />
        <ext:Viewport runat="server" Layout="BorderLayout">
            <Items>
                <ext:FormPanel runat="server"
                    PaddingSpec="10 10 10 10"
                    Layout="BorderLayout"
                    Region="Center"
                    Frame="true"
                    Title="Usuarios"
                    Icon="UserMagnify"
                    BodyStyle="background-color: white;"
                    UI="Primary">
                    <FieldDefaults LabelAlign="Top" />
                    <Items>
                        <ext:FormPanel runat="server"
                            Region="West"
                            Collapsible="true"
                            Collapsed="true"
                            Layout="VBoxLayout"
                            Title="Registrar Usuario"
                            MarginSpec="0 10 0 0"
                            Width="350"
                            Icon="UserEdit"
                            StyleSpec="border: 1px solid #EAEAEA;">
                            <LayoutConfig>
                                <ext:VBoxLayoutConfig Align="Stretch" />
                            </LayoutConfig>
                            <Items>
                                <ext:FieldSet runat="server"
                                    Layout="HBoxLayout"
                                    PaddingSpec="0 10 10 10"
                                    MarginSpec="0 10 0 10"
                                    Title="Identificación">
                                    <LayoutConfig>
                                        <ext:HBoxLayoutConfig Align="Middle" />
                                    </LayoutConfig>
                                    <Items>
                                        <ext:TextField ID="txtCedula"
                                            FieldLabel="Cedula"
                                            runat="server"
                                            EmptyText="Cedula del usuario"
                                            AllowBlank="false"
                                            InputType="Number"
                                            Flex="1">
                                            <Triggers>
                                                <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                            </Triggers>
                                            <Listeners>
                                                <TriggerClick Handler="this.setValue('');" />
                                            </Listeners>
                                        </ext:TextField>
                                    </Items>
                                </ext:FieldSet>

                                <ext:FieldSet runat="server"
                                    Layout="HBoxLayout"
                                    PaddingSpec="0 10 10 10"
                                    Title="Nombres y Apellidos"
                                    MarginSpec="0 10 0 10">
                                    <LayoutConfig>
                                        <ext:HBoxLayoutConfig Align="Middle" />
                                    </LayoutConfig>
                                    <Items>
                                        <ext:TextField ID="txtNombres"
                                            FieldLabel="Nombres"
                                            runat="server"
                                            EmptyText="Nombre(s) del usuario"
                                            AllowBlank="false"
                                            InputType="Text"
                                            MarginSpec="0 10 0 0"
                                            Flex="1">
                                            <Triggers>
                                                <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                            </Triggers>
                                            <Listeners>
                                                <TriggerClick Handler="this.setValue('');" />
                                            </Listeners>
                                        </ext:TextField>
                                        <ext:TextField ID="txtApellidos"
                                            FieldLabel="Apellidos"
                                            runat="server"
                                            EmptyText="Apellido(s) del usuario"
                                            AllowBlank="false"
                                            InputType="Text"
                                            Flex="1">
                                            <Triggers>
                                                <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                            </Triggers>
                                            <Listeners>
                                                <TriggerClick Handler="this.setValue('');" />
                                            </Listeners>
                                        </ext:TextField>
                                    </Items>
                                </ext:FieldSet>

                                <ext:FieldSet runat="server"
                                    Layout="VBoxLayout"
                                    PaddingSpec="0 10 10 10"
                                    MarginSpec="0 10 0 10"
                                    Title="Cuenta">
                                    <LayoutConfig>
                                        <ext:VBoxLayoutConfig Align="Stretch" />
                                    </LayoutConfig>
                                    <Items>
                                        <ext:Panel runat="server"
                                            Layout="HBoxLayout"
                                            Flex="1">
                                            <LayoutConfig>
                                                <ext:HBoxLayoutConfig Align="Middle" />
                                            </LayoutConfig>
                                            <Items>
                                                <ext:TextField ID="txtCorreo"
                                                    FieldLabel="Correo"
                                                    runat="server"
                                                    EmptyText="Correo electronico"
                                                    AllowBlank="false"
                                                    InputType="Email"
                                                    MarginSpec="0 10 0 0"
                                                    Flex="1">
                                                    <Triggers>
                                                        <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                                    </Triggers>
                                                    <Listeners>
                                                        <TriggerClick Handler="this.setValue('');" />
                                                    </Listeners>
                                                </ext:TextField>
                                                <ext:TextField ID="txtClave"
                                                    FieldLabel="Clave"
                                                    runat="server"
                                                    EmptyText="Contraseña del usuario"
                                                    AllowBlank="false"
                                                    InputType="Password"
                                                    Flex="1">
                                                    <Triggers>
                                                        <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                                    </Triggers>
                                                    <Listeners>
                                                        <TriggerClick Handler="this.setValue('');" />
                                                    </Listeners>
                                                </ext:TextField>
                                            </Items>
                                        </ext:Panel>
                                        <ext:TextField ID="txtLogin"
                                            FieldLabel="Nombre de usuario"
                                            runat="server"
                                            EmptyText="Username o nombre de usuario"
                                            AllowBlank="false"
                                            InputType="Text"
                                            Flex="1">
                                            <Triggers>
                                                <ext:FieldTrigger Icon="Clear" Hidden="false" />
                                            </Triggers>
                                            <Listeners>
                                                <TriggerClick Handler="this.setValue('');" />
                                            </Listeners>
                                        </ext:TextField>
                                    </Items>
                                </ext:FieldSet>

                                <ext:Panel runat="server"
                                    Layout="HBoxLayout"
                                    PaddingSpec="30 0 0 10">
                                    <LayoutConfig>
                                        <ext:HBoxLayoutConfig Pack="End" />
                                    </LayoutConfig>
                                    <Items>
                                        <ext:Button runat="server"
                                            ID="BtnGuardar"
                                            Text="Guardar"
                                            Icon="DatabaseSave"
                                            FormBind="true"
                                            Flex="1"
                                            ToolTip="Guardar Control">
                                            <DirectEvents>
                                                <Click OnEvent="GuardarUsuario_Event" Timeout="60000">
                                                    <EventMask ShowMask="true" Msg="Guardando la información..." Target="Page" />
                                                </Click>
                                            </DirectEvents>
                                        </ext:Button>
                                    </Items>
                                </ext:Panel>
                            </Items>
                            <Listeners>
                                <ValidityChange Handler="#{BtnGuardar}.setDisabled(!valid);" />
                            </Listeners>
                        </ext:FormPanel>
                        <ext:Panel runat="server"
                            Title="Datos"
                            Region="Center"
                            StyleSpec="border: 1px solid #EAEAEA; background-color: white;"
                            Layout="BorderLayout">
                            <Items>
                                <ext:GridPanel
                                    runat="server"
                                    ID="gridUsuarios"
                                    Flex="1"
                                    Region="Center"
                                    StyleSpec="background-color: white; border: 1px solid #EAEAEA;"
                                    RowLines="true"
                                    ColumnLines="true">
                                    <Store>
                                        <ext:Store runat="server"
                                            ID="storeUsuario"
                                            PageSize="50">
                                            <Model>
                                                <ext:Model runat="server">
                                                    <Fields>
                                                        <ext:ModelField Name="Codigo" Type="Int" />
                                                        <ext:ModelField Name="Cedula" Type="String" />
                                                        <ext:ModelField Name="Nombre" Type="String" />
                                                        <ext:ModelField Name="Apellido" Type="String" />
                                                        <ext:ModelField Name="Correo" Type="String" />
                                                        <ext:ModelField Name="Usuario" Type="String" />
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                        </ext:Store>
                                    </Store>
                                    <ColumnModel runat="server">
                                        <Columns>
                                            <ext:Column runat="server" Text="<b>Codigo</b>" DataIndex="Codigo" Width="70" />
                                            <ext:Column runat="server" Text="<b>Nombre</b>" DataIndex="Nombre" Flex="1" />
                                            <ext:Column runat="server" Text="<b>Apellido</b>" DataIndex="Apellido" Flex="1" />
                                            <ext:Column runat="server" Text="<b>Cedula</b>" DataIndex="Cedula" Flex="1" />
                                            <ext:Column runat="server" Text="<b>Correo</b>" DataIndex="Correo" Flex="2" />
                                            <ext:Column runat="server" Text="<b>Usuario</b>" DataIndex="Usuario" Flex="1" />
                                        </Columns>
                                    </ColumnModel>
                                    <View>
                                        <ext:GridView runat="server" EmptyText="<center>Sin datos para mostrar</center>" StripeRows="true" TrackOver="true" EnableTextSelection="true" />
                                    </View>
                                    <Plugins>
                                        <ext:FilterHeader runat="server" OnCreateFilterableField="EventoFiltroGrid_CreateFilterableField" />
                                    </Plugins>
                                </ext:GridPanel>
                            </Items>
                        </ext:Panel>
                    </Items>
                </ext:FormPanel>
            </Items>
        </ext:Viewport>
    </form>
</body>
</html>
