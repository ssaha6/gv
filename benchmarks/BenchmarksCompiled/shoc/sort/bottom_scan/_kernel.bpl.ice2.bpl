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
 b0158: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

axiom {:array_info "$$isums"} {:global} {:elem_width 32} {:source_name "isums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$isums: bool;

var {:source_name "out"} {:global} $$out: [bv32]bv32;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

var {:source_name "lmem"} {:group_shared} $$lmem: [bv1][bv32]bv32;

axiom {:array_info "$$lmem"} {:group_shared} {:elem_width 32} {:source_name "lmem"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lmem: bool;

var {:source_name "histogram"} $$histogram$1: [bv32]bv32;

var {:source_name "histogram"} $$histogram$2: [bv32]bv32;

axiom {:array_info "$$histogram"} {:elem_width 32} {:source_name "histogram"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:source_name "l_block_counts"} {:group_shared} $$bottom_scan.l_block_counts: [bv1][bv32]bv32;

axiom {:array_info "$$bottom_scan.l_block_counts"} {:group_shared} {:elem_width 32} {:source_name "l_block_counts"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts: bool;

var {:source_name "l_scanned_seeds"} {:group_shared} $$bottom_scan.l_scanned_seeds: [bv1][bv32]bv32;

axiom {:array_info "$$bottom_scan.l_scanned_seeds"} {:group_shared} {:elem_width 32} {:source_name "l_scanned_seeds"} {:source_elem_width 32} {:source_dimensions "16"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "bottom_scan"} {:kernel} $bottom_scan($n: bv32, $shift: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 262144bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$isums && !_WRITE_HAS_OCCURRED_$$isums && !_ATOMIC_HAS_OCCURRED_$$isums;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
  requires !_READ_HAS_OCCURRED_$$lmem && !_WRITE_HAS_OCCURRED_$$lmem && !_ATOMIC_HAS_OCCURRED_$$lmem;
  requires !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts && !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts && !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
  requires !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
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
  modifies $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$lmem, _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts, _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds, $$out, _TRACKING, _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _TRACKING, _READ_HAS_OCCURRED_$$lmem, _TRACKING, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds, _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts, _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _TRACKING, _TRACKING;



implementation {:source_name "bottom_scan"} {:kernel} $bottom_scan($n: bv32, $shift: bv32)
{
  var $0$1: bv32;
  var $0$2: bv32;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $window.0$1: bv32;
  var $window.0$2: bv32;
  var $val_4.0$1: bv128;
  var $val_4.0$2: bv128;
  var $key_4.0$1: bv128;
  var $key_4.0$2: bv128;
  var $q.0$1: bv32;
  var $q.0$2: bv32;
  var $val_4.1$1: bv128;
  var $val_4.1$2: bv128;
  var $key_4.1$1: bv128;
  var $key_4.1$2: bv128;
  var $digit.0$1: bv32;
  var $digit.0$2: bv32;
  var $i.i.0$1: bv32;
  var $i.i.0$2: bv32;
  var $q1.0$1: bv32;
  var $q1.0$2: bv32;
  var v0: bv32;
  var v1: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv128;
  var v6$2: bv128;
  var v7$1: bv128;
  var v7$2: bv128;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv32;
  var v32$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v51$1: bv32;
  var v51$2: bv32;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: bv32;
  var v54$2: bv32;
  var v55$1: bv32;
  var v55$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0: bool;
  var _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0: bool;
  var _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0: bool;
  var _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0: bool;
  var _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23: bool;
  var _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23: bool;


  __partitioned_block_$0_0:
    $$histogram$1[0bv32] := 0bv32;
    $$histogram$2[0bv32] := 0bv32;
    $$histogram$1[1bv32] := 0bv32;
    $$histogram$2[1bv32] := 0bv32;
    $$histogram$1[2bv32] := 0bv32;
    $$histogram$2[2bv32] := 0bv32;
    $$histogram$1[3bv32] := 0bv32;
    $$histogram$2[3bv32] := 0bv32;
    $$histogram$1[4bv32] := 0bv32;
    $$histogram$2[4bv32] := 0bv32;
    $$histogram$1[5bv32] := 0bv32;
    $$histogram$2[5bv32] := 0bv32;
    $$histogram$1[6bv32] := 0bv32;
    $$histogram$2[6bv32] := 0bv32;
    $$histogram$1[7bv32] := 0bv32;
    $$histogram$2[7bv32] := 0bv32;
    $$histogram$1[8bv32] := 0bv32;
    $$histogram$2[8bv32] := 0bv32;
    $$histogram$1[9bv32] := 0bv32;
    $$histogram$2[9bv32] := 0bv32;
    $$histogram$1[10bv32] := 0bv32;
    $$histogram$2[10bv32] := 0bv32;
    $$histogram$1[11bv32] := 0bv32;
    $$histogram$2[11bv32] := 0bv32;
    $$histogram$1[12bv32] := 0bv32;
    $$histogram$2[12bv32] := 0bv32;
    $$histogram$1[13bv32] := 0bv32;
    $$histogram$2[13bv32] := 0bv32;
    $$histogram$1[14bv32] := 0bv32;
    $$histogram$2[14bv32] := 0bv32;
    $$histogram$1[15bv32] := 0bv32;
    $$histogram$2[15bv32] := 0bv32;
    v0 := BV32_SDIV($n, 4bv32);
    v1 := BV32_UDIV(v0, num_groups_x);
    v2$1 := BV32_MUL(group_id_x$1, v1);
    v2$2 := BV32_MUL(group_id_x$2, v1);
    v3$1 := group_id_x$1 == BV32_SUB(num_groups_x, 1bv32);
    v3$2 := group_id_x$2 == BV32_SUB(num_groups_x, 1bv32);
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
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    p1$1 := (if !v3$1 then !v3$1 else p1$1);
    p1$2 := (if !v3$2 then !v3$2 else p1$2);
    $0$1 := (if p0$1 then v0 else $0$1);
    $0$2 := (if p0$2 then v0 else $0$2);
    $0$1 := (if p1$1 then BV32_ADD(v2$1, v1) else $0$1);
    $0$2 := (if p1$2 then BV32_ADD(v2$2, v1) else $0$2);
    v4$1 := BV32_ULT(local_id_x$1, 16bv32);
    v4$2 := BV32_ULT(local_id_x$2, 16bv32);
    p2$1 := (if v4$1 then v4$1 else p2$1);
    p2$2 := (if v4$2 then v4$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$bottom_scan.l_block_counts(p2$1, local_id_x$1, 0bv32, $$bottom_scan.l_block_counts[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts(p2$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$bottom_scan.l_block_counts(p2$2, local_id_x$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$bottom_scan.l_block_counts"} true;
    $$bottom_scan.l_block_counts[1bv1][local_id_x$1] := (if p2$1 then 0bv32 else $$bottom_scan.l_block_counts[1bv1][local_id_x$1]);
    $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p2$2 then 0bv32 else $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v5$1 := (if p2$1 then _HAVOC_bv32$1 else v5$1);
    v5$2 := (if p2$2 then _HAVOC_bv32$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$bottom_scan.l_scanned_seeds(p2$1, local_id_x$1, v5$1, $$bottom_scan.l_scanned_seeds[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds(p2$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$bottom_scan.l_scanned_seeds(p2$2, local_id_x$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$bottom_scan.l_scanned_seeds"} true;
    $$bottom_scan.l_scanned_seeds[1bv1][local_id_x$1] := (if p2$1 then v5$1 else $$bottom_scan.l_scanned_seeds[1bv1][local_id_x$1]);
    $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p2$2 then v5$2 else $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 26} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    $i.0$1, $window.0$1, $val_4.0$1, $key_4.0$1 := BV32_ADD(v2$1, local_id_x$1), v2$1, v6$1, v7$1;
    $i.0$2, $window.0$2, $val_4.0$2, $key_4.0$2 := BV32_ADD(v2$2, local_id_x$2), v2$2, v6$2, v7$2;
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p4$1 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $i.0$1) == BV32_AND(BV32_SUB(group_size_x, 1bv32), BV32_ADD(v2$1, local_id_x$1)) )  && ( p4$2 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $i.0$2) == BV32_AND(BV32_SUB(group_size_x, 1bv32), BV32_ADD(v2$2, local_id_x$2)) ) ,  ( p4$1 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $window.0$1) == BV32_AND(BV32_SUB(group_size_x, 1bv32), v2$1) )  && ( p4$2 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $window.0$2) == BV32_AND(BV32_SUB(group_size_x, 1bv32), v2$2) ) ,  ( p4$1 ==> BV32_SLE(0bv32, $window.0$1) )  && ( p4$2 ==> BV32_SLE(0bv32, $window.0$2) ) ,  ( p4$1 ==> BV32_SUB($window.0$1, v2$1) == BV32_SUB($window.0$2, v2$2) )  && ( p4$2 ==> BV32_SUB($window.0$2, v2$2) == BV32_SUB($window.0$1, v2$1) ) ,  ( p4$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($window.0$1, v2$1) == BV32_SUB($window.0$2, v2$2) )  && ( p4$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($window.0$2, v2$2) == BV32_SUB($window.0$1, v2$1) ) ,  ( p4$1 ==> BV32_SLE($window.0$1, v2$1) )  && ( p4$2 ==> BV32_SLE($window.0$2, v2$2) ) ,  ( p4$1 ==> BV32_SGE($window.0$1, v2$1) )  && ( p4$2 ==> BV32_SGE($window.0$2, v2$2) ) ,  ( p4$1 ==> BV32_ULE($window.0$1, v2$1) )  && ( p4$2 ==> BV32_ULE($window.0$2, v2$2) ) ,  ( p4$1 ==> BV32_UGE($window.0$1, v2$1) )  && ( p4$2 ==> BV32_UGE($window.0$2, v2$2) ) ,  ( p4$1 ==> BV32_SLE($i.0$1, BV32_ADD(v2$1, local_id_x$1)) )  && ( p4$2 ==> BV32_SLE($i.0$2, BV32_ADD(v2$2, local_id_x$2)) ) ,  ( p4$1 ==> BV32_SGE($i.0$1, BV32_ADD(v2$1, local_id_x$1)) )  && ( p4$2 ==> BV32_SGE($i.0$2, BV32_ADD(v2$2, local_id_x$2)) ) ,  ( p4$1 ==> BV32_ULE($i.0$1, BV32_ADD(v2$1, local_id_x$1)) )  && ( p4$2 ==> BV32_ULE($i.0$2, BV32_ADD(v2$2, local_id_x$2)) ) ,  ( p4$1 ==> BV32_UGE($i.0$1, BV32_ADD(v2$1, local_id_x$1)) )  && ( p4$2 ==> BV32_UGE($i.0$2, BV32_ADD(v2$2, local_id_x$2)) ) ,  (  BV32_SLT($window.0$1, $0$1) ==> p4$1 )  && (  BV32_SLT($window.0$2, $0$2) ==> p4$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $i.i.0$1 == 0bv32 || BV32_AND($i.i.0$1, BV32_SUB($i.i.0$1, 1bv32)) == 0bv32 ) ,  (  $i.i.0$1 != 0bv32 ) ,  (  $i.i.0$2 == 0bv32 || BV32_AND($i.i.0$2, BV32_SUB($i.i.0$2, 1bv32)) == 0bv32 ) ,  (  $i.i.0$2 != 0bv32 ) ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $i.0$1 == $i.0$2 ) ,  (  p4$1 && p4$2 ==> $window.0$1 == $window.0$2 ) ,  (  p4$1 && p4$2 ==> $val_4.0$1 == $val_4.0$2 ) ,  (  p4$1 && p4$2 ==> $key_4.0$1 == $key_4.0$2 ) ,  (  p4$1 && p4$2 ==> $q.0$1 == $q.0$2 ) ,  (  p4$1 && p4$2 ==> $val_4.1$1 == $val_4.1$2 ) ,  (  p4$1 && p4$2 ==> $key_4.1$1 == $key_4.1$2 ) ,  (  p4$1 && p4$2 ==> $digit.0$1 == $digit.0$2 ) ,  (  p4$1 && p4$2 ==> $i.i.0$1 == $i.i.0$2 ) ,  (  p4$1 && p4$2 ==> $q1.0$1 == $q1.0$2 ) ,  (  p4$1 && p4$2 ==> v8$1 == v8$2 ) ,  (  p4$1 && p4$2 ==> v9$1 == v9$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  p4$1 && p4$2 ==> v15$1 == v15$2 ) ,  (  p4$1 && p4$2 ==> v16$1 == v16$2 ) ,  (  p4$1 && p4$2 ==> v17$1 == v17$2 ) ,  (  p4$1 && p4$2 ==> v18$1 == v18$2 ) ,  (  p4$1 && p4$2 ==> v19$1 == v19$2 ) ,  (  p4$1 && p4$2 ==> v20$1 == v20$2 ) ,  (  p4$1 && p4$2 ==> v21$1 == v21$2 ) ,  (  p4$1 && p4$2 ==> v22$1 == v22$2 ) ,  (  p4$1 && p4$2 ==> v23$1 == v23$2 ) ,  (  p4$1 && p4$2 ==> v24$1 == v24$2 ) ,  (  p4$1 && p4$2 ==> v25$1 == v25$2 ) ,  (  p4$1 && p4$2 ==> v26$1 == v26$2 ) ,  (  p4$1 && p4$2 ==> v27$1 == v27$2 ) ,  (  p4$1 && p4$2 ==> v28$1 == v28$2 ) ,  (  p4$1 && p4$2 ==> v29$1 == v29$2 ) ,  (  p4$1 && p4$2 ==> v30$1 == v30$2 ) ,  (  p4$1 && p4$2 ==> v31$1 == v31$2 ) ,  (  p4$1 && p4$2 ==> v32$1 == v32$2 ) ,  (  p4$1 && p4$2 ==> v33$1 == v33$2 ) ,  (  p4$1 && p4$2 ==> v34$1 == v34$2 ) ,  (  p4$1 && p4$2 ==> v35$1 == v35$2 ) ,  (  p4$1 && p4$2 ==> v36$1 == v36$2 ) ,  (  p4$1 && p4$2 ==> v37$1 == v37$2 ) ,  (  p4$1 && p4$2 ==> v38$1 == v38$2 ) ,  (  p4$1 && p4$2 ==> v39$1 == v39$2 ) ,  (  p4$1 && p4$2 ==> v40$1 == v40$2 ) ,  (  p4$1 && p4$2 ==> v41$1 == v41$2 ) ,  (  p4$1 && p4$2 ==> v42$1 == v42$2 ) ,  (  p4$1 && p4$2 ==> v43$1 == v43$2 ) ,  (  p4$1 && p4$2 ==> v44$1 == v44$2 ) ,  (  p4$1 && p4$2 ==> v45$1 == v45$2 ) ,  (  p4$1 && p4$2 ==> v46$1 == v46$2 ) ,  (  p4$1 && p4$2 ==> v47$1 == v47$2 ) ,  (  p4$1 && p4$2 ==> v48$1 == v48$2 ) ,  (  p4$1 && p4$2 ==> v49$1 == v49$2 ) ,  (  p4$1 && p4$2 ==> v50$1 == v50$2 ) ,  (  p4$1 && p4$2 ==> v51$1 == v51$2 ) ,  (  p4$1 && p4$2 ==> v52$1 == v52$2 ) ,  (  p4$1 && p4$2 ==> v53$1 == v53$2 ) ,  (  p4$1 && p4$2 ==> v54$1 == v54$2 ) ,  (  p4$1 && p4$2 ==> v55$1 == v55$2 ) ,  (  !_WRITE_HAS_OCCURRED_$$out ) ,  (  !_READ_HAS_OCCURRED_$$lmem ) ,  (  !_WRITE_HAS_OCCURRED_$$lmem ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_SUB(BV32_ADD(local_id_x$1, group_size_x), 1bv32) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ) ,  (  !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 27} p4$1 ==> true;
    v8$1 := (if p4$1 then BV32_SLT($window.0$1, $0$1) else v8$1);
    v8$2 := (if p4$2 then BV32_SLT($window.0$2, $0$2) else v8$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p10$1 := false;
    p10$2 := false;
    p18$1 := false;
    p18$2 := false;
    p20$1 := false;
    p20$2 := false;
    p5$1 := (if p4$1 && v8$1 then v8$1 else p5$1);
    p5$2 := (if p4$2 && v8$2 then v8$2 else p5$2);
    p4$1 := (if p4$1 && !v8$1 then v8$1 else p4$1);
    p4$2 := (if p4$2 && !v8$2 then v8$2 else p4$2);
    $q.0$1 := (if p5$1 then 0bv32 else $q.0$1);
    $q.0$2 := (if p5$2 then 0bv32 else $q.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert {:block_sourceloc} {:sourceloc_num 29} p6$1 ==> true;
    v9$1 := (if p6$1 then BV32_SLT($q.0$1, 16bv32) else v9$1);
    v9$2 := (if p6$2 then BV32_SLT($q.0$2, 16bv32) else v9$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p7$1 := (if p6$1 && v9$1 then v9$1 else p7$1);
    p7$2 := (if p6$2 && v9$2 then v9$2 else p7$2);
    p6$1 := (if p6$1 && !v9$1 then v9$1 else p6$1);
    p6$2 := (if p6$2 && !v9$2 then v9$2 else p6$2);
    $$histogram$1[$q.0$1] := (if p7$1 then 0bv32 else $$histogram$1[$q.0$1]);
    $$histogram$2[$q.0$2] := (if p7$2 then 0bv32 else $$histogram$2[$q.0$2]);
    $q.0$1 := (if p7$1 then BV32_ADD($q.0$1, 1bv32) else $q.0$1);
    $q.0$2 := (if p7$2 then BV32_ADD($q.0$2, 1bv32) else $q.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $8.backedge, $8.tail;

  $8.tail:
    assume !p6$1 && !p6$2;
    v10$1 := (if p5$1 then BV32_SLT($i.0$1, $0$1) else v10$1);
    v10$2 := (if p5$2 then BV32_SLT($i.0$2, $0$2) else v10$2);
    p9$1 := (if p5$1 && v10$1 then v10$1 else p9$1);
    p9$2 := (if p5$2 && v10$2 then v10$2 else p9$2);
    p8$1 := (if p5$1 && !v10$1 then !v10$1 else p8$1);
    p8$2 := (if p5$2 && !v10$2 then !v10$2 else p8$2);
    $val_4.1$1, $key_4.1$1 := (if p8$1 then $val_4.0$1 else $val_4.1$1), (if p8$1 then $key_4.0$1 else $key_4.1$1);
    $val_4.1$2, $key_4.1$2 := (if p8$2 then $val_4.0$2 else $val_4.1$2), (if p8$2 then $key_4.0$2 else $key_4.1$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p9$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p9$2 then _HAVOC_bv32$2 else v11$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v12$1 := (if p9$1 then _HAVOC_bv32$1 else v12$1);
    v12$2 := (if p9$2 then _HAVOC_bv32$2 else v12$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v13$1 := (if p9$1 then _HAVOC_bv32$1 else v13$1);
    v13$2 := (if p9$2 then _HAVOC_bv32$2 else v13$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p9$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p9$2 then _HAVOC_bv32$2 else v14$2);
    v15$1 := (if p9$1 then BV32_AND(BV32_LSHR(v11$1, BV32_AND($shift, 31bv32)), 15bv32) else v15$1);
    v15$2 := (if p9$2 then BV32_AND(BV32_LSHR(v11$2, BV32_AND($shift, 31bv32)), 15bv32) else v15$2);
    v16$1 := (if p9$1 then BV32_AND(BV32_LSHR(v12$1, BV32_AND($shift, 31bv32)), 15bv32) else v16$1);
    v16$2 := (if p9$2 then BV32_AND(BV32_LSHR(v12$2, BV32_AND($shift, 31bv32)), 15bv32) else v16$2);
    v17$1 := (if p9$1 then BV32_AND(BV32_LSHR(v13$1, BV32_AND($shift, 31bv32)), 15bv32) else v17$1);
    v17$2 := (if p9$2 then BV32_AND(BV32_LSHR(v13$2, BV32_AND($shift, 31bv32)), 15bv32) else v17$2);
    v18$1 := (if p9$1 then BV32_AND(BV32_LSHR(v14$1, BV32_AND($shift, 31bv32)), 15bv32) else v18$1);
    v18$2 := (if p9$2 then BV32_AND(BV32_LSHR(v14$2, BV32_AND($shift, 31bv32)), 15bv32) else v18$2);
    v19$1 := (if p9$1 then $$histogram$1[v15$1] else v19$1);
    v19$2 := (if p9$2 then $$histogram$2[v15$2] else v19$2);
    $$histogram$1[v15$1] := (if p9$1 then BV32_ADD(v19$1, 1bv32) else $$histogram$1[v15$1]);
    $$histogram$2[v15$2] := (if p9$2 then BV32_ADD(v19$2, 1bv32) else $$histogram$2[v15$2]);
    v20$1 := (if p9$1 then $$histogram$1[v16$1] else v20$1);
    v20$2 := (if p9$2 then $$histogram$2[v16$2] else v20$2);
    $$histogram$1[v16$1] := (if p9$1 then BV32_ADD(v20$1, 1bv32) else $$histogram$1[v16$1]);
    $$histogram$2[v16$2] := (if p9$2 then BV32_ADD(v20$2, 1bv32) else $$histogram$2[v16$2]);
    v21$1 := (if p9$1 then $$histogram$1[v17$1] else v21$1);
    v21$2 := (if p9$2 then $$histogram$2[v17$2] else v21$2);
    $$histogram$1[v17$1] := (if p9$1 then BV32_ADD(v21$1, 1bv32) else $$histogram$1[v17$1]);
    $$histogram$2[v17$2] := (if p9$2 then BV32_ADD(v21$2, 1bv32) else $$histogram$2[v17$2]);
    v22$1 := (if p9$1 then $$histogram$1[v18$1] else v22$1);
    v22$2 := (if p9$2 then $$histogram$2[v18$2] else v22$2);
    $$histogram$1[v18$1] := (if p9$1 then BV32_ADD(v22$1, 1bv32) else $$histogram$1[v18$1]);
    $$histogram$2[v18$2] := (if p9$2 then BV32_ADD(v22$2, 1bv32) else $$histogram$2[v18$2]);
    $val_4.1$1, $key_4.1$1 := (if p9$1 then v14$1 ++ v13$1 ++ v12$1 ++ v11$1 else $val_4.1$1), (if p9$1 then v18$1 ++ v17$1 ++ v16$1 ++ v15$1 else $key_4.1$1);
    $val_4.1$2, $key_4.1$2 := (if p9$2 then v14$2 ++ v13$2 ++ v12$2 ++ v11$2 else $val_4.1$2), (if p9$2 then v18$2 ++ v17$2 ++ v16$2 ++ v15$2 else $key_4.1$2);
    $digit.0$1 := (if p5$1 then 0bv32 else $digit.0$1);
    $digit.0$2 := (if p5$2 then 0bv32 else $digit.0$2);
    p10$1 := (if p5$1 then true else p10$1);
    p10$2 := (if p5$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0 := _READ_HAS_OCCURRED_$$lmem;
    _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0 := _WRITE_HAS_OCCURRED_$$lmem;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto __partitioned_block_$14_0;

  __partitioned_block_$14_0:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $i.i.0$1 == 0bv32 || BV32_AND($i.i.0$1, BV32_SUB($i.i.0$1, 1bv32)) == 0bv32 ) ,  (  $i.i.0$1 != 0bv32 ) ,  (  $i.i.0$2 == 0bv32 || BV32_AND($i.i.0$2, BV32_SUB($i.i.0$2, 1bv32)) == 0bv32 ) ,  (  $i.i.0$2 != 0bv32 ) ,  (  p10$1 == p10$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p10$1 == p10$2 ) ,  (  p10$1 && p10$2 ==> $digit.0$1 == $digit.0$2 ) ,  (  p10$1 && p10$2 ==> $i.i.0$1 == $i.i.0$2 ) ,  (  p10$1 && p10$2 ==> v23$1 == v23$2 ) ,  (  p10$1 && p10$2 ==> v24$1 == v24$2 ) ,  (  p10$1 && p10$2 ==> v25$1 == v25$2 ) ,  (  p10$1 && p10$2 ==> v26$1 == v26$2 ) ,  (  p10$1 && p10$2 ==> v27$1 == v27$2 ) ,  (  p10$1 && p10$2 ==> v28$1 == v28$2 ) ,  (  p10$1 && p10$2 ==> v29$1 == v29$2 ) ,  (  p10$1 && p10$2 ==> v30$1 == v30$2 ) ,  (  !_READ_HAS_OCCURRED_$$lmem ) ,  (  !_WRITE_HAS_OCCURRED_$$lmem ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_SUB(BV32_ADD(local_id_x$1, group_size_x), 1bv32) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  !p5$1 ==> _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0 == _READ_HAS_OCCURRED_$$lmem ) ,  (  !p5$1 ==> _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$14_0 == _WRITE_HAS_OCCURRED_$$lmem ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p5"} true;
    assert p10$1 ==> p4$1;
    assert p10$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> BV32_SLE(0bv32, $digit.0$1) )  && ( p10$2 ==> BV32_SLE(0bv32, $digit.0$2) ) ,  ( p10$1 ==> BV32_SUB($digit.0$1, 0bv32) == BV32_SUB($digit.0$2, 0bv32) )  && ( p10$2 ==> BV32_SUB($digit.0$2, 0bv32) == BV32_SUB($digit.0$1, 0bv32) ) ,  ( p10$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($digit.0$1, 0bv32) == BV32_SUB($digit.0$2, 0bv32) )  && ( p10$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($digit.0$2, 0bv32) == BV32_SUB($digit.0$1, 0bv32) ) ,  ( p10$1 ==> BV32_SLE($digit.0$1, 0bv32) )  && ( p10$2 ==> BV32_SLE($digit.0$2, 0bv32) ) ,  ( p10$1 ==> BV32_SGE($digit.0$1, 0bv32) )  && ( p10$2 ==> BV32_SGE($digit.0$2, 0bv32) ) ,  ( p10$1 ==> BV32_ULE($digit.0$1, 0bv32) )  && ( p10$2 ==> BV32_ULE($digit.0$2, 0bv32) ) ,  ( p10$1 ==> BV32_UGE($digit.0$1, 0bv32) )  && ( p10$2 ==> BV32_UGE($digit.0$2, 0bv32) ) ,  ( p10$1 ==> p10$1 ==> BV32_SLT($window.0$1, $0$1) )  && ( p10$2 ==> p10$2 ==> BV32_SLT($window.0$2, $0$2) ) ,  (  BV32_SLT($window.0$1, $0$1) && BV32_SLT($digit.0$1, 16bv32) ==> p10$1 )  && (  BV32_SLT($window.0$2, $0$2) && BV32_SLT($digit.0$2, 16bv32) ==> p10$2 ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 48} p10$1 ==> true;
    v23$1 := (if p10$1 then BV32_SLT($digit.0$1, 16bv32) else v23$1);
    v23$2 := (if p10$2 then BV32_SLT($digit.0$2, 16bv32) else v23$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p11$1 := (if p10$1 && v23$1 then v23$1 else p11$1);
    p11$2 := (if p10$2 && v23$2 then v23$2 else p11$2);
    p10$1 := (if p10$1 && !v23$1 then v23$1 else p10$1);
    p10$2 := (if p10$2 && !v23$2 then v23$2 else p10$2);
    v24$1 := (if p11$1 then $$histogram$1[$digit.0$1] else v24$1);
    v24$2 := (if p11$2 then $$histogram$2[$digit.0$2] else v24$2);
    v25$1 := (if p11$1 then local_id_x$1 else v25$1);
    v25$2 := (if p11$2 then local_id_x$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$lmem(p11$1, v25$1, 0bv32, $$lmem[1bv1][v25$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p11$2, v25$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$lmem(p11$2, v25$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v25$1] := (if p11$1 then 0bv32 else $$lmem[1bv1][v25$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v25$2] := (if p11$2 then 0bv32 else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v25$2]);
    v26$1 := (if p11$1 then BV32_ADD(v25$1, group_size_x) else v26$1);
    v26$2 := (if p11$2 then BV32_ADD(v25$2, group_size_x) else v26$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$lmem(p11$1, v26$1, v24$1, $$lmem[1bv1][v26$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p11$2, v26$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$lmem(p11$2, v26$2, v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v26$1] := (if p11$1 then v24$1 else $$lmem[1bv1][v26$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2] := (if p11$2 then v24$2 else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2]);
    goto __partitioned_block_$14_1;

  __partitioned_block_$14_1:
    call {:sourceloc_num 53} $bugle_barrier_duplicated_3(1bv1, 0bv1, p11$1, p11$2);
    $i.i.0$1 := (if p11$1 then 1bv32 else $i.i.0$1);
    $i.i.0$2 := (if p11$2 then 1bv32 else $i.i.0$2);
    p12$1 := (if p11$1 then true else p12$1);
    p12$2 := (if p11$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0 := _READ_HAS_OCCURRED_$$lmem;
    _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0 := _WRITE_HAS_OCCURRED_$$lmem;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto __partitioned_block_$16_0;

  __partitioned_block_$16_0:
    assume {:captureState "loop_head_state_3"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $i.i.0$1 == 0bv32 || BV32_AND($i.i.0$1, BV32_SUB($i.i.0$1, 1bv32)) == 0bv32 ) ,  (  $i.i.0$1 != 0bv32 ) ,  (  $i.i.0$2 == 0bv32 || BV32_AND($i.i.0$2, BV32_SUB($i.i.0$2, 1bv32)) == 0bv32 ) ,  (  $i.i.0$2 != 0bv32 ) ,  (  p12$1 == p12$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p12$1 == p12$2 ) ,  (  p12$1 && p12$2 ==> $i.i.0$1 == $i.i.0$2 ) ,  (  p12$1 && p12$2 ==> v27$1 == v27$2 ) ,  (  p12$1 && p12$2 ==> v28$1 == v28$2 ) ,  (  p12$1 && p12$2 ==> v29$1 == v29$2 ) ,  (  !_READ_HAS_OCCURRED_$$lmem ) ,  (  !_WRITE_HAS_OCCURRED_$$lmem ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) ) ,  (  !p11$1 ==> _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0 == _READ_HAS_OCCURRED_$$lmem ) ,  (  !p11$1 ==> _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$16_0 == _WRITE_HAS_OCCURRED_$$lmem ) ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p11"} true;
    assert p12$1 ==> p10$1;
    assert p12$2 ==> p10$2;
    assert p10$1 ==> p4$1;
    assert p10$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p12$1 ==> BV32_SUB($i.i.0$1, 1bv32) == BV32_SUB($i.i.0$2, 1bv32) )  && ( p12$2 ==> BV32_SUB($i.i.0$2, 1bv32) == BV32_SUB($i.i.0$1, 1bv32) ) ,  ( p12$1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.i.0$1, 1bv32) == BV32_SUB($i.i.0$2, 1bv32) )  && ( p12$2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.i.0$2, 1bv32) == BV32_SUB($i.i.0$1, 1bv32) ) ,  ( p12$1 ==> BV32_SLE($i.i.0$1, 1bv32) )  && ( p12$2 ==> BV32_SLE($i.i.0$2, 1bv32) ) ,  ( p12$1 ==> BV32_SGE($i.i.0$1, 1bv32) )  && ( p12$2 ==> BV32_SGE($i.i.0$2, 1bv32) ) ,  ( p12$1 ==> BV32_ULE($i.i.0$1, 1bv32) )  && ( p12$2 ==> BV32_ULE($i.i.0$2, 1bv32) ) ,  ( p12$1 ==> BV32_UGE($i.i.0$1, 1bv32) )  && ( p12$2 ==> BV32_UGE($i.i.0$2, 1bv32) ) ,  ( p12$1 ==> p12$1 ==> BV32_SLT($window.0$1, $0$1) && BV32_SLT($digit.0$1, 16bv32) )  && ( p12$2 ==> p12$2 ==> BV32_SLT($window.0$2, $0$2) && BV32_SLT($digit.0$2, 16bv32) ) ,  (  BV32_SLT($window.0$1, $0$1) && BV32_SLT($digit.0$1, 16bv32) && BV32_ULT($i.i.0$1, group_size_x) ==> p12$1 )  && (  BV32_SLT($window.0$2, $0$2) && BV32_SLT($digit.0$2, 16bv32) && BV32_ULT($i.i.0$2, group_size_x) ==> p12$2 ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1) ) ,  (  _READ_HAS_OCCURRED_$$lmem ==> BV32_SLT($digit.0$1, 16bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1) ) ,  (  _WRITE_HAS_OCCURRED_$$lmem ==> BV32_SLT($digit.0$1, 16bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 54} p12$1 ==> true;
    v27$1 := (if p12$1 then BV32_ULT($i.i.0$1, group_size_x) else v27$1);
    v27$2 := (if p12$2 then BV32_ULT($i.i.0$2, group_size_x) else v27$2);
    p13$1 := false;
    p13$2 := false;
    p13$1 := (if p12$1 && v27$1 then v27$1 else p13$1);
    p13$2 := (if p12$2 && v27$2 then v27$2 else p13$2);
    p12$1 := (if p12$1 && !v27$1 then v27$1 else p12$1);
    p12$2 := (if p12$2 && !v27$2 then v27$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$lmem(p13$1, BV32_SUB(v26$1, $i.i.0$1), $$lmem[1bv1][BV32_SUB(v26$1, $i.i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$lmem(p13$2, BV32_SUB(v26$2, $i.i.0$2), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v26$2, $i.i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v28$1 := (if p13$1 then $$lmem[1bv1][BV32_SUB(v26$1, $i.i.0$1)] else v28$1);
    v28$2 := (if p13$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v26$2, $i.i.0$2)] else v28$2);
    goto __partitioned_block_$16_1;

  __partitioned_block_$16_1:
    call {:sourceloc_num 57} $bugle_barrier_duplicated_5(1bv1, 0bv1, p13$1, p13$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$lmem(p13$1, v26$1, $$lmem[1bv1][v26$1]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$lmem(p13$2, v26$2, $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v29$1 := (if p13$1 then $$lmem[1bv1][v26$1] else v29$1);
    v29$2 := (if p13$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2] else v29$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$lmem(p13$1, v26$1, BV32_ADD(v29$1, v28$1), $$lmem[1bv1][v26$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p13$2, v26$2);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$lmem(p13$2, v26$2, BV32_ADD(v29$2, v28$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v26$1] := (if p13$1 then BV32_ADD(v29$1, v28$1) else $$lmem[1bv1][v26$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2] := (if p13$2 then BV32_ADD(v29$2, v28$2) else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v26$2]);
    goto __partitioned_block_$16_2;

  __partitioned_block_$16_2:
    call {:sourceloc_num 60} $bugle_barrier_duplicated_6(1bv1, 0bv1, p13$1, p13$2);
    $i.i.0$1 := (if p13$1 then BV32_MUL($i.i.0$1, 2bv32) else $i.i.0$1);
    $i.i.0$2 := (if p13$2 then BV32_MUL($i.i.0$2, 2bv32) else $i.i.0$2);
    p12$1 := (if p13$1 then true else p12$1);
    p12$2 := (if p13$2 then true else p12$2);
    goto $16.backedge, __partitioned_block_$16.tail_0;

  __partitioned_block_$16.tail_0:
    assume !p12$1 && !p12$2;
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$lmem(p11$1, BV32_SUB(v26$1, 1bv32), $$lmem[1bv1][BV32_SUB(v26$1, 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$lmem(p11$2, BV32_SUB(v26$2, 1bv32), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v26$2, 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v30$1 := (if p11$1 then $$lmem[1bv1][BV32_SUB(v26$1, 1bv32)] else v30$1);
    v30$2 := (if p11$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v26$2, 1bv32)] else v30$2);
    $$histogram$1[$digit.0$1] := (if p11$1 then v30$1 else $$histogram$1[$digit.0$1]);
    $$histogram$2[$digit.0$2] := (if p11$2 then v30$2 else $$histogram$2[$digit.0$2]);
    goto __partitioned_block_$16.tail_1;

  __partitioned_block_$16.tail_1:
    call {:sourceloc_num 64} $bugle_barrier_duplicated_4(1bv1, 0bv1, p11$1, p11$2);
    $digit.0$1 := (if p11$1 then BV32_ADD($digit.0$1, 1bv32) else $digit.0$1);
    $digit.0$2 := (if p11$2 then BV32_ADD($digit.0$2, 1bv32) else $digit.0$2);
    p10$1 := (if p11$1 then true else p10$1);
    p10$2 := (if p11$2 then true else p10$2);
    goto $14.backedge, __partitioned_block_$14.tail_0;

  __partitioned_block_$14.tail_0:
    assume !p10$1 && !p10$2;
    v31$1 := (if p5$1 then BV32_SLT($i.0$1, $0$1) else v31$1);
    v31$2 := (if p5$2 then BV32_SLT($i.0$2, $0$2) else v31$2);
    p15$1 := (if p5$1 && v31$1 then v31$1 else p15$1);
    p15$2 := (if p5$2 && v31$2 then v31$2 else p15$2);
    v32$1 := (if p15$1 then $$histogram$1[$key_4.1$1[32:0]] else v32$1);
    v32$2 := (if p15$2 then $$histogram$2[$key_4.1$2[32:0]] else v32$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 69} true;
    v33$1 := (if p15$1 then $$bottom_scan.l_scanned_seeds[1bv1][$key_4.1$1[32:0]] else v33$1);
    v33$2 := (if p15$2 then $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[32:0]] else v33$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$bottom_scan.l_block_counts(p15$1, $key_4.1$1[32:0], $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$bottom_scan.l_block_counts(p15$2, $key_4.1$2[32:0], $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.l_block_counts"} true;
    v34$1 := (if p15$1 then $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[32:0]] else v34$1);
    v34$2 := (if p15$2 then $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[32:0]] else v34$2);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$out(p15$1, BV32_ADD(BV32_ADD(v32$1, v33$1), v34$1), $val_4.1$1[32:0], $$out[BV32_ADD(BV32_ADD(v32$1, v33$1), v34$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p15$2, BV32_ADD(BV32_ADD(v32$2, v33$2), v34$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$out(p15$2, BV32_ADD(BV32_ADD(v32$2, v33$2), v34$2), $val_4.1$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_ADD(v32$1, v33$1), v34$1)] := (if p15$1 then $val_4.1$1[32:0] else $$out[BV32_ADD(BV32_ADD(v32$1, v33$1), v34$1)]);
    $$out[BV32_ADD(BV32_ADD(v32$2, v33$2), v34$2)] := (if p15$2 then $val_4.1$2[32:0] else $$out[BV32_ADD(BV32_ADD(v32$2, v33$2), v34$2)]);
    v35$1 := (if p15$1 then $key_4.1$1[32:0] else v35$1);
    v35$2 := (if p15$2 then $key_4.1$2[32:0] else v35$2);
    v36$1 := (if p15$1 then $$histogram$1[v35$1] else v36$1);
    v36$2 := (if p15$2 then $$histogram$2[v35$2] else v36$2);
    $$histogram$1[v35$1] := (if p15$1 then BV32_ADD(v36$1, 1bv32) else $$histogram$1[v35$1]);
    $$histogram$2[v35$2] := (if p15$2 then BV32_ADD(v36$2, 1bv32) else $$histogram$2[v35$2]);
    v37$1 := (if p15$1 then $$histogram$1[$key_4.1$1[64:32]] else v37$1);
    v37$2 := (if p15$2 then $$histogram$2[$key_4.1$2[64:32]] else v37$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 75} true;
    v38$1 := (if p15$1 then $$bottom_scan.l_scanned_seeds[1bv1][$key_4.1$1[64:32]] else v38$1);
    v38$2 := (if p15$2 then $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[64:32]] else v38$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$bottom_scan.l_block_counts(p15$1, $key_4.1$1[64:32], $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[64:32]]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$bottom_scan.l_block_counts(p15$2, $key_4.1$2[64:32], $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[64:32]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.l_block_counts"} true;
    v39$1 := (if p15$1 then $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[64:32]] else v39$1);
    v39$2 := (if p15$2 then $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[64:32]] else v39$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$out(p15$1, BV32_ADD(BV32_ADD(v37$1, v38$1), v39$1), $val_4.1$1[64:32], $$out[BV32_ADD(BV32_ADD(v37$1, v38$1), v39$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p15$2, BV32_ADD(BV32_ADD(v37$2, v38$2), v39$2));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$out(p15$2, BV32_ADD(BV32_ADD(v37$2, v38$2), v39$2), $val_4.1$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_ADD(v37$1, v38$1), v39$1)] := (if p15$1 then $val_4.1$1[64:32] else $$out[BV32_ADD(BV32_ADD(v37$1, v38$1), v39$1)]);
    $$out[BV32_ADD(BV32_ADD(v37$2, v38$2), v39$2)] := (if p15$2 then $val_4.1$2[64:32] else $$out[BV32_ADD(BV32_ADD(v37$2, v38$2), v39$2)]);
    v40$1 := (if p15$1 then $key_4.1$1[64:32] else v40$1);
    v40$2 := (if p15$2 then $key_4.1$2[64:32] else v40$2);
    v41$1 := (if p15$1 then $$histogram$1[v40$1] else v41$1);
    v41$2 := (if p15$2 then $$histogram$2[v40$2] else v41$2);
    $$histogram$1[v40$1] := (if p15$1 then BV32_ADD(v41$1, 1bv32) else $$histogram$1[v40$1]);
    $$histogram$2[v40$2] := (if p15$2 then BV32_ADD(v41$2, 1bv32) else $$histogram$2[v40$2]);
    v42$1 := (if p15$1 then $$histogram$1[$key_4.1$1[96:64]] else v42$1);
    v42$2 := (if p15$2 then $$histogram$2[$key_4.1$2[96:64]] else v42$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 81} true;
    v43$1 := (if p15$1 then $$bottom_scan.l_scanned_seeds[1bv1][$key_4.1$1[96:64]] else v43$1);
    v43$2 := (if p15$2 then $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[96:64]] else v43$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_READ_$$bottom_scan.l_block_counts(p15$1, $key_4.1$1[96:64], $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[96:64]]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 82} _CHECK_READ_$$bottom_scan.l_block_counts(p15$2, $key_4.1$2[96:64], $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[96:64]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.l_block_counts"} true;
    v44$1 := (if p15$1 then $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[96:64]] else v44$1);
    v44$2 := (if p15$2 then $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[96:64]] else v44$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$out(p15$1, BV32_ADD(BV32_ADD(v42$1, v43$1), v44$1), $val_4.1$1[96:64], $$out[BV32_ADD(BV32_ADD(v42$1, v43$1), v44$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p15$2, BV32_ADD(BV32_ADD(v42$2, v43$2), v44$2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$out(p15$2, BV32_ADD(BV32_ADD(v42$2, v43$2), v44$2), $val_4.1$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_ADD(v42$1, v43$1), v44$1)] := (if p15$1 then $val_4.1$1[96:64] else $$out[BV32_ADD(BV32_ADD(v42$1, v43$1), v44$1)]);
    $$out[BV32_ADD(BV32_ADD(v42$2, v43$2), v44$2)] := (if p15$2 then $val_4.1$2[96:64] else $$out[BV32_ADD(BV32_ADD(v42$2, v43$2), v44$2)]);
    v45$1 := (if p15$1 then $key_4.1$1[96:64] else v45$1);
    v45$2 := (if p15$2 then $key_4.1$2[96:64] else v45$2);
    v46$1 := (if p15$1 then $$histogram$1[v45$1] else v46$1);
    v46$2 := (if p15$2 then $$histogram$2[v45$2] else v46$2);
    $$histogram$1[v45$1] := (if p15$1 then BV32_ADD(v46$1, 1bv32) else $$histogram$1[v45$1]);
    $$histogram$2[v45$2] := (if p15$2 then BV32_ADD(v46$2, 1bv32) else $$histogram$2[v45$2]);
    v47$1 := (if p15$1 then $$histogram$1[$key_4.1$1[128:96]] else v47$1);
    v47$2 := (if p15$2 then $$histogram$2[$key_4.1$2[128:96]] else v47$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 87} true;
    v48$1 := (if p15$1 then $$bottom_scan.l_scanned_seeds[1bv1][$key_4.1$1[128:96]] else v48$1);
    v48$2 := (if p15$2 then $$bottom_scan.l_scanned_seeds[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[128:96]] else v48$2);
    call {:sourceloc} {:sourceloc_num 88} _LOG_READ_$$bottom_scan.l_block_counts(p15$1, $key_4.1$1[128:96], $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[128:96]]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 88} _CHECK_READ_$$bottom_scan.l_block_counts(p15$2, $key_4.1$2[128:96], $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[128:96]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.l_block_counts"} true;
    v49$1 := (if p15$1 then $$bottom_scan.l_block_counts[1bv1][$key_4.1$1[128:96]] else v49$1);
    v49$2 := (if p15$2 then $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$key_4.1$2[128:96]] else v49$2);
    call {:sourceloc} {:sourceloc_num 89} _LOG_WRITE_$$out(p15$1, BV32_ADD(BV32_ADD(v47$1, v48$1), v49$1), $val_4.1$1[128:96], $$out[BV32_ADD(BV32_ADD(v47$1, v48$1), v49$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p15$2, BV32_ADD(BV32_ADD(v47$2, v48$2), v49$2));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 89} _CHECK_WRITE_$$out(p15$2, BV32_ADD(BV32_ADD(v47$2, v48$2), v49$2), $val_4.1$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_ADD(v47$1, v48$1), v49$1)] := (if p15$1 then $val_4.1$1[128:96] else $$out[BV32_ADD(BV32_ADD(v47$1, v48$1), v49$1)]);
    $$out[BV32_ADD(BV32_ADD(v47$2, v48$2), v49$2)] := (if p15$2 then $val_4.1$2[128:96] else $$out[BV32_ADD(BV32_ADD(v47$2, v48$2), v49$2)]);
    v50$1 := (if p15$1 then $key_4.1$1[128:96] else v50$1);
    v50$2 := (if p15$2 then $key_4.1$2[128:96] else v50$2);
    v51$1 := (if p15$1 then $$histogram$1[v50$1] else v51$1);
    v51$2 := (if p15$2 then $$histogram$2[v50$2] else v51$2);
    $$histogram$1[v50$1] := (if p15$1 then BV32_ADD(v51$1, 1bv32) else $$histogram$1[v50$1]);
    $$histogram$2[v50$2] := (if p15$2 then BV32_ADD(v51$2, 1bv32) else $$histogram$2[v50$2]);
    goto __partitioned_block_$14.tail_1;

  __partitioned_block_$14.tail_1:
    call {:sourceloc_num 93} $bugle_barrier_duplicated_1(1bv1, 0bv1, p5$1, p5$2);
    v52$1 := (if p5$1 then local_id_x$1 == BV32_SUB(group_size_x, 1bv32) else v52$1);
    v52$2 := (if p5$2 then local_id_x$2 == BV32_SUB(group_size_x, 1bv32) else v52$2);
    p17$1 := (if p5$1 && v52$1 then v52$1 else p17$1);
    p17$2 := (if p5$2 && v52$2 then v52$2 else p17$2);
    $q1.0$1 := (if p17$1 then 0bv32 else $q1.0$1);
    $q1.0$2 := (if p17$2 then 0bv32 else $q1.0$2);
    p18$1 := (if p17$1 then true else p18$1);
    p18$2 := (if p17$2 then true else p18$2);
    _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23 := _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23 := _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $23;

  $23:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p17$1 ==> _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23 == _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ) ,  (  !p17$1 ==> _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts$ghost$$23 == _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p17"} true;
    assert p18$1 ==> p4$1;
    assert p18$2 ==> p4$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p18$1 ==> BV32_SLE(0bv32, $q1.0$1) )  && ( p18$2 ==> BV32_SLE(0bv32, $q1.0$2) ) ,  ( p18$1 ==> BV32_SLE($q1.0$1, 0bv32) )  && ( p18$2 ==> BV32_SLE($q1.0$2, 0bv32) ) ,  ( p18$1 ==> BV32_SGE($q1.0$1, 0bv32) )  && ( p18$2 ==> BV32_SGE($q1.0$2, 0bv32) ) ,  ( p18$1 ==> BV32_ULE($q1.0$1, 0bv32) )  && ( p18$2 ==> BV32_ULE($q1.0$2, 0bv32) ) ,  ( p18$1 ==> BV32_UGE($q1.0$1, 0bv32) )  && ( p18$2 ==> BV32_UGE($q1.0$2, 0bv32) ) ,  ( p18$1 ==> p18$1 ==> BV32_SLT($window.0$1, $0$1) && local_id_x$1 == BV32_SUB(group_size_x, 1bv32) )  && ( p18$2 ==> p18$2 ==> BV32_SLT($window.0$2, $0$2) && local_id_x$2 == BV32_SUB(group_size_x, 1bv32) ) ,  (  BV32_SLT($window.0$1, $0$1) && local_id_x$1 == BV32_SUB(group_size_x, 1bv32) && BV32_SLT($q1.0$1, 16bv32) ==> p18$1 )  && (  BV32_SLT($window.0$2, $0$2) && local_id_x$2 == BV32_SUB(group_size_x, 1bv32) && BV32_SLT($q1.0$2, 16bv32) ==> p18$2 ) ,  (  _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> BV32_SLT($window.0$1, $0$1) ) ,  (  _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> local_id_x$1 == BV32_SUB(group_size_x, 1bv32) ) ,  (  _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> BV32_SLT($window.0$1, $0$1) ) ,  (  _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts ==> local_id_x$1 == BV32_SUB(group_size_x, 1bv32) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 95} p18$1 ==> true;
    v53$1 := (if p18$1 then BV32_SLT($q1.0$1, 16bv32) else v53$1);
    v53$2 := (if p18$2 then BV32_SLT($q1.0$2, 16bv32) else v53$2);
    p19$1 := false;
    p19$2 := false;
    p19$1 := (if p18$1 && v53$1 then v53$1 else p19$1);
    p19$2 := (if p18$2 && v53$2 then v53$2 else p19$2);
    p18$1 := (if p18$1 && !v53$1 then v53$1 else p18$1);
    p18$2 := (if p18$2 && !v53$2 then v53$2 else p18$2);
    v54$1 := (if p19$1 then $$histogram$1[$q1.0$1] else v54$1);
    v54$2 := (if p19$2 then $$histogram$2[$q1.0$2] else v54$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$bottom_scan.l_block_counts(p19$1, $q1.0$1, $$bottom_scan.l_block_counts[1bv1][$q1.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$bottom_scan.l_block_counts(p19$2, $q1.0$2, $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$q1.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.l_block_counts"} true;
    v55$1 := (if p19$1 then $$bottom_scan.l_block_counts[1bv1][$q1.0$1] else v55$1);
    v55$2 := (if p19$2 then $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$q1.0$2] else v55$2);
    call {:sourceloc} {:sourceloc_num 99} _LOG_WRITE_$$bottom_scan.l_block_counts(p19$1, $q1.0$1, BV32_ADD(v55$1, v54$1), $$bottom_scan.l_block_counts[1bv1][$q1.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts(p19$2, $q1.0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 99} _CHECK_WRITE_$$bottom_scan.l_block_counts(p19$2, $q1.0$2, BV32_ADD(v55$2, v54$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$bottom_scan.l_block_counts"} true;
    $$bottom_scan.l_block_counts[1bv1][$q1.0$1] := (if p19$1 then BV32_ADD(v55$1, v54$1) else $$bottom_scan.l_block_counts[1bv1][$q1.0$1]);
    $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$q1.0$2] := (if p19$2 then BV32_ADD(v55$2, v54$2) else $$bottom_scan.l_block_counts[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$q1.0$2]);
    $q1.0$1 := (if p19$1 then BV32_ADD($q1.0$1, 1bv32) else $q1.0$1);
    $q1.0$2 := (if p19$2 then BV32_ADD($q1.0$2, 1bv32) else $q1.0$2);
    p18$1 := (if p19$1 then true else p18$1);
    p18$2 := (if p19$2 then true else p18$2);
    goto $23.backedge, __partitioned_block_$23.tail_0;

  __partitioned_block_$23.tail_0:
    assume !p18$1 && !p18$2;
    goto __partitioned_block_$23.tail_1;

  __partitioned_block_$23.tail_1:
    call {:sourceloc_num 103} $bugle_barrier_duplicated_2(1bv1, 0bv1, p5$1, p5$2);
    $i.0$1, $window.0$1, $val_4.0$1, $key_4.0$1 := (if p5$1 then BV32_ADD($i.0$1, group_size_x) else $i.0$1), (if p5$1 then BV32_ADD($window.0$1, group_size_x) else $window.0$1), (if p5$1 then $val_4.1$1 else $val_4.0$1), (if p5$1 then $key_4.1$1 else $key_4.0$1);
    $i.0$2, $window.0$2, $val_4.0$2, $key_4.0$2 := (if p5$2 then BV32_ADD($i.0$2, group_size_x) else $i.0$2), (if p5$2 then BV32_ADD($window.0$2, group_size_x) else $window.0$2), (if p5$2 then $val_4.1$2 else $val_4.0$2), (if p5$2 then $key_4.1$2 else $key_4.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p4$1 && !p4$2;
    return;

  $6.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $6;

  $23.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $23;

  $14.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto __partitioned_block_$14_0;

  $16.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto __partitioned_block_$16_0;

  $8.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $8;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 0bv1;
  requires _P$2 ==> $1 == 0bv1;
  modifies $$lmem, $$bottom_scan.l_block_counts, $$bottom_scan.l_scanned_seeds, $$out, _TRACKING;







function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;









function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

















































































const _WATCHED_VALUE_$$in: bv32;

procedure {:inline 1} _LOG_READ_$$in(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_READ_$$in(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _READ_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_READ_$$in(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$in);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$in: bool;

procedure {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$in, _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _WRITE_HAS_OCCURRED_$$in);
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



procedure _CHECK_WRITE_$$in(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_ATOMIC_$$in(_P: bool, _offset: bv32);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



const _WATCHED_VALUE_$$isums: bv32;

procedure {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _READ_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_READ_$$isums(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$isums);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$isums: bool;

procedure {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _WRITE_HAS_OCCURRED_$$isums);
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



procedure _CHECK_WRITE_$$isums(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_ATOMIC_$$isums(_P: bool, _offset: bv32);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



const _WATCHED_VALUE_$$out: bv32;

procedure {:inline 1} _LOG_READ_$$out(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_READ_$$out(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _READ_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_READ_$$out(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$out);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$out: bool;

procedure {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _WRITE_HAS_OCCURRED_$$out);
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



procedure _CHECK_WRITE_$$out(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_ATOMIC_$$out(_P: bool, _offset: bv32);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



const _WATCHED_VALUE_$$lmem: bv32;

procedure {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _READ_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_READ_$$lmem(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$lmem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$lmem: bool;

procedure {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _WRITE_HAS_OCCURRED_$$lmem);
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$lmem);
    return;
}



procedure _CHECK_WRITE_$$lmem(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_ATOMIC_$$lmem(_P: bool, _offset: bv32);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$lmem);
    return;
}



const _WATCHED_VALUE_$$bottom_scan.l_block_counts: bv32;

procedure {:inline 1} _LOG_READ_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;



implementation {:inline 1} _LOG_READ_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_block_counts == _value then true else _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts);
    return;
}



procedure _CHECK_READ_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts: bool;

procedure {:inline 1} _LOG_WRITE_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts;



implementation {:inline 1} _LOG_WRITE_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_block_counts == _value then true else _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts);
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_block_counts == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts);
    return;
}



procedure _CHECK_WRITE_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_block_counts != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_block_counts != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;



implementation {:inline 1} _LOG_ATOMIC_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts);
    return;
}



procedure _CHECK_ATOMIC_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_block_counts"} {:array "$$bottom_scan.l_block_counts"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts := (if _P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_block_counts);
    return;
}



const _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds: bv32;

procedure {:inline 1} _LOG_READ_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;



implementation {:inline 1} _LOG_READ_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds == _value then true else _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds);
    return;
}



procedure _CHECK_READ_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds: bool;

procedure {:inline 1} _LOG_WRITE_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds;



implementation {:inline 1} _LOG_WRITE_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds == _value then true else _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds);
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds);
    return;
}



procedure _CHECK_WRITE_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.l_scanned_seeds != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;



implementation {:inline 1} _LOG_ATOMIC_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds);
    return;
}



procedure _CHECK_ATOMIC_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "l_scanned_seeds"} {:array "$$bottom_scan.l_scanned_seeds"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds := (if _P && _WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.l_scanned_seeds);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_block_counts;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.l_scanned_seeds;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$out;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$lmem;
    goto anon5;

  anon5:
    havoc $$bottom_scan.l_block_counts;
    goto anon6;

  anon6:
    havoc $$bottom_scan.l_scanned_seeds;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;






























































































































































































































