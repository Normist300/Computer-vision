┤х
щ╝
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
╝
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
Ы
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
√
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
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
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
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.12v2.10.0-76-gfdfc646704c8║║
А
Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_54/bias/v
y
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_54/kernel/v
Б
*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes

:@*
dtype0
А
Adam/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_53/bias/v
y
(Adam/dense_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/v*
_output_shapes
:@*
dtype0
Й
Adam/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*'
shared_nameAdam/dense_53/kernel/v
В
*Adam/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/v*
_output_shapes
:	А@*
dtype0
Ю
#Adam/batch_normalization_116/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_116/beta/v
Ч
7Adam/batch_normalization_116/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_116/beta/v*
_output_shapes
: *
dtype0
а
$Adam/batch_normalization_116/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_116/gamma/v
Щ
8Adam/batch_normalization_116/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_116/gamma/v*
_output_shapes
: *
dtype0
Д
Adam/conv2d_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_114/bias/v
}
*Adam/conv2d_114/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_114/bias/v*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_114/kernel/v
Н
,Adam/conv2d_114/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_114/kernel/v*&
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_115/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_115/beta/v
Ч
7Adam/batch_normalization_115/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_115/beta/v*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_115/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_115/gamma/v
Щ
8Adam/batch_normalization_115/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_115/gamma/v*
_output_shapes
:*
dtype0
Д
Adam/conv2d_113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_113/bias/v
}
*Adam/conv2d_113/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_113/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_113/kernel/v
Н
,Adam/conv2d_113/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_113/kernel/v*&
_output_shapes
:		*
dtype0
Ю
#Adam/batch_normalization_114/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_114/beta/v
Ч
7Adam/batch_normalization_114/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_114/beta/v*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_114/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_114/gamma/v
Щ
8Adam/batch_normalization_114/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_114/gamma/v*
_output_shapes
:*
dtype0
Д
Adam/conv2d_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_112/bias/v
}
*Adam/conv2d_112/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_112/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_112/kernel/v
Н
,Adam/conv2d_112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_112/kernel/v*&
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_113/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_113/beta/v
Ч
7Adam/batch_normalization_113/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_113/beta/v*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_113/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_113/gamma/v
Щ
8Adam/batch_normalization_113/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_113/gamma/v*
_output_shapes
:*
dtype0
Д
Adam/conv2d_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_111/bias/v
}
*Adam/conv2d_111/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/bias/v*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_111/kernel/v
Н
,Adam/conv2d_111/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_54/bias/m
y
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_54/kernel/m
Б
*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes

:@*
dtype0
А
Adam/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_53/bias/m
y
(Adam/dense_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/m*
_output_shapes
:@*
dtype0
Й
Adam/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*'
shared_nameAdam/dense_53/kernel/m
В
*Adam/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/m*
_output_shapes
:	А@*
dtype0
Ю
#Adam/batch_normalization_116/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_116/beta/m
Ч
7Adam/batch_normalization_116/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_116/beta/m*
_output_shapes
: *
dtype0
а
$Adam/batch_normalization_116/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_116/gamma/m
Щ
8Adam/batch_normalization_116/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_116/gamma/m*
_output_shapes
: *
dtype0
Д
Adam/conv2d_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_114/bias/m
}
*Adam/conv2d_114/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_114/bias/m*
_output_shapes
: *
dtype0
Ф
Adam/conv2d_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_114/kernel/m
Н
,Adam/conv2d_114/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_114/kernel/m*&
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_115/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_115/beta/m
Ч
7Adam/batch_normalization_115/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_115/beta/m*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_115/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_115/gamma/m
Щ
8Adam/batch_normalization_115/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_115/gamma/m*
_output_shapes
:*
dtype0
Д
Adam/conv2d_113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_113/bias/m
}
*Adam/conv2d_113/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_113/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_113/kernel/m
Н
,Adam/conv2d_113/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_113/kernel/m*&
_output_shapes
:		*
dtype0
Ю
#Adam/batch_normalization_114/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_114/beta/m
Ч
7Adam/batch_normalization_114/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_114/beta/m*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_114/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_114/gamma/m
Щ
8Adam/batch_normalization_114/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_114/gamma/m*
_output_shapes
:*
dtype0
Д
Adam/conv2d_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_112/bias/m
}
*Adam/conv2d_112/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_112/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_112/kernel/m
Н
,Adam/conv2d_112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_112/kernel/m*&
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_113/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_113/beta/m
Ч
7Adam/batch_normalization_113/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_113/beta/m*
_output_shapes
:*
dtype0
а
$Adam/batch_normalization_113/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_113/gamma/m
Щ
8Adam/batch_normalization_113/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_113/gamma/m*
_output_shapes
:*
dtype0
Д
Adam/conv2d_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_111/bias/m
}
*Adam/conv2d_111/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/bias/m*
_output_shapes
:*
dtype0
Ф
Adam/conv2d_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_111/kernel/m
Н
,Adam/conv2d_111/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/kernel/m*&
_output_shapes
:*
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
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:*
dtype0
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:@*
dtype0
r
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_53/bias
k
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
_output_shapes
:@*
dtype0
{
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@* 
shared_namedense_53/kernel
t
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes
:	А@*
dtype0
ж
'batch_normalization_116/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_116/moving_variance
Я
;batch_normalization_116/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_116/moving_variance*
_output_shapes
: *
dtype0
Ю
#batch_normalization_116/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_116/moving_mean
Ч
7batch_normalization_116/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_116/moving_mean*
_output_shapes
: *
dtype0
Р
batch_normalization_116/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_116/beta
Й
0batch_normalization_116/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_116/beta*
_output_shapes
: *
dtype0
Т
batch_normalization_116/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_116/gamma
Л
1batch_normalization_116/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_116/gamma*
_output_shapes
: *
dtype0
v
conv2d_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_114/bias
o
#conv2d_114/bias/Read/ReadVariableOpReadVariableOpconv2d_114/bias*
_output_shapes
: *
dtype0
Ж
conv2d_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_114/kernel

%conv2d_114/kernel/Read/ReadVariableOpReadVariableOpconv2d_114/kernel*&
_output_shapes
: *
dtype0
ж
'batch_normalization_115/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_115/moving_variance
Я
;batch_normalization_115/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_115/moving_variance*
_output_shapes
:*
dtype0
Ю
#batch_normalization_115/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_115/moving_mean
Ч
7batch_normalization_115/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_115/moving_mean*
_output_shapes
:*
dtype0
Р
batch_normalization_115/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_115/beta
Й
0batch_normalization_115/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_115/beta*
_output_shapes
:*
dtype0
Т
batch_normalization_115/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_115/gamma
Л
1batch_normalization_115/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_115/gamma*
_output_shapes
:*
dtype0
v
conv2d_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_113/bias
o
#conv2d_113/bias/Read/ReadVariableOpReadVariableOpconv2d_113/bias*
_output_shapes
:*
dtype0
Ж
conv2d_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*"
shared_nameconv2d_113/kernel

%conv2d_113/kernel/Read/ReadVariableOpReadVariableOpconv2d_113/kernel*&
_output_shapes
:		*
dtype0
ж
'batch_normalization_114/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_114/moving_variance
Я
;batch_normalization_114/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_114/moving_variance*
_output_shapes
:*
dtype0
Ю
#batch_normalization_114/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_114/moving_mean
Ч
7batch_normalization_114/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_114/moving_mean*
_output_shapes
:*
dtype0
Р
batch_normalization_114/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_114/beta
Й
0batch_normalization_114/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_114/beta*
_output_shapes
:*
dtype0
Т
batch_normalization_114/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_114/gamma
Л
1batch_normalization_114/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_114/gamma*
_output_shapes
:*
dtype0
v
conv2d_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_112/bias
o
#conv2d_112/bias/Read/ReadVariableOpReadVariableOpconv2d_112/bias*
_output_shapes
:*
dtype0
Ж
conv2d_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_112/kernel

%conv2d_112/kernel/Read/ReadVariableOpReadVariableOpconv2d_112/kernel*&
_output_shapes
:*
dtype0
ж
'batch_normalization_113/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_113/moving_variance
Я
;batch_normalization_113/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_113/moving_variance*
_output_shapes
:*
dtype0
Ю
#batch_normalization_113/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_113/moving_mean
Ч
7batch_normalization_113/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_113/moving_mean*
_output_shapes
:*
dtype0
Р
batch_normalization_113/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_113/beta
Й
0batch_normalization_113/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_113/beta*
_output_shapes
:*
dtype0
Т
batch_normalization_113/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_113/gamma
Л
1batch_normalization_113/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_113/gamma*
_output_shapes
:*
dtype0
v
conv2d_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_111/bias
o
#conv2d_111/bias/Read/ReadVariableOpReadVariableOpconv2d_111/bias*
_output_shapes
:*
dtype0
Ж
conv2d_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_111/kernel

%conv2d_111/kernel/Read/ReadVariableOpReadVariableOpconv2d_111/kernel*&
_output_shapes
:*
dtype0
Ч
 serving_default_conv2d_111_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
Є
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_111_inputconv2d_111/kernelconv2d_111/biasbatch_normalization_113/gammabatch_normalization_113/beta#batch_normalization_113/moving_mean'batch_normalization_113/moving_varianceconv2d_112/kernelconv2d_112/biasbatch_normalization_114/gammabatch_normalization_114/beta#batch_normalization_114/moving_mean'batch_normalization_114/moving_varianceconv2d_113/kernelconv2d_113/biasbatch_normalization_115/gammabatch_normalization_115/beta#batch_normalization_115/moving_mean'batch_normalization_115/moving_varianceconv2d_114/kernelconv2d_114/biasbatch_normalization_116/gammabatch_normalization_116/beta#batch_normalization_116/moving_mean'batch_normalization_116/moving_variancedense_53/kerneldense_53/biasdense_54/kerneldense_54/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_150459

NoOpNoOp
╕б
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Єа
valueчаBуа B█а
Ш
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
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
╒
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance*
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
╚
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*
╒
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance*
О
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
╚
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op*
╒
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
_moving_mean
`moving_variance*
О
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
╚
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
╒
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance*
П
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses* 
Ф
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 
о
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Нkernel
	Оbias*
о
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
Хkernel
	Цbias*
▐
0
 1
)2
*3
+4
,5
96
:7
C8
D9
E10
F11
S12
T13
]14
^15
_16
`17
m18
n19
w20
x21
y22
z23
Н24
О25
Х26
Ц27*
Ю
0
 1
)2
*3
94
:5
C6
D7
S8
T9
]10
^11
m12
n13
w14
x15
Н16
О17
Х18
Ц19*
* 
╡
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_3* 
:
аtrace_0
бtrace_1
вtrace_2
гtrace_3* 
* 
с
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_ratemж mз)mи*mй9mк:mлCmмDmнSmоTmп]m░^m▒mm▓nm│wm┤xm╡	Нm╢	Оm╖	Хm╕	Цm╣v║ v╗)v╝*v╜9v╛:v┐Cv└Dv┴Sv┬Tv├]v─^v┼mv╞nv╟wv╚xv╔	Нv╩	Оv╦	Хv╠	Цv═*

йserving_default* 

0
 1*

0
 1*
* 
Ш
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

пtrace_0* 

░trace_0* 
a[
VARIABLE_VALUEconv2d_111/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_111/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
)0
*1
+2
,3*

)0
*1*
* 
Ш
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

╢trace_0
╖trace_1* 

╕trace_0
╣trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_113/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_113/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_113/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE'batch_normalization_113/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

┐trace_0* 

└trace_0* 

90
:1*

90
:1*
* 
Ш
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

╞trace_0* 

╟trace_0* 
a[
VARIABLE_VALUEconv2d_112/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_112/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
C0
D1
E2
F3*

C0
D1*
* 
Ш
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

═trace_0
╬trace_1* 

╧trace_0
╨trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_114/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_114/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_114/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE'batch_normalization_114/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

╓trace_0* 

╫trace_0* 

S0
T1*

S0
T1*
* 
Ш
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

▌trace_0* 

▐trace_0* 
a[
VARIABLE_VALUEconv2d_113/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_113/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
]0
^1
_2
`3*

]0
^1*
* 
Ш
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

фtrace_0
хtrace_1* 

цtrace_0
чtrace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_115/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_115/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_115/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE'batch_normalization_115/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

эtrace_0* 

юtrace_0* 

m0
n1*

m0
n1*
* 
Ш
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

Їtrace_0* 

їtrace_0* 
a[
VARIABLE_VALUEconv2d_114/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_114/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
w0
x1
y2
z3*

w0
x1*
* 
Ш
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

√trace_0
№trace_1* 

¤trace_0
■trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_116/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_116/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_116/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE'batch_normalization_116/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ш
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Дtrace_0* 

Еtrace_0* 
* 
* 
* 
Ь
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 

Н0
О1*

Н0
О1*
* 
Ю
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*

Тtrace_0* 

Уtrace_0* 
_Y
VARIABLE_VALUEdense_53/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_53/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

Х0
Ц1*

Х0
Ц1*
* 
Ю
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
_Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_54/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
<
+0
,1
E2
F3
_4
`5
y6
z7*
r
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
14*

Ы0
Ь1*
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
+0
,1*
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
E0
F1*
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
_0
`1*
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
y0
z1*
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
Э	variables
Ю	keras_api

Яtotal

аcount*
M
б	variables
в	keras_api

гtotal

дcount
е
_fn_kwargs*

Я0
а1*

Э	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

г0
д1*

б	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Д~
VARIABLE_VALUEAdam/conv2d_111/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_111/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_113/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_113/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_112/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_112/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_114/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_114/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_113/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_113/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_115/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_115/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_114/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_114/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_116/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_116/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_53/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_53/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_111/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_111/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_113/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_113/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_112/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_112/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_114/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_114/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_113/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_113/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_115/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_115/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEAdam/conv2d_114/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d_114/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Adam/batch_normalization_116/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Adam/batch_normalization_116/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_53/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_53/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ё
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_111/kernel/Read/ReadVariableOp#conv2d_111/bias/Read/ReadVariableOp1batch_normalization_113/gamma/Read/ReadVariableOp0batch_normalization_113/beta/Read/ReadVariableOp7batch_normalization_113/moving_mean/Read/ReadVariableOp;batch_normalization_113/moving_variance/Read/ReadVariableOp%conv2d_112/kernel/Read/ReadVariableOp#conv2d_112/bias/Read/ReadVariableOp1batch_normalization_114/gamma/Read/ReadVariableOp0batch_normalization_114/beta/Read/ReadVariableOp7batch_normalization_114/moving_mean/Read/ReadVariableOp;batch_normalization_114/moving_variance/Read/ReadVariableOp%conv2d_113/kernel/Read/ReadVariableOp#conv2d_113/bias/Read/ReadVariableOp1batch_normalization_115/gamma/Read/ReadVariableOp0batch_normalization_115/beta/Read/ReadVariableOp7batch_normalization_115/moving_mean/Read/ReadVariableOp;batch_normalization_115/moving_variance/Read/ReadVariableOp%conv2d_114/kernel/Read/ReadVariableOp#conv2d_114/bias/Read/ReadVariableOp1batch_normalization_116/gamma/Read/ReadVariableOp0batch_normalization_116/beta/Read/ReadVariableOp7batch_normalization_116/moving_mean/Read/ReadVariableOp;batch_normalization_116/moving_variance/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_111/kernel/m/Read/ReadVariableOp*Adam/conv2d_111/bias/m/Read/ReadVariableOp8Adam/batch_normalization_113/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_113/beta/m/Read/ReadVariableOp,Adam/conv2d_112/kernel/m/Read/ReadVariableOp*Adam/conv2d_112/bias/m/Read/ReadVariableOp8Adam/batch_normalization_114/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_114/beta/m/Read/ReadVariableOp,Adam/conv2d_113/kernel/m/Read/ReadVariableOp*Adam/conv2d_113/bias/m/Read/ReadVariableOp8Adam/batch_normalization_115/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_115/beta/m/Read/ReadVariableOp,Adam/conv2d_114/kernel/m/Read/ReadVariableOp*Adam/conv2d_114/bias/m/Read/ReadVariableOp8Adam/batch_normalization_116/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_116/beta/m/Read/ReadVariableOp*Adam/dense_53/kernel/m/Read/ReadVariableOp(Adam/dense_53/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp,Adam/conv2d_111/kernel/v/Read/ReadVariableOp*Adam/conv2d_111/bias/v/Read/ReadVariableOp8Adam/batch_normalization_113/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_113/beta/v/Read/ReadVariableOp,Adam/conv2d_112/kernel/v/Read/ReadVariableOp*Adam/conv2d_112/bias/v/Read/ReadVariableOp8Adam/batch_normalization_114/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_114/beta/v/Read/ReadVariableOp,Adam/conv2d_113/kernel/v/Read/ReadVariableOp*Adam/conv2d_113/bias/v/Read/ReadVariableOp8Adam/batch_normalization_115/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_115/beta/v/Read/ReadVariableOp,Adam/conv2d_114/kernel/v/Read/ReadVariableOp*Adam/conv2d_114/bias/v/Read/ReadVariableOp8Adam/batch_normalization_116/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_116/beta/v/Read/ReadVariableOp*Adam/dense_53/kernel/v/Read/ReadVariableOp(Adam/dense_53/bias/v/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOpConst*Z
TinS
Q2O	*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_151470
ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_111/kernelconv2d_111/biasbatch_normalization_113/gammabatch_normalization_113/beta#batch_normalization_113/moving_mean'batch_normalization_113/moving_varianceconv2d_112/kernelconv2d_112/biasbatch_normalization_114/gammabatch_normalization_114/beta#batch_normalization_114/moving_mean'batch_normalization_114/moving_varianceconv2d_113/kernelconv2d_113/biasbatch_normalization_115/gammabatch_normalization_115/beta#batch_normalization_115/moving_mean'batch_normalization_115/moving_varianceconv2d_114/kernelconv2d_114/biasbatch_normalization_116/gammabatch_normalization_116/beta#batch_normalization_116/moving_mean'batch_normalization_116/moving_variancedense_53/kerneldense_53/biasdense_54/kerneldense_54/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_111/kernel/mAdam/conv2d_111/bias/m$Adam/batch_normalization_113/gamma/m#Adam/batch_normalization_113/beta/mAdam/conv2d_112/kernel/mAdam/conv2d_112/bias/m$Adam/batch_normalization_114/gamma/m#Adam/batch_normalization_114/beta/mAdam/conv2d_113/kernel/mAdam/conv2d_113/bias/m$Adam/batch_normalization_115/gamma/m#Adam/batch_normalization_115/beta/mAdam/conv2d_114/kernel/mAdam/conv2d_114/bias/m$Adam/batch_normalization_116/gamma/m#Adam/batch_normalization_116/beta/mAdam/dense_53/kernel/mAdam/dense_53/bias/mAdam/dense_54/kernel/mAdam/dense_54/bias/mAdam/conv2d_111/kernel/vAdam/conv2d_111/bias/v$Adam/batch_normalization_113/gamma/v#Adam/batch_normalization_113/beta/vAdam/conv2d_112/kernel/vAdam/conv2d_112/bias/v$Adam/batch_normalization_114/gamma/v#Adam/batch_normalization_114/beta/vAdam/conv2d_113/kernel/vAdam/conv2d_113/bias/v$Adam/batch_normalization_115/gamma/v#Adam/batch_normalization_115/beta/vAdam/conv2d_114/kernel/vAdam/conv2d_114/bias/v$Adam/batch_normalization_116/gamma/v#Adam/batch_normalization_116/beta/vAdam/dense_53/kernel/vAdam/dense_53/bias/vAdam/dense_54/kernel/vAdam/dense_54/bias/v*Y
TinR
P2N*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_151711Н╢
И
┬
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149524

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ш	
╙
8__inference_batch_normalization_116_layer_call_fn_151106

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149645Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149493

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
а

ї
D__inference_dense_54_layer_call_and_return_conditional_losses_151216

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ж
 
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150861

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
▌N
╝
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150390
conv2d_111_input+
conv2d_111_150318:
conv2d_111_150320:,
batch_normalization_113_150323:,
batch_normalization_113_150325:,
batch_normalization_113_150327:,
batch_normalization_113_150329:+
conv2d_112_150333:
conv2d_112_150335:,
batch_normalization_114_150338:,
batch_normalization_114_150340:,
batch_normalization_114_150342:,
batch_normalization_114_150344:+
conv2d_113_150348:		
conv2d_113_150350:,
batch_normalization_115_150353:,
batch_normalization_115_150355:,
batch_normalization_115_150357:,
batch_normalization_115_150359:+
conv2d_114_150363: 
conv2d_114_150365: ,
batch_normalization_116_150368: ,
batch_normalization_116_150370: ,
batch_normalization_116_150372: ,
batch_normalization_116_150374: "
dense_53_150379:	А@
dense_53_150381:@!
dense_54_150384:@
dense_54_150386:
identityИв/batch_normalization_113/StatefulPartitionedCallв/batch_normalization_114/StatefulPartitionedCallв/batch_normalization_115/StatefulPartitionedCallв/batch_normalization_116/StatefulPartitionedCallв"conv2d_111/StatefulPartitionedCallв"conv2d_112/StatefulPartitionedCallв"conv2d_113/StatefulPartitionedCallв"conv2d_114/StatefulPartitionedCallв dense_53/StatefulPartitionedCallв dense_54/StatefulPartitionedCallП
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCallconv2d_111_inputconv2d_111_150318conv2d_111_150320*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717а
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall+conv2d_111/StatefulPartitionedCall:output:0batch_normalization_113_150323batch_normalization_113_150325batch_normalization_113_150327batch_normalization_113_150329*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149448Е
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468ж
"conv2d_112/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_112_150333conv2d_112_150335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744Ю
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall+conv2d_112/StatefulPartitionedCall:output:0batch_normalization_114_150338batch_normalization_114_150340batch_normalization_114_150342batch_normalization_114_150344*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149524Е
 max_pooling2d_55/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544ж
"conv2d_113/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_113_150348conv2d_113_150350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771Ю
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall+conv2d_113/StatefulPartitionedCall:output:0batch_normalization_115_150353batch_normalization_115_150355batch_normalization_115_150357batch_normalization_115_150359*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149600Н
$average_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620к
"conv2d_114/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_43/PartitionedCall:output:0conv2d_114_150363conv2d_114_150365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798Ю
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall+conv2d_114/StatefulPartitionedCall:output:0batch_normalization_116_150368batch_normalization_116_150370batch_normalization_116_150372batch_normalization_116_150374*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149676Н
$average_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696ч
flatten_23/PartitionedCallPartitionedCall-average_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820Р
 dense_53/StatefulPartitionedCallStatefulPartitionedCall#flatten_23/PartitionedCall:output:0dense_53_150379dense_53_150381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_53_layer_call_and_return_conditional_losses_149833Ц
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_150384dense_54_150386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_149850x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall#^conv2d_112/StatefulPartitionedCall#^conv2d_113/StatefulPartitionedCall#^conv2d_114/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall2H
"conv2d_112/StatefulPartitionedCall"conv2d_112/StatefulPartitionedCall2H
"conv2d_113/StatefulPartitionedCall"conv2d_113/StatefulPartitionedCall2H
"conv2d_114/StatefulPartitionedCall"conv2d_114/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input
Ж
 
F__inference_conv2d_113_layer_call_and_return_conditional_losses_151001

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149569

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┼
Q
5__inference_average_pooling2d_44_layer_call_fn_151160

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╜
M
1__inference_max_pooling2d_55_layer_call_fn_150976

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц	
╙
8__inference_batch_normalization_113_layer_call_fn_150843

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149448Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_150981

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_151165

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш	
╙
8__inference_batch_normalization_113_layer_call_fn_150830

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149417Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150879

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149448

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┼
Ц
)__inference_dense_54_layer_call_fn_151205

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_149850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╚
b
F__inference_flatten_23_layer_call_and_return_conditional_losses_151176

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Т
 
F__inference_conv2d_111_layer_call_and_return_conditional_losses_150817

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:           k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╪
Ў
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150581

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:		

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17: 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23:	А@

unknown_24:@

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╟
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
а

ї
D__inference_dense_54_layer_call_and_return_conditional_losses_149850

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149600

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150971

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╚
b
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149417

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
р
Ў
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150520

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:		

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17: 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23:	А@

unknown_24:@

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╧
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_149857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_151073

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Е╛
ў#
!__inference__wrapped_model_149395
conv2d_111_input\
Bmy_modelv3_31_bn_augdata_conv2d_111_conv2d_readvariableop_resource:Q
Cmy_modelv3_31_bn_augdata_conv2d_111_biasadd_readvariableop_resource:V
Hmy_modelv3_31_bn_augdata_batch_normalization_113_readvariableop_resource:X
Jmy_modelv3_31_bn_augdata_batch_normalization_113_readvariableop_1_resource:g
Ymy_modelv3_31_bn_augdata_batch_normalization_113_fusedbatchnormv3_readvariableop_resource:i
[my_modelv3_31_bn_augdata_batch_normalization_113_fusedbatchnormv3_readvariableop_1_resource:\
Bmy_modelv3_31_bn_augdata_conv2d_112_conv2d_readvariableop_resource:Q
Cmy_modelv3_31_bn_augdata_conv2d_112_biasadd_readvariableop_resource:V
Hmy_modelv3_31_bn_augdata_batch_normalization_114_readvariableop_resource:X
Jmy_modelv3_31_bn_augdata_batch_normalization_114_readvariableop_1_resource:g
Ymy_modelv3_31_bn_augdata_batch_normalization_114_fusedbatchnormv3_readvariableop_resource:i
[my_modelv3_31_bn_augdata_batch_normalization_114_fusedbatchnormv3_readvariableop_1_resource:\
Bmy_modelv3_31_bn_augdata_conv2d_113_conv2d_readvariableop_resource:		Q
Cmy_modelv3_31_bn_augdata_conv2d_113_biasadd_readvariableop_resource:V
Hmy_modelv3_31_bn_augdata_batch_normalization_115_readvariableop_resource:X
Jmy_modelv3_31_bn_augdata_batch_normalization_115_readvariableop_1_resource:g
Ymy_modelv3_31_bn_augdata_batch_normalization_115_fusedbatchnormv3_readvariableop_resource:i
[my_modelv3_31_bn_augdata_batch_normalization_115_fusedbatchnormv3_readvariableop_1_resource:\
Bmy_modelv3_31_bn_augdata_conv2d_114_conv2d_readvariableop_resource: Q
Cmy_modelv3_31_bn_augdata_conv2d_114_biasadd_readvariableop_resource: V
Hmy_modelv3_31_bn_augdata_batch_normalization_116_readvariableop_resource: X
Jmy_modelv3_31_bn_augdata_batch_normalization_116_readvariableop_1_resource: g
Ymy_modelv3_31_bn_augdata_batch_normalization_116_fusedbatchnormv3_readvariableop_resource: i
[my_modelv3_31_bn_augdata_batch_normalization_116_fusedbatchnormv3_readvariableop_1_resource: S
@my_modelv3_31_bn_augdata_dense_53_matmul_readvariableop_resource:	А@O
Amy_modelv3_31_bn_augdata_dense_53_biasadd_readvariableop_resource:@R
@my_modelv3_31_bn_augdata_dense_54_matmul_readvariableop_resource:@O
Amy_modelv3_31_bn_augdata_dense_54_biasadd_readvariableop_resource:
identityИвPmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOpвRmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1в?my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOpвAmy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_1вPmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOpвRmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1в?my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOpвAmy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_1вPmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOpвRmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1в?my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOpвAmy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_1вPmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOpвRmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1в?my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOpвAmy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_1в:my_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOpв9my_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOpв:my_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOpв9my_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOpв:my_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOpв9my_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOpв:my_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOpв9my_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOpв8my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOpв7my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOpв8my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOpв7my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOp─
9my_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOpReadVariableOpBmy_modelv3_31_bn_augdata_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ю
*my_modelV3_31_BN_AugData/conv2d_111/Conv2DConv2Dconv2d_111_inputAmy_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
║
:my_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOpReadVariableOpCmy_modelv3_31_bn_augdata_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ы
+my_modelV3_31_BN_AugData/conv2d_111/BiasAddBiasAdd3my_modelV3_31_BN_AugData/conv2d_111/Conv2D:output:0Bmy_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           в
(my_modelV3_31_BN_AugData/conv2d_111/ReluRelu4my_modelV3_31_BN_AugData/conv2d_111/BiasAdd:output:0*
T0*1
_output_shapes
:           ─
?my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOpReadVariableOpHmy_modelv3_31_bn_augdata_batch_normalization_113_readvariableop_resource*
_output_shapes
:*
dtype0╚
Amy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_1ReadVariableOpJmy_modelv3_31_bn_augdata_batch_normalization_113_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
Pmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOpReadVariableOpYmy_modelv3_31_bn_augdata_batch_normalization_113_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ъ
Rmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[my_modelv3_31_bn_augdata_batch_normalization_113_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0▌
Amy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3FusedBatchNormV36my_modelV3_31_BN_AugData/conv2d_111/Relu:activations:0Gmy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp:value:0Imy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_1:value:0Xmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp:value:0Zmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:           :::::*
epsilon%oГ:*
is_training( Ё
1my_modelV3_31_BN_AugData/max_pooling2d_54/MaxPoolMaxPoolEmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
─
9my_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOpReadVariableOpBmy_modelv3_31_bn_augdata_conv2d_112_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ц
*my_modelV3_31_BN_AugData/conv2d_112/Conv2DConv2D:my_modelV3_31_BN_AugData/max_pooling2d_54/MaxPool:output:0Amy_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
║
:my_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOpReadVariableOpCmy_modelv3_31_bn_augdata_conv2d_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0щ
+my_modelV3_31_BN_AugData/conv2d_112/BiasAddBiasAdd3my_modelV3_31_BN_AugData/conv2d_112/Conv2D:output:0Bmy_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||а
(my_modelV3_31_BN_AugData/conv2d_112/ReluRelu4my_modelV3_31_BN_AugData/conv2d_112/BiasAdd:output:0*
T0*/
_output_shapes
:         ||─
?my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOpReadVariableOpHmy_modelv3_31_bn_augdata_batch_normalization_114_readvariableop_resource*
_output_shapes
:*
dtype0╚
Amy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_1ReadVariableOpJmy_modelv3_31_bn_augdata_batch_normalization_114_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
Pmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOpReadVariableOpYmy_modelv3_31_bn_augdata_batch_normalization_114_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ъ
Rmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[my_modelv3_31_bn_augdata_batch_normalization_114_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0█
Amy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3FusedBatchNormV36my_modelV3_31_BN_AugData/conv2d_112/Relu:activations:0Gmy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp:value:0Imy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_1:value:0Xmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp:value:0Zmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ||:::::*
epsilon%oГ:*
is_training( Ё
1my_modelV3_31_BN_AugData/max_pooling2d_55/MaxPoolMaxPoolEmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3:y:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
─
9my_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOpReadVariableOpBmy_modelv3_31_bn_augdata_conv2d_113_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0Ц
*my_modelV3_31_BN_AugData/conv2d_113/Conv2DConv2D:my_modelV3_31_BN_AugData/max_pooling2d_55/MaxPool:output:0Amy_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
║
:my_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOpReadVariableOpCmy_modelv3_31_bn_augdata_conv2d_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0щ
+my_modelV3_31_BN_AugData/conv2d_113/BiasAddBiasAdd3my_modelV3_31_BN_AugData/conv2d_113/Conv2D:output:0Bmy_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         а
(my_modelV3_31_BN_AugData/conv2d_113/ReluRelu4my_modelV3_31_BN_AugData/conv2d_113/BiasAdd:output:0*
T0*/
_output_shapes
:         ─
?my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOpReadVariableOpHmy_modelv3_31_bn_augdata_batch_normalization_115_readvariableop_resource*
_output_shapes
:*
dtype0╚
Amy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_1ReadVariableOpJmy_modelv3_31_bn_augdata_batch_normalization_115_readvariableop_1_resource*
_output_shapes
:*
dtype0ц
Pmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOpReadVariableOpYmy_modelv3_31_bn_augdata_batch_normalization_115_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ъ
Rmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[my_modelv3_31_bn_augdata_batch_normalization_115_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0█
Amy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3FusedBatchNormV36my_modelV3_31_BN_AugData/conv2d_113/Relu:activations:0Gmy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp:value:0Imy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_1:value:0Xmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp:value:0Zmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( ¤
5my_modelV3_31_BN_AugData/average_pooling2d_43/AvgPoolAvgPoolEmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
─
9my_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOpReadVariableOpBmy_modelv3_31_bn_augdata_conv2d_114_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
*my_modelV3_31_BN_AugData/conv2d_114/Conv2DConv2D>my_modelV3_31_BN_AugData/average_pooling2d_43/AvgPool:output:0Amy_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
║
:my_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOpReadVariableOpCmy_modelv3_31_bn_augdata_conv2d_114_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0щ
+my_modelV3_31_BN_AugData/conv2d_114/BiasAddBiasAdd3my_modelV3_31_BN_AugData/conv2d_114/Conv2D:output:0Bmy_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          а
(my_modelV3_31_BN_AugData/conv2d_114/ReluRelu4my_modelV3_31_BN_AugData/conv2d_114/BiasAdd:output:0*
T0*/
_output_shapes
:          ─
?my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOpReadVariableOpHmy_modelv3_31_bn_augdata_batch_normalization_116_readvariableop_resource*
_output_shapes
: *
dtype0╚
Amy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_1ReadVariableOpJmy_modelv3_31_bn_augdata_batch_normalization_116_readvariableop_1_resource*
_output_shapes
: *
dtype0ц
Pmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOpReadVariableOpYmy_modelv3_31_bn_augdata_batch_normalization_116_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ъ
Rmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp[my_modelv3_31_bn_augdata_batch_normalization_116_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0█
Amy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3FusedBatchNormV36my_modelV3_31_BN_AugData/conv2d_114/Relu:activations:0Gmy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp:value:0Imy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_1:value:0Xmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp:value:0Zmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( ¤
5my_modelV3_31_BN_AugData/average_pooling2d_44/AvgPoolAvgPoolEmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
z
)my_modelV3_31_BN_AugData/flatten_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   ▌
+my_modelV3_31_BN_AugData/flatten_23/ReshapeReshape>my_modelV3_31_BN_AugData/average_pooling2d_44/AvgPool:output:02my_modelV3_31_BN_AugData/flatten_23/Const:output:0*
T0*(
_output_shapes
:         А╣
7my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOpReadVariableOp@my_modelv3_31_bn_augdata_dense_53_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0█
(my_modelV3_31_BN_AugData/dense_53/MatMulMatMul4my_modelV3_31_BN_AugData/flatten_23/Reshape:output:0?my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @╢
8my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOpReadVariableOpAmy_modelv3_31_bn_augdata_dense_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0▄
)my_modelV3_31_BN_AugData/dense_53/BiasAddBiasAdd2my_modelV3_31_BN_AugData/dense_53/MatMul:product:0@my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ф
&my_modelV3_31_BN_AugData/dense_53/ReluRelu2my_modelV3_31_BN_AugData/dense_53/BiasAdd:output:0*
T0*'
_output_shapes
:         @╕
7my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOpReadVariableOp@my_modelv3_31_bn_augdata_dense_54_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0█
(my_modelV3_31_BN_AugData/dense_54/MatMulMatMul4my_modelV3_31_BN_AugData/dense_53/Relu:activations:0?my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
8my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOpReadVariableOpAmy_modelv3_31_bn_augdata_dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▄
)my_modelV3_31_BN_AugData/dense_54/BiasAddBiasAdd2my_modelV3_31_BN_AugData/dense_54/MatMul:product:0@my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ъ
)my_modelV3_31_BN_AugData/dense_54/SoftmaxSoftmax2my_modelV3_31_BN_AugData/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:         В
IdentityIdentity3my_modelV3_31_BN_AugData/dense_54/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOpQ^my_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOpS^my_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1@^my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOpB^my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_1Q^my_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOpS^my_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1@^my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOpB^my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_1Q^my_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOpS^my_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1@^my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOpB^my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_1Q^my_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOpS^my_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1@^my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOpB^my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_1;^my_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOp:^my_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOp;^my_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOp:^my_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOp;^my_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOp:^my_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOp;^my_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOp:^my_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOp9^my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOp8^my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOp9^my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOp8^my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2д
Pmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOpPmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp2и
Rmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1Rmy_modelV3_31_BN_AugData/batch_normalization_113/FusedBatchNormV3/ReadVariableOp_12В
?my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp?my_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp2Ж
Amy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_1Amy_modelV3_31_BN_AugData/batch_normalization_113/ReadVariableOp_12д
Pmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOpPmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp2и
Rmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1Rmy_modelV3_31_BN_AugData/batch_normalization_114/FusedBatchNormV3/ReadVariableOp_12В
?my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp?my_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp2Ж
Amy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_1Amy_modelV3_31_BN_AugData/batch_normalization_114/ReadVariableOp_12д
Pmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOpPmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp2и
Rmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1Rmy_modelV3_31_BN_AugData/batch_normalization_115/FusedBatchNormV3/ReadVariableOp_12В
?my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp?my_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp2Ж
Amy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_1Amy_modelV3_31_BN_AugData/batch_normalization_115/ReadVariableOp_12д
Pmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOpPmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp2и
Rmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1Rmy_modelV3_31_BN_AugData/batch_normalization_116/FusedBatchNormV3/ReadVariableOp_12В
?my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp?my_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp2Ж
Amy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_1Amy_modelV3_31_BN_AugData/batch_normalization_116/ReadVariableOp_12x
:my_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOp:my_modelV3_31_BN_AugData/conv2d_111/BiasAdd/ReadVariableOp2v
9my_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOp9my_modelV3_31_BN_AugData/conv2d_111/Conv2D/ReadVariableOp2x
:my_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOp:my_modelV3_31_BN_AugData/conv2d_112/BiasAdd/ReadVariableOp2v
9my_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOp9my_modelV3_31_BN_AugData/conv2d_112/Conv2D/ReadVariableOp2x
:my_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOp:my_modelV3_31_BN_AugData/conv2d_113/BiasAdd/ReadVariableOp2v
9my_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOp9my_modelV3_31_BN_AugData/conv2d_113/Conv2D/ReadVariableOp2x
:my_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOp:my_modelV3_31_BN_AugData/conv2d_114/BiasAdd/ReadVariableOp2v
9my_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOp9my_modelV3_31_BN_AugData/conv2d_114/Conv2D/ReadVariableOp2t
8my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOp8my_modelV3_31_BN_AugData/dense_53/BiasAdd/ReadVariableOp2r
7my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOp7my_modelV3_31_BN_AugData/dense_53/MatMul/ReadVariableOp2t
8my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOp8my_modelV3_31_BN_AugData/dense_54/BiasAdd/ReadVariableOp2r
7my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOp7my_modelV3_31_BN_AugData/dense_54/MatMul/ReadVariableOp:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input
╚
Ч
)__inference_dense_53_layer_call_fn_151185

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_53_layer_call_and_return_conditional_losses_149833o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐N
▓
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150120

inputs+
conv2d_111_150048:
conv2d_111_150050:,
batch_normalization_113_150053:,
batch_normalization_113_150055:,
batch_normalization_113_150057:,
batch_normalization_113_150059:+
conv2d_112_150063:
conv2d_112_150065:,
batch_normalization_114_150068:,
batch_normalization_114_150070:,
batch_normalization_114_150072:,
batch_normalization_114_150074:+
conv2d_113_150078:		
conv2d_113_150080:,
batch_normalization_115_150083:,
batch_normalization_115_150085:,
batch_normalization_115_150087:,
batch_normalization_115_150089:+
conv2d_114_150093: 
conv2d_114_150095: ,
batch_normalization_116_150098: ,
batch_normalization_116_150100: ,
batch_normalization_116_150102: ,
batch_normalization_116_150104: "
dense_53_150109:	А@
dense_53_150111:@!
dense_54_150114:@
dense_54_150116:
identityИв/batch_normalization_113/StatefulPartitionedCallв/batch_normalization_114/StatefulPartitionedCallв/batch_normalization_115/StatefulPartitionedCallв/batch_normalization_116/StatefulPartitionedCallв"conv2d_111/StatefulPartitionedCallв"conv2d_112/StatefulPartitionedCallв"conv2d_113/StatefulPartitionedCallв"conv2d_114/StatefulPartitionedCallв dense_53/StatefulPartitionedCallв dense_54/StatefulPartitionedCallЕ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_111_150048conv2d_111_150050*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717а
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall+conv2d_111/StatefulPartitionedCall:output:0batch_normalization_113_150053batch_normalization_113_150055batch_normalization_113_150057batch_normalization_113_150059*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149448Е
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468ж
"conv2d_112/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_112_150063conv2d_112_150065*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744Ю
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall+conv2d_112/StatefulPartitionedCall:output:0batch_normalization_114_150068batch_normalization_114_150070batch_normalization_114_150072batch_normalization_114_150074*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149524Е
 max_pooling2d_55/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544ж
"conv2d_113/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_113_150078conv2d_113_150080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771Ю
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall+conv2d_113/StatefulPartitionedCall:output:0batch_normalization_115_150083batch_normalization_115_150085batch_normalization_115_150087batch_normalization_115_150089*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149600Н
$average_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620к
"conv2d_114/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_43/PartitionedCall:output:0conv2d_114_150093conv2d_114_150095*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798Ю
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall+conv2d_114/StatefulPartitionedCall:output:0batch_normalization_116_150098batch_normalization_116_150100batch_normalization_116_150102batch_normalization_116_150104*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149676Н
$average_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696ч
flatten_23/PartitionedCallPartitionedCall-average_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820Р
 dense_53/StatefulPartitionedCallStatefulPartitionedCall#flatten_23/PartitionedCall:output:0dense_53_150109dense_53_150111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_53_layer_call_and_return_conditional_losses_149833Ц
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_150114dense_54_150116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_149850x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall#^conv2d_112/StatefulPartitionedCall#^conv2d_113/StatefulPartitionedCall#^conv2d_114/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall2H
"conv2d_112/StatefulPartitionedCall"conv2d_112/StatefulPartitionedCall2H
"conv2d_113/StatefulPartitionedCall"conv2d_113/StatefulPartitionedCall2H
"conv2d_114/StatefulPartitionedCall"conv2d_114/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696

inputs
identityл
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Я

Ў
D__inference_dense_53_layer_call_and_return_conditional_losses_151196

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151045

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ж
 
F__inference_conv2d_114_layer_call_and_return_conditional_losses_151093

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
Ж
 
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
ё
а
+__inference_conv2d_112_layer_call_fn_150898

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ||`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ц	
╙
8__inference_batch_normalization_114_layer_call_fn_150935

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149524Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_150889

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
∙
а
+__inference_conv2d_111_layer_call_fn_150806

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Т
 
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:           k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ё
а
+__inference_conv2d_113_layer_call_fn_150990

inputs!
unknown:		
	unknown_0:
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
Ў
А
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150240
conv2d_111_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:		

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17: 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23:	А@

unknown_24:@

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall╤
StatefulPartitionedCallStatefulPartitionedCallconv2d_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input
Ф
h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150953

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
к╕
С3
"__inference__traced_restore_151711
file_prefix<
"assignvariableop_conv2d_111_kernel:0
"assignvariableop_1_conv2d_111_bias:>
0assignvariableop_2_batch_normalization_113_gamma:=
/assignvariableop_3_batch_normalization_113_beta:D
6assignvariableop_4_batch_normalization_113_moving_mean:H
:assignvariableop_5_batch_normalization_113_moving_variance:>
$assignvariableop_6_conv2d_112_kernel:0
"assignvariableop_7_conv2d_112_bias:>
0assignvariableop_8_batch_normalization_114_gamma:=
/assignvariableop_9_batch_normalization_114_beta:E
7assignvariableop_10_batch_normalization_114_moving_mean:I
;assignvariableop_11_batch_normalization_114_moving_variance:?
%assignvariableop_12_conv2d_113_kernel:		1
#assignvariableop_13_conv2d_113_bias:?
1assignvariableop_14_batch_normalization_115_gamma:>
0assignvariableop_15_batch_normalization_115_beta:E
7assignvariableop_16_batch_normalization_115_moving_mean:I
;assignvariableop_17_batch_normalization_115_moving_variance:?
%assignvariableop_18_conv2d_114_kernel: 1
#assignvariableop_19_conv2d_114_bias: ?
1assignvariableop_20_batch_normalization_116_gamma: >
0assignvariableop_21_batch_normalization_116_beta: E
7assignvariableop_22_batch_normalization_116_moving_mean: I
;assignvariableop_23_batch_normalization_116_moving_variance: 6
#assignvariableop_24_dense_53_kernel:	А@/
!assignvariableop_25_dense_53_bias:@5
#assignvariableop_26_dense_54_kernel:@/
!assignvariableop_27_dense_54_bias:'
assignvariableop_28_adam_iter:	 )
assignvariableop_29_adam_beta_1: )
assignvariableop_30_adam_beta_2: (
assignvariableop_31_adam_decay: 0
&assignvariableop_32_adam_learning_rate: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: #
assignvariableop_35_total: #
assignvariableop_36_count: F
,assignvariableop_37_adam_conv2d_111_kernel_m:8
*assignvariableop_38_adam_conv2d_111_bias_m:F
8assignvariableop_39_adam_batch_normalization_113_gamma_m:E
7assignvariableop_40_adam_batch_normalization_113_beta_m:F
,assignvariableop_41_adam_conv2d_112_kernel_m:8
*assignvariableop_42_adam_conv2d_112_bias_m:F
8assignvariableop_43_adam_batch_normalization_114_gamma_m:E
7assignvariableop_44_adam_batch_normalization_114_beta_m:F
,assignvariableop_45_adam_conv2d_113_kernel_m:		8
*assignvariableop_46_adam_conv2d_113_bias_m:F
8assignvariableop_47_adam_batch_normalization_115_gamma_m:E
7assignvariableop_48_adam_batch_normalization_115_beta_m:F
,assignvariableop_49_adam_conv2d_114_kernel_m: 8
*assignvariableop_50_adam_conv2d_114_bias_m: F
8assignvariableop_51_adam_batch_normalization_116_gamma_m: E
7assignvariableop_52_adam_batch_normalization_116_beta_m: =
*assignvariableop_53_adam_dense_53_kernel_m:	А@6
(assignvariableop_54_adam_dense_53_bias_m:@<
*assignvariableop_55_adam_dense_54_kernel_m:@6
(assignvariableop_56_adam_dense_54_bias_m:F
,assignvariableop_57_adam_conv2d_111_kernel_v:8
*assignvariableop_58_adam_conv2d_111_bias_v:F
8assignvariableop_59_adam_batch_normalization_113_gamma_v:E
7assignvariableop_60_adam_batch_normalization_113_beta_v:F
,assignvariableop_61_adam_conv2d_112_kernel_v:8
*assignvariableop_62_adam_conv2d_112_bias_v:F
8assignvariableop_63_adam_batch_normalization_114_gamma_v:E
7assignvariableop_64_adam_batch_normalization_114_beta_v:F
,assignvariableop_65_adam_conv2d_113_kernel_v:		8
*assignvariableop_66_adam_conv2d_113_bias_v:F
8assignvariableop_67_adam_batch_normalization_115_gamma_v:E
7assignvariableop_68_adam_batch_normalization_115_beta_v:F
,assignvariableop_69_adam_conv2d_114_kernel_v: 8
*assignvariableop_70_adam_conv2d_114_bias_v: F
8assignvariableop_71_adam_batch_normalization_116_gamma_v: E
7assignvariableop_72_adam_batch_normalization_116_beta_v: =
*assignvariableop_73_adam_dense_53_kernel_v:	А@6
(assignvariableop_74_adam_dense_53_bias_v:@<
*assignvariableop_75_adam_dense_54_kernel_v:@6
(assignvariableop_76_adam_dense_54_bias_v:
identity_78ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_8вAssignVariableOp_9·*
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*а*
valueЦ*BУ*NB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*▒
valueзBдNB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B з
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*\
dtypesR
P2N	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_111_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_111_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_113_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_113_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_113_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_113_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_112_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_112_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_114_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_114_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_114_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_114_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_113_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_113_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_115_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_115_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_115_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_115_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_114_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_114_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_116_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_116_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_116_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_116_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_53_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_53_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_54_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_54_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_111_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_111_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_39AssignVariableOp8assignvariableop_39_adam_batch_normalization_113_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_batch_normalization_113_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_112_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_112_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_43AssignVariableOp8assignvariableop_43_adam_batch_normalization_114_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adam_batch_normalization_114_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_conv2d_113_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv2d_113_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_47AssignVariableOp8assignvariableop_47_adam_batch_normalization_115_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_48AssignVariableOp7assignvariableop_48_adam_batch_normalization_115_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_conv2d_114_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv2d_114_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_51AssignVariableOp8assignvariableop_51_adam_batch_normalization_116_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_52AssignVariableOp7assignvariableop_52_adam_batch_normalization_116_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_53_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_53_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_54_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_54_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_conv2d_111_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_111_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_59AssignVariableOp8assignvariableop_59_adam_batch_normalization_113_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_batch_normalization_113_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_conv2d_112_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_112_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_63AssignVariableOp8assignvariableop_63_adam_batch_normalization_114_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_64AssignVariableOp7assignvariableop_64_adam_batch_normalization_114_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_conv2d_113_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_conv2d_113_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_67AssignVariableOp8assignvariableop_67_adam_batch_normalization_115_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_batch_normalization_115_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_114_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_114_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_71AssignVariableOp8assignvariableop_71_adam_batch_normalization_116_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_72AssignVariableOp7assignvariableop_72_adam_batch_normalization_116_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_53_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_53_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_54_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_54_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 э
Identity_77Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_78IdentityIdentity_77:output:0^NoOp_1*
T0*
_output_shapes
: ┌
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_78Identity_78:output:0*▒
_input_shapesЯ
Ь: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_76AssignVariableOp_762(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
И
┬
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149676

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╟N
▓
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_149857

inputs+
conv2d_111_149718:
conv2d_111_149720:,
batch_normalization_113_149723:,
batch_normalization_113_149725:,
batch_normalization_113_149727:,
batch_normalization_113_149729:+
conv2d_112_149745:
conv2d_112_149747:,
batch_normalization_114_149750:,
batch_normalization_114_149752:,
batch_normalization_114_149754:,
batch_normalization_114_149756:+
conv2d_113_149772:		
conv2d_113_149774:,
batch_normalization_115_149777:,
batch_normalization_115_149779:,
batch_normalization_115_149781:,
batch_normalization_115_149783:+
conv2d_114_149799: 
conv2d_114_149801: ,
batch_normalization_116_149804: ,
batch_normalization_116_149806: ,
batch_normalization_116_149808: ,
batch_normalization_116_149810: "
dense_53_149834:	А@
dense_53_149836:@!
dense_54_149851:@
dense_54_149853:
identityИв/batch_normalization_113/StatefulPartitionedCallв/batch_normalization_114/StatefulPartitionedCallв/batch_normalization_115/StatefulPartitionedCallв/batch_normalization_116/StatefulPartitionedCallв"conv2d_111/StatefulPartitionedCallв"conv2d_112/StatefulPartitionedCallв"conv2d_113/StatefulPartitionedCallв"conv2d_114/StatefulPartitionedCallв dense_53/StatefulPartitionedCallв dense_54/StatefulPartitionedCallЕ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_111_149718conv2d_111_149720*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717в
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall+conv2d_111/StatefulPartitionedCall:output:0batch_normalization_113_149723batch_normalization_113_149725batch_normalization_113_149727batch_normalization_113_149729*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149417Е
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468ж
"conv2d_112/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_112_149745conv2d_112_149747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744а
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall+conv2d_112/StatefulPartitionedCall:output:0batch_normalization_114_149750batch_normalization_114_149752batch_normalization_114_149754batch_normalization_114_149756*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149493Е
 max_pooling2d_55/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544ж
"conv2d_113/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_113_149772conv2d_113_149774*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771а
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall+conv2d_113/StatefulPartitionedCall:output:0batch_normalization_115_149777batch_normalization_115_149779batch_normalization_115_149781batch_normalization_115_149783*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149569Н
$average_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620к
"conv2d_114/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_43/PartitionedCall:output:0conv2d_114_149799conv2d_114_149801*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798а
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall+conv2d_114/StatefulPartitionedCall:output:0batch_normalization_116_149804batch_normalization_116_149806batch_normalization_116_149808batch_normalization_116_149810*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149645Н
$average_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696ч
flatten_23/PartitionedCallPartitionedCall-average_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820Р
 dense_53/StatefulPartitionedCallStatefulPartitionedCall#flatten_23/PartitionedCall:output:0dense_53_149834dense_53_149836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_53_layer_call_and_return_conditional_losses_149833Ц
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_149851dense_54_149853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_149850x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall#^conv2d_112/StatefulPartitionedCall#^conv2d_113/StatefulPartitionedCall#^conv2d_114/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall2H
"conv2d_112/StatefulPartitionedCall"conv2d_112/StatefulPartitionedCall2H
"conv2d_113/StatefulPartitionedCall"conv2d_113/StatefulPartitionedCall2H
"conv2d_114/StatefulPartitionedCall"conv2d_114/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ш	
╙
8__inference_batch_normalization_115_layer_call_fn_151014

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149569Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Уе
°
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150797

inputsC
)conv2d_111_conv2d_readvariableop_resource:8
*conv2d_111_biasadd_readvariableop_resource:=
/batch_normalization_113_readvariableop_resource:?
1batch_normalization_113_readvariableop_1_resource:N
@batch_normalization_113_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_113_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_112_conv2d_readvariableop_resource:8
*conv2d_112_biasadd_readvariableop_resource:=
/batch_normalization_114_readvariableop_resource:?
1batch_normalization_114_readvariableop_1_resource:N
@batch_normalization_114_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_114_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_113_conv2d_readvariableop_resource:		8
*conv2d_113_biasadd_readvariableop_resource:=
/batch_normalization_115_readvariableop_resource:?
1batch_normalization_115_readvariableop_1_resource:N
@batch_normalization_115_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_115_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_114_conv2d_readvariableop_resource: 8
*conv2d_114_biasadd_readvariableop_resource: =
/batch_normalization_116_readvariableop_resource: ?
1batch_normalization_116_readvariableop_1_resource: N
@batch_normalization_116_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_116_fusedbatchnormv3_readvariableop_1_resource: :
'dense_53_matmul_readvariableop_resource:	А@6
(dense_53_biasadd_readvariableop_resource:@9
'dense_54_matmul_readvariableop_resource:@6
(dense_54_biasadd_readvariableop_resource:
identityИв&batch_normalization_113/AssignNewValueв(batch_normalization_113/AssignNewValue_1в7batch_normalization_113/FusedBatchNormV3/ReadVariableOpв9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_113/ReadVariableOpв(batch_normalization_113/ReadVariableOp_1в&batch_normalization_114/AssignNewValueв(batch_normalization_114/AssignNewValue_1в7batch_normalization_114/FusedBatchNormV3/ReadVariableOpв9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_114/ReadVariableOpв(batch_normalization_114/ReadVariableOp_1в&batch_normalization_115/AssignNewValueв(batch_normalization_115/AssignNewValue_1в7batch_normalization_115/FusedBatchNormV3/ReadVariableOpв9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_115/ReadVariableOpв(batch_normalization_115/ReadVariableOp_1в&batch_normalization_116/AssignNewValueв(batch_normalization_116/AssignNewValue_1в7batch_normalization_116/FusedBatchNormV3/ReadVariableOpв9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_116/ReadVariableOpв(batch_normalization_116/ReadVariableOp_1в!conv2d_111/BiasAdd/ReadVariableOpв conv2d_111/Conv2D/ReadVariableOpв!conv2d_112/BiasAdd/ReadVariableOpв conv2d_112/Conv2D/ReadVariableOpв!conv2d_113/BiasAdd/ReadVariableOpв conv2d_113/Conv2D/ReadVariableOpв!conv2d_114/BiasAdd/ReadVariableOpв conv2d_114/Conv2D/ReadVariableOpвdense_53/BiasAdd/ReadVariableOpвdense_53/MatMul/ReadVariableOpвdense_54/BiasAdd/ReadVariableOpвdense_54/MatMul/ReadVariableOpТ
 conv2d_111/Conv2D/ReadVariableOpReadVariableOp)conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0▓
conv2d_111/Conv2DConv2Dinputs(conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
И
!conv2d_111/BiasAdd/ReadVariableOpReadVariableOp*conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
conv2d_111/BiasAddBiasAddconv2d_111/Conv2D:output:0)conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           p
conv2d_111/ReluReluconv2d_111/BiasAdd:output:0*
T0*1
_output_shapes
:           Т
&batch_normalization_113/ReadVariableOpReadVariableOp/batch_normalization_113_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_113/ReadVariableOp_1ReadVariableOp1batch_normalization_113_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_113/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_113_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_113_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╒
(batch_normalization_113/FusedBatchNormV3FusedBatchNormV3conv2d_111/Relu:activations:0.batch_normalization_113/ReadVariableOp:value:00batch_normalization_113/ReadVariableOp_1:value:0?batch_normalization_113/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_113/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<ж
&batch_normalization_113/AssignNewValueAssignVariableOp@batch_normalization_113_fusedbatchnormv3_readvariableop_resource5batch_normalization_113/FusedBatchNormV3:batch_mean:08^batch_normalization_113/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(░
(batch_normalization_113/AssignNewValue_1AssignVariableOpBbatch_normalization_113_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_113/FusedBatchNormV3:batch_variance:0:^batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╛
max_pooling2d_54/MaxPoolMaxPool,batch_normalization_113/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Т
 conv2d_112/Conv2D/ReadVariableOpReadVariableOp)conv2d_112_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╦
conv2d_112/Conv2DConv2D!max_pooling2d_54/MaxPool:output:0(conv2d_112/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
И
!conv2d_112/BiasAdd/ReadVariableOpReadVariableOp*conv2d_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_112/BiasAddBiasAddconv2d_112/Conv2D:output:0)conv2d_112/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||n
conv2d_112/ReluReluconv2d_112/BiasAdd:output:0*
T0*/
_output_shapes
:         ||Т
&batch_normalization_114/ReadVariableOpReadVariableOp/batch_normalization_114_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_114/ReadVariableOp_1ReadVariableOp1batch_normalization_114_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_114/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_114_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_114_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╙
(batch_normalization_114/FusedBatchNormV3FusedBatchNormV3conv2d_112/Relu:activations:0.batch_normalization_114/ReadVariableOp:value:00batch_normalization_114/ReadVariableOp_1:value:0?batch_normalization_114/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_114/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ||:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<ж
&batch_normalization_114/AssignNewValueAssignVariableOp@batch_normalization_114_fusedbatchnormv3_readvariableop_resource5batch_normalization_114/FusedBatchNormV3:batch_mean:08^batch_normalization_114/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(░
(batch_normalization_114/AssignNewValue_1AssignVariableOpBbatch_normalization_114_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_114/FusedBatchNormV3:batch_variance:0:^batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╛
max_pooling2d_55/MaxPoolMaxPool,batch_normalization_114/FusedBatchNormV3:y:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
Т
 conv2d_113/Conv2D/ReadVariableOpReadVariableOp)conv2d_113_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0╦
conv2d_113/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0(conv2d_113/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
И
!conv2d_113/BiasAdd/ReadVariableOpReadVariableOp*conv2d_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_113/BiasAddBiasAddconv2d_113/Conv2D:output:0)conv2d_113/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         n
conv2d_113/ReluReluconv2d_113/BiasAdd:output:0*
T0*/
_output_shapes
:         Т
&batch_normalization_115/ReadVariableOpReadVariableOp/batch_normalization_115_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_115/ReadVariableOp_1ReadVariableOp1batch_normalization_115_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_115/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_115_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_115_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╙
(batch_normalization_115/FusedBatchNormV3FusedBatchNormV3conv2d_113/Relu:activations:0.batch_normalization_115/ReadVariableOp:value:00batch_normalization_115/ReadVariableOp_1:value:0?batch_normalization_115/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_115/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<ж
&batch_normalization_115/AssignNewValueAssignVariableOp@batch_normalization_115_fusedbatchnormv3_readvariableop_resource5batch_normalization_115/FusedBatchNormV3:batch_mean:08^batch_normalization_115/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(░
(batch_normalization_115/AssignNewValue_1AssignVariableOpBbatch_normalization_115_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_115/FusedBatchNormV3:batch_variance:0:^batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╦
average_pooling2d_43/AvgPoolAvgPool,batch_normalization_115/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
Т
 conv2d_114/Conv2D/ReadVariableOpReadVariableOp)conv2d_114_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╧
conv2d_114/Conv2DConv2D%average_pooling2d_43/AvgPool:output:0(conv2d_114/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
И
!conv2d_114/BiasAdd/ReadVariableOpReadVariableOp*conv2d_114_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_114/BiasAddBiasAddconv2d_114/Conv2D:output:0)conv2d_114/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          n
conv2d_114/ReluReluconv2d_114/BiasAdd:output:0*
T0*/
_output_shapes
:          Т
&batch_normalization_116/ReadVariableOpReadVariableOp/batch_normalization_116_readvariableop_resource*
_output_shapes
: *
dtype0Ц
(batch_normalization_116/ReadVariableOp_1ReadVariableOp1batch_normalization_116_readvariableop_1_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_116/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_116_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╕
9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_116_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╙
(batch_normalization_116/FusedBatchNormV3FusedBatchNormV3conv2d_114/Relu:activations:0.batch_normalization_116/ReadVariableOp:value:00batch_normalization_116/ReadVariableOp_1:value:0?batch_normalization_116/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_116/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<ж
&batch_normalization_116/AssignNewValueAssignVariableOp@batch_normalization_116_fusedbatchnormv3_readvariableop_resource5batch_normalization_116/FusedBatchNormV3:batch_mean:08^batch_normalization_116/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(░
(batch_normalization_116/AssignNewValue_1AssignVariableOpBbatch_normalization_116_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_116/FusedBatchNormV3:batch_variance:0:^batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╦
average_pooling2d_44/AvgPoolAvgPool,batch_normalization_116/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
a
flatten_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   Т
flatten_23/ReshapeReshape%average_pooling2d_44/AvgPool:output:0flatten_23/Const:output:0*
T0*(
_output_shapes
:         АЗ
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Р
dense_53/MatMulMatMulflatten_23/Reshape:output:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Д
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0С
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @b
dense_53/ReluReludense_53/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ж
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Р
dense_54/MatMulMatMuldense_53/Relu:activations:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_54/SoftmaxSoftmaxdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_54/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         р
NoOpNoOp'^batch_normalization_113/AssignNewValue)^batch_normalization_113/AssignNewValue_18^batch_normalization_113/FusedBatchNormV3/ReadVariableOp:^batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_113/ReadVariableOp)^batch_normalization_113/ReadVariableOp_1'^batch_normalization_114/AssignNewValue)^batch_normalization_114/AssignNewValue_18^batch_normalization_114/FusedBatchNormV3/ReadVariableOp:^batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_114/ReadVariableOp)^batch_normalization_114/ReadVariableOp_1'^batch_normalization_115/AssignNewValue)^batch_normalization_115/AssignNewValue_18^batch_normalization_115/FusedBatchNormV3/ReadVariableOp:^batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_115/ReadVariableOp)^batch_normalization_115/ReadVariableOp_1'^batch_normalization_116/AssignNewValue)^batch_normalization_116/AssignNewValue_18^batch_normalization_116/FusedBatchNormV3/ReadVariableOp:^batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_116/ReadVariableOp)^batch_normalization_116/ReadVariableOp_1"^conv2d_111/BiasAdd/ReadVariableOp!^conv2d_111/Conv2D/ReadVariableOp"^conv2d_112/BiasAdd/ReadVariableOp!^conv2d_112/Conv2D/ReadVariableOp"^conv2d_113/BiasAdd/ReadVariableOp!^conv2d_113/Conv2D/ReadVariableOp"^conv2d_114/BiasAdd/ReadVariableOp!^conv2d_114/Conv2D/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_113/AssignNewValue&batch_normalization_113/AssignNewValue2T
(batch_normalization_113/AssignNewValue_1(batch_normalization_113/AssignNewValue_12r
7batch_normalization_113/FusedBatchNormV3/ReadVariableOp7batch_normalization_113/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_19batch_normalization_113/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_113/ReadVariableOp&batch_normalization_113/ReadVariableOp2T
(batch_normalization_113/ReadVariableOp_1(batch_normalization_113/ReadVariableOp_12P
&batch_normalization_114/AssignNewValue&batch_normalization_114/AssignNewValue2T
(batch_normalization_114/AssignNewValue_1(batch_normalization_114/AssignNewValue_12r
7batch_normalization_114/FusedBatchNormV3/ReadVariableOp7batch_normalization_114/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_19batch_normalization_114/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_114/ReadVariableOp&batch_normalization_114/ReadVariableOp2T
(batch_normalization_114/ReadVariableOp_1(batch_normalization_114/ReadVariableOp_12P
&batch_normalization_115/AssignNewValue&batch_normalization_115/AssignNewValue2T
(batch_normalization_115/AssignNewValue_1(batch_normalization_115/AssignNewValue_12r
7batch_normalization_115/FusedBatchNormV3/ReadVariableOp7batch_normalization_115/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_19batch_normalization_115/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_115/ReadVariableOp&batch_normalization_115/ReadVariableOp2T
(batch_normalization_115/ReadVariableOp_1(batch_normalization_115/ReadVariableOp_12P
&batch_normalization_116/AssignNewValue&batch_normalization_116/AssignNewValue2T
(batch_normalization_116/AssignNewValue_1(batch_normalization_116/AssignNewValue_12r
7batch_normalization_116/FusedBatchNormV3/ReadVariableOp7batch_normalization_116/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_19batch_normalization_116/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_116/ReadVariableOp&batch_normalization_116/ReadVariableOp2T
(batch_normalization_116/ReadVariableOp_1(batch_normalization_116/ReadVariableOp_12F
!conv2d_111/BiasAdd/ReadVariableOp!conv2d_111/BiasAdd/ReadVariableOp2D
 conv2d_111/Conv2D/ReadVariableOp conv2d_111/Conv2D/ReadVariableOp2F
!conv2d_112/BiasAdd/ReadVariableOp!conv2d_112/BiasAdd/ReadVariableOp2D
 conv2d_112/Conv2D/ReadVariableOp conv2d_112/Conv2D/ReadVariableOp2F
!conv2d_113/BiasAdd/ReadVariableOp!conv2d_113/BiasAdd/ReadVariableOp2D
 conv2d_113/Conv2D/ReadVariableOp conv2d_113/Conv2D/ReadVariableOp2F
!conv2d_114/BiasAdd/ReadVariableOp!conv2d_114/BiasAdd/ReadVariableOp2D
 conv2d_114/Conv2D/ReadVariableOp conv2d_114/Conv2D/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ц	
╙
8__inference_batch_normalization_115_layer_call_fn_151027

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149600Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц	
╙
8__inference_batch_normalization_116_layer_call_fn_151119

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149676Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╜
M
1__inference_max_pooling2d_54_layer_call_fn_150884

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ўЩ
└#
__inference__traced_save_151470
file_prefix0
,savev2_conv2d_111_kernel_read_readvariableop.
*savev2_conv2d_111_bias_read_readvariableop<
8savev2_batch_normalization_113_gamma_read_readvariableop;
7savev2_batch_normalization_113_beta_read_readvariableopB
>savev2_batch_normalization_113_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_113_moving_variance_read_readvariableop0
,savev2_conv2d_112_kernel_read_readvariableop.
*savev2_conv2d_112_bias_read_readvariableop<
8savev2_batch_normalization_114_gamma_read_readvariableop;
7savev2_batch_normalization_114_beta_read_readvariableopB
>savev2_batch_normalization_114_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_114_moving_variance_read_readvariableop0
,savev2_conv2d_113_kernel_read_readvariableop.
*savev2_conv2d_113_bias_read_readvariableop<
8savev2_batch_normalization_115_gamma_read_readvariableop;
7savev2_batch_normalization_115_beta_read_readvariableopB
>savev2_batch_normalization_115_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_115_moving_variance_read_readvariableop0
,savev2_conv2d_114_kernel_read_readvariableop.
*savev2_conv2d_114_bias_read_readvariableop<
8savev2_batch_normalization_116_gamma_read_readvariableop;
7savev2_batch_normalization_116_beta_read_readvariableopB
>savev2_batch_normalization_116_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_116_moving_variance_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_111_kernel_m_read_readvariableop5
1savev2_adam_conv2d_111_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_113_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_113_beta_m_read_readvariableop7
3savev2_adam_conv2d_112_kernel_m_read_readvariableop5
1savev2_adam_conv2d_112_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_114_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_114_beta_m_read_readvariableop7
3savev2_adam_conv2d_113_kernel_m_read_readvariableop5
1savev2_adam_conv2d_113_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_115_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_115_beta_m_read_readvariableop7
3savev2_adam_conv2d_114_kernel_m_read_readvariableop5
1savev2_adam_conv2d_114_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_116_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_116_beta_m_read_readvariableop5
1savev2_adam_dense_53_kernel_m_read_readvariableop3
/savev2_adam_dense_53_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop7
3savev2_adam_conv2d_111_kernel_v_read_readvariableop5
1savev2_adam_conv2d_111_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_113_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_113_beta_v_read_readvariableop7
3savev2_adam_conv2d_112_kernel_v_read_readvariableop5
1savev2_adam_conv2d_112_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_114_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_114_beta_v_read_readvariableop7
3savev2_adam_conv2d_113_kernel_v_read_readvariableop5
1savev2_adam_conv2d_113_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_115_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_115_beta_v_read_readvariableop7
3savev2_adam_conv2d_114_kernel_v_read_readvariableop5
1savev2_adam_conv2d_114_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_116_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_116_beta_v_read_readvariableop5
1savev2_adam_dense_53_kernel_v_read_readvariableop3
/savev2_adam_dense_53_bias_v_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ў*
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*а*
valueЦ*BУ*NB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHМ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*▒
valueзBдNB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Э"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_111_kernel_read_readvariableop*savev2_conv2d_111_bias_read_readvariableop8savev2_batch_normalization_113_gamma_read_readvariableop7savev2_batch_normalization_113_beta_read_readvariableop>savev2_batch_normalization_113_moving_mean_read_readvariableopBsavev2_batch_normalization_113_moving_variance_read_readvariableop,savev2_conv2d_112_kernel_read_readvariableop*savev2_conv2d_112_bias_read_readvariableop8savev2_batch_normalization_114_gamma_read_readvariableop7savev2_batch_normalization_114_beta_read_readvariableop>savev2_batch_normalization_114_moving_mean_read_readvariableopBsavev2_batch_normalization_114_moving_variance_read_readvariableop,savev2_conv2d_113_kernel_read_readvariableop*savev2_conv2d_113_bias_read_readvariableop8savev2_batch_normalization_115_gamma_read_readvariableop7savev2_batch_normalization_115_beta_read_readvariableop>savev2_batch_normalization_115_moving_mean_read_readvariableopBsavev2_batch_normalization_115_moving_variance_read_readvariableop,savev2_conv2d_114_kernel_read_readvariableop*savev2_conv2d_114_bias_read_readvariableop8savev2_batch_normalization_116_gamma_read_readvariableop7savev2_batch_normalization_116_beta_read_readvariableop>savev2_batch_normalization_116_moving_mean_read_readvariableopBsavev2_batch_normalization_116_moving_variance_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_111_kernel_m_read_readvariableop1savev2_adam_conv2d_111_bias_m_read_readvariableop?savev2_adam_batch_normalization_113_gamma_m_read_readvariableop>savev2_adam_batch_normalization_113_beta_m_read_readvariableop3savev2_adam_conv2d_112_kernel_m_read_readvariableop1savev2_adam_conv2d_112_bias_m_read_readvariableop?savev2_adam_batch_normalization_114_gamma_m_read_readvariableop>savev2_adam_batch_normalization_114_beta_m_read_readvariableop3savev2_adam_conv2d_113_kernel_m_read_readvariableop1savev2_adam_conv2d_113_bias_m_read_readvariableop?savev2_adam_batch_normalization_115_gamma_m_read_readvariableop>savev2_adam_batch_normalization_115_beta_m_read_readvariableop3savev2_adam_conv2d_114_kernel_m_read_readvariableop1savev2_adam_conv2d_114_bias_m_read_readvariableop?savev2_adam_batch_normalization_116_gamma_m_read_readvariableop>savev2_adam_batch_normalization_116_beta_m_read_readvariableop1savev2_adam_dense_53_kernel_m_read_readvariableop/savev2_adam_dense_53_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop3savev2_adam_conv2d_111_kernel_v_read_readvariableop1savev2_adam_conv2d_111_bias_v_read_readvariableop?savev2_adam_batch_normalization_113_gamma_v_read_readvariableop>savev2_adam_batch_normalization_113_beta_v_read_readvariableop3savev2_adam_conv2d_112_kernel_v_read_readvariableop1savev2_adam_conv2d_112_bias_v_read_readvariableop?savev2_adam_batch_normalization_114_gamma_v_read_readvariableop>savev2_adam_batch_normalization_114_beta_v_read_readvariableop3savev2_adam_conv2d_113_kernel_v_read_readvariableop1savev2_adam_conv2d_113_bias_v_read_readvariableop?savev2_adam_batch_normalization_115_gamma_v_read_readvariableop>savev2_adam_batch_normalization_115_beta_v_read_readvariableop3savev2_adam_conv2d_114_kernel_v_read_readvariableop1savev2_adam_conv2d_114_bias_v_read_readvariableop?savev2_adam_batch_normalization_116_gamma_v_read_readvariableop>savev2_adam_batch_normalization_116_beta_v_read_readvariableop1savev2_adam_dense_53_kernel_v_read_readvariableop/savev2_adam_dense_53_bias_v_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *\
dtypesR
P2N	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*ю
_input_shapes▄
┘: :::::::::::::		:::::: : : : : : :	А@:@:@:: : : : : : : : : :::::::::		:::: : : : :	А@:@:@::::::::::		:::: : : : :	А@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:		: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	А@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :,&(
&
_output_shapes
:: '

_output_shapes
:: (

_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:		: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :%6!

_output_shapes
:	А@: 7

_output_shapes
:@:$8 

_output_shapes

:@: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
:: <

_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
:: @

_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
:		: C

_output_shapes
:: D

_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: :%J!

_output_shapes
:	А@: K

_output_shapes
:@:$L 

_output_shapes

:@: M

_output_shapes
::N

_output_shapes
: 
╬
Ю
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151137

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151155

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
хN
╝
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150315
conv2d_111_input+
conv2d_111_150243:
conv2d_111_150245:,
batch_normalization_113_150248:,
batch_normalization_113_150250:,
batch_normalization_113_150252:,
batch_normalization_113_150254:+
conv2d_112_150258:
conv2d_112_150260:,
batch_normalization_114_150263:,
batch_normalization_114_150265:,
batch_normalization_114_150267:,
batch_normalization_114_150269:+
conv2d_113_150273:		
conv2d_113_150275:,
batch_normalization_115_150278:,
batch_normalization_115_150280:,
batch_normalization_115_150282:,
batch_normalization_115_150284:+
conv2d_114_150288: 
conv2d_114_150290: ,
batch_normalization_116_150293: ,
batch_normalization_116_150295: ,
batch_normalization_116_150297: ,
batch_normalization_116_150299: "
dense_53_150304:	А@
dense_53_150306:@!
dense_54_150309:@
dense_54_150311:
identityИв/batch_normalization_113/StatefulPartitionedCallв/batch_normalization_114/StatefulPartitionedCallв/batch_normalization_115/StatefulPartitionedCallв/batch_normalization_116/StatefulPartitionedCallв"conv2d_111/StatefulPartitionedCallв"conv2d_112/StatefulPartitionedCallв"conv2d_113/StatefulPartitionedCallв"conv2d_114/StatefulPartitionedCallв dense_53/StatefulPartitionedCallв dense_54/StatefulPartitionedCallП
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCallconv2d_111_inputconv2d_111_150243conv2d_111_150245*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_111_layer_call_and_return_conditional_losses_149717в
/batch_normalization_113/StatefulPartitionedCallStatefulPartitionedCall+conv2d_111/StatefulPartitionedCall:output:0batch_normalization_113_150248batch_normalization_113_150250batch_normalization_113_150252batch_normalization_113_150254*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_149417Е
 max_pooling2d_54/PartitionedCallPartitionedCall8batch_normalization_113/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_149468ж
"conv2d_112/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_54/PartitionedCall:output:0conv2d_112_150258conv2d_112_150260*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744а
/batch_normalization_114/StatefulPartitionedCallStatefulPartitionedCall+conv2d_112/StatefulPartitionedCall:output:0batch_normalization_114_150263batch_normalization_114_150265batch_normalization_114_150267batch_normalization_114_150269*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149493Е
 max_pooling2d_55/PartitionedCallPartitionedCall8batch_normalization_114/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_149544ж
"conv2d_113/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_113_150273conv2d_113_150275*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_113_layer_call_and_return_conditional_losses_149771а
/batch_normalization_115/StatefulPartitionedCallStatefulPartitionedCall+conv2d_113/StatefulPartitionedCall:output:0batch_normalization_115_150278batch_normalization_115_150280batch_normalization_115_150282batch_normalization_115_150284*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_149569Н
$average_pooling2d_43/PartitionedCallPartitionedCall8batch_normalization_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620к
"conv2d_114/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_43/PartitionedCall:output:0conv2d_114_150288conv2d_114_150290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798а
/batch_normalization_116/StatefulPartitionedCallStatefulPartitionedCall+conv2d_114/StatefulPartitionedCall:output:0batch_normalization_116_150293batch_normalization_116_150295batch_normalization_116_150297batch_normalization_116_150299*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149645Н
$average_pooling2d_44/PartitionedCallPartitionedCall8batch_normalization_116/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_149696ч
flatten_23/PartitionedCallPartitionedCall-average_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820Р
 dense_53/StatefulPartitionedCallStatefulPartitionedCall#flatten_23/PartitionedCall:output:0dense_53_150304dense_53_150306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_53_layer_call_and_return_conditional_losses_149833Ц
 dense_54/StatefulPartitionedCallStatefulPartitionedCall)dense_53/StatefulPartitionedCall:output:0dense_54_150309dense_54_150311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_54_layer_call_and_return_conditional_losses_149850x
IdentityIdentity)dense_54/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp0^batch_normalization_113/StatefulPartitionedCall0^batch_normalization_114/StatefulPartitionedCall0^batch_normalization_115/StatefulPartitionedCall0^batch_normalization_116/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall#^conv2d_112/StatefulPartitionedCall#^conv2d_113/StatefulPartitionedCall#^conv2d_114/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_113/StatefulPartitionedCall/batch_normalization_113/StatefulPartitionedCall2b
/batch_normalization_114/StatefulPartitionedCall/batch_normalization_114/StatefulPartitionedCall2b
/batch_normalization_115/StatefulPartitionedCall/batch_normalization_115/StatefulPartitionedCall2b
/batch_normalization_116/StatefulPartitionedCall/batch_normalization_116/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall2H
"conv2d_112/StatefulPartitionedCall"conv2d_112/StatefulPartitionedCall2H
"conv2d_113/StatefulPartitionedCall"conv2d_113/StatefulPartitionedCall2H
"conv2d_114/StatefulPartitionedCall"conv2d_114/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input
ё
а
+__inference_conv2d_114_layer_call_fn_151082

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_conv2d_114_layer_call_and_return_conditional_losses_149798w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         		: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
╬
Ю
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_149645

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Я

Ў
D__inference_dense_53_layer_call_and_return_conditional_losses_149833

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
■
А
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_149916
conv2d_111_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:		

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17: 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23:	А@

unknown_24:@

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallconv2d_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_149857o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input
Ж
 
F__inference_conv2d_112_layer_call_and_return_conditional_losses_150909

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┼
Q
5__inference_average_pooling2d_43_layer_call_fn_151068

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_149620Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш	
╙
8__inference_batch_normalization_114_layer_call_fn_150922

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_149493Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
И
┬
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151063

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
лЗ
и
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150689

inputsC
)conv2d_111_conv2d_readvariableop_resource:8
*conv2d_111_biasadd_readvariableop_resource:=
/batch_normalization_113_readvariableop_resource:?
1batch_normalization_113_readvariableop_1_resource:N
@batch_normalization_113_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_113_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_112_conv2d_readvariableop_resource:8
*conv2d_112_biasadd_readvariableop_resource:=
/batch_normalization_114_readvariableop_resource:?
1batch_normalization_114_readvariableop_1_resource:N
@batch_normalization_114_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_114_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_113_conv2d_readvariableop_resource:		8
*conv2d_113_biasadd_readvariableop_resource:=
/batch_normalization_115_readvariableop_resource:?
1batch_normalization_115_readvariableop_1_resource:N
@batch_normalization_115_fusedbatchnormv3_readvariableop_resource:P
Bbatch_normalization_115_fusedbatchnormv3_readvariableop_1_resource:C
)conv2d_114_conv2d_readvariableop_resource: 8
*conv2d_114_biasadd_readvariableop_resource: =
/batch_normalization_116_readvariableop_resource: ?
1batch_normalization_116_readvariableop_1_resource: N
@batch_normalization_116_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_116_fusedbatchnormv3_readvariableop_1_resource: :
'dense_53_matmul_readvariableop_resource:	А@6
(dense_53_biasadd_readvariableop_resource:@9
'dense_54_matmul_readvariableop_resource:@6
(dense_54_biasadd_readvariableop_resource:
identityИв7batch_normalization_113/FusedBatchNormV3/ReadVariableOpв9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_113/ReadVariableOpв(batch_normalization_113/ReadVariableOp_1в7batch_normalization_114/FusedBatchNormV3/ReadVariableOpв9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_114/ReadVariableOpв(batch_normalization_114/ReadVariableOp_1в7batch_normalization_115/FusedBatchNormV3/ReadVariableOpв9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_115/ReadVariableOpв(batch_normalization_115/ReadVariableOp_1в7batch_normalization_116/FusedBatchNormV3/ReadVariableOpв9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1в&batch_normalization_116/ReadVariableOpв(batch_normalization_116/ReadVariableOp_1в!conv2d_111/BiasAdd/ReadVariableOpв conv2d_111/Conv2D/ReadVariableOpв!conv2d_112/BiasAdd/ReadVariableOpв conv2d_112/Conv2D/ReadVariableOpв!conv2d_113/BiasAdd/ReadVariableOpв conv2d_113/Conv2D/ReadVariableOpв!conv2d_114/BiasAdd/ReadVariableOpв conv2d_114/Conv2D/ReadVariableOpвdense_53/BiasAdd/ReadVariableOpвdense_53/MatMul/ReadVariableOpвdense_54/BiasAdd/ReadVariableOpвdense_54/MatMul/ReadVariableOpТ
 conv2d_111/Conv2D/ReadVariableOpReadVariableOp)conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0▓
conv2d_111/Conv2DConv2Dinputs(conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
И
!conv2d_111/BiasAdd/ReadVariableOpReadVariableOp*conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
conv2d_111/BiasAddBiasAddconv2d_111/Conv2D:output:0)conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           p
conv2d_111/ReluReluconv2d_111/BiasAdd:output:0*
T0*1
_output_shapes
:           Т
&batch_normalization_113/ReadVariableOpReadVariableOp/batch_normalization_113_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_113/ReadVariableOp_1ReadVariableOp1batch_normalization_113_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_113/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_113_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_113_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╟
(batch_normalization_113/FusedBatchNormV3FusedBatchNormV3conv2d_111/Relu:activations:0.batch_normalization_113/ReadVariableOp:value:00batch_normalization_113/ReadVariableOp_1:value:0?batch_normalization_113/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_113/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:           :::::*
epsilon%oГ:*
is_training( ╛
max_pooling2d_54/MaxPoolMaxPool,batch_normalization_113/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Т
 conv2d_112/Conv2D/ReadVariableOpReadVariableOp)conv2d_112_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╦
conv2d_112/Conv2DConv2D!max_pooling2d_54/MaxPool:output:0(conv2d_112/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
И
!conv2d_112/BiasAdd/ReadVariableOpReadVariableOp*conv2d_112_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_112/BiasAddBiasAddconv2d_112/Conv2D:output:0)conv2d_112/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||n
conv2d_112/ReluReluconv2d_112/BiasAdd:output:0*
T0*/
_output_shapes
:         ||Т
&batch_normalization_114/ReadVariableOpReadVariableOp/batch_normalization_114_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_114/ReadVariableOp_1ReadVariableOp1batch_normalization_114_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_114/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_114_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_114_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┼
(batch_normalization_114/FusedBatchNormV3FusedBatchNormV3conv2d_112/Relu:activations:0.batch_normalization_114/ReadVariableOp:value:00batch_normalization_114/ReadVariableOp_1:value:0?batch_normalization_114/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_114/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ||:::::*
epsilon%oГ:*
is_training( ╛
max_pooling2d_55/MaxPoolMaxPool,batch_normalization_114/FusedBatchNormV3:y:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
Т
 conv2d_113/Conv2D/ReadVariableOpReadVariableOp)conv2d_113_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0╦
conv2d_113/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0(conv2d_113/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
И
!conv2d_113/BiasAdd/ReadVariableOpReadVariableOp*conv2d_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ю
conv2d_113/BiasAddBiasAddconv2d_113/Conv2D:output:0)conv2d_113/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         n
conv2d_113/ReluReluconv2d_113/BiasAdd:output:0*
T0*/
_output_shapes
:         Т
&batch_normalization_115/ReadVariableOpReadVariableOp/batch_normalization_115_readvariableop_resource*
_output_shapes
:*
dtype0Ц
(batch_normalization_115/ReadVariableOp_1ReadVariableOp1batch_normalization_115_readvariableop_1_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_115/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_115_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╕
9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_115_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┼
(batch_normalization_115/FusedBatchNormV3FusedBatchNormV3conv2d_113/Relu:activations:0.batch_normalization_115/ReadVariableOp:value:00batch_normalization_115/ReadVariableOp_1:value:0?batch_normalization_115/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_115/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( ╦
average_pooling2d_43/AvgPoolAvgPool,batch_normalization_115/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
Т
 conv2d_114/Conv2D/ReadVariableOpReadVariableOp)conv2d_114_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╧
conv2d_114/Conv2DConv2D%average_pooling2d_43/AvgPool:output:0(conv2d_114/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
И
!conv2d_114/BiasAdd/ReadVariableOpReadVariableOp*conv2d_114_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_114/BiasAddBiasAddconv2d_114/Conv2D:output:0)conv2d_114/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          n
conv2d_114/ReluReluconv2d_114/BiasAdd:output:0*
T0*/
_output_shapes
:          Т
&batch_normalization_116/ReadVariableOpReadVariableOp/batch_normalization_116_readvariableop_resource*
_output_shapes
: *
dtype0Ц
(batch_normalization_116/ReadVariableOp_1ReadVariableOp1batch_normalization_116_readvariableop_1_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_116/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_116_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╕
9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_116_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0┼
(batch_normalization_116/FusedBatchNormV3FusedBatchNormV3conv2d_114/Relu:activations:0.batch_normalization_116/ReadVariableOp:value:00batch_normalization_116/ReadVariableOp_1:value:0?batch_normalization_116/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_116/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( ╦
average_pooling2d_44/AvgPoolAvgPool,batch_normalization_116/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
a
flatten_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А   Т
flatten_23/ReshapeReshape%average_pooling2d_44/AvgPool:output:0flatten_23/Const:output:0*
T0*(
_output_shapes
:         АЗ
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Р
dense_53/MatMulMatMulflatten_23/Reshape:output:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Д
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0С
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @b
dense_53/ReluReludense_53/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ж
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Р
dense_54/MatMulMatMuldense_53/Relu:activations:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_54/SoftmaxSoftmaxdense_54/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_54/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Р

NoOpNoOp8^batch_normalization_113/FusedBatchNormV3/ReadVariableOp:^batch_normalization_113/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_113/ReadVariableOp)^batch_normalization_113/ReadVariableOp_18^batch_normalization_114/FusedBatchNormV3/ReadVariableOp:^batch_normalization_114/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_114/ReadVariableOp)^batch_normalization_114/ReadVariableOp_18^batch_normalization_115/FusedBatchNormV3/ReadVariableOp:^batch_normalization_115/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_115/ReadVariableOp)^batch_normalization_115/ReadVariableOp_18^batch_normalization_116/FusedBatchNormV3/ReadVariableOp:^batch_normalization_116/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_116/ReadVariableOp)^batch_normalization_116/ReadVariableOp_1"^conv2d_111/BiasAdd/ReadVariableOp!^conv2d_111/Conv2D/ReadVariableOp"^conv2d_112/BiasAdd/ReadVariableOp!^conv2d_112/Conv2D/ReadVariableOp"^conv2d_113/BiasAdd/ReadVariableOp!^conv2d_113/Conv2D/ReadVariableOp"^conv2d_114/BiasAdd/ReadVariableOp!^conv2d_114/Conv2D/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7batch_normalization_113/FusedBatchNormV3/ReadVariableOp7batch_normalization_113/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_113/FusedBatchNormV3/ReadVariableOp_19batch_normalization_113/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_113/ReadVariableOp&batch_normalization_113/ReadVariableOp2T
(batch_normalization_113/ReadVariableOp_1(batch_normalization_113/ReadVariableOp_12r
7batch_normalization_114/FusedBatchNormV3/ReadVariableOp7batch_normalization_114/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_114/FusedBatchNormV3/ReadVariableOp_19batch_normalization_114/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_114/ReadVariableOp&batch_normalization_114/ReadVariableOp2T
(batch_normalization_114/ReadVariableOp_1(batch_normalization_114/ReadVariableOp_12r
7batch_normalization_115/FusedBatchNormV3/ReadVariableOp7batch_normalization_115/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_115/FusedBatchNormV3/ReadVariableOp_19batch_normalization_115/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_115/ReadVariableOp&batch_normalization_115/ReadVariableOp2T
(batch_normalization_115/ReadVariableOp_1(batch_normalization_115/ReadVariableOp_12r
7batch_normalization_116/FusedBatchNormV3/ReadVariableOp7batch_normalization_116/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_116/FusedBatchNormV3/ReadVariableOp_19batch_normalization_116/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_116/ReadVariableOp&batch_normalization_116/ReadVariableOp2T
(batch_normalization_116/ReadVariableOp_1(batch_normalization_116/ReadVariableOp_12F
!conv2d_111/BiasAdd/ReadVariableOp!conv2d_111/BiasAdd/ReadVariableOp2D
 conv2d_111/Conv2D/ReadVariableOp conv2d_111/Conv2D/ReadVariableOp2F
!conv2d_112/BiasAdd/ReadVariableOp!conv2d_112/BiasAdd/ReadVariableOp2D
 conv2d_112/Conv2D/ReadVariableOp conv2d_112/Conv2D/ReadVariableOp2F
!conv2d_113/BiasAdd/ReadVariableOp!conv2d_113/BiasAdd/ReadVariableOp2D
 conv2d_113/Conv2D/ReadVariableOp conv2d_113/Conv2D/ReadVariableOp2F
!conv2d_114/BiasAdd/ReadVariableOp!conv2d_114/BiasAdd/ReadVariableOp2D
 conv2d_114/Conv2D/ReadVariableOp conv2d_114/Conv2D/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╢
G
+__inference_flatten_23_layer_call_fn_151170

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_23_layer_call_and_return_conditional_losses_149820a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ж
 
F__inference_conv2d_112_layer_call_and_return_conditional_losses_149744

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╢
ы
$__inference_signature_wrapper_150459
conv2d_111_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:		

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17: 

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23:	А@

unknown_24:@

unknown_25:@

unknown_26:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallconv2d_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_149395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         АА
*
_user_specified_nameconv2d_111_input"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╟
serving_default│
W
conv2d_111_inputC
"serving_default_conv2d_111_input:0         АА<
dense_540
StatefulPartitionedCall:0         tensorflow/serving/predict:НР
▓
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
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
ъ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance"
_tf_keras_layer
е
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
ъ
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance"
_tf_keras_layer
е
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op"
_tf_keras_layer
ъ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
_moving_mean
`moving_variance"
_tf_keras_layer
е
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
ъ
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance"
_tf_keras_layer
ж
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
├
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Нkernel
	Оbias"
_tf_keras_layer
├
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
Хkernel
	Цbias"
_tf_keras_layer
·
0
 1
)2
*3
+4
,5
96
:7
C8
D9
E10
F11
S12
T13
]14
^15
_16
`17
m18
n19
w20
x21
y22
z23
Н24
О25
Х26
Ц27"
trackable_list_wrapper
║
0
 1
)2
*3
94
:5
C6
D7
S8
T9
]10
^11
m12
n13
w14
x15
Н16
О17
Х18
Ц19"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
б
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_32о
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_149916
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150520
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150581
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150240┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0zЭtrace_1zЮtrace_2zЯtrace_3
Н
аtrace_0
бtrace_1
вtrace_2
гtrace_32Ъ
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150689
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150797
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150315
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150390┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1zвtrace_2zгtrace_3
╒B╥
!__inference__wrapped_model_149395conv2d_111_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_ratemж mз)mи*mй9mк:mлCmмDmнSmоTmп]m░^m▒mm▓nm│wm┤xm╡	Нm╢	Оm╖	Хm╕	Цm╣v║ v╗)v╝*v╜9v╛:v┐Cv└Dv┴Sv┬Tv├]v─^v┼mv╞nv╟wv╚xv╔	Нv╩	Оv╦	Хv╠	Цv═"
	optimizer
-
йserving_default"
signature_map
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
пtrace_02╥
+__inference_conv2d_111_layer_call_fn_150806в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
М
░trace_02э
F__inference_conv2d_111_layer_call_and_return_conditional_losses_150817в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
+:)2conv2d_111/kernel
:2conv2d_111/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
)0
*1
+2
,3"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
х
╢trace_0
╖trace_12к
8__inference_batch_normalization_113_layer_call_fn_150830
8__inference_batch_normalization_113_layer_call_fn_150843│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0z╖trace_1
Ы
╕trace_0
╣trace_12р
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150861
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150879│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0z╣trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_113/gamma
*:(2batch_normalization_113/beta
3:1 (2#batch_normalization_113/moving_mean
7:5 (2'batch_normalization_113/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ў
┐trace_02╪
1__inference_max_pooling2d_54_layer_call_fn_150884в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
Т
└trace_02є
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_150889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ё
╞trace_02╥
+__inference_conv2d_112_layer_call_fn_150898в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
М
╟trace_02э
F__inference_conv2d_112_layer_call_and_return_conditional_losses_150909в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
+:)2conv2d_112/kernel
:2conv2d_112/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
х
═trace_0
╬trace_12к
8__inference_batch_normalization_114_layer_call_fn_150922
8__inference_batch_normalization_114_layer_call_fn_150935│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0z╬trace_1
Ы
╧trace_0
╨trace_12р
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150953
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150971│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0z╨trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_114/gamma
*:(2batch_normalization_114/beta
3:1 (2#batch_normalization_114/moving_mean
7:5 (2'batch_normalization_114/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ў
╓trace_02╪
1__inference_max_pooling2d_55_layer_call_fn_150976в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0
Т
╫trace_02є
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_150981в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╫trace_0
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
ё
▌trace_02╥
+__inference_conv2d_113_layer_call_fn_150990в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
М
▐trace_02э
F__inference_conv2d_113_layer_call_and_return_conditional_losses_151001в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0
+:)		2conv2d_113/kernel
:2conv2d_113/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
]0
^1
_2
`3"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
х
фtrace_0
хtrace_12к
8__inference_batch_normalization_115_layer_call_fn_151014
8__inference_batch_normalization_115_layer_call_fn_151027│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0zхtrace_1
Ы
цtrace_0
чtrace_12р
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151045
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151063│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_115/gamma
*:(2batch_normalization_115/beta
3:1 (2#batch_normalization_115/moving_mean
7:5 (2'batch_normalization_115/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
√
эtrace_02▄
5__inference_average_pooling2d_43_layer_call_fn_151068в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zэtrace_0
Ц
юtrace_02ў
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_151073в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zюtrace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
ё
Їtrace_02╥
+__inference_conv2d_114_layer_call_fn_151082в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЇtrace_0
М
їtrace_02э
F__inference_conv2d_114_layer_call_and_return_conditional_losses_151093в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0
+:) 2conv2d_114/kernel
: 2conv2d_114/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
w0
x1
y2
z3"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
х
√trace_0
№trace_12к
8__inference_batch_normalization_116_layer_call_fn_151106
8__inference_batch_normalization_116_layer_call_fn_151119│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z√trace_0z№trace_1
Ы
¤trace_0
■trace_12р
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151137
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151155│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0z■trace_1
 "
trackable_list_wrapper
+:) 2batch_normalization_116/gamma
*:( 2batch_normalization_116/beta
3:1  (2#batch_normalization_116/moving_mean
7:5  (2'batch_normalization_116/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┤
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
√
Дtrace_02▄
5__inference_average_pooling2d_44_layer_call_fn_151160в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
Ц
Еtrace_02ў
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_151165в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ё
Лtrace_02╥
+__inference_flatten_23_layer_call_fn_151170в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
М
Мtrace_02э
F__inference_flatten_23_layer_call_and_return_conditional_losses_151176в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
0
Н0
О1"
trackable_list_wrapper
0
Н0
О1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
я
Тtrace_02╨
)__inference_dense_53_layer_call_fn_151185в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0
К
Уtrace_02ы
D__inference_dense_53_layer_call_and_return_conditional_losses_151196в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
": 	А@2dense_53/kernel
:@2dense_53/bias
0
Х0
Ц1"
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
я
Щtrace_02╨
)__inference_dense_54_layer_call_fn_151205в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0
К
Ъtrace_02ы
D__inference_dense_54_layer_call_and_return_conditional_losses_151216в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
!:@2dense_54/kernel
:2dense_54/bias
X
+0
,1
E2
F3
_4
`5
y6
z7"
trackable_list_wrapper
О
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
14"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ФBС
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_149916conv2d_111_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150520inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150581inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150240conv2d_111_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
еBв
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150689inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
еBв
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150797inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
пBм
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150315conv2d_111_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
пBм
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150390conv2d_111_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╘B╤
$__inference_signature_wrapper_150459conv2d_111_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_conv2d_111_layer_call_fn_150806inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_conv2d_111_layer_call_and_return_conditional_losses_150817inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
8__inference_batch_normalization_113_layer_call_fn_150830inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
8__inference_batch_normalization_113_layer_call_fn_150843inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150861inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150879inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_max_pooling2d_54_layer_call_fn_150884inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_150889inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_conv2d_112_layer_call_fn_150898inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_conv2d_112_layer_call_and_return_conditional_losses_150909inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
8__inference_batch_normalization_114_layer_call_fn_150922inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
8__inference_batch_normalization_114_layer_call_fn_150935inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150953inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150971inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
хBт
1__inference_max_pooling2d_55_layer_call_fn_150976inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_150981inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_conv2d_113_layer_call_fn_150990inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_conv2d_113_layer_call_and_return_conditional_losses_151001inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
8__inference_batch_normalization_115_layer_call_fn_151014inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
8__inference_batch_normalization_115_layer_call_fn_151027inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151045inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151063inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
щBц
5__inference_average_pooling2d_43_layer_call_fn_151068inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_151073inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_conv2d_114_layer_call_fn_151082inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_conv2d_114_layer_call_and_return_conditional_losses_151093inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
8__inference_batch_normalization_116_layer_call_fn_151106inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
8__inference_batch_normalization_116_layer_call_fn_151119inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151137inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151155inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
щBц
5__inference_average_pooling2d_44_layer_call_fn_151160inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_151165inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_flatten_23_layer_call_fn_151170inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_flatten_23_layer_call_and_return_conditional_losses_151176inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_dense_53_layer_call_fn_151185inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_53_layer_call_and_return_conditional_losses_151196inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_dense_54_layer_call_fn_151205inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_54_layer_call_and_return_conditional_losses_151216inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
Э	variables
Ю	keras_api

Яtotal

аcount"
_tf_keras_metric
c
б	variables
в	keras_api

гtotal

дcount
е
_fn_kwargs"
_tf_keras_metric
0
Я0
а1"
trackable_list_wrapper
.
Э	variables"
_generic_user_object
:  (2total
:  (2count
0
г0
д1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.2Adam/conv2d_111/kernel/m
": 2Adam/conv2d_111/bias/m
0:.2$Adam/batch_normalization_113/gamma/m
/:-2#Adam/batch_normalization_113/beta/m
0:.2Adam/conv2d_112/kernel/m
": 2Adam/conv2d_112/bias/m
0:.2$Adam/batch_normalization_114/gamma/m
/:-2#Adam/batch_normalization_114/beta/m
0:.		2Adam/conv2d_113/kernel/m
": 2Adam/conv2d_113/bias/m
0:.2$Adam/batch_normalization_115/gamma/m
/:-2#Adam/batch_normalization_115/beta/m
0:. 2Adam/conv2d_114/kernel/m
":  2Adam/conv2d_114/bias/m
0:. 2$Adam/batch_normalization_116/gamma/m
/:- 2#Adam/batch_normalization_116/beta/m
':%	А@2Adam/dense_53/kernel/m
 :@2Adam/dense_53/bias/m
&:$@2Adam/dense_54/kernel/m
 :2Adam/dense_54/bias/m
0:.2Adam/conv2d_111/kernel/v
": 2Adam/conv2d_111/bias/v
0:.2$Adam/batch_normalization_113/gamma/v
/:-2#Adam/batch_normalization_113/beta/v
0:.2Adam/conv2d_112/kernel/v
": 2Adam/conv2d_112/bias/v
0:.2$Adam/batch_normalization_114/gamma/v
/:-2#Adam/batch_normalization_114/beta/v
0:.		2Adam/conv2d_113/kernel/v
": 2Adam/conv2d_113/bias/v
0:.2$Adam/batch_normalization_115/gamma/v
/:-2#Adam/batch_normalization_115/beta/v
0:. 2Adam/conv2d_114/kernel/v
":  2Adam/conv2d_114/bias/v
0:. 2$Adam/batch_normalization_116/gamma/v
/:- 2#Adam/batch_normalization_116/beta/v
':%	А@2Adam/dense_53/kernel/v
 :@2Adam/dense_53/bias/v
&:$@2Adam/dense_54/kernel/v
 :2Adam/dense_54/bias/v┬
!__inference__wrapped_model_149395Ь  )*+,9:CDEFST]^_`mnwxyzНОХЦCв@
9в6
4К1
conv2d_111_input         АА
к "3к0
.
dense_54"К
dense_54         є
P__inference_average_pooling2d_43_layer_call_and_return_conditional_losses_151073ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╦
5__inference_average_pooling2d_43_layer_call_fn_151068СRвO
HвE
CК@
inputs4                                    
к ";К84                                    є
P__inference_average_pooling2d_44_layer_call_and_return_conditional_losses_151165ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╦
5__inference_average_pooling2d_44_layer_call_fn_151160СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150861Ц)*+,MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ю
S__inference_batch_normalization_113_layer_call_and_return_conditional_losses_150879Ц)*+,MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ╞
8__inference_batch_normalization_113_layer_call_fn_150830Й)*+,MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ╞
8__inference_batch_normalization_113_layer_call_fn_150843Й)*+,MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ю
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150953ЦCDEFMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ю
S__inference_batch_normalization_114_layer_call_and_return_conditional_losses_150971ЦCDEFMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ╞
8__inference_batch_normalization_114_layer_call_fn_150922ЙCDEFMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ╞
8__inference_batch_normalization_114_layer_call_fn_150935ЙCDEFMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ю
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151045Ц]^_`MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ю
S__inference_batch_normalization_115_layer_call_and_return_conditional_losses_151063Ц]^_`MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ╞
8__inference_batch_normalization_115_layer_call_fn_151014Й]^_`MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ╞
8__inference_batch_normalization_115_layer_call_fn_151027Й]^_`MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ю
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151137ЦwxyzMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ ю
S__inference_batch_normalization_116_layer_call_and_return_conditional_losses_151155ЦwxyzMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ╞
8__inference_batch_normalization_116_layer_call_fn_151106ЙwxyzMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ╞
8__inference_batch_normalization_116_layer_call_fn_151119ЙwxyzMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ║
F__inference_conv2d_111_layer_call_and_return_conditional_losses_150817p 9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0           
Ъ Т
+__inference_conv2d_111_layer_call_fn_150806c 9в6
/в,
*К'
inputs         АА
к ""К           ╢
F__inference_conv2d_112_layer_call_and_return_conditional_losses_150909l9:7в4
-в*
(К%
inputs         
к "-в*
#К 
0         ||
Ъ О
+__inference_conv2d_112_layer_call_fn_150898_9:7в4
-в*
(К%
inputs         
к " К         ||╢
F__inference_conv2d_113_layer_call_and_return_conditional_losses_151001lST7в4
-в*
(К%
inputs         >>
к "-в*
#К 
0         
Ъ О
+__inference_conv2d_113_layer_call_fn_150990_ST7в4
-в*
(К%
inputs         >>
к " К         ╢
F__inference_conv2d_114_layer_call_and_return_conditional_losses_151093lmn7в4
-в*
(К%
inputs         		
к "-в*
#К 
0          
Ъ О
+__inference_conv2d_114_layer_call_fn_151082_mn7в4
-в*
(К%
inputs         		
к " К          з
D__inference_dense_53_layer_call_and_return_conditional_losses_151196_НО0в-
&в#
!К
inputs         А
к "%в"
К
0         @
Ъ 
)__inference_dense_53_layer_call_fn_151185RНО0в-
&в#
!К
inputs         А
к "К         @ж
D__inference_dense_54_layer_call_and_return_conditional_losses_151216^ХЦ/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ ~
)__inference_dense_54_layer_call_fn_151205QХЦ/в,
%в"
 К
inputs         @
к "К         л
F__inference_flatten_23_layer_call_and_return_conditional_losses_151176a7в4
-в*
(К%
inputs          
к "&в#
К
0         А
Ъ Г
+__inference_flatten_23_layer_call_fn_151170T7в4
-в*
(К%
inputs          
к "К         Ая
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_150889ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_54_layer_call_fn_150884СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_150981ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_55_layer_call_fn_150976СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150315Ц  )*+,9:CDEFST]^_`mnwxyzНОХЦKвH
Aв>
4К1
conv2d_111_input         АА
p 

 
к "%в"
К
0         
Ъ я
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150390Ц  )*+,9:CDEFST]^_`mnwxyzНОХЦKвH
Aв>
4К1
conv2d_111_input         АА
p

 
к "%в"
К
0         
Ъ х
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150689М  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         АА
p 

 
к "%в"
К
0         
Ъ х
T__inference_my_modelV3_31_BN_AugData_layer_call_and_return_conditional_losses_150797М  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         АА
p

 
к "%в"
К
0         
Ъ ╟
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_149916Й  )*+,9:CDEFST]^_`mnwxyzНОХЦKвH
Aв>
4К1
conv2d_111_input         АА
p 

 
к "К         ╟
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150240Й  )*+,9:CDEFST]^_`mnwxyzНОХЦKвH
Aв>
4К1
conv2d_111_input         АА
p

 
к "К         ╝
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150520  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         АА
p 

 
к "К         ╝
9__inference_my_modelV3_31_BN_AugData_layer_call_fn_150581  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         АА
p

 
к "К         ┘
$__inference_signature_wrapper_150459░  )*+,9:CDEFST]^_`mnwxyzНОХЦWвT
в 
MкJ
H
conv2d_111_input4К1
conv2d_111_input         АА"3к0
.
dense_54"К
dense_54         