#import "@preview/polylux:0.4.0" : *
#import "@preview/physica:0.9.5" : *
#import "@preview/colorful-boxes:1.4.2": *
#import "@preview/showybox:2.0.4" : *
#import "@preview/cetz:0.3.4"
#import "@preview/parcio-slides:0.1.1": *
#import "@preview/unify:0.7.1" : *
#import "@preview/muchpdf:0.1.1" : muchpdf


#show: parcio-theme.with(
  aspect-ratio: "16-9", // "16-9" and "4-3" are the only possible options.
  text-size: 20pt, // We recommend around this text size, as it fits nicely.
)

#set text(font: "Noto Sans CJK JP")


#title-slide(
  title:  [低エネルギー炭素核融合反応の微視的原子核模型による記述 ],
  author: (name: "長尾 昂青", mail: ""),
  subtitle: none,
  short-title: none,
  logo: none,
  date: ([#datetime.today().display()]),
  extra: ( [
    共同研究者：萩野 浩一（京大理），鵜沢 浩太朗（原研）
    ])
)


#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)



#slide(
  title:[炭素核融合反応],
  new-section : "Introduction",
)[
  #set align(center)
  #text("Introduction", 40pt)
]


#slide(
  title : "C+C fusion reactions"
)[

  #columns(2,
[
  #showybox(
    frame:(
      border-color: rgb(149,78,51),
      body-color: none,
      title-color: rgb(241, 229, 199),
  ),
  title-style: (align :center,
  color:rgb(0,0,0)),
  title : [*大質量星の進化*],
  [
    #figure(
    image("../../nuclear-manybody/figure/star.png", width:83%),
    caption:[#text("[https://www.britannica.com/science/star-astronomy/Star-formation-and-evolution#/media/1/563395/143466]", size:8pt, luma(80))],
    supplement : none,
    )
  ])
  #colbreak()
  #showybox(
    frame:(
      border-color: rgb(149,78,51),
      body-color: none,
      title-color: rgb(241, 229, 199),
  ),
  title-style: (align :center,
  color:rgb(0,0,0)),
  title : [*X線スーパーバースト*],
  [
    #figure(
      image("../../nuclear-manybody/figure/nicer_burst_final_still.jpg", width: 70%),
      caption: [#text("[https://scitechdaily.com/nasas-nicer-catches-record-setting-x-ray-burst-from-massive-thermonuclear-blast/]", size: 8pt, luma(80))],
      supplement: none 
    )
  ])
  
]

)
- $isotope("C", a:12) + isotope("C", a:12)$核融合反応は，さまざまな天体現象に顔を出す．

- 低エネルギー反応($E_text("c.m.") tilde 1 - qty("2", "MeV")$) $-->$ 直接測定は困難 
]

#slide(
  title: "原子核物理の立場では",
)[
  #columns(2)[
    #only("2-")[
    #figure(
    muchpdf(
      read("figure/comp_exp_data_compressed.pdf", encoding:none)
    ),
    caption:[#text([$isotope("C", a:12) + isotope("C", a:12)$], rgb(0,0,255))と#text([$isotope("C", a:12) + isotope("C", a:13)$], rgb(255,0,0))の実験データ]
  )
  ]

  #only(1)[
    #figure(
      muchpdf(
        read("figure/exp_data_comp.pdf", encoding:none)
      ),
      caption:[#text([$isotope("C", a:12) + isotope("C", a:12)$], rgb(0,0,255))と#text([$isotope("C", a:12) + isotope("C", a:13)$], rgb(255,0,0))の実験データ]
    )
  ]
  #colbreak()
  
 #box(height: 100%, [ 
  縦軸：$S$ -factor (断面積)
  #one-by-one[
  - $isotope("C", a:12) + isotope("C", a:12) -->$ 共鳴構造 
  
  - $isotope("C", a:12) + isotope("C", a:13) -->$ 滑らかな構造
  ][
  #showybox(body-style:(align:center), frame:(border-color:rgb(227, 114, 34)), width: 80%)[*共鳴のピークと一致する！*
  
  Upper limitとなっている．]
  ]])
  
  ]
]


#slide(
  title : [C.L.JiangのConjecture],
  
)[
  // #only(1)[#place(dx: -1.8em, dy: -4.2em)[
  // #showybox(frame:(border-color:rgb(227, 114, 34)),width: 70%)[
  //   #cite(<Jiang2013>, form:"full")]]]
  #one-by-one[
  #place(dx: -1.8em, dy: -2.25em)[
  #showybox(frame:(border-color:rgb(227, 114, 34)),width: 70%)[
    #cite(<Jiang2013>, form:"full")]]
  #showybox(frame:(
    border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)
  ),
  title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*$isotope("C", a:12) + isotope("C", a:12)$反応*]
  )[
    - $isotope("Mg", a:24)$：準位密度低(偶偶核) ($isotope("Mg", a:25)$は偶奇核)

    - $Q$値の低さ： $-->$ $isotope("Mg", a:24)$は低励起エネルギー

    $ & isotope("C", a:12) + isotope("C",a:12) arrow isotope("Mg", a:24) (Q = qty("13.934", "MeV")) \ 
    &isotope("C", a:12)+isotope("C",a:13) arrow isotope("Mg", a:25) (Q=qty("16.318", "MeV")) $

    例：$E_text("c.m.") = qty("5.0","MeV") => isotope("Mg", a:24) (E^* = qty("18.934", "MeV") ), quad isotope("Mg", a:25)(E^* = qty("21.318", "MeV"))$

    - $isotope("Mg", a:24)$は$J^pi = (text("even"))^+$に限られる
    
    ]]
    $=>$ トンネリングだけではなく，複合核の情報が必要！
    // ]][
    //   $==>$ $sigma_text("fus") = sum_J sigma_text("tun") [1-exp(-2pi Gamma_J slash D_J)] = sum_J sigma_J P_J quad (J: #text("Even only for") isotope("Mg", a:24))$

    // $P_J$：準位密度の効果による補正， $D_J = 1 slash rho_J$，$Gamma_J$：複合核の幅]
 ]


#slide(
  title : "研究目的"
)[
  #showybox(frame:(
    border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)
  ),
  title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*本研究の目的*]
  )[- 低エネルギーの計算
  $-->$ 不定性を減らすために，核子自由度に基づいた微視的な模型を利用
  
  - 二つの系($isotope("C",a:12)+ isotope("C",a:12)$と$isotope("C", a:12)+ isotope("C", a:13)$)の振る舞いの差を同じモデルで再現]
]

 #slide(
  title:[炭素核融合反応],
  new-section : "Model",
)[
  #set align(center)
  #text("Model", 40pt)
]

#slide(
  title:[複合核($isotope("Mg")$)の状態を準備]
)[
  #columns(2,[
  #one-by-one[#showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*複合核状態($isotope("Mg")$)の準備*]
  )[
    - Pairing effetsを含むこと
    - 核子自由度に基づくこと
  ]
  $==>$Shell model calculation!(*KSHELL*)
  
  #text([#cite(<Shimizu2019>, form:"full")],gray)
  
  valence $->$ $s d p f$

  $E_text("c.m.") tilde qty("5", "MeV")$に対応する励起エネルギーまで計算．


  #colbreak()][
  #showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*崩壊幅の見積り(統計模型)*]
  )[
    $
    Gamma_J (E_text("CN")^*) = frac(N_I_B, 2pi rho(E_text("CN")^*, J))
    $
    $I_B, J$：残留核，複合核のスピン 
    
    $N_I_B$：娘核の状態数
  ]

  $isotope("Mg", a:24)$，$isotope("Mg",a:25)$ともに，$p,alpha, n$の崩壊チャネルを考える．
]])
]

#slide(
  title:[ハミルトニアン]
)[
  #showybox(
    frame:(border-color:rgb(227, 114, 34)),width: 82%
  )[
    #cite(<Fanto2018>, form: "full")
  ]
  $n + isotope("Pt",a:194)$に用いられた手法を$isotope("C") + isotope("C")$へ拡張する．
  #columns(2,[
    #showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*ハミルトニアン*]
    )[$
    bold(H) = mat(bold(H)_text("C+C"), bold(V); bold(V)^T , bold(H)_text("CN")) 
  $
  ]
  $=>$ $isotope("C")+isotope("C")$チャネルと複合核チャネルのカップリングを行列形式で記述
  #only(1)[        #figure[
        #cetz.canvas({
  import cetz.draw: *
  // Your drawing code goes here
  // Name the circle
  circle((5,-4), name: "circle", stroke:green)
  line((1,0), (11,0), stroke:blue)
  line((2,0), (3,0), stroke:blue)
  circle((3,0), radius:0.15, fill:blue, name:"r1")
  circle((5,0), radius:0.2, fill:red, name:"r2")
  circle((7,0), radius:0.15, fill:blue, name:"r3")
  circle((9,0), radius:0.15, fill:blue, name:"r4")
  circle((11,0), radius:0.15, fill:blue, name:"r5")
  circle((1,0), radius: 0.15, fill:blue, name:"r0")

  set-style(mark: (end: "straight"))
  line((2,1.5), (10,1.5), name: "raxis")
  content("raxis.end", $ quad r $, anchor: "west")
  content("r1.south", $ r_(i_e-1)$, anchor: "north" )
  content("r0.south", $ r_(i_e)$, anchor: "north" )
  content("r3.south", $ r_(i_e+1)$, anchor: "north" )
  content("r4.south", $ r_(i_e+2)$, anchor: "north" )
  content("r5.south", $ r_(i_e+3)$, anchor: "north" )

  line((5,-1), (5, -3), stroke:3pt)
  line((5,-5), (5,-6), stroke:5pt,name:"decay")
  content((7.6, -5.5),text(fill: black, 20pt)[$Gamma$($p, n, alpha$崩壊)])
  content((6, -2),text(fill: black, 20pt)[$v_0$])

  // Draw a smaller red circle at "circle"'s east anchor
  fill(red)
  stroke(none)
  content("r2.south", $r_(i_e)$, anchor:"north")

  set-style(content: (frame: "rect", stroke: none, fill: white, padding: .1))
  content("circle.center", [*CN*], anchor: "center")

})]]
  ])
  
    #showybox(
    frame:(border-color:rgb(227, 114, 34)),width: 82%
  )[
    #cite(<Fanto2018>, form: "full")
  ]
  先行研究では，$bold(H)_text("CN")$は*ランダム行列*$-->$本研究では，*微視的*に用意する
  #columns(2,[
    #showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*ハミルトニアン*]
    )[$
    bold(H) = mat(bold(H)_text("C+C"), bold(V); bold(V)^T , bold(H)_text("CN")) 
  $
  ]
  #colbreak()

    #showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*$bold(H)_text("CN")$*]
    )[$
    bold(H)_(text("CN"),mu nu) = [cal(E)_mu - i Gamma(cal(E)_mu) slash 2]delta_(mu nu) 
  $
  $cal(E)_mu$：第$mu$励起状態
  ]
  ])
  

]

#slide(
  title:[$isotope("C")+isotope("C")$チャネル]
)[
  #columns(2,[
    #one-by-one[
      #showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  width:105%,
  title : [*$bold(H)_text("C+C")$*]
    )[
      $isotope("C",a:12)$，$isotope("C",a:13)$$->$球形と仮定．
      $
        bold(H)_(text("C+C"), i j) = [2t + V(r_i)]delta_(i j) - t delta_(i, j+1) -t delta_(i, j-1)
      $

      #only(1)[$t = hbar^2slash 2mu(Delta r)^2$]

      $V(r)$：M3Y+repulsive potential

      
    ]
    #only(1)[#text([#cite(<Esbensen2011>, form:"full")])]

    // #only(1)[#figure[#cetz.canvas({
    // import cetz.draw: *
    // // Your drawing code goes here
    // circle((1,2), name:"nucl1")
    // circle((6, 3), name:"nucl2")
    // set-style(mark: (end: "straight"))
    // line((1,2), (1.5, 1.4), name:"pos1")
    // line((6,3), (6.3, 2.4), name:"pos2")
    // line((1,2), (6,3), name:"r")
    // line((1.5, 1.4), (6.3, 2.4), name:"s")
    // content((3.9, 1.5), text(fill: black, 15pt)[$va(s)$])
    // content((1, 1.5), text(fill: black, 15pt)[$va(r)_1$])
    // content((6.5, 2.9), text(fill: black, 15pt)[$va(r)_2$])
    // content((3.5, 2.9), text(fill: black, 15pt)[$va(r)$])
    // })]]
    #only(1)[#figure(
      muchpdf(
        read("figure/potential_comp.pdf", encoding:none),
        ),
      caption:[]
    )]
    ][
      #only("2-")[#showybox(
    frame:(
      border-color : rgb(25, 43, 79),
    title-color: rgb(241, 229, 199)),
    title-style: (align:center,
  color: rgb(0,0,0),),
  title : [*$bold(V)$ Coupling matrix*],
    )[
      $
        bold(V)_(i, mu) = delta_(i,i_e) v_0 (Delta r)^(-1/2) 
      $
      $v_0$：カップリングパラメータ
      
    ]
    
    #only(2)[#figure(
      muchpdf(
        read("figure/potential_cp_compressed.pdf", encoding:none),
        scale: 2.0
      ),
    )
    $i_e$：ポテンシャル最小点
    ]
    #only(3)[
      #figure[
        #cetz.canvas({
  import cetz.draw: *
  // Your drawing code goes here
  // Name the circle
  circle((5,-4), name: "circle", stroke:green)
  line((1,0), (11,0), stroke:blue)
  line((2,0), (3,0), stroke:blue)
  circle((3,0), radius:0.15, fill:blue, name:"r1")
  circle((5,0), radius:0.2, fill:red, name:"r2")
  circle((7,0), radius:0.15, fill:blue, name:"r3")
  circle((9,0), radius:0.15, fill:blue, name:"r4")
  circle((11,0), radius:0.15, fill:blue, name:"r5")
  circle((1,0), radius: 0.15, fill:blue, name:"r0")

  set-style(mark: (end: "straight"))
  line((2,1.5), (10,1.5), name: "raxis")
  content("raxis.end", $ quad r $, anchor: "west")
  content("r1.south", $ r_(i_e-1)$, anchor: "north" )
  content("r0.south", $ r_(i_e-2)$, anchor: "north" )
  content("r3.south", $ r_(i_e+1)$, anchor: "north" )
  content("r4.south", $ r_(i_e+2)$, anchor: "north" )
  content("r5.south", $ r_(i_e+3)$, anchor: "north" )

  line((5,-1), (5, -3), stroke:3pt)
  line((5,-5), (5,-6), stroke:5pt,name:"decay")
  content((7.6, -5.5),text(fill: black, 20pt)[$Gamma$($p, n, alpha$崩壊)])
  content((6, -2),text(fill: black, 20pt)[$v_0$])

  // Draw a smaller red circle at "circle"'s east anchor
  fill(red)
  stroke(none)
  content("r2.south", $r_(i_e)$, anchor:"north")

  set-style(content: (frame: "rect", stroke: none, fill: white, padding: .1))
  content("circle.center", [*CN*], anchor: "center")
  line((7,2), (9,2), stroke:2pt)
  content((10.0,2), text(fill:black,20pt )[$S_l H_l^(+)$])
  line((9,1), (7,1), stroke:2pt)
  content((6,1), text(fill:black,20pt)[$H_l^(-)$])
})
#showybox(
    frame:(border-color:rgb(227, 114, 34)),width: 100%
  )[
  - 入口チャネルは，複合核の準位と同じ強さでCoupleする
  - $v_0$は$isotope("C",a:12)+isotope("C",a:12)$と$isotope("C",a:12)+isotope("C",a:13)$で変えない

    ]  ]
    ]
    ]
    ][
      
    ]
  ])
]

// #slide(
//   title:[断面積の求め方]
// )[
  
//   #showybox(
//     frame:(
//       border-color : rgb(25, 43, 79),
//     title-color: rgb(241, 229, 199)),
//     title-style: (align:center,
//   color: rgb(0,0,0),),
//   width:100%,
//   title : [*断面積の求め方のアウトライン*]
  
//     )[
//       #set align(center)
//       + 入口チャネルの境界条件(遠方でクーロン関数へ接続)
//       + ハミルトニアンの固有ベクトル
//       + 1.2. を組み合わせ$S$行列を得る
//       + $sigma_text("fus") =(pi slash k^2) sum_J g_J (1- abs(S_J)^2) $，$J$：複合核のスピン

//       $==>$Elastic Channel or fusion channelを仮定する！

      
//     ]
// ]
#slide(
  new-section: "Results",
  title:"炭素核融合反応"
)[
  #set align(center)
  #text("Results", 40pt)
]

#slide(
  title:[$v_0$を変えてみた]
)[

  #only(3)[
    #set align(center)
    #showybox(body-style:(align:center), frame:(border-color:rgb(227, 114, 34)), width: 60%)[  この振る舞いは，$v_0$によらず成り立つ]
  ]
  #columns(2,[
  //   #only(1)[#figure(
  //     muchpdf(
  //       read("figure/mds_sum_v00.1.pdf", encoding:none)
  //     ),
  //     caption:[$v_0 = 0.1$，$l_text("max") = 4$の結果]
  //   )]
  // #only(1)[
  //   \
  //   \
  //   \
    
  //   - 緑の点線 $->$ $isotope("C", a:12) + isotope("C",a:12)$の$l=0$のポテンシャル共鳴エネルギーに対応
  // $=>$ ポテンシャル共鳴 $>$ 核融合反応
  // ]
  
  #only(1)[
    #figure(
      muchpdf(read("figure/mds_tot_v00.3.pdf", encoding:none)),
      caption:[$v_0 = 0.3$，$l_text("max")=4$]
    )
    ]
  

  #only(2)[
    #figure(
      muchpdf(read("figure/mds_sum_v00.3_noexp.pdf", encoding:none)),
      caption:[$v_0 = 0.3$，$l_text("max")=4$]
    )]
  #only("1-2")[
    \
    \
    \ 
    - $isotope("C",a:12)+isotope("C",a:12)$$arrow$共鳴構造
    - $isotope("C",a:12)+isotope("C",a:13)$$arrow$滑らかな依存性
  ]
  #only(2)[
    
    #showybox(body-style:(align:center), frame:(border-color:rgb(227, 114, 34)), width: 80%)[*共鳴のピークと近い*
    \
    upper limitとなっている．]
  ]
  
  #only(3)[
    
    #figure(
      muchpdf(
        read("figure/mds_tot_v00.1_noexp.pdf", encoding:none),
        width:88%
      ),
      caption:[$v_0 = 0.1$],
    )
    #figure(
      muchpdf(read("figure/mds_tot_v00.5_noexp.pdf", encoding:none),
      width:88%),
      caption:[$v_0 = 0.6$]
    
    )
    
  ]
  

  // #only("3,4,5")[
  //   #figure(
  //     muchpdf(read("figure/mds_sum_v01.5.pdf", encoding:none)),
  //     caption:[$v_0 = 1.5$，$l_text("max") = 4$]
  //   )
  //   \
  //   \
  //   \
  //   - $v_0$を大きくすると，新たな共鳴構造
  // ]
  // #only("4,5")[
  //   $=>$ *反射大*

  // ]
  // #only(5)[
  //   例：一次元$V(x) = lambda delta(x)$($lambda in CC$)

  //   透過率$T$と反射率$R$に対して，
  //   $
  //     1 - T -R arrow 0 (abs(lambda) >> 1)
  //   $
    
  // ]
  
  ])
]
#slide(
  title:[振る舞いの差異の考察]
)[
  #columns(2,[
  $isotope("C")+isotope("C")$チャネルにおいて，
  $
    V_text("eff") = sum_mu frac(v_0^2, E-E_mu+i Gamma_mu slash 2)
  $
  $E tilde E_c$で，$E_c$が孤立($isotope("Mg",a:24)$)
  $
   -> Im V_text("eff") tilde 2 v_0^2/Gamma_c tilde 40 v_0^2
  $
  オーバーラップがある($isotope("Mg", a:25)$)
  $
    -> Im V_text("eff") tilde pi v_0^2/D(E_c) tilde 52.3 v_0^2
  $

  $isotope("Mg", a:24)$：$J=0$で，$Gamma tilde qty("0.05","MeV")$
  
  $isotope("Mg", a:25)$：$D(E) tilde qty( "0.060","MeV")$
  
  $=>$ almost same!
  
  #showybox(
    title:[指標として]
  )[
    $Im V_text("eff")$が同じになるように$v_0$の比を決める
  ]
  
  ]
  )
  
  // - $isotope("Mg", a:24)$の崩壊幅を10倍してみる $=>$ $P_J = 1 - exp(-2pi Gamma_J slash D_J) approx 1 $
  // #columns(2,[
  // #figure(
  //   muchpdf(read("figure/mds_tot_v00.3_large_gamma.pdf", encoding:none)),
  // )
  // such that

  
  // ])
]

#slide(
  new-section:"Summary",
  title:"Summary and future works"
)[
  = Summary 
  - 実験での不定性が大きな低エネルギー領域の断面積を計算
  - $isotope("C",a:12) + isotope("C", a:12)$と$isotope("C",a:12) + isotope("C", a:13)$の振る舞いの違い(共鳴or滑らか)を再現
  = Future works
  - $isotope("C") + isotope("C")$のポテンシャル依存性を確認
  - カップリング行列$V$の定量的な評価

]

#bib-slide(
  bibliography("0919.bib", style: "../../../typst/bib/apset.csl"),
  title: "References"
  )