҉
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8�
t
Adam/L3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L3/bias/v
m
"Adam/L3/bias/v/Read/ReadVariableOpReadVariableOpAdam/L3/bias/v*
_output_shapes
:*
dtype0
|
Adam/L3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L3/kernel/v
u
$Adam/L3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/L3/kernel/v*
_output_shapes

:*
dtype0
t
Adam/L2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L2/bias/v
m
"Adam/L2/bias/v/Read/ReadVariableOpReadVariableOpAdam/L2/bias/v*
_output_shapes
:*
dtype0
|
Adam/L2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L2/kernel/v
u
$Adam/L2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/L2/kernel/v*
_output_shapes

:*
dtype0
t
Adam/L1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L1/bias/v
m
"Adam/L1/bias/v/Read/ReadVariableOpReadVariableOpAdam/L1/bias/v*
_output_shapes
:*
dtype0
|
Adam/L1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L1/kernel/v
u
$Adam/L1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/L1/kernel/v*
_output_shapes

:*
dtype0
t
Adam/L3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L3/bias/m
m
"Adam/L3/bias/m/Read/ReadVariableOpReadVariableOpAdam/L3/bias/m*
_output_shapes
:*
dtype0
|
Adam/L3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L3/kernel/m
u
$Adam/L3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/L3/kernel/m*
_output_shapes

:*
dtype0
t
Adam/L2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L2/bias/m
m
"Adam/L2/bias/m/Read/ReadVariableOpReadVariableOpAdam/L2/bias/m*
_output_shapes
:*
dtype0
|
Adam/L2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L2/kernel/m
u
$Adam/L2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/L2/kernel/m*
_output_shapes

:*
dtype0
t
Adam/L1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/L1/bias/m
m
"Adam/L1/bias/m/Read/ReadVariableOpReadVariableOpAdam/L1/bias/m*
_output_shapes
:*
dtype0
|
Adam/L1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameAdam/L1/kernel/m
u
$Adam/L1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/L1/kernel/m*
_output_shapes

:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
f
L3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	L3/bias
_
L3/bias/Read/ReadVariableOpReadVariableOpL3/bias*
_output_shapes
:*
dtype0
n
	L3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	L3/kernel
g
L3/kernel/Read/ReadVariableOpReadVariableOp	L3/kernel*
_output_shapes

:*
dtype0
f
L2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	L2/bias
_
L2/bias/Read/ReadVariableOpReadVariableOpL2/bias*
_output_shapes
:*
dtype0
n
	L2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	L2/kernel
g
L2/kernel/Read/ReadVariableOpReadVariableOp	L2/kernel*
_output_shapes

:*
dtype0
f
L1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	L1/bias
_
L1/bias/Read/ReadVariableOpReadVariableOpL1/bias*
_output_shapes
:*
dtype0
n
	L1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	L1/kernel
g
L1/kernel/Read/ReadVariableOpReadVariableOp	L1/kernel*
_output_shapes

:*
dtype0
{
serving_default_L1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_L1_input	L1/kernelL1/bias	L2/kernelL2/bias	L3/kernelL3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_7992

NoOpNoOp
�+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�+
value�+B�+ B�+
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
1
2
3
#4
$5*
.
0
1
2
3
#4
$5*
* 
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 
�
2iter

3beta_1

4beta_2
	5decay
6learning_ratemRmSmTmU#mV$mWvXvYvZv[#v\$v]*

7serving_default* 

0
1*

0
1*
* 
�
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

=trace_0* 

>trace_0* 
YS
VARIABLE_VALUE	L1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEL1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 
YS
VARIABLE_VALUE	L2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEL2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
YS
VARIABLE_VALUE	L3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEL3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

M0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
N	variables
O	keras_api
	Ptotal
	Qcount*

P0
Q1*

N	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/L3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/L3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameL1/kernel/Read/ReadVariableOpL1/bias/Read/ReadVariableOpL2/kernel/Read/ReadVariableOpL2/bias/Read/ReadVariableOpL3/kernel/Read/ReadVariableOpL3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$Adam/L1/kernel/m/Read/ReadVariableOp"Adam/L1/bias/m/Read/ReadVariableOp$Adam/L2/kernel/m/Read/ReadVariableOp"Adam/L2/bias/m/Read/ReadVariableOp$Adam/L3/kernel/m/Read/ReadVariableOp"Adam/L3/bias/m/Read/ReadVariableOp$Adam/L1/kernel/v/Read/ReadVariableOp"Adam/L1/bias/v/Read/ReadVariableOp$Adam/L2/kernel/v/Read/ReadVariableOp"Adam/L2/bias/v/Read/ReadVariableOp$Adam/L3/kernel/v/Read/ReadVariableOp"Adam/L3/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_8231
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	L1/kernelL1/bias	L2/kernelL2/bias	L3/kernelL3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/L1/kernel/mAdam/L1/bias/mAdam/L2/kernel/mAdam/L2/bias/mAdam/L3/kernel/mAdam/L3/bias/mAdam/L1/kernel/vAdam/L1/bias/vAdam/L2/kernel/vAdam/L2/bias/vAdam/L3/kernel/vAdam/L3/bias/v*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_8316��
�	
�
<__inference_L3_layer_call_and_return_conditional_losses_8133

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_model_1_layer_call_fn_8009

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_L3_layer_call_fn_8123

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L3_layer_call_and_return_conditional_losses_7807o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
<__inference_L2_layer_call_and_return_conditional_losses_7791

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_8050

inputs3
!l1_matmul_readvariableop_resource:0
"l1_biasadd_readvariableop_resource:3
!l2_matmul_readvariableop_resource:0
"l2_biasadd_readvariableop_resource:3
!l3_matmul_readvariableop_resource:0
"l3_biasadd_readvariableop_resource:
identity��L1/BiasAdd/ReadVariableOp�L1/MatMul/ReadVariableOp�L2/BiasAdd/ReadVariableOp�L2/MatMul/ReadVariableOp�L3/BiasAdd/ReadVariableOp�L3/MatMul/ReadVariableOpz
L1/MatMul/ReadVariableOpReadVariableOp!l1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0o
	L1/MatMulMatMulinputs L1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L1/BiasAdd/ReadVariableOpReadVariableOp"l1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L1/BiasAddBiasAddL1/MatMul:product:0!L1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
L1/ReluReluL1/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
L2/MatMul/ReadVariableOpReadVariableOp!l2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0~
	L2/MatMulMatMulL1/Relu:activations:0 L2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L2/BiasAdd/ReadVariableOpReadVariableOp"l2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L2/BiasAddBiasAddL2/MatMul:product:0!L2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
L2/ReluReluL2/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
L3/MatMul/ReadVariableOpReadVariableOp!l3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0~
	L3/MatMulMatMulL2/Relu:activations:0 L3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L3/BiasAdd/ReadVariableOpReadVariableOp"l3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L3/BiasAddBiasAddL3/MatMul:product:0!L3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
IdentityIdentityL3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/BiasAdd/ReadVariableOp^L1/MatMul/ReadVariableOp^L2/BiasAdd/ReadVariableOp^L2/MatMul/ReadVariableOp^L3/BiasAdd/ReadVariableOp^L3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 26
L1/BiasAdd/ReadVariableOpL1/BiasAdd/ReadVariableOp24
L1/MatMul/ReadVariableOpL1/MatMul/ReadVariableOp26
L2/BiasAdd/ReadVariableOpL2/BiasAdd/ReadVariableOp24
L2/MatMul/ReadVariableOpL2/MatMul/ReadVariableOp26
L3/BiasAdd/ReadVariableOpL3/BiasAdd/ReadVariableOp24
L3/MatMul/ReadVariableOpL3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_L2_layer_call_fn_8103

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L2_layer_call_and_return_conditional_losses_7791o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�c
�
 __inference__traced_restore_8316
file_prefix,
assignvariableop_l1_kernel:(
assignvariableop_1_l1_bias:.
assignvariableop_2_l2_kernel:(
assignvariableop_3_l2_bias:.
assignvariableop_4_l3_kernel:(
assignvariableop_5_l3_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: 6
$assignvariableop_13_adam_l1_kernel_m:0
"assignvariableop_14_adam_l1_bias_m:6
$assignvariableop_15_adam_l2_kernel_m:0
"assignvariableop_16_adam_l2_bias_m:6
$assignvariableop_17_adam_l3_kernel_m:0
"assignvariableop_18_adam_l3_bias_m:6
$assignvariableop_19_adam_l1_kernel_v:0
"assignvariableop_20_adam_l1_bias_v:6
$assignvariableop_21_adam_l2_kernel_v:0
"assignvariableop_22_adam_l2_bias_v:6
$assignvariableop_23_adam_l3_kernel_v:0
"assignvariableop_24_adam_l3_bias_v:
identity_26��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_l1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_l1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_l2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_l2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_l3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_l3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp$assignvariableop_13_adam_l1_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_adam_l1_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp$assignvariableop_15_adam_l2_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_adam_l2_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp$assignvariableop_17_adam_l3_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_adam_l3_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_l1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_l1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_l2_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp"assignvariableop_22_adam_l2_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp$assignvariableop_23_adam_l3_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_adam_l3_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
&__inference_model_1_layer_call_fn_7829
l1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalll1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�
�
"__inference_signature_wrapper_7992
l1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalll1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_7756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�

�
<__inference_L2_layer_call_and_return_conditional_losses_8114

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_8074

inputs3
!l1_matmul_readvariableop_resource:0
"l1_biasadd_readvariableop_resource:3
!l2_matmul_readvariableop_resource:0
"l2_biasadd_readvariableop_resource:3
!l3_matmul_readvariableop_resource:0
"l3_biasadd_readvariableop_resource:
identity��L1/BiasAdd/ReadVariableOp�L1/MatMul/ReadVariableOp�L2/BiasAdd/ReadVariableOp�L2/MatMul/ReadVariableOp�L3/BiasAdd/ReadVariableOp�L3/MatMul/ReadVariableOpz
L1/MatMul/ReadVariableOpReadVariableOp!l1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0o
	L1/MatMulMatMulinputs L1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L1/BiasAdd/ReadVariableOpReadVariableOp"l1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L1/BiasAddBiasAddL1/MatMul:product:0!L1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
L1/ReluReluL1/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
L2/MatMul/ReadVariableOpReadVariableOp!l2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0~
	L2/MatMulMatMulL1/Relu:activations:0 L2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L2/BiasAdd/ReadVariableOpReadVariableOp"l2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L2/BiasAddBiasAddL2/MatMul:product:0!L2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
L2/ReluReluL2/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
L3/MatMul/ReadVariableOpReadVariableOp!l3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0~
	L3/MatMulMatMulL2/Relu:activations:0 L3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
L3/BiasAdd/ReadVariableOpReadVariableOp"l3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

L3/BiasAddBiasAddL3/MatMul:product:0!L3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
IdentityIdentityL3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/BiasAdd/ReadVariableOp^L1/MatMul/ReadVariableOp^L2/BiasAdd/ReadVariableOp^L2/MatMul/ReadVariableOp^L3/BiasAdd/ReadVariableOp^L3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 26
L1/BiasAdd/ReadVariableOpL1/BiasAdd/ReadVariableOp24
L1/MatMul/ReadVariableOpL1/MatMul/ReadVariableOp26
L2/BiasAdd/ReadVariableOpL2/BiasAdd/ReadVariableOp24
L2/MatMul/ReadVariableOpL2/MatMul/ReadVariableOp26
L3/BiasAdd/ReadVariableOpL3/BiasAdd/ReadVariableOp24
L3/MatMul/ReadVariableOpL3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_7948
l1_input
l1_7932:
l1_7934:
l2_7937:
l2_7939:
l3_7942:
l3_7944:
identity��L1/StatefulPartitionedCall�L2/StatefulPartitionedCall�L3/StatefulPartitionedCall�
L1/StatefulPartitionedCallStatefulPartitionedCalll1_inputl1_7932l1_7934*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L1_layer_call_and_return_conditional_losses_7774�
L2/StatefulPartitionedCallStatefulPartitionedCall#L1/StatefulPartitionedCall:output:0l2_7937l2_7939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L2_layer_call_and_return_conditional_losses_7791�
L3/StatefulPartitionedCallStatefulPartitionedCall#L2/StatefulPartitionedCall:output:0l3_7942l3_7944*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L3_layer_call_and_return_conditional_losses_7807r
IdentityIdentity#L3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/StatefulPartitionedCall^L2/StatefulPartitionedCall^L3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 28
L1/StatefulPartitionedCallL1/StatefulPartitionedCall28
L2/StatefulPartitionedCallL2/StatefulPartitionedCall28
L3/StatefulPartitionedCallL3/StatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�7
�	
__inference__traced_save_8231
file_prefix(
$savev2_l1_kernel_read_readvariableop&
"savev2_l1_bias_read_readvariableop(
$savev2_l2_kernel_read_readvariableop&
"savev2_l2_bias_read_readvariableop(
$savev2_l3_kernel_read_readvariableop&
"savev2_l3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_adam_l1_kernel_m_read_readvariableop-
)savev2_adam_l1_bias_m_read_readvariableop/
+savev2_adam_l2_kernel_m_read_readvariableop-
)savev2_adam_l2_bias_m_read_readvariableop/
+savev2_adam_l3_kernel_m_read_readvariableop-
)savev2_adam_l3_bias_m_read_readvariableop/
+savev2_adam_l1_kernel_v_read_readvariableop-
)savev2_adam_l1_bias_v_read_readvariableop/
+savev2_adam_l2_kernel_v_read_readvariableop-
)savev2_adam_l2_bias_v_read_readvariableop/
+savev2_adam_l3_kernel_v_read_readvariableop-
)savev2_adam_l3_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_l1_kernel_read_readvariableop"savev2_l1_bias_read_readvariableop$savev2_l2_kernel_read_readvariableop"savev2_l2_bias_read_readvariableop$savev2_l3_kernel_read_readvariableop"savev2_l3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_adam_l1_kernel_m_read_readvariableop)savev2_adam_l1_bias_m_read_readvariableop+savev2_adam_l2_kernel_m_read_readvariableop)savev2_adam_l2_bias_m_read_readvariableop+savev2_adam_l3_kernel_m_read_readvariableop)savev2_adam_l3_bias_m_read_readvariableop+savev2_adam_l1_kernel_v_read_readvariableop)savev2_adam_l1_bias_v_read_readvariableop+savev2_adam_l2_kernel_v_read_readvariableop)savev2_adam_l2_bias_v_read_readvariableop+savev2_adam_l3_kernel_v_read_readvariableop)savev2_adam_l3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::: : : : : : : ::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_7897

inputs
l1_7881:
l1_7883:
l2_7886:
l2_7888:
l3_7891:
l3_7893:
identity��L1/StatefulPartitionedCall�L2/StatefulPartitionedCall�L3/StatefulPartitionedCall�
L1/StatefulPartitionedCallStatefulPartitionedCallinputsl1_7881l1_7883*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L1_layer_call_and_return_conditional_losses_7774�
L2/StatefulPartitionedCallStatefulPartitionedCall#L1/StatefulPartitionedCall:output:0l2_7886l2_7888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L2_layer_call_and_return_conditional_losses_7791�
L3/StatefulPartitionedCallStatefulPartitionedCall#L2/StatefulPartitionedCall:output:0l3_7891l3_7893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L3_layer_call_and_return_conditional_losses_7807r
IdentityIdentity#L3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/StatefulPartitionedCall^L2/StatefulPartitionedCall^L3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 28
L1/StatefulPartitionedCallL1/StatefulPartitionedCall28
L2/StatefulPartitionedCallL2/StatefulPartitionedCall28
L3/StatefulPartitionedCallL3/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_7814

inputs
l1_7775:
l1_7777:
l2_7792:
l2_7794:
l3_7808:
l3_7810:
identity��L1/StatefulPartitionedCall�L2/StatefulPartitionedCall�L3/StatefulPartitionedCall�
L1/StatefulPartitionedCallStatefulPartitionedCallinputsl1_7775l1_7777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L1_layer_call_and_return_conditional_losses_7774�
L2/StatefulPartitionedCallStatefulPartitionedCall#L1/StatefulPartitionedCall:output:0l2_7792l2_7794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L2_layer_call_and_return_conditional_losses_7791�
L3/StatefulPartitionedCallStatefulPartitionedCall#L2/StatefulPartitionedCall:output:0l3_7808l3_7810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L3_layer_call_and_return_conditional_losses_7807r
IdentityIdentity#L3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/StatefulPartitionedCall^L2/StatefulPartitionedCall^L3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 28
L1/StatefulPartitionedCallL1/StatefulPartitionedCall28
L2/StatefulPartitionedCallL2/StatefulPartitionedCall28
L3/StatefulPartitionedCallL3/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference_L1_layer_call_fn_8083

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L1_layer_call_and_return_conditional_losses_7774o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
<__inference_L1_layer_call_and_return_conditional_losses_7774

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
<__inference_L1_layer_call_and_return_conditional_losses_8094

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
<__inference_L3_layer_call_and_return_conditional_losses_7807

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference__wrapped_model_7756
l1_input;
)model_1_l1_matmul_readvariableop_resource:8
*model_1_l1_biasadd_readvariableop_resource:;
)model_1_l2_matmul_readvariableop_resource:8
*model_1_l2_biasadd_readvariableop_resource:;
)model_1_l3_matmul_readvariableop_resource:8
*model_1_l3_biasadd_readvariableop_resource:
identity��!model_1/L1/BiasAdd/ReadVariableOp� model_1/L1/MatMul/ReadVariableOp�!model_1/L2/BiasAdd/ReadVariableOp� model_1/L2/MatMul/ReadVariableOp�!model_1/L3/BiasAdd/ReadVariableOp� model_1/L3/MatMul/ReadVariableOp�
 model_1/L1/MatMul/ReadVariableOpReadVariableOp)model_1_l1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_1/L1/MatMulMatMull1_input(model_1/L1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!model_1/L1/BiasAdd/ReadVariableOpReadVariableOp*model_1_l1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/L1/BiasAddBiasAddmodel_1/L1/MatMul:product:0)model_1/L1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
model_1/L1/ReluRelumodel_1/L1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 model_1/L2/MatMul/ReadVariableOpReadVariableOp)model_1_l2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_1/L2/MatMulMatMulmodel_1/L1/Relu:activations:0(model_1/L2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!model_1/L2/BiasAdd/ReadVariableOpReadVariableOp*model_1_l2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/L2/BiasAddBiasAddmodel_1/L2/MatMul:product:0)model_1/L2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
model_1/L2/ReluRelumodel_1/L2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 model_1/L3/MatMul/ReadVariableOpReadVariableOp)model_1_l3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_1/L3/MatMulMatMulmodel_1/L2/Relu:activations:0(model_1/L3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!model_1/L3/BiasAdd/ReadVariableOpReadVariableOp*model_1_l3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/L3/BiasAddBiasAddmodel_1/L3/MatMul:product:0)model_1/L3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitymodel_1/L3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^model_1/L1/BiasAdd/ReadVariableOp!^model_1/L1/MatMul/ReadVariableOp"^model_1/L2/BiasAdd/ReadVariableOp!^model_1/L2/MatMul/ReadVariableOp"^model_1/L3/BiasAdd/ReadVariableOp!^model_1/L3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2F
!model_1/L1/BiasAdd/ReadVariableOp!model_1/L1/BiasAdd/ReadVariableOp2D
 model_1/L1/MatMul/ReadVariableOp model_1/L1/MatMul/ReadVariableOp2F
!model_1/L2/BiasAdd/ReadVariableOp!model_1/L2/BiasAdd/ReadVariableOp2D
 model_1/L2/MatMul/ReadVariableOp model_1/L2/MatMul/ReadVariableOp2F
!model_1/L3/BiasAdd/ReadVariableOp!model_1/L3/BiasAdd/ReadVariableOp2D
 model_1/L3/MatMul/ReadVariableOp model_1/L3/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�
�
A__inference_model_1_layer_call_and_return_conditional_losses_7967
l1_input
l1_7951:
l1_7953:
l2_7956:
l2_7958:
l3_7961:
l3_7963:
identity��L1/StatefulPartitionedCall�L2/StatefulPartitionedCall�L3/StatefulPartitionedCall�
L1/StatefulPartitionedCallStatefulPartitionedCalll1_inputl1_7951l1_7953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L1_layer_call_and_return_conditional_losses_7774�
L2/StatefulPartitionedCallStatefulPartitionedCall#L1/StatefulPartitionedCall:output:0l2_7956l2_7958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L2_layer_call_and_return_conditional_losses_7791�
L3/StatefulPartitionedCallStatefulPartitionedCall#L2/StatefulPartitionedCall:output:0l3_7961l3_7963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_L3_layer_call_and_return_conditional_losses_7807r
IdentityIdentity#L3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^L1/StatefulPartitionedCall^L2/StatefulPartitionedCall^L3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 28
L1/StatefulPartitionedCallL1/StatefulPartitionedCall28
L2/StatefulPartitionedCallL2/StatefulPartitionedCall28
L3/StatefulPartitionedCallL3/StatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�
�
&__inference_model_1_layer_call_fn_7929
l1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalll1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
L1_input
�
�
&__inference_model_1_layer_call_fn_8026

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
=
L1_input1
serving_default_L1_input:0���������6
L30
StatefulPartitionedCall:0���������tensorflow/serving/predict:�h
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
1
2
3
#4
$5"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
*trace_0
+trace_1
,trace_2
-trace_32�
&__inference_model_1_layer_call_fn_7829
&__inference_model_1_layer_call_fn_8009
&__inference_model_1_layer_call_fn_8026
&__inference_model_1_layer_call_fn_7929�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z*trace_0z+trace_1z,trace_2z-trace_3
�
.trace_0
/trace_1
0trace_2
1trace_32�
A__inference_model_1_layer_call_and_return_conditional_losses_8050
A__inference_model_1_layer_call_and_return_conditional_losses_8074
A__inference_model_1_layer_call_and_return_conditional_losses_7948
A__inference_model_1_layer_call_and_return_conditional_losses_7967�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z.trace_0z/trace_1z0trace_2z1trace_3
�B�
__inference__wrapped_model_7756L1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
2iter

3beta_1

4beta_2
	5decay
6learning_ratemRmSmTmU#mV$mWvXvYvZv[#v\$v]"
	optimizer
,
7serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
=trace_02�
!__inference_L1_layer_call_fn_8083�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z=trace_0
�
>trace_02�
<__inference_L1_layer_call_and_return_conditional_losses_8094�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z>trace_0
:2	L1/kernel
:2L1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Dtrace_02�
!__inference_L2_layer_call_fn_8103�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zDtrace_0
�
Etrace_02�
<__inference_L2_layer_call_and_return_conditional_losses_8114�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0
:2	L2/kernel
:2L2/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_02�
!__inference_L3_layer_call_fn_8123�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0
�
Ltrace_02�
<__inference_L3_layer_call_and_return_conditional_losses_8133�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
:2	L3/kernel
:2L3/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_1_layer_call_fn_7829L1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_8009inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_8026inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_7929L1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8050inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_8074inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7948L1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7967L1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
"__inference_signature_wrapper_7992L1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
!__inference_L1_layer_call_fn_8083inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
<__inference_L1_layer_call_and_return_conditional_losses_8094inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
!__inference_L2_layer_call_fn_8103inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
<__inference_L2_layer_call_and_return_conditional_losses_8114inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
!__inference_L3_layer_call_fn_8123inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
<__inference_L3_layer_call_and_return_conditional_losses_8133inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
N	variables
O	keras_api
	Ptotal
	Qcount"
_tf_keras_metric
.
P0
Q1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
 :2Adam/L1/kernel/m
:2Adam/L1/bias/m
 :2Adam/L2/kernel/m
:2Adam/L2/bias/m
 :2Adam/L3/kernel/m
:2Adam/L3/bias/m
 :2Adam/L1/kernel/v
:2Adam/L1/bias/v
 :2Adam/L2/kernel/v
:2Adam/L2/bias/v
 :2Adam/L3/kernel/v
:2Adam/L3/bias/v�
<__inference_L1_layer_call_and_return_conditional_losses_8094\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� t
!__inference_L1_layer_call_fn_8083O/�,
%�"
 �
inputs���������
� "�����������
<__inference_L2_layer_call_and_return_conditional_losses_8114\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� t
!__inference_L2_layer_call_fn_8103O/�,
%�"
 �
inputs���������
� "�����������
<__inference_L3_layer_call_and_return_conditional_losses_8133\#$/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� t
!__inference_L3_layer_call_fn_8123O#$/�,
%�"
 �
inputs���������
� "�����������
__inference__wrapped_model_7756d#$1�.
'�$
"�
L1_input���������
� "'�$
"
L3�
L3����������
A__inference_model_1_layer_call_and_return_conditional_losses_7948j#$9�6
/�,
"�
L1_input���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_7967j#$9�6
/�,
"�
L1_input���������
p

 
� "%�"
�
0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_8050h#$7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_8074h#$7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
&__inference_model_1_layer_call_fn_7829]#$9�6
/�,
"�
L1_input���������
p 

 
� "�����������
&__inference_model_1_layer_call_fn_7929]#$9�6
/�,
"�
L1_input���������
p

 
� "�����������
&__inference_model_1_layer_call_fn_8009[#$7�4
-�*
 �
inputs���������
p 

 
� "�����������
&__inference_model_1_layer_call_fn_8026[#$7�4
-�*
 �
inputs���������
p

 
� "�����������
"__inference_signature_wrapper_7992p#$=�:
� 
3�0
.
L1_input"�
L1_input���������"'�$
"
L3�
L3���������