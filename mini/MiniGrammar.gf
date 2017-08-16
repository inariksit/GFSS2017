abstract MiniGrammar = {

-- collected from GF/lib/src/abstract/*.gf
-- the functions marked ---s are shortcuts





-- Utt, Sentence
  cat 
    Utt ;    -- sentence, question, word...         e.g. "be quiet"
    S ;      -- declarative sentence                e.g. "she lives here"

  fun
    UttS      : S  -> Utt ;
    UttNP     : NP -> Utt ;


-- Clause
  cat
    Cl ;     -- declarative clause, with all tenses e.g. "she looks at this"
    Pol ;    -- polarity                            e.g. positive, negative

  fun
    UsePresCl : Pol -> Cl  -> S ;       -- John does not walk ---s
    PredVP    : NP -> VP -> Cl ;        -- John walks / John does not walk
    PPos      : Pol ;                   -- I sleep  [positive polarity]
    PNeg      : Pol ;                   -- I do not sleep [negative polarity]



-- Verb, Verb Phrase (VP)
  cat 
    VP ;     -- verb phrase             e.g. "lives here"
    V ;      -- one-place verb          e.g. "sleep" 
    V2 ;     -- two-place verb          e.g. "love"

  fun
    UseV      : V   -> VP ;             -- sleep
    ComplV2   : V2  -> NP -> VP ;       -- love it  ---s
    UseAP     : AP  -> VP ;             -- be small ---s
    AdvVP     : VP -> Adv -> VP ;       -- sleep here

-- Noun, Common Noun (CN), Noun Phrase (NP)
  cat
    NP ;     -- noun phrase (subject or object)     e.g. "the red house"
    CN ;     -- common noun (without determiner)    e.g. "red house"
    N ;      -- common noun                         e.g. "house"
    PN ;     -- proper name                         e.g. "Paris"

  fun
    DetCN     : Det -> CN -> NP ;       -- the man
    UsePN     : PN -> NP ;              -- John
    UsePron   : Pron -> NP ;            -- he
    MassNP    : CN -> NP ;              -- milk


    UseN      : N -> CN ;               -- house
    AdjCN     : AP -> CN  -> CN ;       -- big house

-- Adjective
  cat
    AP ;     -- adjectival phrase       e.g. "very warm"
    A ;      -- one-place adjective     e.g. "warm"
  fun
    PositA    : A  -> AP ;              -- warm

-- Adverb
  cat
    Adv ;    -- adverbial phrase           e.g. "in the house"
    Prep ;   -- preposition, or just case  e.g. "in", dative
  fun
    PrepNP    : Prep -> NP -> Adv ;     -- in the house
    
    in_Prep   : Prep ;
    on_Prep   : Prep ;
    with_Prep : Prep ;


-- Conjunction
  cat
    Conj ;   -- conjunction  e.g. "and"
  fun
    CoordS    : Conj -> S -> S -> S ;   -- he walks and she runs ---s
    and_Conj  : Conj ;
    or_Conj   : Conj ;

-- Determiner
  cat  
    Det ;    -- determiner phrase e.g. "those"
  fun
    a_Det     : Det ;                   -- indefinite singular ---s
    aPl_Det   : Det ;                   -- indefinite plural   ---s
    the_Det   : Det ;                   -- definite singular   ---s
    thePl_Det : Det ;                   -- definite plural     ---s
    every_Det : Det ;

-- Pronoun
  cat
    Pron ;   -- personal pronoun  e.g. "she"
  fun   
    i_Pron     : Pron ;
    youSg_Pron : Pron ;
    he_Pron    : Pron ;
    she_Pron   : Pron ;
    we_Pron    : Pron ;
    youPl_Pron : Pron ;
    they_Pron  : Pron ;
    
}