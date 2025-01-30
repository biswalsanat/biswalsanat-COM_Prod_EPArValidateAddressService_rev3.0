<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:tns="http://xmlns.edgepark.com/EPArValidateAddress" xmlns:ns1="http://www.edgepark.com/AddressValidataion" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:ns0="http://www.w3.org/2001/XMLSchema" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:aw_RT_Service_Admin="http://www.businessobjects.com/rtServiceAdmin" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:localtypes="http://www.businessobjects.com/DataServices/ServerX.xsd" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" exclude-result-prefixes="xsl tns ns0 ns1 soap aw_RT_Service_Admin localtypes bpws ehdr hwf xp20 xref ora ids orcl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:aw_CARESAddressValidation_CARESAddressResponse_Output="http://www.edgepark.com/CARESAddressValidataion">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="EPArValidateAddressService.xsd"/>
            <oracle-xsl-mapper:rootElement name="ValidateAddressRequestList" namespace="http://xmlns.edgepark.com/EPArValidateAddress"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dappdqmv01.corp.rghent.com:28080/DataServices/servlet/webservices?ver=2.0&amp;amp;wsdlxml"/>
            <oracle-xsl-mapper:rootElement name="RGHAddressRequest" namespace="http://www.edgepark.com/AddressValidataion"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <ns1:RGHAddressRequest>
         <Address1>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strAddress1"/>
         </Address1>
         <Address2>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strAddress2"/>
         </Address2>
         <Address3>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strAddress3"/>
         </Address3>
         <City>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strCity"/>
         </City>
         <State>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strState"/>
         </State>
         <Zip>
            <xsl:value-of select="/tns:ValidateAddressRequestList/tns:ValidateAddressRequest/tns:strZip"/>
         </Zip>
      </ns1:RGHAddressRequest>
   </xsl:template>
</xsl:stylesheet>
