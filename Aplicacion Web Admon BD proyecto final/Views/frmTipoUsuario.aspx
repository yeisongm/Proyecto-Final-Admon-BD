<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTipoUsuario.aspx.cs" Inherits="Aplicacion_Web_Admon_BD_proyecto_final.Views.frmTipoUsuario" %>

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
                    Title="Tipos de usuario"
                    Icon="User"
                    BodyStyle="background-color: white;"
                    UI="Primary">
                    <FieldDefaults LabelAlign="Top" />
                    <Items>
                        <ext:FormPanel runat="server"
                            Region="North"
                            Layout="HBoxLayout"
                            MarginSpec="0 10 0 0"
                            PaddingSpec="0 10 0 10"
                            StyleSpec="border: 1px solid #EAEAEA;">
                            <Items>
                                <ext:TextField ID="txtNombre"
                                    FieldLabel="Descripción"
                                    runat="server"
                                    EmptyText="Nombre del tipo de usuario"
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
                                                <Click OnEvent="GuardarTipoUsuario_Event" Timeout="60000">
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

                        <ext:FieldSet runat="server"
                            Title="Datos"
                            Region="Center"
                            StyleSpec="border: 1px solid #EAEAEA; background-color: white;"
                            Layout="BorderLayout"
                            MarginSpec="0 10 0 10"
                            PaddingSpec="0 10 0 10">
                            <Items>
                                <ext:GridPanel
                                    runat="server"
                                    ID="gridTipoUsuario"
                                    Flex="1"
                                    Region="Center"
                                    StyleSpec="background-color: white; border: 1px solid #EAEAEA;"
                                    RowLines="true"
                                    ColumnLines="true">
                                    <Store>
                                        <ext:Store runat="server"
                                            ID="storeTipoUsuario"
                                            PageSize="50">
                                            <Model>
                                                <ext:Model runat="server">
                                                    <Fields>
                                                        <ext:ModelField Name="Codigo" Type="Int" />
                                                        <ext:ModelField Name="Nombre" Type="String" />
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                        </ext:Store>
                                    </Store>
                                    <ColumnModel runat="server">
                                        <Columns>
                                            <ext:Column runat="server" Text="<b>Codigo</b>" DataIndex="Codigo" Width="70" />
                                            <ext:Column runat="server" Text="<b>Nombre</b>" DataIndex="Nombre" Flex="1" />
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
                        </ext:FieldSet>
                    </Items>
                </ext:FormPanel>
            </Items>
        </ext:Viewport>
    </form>
</body>
</html>
