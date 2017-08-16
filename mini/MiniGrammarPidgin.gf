concrete MiniGrammarPidgin of MiniGrammar = open Prelude in {


-- Utt, Sentence
  lincat 
    Utt = SS ;
    S = SS ;

  lin
    UttS s = s ;
    UttNP np = np ;


-- Clause
  lincat
    Cl = SS ;
    Pol = SS ;

  lin
    UsePresCl pol cl = { s = cl.s ++ pol.s} ;
    PredVP np vp = { s = np.s ++ vp.s } ;
    PPos = { s = "" } ;
    PNeg = { s = "not" } ;



-- Verb, Verb Phrase (VP)
  lincat 
    VP = SS ;
    V  = SS ;
    V2 = SS ;

  lin
    UseV v = v ;
    ComplV2 v2 np = { s = v2.s ++ np.s } ;
    UseAP ap = ap ;
    AdvVP vp adv = {s = vp.s ++ adv.s } ;

-- Noun, Common Noun (CN), Noun Phrase (NP)
  lincat
    NP = SS ;
    CN = SS ;
    N = SS ;
    PN = SS ;

  lin
    DetCN det cn = { s = det.s ++ cn.s } ;
    UsePN pn = pn ;
    UsePron pron = pron ;
    MassNP cn = cn ;


    UseN n = n ;
    AdjCN ap cn = { s = ap.s ++ cn.s } ;

-- Adjective
  lincat
    AP = SS ;
    A = SS ;
  lin
    PositA a = a ;

-- Adverb
  lincat
    Adv = SS ;
    Prep = SS ;
  lin
    PrepNP prep np = { s = prep.s ++ np.s } ;
    
    in_Prep   = { s = "in" } ;
    on_Prep   = { s = "on" } ;
    with_Prep = { s = "with" } ;


-- Conjunction
  lincat
    Conj = SS ;
  lin
    CoordS conj s1 s2 = { s = s1.s ++ conj.s ++ s2.s } ;
    and_Conj = { s = "and" } ;
    or_Conj = { s = "or" } ;

-- Determiner
  lincat  
    Det = SS ;
  lin
    a_Det   = { s = "a" } ;
    aPl_Det = { s = [] } ;
    the_Det = { s = "the" } ;
    thePl_Det = { s = "the" } ;
    every_Det = { s = "every" } ;

-- Pronoun
  lincat
    Pron = SS ;
  lin   
    i_Pron     = { s = "i" } ;
    youSg_Pron = { s = "you" } ;
    he_Pron    = { s = "he" } ;
    she_Pron   = { s = "she" } ;
    we_Pron    = { s = "we" } ;
    youPl_Pron = { s = "you" } ;
    they_Pron  = { s = "they" } ;
    
}