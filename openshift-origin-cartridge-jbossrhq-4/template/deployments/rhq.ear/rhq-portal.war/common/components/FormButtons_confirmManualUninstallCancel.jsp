<%@ page language="java" %>
<%@ page errorPage="/common/Error.jsp" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html-el" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script language="JavaScript" type="text/javascript">
  var isButtonClicked = false;
  
  function checkSubmit() {
    if (isButtonClicked) {
      alert('<fmt:message key="error.PreviousRequestEtc"/>');
      return false;
    }
  }
</script>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td colspan="2"><html:img page="/images/spacer.gif" width="1" height="10" border="0"/></td>
  </tr>
  <tr>
    <td colspan="2" class="ToolbarLine"><html:img page="/images/spacer.gif" width="1" height="1" border="0"/></td>
  </tr>
  <tr>
    <td colspan="2"><html:img page="/images/spacer.gif" width="1" height="10" border="0"/></td>
  </tr>
  <tr align=left valign=bottom>
    <td width="20%">&nbsp;</td>
    <td width="80%">
      <table width="100%" cellpadding="0" cellspacing="10" border="0">
        <tr>
            <%-- TODO: make this an "CONFIRM UNINSTALL" button instead of an "OK" button --%>
          <td><html:image page="/images/fb_confirm_uninstall.gif" border="0" titleKey="FormButtons.ClickToConfirmManualUninstall"
                          property="manualUninstall"
                          onmouseover="imageSwap(this, imagePath + 'fb_confirm_uninstall', '_over');"
                          onmouseout="imageSwap(this, imagePath + 'fb_confirm_uninstall', '');"
                          onmousedown="imageSwap(this, imagePath + 'fb_confirm_uninstall', '_down')"
                          onclick="checkSubmit(); isButtonClicked=true;"/></td>
          <td><html:img page="/images/spacer.gif" width="10" height="1" border="0"/></td>
          <td><html:image page="/images/fb_cancel.gif" border="0" titleKey="FormButtons.ClickToCancelManualUninstall"
                          property="cancel" onmouseover="imageSwap(this, imagePath + 'fb_cancel', '_over');"
                          onmouseout="imageSwap(this, imagePath + 'fb_cancel', '');"
                          onmousedown="imageSwap(this, imagePath + 'fb_cancel', '_down')"/></td>
          <td width="100%"><html:img page="/images/spacer.gif" width="16" height="1" border="0"/></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
