
function {:existential true} my_inv (
b0000 : bool,
b0001 : bool,
b0002 : bool,
b0003 : bool,
b0004 : bool,
b0005 : bool,
b0006 : bool,
b0007 : bool,
b0008 : bool,
b0009 : bool,
b0010 : bool,
b0011 : bool,
b0012 : bool,
b0013 : bool,
b0014 : bool,
b0015 : bool,
b0016 : bool,
b0017 : bool,
b0018 : bool,
b0019 : bool,
b0020 : bool,
b0021 : bool,
b0022 : bool,
b0023 : bool,
b0024 : bool,
b0025 : bool,
b0026 : bool,
b0027 : bool,
b0028 : bool,
b0029 : bool,
b0030 : bool,
b0031 : bool,
b0032 : bool,
b0033 : bool,
b0034 : bool,
b0035 : bool,
b0036 : bool,
b0037 : bool,
b0038 : bool,
b0039 : bool,
b0040 : bool,
b0041 : bool,
b0042 : bool,
b0043 : bool,
b0044 : bool,
b0045 : bool,
b0046 : bool,
b0047 : bool,
b0048 : bool,
b0049 : bool,
b0050 : bool,
b0051 : bool,
b0052 : bool,
b0053 : bool,
b0054 : bool,
b0055 : bool,
b0056 : bool,
b0057 : bool,
b0058 : bool,
b0059 : bool,
b0060 : bool,
b0061 : bool,
b0062 : bool,
b0063 : bool,
b0064 : bool,
b0065 : bool,
b0066 : bool,
b0067 : bool,
b0068 : bool,
b0069 : bool,
b0070 : bool,
b0071 : bool,
b0072 : bool,
b0073 : bool,
b0074 : bool,
b0075 : bool,
b0076 : bool,
b0077 : bool,
b0078 : bool,
b0079 : bool,
b0080 : bool,
b0081 : bool,
b0082 : bool,
b0083 : bool,
b0084 : bool,
b0085 : bool,
b0086 : bool,
b0087 : bool,
b0088 : bool,
b0089 : bool,
b0090 : bool,
b0091 : bool,
b0092 : bool,
b0093 : bool,
b0094 : bool,
b0095 : bool,
b0096 : bool,
b0097 : bool,
b0098 : bool,
b0099 : bool,
b0100 : bool,
b0101 : bool,
b0102 : bool,
b0103 : bool,
b0104 : bool,
b0105 : bool,
b0106 : bool,
b0107 : bool,
b0108 : bool,
b0109 : bool,
b0110 : bool,
b0111 : bool,
b0112 : bool,
b0113 : bool,
b0114 : bool,
b0115 : bool,
b0116 : bool,
b0117 : bool,
b0118 : bool,
b0119 : bool,
b0120 : bool,
b0121 : bool,
b0122 : bool,
b0123 : bool,
b0124 : bool,
b0125 : bool,
b0126 : bool,
b0127 : bool,
b0128 : bool,
b0129 : bool,
b0130 : bool,
b0131 : bool,
b0132 : bool,
b0133 : bool,
b0134 : bool,
b0135 : bool,
b0136 : bool,
b0137 : bool,
b0138 : bool,
b0139 : bool,
b0140 : bool,
b0141 : bool,
b0142 : bool,
b0143 : bool,
b0144 : bool,
b0145 : bool,
b0146 : bool,
b0147 : bool,
b0148 : bool,
b0149 : bool,
b0150 : bool,
b0151 : bool,
b0152 : bool,
b0153 : bool,
b0154 : bool,
b0155 : bool,
b0156 : bool,
b0157 : bool,
b0158 : bool,
b0159 : bool,
b0160 : bool,
b0161 : bool,
b0162 : bool,
b0163 : bool,
b0164 : bool,
b0165 : bool,
b0166 : bool,
b0167 : bool,
b0168 : bool,
b0169 : bool,
b0170 : bool,
b0171 : bool,
b0172 : bool,
b0173 : bool,
b0174 : bool,
b0175 : bool,
b0176 : bool,
b0177 : bool,
b0178 : bool,
b0179 : bool,
b0180 : bool,
b0181 : bool,
b0182 : bool,
b0183 : bool,
b0184 : bool,
b0185 : bool,
b0186 : bool,
b0187 : bool,
b0188 : bool
) : bool;

axiom $arch_ptr_size == 8;

axiom $arch_spec_ptr_start == $max.u8;

const unique ^$##thread_id: $ctype;

axiom $def_math_type(^$##thread_id);

type $##thread_id;

const unique ^$##club: $ctype;

axiom $def_math_type(^$##club);

type $##club;

const unique ^s_node: $ctype;

axiom $is_span_sequential(^s_node);

axiom $def_struct_type(^s_node, 16, false, false);

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2(#s1, #s2, #p, ^s_node) } $inv2(#s1, #s2, #p, ^s_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall #s1: $state, #s2: $state, #p: $ptr :: { $inv2_without_lemmas(#s1, #s2, #p, ^s_node) } $inv2_without_lemmas(#s1, #s2, #p, ^s_node) == $set_eq($owns(#s2, #p), $set_empty()));

axiom (forall p: $ptr, q: $ptr, s: $state :: { $in(q, $composite_extent(s, p, ^s_node)) } $in(q, $composite_extent(s, p, ^s_node)) == (q == p));

const unique s_node.key: $field;

axiom $def_phys_field(^s_node, s_node.key, ^^i4, false, 0);

const unique s_node.next: $field;

axiom $def_phys_field(^s_node, s_node.next, $ptr_to(^s_node), false, 8);

function F#glob_reach() : $oset;

const unique cf#glob_reach: $pure_function;

axiom $function_arg_type(cf#glob_reach, 0, ^$#oset);

procedure glob_reach() returns ($result: $oset);
  free ensures $result == F#glob_reach();
  free ensures $call_transition(old($s), $s);



const unique ^$#_purecall_handler#1: $ctype;

axiom $def_fnptr_type(^$#_purecall_handler#1);

type $#_purecall_handler#1;

const unique ^$#_invalid_parameter_handler#2: $ctype;

axiom $def_fnptr_type(^$#_invalid_parameter_handler#2);

type $#_invalid_parameter_handler#2;

const unique ^$#sls_double_all.c..36263#3: $ctype;

axiom $def_fnptr_type(^$#sls_double_all.c..36263#3);

type $#sls_double_all.c..36263#3;

const unique ^$#_PtFuncCompare#4: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#4);

type $#_PtFuncCompare#4;

const unique ^$#_PtFuncCompare#5: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#5);

type $#_PtFuncCompare#5;

const unique ^$#_PtFuncCompare#6: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#6);

type $#_PtFuncCompare#6;

const unique ^$#_PtFuncCompare#7: $ctype;

axiom $def_fnptr_type(^$#_PtFuncCompare#7);

type $#_PtFuncCompare#7;

const unique ^$#_onexit_t#8: $ctype;

axiom $def_fnptr_type(^$#_onexit_t#8);

type $#_onexit_t#8;

function F##int_max(SP#x: int, SP#y: int) : int;

const unique cf##int_max: $pure_function;

axiom (forall SP#x: int, SP#y: int :: { F##int_max(SP#x, SP#y) } $in_range_i4(F##int_max(SP#x, SP#y)));

axiom $function_arg_type(cf##int_max, 0, ^^i4);

axiom $function_arg_type(cf##int_max, 1, ^^i4);

axiom $function_arg_type(cf##int_max, 2, ^^i4);

procedure #int_max(SP#x: int, SP#y: int) returns ($result: int);
  free ensures $in_range_i4($result);
  free ensures $result == F##int_max(SP#x, SP#y);
  free ensures $call_transition(old($s), $s);



function F##int_min(SP#x: int, SP#y: int) : int;

const unique cf##int_min: $pure_function;

axiom (forall SP#x: int, SP#y: int :: { F##int_min(SP#x, SP#y) } $in_range_i4(F##int_min(SP#x, SP#y)));

axiom $function_arg_type(cf##int_min, 0, ^^i4);

axiom $function_arg_type(cf##int_min, 1, ^^i4);

axiom $function_arg_type(cf##int_min, 2, ^^i4);

procedure #int_min(SP#x: int, SP#y: int) returns ($result: int);
  free ensures $in_range_i4($result);
  free ensures $result == F##int_min(SP#x, SP#y);
  free ensures $call_transition(old($s), $s);



function F#sll(#s: $state, SP#hd: $ptr) : bool;

const unique cf#sll: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll(#s, SP#hd) } 1 < $decreases_level ==> $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll(#s, SP#hd));

axiom $function_arg_type(cf#sll, 0, ^^bool);

axiom $function_arg_type(cf#sll, 1, $ptr_to(^s_node));

procedure sll(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  free ensures $result == F#sll($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#srtl(#s: $state, SP#hd: $ptr) : bool;

const unique cf#srtl: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#srtl(#s, SP#hd) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#srtl(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#srtl(#s, SP#hd)));

axiom $function_arg_type(cf#srtl, 0, ^^bool);

axiom $function_arg_type(cf#srtl, 1, $ptr_to(^s_node));

procedure srtl(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result;
  free ensures $result == F#srtl($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#rsrtl(#s: $state, SP#hd: $ptr) : bool;

const unique cf#rsrtl: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#rsrtl(#s, SP#hd) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#rsrtl(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#rsrtl(#s, SP#hd)));

axiom $function_arg_type(cf#rsrtl, 0, ^^bool);

axiom $function_arg_type(cf#rsrtl, 1, $ptr_to(^s_node));

procedure rsrtl(SP#hd: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result;
  free ensures $result == F#rsrtl($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#sll_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#sll_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_reach, 1, $ptr_to(^s_node));

procedure sll_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#sll_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#srtl_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#srtl_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#srtl_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#srtl_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#srtl_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#srtl_reach, 0, ^$#oset);

axiom $function_arg_type(cf#srtl_reach, 1, $ptr_to(^s_node));

procedure srtl_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#srtl_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#rsrtl_reach(#s: $state, SP#hd: $ptr) : $oset;

const unique cf#rsrtl_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#rsrtl_reach(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#rsrtl_reach(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#rsrtl_reach(#s, SP#hd) == $oset_empty()));

axiom $function_arg_type(cf#rsrtl_reach, 0, ^$#oset);

axiom $function_arg_type(cf#rsrtl_reach, 1, $ptr_to(^s_node));

procedure rsrtl_reach(SP#hd: $ptr) returns ($result: $oset);
  ensures ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result)) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $oset_empty());
  free ensures $result == F#rsrtl_reach($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_keys(#s: $state, SP#hd: $ptr) : $intset;

const unique cf#sll_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_keys(#s, SP#hd) } 1 < $decreases_level ==> ($non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_keys(#s, SP#hd))) && ($is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> F#sll_keys(#s, SP#hd) == $intset_empty()));

axiom $function_arg_type(cf#sll_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_keys, 1, $ptr_to(^s_node));

procedure sll_keys(SP#hd: $ptr) returns ($result: $intset);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  ensures $is_null($phys_ptr_cast(SP#hd, ^s_node)) ==> $result == $intset_empty();
  free ensures $result == F#sll_keys($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_min_key(#s: $state, SP#hd: $ptr) : int;

const unique cf#sll_min_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_min_key(#s, SP#hd) } 1 < $decreases_level ==> $in_range_i4(F#sll_min_key(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#sll_min_key(#s, SP#hd) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_min_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_min_key, 1, $ptr_to(^s_node));

procedure sll_min_key(SP#hd: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_min_key($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_max_key(#s: $state, SP#hd: $ptr) : int;

const unique cf#sll_max_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr :: { F#sll_max_key(#s, SP#hd) } 1 < $decreases_level ==> $in_range_i4(F#sll_max_key(#s, SP#hd)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> F#sll_max_key(#s, SP#hd) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_max_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_max_key, 1, $ptr_to(^s_node));

procedure sll_max_key(SP#hd: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $is_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node)) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_max_key($s, SP#hd);
  free ensures $call_transition(old($s), $s);



function F#sll_list_len_next(#s: $state, SP#x: $ptr) : int;

const unique cf#sll_list_len_next: $pure_function;

axiom (forall #s: $state, SP#x: $ptr :: { F#sll_list_len_next(#s, SP#x) } 1 < $decreases_level ==> $in_range_nat(F#sll_list_len_next(#s, SP#x)) && ($non_null($phys_ptr_cast(SP#x, ^s_node)) ==> F#sll_list_len_next(#s, SP#x) > 0) && ($is_null($phys_ptr_cast(SP#x, ^s_node)) ==> F#sll_list_len_next(#s, SP#x) == 0));

axiom $function_arg_type(cf#sll_list_len_next, 0, ^^nat);

axiom $function_arg_type(cf#sll_list_len_next, 1, $ptr_to(^s_node));

procedure sll_list_len_next(SP#x: $ptr) returns ($result: int);
  free ensures $in_range_nat($result);
  ensures $non_null($phys_ptr_cast(SP#x, ^s_node)) ==> $result > 0;
  ensures $is_null($phys_ptr_cast(SP#x, ^s_node)) ==> $result == 0;
  free ensures $result == F#sll_list_len_next($s, SP#x);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#sll_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg(#s, SP#hd, SP#tl) == F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg(#s, SP#hd, SP#tl)) && (F#sll_lseg(#s, SP#hd, SP#tl) ==> $oset_disjoint(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)))) && (F#sll_lseg(#s, SP#hd, SP#tl) && F#sll(#s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll(#s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next(#s, $phys_ptr_cast(SP#tl, ^s_node)))) && (F#sll_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#hd, ^s_node) && !$oset_in($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1)));

axiom $function_arg_type(cf#sll_lseg, 0, ^^bool);

axiom $function_arg_type(cf#sll_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg, 2, $ptr_to(^s_node));

procedure sll_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $result ==> $oset_disjoint(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && F#sll($s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SP#hd, ^s_node)) && F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_reach($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next($s, $phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#hd, ^s_node) && !$oset_in($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) ==> F#sll_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1);
  free ensures $result == F#sll_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#srtl_lseg(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : bool;

const unique cf#srtl_lseg: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#srtl_lseg(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg(#s, SP#hd, SP#tl) == F#srtl(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, SP#hd, SP#tl)) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, SP#hd, SP#tl)) && (F#srtl_lseg(#s, SP#hd, SP#tl) ==> $oset_disjoint(F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && F#srtl(#s, $phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= F#sll_min_key(#s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl(#s, $phys_ptr_cast(SP#hd, ^s_node)) && F#srtl_reach(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#srtl_reach(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next(#s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_max_key(#s, $phys_ptr_cast(SP#tl, ^s_node))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && !$oset_in($rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1) && F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && (F#srtl_lseg(#s, SP#hd, SP#tl) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_keys(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_singleton($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == 1 && F#sll_lseg_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))));

axiom $function_arg_type(cf#srtl_lseg, 0, ^^bool);

axiom $function_arg_type(cf#srtl_lseg, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#srtl_lseg, 2, $ptr_to(^s_node));

procedure srtl_lseg(SP#hd: $ptr, SP#tl: $ptr) returns ($result: bool);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#srtl($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result;
  ensures $result ==> $oset_disjoint(F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)));
  ensures $result && F#srtl($s, $phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= F#sll_min_key($s, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SP#hd, ^s_node)) && F#srtl_reach($s, $phys_ptr_cast(SP#hd, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#srtl_reach($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_keys($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), F#sll_list_len_next($s, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_min_key($s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_max_key($s, $phys_ptr_cast(SP#hd, ^s_node)) == F#sll_max_key($s, $phys_ptr_cast(SP#tl, ^s_node));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && !$oset_in($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node), F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) <= $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $oset_singleton($phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)), 1) && F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node));
  ensures $result && $non_null($phys_ptr_cast(SP#tl, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) && F#srtl_lseg_reach($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $oset_singleton($phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_keys($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node))) && F#sll_lseg_len_next($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == 1 && F#sll_lseg_min_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node)) && F#sll_lseg_max_key($s, $phys_ptr_cast(SP#hd, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#tl, ^s_node), ^s_node)) == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#tl, ^s_node));
  free ensures $result == F#srtl_lseg($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#sll_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == F#sll_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#sll_lseg_reach(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#sll_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#sll_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_reach, 2, $ptr_to(^s_node));

procedure sll_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  free ensures $result == F#sll_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#srtl_lseg_reach(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $oset;

const unique cf#srtl_lseg_reach: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#srtl_lseg_reach(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#srtl_lseg_reach(#s, SP#hd, SP#tl) == F#srtl_reach(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#srtl_lseg_reach(#s, SP#hd, SP#tl) == $oset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), F#srtl_lseg_reach(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#srtl_lseg_reach, 0, ^$#oset);

axiom $function_arg_type(cf#srtl_lseg_reach, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#srtl_lseg_reach, 2, $ptr_to(^s_node));

procedure srtl_lseg_reach(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $oset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#srtl_reach($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $oset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $oset_in($phys_ptr_cast(SP#hd, ^s_node), $result);
  free ensures $result == F#srtl_lseg_reach($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_keys(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : $intset;

const unique cf#sll_lseg_keys: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_keys(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == F#sll_keys(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_keys(#s, SP#hd, SP#tl) == $intset_empty()) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), F#sll_lseg_keys(#s, SP#hd, SP#tl))));

axiom $function_arg_type(cf#sll_lseg_keys, 0, ^$#intset);

axiom $function_arg_type(cf#sll_lseg_keys, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_keys, 2, $ptr_to(^s_node));

procedure sll_lseg_keys(SP#hd: $ptr, SP#tl: $ptr) returns ($result: $intset);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_keys($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $intset_empty();
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $intset_in($rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node)), $result);
  free ensures $result == F#sll_lseg_keys($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_min_key(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_min_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_min_key(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_i4(F#sll_lseg_min_key(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_min_key(#s, SP#hd, SP#tl) == F#sll_min_key(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_min_key(#s, SP#hd, SP#tl) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_min_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_lseg_min_key, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_min_key, 2, $ptr_to(^s_node));

procedure sll_lseg_min_key(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_min_key($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_min_key($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_max_key(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_max_key: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_max_key(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_i4(F#sll_lseg_max_key(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_max_key(#s, SP#hd, SP#tl) == F#sll_max_key(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr(#s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_max_key(#s, SP#hd, SP#tl) == $rd_inv(#s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node))));

axiom $function_arg_type(cf#sll_lseg_max_key, 0, ^^i4);

axiom $function_arg_type(cf#sll_lseg_max_key, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_max_key, 2, $ptr_to(^s_node));

procedure sll_lseg_max_key(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_i4($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_max_key($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SP#hd, ^s_node), ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == $rd_inv($s, s_node.key, $phys_ptr_cast(SP#hd, ^s_node));
  free ensures $result == F#sll_lseg_max_key($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



function F#sll_lseg_len_next(#s: $state, SP#hd: $ptr, SP#tl: $ptr) : int;

const unique cf#sll_lseg_len_next: $pure_function;

axiom (forall #s: $state, SP#hd: $ptr, SP#tl: $ptr :: { F#sll_lseg_len_next(#s, SP#hd, SP#tl) } 1 < $decreases_level ==> $in_range_nat(F#sll_lseg_len_next(#s, SP#hd, SP#tl)) && ($is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) == F#sll_list_len_next(#s, $phys_ptr_cast(SP#hd, ^s_node))) && ($phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) == 0) && ($non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> F#sll_lseg_len_next(#s, SP#hd, SP#tl) > 0));

axiom $function_arg_type(cf#sll_lseg_len_next, 0, ^^nat);

axiom $function_arg_type(cf#sll_lseg_len_next, 1, $ptr_to(^s_node));

axiom $function_arg_type(cf#sll_lseg_len_next, 2, $ptr_to(^s_node));

procedure sll_lseg_len_next(SP#hd: $ptr, SP#tl: $ptr) returns ($result: int);
  free ensures $in_range_nat($result);
  ensures $is_null($phys_ptr_cast(SP#tl, ^s_node)) ==> $result == F#sll_list_len_next($s, $phys_ptr_cast(SP#hd, ^s_node));
  ensures $phys_ptr_cast(SP#hd, ^s_node) == $phys_ptr_cast(SP#tl, ^s_node) ==> $result == 0;
  ensures $non_null($phys_ptr_cast(SP#hd, ^s_node)) && $phys_ptr_cast(SP#hd, ^s_node) != $phys_ptr_cast(SP#tl, ^s_node) ==> $result > 0;
  free ensures $result == F#sll_lseg_len_next($s, SP#hd, SP#tl);
  free ensures $call_transition(old($s), $s);



procedure sls_double_all(P#lst: $ptr) returns ($result: $ptr);
  requires F#srtl($s, $phys_ptr_cast(P#lst, ^s_node));
  modifies $s, $cev_pc;
  ensures F#srtl($s, $phys_ptr_cast(P#lst, ^s_node));
  ensures F#srtl($s, $phys_ptr_cast($result, ^s_node));
  free ensures $writes_nothing(old($s), $s);
  free ensures $call_transition(old($s), $s);



implementation sls_double_all(P#lst: $ptr) returns ($result: $ptr)
{
  var stmtexpr11#13: $ptr;
  var SL#curr9: $ptr;
  var stmtexpr10#12: $ptr;
  var SL#cp8: $ptr;
  var stmtexpr9#11: $state;
  var SL#_dryad_S13: $state;
  var stmtexpr8#10: $state;
  var SL#_dryad_S12: $state;
  var stmtexpr7#9: $state;
  var SL#_dryad_S11: $state;
  var stmtexpr6#8: $state;
  var SL#_dryad_S10: $state;
  var stmtexpr5#7: $state;
  var SL#_dryad_S9: $state;
  var stmtexpr4#6: $state;
  var SL#_dryad_S8: $state;
  var stmtexpr3#5: $ptr;
  var SL#curr4: $ptr;
  var stmtexpr2#4: $state;
  var SL#_dryad_S7: $state;
  var stmtexpr1#3: $oset;
  var stmtexpr0#2: $state;
  var SL#_dryad_S6: $state;
  var L#new_cp: $ptr;
  var curr_key#0: int where $in_range_i4(curr_key#0);
  var loopState#0: $state;
  var stmtexpr10#24: $ptr;
  var SL#curr3: $ptr;
  var stmtexpr9#23: $state;
  var SL#_dryad_S5: $state;
  var stmtexpr8#22: $state;
  var SL#_dryad_S4: $state;
  var stmtexpr7#21: $state;
  var SL#_dryad_S3: $state;
  var stmtexpr6#20: $state;
  var SL#_dryad_S2: $state;
  var stmtexpr5#19: $ptr;
  var SL#curr0: $ptr;
  var stmtexpr4#18: $state;
  var SL#_dryad_S1: $state;
  var stmtexpr3#17: $oset;
  var stmtexpr2#16: $state;
  var SL#_dryad_S0: $state;
  var SL#ALL_REACH: $oset;
  var L#curr: $ptr;
  var L#cp: $ptr;
  var L#res: $ptr;
  var L#curr_key: int where $in_range_i4(L#curr_key);
  var stmtexpr1#15: $oset;
  var stmtexpr0#14: $oset;
  var SL#_dryad_G1: $oset;
  var SL#_dryad_G0: $oset;
  var #wrTime$3^3.3: int;
  var #stackframe: int;


var p0000 : bool;
var p0001 : bool;
var p0002 : bool;
var p0003 : bool;
var p0004 : bool;
var p0005 : bool;
var p0006 : bool;
var p0007 : bool;
var p0008 : bool;
var p0009 : bool;
var p0010 : bool;
var p0011 : bool;
var p0012 : bool;
var p0013 : bool;
var p0014 : bool;
var p0015 : bool;
var p0016 : bool;
var p0017 : bool;
var p0018 : bool;
var p0019 : bool;
var p0020 : bool;
var p0021 : bool;
var p0022 : bool;
var p0023 : bool;
var p0024 : bool;
var p0025 : bool;
var p0026 : bool;
var p0027 : bool;
var p0028 : bool;
var p0029 : bool;
var p0030 : bool;
var p0031 : bool;
var p0032 : bool;
var p0033 : bool;
var p0034 : bool;
var p0035 : bool;
var p0036 : bool;
var p0037 : bool;
var p0038 : bool;
var p0039 : bool;
var p0040 : bool;
var p0041 : bool;
var p0042 : bool;
var p0043 : bool;
var p0044 : bool;
var p0045 : bool;
var p0046 : bool;
var p0047 : bool;
var p0048 : bool;
var p0049 : bool;
var p0050 : bool;
var p0051 : bool;
var p0052 : bool;
var p0053 : bool;
var p0054 : bool;
var p0055 : bool;
var p0056 : bool;
var p0057 : bool;
var p0058 : bool;
var p0059 : bool;
var p0060 : bool;
var p0061 : bool;
var p0062 : bool;
var p0063 : bool;
var p0064 : bool;
var p0065 : bool;
var p0066 : bool;
var p0067 : bool;
var p0068 : bool;
var p0069 : bool;
var p0070 : bool;
var p0071 : bool;
var p0072 : bool;
var p0073 : bool;
var p0074 : bool;
var p0075 : bool;
var p0076 : bool;
var p0077 : bool;
var p0078 : bool;
var p0079 : bool;
var p0080 : bool;
var p0081 : bool;
var p0082 : bool;
var p0083 : bool;
var p0084 : bool;
var p0085 : bool;
var p0086 : bool;
var p0087 : bool;
var p0088 : bool;
var p0089 : bool;
var p0090 : bool;
var p0091 : bool;
var p0092 : bool;
var p0093 : bool;
var p0094 : bool;
var p0095 : bool;
var p0096 : bool;
var p0097 : bool;
var p0098 : bool;
var p0099 : bool;
var p0100 : bool;
var p0101 : bool;
var p0102 : bool;
var p0103 : bool;
var p0104 : bool;
var p0105 : bool;
var p0106 : bool;
var p0107 : bool;
var p0108 : bool;
var p0109 : bool;
var p0110 : bool;
var p0111 : bool;
var p0112 : bool;
var p0113 : bool;
var p0114 : bool;
var p0115 : bool;
var p0116 : bool;
var p0117 : bool;
var p0118 : bool;
var p0119 : bool;
var p0120 : bool;
var p0121 : bool;
var p0122 : bool;
var p0123 : bool;
var p0124 : bool;
var p0125 : bool;
var p0126 : bool;
var p0127 : bool;
var p0128 : bool;
var p0129 : bool;
var p0130 : bool;
var p0131 : bool;
var p0132 : bool;
var p0133 : bool;
var p0134 : bool;
var p0135 : bool;
var p0136 : bool;
var p0137 : bool;
var p0138 : bool;
var p0139 : bool;
var p0140 : bool;
var p0141 : bool;
var p0142 : bool;
var p0143 : bool;
var p0144 : bool;
var p0145 : bool;
var p0146 : bool;
var p0147 : bool;
var p0148 : bool;
var p0149 : bool;
var p0150 : bool;
var p0151 : bool;
var p0152 : bool;
var p0153 : bool;
var p0154 : bool;
var p0155 : bool;
var p0156 : bool;
var p0157 : bool;
var p0158 : bool;
var p0159 : bool;
var p0160 : bool;
var p0161 : bool;
var p0162 : bool;
var p0163 : bool;
var p0164 : bool;
var p0165 : bool;
var p0166 : bool;
var p0167 : bool;
var p0168 : bool;
var p0169 : bool;
var p0170 : bool;
var p0171 : bool;
var p0172 : bool;
var p0173 : bool;
var p0174 : bool;
var p0175 : bool;
var p0176 : bool;
var p0177 : bool;
var p0178 : bool;
var p0179 : bool;
var p0180 : bool;
var p0181 : bool;
var p0182 : bool;
var p0183 : bool;
var p0184 : bool;
var p0185 : bool;
var p0186 : bool;
var p0187 : bool;

// INV:PTR: P#lst, L#curr, L#cp, L#res
// INV:INT: L#curr_key
// INV:LST: srtl

  anon6:
    assume $function_entry($s);
    assume $full_stop_ext(#tok$3^3.3, $s);
    assume $can_use_all_frame_axioms($s);
    assume #wrTime$3^3.3 == $current_timestamp($s);
    assume $def_writes($s, #wrTime$3^3.3, (lambda #p: $ptr :: false));
    // assume true
    // assume @decreases_level_is(2147483647); 
    assume 2147483647 == $decreases_level;
    // assume true
    //  --- Dryad annotated function --- 
    // _math \oset _dryad_G0; 
    // _math \oset _dryad_G1; 
    // _dryad_G0 := srtl_reach(lst); 
    call SL#_dryad_G0 := srtl_reach($phys_ptr_cast(P#lst, ^s_node));
    assume $full_stop_ext(#tok$4^0.0, $s);
    // _math \oset stmtexpr0#14; 
    // stmtexpr0#14 := _dryad_G0; 
    stmtexpr0#14 := SL#_dryad_G0;
    // _dryad_G1 := _dryad_G0; 
    SL#_dryad_G1 := SL#_dryad_G0;
    // _math \oset stmtexpr1#15; 
    // stmtexpr1#15 := _dryad_G1; 
    stmtexpr1#15 := SL#_dryad_G1;
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // int32_t curr_key; 
    // struct s_node* res; 
    // struct s_node* cp; 
    // struct s_node* curr; 
    // _math \oset ALL_REACH; 
    // assume ==>(@_vcc_ptr_neq_null(lst), &&(@_vcc_mutable(@state, lst), @writes_check(lst))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> $mutable($s, $phys_ptr_cast(P#lst, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(P#lst, ^s_node));
    // ALL_REACH := srtl_reach(lst); 
    call SL#ALL_REACH := srtl_reach($phys_ptr_cast(P#lst, ^s_node));
    assume $full_stop_ext(#tok$3^10.29, $s);
    assume true;
    // if (@_vcc_ptr_eq_null(lst)) ...
    if ($is_null($phys_ptr_cast(P#lst, ^s_node)))
    {
      anon1:
        // return (struct s_node*)@null; 
        $result := $phys_ptr_cast($null, ^s_node);
        assume true;
        assert $position_marker();
        goto #exit;
    }
    else
    {
      anon2:
        // assert @_vcc_possibly_unreachable; 
        assert {:PossiblyUnreachable true} true;
    }

  anon7:
    // curr := lst; 
    L#curr := $phys_ptr_cast(P#lst, ^s_node);
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert srtl_lseg(curr, curr); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume srtl_lseg(curr, curr); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(cp, cp); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume sll_lseg(cp, cp); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert srtl_lseg(cp, cp); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume srtl_lseg(cp, cp); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert srtl_lseg(res, res); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume srtl_lseg(res, res); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(lst, lst); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume sll_lseg(lst, lst); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assert srtl_lseg(lst, lst); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume srtl_lseg(lst, lst); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // cp := (struct s_node*)@null; 
    L#cp := $phys_ptr_cast($null, ^s_node);
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert srtl_lseg(curr, curr); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume srtl_lseg(curr, curr); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(cp, cp); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume sll_lseg(cp, cp); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert srtl_lseg(cp, cp); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume srtl_lseg(cp, cp); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert srtl_lseg(res, res); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume srtl_lseg(res, res); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(lst, lst); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume sll_lseg(lst, lst); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assert srtl_lseg(lst, lst); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume srtl_lseg(lst, lst); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // _math \state _dryad_S0; 
    // _dryad_S0 := @_vcc_current_state(@state); 
    SL#_dryad_S0 := $current_state($s);
    // _math \state stmtexpr2#16; 
    // stmtexpr2#16 := _dryad_S0; 
    stmtexpr2#16 := SL#_dryad_S0;
    // res := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
    call L#res := $alloc(^s_node);
    assume $full_stop_ext(#tok$3^17.16, $s);
    // assume !(@_vcc_oset_in(res, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
    // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(res)); 
    SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // _math \oset stmtexpr3#17; 
    // stmtexpr3#17 := _dryad_G1; 
    stmtexpr3#17 := SL#_dryad_G1;
    // assume ==(glob_reach(), _dryad_G1); 
    assume F#glob_reach() == SL#_dryad_G1;
    // _math \state _dryad_S1; 
    // _dryad_S1 := @_vcc_current_state(@state); 
    SL#_dryad_S1 := $current_state($s);
    // _math \state stmtexpr4#18; 
    // stmtexpr4#18 := _dryad_S1; 
    stmtexpr4#18 := SL#_dryad_S1;
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_keys(curr)), old(_dryad_S1, sll_keys(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_list_len_next(curr)), old(_dryad_S1, sll_list_len_next(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(curr)))), ==(old(_dryad_S0, rsrtl(curr)), old(_dryad_S1, rsrtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(curr)))), ==(old(_dryad_S0, rsrtl_reach(curr)), old(_dryad_S1, rsrtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll(curr)), old(_dryad_S1, sll(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_reach(curr)), old(_dryad_S1, sll_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_max_key(curr)), old(_dryad_S1, sll_max_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(curr)))), ==(old(_dryad_S0, sll_min_key(curr)), old(_dryad_S1, sll_min_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(curr)))), ==(old(_dryad_S0, srtl(curr)), old(_dryad_S1, srtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(curr)))), ==(old(_dryad_S0, srtl_reach(curr)), old(_dryad_S1, srtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll_keys(cp)), old(_dryad_S1, sll_keys(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll_list_len_next(cp)), old(_dryad_S1, sll_list_len_next(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(cp)))), ==(old(_dryad_S0, rsrtl(cp)), old(_dryad_S1, rsrtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(cp)))), ==(old(_dryad_S0, rsrtl_reach(cp)), old(_dryad_S1, rsrtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll(cp)), old(_dryad_S1, sll(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll_reach(cp)), old(_dryad_S1, sll_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll_max_key(cp)), old(_dryad_S1, sll_max_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(cp)))), ==(old(_dryad_S0, sll_min_key(cp)), old(_dryad_S1, sll_min_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(cp)))), ==(old(_dryad_S0, srtl(cp)), old(_dryad_S1, srtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(cp)))), ==(old(_dryad_S0, srtl_reach(cp)), old(_dryad_S1, srtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll_keys(lst)), old(_dryad_S1, sll_keys(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll_list_len_next(lst)), old(_dryad_S1, sll_list_len_next(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(lst)))), ==(old(_dryad_S0, rsrtl(lst)), old(_dryad_S1, rsrtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, rsrtl_reach(lst)))), ==(old(_dryad_S0, rsrtl_reach(lst)), old(_dryad_S1, rsrtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll(lst)), old(_dryad_S1, sll(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll_reach(lst)), old(_dryad_S1, sll_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll_max_key(lst)), old(_dryad_S1, sll_max_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, sll_reach(lst)))), ==(old(_dryad_S0, sll_min_key(lst)), old(_dryad_S1, sll_min_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(lst)))), ==(old(_dryad_S0, srtl(lst)), old(_dryad_S1, srtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S0, srtl_reach(lst)))), ==(old(_dryad_S0, srtl_reach(lst)), old(_dryad_S1, srtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S0, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S1, $phys_ptr_cast(P#lst, ^s_node));
    // assume @_vcc_ptr_neq_null(res); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node));
    // assume unchecked!(@_vcc_oset_in(res, ALL_REACH)); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), SL#ALL_REACH);
    // ALL_REACH := @_vcc_oset_union(ALL_REACH, @_vcc_oset_singleton(res)); 
    SL#ALL_REACH := $oset_union(SL#ALL_REACH, $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // struct s_node* curr0; 
    // curr0 := curr; 
    SL#curr0 := $phys_ptr_cast(L#curr, ^s_node);
    // struct s_node* stmtexpr5#19; 
    // stmtexpr5#19 := curr0; 
    stmtexpr5#19 := $phys_ptr_cast(SL#curr0, ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assert @reads_check_normal((curr->key)); 
    assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
    // curr_key := *((curr->key)); 
    L#curr_key := $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // curr_key := unchecked*(curr_key, 2); 
    L#curr_key := $unchk_mul(^^i4, L#curr_key, 2);
    // assume ==(curr_key, *(*((curr->key)), 2)); 
    assume L#curr_key == $op_mul($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), 2);
    // _math \state _dryad_S2; 
    // _dryad_S2 := @_vcc_current_state(@state); 
    SL#_dryad_S2 := $current_state($s);
    // _math \state stmtexpr6#20; 
    // stmtexpr6#20 := _dryad_S2; 
    stmtexpr6#20 := SL#_dryad_S2;
    // assert @prim_writes_check((res->key)); 
    assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#res, ^s_node), s_node.key));
    // *(res->key) := curr_key; 
    call $write_int(s_node.key, $phys_ptr_cast(L#res, ^s_node), L#curr_key);
    assume $full_stop_ext(#tok$3^24.3, $s);
    // _math \state _dryad_S3; 
    // _dryad_S3 := @_vcc_current_state(@state); 
    SL#_dryad_S3 := $current_state($s);
    // _math \state stmtexpr7#21; 
    // stmtexpr7#21 := _dryad_S3; 
    stmtexpr7#21 := SL#_dryad_S3;
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll_keys(*((res->next)))), old(_dryad_S3, sll_keys(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll_keys(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll_list_len_next(*((res->next)))), old(_dryad_S3, sll_list_len_next(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(*((res->next)))))), ==(old(_dryad_S2, rsrtl(*((res->next)))), old(_dryad_S3, rsrtl(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#rsrtl(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(*((res->next)))))), ==(old(_dryad_S2, rsrtl_reach(*((res->next)))), old(_dryad_S3, rsrtl_reach(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll(*((res->next)))), old(_dryad_S3, sll(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll_reach(*((res->next)))), old(_dryad_S3, sll_reach(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll_max_key(*((res->next)))), old(_dryad_S3, sll_max_key(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll_max_key(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(*((res->next)))))), ==(old(_dryad_S2, sll_min_key(*((res->next)))), old(_dryad_S3, sll_min_key(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#sll_min_key(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(*((res->next)))))), ==(old(_dryad_S2, srtl(*((res->next)))), old(_dryad_S3, srtl(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#srtl(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#srtl(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(*((res->next)))))), ==(old(_dryad_S2, srtl_reach(*((res->next)))), old(_dryad_S3, srtl_reach(*((res->next)))))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) == F#srtl_reach(SL#_dryad_S3, $rd_phys_ptr(SL#_dryad_S3, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node));
    // assume ==(old(_dryad_S2, sll_list_len_next(curr0)), old(_dryad_S3, sll_list_len_next(curr0))); 
    assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==(old(_dryad_S2, rsrtl_reach(curr0)), old(_dryad_S3, rsrtl_reach(curr0))); 
    assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==(old(_dryad_S2, sll(curr0)), old(_dryad_S3, sll(curr0))); 
    assume F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==(old(_dryad_S2, sll_reach(curr0)), old(_dryad_S3, sll_reach(curr0))); 
    assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==(old(_dryad_S2, srtl_reach(curr0)), old(_dryad_S3, srtl_reach(curr0))); 
    assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==(old(_dryad_S2, sll_list_len_next(curr)), old(_dryad_S3, sll_list_len_next(curr))); 
    assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==(old(_dryad_S2, rsrtl_reach(curr)), old(_dryad_S3, rsrtl_reach(curr))); 
    assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==(old(_dryad_S2, sll(curr)), old(_dryad_S3, sll(curr))); 
    assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==(old(_dryad_S2, sll_reach(curr)), old(_dryad_S3, sll_reach(curr))); 
    assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==(old(_dryad_S2, srtl_reach(curr)), old(_dryad_S3, srtl_reach(curr))); 
    assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==(old(_dryad_S2, sll_list_len_next(cp)), old(_dryad_S3, sll_list_len_next(cp))); 
    assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==(old(_dryad_S2, rsrtl_reach(cp)), old(_dryad_S3, rsrtl_reach(cp))); 
    assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==(old(_dryad_S2, sll(cp)), old(_dryad_S3, sll(cp))); 
    assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==(old(_dryad_S2, sll_reach(cp)), old(_dryad_S3, sll_reach(cp))); 
    assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==(old(_dryad_S2, srtl_reach(cp)), old(_dryad_S3, srtl_reach(cp))); 
    assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==(old(_dryad_S2, sll_list_len_next(res)), old(_dryad_S3, sll_list_len_next(res))); 
    assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#res, ^s_node));
    // assume ==(old(_dryad_S2, rsrtl_reach(res)), old(_dryad_S3, rsrtl_reach(res))); 
    assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#res, ^s_node));
    // assume ==(old(_dryad_S2, sll(res)), old(_dryad_S3, sll(res))); 
    assume F#sll(SL#_dryad_S2, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#res, ^s_node));
    // assume ==(old(_dryad_S2, sll_reach(res)), old(_dryad_S3, sll_reach(res))); 
    assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#res, ^s_node));
    // assume ==(old(_dryad_S2, srtl_reach(res)), old(_dryad_S3, srtl_reach(res))); 
    assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#res, ^s_node));
    // assume ==(old(_dryad_S2, sll_list_len_next(lst)), old(_dryad_S3, sll_list_len_next(lst))); 
    assume F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==(old(_dryad_S2, rsrtl_reach(lst)), old(_dryad_S3, rsrtl_reach(lst))); 
    assume F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==(old(_dryad_S2, sll(lst)), old(_dryad_S3, sll(lst))); 
    assume F#sll(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==(old(_dryad_S2, sll_reach(lst)), old(_dryad_S3, sll_reach(lst))); 
    assume F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==(old(_dryad_S2, srtl_reach(lst)), old(_dryad_S3, srtl_reach(lst))); 
    assume F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll_keys(curr0)), old(_dryad_S3, sll_keys(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll_list_len_next(curr0)), old(_dryad_S3, sll_list_len_next(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(curr0)))), ==(old(_dryad_S2, rsrtl(curr0)), old(_dryad_S3, rsrtl(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(curr0)))), ==(old(_dryad_S2, rsrtl_reach(curr0)), old(_dryad_S3, rsrtl_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll(curr0)), old(_dryad_S3, sll(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll_reach(curr0)), old(_dryad_S3, sll_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll_max_key(curr0)), old(_dryad_S3, sll_max_key(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr0)))), ==(old(_dryad_S2, sll_min_key(curr0)), old(_dryad_S3, sll_min_key(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(curr0)))), ==(old(_dryad_S2, srtl(curr0)), old(_dryad_S3, srtl(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(curr0)))), ==(old(_dryad_S2, srtl_reach(curr0)), old(_dryad_S3, srtl_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_keys(curr)), old(_dryad_S3, sll_keys(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_list_len_next(curr)), old(_dryad_S3, sll_list_len_next(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(curr)))), ==(old(_dryad_S2, rsrtl(curr)), old(_dryad_S3, rsrtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(curr)))), ==(old(_dryad_S2, rsrtl_reach(curr)), old(_dryad_S3, rsrtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll(curr)), old(_dryad_S3, sll(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_reach(curr)), old(_dryad_S3, sll_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_max_key(curr)), old(_dryad_S3, sll_max_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(curr)))), ==(old(_dryad_S2, sll_min_key(curr)), old(_dryad_S3, sll_min_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(curr)))), ==(old(_dryad_S2, srtl(curr)), old(_dryad_S3, srtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(curr)))), ==(old(_dryad_S2, srtl_reach(curr)), old(_dryad_S3, srtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll_keys(cp)), old(_dryad_S3, sll_keys(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll_list_len_next(cp)), old(_dryad_S3, sll_list_len_next(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(cp)))), ==(old(_dryad_S2, rsrtl(cp)), old(_dryad_S3, rsrtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(cp)))), ==(old(_dryad_S2, rsrtl_reach(cp)), old(_dryad_S3, rsrtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll(cp)), old(_dryad_S3, sll(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll_reach(cp)), old(_dryad_S3, sll_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll_max_key(cp)), old(_dryad_S3, sll_max_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(cp)))), ==(old(_dryad_S2, sll_min_key(cp)), old(_dryad_S3, sll_min_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(cp)))), ==(old(_dryad_S2, srtl(cp)), old(_dryad_S3, srtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(cp)))), ==(old(_dryad_S2, srtl_reach(cp)), old(_dryad_S3, srtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_keys(lst)), old(_dryad_S3, sll_keys(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_list_len_next(lst)), old(_dryad_S3, sll_list_len_next(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(lst)))), ==(old(_dryad_S2, rsrtl(lst)), old(_dryad_S3, rsrtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, rsrtl_reach(lst)))), ==(old(_dryad_S2, rsrtl_reach(lst)), old(_dryad_S3, rsrtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll(lst)), old(_dryad_S3, sll(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_reach(lst)), old(_dryad_S3, sll_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_max_key(lst)), old(_dryad_S3, sll_max_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, sll_reach(lst)))), ==(old(_dryad_S2, sll_min_key(lst)), old(_dryad_S3, sll_min_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(lst)))), ==(old(_dryad_S2, srtl(lst)), old(_dryad_S3, srtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S2, srtl_reach(lst)))), ==(old(_dryad_S2, srtl_reach(lst)), old(_dryad_S3, srtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S2, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S3, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr0)), ==(*((curr0->key)), old(_dryad_S2, *((curr0->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S2, *((curr0->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr)), ==(*((curr->key)), old(_dryad_S2, *((curr->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S2, *((curr->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, cp)), ==(*((cp->key)), old(_dryad_S2, *((cp->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, cp)), @_vcc_ptr_eq_pure(*((cp->next)), old(_dryad_S2, *((cp->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, lst)), ==(*((lst->key)), old(_dryad_S2, *((lst->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(SL#_dryad_S2, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S2, *((lst->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S2, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // _math \state _dryad_S4; 
    // _dryad_S4 := @_vcc_current_state(@state); 
    SL#_dryad_S4 := $current_state($s);
    // _math \state stmtexpr8#22; 
    // stmtexpr8#22 := _dryad_S4; 
    stmtexpr8#22 := SL#_dryad_S4;
    // assert @prim_writes_check((res->next)); 
    assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#res, ^s_node), s_node.next));
    // *(res->next) := (struct s_node*)@null; 
    call $write_int(s_node.next, $phys_ptr_cast(L#res, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
    assume $full_stop_ext(#tok$3^25.3, $s);
    // _math \state _dryad_S5; 
    // _dryad_S5 := @_vcc_current_state(@state); 
    SL#_dryad_S5 := $current_state($s);
    // _math \state stmtexpr9#23; 
    // stmtexpr9#23 := _dryad_S5; 
    stmtexpr9#23 := SL#_dryad_S5;
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll_keys(curr0)), old(_dryad_S5, sll_keys(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll_list_len_next(curr0)), old(_dryad_S5, sll_list_len_next(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(curr0)))), ==(old(_dryad_S4, rsrtl(curr0)), old(_dryad_S5, rsrtl(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(curr0)))), ==(old(_dryad_S4, rsrtl_reach(curr0)), old(_dryad_S5, rsrtl_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll(curr0)), old(_dryad_S5, sll(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll_reach(curr0)), old(_dryad_S5, sll_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll_max_key(curr0)), old(_dryad_S5, sll_max_key(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr0)))), ==(old(_dryad_S4, sll_min_key(curr0)), old(_dryad_S5, sll_min_key(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(curr0)))), ==(old(_dryad_S4, srtl(curr0)), old(_dryad_S5, srtl(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(curr0)))), ==(old(_dryad_S4, srtl_reach(curr0)), old(_dryad_S5, srtl_reach(curr0)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll_keys(curr)), old(_dryad_S5, sll_keys(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll_list_len_next(curr)), old(_dryad_S5, sll_list_len_next(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(curr)))), ==(old(_dryad_S4, rsrtl(curr)), old(_dryad_S5, rsrtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(curr)))), ==(old(_dryad_S4, rsrtl_reach(curr)), old(_dryad_S5, rsrtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll(curr)), old(_dryad_S5, sll(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll_reach(curr)), old(_dryad_S5, sll_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll_max_key(curr)), old(_dryad_S5, sll_max_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(curr)))), ==(old(_dryad_S4, sll_min_key(curr)), old(_dryad_S5, sll_min_key(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(curr)))), ==(old(_dryad_S4, srtl(curr)), old(_dryad_S5, srtl(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(curr)))), ==(old(_dryad_S4, srtl_reach(curr)), old(_dryad_S5, srtl_reach(curr)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll_keys(cp)), old(_dryad_S5, sll_keys(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll_list_len_next(cp)), old(_dryad_S5, sll_list_len_next(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(cp)))), ==(old(_dryad_S4, rsrtl(cp)), old(_dryad_S5, rsrtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(cp)))), ==(old(_dryad_S4, rsrtl_reach(cp)), old(_dryad_S5, rsrtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll(cp)), old(_dryad_S5, sll(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll_reach(cp)), old(_dryad_S5, sll_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll_max_key(cp)), old(_dryad_S5, sll_max_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(cp)))), ==(old(_dryad_S4, sll_min_key(cp)), old(_dryad_S5, sll_min_key(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(cp)))), ==(old(_dryad_S4, srtl(cp)), old(_dryad_S5, srtl(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(cp)))), ==(old(_dryad_S4, srtl_reach(cp)), old(_dryad_S5, srtl_reach(cp)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll_keys(lst)), old(_dryad_S5, sll_keys(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll_list_len_next(lst)), old(_dryad_S5, sll_list_len_next(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(lst)))), ==(old(_dryad_S4, rsrtl(lst)), old(_dryad_S5, rsrtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, rsrtl_reach(lst)))), ==(old(_dryad_S4, rsrtl_reach(lst)), old(_dryad_S5, rsrtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll(lst)), old(_dryad_S5, sll(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll_reach(lst)), old(_dryad_S5, sll_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll_max_key(lst)), old(_dryad_S5, sll_max_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, sll_reach(lst)))), ==(old(_dryad_S4, sll_min_key(lst)), old(_dryad_S5, sll_min_key(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(lst)))), ==(old(_dryad_S4, srtl(lst)), old(_dryad_S5, srtl(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(unchecked!(@_vcc_oset_in(res, old(_dryad_S4, srtl_reach(lst)))), ==(old(_dryad_S4, srtl_reach(lst)), old(_dryad_S5, srtl_reach(lst)))); 
    assume !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S4, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S5, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr0)), ==(*((curr0->key)), old(_dryad_S4, *((curr0->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S4, *((curr0->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr)), ==(*((curr->key)), old(_dryad_S4, *((curr->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S4, *((curr->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, cp)), ==(*((cp->key)), old(_dryad_S4, *((cp->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(L#cp, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, cp)), @_vcc_ptr_eq_pure(*((cp->next)), old(_dryad_S4, *((cp->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node);
    // assume ==>(!(@_vcc_ptr_eq_pure(res, lst)), ==(*((lst->key)), old(_dryad_S4, *((lst->key))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(SL#_dryad_S4, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(!(@_vcc_ptr_eq_pure(res, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S4, *((lst->next))))); 
    assume !($phys_ptr_cast(L#res, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S4, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // cp := res; 
    L#cp := $phys_ptr_cast(L#res, ^s_node);
    // assert sll_lseg(curr0, curr0); 
    assert F#sll_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
    // assume sll_lseg(curr0, curr0); 
    assume F#sll_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
    // assert srtl_lseg(curr0, curr0); 
    assert F#srtl_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
    // assume srtl_lseg(curr0, curr0); 
    assume F#srtl_lseg($s, $phys_ptr_cast(SL#curr0, ^s_node), $phys_ptr_cast(SL#curr0, ^s_node));
    // assert sll_lseg(curr, curr); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume sll_lseg(curr, curr); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert srtl_lseg(curr, curr); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assume srtl_lseg(curr, curr); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
    // assert sll_lseg(cp, cp); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume sll_lseg(cp, cp); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert srtl_lseg(cp, cp); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assume srtl_lseg(cp, cp); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
    // assert sll_lseg(res, res); 
    assert F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume sll_lseg(res, res); 
    assume F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert srtl_lseg(res, res); 
    assert F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assume srtl_lseg(res, res); 
    assume F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#res, ^s_node));
    // assert sll_lseg(lst, lst); 
    assert F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume sll_lseg(lst, lst); 
    assume F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assert srtl_lseg(lst, lst); 
    assert F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume srtl_lseg(lst, lst); 
    assume F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(P#lst, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
    // struct s_node* curr3; 
    // curr3 := curr; 
    SL#curr3 := $phys_ptr_cast(L#curr, ^s_node);
    // struct s_node* stmtexpr10#24; 
    // stmtexpr10#24 := curr3; 
    stmtexpr10#24 := $phys_ptr_cast(SL#curr3, ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg(curr, *((curr->next))), &&(sll_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_lseg_reach(*((curr->next)), *((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(sll_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_keys(curr, *((curr->next))), @_vcc_intset_union(sll_lseg_keys(*((curr->next)), *((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_len_next(curr, *((curr->next))), unchecked+(sll_lseg_len_next(*((curr->next)), *((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_max_key(curr, *((curr->next))), @\int_max(*((curr->key)), sll_lseg_max_key(*((curr->next)), *((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_min_key(curr, *((curr->next))), @\int_min(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(srtl_lseg(curr, *((curr->next))), &&(&&(srtl_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_lseg_reach(*((curr->next)), *((curr->next)))))), <=(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(srtl_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(srtl_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assert @reads_check_normal((curr->next)); 
    assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
    // curr := *((curr->next)); 
    L#curr := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
    // assume ==>(@_vcc_ptr_neq_null(cp), &&(@_vcc_mutable(@state, cp), @writes_check(cp))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#cp, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#cp, ^s_node));
    loopState#0 := $s;
    assume true;
p0000 := (F#srtl($s,$phys_ptr_cast(P#lst,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#curr,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#cp,^s_node)));
p0003 := (F#srtl($s,$phys_ptr_cast(L#res,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0009 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0010 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0011 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0012 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0013 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0014 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0015 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0016 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0017 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0018 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0019 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0020 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0021 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0022 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0023 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0024 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0025 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0026 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0027 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0028 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0029 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0030 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0031 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0032 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0033 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0034 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0035 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0036 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0037 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0038 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0039 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0040 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0041 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0042 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0043 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0044 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0045 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0046 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0047 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0048 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0049 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0050 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0051 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0052 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0053 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0054 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0055 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0056 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0057 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0058 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0059 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0060 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0061 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0062 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0063 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#lst,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#cp,^s_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#lst,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#cp,^s_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^s_node)));
p0108 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0109 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0110 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0111 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0112 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0113 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0114 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0115 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0116 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0117 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0118 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0119 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node))));

    while (true)

invariant (p0000 == (F#srtl($s,$phys_ptr_cast(P#lst,^s_node))));
invariant (p0001 == (F#srtl($s,$phys_ptr_cast(L#curr,^s_node))));
invariant (p0002 == (F#srtl($s,$phys_ptr_cast(L#cp,^s_node))));
invariant (p0003 == (F#srtl($s,$phys_ptr_cast(L#res,^s_node))));
invariant (p0004 == (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0005 == (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))));
invariant (p0006 == (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0007 == (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))));
invariant (p0008 == (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))));
invariant (p0009 == (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0010 == (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))));
invariant (p0011 == (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0012 == (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))));
invariant (p0013 == (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))));
invariant (p0014 == (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
invariant (p0015 == (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))));
invariant (p0016 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0017 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0018 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0019 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0020 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0021 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0022 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0023 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0024 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0025 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0026 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0027 == ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0028 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0029 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0030 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0031 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0032 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0033 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0034 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0035 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0036 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0037 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0038 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0039 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0040 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0041 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0042 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0043 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0044 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0045 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0046 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0047 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0048 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0049 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0050 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0051 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0052 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0053 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0054 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0055 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0056 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0057 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0058 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0059 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0060 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0061 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0062 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0063 == ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0064 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0065 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0066 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0067 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0068 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0069 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0070 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0071 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0072 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)))));
invariant (p0073 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0074 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0075 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0076 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0077 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0078 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0079 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0080 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0081 == ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0082 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0083 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0084 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0085 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0086 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0087 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0088 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0089 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0090 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0091 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))));
invariant (p0092 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0093 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0094 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0095 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0096 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0097 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)))));
invariant (p0098 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)))));
invariant (p0099 == ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)))));
invariant (p0100 == ($non_null($phys_ptr_cast(P#lst,^s_node))));
invariant (p0101 == ($non_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0102 == ($non_null($phys_ptr_cast(L#cp,^s_node))));
invariant (p0103 == ($non_null($phys_ptr_cast(L#res,^s_node))));
invariant (p0104 == ($is_null($phys_ptr_cast(P#lst,^s_node))));
invariant (p0105 == ($is_null($phys_ptr_cast(L#curr,^s_node))));
invariant (p0106 == ($is_null($phys_ptr_cast(L#cp,^s_node))));
invariant (p0107 == ($is_null($phys_ptr_cast(L#res,^s_node))));
invariant (p0108 == (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0109 == (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
invariant (p0110 == (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0111 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
invariant (p0112 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
invariant (p0113 == (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0114 == (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
invariant (p0115 == (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0116 == (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node))));
invariant (p0117 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
invariant (p0118 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
invariant (p0119 == (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
invariant (p0120 == (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node)))));
invariant (p0121 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0122 == (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node)))));
invariant (p0123 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node)))));
invariant (p0124 == (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node)))));
invariant (p0125 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node)))));
invariant (p0126 == (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node)))));
invariant (p0127 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node)))));
invariant (p0128 == (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0129 == (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0130 == (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0131 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0132 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0133 == (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0134 == (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0135 == (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0136 == (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0137 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0138 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0139 == (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0140 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0141 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0142 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0143 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0144 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0145 == ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0146 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0147 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0148 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0149 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0150 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0151 == ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0152 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0153 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0154 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0155 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)))))));
invariant (p0156 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0157 == ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0158 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0159 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0160 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0161 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)))))));
invariant (p0162 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)))))));
invariant (p0163 == ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)))))));
invariant (p0164 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0165 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0166 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0167 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0168 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0169 == (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0170 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0171 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0172 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0173 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0174 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0175 == (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0176 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0177 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0178 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0179 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)))));
invariant (p0180 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0181 == (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0182 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));
invariant (p0183 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0184 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0185 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node)))));
invariant (p0186 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node)))));
invariant (p0187 == (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node)))));

invariant my_inv (
p0000,
p0001,
p0002,
p0003,
p0004,
p0005,
p0006,
p0007,
p0008,
p0009,
p0010,
p0011,
p0012,
p0013,
p0014,
p0015,
p0016,
p0017,
p0018,
p0019,
p0020,
p0021,
p0022,
p0023,
p0024,
p0025,
p0026,
p0027,
p0028,
p0029,
p0030,
p0031,
p0032,
p0033,
p0034,
p0035,
p0036,
p0037,
p0038,
p0039,
p0040,
p0041,
p0042,
p0043,
p0044,
p0045,
p0046,
p0047,
p0048,
p0049,
p0050,
p0051,
p0052,
p0053,
p0054,
p0055,
p0056,
p0057,
p0058,
p0059,
p0060,
p0061,
p0062,
p0063,
p0064,
p0065,
p0066,
p0067,
p0068,
p0069,
p0070,
p0071,
p0072,
p0073,
p0074,
p0075,
p0076,
p0077,
p0078,
p0079,
p0080,
p0081,
p0082,
p0083,
p0084,
p0085,
p0086,
p0087,
p0088,
p0089,
p0090,
p0091,
p0092,
p0093,
p0094,
p0095,
p0096,
p0097,
p0098,
p0099,
p0100,
p0101,
p0102,
p0103,
p0104,
p0105,
p0106,
p0107,
p0108,
p0109,
p0110,
p0111,
p0112,
p0113,
p0114,
p0115,
p0116,
p0117,
p0118,
p0119,
p0120,
p0121,
p0122,
p0123,
p0124,
p0125,
p0126,
p0127,
p0128,
p0129,
p0130,
p0131,
p0132,
p0133,
p0134,
p0135,
p0136,
p0137,
p0138,
p0139,
p0140,
p0141,
p0142,
p0143,
p0144,
p0145,
p0146,
p0147,
p0148,
p0149,
p0150,
p0151,
p0152,
p0153,
p0154,
p0155,
p0156,
p0157,
p0158,
p0159,
p0160,
p0161,
p0162,
p0163,
p0164,
p0165,
p0166,
p0167,
p0168,
p0169,
p0170,
p0171,
p0172,
p0173,
p0174,
p0175,
p0176,
p0177,
p0178,
p0179,
p0180,
p0181,
p0182,
p0183,
p0184,
p0185,
p0186,
p0187,
true
);

      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)), SL#ALL_REACH);
      invariant $oset_subset(F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)), SL#ALL_REACH);
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
      invariant $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#cp, ^s_node));
      invariant $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#cp, ^s_node));
    {
      anon5:
        assume $writes_nothing(old($s), $s);
        assume $timestamp_post(loopState#0, $s);
        assume $full_stop_ext(#tok$3^31.3, $s);
        // assume @_vcc_meta_eq(old(@prestate, @state), @state); 
        assume $meta_eq(loopState#0, $s);
        assume true;
        // if (@_vcc_ptr_neq_null(curr)) ...
        if ($non_null($phys_ptr_cast(L#curr, ^s_node)))
        {
          anon3:
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg(res, cp), &&(sll_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), cp)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_reach(res, cp), @_vcc_oset_union(sll_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_keys(res, cp), @_vcc_intset_union(sll_lseg_keys(*((res->next)), cp), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_len_next(res, cp), unchecked+(sll_lseg_len_next(*((res->next)), cp), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_max_key(res, cp), @\int_max(*((res->key)), sll_lseg_max_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_min_key(res, cp), @\int_min(*((res->key)), sll_lseg_min_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(srtl_lseg(res, cp), &&(&&(srtl_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, srtl_lseg_reach(*((res->next)), cp)))), <=(*((res->key)), sll_lseg_min_key(*((res->next)), cp))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(srtl_lseg_reach(res, cp), @_vcc_oset_union(srtl_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // int32_t curr_key#0; 
            // struct s_node* new_cp; 
            // _math \state _dryad_S6; 
            // _dryad_S6 := @_vcc_current_state(@state); 
            SL#_dryad_S6 := $current_state($s);
            // _math \state stmtexpr0#2; 
            // stmtexpr0#2 := _dryad_S6; 
            stmtexpr0#2 := SL#_dryad_S6;
            // new_cp := _vcc_alloc(@_vcc_typeof((struct s_node*)@null)); 
            call L#new_cp := $alloc(^s_node);
            assume $full_stop_ext(#tok$3^62.21, $s);
            // assume !(@_vcc_oset_in(new_cp, @_vcc_oset_union(_dryad_G0, _dryad_G1))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), $oset_union(SL#_dryad_G0, SL#_dryad_G1));
            // _dryad_G1 := @_vcc_oset_union(_dryad_G0, @_vcc_oset_singleton(new_cp)); 
            SL#_dryad_G1 := $oset_union(SL#_dryad_G0, $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // _math \oset stmtexpr1#3; 
            // stmtexpr1#3 := _dryad_G1; 
            stmtexpr1#3 := SL#_dryad_G1;
            // assume ==(glob_reach(), _dryad_G1); 
            assume F#glob_reach() == SL#_dryad_G1;
            // _math \state _dryad_S7; 
            // _dryad_S7 := @_vcc_current_state(@state); 
            SL#_dryad_S7 := $current_state($s);
            // _math \state stmtexpr2#4; 
            // stmtexpr2#4 := _dryad_S7; 
            stmtexpr2#4 := SL#_dryad_S7;
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_keys(new_cp), @_vcc_intset_union(sll_keys(*((new_cp->next))), @_vcc_intset_singleton(*((new_cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_list_len_next(new_cp), unchecked+(sll_list_len_next(*((new_cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(rsrtl(new_cp), &&(&&(rsrtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, rsrtl_reach(*((new_cp->next)))))), >=(*((new_cp->key)), sll_max_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(rsrtl_reach(new_cp), @_vcc_oset_union(rsrtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll(new_cp), &&(sll(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, sll_reach(*((new_cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_reach(new_cp), @_vcc_oset_union(sll_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_max_key(new_cp), @\int_max(*((new_cp->key)), sll_max_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_min_key(new_cp), @\int_min(*((new_cp->key)), sll_min_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(srtl(new_cp), &&(&&(srtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, srtl_reach(*((new_cp->next)))))), <=(*((new_cp->key)), sll_min_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(srtl_reach(new_cp), @_vcc_oset_union(srtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg(res, cp), &&(sll_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), cp)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_reach(res, cp), @_vcc_oset_union(sll_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_keys(res, cp), @_vcc_intset_union(sll_lseg_keys(*((res->next)), cp), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_len_next(res, cp), unchecked+(sll_lseg_len_next(*((res->next)), cp), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_max_key(res, cp), @\int_max(*((res->key)), sll_lseg_max_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_min_key(res, cp), @\int_min(*((res->key)), sll_lseg_min_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(srtl_lseg(res, cp), &&(&&(srtl_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, srtl_lseg_reach(*((res->next)), cp)))), <=(*((res->key)), sll_lseg_min_key(*((res->next)), cp))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(srtl_lseg_reach(res, cp), @_vcc_oset_union(srtl_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll_keys(curr3)), old(_dryad_S7, sll_keys(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll_list_len_next(curr3)), old(_dryad_S7, sll_list_len_next(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr3)))), ==(old(_dryad_S6, rsrtl(curr3)), old(_dryad_S7, rsrtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr3)))), ==(old(_dryad_S6, rsrtl_reach(curr3)), old(_dryad_S7, rsrtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll(curr3)), old(_dryad_S7, sll(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll_reach(curr3)), old(_dryad_S7, sll_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll_max_key(curr3)), old(_dryad_S7, sll_max_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr3)))), ==(old(_dryad_S6, sll_min_key(curr3)), old(_dryad_S7, sll_min_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr3)))), ==(old(_dryad_S6, srtl(curr3)), old(_dryad_S7, srtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr3)))), ==(old(_dryad_S6, srtl_reach(curr3)), old(_dryad_S7, srtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll_keys(curr0)), old(_dryad_S7, sll_keys(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll_list_len_next(curr0)), old(_dryad_S7, sll_list_len_next(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr0)))), ==(old(_dryad_S6, rsrtl(curr0)), old(_dryad_S7, rsrtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr0)))), ==(old(_dryad_S6, rsrtl_reach(curr0)), old(_dryad_S7, rsrtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll(curr0)), old(_dryad_S7, sll(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll_reach(curr0)), old(_dryad_S7, sll_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll_max_key(curr0)), old(_dryad_S7, sll_max_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr0)))), ==(old(_dryad_S6, sll_min_key(curr0)), old(_dryad_S7, sll_min_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr0)))), ==(old(_dryad_S6, srtl(curr0)), old(_dryad_S7, srtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr0)))), ==(old(_dryad_S6, srtl_reach(curr0)), old(_dryad_S7, srtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll_keys(curr)), old(_dryad_S7, sll_keys(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll_list_len_next(curr)), old(_dryad_S7, sll_list_len_next(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr)))), ==(old(_dryad_S6, rsrtl(curr)), old(_dryad_S7, rsrtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(curr)))), ==(old(_dryad_S6, rsrtl_reach(curr)), old(_dryad_S7, rsrtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll(curr)), old(_dryad_S7, sll(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll_reach(curr)), old(_dryad_S7, sll_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll_max_key(curr)), old(_dryad_S7, sll_max_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(curr)))), ==(old(_dryad_S6, sll_min_key(curr)), old(_dryad_S7, sll_min_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr)))), ==(old(_dryad_S6, srtl(curr)), old(_dryad_S7, srtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(curr)))), ==(old(_dryad_S6, srtl_reach(curr)), old(_dryad_S7, srtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll_keys(cp)), old(_dryad_S7, sll_keys(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll_list_len_next(cp)), old(_dryad_S7, sll_list_len_next(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(cp)))), ==(old(_dryad_S6, rsrtl(cp)), old(_dryad_S7, rsrtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(cp)))), ==(old(_dryad_S6, rsrtl_reach(cp)), old(_dryad_S7, rsrtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll(cp)), old(_dryad_S7, sll(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll_reach(cp)), old(_dryad_S7, sll_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll_max_key(cp)), old(_dryad_S7, sll_max_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(cp)))), ==(old(_dryad_S6, sll_min_key(cp)), old(_dryad_S7, sll_min_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(cp)))), ==(old(_dryad_S6, srtl(cp)), old(_dryad_S7, srtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(cp)))), ==(old(_dryad_S6, srtl_reach(cp)), old(_dryad_S7, srtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll_keys(res)), old(_dryad_S7, sll_keys(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll_list_len_next(res)), old(_dryad_S7, sll_list_len_next(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(res)))), ==(old(_dryad_S6, rsrtl(res)), old(_dryad_S7, rsrtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(res)))), ==(old(_dryad_S6, rsrtl_reach(res)), old(_dryad_S7, rsrtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll(res)), old(_dryad_S7, sll(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll_reach(res)), old(_dryad_S7, sll_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll_max_key(res)), old(_dryad_S7, sll_max_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(res)))), ==(old(_dryad_S6, sll_min_key(res)), old(_dryad_S7, sll_min_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(res)))), ==(old(_dryad_S6, srtl(res)), old(_dryad_S7, srtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(res)))), ==(old(_dryad_S6, srtl_reach(res)), old(_dryad_S7, srtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll_keys(lst)), old(_dryad_S7, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll_list_len_next(lst)), old(_dryad_S7, sll_list_len_next(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(lst)))), ==(old(_dryad_S6, rsrtl(lst)), old(_dryad_S7, rsrtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, rsrtl_reach(lst)))), ==(old(_dryad_S6, rsrtl_reach(lst)), old(_dryad_S7, rsrtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll(lst)), old(_dryad_S7, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll_reach(lst)), old(_dryad_S7, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll_max_key(lst)), old(_dryad_S7, sll_max_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_reach(lst)))), ==(old(_dryad_S6, sll_min_key(lst)), old(_dryad_S7, sll_min_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(lst)))), ==(old(_dryad_S6, srtl(lst)), old(_dryad_S7, srtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_reach(lst)))), ==(old(_dryad_S6, srtl_reach(lst)), old(_dryad_S7, srtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg(res, cp)), old(_dryad_S7, sll_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg_reach(res, cp)), old(_dryad_S7, sll_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg_keys(res, cp)), old(_dryad_S7, sll_lseg_keys(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg_len_next(res, cp)), old(_dryad_S7, sll_lseg_len_next(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg_max_key(res, cp)), old(_dryad_S7, sll_lseg_max_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(res, cp)))), ==(old(_dryad_S6, sll_lseg_min_key(res, cp)), old(_dryad_S7, sll_lseg_min_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S6, srtl_lseg(res, cp)), old(_dryad_S7, srtl_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S6, srtl_lseg_reach(res, cp)), old(_dryad_S7, srtl_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg(lst, curr)), old(_dryad_S7, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg_reach(lst, curr)), old(_dryad_S7, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg_keys(lst, curr)), old(_dryad_S7, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg_len_next(lst, curr)), old(_dryad_S7, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg_max_key(lst, curr)), old(_dryad_S7, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S6, sll_lseg_min_key(lst, curr)), old(_dryad_S7, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S6, srtl_lseg(lst, curr)), old(_dryad_S7, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S6, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S6, srtl_lseg_reach(lst, curr)), old(_dryad_S7, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S6, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S7, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume @_vcc_ptr_neq_null(new_cp); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node));
            // assume unchecked!(@_vcc_oset_in(new_cp, ALL_REACH)); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), SL#ALL_REACH);
            // ALL_REACH := @_vcc_oset_union(ALL_REACH, @_vcc_oset_singleton(new_cp)); 
            SL#ALL_REACH := $oset_union(SL#ALL_REACH, $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // struct s_node* curr4; 
            // curr4 := curr; 
            SL#curr4 := $phys_ptr_cast(L#curr, ^s_node);
            // struct s_node* stmtexpr3#5; 
            // stmtexpr3#5 := curr4; 
            stmtexpr3#5 := $phys_ptr_cast(SL#curr4, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assert @reads_check_normal((curr->key)); 
            assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
            // curr_key#0 := *((curr->key)); 
            curr_key#0 := $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // curr_key#0 := unchecked*(2, curr_key#0); 
            curr_key#0 := $unchk_mul(^^i4, 2, curr_key#0);
            // assume ==(curr_key#0, *(*((curr->key)), 2)); 
            assume curr_key#0 == $op_mul($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), 2);
            // _math \state _dryad_S8; 
            // _dryad_S8 := @_vcc_current_state(@state); 
            SL#_dryad_S8 := $current_state($s);
            // _math \state stmtexpr4#6; 
            // stmtexpr4#6 := _dryad_S8; 
            stmtexpr4#6 := SL#_dryad_S8;
            // assert @prim_writes_check((new_cp->key)); 
            assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#new_cp, ^s_node), s_node.key));
            // *(new_cp->key) := curr_key#0; 
            call $write_int(s_node.key, $phys_ptr_cast(L#new_cp, ^s_node), curr_key#0);
            assume $full_stop_ext(#tok$3^70.5, $s);
            // _math \state _dryad_S9; 
            // _dryad_S9 := @_vcc_current_state(@state); 
            SL#_dryad_S9 := $current_state($s);
            // _math \state stmtexpr5#7; 
            // stmtexpr5#7 := _dryad_S9; 
            stmtexpr5#7 := SL#_dryad_S9;
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll_keys(*((new_cp->next)))), old(_dryad_S9, sll_keys(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll_keys(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll_list_len_next(*((new_cp->next)))), old(_dryad_S9, sll_list_len_next(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(*((new_cp->next)))))), ==(old(_dryad_S8, rsrtl(*((new_cp->next)))), old(_dryad_S9, rsrtl(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#rsrtl(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(*((new_cp->next)))))), ==(old(_dryad_S8, rsrtl_reach(*((new_cp->next)))), old(_dryad_S9, rsrtl_reach(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll(*((new_cp->next)))), old(_dryad_S9, sll(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll_reach(*((new_cp->next)))), old(_dryad_S9, sll_reach(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll_reach(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll_max_key(*((new_cp->next)))), old(_dryad_S9, sll_max_key(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll_max_key(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(*((new_cp->next)))))), ==(old(_dryad_S8, sll_min_key(*((new_cp->next)))), old(_dryad_S9, sll_min_key(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#sll_min_key(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(*((new_cp->next)))))), ==(old(_dryad_S8, srtl(*((new_cp->next)))), old(_dryad_S9, srtl(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#srtl(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#srtl(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(*((new_cp->next)))))), ==(old(_dryad_S8, srtl_reach(*((new_cp->next)))), old(_dryad_S9, srtl_reach(*((new_cp->next)))))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) == F#srtl_reach(SL#_dryad_S9, $rd_phys_ptr(SL#_dryad_S9, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(curr4)), old(_dryad_S9, sll_list_len_next(curr4))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(curr4)), old(_dryad_S9, rsrtl_reach(curr4))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==(old(_dryad_S8, sll(curr4)), old(_dryad_S9, sll(curr4))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(curr4)), old(_dryad_S9, sll_reach(curr4))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(curr4)), old(_dryad_S9, srtl_reach(curr4))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(new_cp)), old(_dryad_S9, sll_list_len_next(new_cp))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(new_cp)), old(_dryad_S9, rsrtl_reach(new_cp))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==(old(_dryad_S8, sll(new_cp)), old(_dryad_S9, sll(new_cp))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(new_cp)), old(_dryad_S9, sll_reach(new_cp))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(new_cp)), old(_dryad_S9, srtl_reach(new_cp))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#new_cp, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(curr3)), old(_dryad_S9, sll_list_len_next(curr3))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(curr3)), old(_dryad_S9, rsrtl_reach(curr3))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==(old(_dryad_S8, sll(curr3)), old(_dryad_S9, sll(curr3))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(curr3)), old(_dryad_S9, sll_reach(curr3))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(curr3)), old(_dryad_S9, srtl_reach(curr3))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(curr0)), old(_dryad_S9, sll_list_len_next(curr0))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(curr0)), old(_dryad_S9, rsrtl_reach(curr0))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==(old(_dryad_S8, sll(curr0)), old(_dryad_S9, sll(curr0))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(curr0)), old(_dryad_S9, sll_reach(curr0))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(curr0)), old(_dryad_S9, srtl_reach(curr0))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(curr)), old(_dryad_S9, sll_list_len_next(curr))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(curr)), old(_dryad_S9, rsrtl_reach(curr))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==(old(_dryad_S8, sll(curr)), old(_dryad_S9, sll(curr))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(curr)), old(_dryad_S9, sll_reach(curr))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(curr)), old(_dryad_S9, srtl_reach(curr))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(cp)), old(_dryad_S9, sll_list_len_next(cp))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(cp)), old(_dryad_S9, rsrtl_reach(cp))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==(old(_dryad_S8, sll(cp)), old(_dryad_S9, sll(cp))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(cp)), old(_dryad_S9, sll_reach(cp))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(cp)), old(_dryad_S9, srtl_reach(cp))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(res)), old(_dryad_S9, sll_list_len_next(res))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(res)), old(_dryad_S9, rsrtl_reach(res))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==(old(_dryad_S8, sll(res)), old(_dryad_S9, sll(res))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(res)), old(_dryad_S9, sll_reach(res))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(res)), old(_dryad_S9, srtl_reach(res))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==(old(_dryad_S8, sll_list_len_next(lst)), old(_dryad_S9, sll_list_len_next(lst))); 
            assume F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==(old(_dryad_S8, rsrtl_reach(lst)), old(_dryad_S9, rsrtl_reach(lst))); 
            assume F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==(old(_dryad_S8, sll(lst)), old(_dryad_S9, sll(lst))); 
            assume F#sll(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==(old(_dryad_S8, sll_reach(lst)), old(_dryad_S9, sll_reach(lst))); 
            assume F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==(old(_dryad_S8, srtl_reach(lst)), old(_dryad_S9, srtl_reach(lst))); 
            assume F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll_keys(curr4)), old(_dryad_S9, sll_keys(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll_list_len_next(curr4)), old(_dryad_S9, sll_list_len_next(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr4)))), ==(old(_dryad_S8, rsrtl(curr4)), old(_dryad_S9, rsrtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr4)))), ==(old(_dryad_S8, rsrtl_reach(curr4)), old(_dryad_S9, rsrtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll(curr4)), old(_dryad_S9, sll(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll_reach(curr4)), old(_dryad_S9, sll_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll_max_key(curr4)), old(_dryad_S9, sll_max_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr4)))), ==(old(_dryad_S8, sll_min_key(curr4)), old(_dryad_S9, sll_min_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr4)))), ==(old(_dryad_S8, srtl(curr4)), old(_dryad_S9, srtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr4)))), ==(old(_dryad_S8, srtl_reach(curr4)), old(_dryad_S9, srtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll_keys(curr3)), old(_dryad_S9, sll_keys(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll_list_len_next(curr3)), old(_dryad_S9, sll_list_len_next(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr3)))), ==(old(_dryad_S8, rsrtl(curr3)), old(_dryad_S9, rsrtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr3)))), ==(old(_dryad_S8, rsrtl_reach(curr3)), old(_dryad_S9, rsrtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll(curr3)), old(_dryad_S9, sll(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll_reach(curr3)), old(_dryad_S9, sll_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll_max_key(curr3)), old(_dryad_S9, sll_max_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr3)))), ==(old(_dryad_S8, sll_min_key(curr3)), old(_dryad_S9, sll_min_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr3)))), ==(old(_dryad_S8, srtl(curr3)), old(_dryad_S9, srtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr3)))), ==(old(_dryad_S8, srtl_reach(curr3)), old(_dryad_S9, srtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll_keys(curr0)), old(_dryad_S9, sll_keys(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll_list_len_next(curr0)), old(_dryad_S9, sll_list_len_next(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr0)))), ==(old(_dryad_S8, rsrtl(curr0)), old(_dryad_S9, rsrtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr0)))), ==(old(_dryad_S8, rsrtl_reach(curr0)), old(_dryad_S9, rsrtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll(curr0)), old(_dryad_S9, sll(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll_reach(curr0)), old(_dryad_S9, sll_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll_max_key(curr0)), old(_dryad_S9, sll_max_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr0)))), ==(old(_dryad_S8, sll_min_key(curr0)), old(_dryad_S9, sll_min_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr0)))), ==(old(_dryad_S8, srtl(curr0)), old(_dryad_S9, srtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr0)))), ==(old(_dryad_S8, srtl_reach(curr0)), old(_dryad_S9, srtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll_keys(curr)), old(_dryad_S9, sll_keys(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll_list_len_next(curr)), old(_dryad_S9, sll_list_len_next(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr)))), ==(old(_dryad_S8, rsrtl(curr)), old(_dryad_S9, rsrtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(curr)))), ==(old(_dryad_S8, rsrtl_reach(curr)), old(_dryad_S9, rsrtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll(curr)), old(_dryad_S9, sll(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll_reach(curr)), old(_dryad_S9, sll_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll_max_key(curr)), old(_dryad_S9, sll_max_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(curr)))), ==(old(_dryad_S8, sll_min_key(curr)), old(_dryad_S9, sll_min_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr)))), ==(old(_dryad_S8, srtl(curr)), old(_dryad_S9, srtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(curr)))), ==(old(_dryad_S8, srtl_reach(curr)), old(_dryad_S9, srtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll_keys(cp)), old(_dryad_S9, sll_keys(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll_list_len_next(cp)), old(_dryad_S9, sll_list_len_next(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(cp)))), ==(old(_dryad_S8, rsrtl(cp)), old(_dryad_S9, rsrtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(cp)))), ==(old(_dryad_S8, rsrtl_reach(cp)), old(_dryad_S9, rsrtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll(cp)), old(_dryad_S9, sll(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll_reach(cp)), old(_dryad_S9, sll_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll_max_key(cp)), old(_dryad_S9, sll_max_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(cp)))), ==(old(_dryad_S8, sll_min_key(cp)), old(_dryad_S9, sll_min_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(cp)))), ==(old(_dryad_S8, srtl(cp)), old(_dryad_S9, srtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(cp)))), ==(old(_dryad_S8, srtl_reach(cp)), old(_dryad_S9, srtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll_keys(res)), old(_dryad_S9, sll_keys(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll_list_len_next(res)), old(_dryad_S9, sll_list_len_next(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(res)))), ==(old(_dryad_S8, rsrtl(res)), old(_dryad_S9, rsrtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(res)))), ==(old(_dryad_S8, rsrtl_reach(res)), old(_dryad_S9, rsrtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll(res)), old(_dryad_S9, sll(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll_reach(res)), old(_dryad_S9, sll_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll_max_key(res)), old(_dryad_S9, sll_max_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(res)))), ==(old(_dryad_S8, sll_min_key(res)), old(_dryad_S9, sll_min_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(res)))), ==(old(_dryad_S8, srtl(res)), old(_dryad_S9, srtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(res)))), ==(old(_dryad_S8, srtl_reach(res)), old(_dryad_S9, srtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll_keys(lst)), old(_dryad_S9, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll_list_len_next(lst)), old(_dryad_S9, sll_list_len_next(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(lst)))), ==(old(_dryad_S8, rsrtl(lst)), old(_dryad_S9, rsrtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, rsrtl_reach(lst)))), ==(old(_dryad_S8, rsrtl_reach(lst)), old(_dryad_S9, rsrtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll(lst)), old(_dryad_S9, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll_reach(lst)), old(_dryad_S9, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll_max_key(lst)), old(_dryad_S9, sll_max_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_reach(lst)))), ==(old(_dryad_S8, sll_min_key(lst)), old(_dryad_S9, sll_min_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(lst)))), ==(old(_dryad_S8, srtl(lst)), old(_dryad_S9, srtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_reach(lst)))), ==(old(_dryad_S8, srtl_reach(lst)), old(_dryad_S9, srtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg(res, cp)), old(_dryad_S9, sll_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg_reach(res, cp)), old(_dryad_S9, sll_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg_keys(res, cp)), old(_dryad_S9, sll_lseg_keys(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg_len_next(res, cp)), old(_dryad_S9, sll_lseg_len_next(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg_max_key(res, cp)), old(_dryad_S9, sll_lseg_max_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(res, cp)))), ==(old(_dryad_S8, sll_lseg_min_key(res, cp)), old(_dryad_S9, sll_lseg_min_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S8, srtl_lseg(res, cp)), old(_dryad_S9, srtl_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S8, srtl_lseg_reach(res, cp)), old(_dryad_S9, srtl_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg(lst, curr)), old(_dryad_S9, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_reach(lst, curr)), old(_dryad_S9, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_keys(lst, curr)), old(_dryad_S9, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_len_next(lst, curr)), old(_dryad_S9, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_max_key(lst, curr)), old(_dryad_S9, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_min_key(lst, curr)), old(_dryad_S9, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S8, srtl_lseg(lst, curr)), old(_dryad_S9, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S8, srtl_lseg_reach(lst, curr)), old(_dryad_S9, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg(lst, curr)), old(_dryad_S9, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_reach(lst, curr)), old(_dryad_S9, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_keys(lst, curr)), old(_dryad_S9, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_len_next(lst, curr)), old(_dryad_S9, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_max_key(lst, curr)), old(_dryad_S9, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S8, sll_lseg_min_key(lst, curr)), old(_dryad_S9, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S8, srtl_lseg(lst, curr)), old(_dryad_S9, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S8, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S8, srtl_lseg_reach(lst, curr)), old(_dryad_S9, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S8, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S9, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr4)), ==(*((curr4->key)), old(_dryad_S8, *((curr4->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr4)), @_vcc_ptr_eq_pure(*((curr4->next)), old(_dryad_S8, *((curr4->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr3)), ==(*((curr3->key)), old(_dryad_S8, *((curr3->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr3)), @_vcc_ptr_eq_pure(*((curr3->next)), old(_dryad_S8, *((curr3->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr0)), ==(*((curr0->key)), old(_dryad_S8, *((curr0->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S8, *((curr0->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr)), ==(*((curr->key)), old(_dryad_S8, *((curr->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S8, *((curr->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, cp)), ==(*((cp->key)), old(_dryad_S8, *((cp->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, cp)), @_vcc_ptr_eq_pure(*((cp->next)), old(_dryad_S8, *((cp->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, res)), ==(*((res->key)), old(_dryad_S8, *((res->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S8, *((res->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, lst)), ==(*((lst->key)), old(_dryad_S8, *((lst->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(SL#_dryad_S8, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S8, *((lst->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S8, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_keys(curr4), @_vcc_intset_union(sll_keys(*((curr4->next))), @_vcc_intset_singleton(*((curr4->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_list_len_next(curr4), unchecked+(sll_list_len_next(*((curr4->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(rsrtl(curr4), &&(&&(rsrtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, rsrtl_reach(*((curr4->next)))))), >=(*((curr4->key)), sll_max_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(rsrtl_reach(curr4), @_vcc_oset_union(rsrtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll(curr4), &&(sll(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, sll_reach(*((curr4->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_reach(curr4), @_vcc_oset_union(sll_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_max_key(curr4), @\int_max(*((curr4->key)), sll_max_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_min_key(curr4), @\int_min(*((curr4->key)), sll_min_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(srtl(curr4), &&(&&(srtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, srtl_reach(*((curr4->next)))))), <=(*((curr4->key)), sll_min_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(srtl_reach(curr4), @_vcc_oset_union(srtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_keys(new_cp), @_vcc_intset_union(sll_keys(*((new_cp->next))), @_vcc_intset_singleton(*((new_cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(rsrtl(new_cp), &&(&&(rsrtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, rsrtl_reach(*((new_cp->next)))))), >=(*((new_cp->key)), sll_max_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_max_key(new_cp), @\int_max(*((new_cp->key)), sll_max_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_min_key(new_cp), @\int_min(*((new_cp->key)), sll_min_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(srtl(new_cp), &&(&&(srtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, srtl_reach(*((new_cp->next)))))), <=(*((new_cp->key)), sll_min_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg(res, cp), &&(sll_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), cp)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_reach(res, cp), @_vcc_oset_union(sll_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_keys(res, cp), @_vcc_intset_union(sll_lseg_keys(*((res->next)), cp), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_len_next(res, cp), unchecked+(sll_lseg_len_next(*((res->next)), cp), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_max_key(res, cp), @\int_max(*((res->key)), sll_lseg_max_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_min_key(res, cp), @\int_min(*((res->key)), sll_lseg_min_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(srtl_lseg(res, cp), &&(&&(srtl_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, srtl_lseg_reach(*((res->next)), cp)))), <=(*((res->key)), sll_lseg_min_key(*((res->next)), cp))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(srtl_lseg_reach(res, cp), @_vcc_oset_union(srtl_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // _math \state _dryad_S10; 
            // _dryad_S10 := @_vcc_current_state(@state); 
            SL#_dryad_S10 := $current_state($s);
            // _math \state stmtexpr6#8; 
            // stmtexpr6#8 := _dryad_S10; 
            stmtexpr6#8 := SL#_dryad_S10;
            // assert @prim_writes_check((new_cp->next)); 
            assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#new_cp, ^s_node), s_node.next));
            // *(new_cp->next) := (struct s_node*)@null; 
            call $write_int(s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), $ptr_to_int($phys_ptr_cast($null, ^s_node)));
            assume $full_stop_ext(#tok$3^71.5, $s);
            // _math \state _dryad_S11; 
            // _dryad_S11 := @_vcc_current_state(@state); 
            SL#_dryad_S11 := $current_state($s);
            // _math \state stmtexpr7#9; 
            // stmtexpr7#9 := _dryad_S11; 
            stmtexpr7#9 := SL#_dryad_S11;
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll_keys(curr4)), old(_dryad_S11, sll_keys(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll_list_len_next(curr4)), old(_dryad_S11, sll_list_len_next(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr4)))), ==(old(_dryad_S10, rsrtl(curr4)), old(_dryad_S11, rsrtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr4)))), ==(old(_dryad_S10, rsrtl_reach(curr4)), old(_dryad_S11, rsrtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll(curr4)), old(_dryad_S11, sll(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll_reach(curr4)), old(_dryad_S11, sll_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll_max_key(curr4)), old(_dryad_S11, sll_max_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr4)))), ==(old(_dryad_S10, sll_min_key(curr4)), old(_dryad_S11, sll_min_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr4)))), ==(old(_dryad_S10, srtl(curr4)), old(_dryad_S11, srtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr4)))), ==(old(_dryad_S10, srtl_reach(curr4)), old(_dryad_S11, srtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll_keys(curr3)), old(_dryad_S11, sll_keys(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll_list_len_next(curr3)), old(_dryad_S11, sll_list_len_next(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr3)))), ==(old(_dryad_S10, rsrtl(curr3)), old(_dryad_S11, rsrtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr3)))), ==(old(_dryad_S10, rsrtl_reach(curr3)), old(_dryad_S11, rsrtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll(curr3)), old(_dryad_S11, sll(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll_reach(curr3)), old(_dryad_S11, sll_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll_max_key(curr3)), old(_dryad_S11, sll_max_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr3)))), ==(old(_dryad_S10, sll_min_key(curr3)), old(_dryad_S11, sll_min_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr3)))), ==(old(_dryad_S10, srtl(curr3)), old(_dryad_S11, srtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr3)))), ==(old(_dryad_S10, srtl_reach(curr3)), old(_dryad_S11, srtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll_keys(curr0)), old(_dryad_S11, sll_keys(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll_list_len_next(curr0)), old(_dryad_S11, sll_list_len_next(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr0)))), ==(old(_dryad_S10, rsrtl(curr0)), old(_dryad_S11, rsrtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr0)))), ==(old(_dryad_S10, rsrtl_reach(curr0)), old(_dryad_S11, rsrtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll(curr0)), old(_dryad_S11, sll(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll_reach(curr0)), old(_dryad_S11, sll_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll_max_key(curr0)), old(_dryad_S11, sll_max_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr0)))), ==(old(_dryad_S10, sll_min_key(curr0)), old(_dryad_S11, sll_min_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr0)))), ==(old(_dryad_S10, srtl(curr0)), old(_dryad_S11, srtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr0)))), ==(old(_dryad_S10, srtl_reach(curr0)), old(_dryad_S11, srtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll_keys(curr)), old(_dryad_S11, sll_keys(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll_list_len_next(curr)), old(_dryad_S11, sll_list_len_next(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr)))), ==(old(_dryad_S10, rsrtl(curr)), old(_dryad_S11, rsrtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(curr)))), ==(old(_dryad_S10, rsrtl_reach(curr)), old(_dryad_S11, rsrtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll(curr)), old(_dryad_S11, sll(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll_reach(curr)), old(_dryad_S11, sll_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll_max_key(curr)), old(_dryad_S11, sll_max_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(curr)))), ==(old(_dryad_S10, sll_min_key(curr)), old(_dryad_S11, sll_min_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr)))), ==(old(_dryad_S10, srtl(curr)), old(_dryad_S11, srtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(curr)))), ==(old(_dryad_S10, srtl_reach(curr)), old(_dryad_S11, srtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll_keys(cp)), old(_dryad_S11, sll_keys(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll_list_len_next(cp)), old(_dryad_S11, sll_list_len_next(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(cp)))), ==(old(_dryad_S10, rsrtl(cp)), old(_dryad_S11, rsrtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(cp)))), ==(old(_dryad_S10, rsrtl_reach(cp)), old(_dryad_S11, rsrtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll(cp)), old(_dryad_S11, sll(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll_reach(cp)), old(_dryad_S11, sll_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll_max_key(cp)), old(_dryad_S11, sll_max_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(cp)))), ==(old(_dryad_S10, sll_min_key(cp)), old(_dryad_S11, sll_min_key(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(cp)))), ==(old(_dryad_S10, srtl(cp)), old(_dryad_S11, srtl(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(cp)))), ==(old(_dryad_S10, srtl_reach(cp)), old(_dryad_S11, srtl_reach(cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll_keys(res)), old(_dryad_S11, sll_keys(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll_list_len_next(res)), old(_dryad_S11, sll_list_len_next(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(res)))), ==(old(_dryad_S10, rsrtl(res)), old(_dryad_S11, rsrtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(res)))), ==(old(_dryad_S10, rsrtl_reach(res)), old(_dryad_S11, rsrtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll(res)), old(_dryad_S11, sll(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll_reach(res)), old(_dryad_S11, sll_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll_max_key(res)), old(_dryad_S11, sll_max_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(res)))), ==(old(_dryad_S10, sll_min_key(res)), old(_dryad_S11, sll_min_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(res)))), ==(old(_dryad_S10, srtl(res)), old(_dryad_S11, srtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(res)))), ==(old(_dryad_S10, srtl_reach(res)), old(_dryad_S11, srtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll_keys(lst)), old(_dryad_S11, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll_list_len_next(lst)), old(_dryad_S11, sll_list_len_next(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(lst)))), ==(old(_dryad_S10, rsrtl(lst)), old(_dryad_S11, rsrtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, rsrtl_reach(lst)))), ==(old(_dryad_S10, rsrtl_reach(lst)), old(_dryad_S11, rsrtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll(lst)), old(_dryad_S11, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll_reach(lst)), old(_dryad_S11, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll_max_key(lst)), old(_dryad_S11, sll_max_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_reach(lst)))), ==(old(_dryad_S10, sll_min_key(lst)), old(_dryad_S11, sll_min_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(lst)))), ==(old(_dryad_S10, srtl(lst)), old(_dryad_S11, srtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_reach(lst)))), ==(old(_dryad_S10, srtl_reach(lst)), old(_dryad_S11, srtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg(res, cp)), old(_dryad_S11, sll_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg_reach(res, cp)), old(_dryad_S11, sll_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg_keys(res, cp)), old(_dryad_S11, sll_lseg_keys(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg_len_next(res, cp)), old(_dryad_S11, sll_lseg_len_next(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg_max_key(res, cp)), old(_dryad_S11, sll_lseg_max_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(res, cp)))), ==(old(_dryad_S10, sll_lseg_min_key(res, cp)), old(_dryad_S11, sll_lseg_min_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S10, srtl_lseg(res, cp)), old(_dryad_S11, srtl_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S10, srtl_lseg_reach(res, cp)), old(_dryad_S11, srtl_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg(lst, curr)), old(_dryad_S11, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_reach(lst, curr)), old(_dryad_S11, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_keys(lst, curr)), old(_dryad_S11, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_len_next(lst, curr)), old(_dryad_S11, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_max_key(lst, curr)), old(_dryad_S11, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_min_key(lst, curr)), old(_dryad_S11, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S10, srtl_lseg(lst, curr)), old(_dryad_S11, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S10, srtl_lseg_reach(lst, curr)), old(_dryad_S11, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg(lst, curr)), old(_dryad_S11, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_reach(lst, curr)), old(_dryad_S11, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_keys(lst, curr)), old(_dryad_S11, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_len_next(lst, curr)), old(_dryad_S11, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_max_key(lst, curr)), old(_dryad_S11, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S10, sll_lseg_min_key(lst, curr)), old(_dryad_S11, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S10, srtl_lseg(lst, curr)), old(_dryad_S11, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(new_cp, old(_dryad_S10, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S10, srtl_lseg_reach(lst, curr)), old(_dryad_S11, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S10, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S11, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr4)), ==(*((curr4->key)), old(_dryad_S10, *((curr4->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr4)), @_vcc_ptr_eq_pure(*((curr4->next)), old(_dryad_S10, *((curr4->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr3)), ==(*((curr3->key)), old(_dryad_S10, *((curr3->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr3)), @_vcc_ptr_eq_pure(*((curr3->next)), old(_dryad_S10, *((curr3->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr0)), ==(*((curr0->key)), old(_dryad_S10, *((curr0->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S10, *((curr0->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr)), ==(*((curr->key)), old(_dryad_S10, *((curr->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S10, *((curr->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, cp)), ==(*((cp->key)), old(_dryad_S10, *((cp->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, cp)), @_vcc_ptr_eq_pure(*((cp->next)), old(_dryad_S10, *((cp->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#cp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, res)), ==(*((res->key)), old(_dryad_S10, *((res->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S10, *((res->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, lst)), ==(*((lst->key)), old(_dryad_S10, *((lst->key))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(SL#_dryad_S10, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(new_cp, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S10, *((lst->next))))); 
            assume !($phys_ptr_cast(L#new_cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S10, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_keys(curr4), @_vcc_intset_union(sll_keys(*((curr4->next))), @_vcc_intset_singleton(*((curr4->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_list_len_next(curr4), unchecked+(sll_list_len_next(*((curr4->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(rsrtl(curr4), &&(&&(rsrtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, rsrtl_reach(*((curr4->next)))))), >=(*((curr4->key)), sll_max_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(rsrtl_reach(curr4), @_vcc_oset_union(rsrtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll(curr4), &&(sll(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, sll_reach(*((curr4->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_reach(curr4), @_vcc_oset_union(sll_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_max_key(curr4), @\int_max(*((curr4->key)), sll_max_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_min_key(curr4), @\int_min(*((curr4->key)), sll_min_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(srtl(curr4), &&(&&(srtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, srtl_reach(*((curr4->next)))))), <=(*((curr4->key)), sll_min_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(srtl_reach(curr4), @_vcc_oset_union(srtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_keys(new_cp), @_vcc_intset_union(sll_keys(*((new_cp->next))), @_vcc_intset_singleton(*((new_cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_list_len_next(new_cp), unchecked+(sll_list_len_next(*((new_cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(rsrtl(new_cp), &&(&&(rsrtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, rsrtl_reach(*((new_cp->next)))))), >=(*((new_cp->key)), sll_max_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(rsrtl_reach(new_cp), @_vcc_oset_union(rsrtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll(new_cp), &&(sll(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, sll_reach(*((new_cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_reach(new_cp), @_vcc_oset_union(sll_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_max_key(new_cp), @\int_max(*((new_cp->key)), sll_max_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_min_key(new_cp), @\int_min(*((new_cp->key)), sll_min_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(srtl(new_cp), &&(&&(srtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, srtl_reach(*((new_cp->next)))))), <=(*((new_cp->key)), sll_min_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(srtl_reach(new_cp), @_vcc_oset_union(srtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg(res, cp), &&(sll_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), cp)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_reach(res, cp), @_vcc_oset_union(sll_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_keys(res, cp), @_vcc_intset_union(sll_lseg_keys(*((res->next)), cp), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_len_next(res, cp), unchecked+(sll_lseg_len_next(*((res->next)), cp), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_max_key(res, cp), @\int_max(*((res->key)), sll_lseg_max_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_min_key(res, cp), @\int_min(*((res->key)), sll_lseg_min_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(srtl_lseg(res, cp), &&(&&(srtl_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, srtl_lseg_reach(*((res->next)), cp)))), <=(*((res->key)), sll_lseg_min_key(*((res->next)), cp))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(srtl_lseg_reach(res, cp), @_vcc_oset_union(srtl_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // _math \state _dryad_S12; 
            // _dryad_S12 := @_vcc_current_state(@state); 
            SL#_dryad_S12 := $current_state($s);
            // _math \state stmtexpr8#10; 
            // stmtexpr8#10 := _dryad_S12; 
            stmtexpr8#10 := SL#_dryad_S12;
            // assert @prim_writes_check((cp->next)); 
            assert $writable_prim($s, #wrTime$3^3.3, $dot($phys_ptr_cast(L#cp, ^s_node), s_node.next));
            // *(cp->next) := new_cp; 
            call $write_int(s_node.next, $phys_ptr_cast(L#cp, ^s_node), $ptr_to_int($phys_ptr_cast(L#new_cp, ^s_node)));
            assume $full_stop_ext(#tok$3^73.5, $s);
            // _math \state _dryad_S13; 
            // _dryad_S13 := @_vcc_current_state(@state); 
            SL#_dryad_S13 := $current_state($s);
            // _math \state stmtexpr9#11; 
            // stmtexpr9#11 := _dryad_S13; 
            stmtexpr9#11 := SL#_dryad_S13;
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll_keys(curr4)), old(_dryad_S13, sll_keys(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll_list_len_next(curr4)), old(_dryad_S13, sll_list_len_next(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr4)))), ==(old(_dryad_S12, rsrtl(curr4)), old(_dryad_S13, rsrtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr4)))), ==(old(_dryad_S12, rsrtl_reach(curr4)), old(_dryad_S13, rsrtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll(curr4)), old(_dryad_S13, sll(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll_reach(curr4)), old(_dryad_S13, sll_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll_max_key(curr4)), old(_dryad_S13, sll_max_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr4)))), ==(old(_dryad_S12, sll_min_key(curr4)), old(_dryad_S13, sll_min_key(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr4)))), ==(old(_dryad_S12, srtl(curr4)), old(_dryad_S13, srtl(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr4)))), ==(old(_dryad_S12, srtl_reach(curr4)), old(_dryad_S13, srtl_reach(curr4)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr4, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll_keys(new_cp)), old(_dryad_S13, sll_keys(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll_list_len_next(new_cp)), old(_dryad_S13, sll_list_len_next(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(new_cp)))), ==(old(_dryad_S12, rsrtl(new_cp)), old(_dryad_S13, rsrtl(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(new_cp)))), ==(old(_dryad_S12, rsrtl_reach(new_cp)), old(_dryad_S13, rsrtl_reach(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll(new_cp)), old(_dryad_S13, sll(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll_reach(new_cp)), old(_dryad_S13, sll_reach(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll_max_key(new_cp)), old(_dryad_S13, sll_max_key(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(new_cp)))), ==(old(_dryad_S12, sll_min_key(new_cp)), old(_dryad_S13, sll_min_key(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(new_cp)))), ==(old(_dryad_S12, srtl(new_cp)), old(_dryad_S13, srtl(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(new_cp)))), ==(old(_dryad_S12, srtl_reach(new_cp)), old(_dryad_S13, srtl_reach(new_cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#new_cp, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll_keys(curr3)), old(_dryad_S13, sll_keys(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll_list_len_next(curr3)), old(_dryad_S13, sll_list_len_next(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr3)))), ==(old(_dryad_S12, rsrtl(curr3)), old(_dryad_S13, rsrtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr3)))), ==(old(_dryad_S12, rsrtl_reach(curr3)), old(_dryad_S13, rsrtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll(curr3)), old(_dryad_S13, sll(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll_reach(curr3)), old(_dryad_S13, sll_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll_max_key(curr3)), old(_dryad_S13, sll_max_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr3)))), ==(old(_dryad_S12, sll_min_key(curr3)), old(_dryad_S13, sll_min_key(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr3)))), ==(old(_dryad_S12, srtl(curr3)), old(_dryad_S13, srtl(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr3)))), ==(old(_dryad_S12, srtl_reach(curr3)), old(_dryad_S13, srtl_reach(curr3)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr3, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll_keys(curr0)), old(_dryad_S13, sll_keys(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll_list_len_next(curr0)), old(_dryad_S13, sll_list_len_next(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr0)))), ==(old(_dryad_S12, rsrtl(curr0)), old(_dryad_S13, rsrtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr0)))), ==(old(_dryad_S12, rsrtl_reach(curr0)), old(_dryad_S13, rsrtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll(curr0)), old(_dryad_S13, sll(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll_reach(curr0)), old(_dryad_S13, sll_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll_max_key(curr0)), old(_dryad_S13, sll_max_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr0)))), ==(old(_dryad_S12, sll_min_key(curr0)), old(_dryad_S13, sll_min_key(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr0)))), ==(old(_dryad_S12, srtl(curr0)), old(_dryad_S13, srtl(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr0)))), ==(old(_dryad_S12, srtl_reach(curr0)), old(_dryad_S13, srtl_reach(curr0)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(SL#curr0, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll_keys(curr)), old(_dryad_S13, sll_keys(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll_list_len_next(curr)), old(_dryad_S13, sll_list_len_next(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr)))), ==(old(_dryad_S12, rsrtl(curr)), old(_dryad_S13, rsrtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(curr)))), ==(old(_dryad_S12, rsrtl_reach(curr)), old(_dryad_S13, rsrtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll(curr)), old(_dryad_S13, sll(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll_reach(curr)), old(_dryad_S13, sll_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll_max_key(curr)), old(_dryad_S13, sll_max_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(curr)))), ==(old(_dryad_S12, sll_min_key(curr)), old(_dryad_S13, sll_min_key(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr)))), ==(old(_dryad_S12, srtl(curr)), old(_dryad_S13, srtl(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(curr)))), ==(old(_dryad_S12, srtl_reach(curr)), old(_dryad_S13, srtl_reach(curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll_keys(res)), old(_dryad_S13, sll_keys(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll_list_len_next(res)), old(_dryad_S13, sll_list_len_next(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(res)))), ==(old(_dryad_S12, rsrtl(res)), old(_dryad_S13, rsrtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(res)))), ==(old(_dryad_S12, rsrtl_reach(res)), old(_dryad_S13, rsrtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll(res)), old(_dryad_S13, sll(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll_reach(res)), old(_dryad_S13, sll_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll_max_key(res)), old(_dryad_S13, sll_max_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(res)))), ==(old(_dryad_S12, sll_min_key(res)), old(_dryad_S13, sll_min_key(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(res)))), ==(old(_dryad_S12, srtl(res)), old(_dryad_S13, srtl(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(res)))), ==(old(_dryad_S12, srtl_reach(res)), old(_dryad_S13, srtl_reach(res)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll_keys(lst)), old(_dryad_S13, sll_keys(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_keys(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_keys(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll_list_len_next(lst)), old(_dryad_S13, sll_list_len_next(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_list_len_next(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_list_len_next(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(lst)))), ==(old(_dryad_S12, rsrtl(lst)), old(_dryad_S13, rsrtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, rsrtl_reach(lst)))), ==(old(_dryad_S12, rsrtl_reach(lst)), old(_dryad_S13, rsrtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#rsrtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#rsrtl_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll(lst)), old(_dryad_S13, sll(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll_reach(lst)), old(_dryad_S13, sll_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll_max_key(lst)), old(_dryad_S13, sll_max_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_max_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_max_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_reach(lst)))), ==(old(_dryad_S12, sll_min_key(lst)), old(_dryad_S13, sll_min_key(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#sll_min_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#sll_min_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(lst)))), ==(old(_dryad_S12, srtl(lst)), old(_dryad_S13, srtl(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_reach(lst)))), ==(old(_dryad_S12, srtl_reach(lst)), old(_dryad_S13, srtl_reach(lst)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node))) ==> F#srtl_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node)) == F#srtl_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg(res, cp)), old(_dryad_S13, sll_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg_reach(res, cp)), old(_dryad_S13, sll_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg_keys(res, cp)), old(_dryad_S13, sll_lseg_keys(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg_len_next(res, cp)), old(_dryad_S13, sll_lseg_len_next(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg_max_key(res, cp)), old(_dryad_S13, sll_lseg_max_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(res, cp)))), ==(old(_dryad_S12, sll_lseg_min_key(res, cp)), old(_dryad_S13, sll_lseg_min_key(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S12, srtl_lseg(res, cp)), old(_dryad_S13, srtl_lseg(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(res, cp)))), ==(old(_dryad_S12, srtl_lseg_reach(res, cp)), old(_dryad_S13, srtl_lseg_reach(res, cp)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg(lst, curr)), old(_dryad_S13, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_reach(lst, curr)), old(_dryad_S13, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_keys(lst, curr)), old(_dryad_S13, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_len_next(lst, curr)), old(_dryad_S13, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_max_key(lst, curr)), old(_dryad_S13, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_min_key(lst, curr)), old(_dryad_S13, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S12, srtl_lseg(lst, curr)), old(_dryad_S13, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S12, srtl_lseg_reach(lst, curr)), old(_dryad_S13, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg(lst, curr)), old(_dryad_S13, sll_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_reach(lst, curr)), old(_dryad_S13, sll_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_keys(lst, curr)), old(_dryad_S13, sll_lseg_keys(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_keys(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_keys(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_len_next(lst, curr)), old(_dryad_S13, sll_lseg_len_next(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_len_next(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_len_next(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_max_key(lst, curr)), old(_dryad_S13, sll_lseg_max_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_max_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_max_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, sll_lseg_reach(lst, curr)))), ==(old(_dryad_S12, sll_lseg_min_key(lst, curr)), old(_dryad_S13, sll_lseg_min_key(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#sll_lseg_min_key(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#sll_lseg_min_key(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S12, srtl_lseg(lst, curr)), old(_dryad_S13, srtl_lseg(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(unchecked!(@_vcc_oset_in(cp, old(_dryad_S12, srtl_lseg_reach(lst, curr)))), ==(old(_dryad_S12, srtl_lseg_reach(lst, curr)), old(_dryad_S13, srtl_lseg_reach(lst, curr)))); 
            assume !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node))) ==> F#srtl_lseg_reach(SL#_dryad_S12, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == F#srtl_lseg_reach(SL#_dryad_S13, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr4)), ==(*((curr4->key)), old(_dryad_S12, *((curr4->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr4)), @_vcc_ptr_eq_pure(*((curr4->next)), old(_dryad_S12, *((curr4->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr4, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, new_cp)), ==(*((new_cp->key)), old(_dryad_S12, *((new_cp->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#new_cp, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, new_cp)), @_vcc_ptr_eq_pure(*((new_cp->next)), old(_dryad_S12, *((new_cp->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#new_cp, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr3)), ==(*((curr3->key)), old(_dryad_S12, *((curr3->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr3)), @_vcc_ptr_eq_pure(*((curr3->next)), old(_dryad_S12, *((curr3->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr3, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr0)), ==(*((curr0->key)), old(_dryad_S12, *((curr0->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr0)), @_vcc_ptr_eq_pure(*((curr0->next)), old(_dryad_S12, *((curr0->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(SL#curr0, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr)), ==(*((curr->key)), old(_dryad_S12, *((curr->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, curr)), @_vcc_ptr_eq_pure(*((curr->next)), old(_dryad_S12, *((curr->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#curr, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, res)), ==(*((res->key)), old(_dryad_S12, *((res->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(L#res, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, res)), @_vcc_ptr_eq_pure(*((res->next)), old(_dryad_S12, *((res->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(L#res, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node);
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, lst)), ==(*((lst->key)), old(_dryad_S12, *((lst->key))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) == $rd_inv(SL#_dryad_S12, s_node.key, $phys_ptr_cast(P#lst, ^s_node));
            // assume ==>(!(@_vcc_ptr_eq_pure(cp, lst)), @_vcc_ptr_eq_pure(*((lst->next)), old(_dryad_S12, *((lst->next))))); 
            assume !($phys_ptr_cast(L#cp, ^s_node) == $phys_ptr_cast(P#lst, ^s_node)) ==> $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) == $rd_phys_ptr(SL#_dryad_S12, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_keys(curr4), @_vcc_intset_union(sll_keys(*((curr4->next))), @_vcc_intset_singleton(*((curr4->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_list_len_next(curr4), unchecked+(sll_list_len_next(*((curr4->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(rsrtl(curr4), &&(&&(rsrtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, rsrtl_reach(*((curr4->next)))))), >=(*((curr4->key)), sll_max_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(rsrtl_reach(curr4), @_vcc_oset_union(rsrtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll(curr4), &&(sll(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, sll_reach(*((curr4->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(sll_reach(curr4), @_vcc_oset_union(sll_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_max_key(curr4), @\int_max(*((curr4->key)), sll_max_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(sll_min_key(curr4), @\int_min(*((curr4->key)), sll_min_key(*((curr4->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr4), @_vcc_ptr_neq_null(*((curr4->next)))), ==(srtl(curr4), &&(&&(srtl(*((curr4->next))), unchecked!(@_vcc_oset_in(curr4, srtl_reach(*((curr4->next)))))), <=(*((curr4->key)), sll_min_key(*((curr4->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr4, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr4, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr4, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr4), ==(srtl_reach(curr4), @_vcc_oset_union(srtl_reach(*((curr4->next))), @_vcc_oset_singleton(curr4)))); 
            assume $non_null($phys_ptr_cast(SL#curr4, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr4, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr4, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr4, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_keys(new_cp), @_vcc_intset_union(sll_keys(*((new_cp->next))), @_vcc_intset_singleton(*((new_cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_list_len_next(new_cp), unchecked+(sll_list_len_next(*((new_cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(rsrtl(new_cp), &&(&&(rsrtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, rsrtl_reach(*((new_cp->next)))))), >=(*((new_cp->key)), sll_max_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(rsrtl_reach(new_cp), @_vcc_oset_union(rsrtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll(new_cp), &&(sll(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, sll_reach(*((new_cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_reach(new_cp), @_vcc_oset_union(sll_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_max_key(new_cp), @\int_max(*((new_cp->key)), sll_max_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_min_key(new_cp), @\int_min(*((new_cp->key)), sll_min_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(srtl(new_cp), &&(&&(srtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, srtl_reach(*((new_cp->next)))))), <=(*((new_cp->key)), sll_min_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(srtl_reach(new_cp), @_vcc_oset_union(srtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
            assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
            assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_keys(new_cp), @_vcc_intset_union(sll_keys(*((new_cp->next))), @_vcc_intset_singleton(*((new_cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_list_len_next(new_cp), unchecked+(sll_list_len_next(*((new_cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(rsrtl(new_cp), &&(&&(rsrtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, rsrtl_reach(*((new_cp->next)))))), >=(*((new_cp->key)), sll_max_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(rsrtl_reach(new_cp), @_vcc_oset_union(rsrtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll(new_cp), &&(sll(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, sll_reach(*((new_cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(sll_reach(new_cp), @_vcc_oset_union(sll_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_max_key(new_cp), @\int_max(*((new_cp->key)), sll_max_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(sll_min_key(new_cp), @\int_min(*((new_cp->key)), sll_min_key(*((new_cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(new_cp), @_vcc_ptr_neq_null(*((new_cp->next)))), ==(srtl(new_cp), &&(&&(srtl(*((new_cp->next))), unchecked!(@_vcc_oset_in(new_cp, srtl_reach(*((new_cp->next)))))), <=(*((new_cp->key)), sll_min_key(*((new_cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#new_cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#new_cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#new_cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(new_cp), ==(srtl_reach(new_cp), @_vcc_oset_union(srtl_reach(*((new_cp->next))), @_vcc_oset_singleton(new_cp)))); 
            assume $non_null($phys_ptr_cast(L#new_cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#new_cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#new_cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#new_cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // struct s_node* cp8; 
            // cp8 := cp; 
            SL#cp8 := $phys_ptr_cast(L#cp, ^s_node);
            // struct s_node* stmtexpr10#12; 
            // stmtexpr10#12 := cp8; 
            stmtexpr10#12 := $phys_ptr_cast(SL#cp8, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), ==(sll_lseg(cp, *((cp->next))), &&(sll_lseg(*((cp->next)), *((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_lseg_reach(*((cp->next)), *((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), ==(sll_lseg_reach(cp, *((cp->next))), @_vcc_oset_union(sll_lseg_reach(*((cp->next)), *((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), ==(sll_lseg_keys(cp, *((cp->next))), @_vcc_intset_union(sll_lseg_keys(*((cp->next)), *((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), ==(sll_lseg_len_next(cp, *((cp->next))), unchecked+(sll_lseg_len_next(*((cp->next)), *((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), @_vcc_ptr_neq_pure(*((cp->next)), *((cp->next)))), ==(sll_lseg_max_key(cp, *((cp->next))), @\int_max(*((cp->key)), sll_lseg_max_key(*((cp->next)), *((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), @_vcc_ptr_neq_pure(*((cp->next)), *((cp->next)))), ==(sll_lseg_min_key(cp, *((cp->next))), @\int_min(*((cp->key)), sll_lseg_min_key(*((cp->next)), *((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), @_vcc_ptr_neq_pure(*((cp->next)), *((cp->next)))), ==(srtl_lseg(cp, *((cp->next))), &&(&&(srtl_lseg(*((cp->next)), *((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_lseg_reach(*((cp->next)), *((cp->next)))))), <=(*((cp->key)), sll_lseg_min_key(*((cp->next)), *((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_pure(cp, *((cp->next)))), ==(srtl_lseg_reach(cp, *((cp->next))), @_vcc_oset_union(srtl_lseg_reach(*((cp->next)), *((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $phys_ptr_cast(L#cp, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#cp, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assert @reads_check_normal((cp->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#cp, ^s_node));
            // cp := *((cp->next)); 
            L#cp := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg(res, cp), &&(sll_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, sll_lseg_reach(*((res->next)), cp)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_reach(res, cp), @_vcc_oset_union(sll_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_keys(res, cp), @_vcc_intset_union(sll_lseg_keys(*((res->next)), cp), @_vcc_intset_singleton(*((res->key)))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(sll_lseg_len_next(res, cp), unchecked+(sll_lseg_len_next(*((res->next)), cp), 1))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_max_key(res, cp), @\int_max(*((res->key)), sll_lseg_max_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(sll_lseg_min_key(res, cp), @\int_min(*((res->key)), sll_lseg_min_key(*((res->next)), cp)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), @_vcc_ptr_neq_pure(*((res->next)), cp)), ==(srtl_lseg(res, cp), &&(&&(srtl_lseg(*((res->next)), cp), unchecked!(@_vcc_oset_in(res, srtl_lseg_reach(*((res->next)), cp)))), <=(*((res->key)), sll_lseg_min_key(*((res->next)), cp))))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_pure(res, cp)), ==(srtl_lseg_reach(res, cp), @_vcc_oset_union(srtl_lseg_reach(*((res->next)), cp), @_vcc_oset_singleton(res)))); 
            assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $phys_ptr_cast(L#res, ^s_node) != $phys_ptr_cast(L#cp, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#res, ^s_node), $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node), $phys_ptr_cast(L#cp, ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
            // struct s_node* curr9; 
            // curr9 := curr; 
            SL#curr9 := $phys_ptr_cast(L#curr, ^s_node);
            // struct s_node* stmtexpr11#13; 
            // stmtexpr11#13 := curr9; 
            stmtexpr11#13 := $phys_ptr_cast(SL#curr9, ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg(curr, *((curr->next))), &&(sll_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_lseg_reach(*((curr->next)), *((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(sll_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_keys(curr, *((curr->next))), @_vcc_intset_union(sll_lseg_keys(*((curr->next)), *((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(sll_lseg_len_next(curr, *((curr->next))), unchecked+(sll_lseg_len_next(*((curr->next)), *((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_max_key(curr, *((curr->next))), @\int_max(*((curr->key)), sll_lseg_max_key(*((curr->next)), *((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(sll_lseg_min_key(curr, *((curr->next))), @\int_min(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), @_vcc_ptr_neq_pure(*((curr->next)), *((curr->next)))), ==(srtl_lseg(curr, *((curr->next))), &&(&&(srtl_lseg(*((curr->next)), *((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_lseg_reach(*((curr->next)), *((curr->next)))))), <=(*((curr->key)), sll_lseg_min_key(*((curr->next)), *((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_pure(curr, *((curr->next)))), ==(srtl_lseg_reach(curr, *((curr->next))), @_vcc_oset_union(srtl_lseg_reach(*((curr->next)), *((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $phys_ptr_cast(L#curr, ^s_node) != $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(L#curr, ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node), $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assert @reads_check_normal((curr->next)); 
            assert $thread_local($s, $phys_ptr_cast(L#curr, ^s_node));
            // curr := *((curr->next)); 
            L#curr := $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node);
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg(lst, curr), &&(sll_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, sll_lseg_reach(*((lst->next)), curr)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#sll_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_reach(lst, curr), @_vcc_oset_union(sll_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_keys(lst, curr), @_vcc_intset_union(sll_lseg_keys(*((lst->next)), curr), @_vcc_intset_singleton(*((lst->key)))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_keys($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_lseg_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(sll_lseg_len_next(lst, curr), unchecked+(sll_lseg_len_next(*((lst->next)), curr), 1))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_len_next($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_lseg_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), 1);
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_max_key(lst, curr), @\int_max(*((lst->key)), sll_lseg_max_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_max_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(sll_lseg_min_key(lst, curr), @\int_min(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#sll_lseg_min_key($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), @_vcc_ptr_neq_pure(*((lst->next)), curr)), ==(srtl_lseg(lst, curr), &&(&&(srtl_lseg(*((lst->next)), curr), unchecked!(@_vcc_oset_in(lst, srtl_lseg_reach(*((lst->next)), curr)))), <=(*((lst->key)), sll_lseg_min_key(*((lst->next)), curr))))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) && $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl_lseg($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_lseg_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)));
            // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_pure(lst, curr)), ==(srtl_lseg_reach(lst, curr), @_vcc_oset_union(srtl_lseg_reach(*((lst->next)), curr), @_vcc_oset_singleton(lst)))); 
            assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $phys_ptr_cast(P#lst, ^s_node) != $phys_ptr_cast(L#curr, ^s_node) ==> F#srtl_lseg_reach($s, $phys_ptr_cast(P#lst, ^s_node), $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_lseg_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node), $phys_ptr_cast(L#curr, ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
            // assume ==>(@_vcc_ptr_neq_null(curr), &&(@_vcc_mutable(@state, curr), @writes_check(curr))); 
            assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#curr, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#curr, ^s_node));
            // assume ==>(@_vcc_ptr_neq_null(cp), &&(@_vcc_mutable(@state, cp), @writes_check(cp))); 
            assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> $mutable($s, $phys_ptr_cast(L#cp, ^s_node)) && $top_writable($s, #wrTime$3^3.3, $phys_ptr_cast(L#cp, ^s_node));
        }
        else
        {
          anon4:
            // assert @_vcc_possibly_unreachable; 
            assert {:PossiblyUnreachable true} true;
            // goto #break_1; 
            goto #break_1;
        }

      #continue_1:
        assume true;
p0000 := (F#srtl($s,$phys_ptr_cast(P#lst,^s_node)));
p0001 := (F#srtl($s,$phys_ptr_cast(L#curr,^s_node)));
p0002 := (F#srtl($s,$phys_ptr_cast(L#cp,^s_node)));
p0003 := (F#srtl($s,$phys_ptr_cast(L#res,^s_node)));
p0004 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0005 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0006 := (F#srtl_lseg($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0007 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0008 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0009 := (F#srtl_lseg($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0010 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0011 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0012 := (F#srtl_lseg($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)));
p0013 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)));
p0014 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)));
p0015 := (F#srtl_lseg($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)));
p0016 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0017 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0018 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0019 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0020 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0021 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0022 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0023 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0024 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0025 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0026 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0027 := ($oset_disjoint(F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0028 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0029 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0030 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0031 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0032 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0033 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0034 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0035 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0036 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0037 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0038 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0039 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0040 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0041 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0042 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0043 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0044 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0045 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0046 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0047 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0048 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0049 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0050 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0051 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0052 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0053 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0054 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0055 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0056 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0057 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0058 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0059 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0060 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0061 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0062 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0063 := ($oset_disjoint(F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0064 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0065 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0066 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0067 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0068 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0069 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0070 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0071 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0072 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#res,^s_node))));
p0073 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(P#lst,^s_node))));
p0074 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#curr,^s_node))));
p0075 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_reach($s,$phys_ptr_cast(L#cp,^s_node))));
p0076 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0077 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0078 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0079 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0080 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0081 := ($oset_disjoint($oset_singleton($phys_ptr_cast(P#lst,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0082 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0083 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0084 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0085 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0086 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0087 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#curr,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0088 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0089 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0090 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0091 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))));
p0092 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0093 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#cp,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0094 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0095 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0096 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0097 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))));
p0098 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))));
p0099 := ($oset_disjoint($oset_singleton($phys_ptr_cast(L#res,^s_node)),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))));
p0100 := ($non_null($phys_ptr_cast(P#lst,^s_node)));
p0101 := ($non_null($phys_ptr_cast(L#curr,^s_node)));
p0102 := ($non_null($phys_ptr_cast(L#cp,^s_node)));
p0103 := ($non_null($phys_ptr_cast(L#res,^s_node)));
p0104 := ($is_null($phys_ptr_cast(P#lst,^s_node)));
p0105 := ($is_null($phys_ptr_cast(L#curr,^s_node)));
p0106 := ($is_null($phys_ptr_cast(L#cp,^s_node)));
p0107 := ($is_null($phys_ptr_cast(L#res,^s_node)));
p0108 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0109 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0110 := (($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0111 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0112 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0113 := (($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0114 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0115 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0116 := (($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node)));
p0117 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node)));
p0118 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node)));
p0119 := (($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node)));
p0120 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0121 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0122 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node))));
p0123 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $non_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0124 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node))));
p0125 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node))));
p0126 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node))));
p0127 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> $is_null($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node))));
p0128 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0129 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0130 := (($non_null($phys_ptr_cast(P#lst,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(P#lst,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0131 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0132 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0133 := (($non_null($phys_ptr_cast(L#curr,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#curr,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0134 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0135 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0136 := (($non_null($phys_ptr_cast(L#cp,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#cp,^s_node),^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0137 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0138 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0139 := (($non_null($phys_ptr_cast(L#res,^s_node)) ==> ($rd_phys_ptr($s,s_node.next,$phys_ptr_cast(L#res,^s_node),^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0140 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0141 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0142 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0143 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0144 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0145 := ((!($oset_in($phys_ptr_cast(P#lst,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0146 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0147 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0148 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0149 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0150 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0151 := ((!($oset_in($phys_ptr_cast(L#curr,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0152 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0153 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0154 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0155 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#res,^s_node))))));
p0156 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0157 := ((!($oset_in($phys_ptr_cast(L#cp,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#res,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0158 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0159 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(P#lst,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0160 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0161 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#curr,^s_node),$phys_ptr_cast(L#cp,^s_node))))));
p0162 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(P#lst,^s_node))))));
p0163 := ((!($oset_in($phys_ptr_cast(L#res,^s_node),F#srtl_lseg_reach($s,$phys_ptr_cast(L#cp,^s_node),$phys_ptr_cast(L#curr,^s_node))))));
p0164 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0165 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0166 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0167 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0168 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0169 := (($is_null($phys_ptr_cast(P#lst,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0170 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0171 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0172 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0173 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0174 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0175 := (($is_null($phys_ptr_cast(L#curr,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0176 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0177 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0178 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0179 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#res,^s_node))));
p0180 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0181 := (($is_null($phys_ptr_cast(L#cp,^s_node)) ==> ($phys_ptr_cast(L#res,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0182 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#curr,^s_node))));
p0183 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(P#lst,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0184 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0185 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#curr,^s_node) == $phys_ptr_cast(L#cp,^s_node))));
p0186 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(P#lst,^s_node))));
p0187 := (($is_null($phys_ptr_cast(L#res,^s_node)) ==> ($phys_ptr_cast(L#cp,^s_node) == $phys_ptr_cast(L#curr,^s_node))));

    }

  anon8:
    assume $full_stop_ext(#tok$3^31.3, $s);

  #break_1:
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_keys(curr3), @_vcc_intset_union(sll_keys(*((curr3->next))), @_vcc_intset_singleton(*((curr3->key)))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_list_len_next(curr3), unchecked+(sll_list_len_next(*((curr3->next))), 1))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(rsrtl(curr3), &&(&&(rsrtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, rsrtl_reach(*((curr3->next)))))), >=(*((curr3->key)), sll_max_key(*((curr3->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(rsrtl_reach(curr3), @_vcc_oset_union(rsrtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll(curr3), &&(sll(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, sll_reach(*((curr3->next)))))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(sll_reach(curr3), @_vcc_oset_union(sll_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_max_key(curr3), @\int_max(*((curr3->key)), sll_max_key(*((curr3->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(sll_min_key(curr3), @\int_min(*((curr3->key)), sll_min_key(*((curr3->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr3), @_vcc_ptr_neq_null(*((curr3->next)))), ==(srtl(curr3), &&(&&(srtl(*((curr3->next))), unchecked!(@_vcc_oset_in(curr3, srtl_reach(*((curr3->next)))))), <=(*((curr3->key)), sll_min_key(*((curr3->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr3, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr3, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr3, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr3), ==(srtl_reach(curr3), @_vcc_oset_union(srtl_reach(*((curr3->next))), @_vcc_oset_singleton(curr3)))); 
    assume $non_null($phys_ptr_cast(SL#curr3, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr3, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr3, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr3, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_keys(curr0), @_vcc_intset_union(sll_keys(*((curr0->next))), @_vcc_intset_singleton(*((curr0->key)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_list_len_next(curr0), unchecked+(sll_list_len_next(*((curr0->next))), 1))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(rsrtl(curr0), &&(&&(rsrtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, rsrtl_reach(*((curr0->next)))))), >=(*((curr0->key)), sll_max_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(rsrtl_reach(curr0), @_vcc_oset_union(rsrtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll(curr0), &&(sll(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, sll_reach(*((curr0->next)))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(sll_reach(curr0), @_vcc_oset_union(sll_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_max_key(curr0), @\int_max(*((curr0->key)), sll_max_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(sll_min_key(curr0), @\int_min(*((curr0->key)), sll_min_key(*((curr0->next)))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr0), @_vcc_ptr_neq_null(*((curr0->next)))), ==(srtl(curr0), &&(&&(srtl(*((curr0->next))), unchecked!(@_vcc_oset_in(curr0, srtl_reach(*((curr0->next)))))), <=(*((curr0->key)), sll_min_key(*((curr0->next))))))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(SL#curr0, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(SL#curr0, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(SL#curr0, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr0), ==(srtl_reach(curr0), @_vcc_oset_union(srtl_reach(*((curr0->next))), @_vcc_oset_singleton(curr0)))); 
    assume $non_null($phys_ptr_cast(SL#curr0, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(SL#curr0, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(SL#curr0, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(SL#curr0, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_keys(curr), @_vcc_intset_union(sll_keys(*((curr->next))), @_vcc_intset_singleton(*((curr->key)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#curr, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_list_len_next(curr), unchecked+(sll_list_len_next(*((curr->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#curr, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(rsrtl(curr), &&(&&(rsrtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, rsrtl_reach(*((curr->next)))))), >=(*((curr->key)), sll_max_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(rsrtl_reach(curr), @_vcc_oset_union(rsrtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll(curr), &&(sll(*((curr->next))), unchecked!(@_vcc_oset_in(curr, sll_reach(*((curr->next)))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(sll_reach(curr), @_vcc_oset_union(sll_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_max_key(curr), @\int_max(*((curr->key)), sll_max_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(sll_min_key(curr), @\int_min(*((curr->key)), sll_min_key(*((curr->next)))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#curr, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(curr), @_vcc_ptr_neq_null(*((curr->next)))), ==(srtl(curr), &&(&&(srtl(*((curr->next))), unchecked!(@_vcc_oset_in(curr, srtl_reach(*((curr->next)))))), <=(*((curr->key)), sll_min_key(*((curr->next))))))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#curr, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#curr, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#curr, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(curr), ==(srtl_reach(curr), @_vcc_oset_union(srtl_reach(*((curr->next))), @_vcc_oset_singleton(curr)))); 
    assume $non_null($phys_ptr_cast(L#curr, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#curr, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#curr, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#curr, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_keys(cp), @_vcc_intset_union(sll_keys(*((cp->next))), @_vcc_intset_singleton(*((cp->key)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#cp, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_list_len_next(cp), unchecked+(sll_list_len_next(*((cp->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#cp, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(rsrtl(cp), &&(&&(rsrtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, rsrtl_reach(*((cp->next)))))), >=(*((cp->key)), sll_max_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(rsrtl_reach(cp), @_vcc_oset_union(rsrtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll(cp), &&(sll(*((cp->next))), unchecked!(@_vcc_oset_in(cp, sll_reach(*((cp->next)))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(sll_reach(cp), @_vcc_oset_union(sll_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_max_key(cp), @\int_max(*((cp->key)), sll_max_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(sll_min_key(cp), @\int_min(*((cp->key)), sll_min_key(*((cp->next)))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#cp, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(cp), @_vcc_ptr_neq_null(*((cp->next)))), ==(srtl(cp), &&(&&(srtl(*((cp->next))), unchecked!(@_vcc_oset_in(cp, srtl_reach(*((cp->next)))))), <=(*((cp->key)), sll_min_key(*((cp->next))))))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#cp, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#cp, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#cp, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(cp), ==(srtl_reach(cp), @_vcc_oset_union(srtl_reach(*((cp->next))), @_vcc_oset_singleton(cp)))); 
    assume $non_null($phys_ptr_cast(L#cp, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#cp, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#cp, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#cp, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_keys(res), @_vcc_intset_union(sll_keys(*((res->next))), @_vcc_intset_singleton(*((res->key)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(L#res, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_list_len_next(res), unchecked+(sll_list_len_next(*((res->next))), 1))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(L#res, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(rsrtl(res), &&(&&(rsrtl(*((res->next))), unchecked!(@_vcc_oset_in(res, rsrtl_reach(*((res->next)))))), >=(*((res->key)), sll_max_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(rsrtl_reach(res), @_vcc_oset_union(rsrtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll(res), &&(sll(*((res->next))), unchecked!(@_vcc_oset_in(res, sll_reach(*((res->next)))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll($s, $phys_ptr_cast(L#res, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(sll_reach(res), @_vcc_oset_union(sll_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_max_key(res), @\int_max(*((res->key)), sll_max_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(sll_min_key(res), @\int_min(*((res->key)), sll_min_key(*((res->next)))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(L#res, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(res), @_vcc_ptr_neq_null(*((res->next)))), ==(srtl(res), &&(&&(srtl(*((res->next))), unchecked!(@_vcc_oset_in(res, srtl_reach(*((res->next)))))), <=(*((res->key)), sll_min_key(*((res->next))))))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(L#res, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(L#res, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(L#res, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(res), ==(srtl_reach(res), @_vcc_oset_union(srtl_reach(*((res->next))), @_vcc_oset_singleton(res)))); 
    assume $non_null($phys_ptr_cast(L#res, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(L#res, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(L#res, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(L#res, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_keys(lst), @_vcc_intset_union(sll_keys(*((lst->next))), @_vcc_intset_singleton(*((lst->key)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_keys($s, $phys_ptr_cast(P#lst, ^s_node)) == $intset_union(F#sll_keys($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $intset_singleton($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_list_len_next(lst), unchecked+(sll_list_len_next(*((lst->next))), 1))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_list_len_next($s, $phys_ptr_cast(P#lst, ^s_node)) == $unchk_add(^^nat, F#sll_list_len_next($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), 1);
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(rsrtl(lst), &&(&&(rsrtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, rsrtl_reach(*((lst->next)))))), >=(*((lst->key)), sll_max_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#rsrtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#rsrtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) >= F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(rsrtl_reach(lst), @_vcc_oset_union(rsrtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#rsrtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#rsrtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll(lst), &&(sll(*((lst->next))), unchecked!(@_vcc_oset_in(lst, sll_reach(*((lst->next)))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#sll($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(sll_reach(lst), @_vcc_oset_union(sll_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#sll_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#sll_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_max_key(lst), @\int_max(*((lst->key)), sll_max_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_max_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_max($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_max_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(sll_min_key(lst), @\int_min(*((lst->key)), sll_min_key(*((lst->next)))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#sll_min_key($s, $phys_ptr_cast(P#lst, ^s_node)) == $int_min($rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)), F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(&&(@_vcc_ptr_neq_null(lst), @_vcc_ptr_neq_null(*((lst->next)))), ==(srtl(lst), &&(&&(srtl(*((lst->next))), unchecked!(@_vcc_oset_in(lst, srtl_reach(*((lst->next)))))), <=(*((lst->key)), sll_min_key(*((lst->next))))))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) && $non_null($rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) ==> F#srtl($s, $phys_ptr_cast(P#lst, ^s_node)) == (F#srtl($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)) && !$oset_in($phys_ptr_cast(P#lst, ^s_node), F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node))) && $rd_inv($s, s_node.key, $phys_ptr_cast(P#lst, ^s_node)) <= F#sll_min_key($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)));
    // assume ==>(@_vcc_ptr_neq_null(lst), ==(srtl_reach(lst), @_vcc_oset_union(srtl_reach(*((lst->next))), @_vcc_oset_singleton(lst)))); 
    assume $non_null($phys_ptr_cast(P#lst, ^s_node)) ==> F#srtl_reach($s, $phys_ptr_cast(P#lst, ^s_node)) == $oset_union(F#srtl_reach($s, $rd_phys_ptr($s, s_node.next, $phys_ptr_cast(P#lst, ^s_node), ^s_node)), $oset_singleton($phys_ptr_cast(P#lst, ^s_node)));
    // return res; 
    $result := $phys_ptr_cast(L#res, ^s_node);
    assume true;
    assert $position_marker();
    goto #exit;

  anon9:
    // skip

  #exit:
}



axiom (forall Q#__vcc_state$2^687.9#tc2#1682: $state, Q#x$2^687.9#dt1#1623: $ptr :: {:weight 10} { F#srtl(Q#__vcc_state$2^687.9#tc2#1682, $phys_ptr_cast(Q#x$2^687.9#dt1#1623, ^s_node)) } { F#sll(Q#__vcc_state$2^687.9#tc2#1682, $phys_ptr_cast(Q#x$2^687.9#dt1#1623, ^s_node)) } $good_state(Q#__vcc_state$2^687.9#tc2#1682) && true ==> F#srtl(Q#__vcc_state$2^687.9#tc2#1682, $phys_ptr_cast(Q#x$2^687.9#dt1#1623, ^s_node)) ==> F#sll(Q#__vcc_state$2^687.9#tc2#1682, $phys_ptr_cast(Q#x$2^687.9#dt1#1623, ^s_node)));

axiom (forall Q#__vcc_state$2^688.9#tc2#1683: $state, Q#x$2^688.9#dt1#1624: $ptr :: {:weight 10} { F#rsrtl(Q#__vcc_state$2^688.9#tc2#1683, $phys_ptr_cast(Q#x$2^688.9#dt1#1624, ^s_node)) } { F#sll(Q#__vcc_state$2^688.9#tc2#1683, $phys_ptr_cast(Q#x$2^688.9#dt1#1624, ^s_node)) } $good_state(Q#__vcc_state$2^688.9#tc2#1683) && true ==> F#rsrtl(Q#__vcc_state$2^688.9#tc2#1683, $phys_ptr_cast(Q#x$2^688.9#dt1#1624, ^s_node)) ==> F#sll(Q#__vcc_state$2^688.9#tc2#1683, $phys_ptr_cast(Q#x$2^688.9#dt1#1624, ^s_node)));

axiom (forall Q#__vcc_state$2^689.9#tc2#1684: $state, Q#x$2^689.9#dt1#1625: $ptr :: {:weight 10} { F#sll_reach(Q#__vcc_state$2^689.9#tc2#1684, $phys_ptr_cast(Q#x$2^689.9#dt1#1625, ^s_node)) } { F#srtl_reach(Q#__vcc_state$2^689.9#tc2#1684, $phys_ptr_cast(Q#x$2^689.9#dt1#1625, ^s_node)) } $good_state(Q#__vcc_state$2^689.9#tc2#1684) && true ==> F#sll_reach(Q#__vcc_state$2^689.9#tc2#1684, $phys_ptr_cast(Q#x$2^689.9#dt1#1625, ^s_node)) == F#srtl_reach(Q#__vcc_state$2^689.9#tc2#1684, $phys_ptr_cast(Q#x$2^689.9#dt1#1625, ^s_node)));

axiom (forall Q#__vcc_state$2^690.9#tc2#1685: $state, Q#x$2^690.9#dt1#1626: $ptr :: {:weight 10} { F#srtl_reach(Q#__vcc_state$2^690.9#tc2#1685, $phys_ptr_cast(Q#x$2^690.9#dt1#1626, ^s_node)) } { F#rsrtl_reach(Q#__vcc_state$2^690.9#tc2#1685, $phys_ptr_cast(Q#x$2^690.9#dt1#1626, ^s_node)) } $good_state(Q#__vcc_state$2^690.9#tc2#1685) && true ==> F#srtl_reach(Q#__vcc_state$2^690.9#tc2#1685, $phys_ptr_cast(Q#x$2^690.9#dt1#1626, ^s_node)) == F#rsrtl_reach(Q#__vcc_state$2^690.9#tc2#1685, $phys_ptr_cast(Q#x$2^690.9#dt1#1626, ^s_node)));

axiom (forall Q#__vcc_state$2^691.9#tc2#1686: $state, Q#x$2^691.9#dt1#1627: $ptr, Q#y$2^691.9#dt1#1628: $ptr :: {:weight 10} { F#sll_lseg_reach(Q#__vcc_state$2^691.9#tc2#1686, $phys_ptr_cast(Q#x$2^691.9#dt1#1627, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1628, ^s_node)) } { F#srtl_lseg_reach(Q#__vcc_state$2^691.9#tc2#1686, $phys_ptr_cast(Q#x$2^691.9#dt1#1627, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1628, ^s_node)) } $good_state(Q#__vcc_state$2^691.9#tc2#1686) && true ==> F#sll_lseg_reach(Q#__vcc_state$2^691.9#tc2#1686, $phys_ptr_cast(Q#x$2^691.9#dt1#1627, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1628, ^s_node)) == F#srtl_lseg_reach(Q#__vcc_state$2^691.9#tc2#1686, $phys_ptr_cast(Q#x$2^691.9#dt1#1627, ^s_node), $phys_ptr_cast(Q#y$2^691.9#dt1#1628, ^s_node)));

const unique l#public: $label;

axiom $type_code_is(2, ^$#state_t);

const unique #tok$3^73.5: $token;

const unique #tok$3^71.5: $token;

const unique #tok$3^70.5: $token;

const unique #tok$3^62.21: $token;

const unique #tok$3^31.3: $token;

const unique #tok$3^25.3: $token;

const unique #tok$3^24.3: $token;

const unique #tok$3^17.16: $token;

const unique #tok$3^10.29: $token;

const unique #tok$4^0.0: $token;

const unique #file^?3Cno?20file?3E: $token;

axiom $file_name_is(4, #file^?3Cno?20file?3E);

const unique #tok$3^3.3: $token;

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_double_all.c: $token;

axiom $file_name_is(3, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?5Cvcc?5CHost?5Cbin?5CTests?5Cgrass?5Csls_double_all.c);

const unique #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h: $token;

axiom $file_name_is(2, #file^z?3A?5Cinvariantsynthesis?5Cvcdryad?5Cvcc?5Chost?5Cbin?5Ctests?5Cgrass?5Cdryad_sls.h);

const unique #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h: $token;

axiom $file_name_is(1, #file^Z?3A?5CInvariantSynthesis?5CVCDryad?2Dbin?5CHeaders?5Cvccp.h);

const unique #distTp1: $ctype;

axiom #distTp1 == $ptr_to(^s_node);

