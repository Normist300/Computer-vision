─Ї
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
 И"serve*2.10.12v2.10.0-76-gfdfc646704c8и╖
А
Adam/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_39/bias/v
y
(Adam/dense_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_39/kernel/v
Б
*Adam/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/v*
_output_shapes

:*
dtype0
А
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_38/kernel/v
Б
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

:d*
dtype0
А
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:d*
dtype0
Й
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	аd*'
shared_nameAdam/dense_37/kernel/v
В
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes
:	аd*
dtype0
Ь
"Adam/batch_normalization_85/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_85/beta/v
Х
6Adam/batch_normalization_85/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_85/beta/v*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_85/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_85/gamma/v
Ч
7Adam/batch_normalization_85/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_85/gamma/v*
_output_shapes
: *
dtype0
В
Adam/conv2d_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_82/bias/v
{
)Adam/conv2d_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_82/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_82/kernel/v
Л
+Adam/conv2d_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_82/kernel/v*&
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_84/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_84/beta/v
Х
6Adam/batch_normalization_84/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_84/beta/v*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_84/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_84/gamma/v
Ч
7Adam/batch_normalization_84/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_84/gamma/v*
_output_shapes
:*
dtype0
В
Adam/conv2d_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_81/bias/v
{
)Adam/conv2d_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_81/kernel/v
Л
+Adam/conv2d_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/kernel/v*&
_output_shapes
:*
dtype0
Ь
"Adam/batch_normalization_83/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_83/beta/v
Х
6Adam/batch_normalization_83/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_83/beta/v*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_83/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_83/gamma/v
Ч
7Adam/batch_normalization_83/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_83/gamma/v*
_output_shapes
:*
dtype0
В
Adam/conv2d_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_80/bias/v
{
)Adam/conv2d_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_80/kernel/v
Л
+Adam/conv2d_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/kernel/v*&
_output_shapes
:*
dtype0
Ь
"Adam/batch_normalization_82/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_82/beta/v
Х
6Adam/batch_normalization_82/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_82/beta/v*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_82/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_82/gamma/v
Ч
7Adam/batch_normalization_82/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_82/gamma/v*
_output_shapes
:*
dtype0
В
Adam/conv2d_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_79/bias/v
{
)Adam/conv2d_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_79/kernel/v
Л
+Adam/conv2d_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_39/bias/m
y
(Adam/dense_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_39/kernel/m
Б
*Adam/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_39/kernel/m*
_output_shapes

:*
dtype0
А
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_38/kernel/m
Б
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

:d*
dtype0
А
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:d*
dtype0
Й
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	аd*'
shared_nameAdam/dense_37/kernel/m
В
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes
:	аd*
dtype0
Ь
"Adam/batch_normalization_85/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_85/beta/m
Х
6Adam/batch_normalization_85/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_85/beta/m*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_85/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_85/gamma/m
Ч
7Adam/batch_normalization_85/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_85/gamma/m*
_output_shapes
: *
dtype0
В
Adam/conv2d_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_82/bias/m
{
)Adam/conv2d_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_82/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_82/kernel/m
Л
+Adam/conv2d_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_82/kernel/m*&
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_84/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_84/beta/m
Х
6Adam/batch_normalization_84/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_84/beta/m*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_84/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_84/gamma/m
Ч
7Adam/batch_normalization_84/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_84/gamma/m*
_output_shapes
:*
dtype0
В
Adam/conv2d_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_81/bias/m
{
)Adam/conv2d_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_81/kernel/m
Л
+Adam/conv2d_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_81/kernel/m*&
_output_shapes
:*
dtype0
Ь
"Adam/batch_normalization_83/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_83/beta/m
Х
6Adam/batch_normalization_83/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_83/beta/m*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_83/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_83/gamma/m
Ч
7Adam/batch_normalization_83/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_83/gamma/m*
_output_shapes
:*
dtype0
В
Adam/conv2d_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_80/bias/m
{
)Adam/conv2d_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_80/kernel/m
Л
+Adam/conv2d_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_80/kernel/m*&
_output_shapes
:*
dtype0
Ь
"Adam/batch_normalization_82/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_82/beta/m
Х
6Adam/batch_normalization_82/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_82/beta/m*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_82/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_82/gamma/m
Ч
7Adam/batch_normalization_82/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_82/gamma/m*
_output_shapes
:*
dtype0
В
Adam/conv2d_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_79/bias/m
{
)Adam/conv2d_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_79/kernel/m
Л
+Adam/conv2d_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_79/kernel/m*&
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
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes
:*
dtype0
z
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_39/kernel
s
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes

:*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:*
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:d*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
:d*
dtype0
{
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	аd* 
shared_namedense_37/kernel
t
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes
:	аd*
dtype0
д
&batch_normalization_85/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_85/moving_variance
Э
:batch_normalization_85/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_85/moving_variance*
_output_shapes
: *
dtype0
Ь
"batch_normalization_85/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_85/moving_mean
Х
6batch_normalization_85/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_85/moving_mean*
_output_shapes
: *
dtype0
О
batch_normalization_85/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_85/beta
З
/batch_normalization_85/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_85/beta*
_output_shapes
: *
dtype0
Р
batch_normalization_85/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_85/gamma
Й
0batch_normalization_85/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_85/gamma*
_output_shapes
: *
dtype0
t
conv2d_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_82/bias
m
"conv2d_82/bias/Read/ReadVariableOpReadVariableOpconv2d_82/bias*
_output_shapes
: *
dtype0
Д
conv2d_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_82/kernel
}
$conv2d_82/kernel/Read/ReadVariableOpReadVariableOpconv2d_82/kernel*&
_output_shapes
: *
dtype0
д
&batch_normalization_84/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_84/moving_variance
Э
:batch_normalization_84/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_84/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_84/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_84/moving_mean
Х
6batch_normalization_84/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_84/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_84/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_84/beta
З
/batch_normalization_84/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_84/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_84/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_84/gamma
Й
0batch_normalization_84/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_84/gamma*
_output_shapes
:*
dtype0
t
conv2d_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_81/bias
m
"conv2d_81/bias/Read/ReadVariableOpReadVariableOpconv2d_81/bias*
_output_shapes
:*
dtype0
Д
conv2d_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_81/kernel
}
$conv2d_81/kernel/Read/ReadVariableOpReadVariableOpconv2d_81/kernel*&
_output_shapes
:*
dtype0
д
&batch_normalization_83/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_83/moving_variance
Э
:batch_normalization_83/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_83/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_83/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_83/moving_mean
Х
6batch_normalization_83/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_83/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_83/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_83/beta
З
/batch_normalization_83/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_83/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_83/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_83/gamma
Й
0batch_normalization_83/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_83/gamma*
_output_shapes
:*
dtype0
t
conv2d_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_80/bias
m
"conv2d_80/bias/Read/ReadVariableOpReadVariableOpconv2d_80/bias*
_output_shapes
:*
dtype0
Д
conv2d_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_80/kernel
}
$conv2d_80/kernel/Read/ReadVariableOpReadVariableOpconv2d_80/kernel*&
_output_shapes
:*
dtype0
д
&batch_normalization_82/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_82/moving_variance
Э
:batch_normalization_82/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_82/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_82/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_82/moving_mean
Х
6batch_normalization_82/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_82/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_82/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_82/beta
З
/batch_normalization_82/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_82/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_82/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_82/gamma
Й
0batch_normalization_82/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_82/gamma*
_output_shapes
:*
dtype0
t
conv2d_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_79/bias
m
"conv2d_79/bias/Read/ReadVariableOpReadVariableOpconv2d_79/bias*
_output_shapes
:*
dtype0
Д
conv2d_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_79/kernel
}
$conv2d_79/kernel/Read/ReadVariableOpReadVariableOpconv2d_79/kernel*&
_output_shapes
:*
dtype0
Ц
serving_default_conv2d_79_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
¤
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_79_inputconv2d_79/kernelconv2d_79/biasbatch_normalization_82/gammabatch_normalization_82/beta"batch_normalization_82/moving_mean&batch_normalization_82/moving_varianceconv2d_80/kernelconv2d_80/biasbatch_normalization_83/gammabatch_normalization_83/beta"batch_normalization_83/moving_mean&batch_normalization_83/moving_varianceconv2d_81/kernelconv2d_81/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_82/kernelconv2d_82/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_variancedense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_127844

NoOpNoOp
Зм
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┴л
value╢лB▓л Bкл
┴
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
layer_with_weights-10
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
╒
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta
,moving_mean
-moving_variance*
О
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
╚
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*
╒
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance*
О
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
╚
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op*
╒
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
	^gamma
_beta
`moving_mean
amoving_variance*
О
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses* 
╚
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias
 p_jit_compiled_convolution_op*
╒
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
waxis
	xgamma
ybeta
zmoving_mean
{moving_variance*
Р
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses* 
Ф
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses* 
о
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оkernel
	Пbias*
о
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Цkernel
	Чbias*
о
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Юkernel
	Яbias*
Ё
 0
!1
*2
+3
,4
-5
:6
;7
D8
E9
F10
G11
T12
U13
^14
_15
`16
a17
n18
o19
x20
y21
z22
{23
О24
П25
Ц26
Ч27
Ю28
Я29*
░
 0
!1
*2
+3
:4
;5
D6
E7
T8
U9
^10
_11
n12
o13
x14
y15
О16
П17
Ц18
Ч19
Ю20
Я21*
* 
╡
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
еtrace_0
жtrace_1
зtrace_2
иtrace_3* 
:
йtrace_0
кtrace_1
лtrace_2
мtrace_3* 
* 
Н
	нiter
оbeta_1
пbeta_2

░decay
▒learning_rate m╢!m╖*m╕+m╣:m║;m╗Dm╝Em╜Tm╛Um┐^m└_m┴nm┬om├xm─ym┼	Оm╞	Пm╟	Цm╚	Чm╔	Юm╩	Яm╦ v╠!v═*v╬+v╧:v╨;v╤Dv╥Ev╙Tv╘Uv╒^v╓_v╫nv╪ov┘xv┌yv█	Оv▄	Пv▌	Цv▐	Чv▀	Юvр	Яvс*

▓serving_default* 

 0
!1*

 0
!1*
* 
Ш
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

╕trace_0* 

╣trace_0* 
`Z
VARIABLE_VALUEconv2d_79/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_79/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
*0
+1
,2
-3*

*0
+1*
* 
Ш
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

┐trace_0
└trace_1* 

┴trace_0
┬trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_82/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_82/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_82/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_82/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

╚trace_0* 

╔trace_0* 

:0
;1*

:0
;1*
* 
Ш
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

╧trace_0* 

╨trace_0* 
`Z
VARIABLE_VALUEconv2d_80/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_80/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
D0
E1
F2
G3*

D0
E1*
* 
Ш
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

╓trace_0
╫trace_1* 

╪trace_0
┘trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_83/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_83/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_83/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_83/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

▀trace_0* 

рtrace_0* 

T0
U1*

T0
U1*
* 
Ш
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

цtrace_0* 

чtrace_0* 
`Z
VARIABLE_VALUEconv2d_81/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_81/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
^0
_1
`2
a3*

^0
_1*
* 
Ш
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

эtrace_0
юtrace_1* 

яtrace_0
Ёtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_84/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_84/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_84/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_84/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

Ўtrace_0* 

ўtrace_0* 

n0
o1*

n0
o1*
* 
Ш
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

¤trace_0* 

■trace_0* 
`Z
VARIABLE_VALUEconv2d_82/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_82/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
x0
y1
z2
{3*

x0
y1*
* 
Ш
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

Дtrace_0
Еtrace_1* 

Жtrace_0
Зtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_85/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_85/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_85/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_85/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Щ
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

О0
П1*

О0
П1*
* 
Ю
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
_Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_37/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ц0
Ч1*

Ц0
Ч1*
* 
Ю
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses*

вtrace_0* 

гtrace_0* 
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ю0
Я1*

Ю0
Я1*
* 
Ю
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses*

йtrace_0* 

кtrace_0* 
`Z
VARIABLE_VALUEdense_39/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_39/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
<
,0
-1
F2
G3
`4
a5
z6
{7*
z
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
15*

л0
м1*
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
,0
-1*
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
F0
G1*
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
`0
a1*
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
z0
{1*
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
* 
* 
* 
* 
* 
* 
* 
<
н	variables
о	keras_api

пtotal

░count*
M
▒	variables
▓	keras_api

│total

┤count
╡
_fn_kwargs*

п0
░1*

н	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

│0
┤1*

▒	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Г}
VARIABLE_VALUEAdam/conv2d_79/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_79/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_82/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_82/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_80/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_80/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_83/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_83/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_81/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_81/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_84/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_84/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_82/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_82/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_85/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_85/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_39/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_39/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_79/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_79/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_82/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_82/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_80/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_80/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_83/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_83/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_81/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_81/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_84/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_84/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_82/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_82/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_85/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_85/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_39/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_39/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▓ 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_79/kernel/Read/ReadVariableOp"conv2d_79/bias/Read/ReadVariableOp0batch_normalization_82/gamma/Read/ReadVariableOp/batch_normalization_82/beta/Read/ReadVariableOp6batch_normalization_82/moving_mean/Read/ReadVariableOp:batch_normalization_82/moving_variance/Read/ReadVariableOp$conv2d_80/kernel/Read/ReadVariableOp"conv2d_80/bias/Read/ReadVariableOp0batch_normalization_83/gamma/Read/ReadVariableOp/batch_normalization_83/beta/Read/ReadVariableOp6batch_normalization_83/moving_mean/Read/ReadVariableOp:batch_normalization_83/moving_variance/Read/ReadVariableOp$conv2d_81/kernel/Read/ReadVariableOp"conv2d_81/bias/Read/ReadVariableOp0batch_normalization_84/gamma/Read/ReadVariableOp/batch_normalization_84/beta/Read/ReadVariableOp6batch_normalization_84/moving_mean/Read/ReadVariableOp:batch_normalization_84/moving_variance/Read/ReadVariableOp$conv2d_82/kernel/Read/ReadVariableOp"conv2d_82/bias/Read/ReadVariableOp0batch_normalization_85/gamma/Read/ReadVariableOp/batch_normalization_85/beta/Read/ReadVariableOp6batch_normalization_85/moving_mean/Read/ReadVariableOp:batch_normalization_85/moving_variance/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_79/kernel/m/Read/ReadVariableOp)Adam/conv2d_79/bias/m/Read/ReadVariableOp7Adam/batch_normalization_82/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_82/beta/m/Read/ReadVariableOp+Adam/conv2d_80/kernel/m/Read/ReadVariableOp)Adam/conv2d_80/bias/m/Read/ReadVariableOp7Adam/batch_normalization_83/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_83/beta/m/Read/ReadVariableOp+Adam/conv2d_81/kernel/m/Read/ReadVariableOp)Adam/conv2d_81/bias/m/Read/ReadVariableOp7Adam/batch_normalization_84/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_84/beta/m/Read/ReadVariableOp+Adam/conv2d_82/kernel/m/Read/ReadVariableOp)Adam/conv2d_82/bias/m/Read/ReadVariableOp7Adam/batch_normalization_85/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_85/beta/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp*Adam/dense_39/kernel/m/Read/ReadVariableOp(Adam/dense_39/bias/m/Read/ReadVariableOp+Adam/conv2d_79/kernel/v/Read/ReadVariableOp)Adam/conv2d_79/bias/v/Read/ReadVariableOp7Adam/batch_normalization_82/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_82/beta/v/Read/ReadVariableOp+Adam/conv2d_80/kernel/v/Read/ReadVariableOp)Adam/conv2d_80/bias/v/Read/ReadVariableOp7Adam/batch_normalization_83/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_83/beta/v/Read/ReadVariableOp+Adam/conv2d_81/kernel/v/Read/ReadVariableOp)Adam/conv2d_81/bias/v/Read/ReadVariableOp7Adam/batch_normalization_84/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_84/beta/v/Read/ReadVariableOp+Adam/conv2d_82/kernel/v/Read/ReadVariableOp)Adam/conv2d_82/bias/v/Read/ReadVariableOp7Adam/batch_normalization_85/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_85/beta/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp*Adam/dense_39/kernel/v/Read/ReadVariableOp(Adam/dense_39/bias/v/Read/ReadVariableOpConst*`
TinY
W2U	*
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
__inference__traced_save_128915
▒
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_79/kernelconv2d_79/biasbatch_normalization_82/gammabatch_normalization_82/beta"batch_normalization_82/moving_mean&batch_normalization_82/moving_varianceconv2d_80/kernelconv2d_80/biasbatch_normalization_83/gammabatch_normalization_83/beta"batch_normalization_83/moving_mean&batch_normalization_83/moving_varianceconv2d_81/kernelconv2d_81/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_82/kernelconv2d_82/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_variancedense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_79/kernel/mAdam/conv2d_79/bias/m#Adam/batch_normalization_82/gamma/m"Adam/batch_normalization_82/beta/mAdam/conv2d_80/kernel/mAdam/conv2d_80/bias/m#Adam/batch_normalization_83/gamma/m"Adam/batch_normalization_83/beta/mAdam/conv2d_81/kernel/mAdam/conv2d_81/bias/m#Adam/batch_normalization_84/gamma/m"Adam/batch_normalization_84/beta/mAdam/conv2d_82/kernel/mAdam/conv2d_82/bias/m#Adam/batch_normalization_85/gamma/m"Adam/batch_normalization_85/beta/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/dense_39/kernel/mAdam/dense_39/bias/mAdam/conv2d_79/kernel/vAdam/conv2d_79/bias/v#Adam/batch_normalization_82/gamma/v"Adam/batch_normalization_82/beta/vAdam/conv2d_80/kernel/vAdam/conv2d_80/bias/v#Adam/batch_normalization_83/gamma/v"Adam/batch_normalization_83/beta/vAdam/conv2d_81/kernel/vAdam/conv2d_81/bias/v#Adam/batch_normalization_84/gamma/v"Adam/batch_normalization_84/beta/vAdam/conv2d_82/kernel/vAdam/conv2d_82/bias/v#Adam/batch_normalization_85/gamma/v"Adam/batch_normalization_85/beta/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/vAdam/dense_39/kernel/vAdam/dense_39/bias/v*_
TinX
V2T*
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
"__inference__traced_restore_129174КЬ
Ы

ї
D__inference_dense_38_layer_call_and_return_conditional_losses_128623

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╚
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_128583

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┼
Ц
)__inference_dense_39_layer_call_fn_128632

inputs
unknown:
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
D__inference_dense_39_layer_call_and_return_conditional_losses_127190o
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
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
З
┴
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126847

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
Ц	
╥
7__inference_batch_normalization_83_layer_call_fn_128329

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЮ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126816Й
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
я
Я
*__inference_conv2d_82_layer_call_fn_128489

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         

 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
а

ї
D__inference_dense_39_layer_call_and_return_conditional_losses_127190

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_128480

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
Е
■
E__inference_conv2d_81_layer_call_and_return_conditional_losses_128408

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019

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
Ф	
╥
7__inference_batch_normalization_83_layer_call_fn_128342

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЬ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126847Й
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
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867

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
═
Э
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128360

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
Й
■
E__inference_conv2d_79_layer_call_and_return_conditional_losses_128224

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
З
┴
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128562

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
я
Я
*__inference_conv2d_81_layer_call_fn_128397

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ы

ї
D__inference_dense_38_layer_call_and_return_conditional_losses_127173

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
є
Я
*__inference_conv2d_79_layer_call_fn_128213

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф	
╥
7__inference_batch_normalization_85_layer_call_fn_128526

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЬ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126999Й
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
■╬
▒6
"__inference__traced_restore_129174
file_prefix;
!assignvariableop_conv2d_79_kernel:/
!assignvariableop_1_conv2d_79_bias:=
/assignvariableop_2_batch_normalization_82_gamma:<
.assignvariableop_3_batch_normalization_82_beta:C
5assignvariableop_4_batch_normalization_82_moving_mean:G
9assignvariableop_5_batch_normalization_82_moving_variance:=
#assignvariableop_6_conv2d_80_kernel:/
!assignvariableop_7_conv2d_80_bias:=
/assignvariableop_8_batch_normalization_83_gamma:<
.assignvariableop_9_batch_normalization_83_beta:D
6assignvariableop_10_batch_normalization_83_moving_mean:H
:assignvariableop_11_batch_normalization_83_moving_variance:>
$assignvariableop_12_conv2d_81_kernel:0
"assignvariableop_13_conv2d_81_bias:>
0assignvariableop_14_batch_normalization_84_gamma:=
/assignvariableop_15_batch_normalization_84_beta:D
6assignvariableop_16_batch_normalization_84_moving_mean:H
:assignvariableop_17_batch_normalization_84_moving_variance:>
$assignvariableop_18_conv2d_82_kernel: 0
"assignvariableop_19_conv2d_82_bias: >
0assignvariableop_20_batch_normalization_85_gamma: =
/assignvariableop_21_batch_normalization_85_beta: D
6assignvariableop_22_batch_normalization_85_moving_mean: H
:assignvariableop_23_batch_normalization_85_moving_variance: 6
#assignvariableop_24_dense_37_kernel:	аd/
!assignvariableop_25_dense_37_bias:d5
#assignvariableop_26_dense_38_kernel:d/
!assignvariableop_27_dense_38_bias:5
#assignvariableop_28_dense_39_kernel:/
!assignvariableop_29_dense_39_bias:'
assignvariableop_30_adam_iter:	 )
assignvariableop_31_adam_beta_1: )
assignvariableop_32_adam_beta_2: (
assignvariableop_33_adam_decay: 0
&assignvariableop_34_adam_learning_rate: %
assignvariableop_35_total_1: %
assignvariableop_36_count_1: #
assignvariableop_37_total: #
assignvariableop_38_count: E
+assignvariableop_39_adam_conv2d_79_kernel_m:7
)assignvariableop_40_adam_conv2d_79_bias_m:E
7assignvariableop_41_adam_batch_normalization_82_gamma_m:D
6assignvariableop_42_adam_batch_normalization_82_beta_m:E
+assignvariableop_43_adam_conv2d_80_kernel_m:7
)assignvariableop_44_adam_conv2d_80_bias_m:E
7assignvariableop_45_adam_batch_normalization_83_gamma_m:D
6assignvariableop_46_adam_batch_normalization_83_beta_m:E
+assignvariableop_47_adam_conv2d_81_kernel_m:7
)assignvariableop_48_adam_conv2d_81_bias_m:E
7assignvariableop_49_adam_batch_normalization_84_gamma_m:D
6assignvariableop_50_adam_batch_normalization_84_beta_m:E
+assignvariableop_51_adam_conv2d_82_kernel_m: 7
)assignvariableop_52_adam_conv2d_82_bias_m: E
7assignvariableop_53_adam_batch_normalization_85_gamma_m: D
6assignvariableop_54_adam_batch_normalization_85_beta_m: =
*assignvariableop_55_adam_dense_37_kernel_m:	аd6
(assignvariableop_56_adam_dense_37_bias_m:d<
*assignvariableop_57_adam_dense_38_kernel_m:d6
(assignvariableop_58_adam_dense_38_bias_m:<
*assignvariableop_59_adam_dense_39_kernel_m:6
(assignvariableop_60_adam_dense_39_bias_m:E
+assignvariableop_61_adam_conv2d_79_kernel_v:7
)assignvariableop_62_adam_conv2d_79_bias_v:E
7assignvariableop_63_adam_batch_normalization_82_gamma_v:D
6assignvariableop_64_adam_batch_normalization_82_beta_v:E
+assignvariableop_65_adam_conv2d_80_kernel_v:7
)assignvariableop_66_adam_conv2d_80_bias_v:E
7assignvariableop_67_adam_batch_normalization_83_gamma_v:D
6assignvariableop_68_adam_batch_normalization_83_beta_v:E
+assignvariableop_69_adam_conv2d_81_kernel_v:7
)assignvariableop_70_adam_conv2d_81_bias_v:E
7assignvariableop_71_adam_batch_normalization_84_gamma_v:D
6assignvariableop_72_adam_batch_normalization_84_beta_v:E
+assignvariableop_73_adam_conv2d_82_kernel_v: 7
)assignvariableop_74_adam_conv2d_82_bias_v: E
7assignvariableop_75_adam_batch_normalization_85_gamma_v: D
6assignvariableop_76_adam_batch_normalization_85_beta_v: =
*assignvariableop_77_adam_dense_37_kernel_v:	аd6
(assignvariableop_78_adam_dense_37_bias_v:d<
*assignvariableop_79_adam_dense_38_kernel_v:d6
(assignvariableop_80_adam_dense_38_bias_v:<
*assignvariableop_81_adam_dense_39_kernel_v:6
(assignvariableop_82_adam_dense_39_bias_v:
identity_84ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_9║.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*р-
value╓-B╙-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*╜
value│B░TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┼
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ц
_output_shapes╙
╨::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_79_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_79_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_82_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_82_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_82_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_82_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_80_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_80_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_83_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_83_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_83_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_83_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_81_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_81_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_84_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_84_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_84_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_84_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_82_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_82_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_85_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_85_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_85_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_85_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_37_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_37_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_38_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_38_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_39_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_39_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_79_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_79_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_batch_normalization_82_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_82_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_80_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_80_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_83_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_83_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_81_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_81_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_batch_normalization_84_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_84_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_82_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_82_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_batch_normalization_85_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_85_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_37_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_37_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_38_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_38_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_39_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_39_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_79_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_79_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_batch_normalization_82_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_batch_normalization_82_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_80_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_80_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_batch_normalization_83_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_83_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_81_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_81_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_71AssignVariableOp7assignvariableop_71_adam_batch_normalization_84_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_batch_normalization_84_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_82_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_82_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_75AssignVariableOp7assignvariableop_75_adam_batch_normalization_85_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_85_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_dense_37_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_dense_37_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_dense_38_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_dense_38_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_39_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_39_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ё
Identity_83Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_84IdentityIdentity_83:output:0^NoOp_1*
T0*
_output_shapes
: ▐
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_84Identity_84:output:0*╜
_input_shapesл
и: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_82AssignVariableOp_822(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╚
Ч
)__inference_dense_37_layer_call_fn_128592

inputs
unknown:	аd
	unknown_0:d
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127156o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
╜
M
1__inference_max_pooling2d_39_layer_call_fn_128383

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
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867Г
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
а

ї
D__inference_dense_39_layer_call_and_return_conditional_losses_128643

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┼
Q
5__inference_average_pooling2d_28_layer_call_fn_128475

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
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943Г
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
З
┴
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126771

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
Ц	
╥
7__inference_batch_normalization_82_layer_call_fn_128237

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЮ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126740Й
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
З
┴
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128378

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
Е
■
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067

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
:         <<*
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
:         <<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
я
Я
*__inference_conv2d_80_layer_call_fn_128305

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791

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
Е
■
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Е
■
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121

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
:         

 *
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
:         

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
З
┴
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128470

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
Е
■
E__inference_conv2d_80_layer_call_and_return_conditional_losses_128316

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
:         <<*
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
:         <<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ??: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ??
 
_user_specified_nameinputs
┼
Ц
)__inference_dense_38_layer_call_fn_128612

inputs
unknown:d
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_127173o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╢
G
+__inference_flatten_16_layer_call_fn_128577

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
:         а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┘R
А
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127771
conv2d_79_input*
conv2d_79_127694:
conv2d_79_127696:+
batch_normalization_82_127699:+
batch_normalization_82_127701:+
batch_normalization_82_127703:+
batch_normalization_82_127705:*
conv2d_80_127709:
conv2d_80_127711:+
batch_normalization_83_127714:+
batch_normalization_83_127716:+
batch_normalization_83_127718:+
batch_normalization_83_127720:*
conv2d_81_127724:
conv2d_81_127726:+
batch_normalization_84_127729:+
batch_normalization_84_127731:+
batch_normalization_84_127733:+
batch_normalization_84_127735:*
conv2d_82_127739: 
conv2d_82_127741: +
batch_normalization_85_127744: +
batch_normalization_85_127746: +
batch_normalization_85_127748: +
batch_normalization_85_127750: "
dense_37_127755:	аd
dense_37_127757:d!
dense_38_127760:d
dense_38_127762:!
dense_39_127765:
dense_39_127767:
identityИв.batch_normalization_82/StatefulPartitionedCallв.batch_normalization_83/StatefulPartitionedCallв.batch_normalization_84/StatefulPartitionedCallв.batch_normalization_85/StatefulPartitionedCallв!conv2d_79/StatefulPartitionedCallв!conv2d_80/StatefulPartitionedCallв!conv2d_81/StatefulPartitionedCallв!conv2d_82/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв dense_38/StatefulPartitionedCallв dense_39/StatefulPartitionedCallИ
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCallconv2d_79_inputconv2d_79_127694conv2d_79_127696*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040Ч
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0batch_normalization_82_127699batch_normalization_82_127701batch_normalization_82_127703batch_normalization_82_127705*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126771Д
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791в
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_80_127709conv2d_80_127711*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067Ч
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0batch_normalization_83_127714batch_normalization_83_127716batch_normalization_83_127718batch_normalization_83_127720*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126847Д
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867в
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0conv2d_81_127724conv2d_81_127726*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094Ч
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0batch_normalization_84_127729batch_normalization_84_127731batch_normalization_84_127733batch_normalization_84_127735*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126923М
$average_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943ж
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_28/PartitionedCall:output:0conv2d_82_127739conv2d_82_127741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121Ч
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0batch_normalization_85_127744batch_normalization_85_127746batch_normalization_85_127748batch_normalization_85_127750*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126999М
$average_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019ч
flatten_16/PartitionedCallPartitionedCall-average_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143Р
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_37_127755dense_37_127757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127156Ц
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_127760dense_38_127762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_127173Ц
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_127765dense_39_127767*
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
D__inference_dense_39_layer_call_and_return_conditional_losses_127190x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp/^batch_normalization_82/StatefulPartitionedCall/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input
░
о
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127974

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

unknown_11:

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

unknown_23:	аd

unknown_24:d

unknown_25:d

unknown_26:

unknown_27:

unknown_28:
identityИвStatefulPartitionedCallу
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_128388

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
З
┴
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128286

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
═
Э
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128452

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
╚
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╛R
ў
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127483

inputs*
conv2d_79_127406:
conv2d_79_127408:+
batch_normalization_82_127411:+
batch_normalization_82_127413:+
batch_normalization_82_127415:+
batch_normalization_82_127417:*
conv2d_80_127421:
conv2d_80_127423:+
batch_normalization_83_127426:+
batch_normalization_83_127428:+
batch_normalization_83_127430:+
batch_normalization_83_127432:*
conv2d_81_127436:
conv2d_81_127438:+
batch_normalization_84_127441:+
batch_normalization_84_127443:+
batch_normalization_84_127445:+
batch_normalization_84_127447:*
conv2d_82_127451: 
conv2d_82_127453: +
batch_normalization_85_127456: +
batch_normalization_85_127458: +
batch_normalization_85_127460: +
batch_normalization_85_127462: "
dense_37_127467:	аd
dense_37_127469:d!
dense_38_127472:d
dense_38_127474:!
dense_39_127477:
dense_39_127479:
identityИв.batch_normalization_82/StatefulPartitionedCallв.batch_normalization_83/StatefulPartitionedCallв.batch_normalization_84/StatefulPartitionedCallв.batch_normalization_85/StatefulPartitionedCallв!conv2d_79/StatefulPartitionedCallв!conv2d_80/StatefulPartitionedCallв!conv2d_81/StatefulPartitionedCallв!conv2d_82/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв dense_38/StatefulPartitionedCallв dense_39/StatefulPartitionedCall 
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_79_127406conv2d_79_127408*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040Ч
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0batch_normalization_82_127411batch_normalization_82_127413batch_normalization_82_127415batch_normalization_82_127417*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126771Д
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791в
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_80_127421conv2d_80_127423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067Ч
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0batch_normalization_83_127426batch_normalization_83_127428batch_normalization_83_127430batch_normalization_83_127432*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126847Д
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867в
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0conv2d_81_127436conv2d_81_127438*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094Ч
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0batch_normalization_84_127441batch_normalization_84_127443batch_normalization_84_127445batch_normalization_84_127447*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126923М
$average_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943ж
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_28/PartitionedCall:output:0conv2d_82_127451conv2d_82_127453*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121Ч
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0batch_normalization_85_127456batch_normalization_85_127458batch_normalization_85_127460batch_normalization_85_127462*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126999М
$average_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019ч
flatten_16/PartitionedCallPartitionedCall-average_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143Р
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_37_127467dense_37_127469*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127156Ц
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_127472dense_38_127474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_127173Ц
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_127477dense_39_127479*
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
D__inference_dense_39_layer_call_and_return_conditional_losses_127190x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp/^batch_normalization_82/StatefulPartitionedCall/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
З
┴
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126999

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
╙
╖
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127260
conv2d_79_input!
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

unknown_11:

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

unknown_23:	аd

unknown_24:d

unknown_25:d

unknown_26:

unknown_27:

unknown_28:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallconv2d_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input
═
Э
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126968

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
сR
А
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127691
conv2d_79_input*
conv2d_79_127614:
conv2d_79_127616:+
batch_normalization_82_127619:+
batch_normalization_82_127621:+
batch_normalization_82_127623:+
batch_normalization_82_127625:*
conv2d_80_127629:
conv2d_80_127631:+
batch_normalization_83_127634:+
batch_normalization_83_127636:+
batch_normalization_83_127638:+
batch_normalization_83_127640:*
conv2d_81_127644:
conv2d_81_127646:+
batch_normalization_84_127649:+
batch_normalization_84_127651:+
batch_normalization_84_127653:+
batch_normalization_84_127655:*
conv2d_82_127659: 
conv2d_82_127661: +
batch_normalization_85_127664: +
batch_normalization_85_127666: +
batch_normalization_85_127668: +
batch_normalization_85_127670: "
dense_37_127675:	аd
dense_37_127677:d!
dense_38_127680:d
dense_38_127682:!
dense_39_127685:
dense_39_127687:
identityИв.batch_normalization_82/StatefulPartitionedCallв.batch_normalization_83/StatefulPartitionedCallв.batch_normalization_84/StatefulPartitionedCallв.batch_normalization_85/StatefulPartitionedCallв!conv2d_79/StatefulPartitionedCallв!conv2d_80/StatefulPartitionedCallв!conv2d_81/StatefulPartitionedCallв!conv2d_82/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв dense_38/StatefulPartitionedCallв dense_39/StatefulPartitionedCallИ
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCallconv2d_79_inputconv2d_79_127614conv2d_79_127616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040Щ
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0batch_normalization_82_127619batch_normalization_82_127621batch_normalization_82_127623batch_normalization_82_127625*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126740Д
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791в
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_80_127629conv2d_80_127631*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067Щ
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0batch_normalization_83_127634batch_normalization_83_127636batch_normalization_83_127638batch_normalization_83_127640*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126816Д
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867в
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0conv2d_81_127644conv2d_81_127646*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094Щ
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0batch_normalization_84_127649batch_normalization_84_127651batch_normalization_84_127653batch_normalization_84_127655*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126892М
$average_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943ж
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_28/PartitionedCall:output:0conv2d_82_127659conv2d_82_127661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121Щ
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0batch_normalization_85_127664batch_normalization_85_127666batch_normalization_85_127668batch_normalization_85_127670*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126968М
$average_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019ч
flatten_16/PartitionedCallPartitionedCall-average_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143Р
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_37_127675dense_37_127677*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127156Ц
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_127680dense_38_127682*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_127173Ц
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_127685dense_39_127687*
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
D__inference_dense_39_layer_call_and_return_conditional_losses_127190x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp/^batch_normalization_82/StatefulPartitionedCall/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input
Я

Ў
D__inference_dense_37_layer_call_and_return_conditional_losses_128603

inputs1
matmul_readvariableop_resource:	аd-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
б
l
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_128572

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
сН
о
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128089

inputsB
(conv2d_79_conv2d_readvariableop_resource:7
)conv2d_79_biasadd_readvariableop_resource:<
.batch_normalization_82_readvariableop_resource:>
0batch_normalization_82_readvariableop_1_resource:M
?batch_normalization_82_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_82_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_80_conv2d_readvariableop_resource:7
)conv2d_80_biasadd_readvariableop_resource:<
.batch_normalization_83_readvariableop_resource:>
0batch_normalization_83_readvariableop_1_resource:M
?batch_normalization_83_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_81_conv2d_readvariableop_resource:7
)conv2d_81_biasadd_readvariableop_resource:<
.batch_normalization_84_readvariableop_resource:>
0batch_normalization_84_readvariableop_1_resource:M
?batch_normalization_84_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_82_conv2d_readvariableop_resource: 7
)conv2d_82_biasadd_readvariableop_resource: <
.batch_normalization_85_readvariableop_resource: >
0batch_normalization_85_readvariableop_1_resource: M
?batch_normalization_85_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource: :
'dense_37_matmul_readvariableop_resource:	аd6
(dense_37_biasadd_readvariableop_resource:d9
'dense_38_matmul_readvariableop_resource:d6
(dense_38_biasadd_readvariableop_resource:9
'dense_39_matmul_readvariableop_resource:6
(dense_39_biasadd_readvariableop_resource:
identityИв6batch_normalization_82/FusedBatchNormV3/ReadVariableOpв8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_82/ReadVariableOpв'batch_normalization_82/ReadVariableOp_1в6batch_normalization_83/FusedBatchNormV3/ReadVariableOpв8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_83/ReadVariableOpв'batch_normalization_83/ReadVariableOp_1в6batch_normalization_84/FusedBatchNormV3/ReadVariableOpв8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_84/ReadVariableOpв'batch_normalization_84/ReadVariableOp_1в6batch_normalization_85/FusedBatchNormV3/ReadVariableOpв8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_85/ReadVariableOpв'batch_normalization_85/ReadVariableOp_1в conv2d_79/BiasAdd/ReadVariableOpвconv2d_79/Conv2D/ReadVariableOpв conv2d_80/BiasAdd/ReadVariableOpвconv2d_80/Conv2D/ReadVariableOpв conv2d_81/BiasAdd/ReadVariableOpвconv2d_81/Conv2D/ReadVariableOpв conv2d_82/BiasAdd/ReadVariableOpвconv2d_82/Conv2D/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOpвdense_38/BiasAdd/ReadVariableOpвdense_38/MatMul/ReadVariableOpвdense_39/BiasAdd/ReadVariableOpвdense_39/MatMul/ReadVariableOpР
conv2d_79/Conv2D/ReadVariableOpReadVariableOp(conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_79/Conv2DConv2Dinputs'conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Ж
 conv2d_79/BiasAdd/ReadVariableOpReadVariableOp)conv2d_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_79/BiasAddBiasAddconv2d_79/Conv2D:output:0(conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         l
conv2d_79/ReluReluconv2d_79/BiasAdd:output:0*
T0*/
_output_shapes
:         Р
%batch_normalization_82/ReadVariableOpReadVariableOp.batch_normalization_82_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_82/ReadVariableOp_1ReadVariableOp0batch_normalization_82_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_82/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_82_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_82_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┐
'batch_normalization_82/FusedBatchNormV3FusedBatchNormV3conv2d_79/Relu:activations:0-batch_normalization_82/ReadVariableOp:value:0/batch_normalization_82/ReadVariableOp_1:value:0>batch_normalization_82/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( ╜
max_pooling2d_38/MaxPoolMaxPool+batch_normalization_82/FusedBatchNormV3:y:0*/
_output_shapes
:         ??*
ksize
*
paddingVALID*
strides
Р
conv2d_80/Conv2D/ReadVariableOpReadVariableOp(conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╔
conv2d_80/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
Ж
 conv2d_80/BiasAdd/ReadVariableOpReadVariableOp)conv2d_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_80/BiasAddBiasAddconv2d_80/Conv2D:output:0(conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<l
conv2d_80/ReluReluconv2d_80/BiasAdd:output:0*
T0*/
_output_shapes
:         <<Р
%batch_normalization_83/ReadVariableOpReadVariableOp.batch_normalization_83_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_83/ReadVariableOp_1ReadVariableOp0batch_normalization_83_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┐
'batch_normalization_83/FusedBatchNormV3FusedBatchNormV3conv2d_80/Relu:activations:0-batch_normalization_83/ReadVariableOp:value:0/batch_normalization_83/ReadVariableOp_1:value:0>batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <<:::::*
epsilon%oГ:*
is_training( ╜
max_pooling2d_39/MaxPoolMaxPool+batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Р
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╔
conv2d_81/Conv2DConv2D!max_pooling2d_39/MaxPool:output:0'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Ж
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         l
conv2d_81/ReluReluconv2d_81/BiasAdd:output:0*
T0*/
_output_shapes
:         Р
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0┐
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3conv2d_81/Relu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( ╩
average_pooling2d_28/AvgPoolAvgPool+batch_normalization_84/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Р
conv2d_82/Conv2D/ReadVariableOpReadVariableOp(conv2d_82_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0═
conv2d_82/Conv2DConv2D%average_pooling2d_28/AvgPool:output:0'conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
Ж
 conv2d_82/BiasAdd/ReadVariableOpReadVariableOp)conv2d_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_82/BiasAddBiasAddconv2d_82/Conv2D:output:0(conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 l
conv2d_82/ReluReluconv2d_82/BiasAdd:output:0*
T0*/
_output_shapes
:         

 Р
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype0Ф
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype0▓
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╢
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0┐
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3conv2d_82/Relu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

 : : : : :*
epsilon%oГ:*
is_training( ╩
average_pooling2d_29/AvgPoolAvgPool+batch_normalization_85/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Т
flatten_16/ReshapeReshape%average_pooling2d_29/AvgPool:output:0flatten_16/Const:output:0*
T0*(
_output_shapes
:         аЗ
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	аd*
dtype0Р
dense_37/MatMulMatMulflatten_16/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dД
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0С
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         db
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         dЖ
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Р
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_39/SoftmaxSoftmaxdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_39/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╗

NoOpNoOp7^batch_normalization_82/FusedBatchNormV3/ReadVariableOp9^batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_82/ReadVariableOp(^batch_normalization_82/ReadVariableOp_17^batch_normalization_83/FusedBatchNormV3/ReadVariableOp9^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_83/ReadVariableOp(^batch_normalization_83/ReadVariableOp_17^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_1!^conv2d_79/BiasAdd/ReadVariableOp ^conv2d_79/Conv2D/ReadVariableOp!^conv2d_80/BiasAdd/ReadVariableOp ^conv2d_80/Conv2D/ReadVariableOp!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp!^conv2d_82/BiasAdd/ReadVariableOp ^conv2d_82/Conv2D/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_82/FusedBatchNormV3/ReadVariableOp6batch_normalization_82/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_18batch_normalization_82/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_82/ReadVariableOp%batch_normalization_82/ReadVariableOp2R
'batch_normalization_82/ReadVariableOp_1'batch_normalization_82/ReadVariableOp_12p
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp6batch_normalization_83/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_18batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_83/ReadVariableOp%batch_normalization_83/ReadVariableOp2R
'batch_normalization_83/ReadVariableOp_1'batch_normalization_83/ReadVariableOp_12p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12D
 conv2d_79/BiasAdd/ReadVariableOp conv2d_79/BiasAdd/ReadVariableOp2B
conv2d_79/Conv2D/ReadVariableOpconv2d_79/Conv2D/ReadVariableOp2D
 conv2d_80/BiasAdd/ReadVariableOp conv2d_80/BiasAdd/ReadVariableOp2B
conv2d_80/Conv2D/ReadVariableOpconv2d_80/Conv2D/ReadVariableOp2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2D
 conv2d_82/BiasAdd/ReadVariableOp conv2d_82/BiasAdd/ReadVariableOp2B
conv2d_82/Conv2D/ReadVariableOpconv2d_82/Conv2D/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Л
в
$__inference_signature_wrapper_127844
conv2d_79_input!
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

unknown_11:

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

unknown_23:	аd

unknown_24:d

unknown_25:d

unknown_26:

unknown_27:

unknown_28:
identityИвStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallconv2d_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_126718o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input
╕
о
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127909

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

unknown_11:

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

unknown_23:	аd

unknown_24:d

unknown_25:d

unknown_26:

unknown_27:

unknown_28:
identityИвStatefulPartitionedCallы
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ц	
╥
7__inference_batch_normalization_84_layer_call_fn_128421

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЮ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126892Й
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
Йл
Ў
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128204

inputsB
(conv2d_79_conv2d_readvariableop_resource:7
)conv2d_79_biasadd_readvariableop_resource:<
.batch_normalization_82_readvariableop_resource:>
0batch_normalization_82_readvariableop_1_resource:M
?batch_normalization_82_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_82_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_80_conv2d_readvariableop_resource:7
)conv2d_80_biasadd_readvariableop_resource:<
.batch_normalization_83_readvariableop_resource:>
0batch_normalization_83_readvariableop_1_resource:M
?batch_normalization_83_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_81_conv2d_readvariableop_resource:7
)conv2d_81_biasadd_readvariableop_resource:<
.batch_normalization_84_readvariableop_resource:>
0batch_normalization_84_readvariableop_1_resource:M
?batch_normalization_84_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_82_conv2d_readvariableop_resource: 7
)conv2d_82_biasadd_readvariableop_resource: <
.batch_normalization_85_readvariableop_resource: >
0batch_normalization_85_readvariableop_1_resource: M
?batch_normalization_85_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource: :
'dense_37_matmul_readvariableop_resource:	аd6
(dense_37_biasadd_readvariableop_resource:d9
'dense_38_matmul_readvariableop_resource:d6
(dense_38_biasadd_readvariableop_resource:9
'dense_39_matmul_readvariableop_resource:6
(dense_39_biasadd_readvariableop_resource:
identityИв%batch_normalization_82/AssignNewValueв'batch_normalization_82/AssignNewValue_1в6batch_normalization_82/FusedBatchNormV3/ReadVariableOpв8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_82/ReadVariableOpв'batch_normalization_82/ReadVariableOp_1в%batch_normalization_83/AssignNewValueв'batch_normalization_83/AssignNewValue_1в6batch_normalization_83/FusedBatchNormV3/ReadVariableOpв8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_83/ReadVariableOpв'batch_normalization_83/ReadVariableOp_1в%batch_normalization_84/AssignNewValueв'batch_normalization_84/AssignNewValue_1в6batch_normalization_84/FusedBatchNormV3/ReadVariableOpв8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_84/ReadVariableOpв'batch_normalization_84/ReadVariableOp_1в%batch_normalization_85/AssignNewValueв'batch_normalization_85/AssignNewValue_1в6batch_normalization_85/FusedBatchNormV3/ReadVariableOpв8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_85/ReadVariableOpв'batch_normalization_85/ReadVariableOp_1в conv2d_79/BiasAdd/ReadVariableOpвconv2d_79/Conv2D/ReadVariableOpв conv2d_80/BiasAdd/ReadVariableOpвconv2d_80/Conv2D/ReadVariableOpв conv2d_81/BiasAdd/ReadVariableOpвconv2d_81/Conv2D/ReadVariableOpв conv2d_82/BiasAdd/ReadVariableOpвconv2d_82/Conv2D/ReadVariableOpвdense_37/BiasAdd/ReadVariableOpвdense_37/MatMul/ReadVariableOpвdense_38/BiasAdd/ReadVariableOpвdense_38/MatMul/ReadVariableOpвdense_39/BiasAdd/ReadVariableOpвdense_39/MatMul/ReadVariableOpР
conv2d_79/Conv2D/ReadVariableOpReadVariableOp(conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0о
conv2d_79/Conv2DConv2Dinputs'conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Ж
 conv2d_79/BiasAdd/ReadVariableOpReadVariableOp)conv2d_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_79/BiasAddBiasAddconv2d_79/Conv2D:output:0(conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         l
conv2d_79/ReluReluconv2d_79/BiasAdd:output:0*
T0*/
_output_shapes
:         Р
%batch_normalization_82/ReadVariableOpReadVariableOp.batch_normalization_82_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_82/ReadVariableOp_1ReadVariableOp0batch_normalization_82_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_82/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_82_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_82_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0═
'batch_normalization_82/FusedBatchNormV3FusedBatchNormV3conv2d_79/Relu:activations:0-batch_normalization_82/ReadVariableOp:value:0/batch_normalization_82/ReadVariableOp_1:value:0>batch_normalization_82/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_82/AssignNewValueAssignVariableOp?batch_normalization_82_fusedbatchnormv3_readvariableop_resource4batch_normalization_82/FusedBatchNormV3:batch_mean:07^batch_normalization_82/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_82/AssignNewValue_1AssignVariableOpAbatch_normalization_82_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_82/FusedBatchNormV3:batch_variance:09^batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╜
max_pooling2d_38/MaxPoolMaxPool+batch_normalization_82/FusedBatchNormV3:y:0*/
_output_shapes
:         ??*
ksize
*
paddingVALID*
strides
Р
conv2d_80/Conv2D/ReadVariableOpReadVariableOp(conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╔
conv2d_80/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
Ж
 conv2d_80/BiasAdd/ReadVariableOpReadVariableOp)conv2d_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_80/BiasAddBiasAddconv2d_80/Conv2D:output:0(conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<l
conv2d_80/ReluReluconv2d_80/BiasAdd:output:0*
T0*/
_output_shapes
:         <<Р
%batch_normalization_83/ReadVariableOpReadVariableOp.batch_normalization_83_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_83/ReadVariableOp_1ReadVariableOp0batch_normalization_83_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0═
'batch_normalization_83/FusedBatchNormV3FusedBatchNormV3conv2d_80/Relu:activations:0-batch_normalization_83/ReadVariableOp:value:0/batch_normalization_83/ReadVariableOp_1:value:0>batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <<:::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_83/AssignNewValueAssignVariableOp?batch_normalization_83_fusedbatchnormv3_readvariableop_resource4batch_normalization_83/FusedBatchNormV3:batch_mean:07^batch_normalization_83/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_83/AssignNewValue_1AssignVariableOpAbatch_normalization_83_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_83/FusedBatchNormV3:batch_variance:09^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╜
max_pooling2d_39/MaxPoolMaxPool+batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Р
conv2d_81/Conv2D/ReadVariableOpReadVariableOp(conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╔
conv2d_81/Conv2DConv2D!max_pooling2d_39/MaxPool:output:0'conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
Ж
 conv2d_81/BiasAdd/ReadVariableOpReadVariableOp)conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_81/BiasAddBiasAddconv2d_81/Conv2D:output:0(conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         l
conv2d_81/ReluReluconv2d_81/BiasAdd:output:0*
T0*/
_output_shapes
:         Р
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╢
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0═
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3conv2d_81/Relu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_84/AssignNewValueAssignVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource4batch_normalization_84/FusedBatchNormV3:batch_mean:07^batch_normalization_84/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_84/AssignNewValue_1AssignVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_84/FusedBatchNormV3:batch_variance:09^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╩
average_pooling2d_28/AvgPoolAvgPool+batch_normalization_84/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
Р
conv2d_82/Conv2D/ReadVariableOpReadVariableOp(conv2d_82_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0═
conv2d_82/Conv2DConv2D%average_pooling2d_28/AvgPool:output:0'conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
Ж
 conv2d_82/BiasAdd/ReadVariableOpReadVariableOp)conv2d_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_82/BiasAddBiasAddconv2d_82/Conv2D:output:0(conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 l
conv2d_82/ReluReluconv2d_82/BiasAdd:output:0*
T0*/
_output_shapes
:         

 Р
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype0Ф
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype0▓
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╢
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0═
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3conv2d_82/Relu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

 : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_85/AssignNewValueAssignVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource4batch_normalization_85/FusedBatchNormV3:batch_mean:07^batch_normalization_85/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_85/AssignNewValue_1AssignVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_85/FusedBatchNormV3:batch_variance:09^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(╩
average_pooling2d_29/AvgPoolAvgPool+batch_normalization_85/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
a
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Т
flatten_16/ReshapeReshape%average_pooling2d_29/AvgPool:output:0flatten_16/Const:output:0*
T0*(
_output_shapes
:         аЗ
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes
:	аd*
dtype0Р
dense_37/MatMulMatMulflatten_16/Reshape:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dД
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0С
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         db
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         dЖ
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Р
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_38/ReluReludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Р
dense_39/MatMulMatMuldense_38/Relu:activations:0&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_39/SoftmaxSoftmaxdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_39/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp&^batch_normalization_82/AssignNewValue(^batch_normalization_82/AssignNewValue_17^batch_normalization_82/FusedBatchNormV3/ReadVariableOp9^batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_82/ReadVariableOp(^batch_normalization_82/ReadVariableOp_1&^batch_normalization_83/AssignNewValue(^batch_normalization_83/AssignNewValue_17^batch_normalization_83/FusedBatchNormV3/ReadVariableOp9^batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_83/ReadVariableOp(^batch_normalization_83/ReadVariableOp_1&^batch_normalization_84/AssignNewValue(^batch_normalization_84/AssignNewValue_17^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_1&^batch_normalization_85/AssignNewValue(^batch_normalization_85/AssignNewValue_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_1!^conv2d_79/BiasAdd/ReadVariableOp ^conv2d_79/Conv2D/ReadVariableOp!^conv2d_80/BiasAdd/ReadVariableOp ^conv2d_80/Conv2D/ReadVariableOp!^conv2d_81/BiasAdd/ReadVariableOp ^conv2d_81/Conv2D/ReadVariableOp!^conv2d_82/BiasAdd/ReadVariableOp ^conv2d_82/Conv2D/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_82/AssignNewValue%batch_normalization_82/AssignNewValue2R
'batch_normalization_82/AssignNewValue_1'batch_normalization_82/AssignNewValue_12p
6batch_normalization_82/FusedBatchNormV3/ReadVariableOp6batch_normalization_82/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_82/FusedBatchNormV3/ReadVariableOp_18batch_normalization_82/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_82/ReadVariableOp%batch_normalization_82/ReadVariableOp2R
'batch_normalization_82/ReadVariableOp_1'batch_normalization_82/ReadVariableOp_12N
%batch_normalization_83/AssignNewValue%batch_normalization_83/AssignNewValue2R
'batch_normalization_83/AssignNewValue_1'batch_normalization_83/AssignNewValue_12p
6batch_normalization_83/FusedBatchNormV3/ReadVariableOp6batch_normalization_83/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_83/FusedBatchNormV3/ReadVariableOp_18batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_83/ReadVariableOp%batch_normalization_83/ReadVariableOp2R
'batch_normalization_83/ReadVariableOp_1'batch_normalization_83/ReadVariableOp_12N
%batch_normalization_84/AssignNewValue%batch_normalization_84/AssignNewValue2R
'batch_normalization_84/AssignNewValue_1'batch_normalization_84/AssignNewValue_12p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12N
%batch_normalization_85/AssignNewValue%batch_normalization_85/AssignNewValue2R
'batch_normalization_85/AssignNewValue_1'batch_normalization_85/AssignNewValue_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12D
 conv2d_79/BiasAdd/ReadVariableOp conv2d_79/BiasAdd/ReadVariableOp2B
conv2d_79/Conv2D/ReadVariableOpconv2d_79/Conv2D/ReadVariableOp2D
 conv2d_80/BiasAdd/ReadVariableOp conv2d_80/BiasAdd/ReadVariableOp2B
conv2d_80/Conv2D/ReadVariableOpconv2d_80/Conv2D/ReadVariableOp2D
 conv2d_81/BiasAdd/ReadVariableOp conv2d_81/BiasAdd/ReadVariableOp2B
conv2d_81/Conv2D/ReadVariableOpconv2d_81/Conv2D/ReadVariableOp2D
 conv2d_82/BiasAdd/ReadVariableOp conv2d_82/BiasAdd/ReadVariableOp2B
conv2d_82/Conv2D/ReadVariableOpconv2d_82/Conv2D/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф	
╥
7__inference_batch_normalization_84_layer_call_fn_128434

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЬ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126923Й
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
┼
Q
5__inference_average_pooling2d_29_layer_call_fn_128567

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
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019Г
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
═
Э
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126816

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
═
Э
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126740

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
Я

Ў
D__inference_dense_37_layer_call_and_return_conditional_losses_127156

inputs1
matmul_readvariableop_resource:	аd-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
═
Э
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126892

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
З
┴
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126923

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
▀╚
р%
!__inference__wrapped_model_126718
conv2d_79_input[
Amy_modelv3_95_bn_augdata_conv2d_79_conv2d_readvariableop_resource:P
Bmy_modelv3_95_bn_augdata_conv2d_79_biasadd_readvariableop_resource:U
Gmy_modelv3_95_bn_augdata_batch_normalization_82_readvariableop_resource:W
Imy_modelv3_95_bn_augdata_batch_normalization_82_readvariableop_1_resource:f
Xmy_modelv3_95_bn_augdata_batch_normalization_82_fusedbatchnormv3_readvariableop_resource:h
Zmy_modelv3_95_bn_augdata_batch_normalization_82_fusedbatchnormv3_readvariableop_1_resource:[
Amy_modelv3_95_bn_augdata_conv2d_80_conv2d_readvariableop_resource:P
Bmy_modelv3_95_bn_augdata_conv2d_80_biasadd_readvariableop_resource:U
Gmy_modelv3_95_bn_augdata_batch_normalization_83_readvariableop_resource:W
Imy_modelv3_95_bn_augdata_batch_normalization_83_readvariableop_1_resource:f
Xmy_modelv3_95_bn_augdata_batch_normalization_83_fusedbatchnormv3_readvariableop_resource:h
Zmy_modelv3_95_bn_augdata_batch_normalization_83_fusedbatchnormv3_readvariableop_1_resource:[
Amy_modelv3_95_bn_augdata_conv2d_81_conv2d_readvariableop_resource:P
Bmy_modelv3_95_bn_augdata_conv2d_81_biasadd_readvariableop_resource:U
Gmy_modelv3_95_bn_augdata_batch_normalization_84_readvariableop_resource:W
Imy_modelv3_95_bn_augdata_batch_normalization_84_readvariableop_1_resource:f
Xmy_modelv3_95_bn_augdata_batch_normalization_84_fusedbatchnormv3_readvariableop_resource:h
Zmy_modelv3_95_bn_augdata_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:[
Amy_modelv3_95_bn_augdata_conv2d_82_conv2d_readvariableop_resource: P
Bmy_modelv3_95_bn_augdata_conv2d_82_biasadd_readvariableop_resource: U
Gmy_modelv3_95_bn_augdata_batch_normalization_85_readvariableop_resource: W
Imy_modelv3_95_bn_augdata_batch_normalization_85_readvariableop_1_resource: f
Xmy_modelv3_95_bn_augdata_batch_normalization_85_fusedbatchnormv3_readvariableop_resource: h
Zmy_modelv3_95_bn_augdata_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource: S
@my_modelv3_95_bn_augdata_dense_37_matmul_readvariableop_resource:	аdO
Amy_modelv3_95_bn_augdata_dense_37_biasadd_readvariableop_resource:dR
@my_modelv3_95_bn_augdata_dense_38_matmul_readvariableop_resource:dO
Amy_modelv3_95_bn_augdata_dense_38_biasadd_readvariableop_resource:R
@my_modelv3_95_bn_augdata_dense_39_matmul_readvariableop_resource:O
Amy_modelv3_95_bn_augdata_dense_39_biasadd_readvariableop_resource:
identityИвOmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOpвQmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1в>my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOpв@my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_1вOmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOpвQmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1в>my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOpв@my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_1вOmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOpвQmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1в>my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOpв@my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_1вOmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOpвQmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1в>my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOpв@my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_1в9my_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOpв8my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOpв9my_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOpв8my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOpв9my_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOpв8my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOpв9my_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOpв8my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOpв8my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOpв7my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOpв8my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOpв7my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOpв8my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOpв7my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOp┬
8my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_conv2d_79_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0щ
)my_modelV3_95_BN_AugData/conv2d_79/Conv2DConv2Dconv2d_79_input@my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
╕
9my_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOpReadVariableOpBmy_modelv3_95_bn_augdata_conv2d_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ц
*my_modelV3_95_BN_AugData/conv2d_79/BiasAddBiasAdd2my_modelV3_95_BN_AugData/conv2d_79/Conv2D:output:0Amy_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         Ю
'my_modelV3_95_BN_AugData/conv2d_79/ReluRelu3my_modelV3_95_BN_AugData/conv2d_79/BiasAdd:output:0*
T0*/
_output_shapes
:         ┬
>my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOpReadVariableOpGmy_modelv3_95_bn_augdata_batch_normalization_82_readvariableop_resource*
_output_shapes
:*
dtype0╞
@my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_1ReadVariableOpImy_modelv3_95_bn_augdata_batch_normalization_82_readvariableop_1_resource*
_output_shapes
:*
dtype0ф
Omy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOpReadVariableOpXmy_modelv3_95_bn_augdata_batch_normalization_82_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ш
Qmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZmy_modelv3_95_bn_augdata_batch_normalization_82_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╒
@my_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3FusedBatchNormV35my_modelV3_95_BN_AugData/conv2d_79/Relu:activations:0Fmy_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp:value:0Hmy_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_1:value:0Wmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp:value:0Ymy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( я
1my_modelV3_95_BN_AugData/max_pooling2d_38/MaxPoolMaxPoolDmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3:y:0*/
_output_shapes
:         ??*
ksize
*
paddingVALID*
strides
┬
8my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_conv2d_80_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
)my_modelV3_95_BN_AugData/conv2d_80/Conv2DConv2D:my_modelV3_95_BN_AugData/max_pooling2d_38/MaxPool:output:0@my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<*
paddingVALID*
strides
╕
9my_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOpReadVariableOpBmy_modelv3_95_bn_augdata_conv2d_80_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ц
*my_modelV3_95_BN_AugData/conv2d_80/BiasAddBiasAdd2my_modelV3_95_BN_AugData/conv2d_80/Conv2D:output:0Amy_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<Ю
'my_modelV3_95_BN_AugData/conv2d_80/ReluRelu3my_modelV3_95_BN_AugData/conv2d_80/BiasAdd:output:0*
T0*/
_output_shapes
:         <<┬
>my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOpReadVariableOpGmy_modelv3_95_bn_augdata_batch_normalization_83_readvariableop_resource*
_output_shapes
:*
dtype0╞
@my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_1ReadVariableOpImy_modelv3_95_bn_augdata_batch_normalization_83_readvariableop_1_resource*
_output_shapes
:*
dtype0ф
Omy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOpReadVariableOpXmy_modelv3_95_bn_augdata_batch_normalization_83_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ш
Qmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZmy_modelv3_95_bn_augdata_batch_normalization_83_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╒
@my_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3FusedBatchNormV35my_modelV3_95_BN_AugData/conv2d_80/Relu:activations:0Fmy_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp:value:0Hmy_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_1:value:0Wmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp:value:0Ymy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <<:::::*
epsilon%oГ:*
is_training( я
1my_modelV3_95_BN_AugData/max_pooling2d_39/MaxPoolMaxPoolDmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3:y:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
┬
8my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_conv2d_81_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
)my_modelV3_95_BN_AugData/conv2d_81/Conv2DConv2D:my_modelV3_95_BN_AugData/max_pooling2d_39/MaxPool:output:0@my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
╕
9my_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOpReadVariableOpBmy_modelv3_95_bn_augdata_conv2d_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ц
*my_modelV3_95_BN_AugData/conv2d_81/BiasAddBiasAdd2my_modelV3_95_BN_AugData/conv2d_81/Conv2D:output:0Amy_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         Ю
'my_modelV3_95_BN_AugData/conv2d_81/ReluRelu3my_modelV3_95_BN_AugData/conv2d_81/BiasAdd:output:0*
T0*/
_output_shapes
:         ┬
>my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOpReadVariableOpGmy_modelv3_95_bn_augdata_batch_normalization_84_readvariableop_resource*
_output_shapes
:*
dtype0╞
@my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_1ReadVariableOpImy_modelv3_95_bn_augdata_batch_normalization_84_readvariableop_1_resource*
_output_shapes
:*
dtype0ф
Omy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOpXmy_modelv3_95_bn_augdata_batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ш
Qmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZmy_modelv3_95_bn_augdata_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╒
@my_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3FusedBatchNormV35my_modelV3_95_BN_AugData/conv2d_81/Relu:activations:0Fmy_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp:value:0Hmy_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_1:value:0Wmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0Ymy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
epsilon%oГ:*
is_training( №
5my_modelV3_95_BN_AugData/average_pooling2d_28/AvgPoolAvgPoolDmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
┬
8my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_conv2d_82_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ш
)my_modelV3_95_BN_AugData/conv2d_82/Conv2DConv2D>my_modelV3_95_BN_AugData/average_pooling2d_28/AvgPool:output:0@my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 *
paddingVALID*
strides
╕
9my_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOpReadVariableOpBmy_modelv3_95_bn_augdata_conv2d_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ц
*my_modelV3_95_BN_AugData/conv2d_82/BiasAddBiasAdd2my_modelV3_95_BN_AugData/conv2d_82/Conv2D:output:0Amy_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         

 Ю
'my_modelV3_95_BN_AugData/conv2d_82/ReluRelu3my_modelV3_95_BN_AugData/conv2d_82/BiasAdd:output:0*
T0*/
_output_shapes
:         

 ┬
>my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOpReadVariableOpGmy_modelv3_95_bn_augdata_batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype0╞
@my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_1ReadVariableOpImy_modelv3_95_bn_augdata_batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype0ф
Omy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOpXmy_modelv3_95_bn_augdata_batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ш
Qmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZmy_modelv3_95_bn_augdata_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╒
@my_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3FusedBatchNormV35my_modelV3_95_BN_AugData/conv2d_82/Relu:activations:0Fmy_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp:value:0Hmy_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_1:value:0Wmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0Ymy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         

 : : : : :*
epsilon%oГ:*
is_training( №
5my_modelV3_95_BN_AugData/average_pooling2d_29/AvgPoolAvgPoolDmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
z
)my_modelV3_95_BN_AugData/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▌
+my_modelV3_95_BN_AugData/flatten_16/ReshapeReshape>my_modelV3_95_BN_AugData/average_pooling2d_29/AvgPool:output:02my_modelV3_95_BN_AugData/flatten_16/Const:output:0*
T0*(
_output_shapes
:         а╣
7my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOpReadVariableOp@my_modelv3_95_bn_augdata_dense_37_matmul_readvariableop_resource*
_output_shapes
:	аd*
dtype0█
(my_modelV3_95_BN_AugData/dense_37/MatMulMatMul4my_modelV3_95_BN_AugData/flatten_16/Reshape:output:0?my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d╢
8my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_dense_37_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0▄
)my_modelV3_95_BN_AugData/dense_37/BiasAddBiasAdd2my_modelV3_95_BN_AugData/dense_37/MatMul:product:0@my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         dФ
&my_modelV3_95_BN_AugData/dense_37/ReluRelu2my_modelV3_95_BN_AugData/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:         d╕
7my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOpReadVariableOp@my_modelv3_95_bn_augdata_dense_38_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0█
(my_modelV3_95_BN_AugData/dense_38/MatMulMatMul4my_modelV3_95_BN_AugData/dense_37/Relu:activations:0?my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
8my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▄
)my_modelV3_95_BN_AugData/dense_38/BiasAddBiasAdd2my_modelV3_95_BN_AugData/dense_38/MatMul:product:0@my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ф
&my_modelV3_95_BN_AugData/dense_38/ReluRelu2my_modelV3_95_BN_AugData/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:         ╕
7my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOpReadVariableOp@my_modelv3_95_bn_augdata_dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0█
(my_modelV3_95_BN_AugData/dense_39/MatMulMatMul4my_modelV3_95_BN_AugData/dense_38/Relu:activations:0?my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╢
8my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOpReadVariableOpAmy_modelv3_95_bn_augdata_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▄
)my_modelV3_95_BN_AugData/dense_39/BiasAddBiasAdd2my_modelV3_95_BN_AugData/dense_39/MatMul:product:0@my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ъ
)my_modelV3_95_BN_AugData/dense_39/SoftmaxSoftmax2my_modelV3_95_BN_AugData/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:         В
IdentityIdentity3my_modelV3_95_BN_AugData/dense_39/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOpP^my_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOpR^my_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1?^my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOpA^my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_1P^my_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOpR^my_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1?^my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOpA^my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_1P^my_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOpR^my_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?^my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOpA^my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_1P^my_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOpR^my_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?^my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOpA^my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_1:^my_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOp9^my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOp:^my_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOp9^my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOp:^my_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOp9^my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOp:^my_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOp9^my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOp9^my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOp8^my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOp9^my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOp8^my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOp9^my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOp8^my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2в
Omy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOpOmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp2ж
Qmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_1Qmy_modelV3_95_BN_AugData/batch_normalization_82/FusedBatchNormV3/ReadVariableOp_12А
>my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp>my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp2Д
@my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_1@my_modelV3_95_BN_AugData/batch_normalization_82/ReadVariableOp_12в
Omy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOpOmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp2ж
Qmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_1Qmy_modelV3_95_BN_AugData/batch_normalization_83/FusedBatchNormV3/ReadVariableOp_12А
>my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp>my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp2Д
@my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_1@my_modelV3_95_BN_AugData/batch_normalization_83/ReadVariableOp_12в
Omy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOpOmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp2ж
Qmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1Qmy_modelV3_95_BN_AugData/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12А
>my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp>my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp2Д
@my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_1@my_modelV3_95_BN_AugData/batch_normalization_84/ReadVariableOp_12в
Omy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOpOmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp2ж
Qmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1Qmy_modelV3_95_BN_AugData/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12А
>my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp>my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp2Д
@my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_1@my_modelV3_95_BN_AugData/batch_normalization_85/ReadVariableOp_12v
9my_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOp9my_modelV3_95_BN_AugData/conv2d_79/BiasAdd/ReadVariableOp2t
8my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOp8my_modelV3_95_BN_AugData/conv2d_79/Conv2D/ReadVariableOp2v
9my_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOp9my_modelV3_95_BN_AugData/conv2d_80/BiasAdd/ReadVariableOp2t
8my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOp8my_modelV3_95_BN_AugData/conv2d_80/Conv2D/ReadVariableOp2v
9my_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOp9my_modelV3_95_BN_AugData/conv2d_81/BiasAdd/ReadVariableOp2t
8my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOp8my_modelV3_95_BN_AugData/conv2d_81/Conv2D/ReadVariableOp2v
9my_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOp9my_modelV3_95_BN_AugData/conv2d_82/BiasAdd/ReadVariableOp2t
8my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOp8my_modelV3_95_BN_AugData/conv2d_82/Conv2D/ReadVariableOp2t
8my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOp8my_modelV3_95_BN_AugData/dense_37/BiasAdd/ReadVariableOp2r
7my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOp7my_modelV3_95_BN_AugData/dense_37/MatMul/ReadVariableOp2t
8my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOp8my_modelV3_95_BN_AugData/dense_38/BiasAdd/ReadVariableOp2r
7my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOp7my_modelV3_95_BN_AugData/dense_38/MatMul/ReadVariableOp2t
8my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOp8my_modelV3_95_BN_AugData/dense_39/BiasAdd/ReadVariableOp2r
7my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOp7my_modelV3_95_BN_AugData/dense_39/MatMul/ReadVariableOp:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input
б
l
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943

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
╜
M
1__inference_max_pooling2d_38_layer_call_fn_128291

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
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791Г
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
Е
■
E__inference_conv2d_82_layer_call_and_return_conditional_losses_128500

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
:         

 *
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
:         

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ф	
╥
7__inference_batch_normalization_82_layer_call_fn_128250

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЬ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126771Й
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
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_128296

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
═
Э
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128544

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
Й
■
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╡г
╛%
__inference__traced_save_128915
file_prefix/
+savev2_conv2d_79_kernel_read_readvariableop-
)savev2_conv2d_79_bias_read_readvariableop;
7savev2_batch_normalization_82_gamma_read_readvariableop:
6savev2_batch_normalization_82_beta_read_readvariableopA
=savev2_batch_normalization_82_moving_mean_read_readvariableopE
Asavev2_batch_normalization_82_moving_variance_read_readvariableop/
+savev2_conv2d_80_kernel_read_readvariableop-
)savev2_conv2d_80_bias_read_readvariableop;
7savev2_batch_normalization_83_gamma_read_readvariableop:
6savev2_batch_normalization_83_beta_read_readvariableopA
=savev2_batch_normalization_83_moving_mean_read_readvariableopE
Asavev2_batch_normalization_83_moving_variance_read_readvariableop/
+savev2_conv2d_81_kernel_read_readvariableop-
)savev2_conv2d_81_bias_read_readvariableop;
7savev2_batch_normalization_84_gamma_read_readvariableop:
6savev2_batch_normalization_84_beta_read_readvariableopA
=savev2_batch_normalization_84_moving_mean_read_readvariableopE
Asavev2_batch_normalization_84_moving_variance_read_readvariableop/
+savev2_conv2d_82_kernel_read_readvariableop-
)savev2_conv2d_82_bias_read_readvariableop;
7savev2_batch_normalization_85_gamma_read_readvariableop:
6savev2_batch_normalization_85_beta_read_readvariableopA
=savev2_batch_normalization_85_moving_mean_read_readvariableopE
Asavev2_batch_normalization_85_moving_variance_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_79_kernel_m_read_readvariableop4
0savev2_adam_conv2d_79_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_82_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_82_beta_m_read_readvariableop6
2savev2_adam_conv2d_80_kernel_m_read_readvariableop4
0savev2_adam_conv2d_80_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_83_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_83_beta_m_read_readvariableop6
2savev2_adam_conv2d_81_kernel_m_read_readvariableop4
0savev2_adam_conv2d_81_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_84_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_84_beta_m_read_readvariableop6
2savev2_adam_conv2d_82_kernel_m_read_readvariableop4
0savev2_adam_conv2d_82_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_85_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_85_beta_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop5
1savev2_adam_dense_39_kernel_m_read_readvariableop3
/savev2_adam_dense_39_bias_m_read_readvariableop6
2savev2_adam_conv2d_79_kernel_v_read_readvariableop4
0savev2_adam_conv2d_79_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_82_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_82_beta_v_read_readvariableop6
2savev2_adam_conv2d_80_kernel_v_read_readvariableop4
0savev2_adam_conv2d_80_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_83_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_83_beta_v_read_readvariableop6
2savev2_adam_conv2d_81_kernel_v_read_readvariableop4
0savev2_adam_conv2d_81_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_84_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_84_beta_v_read_readvariableop6
2savev2_adam_conv2d_82_kernel_v_read_readvariableop4
0savev2_adam_conv2d_82_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_85_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_85_beta_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop5
1savev2_adam_dense_39_kernel_v_read_readvariableop3
/savev2_adam_dense_39_bias_v_read_readvariableop
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
: ╖.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*р-
value╓-B╙-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHШ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*╜
value│B░TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Й$
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_79_kernel_read_readvariableop)savev2_conv2d_79_bias_read_readvariableop7savev2_batch_normalization_82_gamma_read_readvariableop6savev2_batch_normalization_82_beta_read_readvariableop=savev2_batch_normalization_82_moving_mean_read_readvariableopAsavev2_batch_normalization_82_moving_variance_read_readvariableop+savev2_conv2d_80_kernel_read_readvariableop)savev2_conv2d_80_bias_read_readvariableop7savev2_batch_normalization_83_gamma_read_readvariableop6savev2_batch_normalization_83_beta_read_readvariableop=savev2_batch_normalization_83_moving_mean_read_readvariableopAsavev2_batch_normalization_83_moving_variance_read_readvariableop+savev2_conv2d_81_kernel_read_readvariableop)savev2_conv2d_81_bias_read_readvariableop7savev2_batch_normalization_84_gamma_read_readvariableop6savev2_batch_normalization_84_beta_read_readvariableop=savev2_batch_normalization_84_moving_mean_read_readvariableopAsavev2_batch_normalization_84_moving_variance_read_readvariableop+savev2_conv2d_82_kernel_read_readvariableop)savev2_conv2d_82_bias_read_readvariableop7savev2_batch_normalization_85_gamma_read_readvariableop6savev2_batch_normalization_85_beta_read_readvariableop=savev2_batch_normalization_85_moving_mean_read_readvariableopAsavev2_batch_normalization_85_moving_variance_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_79_kernel_m_read_readvariableop0savev2_adam_conv2d_79_bias_m_read_readvariableop>savev2_adam_batch_normalization_82_gamma_m_read_readvariableop=savev2_adam_batch_normalization_82_beta_m_read_readvariableop2savev2_adam_conv2d_80_kernel_m_read_readvariableop0savev2_adam_conv2d_80_bias_m_read_readvariableop>savev2_adam_batch_normalization_83_gamma_m_read_readvariableop=savev2_adam_batch_normalization_83_beta_m_read_readvariableop2savev2_adam_conv2d_81_kernel_m_read_readvariableop0savev2_adam_conv2d_81_bias_m_read_readvariableop>savev2_adam_batch_normalization_84_gamma_m_read_readvariableop=savev2_adam_batch_normalization_84_beta_m_read_readvariableop2savev2_adam_conv2d_82_kernel_m_read_readvariableop0savev2_adam_conv2d_82_bias_m_read_readvariableop>savev2_adam_batch_normalization_85_gamma_m_read_readvariableop=savev2_adam_batch_normalization_85_beta_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop1savev2_adam_dense_39_kernel_m_read_readvariableop/savev2_adam_dense_39_bias_m_read_readvariableop2savev2_adam_conv2d_79_kernel_v_read_readvariableop0savev2_adam_conv2d_79_bias_v_read_readvariableop>savev2_adam_batch_normalization_82_gamma_v_read_readvariableop=savev2_adam_batch_normalization_82_beta_v_read_readvariableop2savev2_adam_conv2d_80_kernel_v_read_readvariableop0savev2_adam_conv2d_80_bias_v_read_readvariableop>savev2_adam_batch_normalization_83_gamma_v_read_readvariableop=savev2_adam_batch_normalization_83_beta_v_read_readvariableop2savev2_adam_conv2d_81_kernel_v_read_readvariableop0savev2_adam_conv2d_81_bias_v_read_readvariableop>savev2_adam_batch_normalization_84_gamma_v_read_readvariableop=savev2_adam_batch_normalization_84_beta_v_read_readvariableop2savev2_adam_conv2d_82_kernel_v_read_readvariableop0savev2_adam_conv2d_82_bias_v_read_readvariableop>savev2_adam_batch_normalization_85_gamma_v_read_readvariableop=savev2_adam_batch_normalization_85_beta_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop1savev2_adam_dense_39_kernel_v_read_readvariableop/savev2_adam_dense_39_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *b
dtypesX
V2T	Р
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

identity_1Identity_1:output:0*Ю
_input_shapesМ
Й: ::::::::::::::::::: : : : : : :	аd:d:d:::: : : : : : : : : ::::::::::::: : : : :	аd:d:d:::::::::::::::: : : : :	аd:d:d:::: 2(
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
:: 
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
:	аd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :'

_output_shapes
: :,((
&
_output_shapes
:: )

_output_shapes
:: *

_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
: : 5

_output_shapes
: : 6

_output_shapes
: : 7

_output_shapes
: :%8!

_output_shapes
:	аd: 9

_output_shapes
:d:$: 

_output_shapes

:d: ;

_output_shapes
::$< 

_output_shapes

:: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
:: @

_output_shapes
:: A

_output_shapes
::,B(
&
_output_shapes
:: C
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
:: G

_output_shapes
:: H

_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
: : K

_output_shapes
: : L

_output_shapes
: : M

_output_shapes
: :%N!

_output_shapes
:	аd: O

_output_shapes
:d:$P 

_output_shapes

:d: Q

_output_shapes
::$R 

_output_shapes

:: S

_output_shapes
::T

_output_shapes
: 
Ц	
╥
7__inference_batch_normalization_85_layer_call_fn_128513

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЮ
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
GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126968Й
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
═
Э
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128268

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
╞R
ў
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127197

inputs*
conv2d_79_127041:
conv2d_79_127043:+
batch_normalization_82_127046:+
batch_normalization_82_127048:+
batch_normalization_82_127050:+
batch_normalization_82_127052:*
conv2d_80_127068:
conv2d_80_127070:+
batch_normalization_83_127073:+
batch_normalization_83_127075:+
batch_normalization_83_127077:+
batch_normalization_83_127079:*
conv2d_81_127095:
conv2d_81_127097:+
batch_normalization_84_127100:+
batch_normalization_84_127102:+
batch_normalization_84_127104:+
batch_normalization_84_127106:*
conv2d_82_127122: 
conv2d_82_127124: +
batch_normalization_85_127127: +
batch_normalization_85_127129: +
batch_normalization_85_127131: +
batch_normalization_85_127133: "
dense_37_127157:	аd
dense_37_127159:d!
dense_38_127174:d
dense_38_127176:!
dense_39_127191:
dense_39_127193:
identityИв.batch_normalization_82/StatefulPartitionedCallв.batch_normalization_83/StatefulPartitionedCallв.batch_normalization_84/StatefulPartitionedCallв.batch_normalization_85/StatefulPartitionedCallв!conv2d_79/StatefulPartitionedCallв!conv2d_80/StatefulPartitionedCallв!conv2d_81/StatefulPartitionedCallв!conv2d_82/StatefulPartitionedCallв dense_37/StatefulPartitionedCallв dense_38/StatefulPartitionedCallв dense_39/StatefulPartitionedCall 
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_79_127041conv2d_79_127043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_127040Щ
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0batch_normalization_82_127046batch_normalization_82_127048batch_normalization_82_127050batch_normalization_82_127052*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_126740Д
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ??* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_126791в
!conv2d_80/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_80_127068conv2d_80_127070*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_80_layer_call_and_return_conditional_losses_127067Щ
.batch_normalization_83/StatefulPartitionedCallStatefulPartitionedCall*conv2d_80/StatefulPartitionedCall:output:0batch_normalization_83_127073batch_normalization_83_127075batch_normalization_83_127077batch_normalization_83_127079*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_126816Д
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_126867в
!conv2d_81/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0conv2d_81_127095conv2d_81_127097*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_81_layer_call_and_return_conditional_losses_127094Щ
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall*conv2d_81/StatefulPartitionedCall:output:0batch_normalization_84_127100batch_normalization_84_127102batch_normalization_84_127104batch_normalization_84_127106*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_126892М
$average_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_126943ж
!conv2d_82/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_28/PartitionedCall:output:0conv2d_82_127122conv2d_82_127124*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_82_layer_call_and_return_conditional_losses_127121Щ
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall*conv2d_82/StatefulPartitionedCall:output:0batch_normalization_85_127127batch_normalization_85_127129batch_normalization_85_127131batch_normalization_85_127133*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_126968М
$average_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_127019ч
flatten_16/PartitionedCallPartitionedCall-average_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_127143Р
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_37_127157dense_37_127159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_127156Ц
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_127174dense_38_127176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_127173Ц
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_127191dense_39_127193*
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
D__inference_dense_39_layer_call_and_return_conditional_losses_127190x
IdentityIdentity)dense_39/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp/^batch_normalization_82/StatefulPartitionedCall/^batch_normalization_83/StatefulPartitionedCall/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall"^conv2d_80/StatefulPartitionedCall"^conv2d_81/StatefulPartitionedCall"^conv2d_82/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2`
.batch_normalization_83/StatefulPartitionedCall.batch_normalization_83/StatefulPartitionedCall2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2F
!conv2d_80/StatefulPartitionedCall!conv2d_80/StatefulPartitionedCall2F
!conv2d_81/StatefulPartitionedCall!conv2d_81/StatefulPartitionedCall2F
!conv2d_82/StatefulPartitionedCall!conv2d_82/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╦
╖
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127611
conv2d_79_input!
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

unknown_11:

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

unknown_23:	аd

unknown_24:d

unknown_25:d

unknown_26:

unknown_27:

unknown_28:
identityИвStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallconv2d_79_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *]
fXRV
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         АА
)
_user_specified_nameconv2d_79_input"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
U
conv2d_79_inputB
!serving_default_conv2d_79_input:0         АА<
dense_390
StatefulPartitionedCall:0         tensorflow/serving/predict:▒в
█
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
layer_with_weights-10
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
ъ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta
,moving_mean
-moving_variance"
_tf_keras_layer
е
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
ъ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance"
_tf_keras_layer
е
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op"
_tf_keras_layer
ъ
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
	^gamma
_beta
`moving_mean
amoving_variance"
_tf_keras_layer
е
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias
 p_jit_compiled_convolution_op"
_tf_keras_layer
ъ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
waxis
	xgamma
ybeta
zmoving_mean
{moving_variance"
_tf_keras_layer
з
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"
_tf_keras_layer
л
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
├
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оkernel
	Пbias"
_tf_keras_layer
├
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Цkernel
	Чbias"
_tf_keras_layer
├
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Юkernel
	Яbias"
_tf_keras_layer
М
 0
!1
*2
+3
,4
-5
:6
;7
D8
E9
F10
G11
T12
U13
^14
_15
`16
a17
n18
o19
x20
y21
z22
{23
О24
П25
Ц26
Ч27
Ю28
Я29"
trackable_list_wrapper
╠
 0
!1
*2
+3
:4
;5
D6
E7
T8
U9
^10
_11
n12
o13
x14
y15
О16
П17
Ц18
Ч19
Ю20
Я21"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
б
еtrace_0
жtrace_1
зtrace_2
иtrace_32о
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127260
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127909
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127974
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127611┐
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
 zеtrace_0zжtrace_1zзtrace_2zиtrace_3
Н
йtrace_0
кtrace_1
лtrace_2
мtrace_32Ъ
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128089
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128204
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127691
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127771┐
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
 zйtrace_0zкtrace_1zлtrace_2zмtrace_3
╘B╤
!__inference__wrapped_model_126718conv2d_79_input"Ш
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
Ь
	нiter
оbeta_1
пbeta_2

░decay
▒learning_rate m╢!m╖*m╕+m╣:m║;m╗Dm╝Em╜Tm╛Um┐^m└_m┴nm┬om├xm─ym┼	Оm╞	Пm╟	Цm╚	Чm╔	Юm╩	Яm╦ v╠!v═*v╬+v╧:v╨;v╤Dv╥Ev╙Tv╘Uv╒^v╓_v╫nv╪ov┘xv┌yv█	Оv▄	Пv▌	Цv▐	Чv▀	Юvр	Яvс"
	optimizer
-
▓serving_default"
signature_map
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
╕trace_02╤
*__inference_conv2d_79_layer_call_fn_128213в
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
 z╕trace_0
Л
╣trace_02ь
E__inference_conv2d_79_layer_call_and_return_conditional_losses_128224в
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
 z╣trace_0
*:(2conv2d_79/kernel
:2conv2d_79/bias
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
*0
+1
,2
-3"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
у
┐trace_0
└trace_12и
7__inference_batch_normalization_82_layer_call_fn_128237
7__inference_batch_normalization_82_layer_call_fn_128250│
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
 z┐trace_0z└trace_1
Щ
┴trace_0
┬trace_12▐
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128268
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128286│
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
 z┴trace_0z┬trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_82/gamma
):'2batch_normalization_82/beta
2:0 (2"batch_normalization_82/moving_mean
6:4 (2&batch_normalization_82/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
ў
╚trace_02╪
1__inference_max_pooling2d_38_layer_call_fn_128291в
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
Т
╔trace_02є
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_128296в
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
 z╔trace_0
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
Ё
╧trace_02╤
*__inference_conv2d_80_layer_call_fn_128305в
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
 z╧trace_0
Л
╨trace_02ь
E__inference_conv2d_80_layer_call_and_return_conditional_losses_128316в
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
 z╨trace_0
*:(2conv2d_80/kernel
:2conv2d_80/bias
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
D0
E1
F2
G3"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
у
╓trace_0
╫trace_12и
7__inference_batch_normalization_83_layer_call_fn_128329
7__inference_batch_normalization_83_layer_call_fn_128342│
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
 z╓trace_0z╫trace_1
Щ
╪trace_0
┘trace_12▐
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128360
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128378│
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
 z╪trace_0z┘trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_83/gamma
):'2batch_normalization_83/beta
2:0 (2"batch_normalization_83/moving_mean
6:4 (2&batch_normalization_83/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ў
▀trace_02╪
1__inference_max_pooling2d_39_layer_call_fn_128383в
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
Т
рtrace_02є
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_128388в
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
 zрtrace_0
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
Ё
цtrace_02╤
*__inference_conv2d_81_layer_call_fn_128397в
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
 zцtrace_0
Л
чtrace_02ь
E__inference_conv2d_81_layer_call_and_return_conditional_losses_128408в
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
 zчtrace_0
*:(2conv2d_81/kernel
:2conv2d_81/bias
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
^0
_1
`2
a3"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
у
эtrace_0
юtrace_12и
7__inference_batch_normalization_84_layer_call_fn_128421
7__inference_batch_normalization_84_layer_call_fn_128434│
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
 zэtrace_0zюtrace_1
Щ
яtrace_0
Ёtrace_12▐
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128452
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128470│
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
 zяtrace_0zЁtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_84/gamma
):'2batch_normalization_84/beta
2:0 (2"batch_normalization_84/moving_mean
6:4 (2&batch_normalization_84/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
√
Ўtrace_02▄
5__inference_average_pooling2d_28_layer_call_fn_128475в
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
Ц
ўtrace_02ў
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_128480в
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
 zўtrace_0
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
Ё
¤trace_02╤
*__inference_conv2d_82_layer_call_fn_128489в
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
 z¤trace_0
Л
■trace_02ь
E__inference_conv2d_82_layer_call_and_return_conditional_losses_128500в
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
 z■trace_0
*:( 2conv2d_82/kernel
: 2conv2d_82/bias
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
x0
y1
z2
{3"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
у
Дtrace_0
Еtrace_12и
7__inference_batch_normalization_85_layer_call_fn_128513
7__inference_batch_normalization_85_layer_call_fn_128526│
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
 zДtrace_0zЕtrace_1
Щ
Жtrace_0
Зtrace_12▐
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128544
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128562│
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
 zЖtrace_0zЗtrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_85/gamma
):' 2batch_normalization_85/beta
2:0  (2"batch_normalization_85/moving_mean
6:4  (2&batch_normalization_85/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
√
Нtrace_02▄
5__inference_average_pooling2d_29_layer_call_fn_128567в
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
Ц
Оtrace_02ў
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_128572в
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
 zОtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
ё
Фtrace_02╥
+__inference_flatten_16_layer_call_fn_128577в
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
М
Хtrace_02э
F__inference_flatten_16_layer_call_and_return_conditional_losses_128583в
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
 zХtrace_0
0
О0
П1"
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
я
Ыtrace_02╨
)__inference_dense_37_layer_call_fn_128592в
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
К
Ьtrace_02ы
D__inference_dense_37_layer_call_and_return_conditional_losses_128603в
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
 zЬtrace_0
": 	аd2dense_37/kernel
:d2dense_37/bias
0
Ц0
Ч1"
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
я
вtrace_02╨
)__inference_dense_38_layer_call_fn_128612в
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
 zвtrace_0
К
гtrace_02ы
D__inference_dense_38_layer_call_and_return_conditional_losses_128623в
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
 zгtrace_0
!:d2dense_38/kernel
:2dense_38/bias
0
Ю0
Я1"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
я
йtrace_02╨
)__inference_dense_39_layer_call_fn_128632в
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
 zйtrace_0
К
кtrace_02ы
D__inference_dense_39_layer_call_and_return_conditional_losses_128643в
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
 zкtrace_0
!:2dense_39/kernel
:2dense_39/bias
X
,0
-1
F2
G3
`4
a5
z6
{7"
trackable_list_wrapper
Ц
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
15"
trackable_list_wrapper
0
л0
м1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBР
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127260conv2d_79_input"┐
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
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127909inputs"┐
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
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127974inputs"┐
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
УBР
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127611conv2d_79_input"┐
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
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128089inputs"┐
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
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128204inputs"┐
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
оBл
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127691conv2d_79_input"┐
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
оBл
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127771conv2d_79_input"┐
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
╙B╨
$__inference_signature_wrapper_127844conv2d_79_input"Ф
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
▐B█
*__inference_conv2d_79_layer_call_fn_128213inputs"в
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
∙BЎ
E__inference_conv2d_79_layer_call_and_return_conditional_losses_128224inputs"в
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
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_82_layer_call_fn_128237inputs"│
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
№B∙
7__inference_batch_normalization_82_layer_call_fn_128250inputs"│
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
ЧBФ
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128268inputs"│
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
ЧBФ
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128286inputs"│
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
1__inference_max_pooling2d_38_layer_call_fn_128291inputs"в
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
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_128296inputs"в
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
▐B█
*__inference_conv2d_80_layer_call_fn_128305inputs"в
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
∙BЎ
E__inference_conv2d_80_layer_call_and_return_conditional_losses_128316inputs"в
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
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_83_layer_call_fn_128329inputs"│
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
№B∙
7__inference_batch_normalization_83_layer_call_fn_128342inputs"│
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
ЧBФ
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128360inputs"│
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
ЧBФ
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128378inputs"│
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
1__inference_max_pooling2d_39_layer_call_fn_128383inputs"в
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
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_128388inputs"в
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
▐B█
*__inference_conv2d_81_layer_call_fn_128397inputs"в
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
∙BЎ
E__inference_conv2d_81_layer_call_and_return_conditional_losses_128408inputs"в
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
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_84_layer_call_fn_128421inputs"│
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
№B∙
7__inference_batch_normalization_84_layer_call_fn_128434inputs"│
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
ЧBФ
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128452inputs"│
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
ЧBФ
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128470inputs"│
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
5__inference_average_pooling2d_28_layer_call_fn_128475inputs"в
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
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_128480inputs"в
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
▐B█
*__inference_conv2d_82_layer_call_fn_128489inputs"в
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
∙BЎ
E__inference_conv2d_82_layer_call_and_return_conditional_losses_128500inputs"в
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
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_85_layer_call_fn_128513inputs"│
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
№B∙
7__inference_batch_normalization_85_layer_call_fn_128526inputs"│
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
ЧBФ
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128544inputs"│
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
ЧBФ
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128562inputs"│
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
5__inference_average_pooling2d_29_layer_call_fn_128567inputs"в
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
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_128572inputs"в
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
+__inference_flatten_16_layer_call_fn_128577inputs"в
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
F__inference_flatten_16_layer_call_and_return_conditional_losses_128583inputs"в
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
)__inference_dense_37_layer_call_fn_128592inputs"в
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
D__inference_dense_37_layer_call_and_return_conditional_losses_128603inputs"в
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
)__inference_dense_38_layer_call_fn_128612inputs"в
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
D__inference_dense_38_layer_call_and_return_conditional_losses_128623inputs"в
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
)__inference_dense_39_layer_call_fn_128632inputs"в
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
D__inference_dense_39_layer_call_and_return_conditional_losses_128643inputs"в
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
н	variables
о	keras_api

пtotal

░count"
_tf_keras_metric
c
▒	variables
▓	keras_api

│total

┤count
╡
_fn_kwargs"
_tf_keras_metric
0
п0
░1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
:  (2total
:  (2count
0
│0
┤1"
trackable_list_wrapper
.
▒	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_79/kernel/m
!:2Adam/conv2d_79/bias/m
/:-2#Adam/batch_normalization_82/gamma/m
.:,2"Adam/batch_normalization_82/beta/m
/:-2Adam/conv2d_80/kernel/m
!:2Adam/conv2d_80/bias/m
/:-2#Adam/batch_normalization_83/gamma/m
.:,2"Adam/batch_normalization_83/beta/m
/:-2Adam/conv2d_81/kernel/m
!:2Adam/conv2d_81/bias/m
/:-2#Adam/batch_normalization_84/gamma/m
.:,2"Adam/batch_normalization_84/beta/m
/:- 2Adam/conv2d_82/kernel/m
!: 2Adam/conv2d_82/bias/m
/:- 2#Adam/batch_normalization_85/gamma/m
.:, 2"Adam/batch_normalization_85/beta/m
':%	аd2Adam/dense_37/kernel/m
 :d2Adam/dense_37/bias/m
&:$d2Adam/dense_38/kernel/m
 :2Adam/dense_38/bias/m
&:$2Adam/dense_39/kernel/m
 :2Adam/dense_39/bias/m
/:-2Adam/conv2d_79/kernel/v
!:2Adam/conv2d_79/bias/v
/:-2#Adam/batch_normalization_82/gamma/v
.:,2"Adam/batch_normalization_82/beta/v
/:-2Adam/conv2d_80/kernel/v
!:2Adam/conv2d_80/bias/v
/:-2#Adam/batch_normalization_83/gamma/v
.:,2"Adam/batch_normalization_83/beta/v
/:-2Adam/conv2d_81/kernel/v
!:2Adam/conv2d_81/bias/v
/:-2#Adam/batch_normalization_84/gamma/v
.:,2"Adam/batch_normalization_84/beta/v
/:- 2Adam/conv2d_82/kernel/v
!: 2Adam/conv2d_82/bias/v
/:- 2#Adam/batch_normalization_85/gamma/v
.:, 2"Adam/batch_normalization_85/beta/v
':%	аd2Adam/dense_37/kernel/v
 :d2Adam/dense_37/bias/v
&:$d2Adam/dense_38/kernel/v
 :2Adam/dense_38/bias/v
&:$2Adam/dense_39/kernel/v
 :2Adam/dense_39/bias/v┼
!__inference__wrapped_model_126718Я$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯBв?
8в5
3К0
conv2d_79_input         АА
к "3к0
.
dense_39"К
dense_39         є
P__inference_average_pooling2d_28_layer_call_and_return_conditional_losses_128480ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╦
5__inference_average_pooling2d_28_layer_call_fn_128475СRвO
HвE
CК@
inputs4                                    
к ";К84                                    є
P__inference_average_pooling2d_29_layer_call_and_return_conditional_losses_128572ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╦
5__inference_average_pooling2d_29_layer_call_fn_128567СRвO
HвE
CК@
inputs4                                    
к ";К84                                    э
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128268Ц*+,-MвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ э
R__inference_batch_normalization_82_layer_call_and_return_conditional_losses_128286Ц*+,-MвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ┼
7__inference_batch_normalization_82_layer_call_fn_128237Й*+,-MвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ┼
7__inference_batch_normalization_82_layer_call_fn_128250Й*+,-MвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           э
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128360ЦDEFGMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ э
R__inference_batch_normalization_83_layer_call_and_return_conditional_losses_128378ЦDEFGMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ┼
7__inference_batch_normalization_83_layer_call_fn_128329ЙDEFGMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ┼
7__inference_batch_normalization_83_layer_call_fn_128342ЙDEFGMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           э
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128452Ц^_`aMвJ
Cв@
:К7
inputs+                           
p 
к "?в<
5К2
0+                           
Ъ э
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_128470Ц^_`aMвJ
Cв@
:К7
inputs+                           
p
к "?в<
5К2
0+                           
Ъ ┼
7__inference_batch_normalization_84_layer_call_fn_128421Й^_`aMвJ
Cв@
:К7
inputs+                           
p 
к "2К/+                           ┼
7__inference_batch_normalization_84_layer_call_fn_128434Й^_`aMвJ
Cв@
:К7
inputs+                           
p
к "2К/+                           э
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128544Цxyz{MвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ э
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_128562Цxyz{MвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ┼
7__inference_batch_normalization_85_layer_call_fn_128513Йxyz{MвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            ┼
7__inference_batch_normalization_85_layer_call_fn_128526Йxyz{MвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ╖
E__inference_conv2d_79_layer_call_and_return_conditional_losses_128224n !9в6
/в,
*К'
inputs         АА
к "-в*
#К 
0         
Ъ П
*__inference_conv2d_79_layer_call_fn_128213a !9в6
/в,
*К'
inputs         АА
к " К         ╡
E__inference_conv2d_80_layer_call_and_return_conditional_losses_128316l:;7в4
-в*
(К%
inputs         ??
к "-в*
#К 
0         <<
Ъ Н
*__inference_conv2d_80_layer_call_fn_128305_:;7в4
-в*
(К%
inputs         ??
к " К         <<╡
E__inference_conv2d_81_layer_call_and_return_conditional_losses_128408lTU7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ Н
*__inference_conv2d_81_layer_call_fn_128397_TU7в4
-в*
(К%
inputs         
к " К         ╡
E__inference_conv2d_82_layer_call_and_return_conditional_losses_128500lno7в4
-в*
(К%
inputs         
к "-в*
#К 
0         

 
Ъ Н
*__inference_conv2d_82_layer_call_fn_128489_no7в4
-в*
(К%
inputs         
к " К         

 з
D__inference_dense_37_layer_call_and_return_conditional_losses_128603_ОП0в-
&в#
!К
inputs         а
к "%в"
К
0         d
Ъ 
)__inference_dense_37_layer_call_fn_128592RОП0в-
&в#
!К
inputs         а
к "К         dж
D__inference_dense_38_layer_call_and_return_conditional_losses_128623^ЦЧ/в,
%в"
 К
inputs         d
к "%в"
К
0         
Ъ ~
)__inference_dense_38_layer_call_fn_128612QЦЧ/в,
%в"
 К
inputs         d
к "К         ж
D__inference_dense_39_layer_call_and_return_conditional_losses_128643^ЮЯ/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ ~
)__inference_dense_39_layer_call_fn_128632QЮЯ/в,
%в"
 К
inputs         
к "К         л
F__inference_flatten_16_layer_call_and_return_conditional_losses_128583a7в4
-в*
(К%
inputs          
к "&в#
К
0         а
Ъ Г
+__inference_flatten_16_layer_call_fn_128577T7в4
-в*
(К%
inputs          
к "К         ая
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_128296ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_38_layer_call_fn_128291СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_128388ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_39_layer_call_fn_128383СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Є
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127691Щ$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯJвG
@в=
3К0
conv2d_79_input         АА
p 

 
к "%в"
К
0         
Ъ Є
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_127771Щ$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯJвG
@в=
3К0
conv2d_79_input         АА
p

 
к "%в"
К
0         
Ъ щ
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128089Р$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯAв>
7в4
*К'
inputs         АА
p 

 
к "%в"
К
0         
Ъ щ
T__inference_my_modelV3_95_BN_AugData_layer_call_and_return_conditional_losses_128204Р$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯAв>
7в4
*К'
inputs         АА
p

 
к "%в"
К
0         
Ъ ╩
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127260М$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯJвG
@в=
3К0
conv2d_79_input         АА
p 

 
к "К         ╩
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127611М$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯJвG
@в=
3К0
conv2d_79_input         АА
p

 
к "К         ┴
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127909Г$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯAв>
7в4
*К'
inputs         АА
p 

 
к "К         ┴
9__inference_my_modelV3_95_BN_AugData_layer_call_fn_127974Г$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯAв>
7в4
*К'
inputs         АА
p

 
к "К         █
$__inference_signature_wrapper_127844▓$ !*+,-:;DEFGTU^_`anoxyz{ОПЦЧЮЯUвR
в 
KкH
F
conv2d_79_input3К0
conv2d_79_input         АА"3к0
.
dense_39"К
dense_39         