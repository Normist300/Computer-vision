�
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8�
�
Adam/dense_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/v
y
(Adam/dense_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_77/kernel/v
�
*Adam/dense_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_76/bias/v
y
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*'
shared_nameAdam/dense_76/kernel/v
�
*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v*
_output_shapes
:	�
*
dtype0
�
#Adam/batch_normalization_146/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_146/beta/v
�
7Adam/batch_normalization_146/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_146/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_146/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_146/gamma/v
�
8Adam/batch_normalization_146/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_146/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_147/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_147/bias/v
}
*Adam/conv2d_147/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_147/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_147/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_147/kernel/v
�
,Adam/conv2d_147/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_147/kernel/v*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_145/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_145/beta/v
�
7Adam/batch_normalization_145/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_145/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_145/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_145/gamma/v
�
8Adam/batch_normalization_145/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_145/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_146/bias/v
}
*Adam/conv2d_146/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_146/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_146/kernel/v
�
,Adam/conv2d_146/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_146/kernel/v*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_144/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_144/beta/v
�
7Adam/batch_normalization_144/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_144/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_144/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_144/gamma/v
�
8Adam/batch_normalization_144/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_144/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_145/bias/v
}
*Adam/conv2d_145/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_145/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_145/kernel/v
�
,Adam/conv2d_145/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_145/kernel/v*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_143/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_143/beta/v
�
7Adam/batch_normalization_143/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_143/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_143/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_143/gamma/v
�
8Adam/batch_normalization_143/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_143/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_144/bias/v
}
*Adam/conv2d_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_144/kernel/v
�
,Adam/conv2d_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/kernel/v*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_142/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_142/beta/v
�
7Adam/batch_normalization_142/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_142/beta/v*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_142/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_142/gamma/v
�
8Adam/batch_normalization_142/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_142/gamma/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_143/bias/v
}
*Adam/conv2d_143/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_143/kernel/v
�
,Adam/conv2d_143/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/dense_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/m
y
(Adam/dense_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_77/kernel/m
�
*Adam/dense_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_76/bias/m
y
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*'
shared_nameAdam/dense_76/kernel/m
�
*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m*
_output_shapes
:	�
*
dtype0
�
#Adam/batch_normalization_146/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_146/beta/m
�
7Adam/batch_normalization_146/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_146/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_146/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_146/gamma/m
�
8Adam/batch_normalization_146/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_146/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_147/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_147/bias/m
}
*Adam/conv2d_147/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_147/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_147/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_147/kernel/m
�
,Adam/conv2d_147/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_147/kernel/m*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_145/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_145/beta/m
�
7Adam/batch_normalization_145/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_145/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_145/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_145/gamma/m
�
8Adam/batch_normalization_145/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_145/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_146/bias/m
}
*Adam/conv2d_146/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_146/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_146/kernel/m
�
,Adam/conv2d_146/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_146/kernel/m*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_144/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_144/beta/m
�
7Adam/batch_normalization_144/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_144/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_144/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_144/gamma/m
�
8Adam/batch_normalization_144/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_144/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_145/bias/m
}
*Adam/conv2d_145/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_145/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_145/kernel/m
�
,Adam/conv2d_145/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_145/kernel/m*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_143/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_143/beta/m
�
7Adam/batch_normalization_143/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_143/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_143/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_143/gamma/m
�
8Adam/batch_normalization_143/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_143/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_144/bias/m
}
*Adam/conv2d_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_144/kernel/m
�
,Adam/conv2d_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/kernel/m*&
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_142/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_142/beta/m
�
7Adam/batch_normalization_142/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_142/beta/m*
_output_shapes
:*
dtype0
�
$Adam/batch_normalization_142/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_142/gamma/m
�
8Adam/batch_normalization_142/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_142/gamma/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_143/bias/m
}
*Adam/conv2d_143/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_143/kernel/m
�
,Adam/conv2d_143/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/kernel/m*&
_output_shapes
:*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
r
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_77/bias
k
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
_output_shapes
:*
dtype0
z
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_77/kernel
s
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes

:
*
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes
:
*
dtype0
{
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
* 
shared_namedense_76/kernel
t
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel*
_output_shapes
:	�
*
dtype0
�
'batch_normalization_146/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_146/moving_variance
�
;batch_normalization_146/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_146/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_146/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_146/moving_mean
�
7batch_normalization_146/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_146/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_146/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_146/beta
�
0batch_normalization_146/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_146/beta*
_output_shapes
:*
dtype0
�
batch_normalization_146/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_146/gamma
�
1batch_normalization_146/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_146/gamma*
_output_shapes
:*
dtype0
v
conv2d_147/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_147/bias
o
#conv2d_147/bias/Read/ReadVariableOpReadVariableOpconv2d_147/bias*
_output_shapes
:*
dtype0
�
conv2d_147/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_147/kernel

%conv2d_147/kernel/Read/ReadVariableOpReadVariableOpconv2d_147/kernel*&
_output_shapes
:*
dtype0
�
'batch_normalization_145/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_145/moving_variance
�
;batch_normalization_145/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_145/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_145/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_145/moving_mean
�
7batch_normalization_145/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_145/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_145/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_145/beta
�
0batch_normalization_145/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_145/beta*
_output_shapes
:*
dtype0
�
batch_normalization_145/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_145/gamma
�
1batch_normalization_145/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_145/gamma*
_output_shapes
:*
dtype0
v
conv2d_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_146/bias
o
#conv2d_146/bias/Read/ReadVariableOpReadVariableOpconv2d_146/bias*
_output_shapes
:*
dtype0
�
conv2d_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_146/kernel

%conv2d_146/kernel/Read/ReadVariableOpReadVariableOpconv2d_146/kernel*&
_output_shapes
:*
dtype0
�
'batch_normalization_144/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_144/moving_variance
�
;batch_normalization_144/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_144/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_144/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_144/moving_mean
�
7batch_normalization_144/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_144/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_144/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_144/beta
�
0batch_normalization_144/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_144/beta*
_output_shapes
:*
dtype0
�
batch_normalization_144/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_144/gamma
�
1batch_normalization_144/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_144/gamma*
_output_shapes
:*
dtype0
v
conv2d_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_145/bias
o
#conv2d_145/bias/Read/ReadVariableOpReadVariableOpconv2d_145/bias*
_output_shapes
:*
dtype0
�
conv2d_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_145/kernel

%conv2d_145/kernel/Read/ReadVariableOpReadVariableOpconv2d_145/kernel*&
_output_shapes
:*
dtype0
�
'batch_normalization_143/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_143/moving_variance
�
;batch_normalization_143/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_143/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_143/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_143/moving_mean
�
7batch_normalization_143/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_143/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_143/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_143/beta
�
0batch_normalization_143/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_143/beta*
_output_shapes
:*
dtype0
�
batch_normalization_143/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_143/gamma
�
1batch_normalization_143/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_143/gamma*
_output_shapes
:*
dtype0
v
conv2d_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_144/bias
o
#conv2d_144/bias/Read/ReadVariableOpReadVariableOpconv2d_144/bias*
_output_shapes
:*
dtype0
�
conv2d_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_144/kernel

%conv2d_144/kernel/Read/ReadVariableOpReadVariableOpconv2d_144/kernel*&
_output_shapes
:*
dtype0
�
'batch_normalization_142/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_142/moving_variance
�
;batch_normalization_142/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_142/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_142/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_142/moving_mean
�
7batch_normalization_142/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_142/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_142/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_142/beta
�
0batch_normalization_142/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_142/beta*
_output_shapes
:*
dtype0
�
batch_normalization_142/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_142/gamma
�
1batch_normalization_142/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_142/gamma*
_output_shapes
:*
dtype0
v
conv2d_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_143/bias
o
#conv2d_143/bias/Read/ReadVariableOpReadVariableOpconv2d_143/bias*
_output_shapes
:*
dtype0
�
conv2d_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_143/kernel

%conv2d_143/kernel/Read/ReadVariableOpReadVariableOpconv2d_143/kernel*&
_output_shapes
:*
dtype0
�
 serving_default_conv2d_143_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_143_inputconv2d_143/kernelconv2d_143/biasbatch_normalization_142/gammabatch_normalization_142/beta#batch_normalization_142/moving_mean'batch_normalization_142/moving_varianceconv2d_144/kernelconv2d_144/biasbatch_normalization_143/gammabatch_normalization_143/beta#batch_normalization_143/moving_mean'batch_normalization_143/moving_varianceconv2d_145/kernelconv2d_145/biasbatch_normalization_144/gammabatch_normalization_144/beta#batch_normalization_144/moving_mean'batch_normalization_144/moving_varianceconv2d_146/kernelconv2d_146/biasbatch_normalization_145/gammabatch_normalization_145/beta#batch_normalization_145/moving_mean'batch_normalization_145/moving_varianceconv2d_147/kernelconv2d_147/biasbatch_normalization_146/gammabatch_normalization_146/beta#batch_normalization_146/moving_mean'batch_normalization_146/moving_variancedense_76/kerneldense_76/biasdense_77/kerneldense_77/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_131336

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ܿ
valueѿBͿ Bſ
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance*
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance*
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
_axis
	`gamma
abeta
bmoving_mean
cmoving_variance*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op*
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance*
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
"0
#1
,2
-3
.4
/5
<6
=7
F8
G9
H10
I11
V12
W13
`14
a15
b16
c17
p18
q19
z20
{21
|22
}23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33*
�
"0
#1
,2
-3
<4
=5
F6
G7
V8
W9
`10
a11
p12
q13
z14
{15
�16
�17
�18
�19
�20
�21
�22
�23*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate"m�#m�,m�-m�<m�=m�Fm�Gm�Vm�Wm�`m�am�pm�qm�zm�{m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�"v�#v�,v�-v�<v�=v�Fv�Gv�Vv�Wv�`v�av�pv�qv�zv�{v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*

�serving_default* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_143/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_143/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
,0
-1
.2
/3*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_142/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_142/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_142/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_142/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_144/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_144/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
F0
G1
H2
I3*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_143/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_143/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_143/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_143/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_145/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_145/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
`0
a1
b2
c3*

`0
a1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_144/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_144/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_144/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_144/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

p0
q1*

p0
q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_146/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_146/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
z0
{1
|2
}3*

z0
{1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_145/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_145/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_145/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_145/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_147/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_147/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_146/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_146/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_146/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_146/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_76/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_76/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_77/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_77/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
L
.0
/1
H2
I3
b4
c5
|6
}7
�8
�9*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

�0
�1*
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

.0
/1*
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

H0
I1*
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

b0
c1*
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

|0
}1*
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

�0
�1*
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
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�~
VARIABLE_VALUEAdam/conv2d_143/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_143/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_142/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_142/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_144/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_144/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_143/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_143/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_145/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_145/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_144/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_144/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_146/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_146/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_145/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_145/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_147/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_147/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_146/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_146/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_76/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_76/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_77/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_77/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_143/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_143/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_142/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_142/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_144/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_144/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_143/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_143/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_145/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_145/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_144/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_144/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_146/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_146/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_145/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_145/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_147/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_147/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Adam/batch_normalization_146/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_146/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_76/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_76/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_77/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_77/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_143/kernel/Read/ReadVariableOp#conv2d_143/bias/Read/ReadVariableOp1batch_normalization_142/gamma/Read/ReadVariableOp0batch_normalization_142/beta/Read/ReadVariableOp7batch_normalization_142/moving_mean/Read/ReadVariableOp;batch_normalization_142/moving_variance/Read/ReadVariableOp%conv2d_144/kernel/Read/ReadVariableOp#conv2d_144/bias/Read/ReadVariableOp1batch_normalization_143/gamma/Read/ReadVariableOp0batch_normalization_143/beta/Read/ReadVariableOp7batch_normalization_143/moving_mean/Read/ReadVariableOp;batch_normalization_143/moving_variance/Read/ReadVariableOp%conv2d_145/kernel/Read/ReadVariableOp#conv2d_145/bias/Read/ReadVariableOp1batch_normalization_144/gamma/Read/ReadVariableOp0batch_normalization_144/beta/Read/ReadVariableOp7batch_normalization_144/moving_mean/Read/ReadVariableOp;batch_normalization_144/moving_variance/Read/ReadVariableOp%conv2d_146/kernel/Read/ReadVariableOp#conv2d_146/bias/Read/ReadVariableOp1batch_normalization_145/gamma/Read/ReadVariableOp0batch_normalization_145/beta/Read/ReadVariableOp7batch_normalization_145/moving_mean/Read/ReadVariableOp;batch_normalization_145/moving_variance/Read/ReadVariableOp%conv2d_147/kernel/Read/ReadVariableOp#conv2d_147/bias/Read/ReadVariableOp1batch_normalization_146/gamma/Read/ReadVariableOp0batch_normalization_146/beta/Read/ReadVariableOp7batch_normalization_146/moving_mean/Read/ReadVariableOp;batch_normalization_146/moving_variance/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOp#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_143/kernel/m/Read/ReadVariableOp*Adam/conv2d_143/bias/m/Read/ReadVariableOp8Adam/batch_normalization_142/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_142/beta/m/Read/ReadVariableOp,Adam/conv2d_144/kernel/m/Read/ReadVariableOp*Adam/conv2d_144/bias/m/Read/ReadVariableOp8Adam/batch_normalization_143/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_143/beta/m/Read/ReadVariableOp,Adam/conv2d_145/kernel/m/Read/ReadVariableOp*Adam/conv2d_145/bias/m/Read/ReadVariableOp8Adam/batch_normalization_144/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_144/beta/m/Read/ReadVariableOp,Adam/conv2d_146/kernel/m/Read/ReadVariableOp*Adam/conv2d_146/bias/m/Read/ReadVariableOp8Adam/batch_normalization_145/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_145/beta/m/Read/ReadVariableOp,Adam/conv2d_147/kernel/m/Read/ReadVariableOp*Adam/conv2d_147/bias/m/Read/ReadVariableOp8Adam/batch_normalization_146/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_146/beta/m/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp*Adam/dense_77/kernel/m/Read/ReadVariableOp(Adam/dense_77/bias/m/Read/ReadVariableOp,Adam/conv2d_143/kernel/v/Read/ReadVariableOp*Adam/conv2d_143/bias/v/Read/ReadVariableOp8Adam/batch_normalization_142/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_142/beta/v/Read/ReadVariableOp,Adam/conv2d_144/kernel/v/Read/ReadVariableOp*Adam/conv2d_144/bias/v/Read/ReadVariableOp8Adam/batch_normalization_143/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_143/beta/v/Read/ReadVariableOp,Adam/conv2d_145/kernel/v/Read/ReadVariableOp*Adam/conv2d_145/bias/v/Read/ReadVariableOp8Adam/batch_normalization_144/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_144/beta/v/Read/ReadVariableOp,Adam/conv2d_146/kernel/v/Read/ReadVariableOp*Adam/conv2d_146/bias/v/Read/ReadVariableOp8Adam/batch_normalization_145/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_145/beta/v/Read/ReadVariableOp,Adam/conv2d_147/kernel/v/Read/ReadVariableOp*Adam/conv2d_147/bias/v/Read/ReadVariableOp8Adam/batch_normalization_146/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_146/beta/v/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOp*Adam/dense_77/kernel/v/Read/ReadVariableOp(Adam/dense_77/bias/v/Read/ReadVariableOpConst*h
Tina
_2]	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_132549
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_143/kernelconv2d_143/biasbatch_normalization_142/gammabatch_normalization_142/beta#batch_normalization_142/moving_mean'batch_normalization_142/moving_varianceconv2d_144/kernelconv2d_144/biasbatch_normalization_143/gammabatch_normalization_143/beta#batch_normalization_143/moving_mean'batch_normalization_143/moving_varianceconv2d_145/kernelconv2d_145/biasbatch_normalization_144/gammabatch_normalization_144/beta#batch_normalization_144/moving_mean'batch_normalization_144/moving_varianceconv2d_146/kernelconv2d_146/biasbatch_normalization_145/gammabatch_normalization_145/beta#batch_normalization_145/moving_mean'batch_normalization_145/moving_varianceconv2d_147/kernelconv2d_147/biasbatch_normalization_146/gammabatch_normalization_146/beta#batch_normalization_146/moving_mean'batch_normalization_146/moving_variancedense_76/kerneldense_76/biasdense_77/kerneldense_77/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_143/kernel/mAdam/conv2d_143/bias/m$Adam/batch_normalization_142/gamma/m#Adam/batch_normalization_142/beta/mAdam/conv2d_144/kernel/mAdam/conv2d_144/bias/m$Adam/batch_normalization_143/gamma/m#Adam/batch_normalization_143/beta/mAdam/conv2d_145/kernel/mAdam/conv2d_145/bias/m$Adam/batch_normalization_144/gamma/m#Adam/batch_normalization_144/beta/mAdam/conv2d_146/kernel/mAdam/conv2d_146/bias/m$Adam/batch_normalization_145/gamma/m#Adam/batch_normalization_145/beta/mAdam/conv2d_147/kernel/mAdam/conv2d_147/bias/m$Adam/batch_normalization_146/gamma/m#Adam/batch_normalization_146/beta/mAdam/dense_76/kernel/mAdam/dense_76/bias/mAdam/dense_77/kernel/mAdam/dense_77/bias/mAdam/conv2d_143/kernel/vAdam/conv2d_143/bias/v$Adam/batch_normalization_142/gamma/v#Adam/batch_normalization_142/beta/vAdam/conv2d_144/kernel/vAdam/conv2d_144/bias/v$Adam/batch_normalization_143/gamma/v#Adam/batch_normalization_143/beta/vAdam/conv2d_145/kernel/vAdam/conv2d_145/bias/v$Adam/batch_normalization_144/gamma/v#Adam/batch_normalization_144/beta/vAdam/conv2d_146/kernel/vAdam/conv2d_146/bias/v$Adam/batch_normalization_145/gamma/v#Adam/batch_normalization_145/beta/vAdam/conv2d_147/kernel/vAdam/conv2d_147/bias/v$Adam/batch_normalization_146/gamma/v#Adam/batch_normalization_146/beta/vAdam/dense_76/kernel/vAdam/dense_76/bias/vAdam/dense_77/kernel/vAdam/dense_77/bias/v*g
Tin`
^2\*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_132832��
�
�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130107

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_147_layer_call_and_return_conditional_losses_132130

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_142_layer_call_fn_131775

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130076�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130183

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130076

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_145_layer_call_fn_132051

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130304�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_144_layer_call_and_return_conditional_losses_131854

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������v�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������v�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������w�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������w�
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130411

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�<
"__inference__traced_restore_132832
file_prefix<
"assignvariableop_conv2d_143_kernel:0
"assignvariableop_1_conv2d_143_bias:>
0assignvariableop_2_batch_normalization_142_gamma:=
/assignvariableop_3_batch_normalization_142_beta:D
6assignvariableop_4_batch_normalization_142_moving_mean:H
:assignvariableop_5_batch_normalization_142_moving_variance:>
$assignvariableop_6_conv2d_144_kernel:0
"assignvariableop_7_conv2d_144_bias:>
0assignvariableop_8_batch_normalization_143_gamma:=
/assignvariableop_9_batch_normalization_143_beta:E
7assignvariableop_10_batch_normalization_143_moving_mean:I
;assignvariableop_11_batch_normalization_143_moving_variance:?
%assignvariableop_12_conv2d_145_kernel:1
#assignvariableop_13_conv2d_145_bias:?
1assignvariableop_14_batch_normalization_144_gamma:>
0assignvariableop_15_batch_normalization_144_beta:E
7assignvariableop_16_batch_normalization_144_moving_mean:I
;assignvariableop_17_batch_normalization_144_moving_variance:?
%assignvariableop_18_conv2d_146_kernel:1
#assignvariableop_19_conv2d_146_bias:?
1assignvariableop_20_batch_normalization_145_gamma:>
0assignvariableop_21_batch_normalization_145_beta:E
7assignvariableop_22_batch_normalization_145_moving_mean:I
;assignvariableop_23_batch_normalization_145_moving_variance:?
%assignvariableop_24_conv2d_147_kernel:1
#assignvariableop_25_conv2d_147_bias:?
1assignvariableop_26_batch_normalization_146_gamma:>
0assignvariableop_27_batch_normalization_146_beta:E
7assignvariableop_28_batch_normalization_146_moving_mean:I
;assignvariableop_29_batch_normalization_146_moving_variance:6
#assignvariableop_30_dense_76_kernel:	�
/
!assignvariableop_31_dense_76_bias:
5
#assignvariableop_32_dense_77_kernel:
/
!assignvariableop_33_dense_77_bias:'
assignvariableop_34_adam_iter:	 )
assignvariableop_35_adam_beta_1: )
assignvariableop_36_adam_beta_2: (
assignvariableop_37_adam_decay: 0
&assignvariableop_38_adam_learning_rate: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: #
assignvariableop_41_total: #
assignvariableop_42_count: F
,assignvariableop_43_adam_conv2d_143_kernel_m:8
*assignvariableop_44_adam_conv2d_143_bias_m:F
8assignvariableop_45_adam_batch_normalization_142_gamma_m:E
7assignvariableop_46_adam_batch_normalization_142_beta_m:F
,assignvariableop_47_adam_conv2d_144_kernel_m:8
*assignvariableop_48_adam_conv2d_144_bias_m:F
8assignvariableop_49_adam_batch_normalization_143_gamma_m:E
7assignvariableop_50_adam_batch_normalization_143_beta_m:F
,assignvariableop_51_adam_conv2d_145_kernel_m:8
*assignvariableop_52_adam_conv2d_145_bias_m:F
8assignvariableop_53_adam_batch_normalization_144_gamma_m:E
7assignvariableop_54_adam_batch_normalization_144_beta_m:F
,assignvariableop_55_adam_conv2d_146_kernel_m:8
*assignvariableop_56_adam_conv2d_146_bias_m:F
8assignvariableop_57_adam_batch_normalization_145_gamma_m:E
7assignvariableop_58_adam_batch_normalization_145_beta_m:F
,assignvariableop_59_adam_conv2d_147_kernel_m:8
*assignvariableop_60_adam_conv2d_147_bias_m:F
8assignvariableop_61_adam_batch_normalization_146_gamma_m:E
7assignvariableop_62_adam_batch_normalization_146_beta_m:=
*assignvariableop_63_adam_dense_76_kernel_m:	�
6
(assignvariableop_64_adam_dense_76_bias_m:
<
*assignvariableop_65_adam_dense_77_kernel_m:
6
(assignvariableop_66_adam_dense_77_bias_m:F
,assignvariableop_67_adam_conv2d_143_kernel_v:8
*assignvariableop_68_adam_conv2d_143_bias_v:F
8assignvariableop_69_adam_batch_normalization_142_gamma_v:E
7assignvariableop_70_adam_batch_normalization_142_beta_v:F
,assignvariableop_71_adam_conv2d_144_kernel_v:8
*assignvariableop_72_adam_conv2d_144_bias_v:F
8assignvariableop_73_adam_batch_normalization_143_gamma_v:E
7assignvariableop_74_adam_batch_normalization_143_beta_v:F
,assignvariableop_75_adam_conv2d_145_kernel_v:8
*assignvariableop_76_adam_conv2d_145_bias_v:F
8assignvariableop_77_adam_batch_normalization_144_gamma_v:E
7assignvariableop_78_adam_batch_normalization_144_beta_v:F
,assignvariableop_79_adam_conv2d_146_kernel_v:8
*assignvariableop_80_adam_conv2d_146_bias_v:F
8assignvariableop_81_adam_batch_normalization_145_gamma_v:E
7assignvariableop_82_adam_batch_normalization_145_beta_v:F
,assignvariableop_83_adam_conv2d_147_kernel_v:8
*assignvariableop_84_adam_conv2d_147_bias_v:F
8assignvariableop_85_adam_batch_normalization_146_gamma_v:E
7assignvariableop_86_adam_batch_normalization_146_beta_v:=
*assignvariableop_87_adam_dense_76_kernel_v:	�
6
(assignvariableop_88_adam_dense_76_bias_v:
<
*assignvariableop_89_adam_dense_77_kernel_v:
6
(assignvariableop_90_adam_dense_77_bias_v:
identity_92��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*�2
value�2B�2\B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*�
value�B�\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*j
dtypes`
^2\	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_143_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_143_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_142_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_142_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_142_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_142_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_144_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_144_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_143_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_143_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_143_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_143_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_145_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_145_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_144_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_144_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_144_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_144_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_146_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_146_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_145_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_145_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_145_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_145_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_147_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_147_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_146_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_146_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_146_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_146_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_76_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_76_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_77_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp!assignvariableop_33_dense_77_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_143_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_143_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_batch_normalization_142_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_142_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_conv2d_144_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_conv2d_144_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_batch_normalization_143_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_143_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_conv2d_145_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv2d_145_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp8assignvariableop_53_adam_batch_normalization_144_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_batch_normalization_144_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_conv2d_146_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_146_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp8assignvariableop_57_adam_batch_normalization_145_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_batch_normalization_145_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_conv2d_147_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_147_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp8assignvariableop_61_adam_batch_normalization_146_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_batch_normalization_146_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_dense_76_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_dense_76_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_77_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_77_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_conv2d_143_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_conv2d_143_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp8assignvariableop_69_adam_batch_normalization_142_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_142_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv2d_144_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv2d_144_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp8assignvariableop_73_adam_batch_normalization_143_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp7assignvariableop_74_adam_batch_normalization_143_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp,assignvariableop_75_adam_conv2d_145_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_conv2d_145_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp8assignvariableop_77_adam_batch_normalization_144_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp7assignvariableop_78_adam_batch_normalization_144_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_conv2d_146_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_conv2d_146_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp8assignvariableop_81_adam_batch_normalization_145_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_batch_normalization_145_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv2d_147_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv2d_147_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp8assignvariableop_85_adam_batch_normalization_146_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp7assignvariableop_86_adam_batch_normalization_146_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_76_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_76_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_dense_77_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_dense_77_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_91Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_92IdentityIdentity_91:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90*"
_acd_function_control_output(*
_output_shapes
 "#
identity_92Identity_92:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_90:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
Q
5__inference_average_pooling2d_78_layer_call_fn_132013

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
Q
5__inference_average_pooling2d_80_layer_call_fn_132197

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_144_layer_call_fn_131972

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130259�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_147_layer_call_fn_132119

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_143_layer_call_fn_131867

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130152�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_146_layer_call_fn_132156

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130411�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������v�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������v�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������w�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������w�
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_56_layer_call_fn_131829

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_132202

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_131834

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_131336
conv2d_143_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	�


unknown_30:


unknown_31:


unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_143_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_130054o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
�
�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_132008

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
Q
5__inference_average_pooling2d_79_layer_call_fn_132105

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_77_layer_call_and_return_conditional_losses_132253

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
G
+__inference_flatten_27_layer_call_fn_132207

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131409

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	�


unknown_30:


unknown_31:


unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *a
f\RZ
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_131990

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_142_layer_call_fn_131788

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130107�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_146_layer_call_fn_132027

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������&: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_132018

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131916

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130304

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_77_layer_call_and_return_conditional_losses_130612

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_145_layer_call_fn_132064

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130335�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131806

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130259

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_57_layer_call_fn_131921

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_144_layer_call_fn_131843

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������v�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������w�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������w�
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132192

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_77_layer_call_fn_132242

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_130612o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_146_layer_call_fn_132143

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130380�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�*
__inference__traced_save_132549
file_prefix0
,savev2_conv2d_143_kernel_read_readvariableop.
*savev2_conv2d_143_bias_read_readvariableop<
8savev2_batch_normalization_142_gamma_read_readvariableop;
7savev2_batch_normalization_142_beta_read_readvariableopB
>savev2_batch_normalization_142_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_142_moving_variance_read_readvariableop0
,savev2_conv2d_144_kernel_read_readvariableop.
*savev2_conv2d_144_bias_read_readvariableop<
8savev2_batch_normalization_143_gamma_read_readvariableop;
7savev2_batch_normalization_143_beta_read_readvariableopB
>savev2_batch_normalization_143_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_143_moving_variance_read_readvariableop0
,savev2_conv2d_145_kernel_read_readvariableop.
*savev2_conv2d_145_bias_read_readvariableop<
8savev2_batch_normalization_144_gamma_read_readvariableop;
7savev2_batch_normalization_144_beta_read_readvariableopB
>savev2_batch_normalization_144_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_144_moving_variance_read_readvariableop0
,savev2_conv2d_146_kernel_read_readvariableop.
*savev2_conv2d_146_bias_read_readvariableop<
8savev2_batch_normalization_145_gamma_read_readvariableop;
7savev2_batch_normalization_145_beta_read_readvariableopB
>savev2_batch_normalization_145_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_145_moving_variance_read_readvariableop0
,savev2_conv2d_147_kernel_read_readvariableop.
*savev2_conv2d_147_bias_read_readvariableop<
8savev2_batch_normalization_146_gamma_read_readvariableop;
7savev2_batch_normalization_146_beta_read_readvariableopB
>savev2_batch_normalization_146_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_146_moving_variance_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_143_kernel_m_read_readvariableop5
1savev2_adam_conv2d_143_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_142_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_142_beta_m_read_readvariableop7
3savev2_adam_conv2d_144_kernel_m_read_readvariableop5
1savev2_adam_conv2d_144_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_143_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_143_beta_m_read_readvariableop7
3savev2_adam_conv2d_145_kernel_m_read_readvariableop5
1savev2_adam_conv2d_145_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_144_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_144_beta_m_read_readvariableop7
3savev2_adam_conv2d_146_kernel_m_read_readvariableop5
1savev2_adam_conv2d_146_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_145_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_145_beta_m_read_readvariableop7
3savev2_adam_conv2d_147_kernel_m_read_readvariableop5
1savev2_adam_conv2d_147_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_146_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_146_beta_m_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableop5
1savev2_adam_dense_77_kernel_m_read_readvariableop3
/savev2_adam_dense_77_bias_m_read_readvariableop7
3savev2_adam_conv2d_143_kernel_v_read_readvariableop5
1savev2_adam_conv2d_143_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_142_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_142_beta_v_read_readvariableop7
3savev2_adam_conv2d_144_kernel_v_read_readvariableop5
1savev2_adam_conv2d_144_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_143_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_143_beta_v_read_readvariableop7
3savev2_adam_conv2d_145_kernel_v_read_readvariableop5
1savev2_adam_conv2d_145_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_144_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_144_beta_v_read_readvariableop7
3savev2_adam_conv2d_146_kernel_v_read_readvariableop5
1savev2_adam_conv2d_146_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_145_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_145_beta_v_read_readvariableop7
3savev2_adam_conv2d_147_kernel_v_read_readvariableop5
1savev2_adam_conv2d_147_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_146_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_146_beta_v_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableop5
1savev2_adam_dense_77_kernel_v_read_readvariableop3
/savev2_adam_dense_77_bias_v_read_readvariableop
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
: �2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*�2
value�2B�2\B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*�
value�B�\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_143_kernel_read_readvariableop*savev2_conv2d_143_bias_read_readvariableop8savev2_batch_normalization_142_gamma_read_readvariableop7savev2_batch_normalization_142_beta_read_readvariableop>savev2_batch_normalization_142_moving_mean_read_readvariableopBsavev2_batch_normalization_142_moving_variance_read_readvariableop,savev2_conv2d_144_kernel_read_readvariableop*savev2_conv2d_144_bias_read_readvariableop8savev2_batch_normalization_143_gamma_read_readvariableop7savev2_batch_normalization_143_beta_read_readvariableop>savev2_batch_normalization_143_moving_mean_read_readvariableopBsavev2_batch_normalization_143_moving_variance_read_readvariableop,savev2_conv2d_145_kernel_read_readvariableop*savev2_conv2d_145_bias_read_readvariableop8savev2_batch_normalization_144_gamma_read_readvariableop7savev2_batch_normalization_144_beta_read_readvariableop>savev2_batch_normalization_144_moving_mean_read_readvariableopBsavev2_batch_normalization_144_moving_variance_read_readvariableop,savev2_conv2d_146_kernel_read_readvariableop*savev2_conv2d_146_bias_read_readvariableop8savev2_batch_normalization_145_gamma_read_readvariableop7savev2_batch_normalization_145_beta_read_readvariableop>savev2_batch_normalization_145_moving_mean_read_readvariableopBsavev2_batch_normalization_145_moving_variance_read_readvariableop,savev2_conv2d_147_kernel_read_readvariableop*savev2_conv2d_147_bias_read_readvariableop8savev2_batch_normalization_146_gamma_read_readvariableop7savev2_batch_normalization_146_beta_read_readvariableop>savev2_batch_normalization_146_moving_mean_read_readvariableopBsavev2_batch_normalization_146_moving_variance_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_143_kernel_m_read_readvariableop1savev2_adam_conv2d_143_bias_m_read_readvariableop?savev2_adam_batch_normalization_142_gamma_m_read_readvariableop>savev2_adam_batch_normalization_142_beta_m_read_readvariableop3savev2_adam_conv2d_144_kernel_m_read_readvariableop1savev2_adam_conv2d_144_bias_m_read_readvariableop?savev2_adam_batch_normalization_143_gamma_m_read_readvariableop>savev2_adam_batch_normalization_143_beta_m_read_readvariableop3savev2_adam_conv2d_145_kernel_m_read_readvariableop1savev2_adam_conv2d_145_bias_m_read_readvariableop?savev2_adam_batch_normalization_144_gamma_m_read_readvariableop>savev2_adam_batch_normalization_144_beta_m_read_readvariableop3savev2_adam_conv2d_146_kernel_m_read_readvariableop1savev2_adam_conv2d_146_bias_m_read_readvariableop?savev2_adam_batch_normalization_145_gamma_m_read_readvariableop>savev2_adam_batch_normalization_145_beta_m_read_readvariableop3savev2_adam_conv2d_147_kernel_m_read_readvariableop1savev2_adam_conv2d_147_bias_m_read_readvariableop?savev2_adam_batch_normalization_146_gamma_m_read_readvariableop>savev2_adam_batch_normalization_146_beta_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop1savev2_adam_dense_77_kernel_m_read_readvariableop/savev2_adam_dense_77_bias_m_read_readvariableop3savev2_adam_conv2d_143_kernel_v_read_readvariableop1savev2_adam_conv2d_143_bias_v_read_readvariableop?savev2_adam_batch_normalization_142_gamma_v_read_readvariableop>savev2_adam_batch_normalization_142_beta_v_read_readvariableop3savev2_adam_conv2d_144_kernel_v_read_readvariableop1savev2_adam_conv2d_144_bias_v_read_readvariableop?savev2_adam_batch_normalization_143_gamma_v_read_readvariableop>savev2_adam_batch_normalization_143_beta_v_read_readvariableop3savev2_adam_conv2d_145_kernel_v_read_readvariableop1savev2_adam_conv2d_145_bias_v_read_readvariableop?savev2_adam_batch_normalization_144_gamma_v_read_readvariableop>savev2_adam_batch_normalization_144_beta_v_read_readvariableop3savev2_adam_conv2d_146_kernel_v_read_readvariableop1savev2_adam_conv2d_146_bias_v_read_readvariableop?savev2_adam_batch_normalization_145_gamma_v_read_readvariableop>savev2_adam_batch_normalization_145_beta_v_read_readvariableop3savev2_adam_conv2d_147_kernel_v_read_readvariableop1savev2_adam_conv2d_147_bias_v_read_readvariableop?savev2_adam_batch_normalization_146_gamma_v_read_readvariableop>savev2_adam_batch_normalization_146_beta_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableop1savev2_adam_dense_77_kernel_v_read_readvariableop/savev2_adam_dense_77_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *j
dtypes`
^2\	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::	�
:
:
:: : : : : : : : : :::::::::::::::::::::	�
:
:
::::::::::::::::::::::	�
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�
:  

_output_shapes
:
:$! 

_output_shapes

:
: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,,(
&
_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
:: >

_output_shapes
:: ?

_output_shapes
::%@!

_output_shapes
:	�
: A

_output_shapes
:
:$B 

_output_shapes

:
: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
:: J

_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
:: R

_output_shapes
:: S

_output_shapes
::,T(
&
_output_shapes
:: U

_output_shapes
:: V

_output_shapes
:: W

_output_shapes
::%X!

_output_shapes
:	�
: Y

_output_shapes
:
:$Z 

_output_shapes

:
: [

_output_shapes
::\

_output_shapes
: 
�
�
F__inference_conv2d_146_layer_call_and_return_conditional_losses_132038

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������%i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130335

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9MX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������9Mi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������9Mw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;O: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������;O
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132100

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130228

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131824

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132082

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_130690
conv2d_143_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	�


unknown_30:


unknown_31:


unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_143_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *a
f\RZ
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
�
�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131898

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_145_layer_call_fn_131935

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������9M`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;O: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������;O
 
_user_specified_nameinputs
�
�
F__inference_conv2d_143_layer_call_and_return_conditional_losses_131762

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_dense_76_layer_call_fn_132222

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_130595o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132174

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�^
�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130619

inputs+
conv2d_143_130453:
conv2d_143_130455:,
batch_normalization_142_130458:,
batch_normalization_142_130460:,
batch_normalization_142_130462:,
batch_normalization_142_130464:+
conv2d_144_130480:
conv2d_144_130482:,
batch_normalization_143_130485:,
batch_normalization_143_130487:,
batch_normalization_143_130489:,
batch_normalization_143_130491:+
conv2d_145_130507:
conv2d_145_130509:,
batch_normalization_144_130512:,
batch_normalization_144_130514:,
batch_normalization_144_130516:,
batch_normalization_144_130518:+
conv2d_146_130534:
conv2d_146_130536:,
batch_normalization_145_130539:,
batch_normalization_145_130541:,
batch_normalization_145_130543:,
batch_normalization_145_130545:+
conv2d_147_130561:
conv2d_147_130563:,
batch_normalization_146_130566:,
batch_normalization_146_130568:,
batch_normalization_146_130570:,
batch_normalization_146_130572:"
dense_76_130596:	�

dense_76_130598:
!
dense_77_130613:

dense_77_130615:
identity��/batch_normalization_142/StatefulPartitionedCall�/batch_normalization_143/StatefulPartitionedCall�/batch_normalization_144/StatefulPartitionedCall�/batch_normalization_145/StatefulPartitionedCall�/batch_normalization_146/StatefulPartitionedCall�"conv2d_143/StatefulPartitionedCall�"conv2d_144/StatefulPartitionedCall�"conv2d_145/StatefulPartitionedCall�"conv2d_146/StatefulPartitionedCall�"conv2d_147/StatefulPartitionedCall� dense_76/StatefulPartitionedCall� dense_77/StatefulPartitionedCall�
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_143_130453conv2d_143_130455*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452�
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_142_130458batch_normalization_142_130460batch_normalization_142_130462batch_normalization_142_130464*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130076�
 max_pooling2d_56/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������w�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127�
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_144_130480conv2d_144_130482*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479�
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_143_130485batch_normalization_143_130487batch_normalization_143_130489batch_normalization_143_130491*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130152�
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;O* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203�
"conv2d_145/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_145_130507conv2d_145_130509*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506�
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall+conv2d_145/StatefulPartitionedCall:output:0batch_normalization_144_130512batch_normalization_144_130514batch_normalization_144_130516batch_normalization_144_130518*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130228�
$average_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279�
"conv2d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_146_130534conv2d_146_130536*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533�
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall+conv2d_146/StatefulPartitionedCall:output:0batch_normalization_145_130539batch_normalization_145_130541batch_normalization_145_130543batch_normalization_145_130545*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130304�
$average_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355�
"conv2d_147/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_79/PartitionedCall:output:0conv2d_147_130561conv2d_147_130563*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560�
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall+conv2d_147/StatefulPartitionedCall:output:0batch_normalization_146_130566batch_normalization_146_130568batch_normalization_146_130570batch_normalization_146_130572*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130380�
$average_pooling2d_80/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431�
flatten_27/PartitionedCallPartitionedCall-average_pooling2d_80/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582�
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_76_130596dense_76_130598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_130595�
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_130613dense_77_130615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_130612x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall0^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall#^conv2d_145/StatefulPartitionedCall#^conv2d_146/StatefulPartitionedCall#^conv2d_147/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2H
"conv2d_145/StatefulPartitionedCall"conv2d_145/StatefulPartitionedCall2H
"conv2d_146/StatefulPartitionedCall"conv2d_146/StatefulPartitionedCall2H
"conv2d_147/StatefulPartitionedCall"conv2d_147/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�"
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131742

inputsC
)conv2d_143_conv2d_readvariableop_resource:8
*conv2d_143_biasadd_readvariableop_resource:=
/batch_normalization_142_readvariableop_resource:?
1batch_normalization_142_readvariableop_1_resource:N
@batch_normalization_142_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_144_conv2d_readvariableop_resource:8
*conv2d_144_biasadd_readvariableop_resource:=
/batch_normalization_143_readvariableop_resource:?
1batch_normalization_143_readvariableop_1_resource:N
@batch_normalization_143_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_143_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_145_conv2d_readvariableop_resource:8
*conv2d_145_biasadd_readvariableop_resource:=
/batch_normalization_144_readvariableop_resource:?
1batch_normalization_144_readvariableop_1_resource:N
@batch_normalization_144_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_146_conv2d_readvariableop_resource:8
*conv2d_146_biasadd_readvariableop_resource:=
/batch_normalization_145_readvariableop_resource:?
1batch_normalization_145_readvariableop_1_resource:N
@batch_normalization_145_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_147_conv2d_readvariableop_resource:8
*conv2d_147_biasadd_readvariableop_resource:=
/batch_normalization_146_readvariableop_resource:?
1batch_normalization_146_readvariableop_1_resource:N
@batch_normalization_146_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource::
'dense_76_matmul_readvariableop_resource:	�
6
(dense_76_biasadd_readvariableop_resource:
9
'dense_77_matmul_readvariableop_resource:
6
(dense_77_biasadd_readvariableop_resource:
identity��&batch_normalization_142/AssignNewValue�(batch_normalization_142/AssignNewValue_1�7batch_normalization_142/FusedBatchNormV3/ReadVariableOp�9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_142/ReadVariableOp�(batch_normalization_142/ReadVariableOp_1�&batch_normalization_143/AssignNewValue�(batch_normalization_143/AssignNewValue_1�7batch_normalization_143/FusedBatchNormV3/ReadVariableOp�9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_143/ReadVariableOp�(batch_normalization_143/ReadVariableOp_1�&batch_normalization_144/AssignNewValue�(batch_normalization_144/AssignNewValue_1�7batch_normalization_144/FusedBatchNormV3/ReadVariableOp�9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_144/ReadVariableOp�(batch_normalization_144/ReadVariableOp_1�&batch_normalization_145/AssignNewValue�(batch_normalization_145/AssignNewValue_1�7batch_normalization_145/FusedBatchNormV3/ReadVariableOp�9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_145/ReadVariableOp�(batch_normalization_145/ReadVariableOp_1�&batch_normalization_146/AssignNewValue�(batch_normalization_146/AssignNewValue_1�7batch_normalization_146/FusedBatchNormV3/ReadVariableOp�9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_146/ReadVariableOp�(batch_normalization_146/ReadVariableOp_1�!conv2d_143/BiasAdd/ReadVariableOp� conv2d_143/Conv2D/ReadVariableOp�!conv2d_144/BiasAdd/ReadVariableOp� conv2d_144/Conv2D/ReadVariableOp�!conv2d_145/BiasAdd/ReadVariableOp� conv2d_145/Conv2D/ReadVariableOp�!conv2d_146/BiasAdd/ReadVariableOp� conv2d_146/Conv2D/ReadVariableOp�!conv2d_147/BiasAdd/ReadVariableOp� conv2d_147/Conv2D/ReadVariableOp�dense_76/BiasAdd/ReadVariableOp�dense_76/MatMul/ReadVariableOp�dense_77/BiasAdd/ReadVariableOp�dense_77/MatMul/ReadVariableOp�
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_143/Conv2DConv2Dinputs(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*1
_output_shapes
:������������
&batch_normalization_142/ReadVariableOpReadVariableOp/batch_normalization_142_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_142/ReadVariableOp_1ReadVariableOp1batch_normalization_142_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_142/FusedBatchNormV3FusedBatchNormV3conv2d_143/Relu:activations:0.batch_normalization_142/ReadVariableOp:value:00batch_normalization_142/ReadVariableOp_1:value:0?batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
&batch_normalization_142/AssignNewValueAssignVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource5batch_normalization_142/FusedBatchNormV3:batch_mean:08^batch_normalization_142/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
(batch_normalization_142/AssignNewValue_1AssignVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_142/FusedBatchNormV3:batch_variance:0:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_56/MaxPoolMaxPool,batch_normalization_142/FusedBatchNormV3:y:0*0
_output_shapes
:���������w�*
ksize
*
paddingVALID*
strides
�
 conv2d_144/Conv2D/ReadVariableOpReadVariableOp)conv2d_144_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_144/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0(conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�*
paddingVALID*
strides
�
!conv2d_144/BiasAdd/ReadVariableOpReadVariableOp*conv2d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_144/BiasAddBiasAddconv2d_144/Conv2D:output:0)conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�o
conv2d_144/ReluReluconv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:���������v��
&batch_normalization_143/ReadVariableOpReadVariableOp/batch_normalization_143_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_143/ReadVariableOp_1ReadVariableOp1batch_normalization_143_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_143/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_143_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_143_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_143/FusedBatchNormV3FusedBatchNormV3conv2d_144/Relu:activations:0.batch_normalization_143/ReadVariableOp:value:00batch_normalization_143/ReadVariableOp_1:value:0?batch_normalization_143/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_143/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������v�:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
&batch_normalization_143/AssignNewValueAssignVariableOp@batch_normalization_143_fusedbatchnormv3_readvariableop_resource5batch_normalization_143/FusedBatchNormV3:batch_mean:08^batch_normalization_143/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
(batch_normalization_143/AssignNewValue_1AssignVariableOpBbatch_normalization_143_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_143/FusedBatchNormV3:batch_variance:0:^batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_57/MaxPoolMaxPool,batch_normalization_143/FusedBatchNormV3:y:0*/
_output_shapes
:���������;O*
ksize
*
paddingVALID*
strides
�
 conv2d_145/Conv2D/ReadVariableOpReadVariableOp)conv2d_145_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_145/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0(conv2d_145/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M*
paddingVALID*
strides
�
!conv2d_145/BiasAdd/ReadVariableOpReadVariableOp*conv2d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_145/BiasAddBiasAddconv2d_145/Conv2D:output:0)conv2d_145/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9Mn
conv2d_145/ReluReluconv2d_145/BiasAdd:output:0*
T0*/
_output_shapes
:���������9M�
&batch_normalization_144/ReadVariableOpReadVariableOp/batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_144/ReadVariableOp_1ReadVariableOp1batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_144/FusedBatchNormV3FusedBatchNormV3conv2d_145/Relu:activations:0.batch_normalization_144/ReadVariableOp:value:00batch_normalization_144/ReadVariableOp_1:value:0?batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������9M:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
&batch_normalization_144/AssignNewValueAssignVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource5batch_normalization_144/FusedBatchNormV3:batch_mean:08^batch_normalization_144/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
(batch_normalization_144/AssignNewValue_1AssignVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_144/FusedBatchNormV3:batch_variance:0:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
average_pooling2d_78/AvgPoolAvgPool,batch_normalization_144/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������&*
ksize
*
paddingVALID*
strides
�
 conv2d_146/Conv2D/ReadVariableOpReadVariableOp)conv2d_146_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_146/Conv2DConv2D%average_pooling2d_78/AvgPool:output:0(conv2d_146/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
�
!conv2d_146/BiasAdd/ReadVariableOpReadVariableOp*conv2d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_146/BiasAddBiasAddconv2d_146/Conv2D:output:0)conv2d_146/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%n
conv2d_146/ReluReluconv2d_146/BiasAdd:output:0*
T0*/
_output_shapes
:���������%�
&batch_normalization_145/ReadVariableOpReadVariableOp/batch_normalization_145_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_145/ReadVariableOp_1ReadVariableOp1batch_normalization_145_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_145/FusedBatchNormV3FusedBatchNormV3conv2d_146/Relu:activations:0.batch_normalization_145/ReadVariableOp:value:00batch_normalization_145/ReadVariableOp_1:value:0?batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������%:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
&batch_normalization_145/AssignNewValueAssignVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource5batch_normalization_145/FusedBatchNormV3:batch_mean:08^batch_normalization_145/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
(batch_normalization_145/AssignNewValue_1AssignVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_145/FusedBatchNormV3:batch_variance:0:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
average_pooling2d_79/AvgPoolAvgPool,batch_normalization_145/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_147/Conv2D/ReadVariableOpReadVariableOp)conv2d_147_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_147/Conv2DConv2D%average_pooling2d_79/AvgPool:output:0(conv2d_147/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
!conv2d_147/BiasAdd/ReadVariableOpReadVariableOp*conv2d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_147/BiasAddBiasAddconv2d_147/Conv2D:output:0)conv2d_147/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������n
conv2d_147/ReluReluconv2d_147/BiasAdd:output:0*
T0*/
_output_shapes
:����������
&batch_normalization_146/ReadVariableOpReadVariableOp/batch_normalization_146_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_146/ReadVariableOp_1ReadVariableOp1batch_normalization_146_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_146/FusedBatchNormV3FusedBatchNormV3conv2d_147/Relu:activations:0.batch_normalization_146/ReadVariableOp:value:00batch_normalization_146/ReadVariableOp_1:value:0?batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
&batch_normalization_146/AssignNewValueAssignVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource5batch_normalization_146/FusedBatchNormV3:batch_mean:08^batch_normalization_146/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
(batch_normalization_146/AssignNewValue_1AssignVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_146/FusedBatchNormV3:batch_variance:0:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
average_pooling2d_80/AvgPoolAvgPool,batch_normalization_146/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
a
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_27/ReshapeReshape%average_pooling2d_80/AvgPool:output:0flatten_27/Const:output:0*
T0*(
_output_shapes
:�����������
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_76/MatMulMatMulflatten_27/Reshape:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_77/SoftmaxSoftmaxdense_77/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^batch_normalization_142/AssignNewValue)^batch_normalization_142/AssignNewValue_18^batch_normalization_142/FusedBatchNormV3/ReadVariableOp:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_142/ReadVariableOp)^batch_normalization_142/ReadVariableOp_1'^batch_normalization_143/AssignNewValue)^batch_normalization_143/AssignNewValue_18^batch_normalization_143/FusedBatchNormV3/ReadVariableOp:^batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_143/ReadVariableOp)^batch_normalization_143/ReadVariableOp_1'^batch_normalization_144/AssignNewValue)^batch_normalization_144/AssignNewValue_18^batch_normalization_144/FusedBatchNormV3/ReadVariableOp:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_144/ReadVariableOp)^batch_normalization_144/ReadVariableOp_1'^batch_normalization_145/AssignNewValue)^batch_normalization_145/AssignNewValue_18^batch_normalization_145/FusedBatchNormV3/ReadVariableOp:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_145/ReadVariableOp)^batch_normalization_145/ReadVariableOp_1'^batch_normalization_146/AssignNewValue)^batch_normalization_146/AssignNewValue_18^batch_normalization_146/FusedBatchNormV3/ReadVariableOp:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_146/ReadVariableOp)^batch_normalization_146/ReadVariableOp_1"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp"^conv2d_144/BiasAdd/ReadVariableOp!^conv2d_144/Conv2D/ReadVariableOp"^conv2d_145/BiasAdd/ReadVariableOp!^conv2d_145/Conv2D/ReadVariableOp"^conv2d_146/BiasAdd/ReadVariableOp!^conv2d_146/Conv2D/ReadVariableOp"^conv2d_147/BiasAdd/ReadVariableOp!^conv2d_147/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_142/AssignNewValue&batch_normalization_142/AssignNewValue2T
(batch_normalization_142/AssignNewValue_1(batch_normalization_142/AssignNewValue_12r
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp7batch_normalization_142/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_19batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_142/ReadVariableOp&batch_normalization_142/ReadVariableOp2T
(batch_normalization_142/ReadVariableOp_1(batch_normalization_142/ReadVariableOp_12P
&batch_normalization_143/AssignNewValue&batch_normalization_143/AssignNewValue2T
(batch_normalization_143/AssignNewValue_1(batch_normalization_143/AssignNewValue_12r
7batch_normalization_143/FusedBatchNormV3/ReadVariableOp7batch_normalization_143/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_19batch_normalization_143/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_143/ReadVariableOp&batch_normalization_143/ReadVariableOp2T
(batch_normalization_143/ReadVariableOp_1(batch_normalization_143/ReadVariableOp_12P
&batch_normalization_144/AssignNewValue&batch_normalization_144/AssignNewValue2T
(batch_normalization_144/AssignNewValue_1(batch_normalization_144/AssignNewValue_12r
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp7batch_normalization_144/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_19batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_144/ReadVariableOp&batch_normalization_144/ReadVariableOp2T
(batch_normalization_144/ReadVariableOp_1(batch_normalization_144/ReadVariableOp_12P
&batch_normalization_145/AssignNewValue&batch_normalization_145/AssignNewValue2T
(batch_normalization_145/AssignNewValue_1(batch_normalization_145/AssignNewValue_12r
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp7batch_normalization_145/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_19batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_145/ReadVariableOp&batch_normalization_145/ReadVariableOp2T
(batch_normalization_145/ReadVariableOp_1(batch_normalization_145/ReadVariableOp_12P
&batch_normalization_146/AssignNewValue&batch_normalization_146/AssignNewValue2T
(batch_normalization_146/AssignNewValue_1(batch_normalization_146/AssignNewValue_12r
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp7batch_normalization_146/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_19batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_146/ReadVariableOp&batch_normalization_146/ReadVariableOp2T
(batch_normalization_146/ReadVariableOp_1(batch_normalization_146/ReadVariableOp_12F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2F
!conv2d_144/BiasAdd/ReadVariableOp!conv2d_144/BiasAdd/ReadVariableOp2D
 conv2d_144/Conv2D/ReadVariableOp conv2d_144/Conv2D/ReadVariableOp2F
!conv2d_145/BiasAdd/ReadVariableOp!conv2d_145/BiasAdd/ReadVariableOp2D
 conv2d_145/Conv2D/ReadVariableOp conv2d_145/Conv2D/ReadVariableOp2F
!conv2d_146/BiasAdd/ReadVariableOp!conv2d_146/BiasAdd/ReadVariableOp2D
 conv2d_146/Conv2D/ReadVariableOp conv2d_146/Conv2D/ReadVariableOp2F
!conv2d_147/BiasAdd/ReadVariableOp!conv2d_147/BiasAdd/ReadVariableOp2D
 conv2d_147/Conv2D/ReadVariableOp conv2d_147/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_145_layer_call_and_return_conditional_losses_131946

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9MX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������9Mi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������9Mw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;O: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������;O
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_144_layer_call_fn_131959

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130228�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�^
�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131255
conv2d_143_input+
conv2d_143_131168:
conv2d_143_131170:,
batch_normalization_142_131173:,
batch_normalization_142_131175:,
batch_normalization_142_131177:,
batch_normalization_142_131179:+
conv2d_144_131183:
conv2d_144_131185:,
batch_normalization_143_131188:,
batch_normalization_143_131190:,
batch_normalization_143_131192:,
batch_normalization_143_131194:+
conv2d_145_131198:
conv2d_145_131200:,
batch_normalization_144_131203:,
batch_normalization_144_131205:,
batch_normalization_144_131207:,
batch_normalization_144_131209:+
conv2d_146_131213:
conv2d_146_131215:,
batch_normalization_145_131218:,
batch_normalization_145_131220:,
batch_normalization_145_131222:,
batch_normalization_145_131224:+
conv2d_147_131228:
conv2d_147_131230:,
batch_normalization_146_131233:,
batch_normalization_146_131235:,
batch_normalization_146_131237:,
batch_normalization_146_131239:"
dense_76_131244:	�

dense_76_131246:
!
dense_77_131249:

dense_77_131251:
identity��/batch_normalization_142/StatefulPartitionedCall�/batch_normalization_143/StatefulPartitionedCall�/batch_normalization_144/StatefulPartitionedCall�/batch_normalization_145/StatefulPartitionedCall�/batch_normalization_146/StatefulPartitionedCall�"conv2d_143/StatefulPartitionedCall�"conv2d_144/StatefulPartitionedCall�"conv2d_145/StatefulPartitionedCall�"conv2d_146/StatefulPartitionedCall�"conv2d_147/StatefulPartitionedCall� dense_76/StatefulPartitionedCall� dense_77/StatefulPartitionedCall�
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCallconv2d_143_inputconv2d_143_131168conv2d_143_131170*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452�
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_142_131173batch_normalization_142_131175batch_normalization_142_131177batch_normalization_142_131179*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130107�
 max_pooling2d_56/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������w�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127�
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_144_131183conv2d_144_131185*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479�
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_143_131188batch_normalization_143_131190batch_normalization_143_131192batch_normalization_143_131194*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130183�
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;O* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203�
"conv2d_145/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_145_131198conv2d_145_131200*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506�
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall+conv2d_145/StatefulPartitionedCall:output:0batch_normalization_144_131203batch_normalization_144_131205batch_normalization_144_131207batch_normalization_144_131209*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130259�
$average_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279�
"conv2d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_146_131213conv2d_146_131215*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533�
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall+conv2d_146/StatefulPartitionedCall:output:0batch_normalization_145_131218batch_normalization_145_131220batch_normalization_145_131222batch_normalization_145_131224*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130335�
$average_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355�
"conv2d_147/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_79/PartitionedCall:output:0conv2d_147_131228conv2d_147_131230*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560�
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall+conv2d_147/StatefulPartitionedCall:output:0batch_normalization_146_131233batch_normalization_146_131235batch_normalization_146_131237batch_normalization_146_131239*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130411�
$average_pooling2d_80/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431�
flatten_27/PartitionedCallPartitionedCall-average_pooling2d_80/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582�
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_76_131244dense_76_131246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_130595�
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_131249dense_77_131251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_130612x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall0^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall#^conv2d_145/StatefulPartitionedCall#^conv2d_146/StatefulPartitionedCall#^conv2d_147/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2H
"conv2d_145/StatefulPartitionedCall"conv2d_145/StatefulPartitionedCall2H
"conv2d_146/StatefulPartitionedCall"conv2d_146/StatefulPartitionedCall2H
"conv2d_147/StatefulPartitionedCall"conv2d_147/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
�

�
D__inference_dense_76_layer_call_and_return_conditional_losses_130595

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�^
�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131165
conv2d_143_input+
conv2d_143_131078:
conv2d_143_131080:,
batch_normalization_142_131083:,
batch_normalization_142_131085:,
batch_normalization_142_131087:,
batch_normalization_142_131089:+
conv2d_144_131093:
conv2d_144_131095:,
batch_normalization_143_131098:,
batch_normalization_143_131100:,
batch_normalization_143_131102:,
batch_normalization_143_131104:+
conv2d_145_131108:
conv2d_145_131110:,
batch_normalization_144_131113:,
batch_normalization_144_131115:,
batch_normalization_144_131117:,
batch_normalization_144_131119:+
conv2d_146_131123:
conv2d_146_131125:,
batch_normalization_145_131128:,
batch_normalization_145_131130:,
batch_normalization_145_131132:,
batch_normalization_145_131134:+
conv2d_147_131138:
conv2d_147_131140:,
batch_normalization_146_131143:,
batch_normalization_146_131145:,
batch_normalization_146_131147:,
batch_normalization_146_131149:"
dense_76_131154:	�

dense_76_131156:
!
dense_77_131159:

dense_77_131161:
identity��/batch_normalization_142/StatefulPartitionedCall�/batch_normalization_143/StatefulPartitionedCall�/batch_normalization_144/StatefulPartitionedCall�/batch_normalization_145/StatefulPartitionedCall�/batch_normalization_146/StatefulPartitionedCall�"conv2d_143/StatefulPartitionedCall�"conv2d_144/StatefulPartitionedCall�"conv2d_145/StatefulPartitionedCall�"conv2d_146/StatefulPartitionedCall�"conv2d_147/StatefulPartitionedCall� dense_76/StatefulPartitionedCall� dense_77/StatefulPartitionedCall�
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCallconv2d_143_inputconv2d_143_131078conv2d_143_131080*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452�
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_142_131083batch_normalization_142_131085batch_normalization_142_131087batch_normalization_142_131089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130076�
 max_pooling2d_56/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������w�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127�
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_144_131093conv2d_144_131095*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479�
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_143_131098batch_normalization_143_131100batch_normalization_143_131102batch_normalization_143_131104*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130152�
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;O* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203�
"conv2d_145/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_145_131108conv2d_145_131110*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506�
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall+conv2d_145/StatefulPartitionedCall:output:0batch_normalization_144_131113batch_normalization_144_131115batch_normalization_144_131117batch_normalization_144_131119*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130228�
$average_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279�
"conv2d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_146_131123conv2d_146_131125*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533�
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall+conv2d_146/StatefulPartitionedCall:output:0batch_normalization_145_131128batch_normalization_145_131130batch_normalization_145_131132batch_normalization_145_131134*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130304�
$average_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355�
"conv2d_147/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_79/PartitionedCall:output:0conv2d_147_131138conv2d_147_131140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560�
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall+conv2d_147/StatefulPartitionedCall:output:0batch_normalization_146_131143batch_normalization_146_131145batch_normalization_146_131147batch_normalization_146_131149*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130380�
$average_pooling2d_80/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431�
flatten_27/PartitionedCallPartitionedCall-average_pooling2d_80/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582�
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_76_131154dense_76_131156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_130595�
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_131159dense_77_131161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_130612x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall0^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall#^conv2d_145/StatefulPartitionedCall#^conv2d_146/StatefulPartitionedCall#^conv2d_147/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2H
"conv2d_145/StatefulPartitionedCall"conv2d_145/StatefulPartitionedCall2H
"conv2d_146/StatefulPartitionedCall"conv2d_146/StatefulPartitionedCall2H
"conv2d_147/StatefulPartitionedCall"conv2d_147/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
�	
�
8__inference_batch_normalization_143_layer_call_fn_131880

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130183�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������%i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131482

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	�


unknown_30:


unknown_31:


unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
 !"*0
config_proto 

CPU

GPU2*0J 8� *a
f\RZ
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�^
�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130931

inputs+
conv2d_143_130844:
conv2d_143_130846:,
batch_normalization_142_130849:,
batch_normalization_142_130851:,
batch_normalization_142_130853:,
batch_normalization_142_130855:+
conv2d_144_130859:
conv2d_144_130861:,
batch_normalization_143_130864:,
batch_normalization_143_130866:,
batch_normalization_143_130868:,
batch_normalization_143_130870:+
conv2d_145_130874:
conv2d_145_130876:,
batch_normalization_144_130879:,
batch_normalization_144_130881:,
batch_normalization_144_130883:,
batch_normalization_144_130885:+
conv2d_146_130889:
conv2d_146_130891:,
batch_normalization_145_130894:,
batch_normalization_145_130896:,
batch_normalization_145_130898:,
batch_normalization_145_130900:+
conv2d_147_130904:
conv2d_147_130906:,
batch_normalization_146_130909:,
batch_normalization_146_130911:,
batch_normalization_146_130913:,
batch_normalization_146_130915:"
dense_76_130920:	�

dense_76_130922:
!
dense_77_130925:

dense_77_130927:
identity��/batch_normalization_142/StatefulPartitionedCall�/batch_normalization_143/StatefulPartitionedCall�/batch_normalization_144/StatefulPartitionedCall�/batch_normalization_145/StatefulPartitionedCall�/batch_normalization_146/StatefulPartitionedCall�"conv2d_143/StatefulPartitionedCall�"conv2d_144/StatefulPartitionedCall�"conv2d_145/StatefulPartitionedCall�"conv2d_146/StatefulPartitionedCall�"conv2d_147/StatefulPartitionedCall� dense_76/StatefulPartitionedCall� dense_77/StatefulPartitionedCall�
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_143_130844conv2d_143_130846*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452�
/batch_normalization_142/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_142_130849batch_normalization_142_130851batch_normalization_142_130853batch_normalization_142_130855*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_130107�
 max_pooling2d_56/PartitionedCallPartitionedCall8batch_normalization_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������w�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127�
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_144_130859conv2d_144_130861*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_130479�
/batch_normalization_143/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_143_130864batch_normalization_143_130866batch_normalization_143_130868batch_normalization_143_130870*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������v�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130183�
 max_pooling2d_57/PartitionedCallPartitionedCall8batch_normalization_143/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;O* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_130203�
"conv2d_145/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_145_130874conv2d_145_130876*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_145_layer_call_and_return_conditional_losses_130506�
/batch_normalization_144/StatefulPartitionedCallStatefulPartitionedCall+conv2d_145/StatefulPartitionedCall:output:0batch_normalization_144_130879batch_normalization_144_130881batch_normalization_144_130883batch_normalization_144_130885*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������9M*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_130259�
$average_pooling2d_78/PartitionedCallPartitionedCall8batch_normalization_144/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_130279�
"conv2d_146/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_146_130889conv2d_146_130891*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_146_layer_call_and_return_conditional_losses_130533�
/batch_normalization_145/StatefulPartitionedCallStatefulPartitionedCall+conv2d_146/StatefulPartitionedCall:output:0batch_normalization_145_130894batch_normalization_145_130896batch_normalization_145_130898batch_normalization_145_130900*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_130335�
$average_pooling2d_79/PartitionedCallPartitionedCall8batch_normalization_145/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_130355�
"conv2d_147/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_79/PartitionedCall:output:0conv2d_147_130904conv2d_147_130906*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_147_layer_call_and_return_conditional_losses_130560�
/batch_normalization_146/StatefulPartitionedCallStatefulPartitionedCall+conv2d_147/StatefulPartitionedCall:output:0batch_normalization_146_130909batch_normalization_146_130911batch_normalization_146_130913batch_normalization_146_130915*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130411�
$average_pooling2d_80/PartitionedCallPartitionedCall8batch_normalization_146/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431�
flatten_27/PartitionedCallPartitionedCall-average_pooling2d_80/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_130582�
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_76_130920dense_76_130922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_130595�
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_130925dense_77_130927*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_130612x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_142/StatefulPartitionedCall0^batch_normalization_143/StatefulPartitionedCall0^batch_normalization_144/StatefulPartitionedCall0^batch_normalization_145/StatefulPartitionedCall0^batch_normalization_146/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall#^conv2d_145/StatefulPartitionedCall#^conv2d_146/StatefulPartitionedCall#^conv2d_147/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_142/StatefulPartitionedCall/batch_normalization_142/StatefulPartitionedCall2b
/batch_normalization_143/StatefulPartitionedCall/batch_normalization_143/StatefulPartitionedCall2b
/batch_normalization_144/StatefulPartitionedCall/batch_normalization_144/StatefulPartitionedCall2b
/batch_normalization_145/StatefulPartitionedCall/batch_normalization_145/StatefulPartitionedCall2b
/batch_normalization_146/StatefulPartitionedCall/batch_normalization_146/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2H
"conv2d_145/StatefulPartitionedCall"conv2d_145/StatefulPartitionedCall2H
"conv2d_146/StatefulPartitionedCall"conv2d_146/StatefulPartitionedCall2H
"conv2d_147/StatefulPartitionedCall"conv2d_147/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_130380

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_130127

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_143_layer_call_fn_131751

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_130452y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_130431

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�-
!__inference__wrapped_model_130054
conv2d_143_input`
Fmy_model_cells_3_1x_batch256_conv2d_143_conv2d_readvariableop_resource:U
Gmy_model_cells_3_1x_batch256_conv2d_143_biasadd_readvariableop_resource:Z
Lmy_model_cells_3_1x_batch256_batch_normalization_142_readvariableop_resource:\
Nmy_model_cells_3_1x_batch256_batch_normalization_142_readvariableop_1_resource:k
]my_model_cells_3_1x_batch256_batch_normalization_142_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_3_1x_batch256_batch_normalization_142_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_3_1x_batch256_conv2d_144_conv2d_readvariableop_resource:U
Gmy_model_cells_3_1x_batch256_conv2d_144_biasadd_readvariableop_resource:Z
Lmy_model_cells_3_1x_batch256_batch_normalization_143_readvariableop_resource:\
Nmy_model_cells_3_1x_batch256_batch_normalization_143_readvariableop_1_resource:k
]my_model_cells_3_1x_batch256_batch_normalization_143_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_3_1x_batch256_batch_normalization_143_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_3_1x_batch256_conv2d_145_conv2d_readvariableop_resource:U
Gmy_model_cells_3_1x_batch256_conv2d_145_biasadd_readvariableop_resource:Z
Lmy_model_cells_3_1x_batch256_batch_normalization_144_readvariableop_resource:\
Nmy_model_cells_3_1x_batch256_batch_normalization_144_readvariableop_1_resource:k
]my_model_cells_3_1x_batch256_batch_normalization_144_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_3_1x_batch256_batch_normalization_144_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_3_1x_batch256_conv2d_146_conv2d_readvariableop_resource:U
Gmy_model_cells_3_1x_batch256_conv2d_146_biasadd_readvariableop_resource:Z
Lmy_model_cells_3_1x_batch256_batch_normalization_145_readvariableop_resource:\
Nmy_model_cells_3_1x_batch256_batch_normalization_145_readvariableop_1_resource:k
]my_model_cells_3_1x_batch256_batch_normalization_145_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_3_1x_batch256_batch_normalization_145_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_3_1x_batch256_conv2d_147_conv2d_readvariableop_resource:U
Gmy_model_cells_3_1x_batch256_conv2d_147_biasadd_readvariableop_resource:Z
Lmy_model_cells_3_1x_batch256_batch_normalization_146_readvariableop_resource:\
Nmy_model_cells_3_1x_batch256_batch_normalization_146_readvariableop_1_resource:k
]my_model_cells_3_1x_batch256_batch_normalization_146_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_3_1x_batch256_batch_normalization_146_fusedbatchnormv3_readvariableop_1_resource:W
Dmy_model_cells_3_1x_batch256_dense_76_matmul_readvariableop_resource:	�
S
Emy_model_cells_3_1x_batch256_dense_76_biasadd_readvariableop_resource:
V
Dmy_model_cells_3_1x_batch256_dense_77_matmul_readvariableop_resource:
S
Emy_model_cells_3_1x_batch256_dense_77_biasadd_readvariableop_resource:
identity��Tmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp�Vmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1�Cmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp�Emy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_1�Tmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp�Vmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1�Cmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp�Emy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_1�Tmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp�Vmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1�Cmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp�Emy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_1�Tmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp�Vmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1�Cmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp�Emy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_1�Tmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp�Vmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1�Cmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp�Emy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_1�>my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOp�=my_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOp�>my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOp�=my_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOp�>my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOp�=my_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOp�>my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOp�=my_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOp�>my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOp�=my_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOp�<my_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOp�;my_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOp�<my_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOp�;my_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOp�
=my_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_3_1x_batch256_conv2d_143_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.my_model_cells_3_1X_Batch256/conv2d_143/Conv2DConv2Dconv2d_143_inputEmy_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
>my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_3_1x_batch256_conv2d_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/my_model_cells_3_1X_Batch256/conv2d_143/BiasAddBiasAdd7my_model_cells_3_1X_Batch256/conv2d_143/Conv2D:output:0Fmy_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
,my_model_cells_3_1X_Batch256/conv2d_143/ReluRelu8my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd:output:0*
T0*1
_output_shapes
:������������
Cmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOpReadVariableOpLmy_model_cells_3_1x_batch256_batch_normalization_142_readvariableop_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_1ReadVariableOpNmy_model_cells_3_1x_batch256_batch_normalization_142_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Tmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_3_1x_batch256_batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Vmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_3_1x_batch256_batch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3FusedBatchNormV3:my_model_cells_3_1X_Batch256/conv2d_143/Relu:activations:0Kmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp:value:0Mmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_1:value:0\my_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
5my_model_cells_3_1X_Batch256/max_pooling2d_56/MaxPoolMaxPoolImy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3:y:0*0
_output_shapes
:���������w�*
ksize
*
paddingVALID*
strides
�
=my_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_3_1x_batch256_conv2d_144_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.my_model_cells_3_1X_Batch256/conv2d_144/Conv2DConv2D>my_model_cells_3_1X_Batch256/max_pooling2d_56/MaxPool:output:0Emy_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�*
paddingVALID*
strides
�
>my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_3_1x_batch256_conv2d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/my_model_cells_3_1X_Batch256/conv2d_144/BiasAddBiasAdd7my_model_cells_3_1X_Batch256/conv2d_144/Conv2D:output:0Fmy_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v��
,my_model_cells_3_1X_Batch256/conv2d_144/ReluRelu8my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:���������v��
Cmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOpReadVariableOpLmy_model_cells_3_1x_batch256_batch_normalization_143_readvariableop_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_1ReadVariableOpNmy_model_cells_3_1x_batch256_batch_normalization_143_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Tmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_3_1x_batch256_batch_normalization_143_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Vmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_3_1x_batch256_batch_normalization_143_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3FusedBatchNormV3:my_model_cells_3_1X_Batch256/conv2d_144/Relu:activations:0Kmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp:value:0Mmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_1:value:0\my_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������v�:::::*
epsilon%o�:*
is_training( �
5my_model_cells_3_1X_Batch256/max_pooling2d_57/MaxPoolMaxPoolImy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3:y:0*/
_output_shapes
:���������;O*
ksize
*
paddingVALID*
strides
�
=my_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_3_1x_batch256_conv2d_145_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.my_model_cells_3_1X_Batch256/conv2d_145/Conv2DConv2D>my_model_cells_3_1X_Batch256/max_pooling2d_57/MaxPool:output:0Emy_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M*
paddingVALID*
strides
�
>my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_3_1x_batch256_conv2d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/my_model_cells_3_1X_Batch256/conv2d_145/BiasAddBiasAdd7my_model_cells_3_1X_Batch256/conv2d_145/Conv2D:output:0Fmy_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M�
,my_model_cells_3_1X_Batch256/conv2d_145/ReluRelu8my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd:output:0*
T0*/
_output_shapes
:���������9M�
Cmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOpReadVariableOpLmy_model_cells_3_1x_batch256_batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_1ReadVariableOpNmy_model_cells_3_1x_batch256_batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Tmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_3_1x_batch256_batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Vmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_3_1x_batch256_batch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3FusedBatchNormV3:my_model_cells_3_1X_Batch256/conv2d_145/Relu:activations:0Kmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp:value:0Mmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_1:value:0\my_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������9M:::::*
epsilon%o�:*
is_training( �
9my_model_cells_3_1X_Batch256/average_pooling2d_78/AvgPoolAvgPoolImy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������&*
ksize
*
paddingVALID*
strides
�
=my_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_3_1x_batch256_conv2d_146_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.my_model_cells_3_1X_Batch256/conv2d_146/Conv2DConv2DBmy_model_cells_3_1X_Batch256/average_pooling2d_78/AvgPool:output:0Emy_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
�
>my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_3_1x_batch256_conv2d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/my_model_cells_3_1X_Batch256/conv2d_146/BiasAddBiasAdd7my_model_cells_3_1X_Batch256/conv2d_146/Conv2D:output:0Fmy_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%�
,my_model_cells_3_1X_Batch256/conv2d_146/ReluRelu8my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd:output:0*
T0*/
_output_shapes
:���������%�
Cmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOpReadVariableOpLmy_model_cells_3_1x_batch256_batch_normalization_145_readvariableop_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_1ReadVariableOpNmy_model_cells_3_1x_batch256_batch_normalization_145_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Tmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_3_1x_batch256_batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Vmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_3_1x_batch256_batch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3FusedBatchNormV3:my_model_cells_3_1X_Batch256/conv2d_146/Relu:activations:0Kmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp:value:0Mmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_1:value:0\my_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������%:::::*
epsilon%o�:*
is_training( �
9my_model_cells_3_1X_Batch256/average_pooling2d_79/AvgPoolAvgPoolImy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
=my_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_3_1x_batch256_conv2d_147_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
.my_model_cells_3_1X_Batch256/conv2d_147/Conv2DConv2DBmy_model_cells_3_1X_Batch256/average_pooling2d_79/AvgPool:output:0Emy_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
>my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_3_1x_batch256_conv2d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
/my_model_cells_3_1X_Batch256/conv2d_147/BiasAddBiasAdd7my_model_cells_3_1X_Batch256/conv2d_147/Conv2D:output:0Fmy_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
,my_model_cells_3_1X_Batch256/conv2d_147/ReluRelu8my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd:output:0*
T0*/
_output_shapes
:����������
Cmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOpReadVariableOpLmy_model_cells_3_1x_batch256_batch_normalization_146_readvariableop_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_1ReadVariableOpNmy_model_cells_3_1x_batch256_batch_normalization_146_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Tmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_3_1x_batch256_batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Vmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_3_1x_batch256_batch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Emy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3FusedBatchNormV3:my_model_cells_3_1X_Batch256/conv2d_147/Relu:activations:0Kmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp:value:0Mmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_1:value:0\my_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
9my_model_cells_3_1X_Batch256/average_pooling2d_80/AvgPoolAvgPoolImy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
~
-my_model_cells_3_1X_Batch256/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
/my_model_cells_3_1X_Batch256/flatten_27/ReshapeReshapeBmy_model_cells_3_1X_Batch256/average_pooling2d_80/AvgPool:output:06my_model_cells_3_1X_Batch256/flatten_27/Const:output:0*
T0*(
_output_shapes
:�����������
;my_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOpReadVariableOpDmy_model_cells_3_1x_batch256_dense_76_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
,my_model_cells_3_1X_Batch256/dense_76/MatMulMatMul8my_model_cells_3_1X_Batch256/flatten_27/Reshape:output:0Cmy_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
<my_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOpReadVariableOpEmy_model_cells_3_1x_batch256_dense_76_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
-my_model_cells_3_1X_Batch256/dense_76/BiasAddBiasAdd6my_model_cells_3_1X_Batch256/dense_76/MatMul:product:0Dmy_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
*my_model_cells_3_1X_Batch256/dense_76/ReluRelu6my_model_cells_3_1X_Batch256/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
;my_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOpReadVariableOpDmy_model_cells_3_1x_batch256_dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
,my_model_cells_3_1X_Batch256/dense_77/MatMulMatMul8my_model_cells_3_1X_Batch256/dense_76/Relu:activations:0Cmy_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<my_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOpReadVariableOpEmy_model_cells_3_1x_batch256_dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-my_model_cells_3_1X_Batch256/dense_77/BiasAddBiasAdd6my_model_cells_3_1X_Batch256/dense_77/MatMul:product:0Dmy_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-my_model_cells_3_1X_Batch256/dense_77/SoftmaxSoftmax6my_model_cells_3_1X_Batch256/dense_77/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity7my_model_cells_3_1X_Batch256/dense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpU^my_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOpW^my_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOpF^my_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_1U^my_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOpW^my_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOpF^my_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_1U^my_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOpW^my_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOpF^my_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_1U^my_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOpW^my_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOpF^my_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_1U^my_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOpW^my_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOpF^my_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_1?^my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOp>^my_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOp?^my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOp>^my_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOp?^my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOp>^my_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOp?^my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOp>^my_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOp?^my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOp>^my_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOp=^my_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOp<^my_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOp=^my_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOp<^my_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Tmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOpTmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp2�
Vmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_3_1X_Batch256/batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12�
Cmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOpCmy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp2�
Emy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_1Emy_model_cells_3_1X_Batch256/batch_normalization_142/ReadVariableOp_12�
Tmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOpTmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp2�
Vmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_3_1X_Batch256/batch_normalization_143/FusedBatchNormV3/ReadVariableOp_12�
Cmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOpCmy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp2�
Emy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_1Emy_model_cells_3_1X_Batch256/batch_normalization_143/ReadVariableOp_12�
Tmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOpTmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp2�
Vmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_3_1X_Batch256/batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12�
Cmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOpCmy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp2�
Emy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_1Emy_model_cells_3_1X_Batch256/batch_normalization_144/ReadVariableOp_12�
Tmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOpTmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp2�
Vmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_3_1X_Batch256/batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12�
Cmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOpCmy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp2�
Emy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_1Emy_model_cells_3_1X_Batch256/batch_normalization_145/ReadVariableOp_12�
Tmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOpTmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp2�
Vmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_3_1X_Batch256/batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12�
Cmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOpCmy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp2�
Emy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_1Emy_model_cells_3_1X_Batch256/batch_normalization_146/ReadVariableOp_12�
>my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOp>my_model_cells_3_1X_Batch256/conv2d_143/BiasAdd/ReadVariableOp2~
=my_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOp=my_model_cells_3_1X_Batch256/conv2d_143/Conv2D/ReadVariableOp2�
>my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOp>my_model_cells_3_1X_Batch256/conv2d_144/BiasAdd/ReadVariableOp2~
=my_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOp=my_model_cells_3_1X_Batch256/conv2d_144/Conv2D/ReadVariableOp2�
>my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOp>my_model_cells_3_1X_Batch256/conv2d_145/BiasAdd/ReadVariableOp2~
=my_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOp=my_model_cells_3_1X_Batch256/conv2d_145/Conv2D/ReadVariableOp2�
>my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOp>my_model_cells_3_1X_Batch256/conv2d_146/BiasAdd/ReadVariableOp2~
=my_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOp=my_model_cells_3_1X_Batch256/conv2d_146/Conv2D/ReadVariableOp2�
>my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOp>my_model_cells_3_1X_Batch256/conv2d_147/BiasAdd/ReadVariableOp2~
=my_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOp=my_model_cells_3_1X_Batch256/conv2d_147/Conv2D/ReadVariableOp2|
<my_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOp<my_model_cells_3_1X_Batch256/dense_76/BiasAdd/ReadVariableOp2z
;my_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOp;my_model_cells_3_1X_Batch256/dense_76/MatMul/ReadVariableOp2|
<my_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOp<my_model_cells_3_1X_Batch256/dense_77/BiasAdd/ReadVariableOp2z
;my_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOp;my_model_cells_3_1X_Batch256/dense_77/MatMul/ReadVariableOp:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
�
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_132213

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_132110

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_131926

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_130152

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_76_layer_call_and_return_conditional_losses_132233

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131075
conv2d_143_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:	�


unknown_30:


unknown_31:


unknown_32:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_143_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
 !"*0
config_proto 

CPU

GPU2*0J 8� *a
f\RZ
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_130931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_143_input
ޣ
�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131612

inputsC
)conv2d_143_conv2d_readvariableop_resource:8
*conv2d_143_biasadd_readvariableop_resource:=
/batch_normalization_142_readvariableop_resource:?
1batch_normalization_142_readvariableop_1_resource:N
@batch_normalization_142_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_144_conv2d_readvariableop_resource:8
*conv2d_144_biasadd_readvariableop_resource:=
/batch_normalization_143_readvariableop_resource:?
1batch_normalization_143_readvariableop_1_resource:N
@batch_normalization_143_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_143_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_145_conv2d_readvariableop_resource:8
*conv2d_145_biasadd_readvariableop_resource:=
/batch_normalization_144_readvariableop_resource:?
1batch_normalization_144_readvariableop_1_resource:N
@batch_normalization_144_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_146_conv2d_readvariableop_resource:8
*conv2d_146_biasadd_readvariableop_resource:=
/batch_normalization_145_readvariableop_resource:?
1batch_normalization_145_readvariableop_1_resource:N
@batch_normalization_145_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_147_conv2d_readvariableop_resource:8
*conv2d_147_biasadd_readvariableop_resource:=
/batch_normalization_146_readvariableop_resource:?
1batch_normalization_146_readvariableop_1_resource:N
@batch_normalization_146_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource::
'dense_76_matmul_readvariableop_resource:	�
6
(dense_76_biasadd_readvariableop_resource:
9
'dense_77_matmul_readvariableop_resource:
6
(dense_77_biasadd_readvariableop_resource:
identity��7batch_normalization_142/FusedBatchNormV3/ReadVariableOp�9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_142/ReadVariableOp�(batch_normalization_142/ReadVariableOp_1�7batch_normalization_143/FusedBatchNormV3/ReadVariableOp�9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_143/ReadVariableOp�(batch_normalization_143/ReadVariableOp_1�7batch_normalization_144/FusedBatchNormV3/ReadVariableOp�9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_144/ReadVariableOp�(batch_normalization_144/ReadVariableOp_1�7batch_normalization_145/FusedBatchNormV3/ReadVariableOp�9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_145/ReadVariableOp�(batch_normalization_145/ReadVariableOp_1�7batch_normalization_146/FusedBatchNormV3/ReadVariableOp�9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1�&batch_normalization_146/ReadVariableOp�(batch_normalization_146/ReadVariableOp_1�!conv2d_143/BiasAdd/ReadVariableOp� conv2d_143/Conv2D/ReadVariableOp�!conv2d_144/BiasAdd/ReadVariableOp� conv2d_144/Conv2D/ReadVariableOp�!conv2d_145/BiasAdd/ReadVariableOp� conv2d_145/Conv2D/ReadVariableOp�!conv2d_146/BiasAdd/ReadVariableOp� conv2d_146/Conv2D/ReadVariableOp�!conv2d_147/BiasAdd/ReadVariableOp� conv2d_147/Conv2D/ReadVariableOp�dense_76/BiasAdd/ReadVariableOp�dense_76/MatMul/ReadVariableOp�dense_77/BiasAdd/ReadVariableOp�dense_77/MatMul/ReadVariableOp�
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_143/Conv2DConv2Dinputs(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*1
_output_shapes
:������������
&batch_normalization_142/ReadVariableOpReadVariableOp/batch_normalization_142_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_142/ReadVariableOp_1ReadVariableOp1batch_normalization_142_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_142/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_142_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_142_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_142/FusedBatchNormV3FusedBatchNormV3conv2d_143/Relu:activations:0.batch_normalization_142/ReadVariableOp:value:00batch_normalization_142/ReadVariableOp_1:value:0?batch_normalization_142/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_142/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
max_pooling2d_56/MaxPoolMaxPool,batch_normalization_142/FusedBatchNormV3:y:0*0
_output_shapes
:���������w�*
ksize
*
paddingVALID*
strides
�
 conv2d_144/Conv2D/ReadVariableOpReadVariableOp)conv2d_144_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_144/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0(conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�*
paddingVALID*
strides
�
!conv2d_144/BiasAdd/ReadVariableOpReadVariableOp*conv2d_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_144/BiasAddBiasAddconv2d_144/Conv2D:output:0)conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������v�o
conv2d_144/ReluReluconv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:���������v��
&batch_normalization_143/ReadVariableOpReadVariableOp/batch_normalization_143_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_143/ReadVariableOp_1ReadVariableOp1batch_normalization_143_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_143/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_143_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_143_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_143/FusedBatchNormV3FusedBatchNormV3conv2d_144/Relu:activations:0.batch_normalization_143/ReadVariableOp:value:00batch_normalization_143/ReadVariableOp_1:value:0?batch_normalization_143/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_143/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:���������v�:::::*
epsilon%o�:*
is_training( �
max_pooling2d_57/MaxPoolMaxPool,batch_normalization_143/FusedBatchNormV3:y:0*/
_output_shapes
:���������;O*
ksize
*
paddingVALID*
strides
�
 conv2d_145/Conv2D/ReadVariableOpReadVariableOp)conv2d_145_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_145/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0(conv2d_145/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9M*
paddingVALID*
strides
�
!conv2d_145/BiasAdd/ReadVariableOpReadVariableOp*conv2d_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_145/BiasAddBiasAddconv2d_145/Conv2D:output:0)conv2d_145/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������9Mn
conv2d_145/ReluReluconv2d_145/BiasAdd:output:0*
T0*/
_output_shapes
:���������9M�
&batch_normalization_144/ReadVariableOpReadVariableOp/batch_normalization_144_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_144/ReadVariableOp_1ReadVariableOp1batch_normalization_144_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_144/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_144_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_144_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_144/FusedBatchNormV3FusedBatchNormV3conv2d_145/Relu:activations:0.batch_normalization_144/ReadVariableOp:value:00batch_normalization_144/ReadVariableOp_1:value:0?batch_normalization_144/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_144/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������9M:::::*
epsilon%o�:*
is_training( �
average_pooling2d_78/AvgPoolAvgPool,batch_normalization_144/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������&*
ksize
*
paddingVALID*
strides
�
 conv2d_146/Conv2D/ReadVariableOpReadVariableOp)conv2d_146_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_146/Conv2DConv2D%average_pooling2d_78/AvgPool:output:0(conv2d_146/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
�
!conv2d_146/BiasAdd/ReadVariableOpReadVariableOp*conv2d_146_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_146/BiasAddBiasAddconv2d_146/Conv2D:output:0)conv2d_146/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%n
conv2d_146/ReluReluconv2d_146/BiasAdd:output:0*
T0*/
_output_shapes
:���������%�
&batch_normalization_145/ReadVariableOpReadVariableOp/batch_normalization_145_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_145/ReadVariableOp_1ReadVariableOp1batch_normalization_145_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_145/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_145_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_145_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_145/FusedBatchNormV3FusedBatchNormV3conv2d_146/Relu:activations:0.batch_normalization_145/ReadVariableOp:value:00batch_normalization_145/ReadVariableOp_1:value:0?batch_normalization_145/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_145/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������%:::::*
epsilon%o�:*
is_training( �
average_pooling2d_79/AvgPoolAvgPool,batch_normalization_145/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_147/Conv2D/ReadVariableOpReadVariableOp)conv2d_147_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_147/Conv2DConv2D%average_pooling2d_79/AvgPool:output:0(conv2d_147/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
!conv2d_147/BiasAdd/ReadVariableOpReadVariableOp*conv2d_147_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_147/BiasAddBiasAddconv2d_147/Conv2D:output:0)conv2d_147/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������n
conv2d_147/ReluReluconv2d_147/BiasAdd:output:0*
T0*/
_output_shapes
:����������
&batch_normalization_146/ReadVariableOpReadVariableOp/batch_normalization_146_readvariableop_resource*
_output_shapes
:*
dtype0�
(batch_normalization_146/ReadVariableOp_1ReadVariableOp1batch_normalization_146_readvariableop_1_resource*
_output_shapes
:*
dtype0�
7batch_normalization_146/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_146_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_146_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
(batch_normalization_146/FusedBatchNormV3FusedBatchNormV3conv2d_147/Relu:activations:0.batch_normalization_146/ReadVariableOp:value:00batch_normalization_146/ReadVariableOp_1:value:0?batch_normalization_146/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_146/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
average_pooling2d_80/AvgPoolAvgPool,batch_normalization_146/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
a
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_27/ReshapeReshape%average_pooling2d_80/AvgPool:output:0flatten_27/Const:output:0*
T0*(
_output_shapes
:�����������
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_76/MatMulMatMulflatten_27/Reshape:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_77/SoftmaxSoftmaxdense_77/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp8^batch_normalization_142/FusedBatchNormV3/ReadVariableOp:^batch_normalization_142/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_142/ReadVariableOp)^batch_normalization_142/ReadVariableOp_18^batch_normalization_143/FusedBatchNormV3/ReadVariableOp:^batch_normalization_143/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_143/ReadVariableOp)^batch_normalization_143/ReadVariableOp_18^batch_normalization_144/FusedBatchNormV3/ReadVariableOp:^batch_normalization_144/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_144/ReadVariableOp)^batch_normalization_144/ReadVariableOp_18^batch_normalization_145/FusedBatchNormV3/ReadVariableOp:^batch_normalization_145/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_145/ReadVariableOp)^batch_normalization_145/ReadVariableOp_18^batch_normalization_146/FusedBatchNormV3/ReadVariableOp:^batch_normalization_146/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_146/ReadVariableOp)^batch_normalization_146/ReadVariableOp_1"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp"^conv2d_144/BiasAdd/ReadVariableOp!^conv2d_144/Conv2D/ReadVariableOp"^conv2d_145/BiasAdd/ReadVariableOp!^conv2d_145/Conv2D/ReadVariableOp"^conv2d_146/BiasAdd/ReadVariableOp!^conv2d_146/Conv2D/ReadVariableOp"^conv2d_147/BiasAdd/ReadVariableOp!^conv2d_147/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_142/FusedBatchNormV3/ReadVariableOp7batch_normalization_142/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_142/FusedBatchNormV3/ReadVariableOp_19batch_normalization_142/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_142/ReadVariableOp&batch_normalization_142/ReadVariableOp2T
(batch_normalization_142/ReadVariableOp_1(batch_normalization_142/ReadVariableOp_12r
7batch_normalization_143/FusedBatchNormV3/ReadVariableOp7batch_normalization_143/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_143/FusedBatchNormV3/ReadVariableOp_19batch_normalization_143/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_143/ReadVariableOp&batch_normalization_143/ReadVariableOp2T
(batch_normalization_143/ReadVariableOp_1(batch_normalization_143/ReadVariableOp_12r
7batch_normalization_144/FusedBatchNormV3/ReadVariableOp7batch_normalization_144/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_144/FusedBatchNormV3/ReadVariableOp_19batch_normalization_144/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_144/ReadVariableOp&batch_normalization_144/ReadVariableOp2T
(batch_normalization_144/ReadVariableOp_1(batch_normalization_144/ReadVariableOp_12r
7batch_normalization_145/FusedBatchNormV3/ReadVariableOp7batch_normalization_145/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_145/FusedBatchNormV3/ReadVariableOp_19batch_normalization_145/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_145/ReadVariableOp&batch_normalization_145/ReadVariableOp2T
(batch_normalization_145/ReadVariableOp_1(batch_normalization_145/ReadVariableOp_12r
7batch_normalization_146/FusedBatchNormV3/ReadVariableOp7batch_normalization_146/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_146/FusedBatchNormV3/ReadVariableOp_19batch_normalization_146/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_146/ReadVariableOp&batch_normalization_146/ReadVariableOp2T
(batch_normalization_146/ReadVariableOp_1(batch_normalization_146/ReadVariableOp_12F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2F
!conv2d_144/BiasAdd/ReadVariableOp!conv2d_144/BiasAdd/ReadVariableOp2D
 conv2d_144/Conv2D/ReadVariableOp conv2d_144/Conv2D/ReadVariableOp2F
!conv2d_145/BiasAdd/ReadVariableOp!conv2d_145/BiasAdd/ReadVariableOp2D
 conv2d_145/Conv2D/ReadVariableOp conv2d_145/Conv2D/ReadVariableOp2F
!conv2d_146/BiasAdd/ReadVariableOp!conv2d_146/BiasAdd/ReadVariableOp2D
 conv2d_146/Conv2D/ReadVariableOp conv2d_146/Conv2D/ReadVariableOp2F
!conv2d_147/BiasAdd/ReadVariableOp!conv2d_147/BiasAdd/ReadVariableOp2D
 conv2d_147/Conv2D/ReadVariableOp conv2d_147/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
conv2d_143_inputC
"serving_default_conv2d_143_input:0�����������<
dense_770
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
_axis
	`gamma
abeta
bmoving_mean
cmoving_variance"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op"
_tf_keras_layer
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance"
_tf_keras_layer
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
"0
#1
,2
-3
.4
/5
<6
=7
F8
G9
H10
I11
V12
W13
`14
a15
b16
c17
p18
q19
z20
{21
|22
}23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33"
trackable_list_wrapper
�
"0
#1
,2
-3
<4
=5
F6
G7
V8
W9
`10
a11
p12
q13
z14
{15
�16
�17
�18
�19
�20
�21
�22
�23"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_130690
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131409
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131482
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131075�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131612
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131742
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131165
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131255�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
!__inference__wrapped_model_130054conv2d_143_input"�
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate"m�#m�,m�-m�<m�=m�Fm�Gm�Vm�Wm�`m�am�pm�qm�zm�{m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�"v�#v�,v�-v�<v�=v�Fv�Gv�Vv�Wv�`v�av�pv�qv�zv�{v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_143_layer_call_fn_131751�
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
 z�trace_0
�
�trace_02�
F__inference_conv2d_143_layer_call_and_return_conditional_losses_131762�
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
 z�trace_0
+:)2conv2d_143/kernel
:2conv2d_143/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_142_layer_call_fn_131775
8__inference_batch_normalization_142_layer_call_fn_131788�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131806
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131824�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_142/gamma
*:(2batch_normalization_142/beta
3:1 (2#batch_normalization_142/moving_mean
7:5 (2'batch_normalization_142/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_56_layer_call_fn_131829�
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
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_131834�
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
 z�trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_144_layer_call_fn_131843�
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
 z�trace_0
�
�trace_02�
F__inference_conv2d_144_layer_call_and_return_conditional_losses_131854�
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
 z�trace_0
+:)2conv2d_144/kernel
:2conv2d_144/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_143_layer_call_fn_131867
8__inference_batch_normalization_143_layer_call_fn_131880�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131898
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131916�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_143/gamma
*:(2batch_normalization_143/beta
3:1 (2#batch_normalization_143/moving_mean
7:5 (2'batch_normalization_143/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_57_layer_call_fn_131921�
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
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_131926�
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
 z�trace_0
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_145_layer_call_fn_131935�
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
 z�trace_0
�
�trace_02�
F__inference_conv2d_145_layer_call_and_return_conditional_losses_131946�
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
 z�trace_0
+:)2conv2d_145/kernel
:2conv2d_145/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
`0
a1
b2
c3"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_144_layer_call_fn_131959
8__inference_batch_normalization_144_layer_call_fn_131972�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_131990
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_132008�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_144/gamma
*:(2batch_normalization_144/beta
3:1 (2#batch_normalization_144/moving_mean
7:5 (2'batch_normalization_144/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_78_layer_call_fn_132013�
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
 z�trace_0
�
�trace_02�
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_132018�
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
 z�trace_0
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_146_layer_call_fn_132027�
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
 z�trace_0
�
�trace_02�
F__inference_conv2d_146_layer_call_and_return_conditional_losses_132038�
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
 z�trace_0
+:)2conv2d_146/kernel
:2conv2d_146/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
z0
{1
|2
}3"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_145_layer_call_fn_132051
8__inference_batch_normalization_145_layer_call_fn_132064�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132082
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132100�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_145/gamma
*:(2batch_normalization_145/beta
3:1 (2#batch_normalization_145/moving_mean
7:5 (2'batch_normalization_145/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_79_layer_call_fn_132105�
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
 z�trace_0
�
�trace_02�
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_132110�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_147_layer_call_fn_132119�
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
 z�trace_0
�
�trace_02�
F__inference_conv2d_147_layer_call_and_return_conditional_losses_132130�
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
 z�trace_0
+:)2conv2d_147/kernel
:2conv2d_147/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_146_layer_call_fn_132143
8__inference_batch_normalization_146_layer_call_fn_132156�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132174
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132192�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_146/gamma
*:(2batch_normalization_146/beta
3:1 (2#batch_normalization_146/moving_mean
7:5 (2'batch_normalization_146/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_80_layer_call_fn_132197�
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
 z�trace_0
�
�trace_02�
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_132202�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_27_layer_call_fn_132207�
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
 z�trace_0
�
�trace_02�
F__inference_flatten_27_layer_call_and_return_conditional_losses_132213�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_76_layer_call_fn_132222�
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
 z�trace_0
�
�trace_02�
D__inference_dense_76_layer_call_and_return_conditional_losses_132233�
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
 z�trace_0
": 	�
2dense_76/kernel
:
2dense_76/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_77_layer_call_fn_132242�
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
 z�trace_0
�
�trace_02�
D__inference_dense_77_layer_call_and_return_conditional_losses_132253�
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
 z�trace_0
!:
2dense_77/kernel
:2dense_77/bias
h
.0
/1
H2
I3
b4
c5
|6
}7
�8
�9"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_130690conv2d_143_input"�
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
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131409inputs"�
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
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131482inputs"�
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
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131075conv2d_143_input"�
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
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131612inputs"�
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
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131742inputs"�
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
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131165conv2d_143_input"�
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
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131255conv2d_143_input"�
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
$__inference_signature_wrapper_131336conv2d_143_input"�
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
+__inference_conv2d_143_layer_call_fn_131751inputs"�
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
F__inference_conv2d_143_layer_call_and_return_conditional_losses_131762inputs"�
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
.
.0
/1"
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
8__inference_batch_normalization_142_layer_call_fn_131775inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_142_layer_call_fn_131788inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131806inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131824inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
1__inference_max_pooling2d_56_layer_call_fn_131829inputs"�
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
�B�
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_131834inputs"�
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
+__inference_conv2d_144_layer_call_fn_131843inputs"�
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
F__inference_conv2d_144_layer_call_and_return_conditional_losses_131854inputs"�
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
.
H0
I1"
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
8__inference_batch_normalization_143_layer_call_fn_131867inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_143_layer_call_fn_131880inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131898inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131916inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
1__inference_max_pooling2d_57_layer_call_fn_131921inputs"�
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
�B�
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_131926inputs"�
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
+__inference_conv2d_145_layer_call_fn_131935inputs"�
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
F__inference_conv2d_145_layer_call_and_return_conditional_losses_131946inputs"�
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
.
b0
c1"
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
8__inference_batch_normalization_144_layer_call_fn_131959inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_144_layer_call_fn_131972inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_131990inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_132008inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
5__inference_average_pooling2d_78_layer_call_fn_132013inputs"�
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
�B�
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_132018inputs"�
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
+__inference_conv2d_146_layer_call_fn_132027inputs"�
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
F__inference_conv2d_146_layer_call_and_return_conditional_losses_132038inputs"�
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
.
|0
}1"
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
8__inference_batch_normalization_145_layer_call_fn_132051inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_145_layer_call_fn_132064inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132082inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132100inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
5__inference_average_pooling2d_79_layer_call_fn_132105inputs"�
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
�B�
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_132110inputs"�
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
+__inference_conv2d_147_layer_call_fn_132119inputs"�
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
F__inference_conv2d_147_layer_call_and_return_conditional_losses_132130inputs"�
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
0
�0
�1"
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
8__inference_batch_normalization_146_layer_call_fn_132143inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_146_layer_call_fn_132156inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132174inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132192inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
5__inference_average_pooling2d_80_layer_call_fn_132197inputs"�
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
�B�
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_132202inputs"�
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
+__inference_flatten_27_layer_call_fn_132207inputs"�
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
F__inference_flatten_27_layer_call_and_return_conditional_losses_132213inputs"�
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
)__inference_dense_76_layer_call_fn_132222inputs"�
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
D__inference_dense_76_layer_call_and_return_conditional_losses_132233inputs"�
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
)__inference_dense_77_layer_call_fn_132242inputs"�
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
D__inference_dense_77_layer_call_and_return_conditional_losses_132253inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.2Adam/conv2d_143/kernel/m
": 2Adam/conv2d_143/bias/m
0:.2$Adam/batch_normalization_142/gamma/m
/:-2#Adam/batch_normalization_142/beta/m
0:.2Adam/conv2d_144/kernel/m
": 2Adam/conv2d_144/bias/m
0:.2$Adam/batch_normalization_143/gamma/m
/:-2#Adam/batch_normalization_143/beta/m
0:.2Adam/conv2d_145/kernel/m
": 2Adam/conv2d_145/bias/m
0:.2$Adam/batch_normalization_144/gamma/m
/:-2#Adam/batch_normalization_144/beta/m
0:.2Adam/conv2d_146/kernel/m
": 2Adam/conv2d_146/bias/m
0:.2$Adam/batch_normalization_145/gamma/m
/:-2#Adam/batch_normalization_145/beta/m
0:.2Adam/conv2d_147/kernel/m
": 2Adam/conv2d_147/bias/m
0:.2$Adam/batch_normalization_146/gamma/m
/:-2#Adam/batch_normalization_146/beta/m
':%	�
2Adam/dense_76/kernel/m
 :
2Adam/dense_76/bias/m
&:$
2Adam/dense_77/kernel/m
 :2Adam/dense_77/bias/m
0:.2Adam/conv2d_143/kernel/v
": 2Adam/conv2d_143/bias/v
0:.2$Adam/batch_normalization_142/gamma/v
/:-2#Adam/batch_normalization_142/beta/v
0:.2Adam/conv2d_144/kernel/v
": 2Adam/conv2d_144/bias/v
0:.2$Adam/batch_normalization_143/gamma/v
/:-2#Adam/batch_normalization_143/beta/v
0:.2Adam/conv2d_145/kernel/v
": 2Adam/conv2d_145/bias/v
0:.2$Adam/batch_normalization_144/gamma/v
/:-2#Adam/batch_normalization_144/beta/v
0:.2Adam/conv2d_146/kernel/v
": 2Adam/conv2d_146/bias/v
0:.2$Adam/batch_normalization_145/gamma/v
/:-2#Adam/batch_normalization_145/beta/v
0:.2Adam/conv2d_147/kernel/v
": 2Adam/conv2d_147/bias/v
0:.2$Adam/batch_normalization_146/gamma/v
/:-2#Adam/batch_normalization_146/beta/v
':%	�
2Adam/dense_76/kernel/v
 :
2Adam/dense_76/bias/v
&:$
2Adam/dense_77/kernel/v
 :2Adam/dense_77/bias/v�
!__inference__wrapped_model_130054�,"#,-./<=FGHIVW`abcpqz{|}����������C�@
9�6
4�1
conv2d_143_input�����������
� "3�0
.
dense_77"�
dense_77����������
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_132018�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
5__inference_average_pooling2d_78_layer_call_fn_132013�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_132110�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
5__inference_average_pooling2d_79_layer_call_fn_132105�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
P__inference_average_pooling2d_80_layer_call_and_return_conditional_losses_132202�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
5__inference_average_pooling2d_80_layer_call_fn_132197�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131806�,-./M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
S__inference_batch_normalization_142_layer_call_and_return_conditional_losses_131824�,-./M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
8__inference_batch_normalization_142_layer_call_fn_131775�,-./M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
8__inference_batch_normalization_142_layer_call_fn_131788�,-./M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131898�FGHIM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
S__inference_batch_normalization_143_layer_call_and_return_conditional_losses_131916�FGHIM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
8__inference_batch_normalization_143_layer_call_fn_131867�FGHIM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
8__inference_batch_normalization_143_layer_call_fn_131880�FGHIM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_131990�`abcM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
S__inference_batch_normalization_144_layer_call_and_return_conditional_losses_132008�`abcM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
8__inference_batch_normalization_144_layer_call_fn_131959�`abcM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
8__inference_batch_normalization_144_layer_call_fn_131972�`abcM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132082�z{|}M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
S__inference_batch_normalization_145_layer_call_and_return_conditional_losses_132100�z{|}M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
8__inference_batch_normalization_145_layer_call_fn_132051�z{|}M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
8__inference_batch_normalization_145_layer_call_fn_132064�z{|}M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132174�����M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
S__inference_batch_normalization_146_layer_call_and_return_conditional_losses_132192�����M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
8__inference_batch_normalization_146_layer_call_fn_132143�����M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
8__inference_batch_normalization_146_layer_call_fn_132156�����M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
F__inference_conv2d_143_layer_call_and_return_conditional_losses_131762p"#9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
+__inference_conv2d_143_layer_call_fn_131751c"#9�6
/�,
*�'
inputs�����������
� ""�������������
F__inference_conv2d_144_layer_call_and_return_conditional_losses_131854n<=8�5
.�+
)�&
inputs���������w�
� ".�+
$�!
0���������v�
� �
+__inference_conv2d_144_layer_call_fn_131843a<=8�5
.�+
)�&
inputs���������w�
� "!����������v��
F__inference_conv2d_145_layer_call_and_return_conditional_losses_131946lVW7�4
-�*
(�%
inputs���������;O
� "-�*
#� 
0���������9M
� �
+__inference_conv2d_145_layer_call_fn_131935_VW7�4
-�*
(�%
inputs���������;O
� " ����������9M�
F__inference_conv2d_146_layer_call_and_return_conditional_losses_132038lpq7�4
-�*
(�%
inputs���������&
� "-�*
#� 
0���������%
� �
+__inference_conv2d_146_layer_call_fn_132027_pq7�4
-�*
(�%
inputs���������&
� " ����������%�
F__inference_conv2d_147_layer_call_and_return_conditional_losses_132130n��7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
+__inference_conv2d_147_layer_call_fn_132119a��7�4
-�*
(�%
inputs���������
� " �����������
D__inference_dense_76_layer_call_and_return_conditional_losses_132233_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� 
)__inference_dense_76_layer_call_fn_132222R��0�-
&�#
!�
inputs����������
� "����������
�
D__inference_dense_77_layer_call_and_return_conditional_losses_132253^��/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� ~
)__inference_dense_77_layer_call_fn_132242Q��/�,
%�"
 �
inputs���������

� "�����������
F__inference_flatten_27_layer_call_and_return_conditional_losses_132213a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� �
+__inference_flatten_27_layer_call_fn_132207T7�4
-�*
(�%
inputs���������
� "������������
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_131834�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_56_layer_call_fn_131829�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_131926�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_57_layer_call_fn_131921�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131165�,"#,-./<=FGHIVW`abcpqz{|}����������K�H
A�>
4�1
conv2d_143_input�����������
p 

 
� "%�"
�
0���������
� �
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131255�,"#,-./<=FGHIVW`abcpqz{|}����������K�H
A�>
4�1
conv2d_143_input�����������
p

 
� "%�"
�
0���������
� �
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131612�,"#,-./<=FGHIVW`abcpqz{|}����������A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
X__inference_my_model_cells_3_1X_Batch256_layer_call_and_return_conditional_losses_131742�,"#,-./<=FGHIVW`abcpqz{|}����������A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_130690�,"#,-./<=FGHIVW`abcpqz{|}����������K�H
A�>
4�1
conv2d_143_input�����������
p 

 
� "�����������
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131075�,"#,-./<=FGHIVW`abcpqz{|}����������K�H
A�>
4�1
conv2d_143_input�����������
p

 
� "�����������
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131409�,"#,-./<=FGHIVW`abcpqz{|}����������A�>
7�4
*�'
inputs�����������
p 

 
� "�����������
=__inference_my_model_cells_3_1X_Batch256_layer_call_fn_131482�,"#,-./<=FGHIVW`abcpqz{|}����������A�>
7�4
*�'
inputs�����������
p

 
� "�����������
$__inference_signature_wrapper_131336�,"#,-./<=FGHIVW`abcpqz{|}����������W�T
� 
M�J
H
conv2d_143_input4�1
conv2d_143_input�����������"3�0
.
dense_77"�
dense_77���������