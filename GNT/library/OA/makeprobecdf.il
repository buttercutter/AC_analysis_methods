
/****************************************************/
 LIBRARY = "gnt"
 CELL    = "gntprobe"
/****************************************************/

let( ( libId cellId cdfId )
    unless( cellId = ddGetObj( LIBRARY CELL )
        error( "Could not get cell %s." CELL )
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )

    ;;; Parameters
    cdfCreateParam( cdfId
        ?name           "hint"
        ?prompt         "Direction Hint"
        ?defValue       "none"
        ?choices        '("none" "2GFT" "NEET" "2CT")
        ?type           "cyclic"
        ?description     "Shows hints on the symbol to indicate which direction yy-ref or xx-ref need to face."
    )
    cdfCreateParam( cdfId
        ?name           "EET_W"
        ?prompt         "NEET Hint: Extra Element Type"
        ?defValue       "Z"
        ?choices        '("Z" "Y" "V" "I")
        ?type           "cyclic"
        ?display        "cdfgData->hint->value == \"NEET\""
        ?description     "Z: impedance; Y: admittance; V: controlled voltage source; I: controlled current source"
    )
    cdfCreateParam( cdfId
        ?name           "EET_inj_type"
        ?prompt         "NEET Hint: Injection Type for NEET"
        ?defValue       "voltage"
        ?choices        '("voltage" "current")
        ?type           "cyclic"
        ?display        "cdfgData->hint->value == \"NEET\""
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ads = '( nil
        opParamExprList   nil
        uselib            nil
        typeMapping       nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     ""
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->ams = '( nil
        isPrimitive       nil
        extraTerminals    nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        enumParameters    nil
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->auCdl = '( nil
        otherParameters   nil
        dollarEqualParams nil
        dollarParams      nil
        modelName         ""
        propMapping       nil
        instParameters    nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     GNTProbe
        netlistProcedure  nil
    )
    cdfId->simInfo->auLvs = '( nil
        permuteRule       ""
        propMapping       nil
        deviceTerminals   ""
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  ansLvsCompPrim
    )
    cdfId->simInfo->cdsSpice = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  nil
    )
    cdfId->simInfo->hspiceS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        termOrder         ("ref" "xx" "yy")
        componentName     nil
        netlistProcedure  nil
        gntprobe          t
        gntviprobe        t 
    )
    cdfId->simInfo->spectreS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfSaveCDF( cdfId )
)



/****************************************************/
 LIBRARY = "gnt"
 CELL    = "gntiprobe"
/****************************************************/

let( ( libId cellId cdfId )
    unless( cellId = ddGetObj( LIBRARY CELL )
        error( "Could not get cell %s." CELL )
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )

    ;;; Parameters
    cdfCreateParam( cdfId
        ?name           "hint"
        ?prompt         "Direction Hint"
        ?defValue       "none"
        ?choices        '("none" "NEET")
        ?type           "cyclic"
        ?description     "Shows hints on the symbol to indicate which direction yy-ref or xx-ref need to face."
    )
    cdfCreateParam( cdfId
        ?name           "EET_W"
        ?prompt         "NEET Hint: Extra Element Type"
        ?defValue       "Z"
        ?choices        '("Z" "Y" "V" "I")
        ?type           "cyclic"
        ?display        "cdfgData->hint->value == \"NEET\""
        ?description     "Z: impedance; Y: admittance; V: controlled voltage source; I: controlled current source"
    )
    cdfCreateParam( cdfId
        ?name           "EET_inj_type"
        ?prompt         "NEET Hint: Injection Type for NEET"
        ?defValue       "current"
        ?choices        '("voltage" "current")
        ?type           "cyclic"
        ?display        "nil && cdfgData->hint->value == \"NEET\""
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ads = '( nil
        opParamExprList   nil
        uselib            nil
        typeMapping       nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     ""
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->ams = '( nil
        isPrimitive       nil
        extraTerminals    nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        enumParameters    nil
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->auCdl = '( nil
        otherParameters   nil
        dollarEqualParams nil
        dollarParams      nil
        modelName         ""
        propMapping       nil
        instParameters    nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     GNTProbe
        netlistProcedure  nil
    )
    cdfId->simInfo->auLvs = '( nil
        permuteRule       ""
        propMapping       nil
        deviceTerminals   ""
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  ansLvsCompPrim
    )
    cdfId->simInfo->cdsSpice = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  nil
    )
    cdfId->simInfo->hspiceS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        termOrder         ("ref" "xx" "yy")
        componentName     nil
        netlistProcedure  nil
        gntprobe          t
        gntiprobe         t
    )
    cdfId->simInfo->spectreS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfSaveCDF( cdfId )
)



/****************************************************/
 LIBRARY = "gnt"
 CELL    = "gntvprobe"
/****************************************************/

let( ( libId cellId cdfId )
    unless( cellId = ddGetObj( LIBRARY CELL )
        error( "Could not get cell %s." CELL )
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )

    ;;; Parameters
    cdfCreateParam( cdfId
        ?name           "hint"
        ?prompt         "Direction Hint"
        ?defValue       "none"
        ?choices        '("none" "NEET")
        ?type           "cyclic"
        ?description     "Shows hints on the symbol to indicate which direction yy-ref or xx-ref need to face."
    )
    cdfCreateParam( cdfId
        ?name           "EET_W"
        ?prompt         "NEET Hint: Extra Element Type"
        ?defValue       "Z"
        ?choices        '("Z" "Y" "V" "I")
        ?type           "cyclic"
        ?display        "cdfgData->hint->value == \"NEET\""
        ?description     "Z: impedance; Y: admittance; V: controlled voltage source; I: controlled current source"
    )
    cdfCreateParam( cdfId
        ?name           "EET_inj_type"
        ?prompt         "NEET Hint: Injection Type for NEET"
        ?defValue       "voltage"
        ?choices        '("voltage" "current")
        ?type           "cyclic"
        ?display        "nil && cdfgData->hint->value == \"NEET\""
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ads = '( nil
        opParamExprList   nil
        uselib            nil
        typeMapping       nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     ""
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->ams = '( nil
        isPrimitive       nil
        extraTerminals    nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        enumParameters    nil
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )
    cdfId->simInfo->auCdl = '( nil
        otherParameters   nil
        dollarEqualParams nil
        dollarParams      nil
        modelName         ""
        propMapping       nil
        instParameters    nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     GNTProbe
        netlistProcedure  nil
    )
    cdfId->simInfo->auLvs = '( nil
        permuteRule       ""
        propMapping       nil
        deviceTerminals   ""
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  ansLvsCompPrim
    )
    cdfId->simInfo->cdsSpice = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     subcircuit
        netlistProcedure  nil
    )
    cdfId->simInfo->hspiceS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        propMapping       nil
        termMapping       nil
        instParameters    nil
        otherParameters   nil
        termOrder         ("ref" "xx" "yy")
        componentName     nil
        netlistProcedure  nil
        spectre           t
        gntprobe          t
        gntvprobe         t
    )
    cdfId->simInfo->spectreS = '( nil
        namePrefix        "X"
        termOrder         ("ref" "xx" "yy")
        componentName     "subcircuit"
        macroArguments    nil
        netlistProcedure  ansSpiceSubcktCall
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfSaveCDF( cdfId )
)
