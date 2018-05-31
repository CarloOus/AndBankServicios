xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare variable $body as element() external;

declare function local:func($body as element())  {
<Root-Element xmlns="http://TargetNamespace.com/request_validation_cvm">
      <CNT_ID>{fn:data($body/ns1:BODY/ns1:CNT_ID)}</CNT_ID>
</Root-Element>

};

local:func($body)