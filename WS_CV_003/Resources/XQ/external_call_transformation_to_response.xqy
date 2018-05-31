xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/WS_CV_003_rest_response.xsd" ::)

declare variable $body as element() (:: schema-element(resv:Root-Element) ::) external;
declare variable $jurisdiction as xs:string external;
declare variable $clientApp as xs:string external;
declare variable $messageId as xs:string external;
declare variable $requestId as xs:string external;
declare variable $timestamp as xs:string external;
declare variable $rootElement as element() (:: schema-element(resv:Root-Element) ::) external;

declare function local:func($body as element() (:: schema-element(resv:Root-Element) ::)) {
    <Root-Element xmlns="http://TargetNamespace.com/response_validation">
        <header>
            <jurisdiction>{$jurisdiction}</jurisdiction>
            <clientApp>{$clientApp}</clientApp>
            <messageId>{$messageId}</messageId>
            <requestId>{$requestId}</requestId>
            <timestamp>{$timestamp}</timestamp>
        </header> 
      <body>
      {
        if($body/resv:CODE) then
              <code>{fn:data($body/resv:CODE)}</code>
        else
              <code>0-000-00</code>
        }
        {
        if($body/resv:MESSAGE) then
              <message>{fn:concat(fn:data($body/resv:MESSAGE),' ', fn:data($body/resv:DESCRIPTION))}</message>
        else()}
      {
        for $addresses in $rootElement/resv:ADDRESSES return
          <ADDRESSES>
              {
                if($body/resv:ADDRESSES/resv:MCC_CNT_NUMERO) then
                      <MCC_CNT_NUMERO>{fn:data($body/resv:ADDRESSES/resv:MCC_CNT_NUMERO)}</MCC_CNT_NUMERO>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_CLI_RACINE) then
                      <MCC_CLI_RACINE>{fn:concat(fn:data($body/resv:ADDRESSES/resv:MCC_CLI_RACINE),' ', fn:data($body/resv:ADDRESSES/resv:MCC_CLI_RACINE))}</MCC_CLI_RACINE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_TYPE) then
                      <MCC_TYPE>{fn:data($body/resv:ADDRESSES/resv:MCC_TYPE)}</MCC_TYPE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_STATUS) then
                      <MCC_STATUS>{fn:data($body/resv:ADDRESSES/resv:MCC_STATUS)}</MCC_STATUS>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L1) then
                      <MCC_L1>{fn:data($body/resv:ADDRESSES/resv:MCC_L1)}</MCC_L1>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_ADRFISCALE) then
                      <MCC_ADRFISCALE>{fn:data($body/resv:ADDRESSES/resv:MCC_ADRFISCALE)}</MCC_ADRFISCALE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_ADRCORRESPONDANCE) then
                      <MCC_ADRCORRESPONDANCE>{fn:data($body/resv:ADDRESSES/resv:MCC_ADRCORRESPONDANCE)}</MCC_ADRCORRESPONDANCE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_TELDE) then
                      <MCC_TELDE>{fn:data($body/resv:ADDRESSES/resv:MCC_TELDE)}</MCC_TELDE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_OPERANTCREATION) then
                      <MCC_OPERANTCREATION>{fn:data($body/resv:ADDRESSES/resv:MCC_OPERANTCREATION)}</MCC_OPERANTCREATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_RETENIRCOURRIER) then
                      <MCC_RETENIRCOURRIER>{fn:data($body/resv:ADDRESSES/resv:MCC_RETENIRCOURRIER)}</MCC_RETENIRCOURRIER>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L6) then
                      <MCC_L6>{fn:data($body/resv:ADDRESSES/resv:MCC_L6)}</MCC_L6>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_TELA) then
                      <MCC_TELA>{fn:data($body/resv:ADDRESSES/resv:MCC_TELA)}</MCC_TELA>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_PRIVE) then
                      <MCC_PRIVE>{fn:data($body/resv:ADDRESSES/resv:MCC_PRIVE)}</MCC_PRIVE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L3) then
                      <MCC_L3>{fn:data($body/resv:ADDRESSES/resv:MCC_L3)}</MCC_L3>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L2) then
                      <MCC_L2>{fn:data($body/resv:ADDRESSES/resv:MCC_L2)}</MCC_L2>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L5) then
                      <MCC_L5>{fn:data($body/resv:ADDRESSES/resv:MCC_L5)}</MCC_L5>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_L4) then
                      <MCC_L4>{fn:data($body/resv:ADDRESSES/resv:MCC_L4)}</MCC_L4>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_JOURNEE) then
                      <MCC_JOURNEE>{fn:data($body/resv:ADDRESSES/resv:MCC_JOURNEE)}</MCC_JOURNEE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_JOIGNABLE) then
                      <MCC_JOIGNABLE>{fn:data($body/resv:ADDRESSES/resv:MCC_JOIGNABLE)}</MCC_JOIGNABLE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_OPERANTMUTATION) then
                      <MCC_OPERANTMUTATION>{fn:data($body/resv:ADDRESSES/resv:MCC_OPERANTMUTATION)}</MCC_OPERANTMUTATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_ORIGINE) then
                      <MCC_ORIGINE>{fn:data($body/resv:ADDRESSES/resv:MCC_ORIGINE)}</MCC_ORIGINE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_NUMERO) then
                      <MCC_NUMERO>{fn:data($body/resv:ADDRESSES/resv:MCC_NUMERO)}</MCC_NUMERO>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_DATEMUTATION) then
                      <MCC_DATEMUTATION>{fn:data($body/resv:ADDRESSES/resv:MCC_DATEMUTATION)}</MCC_DATEMUTATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_HEUREMUTATION) then
                      <MCC_HEUREMUTATION>{fn:data($body/resv:ADDRESSES/resv:MCC_HEUREMUTATION)}</MCC_HEUREMUTATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_GENRE) then
                      <MCC_GENRE>{fn:data($body/resv:ADDRESSES/resv:MCC_GENRE)}</MCC_GENRE>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_CAB) then
                      <MCCCAB>{fn:data($body/resv:ADDRESSES/resv:MCC_CAB)}</MCCCAB>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_CAP) then
                      <MCCCAP>{fn:data($body/resv:ADDRESSES/resv:MCC_CAP)}</MCCCAP>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_PAYS) then
                      <MCC_PAYS>{fn:data($body/resv:ADDRESSES/resv:MCC_PAYS)}</MCC_PAYS>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_TELTIME) then
                      <MCC_TELTIME>{fn:data($body/resv:ADDRESSES/resv:MCC_TELTIME)}</MCC_TELTIME>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_HEURECREATION) then
                      <MCC_HEURECREATION>{fn:data($body/resv:ADDRESSES/resv:MCC_HEURECREATION)}</MCC_HEURECREATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_DATECREATION) then
                      <MCC_DATECREATION>{fn:data($body/resv:ADDRESSES/resv:MCC_DATECREATION)}</MCC_DATECREATION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_REGION) then
                      <MCC_REGION>{fn:data($body/resv:ADDRESSES/resv:MCC_REGION)}</MCC_REGION>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:ADR_Y_N) then
                      <ADR_Y_N>{fn:data($body/resv:ADDRESSES/resv:ADR_Y_N)}</ADR_Y_N>
                else()
              }
              {
                if($body/resv:ADDRESSES/resv:MCC_LIBELLE) then
                      <MCC_LIBELLE>{fn:data($body/resv:ADDRESSES/resv:MCC_LIBELLE)}</MCC_LIBELLE>
                else()
              }
          </ADDRESSES>
          }
      </body>
    </Root-Element>
};

local:func($body)