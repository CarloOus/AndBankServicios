xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/WS_C_009_rest_response.xsd" ::)

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
        </body>
    </Root-Element>
};

local:func($body)