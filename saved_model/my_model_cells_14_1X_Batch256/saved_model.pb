╓р
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
 И"serve*2.10.12v2.10.0-76-gfdfc646704c8Н╖
А
Nadam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_5/bias/v
y
(Nadam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_5/bias/v*
_output_shapes
:*
dtype0
И
Nadam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameNadam/dense_5/kernel/v
Б
*Nadam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_5/kernel/v*
_output_shapes

:
*
dtype0
А
Nadam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameNadam/dense_4/bias/v
y
(Nadam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/v*
_output_shapes
:
*
dtype0
Й
Nadam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и
*'
shared_nameNadam/dense_4/kernel/v
В
*Nadam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/v*
_output_shapes
:	и
*
dtype0
Ю
#Nadam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_11/beta/v
Ч
7Nadam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_11/beta/v*
_output_shapes
:*
dtype0
а
$Nadam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_11/gamma/v
Щ
8Nadam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_11/gamma/v*
_output_shapes
:*
dtype0
Д
Nadam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_11/bias/v
}
*Nadam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_11/bias/v*
_output_shapes
:*
dtype0
Ф
Nadam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_11/kernel/v
Н
,Nadam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_11/kernel/v*&
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_10/beta/v
Ч
7Nadam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_10/beta/v*
_output_shapes
:*
dtype0
а
$Nadam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_10/gamma/v
Щ
8Nadam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_10/gamma/v*
_output_shapes
:*
dtype0
Д
Nadam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_10/bias/v
}
*Nadam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/bias/v*
_output_shapes
:*
dtype0
Ф
Nadam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_10/kernel/v
Н
,Nadam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/kernel/v*&
_output_shapes
:*
dtype0
Ь
"Nadam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/batch_normalization_9/beta/v
Х
6Nadam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp"Nadam/batch_normalization_9/beta/v*
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_9/gamma/v
Ч
7Nadam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_9/gamma/v*
_output_shapes
:*
dtype0
В
Nadam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_9/bias/v
{
)Nadam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/bias/v*
_output_shapes
:*
dtype0
Т
Nadam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_9/kernel/v
Л
+Nadam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/kernel/v*&
_output_shapes
:*
dtype0
Ь
"Nadam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/batch_normalization_8/beta/v
Х
6Nadam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp"Nadam/batch_normalization_8/beta/v*
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_8/gamma/v
Ч
7Nadam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_8/gamma/v*
_output_shapes
:*
dtype0
В
Nadam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_8/bias/v
{
)Nadam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/bias/v*
_output_shapes
:*
dtype0
Т
Nadam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_8/kernel/v
Л
+Nadam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/kernel/v*&
_output_shapes
:*
dtype0
А
Nadam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameNadam/dense_5/bias/m
y
(Nadam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_5/bias/m*
_output_shapes
:*
dtype0
И
Nadam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameNadam/dense_5/kernel/m
Б
*Nadam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_5/kernel/m*
_output_shapes

:
*
dtype0
А
Nadam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameNadam/dense_4/bias/m
y
(Nadam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/bias/m*
_output_shapes
:
*
dtype0
Й
Nadam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и
*'
shared_nameNadam/dense_4/kernel/m
В
*Nadam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_4/kernel/m*
_output_shapes
:	и
*
dtype0
Ю
#Nadam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_11/beta/m
Ч
7Nadam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_11/beta/m*
_output_shapes
:*
dtype0
а
$Nadam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_11/gamma/m
Щ
8Nadam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_11/gamma/m*
_output_shapes
:*
dtype0
Д
Nadam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_11/bias/m
}
*Nadam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_11/bias/m*
_output_shapes
:*
dtype0
Ф
Nadam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_11/kernel/m
Н
,Nadam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_11/kernel/m*&
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_10/beta/m
Ч
7Nadam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_10/beta/m*
_output_shapes
:*
dtype0
а
$Nadam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_10/gamma/m
Щ
8Nadam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_10/gamma/m*
_output_shapes
:*
dtype0
Д
Nadam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameNadam/conv2d_10/bias/m
}
*Nadam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/bias/m*
_output_shapes
:*
dtype0
Ф
Nadam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/conv2d_10/kernel/m
Н
,Nadam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_10/kernel/m*&
_output_shapes
:*
dtype0
Ь
"Nadam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/batch_normalization_9/beta/m
Х
6Nadam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp"Nadam/batch_normalization_9/beta/m*
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_9/gamma/m
Ч
7Nadam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_9/gamma/m*
_output_shapes
:*
dtype0
В
Nadam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_9/bias/m
{
)Nadam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/bias/m*
_output_shapes
:*
dtype0
Т
Nadam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_9/kernel/m
Л
+Nadam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_9/kernel/m*&
_output_shapes
:*
dtype0
Ь
"Nadam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Nadam/batch_normalization_8/beta/m
Х
6Nadam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp"Nadam/batch_normalization_8/beta/m*
_output_shapes
:*
dtype0
Ю
#Nadam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Nadam/batch_normalization_8/gamma/m
Ч
7Nadam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp#Nadam/batch_normalization_8/gamma/m*
_output_shapes
:*
dtype0
В
Nadam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNadam/conv2d_8/bias/m
{
)Nadam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/bias/m*
_output_shapes
:*
dtype0
Т
Nadam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNadam/conv2d_8/kernel/m
Л
+Nadam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_8/kernel/m*&
_output_shapes
:*
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
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:
*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:
*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и
*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	и
*
dtype0
д
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_11/moving_variance
Э
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_11/moving_mean
Х
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_11/beta
З
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_11/gamma
Й
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:*
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:*
dtype0
д
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance
Э
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean
Х
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta
З
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma
Й
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
в
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_9/moving_variance
Ы
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_9/moving_mean
У
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_9/beta
Е
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
:*
dtype0
О
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_9/gamma
З
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
:*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0
В
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0
в
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_8/moving_variance
Ы
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/moving_mean
У
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_8/beta
Е
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:*
dtype0
О
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_8/gamma
З
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
Х
serving_default_conv2d_8_inputPlaceholder*1
_output_shapes
:         Ё└*
dtype0*&
shape:         Ё└
╟
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_8_inputconv2d_8/kernelconv2d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_10/kernelconv2d_10/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_16378

NoOpNoOp
їб
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*пб
valueдбBаб BШб
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
Ў
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_rate
йmomentum_cachemз mи)mй*mк9mл:mмCmнDmоSmпTm░]m▒^m▓mm│nm┤wm╡xm╢	Нm╖	Оm╕	Хm╣	Цm║v╗ v╝)v╜*v╛9v┐:v└Cv┴Dv┬Sv├Tv─]v┼^v╞mv╟nv╚wv╔xv╩	Нv╦	Оv╠	Хv═	Цv╬*

кserving_default* 

0
 1*

0
 1*
* 
Ш
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

╖trace_0
╕trace_1* 

╣trace_0
║trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

└trace_0* 

┴trace_0* 

90
:1*

90
:1*
* 
Ш
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

╟trace_0* 

╚trace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

╬trace_0
╧trace_1* 

╨trace_0
╤trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

╫trace_0* 

╪trace_0* 

S0
T1*

S0
T1*
* 
Ш
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

▐trace_0* 

▀trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

хtrace_0
цtrace_1* 

чtrace_0
шtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

юtrace_0* 

яtrace_0* 

m0
n1*

m0
n1*
* 
Ш
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

їtrace_0* 

Ўtrace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

№trace_0
¤trace_1* 

■trace_0
 trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
Ь
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 

Н0
О1*

Н0
О1*
* 
Ю
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

Х0
Ц1*

Х0
Ц1*
* 
Ю
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

Ъtrace_0* 

Ыtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
Ь0
Э1*
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
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
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
Ю	variables
Я	keras_api

аtotal

бcount*
M
в	variables
г	keras_api

дtotal

еcount
ж
_fn_kwargs*

а0
б1*

Ю	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

д0
е1*

в	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Г}
VARIABLE_VALUENadam/conv2d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Nadam/batch_normalization_8/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Nadam/batch_normalization_8/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUENadam/conv2d_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Nadam/batch_normalization_9/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Nadam/batch_normalization_9/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUENadam/conv2d_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUENadam/conv2d_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Nadam/batch_normalization_10/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Nadam/batch_normalization_10/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUENadam/conv2d_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUENadam/conv2d_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Nadam/batch_normalization_11/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Nadam/batch_normalization_11/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUENadam/dense_4/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_4/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUENadam/dense_5/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_5/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUENadam/conv2d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Nadam/batch_normalization_8/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Nadam/batch_normalization_8/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUENadam/conv2d_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/conv2d_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Nadam/batch_normalization_9/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Nadam/batch_normalization_9/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUENadam/conv2d_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUENadam/conv2d_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Nadam/batch_normalization_10/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Nadam/batch_normalization_10/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUENadam/conv2d_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUENadam/conv2d_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE$Nadam/batch_normalization_11/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE#Nadam/batch_normalization_11/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUENadam/dense_4/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_4/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUENadam/dense_5/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUENadam/dense_5/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Nadam/conv2d_8/kernel/m/Read/ReadVariableOp)Nadam/conv2d_8/bias/m/Read/ReadVariableOp7Nadam/batch_normalization_8/gamma/m/Read/ReadVariableOp6Nadam/batch_normalization_8/beta/m/Read/ReadVariableOp+Nadam/conv2d_9/kernel/m/Read/ReadVariableOp)Nadam/conv2d_9/bias/m/Read/ReadVariableOp7Nadam/batch_normalization_9/gamma/m/Read/ReadVariableOp6Nadam/batch_normalization_9/beta/m/Read/ReadVariableOp,Nadam/conv2d_10/kernel/m/Read/ReadVariableOp*Nadam/conv2d_10/bias/m/Read/ReadVariableOp8Nadam/batch_normalization_10/gamma/m/Read/ReadVariableOp7Nadam/batch_normalization_10/beta/m/Read/ReadVariableOp,Nadam/conv2d_11/kernel/m/Read/ReadVariableOp*Nadam/conv2d_11/bias/m/Read/ReadVariableOp8Nadam/batch_normalization_11/gamma/m/Read/ReadVariableOp7Nadam/batch_normalization_11/beta/m/Read/ReadVariableOp*Nadam/dense_4/kernel/m/Read/ReadVariableOp(Nadam/dense_4/bias/m/Read/ReadVariableOp*Nadam/dense_5/kernel/m/Read/ReadVariableOp(Nadam/dense_5/bias/m/Read/ReadVariableOp+Nadam/conv2d_8/kernel/v/Read/ReadVariableOp)Nadam/conv2d_8/bias/v/Read/ReadVariableOp7Nadam/batch_normalization_8/gamma/v/Read/ReadVariableOp6Nadam/batch_normalization_8/beta/v/Read/ReadVariableOp+Nadam/conv2d_9/kernel/v/Read/ReadVariableOp)Nadam/conv2d_9/bias/v/Read/ReadVariableOp7Nadam/batch_normalization_9/gamma/v/Read/ReadVariableOp6Nadam/batch_normalization_9/beta/v/Read/ReadVariableOp,Nadam/conv2d_10/kernel/v/Read/ReadVariableOp*Nadam/conv2d_10/bias/v/Read/ReadVariableOp8Nadam/batch_normalization_10/gamma/v/Read/ReadVariableOp7Nadam/batch_normalization_10/beta/v/Read/ReadVariableOp,Nadam/conv2d_11/kernel/v/Read/ReadVariableOp*Nadam/conv2d_11/bias/v/Read/ReadVariableOp8Nadam/batch_normalization_11/gamma/v/Read/ReadVariableOp7Nadam/batch_normalization_11/beta/v/Read/ReadVariableOp*Nadam/dense_4/kernel/v/Read/ReadVariableOp(Nadam/dense_4/bias/v/Read/ReadVariableOp*Nadam/dense_5/kernel/v/Read/ReadVariableOp(Nadam/dense_5/bias/v/Read/ReadVariableOpConst*[
TinT
R2P	*
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
GPU2*0J 8В *'
f"R 
__inference__traced_save_17392
╩
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_9/kernelconv2d_9/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_10/kernelconv2d_10/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_11/kernelconv2d_11/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotal_1count_1totalcountNadam/conv2d_8/kernel/mNadam/conv2d_8/bias/m#Nadam/batch_normalization_8/gamma/m"Nadam/batch_normalization_8/beta/mNadam/conv2d_9/kernel/mNadam/conv2d_9/bias/m#Nadam/batch_normalization_9/gamma/m"Nadam/batch_normalization_9/beta/mNadam/conv2d_10/kernel/mNadam/conv2d_10/bias/m$Nadam/batch_normalization_10/gamma/m#Nadam/batch_normalization_10/beta/mNadam/conv2d_11/kernel/mNadam/conv2d_11/bias/m$Nadam/batch_normalization_11/gamma/m#Nadam/batch_normalization_11/beta/mNadam/dense_4/kernel/mNadam/dense_4/bias/mNadam/dense_5/kernel/mNadam/dense_5/bias/mNadam/conv2d_8/kernel/vNadam/conv2d_8/bias/v#Nadam/batch_normalization_8/gamma/v"Nadam/batch_normalization_8/beta/vNadam/conv2d_9/kernel/vNadam/conv2d_9/bias/v#Nadam/batch_normalization_9/gamma/v"Nadam/batch_normalization_9/beta/vNadam/conv2d_10/kernel/vNadam/conv2d_10/bias/v$Nadam/batch_normalization_10/gamma/v#Nadam/batch_normalization_10/beta/vNadam/conv2d_11/kernel/vNadam/conv2d_11/bias/v$Nadam/batch_normalization_11/gamma/v#Nadam/batch_normalization_11/beta/vNadam/dense_4/kernel/vNadam/dense_4/bias/vNadam/dense_5/kernel/vNadam/dense_5/bias/v*Z
TinS
Q2O*
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
GPU2*0J 8В **
f%R#
!__inference__traced_restore_17636═▓
Т	
╨
5__inference_batch_normalization_9_layer_call_fn_16841

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15412Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Й
№
C__inference_conv2d_9_layer_call_and_return_conditional_losses_16828

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         sЫj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         sЫw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         wЯ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         wЯ
 
_user_specified_nameinputs
Р	
╨
5__inference_batch_normalization_8_layer_call_fn_16762

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15367Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╥L
ф
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_15776

inputs(
conv2d_8_15637:
conv2d_8_15639:)
batch_normalization_8_15642:)
batch_normalization_8_15644:)
batch_normalization_8_15646:)
batch_normalization_8_15648:(
conv2d_9_15664:
conv2d_9_15666:)
batch_normalization_9_15669:)
batch_normalization_9_15671:)
batch_normalization_9_15673:)
batch_normalization_9_15675:)
conv2d_10_15691:
conv2d_10_15693:*
batch_normalization_10_15696:*
batch_normalization_10_15698:*
batch_normalization_10_15700:*
batch_normalization_10_15702:)
conv2d_11_15718:
conv2d_11_15720:*
batch_normalization_11_15723:*
batch_normalization_11_15725:*
batch_normalization_11_15727:*
batch_normalization_11_15729: 
dense_4_15753:	и

dense_4_15755:

dense_5_15770:

dense_5_15772:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCall·
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_15637conv2d_8_15639*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636П
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_15642batch_normalization_8_15644batch_normalization_8_15646batch_normalization_8_15648*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15336Б
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         wЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387Ы
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_15664conv2d_9_15666*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663О
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_9_15669batch_normalization_9_15671batch_normalization_9_15673batch_normalization_9_15675*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15412И
#average_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         9M* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_6/PartitionedCall:output:0conv2d_10_15691conv2d_10_15693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690Ф
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_10_15696batch_normalization_10_15698batch_normalization_10_15700batch_normalization_10_15702*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15488Й
#average_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539в
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_7/PartitionedCall:output:0conv2d_11_15718conv2d_11_15720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717Ф
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_11_15723batch_normalization_11_15725batch_normalization_11_15727batch_normalization_11_15729*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15564Й
#average_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615у
flatten_2/PartitionedCallPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_15753dense_4_15755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_15752О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_15770dense_5_15772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_15769w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┌
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
┴
Ф
'__inference_dense_5_layer_call_fn_17124

inputs
unknown:

	unknown_0:
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_15769o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
Т	
╤
6__inference_batch_normalization_11_layer_call_fn_17038

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15595Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
э
Ю
)__inference_conv2d_11_layer_call_fn_17001

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         $`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         %
 
_user_specified_nameinputs
Ю

є
B__inference_dense_5_layer_call_and_return_conditional_losses_15769

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17074

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╦
Ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16780

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Э

Ї
B__inference_dense_4_layer_call_and_return_conditional_losses_17115

inputs1
matmul_readvariableop_resource:	и
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	и
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         и: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         и
 
_user_specified_nameinputs
┴
O
3__inference_average_pooling2d_6_layer_call_fn_16895

inputs
identity▀
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
GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463Г
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
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    и  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         иY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         и"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ф	
╤
6__inference_batch_normalization_11_layer_call_fn_17025

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15564Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
П
№
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ю╛k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ю╛w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ё└: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
╦
Ы
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15412

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Т	
╤
6__inference_batch_normalization_10_layer_call_fn_16946

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15519Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
э
Ю
)__inference_conv2d_10_layer_call_fn_16909

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         7K`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         9M: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         9M
 
_user_specified_nameinputs
Ж╞
╝%
 __inference__wrapped_model_15314
conv2d_8_input_
Emy_model_cells_14_1x_batch256_conv2d_8_conv2d_readvariableop_resource:T
Fmy_model_cells_14_1x_batch256_conv2d_8_biasadd_readvariableop_resource:Y
Kmy_model_cells_14_1x_batch256_batch_normalization_8_readvariableop_resource:[
Mmy_model_cells_14_1x_batch256_batch_normalization_8_readvariableop_1_resource:j
\my_model_cells_14_1x_batch256_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:l
^my_model_cells_14_1x_batch256_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:_
Emy_model_cells_14_1x_batch256_conv2d_9_conv2d_readvariableop_resource:T
Fmy_model_cells_14_1x_batch256_conv2d_9_biasadd_readvariableop_resource:Y
Kmy_model_cells_14_1x_batch256_batch_normalization_9_readvariableop_resource:[
Mmy_model_cells_14_1x_batch256_batch_normalization_9_readvariableop_1_resource:j
\my_model_cells_14_1x_batch256_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:l
^my_model_cells_14_1x_batch256_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_14_1x_batch256_conv2d_10_conv2d_readvariableop_resource:U
Gmy_model_cells_14_1x_batch256_conv2d_10_biasadd_readvariableop_resource:Z
Lmy_model_cells_14_1x_batch256_batch_normalization_10_readvariableop_resource:\
Nmy_model_cells_14_1x_batch256_batch_normalization_10_readvariableop_1_resource:k
]my_model_cells_14_1x_batch256_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_14_1x_batch256_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:`
Fmy_model_cells_14_1x_batch256_conv2d_11_conv2d_readvariableop_resource:U
Gmy_model_cells_14_1x_batch256_conv2d_11_biasadd_readvariableop_resource:Z
Lmy_model_cells_14_1x_batch256_batch_normalization_11_readvariableop_resource:\
Nmy_model_cells_14_1x_batch256_batch_normalization_11_readvariableop_1_resource:k
]my_model_cells_14_1x_batch256_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:m
_my_model_cells_14_1x_batch256_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:W
Dmy_model_cells_14_1x_batch256_dense_4_matmul_readvariableop_resource:	и
S
Emy_model_cells_14_1x_batch256_dense_4_biasadd_readvariableop_resource:
V
Dmy_model_cells_14_1x_batch256_dense_5_matmul_readvariableop_resource:
S
Emy_model_cells_14_1x_batch256_dense_5_biasadd_readvariableop_resource:
identityИвTmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOpвVmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1вCmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOpвEmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_1вTmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOpвVmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1вCmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOpвEmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_1вSmy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOpвUmy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1вBmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOpвDmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_1вSmy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOpвUmy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1вBmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOpвDmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_1в>my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOpв=my_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOpв>my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOpв=my_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOpв=my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOpв<my_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOpв=my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOpв<my_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOpв<my_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOpв;my_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOpв<my_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOpв;my_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOp╩
<my_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOpReadVariableOpEmy_model_cells_14_1x_batch256_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Є
-my_model_cells_14_1X_Batch256/conv2d_8/Conv2DConv2Dconv2d_8_inputDmy_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛*
paddingVALID*
strides
└
=my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOpReadVariableOpFmy_model_cells_14_1x_batch256_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ї
.my_model_cells_14_1X_Batch256/conv2d_8/BiasAddBiasAdd6my_model_cells_14_1X_Batch256/conv2d_8/Conv2D:output:0Emy_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛и
+my_model_cells_14_1X_Batch256/conv2d_8/ReluRelu7my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:         ю╛╩
Bmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOpReadVariableOpKmy_model_cells_14_1x_batch256_batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype0╬
Dmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_1ReadVariableOpMmy_model_cells_14_1x_batch256_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype0ь
Smy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp\my_model_cells_14_1x_batch256_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ё
Umy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^my_model_cells_14_1x_batch256_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0я
Dmy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3FusedBatchNormV39my_model_cells_14_1X_Batch256/conv2d_8/Relu:activations:0Jmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp:value:0Lmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_1:value:0[my_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0]my_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ю╛:::::*
epsilon%oГ:*
is_training( °
5my_model_cells_14_1X_Batch256/max_pooling2d_2/MaxPoolMaxPoolHmy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3:y:0*0
_output_shapes
:         wЯ*
ksize
*
paddingVALID*
strides
╩
<my_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOpReadVariableOpEmy_model_cells_14_1x_batch256_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0б
-my_model_cells_14_1X_Batch256/conv2d_9/Conv2DConv2D>my_model_cells_14_1X_Batch256/max_pooling2d_2/MaxPool:output:0Dmy_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫ*
paddingVALID*
strides
└
=my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOpReadVariableOpFmy_model_cells_14_1x_batch256_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0є
.my_model_cells_14_1X_Batch256/conv2d_9/BiasAddBiasAdd6my_model_cells_14_1X_Batch256/conv2d_9/Conv2D:output:0Emy_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫз
+my_model_cells_14_1X_Batch256/conv2d_9/ReluRelu7my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         sЫ╩
Bmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOpReadVariableOpKmy_model_cells_14_1x_batch256_batch_normalization_9_readvariableop_resource*
_output_shapes
:*
dtype0╬
Dmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_1ReadVariableOpMmy_model_cells_14_1x_batch256_batch_normalization_9_readvariableop_1_resource*
_output_shapes
:*
dtype0ь
Smy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp\my_model_cells_14_1x_batch256_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Ё
Umy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^my_model_cells_14_1x_batch256_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
Dmy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3FusedBatchNormV39my_model_cells_14_1X_Batch256/conv2d_9/Relu:activations:0Jmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp:value:0Lmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_1:value:0[my_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0]my_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         sЫ:::::*
epsilon%oГ:*
is_training( Д
9my_model_cells_14_1X_Batch256/average_pooling2d_6/AvgPoolAvgPoolHmy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         9M*
ksize
*
paddingVALID*
strides
╠
=my_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_14_1x_batch256_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ж
.my_model_cells_14_1X_Batch256/conv2d_10/Conv2DConv2DBmy_model_cells_14_1X_Batch256/average_pooling2d_6/AvgPool:output:0Emy_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7K*
paddingVALID*
strides
┬
>my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_14_1x_batch256_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
/my_model_cells_14_1X_Batch256/conv2d_10/BiasAddBiasAdd7my_model_cells_14_1X_Batch256/conv2d_10/Conv2D:output:0Fmy_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7Kи
,my_model_cells_14_1X_Batch256/conv2d_10/ReluRelu8my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         7K╠
Cmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOpReadVariableOpLmy_model_cells_14_1x_batch256_batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0╨
Emy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_1ReadVariableOpNmy_model_cells_14_1x_batch256_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
Tmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_14_1x_batch256_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Є
Vmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_14_1x_batch256_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0є
Emy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3:my_model_cells_14_1X_Batch256/conv2d_10/Relu:activations:0Kmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp:value:0Mmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_1:value:0\my_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         7K:::::*
epsilon%oГ:*
is_training( Е
9my_model_cells_14_1X_Batch256/average_pooling2d_7/AvgPoolAvgPoolImy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         %*
ksize
*
paddingVALID*
strides
╠
=my_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOpReadVariableOpFmy_model_cells_14_1x_batch256_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ж
.my_model_cells_14_1X_Batch256/conv2d_11/Conv2DConv2DBmy_model_cells_14_1X_Batch256/average_pooling2d_7/AvgPool:output:0Emy_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $*
paddingVALID*
strides
┬
>my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpGmy_model_cells_14_1x_batch256_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
/my_model_cells_14_1X_Batch256/conv2d_11/BiasAddBiasAdd7my_model_cells_14_1X_Batch256/conv2d_11/Conv2D:output:0Fmy_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $и
,my_model_cells_14_1X_Batch256/conv2d_11/ReluRelu8my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         $╠
Cmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOpReadVariableOpLmy_model_cells_14_1x_batch256_batch_normalization_11_readvariableop_resource*
_output_shapes
:*
dtype0╨
Emy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_1ReadVariableOpNmy_model_cells_14_1x_batch256_batch_normalization_11_readvariableop_1_resource*
_output_shapes
:*
dtype0ю
Tmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp]my_model_cells_14_1x_batch256_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0Є
Vmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_my_model_cells_14_1x_batch256_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0є
Emy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3:my_model_cells_14_1X_Batch256/conv2d_11/Relu:activations:0Kmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp:value:0Mmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_1:value:0\my_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0^my_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         $:::::*
epsilon%oГ:*
is_training( Е
9my_model_cells_14_1X_Batch256/average_pooling2d_8/AvgPoolAvgPoolImy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
~
-my_model_cells_14_1X_Batch256/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"    и  щ
/my_model_cells_14_1X_Batch256/flatten_2/ReshapeReshapeBmy_model_cells_14_1X_Batch256/average_pooling2d_8/AvgPool:output:06my_model_cells_14_1X_Batch256/flatten_2/Const:output:0*
T0*(
_output_shapes
:         и┴
;my_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOpReadVariableOpDmy_model_cells_14_1x_batch256_dense_4_matmul_readvariableop_resource*
_output_shapes
:	и
*
dtype0ч
,my_model_cells_14_1X_Batch256/dense_4/MatMulMatMul8my_model_cells_14_1X_Batch256/flatten_2/Reshape:output:0Cmy_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
╛
<my_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOpReadVariableOpEmy_model_cells_14_1x_batch256_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ш
-my_model_cells_14_1X_Batch256/dense_4/BiasAddBiasAdd6my_model_cells_14_1X_Batch256/dense_4/MatMul:product:0Dmy_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ь
*my_model_cells_14_1X_Batch256/dense_4/ReluRelu6my_model_cells_14_1X_Batch256/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
└
;my_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOpReadVariableOpDmy_model_cells_14_1x_batch256_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ч
,my_model_cells_14_1X_Batch256/dense_5/MatMulMatMul8my_model_cells_14_1X_Batch256/dense_4/Relu:activations:0Cmy_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╛
<my_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOpReadVariableOpEmy_model_cells_14_1x_batch256_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ш
-my_model_cells_14_1X_Batch256/dense_5/BiasAddBiasAdd6my_model_cells_14_1X_Batch256/dense_5/MatMul:product:0Dmy_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         в
-my_model_cells_14_1X_Batch256/dense_5/SoftmaxSoftmax6my_model_cells_14_1X_Batch256/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
IdentityIdentity7my_model_cells_14_1X_Batch256/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOpU^my_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOpW^my_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOpF^my_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_1U^my_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOpW^my_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1D^my_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOpF^my_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_1T^my_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOpV^my_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1C^my_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOpE^my_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_1T^my_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOpV^my_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1C^my_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOpE^my_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_1?^my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOp>^my_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOp?^my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOp>^my_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOp>^my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOp=^my_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOp>^my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOp=^my_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOp=^my_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOp<^my_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOp=^my_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOp<^my_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2м
Tmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOpTmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2░
Vmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_14_1X_Batch256/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12К
Cmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOpCmy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp2О
Emy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_1Emy_model_cells_14_1X_Batch256/batch_normalization_10/ReadVariableOp_12м
Tmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOpTmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2░
Vmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Vmy_model_cells_14_1X_Batch256/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12К
Cmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOpCmy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp2О
Emy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_1Emy_model_cells_14_1X_Batch256/batch_normalization_11/ReadVariableOp_12к
Smy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOpSmy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2о
Umy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Umy_model_cells_14_1X_Batch256/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12И
Bmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOpBmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp2М
Dmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_1Dmy_model_cells_14_1X_Batch256/batch_normalization_8/ReadVariableOp_12к
Smy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOpSmy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2о
Umy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Umy_model_cells_14_1X_Batch256/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12И
Bmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOpBmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp2М
Dmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_1Dmy_model_cells_14_1X_Batch256/batch_normalization_9/ReadVariableOp_12А
>my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOp>my_model_cells_14_1X_Batch256/conv2d_10/BiasAdd/ReadVariableOp2~
=my_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOp=my_model_cells_14_1X_Batch256/conv2d_10/Conv2D/ReadVariableOp2А
>my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOp>my_model_cells_14_1X_Batch256/conv2d_11/BiasAdd/ReadVariableOp2~
=my_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOp=my_model_cells_14_1X_Batch256/conv2d_11/Conv2D/ReadVariableOp2~
=my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOp=my_model_cells_14_1X_Batch256/conv2d_8/BiasAdd/ReadVariableOp2|
<my_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOp<my_model_cells_14_1X_Batch256/conv2d_8/Conv2D/ReadVariableOp2~
=my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOp=my_model_cells_14_1X_Batch256/conv2d_9/BiasAdd/ReadVariableOp2|
<my_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOp<my_model_cells_14_1X_Batch256/conv2d_9/Conv2D/ReadVariableOp2|
<my_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOp<my_model_cells_14_1X_Batch256/dense_4/BiasAdd/ReadVariableOp2z
;my_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOp;my_model_cells_14_1X_Batch256/dense_4/MatMul/ReadVariableOp2|
<my_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOp<my_model_cells_14_1X_Batch256/dense_5/BiasAdd/ReadVariableOp2z
;my_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOp;my_model_cells_14_1X_Batch256/dense_5/MatMul/ReadVariableOp:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
ш
·
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16439

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	и


unknown_24:


unknown_25:


unknown_26:
identityИвStatefulPartitionedCall╙
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
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *a
f\RZ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_15776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
Я
j
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_17084

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
р
·
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16500

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	и


unknown_24:


unknown_25:


unknown_26:
identityИвStatefulPartitionedCall╦
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
:         *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *a
f\RZ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16039o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15519

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Й
№
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         sЫj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         sЫw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         wЯ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         wЯ
 
_user_specified_nameinputs
Я
j
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_16900

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
Д
¤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_17012

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $*
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
:         $X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         $i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         $w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         %
 
_user_specified_nameinputs
─
Х
'__inference_dense_4_layer_call_fn_17104

inputs
unknown:	и

	unknown_0:

identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_15752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         и: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         и
 
_user_specified_nameinputs
є
Э
(__inference_conv2d_8_layer_call_fn_16725

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ю╛`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ё└: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_2_layer_call_fn_16803

inputs
identity█
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
GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387Г
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
°
В
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16159
conv2d_8_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	и


unknown_24:


unknown_25:


unknown_26:
identityИвStatefulPartitionedCall╙
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *a
f\RZ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16039o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
Я
j
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539

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
Е
┐
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16798

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15488

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16982

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16808

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
Д
¤
D__inference_conv2d_10_layer_call_and_return_conditional_losses_16920

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7K*
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
:         7KX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         7Ki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         7Kw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         9M: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         9M
 
_user_specified_nameinputs
Э

Ї
B__inference_dense_4_layer_call_and_return_conditional_losses_15752

inputs1
matmul_readvariableop_resource:	и
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	и
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         и: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         и
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15595

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Я
j
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615

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
я
Э
(__inference_conv2d_9_layer_call_fn_16817

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         sЫ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         wЯ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         wЯ
 
_user_specified_nameinputs
┴
O
3__inference_average_pooling2d_7_layer_call_fn_16987

inputs
identity▀
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
GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539Г
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
╠
Ь
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17056

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
П
№
C__inference_conv2d_8_layer_call_and_return_conditional_losses_16736

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ю╛k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ю╛w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ё└: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
Т	
╨
5__inference_batch_normalization_8_layer_call_fn_16749

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15336Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
о
ш
#__inference_signature_wrapper_16378
conv2d_8_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	и


unknown_24:


unknown_25:


unknown_26:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_15314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
а╗
з3
!__inference__traced_restore_17636
file_prefix:
 assignvariableop_conv2d_8_kernel:.
 assignvariableop_1_conv2d_8_bias:<
.assignvariableop_2_batch_normalization_8_gamma:;
-assignvariableop_3_batch_normalization_8_beta:B
4assignvariableop_4_batch_normalization_8_moving_mean:F
8assignvariableop_5_batch_normalization_8_moving_variance:<
"assignvariableop_6_conv2d_9_kernel:.
 assignvariableop_7_conv2d_9_bias:<
.assignvariableop_8_batch_normalization_9_gamma:;
-assignvariableop_9_batch_normalization_9_beta:C
5assignvariableop_10_batch_normalization_9_moving_mean:G
9assignvariableop_11_batch_normalization_9_moving_variance:>
$assignvariableop_12_conv2d_10_kernel:0
"assignvariableop_13_conv2d_10_bias:>
0assignvariableop_14_batch_normalization_10_gamma:=
/assignvariableop_15_batch_normalization_10_beta:D
6assignvariableop_16_batch_normalization_10_moving_mean:H
:assignvariableop_17_batch_normalization_10_moving_variance:>
$assignvariableop_18_conv2d_11_kernel:0
"assignvariableop_19_conv2d_11_bias:>
0assignvariableop_20_batch_normalization_11_gamma:=
/assignvariableop_21_batch_normalization_11_beta:D
6assignvariableop_22_batch_normalization_11_moving_mean:H
:assignvariableop_23_batch_normalization_11_moving_variance:5
"assignvariableop_24_dense_4_kernel:	и
.
 assignvariableop_25_dense_4_bias:
4
"assignvariableop_26_dense_5_kernel:
.
 assignvariableop_27_dense_5_bias:(
assignvariableop_28_nadam_iter:	 *
 assignvariableop_29_nadam_beta_1: *
 assignvariableop_30_nadam_beta_2: )
assignvariableop_31_nadam_decay: 1
'assignvariableop_32_nadam_learning_rate: 2
(assignvariableop_33_nadam_momentum_cache: %
assignvariableop_34_total_1: %
assignvariableop_35_count_1: #
assignvariableop_36_total: #
assignvariableop_37_count: E
+assignvariableop_38_nadam_conv2d_8_kernel_m:7
)assignvariableop_39_nadam_conv2d_8_bias_m:E
7assignvariableop_40_nadam_batch_normalization_8_gamma_m:D
6assignvariableop_41_nadam_batch_normalization_8_beta_m:E
+assignvariableop_42_nadam_conv2d_9_kernel_m:7
)assignvariableop_43_nadam_conv2d_9_bias_m:E
7assignvariableop_44_nadam_batch_normalization_9_gamma_m:D
6assignvariableop_45_nadam_batch_normalization_9_beta_m:F
,assignvariableop_46_nadam_conv2d_10_kernel_m:8
*assignvariableop_47_nadam_conv2d_10_bias_m:F
8assignvariableop_48_nadam_batch_normalization_10_gamma_m:E
7assignvariableop_49_nadam_batch_normalization_10_beta_m:F
,assignvariableop_50_nadam_conv2d_11_kernel_m:8
*assignvariableop_51_nadam_conv2d_11_bias_m:F
8assignvariableop_52_nadam_batch_normalization_11_gamma_m:E
7assignvariableop_53_nadam_batch_normalization_11_beta_m:=
*assignvariableop_54_nadam_dense_4_kernel_m:	и
6
(assignvariableop_55_nadam_dense_4_bias_m:
<
*assignvariableop_56_nadam_dense_5_kernel_m:
6
(assignvariableop_57_nadam_dense_5_bias_m:E
+assignvariableop_58_nadam_conv2d_8_kernel_v:7
)assignvariableop_59_nadam_conv2d_8_bias_v:E
7assignvariableop_60_nadam_batch_normalization_8_gamma_v:D
6assignvariableop_61_nadam_batch_normalization_8_beta_v:E
+assignvariableop_62_nadam_conv2d_9_kernel_v:7
)assignvariableop_63_nadam_conv2d_9_bias_v:E
7assignvariableop_64_nadam_batch_normalization_9_gamma_v:D
6assignvariableop_65_nadam_batch_normalization_9_beta_v:F
,assignvariableop_66_nadam_conv2d_10_kernel_v:8
*assignvariableop_67_nadam_conv2d_10_bias_v:F
8assignvariableop_68_nadam_batch_normalization_10_gamma_v:E
7assignvariableop_69_nadam_batch_normalization_10_beta_v:F
,assignvariableop_70_nadam_conv2d_11_kernel_v:8
*assignvariableop_71_nadam_conv2d_11_bias_v:F
8assignvariableop_72_nadam_batch_normalization_11_gamma_v:E
7assignvariableop_73_nadam_batch_normalization_11_beta_v:=
*assignvariableop_74_nadam_dense_4_kernel_v:	и
6
(assignvariableop_75_nadam_dense_4_bias_v:
<
*assignvariableop_76_nadam_dense_5_kernel_v:
6
(assignvariableop_77_nadam_dense_5_bias_v:
identity_79ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_8вAssignVariableOp_9п+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*╒*
value╦*B╚*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHС
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B м
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╥
_output_shapes┐
╝:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_8_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_8_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_8_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_9_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_9_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_9_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_9_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_10_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_10_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_10_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_10_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_11_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_11_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_11_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_11_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_4_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_4_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_5_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_5_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:П
AssignVariableOp_28AssignVariableOpassignvariableop_28_nadam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_29AssignVariableOp assignvariableop_29_nadam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_30AssignVariableOp assignvariableop_30_nadam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_31AssignVariableOpassignvariableop_31_nadam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_32AssignVariableOp'assignvariableop_32_nadam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_33AssignVariableOp(assignvariableop_33_nadam_momentum_cacheIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_38AssignVariableOp+assignvariableop_38_nadam_conv2d_8_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_39AssignVariableOp)assignvariableop_39_nadam_conv2d_8_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_40AssignVariableOp7assignvariableop_40_nadam_batch_normalization_8_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_41AssignVariableOp6assignvariableop_41_nadam_batch_normalization_8_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_42AssignVariableOp+assignvariableop_42_nadam_conv2d_9_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_43AssignVariableOp)assignvariableop_43_nadam_conv2d_9_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_44AssignVariableOp7assignvariableop_44_nadam_batch_normalization_9_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_45AssignVariableOp6assignvariableop_45_nadam_batch_normalization_9_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_46AssignVariableOp,assignvariableop_46_nadam_conv2d_10_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_47AssignVariableOp*assignvariableop_47_nadam_conv2d_10_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_48AssignVariableOp8assignvariableop_48_nadam_batch_normalization_10_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_49AssignVariableOp7assignvariableop_49_nadam_batch_normalization_10_beta_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_50AssignVariableOp,assignvariableop_50_nadam_conv2d_11_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_51AssignVariableOp*assignvariableop_51_nadam_conv2d_11_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_52AssignVariableOp8assignvariableop_52_nadam_batch_normalization_11_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_53AssignVariableOp7assignvariableop_53_nadam_batch_normalization_11_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_54AssignVariableOp*assignvariableop_54_nadam_dense_4_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_55AssignVariableOp(assignvariableop_55_nadam_dense_4_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_56AssignVariableOp*assignvariableop_56_nadam_dense_5_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_57AssignVariableOp(assignvariableop_57_nadam_dense_5_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_58AssignVariableOp+assignvariableop_58_nadam_conv2d_8_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_59AssignVariableOp)assignvariableop_59_nadam_conv2d_8_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_60AssignVariableOp7assignvariableop_60_nadam_batch_normalization_8_gamma_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_61AssignVariableOp6assignvariableop_61_nadam_batch_normalization_8_beta_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_62AssignVariableOp+assignvariableop_62_nadam_conv2d_9_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_63AssignVariableOp)assignvariableop_63_nadam_conv2d_9_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_64AssignVariableOp7assignvariableop_64_nadam_batch_normalization_9_gamma_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_65AssignVariableOp6assignvariableop_65_nadam_batch_normalization_9_beta_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_66AssignVariableOp,assignvariableop_66_nadam_conv2d_10_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_67AssignVariableOp*assignvariableop_67_nadam_conv2d_10_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_68AssignVariableOp8assignvariableop_68_nadam_batch_normalization_10_gamma_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_69AssignVariableOp7assignvariableop_69_nadam_batch_normalization_10_beta_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_70AssignVariableOp,assignvariableop_70_nadam_conv2d_11_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_71AssignVariableOp*assignvariableop_71_nadam_conv2d_11_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_72AssignVariableOp8assignvariableop_72_nadam_batch_normalization_11_gamma_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_73AssignVariableOp7assignvariableop_73_nadam_batch_normalization_11_beta_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_74AssignVariableOp*assignvariableop_74_nadam_dense_4_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_75AssignVariableOp(assignvariableop_75_nadam_dense_4_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_76AssignVariableOp*assignvariableop_76_nadam_dense_5_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_77AssignVariableOp(assignvariableop_77_nadam_dense_5_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_79IdentityIdentity_78:output:0^NoOp_1*
T0*
_output_shapes
: Ё
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_79Identity_79:output:0*│
_input_shapesб
Ю: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
┴
O
3__inference_average_pooling2d_8_layer_call_fn_17079

inputs
identity▀
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
GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615Г
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
тL
ь
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16309
conv2d_8_input(
conv2d_8_16237:
conv2d_8_16239:)
batch_normalization_8_16242:)
batch_normalization_8_16244:)
batch_normalization_8_16246:)
batch_normalization_8_16248:(
conv2d_9_16252:
conv2d_9_16254:)
batch_normalization_9_16257:)
batch_normalization_9_16259:)
batch_normalization_9_16261:)
batch_normalization_9_16263:)
conv2d_10_16267:
conv2d_10_16269:*
batch_normalization_10_16272:*
batch_normalization_10_16274:*
batch_normalization_10_16276:*
batch_normalization_10_16278:)
conv2d_11_16282:
conv2d_11_16284:*
batch_normalization_11_16287:*
batch_normalization_11_16289:*
batch_normalization_11_16291:*
batch_normalization_11_16293: 
dense_4_16298:	и

dense_4_16300:

dense_5_16303:

dense_5_16305:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallВ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_16237conv2d_8_16239*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636Н
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_16242batch_normalization_8_16244batch_normalization_8_16246batch_normalization_8_16248*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15367Б
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         wЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387Ы
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_16252conv2d_9_16254*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663М
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_9_16257batch_normalization_9_16259batch_normalization_9_16261batch_normalization_9_16263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15443И
#average_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         9M* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_6/PartitionedCall:output:0conv2d_10_16267conv2d_10_16269*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690Т
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_10_16272batch_normalization_10_16274batch_normalization_10_16276batch_normalization_10_16278*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15519Й
#average_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539в
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_7/PartitionedCall:output:0conv2d_11_16282conv2d_11_16284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717Т
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_11_16287batch_normalization_11_16289batch_normalization_11_16291batch_normalization_11_16293*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15595Й
#average_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615у
flatten_2/PartitionedCallPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_16298dense_4_16300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_15752О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_16303dense_5_16305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_15769w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┌
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
╦
Ы
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16872

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╜Д
▄
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16608

inputsA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:;
-batch_normalization_8_readvariableop_resource:=
/batch_normalization_8_readvariableop_1_resource:L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:;
-batch_normalization_9_readvariableop_resource:=
/batch_normalization_9_readvariableop_1_resource:L
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:<
.batch_normalization_10_readvariableop_resource:>
0batch_normalization_10_readvariableop_1_resource:M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:<
.batch_normalization_11_readvariableop_resource:>
0batch_normalization_11_readvariableop_1_resource:M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:9
&dense_4_matmul_readvariableop_resource:	и
5
'dense_4_biasadd_readvariableop_resource:
8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:
identityИв6batch_normalization_10/FusedBatchNormV3/ReadVariableOpв8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_10/ReadVariableOpв'batch_normalization_10/ReadVariableOp_1в6batch_normalization_11/FusedBatchNormV3/ReadVariableOpв8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_11/ReadVariableOpв'batch_normalization_11/ReadVariableOp_1в5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1в conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpО
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛*
paddingVALID*
strides
Д
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛l
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:         ю╛О
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╗
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/Relu:activations:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ю╛:::::*
epsilon%oГ:*
is_training( ╝
max_pooling2d_2/MaxPoolMaxPool*batch_normalization_8/FusedBatchNormV3:y:0*0
_output_shapes
:         wЯ*
ksize
*
paddingVALID*
strides
О
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╟
conv2d_9/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫ*
paddingVALID*
strides
Д
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫk
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         sЫО
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0║
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3conv2d_9/Relu:activations:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         sЫ:::::*
epsilon%oГ:*
is_training( ╚
average_pooling2d_6/AvgPoolAvgPool*batch_normalization_9/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         9M*
ksize
*
paddingVALID*
strides
Р
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╠
conv2d_10/Conv2DConv2D$average_pooling2d_6/AvgPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7K*
paddingVALID*
strides
Ж
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7Kl
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         7KР
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┐
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_10/Relu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         7K:::::*
epsilon%oГ:*
is_training( ╔
average_pooling2d_7/AvgPoolAvgPool+batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         %*
ksize
*
paddingVALID*
strides
Р
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╠
conv2d_11/Conv2DConv2D$average_pooling2d_7/AvgPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $*
paddingVALID*
strides
Ж
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         $Р
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┐
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_11/Relu:activations:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         $:::::*
epsilon%oГ:*
is_training( ╔
average_pooling2d_8/AvgPoolAvgPool+batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"    и  П
flatten_2/ReshapeReshape$average_pooling2d_8/AvgPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         иЕ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	и
*
dtype0Н
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Н
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ш	
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
Е
┐
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15443

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╬Ъ
┴#
__inference__traced_save_17392
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_nadam_conv2d_8_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_8_bias_m_read_readvariableopB
>savev2_nadam_batch_normalization_8_gamma_m_read_readvariableopA
=savev2_nadam_batch_normalization_8_beta_m_read_readvariableop6
2savev2_nadam_conv2d_9_kernel_m_read_readvariableop4
0savev2_nadam_conv2d_9_bias_m_read_readvariableopB
>savev2_nadam_batch_normalization_9_gamma_m_read_readvariableopA
=savev2_nadam_batch_normalization_9_beta_m_read_readvariableop7
3savev2_nadam_conv2d_10_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_10_bias_m_read_readvariableopC
?savev2_nadam_batch_normalization_10_gamma_m_read_readvariableopB
>savev2_nadam_batch_normalization_10_beta_m_read_readvariableop7
3savev2_nadam_conv2d_11_kernel_m_read_readvariableop5
1savev2_nadam_conv2d_11_bias_m_read_readvariableopC
?savev2_nadam_batch_normalization_11_gamma_m_read_readvariableopB
>savev2_nadam_batch_normalization_11_beta_m_read_readvariableop5
1savev2_nadam_dense_4_kernel_m_read_readvariableop3
/savev2_nadam_dense_4_bias_m_read_readvariableop5
1savev2_nadam_dense_5_kernel_m_read_readvariableop3
/savev2_nadam_dense_5_bias_m_read_readvariableop6
2savev2_nadam_conv2d_8_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_8_bias_v_read_readvariableopB
>savev2_nadam_batch_normalization_8_gamma_v_read_readvariableopA
=savev2_nadam_batch_normalization_8_beta_v_read_readvariableop6
2savev2_nadam_conv2d_9_kernel_v_read_readvariableop4
0savev2_nadam_conv2d_9_bias_v_read_readvariableopB
>savev2_nadam_batch_normalization_9_gamma_v_read_readvariableopA
=savev2_nadam_batch_normalization_9_beta_v_read_readvariableop7
3savev2_nadam_conv2d_10_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_10_bias_v_read_readvariableopC
?savev2_nadam_batch_normalization_10_gamma_v_read_readvariableopB
>savev2_nadam_batch_normalization_10_beta_v_read_readvariableop7
3savev2_nadam_conv2d_11_kernel_v_read_readvariableop5
1savev2_nadam_conv2d_11_bias_v_read_readvariableopC
?savev2_nadam_batch_normalization_11_gamma_v_read_readvariableopB
>savev2_nadam_batch_normalization_11_beta_v_read_readvariableop5
1savev2_nadam_dense_4_kernel_v_read_readvariableop3
/savev2_nadam_dense_4_bias_v_read_readvariableop5
1savev2_nadam_dense_5_kernel_v_read_readvariableop3
/savev2_nadam_dense_5_bias_v_read_readvariableop
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
: м+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*╒*
value╦*B╚*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHО
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_nadam_conv2d_8_kernel_m_read_readvariableop0savev2_nadam_conv2d_8_bias_m_read_readvariableop>savev2_nadam_batch_normalization_8_gamma_m_read_readvariableop=savev2_nadam_batch_normalization_8_beta_m_read_readvariableop2savev2_nadam_conv2d_9_kernel_m_read_readvariableop0savev2_nadam_conv2d_9_bias_m_read_readvariableop>savev2_nadam_batch_normalization_9_gamma_m_read_readvariableop=savev2_nadam_batch_normalization_9_beta_m_read_readvariableop3savev2_nadam_conv2d_10_kernel_m_read_readvariableop1savev2_nadam_conv2d_10_bias_m_read_readvariableop?savev2_nadam_batch_normalization_10_gamma_m_read_readvariableop>savev2_nadam_batch_normalization_10_beta_m_read_readvariableop3savev2_nadam_conv2d_11_kernel_m_read_readvariableop1savev2_nadam_conv2d_11_bias_m_read_readvariableop?savev2_nadam_batch_normalization_11_gamma_m_read_readvariableop>savev2_nadam_batch_normalization_11_beta_m_read_readvariableop1savev2_nadam_dense_4_kernel_m_read_readvariableop/savev2_nadam_dense_4_bias_m_read_readvariableop1savev2_nadam_dense_5_kernel_m_read_readvariableop/savev2_nadam_dense_5_bias_m_read_readvariableop2savev2_nadam_conv2d_8_kernel_v_read_readvariableop0savev2_nadam_conv2d_8_bias_v_read_readvariableop>savev2_nadam_batch_normalization_8_gamma_v_read_readvariableop=savev2_nadam_batch_normalization_8_beta_v_read_readvariableop2savev2_nadam_conv2d_9_kernel_v_read_readvariableop0savev2_nadam_conv2d_9_bias_v_read_readvariableop>savev2_nadam_batch_normalization_9_gamma_v_read_readvariableop=savev2_nadam_batch_normalization_9_beta_v_read_readvariableop3savev2_nadam_conv2d_10_kernel_v_read_readvariableop1savev2_nadam_conv2d_10_bias_v_read_readvariableop?savev2_nadam_batch_normalization_10_gamma_v_read_readvariableop>savev2_nadam_batch_normalization_10_beta_v_read_readvariableop3savev2_nadam_conv2d_11_kernel_v_read_readvariableop1savev2_nadam_conv2d_11_bias_v_read_readvariableop?savev2_nadam_batch_normalization_11_gamma_v_read_readvariableop>savev2_nadam_batch_normalization_11_beta_v_read_readvariableop1savev2_nadam_dense_4_kernel_v_read_readvariableop/savev2_nadam_dense_4_bias_v_read_readvariableop1savev2_nadam_dense_5_kernel_v_read_readvariableop/savev2_nadam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *]
dtypesS
Q2O	Р
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

identity_1Identity_1:output:0*Ё
_input_shapes▐
█: :::::::::::::::::::::::::	и
:
:
:: : : : : : : : : : :::::::::::::::::	и
:
:
::::::::::::::::::	и
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
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 
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
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	и
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::
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
: :&

_output_shapes
: :,'(
&
_output_shapes
:: (

_output_shapes
:: )

_output_shapes
:: *

_output_shapes
::,+(
&
_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
:: .

_output_shapes
::,/(
&
_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
::,3(
&
_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
::%7!

_output_shapes
:	и
: 8

_output_shapes
:
:$9 

_output_shapes

:
: :

_output_shapes
::,;(
&
_output_shapes
:: <

_output_shapes
:: =

_output_shapes
:: >

_output_shapes
::,?(
&
_output_shapes
:: @

_output_shapes
:: A

_output_shapes
:: B

_output_shapes
::,C(
&
_output_shapes
:: D

_output_shapes
:: E

_output_shapes
:: F

_output_shapes
::,G(
&
_output_shapes
:: H

_output_shapes
:: I

_output_shapes
:: J

_output_shapes
::%K!

_output_shapes
:	и
: L

_output_shapes
:
:$M 

_output_shapes

:
: N

_output_shapes
::O

_output_shapes
: 
Т
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387

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
╦
Ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15336

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Е
┐
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16890

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┼б
а
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16716

inputsA
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:;
-batch_normalization_8_readvariableop_resource:=
/batch_normalization_8_readvariableop_1_resource:L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:;
-batch_normalization_9_readvariableop_resource:=
/batch_normalization_9_readvariableop_1_resource:L
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:<
.batch_normalization_10_readvariableop_resource:>
0batch_normalization_10_readvariableop_1_resource:M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:<
.batch_normalization_11_readvariableop_resource:>
0batch_normalization_11_readvariableop_1_resource:M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:9
&dense_4_matmul_readvariableop_resource:	и
5
'dense_4_biasadd_readvariableop_resource:
8
&dense_5_matmul_readvariableop_resource:
5
'dense_5_biasadd_readvariableop_resource:
identityИв%batch_normalization_10/AssignNewValueв'batch_normalization_10/AssignNewValue_1в6batch_normalization_10/FusedBatchNormV3/ReadVariableOpв8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_10/ReadVariableOpв'batch_normalization_10/ReadVariableOp_1в%batch_normalization_11/AssignNewValueв'batch_normalization_11/AssignNewValue_1в6batch_normalization_11/FusedBatchNormV3/ReadVariableOpв8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_11/ReadVariableOpв'batch_normalization_11/ReadVariableOp_1в$batch_normalization_8/AssignNewValueв&batch_normalization_8/AssignNewValue_1в5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в$batch_normalization_9/AssignNewValueв&batch_normalization_9/AssignNewValue_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1в conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpв conv2d_11/BiasAdd/ReadVariableOpвconv2d_11/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpО
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛*
paddingVALID*
strides
Д
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ю╛l
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*1
_output_shapes
:         ю╛О
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╔
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_8/Relu:activations:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ю╛:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╝
max_pooling2d_2/MaxPoolMaxPool*batch_normalization_8/FusedBatchNormV3:y:0*0
_output_shapes
:         wЯ*
ksize
*
paddingVALID*
strides
О
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╟
conv2d_9/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫ*
paddingVALID*
strides
Д
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         sЫk
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         sЫО
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3conv2d_9/Relu:activations:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         sЫ:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_9/AssignNewValueAssignVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource3batch_normalization_9/FusedBatchNormV3:batch_mean:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_9/AssignNewValue_1AssignVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_9/FusedBatchNormV3:batch_variance:08^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╚
average_pooling2d_6/AvgPoolAvgPool*batch_normalization_9/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         9M*
ksize
*
paddingVALID*
strides
Р
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╠
conv2d_10/Conv2DConv2D$average_pooling2d_6/AvgPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7K*
paddingVALID*
strides
Ж
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7Kl
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:         7KР
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0═
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_10/Relu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         7K:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╔
average_pooling2d_7/AvgPoolAvgPool+batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         %*
ksize
*
paddingVALID*
strides
Р
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╠
conv2d_11/Conv2DConv2D$average_pooling2d_7/AvgPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $*
paddingVALID*
strides
Ж
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:         $Р
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0═
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_11/Relu:activations:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         $:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_11/AssignNewValueAssignVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource4batch_normalization_11/FusedBatchNormV3:batch_mean:07^batch_normalization_11/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_11/AssignNewValue_1AssignVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_11/FusedBatchNormV3:batch_variance:09^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╔
average_pooling2d_8/AvgPoolAvgPool+batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"    и  П
flatten_2/ReshapeReshape$average_pooling2d_8/AvgPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         иЕ
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	и
*
dtype0Н
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         
Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Н
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1&^batch_normalization_11/AssignNewValue(^batch_normalization_11/AssignNewValue_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1%^batch_normalization_9/AssignNewValue'^batch_normalization_9/AssignNewValue_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12N
%batch_normalization_11/AssignNewValue%batch_normalization_11/AssignNewValue2R
'batch_normalization_11/AssignNewValue_1'batch_normalization_11/AssignNewValue_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2P
&batch_normalization_9/AssignNewValue_1&batch_normalization_9/AssignNewValue_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16964

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Я
j
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_16992

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
╩L
ф
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16039

inputs(
conv2d_8_15967:
conv2d_8_15969:)
batch_normalization_8_15972:)
batch_normalization_8_15974:)
batch_normalization_8_15976:)
batch_normalization_8_15978:(
conv2d_9_15982:
conv2d_9_15984:)
batch_normalization_9_15987:)
batch_normalization_9_15989:)
batch_normalization_9_15991:)
batch_normalization_9_15993:)
conv2d_10_15997:
conv2d_10_15999:*
batch_normalization_10_16002:*
batch_normalization_10_16004:*
batch_normalization_10_16006:*
batch_normalization_10_16008:)
conv2d_11_16012:
conv2d_11_16014:*
batch_normalization_11_16017:*
batch_normalization_11_16019:*
batch_normalization_11_16021:*
batch_normalization_11_16023: 
dense_4_16028:	и

dense_4_16030:

dense_5_16033:

dense_5_16035:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCall·
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_15967conv2d_8_15969*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636Н
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_15972batch_normalization_8_15974batch_normalization_8_15976batch_normalization_8_15978*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15367Б
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         wЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387Ы
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_15982conv2d_9_15984*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663М
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_9_15987batch_normalization_9_15989batch_normalization_9_15991batch_normalization_9_15993*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15443И
#average_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         9M* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_6/PartitionedCall:output:0conv2d_10_15997conv2d_10_15999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690Т
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_10_16002batch_normalization_10_16004batch_normalization_10_16006batch_normalization_10_16008*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15519Й
#average_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539в
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_7/PartitionedCall:output:0conv2d_11_16012conv2d_11_16014*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717Т
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_11_16017batch_normalization_11_16019batch_normalization_11_16021batch_normalization_11_16023*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15595Й
#average_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615у
flatten_2/PartitionedCallPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_16028dense_4_16030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_15752О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_16033dense_5_16035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_15769w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┌
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:         Ё└
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15564

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Р	
╨
5__inference_batch_normalization_9_layer_call_fn_16854

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15443Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ю

є
B__inference_dense_5_layer_call_and_return_conditional_losses_17135

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ъL
ь
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16234
conv2d_8_input(
conv2d_8_16162:
conv2d_8_16164:)
batch_normalization_8_16167:)
batch_normalization_8_16169:)
batch_normalization_8_16171:)
batch_normalization_8_16173:(
conv2d_9_16177:
conv2d_9_16179:)
batch_normalization_9_16182:)
batch_normalization_9_16184:)
batch_normalization_9_16186:)
batch_normalization_9_16188:)
conv2d_10_16192:
conv2d_10_16194:*
batch_normalization_10_16197:*
batch_normalization_10_16199:*
batch_normalization_10_16201:*
batch_normalization_10_16203:)
conv2d_11_16207:
conv2d_11_16209:*
batch_normalization_11_16212:*
batch_normalization_11_16214:*
batch_normalization_11_16216:*
batch_normalization_11_16218: 
dense_4_16223:	и

dense_4_16225:

dense_5_16228:

dense_5_16230:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв!conv2d_10/StatefulPartitionedCallв!conv2d_11/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallВ
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputconv2d_8_16162conv2d_8_16164*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_15636П
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_16167batch_normalization_8_16169batch_normalization_8_16171batch_normalization_8_16173*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ю╛*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15336Б
max_pooling2d_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         wЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_15387Ы
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_9_16177conv2d_9_16179*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_15663О
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0batch_normalization_9_16182batch_normalization_9_16184batch_normalization_9_16186batch_normalization_9_16188*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         sЫ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15412И
#average_pooling2d_6/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         9M* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_6/PartitionedCall:output:0conv2d_10_16192conv2d_10_16194*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690Ф
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0batch_normalization_10_16197batch_normalization_10_16199batch_normalization_10_16201batch_normalization_10_16203*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         7K*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15488Й
#average_pooling2d_7/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_15539в
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_7/PartitionedCall:output:0conv2d_11_16207conv2d_11_16209*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717Ф
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_11_16212batch_normalization_11_16214batch_normalization_11_16216batch_normalization_11_16218*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         $*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15564Й
#average_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_15615у
flatten_2/PartitionedCallPartitionedCall,average_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_16223dense_4_16225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_15752О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_16228dense_5_16230*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_15769w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┌
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_17095

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    и  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         иY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         и"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
А
В
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_15835
conv2d_8_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	и


unknown_24:


unknown_25:


unknown_26:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallconv2d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8В *a
f\RZ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_15776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:         Ё└: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:         Ё└
(
_user_specified_nameconv2d_8_input
Я
j
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_15463

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
Е
┐
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_15367

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
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
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
▓
E
)__inference_flatten_2_layer_call_fn_17089

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_15739a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         и"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_15717

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         $*
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
:         $X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         $i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         $w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         %
 
_user_specified_nameinputs
Д
¤
D__inference_conv2d_10_layer_call_and_return_conditional_losses_15690

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         7K*
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
:         7KX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         7Ki
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         7Kw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         9M: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         9M
 
_user_specified_nameinputs
Ф	
╤
6__inference_batch_normalization_10_layer_call_fn_16933

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15488Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┬
serving_defaultо
S
conv2d_8_inputA
 serving_default_conv2d_8_input:0         Ё└;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:сО
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
▒
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_32╛
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_15835
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16439
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16500
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16159┐
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
Э
аtrace_0
бtrace_1
вtrace_2
гtrace_32к
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16608
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16716
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16234
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16309┐
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
╥B╧
 __inference__wrapped_model_15314conv2d_8_input"Ш
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
Е
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_rate
йmomentum_cachemз mи)mй*mк9mл:mмCmнDmоSmпTm░]m▒^m▓mm│nm┤wm╡xm╢	Нm╖	Оm╕	Хm╣	Цm║v╗ v╝)v╜*v╛9v┐:v└Cv┴Dv┬Sv├Tv─]v┼^v╞mv╟nv╚wv╔xv╩	Нv╦	Оv╠	Хv═	Цv╬"
	optimizer
-
кserving_default"
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
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
░trace_02╧
(__inference_conv2d_8_layer_call_fn_16725в
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
Й
▒trace_02ъ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_16736в
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
 z▒trace_0
):'2conv2d_8/kernel
:2conv2d_8/bias
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
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
▀
╖trace_0
╕trace_12д
5__inference_batch_normalization_8_layer_call_fn_16749
5__inference_batch_normalization_8_layer_call_fn_16762│
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
 z╖trace_0z╕trace_1
Х
╣trace_0
║trace_12┌
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16780
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16798│
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
 z╣trace_0z║trace_1
 "
trackable_list_wrapper
):'2batch_normalization_8/gamma
(:&2batch_normalization_8/beta
1:/ (2!batch_normalization_8/moving_mean
5:3 (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ї
└trace_02╓
/__inference_max_pooling2d_2_layer_call_fn_16803в
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
Р
┴trace_02ё
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16808в
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
 z┴trace_0
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
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ю
╟trace_02╧
(__inference_conv2d_9_layer_call_fn_16817в
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
Й
╚trace_02ъ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_16828в
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
 z╚trace_0
):'2conv2d_9/kernel
:2conv2d_9/bias
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
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
▀
╬trace_0
╧trace_12д
5__inference_batch_normalization_9_layer_call_fn_16841
5__inference_batch_normalization_9_layer_call_fn_16854│
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
 z╬trace_0z╧trace_1
Х
╨trace_0
╤trace_12┌
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16872
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16890│
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
 z╨trace_0z╤trace_1
 "
trackable_list_wrapper
):'2batch_normalization_9/gamma
(:&2batch_normalization_9/beta
1:/ (2!batch_normalization_9/moving_mean
5:3 (2%batch_normalization_9/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
∙
╫trace_02┌
3__inference_average_pooling2d_6_layer_call_fn_16895в
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
Ф
╪trace_02ї
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_16900в
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
 z╪trace_0
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
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
я
▐trace_02╨
)__inference_conv2d_10_layer_call_fn_16909в
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
К
▀trace_02ы
D__inference_conv2d_10_layer_call_and_return_conditional_losses_16920в
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
 z▀trace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
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
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
с
хtrace_0
цtrace_12ж
6__inference_batch_normalization_10_layer_call_fn_16933
6__inference_batch_normalization_10_layer_call_fn_16946│
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
 zхtrace_0zцtrace_1
Ч
чtrace_0
шtrace_12▄
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16964
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16982│
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
 zчtrace_0zшtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_10/gamma
):'2batch_normalization_10/beta
2:0 (2"batch_normalization_10/moving_mean
6:4 (2&batch_normalization_10/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
∙
юtrace_02┌
3__inference_average_pooling2d_7_layer_call_fn_16987в
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
Ф
яtrace_02ї
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_16992в
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
 zяtrace_0
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
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
я
їtrace_02╨
)__inference_conv2d_11_layer_call_fn_17001в
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
К
Ўtrace_02ы
D__inference_conv2d_11_layer_call_and_return_conditional_losses_17012в
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
 zЎtrace_0
*:(2conv2d_11/kernel
:2conv2d_11/bias
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
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
с
№trace_0
¤trace_12ж
6__inference_batch_normalization_11_layer_call_fn_17025
6__inference_batch_normalization_11_layer_call_fn_17038│
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
 z№trace_0z¤trace_1
Ч
■trace_0
 trace_12▄
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17056
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17074│
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
 z■trace_0z trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_11/gamma
):'2batch_normalization_11/beta
2:0 (2"batch_normalization_11/moving_mean
6:4 (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
∙
Еtrace_02┌
3__inference_average_pooling2d_8_layer_call_fn_17079в
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
Ф
Жtrace_02ї
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_17084в
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
 zЖtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
я
Мtrace_02╨
)__inference_flatten_2_layer_call_fn_17089в
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
К
Нtrace_02ы
D__inference_flatten_2_layer_call_and_return_conditional_losses_17095в
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
 zНtrace_0
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
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
э
Уtrace_02╬
'__inference_dense_4_layer_call_fn_17104в
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
И
Фtrace_02щ
B__inference_dense_4_layer_call_and_return_conditional_losses_17115в
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
 zФtrace_0
!:	и
2dense_4/kernel
:
2dense_4/bias
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
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
э
Ъtrace_02╬
'__inference_dense_5_layer_call_fn_17124в
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
И
Ыtrace_02щ
B__inference_dense_5_layer_call_and_return_conditional_losses_17135в
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
 zЫtrace_0
 :
2dense_5/kernel
:2dense_5/bias
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
Ь0
Э1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЦBУ
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_15835conv2d_8_input"┐
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
ОBЛ
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16439inputs"┐
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
ОBЛ
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16500inputs"┐
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
ЦBУ
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16159conv2d_8_input"┐
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
йBж
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16608inputs"┐
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
йBж
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16716inputs"┐
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
▒Bо
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16234conv2d_8_input"┐
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
▒Bо
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16309conv2d_8_input"┐
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
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
╤B╬
#__inference_signature_wrapper_16378conv2d_8_input"Ф
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
▄B┘
(__inference_conv2d_8_layer_call_fn_16725inputs"в
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
ўBЇ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_16736inputs"в
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
·Bў
5__inference_batch_normalization_8_layer_call_fn_16749inputs"│
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
·Bў
5__inference_batch_normalization_8_layer_call_fn_16762inputs"│
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
ХBТ
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16780inputs"│
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
ХBТ
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16798inputs"│
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
уBр
/__inference_max_pooling2d_2_layer_call_fn_16803inputs"в
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
■B√
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16808inputs"в
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
▄B┘
(__inference_conv2d_9_layer_call_fn_16817inputs"в
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
ўBЇ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_16828inputs"в
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
·Bў
5__inference_batch_normalization_9_layer_call_fn_16841inputs"│
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
·Bў
5__inference_batch_normalization_9_layer_call_fn_16854inputs"│
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
ХBТ
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16872inputs"│
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
ХBТ
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16890inputs"│
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
чBф
3__inference_average_pooling2d_6_layer_call_fn_16895inputs"в
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
ВB 
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_16900inputs"в
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
)__inference_conv2d_10_layer_call_fn_16909inputs"в
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
D__inference_conv2d_10_layer_call_and_return_conditional_losses_16920inputs"в
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
√B°
6__inference_batch_normalization_10_layer_call_fn_16933inputs"│
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
√B°
6__inference_batch_normalization_10_layer_call_fn_16946inputs"│
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
ЦBУ
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16964inputs"│
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
ЦBУ
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16982inputs"│
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
чBф
3__inference_average_pooling2d_7_layer_call_fn_16987inputs"в
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
ВB 
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_16992inputs"в
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
)__inference_conv2d_11_layer_call_fn_17001inputs"в
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
D__inference_conv2d_11_layer_call_and_return_conditional_losses_17012inputs"в
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
√B°
6__inference_batch_normalization_11_layer_call_fn_17025inputs"│
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
√B°
6__inference_batch_normalization_11_layer_call_fn_17038inputs"│
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
ЦBУ
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17056inputs"│
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
ЦBУ
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17074inputs"│
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
чBф
3__inference_average_pooling2d_8_layer_call_fn_17079inputs"в
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
ВB 
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_17084inputs"в
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
)__inference_flatten_2_layer_call_fn_17089inputs"в
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
D__inference_flatten_2_layer_call_and_return_conditional_losses_17095inputs"в
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
█B╪
'__inference_dense_4_layer_call_fn_17104inputs"в
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
ЎBє
B__inference_dense_4_layer_call_and_return_conditional_losses_17115inputs"в
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
█B╪
'__inference_dense_5_layer_call_fn_17124inputs"в
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
ЎBє
B__inference_dense_5_layer_call_and_return_conditional_losses_17135inputs"в
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
Ю	variables
Я	keras_api

аtotal

бcount"
_tf_keras_metric
c
в	variables
г	keras_api

дtotal

еcount
ж
_fn_kwargs"
_tf_keras_metric
0
а0
б1"
trackable_list_wrapper
.
Ю	variables"
_generic_user_object
:  (2total
:  (2count
0
д0
е1"
trackable_list_wrapper
.
в	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Nadam/conv2d_8/kernel/m
!:2Nadam/conv2d_8/bias/m
/:-2#Nadam/batch_normalization_8/gamma/m
.:,2"Nadam/batch_normalization_8/beta/m
/:-2Nadam/conv2d_9/kernel/m
!:2Nadam/conv2d_9/bias/m
/:-2#Nadam/batch_normalization_9/gamma/m
.:,2"Nadam/batch_normalization_9/beta/m
0:.2Nadam/conv2d_10/kernel/m
": 2Nadam/conv2d_10/bias/m
0:.2$Nadam/batch_normalization_10/gamma/m
/:-2#Nadam/batch_normalization_10/beta/m
0:.2Nadam/conv2d_11/kernel/m
": 2Nadam/conv2d_11/bias/m
0:.2$Nadam/batch_normalization_11/gamma/m
/:-2#Nadam/batch_normalization_11/beta/m
':%	и
2Nadam/dense_4/kernel/m
 :
2Nadam/dense_4/bias/m
&:$
2Nadam/dense_5/kernel/m
 :2Nadam/dense_5/bias/m
/:-2Nadam/conv2d_8/kernel/v
!:2Nadam/conv2d_8/bias/v
/:-2#Nadam/batch_normalization_8/gamma/v
.:,2"Nadam/batch_normalization_8/beta/v
/:-2Nadam/conv2d_9/kernel/v
!:2Nadam/conv2d_9/bias/v
/:-2#Nadam/batch_normalization_9/gamma/v
.:,2"Nadam/batch_normalization_9/beta/v
0:.2Nadam/conv2d_10/kernel/v
": 2Nadam/conv2d_10/bias/v
0:.2$Nadam/batch_normalization_10/gamma/v
/:-2#Nadam/batch_normalization_10/beta/v
0:.2Nadam/conv2d_11/kernel/v
": 2Nadam/conv2d_11/bias/v
0:.2$Nadam/batch_normalization_11/gamma/v
/:-2#Nadam/batch_normalization_11/beta/v
':%	и
2Nadam/dense_4/kernel/v
 :
2Nadam/dense_4/bias/v
&:$
2Nadam/dense_5/kernel/v
 :2Nadam/dense_5/bias/v╜
 __inference__wrapped_model_15314Ш  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
2К/
conv2d_8_input         Ё└
к "1к.
,
dense_5!К
dense_5         ё
N__inference_average_pooling2d_6_layer_call_and_return_conditional_losses_16900ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_average_pooling2d_6_layer_call_fn_16895СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ё
N__inference_average_pooling2d_7_layer_call_and_return_conditional_losses_16992ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_average_pooling2d_7_layer_call_fn_16987СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ё
N__inference_average_pooling2d_8_layer_call_and_return_conditional_losses_17084ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╔
3__inference_average_pooling2d_8_layer_call_fn_17079СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ь
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16964Ц]^_`MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ь
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_16982Ц]^_`MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ─
6__inference_batch_normalization_10_layer_call_fn_16933Й]^_`MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ─
6__inference_batch_normalization_10_layer_call_fn_16946Й]^_`MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ь
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17056ЦwxyzMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ь
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_17074ЦwxyzMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ─
6__inference_batch_normalization_11_layer_call_fn_17025ЙwxyzMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ─
6__inference_batch_normalization_11_layer_call_fn_17038ЙwxyzMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16780Ц)*+,MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ы
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_16798Ц)*+,MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ├
5__inference_batch_normalization_8_layer_call_fn_16749Й)*+,MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ├
5__inference_batch_normalization_8_layer_call_fn_16762Й)*+,MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ы
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16872ЦCDEFMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ ы
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_16890ЦCDEFMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ├
5__inference_batch_normalization_9_layer_call_fn_16841ЙCDEFMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ├
5__inference_batch_normalization_9_layer_call_fn_16854ЙCDEFMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           ┤
D__inference_conv2d_10_layer_call_and_return_conditional_losses_16920lST7в4
-в*
(К%
inputs         9M
к "-в*
#К 
0         7K
Ъ М
)__inference_conv2d_10_layer_call_fn_16909_ST7в4
-в*
(К%
inputs         9M
к " К         7K┤
D__inference_conv2d_11_layer_call_and_return_conditional_losses_17012lmn7в4
-в*
(К%
inputs         %
к "-в*
#К 
0         $
Ъ М
)__inference_conv2d_11_layer_call_fn_17001_mn7в4
-в*
(К%
inputs         %
к " К         $╖
C__inference_conv2d_8_layer_call_and_return_conditional_losses_16736p 9в6
/в,
*К'
inputs         Ё└
к "/в,
%К"
0         ю╛
Ъ П
(__inference_conv2d_8_layer_call_fn_16725c 9в6
/в,
*К'
inputs         Ё└
к ""К         ю╛╡
C__inference_conv2d_9_layer_call_and_return_conditional_losses_16828n9:8в5
.в+
)К&
inputs         wЯ
к ".в+
$К!
0         sЫ
Ъ Н
(__inference_conv2d_9_layer_call_fn_16817a9:8в5
.в+
)К&
inputs         wЯ
к "!К         sЫе
B__inference_dense_4_layer_call_and_return_conditional_losses_17115_НО0в-
&в#
!К
inputs         и
к "%в"
К
0         

Ъ }
'__inference_dense_4_layer_call_fn_17104RНО0в-
&в#
!К
inputs         и
к "К         
д
B__inference_dense_5_layer_call_and_return_conditional_losses_17135^ХЦ/в,
%в"
 К
inputs         

к "%в"
К
0         
Ъ |
'__inference_dense_5_layer_call_fn_17124QХЦ/в,
%в"
 К
inputs         

к "К         й
D__inference_flatten_2_layer_call_and_return_conditional_losses_17095a7в4
-в*
(К%
inputs         
к "&в#
К
0         и
Ъ Б
)__inference_flatten_2_layer_call_fn_17089T7в4
-в*
(К%
inputs         
к "К         иэ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_16808ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┼
/__inference_max_pooling2d_2_layer_call_fn_16803СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ё
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16234Ф  )*+,9:CDEFST]^_`mnwxyzНОХЦIвF
?в<
2К/
conv2d_8_input         Ё└
p 

 
к "%в"
К
0         
Ъ ё
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16309Ф  )*+,9:CDEFST]^_`mnwxyzНОХЦIвF
?в<
2К/
conv2d_8_input         Ё└
p

 
к "%в"
К
0         
Ъ щ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16608М  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         Ё└
p 

 
к "%в"
К
0         
Ъ щ
X__inference_my_model_cells_14_1X_Batch256_layer_call_and_return_conditional_losses_16716М  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         Ё└
p

 
к "%в"
К
0         
Ъ ╔
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_15835З  )*+,9:CDEFST]^_`mnwxyzНОХЦIвF
?в<
2К/
conv2d_8_input         Ё└
p 

 
к "К         ╔
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16159З  )*+,9:CDEFST]^_`mnwxyzНОХЦIвF
?в<
2К/
conv2d_8_input         Ё└
p

 
к "К         └
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16439  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         Ё└
p 

 
к "К         └
=__inference_my_model_cells_14_1X_Batch256_layer_call_fn_16500  )*+,9:CDEFST]^_`mnwxyzНОХЦAв>
7в4
*К'
inputs         Ё└
p

 
к "К         ╥
#__inference_signature_wrapper_16378к  )*+,9:CDEFST]^_`mnwxyzНОХЦSвP
в 
IкF
D
conv2d_8_input2К/
conv2d_8_input         Ё└"1к.
,
dense_5!К
dense_5         