xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace reqv="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/rest_request.xsd" ::)

declare variable $body as element() (:: schema-element(reqv:Root-Element) ::) external;

declare function local:func($body as element() (:: schema-element(reqv:Root-Element) ::)) as element()  {
    <Root-Element xmlns="http://TargetNamespace.com/arch_audit_header">
    {
    if(not(empty($body/reqv:body/reqv:RNC_CNT_NUMERO))) then
        <RNC>0</RNC>
    else
        <RNC>1</RNC>
     }
     </Root-Element>
};

local:func($body)