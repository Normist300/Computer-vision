нт
вЙ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
Џ
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
ѓ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.10.12v2.10.0-76-gfdfc646704c8з─	
ђ
Adam/dense_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/v
y
(Adam/dense_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/v*
_output_shapes
:*
dtype0
Ѕ
Adam/dense_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_75/kernel/v
ѓ
*Adam/dense_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/v*
_output_shapes
:	ђ*
dtype0
Ђ
Adam/dense_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_74/bias/v
z
(Adam/dense_74/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/v*
_output_shapes	
:ђ*
dtype0
і
Adam/dense_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*'
shared_nameAdam/dense_74/kernel/v
Ѓ
*Adam/dense_74/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/v* 
_output_shapes
:
ђђ*
dtype0
ё
Adam/conv2d_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_124/bias/v
}
*Adam/conv2d_124/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/v*
_output_shapes
:@*
dtype0
ћ
Adam/conv2d_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_124/kernel/v
Ї
,Adam/conv2d_124/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/v*&
_output_shapes
:@*
dtype0
ё
Adam/conv2d_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/v
}
*Adam/conv2d_123/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_123/kernel/v
Ї
,Adam/conv2d_123/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/v*&
_output_shapes
:		*
dtype0
ё
Adam/conv2d_122/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_122/bias/v
}
*Adam/conv2d_122/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_122/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_122/kernel/v
Ї
,Adam/conv2d_122/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/kernel/v*&
_output_shapes
:*
dtype0
ё
Adam/conv2d_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_121/bias/v
}
*Adam/conv2d_121/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_121/kernel/v
Ї
,Adam/conv2d_121/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/kernel/v*&
_output_shapes
:*
dtype0
ђ
Adam/dense_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/m
y
(Adam/dense_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/m*
_output_shapes
:*
dtype0
Ѕ
Adam/dense_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_75/kernel/m
ѓ
*Adam/dense_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/m*
_output_shapes
:	ђ*
dtype0
Ђ
Adam/dense_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/dense_74/bias/m
z
(Adam/dense_74/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/m*
_output_shapes	
:ђ*
dtype0
і
Adam/dense_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*'
shared_nameAdam/dense_74/kernel/m
Ѓ
*Adam/dense_74/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/m* 
_output_shapes
:
ђђ*
dtype0
ё
Adam/conv2d_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_124/bias/m
}
*Adam/conv2d_124/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/m*
_output_shapes
:@*
dtype0
ћ
Adam/conv2d_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_124/kernel/m
Ї
,Adam/conv2d_124/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/m*&
_output_shapes
:@*
dtype0
ё
Adam/conv2d_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/m
}
*Adam/conv2d_123/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_123/kernel/m
Ї
,Adam/conv2d_123/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/m*&
_output_shapes
:		*
dtype0
ё
Adam/conv2d_122/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_122/bias/m
}
*Adam/conv2d_122/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_122/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_122/kernel/m
Ї
,Adam/conv2d_122/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_122/kernel/m*&
_output_shapes
:*
dtype0
ё
Adam/conv2d_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_121/bias/m
}
*Adam/conv2d_121/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/conv2d_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_121/kernel/m
Ї
,Adam/conv2d_121/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_121/kernel/m*&
_output_shapes
:*
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
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_75/bias
k
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
_output_shapes
:*
dtype0
{
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ* 
shared_namedense_75/kernel
t
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel*
_output_shapes
:	ђ*
dtype0
s
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_namedense_74/bias
l
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
_output_shapes	
:ђ*
dtype0
|
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ* 
shared_namedense_74/kernel
u
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel* 
_output_shapes
:
ђђ*
dtype0
v
conv2d_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_124/bias
o
#conv2d_124/bias/Read/ReadVariableOpReadVariableOpconv2d_124/bias*
_output_shapes
:@*
dtype0
є
conv2d_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_124/kernel

%conv2d_124/kernel/Read/ReadVariableOpReadVariableOpconv2d_124/kernel*&
_output_shapes
:@*
dtype0
v
conv2d_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_123/bias
o
#conv2d_123/bias/Read/ReadVariableOpReadVariableOpconv2d_123/bias*
_output_shapes
:*
dtype0
є
conv2d_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*"
shared_nameconv2d_123/kernel

%conv2d_123/kernel/Read/ReadVariableOpReadVariableOpconv2d_123/kernel*&
_output_shapes
:		*
dtype0
v
conv2d_122/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_122/bias
o
#conv2d_122/bias/Read/ReadVariableOpReadVariableOpconv2d_122/bias*
_output_shapes
:*
dtype0
є
conv2d_122/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_122/kernel

%conv2d_122/kernel/Read/ReadVariableOpReadVariableOpconv2d_122/kernel*&
_output_shapes
:*
dtype0
v
conv2d_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_121/bias
o
#conv2d_121/bias/Read/ReadVariableOpReadVariableOpconv2d_121/bias*
_output_shapes
:*
dtype0
є
conv2d_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_121/kernel

%conv2d_121/kernel/Read/ReadVariableOpReadVariableOpconv2d_121/kernel*&
_output_shapes
:*
dtype0
Ќ
 serving_default_conv2d_121_inputPlaceholder*1
_output_shapes
:         ђђ*
dtype0*&
shape:         ђђ
д
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_121_inputconv2d_121/kernelconv2d_121/biasconv2d_122/kernelconv2d_122/biasconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasdense_74/kerneldense_74/biasdense_75/kerneldense_75/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_126017

NoOpNoOp
Вe
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Дe
valueЮeBџe BЊe
Э
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
ј
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
╚
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*
ј
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
ј
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
╚
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op*
ј
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
ј
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
д
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias*
д
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
Z
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11*
Z
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11*
* 
░
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
* 
┤
titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemмmМ*mн+mН9mо:mОHmпIm┘]m┌^m█em▄fmПvяv▀*vЯ+vр9vР:vсHvСIvт]vТ^vуevУfvж*

yserving_default* 

0
1*

0
1*
* 
Њ
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

ђtrace_0* 
a[
VARIABLE_VALUEconv2d_121/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_121/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

єtrace_0* 

Єtrace_0* 

*0
+1*

*0
+1*
* 
ў
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

Їtrace_0* 

јtrace_0* 
a[
VARIABLE_VALUEconv2d_122/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_122/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

ћtrace_0* 

Ћtrace_0* 

90
:1*

90
:1*
* 
ў
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

Џtrace_0* 

юtrace_0* 
a[
VARIABLE_VALUEconv2d_123/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_123/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

бtrace_0* 

Бtrace_0* 

H0
I1*

H0
I1*
* 
ў
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

Еtrace_0* 

фtrace_0* 
a[
VARIABLE_VALUEconv2d_124/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_124/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
ќ
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

░trace_0* 

▒trace_0* 
* 
* 
* 
ќ
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

иtrace_0* 

Иtrace_0* 

]0
^1*

]0
^1*
* 
ў
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

Йtrace_0* 

┐trace_0* 
_Y
VARIABLE_VALUEdense_74/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_74/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
* 
ў
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

┼trace_0* 

кtrace_0* 
_Y
VARIABLE_VALUEdense_75/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_75/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
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
10*

К0
╚1*
* 
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
╔	variables
╩	keras_api

╦total

╠count*
M
═	variables
╬	keras_api

¤total

лcount
Л
_fn_kwargs*

╦0
╠1*

╔	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¤0
л1*

═	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
ё~
VARIABLE_VALUEAdam/conv2d_121/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_121/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_122/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_122/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_123/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_123/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_124/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_124/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_74/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_74/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_75/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_75/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_121/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_121/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_122/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_122/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_123/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_123/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_124/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_124/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_74/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_74/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_75/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_75/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╠
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_121/kernel/Read/ReadVariableOp#conv2d_121/bias/Read/ReadVariableOp%conv2d_122/kernel/Read/ReadVariableOp#conv2d_122/bias/Read/ReadVariableOp%conv2d_123/kernel/Read/ReadVariableOp#conv2d_123/bias/Read/ReadVariableOp%conv2d_124/kernel/Read/ReadVariableOp#conv2d_124/bias/Read/ReadVariableOp#dense_74/kernel/Read/ReadVariableOp!dense_74/bias/Read/ReadVariableOp#dense_75/kernel/Read/ReadVariableOp!dense_75/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_121/kernel/m/Read/ReadVariableOp*Adam/conv2d_121/bias/m/Read/ReadVariableOp,Adam/conv2d_122/kernel/m/Read/ReadVariableOp*Adam/conv2d_122/bias/m/Read/ReadVariableOp,Adam/conv2d_123/kernel/m/Read/ReadVariableOp*Adam/conv2d_123/bias/m/Read/ReadVariableOp,Adam/conv2d_124/kernel/m/Read/ReadVariableOp*Adam/conv2d_124/bias/m/Read/ReadVariableOp*Adam/dense_74/kernel/m/Read/ReadVariableOp(Adam/dense_74/bias/m/Read/ReadVariableOp*Adam/dense_75/kernel/m/Read/ReadVariableOp(Adam/dense_75/bias/m/Read/ReadVariableOp,Adam/conv2d_121/kernel/v/Read/ReadVariableOp*Adam/conv2d_121/bias/v/Read/ReadVariableOp,Adam/conv2d_122/kernel/v/Read/ReadVariableOp*Adam/conv2d_122/bias/v/Read/ReadVariableOp,Adam/conv2d_123/kernel/v/Read/ReadVariableOp*Adam/conv2d_123/bias/v/Read/ReadVariableOp,Adam/conv2d_124/kernel/v/Read/ReadVariableOp*Adam/conv2d_124/bias/v/Read/ReadVariableOp*Adam/dense_74/kernel/v/Read/ReadVariableOp(Adam/dense_74/bias/v/Read/ReadVariableOp*Adam/dense_75/kernel/v/Read/ReadVariableOp(Adam/dense_75/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_126508
├	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_121/kernelconv2d_121/biasconv2d_122/kernelconv2d_122/biasconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasdense_74/kerneldense_74/biasdense_75/kerneldense_75/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_121/kernel/mAdam/conv2d_121/bias/mAdam/conv2d_122/kernel/mAdam/conv2d_122/bias/mAdam/conv2d_123/kernel/mAdam/conv2d_123/bias/mAdam/conv2d_124/kernel/mAdam/conv2d_124/bias/mAdam/dense_74/kernel/mAdam/dense_74/bias/mAdam/dense_75/kernel/mAdam/dense_75/bias/mAdam/conv2d_121/kernel/vAdam/conv2d_121/bias/vAdam/conv2d_122/kernel/vAdam/conv2d_122/bias/vAdam/conv2d_123/kernel/vAdam/conv2d_123/bias/vAdam/conv2d_124/kernel/vAdam/conv2d_124/bias/vAdam/dense_74/kernel/vAdam/dense_74/bias/vAdam/dense_75/kernel/vAdam/dense_75/bias/v*9
Tin2
02.*
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
GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_126653ЁТ
щ
а
+__inference_conv2d_121_layer_call_fn_126188

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
Ў
╬
$__inference_signature_wrapper_126017
conv2d_121_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_125513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
Л┤
ќ
"__inference__traced_restore_126653
file_prefix<
"assignvariableop_conv2d_121_kernel:0
"assignvariableop_1_conv2d_121_bias:>
$assignvariableop_2_conv2d_122_kernel:0
"assignvariableop_3_conv2d_122_bias:>
$assignvariableop_4_conv2d_123_kernel:		0
"assignvariableop_5_conv2d_123_bias:>
$assignvariableop_6_conv2d_124_kernel:@0
"assignvariableop_7_conv2d_124_bias:@6
"assignvariableop_8_dense_74_kernel:
ђђ/
 assignvariableop_9_dense_74_bias:	ђ6
#assignvariableop_10_dense_75_kernel:	ђ/
!assignvariableop_11_dense_75_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: #
assignvariableop_19_total: #
assignvariableop_20_count: F
,assignvariableop_21_adam_conv2d_121_kernel_m:8
*assignvariableop_22_adam_conv2d_121_bias_m:F
,assignvariableop_23_adam_conv2d_122_kernel_m:8
*assignvariableop_24_adam_conv2d_122_bias_m:F
,assignvariableop_25_adam_conv2d_123_kernel_m:		8
*assignvariableop_26_adam_conv2d_123_bias_m:F
,assignvariableop_27_adam_conv2d_124_kernel_m:@8
*assignvariableop_28_adam_conv2d_124_bias_m:@>
*assignvariableop_29_adam_dense_74_kernel_m:
ђђ7
(assignvariableop_30_adam_dense_74_bias_m:	ђ=
*assignvariableop_31_adam_dense_75_kernel_m:	ђ6
(assignvariableop_32_adam_dense_75_bias_m:F
,assignvariableop_33_adam_conv2d_121_kernel_v:8
*assignvariableop_34_adam_conv2d_121_bias_v:F
,assignvariableop_35_adam_conv2d_122_kernel_v:8
*assignvariableop_36_adam_conv2d_122_bias_v:F
,assignvariableop_37_adam_conv2d_123_kernel_v:		8
*assignvariableop_38_adam_conv2d_123_bias_v:F
,assignvariableop_39_adam_conv2d_124_kernel_v:@8
*assignvariableop_40_adam_conv2d_124_bias_v:@>
*assignvariableop_41_adam_dense_74_kernel_v:
ђђ7
(assignvariableop_42_adam_dense_74_bias_v:	ђ=
*assignvariableop_43_adam_dense_75_kernel_v:	ђ6
(assignvariableop_44_adam_dense_75_bias_v:
identity_46ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9д
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╠
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
И::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_121_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_121_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_122_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_122_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_123_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_123_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_124_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_124_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_74_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_74_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_75_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_75_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:ј
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_121_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_121_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_122_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_122_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_123_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_123_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_124_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_124_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_74_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_74_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_75_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_75_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_121_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_121_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_122_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_122_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_123_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_123_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_124_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_124_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_74_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_74_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_75_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_75_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: џ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442(
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
═
┘
/__inference_my_modelV2_800_layer_call_fn_125710
conv2d_121_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
▀0
Ѓ
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125683

inputs+
conv2d_121_125580:
conv2d_121_125582:+
conv2d_122_125598:
conv2d_122_125600:+
conv2d_123_125616:		
conv2d_123_125618:+
conv2d_124_125634:@
conv2d_124_125636:@#
dense_74_125660:
ђђ
dense_74_125662:	ђ"
dense_75_125677:	ђ
dense_75_125679:
identityѕб"conv2d_121/StatefulPartitionedCallб"conv2d_122/StatefulPartitionedCallб"conv2d_123/StatefulPartitionedCallб"conv2d_124/StatefulPartitionedCallб dense_74/StatefulPartitionedCallб dense_75/StatefulPartitionedCallЁ
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_121_125580conv2d_121_125582*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579Э
 max_pooling2d_49/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522д
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_122_125598conv2d_122_125600*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597Э
 max_pooling2d_50/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534д
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_123_125616conv2d_123_125618*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615ђ
$average_pooling2d_72/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546ф
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_72/PartitionedCall:output:0conv2d_124_125634conv2d_124_125636*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633ђ
$average_pooling2d_73/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558у
flatten_37/PartitionedCallPartitionedCall-average_pooling2d_73/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646Љ
 dense_74/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_74_125660dense_74_125662*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_125659ќ
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_125677dense_75_125679*
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
GPU2*0J 8ѓ *M
fHRF
D__inference_dense_75_layer_call_and_return_conditional_losses_125676x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
╠
Ў
)__inference_dense_74_layer_call_fn_126319

inputs
unknown:
ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_125659p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
і]
▄
__inference__traced_save_126508
file_prefix0
,savev2_conv2d_121_kernel_read_readvariableop.
*savev2_conv2d_121_bias_read_readvariableop0
,savev2_conv2d_122_kernel_read_readvariableop.
*savev2_conv2d_122_bias_read_readvariableop0
,savev2_conv2d_123_kernel_read_readvariableop.
*savev2_conv2d_123_bias_read_readvariableop0
,savev2_conv2d_124_kernel_read_readvariableop.
*savev2_conv2d_124_bias_read_readvariableop.
*savev2_dense_74_kernel_read_readvariableop,
(savev2_dense_74_bias_read_readvariableop.
*savev2_dense_75_kernel_read_readvariableop,
(savev2_dense_75_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_121_kernel_m_read_readvariableop5
1savev2_adam_conv2d_121_bias_m_read_readvariableop7
3savev2_adam_conv2d_122_kernel_m_read_readvariableop5
1savev2_adam_conv2d_122_bias_m_read_readvariableop7
3savev2_adam_conv2d_123_kernel_m_read_readvariableop5
1savev2_adam_conv2d_123_bias_m_read_readvariableop7
3savev2_adam_conv2d_124_kernel_m_read_readvariableop5
1savev2_adam_conv2d_124_bias_m_read_readvariableop5
1savev2_adam_dense_74_kernel_m_read_readvariableop3
/savev2_adam_dense_74_bias_m_read_readvariableop5
1savev2_adam_dense_75_kernel_m_read_readvariableop3
/savev2_adam_dense_75_bias_m_read_readvariableop7
3savev2_adam_conv2d_121_kernel_v_read_readvariableop5
1savev2_adam_conv2d_121_bias_v_read_readvariableop7
3savev2_adam_conv2d_122_kernel_v_read_readvariableop5
1savev2_adam_conv2d_122_bias_v_read_readvariableop7
3savev2_adam_conv2d_123_kernel_v_read_readvariableop5
1savev2_adam_conv2d_123_bias_v_read_readvariableop7
3savev2_adam_conv2d_124_kernel_v_read_readvariableop5
1savev2_adam_conv2d_124_bias_v_read_readvariableop5
1savev2_adam_dense_74_kernel_v_read_readvariableop3
/savev2_adam_dense_74_bias_v_read_readvariableop5
1savev2_adam_dense_75_kernel_v_read_readvariableop3
/savev2_adam_dense_75_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Б
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*╠
value┬B┐.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╔
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ў
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_121_kernel_read_readvariableop*savev2_conv2d_121_bias_read_readvariableop,savev2_conv2d_122_kernel_read_readvariableop*savev2_conv2d_122_bias_read_readvariableop,savev2_conv2d_123_kernel_read_readvariableop*savev2_conv2d_123_bias_read_readvariableop,savev2_conv2d_124_kernel_read_readvariableop*savev2_conv2d_124_bias_read_readvariableop*savev2_dense_74_kernel_read_readvariableop(savev2_dense_74_bias_read_readvariableop*savev2_dense_75_kernel_read_readvariableop(savev2_dense_75_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_121_kernel_m_read_readvariableop1savev2_adam_conv2d_121_bias_m_read_readvariableop3savev2_adam_conv2d_122_kernel_m_read_readvariableop1savev2_adam_conv2d_122_bias_m_read_readvariableop3savev2_adam_conv2d_123_kernel_m_read_readvariableop1savev2_adam_conv2d_123_bias_m_read_readvariableop3savev2_adam_conv2d_124_kernel_m_read_readvariableop1savev2_adam_conv2d_124_bias_m_read_readvariableop1savev2_adam_dense_74_kernel_m_read_readvariableop/savev2_adam_dense_74_bias_m_read_readvariableop1savev2_adam_dense_75_kernel_m_read_readvariableop/savev2_adam_dense_75_bias_m_read_readvariableop3savev2_adam_conv2d_121_kernel_v_read_readvariableop1savev2_adam_conv2d_121_bias_v_read_readvariableop3savev2_adam_conv2d_122_kernel_v_read_readvariableop1savev2_adam_conv2d_122_bias_v_read_readvariableop3savev2_adam_conv2d_123_kernel_v_read_readvariableop1savev2_adam_conv2d_123_bias_v_read_readvariableop3savev2_adam_conv2d_124_kernel_v_read_readvariableop1savev2_adam_conv2d_124_bias_v_read_readvariableop1savev2_adam_dense_74_kernel_v_read_readvariableop/savev2_adam_dense_74_bias_v_read_readvariableop1savev2_adam_dense_75_kernel_v_read_readvariableop/savev2_adam_dense_75_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*и
_input_shapesЦ
б: :::::		::@:@:
ђђ:ђ:	ђ:: : : : : : : : : :::::		::@:@:
ђђ:ђ:	ђ::::::		::@:@:
ђђ:ђ:	ђ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:		: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:		: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:% !

_output_shapes
:	ђ: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::,&(
&
_output_shapes
:		: '

_output_shapes
::,((
&
_output_shapes
:@: )

_output_shapes
:@:&*"
 
_output_shapes
:
ђђ:!+

_output_shapes	
:ђ:%,!

_output_shapes
:	ђ: -

_output_shapes
::.

_output_shapes
: 
А
l
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546

inputs
identityФ
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
ћ
h
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_126239

inputs
identityб
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
ы
а
+__inference_conv2d_123_layer_call_fn_126248

inputs!
unknown:		
	unknown_0:
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
╚
Ќ
)__inference_dense_75_layer_call_fn_126339

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCall▄
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
GPU2*0J 8ѓ *M
fHRF
D__inference_dense_75_layer_call_and_return_conditional_losses_125676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ц

Ш
D__inference_dense_75_layer_call_and_return_conditional_losses_125676

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
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
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
є
 
F__inference_conv2d_124_layer_call_and_return_conditional_losses_126289

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ц

Ш
D__inference_dense_75_layer_call_and_return_conditional_losses_126350

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
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
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Д

Э
D__inference_dense_74_layer_call_and_return_conditional_losses_126330

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522

inputs
identityб
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
Х
G
+__inference_flatten_37_layer_call_fn_126304

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╚
b
F__inference_flatten_37_layer_call_and_return_conditional_losses_126310

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы
а
+__inference_conv2d_124_layer_call_fn_126278

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ёA
ы	
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126127

inputsC
)conv2d_121_conv2d_readvariableop_resource:8
*conv2d_121_biasadd_readvariableop_resource:C
)conv2d_122_conv2d_readvariableop_resource:8
*conv2d_122_biasadd_readvariableop_resource:C
)conv2d_123_conv2d_readvariableop_resource:		8
*conv2d_123_biasadd_readvariableop_resource:C
)conv2d_124_conv2d_readvariableop_resource:@8
*conv2d_124_biasadd_readvariableop_resource:@;
'dense_74_matmul_readvariableop_resource:
ђђ7
(dense_74_biasadd_readvariableop_resource:	ђ:
'dense_75_matmul_readvariableop_resource:	ђ6
(dense_75_biasadd_readvariableop_resource:
identityѕб!conv2d_121/BiasAdd/ReadVariableOpб conv2d_121/Conv2D/ReadVariableOpб!conv2d_122/BiasAdd/ReadVariableOpб conv2d_122/Conv2D/ReadVariableOpб!conv2d_123/BiasAdd/ReadVariableOpб conv2d_123/Conv2D/ReadVariableOpб!conv2d_124/BiasAdd/ReadVariableOpб conv2d_124/Conv2D/ReadVariableOpбdense_74/BiasAdd/ReadVariableOpбdense_74/MatMul/ReadVariableOpбdense_75/BiasAdd/ReadVariableOpбdense_75/MatMul/ReadVariableOpњ
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0▓
conv2d_121/Conv2DConv2Dinputs(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
ѕ
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           p
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*1
_output_shapes
:           »
max_pooling2d_49/MaxPoolMaxPoolconv2d_121/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
њ
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╦
conv2d_122/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
ѕ
!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||n
conv2d_122/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:         ||»
max_pooling2d_50/MaxPoolMaxPoolconv2d_122/Relu:activations:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
њ
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0╦
conv2d_123/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66*
paddingVALID*
strides
ѕ
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66n
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:         66╝
average_pooling2d_72/AvgPoolAvgPoolconv2d_123/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
њ
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0¤
conv2d_124/Conv2DConv2D%average_pooling2d_72/AvgPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
ѕ
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ъ
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @n
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:         @╝
average_pooling2d_73/AvgPoolAvgPoolconv2d_124/Relu:activations:0*
T0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
a
flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"       њ
flatten_37/ReshapeReshape%average_pooling2d_73/AvgPool:output:0flatten_37/Const:output:0*
T0*(
_output_shapes
:         ђѕ
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0Љ
dense_74/MatMulMatMulflatten_37/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЁ
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0њ
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђc
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЄ
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0љ
dense_75/MatMulMatMuldense_74/Relu:activations:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_75/SoftmaxSoftmaxdense_75/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_75/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         У
NoOpNoOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
»
¤
/__inference_my_modelV2_800_layer_call_fn_126046

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
А
l
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_126299

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
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
╚
b
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Д

Э
D__inference_dense_74_layer_call_and_return_conditional_losses_125659

inputs2
matmul_readvariableop_resource:
ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
§0
Ї
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125941
conv2d_121_input+
conv2d_121_125905:
conv2d_121_125907:+
conv2d_122_125911:
conv2d_122_125913:+
conv2d_123_125917:		
conv2d_123_125919:+
conv2d_124_125923:@
conv2d_124_125925:@#
dense_74_125930:
ђђ
dense_74_125932:	ђ"
dense_75_125935:	ђ
dense_75_125937:
identityѕб"conv2d_121/StatefulPartitionedCallб"conv2d_122/StatefulPartitionedCallб"conv2d_123/StatefulPartitionedCallб"conv2d_124/StatefulPartitionedCallб dense_74/StatefulPartitionedCallб dense_75/StatefulPartitionedCallЈ
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputconv2d_121_125905conv2d_121_125907*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579Э
 max_pooling2d_49/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522д
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_122_125911conv2d_122_125913*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597Э
 max_pooling2d_50/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534д
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_123_125917conv2d_123_125919*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615ђ
$average_pooling2d_72/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546ф
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_72/PartitionedCall:output:0conv2d_124_125923conv2d_124_125925*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633ђ
$average_pooling2d_73/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558у
flatten_37/PartitionedCallPartitionedCall-average_pooling2d_73/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646Љ
 dense_74/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_74_125930dense_74_125932*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_125659ќ
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_125935dense_75_125937*
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
GPU2*0J 8ѓ *M
fHRF
D__inference_dense_75_layer_call_and_return_conditional_losses_125676x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
»
¤
/__inference_my_modelV2_800_layer_call_fn_126075

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
▀0
Ѓ
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125846

inputs+
conv2d_121_125810:
conv2d_121_125812:+
conv2d_122_125816:
conv2d_122_125818:+
conv2d_123_125822:		
conv2d_123_125824:+
conv2d_124_125828:@
conv2d_124_125830:@#
dense_74_125835:
ђђ
dense_74_125837:	ђ"
dense_75_125840:	ђ
dense_75_125842:
identityѕб"conv2d_121/StatefulPartitionedCallб"conv2d_122/StatefulPartitionedCallб"conv2d_123/StatefulPartitionedCallб"conv2d_124/StatefulPartitionedCallб dense_74/StatefulPartitionedCallб dense_75/StatefulPartitionedCallЁ
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_121_125810conv2d_121_125812*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579Э
 max_pooling2d_49/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522д
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_122_125816conv2d_122_125818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597Э
 max_pooling2d_50/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534д
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_123_125822conv2d_123_125824*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615ђ
$average_pooling2d_72/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546ф
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_72/PartitionedCall:output:0conv2d_124_125828conv2d_124_125830*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633ђ
$average_pooling2d_73/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558у
flatten_37/PartitionedCallPartitionedCall-average_pooling2d_73/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646Љ
 dense_74/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_74_125835dense_74_125837*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_125659ќ
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_125840dense_75_125842*
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
GPU2*0J 8ѓ *M
fHRF
D__inference_dense_75_layer_call_and_return_conditional_losses_125676x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
А
l
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
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
§0
Ї
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125980
conv2d_121_input+
conv2d_121_125944:
conv2d_121_125946:+
conv2d_122_125950:
conv2d_122_125952:+
conv2d_123_125956:		
conv2d_123_125958:+
conv2d_124_125962:@
conv2d_124_125964:@#
dense_74_125969:
ђђ
dense_74_125971:	ђ"
dense_75_125974:	ђ
dense_75_125976:
identityѕб"conv2d_121/StatefulPartitionedCallб"conv2d_122/StatefulPartitionedCallб"conv2d_123/StatefulPartitionedCallб"conv2d_124/StatefulPartitionedCallб dense_74/StatefulPartitionedCallб dense_75/StatefulPartitionedCallЈ
"conv2d_121/StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputconv2d_121_125944conv2d_121_125946*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579Э
 max_pooling2d_49/PartitionedCallPartitionedCall+conv2d_121/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522д
"conv2d_122/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_49/PartitionedCall:output:0conv2d_122_125950conv2d_122_125952*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597Э
 max_pooling2d_50/PartitionedCallPartitionedCall+conv2d_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534д
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_123_125956conv2d_123_125958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615ђ
$average_pooling2d_72/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546ф
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_72/PartitionedCall:output:0conv2d_124_125962conv2d_124_125964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633ђ
$average_pooling2d_73/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558у
flatten_37/PartitionedCallPartitionedCall-average_pooling2d_73/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_37_layer_call_and_return_conditional_losses_125646Љ
 dense_74/StatefulPartitionedCallStatefulPartitionedCall#flatten_37/PartitionedCall:output:0dense_74_125969dense_74_125971*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_74_layer_call_and_return_conditional_losses_125659ќ
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_125974dense_75_125976*
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
GPU2*0J 8ѓ *M
fHRF
D__inference_dense_75_layer_call_and_return_conditional_losses_125676x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp#^conv2d_121/StatefulPartitionedCall#^conv2d_122/StatefulPartitionedCall#^conv2d_123/StatefulPartitionedCall#^conv2d_124/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2H
"conv2d_121/StatefulPartitionedCall"conv2d_121/StatefulPartitionedCall2H
"conv2d_122/StatefulPartitionedCall"conv2d_122/StatefulPartitionedCall2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
А
l
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_126269

inputs
identityФ
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
є
 
F__inference_conv2d_122_layer_call_and_return_conditional_losses_126229

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_49_layer_call_fn_126204

inputs
identityП
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
GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_125522Ѓ
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
њ
 
F__inference_conv2d_121_layer_call_and_return_conditional_losses_126199

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:           k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
═
┘
/__inference_my_modelV2_800_layer_call_fn_125902
conv2d_121_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
ђђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallconv2d_121_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
ёA
ы	
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126179

inputsC
)conv2d_121_conv2d_readvariableop_resource:8
*conv2d_121_biasadd_readvariableop_resource:C
)conv2d_122_conv2d_readvariableop_resource:8
*conv2d_122_biasadd_readvariableop_resource:C
)conv2d_123_conv2d_readvariableop_resource:		8
*conv2d_123_biasadd_readvariableop_resource:C
)conv2d_124_conv2d_readvariableop_resource:@8
*conv2d_124_biasadd_readvariableop_resource:@;
'dense_74_matmul_readvariableop_resource:
ђђ7
(dense_74_biasadd_readvariableop_resource:	ђ:
'dense_75_matmul_readvariableop_resource:	ђ6
(dense_75_biasadd_readvariableop_resource:
identityѕб!conv2d_121/BiasAdd/ReadVariableOpб conv2d_121/Conv2D/ReadVariableOpб!conv2d_122/BiasAdd/ReadVariableOpб conv2d_122/Conv2D/ReadVariableOpб!conv2d_123/BiasAdd/ReadVariableOpб conv2d_123/Conv2D/ReadVariableOpб!conv2d_124/BiasAdd/ReadVariableOpб conv2d_124/Conv2D/ReadVariableOpбdense_74/BiasAdd/ReadVariableOpбdense_74/MatMul/ReadVariableOpбdense_75/BiasAdd/ReadVariableOpбdense_75/MatMul/ReadVariableOpњ
 conv2d_121/Conv2D/ReadVariableOpReadVariableOp)conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0▓
conv2d_121/Conv2DConv2Dinputs(conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
ѕ
!conv2d_121/BiasAdd/ReadVariableOpReadVariableOp*conv2d_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
conv2d_121/BiasAddBiasAddconv2d_121/Conv2D:output:0)conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           p
conv2d_121/ReluReluconv2d_121/BiasAdd:output:0*
T0*1
_output_shapes
:           »
max_pooling2d_49/MaxPoolMaxPoolconv2d_121/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
њ
 conv2d_122/Conv2D/ReadVariableOpReadVariableOp)conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╦
conv2d_122/Conv2DConv2D!max_pooling2d_49/MaxPool:output:0(conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
ѕ
!conv2d_122/BiasAdd/ReadVariableOpReadVariableOp*conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
conv2d_122/BiasAddBiasAddconv2d_122/Conv2D:output:0)conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||n
conv2d_122/ReluReluconv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:         ||»
max_pooling2d_50/MaxPoolMaxPoolconv2d_122/Relu:activations:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
њ
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0╦
conv2d_123/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66*
paddingVALID*
strides
ѕ
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66n
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:         66╝
average_pooling2d_72/AvgPoolAvgPoolconv2d_123/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
њ
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0¤
conv2d_124/Conv2DConv2D%average_pooling2d_72/AvgPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
ѕ
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ъ
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @n
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:         @╝
average_pooling2d_73/AvgPoolAvgPoolconv2d_124/Relu:activations:0*
T0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
a
flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"       њ
flatten_37/ReshapeReshape%average_pooling2d_73/AvgPool:output:0flatten_37/Const:output:0*
T0*(
_output_shapes
:         ђѕ
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0Љ
dense_74/MatMulMatMulflatten_37/Reshape:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЁ
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0њ
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђc
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЄ
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0љ
dense_75/MatMulMatMuldense_74/Relu:activations:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_75/SoftmaxSoftmaxdense_75/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_75/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         У
NoOpNoOp"^conv2d_121/BiasAdd/ReadVariableOp!^conv2d_121/Conv2D/ReadVariableOp"^conv2d_122/BiasAdd/ReadVariableOp!^conv2d_122/Conv2D/ReadVariableOp"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2F
!conv2d_121/BiasAdd/ReadVariableOp!conv2d_121/BiasAdd/ReadVariableOp2D
 conv2d_121/Conv2D/ReadVariableOp conv2d_121/Conv2D/ReadVariableOp2F
!conv2d_122/BiasAdd/ReadVariableOp!conv2d_122/BiasAdd/ReadVariableOp2D
 conv2d_122/Conv2D/ReadVariableOp conv2d_122/Conv2D/ReadVariableOp2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
є
 
F__inference_conv2d_124_layer_call_and_return_conditional_losses_125633

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_126209

inputs
identityб
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
й
M
1__inference_max_pooling2d_50_layer_call_fn_126234

inputs
identityП
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
GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534Ѓ
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
┼
Q
5__inference_average_pooling2d_73_layer_call_fn_126294

inputs
identityр
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
GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_125558Ѓ
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
№Q
║
!__inference__wrapped_model_125513
conv2d_121_inputR
8my_modelv2_800_conv2d_121_conv2d_readvariableop_resource:G
9my_modelv2_800_conv2d_121_biasadd_readvariableop_resource:R
8my_modelv2_800_conv2d_122_conv2d_readvariableop_resource:G
9my_modelv2_800_conv2d_122_biasadd_readvariableop_resource:R
8my_modelv2_800_conv2d_123_conv2d_readvariableop_resource:		G
9my_modelv2_800_conv2d_123_biasadd_readvariableop_resource:R
8my_modelv2_800_conv2d_124_conv2d_readvariableop_resource:@G
9my_modelv2_800_conv2d_124_biasadd_readvariableop_resource:@J
6my_modelv2_800_dense_74_matmul_readvariableop_resource:
ђђF
7my_modelv2_800_dense_74_biasadd_readvariableop_resource:	ђI
6my_modelv2_800_dense_75_matmul_readvariableop_resource:	ђE
7my_modelv2_800_dense_75_biasadd_readvariableop_resource:
identityѕб0my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOpб/my_modelV2_800/conv2d_121/Conv2D/ReadVariableOpб0my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOpб/my_modelV2_800/conv2d_122/Conv2D/ReadVariableOpб0my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOpб/my_modelV2_800/conv2d_123/Conv2D/ReadVariableOpб0my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOpб/my_modelV2_800/conv2d_124/Conv2D/ReadVariableOpб.my_modelV2_800/dense_74/BiasAdd/ReadVariableOpб-my_modelV2_800/dense_74/MatMul/ReadVariableOpб.my_modelV2_800/dense_75/BiasAdd/ReadVariableOpб-my_modelV2_800/dense_75/MatMul/ReadVariableOp░
/my_modelV2_800/conv2d_121/Conv2D/ReadVariableOpReadVariableOp8my_modelv2_800_conv2d_121_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┌
 my_modelV2_800/conv2d_121/Conv2DConv2Dconv2d_121_input7my_modelV2_800/conv2d_121/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
д
0my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOpReadVariableOp9my_modelv2_800_conv2d_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0═
!my_modelV2_800/conv2d_121/BiasAddBiasAdd)my_modelV2_800/conv2d_121/Conv2D:output:08my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           ј
my_modelV2_800/conv2d_121/ReluRelu*my_modelV2_800/conv2d_121/BiasAdd:output:0*
T0*1
_output_shapes
:           ═
'my_modelV2_800/max_pooling2d_49/MaxPoolMaxPool,my_modelV2_800/conv2d_121/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
░
/my_modelV2_800/conv2d_122/Conv2D/ReadVariableOpReadVariableOp8my_modelv2_800_conv2d_122_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Э
 my_modelV2_800/conv2d_122/Conv2DConv2D0my_modelV2_800/max_pooling2d_49/MaxPool:output:07my_modelV2_800/conv2d_122/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
д
0my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOpReadVariableOp9my_modelv2_800_conv2d_122_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╦
!my_modelV2_800/conv2d_122/BiasAddBiasAdd)my_modelV2_800/conv2d_122/Conv2D:output:08my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||ї
my_modelV2_800/conv2d_122/ReluRelu*my_modelV2_800/conv2d_122/BiasAdd:output:0*
T0*/
_output_shapes
:         ||═
'my_modelV2_800/max_pooling2d_50/MaxPoolMaxPool,my_modelV2_800/conv2d_122/Relu:activations:0*/
_output_shapes
:         >>*
ksize
*
paddingVALID*
strides
░
/my_modelV2_800/conv2d_123/Conv2D/ReadVariableOpReadVariableOp8my_modelv2_800_conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0Э
 my_modelV2_800/conv2d_123/Conv2DConv2D0my_modelV2_800/max_pooling2d_50/MaxPool:output:07my_modelV2_800/conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66*
paddingVALID*
strides
д
0my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOpReadVariableOp9my_modelv2_800_conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╦
!my_modelV2_800/conv2d_123/BiasAddBiasAdd)my_modelV2_800/conv2d_123/Conv2D:output:08my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66ї
my_modelV2_800/conv2d_123/ReluRelu*my_modelV2_800/conv2d_123/BiasAdd:output:0*
T0*/
_output_shapes
:         66┌
+my_modelV2_800/average_pooling2d_72/AvgPoolAvgPool,my_modelV2_800/conv2d_123/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
░
/my_modelV2_800/conv2d_124/Conv2D/ReadVariableOpReadVariableOp8my_modelv2_800_conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ч
 my_modelV2_800/conv2d_124/Conv2DConv2D4my_modelV2_800/average_pooling2d_72/AvgPool:output:07my_modelV2_800/conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
д
0my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOpReadVariableOp9my_modelv2_800_conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╦
!my_modelV2_800/conv2d_124/BiasAddBiasAdd)my_modelV2_800/conv2d_124/Conv2D:output:08my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @ї
my_modelV2_800/conv2d_124/ReluRelu*my_modelV2_800/conv2d_124/BiasAdd:output:0*
T0*/
_output_shapes
:         @┌
+my_modelV2_800/average_pooling2d_73/AvgPoolAvgPool,my_modelV2_800/conv2d_124/Relu:activations:0*
T0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
p
my_modelV2_800/flatten_37/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ┐
!my_modelV2_800/flatten_37/ReshapeReshape4my_modelV2_800/average_pooling2d_73/AvgPool:output:0(my_modelV2_800/flatten_37/Const:output:0*
T0*(
_output_shapes
:         ђд
-my_modelV2_800/dense_74/MatMul/ReadVariableOpReadVariableOp6my_modelv2_800_dense_74_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0Й
my_modelV2_800/dense_74/MatMulMatMul*my_modelV2_800/flatten_37/Reshape:output:05my_modelV2_800/dense_74/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђБ
.my_modelV2_800/dense_74/BiasAdd/ReadVariableOpReadVariableOp7my_modelv2_800_dense_74_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0┐
my_modelV2_800/dense_74/BiasAddBiasAdd(my_modelV2_800/dense_74/MatMul:product:06my_modelV2_800/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђЂ
my_modelV2_800/dense_74/ReluRelu(my_modelV2_800/dense_74/BiasAdd:output:0*
T0*(
_output_shapes
:         ђЦ
-my_modelV2_800/dense_75/MatMul/ReadVariableOpReadVariableOp6my_modelv2_800_dense_75_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0й
my_modelV2_800/dense_75/MatMulMatMul*my_modelV2_800/dense_74/Relu:activations:05my_modelV2_800/dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         б
.my_modelV2_800/dense_75/BiasAdd/ReadVariableOpReadVariableOp7my_modelv2_800_dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Й
my_modelV2_800/dense_75/BiasAddBiasAdd(my_modelV2_800/dense_75/MatMul:product:06my_modelV2_800/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
my_modelV2_800/dense_75/SoftmaxSoftmax(my_modelV2_800/dense_75/BiasAdd:output:0*
T0*'
_output_shapes
:         x
IdentityIdentity)my_modelV2_800/dense_75/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ю
NoOpNoOp1^my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOp0^my_modelV2_800/conv2d_121/Conv2D/ReadVariableOp1^my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOp0^my_modelV2_800/conv2d_122/Conv2D/ReadVariableOp1^my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOp0^my_modelV2_800/conv2d_123/Conv2D/ReadVariableOp1^my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOp0^my_modelV2_800/conv2d_124/Conv2D/ReadVariableOp/^my_modelV2_800/dense_74/BiasAdd/ReadVariableOp.^my_modelV2_800/dense_74/MatMul/ReadVariableOp/^my_modelV2_800/dense_75/BiasAdd/ReadVariableOp.^my_modelV2_800/dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ђђ: : : : : : : : : : : : 2d
0my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOp0my_modelV2_800/conv2d_121/BiasAdd/ReadVariableOp2b
/my_modelV2_800/conv2d_121/Conv2D/ReadVariableOp/my_modelV2_800/conv2d_121/Conv2D/ReadVariableOp2d
0my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOp0my_modelV2_800/conv2d_122/BiasAdd/ReadVariableOp2b
/my_modelV2_800/conv2d_122/Conv2D/ReadVariableOp/my_modelV2_800/conv2d_122/Conv2D/ReadVariableOp2d
0my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOp0my_modelV2_800/conv2d_123/BiasAdd/ReadVariableOp2b
/my_modelV2_800/conv2d_123/Conv2D/ReadVariableOp/my_modelV2_800/conv2d_123/Conv2D/ReadVariableOp2d
0my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOp0my_modelV2_800/conv2d_124/BiasAdd/ReadVariableOp2b
/my_modelV2_800/conv2d_124/Conv2D/ReadVariableOp/my_modelV2_800/conv2d_124/Conv2D/ReadVariableOp2`
.my_modelV2_800/dense_74/BiasAdd/ReadVariableOp.my_modelV2_800/dense_74/BiasAdd/ReadVariableOp2^
-my_modelV2_800/dense_74/MatMul/ReadVariableOp-my_modelV2_800/dense_74/MatMul/ReadVariableOp2`
.my_modelV2_800/dense_75/BiasAdd/ReadVariableOp.my_modelV2_800/dense_75/BiasAdd/ReadVariableOp2^
-my_modelV2_800/dense_75/MatMul/ReadVariableOp-my_modelV2_800/dense_75/MatMul/ReadVariableOp:c _
1
_output_shapes
:         ђђ
*
_user_specified_nameconv2d_121_input
┼
Q
5__inference_average_pooling2d_72_layer_call_fn_126264

inputs
identityр
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
GPU2*0J 8ѓ *Y
fTRR
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_125546Ѓ
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
є
 
F__inference_conv2d_123_layer_call_and_return_conditional_losses_126259

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
њ
 
F__inference_conv2d_121_layer_call_and_return_conditional_losses_125579

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:           Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:           k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_125534

inputs
identityб
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
ы
а
+__inference_conv2d_122_layer_call_fn_126218

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         ||`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
є
 
F__inference_conv2d_123_layer_call_and_return_conditional_losses_125615

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
є
 
F__inference_conv2d_122_layer_call_and_return_conditional_losses_125597

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         ||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs"х	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К
serving_default│
W
conv2d_121_inputC
"serving_default_conv2d_121_input:0         ђђ<
dense_750
StatefulPartitionedCall:0         tensorflow/serving/predict:Ыѕ
њ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ц
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
П
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
Ц
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
П
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
Ц
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
П
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op"
_tf_keras_layer
Ц
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
╗
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
v
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11"
trackable_list_wrapper
v
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ы
ltrace_0
mtrace_1
ntrace_2
otrace_32є
/__inference_my_modelV2_800_layer_call_fn_125710
/__inference_my_modelV2_800_layer_call_fn_126046
/__inference_my_modelV2_800_layer_call_fn_126075
/__inference_my_modelV2_800_layer_call_fn_125902┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zltrace_0zmtrace_1zntrace_2zotrace_3
П
ptrace_0
qtrace_1
rtrace_2
strace_32Ы
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126127
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126179
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125941
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125980┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
НBм
!__inference__wrapped_model_125513conv2d_121_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
├
titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemмmМ*mн+mН9mо:mОHmпIm┘]m┌^m█em▄fmПvяv▀*vЯ+vр9vР:vсHvСIvт]vТ^vуevУfvж"
	optimizer
,
yserving_default"
signature_map
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
Г
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
№
trace_02м
+__inference_conv2d_121_layer_call_fn_126188б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ztrace_0
ї
ђtrace_02ь
F__inference_conv2d_121_layer_call_and_return_conditional_losses_126199б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zђtrace_0
+:)2conv2d_121/kernel
:2conv2d_121/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ђnon_trainable_variables
ѓlayers
Ѓmetrics
 ёlayer_regularization_losses
Ёlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
э
єtrace_02п
1__inference_max_pooling2d_49_layer_call_fn_126204б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0
њ
Єtrace_02з
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_126209б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЄtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ѕnon_trainable_variables
Ѕlayers
іmetrics
 Іlayer_regularization_losses
їlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ы
Їtrace_02м
+__inference_conv2d_122_layer_call_fn_126218б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
ї
јtrace_02ь
F__inference_conv2d_122_layer_call_and_return_conditional_losses_126229б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zјtrace_0
+:)2conv2d_122/kernel
:2conv2d_122/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
э
ћtrace_02п
1__inference_max_pooling2d_50_layer_call_fn_126234б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
њ
Ћtrace_02з
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_126239б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0
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
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ы
Џtrace_02м
+__inference_conv2d_123_layer_call_fn_126248б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЏtrace_0
ї
юtrace_02ь
F__inference_conv2d_123_layer_call_and_return_conditional_losses_126259б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zюtrace_0
+:)		2conv2d_123/kernel
:2conv2d_123/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Юnon_trainable_variables
ъlayers
Ъmetrics
 аlayer_regularization_losses
Аlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ч
бtrace_02▄
5__inference_average_pooling2d_72_layer_call_fn_126264б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zбtrace_0
ќ
Бtrace_02э
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_126269б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zБtrace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ы
Еtrace_02м
+__inference_conv2d_124_layer_call_fn_126278б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0
ї
фtrace_02ь
F__inference_conv2d_124_layer_call_and_return_conditional_losses_126289б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0
+:)@2conv2d_124/kernel
:@2conv2d_124/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ч
░trace_02▄
5__inference_average_pooling2d_73_layer_call_fn_126294б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0
ќ
▒trace_02э
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_126299б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ы
иtrace_02м
+__inference_flatten_37_layer_call_fn_126304б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zиtrace_0
ї
Иtrace_02ь
F__inference_flatten_37_layer_call_and_return_conditional_losses_126310б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zИtrace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
№
Йtrace_02л
)__inference_dense_74_layer_call_fn_126319б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЙtrace_0
і
┐trace_02в
D__inference_dense_74_layer_call_and_return_conditional_losses_126330б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┐trace_0
#:!
ђђ2dense_74/kernel
:ђ2dense_74/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
№
┼trace_02л
)__inference_dense_75_layer_call_fn_126339б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┼trace_0
і
кtrace_02в
D__inference_dense_75_layer_call_and_return_conditional_losses_126350б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zкtrace_0
": 	ђ2dense_75/kernel
:2dense_75/bias
 "
trackable_list_wrapper
n
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
10"
trackable_list_wrapper
0
К0
╚1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBЄ
/__inference_my_modelV2_800_layer_call_fn_125710conv2d_121_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
/__inference_my_modelV2_800_layer_call_fn_126046inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
/__inference_my_modelV2_800_layer_call_fn_126075inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
іBЄ
/__inference_my_modelV2_800_layer_call_fn_125902conv2d_121_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЏBў
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126127inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЏBў
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126179inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЦBб
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125941conv2d_121_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЦBб
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125980conv2d_121_input"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
нBЛ
$__inference_signature_wrapper_126017conv2d_121_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
+__inference_conv2d_121_layer_call_fn_126188inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_conv2d_121_layer_call_and_return_conditional_losses_126199inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
тBР
1__inference_max_pooling2d_49_layer_call_fn_126204inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_126209inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
+__inference_conv2d_122_layer_call_fn_126218inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_conv2d_122_layer_call_and_return_conditional_losses_126229inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
тBР
1__inference_max_pooling2d_50_layer_call_fn_126234inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_126239inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
+__inference_conv2d_123_layer_call_fn_126248inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_conv2d_123_layer_call_and_return_conditional_losses_126259inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
жBТ
5__inference_average_pooling2d_72_layer_call_fn_126264inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_126269inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
+__inference_conv2d_124_layer_call_fn_126278inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_conv2d_124_layer_call_and_return_conditional_losses_126289inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
жBТ
5__inference_average_pooling2d_73_layer_call_fn_126294inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_126299inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
+__inference_flatten_37_layer_call_fn_126304inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_flatten_37_layer_call_and_return_conditional_losses_126310inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ПB┌
)__inference_dense_74_layer_call_fn_126319inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_dense_74_layer_call_and_return_conditional_losses_126330inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ПB┌
)__inference_dense_75_layer_call_fn_126339inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_dense_75_layer_call_and_return_conditional_losses_126350inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
╔	variables
╩	keras_api

╦total

╠count"
_tf_keras_metric
c
═	variables
╬	keras_api

¤total

лcount
Л
_fn_kwargs"
_tf_keras_metric
0
╦0
╠1"
trackable_list_wrapper
.
╔	variables"
_generic_user_object
:  (2total
:  (2count
0
¤0
л1"
trackable_list_wrapper
.
═	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.2Adam/conv2d_121/kernel/m
": 2Adam/conv2d_121/bias/m
0:.2Adam/conv2d_122/kernel/m
": 2Adam/conv2d_122/bias/m
0:.		2Adam/conv2d_123/kernel/m
": 2Adam/conv2d_123/bias/m
0:.@2Adam/conv2d_124/kernel/m
": @2Adam/conv2d_124/bias/m
(:&
ђђ2Adam/dense_74/kernel/m
!:ђ2Adam/dense_74/bias/m
':%	ђ2Adam/dense_75/kernel/m
 :2Adam/dense_75/bias/m
0:.2Adam/conv2d_121/kernel/v
": 2Adam/conv2d_121/bias/v
0:.2Adam/conv2d_122/kernel/v
": 2Adam/conv2d_122/bias/v
0:.		2Adam/conv2d_123/kernel/v
": 2Adam/conv2d_123/bias/v
0:.@2Adam/conv2d_124/kernel/v
": @2Adam/conv2d_124/bias/v
(:&
ђђ2Adam/dense_74/kernel/v
!:ђ2Adam/dense_74/bias/v
':%	ђ2Adam/dense_75/kernel/v
 :2Adam/dense_75/bias/v«
!__inference__wrapped_model_125513ѕ*+9:HI]^efCб@
9б6
4і1
conv2d_121_input         ђђ
ф "3ф0
.
dense_75"і
dense_75         з
P__inference_average_pooling2d_72_layer_call_and_return_conditional_losses_126269ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╦
5__inference_average_pooling2d_72_layer_call_fn_126264ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    з
P__inference_average_pooling2d_73_layer_call_and_return_conditional_losses_126299ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╦
5__inference_average_pooling2d_73_layer_call_fn_126294ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ║
F__inference_conv2d_121_layer_call_and_return_conditional_losses_126199p9б6
/б,
*і'
inputs         ђђ
ф "/б,
%і"
0           
џ њ
+__inference_conv2d_121_layer_call_fn_126188c9б6
/б,
*і'
inputs         ђђ
ф ""і           Х
F__inference_conv2d_122_layer_call_and_return_conditional_losses_126229l*+7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         ||
џ ј
+__inference_conv2d_122_layer_call_fn_126218_*+7б4
-б*
(і%
inputs         
ф " і         ||Х
F__inference_conv2d_123_layer_call_and_return_conditional_losses_126259l9:7б4
-б*
(і%
inputs         >>
ф "-б*
#і 
0         66
џ ј
+__inference_conv2d_123_layer_call_fn_126248_9:7б4
-б*
(і%
inputs         >>
ф " і         66Х
F__inference_conv2d_124_layer_call_and_return_conditional_losses_126289lHI7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         @
џ ј
+__inference_conv2d_124_layer_call_fn_126278_HI7б4
-б*
(і%
inputs         
ф " і         @д
D__inference_dense_74_layer_call_and_return_conditional_losses_126330^]^0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         ђ
џ ~
)__inference_dense_74_layer_call_fn_126319Q]^0б-
&б#
!і
inputs         ђ
ф "і         ђЦ
D__inference_dense_75_layer_call_and_return_conditional_losses_126350]ef0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         
џ }
)__inference_dense_75_layer_call_fn_126339Pef0б-
&б#
!і
inputs         ђ
ф "і         Ф
F__inference_flatten_37_layer_call_and_return_conditional_losses_126310a7б4
-б*
(і%
inputs         @
ф "&б#
і
0         ђ
џ Ѓ
+__inference_flatten_37_layer_call_fn_126304T7б4
-б*
(і%
inputs         @
ф "і         ђ№
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_126209ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_49_layer_call_fn_126204ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_126239ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_50_layer_call_fn_126234ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Л
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125941ѓ*+9:HI]^efKбH
Aб>
4і1
conv2d_121_input         ђђ
p 

 
ф "%б"
і
0         
џ Л
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_125980ѓ*+9:HI]^efKбH
Aб>
4і1
conv2d_121_input         ђђ
p

 
ф "%б"
і
0         
џ к
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126127x*+9:HI]^efAб>
7б4
*і'
inputs         ђђ
p 

 
ф "%б"
і
0         
џ к
J__inference_my_modelV2_800_layer_call_and_return_conditional_losses_126179x*+9:HI]^efAб>
7б4
*і'
inputs         ђђ
p

 
ф "%б"
і
0         
џ е
/__inference_my_modelV2_800_layer_call_fn_125710u*+9:HI]^efKбH
Aб>
4і1
conv2d_121_input         ђђ
p 

 
ф "і         е
/__inference_my_modelV2_800_layer_call_fn_125902u*+9:HI]^efKбH
Aб>
4і1
conv2d_121_input         ђђ
p

 
ф "і         ъ
/__inference_my_modelV2_800_layer_call_fn_126046k*+9:HI]^efAб>
7б4
*і'
inputs         ђђ
p 

 
ф "і         ъ
/__inference_my_modelV2_800_layer_call_fn_126075k*+9:HI]^efAб>
7б4
*і'
inputs         ђђ
p

 
ф "і         ┼
$__inference_signature_wrapper_126017ю*+9:HI]^efWбT
б 
MфJ
H
conv2d_121_input4і1
conv2d_121_input         ђђ"3ф0
.
dense_75"і
dense_75         