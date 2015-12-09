<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImgEvent.aspx.cs" Inherits="WebPlayer.ImgEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE" /> 
    <title></title>
    <script src="Scripts/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        var fileindex = 1;
        
        function ImageLoad() {
            
            fileindex++;
            var filename = "/WebPlayer/TestImg/320/20120910_001 (" + fileindex + ").jpg";
            document.getElementById("Image1").src = filename;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img ID="Image1" src="/WebPlayer/TestImg/320/20120910_001 (1).jpg" OnLoad="ImageLoad();"  />
    </div>
    </form>
</body>
</html>
