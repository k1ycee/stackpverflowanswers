class See {
  SRMboSet? sRMboSet;

  See({this.sRMboSet});

  See.fromJson(Map<String, dynamic> json) {
    sRMboSet = json['SRMboSet'] != null
        ? new SRMboSet.fromJson(json['SRMboSet'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sRMboSet != null) {
      data['SRMboSet'] = this.sRMboSet!.toJson();
    }
    return data;
  }
}

class SRMboSet {
  int? rsStart;
  int? rsCount;
  List<SR>? sR;

  SRMboSet({this.rsStart, this.rsCount, this.sR});

  SRMboSet.fromJson(Map<String, dynamic> json) {
    rsStart = json['rsStart'];
    rsCount = json['rsCount'];
    if (json['SR'] != null) {
      sR = <SR>[];
      json['SR'].forEach((v) {
        sR!.add(new SR.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rsStart'] = this.rsStart;
    data['rsCount'] = this.rsCount;
    if (this.sR != null) {
      data['SR'] = this.sR!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SR {
  String? rowstamp;
  Attributes? attributes;

  SR({this.rowstamp, this.attributes});

  SR.fromJson(Map<String, dynamic> json) {
    rowstamp = json['rowstamp'];
    attributes = json['Attributes'] != null
        ? new Attributes.fromJson(json['Attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rowstamp'] = this.rowstamp;
    if (this.attributes != null) {
      data['Attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}

class Attributes {
  TICKETID? tICKETID;
  TICKETID? cLASS;
  TICKETID? dESCRIPTION;
  TICKETID? sTATUS;
  TICKETID? sTATUSDATE;
  TICKETID? rEPORTEDBY;
  TICKETID? rEPORTDATE;
  TICKETID? aFFECTEDPERSON;
  TICKETID? aFFECTEDDATE;
  TICKETID? oWNER;
  ISGLOBAL? iSGLOBAL;
  ISGLOBAL? rELATEDTOGLOBAL;
  ISGLOBAL? sITEVISIT;
  ISGLOBAL? iNHERITSTATUS;
  ISGLOBAL? iSKNOWNERROR;
  TICKETID? cHANGEDATE;
  TICKETID? cHANGEBY;
  ISGLOBAL? hISTORYFLAG;
  ISGLOBAL? tEMPLATE;
  ISGLOBAL? hASACTIVITY;
  ACTLABHRS? aCTLABHRS;
  ACTLABHRS? aCTLABCOST;
  TICKETID? aSSETSITEID;
  TICKETID? aSSETNUM;
  TICKETID? lOCATION;
  TICKETUID? tICKETUID;
  TICKETID? dUPFLAG;
  TICKETID? aSSETUSER;
  TICKETID? aSSETCUST;
  TICKETID? aSSETORGID;
  TICKETID? lANGCODE;
  TICKETID? aSSETFILTERBY;
  TICKETID? rEPORTEDBYNAME;
  TICKETID? rEPORTEDBYID;
  TICKETID? aFFECTEDPERSONID;
  TICKETID? aFFECTEDUSERNAME;
  ISGLOBAL? sLAAPPLIED;
  ISGLOBAL? hASLD;
  ISGLOBAL? sTATUSIFACE;
  TICKETID? cREATEWOMULTI;
  ISGLOBAL? sELFSERVSOLACCESS;
  ISGLOBAL? hASSOLUTION;
  TICKETID? tRICAUSEREFUS;
  ISGLOBAL? tRIOTDI;
  TICKETID? oRIGRECORDID;
  TICKETID? oRIGRECORDCLASS;
  TICKETID? aCTUALSTART;
  TICKETID? dESCRIPTIONLONGDESCRIPTION;
  ACTLABHRS? rEPORTEDPRIORITY;
  TICKETID? aCTUALFINISH;
  TICKETID? sITEID;
  TICKETID? oRGID;
  TICKETID? aFFECTEDEMAIL;
  TICKETID? rEPORTEDEMAIL;

  Attributes(
      {this.tICKETID,
      this.cLASS,
      this.dESCRIPTION,
      this.sTATUS,
      this.sTATUSDATE,
      this.rEPORTEDBY,
      this.rEPORTDATE,
      this.aFFECTEDPERSON,
      this.aFFECTEDDATE,
      this.oWNER,
      this.iSGLOBAL,
      this.rELATEDTOGLOBAL,
      this.sITEVISIT,
      this.iNHERITSTATUS,
      this.iSKNOWNERROR,
      this.cHANGEDATE,
      this.cHANGEBY,
      this.hISTORYFLAG,
      this.tEMPLATE,
      this.hASACTIVITY,
      this.aCTLABHRS,
      this.aCTLABCOST,
      this.aSSETSITEID,
      this.aSSETNUM,
      this.lOCATION,
      this.tICKETUID,
      this.dUPFLAG,
      this.aSSETUSER,
      this.aSSETCUST,
      this.aSSETORGID,
      this.lANGCODE,
      this.aSSETFILTERBY,
      this.rEPORTEDBYNAME,
      this.rEPORTEDBYID,
      this.aFFECTEDPERSONID,
      this.aFFECTEDUSERNAME,
      this.sLAAPPLIED,
      this.hASLD,
      this.sTATUSIFACE,
      this.cREATEWOMULTI,
      this.sELFSERVSOLACCESS,
      this.hASSOLUTION,
      this.tRICAUSEREFUS,
      this.tRIOTDI,
      this.oRIGRECORDID,
      this.oRIGRECORDCLASS,
      this.aCTUALSTART,
      this.dESCRIPTIONLONGDESCRIPTION,
      this.rEPORTEDPRIORITY,
      this.aCTUALFINISH,
      this.sITEID,
      this.oRGID,
      this.aFFECTEDEMAIL,
      this.rEPORTEDEMAIL});

  Attributes.fromJson(Map<String, dynamic> json) {
    tICKETID = json['TICKETID'] != null
        ? new TICKETID.fromJson(json['TICKETID'])
        : null;
    cLASS = json['CLASS'] != null ? new TICKETID.fromJson(json['CLASS']) : null;
    dESCRIPTION = json['DESCRIPTION'] != null
        ? new TICKETID.fromJson(json['DESCRIPTION'])
        : null;
    sTATUS =
        json['STATUS'] != null ? new TICKETID.fromJson(json['STATUS']) : null;
    sTATUSDATE = json['STATUSDATE'] != null
        ? new TICKETID.fromJson(json['STATUSDATE'])
        : null;
    rEPORTEDBY = json['REPORTEDBY'] != null
        ? new TICKETID.fromJson(json['REPORTEDBY'])
        : null;
    rEPORTDATE = json['REPORTDATE'] != null
        ? new TICKETID.fromJson(json['REPORTDATE'])
        : null;
    aFFECTEDPERSON = json['AFFECTEDPERSON'] != null
        ? new TICKETID.fromJson(json['AFFECTEDPERSON'])
        : null;
    aFFECTEDDATE = json['AFFECTEDDATE'] != null
        ? new TICKETID.fromJson(json['AFFECTEDDATE'])
        : null;
    oWNER = json['OWNER'] != null ? new TICKETID.fromJson(json['OWNER']) : null;
    iSGLOBAL = json['ISGLOBAL'] != null
        ? new ISGLOBAL.fromJson(json['ISGLOBAL'])
        : null;
    rELATEDTOGLOBAL = json['RELATEDTOGLOBAL'] != null
        ? new ISGLOBAL.fromJson(json['RELATEDTOGLOBAL'])
        : null;
    sITEVISIT = json['SITEVISIT'] != null
        ? new ISGLOBAL.fromJson(json['SITEVISIT'])
        : null;
    iNHERITSTATUS = json['INHERITSTATUS'] != null
        ? new ISGLOBAL.fromJson(json['INHERITSTATUS'])
        : null;
    iSKNOWNERROR = json['ISKNOWNERROR'] != null
        ? new ISGLOBAL.fromJson(json['ISKNOWNERROR'])
        : null;
    cHANGEDATE = json['CHANGEDATE'] != null
        ? new TICKETID.fromJson(json['CHANGEDATE'])
        : null;
    cHANGEBY = json['CHANGEBY'] != null
        ? new TICKETID.fromJson(json['CHANGEBY'])
        : null;
    hISTORYFLAG = json['HISTORYFLAG'] != null
        ? new ISGLOBAL.fromJson(json['HISTORYFLAG'])
        : null;
    tEMPLATE = json['TEMPLATE'] != null
        ? new ISGLOBAL.fromJson(json['TEMPLATE'])
        : null;
    hASACTIVITY = json['HASACTIVITY'] != null
        ? new ISGLOBAL.fromJson(json['HASACTIVITY'])
        : null;
    aCTLABHRS = json['ACTLABHRS'] != null
        ? new ACTLABHRS.fromJson(json['ACTLABHRS'])
        : null;
    aCTLABCOST = json['ACTLABCOST'] != null
        ? new ACTLABHRS.fromJson(json['ACTLABCOST'])
        : null;
    aSSETSITEID = json['ASSETSITEID'] != null
        ? new TICKETID.fromJson(json['ASSETSITEID'])
        : null;
    aSSETNUM = json['ASSETNUM'] != null
        ? new TICKETID.fromJson(json['ASSETNUM'])
        : null;
    lOCATION = json['LOCATION'] != null
        ? new TICKETID.fromJson(json['LOCATION'])
        : null;
    tICKETUID = json['TICKETUID'] != null
        ? new TICKETUID.fromJson(json['TICKETUID'])
        : null;
    dUPFLAG =
        json['DUPFLAG'] != null ? new TICKETID.fromJson(json['DUPFLAG']) : null;
    aSSETUSER = json['ASSETUSER'] != null
        ? new TICKETID.fromJson(json['ASSETUSER'])
        : null;
    aSSETCUST = json['ASSETCUST'] != null
        ? new TICKETID.fromJson(json['ASSETCUST'])
        : null;
    aSSETORGID = json['ASSETORGID'] != null
        ? new TICKETID.fromJson(json['ASSETORGID'])
        : null;
    lANGCODE = json['LANGCODE'] != null
        ? new TICKETID.fromJson(json['LANGCODE'])
        : null;
    aSSETFILTERBY = json['ASSETFILTERBY'] != null
        ? new TICKETID.fromJson(json['ASSETFILTERBY'])
        : null;
    rEPORTEDBYNAME = json['REPORTEDBYNAME'] != null
        ? new TICKETID.fromJson(json['REPORTEDBYNAME'])
        : null;
    rEPORTEDBYID = json['REPORTEDBYID'] != null
        ? new TICKETID.fromJson(json['REPORTEDBYID'])
        : null;
    aFFECTEDPERSONID = json['AFFECTEDPERSONID'] != null
        ? new TICKETID.fromJson(json['AFFECTEDPERSONID'])
        : null;
    aFFECTEDUSERNAME = json['AFFECTEDUSERNAME'] != null
        ? new TICKETID.fromJson(json['AFFECTEDUSERNAME'])
        : null;
    sLAAPPLIED = json['SLAAPPLIED'] != null
        ? new ISGLOBAL.fromJson(json['SLAAPPLIED'])
        : null;
    hASLD = json['HASLD'] != null ? new ISGLOBAL.fromJson(json['HASLD']) : null;
    sTATUSIFACE = json['STATUSIFACE'] != null
        ? new ISGLOBAL.fromJson(json['STATUSIFACE'])
        : null;
    cREATEWOMULTI = json['CREATEWOMULTI'] != null
        ? new TICKETID.fromJson(json['CREATEWOMULTI'])
        : null;
    sELFSERVSOLACCESS = json['SELFSERVSOLACCESS'] != null
        ? new ISGLOBAL.fromJson(json['SELFSERVSOLACCESS'])
        : null;
    hASSOLUTION = json['HASSOLUTION'] != null
        ? new ISGLOBAL.fromJson(json['HASSOLUTION'])
        : null;
    tRICAUSEREFUS = json['TRI_CAUSE_REFUS'] != null
        ? new TICKETID.fromJson(json['TRI_CAUSE_REFUS'])
        : null;
    tRIOTDI = json['TRI_OT_DI'] != null
        ? new ISGLOBAL.fromJson(json['TRI_OT_DI'])
        : null;
    oRIGRECORDID = json['ORIGRECORDID'] != null
        ? new TICKETID.fromJson(json['ORIGRECORDID'])
        : null;
    oRIGRECORDCLASS = json['ORIGRECORDCLASS'] != null
        ? new TICKETID.fromJson(json['ORIGRECORDCLASS'])
        : null;
    aCTUALSTART = json['ACTUALSTART'] != null
        ? new TICKETID.fromJson(json['ACTUALSTART'])
        : null;
    dESCRIPTIONLONGDESCRIPTION = json['DESCRIPTION_LONGDESCRIPTION'] != null
        ? new TICKETID.fromJson(json['DESCRIPTION_LONGDESCRIPTION'])
        : null;
    rEPORTEDPRIORITY = json['REPORTEDPRIORITY'] != null
        ? new ACTLABHRS.fromJson(json['REPORTEDPRIORITY'])
        : null;
    aCTUALFINISH = json['ACTUALFINISH'] != null
        ? new TICKETID.fromJson(json['ACTUALFINISH'])
        : null;
    sITEID =
        json['SITEID'] != null ? new TICKETID.fromJson(json['SITEID']) : null;
    oRGID = json['ORGID'] != null ? new TICKETID.fromJson(json['ORGID']) : null;
    aFFECTEDEMAIL = json['AFFECTEDEMAIL'] != null
        ? new TICKETID.fromJson(json['AFFECTEDEMAIL'])
        : null;
    rEPORTEDEMAIL = json['REPORTEDEMAIL'] != null
        ? new TICKETID.fromJson(json['REPORTEDEMAIL'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tICKETID != null) {
      data['TICKETID'] = this.tICKETID!.toJson();
    }
    if (this.cLASS != null) {
      data['CLASS'] = this.cLASS!.toJson();
    }
    if (this.dESCRIPTION != null) {
      data['DESCRIPTION'] = this.dESCRIPTION!.toJson();
    }
    if (this.sTATUS != null) {
      data['STATUS'] = this.sTATUS!.toJson();
    }
    if (this.sTATUSDATE != null) {
      data['STATUSDATE'] = this.sTATUSDATE!.toJson();
    }
    if (this.rEPORTEDBY != null) {
      data['REPORTEDBY'] = this.rEPORTEDBY!.toJson();
    }
    if (this.rEPORTDATE != null) {
      data['REPORTDATE'] = this.rEPORTDATE!.toJson();
    }
    if (this.aFFECTEDPERSON != null) {
      data['AFFECTEDPERSON'] = this.aFFECTEDPERSON!.toJson();
    }
    if (this.aFFECTEDDATE != null) {
      data['AFFECTEDDATE'] = this.aFFECTEDDATE!.toJson();
    }
    if (this.oWNER != null) {
      data['OWNER'] = this.oWNER!.toJson();
    }
    if (this.iSGLOBAL != null) {
      data['ISGLOBAL'] = this.iSGLOBAL!.toJson();
    }
    if (this.rELATEDTOGLOBAL != null) {
      data['RELATEDTOGLOBAL'] = this.rELATEDTOGLOBAL!.toJson();
    }
    if (this.sITEVISIT != null) {
      data['SITEVISIT'] = this.sITEVISIT!.toJson();
    }
    if (this.iNHERITSTATUS != null) {
      data['INHERITSTATUS'] = this.iNHERITSTATUS!.toJson();
    }
    if (this.iSKNOWNERROR != null) {
      data['ISKNOWNERROR'] = this.iSKNOWNERROR!.toJson();
    }
    if (this.cHANGEDATE != null) {
      data['CHANGEDATE'] = this.cHANGEDATE!.toJson();
    }
    if (this.cHANGEBY != null) {
      data['CHANGEBY'] = this.cHANGEBY!.toJson();
    }
    if (this.hISTORYFLAG != null) {
      data['HISTORYFLAG'] = this.hISTORYFLAG!.toJson();
    }
    if (this.tEMPLATE != null) {
      data['TEMPLATE'] = this.tEMPLATE!.toJson();
    }
    if (this.hASACTIVITY != null) {
      data['HASACTIVITY'] = this.hASACTIVITY!.toJson();
    }
    if (this.aCTLABHRS != null) {
      data['ACTLABHRS'] = this.aCTLABHRS!.toJson();
    }
    if (this.aCTLABCOST != null) {
      data['ACTLABCOST'] = this.aCTLABCOST!.toJson();
    }
    if (this.aSSETSITEID != null) {
      data['ASSETSITEID'] = this.aSSETSITEID!.toJson();
    }
    if (this.aSSETNUM != null) {
      data['ASSETNUM'] = this.aSSETNUM!.toJson();
    }
    if (this.lOCATION != null) {
      data['LOCATION'] = this.lOCATION!.toJson();
    }
    if (this.tICKETUID != null) {
      data['TICKETUID'] = this.tICKETUID!.toJson();
    }
    if (this.dUPFLAG != null) {
      data['DUPFLAG'] = this.dUPFLAG!.toJson();
    }
    if (this.aSSETUSER != null) {
      data['ASSETUSER'] = this.aSSETUSER!.toJson();
    }
    if (this.aSSETCUST != null) {
      data['ASSETCUST'] = this.aSSETCUST!.toJson();
    }
    if (this.aSSETORGID != null) {
      data['ASSETORGID'] = this.aSSETORGID!.toJson();
    }
    if (this.lANGCODE != null) {
      data['LANGCODE'] = this.lANGCODE!.toJson();
    }
    if (this.aSSETFILTERBY != null) {
      data['ASSETFILTERBY'] = this.aSSETFILTERBY!.toJson();
    }
    if (this.rEPORTEDBYNAME != null) {
      data['REPORTEDBYNAME'] = this.rEPORTEDBYNAME!.toJson();
    }
    if (this.rEPORTEDBYID != null) {
      data['REPORTEDBYID'] = this.rEPORTEDBYID!.toJson();
    }
    if (this.aFFECTEDPERSONID != null) {
      data['AFFECTEDPERSONID'] = this.aFFECTEDPERSONID!.toJson();
    }
    if (this.aFFECTEDUSERNAME != null) {
      data['AFFECTEDUSERNAME'] = this.aFFECTEDUSERNAME!.toJson();
    }
    if (this.sLAAPPLIED != null) {
      data['SLAAPPLIED'] = this.sLAAPPLIED!.toJson();
    }
    if (this.hASLD != null) {
      data['HASLD'] = this.hASLD!.toJson();
    }
    if (this.sTATUSIFACE != null) {
      data['STATUSIFACE'] = this.sTATUSIFACE!.toJson();
    }
    if (this.cREATEWOMULTI != null) {
      data['CREATEWOMULTI'] = this.cREATEWOMULTI!.toJson();
    }
    if (this.sELFSERVSOLACCESS != null) {
      data['SELFSERVSOLACCESS'] = this.sELFSERVSOLACCESS!.toJson();
    }
    if (this.hASSOLUTION != null) {
      data['HASSOLUTION'] = this.hASSOLUTION!.toJson();
    }
    if (this.tRICAUSEREFUS != null) {
      data['TRI_CAUSE_REFUS'] = this.tRICAUSEREFUS!.toJson();
    }
    if (this.tRIOTDI != null) {
      data['TRI_OT_DI'] = this.tRIOTDI!.toJson();
    }
    if (this.oRIGRECORDID != null) {
      data['ORIGRECORDID'] = this.oRIGRECORDID!.toJson();
    }
    if (this.oRIGRECORDCLASS != null) {
      data['ORIGRECORDCLASS'] = this.oRIGRECORDCLASS!.toJson();
    }
    if (this.aCTUALSTART != null) {
      data['ACTUALSTART'] = this.aCTUALSTART!.toJson();
    }
    if (this.dESCRIPTIONLONGDESCRIPTION != null) {
      data['DESCRIPTION_LONGDESCRIPTION'] =
          this.dESCRIPTIONLONGDESCRIPTION!.toJson();
    }
    if (this.rEPORTEDPRIORITY != null) {
      data['REPORTEDPRIORITY'] = this.rEPORTEDPRIORITY!.toJson();
    }
    if (this.aCTUALFINISH != null) {
      data['ACTUALFINISH'] = this.aCTUALFINISH!.toJson();
    }
    if (this.sITEID != null) {
      data['SITEID'] = this.sITEID!.toJson();
    }
    if (this.oRGID != null) {
      data['ORGID'] = this.oRGID!.toJson();
    }
    if (this.aFFECTEDEMAIL != null) {
      data['AFFECTEDEMAIL'] = this.aFFECTEDEMAIL!.toJson();
    }
    if (this.rEPORTEDEMAIL != null) {
      data['REPORTEDEMAIL'] = this.rEPORTEDEMAIL!.toJson();
    }
    return data;
  }
}

class TICKETID {
  String? content;

  TICKETID({this.content});

  TICKETID.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    return data;
  }
}

class ISGLOBAL {
  bool? content;

  ISGLOBAL({this.content});

  ISGLOBAL.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    return data;
  }
}

class ACTLABHRS {
  int? content;

  ACTLABHRS({this.content});

  ACTLABHRS.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    return data;
  }
}

class TICKETUID {
  int? content;
  bool? resourceid;

  TICKETUID({this.content, this.resourceid});

  TICKETUID.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    resourceid = json['resourceid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['resourceid'] = this.resourceid;
    return data;
  }
}
