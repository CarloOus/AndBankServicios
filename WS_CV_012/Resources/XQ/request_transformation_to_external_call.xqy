xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/request_body_validation.xsd" ::)

declare variable $body as element() external;

declare function local:func($body as element())  {
<Root-Element xmlns="http://TargetNamespace.com/request_validation_cvm">
       {
          if($body/ns1:BODY/ns1:CNT_NUMERO) then
            <CNT_NUMERO>{fn:data($body/ns1:BODY/ns1:CNT_NUMERO)}</CNT_NUMERO>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_STATUSCONTACT) then
            <CNT_STATUSCONTACT>{fn:data($body/ns1:BODY/ns1:CNT_STATUSCONTACT)}</CNT_STATUSCONTACT>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_STATUS) then
            <CNT_STATUS>{fn:data($body/ns1:BODY/ns1:CNT_STATUS)}</CNT_STATUS>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_CENTRE) then
            <CNT_CENTRE>{fn:data($body/ns1:BODY/ns1:CNT_CENTRE)}</CNT_CENTRE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_GERANT1) then
            <CNT_GERANT1>{fn:data($body/ns1:BODY/ns1:CNT_GERANT1)}</CNT_GERANT1>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_NATIONALITE) then
            <CNT_NATIONALITE>{fn:data($body/ns1:BODY/ns1:CNT_NATIONALITE)}</CNT_NATIONALITE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_FORMEJURIDIQUE) then
            <CNT_FORMEJURIDIQUE>{fn:data($body/ns1:BODY/ns1:CNT_FORMEJURIDIQUE)}</CNT_FORMEJURIDIQUE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_TYPECONTACT) then
            <CNT_TYPECONTACT>{fn:data($body/ns1:BODY/ns1:CNT_TYPECONTACT)}</CNT_TYPECONTACT>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNT_PSEUDONYME) then
            <CNT_PSEUDONYME>{fn:data($body/ns1:BODY/ns1:CNT_PSEUDONYME)}</CNT_PSEUDONYME>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNC_NOM) then
            <CNC_NOM>{fn:data($body/ns1:BODY/ns1:CNC_NOM)}</CNC_NOM>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNC_PRENOM) then
            <CNC_PRENOM>{fn:data($body/ns1:BODY/ns1:CNC_PRENOM)}</CNC_PRENOM>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNC_NUMDOCIDENTITE) then
            <CNC_NUMDOCIDENTITE>{fn:data($body/ns1:BODY/ns1:CNC_NUMDOCIDENTITE)}</CNC_NUMDOCIDENTITE>
          else()
        }
        {
          if($body/ns1:BODY/ns1:CNC_IDENTFISCALE) then
            <CNC_IDENTFISCALE>{fn:data($body/ns1:BODY/ns1:CNC_IDENTFISCALE)}</CNC_IDENTFISCALE>
          else()
        }
</Root-Element>

};

local:func($body)