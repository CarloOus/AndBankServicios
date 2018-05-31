xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns0="http://TargetNamespace.com/req_validation";
(:: import schema at "../../../Repository/Architecture/XSD/request_validation.xsd" ::)
declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare namespace xf="http://www.w3.org/2005/xquery-local-functions";

declare variable $rootElement as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function xf:RequestValidation($rootElement as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: element(*, ns0:Validation) ::) {
    <ns0:Validation>
        <ns0:Payload>{$rootElement/.}</ns0:Payload>
        <ns0:ValidationErrorList>
          {(
                if(not($rootElement/ns1:BODY/*)) then
                    <ns0:ValidationError>
                        <ns0:code>1-105-00</ns0:code>
                        <ns0:message>The request body is malformed.  Required fields are missing or have an incorrect format. BODY is empty</ns0:message>
                        <ns0:submessage>BODY is empty</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_NUMERO/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_NUMERO/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NUMERO must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_NUMERO must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_STATUSCONTACT/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_STATUSCONTACT/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_STATUSCONTACT must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_STATUSCONTACT must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_CENTRE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_CENTRE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_CENTRE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_CENTRE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_GERANT1/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_GERANT1/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_GERANT1 must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_GERANT1 must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_NATIONALITE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_NATIONALITE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NATIONALITE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_NATIONALITE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_FORMEJURIDIQUE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_FORMEJURIDIQUE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_FORMEJURIDIQUE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_FORMEJURIDIQUE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNC_NUMDOCIDENTITE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNC_NUMDOCIDENTITE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNC_NUMDOCIDENTITE must contain only numbers</ns0:message>
                        <ns0:submessage>CNC_NUMDOCIDENTITE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else()
          )}
        </ns0:ValidationErrorList>
    </ns0:Validation>
};

xf:RequestValidation($rootElement)