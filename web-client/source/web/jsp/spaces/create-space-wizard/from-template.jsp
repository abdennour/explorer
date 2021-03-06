<%--
 * Copyright (C) 2005-2010 Alfresco Software Limited.
 *
 * This file is part of Alfresco
 *
 * Alfresco is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Alfresco is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Alfresco. If not, see <http://www.gnu.org/licenses/>.
--%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/alfresco.tld" prefix="a" %>
<%@ taglib uri="/WEB-INF/repo.tld" prefix="r" %>

<script type="text/javascript">
   
   addEventToElement(window, 'load', pageLoaded, false);
   
   function pageLoaded()
   {
      checkButtonState( document.getElementById("wizard:wizard-body:template-space-id") );
   }
   
   function checkButtonState(inputField)
   {
      if (inputField.selectedIndex == 0)
      {
         document.getElementById("wizard:next-button").disabled = true;
      }
      else
      {
         document.getElementById("wizard:next-button").disabled = false;
      }
   }
</script>

<f:verbatim>
<table cellpadding="3" cellspacing="0" border="0" width="100%">
   <tr>
      <td class="wizardSectionHeading">
         </f:verbatim>
         <h:outputText value="#{msg.template_space}"/>
         <f:verbatim>
      </td>
   </tr>
   <tr><td class="paddingRow"></td></tr>
   <tr>
      <td>
         </f:verbatim>
         <h:outputText value="#{msg.select_template}"/>
         <f:verbatim>
      </td>
   </tr>
   <tr>
      <td>
         </f:verbatim>
         <h:selectOneMenu id="template-space-id" value="#{WizardManager.bean.templateSpaceId}" 
                          onchange="javascript:checkButtonState(this);">
            <f:selectItems value="#{WizardManager.bean.templateSpaces}" />
         </h:selectOneMenu>
         <f:verbatim>
      </td>
   </tr>
   <%-- TBD
   <tr><td class="paddingRow" /></tr>
   <tr>
      <td><h:outputText value="#{msg.copy_existing_space}"/></td>
   </tr>
   <tr>
      <td>
         <h:selectOneRadio value="#{NewSpaceWizard.copyPolicy}" layout="pageDirection">
            <f:selectItem itemValue="structure" itemLabel="#{msg.structure}" />
            <f:selectItem itemValue="contents" itemLabel="#{msg.structure_contents}" />
         </h:selectOneRadio>
      </td>
   </tr>
   --%>
   <tr><td class="details-separator" /></tr>
   <tr>
      <td>
         </f:verbatim>
         <h:outputText value="#{msg.space_copy_note}"/>
         <f:verbatim>
      </td>
   </tr>
</table>
</f:verbatim>