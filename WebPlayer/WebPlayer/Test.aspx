<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebPlayer.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        function start1() {
            $(function () {
                var waitSeconds = 0;
                var polling = false;

                window.setInterval(function () {
                    waitSeconds += 1;
                    $("#timer").text(waitSeconds);

                    if (!polling) {
                        // long polling.
                        polling = true;

                        $.get("Time.ashx", null, function (r) {
                            // set value.
                            $("#container").html($("#container").html() + "<br />" + r + ", period: " + waitSeconds + " sec(s).");
                            // reset timer.
                            $("#timer").text("");
                            waitSeconds = 0;
                            polling = false;
                        });

                    }

                }, 1000);
            });
        }
        
    </script>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="start1();return false;" />
        <asp:Label ID="timer" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="container"
            runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
