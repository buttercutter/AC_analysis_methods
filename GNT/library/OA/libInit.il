; used on ilLabels on gntprobe symbol


procedure( GNTSymbolGetYYHint(inst "d") 
 GNTSymbolGetHint(inst "yy")
)

procedure( GNTSymbolGetXXHint(inst "d") 
 GNTSymbolGetHint(inst "xx")
)

__gnt_symbol_hints = '( 
  ; name     xx_hint yy_hint
  ( "none" ( ""      "" ) )
  ( "2GFT"  ( ""      "T=inf" ) ) ; for xx do not put T=0 as H(ix=0,iy)=0 != H0
  ( "2CT"   ( "fwd"   "rev" ) ) ; 
;  ( "EET" ( "Zref=0" "Zref=inf" ) )
  )

procedure( GNTSymbolGetHint(inst node "dt")
    let( ( (cdfgData cdfGetInstCDF(inst) ) hint )
        hint = cdfgData->hint->value
        if( hint == "NEET" then
            GNTSymbolGetEETHint(inst node)
        else
            if( node == "xx" then
                car(cadr(assoc( hint __gnt_symbol_hints)))
            else
                cadr(cadr(assoc( hint __gnt_symbol_hints)))
            )
        )
    )
)

__gnt_EET_symbol_hints = '( 
  ; W       inj_type     xx_hint yy_hint
  ( "Z" ( ( "voltage" ( "Zref=0"  "Zref=inf" ) ) ( "current" ( "Zref=inf"  "Zref=0" ) ) ) )
  ( "Y" ( ( "voltage" ( "Yref=inf"  "Yref=0" ) ) ( "current" ( "Yref=0"  "Yref=inf" ) ) ) )
  ( "V" ( ( "voltage" ( "Href=0"  "Href=inf" ) ) ( "current" ( "Href=inf"  "Href=0" ) ) ) )
  ( "I" ( ( "voltage" ( "Href=inf"  "Href=0" ) ) ( "current" ( "Href=0"  "Href=inf" ) ) ) )
)

procedure( GNTSymbolGetEETHint(inst node "dt")
    let( ( (cdfgData cdfGetInstCDF(inst) ) EET_W EET_inj_type hints)
        EET_W = cdfgData->EET_W->value
        EET_inj_type = cdfgData->EET_inj_type->value
        hints = cadr(assoc( EET_inj_type cadr(assoc( EET_W __gnt_EET_symbol_hints ))))
        if( node == "xx" then
            car(hints)
        else
            cadr(hints)
        )
    )
)
