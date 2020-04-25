<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejemplo.aspx.cs" Inherits="View_Ejemplo" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CRSLibros" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
            <CR:CrystalReportSource ID="CRSLibros" runat="server">
                <Report FileName="C:\Users\Lorena Niño\Desktop\FutureBooks-master\FutureBooks\Reportes\CREjemplo.rpt">
                </Report>
            </CR:CrystalReportSource>
        </div>
    </form>
</body>
</html>
