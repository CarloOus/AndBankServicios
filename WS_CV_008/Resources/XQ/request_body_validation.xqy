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
                else if ((count($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE) > 0 or count($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO) > 0
                or count($rootElement/ns1:BODY/ns1:RNC_TYPREL) > 0 or count($rootElement/ns1:BODY/ns1:RNC_STATUT) > 0) and 
                (count($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO) > 0 or count($rootElement/ns1:BODY/ns1:RCN_RACINELIEE) > 0
                or count($rootElement/ns1:BODY/ns1:RCN_TYPERELATION) > 0 or count($rootElement/ns1:BODY/ns1:RCN_STATUS) > 0)) then
                    <ns0:ValidationError>
                        <ns0:code>1-108-00</ns0:code>
                        <ns0:message>Fields from two tables. Fields from two different tables are not allowed.</ns0:message>
                        <ns0:submessage>Fields from two different tables are not allowed.</ns0:submessage>
                    </ns0:ValidationError>
                else if (count($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE) > 0 or count($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO) > 0
                  or count($rootElement/ns1:BODY/ns1:RNC_TYPREL) > 0 or count($rootElement/ns1:BODY/ns1:RNC_STATUT) > 0) then
                    (: BEGIN - Required Field Validations :)
                    if(count($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE) = 0) then
                      <ns0:ValidationError>
                          <ns0:code>1-101-00</ns0:code>
                          <ns0:message>Required fields are missing. RNC_CLI_RACINE is required</ns0:message>
                          <ns0:submessage>RNC_CLI_RACINE is required</ns0:submessage>
                      </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RNC_CNT_NUMERO is required</ns0:message>
                            <ns0:submessage>RNC_CNT_NUMERO is required</ns0:submessage>
                        </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RNC_STATUT) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RNC_STATUT is required</ns0:message>
                            <ns0:submessage>RNC_STATUT is required</ns0:submessage>
                        </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RNC_TYPREL) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RNC_TYPREL is required</ns0:message>
                            <ns0:submessage>RNC_TYPREL is required</ns0:submessage>
                        </ns0:ValidationError>
                    (: END - Required Field Validations :)
                    (: BEGIN - Empty Field Validations :)
                    else if(empty($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RNC_CLI_RACINE is empty</ns0:message>
                            <ns0:submessage>RNC_CLI_RACINE is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RNC_CNT_NUMERO is empty</ns0:message>
                            <ns0:submessage>RNC_CNT_NUMERO is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RNC_STATUT/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RNC_STATUT is empty</ns0:message>
                            <ns0:submessage>RNC_STATUT is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RNC_TYPREL/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RNC_TYPREL is empty</ns0:message>
                            <ns0:submessage>RNC_TYPREL is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else()
                  (: END - Empty Field Validations :)
                  (: BEGIN - Field Specific Validations :)
                  else if(not(empty($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE/text())) and not(matches($rootElement/ns1:BODY/ns1:RNC_CLI_RACINE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RNC_CLI_RACINE must contain only numbers</ns0:message>
                        <ns0:submessage>RNC_CLI_RACINE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:RNC_TYPREL/text())) and not(matches($rootElement/ns1:BODY/ns1:RNC_TYPREL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RNC_TYPREL must contain only numbers</ns0:message>
                        <ns0:submessage>RNC_TYPREL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO/text())) and not(matches($rootElement/ns1:BODY/ns1:RNC_CNT_NUMERO/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RNC_CNT_NUMERO must contain only numbers</ns0:message>
                        <ns0:submessage>RNC_CNT_NUMERO must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                  (: END - Field Specific Validations :)
                  else if (count($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO) > 0 or count($rootElement/ns1:BODY/ns1:RCN_RACINELIEE) > 0
                  or count($rootElement/ns1:BODY/ns1:RCN_TYPERELATION) > 0 or count($rootElement/ns1:BODY/ns1:RCN_STATUS) > 0) then
                    (: BEGIN - Required Field Validations :)
                    if(count($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO) = 0) then
                      <ns0:ValidationError>
                          <ns0:code>1-101-00</ns0:code>
                          <ns0:message>Required fields are missing. RCN_CNT_NUMERO is required</ns0:message>
                          <ns0:submessage>RCN_CNT_NUMERO is required</ns0:submessage>
                      </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RCN_RACINELIEE) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RCN_RACINELIEE is required</ns0:message>
                            <ns0:submessage>RCN_RACINELIEE is required</ns0:submessage>
                        </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RCN_TYPERELATION) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RCN_TYPERELATION is required</ns0:message>
                            <ns0:submessage>RCN_TYPERELATION is required</ns0:submessage>
                        </ns0:ValidationError>
                    else if(count($rootElement/ns1:BODY/ns1:RCN_STATUS) = 0) then
                        <ns0:ValidationError>
                            <ns0:code>1-101-00</ns0:code>
                            <ns0:message>Required fields are missing. RCN_STATUS is required</ns0:message>
                            <ns0:submessage>RCN_STATUS is required</ns0:submessage>
                        </ns0:ValidationError>  
                    (: END - Required Field Validations :)
                    (: BEGIN - Empty Field Validations :)
                    else if(empty($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RCN_CNT_NUMERO is empty</ns0:message>
                            <ns0:submessage>RCN_CNT_NUMERO is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RCN_RACINELIEE/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RCN_RACINELIEE is empty</ns0:message>
                            <ns0:submessage>RCN_RACINELIEE is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RCN_TYPERELATION/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RCN_TYPERELATION is empty</ns0:message>
                            <ns0:submessage>RCN_TYPERELATION is empty</ns0:submessage>
                        </ns0:ValidationError>
                    else if(empty($rootElement/ns1:BODY/ns1:RCN_STATUS/text())) then
                        <ns0:ValidationError>
                            <ns0:code>1-102-00</ns0:code>
                            <ns0:message>One or more fields have an incorrect format. RCN_STATUS is empty</ns0:message>
                            <ns0:submessage>RCN_STATUS is empty</ns0:submessage>
                        </ns0:ValidationError>
                  (: END - Empty Field Validations :)
                  (: BEGIN - Field Specific Validations :)
                    else if(not(empty($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO/text())) and not(matches($rootElement/ns1:BODY/ns1:RCN_CNT_NUMERO/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RCN_CNT_NUMERO must contain only numbers</ns0:message>
                        <ns0:submessage>RCN_CNT_NUMERO must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:RCN_RACINELIEE/text())) and not(matches($rootElement/ns1:BODY/ns1:RCN_RACINELIEE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RCN_RACINELIEE must contain only numbers</ns0:message>
                        <ns0:submessage>RCN_RACINELIEE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:RCN_TYPERELATION/text())) and not(matches($rootElement/ns1:BODY/ns1:RCN_TYPERELATION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. RCN_TYPERELATION must contain only numbers</ns0:message>
                        <ns0:submessage>RCN_TYPERELATION must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>  
                  (: END - Field Specific Validations :)
                else()
              else()
          )}
        </ns0:ValidationErrorList>
    </ns0:Validation>
};

xf:RequestValidation($rootElement)