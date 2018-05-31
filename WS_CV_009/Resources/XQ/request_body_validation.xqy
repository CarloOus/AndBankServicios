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
                (:BEGIN - Integer Fields Validation:)
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
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_GERANT2/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_GERANT2/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_GERANT2 must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_GERANT2 must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_GERANT3/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_GERANT3/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_GERANT3 must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_GERANT3 must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_GROUPEGESTION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_GROUPEGESTION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_GROUPEGESTION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_GROUPEGESTION is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_AGENT/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_AGENT/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_AGENT must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_AGENT must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>    
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_NATIONALITE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_NATIONALITE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NATIONALITE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_NATIONALITE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_NATIONALITE2/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_NATIONALITE2/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NATIONALITE2 must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_NATIONALITE2 must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PAYSNAISSANCE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PAYSNAISSANCE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PAYSNAISSANCE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PAYSNAISSANCE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_CONNAISSANCEMARCHES/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_CONNAISSANCEMARCHES/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_CONNAISSANCEMARCHES must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_CONNAISSANCEMARCHES must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_AGENTPUBLIC/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_AGENTPUBLIC/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_AGENTPUBLIC must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_AGENTPUBLIC must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_LIENINTERNE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_LIENINTERNE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_LIENINTERNE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_LIENINTERNE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PATRIMOINEEXTERNEGLOBAL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PATRIMOINEEXTERNEGLOBAL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PATRIMOINEEXTERNEGLOBAL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PATRIMOINEEXTERNEGLOBAL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>    
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PROVFONDS/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PROVFONDS/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PROVFONDS must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PROVFONDS must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_RELATIONBANQUE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_RELATIONBANQUE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_RELATIONBANQUE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_RELATIONBANQUE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_GERANT1/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_GERANT1/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_GERANT1 must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_GERANT1 must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_CDORIGINEENTREERELATION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_CDORIGINEENTREERELATION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_CDORIGINEENTREERELATION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_CDORIGINEENTREERELATION must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PAYSARISQUE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PAYSARISQUE/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PAYSARISQUE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PAYSARISQUE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_ACTIVITEARISQUE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_ACTIVITEARISQUE/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_ACTIVITEARISQUE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_ACTIVITEARISQUE is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_SITUFISCALE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_SITUFISCALE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_SITUFISCALE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_SITUFISCALE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>    
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_TAUXIMPOSITION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_TAUXIMPOSITION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_TAUXIMPOSITION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_TAUXIMPOSITION must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_REGIMEMATRIMONIAL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_REGIMEMATRIMONIAL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_REGIMEMATRIMONIAL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_REGIMEMATRIMONIAL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_RETRAITE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_RETRAITE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_RETRAITE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_RETRAITE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_SEGMENTATION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_SEGMENTATION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_SEGMENTATION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_SEGMENTATION must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_CONTACTUS/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_CONTACTUS/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_CONTACTUS must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_CONTACTUS must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_OPERANTMUTATION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_OPERANTMUTATION/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_OPERANTMUTATION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_OPERANTMUTATION is required</ns0:submessage>
                    </ns0:ValidationError>
                 else if(not(empty($rootElement/ns1:BODY/ns1:CNT_TAXEEU/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_TAXEEU/text(), 'Y','N'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_TAXEEU must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_TAXEEU must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>    
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_TAXELOCALE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_TAXELOCALE/text(), 'Y', 'N'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_TAXELOCALE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_TAXELOCALE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_USRESIDENT/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_USRESIDENT/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_USRESIDENT must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_USRESIDENT must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_ASSISTANT/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_ASSISTANT/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_ASSISTANT must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_ASSISTANT must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PROFESSIONNEL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PROFESSIONNEL/text(), '0,1'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PROFESSIONNEL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PROFESSIONNEL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_SECURISE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_SECURISE/text(), 'Y','N'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_SECURISE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_SECURISE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_COMMERCIAL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_COMMERCIAL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_COMMERCIAL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_COMMERCIAL is required</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_BUREAUREPRES/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_BUREAUREPRES/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_BUREAUREPRES must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_BUREAUREPRES must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>    
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_NATURE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_NATURE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NATURE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_NATURE must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_LIEUTRAVAIL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_LIEUTRAVAIL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_LIEUTRAVAIL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_LIEUTRAVAIL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_DOMICILELEGAL/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_DOMICILELEGAL/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_DOMICILELEGAL must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_DOMICILELEGAL must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_PSD_NUMERO/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_PSD_NUMERO/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_PSD_NUMERO must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_PSD_NUMERO must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_DOUBLE_IMPOSITION/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_DOUBLE_IMPOSITION/text(), 'Y','N'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_DOUBLE_IMPOSITION must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_DOUBLE_IMPOSITION must contain only numbers</ns0:submessage>
                    </ns0:ValidationError>
                else if(not(empty($rootElement/ns1:BODY/ns1:CNT_FAT_PATRIMOINE/text())) and not(matches($rootElement/ns1:BODY/ns1:CNT_FAT_PATRIMOINE/text(), '^[+-]?([0-9]*[.])?[0-9]+$'))) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_FAT_PATRIMOINE must contain only numbers</ns0:message>
                        <ns0:submessage>CNT_FAT_PATRIMOINE is required</ns0:submessage>
                    </ns0:ValidationError>
                (: END - Integer Fields Validation:)
                (: BEGIN - Empty Fields Validation:)
                else if(empty($rootElement/ns1:BODY/ns1:CNT_NUMERO/text())) then
                    <ns0:ValidationError>
                        <ns0:code>1-102-00</ns0:code>
                        <ns0:message>One or more fields have an incorrect format. CNT_NUMERO is empty</ns0:message>
                        <ns0:submessage>CNT_NUMERO is empty</ns0:submessage>
                    </ns0:ValidationError>
                (:END - Empty Fields Validation:)
                (:BEGIN - Required Fields Validation:)
                else if(count($rootElement/ns1:BODY/ns1:CNT_NUMERO) = 0) then
                    <ns0:ValidationError>
                        <ns0:code>1-101-00</ns0:code>
                        <ns0:message>Required fields are missing. CNT_NUMERO is required</ns0:message>
                        <ns0:submessage>CNT_NUMERO is required</ns0:submessage>
                    </ns0:ValidationError>
                (: END - Required Fields Validation:)
                else()
          )}
        </ns0:ValidationErrorList>
    </ns0:Validation>
};

xf:RequestValidation($rootElement)