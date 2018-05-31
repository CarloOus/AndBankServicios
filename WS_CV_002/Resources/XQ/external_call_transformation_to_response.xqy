xquery version "1.0" encoding "UTF-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace resv="http://TargetNamespace.com/response_validation";
(:: import schema at "../XSD/response_body_validation.xsd" ::)

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
        if($body/resv:CNT_GROUPEGESTION) then
        <CNT_GROUPEGESTION>{fn:data($body/resv:CNT_GROUPEGESTION)}</CNT_GROUPEGESTION>
        else()
        }
        {
        if($body/resv:CNT_OPERANTCREATION) then
        <CNT_OPERANTCREATION>{fn:data($body/resv:CNT_OPERANTCREATION)}</CNT_OPERANTCREATION>
        else()
        }
        {
        if($body/resv:CNT_DATENAISSANCE) then
        <CNT_DATENAISSANCE>{fn:data($body/resv:CNT_DATENAISSANCE)}</CNT_DATENAISSANCE>
        else()
        }
        {
        if($body/resv:CNT_NUM_CNT_EXTERNE) then
        <CNT_NUM_CNT_EXTERNE>{fn:data($body/resv:CNT_NUM_CNT_EXTERNE)}</CNT_NUM_CNT_EXTERNE>
        else()
        }
        {
        if($body/resv:CNT_GERANT3) then
        <CNT_GERANT3>{fn:data($body/resv:CNT_GERANT3)}</CNT_GERANT3>
        else()
        }
        {
        if($body/resv:CNT_GERANT2) then
        <CNT_GERANT2>{fn:data($body/resv:CNT_GERANT2)}</CNT_GERANT2>
        else()
        }
        {
        if($body/resv:CNC_CNT_NUMERO) then
        <CNC_CNT_NUMERO>{fn:data($body/resv:CNC_CNT_NUMERO)}</CNC_CNT_NUMERO>
        else()
        }
        {
        if($body/resv:CNT_AGENT) then
        <CNT_AGENT>{fn:data($body/resv:CNT_AGENT)}</CNT_AGENT>
        else()
        }
        {
        if($body/resv:CNT_MONTANT3) then
        <CNT_MONTANT3>{fn:data($body/resv:CNT_MONTANT3)}</CNT_MONTANT3>
        else()
        }
        {
        if($body/resv:CNT_MONTANT4) then
        <CNT_MONTANT4>{fn:data($body/resv:CNT_MONTANT4)}</CNT_MONTANT4>
        else()
        }
        {
        if($body/resv:CNT_MONTANT1) then
        <CNT_MONTANT1>{fn:data($body/resv:CNT_MONTANT1)}</CNT_MONTANT1>
        else()
        }
        {
        if($body/resv:CNT_MONTANT2) then
        <CNT_MONTANT2>{fn:data($body/resv:CNT_MONTANT2)}</CNT_MONTANT2>
        else()
        }
        {
        if($body/resv:CNT_DATEDECES) then
        <CNT_DATEDECES>{fn:data($body/resv:CNT_DATEDECES)}</CNT_DATEDECES>
        else()
        }
        {
        if($body/resv:CNT_MONTANT5) then
        <CNT_MONTANT5>{fn:data($body/resv:CNT_MONTANT5)}</CNT_MONTANT5>
        else()
        }
        {
        if($body/resv:CNT_DATEEMISSION) then
        <CNT_DATEEMISSION>{fn:data($body/resv:CNT_DATEEMISSION)}</CNT_DATEEMISSION>
        else()
        }
        {
        if($body/resv:CNT_DATE2) then
        <CNT_DATE2>{fn:data($body/resv:CNT_DATE2)}</CNT_DATE2>
        else()
        }
        {
        if($body/resv:CNT_TEXTE2) then
        <CNT_TEXTE2>{fn:data($body/resv:CNT_TEXTE2)}</CNT_TEXTE2>
        else()
        }
        {
        if($body/resv:CNT_DATE3) then
        <CNT_DATE3>{fn:data($body/resv:CNT_DATE3)}</CNT_DATE3>
        else()
        }
        {
        if($body/resv:CNT_TEXTE3) then
        <CNT_TEXTE3>{fn:data($body/resv:CNT_TEXTE3)}</CNT_TEXTE3>
        else()
        }
        {
        if($body/resv:CNT_TEXTE4) then
        <CNT_TEXTE4>{fn:data($body/resv:CNT_TEXTE4)}</CNT_TEXTE4>
        else()
        }
        {
        if($body/resv:CNT_DATE1) then
        <CNT_DATE1>{fn:data($body/resv:CNT_DATE1)}</CNT_DATE1>
        else()
        }
        {
        if($body/resv:CNT_TEXTE5) then
        <CNT_TEXTE5>{fn:data($body/resv:CNT_TEXTE5)}</CNT_TEXTE5>
        else()
        }
        {
        if($body/resv:CNT_DATE5) then
        <CNT_DATE5>{fn:data($body/resv:CNT_DATE5)}</CNT_DATE5>
        else()
        }
        {
        if($body/resv:CNT_TEXTE1) then
        <CNT_TEXTE1>{fn:data($body/resv:CNT_TEXTE1)}</CNT_TEXTE1>
        else()
        }
        {
        if($body/resv:CNT_DATE4) then
        <CNT_DATE4>{fn:data($body/resv:CNT_DATE4)}</CNT_DATE4>
        else()
        }
        {
        if($body/resv:CNT_DATEECHEANCE) then
        <CNT_DATEECHEANCE>{fn:data($body/resv:CNT_DATEECHEANCE)}</CNT_DATEECHEANCE>
        else()
        }
        {
        if($body/resv:CNC_NUMIDENTNATIO) then
        <CNC_NUMIDENTNATIO>{fn:data($body/resv:CNC_NUMIDENTNATIO)}</CNC_NUMIDENTNATIO>
        else()
        }
        {
        if($body/resv:CNT_DATEVALIDITE) then
        <CNT_DATEVALIDITE>{fn:data($body/resv:CNT_DATEVALIDITE)}</CNT_DATEVALIDITE>
        else()
        }
        {
        if($body/resv:CNT_PHOTO) then
        <CNT_PHOTO>{fn:data($body/resv:CNT_PHOTO)}</CNT_PHOTO>
        else()
        }
        {
        if($body/resv:CNT_PASSPORT) then
        <CNT_PASSPORT>{fn:data($body/resv:CNT_PASSPORT)}</CNT_PASSPORT>
        else()
        }
        {
        if($body/resv:CNT_SIGNATURE) then
        <CNT_SIGNATURE>{fn:data($body/resv:CNT_SIGNATURE)}</CNT_SIGNATURE>
        else()
        }
        {
        if($body/resv:CNT_LANGUE) then
        <CNT_LANGUE>{fn:data($body/resv:CNT_LANGUE)}</CNT_LANGUE>
        else()
        }
        {
        if($body/resv:CNT_LANGUEDOCUMENTS) then
        <CNT_LANGUEDOCUMENTS>{fn:data($body/resv:CNT_LANGUEDOCUMENTS)}</CNT_LANGUEDOCUMENTS>
        else()
        }
        {
        if($body/resv:CNT_ETATCIVIL) then
        <CNT_ETATCIVIL>{fn:data($body/resv:CNT_ETATCIVIL)}</CNT_ETATCIVIL>
        else()
        }
        {
        if($body/resv:CNT_CIVILITE) then
        <CNT_CIVILITE>{fn:data($body/resv:CNT_CIVILITE)}</CNT_CIVILITE>
        else()
        }
        {
        if($body/resv:CNT_SEXE) then
        <CNT_SEXE>{fn:data($body/resv:CNT_SEXE)}</CNT_SEXE>
        else()
        }
        {
        if($body/resv:CNT_NATIONALITE2) then
        <CNT_NATIONALITE2>{fn:data($body/resv:CNT_NATIONALITE2)}</CNT_NATIONALITE2>
        else()
        }
        {
        if($body/resv:CNT_PAYSNAISSANCE) then
        <CNT_PAYSNAISSANCE>{fn:data($body/resv:CNT_PAYSNAISSANCE)}</CNT_PAYSNAISSANCE>
        else()
        }
        {
        if($body/resv:CNT_SIGNEASTRO) then
        <CNT_SIGNEASTRO>{fn:data($body/resv:CNT_SIGNEASTRO)}</CNT_SIGNEASTRO>
        else()
        }
        {
        if($body/resv:CNT_NBRENFANTS) then
        <CNT_NBRENFANTS>{fn:data($body/resv:CNT_NBRENFANTS)}</CNT_NBRENFANTS>
        else()
        }
        {
        if($body/resv:CNT_NBRENFANTS2) then
        <CNT_NBRENFANTS2>{fn:data($body/resv:CNT_NBRENFANTS2)}</CNT_NBRENFANTS2>
        else()
        }
        {
        if($body/resv:CNT_CODE1) then
        <CNT_CODE1>{fn:data($body/resv:CNT_CODE1)}</CNT_CODE1>
        else()
        }
        {
        if($body/resv:CNT_NIVEAUETUDE) then
        <CNT_NIVEAUETUDE>{fn:data($body/resv:CNT_NIVEAUETUDE)}</CNT_NIVEAUETUDE>
        else()
        }
        {
        if($body/resv:CNT_SECTEURACTIVITE) then
        <CNT_SECTEURACTIVITE>{fn:data($body/resv:CNT_SECTEURACTIVITE)}</CNT_SECTEURACTIVITE>
        else()
        }
        {
        if($body/resv:CNT_PHRASECONV) then
        <CNT_PHRASECONV>{fn:data($body/resv:CNT_PHRASECONV)}</CNT_PHRASECONV>
        else()
        }
        {
        if($body/resv:CNT_HORIZONINVEST) then
        <CNT_HORIZONINVEST>{fn:data($body/resv:CNT_HORIZONINVEST)}</CNT_HORIZONINVEST>
        else()
        }
        {
        if($body/resv:CNT_CONNAISSANCEMARCHES) then
        <CNT_CONNAISSANCEMARCHES>{fn:data($body/resv:CNT_CONNAISSANCEMARCHES)}</CNT_CONNAISSANCEMARCHES>
        else()
        }
        {
        if($body/resv:CNT_AGENTPUBLIC) then
        <CNT_AGENTPUBLIC>{fn:data($body/resv:CNT_AGENTPUBLIC)}</CNT_AGENTPUBLIC>
        else()
        }
        {
        if($body/resv:CNT_LIENINTERNE) then
        <CNT_LIENINTERNE>{fn:data($body/resv:CNT_LIENINTERNE)}</CNT_LIENINTERNE>
        else()
        }
        {
        if($body/resv:CNT_PATRIMOINEEXTERNEGLOBAL) then
        <CNT_PATRIMOINEEXTERNEGLOBAL>{fn:data($body/resv:CNT_PATRIMOINEEXTERNEGLOBAL)}</CNT_PATRIMOINEEXTERNEGLOBAL>
        else()
        }
        {
        if($body/resv:CNT_PROVFONDS) then
        <CNT_PROVFONDS>{fn:data($body/resv:CNT_PROVFONDS)}</CNT_PROVFONDS>
        else()
        }
        {
        if($body/resv:CNT_PROFESSION) then
        <CNT_PROFESSION>{fn:data($body/resv:CNT_PROFESSION)}</CNT_PROFESSION>
        else()
        }
        {
        if($body/resv:CNT_RELATIONBANQUE) then
        <CNT_RELATIONBANQUE>{fn:data($body/resv:CNT_RELATIONBANQUE)}</CNT_RELATIONBANQUE>
        else()
        }
        {
        if($body/resv:CNT_CDORIGINEENTREERELATION) then
        <CNT_CDORIGINEENTREERELATION>{fn:data($body/resv:CNT_CDORIGINEENTREERELATION)}</CNT_CDORIGINEENTREERELATION>
        else()
        }
        {
        if($body/resv:CNT_CODEREPORTINGFISCAL) then
        <CNT_CODEREPORTINGFISCAL>{fn:data($body/resv:CNT_CODEREPORTINGFISCAL)}</CNT_CODEREPORTINGFISCAL>
        else()
        }
        {
        if($body/resv:CNT_REVENUSINVESTISSEMENTS) then
        <CNT_REVENUSINVESTISSEMENTS>{fn:data($body/resv:CNT_REVENUSINVESTISSEMENTS)}</CNT_REVENUSINVESTISSEMENTS>
        else()
        }
        {
        if($body/resv:CNT_PAYSARISQUE) then
        <CNT_PAYSARISQUE>{fn:data($body/resv:CNT_PAYSARISQUE)}</CNT_PAYSARISQUE>
        else()
        }
        {
        if($body/resv:CNT_ACTIVITEARISQUE) then
        <CNT_ACTIVITEARISQUE>{fn:data($body/resv:CNT_ACTIVITEARISQUE)}</CNT_ACTIVITEARISQUE>
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
        if($body/resv:CNT_REGIMEMATRIMONIAL) then
        <CNT_REGIMEMATRIMONIAL>{fn:data($body/resv:CNT_REGIMEMATRIMONIAL)}</CNT_REGIMEMATRIMONIAL>
        else()
        }
        {
        if($body/resv:CNT_RETRAITE) then
        <CNT_RETRAITE>{fn:data($body/resv:CNT_RETRAITE)}</CNT_RETRAITE>
        else()
        }
        {
        if($body/resv:CNT_CHIFFREAFFAIRE) then
        <CNT_CHIFFREAFFAIRE>{fn:data($body/resv:CNT_CHIFFREAFFAIRE)}</CNT_CHIFFREAFFAIRE>
        else()
        }
        {
        if($body/resv:CNT_DEVISECA) then
        <CNT_DEVISECA>{fn:data($body/resv:CNT_DEVISECA)}</CNT_DEVISECA>
        else()
        }
        {
        if($body/resv:CNT_PRODUITPRINCIPAL) then
        <CNT_PRODUITPRINCIPAL>{fn:data($body/resv:CNT_PRODUITPRINCIPAL)}</CNT_PRODUITPRINCIPAL>
        else()
        }
        {
        if($body/resv:CNT_MARCHEPRINCIPAL) then
        <CNT_MARCHEPRINCIPAL>{fn:data($body/resv:CNT_MARCHEPRINCIPAL)}</CNT_MARCHEPRINCIPAL>
        else()
        }
        {
        if($body/resv:CNT_NBRESALARIES) then
        <CNT_NBRESALARIES>{fn:data($body/resv:CNT_NBRESALARIES)}</CNT_NBRESALARIES>
        else()
        }
        {
        if($body/resv:CNT_SITEINTERNET) then
        <CNT_SITEINTERNET>{fn:data($body/resv:CNT_SITEINTERNET)}</CNT_SITEINTERNET>
        else()
        }
        {
        if($body/resv:CNT_IMPOTSURFORTUNE) then
        <CNT_IMPOTSURFORTUNE>{fn:data($body/resv:CNT_IMPOTSURFORTUNE)}</CNT_IMPOTSURFORTUNE>
        else()
        }
        {
        if($body/resv:CNT_INITIE) then
        <CNT_INITIE>{fn:data($body/resv:CNT_INITIE)}</CNT_INITIE>
        else()
        }
        {
        if($body/resv:CNT_SEGMENTATION) then
        <CNT_SEGMENTATION>{fn:data($body/resv:CNT_SEGMENTATION)}</CNT_SEGMENTATION>
        else()
        }
        {
        if($body/resv:CNT_CONTACTUS) then
        <CNT_CONTACTUS>{fn:data($body/resv:CNT_CONTACTUS)}</CNT_CONTACTUS>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE) then
        <CNT_MONNAIE>{fn:data($body/resv:CNT_MONNAIE)}</CNT_MONNAIE>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE1) then
        <CNT_MONNAIE1>{fn:data($body/resv:CNT_MONNAIE1)}</CNT_MONNAIE1>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE2) then
        <CNT_MONNAIE2>{fn:data($body/resv:CNT_MONNAIE2)}</CNT_MONNAIE2>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE3) then
        <CNT_MONNAIE3>{fn:data($body/resv:CNT_MONNAIE3)}</CNT_MONNAIE3>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE4) then
        <CNT_MONNAIE4>{fn:data($body/resv:CNT_MONNAIE4)}</CNT_MONNAIE4>
        else()
        }
        {
        if($body/resv:CNT_MONNAIE5) then
        <CNT_MONNAIE5>{fn:data($body/resv:CNT_MONNAIE5)}</CNT_MONNAIE5>
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
        if($body/resv:CNT_CODE4) then
        <CNT_CODE4>{fn:data($body/resv:CNT_CODE4)}</CNT_CODE4>
        else()
        }
        {
        if($body/resv:CNT_CODE5) then
        <CNT_CODE5>{fn:data($body/resv:CNT_CODE5)}</CNT_CODE5>
        else()
        }
        {
        if($body/resv:CNT_DATECREATION) then
        <CNT_DATECREATION>{fn:data($body/resv:CNT_DATECREATION)}</CNT_DATECREATION>
        else()
        }
        {
        if($body/resv:CNT_HEURECREATION) then
        <CNT_HEURECREATION>{fn:data($body/resv:CNT_HEURECREATION)}</CNT_HEURECREATION>
        else()
        }
        {
        if($body/resv:CNT_OPERANTMUTATION) then
        <CNT_OPERANTMUTATION>{fn:data($body/resv:CNT_OPERANTMUTATION)}</CNT_OPERANTMUTATION>
        else()
        }
        {
        if($body/resv:CNT_DATEMUTATION) then
        <CNT_DATEMUTATION>{fn:data($body/resv:CNT_DATEMUTATION)}</CNT_DATEMUTATION>
        else()
        }
        {
        if($body/resv:CNT_HEUREMUTATION) then
        <CNT_HEUREMUTATION>{fn:data($body/resv:CNT_HEUREMUTATION)}</CNT_HEUREMUTATION>
        else()
        }
        {
        if($body/resv:CNT_ANCIENNEREFCONTACT) then
        <CNT_ANCIENNEREFCONTACT>{fn:data($body/resv:CNT_ANCIENNEREFCONTACT)}</CNT_ANCIENNEREFCONTACT>
        else()
        }
        {
        if($body/resv:CNT_PROFILGESTION) then
        <CNT_PROFILGESTION>{fn:data($body/resv:CNT_PROFILGESTION)}</CNT_PROFILGESTION>
        else()
        }
        {
        if($body/resv:CNT_COMMENTAIREPRO) then
        <CNT_COMMENTAIREPRO>{fn:data($body/resv:CNT_COMMENTAIREPRO)}</CNT_COMMENTAIREPRO>
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
        if($body/resv:CNT_NIVEAUCLIENTELE) then
        <CNT_NIVEAUCLIENTELE>{fn:data($body/resv:CNT_NIVEAUCLIENTELE)}</CNT_NIVEAUCLIENTELE>
        else()
        }
        {
        if($body/resv:CNT_USRESIDENT) then
        <CNT_USRESIDENT>{fn:data($body/resv:CNT_USRESIDENT)}</CNT_USRESIDENT>
        else()
        }
        {
        if($body/resv:CNT_LIEUNAISSANCE) then
        <CNT_LIEUNAISSANCE>{fn:data($body/resv:CNT_LIEUNAISSANCE)}</CNT_LIEUNAISSANCE>
        else()
        }
        {
        if($body/resv:CNT_POTENTIEL) then
        <CNT_POTENTIEL>{fn:data($body/resv:CNT_POTENTIEL)}</CNT_POTENTIEL>
        else()
        }
        {
        if($body/resv:CNT_EMPLOYEUR) then
        <CNT_EMPLOYEUR>{fn:data($body/resv:CNT_EMPLOYEUR)}</CNT_EMPLOYEUR>
        else()
        }
        {
        if($body/resv:CNT_DESCRACTIVITE) then
        <CNT_DESCRACTIVITE>{fn:data($body/resv:CNT_DESCRACTIVITE)}</CNT_DESCRACTIVITE>
        else()
        }
        {
        if($body/resv:CNT_DESCRORIGFOND) then
        <CNT_DESCRORIGFOND>{fn:data($body/resv:CNT_DESCRORIGFOND)}</CNT_DESCRORIGFOND>
        else()
        }
        {
        if($body/resv:CNT_PATRIMOINEGLOBAL) then
        <CNT_PATRIMOINEGLOBAL>{fn:data($body/resv:CNT_PATRIMOINEGLOBAL)}</CNT_PATRIMOINEGLOBAL>
        else()
        }
        {
        if($body/resv:CNT_ORIGINE) then
        <CNT_ORIGINE>{fn:data($body/resv:CNT_ORIGINE)}</CNT_ORIGINE>
        else()
        }
        {
        if($body/resv:CNT_COMMENTAIREORIGINE) then
        <CNT_COMMENTAIREORIGINE>{fn:data($body/resv:CNT_COMMENTAIREORIGINE)}</CNT_COMMENTAIREORIGINE>
        else()
        }
        {
        if($body/resv:CNT_VIA) then
        <CNT_VIA>{fn:data($body/resv:CNT_VIA)}</CNT_VIA>
        else()
        }
        {
        if($body/resv:CNT_VIAACCOUNTMANAGER) then
        <CNT_VIAACCOUNTMANAGER>{fn:data($body/resv:CNT_VIAACCOUNTMANAGER)}</CNT_VIAACCOUNTMANAGER>
        else()
        }
        {
        if($body/resv:CNT_VIASALESMANAGER) then
        <CNT_VIASALESMANAGER>{fn:data($body/resv:CNT_VIASALESMANAGER)}</CNT_VIASALESMANAGER>
        else()
        }
        {
        if($body/resv:CNT_VIAAGENT) then
        <CNT_VIAAGENT>{fn:data($body/resv:CNT_VIAAGENT)}</CNT_VIAAGENT>
        else()
        }
        {
        if($body/resv:CNT_VIABUREAUREPRES) then
        <CNT_VIABUREAUREPRES>{fn:data($body/resv:CNT_VIABUREAUREPRES)}</CNT_VIABUREAUREPRES>
        else()
        }
        {
        if($body/resv:CNT_VIANOTRESITE) then
        <CNT_VIANOTRESITE>{fn:data($body/resv:CNT_VIANOTRESITE)}</CNT_VIANOTRESITE>
        else()
        }
        {
        if($body/resv:CNT_VIAAUTRE) then
        <CNT_VIAAUTRE>{fn:data($body/resv:CNT_VIAAUTRE)}</CNT_VIAAUTRE>
        else()
        }
        {
        if($body/resv:CNT_REMARQUE) then
        <CNT_REMARQUE>{fn:data($body/resv:CNT_REMARQUE)}</CNT_REMARQUE>
        else()
        }
        {
        if($body/resv:CNT_ASSISTANT) then
        <CNT_ASSISTANT>{fn:data($body/resv:CNT_ASSISTANT)}</CNT_ASSISTANT>
        else()
        }
        {
        if($body/resv:CNT_PROFESSIONNEL) then
        <CNT_PROFESSIONNEL>{fn:data($body/resv:CNT_PROFESSIONNEL)}</CNT_PROFESSIONNEL>
        else()
        }
        {
        if($body/resv:CNT_COMMERCIAL) then
        <CNT_COMMERCIAL>{fn:data($body/resv:CNT_COMMERCIAL)}</CNT_COMMERCIAL>
        else()
        }
        {
        if($body/resv:CNT_BUREAUREPRES) then
        <CNT_BUREAUREPRES>{fn:data($body/resv:CNT_BUREAUREPRES)}</CNT_BUREAUREPRES>
        else()
        }
        {
        if($body/resv:CNT_NATURE) then
        <CNT_NATURE>{fn:data($body/resv:CNT_NATURE)}</CNT_NATURE>
        else()
        }
        {
        if($body/resv:CNT_SECURISE) then
        <CNT_SECURISE>{fn:data($body/resv:CNT_SECURISE)}</CNT_SECURISE>
        else()
        }
        {
        if($body/resv:CNT_LIEUTRAVAIL) then
        <CNT_LIEUTRAVAIL>{fn:data($body/resv:CNT_LIEUTRAVAIL)}</CNT_LIEUTRAVAIL>
        else()
        }
        {
        if($body/resv:CNT_DOMICILELEGAL) then
        <CNT_DOMICILELEGAL>{fn:data($body/resv:CNT_DOMICILELEGAL)}</CNT_DOMICILELEGAL>
        else()
        }
        {
        if($body/resv:CNT_PSD_NUMERO) then
        <CNT_PSD_NUMERO>{fn:data($body/resv:CNT_PSD_NUMERO)}</CNT_PSD_NUMERO>
        else()
        }
        {
        if($body/resv:CNT_RAU_CLIRAC) then
        <CNT_RAU_CLIRAC>{fn:data($body/resv:CNT_RAU_CLIRAC)}</CNT_RAU_CLIRAC>
        else()
        }
        {
        if($body/resv:CNT_SECTEURECONOMIQUE) then
        <CNT_SECTEURECONOMIQUE>{fn:data($body/resv:CNT_SECTEURECONOMIQUE)}</CNT_SECTEURECONOMIQUE>
        else()
        }
        {
        if($body/resv:CNT_DOUBLE_IMPOSITION) then
        <CNT_DOUBLE_IMPOSITION>{fn:data($body/resv:CNT_DOUBLE_IMPOSITION)}</CNT_DOUBLE_IMPOSITION>
        else()
        }
        {
        if($body/resv:CNT_DATEREALCA) then
        <CNT_DATEREALCA>{fn:data($body/resv:CNT_DATEREALCA)}</CNT_DATEREALCA>
        else()
        }
        {
        if($body/resv:CNT_DATEEMBAUCHE) then
        <CNT_DATEEMBAUCHE>{fn:data($body/resv:CNT_DATEEMBAUCHE)}</CNT_DATEEMBAUCHE>
        else()
        }
        {
        if($body/resv:CNT_JUR) then
        <CNT_JUR>{fn:data($body/resv:CNT_JUR)}</CNT_JUR>
        else()
        }
        {
        if($body/resv:CNT_DATENOMINATION) then
        <CNT_DATENOMINATION>{fn:data($body/resv:CNT_DATENOMINATION)}</CNT_DATENOMINATION>
        else()
        }
        {
        if($body/resv:CNT_COUR) then
        <CNT_COUR>{fn:data($body/resv:CNT_COUR)}</CNT_COUR>
        else()
        }
        {
        if($body/resv:CNT_TRIBUNAL) then
        <CNT_TRIBUNAL>{fn:data($body/resv:CNT_TRIBUNAL)}</CNT_TRIBUNAL>
        else()
        }
        {
        if($body/resv:CNT_REGION) then
        <CNT_REGION>{fn:data($body/resv:CNT_REGION)}</CNT_REGION>
        else()
        }
        {
        if($body/resv:CNT_CONSEIL) then
        <CNT_CONSEIL>{fn:data($body/resv:CNT_CONSEIL)}</CNT_CONSEIL>
        else()
        }
        {
        if($body/resv:CNT_NUMAFFIALIATION) then
        <CNT_NUMAFFIALIATION>{fn:data($body/resv:CNT_NUMAFFIALIATION)}</CNT_NUMAFFIALIATION>
        else()
        }
        {
        if($body/resv:CNT_REFERENCE) then
        <CNT_REFERENCE>{fn:data($body/resv:CNT_REFERENCE)}</CNT_REFERENCE>
        else()
        }
        {
        if($body/resv:CNT_DATECHEANCE) then
        <CNT_DATECHEANCE>{fn:data($body/resv:CNT_DATECHEANCE)}</CNT_DATECHEANCE>
        else()
        }
        {
        if($body/resv:CNT_JURRATTACHEMENT) then
        <CNT_JURRATTACHEMENT>{fn:data($body/resv:CNT_JURRATTACHEMENT)}</CNT_JURRATTACHEMENT>
        else()
        }
        {
        if($body/resv:CNT_CONV_JUR) then
        <CNT_CONV_JUR>{fn:data($body/resv:CNT_CONV_JUR)}</CNT_CONV_JUR>
        else()
        }
        {
        if($body/resv:CNT_CODE_SEGMENT) then
        <CNT_CODE_SEGMENT>{fn:data($body/resv:CNT_CODE_SEGMENT)}</CNT_CODE_SEGMENT>
        else()
        }
        {
        if($body/resv:CNT_CODE_TRIBUNAL) then
        <CNT_CODE_TRIBUNAL>{fn:data($body/resv:CNT_CODE_TRIBUNAL)}</CNT_CODE_TRIBUNAL>
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
        if($body/resv:CNT_RISQUE_IMAGE) then
        <CNT_RISQUE_IMAGE>{fn:data($body/resv:CNT_RISQUE_IMAGE)}</CNT_RISQUE_IMAGE>
        else()
        }
        {
        if($body/resv:CNT_CIS_NOTE_RISQUE) then
        <CNT_CIS_NOTE_RISQUE>{fn:data($body/resv:CNT_CIS_NOTE_RISQUE)}</CNT_CIS_NOTE_RISQUE>
        else()
        }
        {
        if($body/resv:CNT_CIS_RECALCUL_SCORING) then
        <CNT_CIS_RECALCUL_SCORING>{fn:data($body/resv:CNT_CIS_RECALCUL_SCORING)}</CNT_CIS_RECALCUL_SCORING>
        else()
        }
        {
        if($body/resv:CNT_LIEUDELIVRANCE) then
        <CNT_LIEUDELIVRANCE>{fn:data($body/resv:CNT_LIEUDELIVRANCE)}</CNT_LIEUDELIVRANCE>
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
        if($body/resv:CNT_SCORE_RISQUE) then
        <CNT_SCORE_RISQUE>{fn:data($body/resv:CNT_SCORE_RISQUE)}</CNT_SCORE_RISQUE>
        else()
        }
        {
        if($body/resv:CNC_NOMJEUNEFILLE) then
        <CNC_NOMJEUNEFILLE>{fn:data($body/resv:CNC_NOMJEUNEFILLE)}</CNC_NOMJEUNEFILLE>
        else()
        }
        {
        if($body/resv:CNC_TYPDOCIDENTITE) then
        <CNC_TYPDOCIDENTITE>{fn:data($body/resv:CNC_TYPDOCIDENTITE)}</CNC_TYPDOCIDENTITE>
        else()
        }
        {
        if($body/resv:CNC_RAISONSOCIALE) then
        <CNC_RAISONSOCIALE>{fn:data($body/resv:CNC_RAISONSOCIALE)}</CNC_RAISONSOCIALE>
        else()
        }
        {
        if($body/resv:CNC_SNDX_NOM_ALPHA) then
        <CNC_SNDX_NOM_ALPHA>{fn:data($body/resv:CNC_SNDX_NOM_ALPHA)}</CNC_SNDX_NOM_ALPHA>
        else()
        }
        {
        if($body/resv:CNC_SNDX_NOM_NOMBRE) then
        <CNC_SNDX_NOM_NOMBRE>{fn:data($body/resv:CNC_SNDX_NOM_NOMBRE)}</CNC_SNDX_NOM_NOMBRE>
        else()
        }
        {
        if($body/resv:CNC_SNDX_PRENOM_ALPHA) then
        <CNC_SNDX_PRENOM_ALPHA>{fn:data($body/resv:CNC_SNDX_PRENOM_ALPHA)}</CNC_SNDX_PRENOM_ALPHA>
        else()
        }
        {
        if($body/resv:CNC_SNDX_PRENOM_NOMBRE) then
        <CNC_SNDX_PRENOM_NOMBRE>{fn:data($body/resv:CNC_SNDX_PRENOM_NOMBRE)}</CNC_SNDX_PRENOM_NOMBRE>
        else()
        }
        {
        if($body/resv:CNC_SNDX_NOMJF_ALPHA) then
        <CNC_SNDX_NOMJF_ALPHA>{fn:data($body/resv:CNC_SNDX_NOMJF_ALPHA)}</CNC_SNDX_NOMJF_ALPHA>
        else()
        }
        {
        if($body/resv:CNC_SNDX_NOMJF_NOMBRE) then
        <CNC_SNDX_NOMJF_NOMBRE>{fn:data($body/resv:CNC_SNDX_NOMJF_NOMBRE)}</CNC_SNDX_NOMJF_NOMBRE>
        else()
        }
        {
        if($body/resv:CNC_DATE_VERIF_WCK) then
        <CNC_DATE_VERIF_WCK>{fn:data($body/resv:CNC_DATE_VERIF_WCK)}</CNC_DATE_VERIF_WCK>
        else()
        }
        {
        if($body/resv:CNC_SYN_NOM) then
        <CNC_SYN_NOM>{fn:data($body/resv:CNC_SYN_NOM)}</CNC_SYN_NOM>
        else()
        }
        {
        if($body/resv:CNC_SYN_PRENOM) then
        <CNC_SYN_PRENOM>{fn:data($body/resv:CNC_SYN_PRENOM)}</CNC_SYN_PRENOM>
        else()
        }
        {
        if($body/resv:CNC_SYN_NOMJFILLE) then
        <CNC_SYN_NOMJFILLE>{fn:data($body/resv:CNC_SYN_NOMJFILLE)}</CNC_SYN_NOMJFILLE>
        else()
        }
        {
        if($body/resv:CNC_PRENOM2) then
        <CNC_PRENOM2>{fn:data($body/resv:CNC_PRENOM2)}</CNC_PRENOM2>
        else()
        }
        {
        if($body/resv:CNC_PRENOM3) then
        <CNC_PRENOM3>{fn:data($body/resv:CNC_PRENOM3)}</CNC_PRENOM3>
        else()
        }
        {
        if($body/resv:CNC_PAYSIDENTNATIO2) then
        <CNC_PAYSIDENTNATIO2>{fn:data($body/resv:CNC_PAYSIDENTNATIO2)}</CNC_PAYSIDENTNATIO2>
        else()
        }
        {
        if($body/resv:CNC_TYPDOCIDENTITE2) then
        <CNC_TYPDOCIDENTITE2>{fn:data($body/resv:CNC_TYPDOCIDENTITE2)}</CNC_TYPDOCIDENTITE2>
        else()
        }
        {
        if($body/resv:CNC_NUMIDENTNATIO2) then
        <CNC_NUMIDENTNATIO2>{fn:data($body/resv:CNC_NUMIDENTNATIO2)}</CNC_NUMIDENTNATIO2>
        else()
        }
        {
        if($body/resv:CNC_INFOIDENTNATIO2) then
        <CNC_INFOIDENTNATIO2>{fn:data($body/resv:CNC_INFOIDENTNATIO2)}</CNC_INFOIDENTNATIO2>
        else()
        }
        {
        if($body/resv:CNC_DATEEMISSION2) then
        <CNC_DATEEMISSION2>{fn:data($body/resv:CNC_DATEEMISSION2)}</CNC_DATEEMISSION2>
        else()
        }
        {
        if($body/resv:CNC_DATEECHEANCE2) then
        <CNC_DATEECHEANCE2>{fn:data($body/resv:CNC_DATEECHEANCE2)}</CNC_DATEECHEANCE2>
        else()
        }
        {
        if($body/resv:CNC_PAYSIDENTNATIO3) then
        <CNC_PAYSIDENTNATIO3>{fn:data($body/resv:CNC_PAYSIDENTNATIO3)}</CNC_PAYSIDENTNATIO3>
        else()
        }
        {
        if($body/resv:CNC_TYPDOCIDENTITE3) then
        <CNC_TYPDOCIDENTITE3>{fn:data($body/resv:CNC_TYPDOCIDENTITE3)}</CNC_TYPDOCIDENTITE3>
        else()
        }
        {
        if($body/resv:CNC_NUMIDENTNATIO3) then
        <CNC_NUMIDENTNATIO3>{fn:data($body/resv:CNC_NUMIDENTNATIO3)}</CNC_NUMIDENTNATIO3>
        else()
        }
        {
        if($body/resv:CNC_INFOIDENTNATIO3) then
        <CNC_INFOIDENTNATIO3>{fn:data($body/resv:CNC_INFOIDENTNATIO3)}</CNC_INFOIDENTNATIO3>
        else()
        }
        {
        if($body/resv:CNC_DATEEMISSION3) then
        <CNC_DATEEMISSION3>{fn:data($body/resv:CNC_DATEEMISSION3)}</CNC_DATEEMISSION3>
        else()
        }
        {
        if($body/resv:CNC_DATEECHEANCE3) then
        <CNC_DATEECHEANCE3>{fn:data($body/resv:CNC_DATEECHEANCE3)}</CNC_DATEECHEANCE3>
        else()
        }
        {
        if($body/resv:CNT_SEGMENTMARCHE1) then
        <CNT_SEGMENTMARCHE1>{fn:data($body/resv:CNT_SEGMENTMARCHE1)}</CNT_SEGMENTMARCHE1>
        else()
        }
        {
        if($body/resv:CNT_SEGMENTMARCHE2) then
        <CNT_SEGMENTMARCHE2>{fn:data($body/resv:CNT_SEGMENTMARCHE2)}</CNT_SEGMENTMARCHE2>
        else()
        }
        {
        if($body/resv:CNT_OPERANTMODIF) then
        <CNT_OPERANTMODIF>{fn:data($body/resv:CNT_OPERANTMODIF)}</CNT_OPERANTMODIF>
        else()
        }
        {
        if($body/resv:CNT_DATEMODIF) then
        <CNT_DATEMODIF>{fn:data($body/resv:CNT_DATEMODIF)}</CNT_DATEMODIF>
        else()
        }
        {
        if($body/resv:CNT_HEUREMODIF) then
        <CNT_HEUREMODIF>{fn:data($body/resv:CNT_HEUREMODIF)}</CNT_HEUREMODIF>
        else()
        }
        {
        if($body/resv:CNT_STATUS_VALIDITE) then
        <CNT_STATUS_VALIDITE>{fn:data($body/resv:CNT_STATUS_VALIDITE)}</CNT_STATUS_VALIDITE>
        else()
        }       
      </body>
    </Root-Element>
};

local:func($body)