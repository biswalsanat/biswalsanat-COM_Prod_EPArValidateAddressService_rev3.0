<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:tns="http://xmlns.edgepark.com/EPArValidateAddress" xmlns:ns1="http://www.edgepark.com/AddressValidataion" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:aw_RT_Service_Admin="http://www.businessobjects.com/rtServiceAdmin" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:localtypes="http://www.businessobjects.com/DataServices/ServerX.xsd" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="xsl ns1 ns0 soap aw_RT_Service_Admin localtypes tns bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:aw_CARESAddressValidation_CARESAddressResponse_Output="http://www.edgepark.com/CARESAddressValidataion" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dappdqmv01.corp.rghent.com:28080/DataServices/servlet/webservices?ver=2.0&amp;amp;wsdlxml"/>
            <oracle-xsl-mapper:rootElement name="RGHAddressResponse" namespace="http://www.edgepark.com/AddressValidataion"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="EPArValidateAddressService.xsd"/>
            <oracle-xsl-mapper:rootElement name="ValidateAddressResponseList" namespace="http://xmlns.edgepark.com/EPArValidateAddress"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <tns:ValidateAddressResponseList>
         <tns:ValidateAddressResponse>
            <tns:strAddress1>
               <xsl:value-of select="/ns1:RGHAddressResponse/Address1"/>
            </tns:strAddress1>
            <tns:strAddress2>
               <xsl:value-of select="/ns1:RGHAddressResponse/Address2"/>
            </tns:strAddress2>
            <tns:strAddress3>
               <xsl:value-of select="/ns1:RGHAddressResponse/Address3"/>
            </tns:strAddress3>
            <tns:strCity>
               <xsl:value-of select="/ns1:RGHAddressResponse/City"/>
            </tns:strCity>
            <tns:strCounty>
               <xsl:value-of select="/ns1:RGHAddressResponse/County"/>
            </tns:strCounty>
            <tns:strState>
               <xsl:value-of select="/ns1:RGHAddressResponse/State"/>
            </tns:strState>
            <tns:strZip>
               <xsl:value-of select="/ns1:RGHAddressResponse/Zip"/>
            </tns:strZip>
            <tns:strDPV>
               <xsl:value-of select="/ns1:RGHAddressResponse/DPV"/>
            </tns:strDPV>
            <tns:strRecType>
               <xsl:value-of select="/ns1:RGHAddressResponse/RecType"/>
            </tns:strRecType>
            <tns:strStatCode>
               <xsl:value-of select="/ns1:RGHAddressResponse/StatCode"/>
            </tns:strStatCode>
            <tns:strMessage>
               <xsl:value-of select="/ns1:RGHAddressResponse/Message"/>
            </tns:strMessage>
            <tns:strRDI>
               <xsl:value-of select="/ns1:RGHAddressResponse/RDI"/>
            </tns:strRDI>
         </tns:ValidateAddressResponse>
      </tns:ValidateAddressResponseList>
   </xsl:template>
</xsl:stylesheet>
