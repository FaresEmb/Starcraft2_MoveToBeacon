ú§
÷&Ů&
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
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
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
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
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
¨
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12
b'unknown'î
q
tf_mapPlaceholder*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙@@*+
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
_
tf_aPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
tf_advPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
v

ExpandDims
ExpandDimstf_mapExpandDims/dim*
T0*

Tdim0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
W
flatten/ShapeShape
ExpandDims*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask *
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
~
flatten/ReshapeReshape
ExpandDimsflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *0˝*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *0=*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2*
_class
loc:@dense/kernel*

seed** 
_output_shapes
:
 
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ľ
dense/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
 *
_class
loc:@dense/kernel* 
_output_shapes
:
 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
 

dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:


dense/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense/bias*
_output_shapes	
:
ł
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/MatMulMatMulflatten/Reshapedense/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *0˝*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *0=*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2!*!
_class
loc:@dense_1/kernel*

seed** 
_output_shapes
:
 
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Š
dense_1/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
 *!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Ń
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
:

$dense_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
Ő
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
: 

dense_1/bias
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@dense_1/bias*
_output_shapes	
: 
ť
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
: 

dense_1/MatMulMatMul
dense/Reludense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
\

LogSoftmax
LogSoftmaxdense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
e
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
ť
multinomial/MultinomialMultinomialdense_1/BiasAdd#multinomial/Multinomial/num_samples*
T0*
seed21*
output_dtype0	*

seed**'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
SqueezeSqueezemultinomial/Multinomial*
T0	*
squeeze_dims
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMaxArgMaxdense_1/BiasAddArgMax/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
P
one_hot/depthConst*
value
B : *
dtype0*
_output_shapes
: 

one_hotOneHottf_aone_hot/depthone_hot/on_valueone_hot/off_value*
axis˙˙˙˙˙˙˙˙˙*
T0*
TI0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
R
mulMulone_hot
LogSoftmax*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
W
Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
q
SumSummulSum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
X
one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
one_hot_1/depthConst*
value
B : *
dtype0*
_output_shapes
: 
¨
	one_hot_1OneHotSqueezeone_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
axis˙˙˙˙˙˙˙˙˙*
T0*
TI0	*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
V
mul_1Mul	one_hot_1
LogSoftmax*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Y
Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
w
Sum_1Summul_1Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
mul_2MulSumtf_adv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
X
MeanMeanmul_2Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
1
NegNegMean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
^
gradients/Mean_grad/ShapeShapemul_2*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/Mean_grad/Shape_1Shapemul_2*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/mul_2_grad/ShapeShapeSum*
T0*
out_type0*
_output_shapes
:
b
gradients/mul_2_grad/Shape_1Shapetf_adv*
T0*
out_type0*
_output_shapes
:
ş
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
r
gradients/mul_2_grad/MulMulgradients/Mean_grad/truedivtf_adv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
gradients/mul_2_grad/Mul_1MulSumgradients/Mean_grad/truediv*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
Ţ
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
gradients/Sum_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:

gradients/Sum_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
Ą
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/Shape_1Const*
valueB *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 

gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
Ď
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
ş
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
ń
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*
N*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
ˇ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
Ż
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
ż
gradients/Sum_grad/ReshapeReshape-gradients/mul_2_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
_
gradients/mul_grad/ShapeShapeone_hot*
T0*
out_type0*
_output_shapes
:
d
gradients/mul_grad/Shape_1Shape
LogSoftmax*
T0*
out_type0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
u
gradients/mul_grad/MulMulgradients/Sum_grad/Tile
LogSoftmax*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
t
gradients/mul_grad/Mul_1Mulone_hotgradients/Sum_grad/Tile*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ű
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
á
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
c
gradients/LogSoftmax_grad/ExpExp
LogSoftmax*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
z
/gradients/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ó
gradients/LogSoftmax_grad/SumSum-gradients/mul_grad/tuple/control_dependency_1/gradients/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/LogSoftmax_grad/mulMulgradients/LogSoftmax_grad/Sumgradients/LogSoftmax_grad/Exp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ľ
gradients/LogSoftmax_grad/subSub-gradients/mul_grad/tuple/control_dependency_1gradients/LogSoftmax_grad/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes	
: 

/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/LogSoftmax_grad/sub+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
ů
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/LogSoftmax_grad/sub0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/LogSoftmax_grad/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
: 
Ő
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
&gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
 

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1

6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
 
Ľ
"gradients/dense/Relu_grad/ReluGradReluGrad6gradients/dense_1/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad#^gradients/dense/Relu_grad/ReluGrad
˙
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Relu_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ď
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ç
$gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape5gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:
 

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
ý
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ű
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
 
}
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@dense/bias*
_output_shapes
: 
­
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
i
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
}
beta2_power/initial_valueConst*
valueB
 *wž?*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@dense/bias*
_output_shapes
: 
­
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
i
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
Ľ
3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
é
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ş
dense/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
 *
	container *
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ď
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 

dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
 
§
5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
ď
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ź
dense/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
 *
	container *
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ő
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 

dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
 

!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense/bias*
_output_shapes	
:
Â
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
v
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense/bias*
_output_shapes	
:
Č
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
z
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:
Š
5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ń
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Ž
dense_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
 *
	container *!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
×
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Ť
7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
÷
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
°
dense_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
 *
	container *!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
Ý
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

3dense_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
:

)dense_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
ä
#dense_1/bias/Adam/Initializer/zerosFill3dense_1/bias/Adam/Initializer/zeros/shape_as_tensor)dense_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
: 
 
dense_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense_1/bias*
_output_shapes	
: 
Ę
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
|
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
: 
Ą
5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
:

+dense_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
ę
%dense_1/bias/Adam_1/Initializer/zerosFill5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes	
: 
˘
dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense_1/bias*
_output_shapes	
: 
Đ
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 

dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
: 
W
Adam/learning_rateConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
î
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/kernel*
use_nesterov( * 
_output_shapes
:
 
ŕ
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes	
:
ú
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_1/kernel*
use_nesterov( * 
_output_shapes
:
 
ě
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_1/bias*
use_nesterov( *
_output_shapes	
: 

Adam/mulMulbeta1_power/read
Adam/beta1!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 


Adam/mul_1Mulbeta2_power/read
Adam/beta2!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
ž
AdamNoOp^Adam/Assign^Adam/Assign_1!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam
?
Neg_1NegSum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_1MeanNeg_1Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
î
initNoOp^beta1_power/Assign^beta2_power/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign
`
Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
i
ReshapeReshapedense/kernel/readReshape/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_1/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
j
	Reshape_1Reshapedense/bias/readReshape_1/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o
	Reshape_2Reshapedense_1/kernel/readReshape_2/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_3/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
l
	Reshape_3Reshapedense_1/bias/readReshape_3/shape*
T0*
Tshape0*
_output_shapes	
: 
b
Reshape_4/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
j
	Reshape_4Reshapebeta1_power/readReshape_4/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_5/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
j
	Reshape_5Reshapebeta2_power/readReshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r
	Reshape_6Reshapedense/kernel/Adam/readReshape_6/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_7/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
t
	Reshape_7Reshapedense/kernel/Adam_1/readReshape_7/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_8/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
o
	Reshape_8Reshapedense/bias/Adam/readReshape_8/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_9/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q
	Reshape_9Reshapedense/bias/Adam_1/readReshape_9/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_10/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
v

Reshape_10Reshapedense_1/kernel/Adam/readReshape_10/shape*
T0*
Tshape0*
_output_shapes

:@
c
Reshape_11/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x

Reshape_11Reshapedense_1/kernel/Adam_1/readReshape_11/shape*
T0*
Tshape0*
_output_shapes

:@
c
Reshape_12/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s

Reshape_12Reshapedense_1/bias/Adam/readReshape_12/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_13/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
u

Reshape_13Reshapedense_1/bias/Adam_1/readReshape_13/shape*
T0*
Tshape0*
_output_shapes	
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ř
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7	Reshape_8	Reshape_9
Reshape_10
Reshape_11
Reshape_12
Reshape_13concat/axis*
T0*
N*

Tidx0*
_output_shapes
	:ć
d
PyFuncPyFuncconcat*
Tin
2*
token
pyfunc_0*
Tout
2*
_output_shapes
:

Const_2Const*M
valueDBB"8                                          *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ľ
splitSplitVPyFuncConst_2split/split_dim*
T0*

Tlen0*
	num_split*L
_output_shapes:
8::::::::::::::
a
Reshape_14/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
g

Reshape_14ReshapesplitReshape_14/shape*
T0*
Tshape0* 
_output_shapes
:
 
[
Reshape_15/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_15Reshapesplit:1Reshape_15/shape*
T0*
Tshape0*
_output_shapes	
:
a
Reshape_16/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_16Reshapesplit:2Reshape_16/shape*
T0*
Tshape0* 
_output_shapes
:
 
[
Reshape_17/shapeConst*
valueB: *
dtype0*
_output_shapes
:
d

Reshape_17Reshapesplit:3Reshape_17/shape*
T0*
Tshape0*
_output_shapes	
: 
S
Reshape_18/shapeConst*
valueB *
dtype0*
_output_shapes
: 
_

Reshape_18Reshapesplit:4Reshape_18/shape*
T0*
Tshape0*
_output_shapes
: 
S
Reshape_19/shapeConst*
valueB *
dtype0*
_output_shapes
: 
_

Reshape_19Reshapesplit:5Reshape_19/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_20/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_20Reshapesplit:6Reshape_20/shape*
T0*
Tshape0* 
_output_shapes
:
 
a
Reshape_21/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_21Reshapesplit:7Reshape_21/shape*
T0*
Tshape0* 
_output_shapes
:
 
[
Reshape_22/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_22Reshapesplit:8Reshape_22/shape*
T0*
Tshape0*
_output_shapes	
:
[
Reshape_23/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_23Reshapesplit:9Reshape_23/shape*
T0*
Tshape0*
_output_shapes	
:
a
Reshape_24/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_24Reshapesplit:10Reshape_24/shape*
T0*
Tshape0* 
_output_shapes
:
 
a
Reshape_25/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
j

Reshape_25Reshapesplit:11Reshape_25/shape*
T0*
Tshape0* 
_output_shapes
:
 
[
Reshape_26/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_26Reshapesplit:12Reshape_26/shape*
T0*
Tshape0*
_output_shapes	
: 
[
Reshape_27/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_27Reshapesplit:13Reshape_27/shape*
T0*
Tshape0*
_output_shapes	
: 

AssignAssigndense/kernel
Reshape_14*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 

Assign_1Assign
dense/bias
Reshape_15*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ľ
Assign_2Assigndense_1/kernel
Reshape_16*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

Assign_3Assigndense_1/bias
Reshape_17*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 

Assign_4Assignbeta1_power
Reshape_18*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 

Assign_5Assignbeta2_power
Reshape_19*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ś
Assign_6Assigndense/kernel/Adam
Reshape_20*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
¨
Assign_7Assigndense/kernel/Adam_1
Reshape_21*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 

Assign_8Assigndense/bias/Adam
Reshape_22*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:

Assign_9Assigndense/bias/Adam_1
Reshape_23*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ť
	Assign_10Assigndense_1/kernel/Adam
Reshape_24*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
­
	Assign_11Assigndense_1/kernel/Adam_1
Reshape_25*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˘
	Assign_12Assigndense_1/bias/Adam
Reshape_26*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
¤
	Assign_13Assigndense_1/bias/Adam_1
Reshape_27*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
Ž

group_depsNoOp^Assign	^Assign_1
^Assign_10
^Assign_11
^Assign_12
^Assign_13	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^Assign_8	^Assign_9
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_87f0c641c34e42328140789c3988e377/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ô
save/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ó
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
T0*
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
×
save/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ń
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save/Assign_2Assign
dense/biassave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
¨
save/Assign_3Assigndense/bias/Adamsave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ş
save/Assign_4Assigndense/bias/Adam_1save/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ą
save/Assign_6Assigndense/kernel/Adamsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ł
save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
§
save/Assign_8Assigndense_1/biassave/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
Ź
save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
˛
save/Assign_11Assigndense_1/kernelsave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ˇ
save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
š
save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ü
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
shape: *
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_08b0cc592b564ecc8dc66484a3970f46/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ö
save_1/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
Ů
save_1/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ů
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_1/AssignAssignbeta1_powersave_1/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
§
save_1/Assign_2Assign
dense/biassave_1/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save_1/Assign_3Assigndense/bias/Adamsave_1/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save_1/Assign_4Assigndense/bias/Adam_1save_1/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
°
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ľ
save_1/Assign_6Assigndense/kernel/Adamsave_1/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ˇ
save_1/Assign_7Assigndense/kernel/Adam_1save_1/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ť
save_1/Assign_8Assigndense_1/biassave_1/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save_1/Assign_9Assigndense_1/bias/Adamsave_1/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
´
save_1/Assign_10Assigndense_1/bias/Adam_1save_1/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
ś
save_1/Assign_11Assigndense_1/kernelsave_1/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ť
save_1/Assign_12Assigndense_1/kernel/Adamsave_1/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˝
save_1/Assign_13Assigndense_1/kernel/Adam_1save_1/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
shape: *
_output_shapes
: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_8a98aa49185c4205a372e9b08e305e4c/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
Ö
save_2/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_2/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
Ł
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
Ů
save_2/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_2/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ů
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_2/AssignAssignbeta1_powersave_2/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
§
save_2/Assign_2Assign
dense/biassave_2/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save_2/Assign_3Assigndense/bias/Adamsave_2/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save_2/Assign_4Assigndense/bias/Adam_1save_2/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
°
save_2/Assign_5Assigndense/kernelsave_2/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ľ
save_2/Assign_6Assigndense/kernel/Adamsave_2/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ˇ
save_2/Assign_7Assigndense/kernel/Adam_1save_2/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ť
save_2/Assign_8Assigndense_1/biassave_2/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save_2/Assign_9Assigndense_1/bias/Adamsave_2/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
´
save_2/Assign_10Assigndense_1/bias/Adam_1save_2/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
ś
save_2/Assign_11Assigndense_1/kernelsave_2/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ť
save_2/Assign_12Assigndense_1/kernel/Adamsave_2/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˝
save_2/Assign_13Assigndense_1/kernel/Adam_1save_2/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
shape: *
_output_shapes
: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_561a960bd8174adbb02c310e981076aa/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_3/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
Ö
save_3/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_3/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
Ł
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
T0*
_output_shapes
: 
Ů
save_3/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_3/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ů
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_3/AssignAssignbeta1_powersave_3/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save_3/Assign_1Assignbeta2_powersave_3/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
§
save_3/Assign_2Assign
dense/biassave_3/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save_3/Assign_3Assigndense/bias/Adamsave_3/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save_3/Assign_4Assigndense/bias/Adam_1save_3/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
°
save_3/Assign_5Assigndense/kernelsave_3/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ľ
save_3/Assign_6Assigndense/kernel/Adamsave_3/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ˇ
save_3/Assign_7Assigndense/kernel/Adam_1save_3/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ť
save_3/Assign_8Assigndense_1/biassave_3/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save_3/Assign_9Assigndense_1/bias/Adamsave_3/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
´
save_3/Assign_10Assigndense_1/bias/Adam_1save_3/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
ś
save_3/Assign_11Assigndense_1/kernelsave_3/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ť
save_3/Assign_12Assigndense_1/kernel/Adamsave_3/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˝
save_3/Assign_13Assigndense_1/kernel/Adam_1save_3/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
dtype0*
shape: *
_output_shapes
: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_104458f10c4c414f9ae99c42e0175f90/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_4/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_4/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
Ö
save_4/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_4/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
Ł
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
Ů
save_4/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_4/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ů
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_4/AssignAssignbeta1_powersave_4/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save_4/Assign_1Assignbeta2_powersave_4/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
§
save_4/Assign_2Assign
dense/biassave_4/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save_4/Assign_3Assigndense/bias/Adamsave_4/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save_4/Assign_4Assigndense/bias/Adam_1save_4/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
°
save_4/Assign_5Assigndense/kernelsave_4/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ľ
save_4/Assign_6Assigndense/kernel/Adamsave_4/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ˇ
save_4/Assign_7Assigndense/kernel/Adam_1save_4/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ť
save_4/Assign_8Assigndense_1/biassave_4/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save_4/Assign_9Assigndense_1/bias/Adamsave_4/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
´
save_4/Assign_10Assigndense_1/bias/Adam_1save_4/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
ś
save_4/Assign_11Assigndense_1/kernelsave_4/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ť
save_4/Assign_12Assigndense_1/kernel/Adamsave_4/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˝
save_4/Assign_13Assigndense_1/kernel/Adam_1save_4/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_2^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
[
save_5/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
dtype0*
shape: *
_output_shapes
: 

save_5/StringJoin/inputs_1Const*<
value3B1 B+_temp_e0464413d1a14c808cdb1f8ef9df693a/part*
dtype0*
_output_shapes
: 
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_5/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_5/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
Ö
save_5/SaveV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_5/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ű
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1*
dtypes
2

save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
Ł
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
T0*
_output_shapes
: 
Ů
save_5/RestoreV2/tensor_namesConst*
valueýBúBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_5/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ů
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_5/AssignAssignbeta1_powersave_5/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
Ł
save_5/Assign_1Assignbeta2_powersave_5/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes
: 
§
save_5/Assign_2Assign
dense/biassave_5/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save_5/Assign_3Assigndense/bias/Adamsave_5/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save_5/Assign_4Assigndense/bias/Adam_1save_5/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
°
save_5/Assign_5Assigndense/kernelsave_5/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ľ
save_5/Assign_6Assigndense/kernel/Adamsave_5/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
ˇ
save_5/Assign_7Assigndense/kernel/Adam_1save_5/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:
 
Ť
save_5/Assign_8Assigndense_1/biassave_5/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
°
save_5/Assign_9Assigndense_1/bias/Adamsave_5/RestoreV2:9*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
´
save_5/Assign_10Assigndense_1/bias/Adam_1save_5/RestoreV2:10*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
: 
ś
save_5/Assign_11Assigndense_1/kernelsave_5/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
ť
save_5/Assign_12Assigndense_1/kernel/Adamsave_5/RestoreV2:12*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 
˝
save_5/Assign_13Assigndense_1/kernel/Adam_1save_5/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
 

save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_2^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard "B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"
	variablesňď
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0
x
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assigndense_1/kernel/Adam/read:02'dense_1/kernel/Adam/Initializer/zeros:0

dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assigndense_1/kernel/Adam_1/read:02)dense_1/kernel/Adam_1/Initializer/zeros:0
p
dense_1/bias/Adam:0dense_1/bias/Adam/Assigndense_1/bias/Adam/read:02%dense_1/bias/Adam/Initializer/zeros:0
x
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assigndense_1/bias/Adam_1/read:02'dense_1/bias/Adam_1/Initializer/zeros:0"­
trainable_variables
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08"
train_op

Adam*ě
serving_defaultŘ
(
x#
tf_map:0˙˙˙˙˙˙˙˙˙@@
!
tf_a
tf_a:0˙˙˙˙˙˙˙˙˙
%
tf_adv
tf_adv:0˙˙˙˙˙˙˙˙˙!
mu
ArgMax:0	˙˙˙˙˙˙˙˙˙"
pi
	Squeeze:0	˙˙˙˙˙˙˙˙˙"
logp_a
Sum:0˙˙˙˙˙˙˙˙˙%
logp_pi
Sum_1:0˙˙˙˙˙˙˙˙˙
pi_loss
Neg:0 

approx_ent
Mean_1:0 tensorflow/serving/predict