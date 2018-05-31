xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/WS_C_001_rest_response.xsd" ::)

declare variable $body as element() (:: schema-element(resv:Root-Element) ::) external;
declare variable $jurisdiction as xs:string external;
declare variable $clientApp as xs:string external;
declare variable $messageId as xs:string external;
declare variable $requestId as xs:string external;


declare function local:func($body as element() (:: schema-element(resv:Root-Element) ::)) {
    <Root-Element xmlns="http://TargetNamespace.com/response_validation">
        <header>
            <jurisdiction>{$jurisdiction}</jurisdiction>
            <clientApp>{$clientApp}</clientApp>
            <messageId>{$messageId}</messageId>
            <requestId>{$requestId}</requestId>
            <timestamp>{fn:current-dateTime()}</timestamp>
        </header> 
        <body>
        {
          if($body/resv:CODE) then
            <CODE>{fn:data($body/resv:CODE)}</CODE>
          else
            <CODE>0-000-00</CODE>
        }
        {
          if($body/resv:MESSAGE) then
            <MESSAGE>{fn:concat(fn:data($body/resv:MESSAGE),' ', fn:data($body/resv:DESCRIPTION))}</MESSAGE>
          else()
        }
        {
          if($body/resv:CNT_NUMERO) then
            <CNT_NUMERO>{fn:data($body/resv:CNT_NUMERO)}</CNT_NUMERO>
          else()
        }
        {
          if($body/resv:CNT_CENTRE) then
            <CNT_CENTRE>{fn:data($body/resv:CNT_CENTRE)}</CNT_CENTRE>
          else()
        }
        {
          if($body/resv:CNT_STATUS) then
            <CNT_STATUS>{fn:data($body/resv:CNT_STATUS)}</CNT_STATUS>
          else()
        }
        {
          if($body/resv:CNT_STATUSCONTACT) then
            <CNT_STATUSCONTACT>{fn:data($body/resv:CNT_STATUSCONTACT)}</CNT_STATUSCONTACT>
          else()
        }
        {
          if($body/resv:CNT_GERANT1) then
            <CNT_GERANT1>{fn:data($body/resv:CNT_GERANT1)}</CNT_GERANT1>
          else()
        }
        {
          if($body/resv:CNC_PRENOM) then
            <CNC_PRENOM>{fn:data($body/resv:CNC_PRENOM)}</CNC_PRENOM>
          else()
        }
        {
          if($body/resv:CNC_NOM) then
            <CNC_NOM>{fn:data($body/resv:CNC_NOM)}</CNC_NOM>
          else()
        }
        {
          if($body/resv:CNT_NATIONALITE) then
            <CNT_NATIONALITE>{fn:data($body/resv:CNT_NATIONALITE)}</CNT_NATIONALITE>
          else()
        }
        {
          if($body/resv:CNT_TYPECONTACT) then
            <CNT_TYPECONTACT>{fn:data($body/resv:CNT_TYPECONTACT)}</CNT_TYPECONTACT>
          else()
        }
        {
          if($body/resv:CNC_IDENTFISCALE) then
            <CNC_IDENTFISCALE>{fn:data($body/resv:CNC_IDENTFISCALE)}</CNC_IDENTFISCALE>
          else()
        }
        {
          if($body/resv:CNT_FORMEJURIDIQUE) then
            <CNT_FORMEJURIDIQUE>{fn:data($body/resv:CNT_FORMEJURIDIQUE)}</CNT_FORMEJURIDIQUE>
          else()
        }
        {
          if($body/resv:CNT_PSEUDONYME) then
            <CNT_PSEUDONYME>{fn:data($body/resv:CNT_PSEUDONYME)}</CNT_PSEUDONYME>
          else()
        }
        {
          if($body/resv:CNC_NUMDOCIDENTITE) then
            <CNC_NUMDOCIDENTITE>{fn:data($body/resv:CNC_NUMDOCIDENTITE)}</CNC_NUMDOCIDENTITE>
          else()
        }
        {
          if($body/resv:CNT_DATENAISSANCE) then
            <CNT_DATENAISSANCE>{fn:data($body/resv:CNT_DATENAISSANCE)}</CNT_DATENAISSANCE>
          else()
        }
        {
          if($body/resv:CNT_DATEECHEANCE) then
            <CNT_DATEECHEANCE>{fn:data($body/resv:CNT_DATEECHEANCE)}</CNT_DATEECHEANCE>
          else()
        }
        {
          if($body/resv:CNT_DATEVALIDITE) then
            <CNT_DATEVALIDITE>{fn:data($body/resv:CNT_DATEVALIDITE)}</CNT_DATEVALIDITE>
          else()
        }
        {
          if($body/resv:CNC_TYPDOCIDENTITE) then
            <CNC_TYPDOCIDENTITE>{fn:data($body/resv:CNC_TYPDOCIDENTITE)}</CNC_TYPDOCIDENTITE>
          else()
        }
        {
          if($body/resv:CNC_PRENOM2) then
            <CNC_PRENOM2>{fn:data($body/resv:CNC_PRENOM2)}</CNC_PRENOM2>
          else()
        }
      </body>
    </Root-Element>
};

local:func($body)