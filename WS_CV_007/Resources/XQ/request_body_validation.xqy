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
              (: BEGIN - Required Field Validations :)
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_CNT_NUMERO/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_CNT_NUMERO/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_CNT_NUMERO must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_CNT_NUMERO must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_TYPE/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_TYPE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_TYPE must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_TYPE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_PRIVE/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_PRIVE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_PRIVE must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_PRIVE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_TELDE/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_TELDE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_TELDE must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_TELDE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_TELA/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_TELA/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_TELA must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_TELA must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:MCC_JOURNEE/text())) and not(matches($rootElement/ns1:BODY/ns1:MCC_JOURNEE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_JOURNEE must contain only numbers</ns0:message>
                        <ns0:submessage>MCC_JOURNEE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
              (: END INTEGER FIELDS  :)
              (: REQUIRED FIELDS , MANDATORY :)
                else if(count($rootElement/ns1:BODY/ns1:MCC_ADRFISCALE) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_ADRFISCALE is required</ns0:message>
                        <ns0:submessage>MCC_ADRFISCALE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(count($rootElement/ns1:BODY/ns1:MCC_ADRCORRESPONDANCE) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_ADRCORRESPONDANCE is required</ns0:message>
                        <ns0:submessage>MCC_ADRCORRESPONDANCE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(count($rootElement/ns1:BODY/ns1:MCC_CNT_NUMERO) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_CNT_NUMERO is required</ns0:message>
                        <ns0:submessage>MCC_CNT_NUMERO is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(count($rootElement/ns1:BODY/ns1:MCC_TYPE) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_TYPE is required</ns0:message>
                        <ns0:submessage>MCC_TYPE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(count($rootElement/ns1:BODY/ns1:MCC_PRIVE) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_PRIVE is required</ns0:message>
                        <ns0:submessage>MCC_PRIVE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(count($rootElement/ns1:BODY/ns1:MCC_L1) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. MCC_L1 is required</ns0:message>
                        <ns0:submessage>MCC_L1 is required</ns0:submessage>
                    </ns0:ValidationError>
              (: END - REQUIRED FIELDS, MANDATORY :)
              (: CAMPOS REQUERIDOS Y VACIOS:)
                else if(empty($rootElement/ns1:BODY/ns1:MCC_L1/text())) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. MCC_L1 is empty</ns0:message>
                        <ns0:submessage>MCC_L1 is empty</ns0:submessage>
                    </ns0:ValidationError>
              
                else()
          )}
        </ns0:ValidationErrorList>
    </ns0:Validation>
};

xf:RequestValidation($rootElement)