xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare variable $body as element() external;

declare function local:func($body as element())  {
<Root-Element xmlns="http://TargetNamespace.com/request_validation_cvm">
       {
          if($body/ns1:BODY/ns1:RNC_CLI_RACINE) then
            <RNC_CLI_RACINE>{fn:data($body/ns1:BODY/ns1:RNC_CLI_RACINE)}</RNC_CLI_RACINE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RNC_CNT_NUMERO) then
            <RNC_CNT_NUMERO>{fn:data($body/ns1:BODY/ns1:RNC_CNT_NUMERO)}</RNC_CNT_NUMERO>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RNC_TYPREL) then
            <RNC_TYPREL>{fn:data($body/ns1:BODY/ns1:RNC_TYPREL)}</RNC_TYPREL>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RNC_STATUT) then
            <RNC_STATUT>{fn:data($body/ns1:BODY/ns1:RNC_STATUT)}</RNC_STATUT>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RCN_CNT_NUMERO) then
            <RCN_CNT_NUMERO>{fn:data($body/ns1:BODY/ns1:RCN_CNT_NUMERO)}</RCN_CNT_NUMERO>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RNC_MAITRE_MAJ) then
            <RNC_MAITRE_MAJ>{fn:data($body/ns1:BODY/ns1:RNC_MAITRE_MAJ)}</RNC_MAITRE_MAJ>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RCN_RACINELIEE) then
            <RCN_RACINELIEE>{fn:data($body/ns1:BODY/ns1:RCN_RACINELIEE)}</RCN_RACINELIEE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RCN_TYPERELATION) then
            <RCN_TYPERELATION>{fn:data($body/ns1:BODY/ns1:RCN_TYPERELATION)}</RCN_TYPERELATION>
          else()
        }
        {
          if($body/ns1:BODY/ns1:RCN_STATUS) then
            <RCN_STATUS>{fn:data($body/ns1:BODY/ns1:RCN_STATUS)}</RCN_STATUS>
          else()
        }
</Root-Element>

};

local:func($body)