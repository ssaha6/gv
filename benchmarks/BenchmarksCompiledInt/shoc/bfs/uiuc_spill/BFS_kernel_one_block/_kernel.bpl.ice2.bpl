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
 b0093: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(_P$1: bool, x$1: [int]int, y$1: int, _P$2: bool, x$2: [int]int, y$2: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "frontier"} {:global} $$frontier: [int]int;

axiom {:array_info "$$frontier"} {:global} {:elem_width 32} {:source_name "frontier"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier: bool;

axiom {:array_info "$$visited"} {:global} {:elem_width 32} {:source_name "visited"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$visited: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$visited: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$visited: bool;

axiom {:array_info "$$cost"} {:global} {:elem_width 32} {:source_name "cost"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cost: bool;

var {:source_name "edgeArray"} {:global} $$edgeArray: [int]int;

axiom {:array_info "$$edgeArray"} {:global} {:elem_width 32} {:source_name "edgeArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArray: bool;

axiom {:array_info "$$edgeArrayAux"} {:global} {:elem_width 32} {:source_name "edgeArrayAux"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:source_name "frontier_length"} {:global} $$frontier_length: [int]int;

axiom {:array_info "$$frontier_length"} {:global} {:elem_width 32} {:source_name "frontier_length"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier_length: bool;

var {:source_name "b_q"} {:group_shared} $$b_q: [bv1][int]int;

axiom {:array_info "$$b_q"} {:group_shared} {:elem_width 32} {:source_name "b_q"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q: bool;

var {:source_name "b_q2"} {:group_shared} $$b_q2: [bv1][int]int;

axiom {:array_info "$$b_q2"} {:group_shared} {:elem_width 32} {:source_name "b_q2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q2: bool;

axiom {:array_info "$$BFS_kernel_one_block.b_q_length"} {:group_shared} {:elem_width 32} {:source_name "b_q_length"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

axiom {:array_info "$$BFS_kernel_one_block.b_offset"} {:group_shared} {:elem_width 32} {:source_name "b_offset"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "BFS_kernel_one_block"} {:kernel} $BFS_kernel_one_block($frontier_len: int, $numVertices: int, $numEdges: int, $max_local_mem: int);
  requires {:sourceloc_num 0} {:thread 1} (if $frontier_len == 1 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $max_local_mem == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$frontier && !_WRITE_HAS_OCCURRED_$$frontier && !_ATOMIC_HAS_OCCURRED_$$frontier;
  requires !_READ_HAS_OCCURRED_$$visited && !_WRITE_HAS_OCCURRED_$$visited && !_ATOMIC_HAS_OCCURRED_$$visited;
  requires !_READ_HAS_OCCURRED_$$cost && !_WRITE_HAS_OCCURRED_$$cost && !_ATOMIC_HAS_OCCURRED_$$cost;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$frontier_length && !_WRITE_HAS_OCCURRED_$$frontier_length && !_ATOMIC_HAS_OCCURRED_$$frontier_length;
  requires !_READ_HAS_OCCURRED_$$b_q && !_WRITE_HAS_OCCURRED_$$b_q && !_ATOMIC_HAS_OCCURRED_$$b_q;
  requires !_READ_HAS_OCCURRED_$$b_q2 && !_WRITE_HAS_OCCURRED_$$b_q2 && !_ATOMIC_HAS_OCCURRED_$$b_q2;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
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
  modifies $$b_q, $$b_q2, _READ_HAS_OCCURRED_$$frontier, _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, $$frontier, $$frontier_length, _TRACKING, _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length, _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset, _TRACKING, _READ_HAS_OCCURRED_$$b_q, _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _READ_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$visited, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_HAS_OCCURRED_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2, _TRACKING, _READ_HAS_OCCURRED_$$b_q2, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:source_name "BFS_kernel_one_block"} {:kernel} $BFS_kernel_one_block($frontier_len: int, $numVertices: int, $numEdges: int, $max_local_mem: int)
{
  var $f_len.0$1: int;
  var $f_len.0$2: int;
  var $offset.0$1: int;
  var $offset.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: int;
  var v16$2: int;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: int;
  var v18$2: int;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: int;
  var v24$2: int;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: int;
  var v26$2: int;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: bool;
  var v33$2: bool;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var _abstracted_call_arg_0$1: int;
  var _abstracted_call_arg_0$2: int;
  var _abstracted_call_arg_1$1: int;
  var _abstracted_call_arg_1$2: int;
  var _abstracted_call_arg_2$1: int;
  var _abstracted_call_arg_2$2: int;
  var _abstracted_call_arg_3$1: int;
  var _abstracted_call_arg_3$2: int;
  var _abstracted_call_arg_4$1: int;
  var _abstracted_call_arg_4$2: int;
  var _abstracted_call_arg_5$1: int;
  var _abstracted_call_arg_5$2: int;
  var _abstracted_call_arg_6$1: int;
  var _abstracted_call_arg_6$2: int;
  var _abstracted_call_arg_7$1: int;
  var _abstracted_call_arg_7$2: int;
  var _abstracted_call_arg_8$1: int;
  var _abstracted_call_arg_8$2: int;
  var _abstracted_call_arg_9$1: int;
  var _abstracted_call_arg_9$2: int;
  var _abstracted_call_arg_10$1: int;
  var _abstracted_call_arg_10$2: int;
  var _abstracted_call_arg_11$1: int;
  var _abstracted_call_arg_11$2: int;
  var _abstracted_call_arg_12$1: int;
  var _abstracted_call_arg_12$2: int;
  var _abstracted_call_arg_13$1: int;
  var _abstracted_call_arg_13$2: int;
  var _abstracted_call_arg_14$1: int;
  var _abstracted_call_arg_14$2: int;
  var _abstracted_call_arg_15$1: int;
  var _abstracted_call_arg_15$2: int;
  var _abstracted_call_arg_16$1: int;
  var _abstracted_call_arg_16$2: int;
  var _abstracted_call_arg_17$1: int;
  var _abstracted_call_arg_17$2: int;
  var _abstracted_call_arg_18$1: int;
  var _abstracted_call_arg_18$2: int;
  var _abstracted_call_arg_19$1: int;
  var _abstracted_call_arg_19$2: int;
  var _abstracted_call_arg_20$1: int;
  var _abstracted_call_arg_20$2: int;
  var _abstracted_call_arg_21$1: int;
  var _abstracted_call_arg_21$2: int;
  var _abstracted_call_arg_22$1: int;
  var _abstracted_call_arg_22$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$frontier$ghost$$7: bool;
  var _ATOMIC_HAS_OCCURRED_$$visited$ghost$$7: bool;
  var _READ_HAS_OCCURRED_$$cost$ghost$$7: bool;
  var _ATOMIC_HAS_OCCURRED_$$cost$ghost$$7: bool;
  var _WRITE_HAS_OCCURRED_$$b_q2$ghost$$7: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$7: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$7: bool;


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_ULT(v0$1, $frontier_len);
    v1$2 := BV32_ULT(v0$2, $frontier_len);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$frontier(p0$1, v0$1, $$frontier[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$frontier(p0$2, v0$2, $$frontier[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$frontier"} true;
    v2$1 := (if p0$1 then $$frontier[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$frontier[v0$2] else v2$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$b_q(p0$1, v0$1, v2$1, $$b_q[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$b_q(p0$2, v0$2, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v0$1] := (if p0$1 then v2$1 else $$b_q[1bv1][v0$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p0$2 then v2$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    $f_len.0$1 := $frontier_len;
    $f_len.0$2 := $frontier_len;
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$3_0;

  __partitioned_block_$3_0:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> BV32_SLE($f_len.0$1, $frontier_len) )  && ( p2$2 ==> BV32_SLE($f_len.0$2, $frontier_len) ) ,  ( p2$1 ==> BV32_SGE($f_len.0$1, $frontier_len) )  && ( p2$2 ==> BV32_SGE($f_len.0$2, $frontier_len) ) ,  ( p2$1 ==> BV32_ULE($f_len.0$1, $frontier_len) )  && ( p2$2 ==> BV32_ULE($f_len.0$2, $frontier_len) ) ,  ( p2$1 ==> BV32_UGE($f_len.0$1, $frontier_len) )  && ( p2$2 ==> BV32_UGE($f_len.0$2, $frontier_len) ) ,  (  v21$1 != 0 ==> p2$1 )  && (  v21$2 != 0 ==> p2$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $f_len.0$1 == $f_len.0$2 ) ,  (  p2$1 && p2$2 ==> $offset.0$1 == $offset.0$2 ) ,  (  p2$1 && p2$2 ==> v3$1 == v3$2 ) ,  (  p2$1 && p2$2 ==> v4$1 == v4$2 ) ,  (  p2$1 && p2$2 ==> v5$1 == v5$2 ) ,  (  p2$1 && p2$2 ==> v6$1 == v6$2 ) ,  (  p2$1 && p2$2 ==> v7$1 == v7$2 ) ,  (  p2$1 && p2$2 ==> v8$1 == v8$2 ) ,  (  p2$1 && p2$2 ==> v9$1 == v9$2 ) ,  (  p2$1 && p2$2 ==> v10$1 == v10$2 ) ,  (  p2$1 && p2$2 ==> v11$1 == v11$2 ) ,  (  p2$1 && p2$2 ==> v12$1 == v12$2 ) ,  (  p2$1 && p2$2 ==> v13$1 == v13$2 ) ,  (  p2$1 && p2$2 ==> v14$1 == v14$2 ) ,  (  p2$1 && p2$2 ==> v15$1 == v15$2 ) ,  (  p2$1 && p2$2 ==> v16$1 == v16$2 ) ,  (  p2$1 && p2$2 ==> v17$1 == v17$2 ) ,  (  p2$1 && p2$2 ==> v18$1 == v18$2 ) ,  (  p2$1 && p2$2 ==> v19$1 == v19$2 ) ,  (  p2$1 && p2$2 ==> v20$1 == v20$2 ) ,  (  p2$1 && p2$2 ==> v21$1 == v21$2 ) ,  (  p2$1 && p2$2 ==> v22$1 == v22$2 ) ,  (  p2$1 && p2$2 ==> v24$1 == v24$2 ) ,  (  p2$1 && p2$2 ==> v25$1 == v25$2 ) ,  (  p2$1 && p2$2 ==> v26$1 == v26$2 ) ,  (  p2$1 && p2$2 ==> v27$1 == v27$2 ) ,  (  p2$1 && p2$2 ==> v35$1 == v35$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_0$1 == _abstracted_call_arg_0$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_1$1 == _abstracted_call_arg_1$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_2$1 == _abstracted_call_arg_2$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_3$1 == _abstracted_call_arg_3$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_4$1 == _abstracted_call_arg_4$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_5$1 == _abstracted_call_arg_5$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_6$1 == _abstracted_call_arg_6$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_7$1 == _abstracted_call_arg_7$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_16$1 == _abstracted_call_arg_16$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_17$1 == _abstracted_call_arg_17$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_18$1 == _abstracted_call_arg_18$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_19$1 == _abstracted_call_arg_19$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_20$1 == _abstracted_call_arg_20$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_21$1 == _abstracted_call_arg_21$2 ) ,  (  p2$1 && p2$2 ==> _abstracted_call_arg_22$1 == _abstracted_call_arg_22$2 ) ,  (  !_WRITE_HAS_OCCURRED_$$frontier ) ,  (  _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v18$1 ) ,  (  !_WRITE_HAS_OCCURRED_$$visited ) ,  (  !_ATOMIC_HAS_OCCURRED_$$visited ) ,  (  !_READ_HAS_OCCURRED_$$cost ) ,  (  !_ATOMIC_HAS_OCCURRED_$$cost ) ,  (  !_READ_HAS_OCCURRED_$$b_q ) ,  (  !_WRITE_HAS_OCCURRED_$$b_q ) ,  (  _READ_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$b_q2 ) ,  (  !_WRITE_HAS_OCCURRED_$$b_q2 ) ,  (  _READ_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == v16$1 ) ,  (  !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ) ,  (  !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ) ,  (  !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ) ,  (  _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0 ) ,  (  _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0 ) ,  (  _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0 ) ,  (  !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ) ,  (  !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ) ,  (  _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0 ) ,  (  _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v3$1 := (if p2$1 then v0$1 == 0 else v3$1);
    v3$2 := (if p2$2 then v0$2 == 0 else v3$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
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
    p29$1 := false;
    p29$2 := false;
    p4$1 := (if p2$1 && v3$1 then v3$1 else p4$1);
    p4$2 := (if p2$2 && v3$2 then v3$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_21$1 := (if p4$1 then _HAVOC_int$1 else _abstracted_call_arg_21$1);
    _abstracted_call_arg_21$2 := (if p4$2 then _HAVOC_int$2 else _abstracted_call_arg_21$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(p4$1, 0, 0, _abstracted_call_arg_21$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$BFS_kernel_one_block.b_q_length(p4$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_22$1 := (if p4$1 then _HAVOC_int$1 else _abstracted_call_arg_22$1);
    _abstracted_call_arg_22$2 := (if p4$2 then _HAVOC_int$2 else _abstracted_call_arg_22$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(p4$1, 0, 0, _abstracted_call_arg_22$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$BFS_kernel_one_block.b_offset(p4$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_one_block.b_offset"} true;
    goto __partitioned_block_$3_1;

  __partitioned_block_$3_1:
    call {:sourceloc_num 13} $bugle_barrier_duplicated_1(-1, -1, p2$1, p2$2);
    v4$1 := (if p2$1 then BV32_ULT(v0$1, $f_len.0$1) else v4$1);
    v4$2 := (if p2$2 then BV32_ULT(v0$2, $f_len.0$2) else v4$2);
    p6$1 := (if p2$1 && v4$1 then v4$1 else p6$1);
    p6$2 := (if p2$2 && v4$2 then v4$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$b_q(p6$1, v0$1, $$b_q[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$b_q(p6$2, v0$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v5$1 := (if p6$1 then $$b_q[1bv1][v0$1] else v5$1);
    v5$2 := (if p6$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_16$1 := (if p6$1 then _HAVOC_int$1 else _abstracted_call_arg_16$1);
    _abstracted_call_arg_16$2 := (if p6$2 then _HAVOC_int$2 else _abstracted_call_arg_16$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$visited(p6$1, v5$1, 0, _abstracted_call_arg_16$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(p6$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$visited(p6$2, v5$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$visited"} true;
    v6$1 := (if p6$1 then $$edgeArray[v5$1] else v6$1);
    v6$2 := (if p6$2 then $$edgeArray[v5$2] else v6$2);
    v7$1 := (if p6$1 then $$edgeArray[BV32_ADD(v5$1, 1)] else v7$1);
    v7$2 := (if p6$2 then $$edgeArray[BV32_ADD(v5$2, 1)] else v7$2);
    $offset.0$1 := (if p6$1 then v6$1 else $offset.0$1);
    $offset.0$2 := (if p6$2 then v6$2 else $offset.0$2);
    p7$1 := (if p6$1 then true else p7$1);
    p7$2 := (if p6$2 then true else p7$2);
    _WRITE_HAS_OCCURRED_$$frontier$ghost$$7 := _WRITE_HAS_OCCURRED_$$frontier;
    _ATOMIC_HAS_OCCURRED_$$visited$ghost$$7 := _ATOMIC_HAS_OCCURRED_$$visited;
    _READ_HAS_OCCURRED_$$cost$ghost$$7 := _READ_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$cost$ghost$$7 := _ATOMIC_HAS_OCCURRED_$$cost;
    _WRITE_HAS_OCCURRED_$$b_q2$ghost$$7 := _WRITE_HAS_OCCURRED_$$b_q2;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$7 := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$7 := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v18$1 ) ,  (  !p6$1 ==> _WRITE_HAS_OCCURRED_$$frontier$ghost$$7 == _WRITE_HAS_OCCURRED_$$frontier ) ,  (  !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$visited$ghost$$7 == _ATOMIC_HAS_OCCURRED_$$visited ) ,  (  !p6$1 ==> _READ_HAS_OCCURRED_$$cost$ghost$$7 == _READ_HAS_OCCURRED_$$cost ) ,  (  !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$cost$ghost$$7 == _ATOMIC_HAS_OCCURRED_$$cost ) ,  (  _WRITE_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == v16$1 ) ,  (  !p6$1 ==> _WRITE_HAS_OCCURRED_$$b_q2$ghost$$7 == _WRITE_HAS_OCCURRED_$$b_q2 ) ,  (  _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0 ) ,  (  !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$7 == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ) ,  (  _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0 ) ,  (  !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$7 == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p7"} {:dominator_predicate "p6"} true;
    assert p7$1 ==> p2$1;
    assert p7$2 ==> p2$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  ( p7$1 ==> $offset.0$1 mod 1 == v6$1 mod 1 )  && ( p7$2 ==> $offset.0$2 mod 1 == v6$2 mod 1 ) ,  ( p7$1 ==> BV32_SLE($offset.0$1, v6$1) )  && ( p7$2 ==> BV32_SLE($offset.0$2, v6$2) ) ,  ( p7$1 ==> BV32_SGE($offset.0$1, v6$1) )  && ( p7$2 ==> BV32_SGE($offset.0$2, v6$2) ) ,  ( p7$1 ==> BV32_ULE($offset.0$1, v6$1) )  && ( p7$2 ==> BV32_ULE($offset.0$2, v6$2) ) ,  ( p7$1 ==> BV32_UGE($offset.0$1, v6$1) )  && ( p7$2 ==> BV32_UGE($offset.0$2, v6$2) ) ,  ( p7$1 ==> p7$1 ==> BV32_ULT(local_id_x$1, $f_len.0$1) )  && ( p7$2 ==> p7$2 ==> BV32_ULT(local_id_x$2, $f_len.0$2) ) ,  (  BV32_ULT(local_id_x$1, $f_len.0$1) && BV32_ULT($offset.0$1, v7$1) ==> p7$1 )  && (  BV32_ULT(local_id_x$2, $f_len.0$2) && BV32_ULT($offset.0$2, v7$2) ==> p7$2 ) ,  (  _READ_HAS_OCCURRED_$$cost ==> BV32_ULT(local_id_x$1, $f_len.0$1) ) ,  (  _WRITE_HAS_OCCURRED_$$frontier ==> BV32_ULT(local_id_x$1, $f_len.0$1) ) ,  (  _WRITE_HAS_OCCURRED_$$b_q2 ==> BV32_ULT(local_id_x$1, $f_len.0$1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 19} p7$1 ==> true;
    v8$1 := (if p7$1 then BV32_ULT($offset.0$1, v7$1) else v8$1);
    v8$2 := (if p7$2 then BV32_ULT($offset.0$2, v7$2) else v8$2);
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
    p8$1 := (if p7$1 && v8$1 then v8$1 else p8$1);
    p8$2 := (if p7$2 && v8$2 then v8$2 else p8$2);
    p7$1 := (if p7$1 && !v8$1 then v8$1 else p7$1);
    p7$2 := (if p7$2 && !v8$2 then v8$2 else p7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p8$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p8$2 then _HAVOC_int$2 else v9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_17$1 := (if p8$1 then _HAVOC_int$1 else _abstracted_call_arg_17$1);
    _abstracted_call_arg_17$2 := (if p8$2 then _HAVOC_int$2 else _abstracted_call_arg_17$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$cost(p8$1, v5$1, _abstracted_call_arg_17$1);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 22} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_18$1 := (if p8$1 then _HAVOC_int$1 else _abstracted_call_arg_18$1);
    _abstracted_call_arg_18$2 := (if p8$2 then _HAVOC_int$2 else _abstracted_call_arg_18$2);
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$cost(p8$2, v5$2, _abstracted_call_arg_18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p8$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p8$2 then _HAVOC_int$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_ATOMIC_$$cost(p8$1, BV32_SDIV(BV32_MUL(v9$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 23} _CHECK_ATOMIC_$$cost(p8$2, BV32_SDIV(BV32_MUL(v9$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$cost"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p8$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p8$2 then _HAVOC_int$2 else v11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_19$1 := (if p8$1 then _HAVOC_int$1 else _abstracted_call_arg_19$1);
    _abstracted_call_arg_19$2 := (if p8$2 then _HAVOC_int$2 else _abstracted_call_arg_19$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$cost(p8$1, v5$1, _abstracted_call_arg_19$1);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 24} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_20$1 := (if p8$1 then _HAVOC_int$1 else _abstracted_call_arg_20$1);
    _abstracted_call_arg_20$2 := (if p8$2 then _HAVOC_int$2 else _abstracted_call_arg_20$2);
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$cost(p8$2, v5$2, _abstracted_call_arg_20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p8$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p8$2 then _HAVOC_int$2 else v12$2);
    v13$1 := (if p8$1 then BV32_UGT(v11$1, BV32_ADD(v12$1, 1)) else v13$1);
    v13$2 := (if p8$2 then BV32_UGT(v11$2, BV32_ADD(v12$2, 1)) else v13$2);
    p10$1 := (if p8$1 && v13$1 then v13$1 else p10$1);
    p10$2 := (if p8$2 && v13$2 then v13$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_ATOMIC_$$visited(p10$1, BV32_SDIV(BV32_MUL(v9$1, 4), 4));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 26} _CHECK_ATOMIC_$$visited(p10$2, BV32_SDIV(BV32_MUL(v9$2, 4), 4));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$visited"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p10$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p10$2 then _HAVOC_int$2 else v14$2);
    v15$1 := (if p10$1 then v14$1 == 0 else v15$1);
    v15$2 := (if p10$2 then v14$2 == 0 else v15$2);
    p12$1 := (if p10$1 && v15$1 then v15$1 else p12$1);
    p12$2 := (if p10$2 && v15$2 then v15$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(p12$1, 0);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 28} _CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length(p12$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p12$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p12$2 then _HAVOC_int$2 else v16$2);
    v17$1 := (if p12$1 then BV32_ULT(v16$1, $max_local_mem) else v17$1);
    v17$2 := (if p12$2 then BV32_ULT(v16$2, $max_local_mem) else v17$2);
    p14$1 := (if p12$1 && v17$1 then v17$1 else p14$1);
    p14$2 := (if p12$2 && v17$2 then v17$2 else p14$2);
    p13$1 := (if p12$1 && !v17$1 then !v17$1 else p13$1);
    p13$2 := (if p12$2 && !v17$2 then !v17$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(p13$1, 0);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 32} _CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset(p13$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p13$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p13$2 then _HAVOC_int$2 else v18$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$frontier(p13$1, v18$1, v9$1, $$frontier[v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p13$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$frontier(p13$2, v18$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[v18$1] := (if p13$1 then v9$1 else $$frontier[v18$1]);
    $$frontier[v18$2] := (if p13$2 then v9$2 else $$frontier[v18$2]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$b_q2(p14$1, v16$1, v9$1, $$b_q2[1bv1][v16$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(p14$2, v16$2);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$b_q2(p14$2, v16$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q2"} true;
    $$b_q2[1bv1][v16$1] := (if p14$1 then v9$1 else $$b_q2[1bv1][v16$1]);
    $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v16$2] := (if p14$2 then v9$2 else $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v16$2]);
    $offset.0$1 := (if p8$1 then BV32_ADD($offset.0$1, 1) else $offset.0$1);
    $offset.0$2 := (if p8$2 then BV32_ADD($offset.0$2, 1) else $offset.0$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $7.backedge, __partitioned_block_$7.tail_0;

  __partitioned_block_$7.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$7.tail_1;

  __partitioned_block_$7.tail_1:
    call {:sourceloc_num 39} $bugle_barrier_duplicated_2(-1, -1, p2$1, p2$2);
    v19$1 := (if p2$1 then BV32_ULT(v0$1, $max_local_mem) else v19$1);
    v19$2 := (if p2$2 then BV32_ULT(v0$2, $max_local_mem) else v19$2);
    p16$1 := (if p2$1 && v19$1 then v19$1 else p16$1);
    p16$2 := (if p2$2 && v19$2 then v19$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$b_q2(p16$1, v0$1, $$b_q2[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$b_q2(p16$2, v0$2, $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q2"} true;
    v20$1 := (if p16$1 then $$b_q2[1bv1][v0$1] else v20$1);
    v20$2 := (if p16$2 then $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v20$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$b_q(p16$1, v0$1, v20$1, $$b_q[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p16$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$b_q(p16$2, v0$2, v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v0$1] := (if p16$1 then v20$1 else $$b_q[1bv1][v0$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p16$2 then v20$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$7.tail_2;

  __partitioned_block_$7.tail_2:
    call {:sourceloc_num 44} $bugle_barrier_duplicated_3(-1, -1, p2$1, p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_0$1 := (if p2$1 then _HAVOC_int$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p2$2 then _HAVOC_int$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p2$1, 0, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 45} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_1$1 := (if p2$1 then _HAVOC_int$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p2$2 then _HAVOC_int$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p2$2, 0, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p2$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p2$2 then _HAVOC_int$2 else v21$2);
    v22$1 := (if p2$1 then v21$1 == 0 else v22$1);
    v22$2 := (if p2$2 then v21$2 == 0 else v22$2);
    p27$1 := (if p2$1 && v22$1 then v22$1 else p27$1);
    p27$2 := (if p2$2 && v22$2 then v22$2 else p27$2);
    p2$1 := (if p2$1 && v22$1 then !v22$1 else p2$1);
    p2$2 := (if p2$2 && v22$2 then !v22$2 else p2$2);
    p17$1 := (if p2$1 && !v22$1 then !v22$1 else p17$1);
    p17$2 := (if p2$2 && !v22$2 then !v22$2 else p17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_2$1 := (if p17$1 then _HAVOC_int$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p17$2 then _HAVOC_int$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p17$1, 0, _abstracted_call_arg_2$1);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 51} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_3$1 := (if p17$1 then _HAVOC_int$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p17$2 then _HAVOC_int$2 else _abstracted_call_arg_3$2);
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p17$2, 0, _abstracted_call_arg_3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p17$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p17$2 then _HAVOC_int$2 else v24$2);
    v25$1 := (if p17$1 then BV32_UGT(v24$1, group_size_x) else v25$1);
    v25$2 := (if p17$2 then BV32_UGT(v24$2, group_size_x) else v25$2);
    p22$1 := (if p17$1 && v25$1 then v25$1 else p22$1);
    p22$2 := (if p17$2 && v25$2 then v25$2 else p22$2);
    p2$1 := (if p17$1 && v25$1 then !v25$1 else p2$1);
    p2$2 := (if p17$2 && v25$2 then !v25$2 else p2$2);
    p18$1 := (if p17$1 && !v25$1 then !v25$1 else p18$1);
    p18$2 := (if p17$2 && !v25$2 then !v25$2 else p18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_4$1 := (if p18$1 then _HAVOC_int$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p18$2 then _HAVOC_int$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p18$1, 0, _abstracted_call_arg_4$1);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 53} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_5$1 := (if p18$1 then _HAVOC_int$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p18$2 then _HAVOC_int$2 else _abstracted_call_arg_5$2);
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p18$2, 0, _abstracted_call_arg_5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p18$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p18$2 then _HAVOC_int$2 else v26$2);
    v27$1 := (if p18$1 then BV32_UGT(v26$1, $max_local_mem) else v27$1);
    v27$2 := (if p18$2 then BV32_UGT(v26$2, $max_local_mem) else v27$2);
    p22$1 := (if p18$1 && v27$1 then v27$1 else p22$1);
    p22$2 := (if p18$2 && v27$2 then v27$2 else p22$2);
    p2$1 := (if p18$1 && v27$1 then !v27$1 else p2$1);
    p2$2 := (if p18$2 && v27$2 then !v27$2 else p2$2);
    p19$1 := (if p18$1 && !v27$1 then !v27$1 else p19$1);
    p19$2 := (if p18$2 && !v27$2 then !v27$2 else p19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_6$1 := (if p19$1 then _HAVOC_int$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p19$2 then _HAVOC_int$2 else _abstracted_call_arg_6$2);
    call {:sourceloc} {:sourceloc_num 67} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p19$1, 0, _abstracted_call_arg_6$1);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 67} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_7$1 := (if p19$1 then _HAVOC_int$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p19$2 then _HAVOC_int$2 else _abstracted_call_arg_7$2);
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 67} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p19$2, 0, _abstracted_call_arg_7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p19$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p19$2 then _HAVOC_int$2 else v35$2);
    goto __partitioned_block_$7.tail_3;

  __partitioned_block_$7.tail_3:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_4(-1, -1, p19$1, p19$2);
    $f_len.0$1 := (if p19$1 then v35$1 else $f_len.0$1);
    $f_len.0$2 := (if p19$2 then v35$2 else $f_len.0$2);
    p2$1 := (if p19$1 then true else p2$1);
    p2$2 := (if p19$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    p22$1 := (if p20$1 then true else p22$1);
    p22$2 := (if p20$2 then true else p22$2);
    p22$1 := (if p21$1 then true else p22$1);
    p22$2 := (if p21$2 then true else p22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_8$1 := (if p22$1 then _HAVOC_int$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p22$2 then _HAVOC_int$2 else _abstracted_call_arg_8$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p22$1, 0, _abstracted_call_arg_8$1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 55} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_9$1 := (if p22$1 then _HAVOC_int$1 else _abstracted_call_arg_9$1);
    _abstracted_call_arg_9$2 := (if p22$2 then _HAVOC_int$2 else _abstracted_call_arg_9$2);
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p22$2, 0, _abstracted_call_arg_9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p22$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p22$2 then _HAVOC_int$2 else v28$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_10$1 := (if p22$1 then _HAVOC_int$1 else _abstracted_call_arg_10$1);
    _abstracted_call_arg_10$2 := (if p22$2 then _HAVOC_int$2 else _abstracted_call_arg_10$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$BFS_kernel_one_block.b_offset(p22$1, 0, _abstracted_call_arg_10$1);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 56} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_11$1 := (if p22$1 then _HAVOC_int$1 else _abstracted_call_arg_11$1);
    _abstracted_call_arg_11$2 := (if p22$2 then _HAVOC_int$2 else _abstracted_call_arg_11$2);
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$BFS_kernel_one_block.b_offset(p22$2, 0, _abstracted_call_arg_11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p22$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p22$2 then _HAVOC_int$2 else v29$2);
    v30$1 := (if p22$1 then BV32_ULT(v0$1, BV32_SUB(v28$1, v29$1)) else v30$1);
    v30$2 := (if p22$2 then BV32_ULT(v0$2, BV32_SUB(v28$2, v29$2)) else v30$2);
    p23$1 := (if p22$1 && v30$1 then v30$1 else p23$1);
    p23$2 := (if p22$2 && v30$2 then v30$2 else p23$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$b_q(p23$1, v0$1, $$b_q[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$b_q(p23$2, v0$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v31$1 := (if p23$1 then $$b_q[1bv1][v0$1] else v31$1);
    v31$2 := (if p23$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v31$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_14$1 := (if p23$1 then _HAVOC_int$1 else _abstracted_call_arg_14$1);
    _abstracted_call_arg_14$2 := (if p23$2 then _HAVOC_int$2 else _abstracted_call_arg_14$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$BFS_kernel_one_block.b_offset(p23$1, 0, _abstracted_call_arg_14$1);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 59} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_15$1 := (if p23$1 then _HAVOC_int$1 else _abstracted_call_arg_15$1);
    _abstracted_call_arg_15$2 := (if p23$2 then _HAVOC_int$2 else _abstracted_call_arg_15$2);
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$BFS_kernel_one_block.b_offset(p23$2, 0, _abstracted_call_arg_15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p23$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p23$2 then _HAVOC_int$2 else v32$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$frontier(p23$1, BV32_ADD(v32$1, v0$1), v31$1, $$frontier[BV32_ADD(v32$1, v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p23$2, BV32_ADD(v32$2, v0$2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$frontier(p23$2, BV32_ADD(v32$2, v0$2), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[BV32_ADD(v32$1, v0$1)] := (if p23$1 then v31$1 else $$frontier[BV32_ADD(v32$1, v0$1)]);
    $$frontier[BV32_ADD(v32$2, v0$2)] := (if p23$2 then v31$2 else $$frontier[BV32_ADD(v32$2, v0$2)]);
    v33$1 := (if p22$1 then v0$1 == 0 else v33$1);
    v33$2 := (if p22$2 then v0$2 == 0 else v33$2);
    p25$1 := (if p22$1 && v33$1 then v33$1 else p25$1);
    p25$2 := (if p22$2 && v33$2 then v33$2 else p25$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_12$1 := (if p25$1 then _HAVOC_int$1 else _abstracted_call_arg_12$1);
    _abstracted_call_arg_12$2 := (if p25$2 then _HAVOC_int$2 else _abstracted_call_arg_12$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p25$1, 0, _abstracted_call_arg_12$1);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 63} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_13$1 := (if p25$1 then _HAVOC_int$1 else _abstracted_call_arg_13$1);
    _abstracted_call_arg_13$2 := (if p25$2 then _HAVOC_int$2 else _abstracted_call_arg_13$2);
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p25$2, 0, _abstracted_call_arg_13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p25$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p25$2 then _HAVOC_int$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$frontier_length(p25$1, 0, v34$1, $$frontier_length[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(p25$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$frontier_length(p25$2, 0, v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier_length"} true;
    $$frontier_length[0] := (if p25$1 then v34$1 else $$frontier_length[0]);
    $$frontier_length[0] := (if p25$2 then v34$2 else $$frontier_length[0]);
    v23$1 := (if p27$1 then v0$1 == 0 else v23$1);
    v23$2 := (if p27$2 then v0$2 == 0 else v23$2);
    p28$1 := (if p27$1 && v23$1 then v23$1 else p28$1);
    p28$2 := (if p27$2 && v23$2 then v23$2 else p28$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$frontier_length(p28$1, 0, 0, $$frontier_length[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(p28$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$frontier_length(p28$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier_length"} true;
    $$frontier_length[0] := (if p28$1 then 0 else $$frontier_length[0]);
    $$frontier_length[0] := (if p28$2 then 0 else $$frontier_length[0]);
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$3_0;

  $7.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $7;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

























const _WATCHED_VALUE_$$frontier: int;

procedure {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _READ_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_READ_$$frontier(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _WRITE_HAS_OCCURRED_$$frontier);
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



procedure _CHECK_WRITE_$$frontier(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_ATOMIC_$$frontier(_P: bool, _offset: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



const _WATCHED_VALUE_$$visited: int;

procedure {:inline 1} _LOG_READ_$$visited(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$visited;



implementation {:inline 1} _LOG_READ_$$visited(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then true else _READ_HAS_OCCURRED_$$visited);
    return;
}



procedure _CHECK_READ_$$visited(_P: bool, _offset: int, _value: int);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$visited);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$visited: bool;

procedure {:inline 1} _LOG_WRITE_$$visited(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited;



implementation {:inline 1} _LOG_WRITE_$$visited(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then true else _WRITE_HAS_OCCURRED_$$visited);
    _WRITE_READ_BENIGN_FLAG_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$visited);
    return;
}



procedure _CHECK_WRITE_$$visited(_P: bool, _offset: int, _value: int);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited != _value);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited != _value);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$visited(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$visited;



implementation {:inline 1} _LOG_ATOMIC_$$visited(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$visited);
    return;
}



procedure _CHECK_ATOMIC_$$visited(_P: bool, _offset: int);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$visited;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$visited := (if _P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$visited);
    return;
}



const _WATCHED_VALUE_$$cost: int;

procedure {:inline 1} _LOG_READ_$$cost(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$cost;



implementation {:inline 1} _LOG_READ_$$cost(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then true else _READ_HAS_OCCURRED_$$cost);
    return;
}



procedure _CHECK_READ_$$cost(_P: bool, _offset: int, _value: int);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cost);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cost: bool;

procedure {:inline 1} _LOG_WRITE_$$cost(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$cost, _WRITE_READ_BENIGN_FLAG_$$cost;



implementation {:inline 1} _LOG_WRITE_$$cost(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then true else _WRITE_HAS_OCCURRED_$$cost);
    _WRITE_READ_BENIGN_FLAG_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cost);
    return;
}



procedure _CHECK_WRITE_$$cost(_P: bool, _offset: int, _value: int);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost != _value);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost != _value);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cost(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$cost;



implementation {:inline 1} _LOG_ATOMIC_$$cost(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cost);
    return;
}



procedure _CHECK_ATOMIC_$$cost(_P: bool, _offset: int);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cost(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$cost;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cost(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cost := (if _P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cost);
    return;
}



const _WATCHED_VALUE_$$edgeArray: int;

procedure {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _READ_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_READ_$$edgeArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArray);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArray: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$edgeArray, _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _WRITE_HAS_OCCURRED_$$edgeArray);
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



procedure _CHECK_WRITE_$$edgeArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArray(_P: bool, _offset: int);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



const _WATCHED_VALUE_$$edgeArrayAux: int;

procedure {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _READ_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_READ_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$edgeArrayAux, _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _WRITE_HAS_OCCURRED_$$edgeArrayAux);
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



procedure _CHECK_WRITE_$$edgeArrayAux(_P: bool, _offset: int, _value: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArrayAux(_P: bool, _offset: int);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



const _WATCHED_VALUE_$$frontier_length: int;

procedure {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _READ_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_READ_$$frontier_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier_length);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier_length: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _WRITE_HAS_OCCURRED_$$frontier_length);
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



procedure _CHECK_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_ATOMIC_$$frontier_length(_P: bool, _offset: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



const _WATCHED_VALUE_$$b_q: int;

procedure {:inline 1} _LOG_READ_$$b_q(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$b_q;



implementation {:inline 1} _LOG_READ_$$b_q(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then true else _READ_HAS_OCCURRED_$$b_q);
    return;
}



procedure _CHECK_READ_$$b_q(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b_q && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$b_q: bool;

procedure {:inline 1} _LOG_WRITE_$$b_q(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q;



implementation {:inline 1} _LOG_WRITE_$$b_q(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then true else _WRITE_HAS_OCCURRED_$$b_q);
    _WRITE_READ_BENIGN_FLAG_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b_q);
    return;
}



procedure _CHECK_WRITE_$$b_q(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$b_q(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$b_q;



implementation {:inline 1} _LOG_ATOMIC_$$b_q(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b_q);
    return;
}



procedure _CHECK_ATOMIC_$$b_q(_P: bool, _offset: int);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$b_q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b_q := (if _P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b_q);
    return;
}



const _WATCHED_VALUE_$$b_q2: int;

procedure {:inline 1} _LOG_READ_$$b_q2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$b_q2;



implementation {:inline 1} _LOG_READ_$$b_q2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then true else _READ_HAS_OCCURRED_$$b_q2);
    return;
}



procedure _CHECK_READ_$$b_q2(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b_q2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$b_q2: bool;

procedure {:inline 1} _LOG_WRITE_$$b_q2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2;



implementation {:inline 1} _LOG_WRITE_$$b_q2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then true else _WRITE_HAS_OCCURRED_$$b_q2);
    _WRITE_READ_BENIGN_FLAG_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b_q2);
    return;
}



procedure _CHECK_WRITE_$$b_q2(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$b_q2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$b_q2;



implementation {:inline 1} _LOG_ATOMIC_$$b_q2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b_q2);
    return;
}



procedure _CHECK_ATOMIC_$$b_q2(_P: bool, _offset: int);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$b_q2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b_q2 := (if _P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b_q2);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length: int;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset: int;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int, _value: int);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}






























































































































































