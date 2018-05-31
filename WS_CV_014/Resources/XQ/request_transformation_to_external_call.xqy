xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare variable $body as element() external;

declare function local:func($body as element())  {
<Root-Element xmlns="http://TargetNamespace.com/request_validation_cvm">
          {
          if($body/ns1:BODY/ns1:MCC_CNT_NUMERO) then
          <MCC_CNT_NUMERO>{fn:data($body/ns1:BODY/ns1:MCC_CNT_NUMERO)}</MCC_CNT_NUMERO>
          else()
          }
          {
          if($body/ns1:BODY/ns1:MCC_CLI_RACINE) then
          <MCC_CLI_RACINE>{fn:data($body/ns1:BODY/ns1:MCC_CLI_RACINE)}</MCC_CLI_RACINE>
          else()
          }
          {
          if($body/ns1:BODY/ns1:MCC_TYPE) then
          <MCC_TYPE>{fn:data($body/ns1:BODY/ns1:MCC_TYPE)}</MCC_TYPE>
          else()
          }
          {
          if($body/ns1:BODY/ns1:MCC_STATUS) then
          <MCC_STATUS>{fn:data($body/ns1:BODY/ns1:MCC_STATUS)}</MCC_STATUS>
          else()
          }
</Root-Element>

};

local:func($body)