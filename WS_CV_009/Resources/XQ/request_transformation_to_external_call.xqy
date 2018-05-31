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
        if($body/ns1:BODY/ns1:CNT_GERANT2) then
        <CNT_GERANT2>{fn:data($body/ns1:BODY/ns1:CNT_GERANT2)}</CNT_GERANT2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_GERANT3) then
        <CNT_GERANT3>{fn:data($body/ns1:BODY/ns1:CNT_GERANT3)}</CNT_GERANT3>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_GROUPEGESTION) then
        <CNT_GROUPEGESTION>{fn:data($body/ns1:BODY/ns1:CNT_GROUPEGESTION)}</CNT_GROUPEGESTION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_LANGUE) then
        <CNT_LANGUE>{fn:data($body/ns1:BODY/ns1:CNT_LANGUE)}</CNT_LANGUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_LANGUEDOCUMENTS) then
        <CNT_LANGUEDOCUMENTS>{fn:data($body/ns1:BODY/ns1:CNT_LANGUEDOCUMENTS)}</CNT_LANGUEDOCUMENTS>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_AGENT) then
        <CNT_AGENT>{fn:data($body/ns1:BODY/ns1:CNT_AGENT)}</CNT_AGENT>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_ETATCIVIL) then
        <CNT_ETATCIVIL>{fn:data($body/ns1:BODY/ns1:CNT_ETATCIVIL)}</CNT_ETATCIVIL>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CIVILITE) then
        <CNT_CIVILITE>{fn:data($body/ns1:BODY/ns1:CNT_CIVILITE)}</CNT_CIVILITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SEXE) then
        <CNT_SEXE>{fn:data($body/ns1:BODY/ns1:CNT_SEXE)}</CNT_SEXE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NATIONALITE) then
        <CNT_NATIONALITE>{fn:data($body/ns1:BODY/ns1:CNT_NATIONALITE)}</CNT_NATIONALITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NATIONALITE2) then
        <CNT_NATIONALITE2>{fn:data($body/ns1:BODY/ns1:CNT_NATIONALITE2)}</CNT_NATIONALITE2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATENAISSANCE) then
        <CNT_DATENAISSANCE>{fn:data($body/ns1:BODY/ns1:CNT_DATENAISSANCE)}</CNT_DATENAISSANCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATEDECES) then
        <CNT_DATEDECES>{fn:data($body/ns1:BODY/ns1:CNT_DATEDECES)}</CNT_DATEDECES>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PAYSNAISSANCE) then
        <CNT_PAYSNAISSANCE>{fn:data($body/ns1:BODY/ns1:CNT_PAYSNAISSANCE)}</CNT_PAYSNAISSANCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SIGNEASTRO) then
        <CNT_SIGNEASTRO>{fn:data($body/ns1:BODY/ns1:CNT_SIGNEASTRO)}</CNT_SIGNEASTRO>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NBRENFANTS) then
        <CNT_NBRENFANTS>{fn:data($body/ns1:BODY/ns1:CNT_NBRENFANTS)}</CNT_NBRENFANTS>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NBRENFANTS2) then
        <CNT_NBRENFANTS2>{fn:data($body/ns1:BODY/ns1:CNT_NBRENFANTS2)}</CNT_NBRENFANTS2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CODE1) then
        <CNT_CODE1>{fn:data($body/ns1:BODY/ns1:CNT_CODE1)}</CNT_CODE1>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NIVEAUETUDE) then
        <CNT_NIVEAUETUDE>{fn:data($body/ns1:BODY/ns1:CNT_NIVEAUETUDE)}</CNT_NIVEAUETUDE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SECTEURACTIVITE) then
        <CNT_SECTEURACTIVITE>{fn:data($body/ns1:BODY/ns1:CNT_SECTEURACTIVITE)}</CNT_SECTEURACTIVITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PHRASECONV) then
        <CNT_PHRASECONV>{fn:data($body/ns1:BODY/ns1:CNT_PHRASECONV)}</CNT_PHRASECONV>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_HORIZONINVEST) then
        <CNT_HORIZONINVEST>{fn:data($body/ns1:BODY/ns1:CNT_HORIZONINVEST)}</CNT_HORIZONINVEST>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CONNAISSANCEMARC) then
        <CNT_CONNAISSANCEMARC>{fn:data($body/ns1:BODY/ns1:CNT_CONNAISSANCEMARC)}</CNT_CONNAISSANCEMARC>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_AGENTPUBLIC) then
        <CNT_AGENTPUBLIC>{fn:data($body/ns1:BODY/ns1:CNT_AGENTPUBLIC)}</CNT_AGENTPUBLIC>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_LIENINTERNE) then
        <CNT_LIENINTERNE>{fn:data($body/ns1:BODY/ns1:CNT_LIENINTERNE)}</CNT_LIENINTERNE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PATRIMOINEEXTERN) then
        <CNT_PATRIMOINEEXTERN>{fn:data($body/ns1:BODY/ns1:CNT_PATRIMOINEEXTERN)}</CNT_PATRIMOINEEXTERN>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PROVFONDS) then
        <CNT_PROVFONDS>{fn:data($body/ns1:BODY/ns1:CNT_PROVFONDS)}</CNT_PROVFONDS>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PROFESSION) then
        <CNT_PROFESSION>{fn:data($body/ns1:BODY/ns1:CNT_PROFESSION)}</CNT_PROFESSION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_RELATIONBANQUE) then
        <CNT_RELATIONBANQUE>{fn:data($body/ns1:BODY/ns1:CNT_RELATIONBANQUE)}</CNT_RELATIONBANQUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CDORIGINEENTREER) then
        <CNT_CDORIGINEENTREER>{fn:data($body/ns1:BODY/ns1:CNT_CDORIGINEENTREER)}</CNT_CDORIGINEENTREER>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PAYSARISQUE) then
        <CNT_PAYSARISQUE>{fn:data($body/ns1:BODY/ns1:CNT_PAYSARISQUE)}</CNT_PAYSARISQUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_ACTIVITEARISQUE) then
        <CNT_ACTIVITEARISQUE>{fn:data($body/ns1:BODY/ns1:CNT_ACTIVITEARISQUE)}</CNT_ACTIVITEARISQUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SITUFISCALE) then
        <CNT_SITUFISCALE>{fn:data($body/ns1:BODY/ns1:CNT_SITUFISCALE)}</CNT_SITUFISCALE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_TAUXIMPOSITIONTX) then
        <CNT_TAUXIMPOSITIONTX>{fn:data($body/ns1:BODY/ns1:CNT_TAUXIMPOSITIONTX)}</CNT_TAUXIMPOSITIONTX>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_REGIMEMATRIMONIA) then
        <CNT_REGIMEMATRIMONIA>{fn:data($body/ns1:BODY/ns1:CNT_REGIMEMATRIMONIA)}</CNT_REGIMEMATRIMONIA>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_RETRAITE) then
        <CNT_RETRAITE>{fn:data($body/ns1:BODY/ns1:CNT_RETRAITE)}</CNT_RETRAITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FORMEJURIDIQUE) then
        <CNT_FORMEJURIDIQUE>{fn:data($body/ns1:BODY/ns1:CNT_FORMEJURIDIQUE)}</CNT_FORMEJURIDIQUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NBRESALARIES) then
        <CNT_NBRESALARIES>{fn:data($body/ns1:BODY/ns1:CNT_NBRESALARIES)}</CNT_NBRESALARIES>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SITEINTERNET) then
        <CNT_SITEINTERNET>{fn:data($body/ns1:BODY/ns1:CNT_SITEINTERNET)}</CNT_SITEINTERNET>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_TYPECONTACT) then
        <CNT_TYPECONTACT>{fn:data($body/ns1:BODY/ns1:CNT_TYPECONTACT)}</CNT_TYPECONTACT>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SEGMENTATION) then
        <CNT_SEGMENTATION>{fn:data($body/ns1:BODY/ns1:CNT_SEGMENTATION)}</CNT_SEGMENTATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CONTACTUS) then
        <CNT_CONTACTUS>{fn:data($body/ns1:BODY/ns1:CNT_CONTACTUS)}</CNT_CONTACTUS>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATE1) then
        <CNT_DATE1>{fn:data($body/ns1:BODY/ns1:CNT_DATE1)}</CNT_DATE1>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATE2) then
        <CNT_DATE2>{fn:data($body/ns1:BODY/ns1:CNT_DATE2)}</CNT_DATE2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATE3) then
        <CNT_DATE3>{fn:data($body/ns1:BODY/ns1:CNT_DATE3)}</CNT_DATE3>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATE4) then
        <CNT_DATE4>{fn:data($body/ns1:BODY/ns1:CNT_DATE4)}</CNT_DATE4>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATE5) then
        <CNT_DATE5>{fn:data($body/ns1:BODY/ns1:CNT_DATE5)}</CNT_DATE5>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CODE2) then
        <CNT_CODE2>{fn:data($body/ns1:BODY/ns1:CNT_CODE2)}</CNT_CODE2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CODE3) then
        <CNT_CODE3>{fn:data($body/ns1:BODY/ns1:CNT_CODE3)}</CNT_CODE3>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CODE4) then
        <CNT_CODE4>{fn:data($body/ns1:BODY/ns1:CNT_CODE4)}</CNT_CODE4>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CODE5) then
        <CNT_CODE5>{fn:data($body/ns1:BODY/ns1:CNT_CODE5)}</CNT_CODE5>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_OPERANTCREATION) then
        <CNT_OPERANTCREATION>{fn:data($body/ns1:BODY/ns1:CNT_OPERANTCREATION)}</CNT_OPERANTCREATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATECREATION) then
        <CNT_DATECREATION>{fn:data($body/ns1:BODY/ns1:CNT_DATECREATION)}</CNT_DATECREATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_HEURECREATION) then
        <CNT_HEURECREATION>{fn:data($body/ns1:BODY/ns1:CNT_HEURECREATION)}</CNT_HEURECREATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_OPERANTMUTATION) then
        <CNT_OPERANTMUTATION>{fn:data($body/ns1:BODY/ns1:CNT_OPERANTMUTATION)}</CNT_OPERANTMUTATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATEMUTATION) then
        <CNT_DATEMUTATION>{fn:data($body/ns1:BODY/ns1:CNT_DATEMUTATION)}</CNT_DATEMUTATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_HEUREMUTATION) then
        <CNT_HEUREMUTATION>{fn:data($body/ns1:BODY/ns1:CNT_HEUREMUTATION)}</CNT_HEUREMUTATION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_ANCIENNEREFCONTA) then
        <CNT_ANCIENNEREFCONTA>{fn:data($body/ns1:BODY/ns1:CNT_ANCIENNEREFCONTA)}</CNT_ANCIENNEREFCONTA>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_COMMENTAIREPRO) then
        <CNT_COMMENTAIREPRO>{fn:data($body/ns1:BODY/ns1:CNT_COMMENTAIREPRO)}</CNT_COMMENTAIREPRO>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PAYSRESIDFISCALE) then
        <CNT_PAYSRESIDFISCALE>{fn:data($body/ns1:BODY/ns1:CNT_PAYSRESIDFISCALE)}</CNT_PAYSRESIDFISCALE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_TAXEEU) then
        <CNT_TAXEEU>{fn:data($body/ns1:BODY/ns1:CNT_TAXEEU)}</CNT_TAXEEU>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_TAXELOCALE) then
        <CNT_TAXELOCALE>{fn:data($body/ns1:BODY/ns1:CNT_TAXELOCALE)}</CNT_TAXELOCALE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_USRESIDENT) then
        <CNT_USRESIDENT>{fn:data($body/ns1:BODY/ns1:CNT_USRESIDENT)}</CNT_USRESIDENT>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_LIEUNAISSANCE) then
        <CNT_LIEUNAISSANCE>{fn:data($body/ns1:BODY/ns1:CNT_LIEUNAISSANCE)}</CNT_LIEUNAISSANCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_EMPLOYEUR) then
        <CNT_EMPLOYEUR>{fn:data($body/ns1:BODY/ns1:CNT_EMPLOYEUR)}</CNT_EMPLOYEUR>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DESCRACTIVITE) then
        <CNT_DESCRACTIVITE>{fn:data($body/ns1:BODY/ns1:CNT_DESCRACTIVITE)}</CNT_DESCRACTIVITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_REMARQUE) then
        <CNT_REMARQUE>{fn:data($body/ns1:BODY/ns1:CNT_REMARQUE)}</CNT_REMARQUE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_ASSISTANT) then
        <CNT_ASSISTANT>{fn:data($body/ns1:BODY/ns1:CNT_ASSISTANT)}</CNT_ASSISTANT>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SEGMENTMARCHE1) then
        <CNT_SEGMENTMARCHE1>{fn:data($body/ns1:BODY/ns1:CNT_SEGMENTMARCHE1)}</CNT_SEGMENTMARCHE1>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SEGMENTMARCHE2) then
        <CNT_SEGMENTMARCHE2>{fn:data($body/ns1:BODY/ns1:CNT_SEGMENTMARCHE2)}</CNT_SEGMENTMARCHE2>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PROFESSIONNEL) then
        <CNT_PROFESSIONNEL>{fn:data($body/ns1:BODY/ns1:CNT_PROFESSIONNEL)}</CNT_PROFESSIONNEL>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PSEUDONYME) then
        <CNT_PSEUDONYME>{fn:data($body/ns1:BODY/ns1:CNT_PSEUDONYME)}</CNT_PSEUDONYME>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_COMMERCIAL) then
        <CNT_COMMERCIAL>{fn:data($body/ns1:BODY/ns1:CNT_COMMERCIAL)}</CNT_COMMERCIAL>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_BUREAUREPRES) then
        <CNT_BUREAUREPRES>{fn:data($body/ns1:BODY/ns1:CNT_BUREAUREPRES)}</CNT_BUREAUREPRES>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NATURE) then
        <CNT_NATURE>{fn:data($body/ns1:BODY/ns1:CNT_NATURE)}</CNT_NATURE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SECURISE) then
        <CNT_SECURISE>{fn:data($body/ns1:BODY/ns1:CNT_SECURISE)}</CNT_SECURISE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_LIEUTRAVAIL) then
        <CNT_LIEUTRAVAIL>{fn:data($body/ns1:BODY/ns1:CNT_LIEUTRAVAIL)}</CNT_LIEUTRAVAIL>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DOMICILELEGAL) then
        <CNT_DOMICILELEGAL>{fn:data($body/ns1:BODY/ns1:CNT_DOMICILELEGAL)}</CNT_DOMICILELEGAL>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNC_NOM) then
        <CNC_NOM>{fn:data($body/ns1:BODY/ns1:CNC_NOM)}</CNC_NOM>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_PSD_NUMERO) then
        <CNT_PSD_NUMERO>{fn:data($body/ns1:BODY/ns1:CNT_PSD_NUMERO)}</CNT_PSD_NUMERO>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATEEMISSION) then
        <CNT_DATEEMISSION>{fn:data($body/ns1:BODY/ns1:CNT_DATEEMISSION)}</CNT_DATEEMISSION>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATEECHEANCE) then
        <CNT_DATEECHEANCE>{fn:data($body/ns1:BODY/ns1:CNT_DATEECHEANCE)}</CNT_DATEECHEANCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_RAU_CLIRAC) then
        <CNT_RAU_CLIRAC>{fn:data($body/ns1:BODY/ns1:CNT_RAU_CLIRAC)}</CNT_RAU_CLIRAC>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_SECTEURECONOMIQU) then
        <CNT_SECTEURECONOMIQU>{fn:data($body/ns1:BODY/ns1:CNT_SECTEURECONOMIQU)}</CNT_SECTEURECONOMIQU>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DOUBLE_IMPOSITIO) then
        <CNT_DOUBLE_IMPOSITIO>{fn:data($body/ns1:BODY/ns1:CNT_DOUBLE_IMPOSITIO)}</CNT_DOUBLE_IMPOSITIO>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_JUR) then
        <CNT_JUR>{fn:data($body/ns1:BODY/ns1:CNT_JUR)}</CNT_JUR>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_REFERENCE) then
        <CNT_REFERENCE>{fn:data($body/ns1:BODY/ns1:CNT_REFERENCE)}</CNT_REFERENCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATECHEANCE) then
        <CNT_DATECHEANCE>{fn:data($body/ns1:BODY/ns1:CNT_DATECHEANCE)}</CNT_DATECHEANCE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_DATEVALIDITE) then
        <CNT_DATEVALIDITE>{fn:data($body/ns1:BODY/ns1:CNT_DATEVALIDITE)}</CNT_DATEVALIDITE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_CONV_JUR) then
        <CNT_CONV_JUR>{fn:data($body/ns1:BODY/ns1:CNT_CONV_JUR)}</CNT_CONV_JUR>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_RACINE_RESERVEE) then
        <CNT_RACINE_RESERVEE>{fn:data($body/ns1:BODY/ns1:CNT_RACINE_RESERVEE)}</CNT_RACINE_RESERVEE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FAT_IDENTIFICATI) then
        <CNT_FAT_IDENTIFICATI>{fn:data($body/ns1:BODY/ns1:CNT_FAT_IDENTIFICATI)}</CNT_FAT_IDENTIFICATI>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FAT_INDICE_US) then
        <CNT_FAT_INDICE_US>{fn:data($body/ns1:BODY/ns1:CNT_FAT_INDICE_US)}</CNT_FAT_INDICE_US>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FAT_US_PERSON) then
        <CNT_FAT_US_PERSON>{fn:data($body/ns1:BODY/ns1:CNT_FAT_US_PERSON)}</CNT_FAT_US_PERSON>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FAT_FFI) then
        <CNT_FAT_FFI>{fn:data($body/ns1:BODY/ns1:CNT_FAT_FFI)}</CNT_FAT_FFI>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_FAT_PATRIMOINE) then
        <CNT_FAT_PATRIMOINE>{fn:data($body/ns1:BODY/ns1:CNT_FAT_PATRIMOINE)}</CNT_FAT_PATRIMOINE>
        else()
        }
        {
        if($body/ns1:BODY/ns1:CNT_NUM_CNTEXTERNE) then
        <CNT_NUM_CNTEXTERNE>{fn:data($body/ns1:BODY/ns1:CNT_NUM_CNTEXTERNE)}</CNT_NUM_CNTEXTERNE>
        else()
        }
</Root-Element>
};

local:func($body)