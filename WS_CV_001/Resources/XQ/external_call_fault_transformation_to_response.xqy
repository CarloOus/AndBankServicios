xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation_fault";
(:: import schema at "../XSD/WS_C_001_rest_response_fault.xsd" ::)

declare variable $body as element() (:: schema-element(resv:Fault) ::) external;
declare variable $jurisdiction as xs:string external;
declare variable $clientApp as xs:string external;
declare variable $messageId as xs:string external;
declare variable $requestId as xs:string external;


declare function local:func($body as element() (:: schema-element(resv:Fault) ::)) {
    <Root-Element xmlns="http://TargetNamespace.com/response_validation">
        <header>
            <jurisdiction>{$jurisdiction}</jurisdiction>
            <clientApp>{$clientApp}</clientApp>
            <messageId>{$messageId}</messageId>
            <requestId>{$requestId}</requestId>
            <timestamp>{fn:current-dateTime()}</timestamp>
        </header> 
        <body>
            <CODE>{fn:data('1-400-00')}</CODE>
            <MESSAGE>{fn:concat(fn:data('Recurso no disponible'), fn:data($body/resv:detail/resv:PayloadDetail/resv:text))}</MESSAGE>
      </body>
    </Root-Element>
};

local:func($body)