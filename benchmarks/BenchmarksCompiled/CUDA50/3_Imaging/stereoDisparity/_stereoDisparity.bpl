type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$g_img0"} {:global} {:elem_width 32} {:source_name "g_img0"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_img0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_img0: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_img0: bool;

const $arrayId$$g_img0: arrayId;

axiom $arrayId$$g_img0 == 1bv4;

axiom {:array_info "$$g_img1"} {:global} {:elem_width 32} {:source_name "g_img1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_img1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_img1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_img1: bool;

const $arrayId$$g_img1: arrayId;

axiom $arrayId$$g_img1 == 2bv4;

var {:source_name "g_odata"} {:global} $$g_odata: [bv32]bv32;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

const $arrayId$$g_odata: arrayId;

axiom $arrayId$$g_odata == 3bv4;

var {:source_name "imLeftA"} $$imLeftA$1: [bv32]bv32;

var {:source_name "imLeftA"} $$imLeftA$2: [bv32]bv32;

axiom {:array_info "$$imLeftA"} {:elem_width 32} {:source_name "imLeftA"} {:source_elem_width 32} {:source_dimensions "3"} true;

const $arrayId$$imLeftA: arrayId;

axiom $arrayId$$imLeftA == 4bv4;

var {:source_name "imLeftB"} $$imLeftB$1: [bv32]bv32;

var {:source_name "imLeftB"} $$imLeftB$2: [bv32]bv32;

axiom {:array_info "$$imLeftB"} {:elem_width 32} {:source_name "imLeftB"} {:source_elem_width 32} {:source_dimensions "3"} true;

const $arrayId$$imLeftB: arrayId;

axiom $arrayId$$imLeftB == 5bv4;

axiom {:array_info "$$agg.tmp"} {:elem_width 32} {:source_name "agg.tmp"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp: arrayId;

axiom $arrayId$$agg.tmp == 6bv4;

axiom {:array_info "$$agg.tmp10"} {:elem_width 32} {:source_name "agg.tmp10"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp10: arrayId;

axiom $arrayId$$agg.tmp10 == 7bv4;

axiom {:array_info "$$agg.tmp43"} {:elem_width 32} {:source_name "agg.tmp43"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp43: arrayId;

axiom $arrayId$$agg.tmp43 == 8bv4;

axiom {:array_info "$$agg.tmp91"} {:elem_width 32} {:source_name "agg.tmp91"} {:source_elem_width 96} {:source_dimensions "1"} true;

const $arrayId$$agg.tmp91: arrayId;

axiom $arrayId$$agg.tmp91 == 9bv4;

axiom {:array_info "$$tex2Dleft"} {:global} {:elem_width 32} {:source_name "tex2Dleft"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex2Dleft: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex2Dleft: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex2Dleft: bool;

const $arrayId$$tex2Dleft: arrayId;

axiom $arrayId$$tex2Dleft == 10bv4;

var {:source_name "diff"} {:group_shared} $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:group_shared} {:elem_width 32} {:source_name "diff"} {:source_elem_width 32} {:source_dimensions "24,48"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,48"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,48"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,48"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: bool;

const $arrayId$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: arrayId;

axiom $arrayId$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff == 11bv4;

axiom {:array_info "$$tex2Dright"} {:global} {:elem_width 32} {:source_name "tex2Dright"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex2Dright: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex2Dright: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex2Dright: bool;

const $arrayId$$tex2Dright: arrayId;

axiom $arrayId$$tex2Dright == 12bv4;

type ptr = bv32;

type arrayId = bv4;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[28:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:28]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv4 ++ p[28:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv4;

const _WATCHED_OFFSET: bv32;

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

function SI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

procedure {:source_name "stereoDisparityKernel"} {:kernel} $_Z21stereoDisparityKernelPjS_S_iiii($w: bv32, $h: bv32, $minDisparity: bv32, $maxDisparity: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $w == 640bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$g_img0 && !_WRITE_HAS_OCCURRED_$$g_img0 && !_ATOMIC_HAS_OCCURRED_$$g_img0;
  requires !_READ_HAS_OCCURRED_$$g_img1 && !_WRITE_HAS_OCCURRED_$$g_img1 && !_ATOMIC_HAS_OCCURRED_$$g_img1;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$tex2Dleft && !_WRITE_HAS_OCCURRED_$$tex2Dleft && !_ATOMIC_HAS_OCCURRED_$$tex2Dleft;
  requires !_READ_HAS_OCCURRED_$$tex2Dright && !_WRITE_HAS_OCCURRED_$$tex2Dright && !_ATOMIC_HAS_OCCURRED_$$tex2Dright;
  requires !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && !_ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
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
  modifies $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, $$g_odata, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _TRACKING, _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _TRACKING;



implementation {:source_name "stereoDisparityKernel"} {:kernel} $_Z21stereoDisparityKernelPjS_S_iiii($w: bv32, $h: bv32, $minDisparity: bv32, $maxDisparity: bv32)
{
  var $i.0: bv32;
  var $bestCost.0$1: bv32;
  var $bestCost.0$2: bv32;
  var $bestDisparity.0$1: bv32;
  var $bestDisparity.0$2: bv32;
  var $d.0: bv32;
  var $i21.0: bv32;
  var $i58.0: bv32;
  var $j.0: bv32;
  var $cost.0$1: bv32;
  var $cost.0$2: bv32;
  var $i114.0: bv32;
  var $cost.1$1: bv32;
  var $cost.1$2: bv32;
  var $i132.0: bv32;
  var $bestCost.1$1: bv32;
  var $bestCost.1$2: bv32;
  var $bestDisparity.1$1: bv32;
  var $bestDisparity.1$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v5: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v14: bool;
  var v15: bool;
  var v16: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v32: bool;
  var v34: bool;
  var v33: bv32;
  var v36: bool;
  var v24: bv32;
  var v25$1: bool;
  var v25$2: bool;
  var v23: bool;
  var v39$1: bool;
  var v39$2: bool;
  var v38$1: bool;
  var v38$2: bool;
  var v40$1: bool;
  var v40$2: bool;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  $entry:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2);
    v2$1 := BV32_ADD(local_id_x$1, 8bv32);
    v2$2 := BV32_ADD(local_id_x$2, 8bv32);
    v3$1 := BV32_ADD(local_id_y$1, 8bv32);
    v3$2 := BV32_ADD(local_id_y$2, 8bv32);
    $i.0 := 0bv32;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_6"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v4 := BV32_SLT($i.0, 3bv32);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v4;
    $bestCost.0$1, $bestDisparity.0$1, $d.0 := 9999999bv32, 0bv32, $minDisparity;
    $bestCost.0$2, $bestDisparity.0$2 := 9999999bv32, 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond.18;

  $for.cond.18:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b37 ==> _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 8bv32), 48bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 8bv32), 48bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 8bv32), 4294967288bv32), BV32_ADD(local_id_y$1, 8bv32)), 48bv32), BV32_ADD(local_id_x$1, 8bv32)));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b36 ==> _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 48bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 48bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(0bv32, BV32_ADD(local_id_y$1, 8bv32)), 48bv32), BV32_ADD(local_id_x$1, 8bv32)));
    assert {:tag "nowrite"} _b35 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assert {:tag "noread"} _b34 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_UGE($bestCost.0$1, 9999999bv32);
    assert {:tag "loopBound"} {:thread 2} _b8 ==> BV32_UGE($bestCost.0$2, 9999999bv32);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_ULE($bestCost.0$1, 9999999bv32);
    assert {:tag "loopBound"} {:thread 2} _b7 ==> BV32_ULE($bestCost.0$2, 9999999bv32);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SGE($bestCost.0$1, 9999999bv32);
    assert {:tag "loopBound"} {:thread 2} _b6 ==> BV32_SGE($bestCost.0$2, 9999999bv32);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SLE($bestCost.0$1, 9999999bv32);
    assert {:tag "loopBound"} {:thread 2} _b5 ==> BV32_SLE($bestCost.0$2, 9999999bv32);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($d.0, $minDisparity);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($d.0, $minDisparity);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($d.0, $minDisparity);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($d.0, $minDisparity);
    assert {:tag "guardNonNeg"} {:thread 1} _b0 ==> BV32_SLE(0bv32, $d.0);
    assert {:block_sourceloc} {:sourceloc_num 22} true;
    v14 := BV32_SLE($d.0, $maxDisparity);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v14;
    v39$1 := BV32_SLT(v1$1, $h);
    v39$2 := BV32_SLT(v1$2, $h);
    p4$1 := (if v39$1 then v39$1 else p4$1);
    p4$2 := (if v39$2 then v39$2 else p4$2);
    v40$1 := (if p4$1 then BV32_SLT(v0$1, $w) else v40$1);
    v40$2 := (if p4$2 then BV32_SLT(v0$2, $w) else v40$2);
    p5$1 := (if p4$1 && v40$1 then v40$1 else p5$1);
    p5$2 := (if p4$2 && v40$2 then v40$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$g_odata(p5$1, BV32_ADD(BV32_MUL(v1$1, $w), v0$1), $bestDisparity.0$1, $$g_odata[BV32_ADD(BV32_MUL(v1$1, $w), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p5$2, BV32_ADD(BV32_MUL(v1$2, $w), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$g_odata(p5$2, BV32_ADD(BV32_MUL(v1$2, $w), v0$2), $bestDisparity.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[BV32_ADD(BV32_MUL(v1$1, $w), v0$1)] := (if p5$1 then $bestDisparity.0$1 else $$g_odata[BV32_ADD(BV32_MUL(v1$1, $w), v0$1)]);
    $$g_odata[BV32_ADD(BV32_MUL(v1$2, $w), v0$2)] := (if p5$2 then $bestDisparity.0$2 else $$g_odata[BV32_ADD(BV32_MUL(v1$2, $w), v0$2)]);
    return;

  $truebb0:
    assume {:partition} v14;
    $i21.0 := 0bv32;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $for.cond.22;

  $for.cond.22:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "accessBreak"} _b38 ==> _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b13 ==> BV32_UGE($i21.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_ULE($i21.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_SGE($i21.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_SLE($i21.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b9 ==> BV32_SLE(0bv32, $i21.0);
    assert {:block_sourceloc} {:sourceloc_num 24} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 25} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 48bv32) == BV32_SUB(v2$1, 8bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 26} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_UREM(BV32_ADD(BV32_SUB(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 48bv32), v3$1), 8bv32), 8bv32) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    v15 := BV32_SLT($i21.0, 3bv32);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v15;
    $i58.0 := 0bv32;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $for.cond.59;

  $for.cond.59:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "accessBreak"} _b39 ==> _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b18 ==> BV32_UGE($i58.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b17 ==> BV32_ULE($i58.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b16 ==> BV32_SGE($i58.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b15 ==> BV32_SLE($i58.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b14 ==> BV32_SLE(0bv32, $i58.0);
    assert {:block_sourceloc} {:sourceloc_num 40} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 41} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 48bv32) == BV32_ADD(BV32_SUB(v2$1, 8bv32), 32bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 48bv32) == BV32_SUB(v2$1, 8bv32) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 42} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_UREM(BV32_ADD(BV32_SUB(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 48bv32), v3$1), 8bv32), 8bv32) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    v23 := BV32_SLT($i58.0, 3bv32);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto $truebb2, __partitioned_block_$falsebb2_0;

  __partitioned_block_$falsebb2_0:
    assume {:partition} !v23;
    goto __partitioned_block_$falsebb2_1;

  __partitioned_block_$falsebb2_1:
    call {:sourceloc_num 58} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $j.0 := 0bv32;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.108;

  $for.cond.108:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessBreak"} _b44 ==> _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "accessBreak"} _b43 ==> _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b42 ==> _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 8bv32), 48bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 8bv32), 48bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 8bv32), 4294967288bv32), BV32_ADD(local_id_y$1, 8bv32)), 48bv32), BV32_ADD(local_id_x$1, 8bv32)));
    assert {:tag "nowrite"} _b41 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assert {:tag "noread"} _b40 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b23 ==> BV32_UGE($j.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b22 ==> BV32_ULE($j.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b21 ==> BV32_SGE($j.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b20 ==> BV32_SLE($j.0, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b19 ==> BV32_SLE(0bv32, $j.0);
    assert {:block_sourceloc} {:sourceloc_num 59} true;
    v32 := BV32_SLT($j.0, 3bv32);
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v32;
    $cost.1$1, $i132.0 := 0bv32, 4294967288bv32;
    $cost.1$2 := 0bv32;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.133;

  $for.cond.133:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessBreak"} _b46 ==> _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b45 ==> _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 48bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 48bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_ADD(0bv32, BV32_ADD(local_id_y$1, 8bv32)), 48bv32), BV32_ADD(local_id_x$1, 8bv32)));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b28 ==> BV32_UGE($i132.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b27 ==> BV32_ULE($i132.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b26 ==> BV32_SGE($i132.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b25 ==> BV32_SLE($i132.0, 4294967288bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b24 ==> BV32_SLE(0bv32, $i132.0);
    assert {:block_sourceloc} {:sourceloc_num 71} true;
    v36 := BV32_SLE($i132.0, 8bv32);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto $truebb6, __partitioned_block_$falsebb6_0;

  __partitioned_block_$falsebb6_0:
    assume {:partition} !v36;
    v38$1 := BV32_ULT($cost.1$1, $bestCost.0$1);
    v38$2 := BV32_ULT($cost.1$2, $bestCost.0$2);
    p3$1 := (if v38$1 then v38$1 else p3$1);
    p3$2 := (if v38$2 then v38$2 else p3$2);
    p2$1 := (if !v38$1 then !v38$1 else p2$1);
    p2$2 := (if !v38$2 then !v38$2 else p2$2);
    $bestCost.1$1, $bestDisparity.1$1 := (if p2$1 then $bestCost.0$1 else $bestCost.1$1), (if p2$1 then $bestDisparity.0$1 else $bestDisparity.1$1);
    $bestCost.1$2, $bestDisparity.1$2 := (if p2$2 then $bestCost.0$2 else $bestCost.1$2), (if p2$2 then $bestDisparity.0$2 else $bestDisparity.1$2);
    $bestCost.1$1, $bestDisparity.1$1 := (if p3$1 then $cost.1$1 else $bestCost.1$1), (if p3$1 then BV32_ADD($d.0, 8bv32) else $bestDisparity.1$1);
    $bestCost.1$2, $bestDisparity.1$2 := (if p3$2 then $cost.1$2 else $bestCost.1$2), (if p3$2 then BV32_ADD($d.0, 8bv32) else $bestDisparity.1$2);
    goto __partitioned_block_$falsebb6_1;

  __partitioned_block_$falsebb6_1:
    call {:sourceloc_num 78} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    $bestCost.0$1, $bestDisparity.0$1, $d.0 := $bestCost.1$1, $bestDisparity.1$1, BV32_ADD($d.0, 1bv32);
    $bestCost.0$2, $bestDisparity.0$2 := $bestCost.1$2, $bestDisparity.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond.18;

  $truebb6:
    assume {:partition} v36;
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, $i132.0), 48bv32), v2$1), $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, $i132.0), 48bv32), v2$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, $i132.0), 48bv32), v2$2), $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, $i132.0), 48bv32), v2$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} true;
    v37$1 := $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, $i132.0), 48bv32), v2$1)];
    v37$2 := $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, $i132.0), 48bv32), v2$2)];
    $cost.1$1, $i132.0 := BV32_ADD($cost.1$1, v37$1), BV32_ADD($i132.0, 1bv32);
    $cost.1$2 := BV32_ADD($cost.1$2, v37$2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.133;

  $truebb4:
    assume {:partition} v32;
    v33 := BV32_ADD(4294967288bv32, BV32_MUL($j.0, 8bv32));
    $cost.0$1, $i114.0 := 0bv32, 4294967288bv32;
    $cost.0$2 := 0bv32;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $for.cond.115;

  $for.cond.115:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "accessBreak"} _b47 ==> _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> local_id_y$1 == BV32_DIV(_WATCHED_OFFSET, 48bv32);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b33 ==> BV32_UGE($i114.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b32 ==> BV32_ULE($i114.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b31 ==> BV32_SGE($i114.0, 4294967288bv32);
    assert {:tag "loopBound"} {:thread 1} _b30 ==> BV32_SLE($i114.0, 4294967288bv32);
    assert {:tag "guardNonNeg"} {:thread 1} _b29 ==> BV32_SLE(0bv32, $i114.0);
    assert {:block_sourceloc} {:sourceloc_num 61} true;
    v34 := BV32_SLE($i114.0, 8bv32);
    goto $truebb5, __partitioned_block_$falsebb5_0;

  __partitioned_block_$falsebb5_0:
    assume {:partition} !v34;
    goto __partitioned_block_$falsebb5_1;

  __partitioned_block_$falsebb5_1:
    call {:sourceloc_num 66} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), v2$1), $cost.0$1, $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), v2$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), v2$2), $cost.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} true;
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), v2$1)] := $cost.0$1;
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), v2$2)] := $cost.0$2;
    goto __partitioned_block_$falsebb5_2;

  __partitioned_block_$falsebb5_2:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_3(1bv1, 1bv1);
    $j.0 := BV32_ADD($j.0, 1bv32);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.108;

  $truebb5:
    assume {:partition} v34;
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), BV32_ADD(v2$1, $i114.0)), $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), BV32_ADD(v2$1, $i114.0))]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), BV32_ADD(v2$2, $i114.0)), $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), BV32_ADD(v2$2, $i114.0))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} true;
    v35$1 := $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v33), 48bv32), BV32_ADD(v2$1, $i114.0))];
    v35$2 := $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v33), 48bv32), BV32_ADD(v2$2, $i114.0))];
    $cost.0$1, $i114.0 := BV32_ADD($cost.0$1, v35$1), BV32_ADD($i114.0, 1bv32);
    $cost.0$2 := BV32_ADD($cost.0$2, v35$2);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $for.cond.115;

  $truebb2:
    assume {:partition} v23;
    v24 := BV32_ADD(4294967288bv32, BV32_MUL($i58.0, 8bv32));
    v25$1 := BV32_ULT(local_id_x$1, 16bv32);
    v25$2 := BV32_ULT(local_id_x$2, 16bv32);
    p1$1 := (if v25$1 then v25$1 else p1$1);
    p1$2 := (if v25$2 then v25$2 else p1$2);
    v26$1 := (if p1$1 then $$imLeftB$1[$i58.0] else v26$1);
    v26$2 := (if p1$2 then $$imLeftB$2[$i58.0] else v26$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v27$1 := (if p1$1 then _HAVOC_bv32$1 else v27$1);
    v27$2 := (if p1$2 then _HAVOC_bv32$2 else v27$2);
    $$agg.tmp91$0bv32$1 := (if p1$1 then v27$1 else $$agg.tmp91$0bv32$1);
    $$agg.tmp91$0bv32$2 := (if p1$2 then v27$2 else $$agg.tmp91$0bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v28$1 := (if p1$1 then _HAVOC_bv32$1 else v28$1);
    v28$2 := (if p1$2 then _HAVOC_bv32$2 else v28$2);
    $$agg.tmp91$1bv32$1 := (if p1$1 then v28$1 else $$agg.tmp91$1bv32$1);
    $$agg.tmp91$1bv32$2 := (if p1$2 then v28$2 else $$agg.tmp91$1bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v29$1 := (if p1$1 then _HAVOC_bv32$1 else v29$1);
    v29$2 := (if p1$2 then _HAVOC_bv32$2 else v29$2);
    $$agg.tmp91$2bv32$1 := (if p1$1 then v29$1 else $$agg.tmp91$2bv32$1);
    $$agg.tmp91$2bv32$2 := (if p1$2 then v29$2 else $$agg.tmp91$2bv32$2);
    call {:sourceloc_num 52} v30$1, v30$2 := $_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$agg.tmp91, 0bv32), p1$1, SI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_SUB(v0$1, 8bv32), 32bv32), $d.0)), SI32_TO_FP32(BV32_ADD(v1$1, v24)), p1$2, SI32_TO_FP32(BV32_ADD(BV32_ADD(BV32_SUB(v0$2, 8bv32), 32bv32), $d.0)), SI32_TO_FP32(BV32_ADD(v1$2, v24)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc_num 53} v31$1, v31$2 := $_ZL7__usad4jjj(0bv32, p1$1, v26$1, v30$1, p1$2, v26$2, v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_ZL7__usad4jjj"} true;
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(p1$1, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v24), 48bv32), BV32_ADD(BV32_SUB(v2$1, 8bv32), 32bv32)), v31$1, $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v24), 48bv32), BV32_ADD(BV32_SUB(v2$1, 8bv32), 32bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v24), 48bv32), BV32_ADD(BV32_SUB(v2$2, 8bv32), 32bv32)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(p1$2, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v24), 48bv32), BV32_ADD(BV32_SUB(v2$2, 8bv32), 32bv32)), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} true;
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v24), 48bv32), BV32_ADD(BV32_SUB(v2$1, 8bv32), 32bv32))] := (if p1$1 then v31$1 else $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v24), 48bv32), BV32_ADD(BV32_SUB(v2$1, 8bv32), 32bv32))]);
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v24), 48bv32), BV32_ADD(BV32_SUB(v2$2, 8bv32), 32bv32))] := (if p1$2 then v31$2 else $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v24), 48bv32), BV32_ADD(BV32_SUB(v2$2, 8bv32), 32bv32))]);
    $i58.0 := BV32_ADD($i58.0, 1bv32);
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $for.cond.59;

  $truebb1:
    assume {:partition} v15;
    v16 := BV32_ADD(4294967288bv32, BV32_MUL($i21.0, 8bv32));
    v17$1 := $$imLeftA$1[$i21.0];
    v17$2 := $$imLeftA$2[$i21.0];
    havoc v18$1, v18$2;
    $$agg.tmp43$0bv32$1 := v18$1;
    $$agg.tmp43$0bv32$2 := v18$2;
    havoc v19$1, v19$2;
    $$agg.tmp43$1bv32$1 := v19$1;
    $$agg.tmp43$1bv32$2 := v19$2;
    havoc v20$1, v20$2;
    $$agg.tmp43$2bv32$1 := v20$1;
    $$agg.tmp43$2bv32$2 := v20$2;
    call {:sourceloc_num 35} v21$1, v21$2 := $_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$agg.tmp43, 0bv32), true, SI32_TO_FP32(BV32_ADD(BV32_SUB(v0$1, 8bv32), $d.0)), SI32_TO_FP32(BV32_ADD(v1$1, v16)), true, SI32_TO_FP32(BV32_ADD(BV32_SUB(v0$2, 8bv32), $d.0)), SI32_TO_FP32(BV32_ADD(v1$2, v16)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc_num 36} v22$1, v22$2 := $_ZL7__usad4jjj(0bv32, true, v17$1, v21$1, true, v17$2, v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_ZL7__usad4jjj"} true;
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v16), 48bv32), BV32_SUB(v2$1, 8bv32)), v22$1, $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v16), 48bv32), BV32_SUB(v2$1, 8bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v16), 48bv32), BV32_SUB(v2$2, 8bv32)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(true, BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v16), 48bv32), BV32_SUB(v2$2, 8bv32)), v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} true;
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v3$1, v16), 48bv32), BV32_SUB(v2$1, 8bv32))] := v22$1;
    $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v3$2, v16), 48bv32), BV32_SUB(v2$2, 8bv32))] := v22$2;
    $i21.0 := BV32_ADD($i21.0, 1bv32);
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $for.cond.22;

  $truebb:
    assume {:partition} v4;
    v5 := BV32_ADD(4294967288bv32, BV32_MUL($i.0, 8bv32));
    havoc v6$1, v6$2;
    $$agg.tmp$0bv32$1 := v6$1;
    $$agg.tmp$0bv32$2 := v6$2;
    havoc v7$1, v7$2;
    $$agg.tmp$1bv32$1 := v7$1;
    $$agg.tmp$1bv32$2 := v7$2;
    havoc v8$1, v8$2;
    $$agg.tmp$2bv32$1 := v8$1;
    $$agg.tmp$2bv32$2 := v8$2;
    call {:sourceloc_num 10} v9$1, v9$2 := $_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$agg.tmp, 0bv32), true, SI32_TO_FP32(BV32_SUB(v0$1, 8bv32)), SI32_TO_FP32(BV32_ADD(v1$1, v5)), true, SI32_TO_FP32(BV32_SUB(v0$2, 8bv32)), SI32_TO_FP32(BV32_ADD(v1$2, v5)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    $$imLeftA$1[$i.0] := v9$1;
    $$imLeftA$2[$i.0] := v9$2;
    havoc v10$1, v10$2;
    $$agg.tmp10$0bv32$1 := v10$1;
    $$agg.tmp10$0bv32$2 := v10$2;
    havoc v11$1, v11$2;
    $$agg.tmp10$1bv32$1 := v11$1;
    $$agg.tmp10$1bv32$2 := v11$2;
    havoc v12$1, v12$2;
    $$agg.tmp10$2bv32$1 := v12$1;
    $$agg.tmp10$2bv32$2 := v12$2;
    call {:sourceloc_num 18} v13$1, v13$2 := $_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(MKPTR($arrayId$$agg.tmp10, 0bv32), true, SI32_TO_FP32(BV32_ADD(BV32_SUB(v0$1, 8bv32), 32bv32)), SI32_TO_FP32(BV32_ADD(v1$1, v5)), true, SI32_TO_FP32(BV32_ADD(BV32_SUB(v0$2, 8bv32), 32bv32)), SI32_TO_FP32(BV32_ADD(v1$2, v5)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    $$imLeftB$1[$i.0] := v13$1;
    $$imLeftB$2[$i.0] := v13$2;
    $i.0 := BV32_ADD($i.0, 1bv32);
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $for.cond;
}



procedure {:source_name "_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIjET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0: ptr, _P$1: bool, $1$1: bv32, $2$1: bv32, _P$2: bool, $1$2: bv32, $2$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);



procedure {:source_name "_ZL7__usad4jjj"} $_ZL7__usad4jjj($2: bv32, _P$1: bool, $0$1: bv32, $1$1: bv32, _P$2: bool, $0$2: bv32, $1$2: bv32) returns ($ret$1: bv32, $ret$2: bv32);
  requires _P$1 ==> $2 == 0bv32;
  requires _P$2 ==> $2 == 0bv32;



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 20bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 67bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, $$g_odata, _TRACKING;



var $$agg.tmp$0bv32$1: bv32;

var $$agg.tmp$0bv32$2: bv32;

var $$agg.tmp$1bv32$1: bv32;

var $$agg.tmp$1bv32$2: bv32;

var $$agg.tmp$2bv32$1: bv32;

var $$agg.tmp$2bv32$2: bv32;

var $$agg.tmp10$0bv32$1: bv32;

var $$agg.tmp10$0bv32$2: bv32;

var $$agg.tmp10$1bv32$1: bv32;

var $$agg.tmp10$1bv32$2: bv32;

var $$agg.tmp10$2bv32$1: bv32;

var $$agg.tmp10$2bv32$2: bv32;

var $$agg.tmp43$0bv32$1: bv32;

var $$agg.tmp43$0bv32$2: bv32;

var $$agg.tmp43$1bv32$1: bv32;

var $$agg.tmp43$1bv32$2: bv32;

var $$agg.tmp43$2bv32$1: bv32;

var $$agg.tmp43$2bv32$2: bv32;

var $$agg.tmp91$0bv32$1: bv32;

var $$agg.tmp91$0bv32$2: bv32;

var $$agg.tmp91$1bv32$1: bv32;

var $$agg.tmp91$1bv32$2: bv32;

var $$agg.tmp91$2bv32$1: bv32;

var $$agg.tmp91$2bv32$2: bv32;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const _WATCHED_VALUE_$$g_img0: bv32;

procedure {:inline 1} _LOG_READ_$$g_img0(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_img0;



implementation {:inline 1} _LOG_READ_$$g_img0(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_img0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img0 == _value then true else _READ_HAS_OCCURRED_$$g_img0);
    return;
}



procedure _CHECK_READ_$$g_img0(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_img0);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_img0: bool;

procedure {:inline 1} _LOG_WRITE_$$g_img0(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_img0, _WRITE_READ_BENIGN_FLAG_$$g_img0;



implementation {:inline 1} _LOG_WRITE_$$g_img0(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_img0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img0 == _value then true else _WRITE_HAS_OCCURRED_$$g_img0);
    _WRITE_READ_BENIGN_FLAG_$$g_img0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_img0);
    return;
}



procedure _CHECK_WRITE_$$g_img0(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img0 != _value);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img0 != _value);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_img0(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_img0;



implementation {:inline 1} _LOG_ATOMIC_$$g_img0(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_img0 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_img0);
    return;
}



procedure _CHECK_ATOMIC_$$g_img0(_P: bool, _offset: bv32);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_img0"} {:array "$$g_img0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_img0(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_img0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_img0(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_img0 := (if _P && _WRITE_HAS_OCCURRED_$$g_img0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_img0);
    return;
}



const _WATCHED_VALUE_$$g_img1: bv32;

procedure {:inline 1} _LOG_READ_$$g_img1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_img1;



implementation {:inline 1} _LOG_READ_$$g_img1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_img1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img1 == _value then true else _READ_HAS_OCCURRED_$$g_img1);
    return;
}



procedure _CHECK_READ_$$g_img1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_img1);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_img1: bool;

procedure {:inline 1} _LOG_WRITE_$$g_img1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_img1, _WRITE_READ_BENIGN_FLAG_$$g_img1;



implementation {:inline 1} _LOG_WRITE_$$g_img1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_img1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img1 == _value then true else _WRITE_HAS_OCCURRED_$$g_img1);
    _WRITE_READ_BENIGN_FLAG_$$g_img1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_img1);
    return;
}



procedure _CHECK_WRITE_$$g_img1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img1 != _value);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_img1 != _value);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_img1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_img1;



implementation {:inline 1} _LOG_ATOMIC_$$g_img1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_img1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_img1);
    return;
}



procedure _CHECK_ATOMIC_$$g_img1(_P: bool, _offset: bv32);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_img1"} {:array "$$g_img1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_img1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_img1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_img1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_img1 := (if _P && _WRITE_HAS_OCCURRED_$$g_img1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_img1);
    return;
}



const _WATCHED_VALUE_$$g_odata: bv32;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$tex2Dleft: bv32;

procedure {:inline 1} _LOG_READ_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$tex2Dleft;



implementation {:inline 1} _LOG_READ_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex2Dleft := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dleft == _value then true else _READ_HAS_OCCURRED_$$tex2Dleft);
    return;
}



procedure _CHECK_READ_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex2Dleft);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex2Dleft: bool;

procedure {:inline 1} _LOG_WRITE_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$tex2Dleft, _WRITE_READ_BENIGN_FLAG_$$tex2Dleft;



implementation {:inline 1} _LOG_WRITE_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex2Dleft := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dleft == _value then true else _WRITE_HAS_OCCURRED_$$tex2Dleft);
    _WRITE_READ_BENIGN_FLAG_$$tex2Dleft := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dleft == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex2Dleft);
    return;
}



procedure _CHECK_WRITE_$$tex2Dleft(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dleft != _value);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dleft != _value);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex2Dleft(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tex2Dleft;



implementation {:inline 1} _LOG_ATOMIC_$$tex2Dleft(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex2Dleft := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex2Dleft);
    return;
}



procedure _CHECK_ATOMIC_$$tex2Dleft(_P: bool, _offset: bv32);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex2Dleft"} {:array "$$tex2Dleft"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex2Dleft(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex2Dleft;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex2Dleft(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex2Dleft := (if _P && _WRITE_HAS_OCCURRED_$$tex2Dleft && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex2Dleft);
    return;
}



const _WATCHED_VALUE_$$tex2Dright: bv32;

procedure {:inline 1} _LOG_READ_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$tex2Dright;



implementation {:inline 1} _LOG_READ_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex2Dright := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dright == _value then true else _READ_HAS_OCCURRED_$$tex2Dright);
    return;
}



procedure _CHECK_READ_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex2Dright);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex2Dright: bool;

procedure {:inline 1} _LOG_WRITE_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$tex2Dright, _WRITE_READ_BENIGN_FLAG_$$tex2Dright;



implementation {:inline 1} _LOG_WRITE_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex2Dright := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dright == _value then true else _WRITE_HAS_OCCURRED_$$tex2Dright);
    _WRITE_READ_BENIGN_FLAG_$$tex2Dright := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dright == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex2Dright);
    return;
}



procedure _CHECK_WRITE_$$tex2Dright(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dright != _value);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex2Dright != _value);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex2Dright(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tex2Dright;



implementation {:inline 1} _LOG_ATOMIC_$$tex2Dright(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex2Dright := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex2Dright);
    return;
}



procedure _CHECK_ATOMIC_$$tex2Dright(_P: bool, _offset: bv32);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex2Dright"} {:array "$$tex2Dright"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex2Dright(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex2Dright;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex2Dright(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex2Dright := (if _P && _WRITE_HAS_OCCURRED_$$tex2Dright && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex2Dright);
    return;
}



const _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;



implementation {:inline 1} _LOG_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff == _value then true else _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff);
    return;
}



procedure _CHECK_READ_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff, _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "diff"} {:array "$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ21stereoDisparityKernelPjS_S_iiiiE4diff;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;
