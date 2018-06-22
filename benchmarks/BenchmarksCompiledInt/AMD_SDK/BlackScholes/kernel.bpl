type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$randArray"} {:global} {:elem_width 32} {:source_name "randArray"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$randArray: bool;

var {:source_name "call"} {:global} $$call: [int]int;

axiom {:array_info "$$call"} {:global} {:elem_width 32} {:source_name "call"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$call: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$call: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$call: bool;

var {:source_name "put"} {:global} $$put: [int]int;

axiom {:array_info "$$put"} {:global} {:elem_width 32} {:source_name "put"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$put: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$put: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$put: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV1_SEXT32(int) : int;

function FABS32(int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEXP32(int) : int;

function FLOG32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "blackScholes"} {:kernel} $blackScholes($width: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 64 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$randArray && !_WRITE_HAS_OCCURRED_$$randArray && !_ATOMIC_HAS_OCCURRED_$$randArray;
  requires !_READ_HAS_OCCURRED_$$call && !_WRITE_HAS_OCCURRED_$$call && !_ATOMIC_HAS_OCCURRED_$$call;
  requires !_READ_HAS_OCCURRED_$$put && !_WRITE_HAS_OCCURRED_$$put && !_ATOMIC_HAS_OCCURRED_$$put;
  requires BV32_SGT(group_size_x, 0);
  requires BV32_SGT(num_groups_x, 0);
  requires BV32_SGE(group_id_x$1, 0);
  requires BV32_SGE(group_id_x$2, 0);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0);
  requires BV32_SGE(local_id_x$2, 0);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0);
  requires BV32_SGT(num_groups_y, 0);
  requires BV32_SGE(group_id_y$1, 0);
  requires BV32_SGE(group_id_y$2, 0);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0);
  requires BV32_SGE(local_id_y$2, 0);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0);
  requires BV32_SGT(num_groups_z, 0);
  requires BV32_SGE(group_id_z$1, 0);
  requires BV32_SGE(group_id_z$2, 0);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0);
  requires BV32_SGE(local_id_z$2, 0);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$call, _WRITE_READ_BENIGN_FLAG_$$call, _WRITE_READ_BENIGN_FLAG_$$call, _WRITE_HAS_OCCURRED_$$put, _WRITE_READ_BENIGN_FLAG_$$put, _WRITE_READ_BENIGN_FLAG_$$put;



implementation {:source_name "blackScholes"} {:kernel} $blackScholes($width: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v6$1: int;
  var v6$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v31$1: int;
  var v31$2: int;
  var v30$1: int;
  var v30$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: int;
  var v81$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    v6$1 := FADD32(FMUL32(1092616192, v2$1), FMUL32(1120403456, FSUB32(1065353216, v2$1)));
    v6$2 := FADD32(FMUL32(1092616192, v2$2), FMUL32(1120403456, FSUB32(1065353216, v2$2)));
    v7$1 := FADD32(FMUL32(1092616192, v3$1), FMUL32(1120403456, FSUB32(1065353216, v3$1)));
    v7$2 := FADD32(FMUL32(1092616192, v3$2), FMUL32(1120403456, FSUB32(1065353216, v3$2)));
    v8$1 := FADD32(FMUL32(1092616192, v4$1), FMUL32(1120403456, FSUB32(1065353216, v4$1)));
    v8$2 := FADD32(FMUL32(1092616192, v4$2), FMUL32(1120403456, FSUB32(1065353216, v4$2)));
    v9$1 := FADD32(FMUL32(1092616192, v5$1), FMUL32(1120403456, FSUB32(1065353216, v5$1)));
    v9$2 := FADD32(FMUL32(1092616192, v5$2), FMUL32(1120403456, FSUB32(1065353216, v5$2)));
    v10$1 := FADD32(FMUL32(1092616192, v2$1), FMUL32(1120403456, FSUB32(1065353216, v2$1)));
    v10$2 := FADD32(FMUL32(1092616192, v2$2), FMUL32(1120403456, FSUB32(1065353216, v2$2)));
    v11$1 := FADD32(FMUL32(1092616192, v3$1), FMUL32(1120403456, FSUB32(1065353216, v3$1)));
    v11$2 := FADD32(FMUL32(1092616192, v3$2), FMUL32(1120403456, FSUB32(1065353216, v3$2)));
    v12$1 := FADD32(FMUL32(1092616192, v4$1), FMUL32(1120403456, FSUB32(1065353216, v4$1)));
    v12$2 := FADD32(FMUL32(1092616192, v4$2), FMUL32(1120403456, FSUB32(1065353216, v4$2)));
    v13$1 := FADD32(FMUL32(1092616192, v5$1), FMUL32(1120403456, FSUB32(1065353216, v5$1)));
    v13$2 := FADD32(FMUL32(1092616192, v5$2), FMUL32(1120403456, FSUB32(1065353216, v5$2)));
    v14$1 := FADD32(FMUL32(1065353216, v2$1), FMUL32(1092616192, FSUB32(1065353216, v2$1)));
    v14$2 := FADD32(FMUL32(1065353216, v2$2), FMUL32(1092616192, FSUB32(1065353216, v2$2)));
    v15$1 := FADD32(FMUL32(1065353216, v3$1), FMUL32(1092616192, FSUB32(1065353216, v3$1)));
    v15$2 := FADD32(FMUL32(1065353216, v3$2), FMUL32(1092616192, FSUB32(1065353216, v3$2)));
    v16$1 := FADD32(FMUL32(1065353216, v4$1), FMUL32(1092616192, FSUB32(1065353216, v4$1)));
    v16$2 := FADD32(FMUL32(1065353216, v4$2), FMUL32(1092616192, FSUB32(1065353216, v4$2)));
    v17$1 := FADD32(FMUL32(1065353216, v5$1), FMUL32(1092616192, FSUB32(1065353216, v5$1)));
    v17$2 := FADD32(FMUL32(1065353216, v5$2), FMUL32(1092616192, FSUB32(1065353216, v5$2)));
    v18$1 := FADD32(FMUL32(1008981770, v2$1), FMUL32(1028443341, FSUB32(1065353216, v2$1)));
    v18$2 := FADD32(FMUL32(1008981770, v2$2), FMUL32(1028443341, FSUB32(1065353216, v2$2)));
    v19$1 := FADD32(FMUL32(1008981770, v3$1), FMUL32(1028443341, FSUB32(1065353216, v3$1)));
    v19$2 := FADD32(FMUL32(1008981770, v3$2), FMUL32(1028443341, FSUB32(1065353216, v3$2)));
    v20$1 := FADD32(FMUL32(1008981770, v4$1), FMUL32(1028443341, FSUB32(1065353216, v4$1)));
    v20$2 := FADD32(FMUL32(1008981770, v4$2), FMUL32(1028443341, FSUB32(1065353216, v4$2)));
    v21$1 := FADD32(FMUL32(1008981770, v5$1), FMUL32(1028443341, FSUB32(1065353216, v5$1)));
    v21$2 := FADD32(FMUL32(1008981770, v5$2), FMUL32(1028443341, FSUB32(1065353216, v5$2)));
    v22$1 := FADD32(FMUL32(1008981770, v2$1), FMUL32(1036831949, FSUB32(1065353216, v2$1)));
    v22$2 := FADD32(FMUL32(1008981770, v2$2), FMUL32(1036831949, FSUB32(1065353216, v2$2)));
    v23$1 := FADD32(FMUL32(1008981770, v3$1), FMUL32(1036831949, FSUB32(1065353216, v3$1)));
    v23$2 := FADD32(FMUL32(1008981770, v3$2), FMUL32(1036831949, FSUB32(1065353216, v3$2)));
    v24$1 := FADD32(FMUL32(1008981770, v4$1), FMUL32(1036831949, FSUB32(1065353216, v4$1)));
    v24$2 := FADD32(FMUL32(1008981770, v4$2), FMUL32(1036831949, FSUB32(1065353216, v4$2)));
    v25$1 := FADD32(FMUL32(1008981770, v5$1), FMUL32(1036831949, FSUB32(1065353216, v5$1)));
    v25$2 := FADD32(FMUL32(1008981770, v5$2), FMUL32(1036831949, FSUB32(1065353216, v5$2)));
    v26$1 := FMUL32(v22$1, FSQRT32(v14$1));
    v26$2 := FMUL32(v22$2, FSQRT32(v14$2));
    v27$1 := FMUL32(v23$1, FSQRT32(v15$1));
    v27$2 := FMUL32(v23$2, FSQRT32(v15$2));
    v28$1 := FMUL32(v24$1, FSQRT32(v16$1));
    v28$2 := FMUL32(v24$2, FSQRT32(v16$2));
    v29$1 := FMUL32(v25$1, FSQRT32(v17$1));
    v29$2 := FMUL32(v25$2, FSQRT32(v17$2));
    v30$1 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v6$1, v10$1)), 1060205080), FMUL32(FADD32(v18$1, FDIV32(FMUL32(v22$1, v22$1), 1073741824)), v14$1)), v26$1);
    v30$2 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v6$2, v10$2)), 1060205080), FMUL32(FADD32(v18$2, FDIV32(FMUL32(v22$2, v22$2), 1073741824)), v14$2)), v26$2);
    v31$1 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v7$1, v11$1)), 1060205080), FMUL32(FADD32(v19$1, FDIV32(FMUL32(v23$1, v23$1), 1073741824)), v15$1)), v27$1);
    v31$2 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v7$2, v11$2)), 1060205080), FMUL32(FADD32(v19$2, FDIV32(FMUL32(v23$2, v23$2), 1073741824)), v15$2)), v27$2);
    v32$1 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v8$1, v12$1)), 1060205080), FMUL32(FADD32(v20$1, FDIV32(FMUL32(v24$1, v24$1), 1073741824)), v16$1)), v28$1);
    v32$2 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v8$2, v12$2)), 1060205080), FMUL32(FADD32(v20$2, FDIV32(FMUL32(v24$2, v24$2), 1073741824)), v16$2)), v28$2);
    v33$1 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v9$1, v13$1)), 1060205080), FMUL32(FADD32(v21$1, FDIV32(FMUL32(v25$1, v25$1), 1073741824)), v17$1)), v29$1);
    v33$2 := FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v9$2, v13$2)), 1060205080), FMUL32(FADD32(v21$2, FDIV32(FMUL32(v25$2, v25$2), 1073741824)), v17$2)), v29$2);
    v34$1 := FSUB32(v30$1, v26$1);
    v34$2 := FSUB32(v30$2, v26$2);
    v35$1 := FSUB32(v31$1, v27$1);
    v35$2 := FSUB32(v31$2, v27$2);
    v36$1 := FSUB32(v32$1, v28$1);
    v36$2 := FSUB32(v32$2, v28$2);
    v37$1 := FSUB32(v33$1, v29$1);
    v37$2 := FSUB32(v33$2, v29$2);
    v38$1 := FMUL32(v10$1, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v18$1), v14$1), 1069066811)));
    v38$2 := FMUL32(v10$2, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v18$2), v14$2), 1069066811)));
    v39$1 := FMUL32(v11$1, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v19$1), v15$1), 1069066811)));
    v39$2 := FMUL32(v11$2, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v19$2), v15$2), 1069066811)));
    v40$1 := FMUL32(v12$1, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v20$1), v16$1), 1069066811)));
    v40$2 := FMUL32(v12$2, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v20$2), v16$2), 1069066811)));
    v41$1 := FMUL32(v13$1, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v21$1), v17$1), 1069066811)));
    v41$2 := FMUL32(v13$2, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v21$2), v17$2), 1069066811)));
    v42$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v30$1)), 1065353216));
    v42$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v30$2)), 1065353216));
    v43$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v31$1)), 1065353216));
    v43$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v31$2)), 1065353216));
    v44$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v32$1)), 1065353216));
    v44$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v32$2)), 1065353216));
    v45$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v33$1)), 1065353216));
    v45$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v33$2)), 1065353216));
    v46$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v30$1), v30$1), 1073741824), 1069066811))), v42$1)), FADD32(FMUL32(v42$1, FADD32(FMUL32(v42$1, FADD32(FMUL32(v42$1, FADD32(FMUL32(v42$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v46$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v30$2), v30$2), 1073741824), 1069066811))), v42$2)), FADD32(FMUL32(v42$2, FADD32(FMUL32(v42$2, FADD32(FMUL32(v42$2, FADD32(FMUL32(v42$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v47$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v31$1), v31$1), 1073741824), 1069066811))), v43$1)), FADD32(FMUL32(v43$1, FADD32(FMUL32(v43$1, FADD32(FMUL32(v43$1, FADD32(FMUL32(v43$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v47$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v31$2), v31$2), 1073741824), 1069066811))), v43$2)), FADD32(FMUL32(v43$2, FADD32(FMUL32(v43$2, FADD32(FMUL32(v43$2, FADD32(FMUL32(v43$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v48$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v32$1), v32$1), 1073741824), 1069066811))), v44$1)), FADD32(FMUL32(v44$1, FADD32(FMUL32(v44$1, FADD32(FMUL32(v44$1, FADD32(FMUL32(v44$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v48$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v32$2), v32$2), 1073741824), 1069066811))), v44$2)), FADD32(FMUL32(v44$2, FADD32(FMUL32(v44$2, FADD32(FMUL32(v44$2, FADD32(FMUL32(v44$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v49$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v33$1), v33$1), 1073741824), 1069066811))), v45$1)), FADD32(FMUL32(v45$1, FADD32(FMUL32(v45$1, FADD32(FMUL32(v45$1, FADD32(FMUL32(v45$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v49$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v33$2), v33$2), 1073741824), 1069066811))), v45$2)), FADD32(FMUL32(v45$2, FADD32(FMUL32(v45$2, FADD32(FMUL32(v45$2, FADD32(FMUL32(v45$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v50$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v30$1, 0) then 1 else 0)), 0) then 1 else 0));
    v50$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v30$2, 0) then 1 else 0)), 0) then 1 else 0));
    v51$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v31$1, 0) then 1 else 0)), 0) then 1 else 0));
    v51$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v31$2, 0) then 1 else 0)), 0) then 1 else 0));
    v52$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v32$1, 0) then 1 else 0)), 0) then 1 else 0));
    v52$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v32$2, 0) then 1 else 0)), 0) then 1 else 0));
    v53$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v33$1, 0) then 1 else 0)), 0) then 1 else 0));
    v53$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v33$2, 0) then 1 else 0)), 0) then 1 else 0));
    v54$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v34$1)), 1065353216));
    v54$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v34$2)), 1065353216));
    v55$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v35$1)), 1065353216));
    v55$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v35$2)), 1065353216));
    v56$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v36$1)), 1065353216));
    v56$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v36$2)), 1065353216));
    v57$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v37$1)), 1065353216));
    v57$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v37$2)), 1065353216));
    v58$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v34$1), v34$1), 1073741824), 1069066811))), v54$1)), FADD32(FMUL32(v54$1, FADD32(FMUL32(v54$1, FADD32(FMUL32(v54$1, FADD32(FMUL32(v54$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v58$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v34$2), v34$2), 1073741824), 1069066811))), v54$2)), FADD32(FMUL32(v54$2, FADD32(FMUL32(v54$2, FADD32(FMUL32(v54$2, FADD32(FMUL32(v54$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v59$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v35$1), v35$1), 1073741824), 1069066811))), v55$1)), FADD32(FMUL32(v55$1, FADD32(FMUL32(v55$1, FADD32(FMUL32(v55$1, FADD32(FMUL32(v55$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v59$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v35$2), v35$2), 1073741824), 1069066811))), v55$2)), FADD32(FMUL32(v55$2, FADD32(FMUL32(v55$2, FADD32(FMUL32(v55$2, FADD32(FMUL32(v55$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v60$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v36$1), v36$1), 1073741824), 1069066811))), v56$1)), FADD32(FMUL32(v56$1, FADD32(FMUL32(v56$1, FADD32(FMUL32(v56$1, FADD32(FMUL32(v56$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v60$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v36$2), v36$2), 1073741824), 1069066811))), v56$2)), FADD32(FMUL32(v56$2, FADD32(FMUL32(v56$2, FADD32(FMUL32(v56$2, FADD32(FMUL32(v56$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v61$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v37$1), v37$1), 1073741824), 1069066811))), v57$1)), FADD32(FMUL32(v57$1, FADD32(FMUL32(v57$1, FADD32(FMUL32(v57$1, FADD32(FMUL32(v57$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v61$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v37$2), v37$2), 1073741824), 1069066811))), v57$2)), FADD32(FMUL32(v57$2, FADD32(FMUL32(v57$2, FADD32(FMUL32(v57$2, FADD32(FMUL32(v57$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v62$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v34$1, 0) then 1 else 0)), 0) then 1 else 0));
    v62$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v34$2, 0) then 1 else 0)), 0) then 1 else 0));
    v63$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v35$1, 0) then 1 else 0)), 0) then 1 else 0));
    v63$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v35$2, 0) then 1 else 0)), 0) then 1 else 0));
    v64$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v36$1, 0) then 1 else 0)), 0) then 1 else 0));
    v64$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v36$2, 0) then 1 else 0)), 0) then 1 else 0));
    v65$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v37$1, 0) then 1 else 0)), 0) then 1 else 0));
    v65$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v37$2, 0) then 1 else 0)), 0) then 1 else 0));
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$call(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), FADD32(FMUL32(v6$1, BV32_OR(BV32_AND(v46$1, BV32_XOR(v50$1, -1)), BV32_AND(FSUB32(1065353216, v46$1), v50$1))), FSUB32(-2147483648, FMUL32(v38$1, BV32_OR(BV32_AND(v58$1, BV32_XOR(v62$1, -1)), BV32_AND(FSUB32(1065353216, v58$1), v62$1))))), $$call[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$call(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), FADD32(FMUL32(v6$2, BV32_OR(BV32_AND(v46$2, BV32_XOR(v50$2, -1)), BV32_AND(FSUB32(1065353216, v46$2), v50$2))), FSUB32(-2147483648, FMUL32(v38$2, BV32_OR(BV32_AND(v58$2, BV32_XOR(v62$2, -1)), BV32_AND(FSUB32(1065353216, v58$2), v62$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$call"} true;
    $$call[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)] := FADD32(FMUL32(v6$1, BV32_OR(BV32_AND(v46$1, BV32_XOR(v50$1, -1)), BV32_AND(FSUB32(1065353216, v46$1), v50$1))), FSUB32(-2147483648, FMUL32(v38$1, BV32_OR(BV32_AND(v58$1, BV32_XOR(v62$1, -1)), BV32_AND(FSUB32(1065353216, v58$1), v62$1)))));
    $$call[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4)] := FADD32(FMUL32(v6$2, BV32_OR(BV32_AND(v46$2, BV32_XOR(v50$2, -1)), BV32_AND(FSUB32(1065353216, v46$2), v50$2))), FSUB32(-2147483648, FMUL32(v38$2, BV32_OR(BV32_AND(v58$2, BV32_XOR(v62$2, -1)), BV32_AND(FSUB32(1065353216, v58$2), v62$2)))));
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1), FADD32(FMUL32(v7$1, BV32_OR(BV32_AND(v47$1, BV32_XOR(v51$1, -1)), BV32_AND(FSUB32(1065353216, v47$1), v51$1))), FSUB32(-2147483648, FMUL32(v39$1, BV32_OR(BV32_AND(v59$1, BV32_XOR(v63$1, -1)), BV32_AND(FSUB32(1065353216, v59$1), v63$1))))), $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1), FADD32(FMUL32(v7$2, BV32_OR(BV32_AND(v47$2, BV32_XOR(v51$2, -1)), BV32_AND(FSUB32(1065353216, v47$2), v51$2))), FSUB32(-2147483648, FMUL32(v39$2, BV32_OR(BV32_AND(v59$2, BV32_XOR(v63$2, -1)), BV32_AND(FSUB32(1065353216, v59$2), v63$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$call"} true;
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)] := FADD32(FMUL32(v7$1, BV32_OR(BV32_AND(v47$1, BV32_XOR(v51$1, -1)), BV32_AND(FSUB32(1065353216, v47$1), v51$1))), FSUB32(-2147483648, FMUL32(v39$1, BV32_OR(BV32_AND(v59$1, BV32_XOR(v63$1, -1)), BV32_AND(FSUB32(1065353216, v59$1), v63$1)))));
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1)] := FADD32(FMUL32(v7$2, BV32_OR(BV32_AND(v47$2, BV32_XOR(v51$2, -1)), BV32_AND(FSUB32(1065353216, v47$2), v51$2))), FSUB32(-2147483648, FMUL32(v39$2, BV32_OR(BV32_AND(v59$2, BV32_XOR(v63$2, -1)), BV32_AND(FSUB32(1065353216, v59$2), v63$2)))));
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2), FADD32(FMUL32(v8$1, BV32_OR(BV32_AND(v48$1, BV32_XOR(v52$1, -1)), BV32_AND(FSUB32(1065353216, v48$1), v52$1))), FSUB32(-2147483648, FMUL32(v40$1, BV32_OR(BV32_AND(v60$1, BV32_XOR(v64$1, -1)), BV32_AND(FSUB32(1065353216, v60$1), v64$1))))), $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2), FADD32(FMUL32(v8$2, BV32_OR(BV32_AND(v48$2, BV32_XOR(v52$2, -1)), BV32_AND(FSUB32(1065353216, v48$2), v52$2))), FSUB32(-2147483648, FMUL32(v40$2, BV32_OR(BV32_AND(v60$2, BV32_XOR(v64$2, -1)), BV32_AND(FSUB32(1065353216, v60$2), v64$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$call"} true;
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)] := FADD32(FMUL32(v8$1, BV32_OR(BV32_AND(v48$1, BV32_XOR(v52$1, -1)), BV32_AND(FSUB32(1065353216, v48$1), v52$1))), FSUB32(-2147483648, FMUL32(v40$1, BV32_OR(BV32_AND(v60$1, BV32_XOR(v64$1, -1)), BV32_AND(FSUB32(1065353216, v60$1), v64$1)))));
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2)] := FADD32(FMUL32(v8$2, BV32_OR(BV32_AND(v48$2, BV32_XOR(v52$2, -1)), BV32_AND(FSUB32(1065353216, v48$2), v52$2))), FSUB32(-2147483648, FMUL32(v40$2, BV32_OR(BV32_AND(v60$2, BV32_XOR(v64$2, -1)), BV32_AND(FSUB32(1065353216, v60$2), v64$2)))));
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3), FADD32(FMUL32(v9$1, BV32_OR(BV32_AND(v49$1, BV32_XOR(v53$1, -1)), BV32_AND(FSUB32(1065353216, v49$1), v53$1))), FSUB32(-2147483648, FMUL32(v41$1, BV32_OR(BV32_AND(v61$1, BV32_XOR(v65$1, -1)), BV32_AND(FSUB32(1065353216, v61$1), v65$1))))), $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$call(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3), FADD32(FMUL32(v9$2, BV32_OR(BV32_AND(v49$2, BV32_XOR(v53$2, -1)), BV32_AND(FSUB32(1065353216, v49$2), v53$2))), FSUB32(-2147483648, FMUL32(v41$2, BV32_OR(BV32_AND(v61$2, BV32_XOR(v65$2, -1)), BV32_AND(FSUB32(1065353216, v61$2), v65$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$call"} true;
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)] := FADD32(FMUL32(v9$1, BV32_OR(BV32_AND(v49$1, BV32_XOR(v53$1, -1)), BV32_AND(FSUB32(1065353216, v49$1), v53$1))), FSUB32(-2147483648, FMUL32(v41$1, BV32_OR(BV32_AND(v61$1, BV32_XOR(v65$1, -1)), BV32_AND(FSUB32(1065353216, v61$1), v65$1)))));
    $$call[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3)] := FADD32(FMUL32(v9$2, BV32_OR(BV32_AND(v49$2, BV32_XOR(v53$2, -1)), BV32_AND(FSUB32(1065353216, v49$2), v53$2))), FSUB32(-2147483648, FMUL32(v41$2, BV32_OR(BV32_AND(v61$2, BV32_XOR(v65$2, -1)), BV32_AND(FSUB32(1065353216, v61$2), v65$2)))));
    v66$1 := FSUB32(-2147483648, v30$1);
    v66$2 := FSUB32(-2147483648, v30$2);
    v67$1 := FSUB32(-2147483648, v31$1);
    v67$2 := FSUB32(-2147483648, v31$2);
    v68$1 := FSUB32(-2147483648, v32$1);
    v68$2 := FSUB32(-2147483648, v32$2);
    v69$1 := FSUB32(-2147483648, v33$1);
    v69$2 := FSUB32(-2147483648, v33$2);
    v70$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v66$1)), 1065353216));
    v70$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v66$2)), 1065353216));
    v71$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v67$1)), 1065353216));
    v71$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v67$2)), 1065353216));
    v72$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v68$1)), 1065353216));
    v72$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v68$2)), 1065353216));
    v73$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v69$1)), 1065353216));
    v73$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v69$2)), 1065353216));
    v74$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v66$1), v66$1), 1073741824), 1069066811))), v70$1)), FADD32(FMUL32(v70$1, FADD32(FMUL32(v70$1, FADD32(FMUL32(v70$1, FADD32(FMUL32(v70$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v74$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v66$2), v66$2), 1073741824), 1069066811))), v70$2)), FADD32(FMUL32(v70$2, FADD32(FMUL32(v70$2, FADD32(FMUL32(v70$2, FADD32(FMUL32(v70$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v75$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v67$1), v67$1), 1073741824), 1069066811))), v71$1)), FADD32(FMUL32(v71$1, FADD32(FMUL32(v71$1, FADD32(FMUL32(v71$1, FADD32(FMUL32(v71$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v75$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v67$2), v67$2), 1073741824), 1069066811))), v71$2)), FADD32(FMUL32(v71$2, FADD32(FMUL32(v71$2, FADD32(FMUL32(v71$2, FADD32(FMUL32(v71$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v76$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v68$1), v68$1), 1073741824), 1069066811))), v72$1)), FADD32(FMUL32(v72$1, FADD32(FMUL32(v72$1, FADD32(FMUL32(v72$1, FADD32(FMUL32(v72$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v76$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v68$2), v68$2), 1073741824), 1069066811))), v72$2)), FADD32(FMUL32(v72$2, FADD32(FMUL32(v72$2, FADD32(FMUL32(v72$2, FADD32(FMUL32(v72$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v77$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v69$1), v69$1), 1073741824), 1069066811))), v73$1)), FADD32(FMUL32(v73$1, FADD32(FMUL32(v73$1, FADD32(FMUL32(v73$1, FADD32(FMUL32(v73$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v77$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v69$2), v69$2), 1073741824), 1069066811))), v73$2)), FADD32(FMUL32(v73$2, FADD32(FMUL32(v73$2, FADD32(FMUL32(v73$2, FADD32(FMUL32(v73$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v78$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v66$1, 0) then 1 else 0)), 0) then 1 else 0));
    v78$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v66$2, 0) then 1 else 0)), 0) then 1 else 0));
    v79$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v67$1, 0) then 1 else 0)), 0) then 1 else 0));
    v79$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v67$2, 0) then 1 else 0)), 0) then 1 else 0));
    v80$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v68$1, 0) then 1 else 0)), 0) then 1 else 0));
    v80$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v68$2, 0) then 1 else 0)), 0) then 1 else 0));
    v81$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v69$1, 0) then 1 else 0)), 0) then 1 else 0));
    v81$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v69$2, 0) then 1 else 0)), 0) then 1 else 0));
    v82$1 := FSUB32(-2147483648, v34$1);
    v82$2 := FSUB32(-2147483648, v34$2);
    v83$1 := FSUB32(-2147483648, v35$1);
    v83$2 := FSUB32(-2147483648, v35$2);
    v84$1 := FSUB32(-2147483648, v36$1);
    v84$2 := FSUB32(-2147483648, v36$2);
    v85$1 := FSUB32(-2147483648, v37$1);
    v85$2 := FSUB32(-2147483648, v37$2);
    v86$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v82$1)), 1065353216));
    v86$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v82$2)), 1065353216));
    v87$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v83$1)), 1065353216));
    v87$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v83$2)), 1065353216));
    v88$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v84$1)), 1065353216));
    v88$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v84$2)), 1065353216));
    v89$1 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v85$1)), 1065353216));
    v89$2 := FDIV32(1065353216, FADD32(FMUL32(1047344009, FABS32(v85$2)), 1065353216));
    v90$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v82$1), v82$1), 1073741824), 1069066811))), v86$1)), FADD32(FMUL32(v86$1, FADD32(FMUL32(v86$1, FADD32(FMUL32(v86$1, FADD32(FMUL32(v86$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v90$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v82$2), v82$2), 1073741824), 1069066811))), v86$2)), FADD32(FMUL32(v86$2, FADD32(FMUL32(v86$2, FADD32(FMUL32(v86$2, FADD32(FMUL32(v86$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v91$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v83$1), v83$1), 1073741824), 1069066811))), v87$1)), FADD32(FMUL32(v87$1, FADD32(FMUL32(v87$1, FADD32(FMUL32(v87$1, FADD32(FMUL32(v87$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v91$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v83$2), v83$2), 1073741824), 1069066811))), v87$2)), FADD32(FMUL32(v87$2, FADD32(FMUL32(v87$2, FADD32(FMUL32(v87$2, FADD32(FMUL32(v87$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v92$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v84$1), v84$1), 1073741824), 1069066811))), v88$1)), FADD32(FMUL32(v88$1, FADD32(FMUL32(v88$1, FADD32(FMUL32(v88$1, FADD32(FMUL32(v88$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v92$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v84$2), v84$2), 1073741824), 1069066811))), v88$2)), FADD32(FMUL32(v88$2, FADD32(FMUL32(v88$2, FADD32(FMUL32(v88$2, FADD32(FMUL32(v88$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v93$1 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v85$1), v85$1), 1073741824), 1069066811))), v89$1)), FADD32(FMUL32(v89$1, FADD32(FMUL32(v89$1, FADD32(FMUL32(v89$1, FADD32(FMUL32(v89$1, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v93$2 := FADD32(FMUL32(FSUB32(-2147483648, FMUL32(FMUL32(1053573674, FEXP32(FMUL32(FDIV32(FMUL32(FSUB32(-2147483648, v85$2), v85$2), 1073741824), 1069066811))), v89$2)), FADD32(FMUL32(v89$2, FADD32(FMUL32(v89$2, FADD32(FMUL32(v89$2, FADD32(FMUL32(v89$2, 1068123759), -1075241238)), 1071908728)), -1095331961)), 1050904058)), 1065353216);
    v94$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v82$1, 0) then 1 else 0)), 0) then 1 else 0));
    v94$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v82$2, 0) then 1 else 0)), 0) then 1 else 0));
    v95$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v83$1, 0) then 1 else 0)), 0) then 1 else 0));
    v95$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v83$2, 0) then 1 else 0)), 0) then 1 else 0));
    v96$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v84$1, 0) then 1 else 0)), 0) then 1 else 0));
    v96$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v84$2, 0) then 1 else 0)), 0) then 1 else 0));
    v97$1 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v85$1, 0) then 1 else 0)), 0) then 1 else 0));
    v97$2 := BV1_SEXT32((if BV32_SLT(BV1_SEXT32((if FLT32(v85$2, 0) then 1 else 0)), 0) then 1 else 0));
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$put(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), FADD32(FMUL32(v38$1, BV32_OR(BV32_AND(v90$1, BV32_XOR(v94$1, -1)), BV32_AND(FSUB32(1065353216, v90$1), v94$1))), FSUB32(-2147483648, FMUL32(v6$1, BV32_OR(BV32_AND(v74$1, BV32_XOR(v78$1, -1)), BV32_AND(FSUB32(1065353216, v74$1), v78$1))))), $$put[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$put(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), FADD32(FMUL32(v38$2, BV32_OR(BV32_AND(v90$2, BV32_XOR(v94$2, -1)), BV32_AND(FSUB32(1065353216, v90$2), v94$2))), FSUB32(-2147483648, FMUL32(v6$2, BV32_OR(BV32_AND(v74$2, BV32_XOR(v78$2, -1)), BV32_AND(FSUB32(1065353216, v74$2), v78$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$put"} true;
    $$put[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)] := FADD32(FMUL32(v38$1, BV32_OR(BV32_AND(v90$1, BV32_XOR(v94$1, -1)), BV32_AND(FSUB32(1065353216, v90$1), v94$1))), FSUB32(-2147483648, FMUL32(v6$1, BV32_OR(BV32_AND(v74$1, BV32_XOR(v78$1, -1)), BV32_AND(FSUB32(1065353216, v74$1), v78$1)))));
    $$put[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4)] := FADD32(FMUL32(v38$2, BV32_OR(BV32_AND(v90$2, BV32_XOR(v94$2, -1)), BV32_AND(FSUB32(1065353216, v90$2), v94$2))), FSUB32(-2147483648, FMUL32(v6$2, BV32_OR(BV32_AND(v74$2, BV32_XOR(v78$2, -1)), BV32_AND(FSUB32(1065353216, v74$2), v78$2)))));
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1), FADD32(FMUL32(v39$1, BV32_OR(BV32_AND(v91$1, BV32_XOR(v95$1, -1)), BV32_AND(FSUB32(1065353216, v91$1), v95$1))), FSUB32(-2147483648, FMUL32(v7$1, BV32_OR(BV32_AND(v75$1, BV32_XOR(v79$1, -1)), BV32_AND(FSUB32(1065353216, v75$1), v79$1))))), $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1), FADD32(FMUL32(v39$2, BV32_OR(BV32_AND(v91$2, BV32_XOR(v95$2, -1)), BV32_AND(FSUB32(1065353216, v91$2), v95$2))), FSUB32(-2147483648, FMUL32(v7$2, BV32_OR(BV32_AND(v75$2, BV32_XOR(v79$2, -1)), BV32_AND(FSUB32(1065353216, v75$2), v79$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$put"} true;
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)] := FADD32(FMUL32(v39$1, BV32_OR(BV32_AND(v91$1, BV32_XOR(v95$1, -1)), BV32_AND(FSUB32(1065353216, v91$1), v95$1))), FSUB32(-2147483648, FMUL32(v7$1, BV32_OR(BV32_AND(v75$1, BV32_XOR(v79$1, -1)), BV32_AND(FSUB32(1065353216, v75$1), v79$1)))));
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1)] := FADD32(FMUL32(v39$2, BV32_OR(BV32_AND(v91$2, BV32_XOR(v95$2, -1)), BV32_AND(FSUB32(1065353216, v91$2), v95$2))), FSUB32(-2147483648, FMUL32(v7$2, BV32_OR(BV32_AND(v75$2, BV32_XOR(v79$2, -1)), BV32_AND(FSUB32(1065353216, v75$2), v79$2)))));
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2), FADD32(FMUL32(v40$1, BV32_OR(BV32_AND(v92$1, BV32_XOR(v96$1, -1)), BV32_AND(FSUB32(1065353216, v92$1), v96$1))), FSUB32(-2147483648, FMUL32(v8$1, BV32_OR(BV32_AND(v76$1, BV32_XOR(v80$1, -1)), BV32_AND(FSUB32(1065353216, v76$1), v80$1))))), $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2), FADD32(FMUL32(v40$2, BV32_OR(BV32_AND(v92$2, BV32_XOR(v96$2, -1)), BV32_AND(FSUB32(1065353216, v92$2), v96$2))), FSUB32(-2147483648, FMUL32(v8$2, BV32_OR(BV32_AND(v76$2, BV32_XOR(v80$2, -1)), BV32_AND(FSUB32(1065353216, v76$2), v80$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$put"} true;
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)] := FADD32(FMUL32(v40$1, BV32_OR(BV32_AND(v92$1, BV32_XOR(v96$1, -1)), BV32_AND(FSUB32(1065353216, v92$1), v96$1))), FSUB32(-2147483648, FMUL32(v8$1, BV32_OR(BV32_AND(v76$1, BV32_XOR(v80$1, -1)), BV32_AND(FSUB32(1065353216, v76$1), v80$1)))));
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2)] := FADD32(FMUL32(v40$2, BV32_OR(BV32_AND(v92$2, BV32_XOR(v96$2, -1)), BV32_AND(FSUB32(1065353216, v92$2), v96$2))), FSUB32(-2147483648, FMUL32(v8$2, BV32_OR(BV32_AND(v76$2, BV32_XOR(v80$2, -1)), BV32_AND(FSUB32(1065353216, v76$2), v80$2)))));
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3), FADD32(FMUL32(v41$1, BV32_OR(BV32_AND(v93$1, BV32_XOR(v97$1, -1)), BV32_AND(FSUB32(1065353216, v93$1), v97$1))), FSUB32(-2147483648, FMUL32(v9$1, BV32_OR(BV32_AND(v77$1, BV32_XOR(v81$1, -1)), BV32_AND(FSUB32(1065353216, v77$1), v81$1))))), $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$put(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3), FADD32(FMUL32(v41$2, BV32_OR(BV32_AND(v93$2, BV32_XOR(v97$2, -1)), BV32_AND(FSUB32(1065353216, v93$2), v97$2))), FSUB32(-2147483648, FMUL32(v9$2, BV32_OR(BV32_AND(v77$2, BV32_XOR(v81$2, -1)), BV32_AND(FSUB32(1065353216, v77$2), v81$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$put"} true;
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)] := FADD32(FMUL32(v41$1, BV32_OR(BV32_AND(v93$1, BV32_XOR(v97$1, -1)), BV32_AND(FSUB32(1065353216, v93$1), v97$1))), FSUB32(-2147483648, FMUL32(v9$1, BV32_OR(BV32_AND(v77$1, BV32_XOR(v81$1, -1)), BV32_AND(FSUB32(1065353216, v77$1), v81$1)))));
    $$put[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3)] := FADD32(FMUL32(v41$2, BV32_OR(BV32_AND(v93$2, BV32_XOR(v97$2, -1)), BV32_AND(FSUB32(1065353216, v93$2), v97$2))), FSUB32(-2147483648, FMUL32(v9$2, BV32_OR(BV32_AND(v77$2, BV32_XOR(v81$2, -1)), BV32_AND(FSUB32(1065353216, v77$2), v81$2)))));
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if num_groups_y == 2 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$randArray: int;

procedure {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _READ_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_READ_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$randArray);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$randArray: bool;

procedure {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$randArray, _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _WRITE_HAS_OCCURRED_$$randArray);
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



procedure _CHECK_WRITE_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_ATOMIC_$$randArray(_P: bool, _offset: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



const _WATCHED_VALUE_$$call: int;

procedure {:inline 1} _LOG_READ_$$call(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$call;



implementation {:inline 1} _LOG_READ_$$call(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$call := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$call == _value then true else _READ_HAS_OCCURRED_$$call);
    return;
}



procedure _CHECK_READ_$$call(_P: bool, _offset: int, _value: int);
  requires {:source_name "call"} {:array "$$call"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$call);
  requires {:source_name "call"} {:array "$$call"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$call: bool;

procedure {:inline 1} _LOG_WRITE_$$call(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$call, _WRITE_READ_BENIGN_FLAG_$$call;



implementation {:inline 1} _LOG_WRITE_$$call(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$call := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$call == _value then true else _WRITE_HAS_OCCURRED_$$call);
    _WRITE_READ_BENIGN_FLAG_$$call := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$call == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$call);
    return;
}



procedure _CHECK_WRITE_$$call(_P: bool, _offset: int, _value: int);
  requires {:source_name "call"} {:array "$$call"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$call != _value);
  requires {:source_name "call"} {:array "$$call"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$call != _value);
  requires {:source_name "call"} {:array "$$call"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$call(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$call;



implementation {:inline 1} _LOG_ATOMIC_$$call(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$call := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$call);
    return;
}



procedure _CHECK_ATOMIC_$$call(_P: bool, _offset: int);
  requires {:source_name "call"} {:array "$$call"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset);
  requires {:source_name "call"} {:array "$$call"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$call;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$call(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$call := (if _P && _WRITE_HAS_OCCURRED_$$call && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$call);
    return;
}



const _WATCHED_VALUE_$$put: int;

procedure {:inline 1} _LOG_READ_$$put(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$put;



implementation {:inline 1} _LOG_READ_$$put(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$put := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$put == _value then true else _READ_HAS_OCCURRED_$$put);
    return;
}



procedure _CHECK_READ_$$put(_P: bool, _offset: int, _value: int);
  requires {:source_name "put"} {:array "$$put"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$put);
  requires {:source_name "put"} {:array "$$put"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$put: bool;

procedure {:inline 1} _LOG_WRITE_$$put(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$put, _WRITE_READ_BENIGN_FLAG_$$put;



implementation {:inline 1} _LOG_WRITE_$$put(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$put := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$put == _value then true else _WRITE_HAS_OCCURRED_$$put);
    _WRITE_READ_BENIGN_FLAG_$$put := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$put == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$put);
    return;
}



procedure _CHECK_WRITE_$$put(_P: bool, _offset: int, _value: int);
  requires {:source_name "put"} {:array "$$put"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$put != _value);
  requires {:source_name "put"} {:array "$$put"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$put != _value);
  requires {:source_name "put"} {:array "$$put"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$put(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$put;



implementation {:inline 1} _LOG_ATOMIC_$$put(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$put := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$put);
    return;
}



procedure _CHECK_ATOMIC_$$put(_P: bool, _offset: int);
  requires {:source_name "put"} {:array "$$put"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset);
  requires {:source_name "put"} {:array "$$put"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$put;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$put(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$put := (if _P && _WRITE_HAS_OCCURRED_$$put && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$put);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
