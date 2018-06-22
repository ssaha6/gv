type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "g_graph_nodes"} {:global} $$g_graph_nodes: [bv32]bv32;

axiom {:array_info "$$g_graph_nodes"} {:global} {:elem_width 32} {:source_name "g_graph_nodes"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_nodes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_nodes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_nodes: bool;

var {:source_name "g_graph_edges"} {:global} $$g_graph_edges: [bv32]bv32;

axiom {:array_info "$$g_graph_edges"} {:global} {:elem_width 32} {:source_name "g_graph_edges"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_edges: bool;

var {:source_name "g_graph_mask"} {:global} $$g_graph_mask: [bv32]bv8;

axiom {:array_info "$$g_graph_mask"} {:global} {:elem_width 8} {:source_name "g_graph_mask"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_mask: bool;

var {:source_name "g_graph_visited"} {:global} $$g_graph_visited: [bv32]bv8;

axiom {:array_info "$$g_graph_visited"} {:global} {:elem_width 8} {:source_name "g_graph_visited"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_visited: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_visited: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_visited: bool;

var {:source_name "g_cost"} {:global} $$g_cost: [bv32]bv32;

axiom {:array_info "$$g_cost"} {:global} {:elem_width 32} {:source_name "g_cost"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_cost: bool;

var {:source_name "g_over"} {:global} $$g_over: [bv32]bv8;

axiom {:array_info "$$g_over"} {:global} {:elem_width 8} {:source_name "g_over"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_over: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_over: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_over: bool;

const _WATCHED_OFFSET: bv32;

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

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

procedure {:source_name "Kernel"} {:kernel} $_Z6KernelP4NodePiPbS2_S1_S2_i($no_of_nodes: bv32);
  requires !_READ_HAS_OCCURRED_$$g_graph_nodes && !_WRITE_HAS_OCCURRED_$$g_graph_nodes && !_ATOMIC_HAS_OCCURRED_$$g_graph_nodes;
  requires !_READ_HAS_OCCURRED_$$g_graph_edges && !_WRITE_HAS_OCCURRED_$$g_graph_edges && !_ATOMIC_HAS_OCCURRED_$$g_graph_edges;
  requires !_READ_HAS_OCCURRED_$$g_graph_mask && !_WRITE_HAS_OCCURRED_$$g_graph_mask && !_ATOMIC_HAS_OCCURRED_$$g_graph_mask;
  requires !_READ_HAS_OCCURRED_$$g_graph_visited && !_WRITE_HAS_OCCURRED_$$g_graph_visited && !_ATOMIC_HAS_OCCURRED_$$g_graph_visited;
  requires !_READ_HAS_OCCURRED_$$g_cost && !_WRITE_HAS_OCCURRED_$$g_cost && !_ATOMIC_HAS_OCCURRED_$$g_cost;
  requires !_READ_HAS_OCCURRED_$$g_over && !_WRITE_HAS_OCCURRED_$$g_over && !_ATOMIC_HAS_OCCURRED_$$g_over;
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
  modifies _READ_HAS_OCCURRED_$$g_graph_mask, _WRITE_HAS_OCCURRED_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask, _WRITE_HAS_OCCURRED_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited, _READ_HAS_OCCURRED_$$g_graph_visited, _READ_HAS_OCCURRED_$$g_cost, _WRITE_HAS_OCCURRED_$$g_cost, _WRITE_READ_BENIGN_FLAG_$$g_cost, _WRITE_READ_BENIGN_FLAG_$$g_cost, _WRITE_HAS_OCCURRED_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over;



implementation {:source_name "Kernel"} {:kernel} $_Z6KernelP4NodePiPbS2_S1_S2_i($no_of_nodes: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var v2$1: bv8;
  var v2$2: bv8;
  var v0$1: bv32;
  var v0$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v9$1: bv8;
  var v9$2: bv8;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v10$1: bool;
  var v10$2: bool;
  var v7$1: bool;
  var v7$2: bool;
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
  var _WRITE_HAS_OCCURRED_$$g_graph_mask$ghost$$for.cond: bool;
  var _READ_HAS_OCCURRED_$$g_graph_visited$ghost$$for.cond: bool;
  var _READ_HAS_OCCURRED_$$g_cost$ghost$$for.cond: bool;
  var _WRITE_HAS_OCCURRED_$$g_cost$ghost$$for.cond: bool;
  var _WRITE_HAS_OCCURRED_$$g_over$ghost$$for.cond: bool;


  $entry:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $no_of_nodes);
    v1$2 := BV32_SLT(v0$2, $no_of_nodes);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$g_graph_mask(p0$1, v0$1, $$g_graph_mask[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$g_graph_mask(p0$2, v0$2, $$g_graph_mask[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_graph_mask"} true;
    v2$1 := (if p0$1 then $$g_graph_mask[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$g_graph_mask[v0$2] else v2$2);
    v3$1 := (if p0$1 then v2$1[1:0] == 1bv1 else v3$1);
    v3$2 := (if p0$2 then v2$2[1:0] == 1bv1 else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$g_graph_mask(p1$1, v0$1, 0bv8, $$g_graph_mask[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$g_graph_mask(p1$2, v0$2, 0bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_graph_mask"} true;
    $$g_graph_mask[v0$1] := (if p1$1 then 0bv8 else $$g_graph_mask[v0$1]);
    $$g_graph_mask[v0$2] := (if p1$2 then 0bv8 else $$g_graph_mask[v0$2]);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$g_graph_visited(p1$1, v0$1, 1bv8, $$g_graph_visited[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$g_graph_visited(p1$2, v0$2, 1bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_graph_visited"} true;
    $$g_graph_visited[v0$1] := (if p1$1 then 1bv8 else $$g_graph_visited[v0$1]);
    $$g_graph_visited[v0$2] := (if p1$2 then 1bv8 else $$g_graph_visited[v0$2]);
    v4$1 := (if p1$1 then $$g_graph_nodes[BV32_MUL(v0$1, 2bv32)] else v4$1);
    v4$2 := (if p1$2 then $$g_graph_nodes[BV32_MUL(v0$2, 2bv32)] else v4$2);
    $i.0$1 := (if p1$1 then v4$1 else $i.0$1);
    $i.0$2 := (if p1$2 then v4$2 else $i.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$g_graph_mask$ghost$$for.cond := _WRITE_HAS_OCCURRED_$$g_graph_mask;
    _READ_HAS_OCCURRED_$$g_graph_visited$ghost$$for.cond := _READ_HAS_OCCURRED_$$g_graph_visited;
    _READ_HAS_OCCURRED_$$g_cost$ghost$$for.cond := _READ_HAS_OCCURRED_$$g_cost;
    _WRITE_HAS_OCCURRED_$$g_cost$ghost$$for.cond := _WRITE_HAS_OCCURRED_$$g_cost;
    _WRITE_HAS_OCCURRED_$$g_over$ghost$$for.cond := _WRITE_HAS_OCCURRED_$$g_over;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b23 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$g_over$ghost$$for.cond == _WRITE_HAS_OCCURRED_$$g_over;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b22 ==> _WRITE_HAS_OCCURRED_$$g_over ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b21 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$g_cost$ghost$$for.cond == _WRITE_HAS_OCCURRED_$$g_cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b20 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$g_cost$ghost$$for.cond == _READ_HAS_OCCURRED_$$g_cost;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b19 ==> _READ_HAS_OCCURRED_$$g_cost ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1);
    assert {:tag "disabledMaintainsInstrumentation"} _b18 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$g_graph_visited$ghost$$for.cond == _READ_HAS_OCCURRED_$$g_graph_visited;
    assert {:tag "disabledMaintainsInstrumentation"} _b17 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$g_graph_mask$ghost$$for.cond == _WRITE_HAS_OCCURRED_$$g_graph_mask;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$g_over ==> v2$1[1:0] == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _WRITE_HAS_OCCURRED_$$g_over ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _WRITE_HAS_OCCURRED_$$g_graph_mask ==> v2$1[1:0] == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _WRITE_HAS_OCCURRED_$$g_graph_mask ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b12 ==> _WRITE_HAS_OCCURRED_$$g_cost ==> v2$1[1:0] == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b11 ==> _WRITE_HAS_OCCURRED_$$g_cost ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b10 ==> _READ_HAS_OCCURRED_$$g_graph_visited ==> v2$1[1:0] == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b9 ==> _READ_HAS_OCCURRED_$$g_graph_visited ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _READ_HAS_OCCURRED_$$g_cost ==> v2$1[1:0] == 1bv1;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$g_cost ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes) && v2$1[1:0] == 1bv1 && BV32_SLT($i.0$1, BV32_ADD(v5$1, v6$1)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), local_id_x$2), $no_of_nodes) && v2$2[1:0] == 1bv1 && BV32_SLT($i.0$2, BV32_ADD(v5$2, v6$2)) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b5 ==> p2$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), local_id_x$1), $no_of_nodes) && v2$1[1:0] == 1bv1;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b5 ==> p2$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), local_id_x$2), $no_of_nodes) && v2$2[1:0] == 1bv1;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_UGE($i.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_UGE($i.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_ULE($i.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_ULE($i.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SGE($i.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SGE($i.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b1 ==> BV32_SLE($i.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b1 ==> BV32_SLE($i.0$2, v4$2);
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b0 ==> BV32_SLE(0bv32, $i.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b0 ==> BV32_SLE(0bv32, $i.0$2);
    assert {:block_sourceloc} {:sourceloc_num 7} p2$1 ==> true;
    v5$1 := (if p2$1 then $$g_graph_nodes[BV32_ADD(BV32_MUL(v0$1, 2bv32), 1bv32)] else v5$1);
    v5$2 := (if p2$2 then $$g_graph_nodes[BV32_ADD(BV32_MUL(v0$2, 2bv32), 1bv32)] else v5$2);
    v6$1 := (if p2$1 then $$g_graph_nodes[BV32_MUL(v0$1, 2bv32)] else v6$1);
    v6$2 := (if p2$2 then $$g_graph_nodes[BV32_MUL(v0$2, 2bv32)] else v6$2);
    v7$1 := (if p2$1 then BV32_SLT($i.0$1, BV32_ADD(v5$1, v6$1)) else v7$1);
    v7$2 := (if p2$2 then BV32_SLT($i.0$2, BV32_ADD(v5$2, v6$2)) else v7$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p3$1 := (if p2$1 && v7$1 then v7$1 else p3$1);
    p3$2 := (if p2$2 && v7$2 then v7$2 else p3$2);
    p2$1 := (if p2$1 && !v7$1 then v7$1 else p2$1);
    p2$2 := (if p2$2 && !v7$2 then v7$2 else p2$2);
    v8$1 := (if p3$1 then $$g_graph_edges[$i.0$1] else v8$1);
    v8$2 := (if p3$2 then $$g_graph_edges[$i.0$2] else v8$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$g_graph_visited(p3$1, v8$1, $$g_graph_visited[v8$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$g_graph_visited(p3$2, v8$2, $$g_graph_visited[v8$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_graph_visited"} true;
    v9$1 := (if p3$1 then $$g_graph_visited[v8$1] else v9$1);
    v9$2 := (if p3$2 then $$g_graph_visited[v8$2] else v9$2);
    v10$1 := (if p3$1 then v9$1[1:0] == 1bv1 else v10$1);
    v10$2 := (if p3$2 then v9$2[1:0] == 1bv1 else v10$2);
    p4$1 := (if p3$1 && !v10$1 then !v10$1 else p4$1);
    p4$2 := (if p3$2 && !v10$2 then !v10$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$g_cost(p4$1, v0$1, $$g_cost[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$g_cost(p4$2, v0$2, $$g_cost[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_cost"} true;
    v11$1 := (if p4$1 then $$g_cost[v0$1] else v11$1);
    v11$2 := (if p4$2 then $$g_cost[v0$2] else v11$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$g_cost(p4$1, v8$1, BV32_ADD(v11$1, 1bv32), $$g_cost[v8$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_cost(p4$2, v8$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$g_cost(p4$2, v8$2, BV32_ADD(v11$2, 1bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_cost"} true;
    $$g_cost[v8$1] := (if p4$1 then BV32_ADD(v11$1, 1bv32) else $$g_cost[v8$1]);
    $$g_cost[v8$2] := (if p4$2 then BV32_ADD(v11$2, 1bv32) else $$g_cost[v8$2]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$g_graph_mask(p4$1, v8$1, 1bv8, $$g_graph_mask[v8$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(p4$2, v8$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$g_graph_mask(p4$2, v8$2, 1bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_graph_mask"} true;
    $$g_graph_mask[v8$1] := (if p4$1 then 1bv8 else $$g_graph_mask[v8$1]);
    $$g_graph_mask[v8$2] := (if p4$2 then 1bv8 else $$g_graph_mask[v8$2]);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$g_over(p4$1, 0bv32, 1bv8, $$g_over[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$g_over(p4$2, 0bv32, 1bv8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_over"} true;
    $$g_over[0bv32] := (if p4$1 then 1bv8 else $$g_over[0bv32]);
    $$g_over[0bv32] := (if p4$2 then 1bv8 else $$g_over[0bv32]);
    $i.0$1 := (if p3$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1);
    $i.0$2 := (if p3$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $for.cond.backedge, $for.cond.tail;

  $for.cond.tail:
    assume !p2$1 && !p2$2;
    return;

  $for.cond.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 4bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

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

const _WATCHED_VALUE_$$g_graph_nodes: bv32;

procedure {:inline 1} _LOG_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_graph_nodes;



implementation {:inline 1} _LOG_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then true else _READ_HAS_OCCURRED_$$g_graph_nodes);
    return;
}



procedure _CHECK_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_nodes, _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes;



implementation {:inline 1} _LOG_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_nodes);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
    return;
}



procedure _CHECK_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes != _value);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes != _value);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_nodes;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_nodes);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_nodes(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_nodes(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
    return;
}



const _WATCHED_VALUE_$$g_graph_edges: bv32;

procedure {:inline 1} _LOG_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_graph_edges;



implementation {:inline 1} _LOG_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then true else _READ_HAS_OCCURRED_$$g_graph_edges);
    return;
}



procedure _CHECK_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_edges: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_edges, _WRITE_READ_BENIGN_FLAG_$$g_graph_edges;



implementation {:inline 1} _LOG_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_edges);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
    return;
}



procedure _CHECK_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges != _value);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges != _value);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_edges;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_edges);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_edges(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_edges;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_edges(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_edges := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
    return;
}



const _WATCHED_VALUE_$$g_graph_mask: bv8;

procedure {:inline 1} _LOG_READ_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$g_graph_mask;



implementation {:inline 1} _LOG_READ_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then true else _READ_HAS_OCCURRED_$$g_graph_mask);
    return;
}



procedure _CHECK_READ_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_mask: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask;



implementation {:inline 1} _LOG_WRITE_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_mask);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
    return;
}



procedure _CHECK_WRITE_$$g_graph_mask(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask != _value);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask != _value);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_mask(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_mask;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_mask(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_mask);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_mask(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_mask := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
    return;
}



const _WATCHED_VALUE_$$g_graph_visited: bv8;

procedure {:inline 1} _LOG_READ_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$g_graph_visited;



implementation {:inline 1} _LOG_READ_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then true else _READ_HAS_OCCURRED_$$g_graph_visited);
    return;
}



procedure _CHECK_READ_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_visited: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited;



implementation {:inline 1} _LOG_WRITE_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_visited);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
    return;
}



procedure _CHECK_WRITE_$$g_graph_visited(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited != _value);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited != _value);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_visited(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_visited;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_visited(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_visited);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_visited(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_visited;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_visited := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
    return;
}



const _WATCHED_VALUE_$$g_cost: bv32;

procedure {:inline 1} _LOG_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_cost;



implementation {:inline 1} _LOG_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then true else _READ_HAS_OCCURRED_$$g_cost);
    return;
}



procedure _CHECK_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_cost);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_cost: bool;

procedure {:inline 1} _LOG_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_cost, _WRITE_READ_BENIGN_FLAG_$$g_cost;



implementation {:inline 1} _LOG_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then true else _WRITE_HAS_OCCURRED_$$g_cost);
    _WRITE_READ_BENIGN_FLAG_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_cost);
    return;
}



procedure _CHECK_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost != _value);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost != _value);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_cost(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_cost;



implementation {:inline 1} _LOG_ATOMIC_$$g_cost(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_cost);
    return;
}



procedure _CHECK_ATOMIC_$$g_cost(_P: bool, _offset: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_cost(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_cost;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_cost(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_cost := (if _P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_cost);
    return;
}



const _WATCHED_VALUE_$$g_over: bv8;

procedure {:inline 1} _LOG_READ_$$g_over(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$g_over;



implementation {:inline 1} _LOG_READ_$$g_over(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then true else _READ_HAS_OCCURRED_$$g_over);
    return;
}



procedure _CHECK_READ_$$g_over(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_over);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_over: bool;

procedure {:inline 1} _LOG_WRITE_$$g_over(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over;



implementation {:inline 1} _LOG_WRITE_$$g_over(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then true else _WRITE_HAS_OCCURRED_$$g_over);
    _WRITE_READ_BENIGN_FLAG_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_over);
    return;
}



procedure _CHECK_WRITE_$$g_over(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over != _value);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over != _value);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_over(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_over;



implementation {:inline 1} _LOG_ATOMIC_$$g_over(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_over);
    return;
}



procedure _CHECK_ATOMIC_$$g_over(_P: bool, _offset: bv32);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_over;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_over := (if _P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_over);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;
