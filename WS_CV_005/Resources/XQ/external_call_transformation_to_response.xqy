xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/WS_C_005_rest_response.xsd" ::)

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
            <code>{fn:data($body/resv:CODE)}</code>
          else
            <code>0-000-00</code>
        }
        {
          if($body/resv:MESSAGE) then
            <message>{fn:concat(fn:data($body/resv:MESSAGE),' ', fn:data($body/resv:DESCRIPTION))}</message>
          else()
        }
        { 
        if(empty($body/resv:CONTACTS)) then
         <CONTACTS/>
        else 
          for $relation in $body/resv:CONTACTS return
            <CONTACTS>
			{
			if($body/$relation/resv:RNC_CLI_RACINE) then
			<RNC_CLI_RACINE>{fn:data($body/$relation/resv:RNC_CLI_RACINE)}</RNC_CLI_RACINE>
			else()
			}
			{
			if($body/$relation/resv:RNC_TYPREL) then
			<RNC_TYPREL>{fn:data($body/$relation/resv:RNC_TYPREL)}</RNC_TYPREL>
			else()
			}
			{
			if($body/$relation/resv:RNC_CNT_NUMERO) then
			<RNC_CNT_NUMERO>{fn:data($body/$relation/resv:RNC_CNT_NUMERO)}</RNC_CNT_NUMERO>
			else()
			}
			{
			if($body/$relation/resv:RNC_STATUT) then
			<RNC_STATUT>{fn:data($body/$relation/resv:RNC_STATUT)}</RNC_STATUT>
			else()
			}
			{
			if($body/$relation/resv:RCN_CNT_NUMERO) then
			<RCN_CNT_NUMERO>{fn:data($body/$relation/resv:RCN_CNT_NUMERO)}</RCN_CNT_NUMERO>
			else()
			}
			{
			if($body/$relation/resv:RCN_RACINELIEE) then
			<RCN_RACINELIEE>{fn:data($body/$relation/resv:RCN_RACINELIEE)}</RCN_RACINELIEE>
			else()
			}
			{
			if($body/$relation/resv:RCN_TYPERELATION) then
			<RCN_TYPERELATION>{fn:data($body/$relation/resv:RCN_TYPERELATION)}</RCN_TYPERELATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_STATUS) then
			<RCN_STATUS>{fn:data($body/$relation/resv:RCN_STATUS)}</RCN_STATUS>
			else()
			}
			{
			if($body/$relation/resv:RNC_OPERANTCREATION) then
			<RNC_OPERANTCREATION>{fn:data($body/$relation/resv:RNC_OPERANTCREATION)}</RNC_OPERANTCREATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_DATEMUTATION) then
			<RNC_DATEMUTATION>{fn:data($body/$relation/resv:RNC_DATEMUTATION)}</RNC_DATEMUTATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_HEUREMUTATION) then
			<RNC_HEUREMUTATION>{fn:data($body/$relation/resv:RNC_HEUREMUTATION)}</RNC_HEUREMUTATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_HEURECREATION) then
			<RNC_HEURECREATION>{fn:data($body/$relation/resv:RNC_HEURECREATION)}</RNC_HEURECREATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_MAITRE_MAJ) then
			<RNC_MAITRE_MAJ>{fn:data($body/$relation/resv:RNC_MAITRE_MAJ)}</RNC_MAITRE_MAJ>
			else()
			}
			{
			if($body/$relation/resv:RNC_DATECREATION) then
			<RNC_DATECREATION>{fn:data($body/$relation/resv:RNC_DATECREATION)}</RNC_DATECREATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_OPERANTMUTATION) then
			<RNC_OPERANTMUTATION>{fn:data($body/$relation/resv:RNC_OPERANTMUTATION)}</RNC_OPERANTMUTATION>
			else()
			}
			{
			if($body/$relation/resv:RNC_DETENTION) then
			<RNC_DETENTION>{fn:data($body/$relation/resv:RNC_DETENTION)}</RNC_DETENTION>
			else()
			}
			{
			if($body/$relation/resv:RCN_OPERANTCREATION) then
			<RCN_OPERANTCREATION>{fn:data($body/$relation/resv:RCN_OPERANTCREATION)}</RCN_OPERANTCREATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_DATECREATION) then
			<RCN_DATECREATION>{fn:data($body/$relation/resv:RCN_DATECREATION)}</RCN_DATECREATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_HEURECREATION) then
			<RCN_HEURECREATION>{fn:data($body/$relation/resv:RCN_HEURECREATION)}</RCN_HEURECREATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_OPERANTMUTATION) then
			<RCN_OPERANTMUTATION>{fn:data($body/$relation/resv:RCN_OPERANTMUTATION)}</RCN_OPERANTMUTATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_DATEMUTATION) then
			<RCN_DATEMUTATION>{fn:data($body/$relation/resv:RCN_DATEMUTATION)}</RCN_DATEMUTATION>
			else()
			}
			{
			if($body/$relation/resv:RCN_HEUREMUTATION) then
			<RCN_HEUREMUTATION>{fn:data($body/$relation/resv:RCN_HEUREMUTATION)}</RCN_HEUREMUTATION>
			else()
			}
		
                  </CONTACTS>
                }
      </body>
    </Root-Element>
};

local:func($body)