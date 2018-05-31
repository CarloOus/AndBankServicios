xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/WS_C_004_rest_response.xsd" ::)

declare variable $body as element() (:: schema-element(resv:Root-Element) ::) external;
declare variable $jurisdiction as xs:string external;
declare variable $clientApp as xs:string external;
declare variable $messageId as xs:string external;
declare variable $requestId as xs:string external;
declare variable $timestamp as xs:string external;


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
            <CODE>{fn:data($body/resv:CODE)}</CODE>
          else
            <code>0-000-00</code>
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
          if($body/resv:CNT_STATUSCONTACT) then
            <CNT_STATUSCONTACT>{fn:data($body/resv:CNT_STATUSCONTACT)}</CNT_STATUSCONTACT>
          else()
        }
        {
          if($body/resv:CNC_IDENTFISCALE) then
            <CNC_IDENTFISCALE>{fn:data($body/resv:CNC_IDENTFISCALE)}</CNC_IDENTFISCALE>
          else()
        }
        {
          if($body/resv:CNT_CONTACTUS) then
            <CNT_CONTACTUS>{fn:data($body/resv:CNT_CONTACTUS)}</CNT_CONTACTUS>
          else()
        }
        {
          if($body/resv:CNT_SITUFISCALE) then
            <CNT_SITUFISCALE>{fn:data($body/resv:CNT_SITUFISCALE)}</CNT_SITUFISCALE>
          else()
        }
        {
          if($body/resv:CNT_TAUXIMPOSITIONTXT) then
            <CNT_TAUXIMPOSITIONTXT>{fn:data($body/resv:CNT_TAUXIMPOSITIONTXT)}</CNT_TAUXIMPOSITIONTXT>
          else()
        }
        {
          if($body/resv:CNT_TAUXIMPOSITION) then
            <CNT_TAUXIMPOSITION>{fn:data($body/resv:CNT_TAUXIMPOSITION)}</CNT_TAUXIMPOSITION>
          else()
        }
        {
          if($body/resv:CNT_CODE2) then
            <CNT_CODE2>{fn:data($body/resv:CNT_CODE2)}</CNT_CODE2>
          else()
        }
        {
          if($body/resv:CNT_CODE3) then
            <CNT_CODE3>{fn:data($body/resv:CNT_CODE3)}</CNT_CODE3>
          else()
        }
        {
          if($body/resv:CNT_PAYSRESIDFISCALE) then
            <CNT_PAYSRESIDFISCALE>{fn:data($body/resv:CNT_PAYSRESIDFISCALE)}</CNT_PAYSRESIDFISCALE>
          else()
        }
        {
          if($body/resv:CNT_TAXEEU) then
            <CNT_TAXEEU>{fn:data($body/resv:CNT_TAXEEU)}</CNT_TAXEEU>
          else()
        }
        {
          if($body/resv:CNT_TAXELOCALE) then
            <CNT_TAXELOCALE>{fn:data($body/resv:CNT_TAXELOCALE)}</CNT_TAXELOCALE>
          else()
        }
        {
          if($body/resv:CNT_USRESIDENT) then
            <CNT_USRESIDENT>{fn:data($body/resv:CNT_USRESIDENT)}</CNT_USRESIDENT>
          else()
        }
        {
          if($body/resv:CNT_DOMICILELEGAL) then
            <CNT_DOMICILELEGAL>{fn:data($body/resv:CNT_DOMICILELEGAL)}</CNT_DOMICILELEGAL>
          else()
        }
        {
          if($body/resv:CNT_RAU_CLIRAC) then
            <CNT_RAU_CLIRAC>{fn:data($body/resv:CNT_RAU_CLIRAC)}</CNT_RAU_CLIRAC>
          else()
        }
        {
          if($body/resv:CNT_DOUBLE_IMPOSITION) then
            <CNT_DOUBLE_IMPOSITION>{fn:data($body/resv:CNT_DOUBLE_IMPOSITION)}</CNT_DOUBLE_IMPOSITION>
          else()
        }
        {
          if($body/resv:CNT_RACINE_RESERVEE) then
            <CNT_RACINE_RESERVEE>{fn:data($body/resv:CNT_RACINE_RESERVEE)}</CNT_RACINE_RESERVEE>
          else()
        }
        {
          if($body/resv:CNT_FAT_IDENTIFICATION) then
            <CNT_FAT_IDENTIFICATION>{fn:data($body/resv:CNT_FAT_IDENTIFICATION)}</CNT_FAT_IDENTIFICATION>
          else()
        }
        {
          if($body/resv:CNT_FAT_INDICE_US) then
            <CNT_FAT_INDICE_US>{fn:data($body/resv:CNT_FAT_INDICE_US)}</CNT_FAT_INDICE_US>
          else()
        }
        {
          if($body/resv:CNT_FAT_US_PERSON) then
            <CNT_FAT_US_PERSON>{fn:data($body/resv:CNT_FAT_US_PERSON)}</CNT_FAT_US_PERSON>
          else()
        }
        {
          if($body/resv:CNT_FAT_FFI) then
            <CNT_FAT_FFI>{fn:data($body/resv:CNT_FAT_FFI)}</CNT_FAT_FFI>
          else()
        }
        {
          if($body/resv:CNT_FAT_PATRIMOINE) then
            <CNT_FAT_PATRIMOINE>{fn:data($body/resv:CNT_FAT_PATRIMOINE)}</CNT_FAT_PATRIMOINE>
          else()
        }
        {
          if($body/resv:CNT_NUM_CNT_EXTERNE) then
            <CNT_NUM_CNT_EXTERNE>{fn:data($body/resv:CNT_NUM_CNT_EXTERNE)}</CNT_NUM_CNT_EXTERNE>
          else()
        }
        {
          if($body/resv:CNT_US_CITIZEN) then
            <CNT_US_CITIZEN>{fn:data($body/resv:CNT_US_CITIZEN)}</CNT_US_CITIZEN>
          else()
        }
        {
          if($body/resv:CNT_FAT_REC_CODE) then
            <CNT_FAT_REC_CODE>{fn:data($body/resv:CNT_FAT_REC_CODE)}</CNT_FAT_REC_CODE>
          else()
        }
        {
          if($body/resv:CNT_ASSUJETTI_TVA) then
            <CNT_ASSUJETTI_TVA>{fn:data($body/resv:CNT_ASSUJETTI_TVA)}</CNT_ASSUJETTI_TVA>
          else()
        }
        {
          if($body/resv:CNT_DATE3) then
            <CNT_DATE3>{fn:data($body/resv:CNT_DATE3)}</CNT_DATE3>
          else()
        }
        {
          if($body/resv:CNT_DATE4) then
            <CNT_DATE4>{fn:data($body/resv:CNT_DATE4)}</CNT_DATE4>
          else()
        }
        {
          if($body/resv:CNT_DATE5) then
            <CNT_DATE5>{fn:data($body/resv:CNT_DATE5)}</CNT_DATE5>
          else()
        }
        </body>
    </Root-Element>
};

local:func($body)
