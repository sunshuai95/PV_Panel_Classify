šź	
ű(Ý(
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"train*1.13.12
b'unknown'ĽĚ
y
data/xPlaceholder*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙dd
b
data/y_Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
ˇ
6conv1/conv2d/kernel/Initializer/truncated_normal/shapeConst*%
valueB"             *
_output_shapes
:*
dtype0*&
_class
loc:@conv1/conv2d/kernel
˘
5conv1/conv2d/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv1/conv2d/kernel
¤
7conv1/conv2d/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*&
_class
loc:@conv1/conv2d/kernel

@conv1/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6conv1/conv2d/kernel/Initializer/truncated_normal/shape*
seed2 *&
_class
loc:@conv1/conv2d/kernel*
T0*&
_output_shapes
: *
dtype0*

seed 

4conv1/conv2d/kernel/Initializer/truncated_normal/mulMul@conv1/conv2d/kernel/Initializer/truncated_normal/TruncatedNormal7conv1/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: *&
_class
loc:@conv1/conv2d/kernel
ý
0conv1/conv2d/kernel/Initializer/truncated_normalAdd4conv1/conv2d/kernel/Initializer/truncated_normal/mul5conv1/conv2d/kernel/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: *&
_class
loc:@conv1/conv2d/kernel
ż
conv1/conv2d/kernel
VariableV2*
shared_name *&
_class
loc:@conv1/conv2d/kernel*&
_output_shapes
: *
dtype0*
shape: *
	container 
í
conv1/conv2d/kernel/AssignAssignconv1/conv2d/kernel0conv1/conv2d/kernel/Initializer/truncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel

conv1/conv2d/kernel/readIdentityconv1/conv2d/kernel*
T0*&
_output_shapes
: *&
_class
loc:@conv1/conv2d/kernel

#conv1/conv2d/bias/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*$
_class
loc:@conv1/conv2d/bias
Ł
conv1/conv2d/bias
VariableV2*
shared_name *$
_class
loc:@conv1/conv2d/bias*
_output_shapes
: *
dtype0*
shape: *
	container 
Î
conv1/conv2d/bias/AssignAssignconv1/conv2d/bias#conv1/conv2d/bias/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias

conv1/conv2d/bias/readIdentityconv1/conv2d/bias*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
k
conv1/conv2d/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
ç
conv1/conv2d/Conv2DConv2Ddata/xconv1/conv2d/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd *
use_cudnn_on_gpu(

conv1/conv2d/BiasAddBiasAddconv1/conv2d/Conv2Dconv1/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd 
i
conv1/conv2d/ReluReluconv1/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd 
Ć
conv1/max_pooling2d/MaxPoolMaxPoolconv1/conv2d/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22 
ˇ
6conv2/conv2d/kernel/Initializer/truncated_normal/shapeConst*%
valueB"          @   *
_output_shapes
:*
dtype0*&
_class
loc:@conv2/conv2d/kernel
˘
5conv2/conv2d/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv2/conv2d/kernel
¤
7conv2/conv2d/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*&
_class
loc:@conv2/conv2d/kernel

@conv2/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6conv2/conv2d/kernel/Initializer/truncated_normal/shape*
seed2 *&
_class
loc:@conv2/conv2d/kernel*
T0*&
_output_shapes
: @*
dtype0*

seed 

4conv2/conv2d/kernel/Initializer/truncated_normal/mulMul@conv2/conv2d/kernel/Initializer/truncated_normal/TruncatedNormal7conv2/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: @*&
_class
loc:@conv2/conv2d/kernel
ý
0conv2/conv2d/kernel/Initializer/truncated_normalAdd4conv2/conv2d/kernel/Initializer/truncated_normal/mul5conv2/conv2d/kernel/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: @*&
_class
loc:@conv2/conv2d/kernel
ż
conv2/conv2d/kernel
VariableV2*
shared_name *&
_class
loc:@conv2/conv2d/kernel*&
_output_shapes
: @*
dtype0*
shape: @*
	container 
í
conv2/conv2d/kernel/AssignAssignconv2/conv2d/kernel0conv2/conv2d/kernel/Initializer/truncated_normal*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel

conv2/conv2d/kernel/readIdentityconv2/conv2d/kernel*
T0*&
_output_shapes
: @*&
_class
loc:@conv2/conv2d/kernel

#conv2/conv2d/bias/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*$
_class
loc:@conv2/conv2d/bias
Ł
conv2/conv2d/bias
VariableV2*
shared_name *$
_class
loc:@conv2/conv2d/bias*
_output_shapes
:@*
dtype0*
shape:@*
	container 
Î
conv2/conv2d/bias/AssignAssignconv2/conv2d/bias#conv2/conv2d/bias/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias

conv2/conv2d/bias/readIdentityconv2/conv2d/bias*
T0*
_output_shapes
:@*$
_class
loc:@conv2/conv2d/bias
k
conv2/conv2d/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
ü
conv2/conv2d/Conv2DConv2Dconv1/max_pooling2d/MaxPoolconv2/conv2d/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@*
use_cudnn_on_gpu(

conv2/conv2d/BiasAddBiasAddconv2/conv2d/Conv2Dconv2/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@
i
conv2/conv2d/ReluReluconv2/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@
Ć
conv2/max_pooling2d/MaxPoolMaxPoolconv2/conv2d/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ˇ
6conv3/conv2d/kernel/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
_output_shapes
:*
dtype0*&
_class
loc:@conv3/conv2d/kernel
˘
5conv3/conv2d/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv3/conv2d/kernel
¤
7conv3/conv2d/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*&
_class
loc:@conv3/conv2d/kernel

@conv3/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6conv3/conv2d/kernel/Initializer/truncated_normal/shape*
seed2 *&
_class
loc:@conv3/conv2d/kernel*
T0*'
_output_shapes
:@*
dtype0*

seed 

4conv3/conv2d/kernel/Initializer/truncated_normal/mulMul@conv3/conv2d/kernel/Initializer/truncated_normal/TruncatedNormal7conv3/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:@*&
_class
loc:@conv3/conv2d/kernel
ţ
0conv3/conv2d/kernel/Initializer/truncated_normalAdd4conv3/conv2d/kernel/Initializer/truncated_normal/mul5conv3/conv2d/kernel/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:@*&
_class
loc:@conv3/conv2d/kernel
Á
conv3/conv2d/kernel
VariableV2*
shared_name *&
_class
loc:@conv3/conv2d/kernel*'
_output_shapes
:@*
dtype0*
shape:@*
	container 
î
conv3/conv2d/kernel/AssignAssignconv3/conv2d/kernel0conv3/conv2d/kernel/Initializer/truncated_normal*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel

conv3/conv2d/kernel/readIdentityconv3/conv2d/kernel*
T0*'
_output_shapes
:@*&
_class
loc:@conv3/conv2d/kernel

#conv3/conv2d/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv3/conv2d/bias
Ľ
conv3/conv2d/bias
VariableV2*
shared_name *$
_class
loc:@conv3/conv2d/bias*
_output_shapes	
:*
dtype0*
shape:*
	container 
Ď
conv3/conv2d/bias/AssignAssignconv3/conv2d/bias#conv3/conv2d/bias/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias

conv3/conv2d/bias/readIdentityconv3/conv2d/bias*
T0*
_output_shapes	
:*$
_class
loc:@conv3/conv2d/bias
k
conv3/conv2d/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
ý
conv3/conv2d/Conv2DConv2Dconv2/max_pooling2d/MaxPoolconv3/conv2d/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(

conv3/conv2d/BiasAddBiasAddconv3/conv2d/Conv2Dconv3/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
conv3/conv2d/ReluReluconv3/conv2d/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
conv3/max_pooling2d/MaxPoolMaxPoolconv3/conv2d/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
6conv4/conv2d/kernel/Initializer/truncated_normal/shapeConst*%
valueB"            *
_output_shapes
:*
dtype0*&
_class
loc:@conv4/conv2d/kernel
˘
5conv4/conv2d/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv4/conv2d/kernel
¤
7conv4/conv2d/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*&
_class
loc:@conv4/conv2d/kernel

@conv4/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6conv4/conv2d/kernel/Initializer/truncated_normal/shape*
seed2 *&
_class
loc:@conv4/conv2d/kernel*
T0*(
_output_shapes
:*
dtype0*

seed 

4conv4/conv2d/kernel/Initializer/truncated_normal/mulMul@conv4/conv2d/kernel/Initializer/truncated_normal/TruncatedNormal7conv4/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:*&
_class
loc:@conv4/conv2d/kernel
˙
0conv4/conv2d/kernel/Initializer/truncated_normalAdd4conv4/conv2d/kernel/Initializer/truncated_normal/mul5conv4/conv2d/kernel/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:*&
_class
loc:@conv4/conv2d/kernel
Ă
conv4/conv2d/kernel
VariableV2*
shared_name *&
_class
loc:@conv4/conv2d/kernel*(
_output_shapes
:*
dtype0*
shape:*
	container 
ď
conv4/conv2d/kernel/AssignAssignconv4/conv2d/kernel0conv4/conv2d/kernel/Initializer/truncated_normal*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel

conv4/conv2d/kernel/readIdentityconv4/conv2d/kernel*
T0*(
_output_shapes
:*&
_class
loc:@conv4/conv2d/kernel

#conv4/conv2d/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv4/conv2d/bias
Ľ
conv4/conv2d/bias
VariableV2*
shared_name *$
_class
loc:@conv4/conv2d/bias*
_output_shapes	
:*
dtype0*
shape:*
	container 
Ď
conv4/conv2d/bias/AssignAssignconv4/conv2d/bias#conv4/conv2d/bias/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias

conv4/conv2d/bias/readIdentityconv4/conv2d/bias*
T0*
_output_shapes	
:*$
_class
loc:@conv4/conv2d/bias
k
conv4/conv2d/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
ý
conv4/conv2d/Conv2DConv2Dconv3/max_pooling2d/MaxPoolconv4/conv2d/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(

conv4/conv2d/BiasAddBiasAddconv4/conv2d/Conv2Dconv4/conv2d/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
conv4/conv2d/ReluReluconv4/conv2d/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
conv4/max_pooling2d/MaxPoolMaxPoolconv4/conv2d/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
Reshape/shapeConst*
valueB"˙˙˙˙   *
_output_shapes
:*
dtype0

ReshapeReshapeconv4/max_pooling2d/MaxPoolReshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙$
Š
3fc1/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc1/dense/kernel

2fc1/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc1/dense/kernel

4fc1/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*#
_class
loc:@fc1/dense/kernel
ű
=fc1/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3fc1/dense/kernel/Initializer/truncated_normal/shape*
seed2 *#
_class
loc:@fc1/dense/kernel*
T0* 
_output_shapes
:
$*
dtype0*

seed 
ý
1fc1/dense/kernel/Initializer/truncated_normal/mulMul=fc1/dense/kernel/Initializer/truncated_normal/TruncatedNormal4fc1/dense/kernel/Initializer/truncated_normal/stddev*
T0* 
_output_shapes
:
$*#
_class
loc:@fc1/dense/kernel
ë
-fc1/dense/kernel/Initializer/truncated_normalAdd1fc1/dense/kernel/Initializer/truncated_normal/mul2fc1/dense/kernel/Initializer/truncated_normal/mean*
T0* 
_output_shapes
:
$*#
_class
loc:@fc1/dense/kernel
­
fc1/dense/kernel
VariableV2*
shared_name *#
_class
loc:@fc1/dense/kernel* 
_output_shapes
:
$*
dtype0*
shape:
$*
	container 
Ű
fc1/dense/kernel/AssignAssignfc1/dense/kernel-fc1/dense/kernel/Initializer/truncated_normal*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel

fc1/dense/kernel/readIdentityfc1/dense/kernel*
T0* 
_output_shapes
:
$*#
_class
loc:@fc1/dense/kernel
v
1fc1/dense/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŚD;*
_output_shapes
: *
dtype0
t
2fc1/dense/kernel/Regularizer/l2_regularizer/L2LossL2Lossfc1/dense/kernel/read*
T0*
_output_shapes
: 
ş
+fc1/dense/kernel/Regularizer/l2_regularizerMul1fc1/dense/kernel/Regularizer/l2_regularizer/scale2fc1/dense/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 

0fc1/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0*!
_class
loc:@fc1/dense/bias

&fc1/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@fc1/dense/bias
Ý
 fc1/dense/bias/Initializer/zerosFill0fc1/dense/bias/Initializer/zeros/shape_as_tensor&fc1/dense/bias/Initializer/zeros/Const*
T0*
_output_shapes	
:*

index_type0*!
_class
loc:@fc1/dense/bias

fc1/dense/bias
VariableV2*
shared_name *!
_class
loc:@fc1/dense/bias*
_output_shapes	
:*
dtype0*
shape:*
	container 
Ă
fc1/dense/bias/AssignAssignfc1/dense/bias fc1/dense/bias/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
x
fc1/dense/bias/readIdentityfc1/dense/bias*
T0*
_output_shapes	
:*!
_class
loc:@fc1/dense/bias

fc1/dense/MatMulMatMulReshapefc1/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

fc1/dense/BiasAddBiasAddfc1/dense/MatMulfc1/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
fc1/dense/ReluRelufc1/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
3fc2/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense/kernel

2fc2/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc2/dense/kernel

4fc2/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*#
_class
loc:@fc2/dense/kernel
ű
=fc2/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3fc2/dense/kernel/Initializer/truncated_normal/shape*
seed2 *#
_class
loc:@fc2/dense/kernel*
T0* 
_output_shapes
:
*
dtype0*

seed 
ý
1fc2/dense/kernel/Initializer/truncated_normal/mulMul=fc2/dense/kernel/Initializer/truncated_normal/TruncatedNormal4fc2/dense/kernel/Initializer/truncated_normal/stddev*
T0* 
_output_shapes
:
*#
_class
loc:@fc2/dense/kernel
ë
-fc2/dense/kernel/Initializer/truncated_normalAdd1fc2/dense/kernel/Initializer/truncated_normal/mul2fc2/dense/kernel/Initializer/truncated_normal/mean*
T0* 
_output_shapes
:
*#
_class
loc:@fc2/dense/kernel
­
fc2/dense/kernel
VariableV2*
shared_name *#
_class
loc:@fc2/dense/kernel* 
_output_shapes
:
*
dtype0*
shape:
*
	container 
Ű
fc2/dense/kernel/AssignAssignfc2/dense/kernel-fc2/dense/kernel/Initializer/truncated_normal*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel

fc2/dense/kernel/readIdentityfc2/dense/kernel*
T0* 
_output_shapes
:
*#
_class
loc:@fc2/dense/kernel
v
1fc2/dense/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŚD;*
_output_shapes
: *
dtype0
t
2fc2/dense/kernel/Regularizer/l2_regularizer/L2LossL2Lossfc2/dense/kernel/read*
T0*
_output_shapes
: 
ş
+fc2/dense/kernel/Regularizer/l2_regularizerMul1fc2/dense/kernel/Regularizer/l2_regularizer/scale2fc2/dense/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 

 fc2/dense/bias/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*!
_class
loc:@fc2/dense/bias

fc2/dense/bias
VariableV2*
shared_name *!
_class
loc:@fc2/dense/bias*
_output_shapes	
:*
dtype0*
shape:*
	container 
Ă
fc2/dense/bias/AssignAssignfc2/dense/bias fc2/dense/bias/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
x
fc2/dense/bias/readIdentityfc2/dense/bias*
T0*
_output_shapes	
:*!
_class
loc:@fc2/dense/bias

fc2/dense/MatMulMatMulfc1/dense/Relufc2/dense/kernel/read*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

fc2/dense/BiasAddBiasAddfc2/dense/MatMulfc2/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
fc2/dense/ReluRelufc2/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
5fc2/dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*%
_class
loc:@fc2/dense_1/kernel
 
4fc2/dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*%
_class
loc:@fc2/dense_1/kernel
˘
6fc2/dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *
×#<*
_output_shapes
: *
dtype0*%
_class
loc:@fc2/dense_1/kernel

?fc2/dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5fc2/dense_1/kernel/Initializer/truncated_normal/shape*
seed2 *%
_class
loc:@fc2/dense_1/kernel*
T0*
_output_shapes
:	*
dtype0*

seed 

3fc2/dense_1/kernel/Initializer/truncated_normal/mulMul?fc2/dense_1/kernel/Initializer/truncated_normal/TruncatedNormal6fc2/dense_1/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	*%
_class
loc:@fc2/dense_1/kernel
ň
/fc2/dense_1/kernel/Initializer/truncated_normalAdd3fc2/dense_1/kernel/Initializer/truncated_normal/mul4fc2/dense_1/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes
:	*%
_class
loc:@fc2/dense_1/kernel
Ż
fc2/dense_1/kernel
VariableV2*
shared_name *%
_class
loc:@fc2/dense_1/kernel*
_output_shapes
:	*
dtype0*
shape:	*
	container 
â
fc2/dense_1/kernel/AssignAssignfc2/dense_1/kernel/fc2/dense_1/kernel/Initializer/truncated_normal*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel

fc2/dense_1/kernel/readIdentityfc2/dense_1/kernel*
T0*
_output_shapes
:	*%
_class
loc:@fc2/dense_1/kernel
x
3fc2/dense_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŚD;*
_output_shapes
: *
dtype0
x
4fc2/dense_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossfc2/dense_1/kernel/read*
T0*
_output_shapes
: 
Ŕ
-fc2/dense_1/kernel/Regularizer/l2_regularizerMul3fc2/dense_1/kernel/Regularizer/l2_regularizer/scale4fc2/dense_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_output_shapes
: 

"fc2/dense_1/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense_1/bias
Ą
fc2/dense_1/bias
VariableV2*
shared_name *#
_class
loc:@fc2/dense_1/bias*
_output_shapes
:*
dtype0*
shape:*
	container 
Ę
fc2/dense_1/bias/AssignAssignfc2/dense_1/bias"fc2/dense_1/bias/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
}
fc2/dense_1/bias/readIdentityfc2/dense_1/bias*
T0*
_output_shapes
:*#
_class
loc:@fc2/dense_1/bias

fc2/dense_1/MatMulMatMulfc2/dense/Relufc2/dense_1/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

fc2/dense_1/BiasAddBiasAddfc2/dense_1/MatMulfc2/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
2soft_cross/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

;soft_cross/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapedata/y_*
out_type0*
T0*
_output_shapes
:
Ó
>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitsfc2/dense_1/BiasAdddata/y_*
T0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0

Osoft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
_output_shapes
: *
dtype0

Nsoft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
_output_shapes
: *
dtype0
Ě
Nsoft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
out_type0*
T0*
_output_shapes
:

Msoft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
_output_shapes
: *
dtype0
e
]soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
š
0soft_cross/sparse_softmax_cross_entropy_loss/MulMul>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy2soft_cross/sparse_softmax_cross_entropy_loss/Const^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
4soft_cross/sparse_softmax_cross_entropy_loss/Const_1Const^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
_output_shapes
:*
dtype0
Ý
0soft_cross/sparse_softmax_cross_entropy_loss/SumSum0soft_cross/sparse_softmax_cross_entropy_loss/Mul4soft_cross/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
ĺ
@soft_cross/sparse_softmax_cross_entropy_loss/num_present/Equal/yConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
Ţ
>soft_cross/sparse_softmax_cross_entropy_loss/num_present/EqualEqual2soft_cross/sparse_softmax_cross_entropy_loss/Const@soft_cross/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
č
Csoft_cross/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
_output_shapes
: *
dtype0
ë
Hsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0
í
Hsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
_output_shapes
: *
dtype0

Bsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillHsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeHsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: *

index_type0
ł
?soft_cross/sparse_softmax_cross_entropy_loss/num_present/SelectSelect>soft_cross/sparse_softmax_cross_entropy_loss/num_present/EqualCsoft_cross/sparse_softmax_cross_entropy_loss/num_present/zeros_likeBsoft_cross/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 

msoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0

lsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
_output_shapes
: *
dtype0
Ę
lsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:

ksoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
_output_shapes
: *
dtype0
ă
{soft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
ś
Zsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success|^soft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:
ý
Zsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success|^soft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
_output_shapes
: *
dtype0
Ô
Tsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillZsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeZsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

index_type0

Jsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul?soft_cross/sparse_softmax_cross_entropy_loss/num_present/SelectTsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
>soft_cross/sparse_softmax_cross_entropy_loss/num_present/ConstConst^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
_output_shapes
:*
dtype0

8soft_cross/sparse_softmax_cross_entropy_loss/num_presentSumJsoft_cross/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights>soft_cross/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
×
4soft_cross/sparse_softmax_cross_entropy_loss/Const_2Const^^soft_cross/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
_output_shapes
: *
dtype0
ß
2soft_cross/sparse_softmax_cross_entropy_loss/Sum_1Sum0soft_cross/sparse_softmax_cross_entropy_loss/Sum4soft_cross/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Í
2soft_cross/sparse_softmax_cross_entropy_loss/valueDivNoNan2soft_cross/sparse_softmax_cross_entropy_loss/Sum_18soft_cross/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
\
optimizer/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0

optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0

Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0

Soptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
ß
aoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/ShapeSoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
×
Voptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nanDivNoNanoptimizer/gradients/Fill8soft_cross/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
Ď
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/SumSumVoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nanaoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
ą
Soptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/ReshapeReshapeOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/SumQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ť
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/NegNeg2soft_cross/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 

Xoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_1DivNoNanOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Neg8soft_cross/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

Xoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2DivNoNanXoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_18soft_cross/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ë
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/mulMuloptimizer/gradients/FillXoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
Ě
Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Sum_1SumOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/mulcoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
ˇ
Uoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1ReshapeQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Sum_1Soptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

\optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpT^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/ReshapeV^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1
­
doptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentitySoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape]^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*
_output_shapes
: *f
_class\
ZXloc:@optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape
ł
foptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityUoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1]^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*
_output_shapes
: *h
_class^
\Zloc:@optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1

Yoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
_output_shapes
: *
dtype0
Î
Soptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapedoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyYoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
valueB *
_output_shapes
: *
dtype0
ł
Poptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTileSoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
Ą
Woptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
ş
Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapePoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileWoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ż
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape0soft_cross/sparse_softmax_cross_entropy_loss/Mul*
out_type0*
T0*
_output_shapes
:
ş
Noptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
Í
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShape>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
out_type0*
T0*
_output_shapes
:

Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ů
_optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Moptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/MulMulNoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/Tile2soft_cross/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
Moptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumMoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
¸
Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeMoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/SumOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Mul>soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropyNoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
Ooptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1aoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ą
Soptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeOoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Qoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

Zoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpR^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeT^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
˛
boptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityQoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape[^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*d
_classZ
XVloc:@optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape
Ť
doptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentitySoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1[^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*
_output_shapes
: *f
_class\
ZXloc:@optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1

optimizer/gradients/zeros_like	ZerosLike@soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
goptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradient@soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
foptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
dtype0
ú
boptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsboptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyfoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
[optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulboptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsgoptimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
8optimizer/gradients/fc2/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad[optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
Ţ
=optimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/group_depsNoOp9^optimizer/gradients/fc2/dense_1/BiasAdd_grad/BiasAddGrad\^optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul

Eoptimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity[optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul>^optimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*n
_classd
b`loc:@optimizer/gradients/soft_cross/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul
ż
Goptimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity8optimizer/gradients/fc2/dense_1/BiasAdd_grad/BiasAddGrad>^optimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*K
_classA
?=loc:@optimizer/gradients/fc2/dense_1/BiasAdd_grad/BiasAddGrad
ő
2optimizer/gradients/fc2/dense_1/MatMul_grad/MatMulMatMulEoptimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/control_dependencyfc2/dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
4optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul_1MatMulfc2/dense/ReluEoptimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes
:	
°
<optimizer/gradients/fc2/dense_1/MatMul_grad/tuple/group_depsNoOp3^optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul5^optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul_1
˝
Doptimizer/gradients/fc2/dense_1/MatMul_grad/tuple/control_dependencyIdentity2optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul=^optimizer/gradients/fc2/dense_1/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*E
_class;
97loc:@optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul
ş
Foptimizer/gradients/fc2/dense_1/MatMul_grad/tuple/control_dependency_1Identity4optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul_1=^optimizer/gradients/fc2/dense_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	*G
_class=
;9loc:@optimizer/gradients/fc2/dense_1/MatMul_grad/MatMul_1
Ĺ
0optimizer/gradients/fc2/dense/Relu_grad/ReluGradReluGradDoptimizer/gradients/fc2/dense_1/MatMul_grad/tuple/control_dependencyfc2/dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
6optimizer/gradients/fc2/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0optimizer/gradients/fc2/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
Ż
;optimizer/gradients/fc2/dense/BiasAdd_grad/tuple/group_depsNoOp7^optimizer/gradients/fc2/dense/BiasAdd_grad/BiasAddGrad1^optimizer/gradients/fc2/dense/Relu_grad/ReluGrad
ˇ
Coptimizer/gradients/fc2/dense/BiasAdd_grad/tuple/control_dependencyIdentity0optimizer/gradients/fc2/dense/Relu_grad/ReluGrad<^optimizer/gradients/fc2/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*C
_class9
75loc:@optimizer/gradients/fc2/dense/Relu_grad/ReluGrad
¸
Eoptimizer/gradients/fc2/dense/BiasAdd_grad/tuple/control_dependency_1Identity6optimizer/gradients/fc2/dense/BiasAdd_grad/BiasAddGrad<^optimizer/gradients/fc2/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*I
_class?
=;loc:@optimizer/gradients/fc2/dense/BiasAdd_grad/BiasAddGrad
ď
0optimizer/gradients/fc2/dense/MatMul_grad/MatMulMatMulCoptimizer/gradients/fc2/dense/BiasAdd_grad/tuple/control_dependencyfc2/dense/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
2optimizer/gradients/fc2/dense/MatMul_grad/MatMul_1MatMulfc1/dense/ReluCoptimizer/gradients/fc2/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:

Ş
:optimizer/gradients/fc2/dense/MatMul_grad/tuple/group_depsNoOp1^optimizer/gradients/fc2/dense/MatMul_grad/MatMul3^optimizer/gradients/fc2/dense/MatMul_grad/MatMul_1
ľ
Boptimizer/gradients/fc2/dense/MatMul_grad/tuple/control_dependencyIdentity0optimizer/gradients/fc2/dense/MatMul_grad/MatMul;^optimizer/gradients/fc2/dense/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*C
_class9
75loc:@optimizer/gradients/fc2/dense/MatMul_grad/MatMul
ł
Doptimizer/gradients/fc2/dense/MatMul_grad/tuple/control_dependency_1Identity2optimizer/gradients/fc2/dense/MatMul_grad/MatMul_1;^optimizer/gradients/fc2/dense/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
*E
_class;
97loc:@optimizer/gradients/fc2/dense/MatMul_grad/MatMul_1
Ă
0optimizer/gradients/fc1/dense/Relu_grad/ReluGradReluGradBoptimizer/gradients/fc2/dense/MatMul_grad/tuple/control_dependencyfc1/dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
6optimizer/gradients/fc1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0optimizer/gradients/fc1/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
Ż
;optimizer/gradients/fc1/dense/BiasAdd_grad/tuple/group_depsNoOp7^optimizer/gradients/fc1/dense/BiasAdd_grad/BiasAddGrad1^optimizer/gradients/fc1/dense/Relu_grad/ReluGrad
ˇ
Coptimizer/gradients/fc1/dense/BiasAdd_grad/tuple/control_dependencyIdentity0optimizer/gradients/fc1/dense/Relu_grad/ReluGrad<^optimizer/gradients/fc1/dense/BiasAdd_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*C
_class9
75loc:@optimizer/gradients/fc1/dense/Relu_grad/ReluGrad
¸
Eoptimizer/gradients/fc1/dense/BiasAdd_grad/tuple/control_dependency_1Identity6optimizer/gradients/fc1/dense/BiasAdd_grad/BiasAddGrad<^optimizer/gradients/fc1/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*I
_class?
=;loc:@optimizer/gradients/fc1/dense/BiasAdd_grad/BiasAddGrad
ď
0optimizer/gradients/fc1/dense/MatMul_grad/MatMulMatMulCoptimizer/gradients/fc1/dense/BiasAdd_grad/tuple/control_dependencyfc1/dense/kernel/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙$
Ű
2optimizer/gradients/fc1/dense/MatMul_grad/MatMul_1MatMulReshapeCoptimizer/gradients/fc1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
$
Ş
:optimizer/gradients/fc1/dense/MatMul_grad/tuple/group_depsNoOp1^optimizer/gradients/fc1/dense/MatMul_grad/MatMul3^optimizer/gradients/fc1/dense/MatMul_grad/MatMul_1
ľ
Boptimizer/gradients/fc1/dense/MatMul_grad/tuple/control_dependencyIdentity0optimizer/gradients/fc1/dense/MatMul_grad/MatMul;^optimizer/gradients/fc1/dense/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙$*C
_class9
75loc:@optimizer/gradients/fc1/dense/MatMul_grad/MatMul
ł
Doptimizer/gradients/fc1/dense/MatMul_grad/tuple/control_dependency_1Identity2optimizer/gradients/fc1/dense/MatMul_grad/MatMul_1;^optimizer/gradients/fc1/dense/MatMul_grad/tuple/group_deps*
T0* 
_output_shapes
:
$*E
_class;
97loc:@optimizer/gradients/fc1/dense/MatMul_grad/MatMul_1

&optimizer/gradients/Reshape_grad/ShapeShapeconv4/max_pooling2d/MaxPool*
out_type0*
T0*
_output_shapes
:
č
(optimizer/gradients/Reshape_grad/ReshapeReshapeBoptimizer/gradients/fc1/dense/MatMul_grad/tuple/control_dependency&optimizer/gradients/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
@optimizer/gradients/conv4/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv4/conv2d/Reluconv4/max_pooling2d/MaxPool(optimizer/gradients/Reshape_grad/Reshape*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
3optimizer/gradients/conv4/conv2d/Relu_grad/ReluGradReluGrad@optimizer/gradients/conv4/max_pooling2d/MaxPool_grad/MaxPoolGradconv4/conv2d/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
9optimizer/gradients/conv4/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad3optimizer/gradients/conv4/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
¸
>optimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/group_depsNoOp:^optimizer/gradients/conv4/conv2d/BiasAdd_grad/BiasAddGrad4^optimizer/gradients/conv4/conv2d/Relu_grad/ReluGrad
Ë
Foptimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity3optimizer/gradients/conv4/conv2d/Relu_grad/ReluGrad?^optimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/group_deps*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*F
_class<
:8loc:@optimizer/gradients/conv4/conv2d/Relu_grad/ReluGrad
Ä
Hoptimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity9optimizer/gradients/conv4/conv2d/BiasAdd_grad/BiasAddGrad?^optimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*L
_classB
@>loc:@optimizer/gradients/conv4/conv2d/BiasAdd_grad/BiasAddGrad
¸
3optimizer/gradients/conv4/conv2d/Conv2D_grad/ShapeNShapeNconv3/max_pooling2d/MaxPoolconv4/conv2d/kernel/read*
out_type0*
T0*
N* 
_output_shapes
::

@optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3optimizer/gradients/conv4/conv2d/Conv2D_grad/ShapeNconv4/conv2d/kernel/readFoptimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(

Aoptimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv3/max_pooling2d/MaxPool5optimizer/gradients/conv4/conv2d/Conv2D_grad/ShapeN:1Foptimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:*
use_cudnn_on_gpu(
Ě
=optimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/group_depsNoOpB^optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropFilterA^optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropInput
ă
Eoptimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/control_dependencyIdentity@optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropInput>^optimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/group_deps*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*S
_classI
GEloc:@optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropInput
ß
Goptimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityAoptimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropFilter>^optimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/group_deps*
T0*(
_output_shapes
:*T
_classJ
HFloc:@optimizer/gradients/conv4/conv2d/Conv2D_grad/Conv2DBackpropFilter
Ô
@optimizer/gradients/conv3/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv3/conv2d/Reluconv3/max_pooling2d/MaxPoolEoptimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/control_dependency*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
3optimizer/gradients/conv3/conv2d/Relu_grad/ReluGradReluGrad@optimizer/gradients/conv3/max_pooling2d/MaxPool_grad/MaxPoolGradconv3/conv2d/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
9optimizer/gradients/conv3/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad3optimizer/gradients/conv3/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:
¸
>optimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/group_depsNoOp:^optimizer/gradients/conv3/conv2d/BiasAdd_grad/BiasAddGrad4^optimizer/gradients/conv3/conv2d/Relu_grad/ReluGrad
Ë
Foptimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity3optimizer/gradients/conv3/conv2d/Relu_grad/ReluGrad?^optimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/group_deps*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*F
_class<
:8loc:@optimizer/gradients/conv3/conv2d/Relu_grad/ReluGrad
Ä
Hoptimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity9optimizer/gradients/conv3/conv2d/BiasAdd_grad/BiasAddGrad?^optimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes	
:*L
_classB
@>loc:@optimizer/gradients/conv3/conv2d/BiasAdd_grad/BiasAddGrad
¸
3optimizer/gradients/conv3/conv2d/Conv2D_grad/ShapeNShapeNconv2/max_pooling2d/MaxPoolconv3/conv2d/kernel/read*
out_type0*
T0*
N* 
_output_shapes
::

@optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3optimizer/gradients/conv3/conv2d/Conv2D_grad/ShapeNconv3/conv2d/kernel/readFoptimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
use_cudnn_on_gpu(

Aoptimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2/max_pooling2d/MaxPool5optimizer/gradients/conv3/conv2d/Conv2D_grad/ShapeN:1Foptimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*'
_output_shapes
:@*
use_cudnn_on_gpu(
Ě
=optimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/group_depsNoOpB^optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropFilterA^optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropInput
â
Eoptimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/control_dependencyIdentity@optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropInput>^optimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*S
_classI
GEloc:@optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropInput
Ţ
Goptimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityAoptimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropFilter>^optimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/group_deps*
T0*'
_output_shapes
:@*T
_classJ
HFloc:@optimizer/gradients/conv3/conv2d/Conv2D_grad/Conv2DBackpropFilter
Ó
@optimizer/gradients/conv2/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2/conv2d/Reluconv2/max_pooling2d/MaxPoolEoptimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/control_dependency*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@
Î
3optimizer/gradients/conv2/conv2d/Relu_grad/ReluGradReluGrad@optimizer/gradients/conv2/max_pooling2d/MaxPool_grad/MaxPoolGradconv2/conv2d/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@
š
9optimizer/gradients/conv2/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad3optimizer/gradients/conv2/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
¸
>optimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/group_depsNoOp:^optimizer/gradients/conv2/conv2d/BiasAdd_grad/BiasAddGrad4^optimizer/gradients/conv2/conv2d/Relu_grad/ReluGrad
Ę
Foptimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity3optimizer/gradients/conv2/conv2d/Relu_grad/ReluGrad?^optimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22@*F
_class<
:8loc:@optimizer/gradients/conv2/conv2d/Relu_grad/ReluGrad
Ă
Hoptimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity9optimizer/gradients/conv2/conv2d/BiasAdd_grad/BiasAddGrad?^optimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:@*L
_classB
@>loc:@optimizer/gradients/conv2/conv2d/BiasAdd_grad/BiasAddGrad
¸
3optimizer/gradients/conv2/conv2d/Conv2D_grad/ShapeNShapeNconv1/max_pooling2d/MaxPoolconv2/conv2d/kernel/read*
out_type0*
T0*
N* 
_output_shapes
::

@optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3optimizer/gradients/conv2/conv2d/Conv2D_grad/ShapeNconv2/conv2d/kernel/readFoptimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22 *
use_cudnn_on_gpu(

Aoptimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1/max_pooling2d/MaxPool5optimizer/gradients/conv2/conv2d/Conv2D_grad/ShapeN:1Foptimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: @*
use_cudnn_on_gpu(
Ě
=optimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/group_depsNoOpB^optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropFilterA^optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropInput
â
Eoptimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/control_dependencyIdentity@optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropInput>^optimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙22 *S
_classI
GEloc:@optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropInput
Ý
Goptimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityAoptimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropFilter>^optimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: @*T
_classJ
HFloc:@optimizer/gradients/conv2/conv2d/Conv2D_grad/Conv2DBackpropFilter
Ó
@optimizer/gradients/conv1/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv1/conv2d/Reluconv1/max_pooling2d/MaxPoolEoptimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/control_dependency*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd 
Î
3optimizer/gradients/conv1/conv2d/Relu_grad/ReluGradReluGrad@optimizer/gradients/conv1/max_pooling2d/MaxPool_grad/MaxPoolGradconv1/conv2d/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd 
š
9optimizer/gradients/conv1/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad3optimizer/gradients/conv1/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
¸
>optimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/group_depsNoOp:^optimizer/gradients/conv1/conv2d/BiasAdd_grad/BiasAddGrad4^optimizer/gradients/conv1/conv2d/Relu_grad/ReluGrad
Ę
Foptimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity3optimizer/gradients/conv1/conv2d/Relu_grad/ReluGrad?^optimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd *F
_class<
:8loc:@optimizer/gradients/conv1/conv2d/Relu_grad/ReluGrad
Ă
Hoptimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity9optimizer/gradients/conv1/conv2d/BiasAdd_grad/BiasAddGrad?^optimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
: *L
_classB
@>loc:@optimizer/gradients/conv1/conv2d/BiasAdd_grad/BiasAddGrad
Ł
3optimizer/gradients/conv1/conv2d/Conv2D_grad/ShapeNShapeNdata/xconv1/conv2d/kernel/read*
out_type0*
T0*
N* 
_output_shapes
::

@optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput3optimizer/gradients/conv1/conv2d/Conv2D_grad/ShapeNconv1/conv2d/kernel/readFoptimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd*
use_cudnn_on_gpu(
˙
Aoptimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdata/x5optimizer/gradients/conv1/conv2d/Conv2D_grad/ShapeN:1Foptimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*&
_output_shapes
: *
use_cudnn_on_gpu(
Ě
=optimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/group_depsNoOpB^optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropFilterA^optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropInput
â
Eoptimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/control_dependencyIdentity@optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropInput>^optimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙dd*S
_classI
GEloc:@optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropInput
Ý
Goptimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityAoptimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropFilter>^optimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: *T
_classJ
HFloc:@optimizer/gradients/conv1/conv2d/Conv2D_grad/Conv2DBackpropFilter

#optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
_output_shapes
: *
dtype0*$
_class
loc:@conv1/conv2d/bias

optimizer/beta1_power
VariableV2*
shared_name *$
_class
loc:@conv1/conv2d/bias*
_output_shapes
: *
dtype0*
shape: *
	container 
Ň
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias

optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias

#optimizer/beta2_power/initial_valueConst*
valueB
 *wž?*
_output_shapes
: *
dtype0*$
_class
loc:@conv1/conv2d/bias

optimizer/beta2_power
VariableV2*
shared_name *$
_class
loc:@conv1/conv2d/bias*
_output_shapes
: *
dtype0*
shape: *
	container 
Ň
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias

optimizer/beta2_power/readIdentityoptimizer/beta2_power*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
Ĺ
Doptimizer/conv1/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
_output_shapes
:*
dtype0*&
_class
loc:@conv1/conv2d/kernel
§
:optimizer/conv1/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv1/conv2d/kernel
Š
4optimizer/conv1/conv2d/kernel/Adam/Initializer/zerosFillDoptimizer/conv1/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor:optimizer/conv1/conv2d/kernel/Adam/Initializer/zeros/Const*
T0*&
_output_shapes
: *

index_type0*&
_class
loc:@conv1/conv2d/kernel
Î
"optimizer/conv1/conv2d/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@conv1/conv2d/kernel*&
_output_shapes
: *
dtype0*
	container *
shape: 

)optimizer/conv1/conv2d/kernel/Adam/AssignAssign"optimizer/conv1/conv2d/kernel/Adam4optimizer/conv1/conv2d/kernel/Adam/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
°
'optimizer/conv1/conv2d/kernel/Adam/readIdentity"optimizer/conv1/conv2d/kernel/Adam*
T0*&
_output_shapes
: *&
_class
loc:@conv1/conv2d/kernel
Ç
Foptimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
_output_shapes
:*
dtype0*&
_class
loc:@conv1/conv2d/kernel
Š
<optimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv1/conv2d/kernel
Ż
6optimizer/conv1/conv2d/kernel/Adam_1/Initializer/zerosFillFoptimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<optimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_output_shapes
: *

index_type0*&
_class
loc:@conv1/conv2d/kernel
Đ
$optimizer/conv1/conv2d/kernel/Adam_1
VariableV2*
shared_name *&
_class
loc:@conv1/conv2d/kernel*&
_output_shapes
: *
dtype0*
	container *
shape: 

+optimizer/conv1/conv2d/kernel/Adam_1/AssignAssign$optimizer/conv1/conv2d/kernel/Adam_16optimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
´
)optimizer/conv1/conv2d/kernel/Adam_1/readIdentity$optimizer/conv1/conv2d/kernel/Adam_1*
T0*&
_output_shapes
: *&
_class
loc:@conv1/conv2d/kernel
Ľ
2optimizer/conv1/conv2d/bias/Adam/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*$
_class
loc:@conv1/conv2d/bias
˛
 optimizer/conv1/conv2d/bias/Adam
VariableV2*
shared_name *$
_class
loc:@conv1/conv2d/bias*
_output_shapes
: *
dtype0*
	container *
shape: 
ű
'optimizer/conv1/conv2d/bias/Adam/AssignAssign optimizer/conv1/conv2d/bias/Adam2optimizer/conv1/conv2d/bias/Adam/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias

%optimizer/conv1/conv2d/bias/Adam/readIdentity optimizer/conv1/conv2d/bias/Adam*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
§
4optimizer/conv1/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*$
_class
loc:@conv1/conv2d/bias
´
"optimizer/conv1/conv2d/bias/Adam_1
VariableV2*
shared_name *$
_class
loc:@conv1/conv2d/bias*
_output_shapes
: *
dtype0*
	container *
shape: 

)optimizer/conv1/conv2d/bias/Adam_1/AssignAssign"optimizer/conv1/conv2d/bias/Adam_14optimizer/conv1/conv2d/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
˘
'optimizer/conv1/conv2d/bias/Adam_1/readIdentity"optimizer/conv1/conv2d/bias/Adam_1*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
Ĺ
Doptimizer/conv2/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_output_shapes
:*
dtype0*&
_class
loc:@conv2/conv2d/kernel
§
:optimizer/conv2/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv2/conv2d/kernel
Š
4optimizer/conv2/conv2d/kernel/Adam/Initializer/zerosFillDoptimizer/conv2/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor:optimizer/conv2/conv2d/kernel/Adam/Initializer/zeros/Const*
T0*&
_output_shapes
: @*

index_type0*&
_class
loc:@conv2/conv2d/kernel
Î
"optimizer/conv2/conv2d/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@conv2/conv2d/kernel*&
_output_shapes
: @*
dtype0*
	container *
shape: @

)optimizer/conv2/conv2d/kernel/Adam/AssignAssign"optimizer/conv2/conv2d/kernel/Adam4optimizer/conv2/conv2d/kernel/Adam/Initializer/zeros*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
°
'optimizer/conv2/conv2d/kernel/Adam/readIdentity"optimizer/conv2/conv2d/kernel/Adam*
T0*&
_output_shapes
: @*&
_class
loc:@conv2/conv2d/kernel
Ç
Foptimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_output_shapes
:*
dtype0*&
_class
loc:@conv2/conv2d/kernel
Š
<optimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv2/conv2d/kernel
Ż
6optimizer/conv2/conv2d/kernel/Adam_1/Initializer/zerosFillFoptimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<optimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_output_shapes
: @*

index_type0*&
_class
loc:@conv2/conv2d/kernel
Đ
$optimizer/conv2/conv2d/kernel/Adam_1
VariableV2*
shared_name *&
_class
loc:@conv2/conv2d/kernel*&
_output_shapes
: @*
dtype0*
	container *
shape: @

+optimizer/conv2/conv2d/kernel/Adam_1/AssignAssign$optimizer/conv2/conv2d/kernel/Adam_16optimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
´
)optimizer/conv2/conv2d/kernel/Adam_1/readIdentity$optimizer/conv2/conv2d/kernel/Adam_1*
T0*&
_output_shapes
: @*&
_class
loc:@conv2/conv2d/kernel
Ľ
2optimizer/conv2/conv2d/bias/Adam/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*$
_class
loc:@conv2/conv2d/bias
˛
 optimizer/conv2/conv2d/bias/Adam
VariableV2*
shared_name *$
_class
loc:@conv2/conv2d/bias*
_output_shapes
:@*
dtype0*
	container *
shape:@
ű
'optimizer/conv2/conv2d/bias/Adam/AssignAssign optimizer/conv2/conv2d/bias/Adam2optimizer/conv2/conv2d/bias/Adam/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias

%optimizer/conv2/conv2d/bias/Adam/readIdentity optimizer/conv2/conv2d/bias/Adam*
T0*
_output_shapes
:@*$
_class
loc:@conv2/conv2d/bias
§
4optimizer/conv2/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
dtype0*$
_class
loc:@conv2/conv2d/bias
´
"optimizer/conv2/conv2d/bias/Adam_1
VariableV2*
shared_name *$
_class
loc:@conv2/conv2d/bias*
_output_shapes
:@*
dtype0*
	container *
shape:@

)optimizer/conv2/conv2d/bias/Adam_1/AssignAssign"optimizer/conv2/conv2d/bias/Adam_14optimizer/conv2/conv2d/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
˘
'optimizer/conv2/conv2d/bias/Adam_1/readIdentity"optimizer/conv2/conv2d/bias/Adam_1*
T0*
_output_shapes
:@*$
_class
loc:@conv2/conv2d/bias
Ĺ
Doptimizer/conv3/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *
_output_shapes
:*
dtype0*&
_class
loc:@conv3/conv2d/kernel
§
:optimizer/conv3/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv3/conv2d/kernel
Ş
4optimizer/conv3/conv2d/kernel/Adam/Initializer/zerosFillDoptimizer/conv3/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor:optimizer/conv3/conv2d/kernel/Adam/Initializer/zeros/Const*
T0*'
_output_shapes
:@*

index_type0*&
_class
loc:@conv3/conv2d/kernel
Đ
"optimizer/conv3/conv2d/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@conv3/conv2d/kernel*'
_output_shapes
:@*
dtype0*
	container *
shape:@

)optimizer/conv3/conv2d/kernel/Adam/AssignAssign"optimizer/conv3/conv2d/kernel/Adam4optimizer/conv3/conv2d/kernel/Adam/Initializer/zeros*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
ą
'optimizer/conv3/conv2d/kernel/Adam/readIdentity"optimizer/conv3/conv2d/kernel/Adam*
T0*'
_output_shapes
:@*&
_class
loc:@conv3/conv2d/kernel
Ç
Foptimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *
_output_shapes
:*
dtype0*&
_class
loc:@conv3/conv2d/kernel
Š
<optimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv3/conv2d/kernel
°
6optimizer/conv3/conv2d/kernel/Adam_1/Initializer/zerosFillFoptimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<optimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*'
_output_shapes
:@*

index_type0*&
_class
loc:@conv3/conv2d/kernel
Ň
$optimizer/conv3/conv2d/kernel/Adam_1
VariableV2*
shared_name *&
_class
loc:@conv3/conv2d/kernel*'
_output_shapes
:@*
dtype0*
	container *
shape:@

+optimizer/conv3/conv2d/kernel/Adam_1/AssignAssign$optimizer/conv3/conv2d/kernel/Adam_16optimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
ľ
)optimizer/conv3/conv2d/kernel/Adam_1/readIdentity$optimizer/conv3/conv2d/kernel/Adam_1*
T0*'
_output_shapes
:@*&
_class
loc:@conv3/conv2d/kernel
§
2optimizer/conv3/conv2d/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv3/conv2d/bias
´
 optimizer/conv3/conv2d/bias/Adam
VariableV2*
shared_name *$
_class
loc:@conv3/conv2d/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
ü
'optimizer/conv3/conv2d/bias/Adam/AssignAssign optimizer/conv3/conv2d/bias/Adam2optimizer/conv3/conv2d/bias/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias

%optimizer/conv3/conv2d/bias/Adam/readIdentity optimizer/conv3/conv2d/bias/Adam*
T0*
_output_shapes	
:*$
_class
loc:@conv3/conv2d/bias
Š
4optimizer/conv3/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv3/conv2d/bias
ś
"optimizer/conv3/conv2d/bias/Adam_1
VariableV2*
shared_name *$
_class
loc:@conv3/conv2d/bias*
_output_shapes	
:*
dtype0*
	container *
shape:

)optimizer/conv3/conv2d/bias/Adam_1/AssignAssign"optimizer/conv3/conv2d/bias/Adam_14optimizer/conv3/conv2d/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Ł
'optimizer/conv3/conv2d/bias/Adam_1/readIdentity"optimizer/conv3/conv2d/bias/Adam_1*
T0*
_output_shapes	
:*$
_class
loc:@conv3/conv2d/bias
Ĺ
Doptimizer/conv4/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"            *
_output_shapes
:*
dtype0*&
_class
loc:@conv4/conv2d/kernel
§
:optimizer/conv4/conv2d/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv4/conv2d/kernel
Ť
4optimizer/conv4/conv2d/kernel/Adam/Initializer/zerosFillDoptimizer/conv4/conv2d/kernel/Adam/Initializer/zeros/shape_as_tensor:optimizer/conv4/conv2d/kernel/Adam/Initializer/zeros/Const*
T0*(
_output_shapes
:*

index_type0*&
_class
loc:@conv4/conv2d/kernel
Ň
"optimizer/conv4/conv2d/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@conv4/conv2d/kernel*(
_output_shapes
:*
dtype0*
	container *
shape:

)optimizer/conv4/conv2d/kernel/Adam/AssignAssign"optimizer/conv4/conv2d/kernel/Adam4optimizer/conv4/conv2d/kernel/Adam/Initializer/zeros*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
˛
'optimizer/conv4/conv2d/kernel/Adam/readIdentity"optimizer/conv4/conv2d/kernel/Adam*
T0*(
_output_shapes
:*&
_class
loc:@conv4/conv2d/kernel
Ç
Foptimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *
_output_shapes
:*
dtype0*&
_class
loc:@conv4/conv2d/kernel
Š
<optimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*&
_class
loc:@conv4/conv2d/kernel
ą
6optimizer/conv4/conv2d/kernel/Adam_1/Initializer/zerosFillFoptimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<optimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros/Const*
T0*(
_output_shapes
:*

index_type0*&
_class
loc:@conv4/conv2d/kernel
Ô
$optimizer/conv4/conv2d/kernel/Adam_1
VariableV2*
shared_name *&
_class
loc:@conv4/conv2d/kernel*(
_output_shapes
:*
dtype0*
	container *
shape:

+optimizer/conv4/conv2d/kernel/Adam_1/AssignAssign$optimizer/conv4/conv2d/kernel/Adam_16optimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
ś
)optimizer/conv4/conv2d/kernel/Adam_1/readIdentity$optimizer/conv4/conv2d/kernel/Adam_1*
T0*(
_output_shapes
:*&
_class
loc:@conv4/conv2d/kernel
§
2optimizer/conv4/conv2d/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv4/conv2d/bias
´
 optimizer/conv4/conv2d/bias/Adam
VariableV2*
shared_name *$
_class
loc:@conv4/conv2d/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
ü
'optimizer/conv4/conv2d/bias/Adam/AssignAssign optimizer/conv4/conv2d/bias/Adam2optimizer/conv4/conv2d/bias/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias

%optimizer/conv4/conv2d/bias/Adam/readIdentity optimizer/conv4/conv2d/bias/Adam*
T0*
_output_shapes	
:*$
_class
loc:@conv4/conv2d/bias
Š
4optimizer/conv4/conv2d/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*$
_class
loc:@conv4/conv2d/bias
ś
"optimizer/conv4/conv2d/bias/Adam_1
VariableV2*
shared_name *$
_class
loc:@conv4/conv2d/bias*
_output_shapes	
:*
dtype0*
	container *
shape:

)optimizer/conv4/conv2d/bias/Adam_1/AssignAssign"optimizer/conv4/conv2d/bias/Adam_14optimizer/conv4/conv2d/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Ł
'optimizer/conv4/conv2d/bias/Adam_1/readIdentity"optimizer/conv4/conv2d/bias/Adam_1*
T0*
_output_shapes	
:*$
_class
loc:@conv4/conv2d/bias
ˇ
Aoptimizer/fc1/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc1/dense/kernel
Ą
7optimizer/fc1/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc1/dense/kernel

1optimizer/fc1/dense/kernel/Adam/Initializer/zerosFillAoptimizer/fc1/dense/kernel/Adam/Initializer/zeros/shape_as_tensor7optimizer/fc1/dense/kernel/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
$*

index_type0*#
_class
loc:@fc1/dense/kernel
ź
optimizer/fc1/dense/kernel/Adam
VariableV2*
shared_name *#
_class
loc:@fc1/dense/kernel* 
_output_shapes
:
$*
dtype0*
	container *
shape:
$
ý
&optimizer/fc1/dense/kernel/Adam/AssignAssignoptimizer/fc1/dense/kernel/Adam1optimizer/fc1/dense/kernel/Adam/Initializer/zeros*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
Ą
$optimizer/fc1/dense/kernel/Adam/readIdentityoptimizer/fc1/dense/kernel/Adam*
T0* 
_output_shapes
:
$*#
_class
loc:@fc1/dense/kernel
š
Coptimizer/fc1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc1/dense/kernel
Ł
9optimizer/fc1/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc1/dense/kernel

3optimizer/fc1/dense/kernel/Adam_1/Initializer/zerosFillCoptimizer/fc1/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor9optimizer/fc1/dense/kernel/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
$*

index_type0*#
_class
loc:@fc1/dense/kernel
ž
!optimizer/fc1/dense/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@fc1/dense/kernel* 
_output_shapes
:
$*
dtype0*
	container *
shape:
$

(optimizer/fc1/dense/kernel/Adam_1/AssignAssign!optimizer/fc1/dense/kernel/Adam_13optimizer/fc1/dense/kernel/Adam_1/Initializer/zeros*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
Ľ
&optimizer/fc1/dense/kernel/Adam_1/readIdentity!optimizer/fc1/dense/kernel/Adam_1*
T0* 
_output_shapes
:
$*#
_class
loc:@fc1/dense/kernel
­
?optimizer/fc1/dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0*!
_class
loc:@fc1/dense/bias

5optimizer/fc1/dense/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@fc1/dense/bias

/optimizer/fc1/dense/bias/Adam/Initializer/zerosFill?optimizer/fc1/dense/bias/Adam/Initializer/zeros/shape_as_tensor5optimizer/fc1/dense/bias/Adam/Initializer/zeros/Const*
T0*
_output_shapes	
:*

index_type0*!
_class
loc:@fc1/dense/bias
Ž
optimizer/fc1/dense/bias/Adam
VariableV2*
shared_name *!
_class
loc:@fc1/dense/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
đ
$optimizer/fc1/dense/bias/Adam/AssignAssignoptimizer/fc1/dense/bias/Adam/optimizer/fc1/dense/bias/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias

"optimizer/fc1/dense/bias/Adam/readIdentityoptimizer/fc1/dense/bias/Adam*
T0*
_output_shapes	
:*!
_class
loc:@fc1/dense/bias
Ż
Aoptimizer/fc1/dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_output_shapes
:*
dtype0*!
_class
loc:@fc1/dense/bias

7optimizer/fc1/dense/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@fc1/dense/bias

1optimizer/fc1/dense/bias/Adam_1/Initializer/zerosFillAoptimizer/fc1/dense/bias/Adam_1/Initializer/zeros/shape_as_tensor7optimizer/fc1/dense/bias/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes	
:*

index_type0*!
_class
loc:@fc1/dense/bias
°
optimizer/fc1/dense/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@fc1/dense/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
ö
&optimizer/fc1/dense/bias/Adam_1/AssignAssignoptimizer/fc1/dense/bias/Adam_11optimizer/fc1/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias

$optimizer/fc1/dense/bias/Adam_1/readIdentityoptimizer/fc1/dense/bias/Adam_1*
T0*
_output_shapes	
:*!
_class
loc:@fc1/dense/bias
ˇ
Aoptimizer/fc2/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense/kernel
Ą
7optimizer/fc2/dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc2/dense/kernel

1optimizer/fc2/dense/kernel/Adam/Initializer/zerosFillAoptimizer/fc2/dense/kernel/Adam/Initializer/zeros/shape_as_tensor7optimizer/fc2/dense/kernel/Adam/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*#
_class
loc:@fc2/dense/kernel
ź
optimizer/fc2/dense/kernel/Adam
VariableV2*
shared_name *#
_class
loc:@fc2/dense/kernel* 
_output_shapes
:
*
dtype0*
	container *
shape:

ý
&optimizer/fc2/dense/kernel/Adam/AssignAssignoptimizer/fc2/dense/kernel/Adam1optimizer/fc2/dense/kernel/Adam/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
Ą
$optimizer/fc2/dense/kernel/Adam/readIdentityoptimizer/fc2/dense/kernel/Adam*
T0* 
_output_shapes
:
*#
_class
loc:@fc2/dense/kernel
š
Coptimizer/fc2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense/kernel
Ł
9optimizer/fc2/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@fc2/dense/kernel

3optimizer/fc2/dense/kernel/Adam_1/Initializer/zerosFillCoptimizer/fc2/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor9optimizer/fc2/dense/kernel/Adam_1/Initializer/zeros/Const*
T0* 
_output_shapes
:
*

index_type0*#
_class
loc:@fc2/dense/kernel
ž
!optimizer/fc2/dense/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@fc2/dense/kernel* 
_output_shapes
:
*
dtype0*
	container *
shape:


(optimizer/fc2/dense/kernel/Adam_1/AssignAssign!optimizer/fc2/dense/kernel/Adam_13optimizer/fc2/dense/kernel/Adam_1/Initializer/zeros*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
Ľ
&optimizer/fc2/dense/kernel/Adam_1/readIdentity!optimizer/fc2/dense/kernel/Adam_1*
T0* 
_output_shapes
:
*#
_class
loc:@fc2/dense/kernel
Ą
/optimizer/fc2/dense/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*!
_class
loc:@fc2/dense/bias
Ž
optimizer/fc2/dense/bias/Adam
VariableV2*
shared_name *!
_class
loc:@fc2/dense/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
đ
$optimizer/fc2/dense/bias/Adam/AssignAssignoptimizer/fc2/dense/bias/Adam/optimizer/fc2/dense/bias/Adam/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias

"optimizer/fc2/dense/bias/Adam/readIdentityoptimizer/fc2/dense/bias/Adam*
T0*
_output_shapes	
:*!
_class
loc:@fc2/dense/bias
Ł
1optimizer/fc2/dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*!
_class
loc:@fc2/dense/bias
°
optimizer/fc2/dense/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@fc2/dense/bias*
_output_shapes	
:*
dtype0*
	container *
shape:
ö
&optimizer/fc2/dense/bias/Adam_1/AssignAssignoptimizer/fc2/dense/bias/Adam_11optimizer/fc2/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias

$optimizer/fc2/dense/bias/Adam_1/readIdentityoptimizer/fc2/dense/bias/Adam_1*
T0*
_output_shapes	
:*!
_class
loc:@fc2/dense/bias
ť
Coptimizer/fc2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*%
_class
loc:@fc2/dense_1/kernel
Ľ
9optimizer/fc2/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*%
_class
loc:@fc2/dense_1/kernel

3optimizer/fc2/dense_1/kernel/Adam/Initializer/zerosFillCoptimizer/fc2/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor9optimizer/fc2/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*
_output_shapes
:	*

index_type0*%
_class
loc:@fc2/dense_1/kernel
ž
!optimizer/fc2/dense_1/kernel/Adam
VariableV2*
shared_name *%
_class
loc:@fc2/dense_1/kernel*
_output_shapes
:	*
dtype0*
	container *
shape:	

(optimizer/fc2/dense_1/kernel/Adam/AssignAssign!optimizer/fc2/dense_1/kernel/Adam3optimizer/fc2/dense_1/kernel/Adam/Initializer/zeros*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
Ś
&optimizer/fc2/dense_1/kernel/Adam/readIdentity!optimizer/fc2/dense_1/kernel/Adam*
T0*
_output_shapes
:	*%
_class
loc:@fc2/dense_1/kernel
˝
Eoptimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_output_shapes
:*
dtype0*%
_class
loc:@fc2/dense_1/kernel
§
;optimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*%
_class
loc:@fc2/dense_1/kernel
¤
5optimizer/fc2/dense_1/kernel/Adam_1/Initializer/zerosFillEoptimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;optimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	*

index_type0*%
_class
loc:@fc2/dense_1/kernel
Ŕ
#optimizer/fc2/dense_1/kernel/Adam_1
VariableV2*
shared_name *%
_class
loc:@fc2/dense_1/kernel*
_output_shapes
:	*
dtype0*
	container *
shape:	

*optimizer/fc2/dense_1/kernel/Adam_1/AssignAssign#optimizer/fc2/dense_1/kernel/Adam_15optimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
Ş
(optimizer/fc2/dense_1/kernel/Adam_1/readIdentity#optimizer/fc2/dense_1/kernel/Adam_1*
T0*
_output_shapes
:	*%
_class
loc:@fc2/dense_1/kernel
Ł
1optimizer/fc2/dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense_1/bias
°
optimizer/fc2/dense_1/bias/Adam
VariableV2*
shared_name *#
_class
loc:@fc2/dense_1/bias*
_output_shapes
:*
dtype0*
	container *
shape:
÷
&optimizer/fc2/dense_1/bias/Adam/AssignAssignoptimizer/fc2/dense_1/bias/Adam1optimizer/fc2/dense_1/bias/Adam/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias

$optimizer/fc2/dense_1/bias/Adam/readIdentityoptimizer/fc2/dense_1/bias/Adam*
T0*
_output_shapes
:*#
_class
loc:@fc2/dense_1/bias
Ľ
3optimizer/fc2/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*#
_class
loc:@fc2/dense_1/bias
˛
!optimizer/fc2/dense_1/bias/Adam_1
VariableV2*
shared_name *#
_class
loc:@fc2/dense_1/bias*
_output_shapes
:*
dtype0*
	container *
shape:
ý
(optimizer/fc2/dense_1/bias/Adam_1/AssignAssign!optimizer/fc2/dense_1/bias/Adam_13optimizer/fc2/dense_1/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias

&optimizer/fc2/dense_1/bias/Adam_1/readIdentity!optimizer/fc2/dense_1/bias/Adam_1*
T0*
_output_shapes
:*#
_class
loc:@fc2/dense_1/bias
a
optimizer/Adam/learning_rateConst*
valueB
 *o:*
_output_shapes
: *
dtype0
Y
optimizer/Adam/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
Y
optimizer/Adam/beta2Const*
valueB
 *wž?*
_output_shapes
: *
dtype0
[
optimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
_output_shapes
: *
dtype0

3optimizer/Adam/update_conv1/conv2d/kernel/ApplyAdam	ApplyAdamconv1/conv2d/kernel"optimizer/conv1/conv2d/kernel/Adam$optimizer/conv1/conv2d/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/conv1/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: *
use_locking( *
use_nesterov( *&
_class
loc:@conv1/conv2d/kernel
í
1optimizer/Adam/update_conv1/conv2d/bias/ApplyAdam	ApplyAdamconv1/conv2d/bias optimizer/conv1/conv2d/bias/Adam"optimizer/conv1/conv2d/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonHoptimizer/gradients/conv1/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
use_nesterov( *$
_class
loc:@conv1/conv2d/bias

3optimizer/Adam/update_conv2/conv2d/kernel/ApplyAdam	ApplyAdamconv2/conv2d/kernel"optimizer/conv2/conv2d/kernel/Adam$optimizer/conv2/conv2d/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/conv2/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: @*
use_locking( *
use_nesterov( *&
_class
loc:@conv2/conv2d/kernel
í
1optimizer/Adam/update_conv2/conv2d/bias/ApplyAdam	ApplyAdamconv2/conv2d/bias optimizer/conv2/conv2d/bias/Adam"optimizer/conv2/conv2d/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonHoptimizer/gradients/conv2/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@*
use_locking( *
use_nesterov( *$
_class
loc:@conv2/conv2d/bias

3optimizer/Adam/update_conv3/conv2d/kernel/ApplyAdam	ApplyAdamconv3/conv2d/kernel"optimizer/conv3/conv2d/kernel/Adam$optimizer/conv3/conv2d/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/conv3/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:@*
use_locking( *
use_nesterov( *&
_class
loc:@conv3/conv2d/kernel
î
1optimizer/Adam/update_conv3/conv2d/bias/ApplyAdam	ApplyAdamconv3/conv2d/bias optimizer/conv3/conv2d/bias/Adam"optimizer/conv3/conv2d/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonHoptimizer/gradients/conv3/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
use_nesterov( *$
_class
loc:@conv3/conv2d/bias

3optimizer/Adam/update_conv4/conv2d/kernel/ApplyAdam	ApplyAdamconv4/conv2d/kernel"optimizer/conv4/conv2d/kernel/Adam$optimizer/conv4/conv2d/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/conv4/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:*
use_locking( *
use_nesterov( *&
_class
loc:@conv4/conv2d/kernel
î
1optimizer/Adam/update_conv4/conv2d/bias/ApplyAdam	ApplyAdamconv4/conv2d/bias optimizer/conv4/conv2d/bias/Adam"optimizer/conv4/conv2d/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonHoptimizer/gradients/conv4/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
use_nesterov( *$
_class
loc:@conv4/conv2d/bias
ę
0optimizer/Adam/update_fc1/dense/kernel/ApplyAdam	ApplyAdamfc1/dense/kerneloptimizer/fc1/dense/kernel/Adam!optimizer/fc1/dense/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonDoptimizer/gradients/fc1/dense/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
$*
use_locking( *
use_nesterov( *#
_class
loc:@fc1/dense/kernel
Ü
.optimizer/Adam/update_fc1/dense/bias/ApplyAdam	ApplyAdamfc1/dense/biasoptimizer/fc1/dense/bias/Adamoptimizer/fc1/dense/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonEoptimizer/gradients/fc1/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
use_nesterov( *!
_class
loc:@fc1/dense/bias
ę
0optimizer/Adam/update_fc2/dense/kernel/ApplyAdam	ApplyAdamfc2/dense/kerneloptimizer/fc2/dense/kernel/Adam!optimizer/fc2/dense/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonDoptimizer/gradients/fc2/dense/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
*
use_locking( *
use_nesterov( *#
_class
loc:@fc2/dense/kernel
Ü
.optimizer/Adam/update_fc2/dense/bias/ApplyAdam	ApplyAdamfc2/dense/biasoptimizer/fc2/dense/bias/Adamoptimizer/fc2/dense/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonEoptimizer/gradients/fc2/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:*
use_locking( *
use_nesterov( *!
_class
loc:@fc2/dense/bias
ő
2optimizer/Adam/update_fc2/dense_1/kernel/ApplyAdam	ApplyAdamfc2/dense_1/kernel!optimizer/fc2/dense_1/kernel/Adam#optimizer/fc2/dense_1/kernel/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonFoptimizer/gradients/fc2/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	*
use_locking( *
use_nesterov( *%
_class
loc:@fc2/dense_1/kernel
ç
0optimizer/Adam/update_fc2/dense_1/bias/ApplyAdam	ApplyAdamfc2/dense_1/biasoptimizer/fc2/dense_1/bias/Adam!optimizer/fc2/dense_1/bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/fc2/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:*
use_locking( *
use_nesterov( *#
_class
loc:@fc2/dense_1/bias
ę
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta12^optimizer/Adam/update_conv1/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv1/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv2/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv2/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv3/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv3/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv4/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv4/conv2d/kernel/ApplyAdam/^optimizer/Adam/update_fc1/dense/bias/ApplyAdam1^optimizer/Adam/update_fc1/dense/kernel/ApplyAdam/^optimizer/Adam/update_fc2/dense/bias/ApplyAdam1^optimizer/Adam/update_fc2/dense/kernel/ApplyAdam1^optimizer/Adam/update_fc2/dense_1/bias/ApplyAdam3^optimizer/Adam/update_fc2/dense_1/kernel/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
ş
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*$
_class
loc:@conv1/conv2d/bias
ě
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta22^optimizer/Adam/update_conv1/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv1/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv2/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv2/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv3/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv3/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv4/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv4/conv2d/kernel/ApplyAdam/^optimizer/Adam/update_fc1/dense/bias/ApplyAdam1^optimizer/Adam/update_fc1/dense/kernel/ApplyAdam/^optimizer/Adam/update_fc2/dense/bias/ApplyAdam1^optimizer/Adam/update_fc2/dense/kernel/ApplyAdam1^optimizer/Adam/update_fc2/dense_1/bias/ApplyAdam3^optimizer/Adam/update_fc2/dense_1/kernel/ApplyAdam*
T0*
_output_shapes
: *$
_class
loc:@conv1/conv2d/bias
ž
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*$
_class
loc:@conv1/conv2d/bias
 
optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_12^optimizer/Adam/update_conv1/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv1/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv2/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv2/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv3/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv3/conv2d/kernel/ApplyAdam2^optimizer/Adam/update_conv4/conv2d/bias/ApplyAdam4^optimizer/Adam/update_conv4/conv2d/kernel/ApplyAdam/^optimizer/Adam/update_fc1/dense/bias/ApplyAdam1^optimizer/Adam/update_fc1/dense/kernel/ApplyAdam/^optimizer/Adam/update_fc2/dense/bias/ApplyAdam1^optimizer/Adam/update_fc2/dense/kernel/ApplyAdam1^optimizer/Adam/update_fc2/dense_1/bias/ApplyAdam3^optimizer/Adam/update_fc2/dense_1/kernel/ApplyAdam
V
acc/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0


acc/ArgMaxArgMaxfc2/dense_1/BiasAddacc/ArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
i
acc/CastCast
acc/ArgMax*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Truncate( *

SrcT0	
S
	acc/EqualEqualacc/Castdata/y_*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j

acc/Cast_1Cast	acc/Equal*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Truncate( *

SrcT0

S
	acc/ConstConst*
valueB: *
_output_shapes
:*
dtype0
e
acc/MeanMean
acc/Cast_1	acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
N
	loss/tagsConst*
valueB
 Bloss*
_output_shapes
: *
dtype0
u
lossScalarSummary	loss/tags2soft_cross/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
V
accuracy/tagsConst*
valueB Baccuracy*
_output_shapes
: *
dtype0
S
accuracyScalarSummaryaccuracy/tagsacc/Mean*
T0*
_output_shapes
: 
ř
initNoOp^conv1/conv2d/bias/Assign^conv1/conv2d/kernel/Assign^conv2/conv2d/bias/Assign^conv2/conv2d/kernel/Assign^conv3/conv2d/bias/Assign^conv3/conv2d/kernel/Assign^conv4/conv2d/bias/Assign^conv4/conv2d/kernel/Assign^fc1/dense/bias/Assign^fc1/dense/kernel/Assign^fc2/dense/bias/Assign^fc2/dense/kernel/Assign^fc2/dense_1/bias/Assign^fc2/dense_1/kernel/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign(^optimizer/conv1/conv2d/bias/Adam/Assign*^optimizer/conv1/conv2d/bias/Adam_1/Assign*^optimizer/conv1/conv2d/kernel/Adam/Assign,^optimizer/conv1/conv2d/kernel/Adam_1/Assign(^optimizer/conv2/conv2d/bias/Adam/Assign*^optimizer/conv2/conv2d/bias/Adam_1/Assign*^optimizer/conv2/conv2d/kernel/Adam/Assign,^optimizer/conv2/conv2d/kernel/Adam_1/Assign(^optimizer/conv3/conv2d/bias/Adam/Assign*^optimizer/conv3/conv2d/bias/Adam_1/Assign*^optimizer/conv3/conv2d/kernel/Adam/Assign,^optimizer/conv3/conv2d/kernel/Adam_1/Assign(^optimizer/conv4/conv2d/bias/Adam/Assign*^optimizer/conv4/conv2d/bias/Adam_1/Assign*^optimizer/conv4/conv2d/kernel/Adam/Assign,^optimizer/conv4/conv2d/kernel/Adam_1/Assign%^optimizer/fc1/dense/bias/Adam/Assign'^optimizer/fc1/dense/bias/Adam_1/Assign'^optimizer/fc1/dense/kernel/Adam/Assign)^optimizer/fc1/dense/kernel/Adam_1/Assign%^optimizer/fc2/dense/bias/Adam/Assign'^optimizer/fc2/dense/bias/Adam_1/Assign'^optimizer/fc2/dense/kernel/Adam/Assign)^optimizer/fc2/dense/kernel/Adam_1/Assign'^optimizer/fc2/dense_1/bias/Adam/Assign)^optimizer/fc2/dense_1/bias/Adam_1/Assign)^optimizer/fc2/dense_1/kernel/Adam/Assign+^optimizer/fc2/dense_1/kernel/Adam_1/Assign
S
Merge/MergeSummaryMergeSummarylossaccuracy*
N*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
î

save/SaveV2/tensor_namesConst*Ą

value
B
,Bconv1/conv2d/biasBconv1/conv2d/kernelBconv2/conv2d/biasBconv2/conv2d/kernelBconv3/conv2d/biasBconv3/conv2d/kernelBconv4/conv2d/biasBconv4/conv2d/kernelBfc1/dense/biasBfc1/dense/kernelBfc2/dense/biasBfc2/dense/kernelBfc2/dense_1/biasBfc2/dense_1/kernelBoptimizer/beta1_powerBoptimizer/beta2_powerB optimizer/conv1/conv2d/bias/AdamB"optimizer/conv1/conv2d/bias/Adam_1B"optimizer/conv1/conv2d/kernel/AdamB$optimizer/conv1/conv2d/kernel/Adam_1B optimizer/conv2/conv2d/bias/AdamB"optimizer/conv2/conv2d/bias/Adam_1B"optimizer/conv2/conv2d/kernel/AdamB$optimizer/conv2/conv2d/kernel/Adam_1B optimizer/conv3/conv2d/bias/AdamB"optimizer/conv3/conv2d/bias/Adam_1B"optimizer/conv3/conv2d/kernel/AdamB$optimizer/conv3/conv2d/kernel/Adam_1B optimizer/conv4/conv2d/bias/AdamB"optimizer/conv4/conv2d/bias/Adam_1B"optimizer/conv4/conv2d/kernel/AdamB$optimizer/conv4/conv2d/kernel/Adam_1Boptimizer/fc1/dense/bias/AdamBoptimizer/fc1/dense/bias/Adam_1Boptimizer/fc1/dense/kernel/AdamB!optimizer/fc1/dense/kernel/Adam_1Boptimizer/fc2/dense/bias/AdamBoptimizer/fc2/dense/bias/Adam_1Boptimizer/fc2/dense/kernel/AdamB!optimizer/fc2/dense/kernel/Adam_1Boptimizer/fc2/dense_1/bias/AdamB!optimizer/fc2/dense_1/bias/Adam_1B!optimizer/fc2/dense_1/kernel/AdamB#optimizer/fc2/dense_1/kernel/Adam_1*
_output_shapes
:,*
dtype0
ť
save/SaveV2/shape_and_slicesConst*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:,*
dtype0
Ą
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1/conv2d/biasconv1/conv2d/kernelconv2/conv2d/biasconv2/conv2d/kernelconv3/conv2d/biasconv3/conv2d/kernelconv4/conv2d/biasconv4/conv2d/kernelfc1/dense/biasfc1/dense/kernelfc2/dense/biasfc2/dense/kernelfc2/dense_1/biasfc2/dense_1/kerneloptimizer/beta1_poweroptimizer/beta2_power optimizer/conv1/conv2d/bias/Adam"optimizer/conv1/conv2d/bias/Adam_1"optimizer/conv1/conv2d/kernel/Adam$optimizer/conv1/conv2d/kernel/Adam_1 optimizer/conv2/conv2d/bias/Adam"optimizer/conv2/conv2d/bias/Adam_1"optimizer/conv2/conv2d/kernel/Adam$optimizer/conv2/conv2d/kernel/Adam_1 optimizer/conv3/conv2d/bias/Adam"optimizer/conv3/conv2d/bias/Adam_1"optimizer/conv3/conv2d/kernel/Adam$optimizer/conv3/conv2d/kernel/Adam_1 optimizer/conv4/conv2d/bias/Adam"optimizer/conv4/conv2d/bias/Adam_1"optimizer/conv4/conv2d/kernel/Adam$optimizer/conv4/conv2d/kernel/Adam_1optimizer/fc1/dense/bias/Adamoptimizer/fc1/dense/bias/Adam_1optimizer/fc1/dense/kernel/Adam!optimizer/fc1/dense/kernel/Adam_1optimizer/fc2/dense/bias/Adamoptimizer/fc2/dense/bias/Adam_1optimizer/fc2/dense/kernel/Adam!optimizer/fc2/dense/kernel/Adam_1optimizer/fc2/dense_1/bias/Adam!optimizer/fc2/dense_1/bias/Adam_1!optimizer/fc2/dense_1/kernel/Adam#optimizer/fc2/dense_1/kernel/Adam_1*:
dtypes0
.2,
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const

save/RestoreV2/tensor_namesConst"/device:CPU:0*Ą

value
B
,Bconv1/conv2d/biasBconv1/conv2d/kernelBconv2/conv2d/biasBconv2/conv2d/kernelBconv3/conv2d/biasBconv3/conv2d/kernelBconv4/conv2d/biasBconv4/conv2d/kernelBfc1/dense/biasBfc1/dense/kernelBfc2/dense/biasBfc2/dense/kernelBfc2/dense_1/biasBfc2/dense_1/kernelBoptimizer/beta1_powerBoptimizer/beta2_powerB optimizer/conv1/conv2d/bias/AdamB"optimizer/conv1/conv2d/bias/Adam_1B"optimizer/conv1/conv2d/kernel/AdamB$optimizer/conv1/conv2d/kernel/Adam_1B optimizer/conv2/conv2d/bias/AdamB"optimizer/conv2/conv2d/bias/Adam_1B"optimizer/conv2/conv2d/kernel/AdamB$optimizer/conv2/conv2d/kernel/Adam_1B optimizer/conv3/conv2d/bias/AdamB"optimizer/conv3/conv2d/bias/Adam_1B"optimizer/conv3/conv2d/kernel/AdamB$optimizer/conv3/conv2d/kernel/Adam_1B optimizer/conv4/conv2d/bias/AdamB"optimizer/conv4/conv2d/bias/Adam_1B"optimizer/conv4/conv2d/kernel/AdamB$optimizer/conv4/conv2d/kernel/Adam_1Boptimizer/fc1/dense/bias/AdamBoptimizer/fc1/dense/bias/Adam_1Boptimizer/fc1/dense/kernel/AdamB!optimizer/fc1/dense/kernel/Adam_1Boptimizer/fc2/dense/bias/AdamBoptimizer/fc2/dense/bias/Adam_1Boptimizer/fc2/dense/kernel/AdamB!optimizer/fc2/dense/kernel/Adam_1Boptimizer/fc2/dense_1/bias/AdamB!optimizer/fc2/dense_1/bias/Adam_1B!optimizer/fc2/dense_1/kernel/AdamB#optimizer/fc2/dense_1/kernel/Adam_1*
_output_shapes
:,*
dtype0
Í
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:,*
dtype0
ů
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*:
dtypes0
.2,*Ć
_output_shapesł
°::::::::::::::::::::::::::::::::::::::::::::
Ź
save/AssignAssignconv1/conv2d/biassave/RestoreV2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ŕ
save/Assign_1Assignconv1/conv2d/kernelsave/RestoreV2:1*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
°
save/Assign_2Assignconv2/conv2d/biassave/RestoreV2:2*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ŕ
save/Assign_3Assignconv2/conv2d/kernelsave/RestoreV2:3*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
ą
save/Assign_4Assignconv3/conv2d/biassave/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Á
save/Assign_5Assignconv3/conv2d/kernelsave/RestoreV2:5*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
ą
save/Assign_6Assignconv4/conv2d/biassave/RestoreV2:6*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Â
save/Assign_7Assignconv4/conv2d/kernelsave/RestoreV2:7*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
Ť
save/Assign_8Assignfc1/dense/biassave/RestoreV2:8*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
´
save/Assign_9Assignfc1/dense/kernelsave/RestoreV2:9*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
­
save/Assign_10Assignfc2/dense/biassave/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
ś
save/Assign_11Assignfc2/dense/kernelsave/RestoreV2:11*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
°
save/Assign_12Assignfc2/dense_1/biassave/RestoreV2:12*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
š
save/Assign_13Assignfc2/dense_1/kernelsave/RestoreV2:13*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
˛
save/Assign_14Assignoptimizer/beta1_powersave/RestoreV2:14*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
˛
save/Assign_15Assignoptimizer/beta2_powersave/RestoreV2:15*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Á
save/Assign_16Assign optimizer/conv1/conv2d/bias/Adamsave/RestoreV2:16*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ă
save/Assign_17Assign"optimizer/conv1/conv2d/bias/Adam_1save/RestoreV2:17*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ń
save/Assign_18Assign"optimizer/conv1/conv2d/kernel/Adamsave/RestoreV2:18*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
Ó
save/Assign_19Assign$optimizer/conv1/conv2d/kernel/Adam_1save/RestoreV2:19*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
Á
save/Assign_20Assign optimizer/conv2/conv2d/bias/Adamsave/RestoreV2:20*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ă
save/Assign_21Assign"optimizer/conv2/conv2d/bias/Adam_1save/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ń
save/Assign_22Assign"optimizer/conv2/conv2d/kernel/Adamsave/RestoreV2:22*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
Ó
save/Assign_23Assign$optimizer/conv2/conv2d/kernel/Adam_1save/RestoreV2:23*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
Â
save/Assign_24Assign optimizer/conv3/conv2d/bias/Adamsave/RestoreV2:24*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Ä
save/Assign_25Assign"optimizer/conv3/conv2d/bias/Adam_1save/RestoreV2:25*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Ň
save/Assign_26Assign"optimizer/conv3/conv2d/kernel/Adamsave/RestoreV2:26*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
Ô
save/Assign_27Assign$optimizer/conv3/conv2d/kernel/Adam_1save/RestoreV2:27*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
Â
save/Assign_28Assign optimizer/conv4/conv2d/bias/Adamsave/RestoreV2:28*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Ä
save/Assign_29Assign"optimizer/conv4/conv2d/bias/Adam_1save/RestoreV2:29*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Ó
save/Assign_30Assign"optimizer/conv4/conv2d/kernel/Adamsave/RestoreV2:30*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
Ő
save/Assign_31Assign$optimizer/conv4/conv2d/kernel/Adam_1save/RestoreV2:31*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
ź
save/Assign_32Assignoptimizer/fc1/dense/bias/Adamsave/RestoreV2:32*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
ž
save/Assign_33Assignoptimizer/fc1/dense/bias/Adam_1save/RestoreV2:33*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
Ĺ
save/Assign_34Assignoptimizer/fc1/dense/kernel/Adamsave/RestoreV2:34*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
Ç
save/Assign_35Assign!optimizer/fc1/dense/kernel/Adam_1save/RestoreV2:35*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
ź
save/Assign_36Assignoptimizer/fc2/dense/bias/Adamsave/RestoreV2:36*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
ž
save/Assign_37Assignoptimizer/fc2/dense/bias/Adam_1save/RestoreV2:37*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
Ĺ
save/Assign_38Assignoptimizer/fc2/dense/kernel/Adamsave/RestoreV2:38*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
Ç
save/Assign_39Assign!optimizer/fc2/dense/kernel/Adam_1save/RestoreV2:39*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
ż
save/Assign_40Assignoptimizer/fc2/dense_1/bias/Adamsave/RestoreV2:40*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
Á
save/Assign_41Assign!optimizer/fc2/dense_1/bias/Adam_1save/RestoreV2:41*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
Č
save/Assign_42Assign!optimizer/fc2/dense_1/kernel/Adamsave/RestoreV2:42*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
Ę
save/Assign_43Assign#optimizer/fc2/dense_1/kernel/Adam_1save/RestoreV2:43*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
ř
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
[
save_1/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
dtype0*
shape: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_2d80a7191d3743768029422510fb6783/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
˙

save_1/SaveV2/tensor_namesConst"/device:CPU:0*Ą

value
B
,Bconv1/conv2d/biasBconv1/conv2d/kernelBconv2/conv2d/biasBconv2/conv2d/kernelBconv3/conv2d/biasBconv3/conv2d/kernelBconv4/conv2d/biasBconv4/conv2d/kernelBfc1/dense/biasBfc1/dense/kernelBfc2/dense/biasBfc2/dense/kernelBfc2/dense_1/biasBfc2/dense_1/kernelBoptimizer/beta1_powerBoptimizer/beta2_powerB optimizer/conv1/conv2d/bias/AdamB"optimizer/conv1/conv2d/bias/Adam_1B"optimizer/conv1/conv2d/kernel/AdamB$optimizer/conv1/conv2d/kernel/Adam_1B optimizer/conv2/conv2d/bias/AdamB"optimizer/conv2/conv2d/bias/Adam_1B"optimizer/conv2/conv2d/kernel/AdamB$optimizer/conv2/conv2d/kernel/Adam_1B optimizer/conv3/conv2d/bias/AdamB"optimizer/conv3/conv2d/bias/Adam_1B"optimizer/conv3/conv2d/kernel/AdamB$optimizer/conv3/conv2d/kernel/Adam_1B optimizer/conv4/conv2d/bias/AdamB"optimizer/conv4/conv2d/bias/Adam_1B"optimizer/conv4/conv2d/kernel/AdamB$optimizer/conv4/conv2d/kernel/Adam_1Boptimizer/fc1/dense/bias/AdamBoptimizer/fc1/dense/bias/Adam_1Boptimizer/fc1/dense/kernel/AdamB!optimizer/fc1/dense/kernel/Adam_1Boptimizer/fc2/dense/bias/AdamBoptimizer/fc2/dense/bias/Adam_1Boptimizer/fc2/dense/kernel/AdamB!optimizer/fc2/dense/kernel/Adam_1Boptimizer/fc2/dense_1/bias/AdamB!optimizer/fc2/dense_1/bias/Adam_1B!optimizer/fc2/dense_1/kernel/AdamB#optimizer/fc2/dense_1/kernel/Adam_1*
_output_shapes
:,*
dtype0
Ě
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:,*
dtype0
Â
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesconv1/conv2d/biasconv1/conv2d/kernelconv2/conv2d/biasconv2/conv2d/kernelconv3/conv2d/biasconv3/conv2d/kernelconv4/conv2d/biasconv4/conv2d/kernelfc1/dense/biasfc1/dense/kernelfc2/dense/biasfc2/dense/kernelfc2/dense_1/biasfc2/dense_1/kerneloptimizer/beta1_poweroptimizer/beta2_power optimizer/conv1/conv2d/bias/Adam"optimizer/conv1/conv2d/bias/Adam_1"optimizer/conv1/conv2d/kernel/Adam$optimizer/conv1/conv2d/kernel/Adam_1 optimizer/conv2/conv2d/bias/Adam"optimizer/conv2/conv2d/bias/Adam_1"optimizer/conv2/conv2d/kernel/Adam$optimizer/conv2/conv2d/kernel/Adam_1 optimizer/conv3/conv2d/bias/Adam"optimizer/conv3/conv2d/bias/Adam_1"optimizer/conv3/conv2d/kernel/Adam$optimizer/conv3/conv2d/kernel/Adam_1 optimizer/conv4/conv2d/bias/Adam"optimizer/conv4/conv2d/bias/Adam_1"optimizer/conv4/conv2d/kernel/Adam$optimizer/conv4/conv2d/kernel/Adam_1optimizer/fc1/dense/bias/Adamoptimizer/fc1/dense/bias/Adam_1optimizer/fc1/dense/kernel/Adam!optimizer/fc1/dense/kernel/Adam_1optimizer/fc2/dense/bias/Adamoptimizer/fc2/dense/bias/Adam_1optimizer/fc2/dense/kernel/Adam!optimizer/fc2/dense/kernel/Adam_1optimizer/fc2/dense_1/bias/Adam!optimizer/fc2/dense_1/bias/Adam_1!optimizer/fc2/dense_1/kernel/Adam#optimizer/fc2/dense_1/kernel/Adam_1"/device:CPU:0*:
dtypes0
.2,
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Ą

value
B
,Bconv1/conv2d/biasBconv1/conv2d/kernelBconv2/conv2d/biasBconv2/conv2d/kernelBconv3/conv2d/biasBconv3/conv2d/kernelBconv4/conv2d/biasBconv4/conv2d/kernelBfc1/dense/biasBfc1/dense/kernelBfc2/dense/biasBfc2/dense/kernelBfc2/dense_1/biasBfc2/dense_1/kernelBoptimizer/beta1_powerBoptimizer/beta2_powerB optimizer/conv1/conv2d/bias/AdamB"optimizer/conv1/conv2d/bias/Adam_1B"optimizer/conv1/conv2d/kernel/AdamB$optimizer/conv1/conv2d/kernel/Adam_1B optimizer/conv2/conv2d/bias/AdamB"optimizer/conv2/conv2d/bias/Adam_1B"optimizer/conv2/conv2d/kernel/AdamB$optimizer/conv2/conv2d/kernel/Adam_1B optimizer/conv3/conv2d/bias/AdamB"optimizer/conv3/conv2d/bias/Adam_1B"optimizer/conv3/conv2d/kernel/AdamB$optimizer/conv3/conv2d/kernel/Adam_1B optimizer/conv4/conv2d/bias/AdamB"optimizer/conv4/conv2d/bias/Adam_1B"optimizer/conv4/conv2d/kernel/AdamB$optimizer/conv4/conv2d/kernel/Adam_1Boptimizer/fc1/dense/bias/AdamBoptimizer/fc1/dense/bias/Adam_1Boptimizer/fc1/dense/kernel/AdamB!optimizer/fc1/dense/kernel/Adam_1Boptimizer/fc2/dense/bias/AdamBoptimizer/fc2/dense/bias/Adam_1Boptimizer/fc2/dense/kernel/AdamB!optimizer/fc2/dense/kernel/Adam_1Boptimizer/fc2/dense_1/bias/AdamB!optimizer/fc2/dense_1/bias/Adam_1B!optimizer/fc2/dense_1/kernel/AdamB#optimizer/fc2/dense_1/kernel/Adam_1*
_output_shapes
:,*
dtype0
Ď
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:,*
dtype0

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*:
dtypes0
.2,*Ć
_output_shapesł
°::::::::::::::::::::::::::::::::::::::::::::
°
save_1/AssignAssignconv1/conv2d/biassave_1/RestoreV2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ä
save_1/Assign_1Assignconv1/conv2d/kernelsave_1/RestoreV2:1*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
´
save_1/Assign_2Assignconv2/conv2d/biassave_1/RestoreV2:2*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ä
save_1/Assign_3Assignconv2/conv2d/kernelsave_1/RestoreV2:3*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
ľ
save_1/Assign_4Assignconv3/conv2d/biassave_1/RestoreV2:4*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Ĺ
save_1/Assign_5Assignconv3/conv2d/kernelsave_1/RestoreV2:5*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
ľ
save_1/Assign_6Assignconv4/conv2d/biassave_1/RestoreV2:6*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Ć
save_1/Assign_7Assignconv4/conv2d/kernelsave_1/RestoreV2:7*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
Ż
save_1/Assign_8Assignfc1/dense/biassave_1/RestoreV2:8*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
¸
save_1/Assign_9Assignfc1/dense/kernelsave_1/RestoreV2:9*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
ą
save_1/Assign_10Assignfc2/dense/biassave_1/RestoreV2:10*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
ş
save_1/Assign_11Assignfc2/dense/kernelsave_1/RestoreV2:11*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
´
save_1/Assign_12Assignfc2/dense_1/biassave_1/RestoreV2:12*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
˝
save_1/Assign_13Assignfc2/dense_1/kernelsave_1/RestoreV2:13*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
ś
save_1/Assign_14Assignoptimizer/beta1_powersave_1/RestoreV2:14*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
ś
save_1/Assign_15Assignoptimizer/beta2_powersave_1/RestoreV2:15*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ĺ
save_1/Assign_16Assign optimizer/conv1/conv2d/bias/Adamsave_1/RestoreV2:16*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ç
save_1/Assign_17Assign"optimizer/conv1/conv2d/bias/Adam_1save_1/RestoreV2:17*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*$
_class
loc:@conv1/conv2d/bias
Ő
save_1/Assign_18Assign"optimizer/conv1/conv2d/kernel/Adamsave_1/RestoreV2:18*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
×
save_1/Assign_19Assign$optimizer/conv1/conv2d/kernel/Adam_1save_1/RestoreV2:19*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*&
_class
loc:@conv1/conv2d/kernel
Ĺ
save_1/Assign_20Assign optimizer/conv2/conv2d/bias/Adamsave_1/RestoreV2:20*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ç
save_1/Assign_21Assign"optimizer/conv2/conv2d/bias/Adam_1save_1/RestoreV2:21*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*$
_class
loc:@conv2/conv2d/bias
Ő
save_1/Assign_22Assign"optimizer/conv2/conv2d/kernel/Adamsave_1/RestoreV2:22*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
×
save_1/Assign_23Assign$optimizer/conv2/conv2d/kernel/Adam_1save_1/RestoreV2:23*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*&
_class
loc:@conv2/conv2d/kernel
Ć
save_1/Assign_24Assign optimizer/conv3/conv2d/bias/Adamsave_1/RestoreV2:24*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Č
save_1/Assign_25Assign"optimizer/conv3/conv2d/bias/Adam_1save_1/RestoreV2:25*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv3/conv2d/bias
Ö
save_1/Assign_26Assign"optimizer/conv3/conv2d/kernel/Adamsave_1/RestoreV2:26*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
Ř
save_1/Assign_27Assign$optimizer/conv3/conv2d/kernel/Adam_1save_1/RestoreV2:27*
T0*'
_output_shapes
:@*
use_locking(*
validate_shape(*&
_class
loc:@conv3/conv2d/kernel
Ć
save_1/Assign_28Assign optimizer/conv4/conv2d/bias/Adamsave_1/RestoreV2:28*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
Č
save_1/Assign_29Assign"optimizer/conv4/conv2d/bias/Adam_1save_1/RestoreV2:29*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*$
_class
loc:@conv4/conv2d/bias
×
save_1/Assign_30Assign"optimizer/conv4/conv2d/kernel/Adamsave_1/RestoreV2:30*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
Ů
save_1/Assign_31Assign$optimizer/conv4/conv2d/kernel/Adam_1save_1/RestoreV2:31*
T0*(
_output_shapes
:*
use_locking(*
validate_shape(*&
_class
loc:@conv4/conv2d/kernel
Ŕ
save_1/Assign_32Assignoptimizer/fc1/dense/bias/Adamsave_1/RestoreV2:32*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
Â
save_1/Assign_33Assignoptimizer/fc1/dense/bias/Adam_1save_1/RestoreV2:33*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc1/dense/bias
É
save_1/Assign_34Assignoptimizer/fc1/dense/kernel/Adamsave_1/RestoreV2:34*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
Ë
save_1/Assign_35Assign!optimizer/fc1/dense/kernel/Adam_1save_1/RestoreV2:35*
T0* 
_output_shapes
:
$*
use_locking(*
validate_shape(*#
_class
loc:@fc1/dense/kernel
Ŕ
save_1/Assign_36Assignoptimizer/fc2/dense/bias/Adamsave_1/RestoreV2:36*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
Â
save_1/Assign_37Assignoptimizer/fc2/dense/bias/Adam_1save_1/RestoreV2:37*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*!
_class
loc:@fc2/dense/bias
É
save_1/Assign_38Assignoptimizer/fc2/dense/kernel/Adamsave_1/RestoreV2:38*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
Ë
save_1/Assign_39Assign!optimizer/fc2/dense/kernel/Adam_1save_1/RestoreV2:39*
T0* 
_output_shapes
:
*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense/kernel
Ă
save_1/Assign_40Assignoptimizer/fc2/dense_1/bias/Adamsave_1/RestoreV2:40*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
Ĺ
save_1/Assign_41Assign!optimizer/fc2/dense_1/bias/Adam_1save_1/RestoreV2:41*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@fc2/dense_1/bias
Ě
save_1/Assign_42Assign!optimizer/fc2/dense_1/kernel/Adamsave_1/RestoreV2:42*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
Î
save_1/Assign_43Assign#optimizer/fc2/dense_1/kernel/Adam_1save_1/RestoreV2:43*
T0*
_output_shapes
:	*
use_locking(*
validate_shape(*%
_class
loc:@fc2/dense_1/kernel
Ô
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"Ź
regularization_losses

-fc1/dense/kernel/Regularizer/l2_regularizer:0
-fc2/dense/kernel/Regularizer/l2_regularizer:0
/fc2/dense_1/kernel/Regularizer/l2_regularizer:0"Ë6
	variables˝6ş6

conv1/conv2d/kernel:0conv1/conv2d/kernel/Assignconv1/conv2d/kernel/read:022conv1/conv2d/kernel/Initializer/truncated_normal:08
r
conv1/conv2d/bias:0conv1/conv2d/bias/Assignconv1/conv2d/bias/read:02%conv1/conv2d/bias/Initializer/zeros:08

conv2/conv2d/kernel:0conv2/conv2d/kernel/Assignconv2/conv2d/kernel/read:022conv2/conv2d/kernel/Initializer/truncated_normal:08
r
conv2/conv2d/bias:0conv2/conv2d/bias/Assignconv2/conv2d/bias/read:02%conv2/conv2d/bias/Initializer/zeros:08

conv3/conv2d/kernel:0conv3/conv2d/kernel/Assignconv3/conv2d/kernel/read:022conv3/conv2d/kernel/Initializer/truncated_normal:08
r
conv3/conv2d/bias:0conv3/conv2d/bias/Assignconv3/conv2d/bias/read:02%conv3/conv2d/bias/Initializer/zeros:08

conv4/conv2d/kernel:0conv4/conv2d/kernel/Assignconv4/conv2d/kernel/read:022conv4/conv2d/kernel/Initializer/truncated_normal:08
r
conv4/conv2d/bias:0conv4/conv2d/bias/Assignconv4/conv2d/bias/read:02%conv4/conv2d/bias/Initializer/zeros:08
y
fc1/dense/kernel:0fc1/dense/kernel/Assignfc1/dense/kernel/read:02/fc1/dense/kernel/Initializer/truncated_normal:08
f
fc1/dense/bias:0fc1/dense/bias/Assignfc1/dense/bias/read:02"fc1/dense/bias/Initializer/zeros:08
y
fc2/dense/kernel:0fc2/dense/kernel/Assignfc2/dense/kernel/read:02/fc2/dense/kernel/Initializer/truncated_normal:08
f
fc2/dense/bias:0fc2/dense/bias/Assignfc2/dense/bias/read:02"fc2/dense/bias/Initializer/zeros:08

fc2/dense_1/kernel:0fc2/dense_1/kernel/Assignfc2/dense_1/kernel/read:021fc2/dense_1/kernel/Initializer/truncated_normal:08
n
fc2/dense_1/bias:0fc2/dense_1/bias/Assignfc2/dense_1/bias/read:02$fc2/dense_1/bias/Initializer/zeros:08
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0
´
$optimizer/conv1/conv2d/kernel/Adam:0)optimizer/conv1/conv2d/kernel/Adam/Assign)optimizer/conv1/conv2d/kernel/Adam/read:026optimizer/conv1/conv2d/kernel/Adam/Initializer/zeros:0
ź
&optimizer/conv1/conv2d/kernel/Adam_1:0+optimizer/conv1/conv2d/kernel/Adam_1/Assign+optimizer/conv1/conv2d/kernel/Adam_1/read:028optimizer/conv1/conv2d/kernel/Adam_1/Initializer/zeros:0
Ź
"optimizer/conv1/conv2d/bias/Adam:0'optimizer/conv1/conv2d/bias/Adam/Assign'optimizer/conv1/conv2d/bias/Adam/read:024optimizer/conv1/conv2d/bias/Adam/Initializer/zeros:0
´
$optimizer/conv1/conv2d/bias/Adam_1:0)optimizer/conv1/conv2d/bias/Adam_1/Assign)optimizer/conv1/conv2d/bias/Adam_1/read:026optimizer/conv1/conv2d/bias/Adam_1/Initializer/zeros:0
´
$optimizer/conv2/conv2d/kernel/Adam:0)optimizer/conv2/conv2d/kernel/Adam/Assign)optimizer/conv2/conv2d/kernel/Adam/read:026optimizer/conv2/conv2d/kernel/Adam/Initializer/zeros:0
ź
&optimizer/conv2/conv2d/kernel/Adam_1:0+optimizer/conv2/conv2d/kernel/Adam_1/Assign+optimizer/conv2/conv2d/kernel/Adam_1/read:028optimizer/conv2/conv2d/kernel/Adam_1/Initializer/zeros:0
Ź
"optimizer/conv2/conv2d/bias/Adam:0'optimizer/conv2/conv2d/bias/Adam/Assign'optimizer/conv2/conv2d/bias/Adam/read:024optimizer/conv2/conv2d/bias/Adam/Initializer/zeros:0
´
$optimizer/conv2/conv2d/bias/Adam_1:0)optimizer/conv2/conv2d/bias/Adam_1/Assign)optimizer/conv2/conv2d/bias/Adam_1/read:026optimizer/conv2/conv2d/bias/Adam_1/Initializer/zeros:0
´
$optimizer/conv3/conv2d/kernel/Adam:0)optimizer/conv3/conv2d/kernel/Adam/Assign)optimizer/conv3/conv2d/kernel/Adam/read:026optimizer/conv3/conv2d/kernel/Adam/Initializer/zeros:0
ź
&optimizer/conv3/conv2d/kernel/Adam_1:0+optimizer/conv3/conv2d/kernel/Adam_1/Assign+optimizer/conv3/conv2d/kernel/Adam_1/read:028optimizer/conv3/conv2d/kernel/Adam_1/Initializer/zeros:0
Ź
"optimizer/conv3/conv2d/bias/Adam:0'optimizer/conv3/conv2d/bias/Adam/Assign'optimizer/conv3/conv2d/bias/Adam/read:024optimizer/conv3/conv2d/bias/Adam/Initializer/zeros:0
´
$optimizer/conv3/conv2d/bias/Adam_1:0)optimizer/conv3/conv2d/bias/Adam_1/Assign)optimizer/conv3/conv2d/bias/Adam_1/read:026optimizer/conv3/conv2d/bias/Adam_1/Initializer/zeros:0
´
$optimizer/conv4/conv2d/kernel/Adam:0)optimizer/conv4/conv2d/kernel/Adam/Assign)optimizer/conv4/conv2d/kernel/Adam/read:026optimizer/conv4/conv2d/kernel/Adam/Initializer/zeros:0
ź
&optimizer/conv4/conv2d/kernel/Adam_1:0+optimizer/conv4/conv2d/kernel/Adam_1/Assign+optimizer/conv4/conv2d/kernel/Adam_1/read:028optimizer/conv4/conv2d/kernel/Adam_1/Initializer/zeros:0
Ź
"optimizer/conv4/conv2d/bias/Adam:0'optimizer/conv4/conv2d/bias/Adam/Assign'optimizer/conv4/conv2d/bias/Adam/read:024optimizer/conv4/conv2d/bias/Adam/Initializer/zeros:0
´
$optimizer/conv4/conv2d/bias/Adam_1:0)optimizer/conv4/conv2d/bias/Adam_1/Assign)optimizer/conv4/conv2d/bias/Adam_1/read:026optimizer/conv4/conv2d/bias/Adam_1/Initializer/zeros:0
¨
!optimizer/fc1/dense/kernel/Adam:0&optimizer/fc1/dense/kernel/Adam/Assign&optimizer/fc1/dense/kernel/Adam/read:023optimizer/fc1/dense/kernel/Adam/Initializer/zeros:0
°
#optimizer/fc1/dense/kernel/Adam_1:0(optimizer/fc1/dense/kernel/Adam_1/Assign(optimizer/fc1/dense/kernel/Adam_1/read:025optimizer/fc1/dense/kernel/Adam_1/Initializer/zeros:0
 
optimizer/fc1/dense/bias/Adam:0$optimizer/fc1/dense/bias/Adam/Assign$optimizer/fc1/dense/bias/Adam/read:021optimizer/fc1/dense/bias/Adam/Initializer/zeros:0
¨
!optimizer/fc1/dense/bias/Adam_1:0&optimizer/fc1/dense/bias/Adam_1/Assign&optimizer/fc1/dense/bias/Adam_1/read:023optimizer/fc1/dense/bias/Adam_1/Initializer/zeros:0
¨
!optimizer/fc2/dense/kernel/Adam:0&optimizer/fc2/dense/kernel/Adam/Assign&optimizer/fc2/dense/kernel/Adam/read:023optimizer/fc2/dense/kernel/Adam/Initializer/zeros:0
°
#optimizer/fc2/dense/kernel/Adam_1:0(optimizer/fc2/dense/kernel/Adam_1/Assign(optimizer/fc2/dense/kernel/Adam_1/read:025optimizer/fc2/dense/kernel/Adam_1/Initializer/zeros:0
 
optimizer/fc2/dense/bias/Adam:0$optimizer/fc2/dense/bias/Adam/Assign$optimizer/fc2/dense/bias/Adam/read:021optimizer/fc2/dense/bias/Adam/Initializer/zeros:0
¨
!optimizer/fc2/dense/bias/Adam_1:0&optimizer/fc2/dense/bias/Adam_1/Assign&optimizer/fc2/dense/bias/Adam_1/read:023optimizer/fc2/dense/bias/Adam_1/Initializer/zeros:0
°
#optimizer/fc2/dense_1/kernel/Adam:0(optimizer/fc2/dense_1/kernel/Adam/Assign(optimizer/fc2/dense_1/kernel/Adam/read:025optimizer/fc2/dense_1/kernel/Adam/Initializer/zeros:0
¸
%optimizer/fc2/dense_1/kernel/Adam_1:0*optimizer/fc2/dense_1/kernel/Adam_1/Assign*optimizer/fc2/dense_1/kernel/Adam_1/read:027optimizer/fc2/dense_1/kernel/Adam_1/Initializer/zeros:0
¨
!optimizer/fc2/dense_1/bias/Adam:0&optimizer/fc2/dense_1/bias/Adam/Assign&optimizer/fc2/dense_1/bias/Adam/read:023optimizer/fc2/dense_1/bias/Adam/Initializer/zeros:0
°
#optimizer/fc2/dense_1/bias/Adam_1:0(optimizer/fc2/dense_1/bias/Adam_1/Assign(optimizer/fc2/dense_1/bias/Adam_1/read:025optimizer/fc2/dense_1/bias/Adam_1/Initializer/zeros:0"Ĺ
trainable_variables­Ş

conv1/conv2d/kernel:0conv1/conv2d/kernel/Assignconv1/conv2d/kernel/read:022conv1/conv2d/kernel/Initializer/truncated_normal:08
r
conv1/conv2d/bias:0conv1/conv2d/bias/Assignconv1/conv2d/bias/read:02%conv1/conv2d/bias/Initializer/zeros:08

conv2/conv2d/kernel:0conv2/conv2d/kernel/Assignconv2/conv2d/kernel/read:022conv2/conv2d/kernel/Initializer/truncated_normal:08
r
conv2/conv2d/bias:0conv2/conv2d/bias/Assignconv2/conv2d/bias/read:02%conv2/conv2d/bias/Initializer/zeros:08

conv3/conv2d/kernel:0conv3/conv2d/kernel/Assignconv3/conv2d/kernel/read:022conv3/conv2d/kernel/Initializer/truncated_normal:08
r
conv3/conv2d/bias:0conv3/conv2d/bias/Assignconv3/conv2d/bias/read:02%conv3/conv2d/bias/Initializer/zeros:08

conv4/conv2d/kernel:0conv4/conv2d/kernel/Assignconv4/conv2d/kernel/read:022conv4/conv2d/kernel/Initializer/truncated_normal:08
r
conv4/conv2d/bias:0conv4/conv2d/bias/Assignconv4/conv2d/bias/read:02%conv4/conv2d/bias/Initializer/zeros:08
y
fc1/dense/kernel:0fc1/dense/kernel/Assignfc1/dense/kernel/read:02/fc1/dense/kernel/Initializer/truncated_normal:08
f
fc1/dense/bias:0fc1/dense/bias/Assignfc1/dense/bias/read:02"fc1/dense/bias/Initializer/zeros:08
y
fc2/dense/kernel:0fc2/dense/kernel/Assignfc2/dense/kernel/read:02/fc2/dense/kernel/Initializer/truncated_normal:08
f
fc2/dense/bias:0fc2/dense/bias/Assignfc2/dense/bias/read:02"fc2/dense/bias/Initializer/zeros:08

fc2/dense_1/kernel:0fc2/dense_1/kernel/Assignfc2/dense_1/kernel/read:021fc2/dense_1/kernel/Initializer/truncated_normal:08
n
fc2/dense_1/bias:0fc2/dense_1/bias/Assignfc2/dense_1/bias/read:02$fc2/dense_1/bias/Initializer/zeros:08"B
losses8
6
4soft_cross/sparse_softmax_cross_entropy_loss/value:0"
train_op

optimizer/Adam"#
	summaries

loss:0

accuracy:0