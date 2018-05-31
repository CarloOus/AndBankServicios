xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare variable $body as element() external;

declare function local:func($body as element())  {
<Root-Element xmlns="http://TargetNamespace.com/request_validation_cvm">
       {
          if($body/ns1:BODY/ns1:MCC_CLI_RACINE) then
            <MCC_CLI_RACINE>{fn:data($body/ns1:BODY/ns1:MCC_CLI_RACINE)}</MCC_CLI_RACINE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_ORIGINE) then
            <MCC_ORIGINE>{fn:data($body/ns1:BODY/ns1:MCC_ORIGINE)}</MCC_ORIGINE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L2) then
            <MCC_L2>{fn:data($body/ns1:BODY/ns1:MCC_L2)}</MCC_L2>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L3) then
            <MCC_L3>{fn:data($body/ns1:BODY/ns1:MCC_L3)}</MCC_L3>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L4) then
            <MCC_L4>{fn:data($body/ns1:BODY/ns1:MCC_L4)}</MCC_L4>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L5) then
            <MCC_L5>{fn:data($body/ns1:BODY/ns1:MCC_L5)}</MCC_L5>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L6) then
            <MCC_L6>{fn:data($body/ns1:BODY/ns1:MCC_L6)}</MCC_L6>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_STATUS) then
            <MCC_STATUS>{fn:data($body/ns1:BODY/ns1:MCC_STATUS)}</MCC_STATUS>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_REGION) then
            <MCC_REGION>{fn:data($body/ns1:BODY/ns1:MCC_REGION)}</MCC_REGION>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_PAYS) then
            <MCC_PAYS>{fn:data($body/ns1:BODY/ns1:MCC_PAYS)}</MCC_PAYS>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_TELDE) then
            <MCC_TELDE>{fn:data($body/ns1:BODY/ns1:MCC_TELDE)}</MCC_TELDE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_TELA) then
            <MCC_TELA>{fn:data($body/ns1:BODY/ns1:MCC_TELA)}</MCC_TELA>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_JOURNEE) then
            <MCC_JOURNEE>{fn:data($body/ns1:BODY/ns1:MCC_JOURNEE)}</MCC_JOURNEE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_RETENIRCOURRIER) then
            <MCC_RETENIRCOURRIER>{fn:data($body/ns1:BODY/ns1:MCC_RETENIRCOURRIER)}</MCC_RETENIRCOURRIER>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_JOIGNABLE) then
            <MCC_JOIGNABLE>{fn:data($body/ns1:BODY/ns1:MCC_JOIGNABLE)}</MCC_JOIGNABLE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_GENRE) then
            <MCC_GENRE>{fn:data($body/ns1:BODY/ns1:MCC_GENRE)}</MCC_GENRE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_CAB) then
            <MCC_CAB>{fn:data($body/ns1:BODY/ns1:MCC_CAB)}</MCC_CAB>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_CAP) then
            <MCC_CAP>{fn:data($body/ns1:BODY/ns1:MCC_CAP)}</MCC_CAP>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_TYPE) then
            <MCC_TYPE>{fn:data($body/ns1:BODY/ns1:MCC_TYPE)}</MCC_TYPE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_L1) then
            <MCC_L1>{fn:data($body/ns1:BODY/ns1:MCC_L1)}</MCC_L1>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_PRIVE) then
            <MCC_PRIVE>{fn:data($body/ns1:BODY/ns1:MCC_PRIVE)}</MCC_PRIVE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_ADRFISCALE) then
            <MCC_ADRFISCALE>{fn:data($body/ns1:BODY/ns1:MCC_ADRFISCALE)}</MCC_ADRFISCALE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:MCC_ADRCORRESPONDANCE) then
            <MCC_ADRCORRESPONDANCE>{fn:data($body/ns1:BODY/ns1:MCC_ADRCORRESPONDANCE)}</MCC_ADRCORRESPONDANCE>
          else()
        }
      <MCC_CNT_NUMERO>{fn:data($body/ns1:BODY/ns1:MCC_CNT_NUMERO)}</MCC_CNT_NUMERO>
      <ADDRESS_ID>{fn:data($body/ns1:BODY/ns1:ADDRESS_ID)}</ADDRESS_ID>
</Root-Element>

};

local:func($body)