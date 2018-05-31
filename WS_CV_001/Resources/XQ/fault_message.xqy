xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace reqv="http://TargetNamespace.com/request_validation";
(:: import schema at "../XSD/rest_request.xsd" ::)
declare namespace functx = "http://www.functx.com"; 

declare variable $body as element() (:: schema-element(reqv:Root-Element) ::) external;
declare variable $fault as xs:string external;

declare function functx:index-of-string
  ( $arg as xs:string? ,
    $substring as xs:string )  as xs:integer* {

  if (contains($arg, $substring))
  then (string-length(substring-before($arg, $substring))+1,
        for $other in
           functx:index-of-string(substring-after($arg, $substring),
                               $substring)
        return
          $other +
          string-length(substring-before($arg, $substring)) +
          string-length($substring))
  else ()
 } ;
 
 declare function functx:substring-after-match
  ( $arg as xs:string? ,
    $regex as xs:string )  as xs:string? {

   replace($arg,concat('^.*?',$regex),'')
 } ;
 
 declare function functx:substring-before-match
  ( $arg as xs:string? ,
    $regex as xs:string )  as xs:string {

   tokenize($arg,$regex)[1]
 } ;
if (not(empty($fault))) then
<FALLO>
    <CODE>
      {functx:substring-before-match(functx:substring-after-match($fault,'CODE":"'),'","MESSAGE')}
    </CODE>
   <MESSAGE>
      {fn:concat(functx:substring-before-match(functx:substring-after-match($fault,'MESSAGE":"'),'","DESCRIPTION'),
      (functx:substring-after-match($fault,'DESCRIPTION":"')))}
    </MESSAGE>
</FALLO>
else()