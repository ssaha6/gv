function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool,
 b0016: bool,
 b0017: bool,
 b0018: bool,
 b0019: bool,
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool,
 b0024: bool,
 b0025: bool,
 b0026: bool,
 b0027: bool,
 b0028: bool,
 b0029: bool,
 b0030: bool,
 b0031: bool,
 b0032: bool,
 b0033: bool,
 b0034: bool,
 b0035: bool,
 b0036: bool,
 b0037: bool,
 b0038: bool,
 b0039: bool,
 b0040: bool,
 b0041: bool,
 b0042: bool,
 b0043: bool,
 b0044: bool,
 b0045: bool,
 b0046: bool,
 b0047: bool,
 b0048: bool,
 b0049: bool,
 b0050: bool,
 b0051: bool,
 b0052: bool,
 b0053: bool,
 b0054: bool,
 b0055: bool,
 b0056: bool,
 b0057: bool,
 b0058: bool,
 b0059: bool,
 b0060: bool,
 b0061: bool,
 b0062: bool,
 b0063: bool,
 b0064: bool,
 b0065: bool,
 b0066: bool,
 b0067: bool,
 b0068: bool,
 b0069: bool,
 b0070: bool,
 b0071: bool,
 b0072: bool,
 b0073: bool,
 b0074: bool,
 b0075: bool,
 b0076: bool,
 b0077: bool,
 b0078: bool,
 b0079: bool,
 b0080: bool,
 b0081: bool,
 b0082: bool,
 b0083: bool,
 b0084: bool,
 b0085: bool,
 b0086: bool,
 b0087: bool,
 b0088: bool,
 b0089: bool,
 b0090: bool,
 b0091: bool,
 b0092: bool,
 b0093: bool,
 b0094: bool,
 b0095: bool,
 b0096: bool,
 b0097: bool,
 b0098: bool,
 b0099: bool,
 b0100: bool,
 b0101: bool,
 b0102: bool,
 b0103: bool,
 b0104: bool,
 b0105: bool,
 b0106: bool,
 b0107: bool,
 b0108: bool,
 b0109: bool,
 b0110: bool,
 b0111: bool,
 b0112: bool,
 b0113: bool,
 b0114: bool,
 b0115: bool,
 b0116: bool,
 b0117: bool,
 b0118: bool,
 b0119: bool,
 b0120: bool,
 b0121: bool,
 b0122: bool,
 b0123: bool,
 b0124: bool,
 b0125: bool,
 b0126: bool,
 b0127: bool,
 b0128: bool,
 b0129: bool,
 b0130: bool,
 b0131: bool,
 b0132: bool,
 b0133: bool,
 b0134: bool,
 b0135: bool,
 b0136: bool,
 b0137: bool,
 b0138: bool,
 b0139: bool,
 b0140: bool,
 b0141: bool,
 b0142: bool,
 b0143: bool,
 b0144: bool,
 b0145: bool,
 b0146: bool,
 b0147: bool,
 b0148: bool,
 b0149: bool,
 b0150: bool,
 b0151: bool,
 b0152: bool,
 b0153: bool,
 b0154: bool,
 b0155: bool,
 b0156: bool,
 b0157: bool,
 b0158: bool,
 b0159: bool,
 b0160: bool,
 b0161: bool,
 b0162: bool,
 b0163: bool,
 b0164: bool,
 b0165: bool,
 b0166: bool,
 b0167: bool,
 b0168: bool,
 b0169: bool,
 b0170: bool,
 b0171: bool,
 b0172: bool,
 b0173: bool,
 b0174: bool,
 b0175: bool,
 b0176: bool,
 b0177: bool,
 b0178: bool,
 b0179: bool,
 b0180: bool,
 b0181: bool,
 b0182: bool,
 b0183: bool,
 b0184: bool,
 b0185: bool,
 b0186: bool,
 b0187: bool,
 b0188: bool,
 b0189: bool,
 b0190: bool,
 b0191: bool,
 b0192: bool,
 b0193: bool,
 b0194: bool,
 b0195: bool,
 b0196: bool,
 b0197: bool,
 b0198: bool,
 b0199: bool,
 b0200: bool,
 b0201: bool,
 b0202: bool,
 b0203: bool,
 b0204: bool,
 b0205: bool,
 b0206: bool,
 b0207: bool,
 b0208: bool,
 b0209: bool,
 b0210: bool,
 b0211: bool,
 b0212: bool,
 b0213: bool,
 b0214: bool,
 b0215: bool,
 b0216: bool,
 b0217: bool,
 b0218: bool,
 b0219: bool,
 b0220: bool,
 b0221: bool,
 b0222: bool,
 b0223: bool,
 b0224: bool,
 b0225: bool,
 b0226: bool,
 b0227: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "A"} {:global} $$A: [bv32]bv64;

axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "shared_A_0"} {:group_shared} $$kernel1.shared_A_0: [bv1][bv32]bv64;

axiom {:array_info "$$kernel1.shared_A_0"} {:group_shared} {:elem_width 64} {:source_name "shared_A_0"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0: bool;

const _WATCHED_OFFSET: bv32;

const {:__dominator_enabled} __dominator_enabled: bool;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel1"} {:kernel} $kernel1($n: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 64bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV64_SLT($c0, BV32_SEXT64(BV32_SUB(BV32_MUL(2bv32, $n), 2bv32))) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(2bv32, $n)), BV64_ADD($c0, 3bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 1bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$kernel1.shared_A_0 && !_WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 && !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies $$kernel1.shared_A_0, _READ_HAS_OCCURRED_$$A, _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0, $$A, _TRACKING, _READ_HAS_OCCURRED_$$kernel1.shared_A_0, _TRACKING, _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:source_name "kernel1"} {:kernel} $kernel1($n: bv32, $c0: bv64)
{
  var $0$1: bv64;
  var $0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var $4$1: bv64;
  var $4$2: bv64;
  var $5$1: bv64;
  var $5$2: bv64;
  var $6$1: bv64;
  var $6$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $7$1: bv64;
  var $7$2: bv64;
  var $8$1: bv64;
  var $8$2: bv64;
  var $9$1: bv64;
  var $9$2: bv64;
  var $10$1: bv64;
  var $10$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $11$1: bv64;
  var $11$2: bv64;
  var $12$1: bv64;
  var $12$2: bv64;
  var $13$1: bv64;
  var $13$2: bv64;
  var $14$1: bv64;
  var $14$2: bv64;
  var $c41.0$1: bv64;
  var $c41.0$2: bv64;
  var $15$1: bv64;
  var $15$2: bv64;
  var $16$1: bv64;
  var $16$2: bv64;
  var $17$1: bv64;
  var $17$2: bv64;
  var $18$1: bv64;
  var $18$2: bv64;
  var $19$1: bv64;
  var $19$2: bv64;
  var $20$1: bv64;
  var $20$2: bv64;
  var $21$1: bv64;
  var $21$2: bv64;
  var $22$1: bv64;
  var $22$2: bv64;
  var $23$1: bv64;
  var $23$2: bv64;
  var $24$1: bv64;
  var $24$2: bv64;
  var $c42.0$1: bv64;
  var $c42.0$2: bv64;
  var $25$1: bv64;
  var $25$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bv64;
  var v21$2: bv64;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bv64;
  var v29$2: bv64;
  var v30$1: bv64;
  var v30$2: bv64;
  var v31$1: bv32;
  var v31$2: bv32;
  var v32$1: bv64;
  var v32$2: bv64;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: bool;
  var v34$2: bool;
  var v35$1: bool;
  var v35$2: bool;
  var v36$1: bool;
  var v36$2: bool;
  var v37$1: bool;
  var v37$2: bool;
  var v38$1: bool;
  var v38$2: bool;
  var v39$1: bool;
  var v39$2: bool;
  var v40$1: bool;
  var v40$2: bool;
  var v41$1: bool;
  var v41$2: bool;
  var v42$1: bv64;
  var v42$2: bv64;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var p6$1: bool;
  var p6$2: bool;
  var p7$1: bool;
  var p7$2: bool;
  var p8$1: bool;
  var p8$2: bool;
  var p9$1: bool;
  var p9$2: bool;
  var p10$1: bool;
  var p10$2: bool;
  var p11$1: bool;
  var p11$2: bool;
  var p12$1: bool;
  var p12$2: bool;
  var p13$1: bool;
  var p13$2: bool;
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var p17$1: bool;
  var p17$2: bool;
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var p42$1: bool;
  var p42$2: bool;
  var p43$1: bool;
  var p43$2: bool;
  var p44$1: bool;
  var p44$2: bool;
  var p45$1: bool;
  var p45$2: bool;
  var p46$1: bool;
  var p46$2: bool;
  var p47$1: bool;
  var p47$2: bool;
  var p48$1: bool;
  var p48$2: bool;
  var p49$1: bool;
  var p49$2: bool;
  var p50$1: bool;
  var p50$2: bool;
  var p51$1: bool;
  var p51$2: bool;
  var p52$1: bool;
  var p52$2: bool;
  var p53$1: bool;
  var p53$2: bool;
  var p54$1: bool;
  var p54$2: bool;
  var p55$1: bool;
  var p55$2: bool;
  var p56$1: bool;
  var p56$2: bool;
  var p57$1: bool;
  var p57$2: bool;
  var p58$1: bool;
  var p58$2: bool;
  var p59$1: bool;
  var p59$2: bool;
  var p60$1: bool;
  var p60$2: bool;
  var p61$1: bool;
  var p61$2: bool;
  var p62$1: bool;
  var p62$2: bool;
  var p63$1: bool;
  var p63$2: bool;
  var p64$1: bool;
  var p64$2: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$24: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$24: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$39: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$39: bool;
  var _READ_HAS_OCCURRED_$$A$ghost$$56: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56: bool;
  var _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56: bool;
  var _WRITE_HAS_OCCURRED_$$A$ghost$$90: bool;
  var _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$90: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := local_id_x$1;
    v2$2 := local_id_x$2;
    v3$1 := BV32_ZEXT64(v2$1);
    v3$2 := BV32_ZEXT64(v2$2);
    v4$1 := BV32_ZEXT64(local_id_y$1);
    v4$2 := BV32_ZEXT64(local_id_y$2);
    v5$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64), 0bv64);
    v5$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64), 0bv64);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    p1$1 := (if !v5$1 then !v5$1 else p1$1);
    p1$2 := (if !v5$2 then !v5$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64)), 8192bv64), 1bv64), 8192bv64)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64)), 8192bv64), 1bv64), 8192bv64)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64), 8192bv64) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64), 8192bv64) else $0$2);
    v6$1 := BV64_SGT(BV64_MUL(32bv64, v0$1), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(8192bv64, $0$1)), 8192bv64));
    v6$2 := BV64_SGT(BV64_MUL(32bv64, v0$2), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(8192bv64, $0$2)), 8192bv64));
    p2$1 := (if v6$1 then v6$1 else p2$1);
    p2$2 := (if v6$2 then v6$2 else p2$2);
    p3$1 := (if !v6$1 then !v6$1 else p3$1);
    p3$2 := (if !v6$2 then !v6$2 else p3$2);
    $1$1 := (if p2$1 then BV64_MUL(32bv64, v0$1) else $1$1);
    $1$2 := (if p2$2 then BV64_MUL(32bv64, v0$2) else $1$2);
    v7$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64), 0bv64) else v7$1);
    v7$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64), 0bv64) else v7$2);
    p4$1 := (if p3$1 && v7$1 then v7$1 else p4$1);
    p4$2 := (if p3$2 && v7$2 then v7$2 else p4$2);
    p5$1 := (if p3$1 && !v7$1 then !v7$1 else p5$1);
    p5$2 := (if p3$2 && !v7$2 then !v7$2 else p5$2);
    $2$1 := (if p4$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64)), 8192bv64), 1bv64), 8192bv64)) else $2$1);
    $2$2 := (if p4$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64)), 8192bv64), 1bv64), 8192bv64)) else $2$2);
    $2$1 := (if p5$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c0), 30bv64), 8192bv64) else $2$1);
    $2$2 := (if p5$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c0), 30bv64), 8192bv64) else $2$2);
    $1$1 := (if p3$1 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(8192bv64, $2$1)), 8192bv64) else $1$1);
    $1$2 := (if p3$2 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(8192bv64, $2$2)), 8192bv64) else $1$2);
    $c1.0$1 := $1$1;
    $c1.0$2 := $1$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p6$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), $1$1) )  && ( p6$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), $1$2) ) ,  ( p6$1 ==> BV64_SLE(0bv64, $c1.0$1) )  && ( p6$2 ==> BV64_SLE(0bv64, $c1.0$2) ) ,  ( p6$1 ==> BV64_SLE(0bv64, $3$1) )  && ( p6$2 ==> BV64_SLE(0bv64, $3$2) ) ,  ( p6$1 ==> BV64_SUB($c1.0$1, $1$1) == BV64_SUB($c1.0$2, $1$2) )  && ( p6$2 ==> BV64_SUB($c1.0$2, $1$2) == BV64_SUB($c1.0$1, $1$1) ) ,  ( p6$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, $1$1) == BV64_SUB($c1.0$2, $1$2) )  && ( p6$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, $1$2) == BV64_SUB($c1.0$1, $1$1) ) ,  ( p6$1 ==> BV64_SLE($c1.0$1, $1$1) )  && ( p6$2 ==> BV64_SLE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV64_SGE($c1.0$1, $1$1) )  && ( p6$2 ==> BV64_SGE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV64_ULE($c1.0$1, $1$1) )  && ( p6$2 ==> BV64_ULE($c1.0$2, $1$2) ) ,  ( p6$1 ==> BV64_UGE($c1.0$1, $1$1) )  && ( p6$2 ==> BV64_UGE($c1.0$2, $1$2) ) ,  (  BV64_SLE($c1.0$1, $3$1) ==> p6$1 )  && (  BV64_SLE($c1.0$2, $3$2) ==> p6$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p6$1 == p6$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2 ) ,  (  p6$1 && p6$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p6$1 && p6$2 ==> $3$1 == $3$2 ) ,  (  p6$1 && p6$2 ==> $4$1 == $4$2 ) ,  (  p6$1 && p6$2 ==> $5$1 == $5$2 ) ,  (  p6$1 && p6$2 ==> $6$1 == $6$2 ) ,  (  p6$1 && p6$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p6$1 && p6$2 ==> $7$1 == $7$2 ) ,  (  p6$1 && p6$2 ==> $8$1 == $8$2 ) ,  (  p6$1 && p6$2 ==> $9$1 == $9$2 ) ,  (  p6$1 && p6$2 ==> $10$1 == $10$2 ) ,  (  p6$1 && p6$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p6$1 && p6$2 ==> $11$1 == $11$2 ) ,  (  p6$1 && p6$2 ==> $12$1 == $12$2 ) ,  (  p6$1 && p6$2 ==> $13$1 == $13$2 ) ,  (  p6$1 && p6$2 ==> $14$1 == $14$2 ) ,  (  p6$1 && p6$2 ==> $c41.0$1 == $c41.0$2 ) ,  (  p6$1 && p6$2 ==> $15$1 == $15$2 ) ,  (  p6$1 && p6$2 ==> $16$1 == $16$2 ) ,  (  p6$1 && p6$2 ==> $17$1 == $17$2 ) ,  (  p6$1 && p6$2 ==> $18$1 == $18$2 ) ,  (  p6$1 && p6$2 ==> $19$1 == $19$2 ) ,  (  p6$1 && p6$2 ==> $20$1 == $20$2 ) ,  (  p6$1 && p6$2 ==> $21$1 == $21$2 ) ,  (  p6$1 && p6$2 ==> $22$1 == $22$2 ) ,  (  p6$1 && p6$2 ==> $23$1 == $23$2 ) ,  (  p6$1 && p6$2 ==> $24$1 == $24$2 ) ,  (  p6$1 && p6$2 ==> $c42.0$1 == $c42.0$2 ) ,  (  p6$1 && p6$2 ==> $25$1 == $25$2 ) ,  (  p6$1 && p6$2 ==> v8$1 == v8$2 ) ,  (  p6$1 && p6$2 ==> v9$1 == v9$2 ) ,  (  p6$1 && p6$2 ==> v10$1 == v10$2 ) ,  (  p6$1 && p6$2 ==> v11$1 == v11$2 ) ,  (  p6$1 && p6$2 ==> v12$1 == v12$2 ) ,  (  p6$1 && p6$2 ==> v13$1 == v13$2 ) ,  (  p6$1 && p6$2 ==> v14$1 == v14$2 ) ,  (  p6$1 && p6$2 ==> v15$1 == v15$2 ) ,  (  p6$1 && p6$2 ==> v16$1 == v16$2 ) ,  (  p6$1 && p6$2 ==> v17$1 == v17$2 ) ,  (  p6$1 && p6$2 ==> v18$1 == v18$2 ) ,  (  p6$1 && p6$2 ==> v19$1 == v19$2 ) ,  (  p6$1 && p6$2 ==> v20$1 == v20$2 ) ,  (  p6$1 && p6$2 ==> v21$1 == v21$2 ) ,  (  p6$1 && p6$2 ==> v22$1 == v22$2 ) ,  (  p6$1 && p6$2 ==> v23$1 == v23$2 ) ,  (  p6$1 && p6$2 ==> v24$1 == v24$2 ) ,  (  p6$1 && p6$2 ==> v25$1 == v25$2 ) ,  (  p6$1 && p6$2 ==> v26$1 == v26$2 ) ,  (  p6$1 && p6$2 ==> v27$1 == v27$2 ) ,  (  p6$1 && p6$2 ==> v28$1 == v28$2 ) ,  (  p6$1 && p6$2 ==> v29$1 == v29$2 ) ,  (  p6$1 && p6$2 ==> v30$1 == v30$2 ) ,  (  p6$1 && p6$2 ==> v31$1 == v31$2 ) ,  (  p6$1 && p6$2 ==> v32$1 == v32$2 ) ,  (  p6$1 && p6$2 ==> v33$1 == v33$2 ) ,  (  p6$1 && p6$2 ==> v34$1 == v34$2 ) ,  (  p6$1 && p6$2 ==> v35$1 == v35$2 ) ,  (  p6$1 && p6$2 ==> v36$1 == v36$2 ) ,  (  p6$1 && p6$2 ==> v37$1 == v37$2 ) ,  (  p6$1 && p6$2 ==> v38$1 == v38$2 ) ,  (  p6$1 && p6$2 ==> v39$1 == v39$2 ) ,  (  p6$1 && p6$2 ==> v40$1 == v40$2 ) ,  (  p6$1 && p6$2 ==> v41$1 == v41$2 ) ,  (  p6$1 && p6$2 ==> v42$1 == v42$2 ) ,  (  !_READ_HAS_OCCURRED_$$A ) ,  (  !_WRITE_HAS_OCCURRED_$$A ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !_READ_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($24$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($10$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 15} p6$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 16} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32)) == v3$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 17} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32), 16bv32)) == v4$1 then 1bv1 else 0bv1) != 0bv1;
    v8$1 := (if p6$1 then BV64_SLT(BV32_SEXT64(BV32_SUB($n, 1bv32)), $c0) else v8$1);
    v8$2 := (if p6$2 then BV64_SLT(BV32_SEXT64(BV32_SUB($n, 1bv32)), $c0) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p64$1 := false;
    p64$2 := false;
    p8$1 := (if p6$1 && v8$1 then v8$1 else p8$1);
    p8$2 := (if p6$2 && v8$2 then v8$2 else p8$2);
    p7$1 := (if p6$1 && !v8$1 then !v8$1 else p7$1);
    p7$2 := (if p6$2 && !v8$2 then !v8$2 else p7$2);
    $3$1 := (if p7$1 then $c0 else $3$1);
    $3$2 := (if p7$2 then $c0 else $3$2);
    $3$1 := (if p8$1 then BV32_SEXT64(BV32_SUB($n, 1bv32)) else $3$1);
    $3$2 := (if p8$2 then BV32_SEXT64(BV32_SUB($n, 1bv32)) else $3$2);
    v9$1 := (if p6$1 then BV64_SLE($c1.0$1, $3$1) else v9$1);
    v9$2 := (if p6$2 then BV64_SLE($c1.0$2, $3$2) else v9$2);
    p9$1 := (if p6$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p6$2 && v9$2 then v9$2 else p9$2);
    p6$1 := (if p6$1 && !v9$1 then v9$1 else p6$1);
    p6$2 := (if p6$2 && !v9$2 then v9$2 else p6$2);
    v10$1 := (if p9$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64), 0bv64) else v10$1);
    v10$2 := (if p9$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64), 0bv64) else v10$2);
    p11$1 := (if p9$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p9$2 && v10$2 then v10$2 else p11$2);
    p10$1 := (if p9$1 && !v10$1 then !v10$1 else p10$1);
    p10$2 := (if p9$2 && !v10$2 then !v10$2 else p10$2);
    $4$1 := (if p10$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64), 8192bv64) else $4$1);
    $4$2 := (if p10$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64), 8192bv64) else $4$2);
    $4$1 := (if p11$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64)), 8192bv64), 1bv64), 8192bv64)) else $4$1);
    $4$2 := (if p11$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64)), 8192bv64), 1bv64), 8192bv64)) else $4$2);
    v11$1 := (if p9$1 then BV64_SGT(BV64_MUL(32bv64, v1$1), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, $4$1)), 8192bv64)) else v11$1);
    v11$2 := (if p9$2 then BV64_SGT(BV64_MUL(32bv64, v1$2), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, $4$2)), 8192bv64)) else v11$2);
    p12$1 := (if p9$1 && v11$1 then v11$1 else p12$1);
    p12$2 := (if p9$2 && v11$2 then v11$2 else p12$2);
    p13$1 := (if p9$1 && !v11$1 then !v11$1 else p13$1);
    p13$2 := (if p9$2 && !v11$2 then !v11$2 else p13$2);
    $5$1 := (if p12$1 then BV64_MUL(32bv64, v1$1) else $5$1);
    $5$2 := (if p12$2 then BV64_MUL(32bv64, v1$2) else $5$2);
    v12$1 := (if p13$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64), 0bv64) else v12$1);
    v12$2 := (if p13$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64), 0bv64) else v12$2);
    p15$1 := (if p13$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p13$2 && v12$2 then v12$2 else p15$2);
    p14$1 := (if p13$1 && !v12$1 then !v12$1 else p14$1);
    p14$2 := (if p13$2 && !v12$2 then !v12$2 else p14$2);
    $6$1 := (if p14$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64), 8192bv64) else $6$1);
    $6$2 := (if p14$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64), 8192bv64) else $6$2);
    $6$1 := (if p15$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$1)), $c0), 31bv64)), 8192bv64), 1bv64), 8192bv64)) else $6$1);
    $6$2 := (if p15$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v1$2)), $c0), 31bv64)), 8192bv64), 1bv64), 8192bv64)) else $6$2);
    $5$1 := (if p13$1 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, $6$1)), 8192bv64) else $5$1);
    $5$2 := (if p13$2 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, $6$2)), 8192bv64) else $5$2);
    $c2.0$1 := (if p9$1 then $5$1 else $c2.0$1);
    $c2.0$2 := (if p9$2 then $5$2 else $c2.0$2);
    p16$1 := (if p9$1 then true else p16$1);
    p16$2 := (if p9$2 then true else p16$2);
    _READ_HAS_OCCURRED_$$A$ghost$$24 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$A$ghost$$24 := _WRITE_HAS_OCCURRED_$$A;
    _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24 := _READ_HAS_OCCURRED_$$kernel1.shared_A_0;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $24;

  $24:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p16$1 == p16$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p16$1 == p16$2 ) ,  (  p16$1 && p16$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p16$1 && p16$2 ==> $7$1 == $7$2 ) ,  (  p16$1 && p16$2 ==> $8$1 == $8$2 ) ,  (  p16$1 && p16$2 ==> $9$1 == $9$2 ) ,  (  p16$1 && p16$2 ==> $10$1 == $10$2 ) ,  (  p16$1 && p16$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p16$1 && p16$2 ==> $11$1 == $11$2 ) ,  (  p16$1 && p16$2 ==> $12$1 == $12$2 ) ,  (  p16$1 && p16$2 ==> $13$1 == $13$2 ) ,  (  p16$1 && p16$2 ==> $14$1 == $14$2 ) ,  (  p16$1 && p16$2 ==> $c41.0$1 == $c41.0$2 ) ,  (  p16$1 && p16$2 ==> $15$1 == $15$2 ) ,  (  p16$1 && p16$2 ==> $16$1 == $16$2 ) ,  (  p16$1 && p16$2 ==> $17$1 == $17$2 ) ,  (  p16$1 && p16$2 ==> $18$1 == $18$2 ) ,  (  p16$1 && p16$2 ==> $19$1 == $19$2 ) ,  (  p16$1 && p16$2 ==> $20$1 == $20$2 ) ,  (  p16$1 && p16$2 ==> $21$1 == $21$2 ) ,  (  p16$1 && p16$2 ==> $22$1 == $22$2 ) ,  (  p16$1 && p16$2 ==> $23$1 == $23$2 ) ,  (  p16$1 && p16$2 ==> $24$1 == $24$2 ) ,  (  p16$1 && p16$2 ==> $c42.0$1 == $c42.0$2 ) ,  (  p16$1 && p16$2 ==> $25$1 == $25$2 ) ,  (  p16$1 && p16$2 ==> v13$1 == v13$2 ) ,  (  p16$1 && p16$2 ==> v14$1 == v14$2 ) ,  (  p16$1 && p16$2 ==> v15$1 == v15$2 ) ,  (  p16$1 && p16$2 ==> v16$1 == v16$2 ) ,  (  p16$1 && p16$2 ==> v17$1 == v17$2 ) ,  (  p16$1 && p16$2 ==> v18$1 == v18$2 ) ,  (  p16$1 && p16$2 ==> v19$1 == v19$2 ) ,  (  p16$1 && p16$2 ==> v20$1 == v20$2 ) ,  (  p16$1 && p16$2 ==> v21$1 == v21$2 ) ,  (  p16$1 && p16$2 ==> v22$1 == v22$2 ) ,  (  p16$1 && p16$2 ==> v23$1 == v23$2 ) ,  (  p16$1 && p16$2 ==> v24$1 == v24$2 ) ,  (  p16$1 && p16$2 ==> v25$1 == v25$2 ) ,  (  p16$1 && p16$2 ==> v26$1 == v26$2 ) ,  (  p16$1 && p16$2 ==> v27$1 == v27$2 ) ,  (  p16$1 && p16$2 ==> v28$1 == v28$2 ) ,  (  p16$1 && p16$2 ==> v29$1 == v29$2 ) ,  (  p16$1 && p16$2 ==> v30$1 == v30$2 ) ,  (  p16$1 && p16$2 ==> v31$1 == v31$2 ) ,  (  p16$1 && p16$2 ==> v32$1 == v32$2 ) ,  (  p16$1 && p16$2 ==> v33$1 == v33$2 ) ,  (  p16$1 && p16$2 ==> v34$1 == v34$2 ) ,  (  p16$1 && p16$2 ==> v35$1 == v35$2 ) ,  (  p16$1 && p16$2 ==> v36$1 == v36$2 ) ,  (  p16$1 && p16$2 ==> v37$1 == v37$2 ) ,  (  p16$1 && p16$2 ==> v38$1 == v38$2 ) ,  (  p16$1 && p16$2 ==> v39$1 == v39$2 ) ,  (  p16$1 && p16$2 ==> v40$1 == v40$2 ) ,  (  p16$1 && p16$2 ==> v41$1 == v41$2 ) ,  (  p16$1 && p16$2 ==> v42$1 == v42$2 ) ,  (  !_READ_HAS_OCCURRED_$$A ) ,  (  !_WRITE_HAS_OCCURRED_$$A ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$24 == _READ_HAS_OCCURRED_$$A ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$24 == _WRITE_HAS_OCCURRED_$$A ) ,  (  !_READ_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  !_WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($24$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) || BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($10$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24 == _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$24 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p16"} {:dominator_predicate "p9"} true;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p16$1 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), $5$1) )  && ( p16$2 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), $5$2) ) ,  ( p16$1 ==> BV64_SLE(0bv64, $7$1) )  && ( p16$2 ==> BV64_SLE(0bv64, $7$2) ) ,  ( p16$1 ==> BV64_SLE(0bv64, $c2.0$1) )  && ( p16$2 ==> BV64_SLE(0bv64, $c2.0$2) ) ,  ( p16$1 ==> BV64_SLE(0bv64, $9$1) )  && ( p16$2 ==> BV64_SLE(0bv64, $9$2) ) ,  ( p16$1 ==> BV64_SUB($c2.0$1, $5$1) == BV64_SUB($c2.0$2, $5$2) )  && ( p16$2 ==> BV64_SUB($c2.0$2, $5$2) == BV64_SUB($c2.0$1, $5$1) ) ,  ( p16$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, $5$1) == BV64_SUB($c2.0$2, $5$2) )  && ( p16$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, $5$2) == BV64_SUB($c2.0$1, $5$1) ) ,  ( p16$1 ==> BV64_SLE($c2.0$1, $5$1) )  && ( p16$2 ==> BV64_SLE($c2.0$2, $5$2) ) ,  ( p16$1 ==> BV64_SGE($c2.0$1, $5$1) )  && ( p16$2 ==> BV64_SGE($c2.0$2, $5$2) ) ,  ( p16$1 ==> BV64_ULE($c2.0$1, $5$1) )  && ( p16$2 ==> BV64_ULE($c2.0$2, $5$2) ) ,  ( p16$1 ==> BV64_UGE($c2.0$1, $5$1) )  && ( p16$2 ==> BV64_UGE($c2.0$2, $5$2) ) ,  ( p16$1 ==> p16$1 ==> BV64_SLE($c1.0$1, $3$1) )  && ( p16$2 ==> p16$2 ==> BV64_SLE($c1.0$2, $3$2) ) ,  (  BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) ==> p16$1 )  && (  BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) ==> p16$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 31} p16$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 32} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32)) == v3$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 33} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32), 16bv32)) == v4$1 then 1bv1 else 0bv1) != 0bv1;
    v13$1 := (if p16$1 then BV64_SLT(BV64_SUB($c0, $c1.0$1), BV64_ADD($c1.0$1, 30bv64)) else v13$1);
    v13$2 := (if p16$2 then BV64_SLT(BV64_SUB($c0, $c1.0$2), BV64_ADD($c1.0$2, 30bv64)) else v13$2);
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p60$1 := false;
    p60$2 := false;
    p18$1 := (if p16$1 && v13$1 then v13$1 else p18$1);
    p18$2 := (if p16$2 && v13$2 then v13$2 else p18$2);
    p17$1 := (if p16$1 && !v13$1 then !v13$1 else p17$1);
    p17$2 := (if p16$2 && !v13$2 then !v13$2 else p17$2);
    $7$1 := (if p17$1 then BV64_ADD($c1.0$1, 30bv64) else $7$1);
    $7$2 := (if p17$2 then BV64_ADD($c1.0$2, 30bv64) else $7$2);
    $7$1 := (if p18$1 then BV64_SUB($c0, $c1.0$1) else $7$1);
    $7$2 := (if p18$2 then BV64_SUB($c0, $c1.0$2) else $7$2);
    v14$1 := (if p16$1 then BV64_SLT($7$1, BV64_SUB(BV64_SDIV(BV64_ADD($c0, 1bv64), 2bv64), 1bv64)) else v14$1);
    v14$2 := (if p16$2 then BV64_SLT($7$2, BV64_SUB(BV64_SDIV(BV64_ADD($c0, 1bv64), 2bv64), 1bv64)) else v14$2);
    p20$1 := (if p16$1 && v14$1 then v14$1 else p20$1);
    p20$2 := (if p16$2 && v14$2 then v14$2 else p20$2);
    p19$1 := (if p16$1 && !v14$1 then !v14$1 else p19$1);
    p19$2 := (if p16$2 && !v14$2 then !v14$2 else p19$2);
    $9$1 := (if p19$1 then BV64_SUB(BV64_SDIV(BV64_ADD($c0, 1bv64), 2bv64), 1bv64) else $9$1);
    $9$2 := (if p19$2 then BV64_SUB(BV64_SDIV(BV64_ADD($c0, 1bv64), 2bv64), 1bv64) else $9$2);
    v15$1 := (if p20$1 then BV64_SLT(BV64_SUB($c0, $c1.0$1), BV64_ADD($c1.0$1, 30bv64)) else v15$1);
    v15$2 := (if p20$2 then BV64_SLT(BV64_SUB($c0, $c1.0$2), BV64_ADD($c1.0$2, 30bv64)) else v15$2);
    p22$1 := (if p20$1 && v15$1 then v15$1 else p22$1);
    p22$2 := (if p20$2 && v15$2 then v15$2 else p22$2);
    p21$1 := (if p20$1 && !v15$1 then !v15$1 else p21$1);
    p21$2 := (if p20$2 && !v15$2 then !v15$2 else p21$2);
    $8$1 := (if p21$1 then BV64_ADD($c1.0$1, 30bv64) else $8$1);
    $8$2 := (if p21$2 then BV64_ADD($c1.0$2, 30bv64) else $8$2);
    $8$1 := (if p22$1 then BV64_SUB($c0, $c1.0$1) else $8$1);
    $8$2 := (if p22$2 then BV64_SUB($c0, $c1.0$2) else $8$2);
    $9$1 := (if p20$1 then $8$1 else $9$1);
    $9$2 := (if p20$2 then $8$2 else $9$2);
    v16$1 := (if p16$1 then BV64_SLE($c2.0$1, $9$1) else v16$1);
    v16$2 := (if p16$2 then BV64_SLE($c2.0$2, $9$2) else v16$2);
    p23$1 := (if p16$1 && v16$1 then v16$1 else p23$1);
    p23$2 := (if p16$2 && v16$2 then v16$2 else p23$2);
    p16$1 := (if p16$1 && !v16$1 then v16$1 else p16$1);
    p16$2 := (if p16$2 && !v16$2 then v16$2 else p16$2);
    v17$1 := (if p23$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v3$1, $c1.0$1), 1bv64)) else v17$1);
    v17$2 := (if p23$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v3$2, $c1.0$2), 1bv64)) else v17$2);
    p25$1 := (if p23$1 && v17$1 then v17$1 else p25$1);
    p25$2 := (if p23$2 && v17$2 then v17$2 else p25$2);
    v18$1 := (if p25$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(v4$1, $c0), $c2.0$1), 17bv64), 16bv64), $c0), $c2.0$1), 31bv64)) else v18$1);
    v18$2 := (if p25$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(v4$2, $c0), $c2.0$2), 17bv64), 16bv64), $c0), $c2.0$2), 31bv64)) else v18$2);
    p27$1 := (if p25$1 && v18$1 then v18$1 else p27$1);
    p27$2 := (if p25$2 && v18$2 then v18$2 else p27$2);
    p26$1 := (if p25$1 && !v18$1 then !v18$1 else p26$1);
    p26$2 := (if p25$2 && !v18$2 then !v18$2 else p26$2);
    $10$1 := (if p26$1 then BV64_ADD(BV64_ADD(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(v4$1, $c0), $c2.0$1), 17bv64), 16bv64), $c0), $c2.0$1), 31bv64) else $10$1);
    $10$2 := (if p26$2 then BV64_ADD(BV64_ADD(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(v4$2, $c0), $c2.0$2), 17bv64), 16bv64), $c0), $c2.0$2), 31bv64) else $10$2);
    $10$1 := (if p27$1 then v4$1 else $10$1);
    $10$2 := (if p27$2 then v4$2 else $10$2);
    $c4.0$1 := (if p25$1 then $10$1 else $c4.0$1);
    $c4.0$2 := (if p25$2 then $10$2 else $c4.0$2);
    p28$1 := (if p25$1 then true else p28$1);
    p28$2 := (if p25$2 then true else p28$2);
    _READ_HAS_OCCURRED_$$A$ghost$$39 := _READ_HAS_OCCURRED_$$A;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$39 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $39;

  $39:
    assume {:captureState "loop_head_state_4"} true;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p25$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$39 == _READ_HAS_OCCURRED_$$A ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($10$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p25$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$39 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p28"} {:dominator_predicate "p25"} true;
    assert p28$1 ==> p16$1;
    assert p28$2 ==> p16$2;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p28$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), $10$1) )  && ( p28$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), $10$2) ) ,  ( p28$1 ==> BV64_SLE(0bv64, $c4.0$1) )  && ( p28$2 ==> BV64_SLE(0bv64, $c4.0$2) ) ,  ( p28$1 ==> BV64_SLE(0bv64, $11$1) )  && ( p28$2 ==> BV64_SLE(0bv64, $11$2) ) ,  ( p28$1 ==> BV64_SLE($c4.0$1, $10$1) )  && ( p28$2 ==> BV64_SLE($c4.0$2, $10$2) ) ,  ( p28$1 ==> BV64_SGE($c4.0$1, $10$1) )  && ( p28$2 ==> BV64_SGE($c4.0$2, $10$2) ) ,  ( p28$1 ==> BV64_ULE($c4.0$1, $10$1) )  && ( p28$2 ==> BV64_ULE($c4.0$2, $10$2) ) ,  ( p28$1 ==> BV64_UGE($c4.0$1, $10$1) )  && ( p28$2 ==> BV64_UGE($c4.0$2, $10$2) ) ,  ( p28$1 ==> p28$1 ==> BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) )  && ( p28$2 ==> p28$2 ==> BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) ) ,  (  BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLE($c4.0$1, $11$1) ==> p28$1 )  && (  BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLE($c4.0$2, $11$2) ==> p28$2 ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLE($c2.0$1, $9$1) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c2.0$1, $9$1) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 48} p28$1 ==> true;
    v19$1 := (if p28$1 then BV64_SLT(31bv64, BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$1), 30bv64)) else v19$1);
    v19$2 := (if p28$2 then BV64_SLT(31bv64, BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$2), 30bv64)) else v19$2);
    p29$1 := false;
    p29$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p30$1 := (if p28$1 && v19$1 then v19$1 else p30$1);
    p30$2 := (if p28$2 && v19$2 then v19$2 else p30$2);
    p29$1 := (if p28$1 && !v19$1 then !v19$1 else p29$1);
    p29$2 := (if p28$2 && !v19$2 then !v19$2 else p29$2);
    $11$1 := (if p29$1 then BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$1), 30bv64) else $11$1);
    $11$2 := (if p29$2 then BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$2), 30bv64) else $11$2);
    $11$1 := (if p30$1 then 31bv64 else $11$1);
    $11$2 := (if p30$2 then 31bv64 else $11$2);
    v20$1 := (if p28$1 then BV64_SLE($c4.0$1, $11$1) else v20$1);
    v20$2 := (if p28$2 then BV64_SLE($c4.0$2, $11$2) else v20$2);
    p31$1 := (if p28$1 && v20$1 then v20$1 else p31$1);
    p31$2 := (if p28$2 && v20$2 then v20$2 else p31$2);
    p28$1 := (if p28$1 && !v20$1 then v20$1 else p28$1);
    p28$2 := (if p28$2 && !v20$2 then v20$2 else p28$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$A(p31$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c4.0$1), 31bv64))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c4.0$1), 31bv64))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$A(p31$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c4.0$2), 31bv64))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c4.0$2), 31bv64))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v21$1 := (if p31$1 then $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c4.0$1), 31bv64))[32:0]] else v21$1);
    v21$2 := (if p31$2 then $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c4.0$2), 31bv64))[32:0]] else v21$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$kernel1.shared_A_0(p31$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0]), v21$1, $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0(p31$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$kernel1.shared_A_0(p31$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0]), v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel1.shared_A_0"} true;
    $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])] := (if p31$1 then v21$1 else $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c4.0$1[32:0])]);
    $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])] := (if p31$2 then v21$2 else $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c4.0$2[32:0])]);
    $c4.0$1 := (if p31$1 then BV64_ADD($c4.0$1, 16bv64) else $c4.0$1);
    $c4.0$2 := (if p31$2 then BV64_ADD($c4.0$2, 16bv64) else $c4.0$2);
    p28$1 := (if p31$1 then true else p28$1);
    p28$2 := (if p31$2 then true else p28$2);
    goto $39.backedge, __partitioned_block_$39.tail_0;

  __partitioned_block_$39.tail_0:
    assume !p28$1 && !p28$2;
    goto __partitioned_block_$39.tail_1;

  __partitioned_block_$39.tail_1:
    call {:sourceloc_num 58} $bugle_barrier_duplicated_0(1bv1, 1bv1, p23$1, p23$2);
    v22$1 := (if p23$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1), 0bv64) else v22$1);
    v22$2 := (if p23$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2), 0bv64) else v22$2);
    p33$1 := (if p23$1 && v22$1 then v22$1 else p33$1);
    p33$2 := (if p23$2 && v22$2 then v22$2 else p33$2);
    p32$1 := (if p23$1 && !v22$1 then !v22$1 else p32$1);
    p32$2 := (if p23$2 && !v22$2 then !v22$2 else p32$2);
    $12$1 := (if p32$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1), 16bv64) else $12$1);
    $12$2 := (if p32$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2), 16bv64) else $12$2);
    $12$1 := (if p33$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1)), 16bv64), 1bv64), 16bv64)) else $12$1);
    $12$2 := (if p33$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2)), 16bv64), 1bv64), 16bv64)) else $12$2);
    v23$1 := (if p23$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $12$1)), 16bv64)) else v23$1);
    v23$2 := (if p23$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $12$2)), 16bv64)) else v23$2);
    p34$1 := (if p23$1 && v23$1 then v23$1 else p34$1);
    p34$2 := (if p23$2 && v23$2 then v23$2 else p34$2);
    p35$1 := (if p23$1 && !v23$1 then !v23$1 else p35$1);
    p35$2 := (if p23$2 && !v23$2 then !v23$2 else p35$2);
    $13$1 := (if p34$1 then v4$1 else $13$1);
    $13$2 := (if p34$2 then v4$2 else $13$2);
    v24$1 := (if p35$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1), 0bv64) else v24$1);
    v24$2 := (if p35$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2), 0bv64) else v24$2);
    p37$1 := (if p35$1 && v24$1 then v24$1 else p37$1);
    p37$2 := (if p35$2 && v24$2 then v24$2 else p37$2);
    p36$1 := (if p35$1 && !v24$1 then !v24$1 else p36$1);
    p36$2 := (if p35$2 && !v24$2 then !v24$2 else p36$2);
    $14$1 := (if p36$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1), 16bv64) else $14$1);
    $14$2 := (if p36$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2), 16bv64) else $14$2);
    $14$1 := (if p37$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$1), $c0), $c2.0$1)), 16bv64), 1bv64), 16bv64)) else $14$1);
    $14$2 := (if p37$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), v4$2), $c0), $c2.0$2)), 16bv64), 1bv64), 16bv64)) else $14$2);
    $13$1 := (if p35$1 then BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $14$1)), 16bv64) else $13$1);
    $13$2 := (if p35$2 then BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $14$2)), 16bv64) else $13$2);
    $c41.0$1 := (if p23$1 then $13$1 else $c41.0$1);
    $c41.0$2 := (if p23$2 then $13$2 else $c41.0$2);
    p38$1 := (if p23$1 then true else p38$1);
    p38$2 := (if p23$2 then true else p38$2);
    _READ_HAS_OCCURRED_$$A$ghost$$56 := _READ_HAS_OCCURRED_$$A;
    _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56 := _READ_HAS_OCCURRED_$$kernel1.shared_A_0;
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56 := _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $56;

  $56:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p23$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$56 == _READ_HAS_OCCURRED_$$A ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV32_ADD(BV64_ADD(0bv64, 31bv64)[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p23$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56 == _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  (  !p23$1 ==> _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$56 == _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p38"} {:dominator_predicate "p23"} true;
    assert p38$1 ==> p16$1;
    assert p38$2 ==> p16$2;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p38$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c41.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), $13$1) )  && ( p38$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c41.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), $13$2) ) ,  ( p38$1 ==> BV64_SLE(0bv64, $15$1) )  && ( p38$2 ==> BV64_SLE(0bv64, $15$2) ) ,  ( p38$1 ==> BV64_SLE(0bv64, $c41.0$1) )  && ( p38$2 ==> BV64_SLE(0bv64, $c41.0$2) ) ,  ( p38$1 ==> BV64_SLE(0bv64, $17$1) )  && ( p38$2 ==> BV64_SLE(0bv64, $17$2) ) ,  ( p38$1 ==> BV64_SLE($c41.0$1, $13$1) )  && ( p38$2 ==> BV64_SLE($c41.0$2, $13$2) ) ,  ( p38$1 ==> BV64_SGE($c41.0$1, $13$1) )  && ( p38$2 ==> BV64_SGE($c41.0$2, $13$2) ) ,  ( p38$1 ==> BV64_ULE($c41.0$1, $13$1) )  && ( p38$2 ==> BV64_ULE($c41.0$2, $13$2) ) ,  ( p38$1 ==> BV64_UGE($c41.0$1, $13$1) )  && ( p38$2 ==> BV64_UGE($c41.0$2, $13$2) ) ,  ( p38$1 ==> p38$1 ==> BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) )  && ( p38$2 ==> p38$2 ==> BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) ) ,  (  BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) && BV64_SLE($c41.0$1, $17$1) ==> p38$1 )  && (  BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) && BV64_SLE($c41.0$2, $17$2) ==> p38$2 ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$A ==> BV64_SLE($c2.0$1, $9$1) ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c2.0$1, $9$1) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c2.0$1, $9$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 68} p38$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 69} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32)) == v3$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 70} {:thread 1} (if BV32_AND(BV1_ZEXT32((if p23$1 then 1bv1 else 0bv1)), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 then 1bv1 else 0bv1))) != 0bv32 ==> BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32), 16bv32)) == BV64_ADD(BV64_SUB(0bv64, BV64_ADD(v4$1, 16bv64)), 31bv64) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 71} {:thread 1} (if _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32)) == v3$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 72} {:thread 1} (if _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32), 16bv32)) == BV64_ADD(BV64_SUB(0bv64, BV64_ADD(v4$1, 16bv64)), 31bv64) then 1bv1 else 0bv1) != 0bv1;
    v25$1 := (if p38$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV64_ADD(v3$1, $c1.0$1), $c2.0$1), 1bv64)) else v25$1);
    v25$2 := (if p38$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV64_ADD(v3$2, $c1.0$2), $c2.0$2), 1bv64)) else v25$2);
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p42$1 := false;
    p42$2 := false;
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p46$1 := false;
    p46$2 := false;
    p47$1 := false;
    p47$2 := false;
    p48$1 := false;
    p48$2 := false;
    p49$1 := false;
    p49$2 := false;
    p50$1 := false;
    p50$2 := false;
    p51$1 := false;
    p51$2 := false;
    p52$1 := false;
    p52$2 := false;
    p53$1 := false;
    p53$2 := false;
    p54$1 := false;
    p54$2 := false;
    p55$1 := false;
    p55$2 := false;
    p56$1 := false;
    p56$2 := false;
    p57$1 := false;
    p57$2 := false;
    p58$1 := false;
    p58$2 := false;
    p59$1 := false;
    p59$2 := false;
    p40$1 := (if p38$1 && v25$1 then v25$1 else p40$1);
    p40$2 := (if p38$2 && v25$2 then v25$2 else p40$2);
    p39$1 := (if p38$1 && !v25$1 then !v25$1 else p39$1);
    p39$2 := (if p38$2 && !v25$2 then !v25$2 else p39$2);
    $15$1 := (if p39$1 then BV64_SUB(BV64_SUB(BV64_ADD(v3$1, $c1.0$1), $c2.0$1), 1bv64) else $15$1);
    $15$2 := (if p39$2 then BV64_SUB(BV64_SUB(BV64_ADD(v3$2, $c1.0$2), $c2.0$2), 1bv64) else $15$2);
    $15$1 := (if p40$1 then 31bv64 else $15$1);
    $15$2 := (if p40$2 then 31bv64 else $15$2);
    v26$1 := (if p38$1 then BV64_SLT($15$1, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v3$1), $c0), $c1.0$1), $c2.0$1)) else v26$1);
    v26$2 := (if p38$2 then BV64_SLT($15$2, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v3$2), $c0), $c1.0$2), $c2.0$2)) else v26$2);
    p42$1 := (if p38$1 && v26$1 then v26$1 else p42$1);
    p42$2 := (if p38$2 && v26$2 then v26$2 else p42$2);
    p41$1 := (if p38$1 && !v26$1 then !v26$1 else p41$1);
    p41$2 := (if p38$2 && !v26$2 then !v26$2 else p41$2);
    $17$1 := (if p41$1 then BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v3$1), $c0), $c1.0$1), $c2.0$1) else $17$1);
    $17$2 := (if p41$2 then BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v3$2), $c0), $c1.0$2), $c2.0$2) else $17$2);
    v27$1 := (if p42$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV64_ADD(v3$1, $c1.0$1), $c2.0$1), 1bv64)) else v27$1);
    v27$2 := (if p42$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV64_ADD(v3$2, $c1.0$2), $c2.0$2), 1bv64)) else v27$2);
    p44$1 := (if p42$1 && v27$1 then v27$1 else p44$1);
    p44$2 := (if p42$2 && v27$2 then v27$2 else p44$2);
    p43$1 := (if p42$1 && !v27$1 then !v27$1 else p43$1);
    p43$2 := (if p42$2 && !v27$2 then !v27$2 else p43$2);
    $16$1 := (if p43$1 then BV64_SUB(BV64_SUB(BV64_ADD(v3$1, $c1.0$1), $c2.0$1), 1bv64) else $16$1);
    $16$2 := (if p43$2 then BV64_SUB(BV64_SUB(BV64_ADD(v3$2, $c1.0$2), $c2.0$2), 1bv64) else $16$2);
    $16$1 := (if p44$1 then 31bv64 else $16$1);
    $16$2 := (if p44$2 then 31bv64 else $16$2);
    $17$1 := (if p42$1 then $16$1 else $17$1);
    $17$2 := (if p42$2 then $16$2 else $17$2);
    v28$1 := (if p38$1 then BV64_SLE($c41.0$1, $17$1) else v28$1);
    v28$2 := (if p38$2 then BV64_SLE($c41.0$2, $17$2) else v28$2);
    p45$1 := (if p38$1 && v28$1 then v28$1 else p45$1);
    p45$2 := (if p38$2 && v28$2 then v28$2 else p45$2);
    p38$1 := (if p38$1 && !v28$1 then v28$1 else p38$1);
    p38$2 := (if p38$2 && !v28$2 then v28$2 else p38$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_READ_$$A(p45$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c41.0$1))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c41.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 83} _CHECK_READ_$$A(p45$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c41.0$2))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c41.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v29$1 := (if p45$1 then $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c41.0$1))[32:0]] else v29$1);
    v29$2 := (if p45$2 then $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c41.0$2))[32:0]] else v29$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$A(p45$1, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c41.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$1), $c41.0$1))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c41.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$1), $c41.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$A(p45$2, BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c41.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$2), $c41.0$2))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c41.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$2), $c41.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v30$1 := (if p45$1 then $$A[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$1, $c41.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$1), $c41.0$1))[32:0]] else v30$1);
    v30$2 := (if p45$2 then $$A[BV64_ADD(BV64_MUL(BV64_ADD($c2.0$2, $c41.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_SUB($c0, $c2.0$2), $c41.0$2))[32:0]] else v30$2);
    v31$1 := (if p45$1 then BV64_ADD(BV64_SUB(0bv64, $c41.0$1), 31bv64)[32:0] else v31$1);
    v31$2 := (if p45$2 then BV64_ADD(BV64_SUB(0bv64, $c41.0$2), 31bv64)[32:0] else v31$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_READ_$$kernel1.shared_A_0(p45$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1), $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 85} _CHECK_READ_$$kernel1.shared_A_0(p45$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2), $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A_0"} true;
    v32$1 := (if p45$1 then $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1)] else v32$1);
    v32$2 := (if p45$2 then $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2)] else v32$2);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$kernel1.shared_A_0(p45$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1), FSUB64(v32$1, FMUL64(v29$1, v30$1)), $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0(p45$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$kernel1.shared_A_0(p45$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2), FSUB64(v32$2, FMUL64(v29$2, v30$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel1.shared_A_0"} true;
    $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1)] := (if p45$1 then FSUB64(v32$1, FMUL64(v29$1, v30$1)) else $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), v31$1)]);
    $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2)] := (if p45$2 then FSUB64(v32$2, FMUL64(v29$2, v30$2)) else $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), v31$2)]);
    $c41.0$1 := (if p45$1 then BV64_ADD($c41.0$1, 16bv64) else $c41.0$1);
    $c41.0$2 := (if p45$2 then BV64_ADD($c41.0$2, 16bv64) else $c41.0$2);
    p38$1 := (if p45$1 then true else p38$1);
    p38$2 := (if p45$2 then true else p38$2);
    goto $56.backedge, __partitioned_block_$56.tail_0;

  __partitioned_block_$56.tail_0:
    assume !p38$1 && !p38$2;
    goto __partitioned_block_$56.tail_1;

  __partitioned_block_$56.tail_1:
    call {:sourceloc_num 89} $bugle_barrier_duplicated_1(1bv1, 1bv1, p23$1, p23$2);
    v33$1 := (if p23$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 0bv64) else v33$1);
    v33$2 := (if p23$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 0bv64) else v33$2);
    p47$1 := (if p23$1 && v33$1 then v33$1 else p47$1);
    p47$2 := (if p23$2 && v33$2 then v33$2 else p47$2);
    p46$1 := (if p23$1 && !v33$1 then !v33$1 else p46$1);
    p46$2 := (if p23$2 && !v33$2 then !v33$2 else p46$2);
    $18$1 := (if p46$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 16bv64) else $18$1);
    $18$2 := (if p46$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 16bv64) else $18$2);
    $18$1 := (if p47$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64)), 16bv64), 1bv64), 16bv64)) else $18$1);
    $18$2 := (if p47$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64)), 16bv64), 1bv64), 16bv64)) else $18$2);
    v34$1 := (if p23$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $18$1)), 48bv64)) else v34$1);
    v34$2 := (if p23$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $18$2)), 48bv64)) else v34$2);
    p48$1 := (if p23$1 && v34$1 then v34$1 else p48$1);
    p48$2 := (if p23$2 && v34$2 then v34$2 else p48$2);
    p49$1 := (if p23$1 && !v34$1 then !v34$1 else p49$1);
    p49$2 := (if p23$2 && !v34$2 then !v34$2 else p49$2);
    $19$1 := (if p48$1 then v4$1 else $19$1);
    $19$2 := (if p48$2 then v4$2 else $19$2);
    v35$1 := (if p49$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 0bv64) else v35$1);
    v35$2 := (if p49$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 0bv64) else v35$2);
    p51$1 := (if p49$1 && v35$1 then v35$1 else p51$1);
    p51$2 := (if p49$2 && v35$2 then v35$2 else p51$2);
    p50$1 := (if p49$1 && !v35$1 then !v35$1 else p50$1);
    p50$2 := (if p49$2 && !v35$2 then !v35$2 else p50$2);
    $20$1 := (if p50$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 16bv64) else $20$1);
    $20$2 := (if p50$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 16bv64) else $20$2);
    $20$1 := (if p51$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64)), 16bv64), 1bv64), 16bv64)) else $20$1);
    $20$2 := (if p51$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64)), 16bv64), 1bv64), 16bv64)) else $20$2);
    $19$1 := (if p49$1 then BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $20$1)), 48bv64) else $19$1);
    $19$2 := (if p49$2 then BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $20$2)), 48bv64) else $19$2);
    v36$1 := (if p23$1 then BV64_SGT($19$1, BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(v3$1, v4$1), $c1.0$1), $c2.0$1), 16bv64), 16bv64), v3$1), $c1.0$1), $c2.0$1), 32bv64)) else v36$1);
    v36$2 := (if p23$2 then BV64_SGT($19$2, BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(v3$2, v4$2), $c1.0$2), $c2.0$2), 16bv64), 16bv64), v3$2), $c1.0$2), $c2.0$2), 32bv64)) else v36$2);
    p53$1 := (if p23$1 && v36$1 then v36$1 else p53$1);
    p53$2 := (if p23$2 && v36$2 then v36$2 else p53$2);
    p52$1 := (if p23$1 && !v36$1 then !v36$1 else p52$1);
    p52$2 := (if p23$2 && !v36$2 then !v36$2 else p52$2);
    $24$1 := (if p52$1 then BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(v3$1, v4$1), $c1.0$1), $c2.0$1), 16bv64), 16bv64), v3$1), $c1.0$1), $c2.0$1), 32bv64) else $24$1);
    $24$2 := (if p52$2 then BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(v3$2, v4$2), $c1.0$2), $c2.0$2), 16bv64), 16bv64), v3$2), $c1.0$2), $c2.0$2), 32bv64) else $24$2);
    v37$1 := (if p53$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 0bv64) else v37$1);
    v37$2 := (if p53$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 0bv64) else v37$2);
    p55$1 := (if p53$1 && v37$1 then v37$1 else p55$1);
    p55$2 := (if p53$2 && v37$2 then v37$2 else p55$2);
    p54$1 := (if p53$1 && !v37$1 then !v37$1 else p54$1);
    p54$2 := (if p53$2 && !v37$2 then !v37$2 else p54$2);
    $21$1 := (if p54$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 16bv64) else $21$1);
    $21$2 := (if p54$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 16bv64) else $21$2);
    $21$1 := (if p55$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64)), 16bv64), 1bv64), 16bv64)) else $21$1);
    $21$2 := (if p55$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64)), 16bv64), 1bv64), 16bv64)) else $21$2);
    v38$1 := (if p53$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $21$1)), 48bv64)) else v38$1);
    v38$2 := (if p53$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $21$2)), 48bv64)) else v38$2);
    p56$1 := (if p53$1 && v38$1 then v38$1 else p56$1);
    p56$2 := (if p53$2 && v38$2 then v38$2 else p56$2);
    p57$1 := (if p53$1 && !v38$1 then !v38$1 else p57$1);
    p57$2 := (if p53$2 && !v38$2 then !v38$2 else p57$2);
    $22$1 := (if p56$1 then v4$1 else $22$1);
    $22$2 := (if p56$2 then v4$2 else $22$2);
    v39$1 := (if p57$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 0bv64) else v39$1);
    v39$2 := (if p57$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 0bv64) else v39$2);
    p59$1 := (if p57$1 && v39$1 then v39$1 else p59$1);
    p59$2 := (if p57$2 && v39$2 then v39$2 else p59$2);
    p58$1 := (if p57$1 && !v39$1 then !v39$1 else p58$1);
    p58$2 := (if p57$2 && !v39$2 then !v39$2 else p58$2);
    $23$1 := (if p58$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64), 16bv64) else $23$1);
    $23$2 := (if p58$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64), 16bv64) else $23$2);
    $23$1 := (if p59$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$1, v4$1), $c0), $c1.0$1), $c2.0$1), 2bv64)), 16bv64), 1bv64), 16bv64)) else $23$1);
    $23$2 := (if p59$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(v3$2, v4$2), $c0), $c1.0$2), $c2.0$2), 2bv64)), 16bv64), 1bv64), 16bv64)) else $23$2);
    $22$1 := (if p57$1 then BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $23$1)), 48bv64) else $22$1);
    $22$2 := (if p57$2 then BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $23$2)), 48bv64) else $22$2);
    $24$1 := (if p53$1 then $22$1 else $24$1);
    $24$2 := (if p53$2 then $22$2 else $24$2);
    $c42.0$1 := (if p23$1 then $24$1 else $c42.0$1);
    $c42.0$2 := (if p23$2 then $24$2 else $c42.0$2);
    p60$1 := (if p23$1 then true else p60$1);
    p60$2 := (if p23$2 then true else p60$2);
    _WRITE_HAS_OCCURRED_$$A$ghost$$90 := _WRITE_HAS_OCCURRED_$$A;
    _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$90 := _READ_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $90;

  $90:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) ) ,  (  !p23$1 ==> _WRITE_HAS_OCCURRED_$$A$ghost$$90 == _WRITE_HAS_OCCURRED_$$A ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD($24$1[32:0], BV32_MUL(local_id_x$1, 32bv32))) ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32) ) ,  (  !p23$1 ==> _READ_HAS_OCCURRED_$$kernel1.shared_A_0$ghost$$90 == _READ_HAS_OCCURRED_$$kernel1.shared_A_0 )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p60"} {:dominator_predicate "p23"} true;
    assert p60$1 ==> p16$1;
    assert p60$2 ==> p16$2;
    assert p16$1 ==> p6$1;
    assert p16$2 ==> p6$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p60$1 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c42.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), $24$1) )  && ( p60$2 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c42.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), $24$2) ) ,  ( p60$1 ==> BV64_SLE(0bv64, $c42.0$1) )  && ( p60$2 ==> BV64_SLE(0bv64, $c42.0$2) ) ,  ( p60$1 ==> BV64_SLE(0bv64, $25$1) )  && ( p60$2 ==> BV64_SLE(0bv64, $25$2) ) ,  ( p60$1 ==> BV64_SLE($c42.0$1, $24$1) )  && ( p60$2 ==> BV64_SLE($c42.0$2, $24$2) ) ,  ( p60$1 ==> BV64_SGE($c42.0$1, $24$1) )  && ( p60$2 ==> BV64_SGE($c42.0$2, $24$2) ) ,  ( p60$1 ==> BV64_ULE($c42.0$1, $24$1) )  && ( p60$2 ==> BV64_ULE($c42.0$2, $24$2) ) ,  ( p60$1 ==> BV64_UGE($c42.0$1, $24$1) )  && ( p60$2 ==> BV64_UGE($c42.0$2, $24$2) ) ,  ( p60$1 ==> p60$1 ==> BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) )  && ( p60$2 ==> p60$2 ==> BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) ) ,  (  BV64_SLE($c1.0$1, $3$1) && BV64_SLE($c2.0$1, $9$1) && BV64_SLE($c42.0$1, $25$1) ==> p60$1 )  && (  BV64_SLE($c1.0$2, $3$2) && BV64_SLE($c2.0$2, $9$2) && BV64_SLE($c42.0$2, $25$2) ==> p60$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV64_SLE($c2.0$1, $9$1) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLE($c1.0$1, $3$1) ) ,  (  _WRITE_HAS_OCCURRED_$$A ==> BV64_SLE($c2.0$1, $9$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 8191bv64), 8192bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 31bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 29bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 31bv32)), BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 8160bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(2bv64, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64)), BV32_ZEXT64(BV32_MUL(2bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)))), BV64_ADD($c0, 16321bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_y$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), BV32_ZEXT64(local_id_x$1)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 30bv32)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_MUL(18446744073709551584bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 8160bv64), 8192bv64), 8160bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(15bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), $c0), 15bv64), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 111} p60$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 112} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32)) == v3$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 113} {:thread 1} (if _READ_HAS_OCCURRED_$$kernel1.shared_A_0 ==> BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), 32bv32), 16bv32)) == v4$1 then 1bv1 else 0bv1) != 0bv1;
    v40$1 := (if p60$1 then BV64_SLT(31bv64, BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$1), 30bv64)) else v40$1);
    v40$2 := (if p60$2 then BV64_SLT(31bv64, BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$2), 30bv64)) else v40$2);
    p61$1 := false;
    p61$2 := false;
    p62$1 := false;
    p62$2 := false;
    p63$1 := false;
    p63$2 := false;
    p62$1 := (if p60$1 && v40$1 then v40$1 else p62$1);
    p62$2 := (if p60$2 && v40$2 then v40$2 else p62$2);
    p61$1 := (if p60$1 && !v40$1 then !v40$1 else p61$1);
    p61$2 := (if p60$2 && !v40$2 then !v40$2 else p61$2);
    $25$1 := (if p61$1 then BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$1), 30bv64) else $25$1);
    $25$2 := (if p61$2 then BV64_ADD(BV64_ADD(BV64_SUB(BV32_SEXT64($n), $c0), $c2.0$2), 30bv64) else $25$2);
    $25$1 := (if p62$1 then 31bv64 else $25$1);
    $25$2 := (if p62$2 then 31bv64 else $25$2);
    v41$1 := (if p60$1 then BV64_SLE($c42.0$1, $25$1) else v41$1);
    v41$2 := (if p60$2 then BV64_SLE($c42.0$2, $25$2) else v41$2);
    p63$1 := (if p60$1 && v41$1 then v41$1 else p63$1);
    p63$2 := (if p60$2 && v41$2 then v41$2 else p63$2);
    p60$1 := (if p60$1 && !v41$1 then v41$1 else p60$1);
    p60$2 := (if p60$2 && !v41$2 then v41$2 else p60$2);
    call {:sourceloc} {:sourceloc_num 118} _LOG_READ_$$kernel1.shared_A_0(p63$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c42.0$1[32:0]), $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c42.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 118} _CHECK_READ_$$kernel1.shared_A_0(p63$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c42.0$2[32:0]), $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c42.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel1.shared_A_0"} true;
    v42$1 := (if p63$1 then $$kernel1.shared_A_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c42.0$1[32:0])] else v42$1);
    v42$2 := (if p63$2 then $$kernel1.shared_A_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c42.0$2[32:0])] else v42$2);
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$A(p63$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c42.0$1), 31bv64))[32:0], v42$1, $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c42.0$1), 31bv64))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(p63$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c42.0$2), 31bv64))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$A(p63$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c42.0$2), 31bv64))[32:0], v42$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$A"} true;
    $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c42.0$1), 31bv64))[32:0]] := (if p63$1 then v42$1 else $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$1), $c42.0$1), 31bv64))[32:0]]);
    $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c42.0$2), 31bv64))[32:0]] := (if p63$2 then v42$2 else $$A[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD(BV64_SUB($c0, $c2.0$2), $c42.0$2), 31bv64))[32:0]]);
    $c42.0$1 := (if p63$1 then BV64_ADD($c42.0$1, 16bv64) else $c42.0$1);
    $c42.0$2 := (if p63$2 then BV64_ADD($c42.0$2, 16bv64) else $c42.0$2);
    p60$1 := (if p63$1 then true else p60$1);
    p60$2 := (if p63$2 then true else p60$2);
    goto $90.backedge, $90.tail;

  $90.tail:
    assume !p60$1 && !p60$2;
    $c2.0$1 := (if p23$1 then BV64_ADD($c2.0$1, 8192bv64) else $c2.0$1);
    $c2.0$2 := (if p23$2 then BV64_ADD($c2.0$2, 8192bv64) else $c2.0$2);
    p16$1 := (if p23$1 then true else p16$1);
    p16$2 := (if p23$2 then true else p16$2);
    goto $24.backedge, $24.tail;

  $24.tail:
    assume !p16$1 && !p16$2;
    $c1.0$1 := (if p9$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p9$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p6$1 && !p6$2;
    return;

  $10.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $10;

  $24.backedge:
    assume {:backedge} p16$1 || p16$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $24;

  $90.backedge:
    assume {:backedge} p60$1 || p60$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $90;

  $56.backedge:
    assume {:backedge} p38$1 || p38$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $56;

  $39.backedge:
    assume {:backedge} p28$1 || p28$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $39;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 2bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 2bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A_0, $$A, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel1.shared_A_0, $$A, _TRACKING;



function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;















function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;



function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;





























































































































const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$kernel1.shared_A_0: bv64;

procedure {:inline 1} _LOG_READ_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel1.shared_A_0;



implementation {:inline 1} _LOG_READ_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel1.shared_A_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A_0 == _value then true else _READ_HAS_OCCURRED_$$kernel1.shared_A_0);
    return;
}



procedure _CHECK_READ_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0, _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0;



implementation {:inline 1} _LOG_WRITE_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A_0 == _value then true else _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0);
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A_0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0);
    return;
}



procedure _CHECK_WRITE_$$kernel1.shared_A_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel1.shared_A_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel1.shared_A_0(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0;



implementation {:inline 1} _LOG_ATOMIC_$$kernel1.shared_A_0(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0);
    return;
}



procedure _CHECK_ATOMIC_$$kernel1.shared_A_0(_P: bool, _offset: bv32);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_0"} {:array "$$kernel1.shared_A_0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0 := (if _P && _WRITE_HAS_OCCURRED_$$kernel1.shared_A_0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel1.shared_A_0);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$A;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$A;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel1.shared_A_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel1.shared_A_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$A;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$A;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel1.shared_A_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;































































































































































































































































































function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;






























