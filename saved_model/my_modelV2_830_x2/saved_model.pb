��
��
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
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��

�
Adam/dense_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/v
y
(Adam/dense_84/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_84/kernel/v
�
*Adam/dense_84/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_83/bias/v
y
(Adam/dense_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_83/kernel/v
�
*Adam/dense_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/dense_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_82/bias/v
z
(Adam/dense_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_82/kernel/v
�
*Adam/dense_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/conv2d_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_136/bias/v
}
*Adam/conv2d_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_136/kernel/v
�
,Adam/conv2d_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_135/bias/v
}
*Adam/conv2d_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_135/kernel/v
�
,Adam/conv2d_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/kernel/v*&
_output_shapes
:		*
dtype0
�
Adam/conv2d_134/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_134/bias/v
}
*Adam/conv2d_134/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_134/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_134/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_134/kernel/v
�
,Adam/conv2d_134/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_134/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_133/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_133/bias/v
}
*Adam/conv2d_133/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_133/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_133/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_133/kernel/v
�
,Adam/conv2d_133/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_133/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/dense_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_84/bias/m
y
(Adam/dense_84/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_84/kernel/m
�
*Adam/dense_84/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_84/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_83/bias/m
y
(Adam/dense_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_83/kernel/m
�
*Adam/dense_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/dense_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_82/bias/m
z
(Adam/dense_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_82/kernel/m
�
*Adam/dense_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/conv2d_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_136/bias/m
}
*Adam/conv2d_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv2d_136/kernel/m
�
,Adam/conv2d_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/m*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_135/bias/m
}
*Adam/conv2d_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*)
shared_nameAdam/conv2d_135/kernel/m
�
,Adam/conv2d_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_135/kernel/m*&
_output_shapes
:		*
dtype0
�
Adam/conv2d_134/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_134/bias/m
}
*Adam/conv2d_134/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_134/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_134/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_134/kernel/m
�
,Adam/conv2d_134/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_134/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_133/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_133/bias/m
}
*Adam/conv2d_133/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_133/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_133/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_133/kernel/m
�
,Adam/conv2d_133/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_133/kernel/m*&
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
dense_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_84/bias
k
!dense_84/bias/Read/ReadVariableOpReadVariableOpdense_84/bias*
_output_shapes
:*
dtype0
z
dense_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_84/kernel
s
#dense_84/kernel/Read/ReadVariableOpReadVariableOpdense_84/kernel*
_output_shapes

:@*
dtype0
r
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
_output_shapes
:@*
dtype0
{
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_83/kernel
t
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel*
_output_shapes
:	�@*
dtype0
s
dense_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_82/bias
l
!dense_82/bias/Read/ReadVariableOpReadVariableOpdense_82/bias*
_output_shapes	
:�*
dtype0
|
dense_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_82/kernel
u
#dense_82/kernel/Read/ReadVariableOpReadVariableOpdense_82/kernel* 
_output_shapes
:
��*
dtype0
v
conv2d_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_136/bias
o
#conv2d_136/bias/Read/ReadVariableOpReadVariableOpconv2d_136/bias*
_output_shapes
:@*
dtype0
�
conv2d_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_136/kernel

%conv2d_136/kernel/Read/ReadVariableOpReadVariableOpconv2d_136/kernel*&
_output_shapes
:@*
dtype0
v
conv2d_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_135/bias
o
#conv2d_135/bias/Read/ReadVariableOpReadVariableOpconv2d_135/bias*
_output_shapes
:*
dtype0
�
conv2d_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*"
shared_nameconv2d_135/kernel

%conv2d_135/kernel/Read/ReadVariableOpReadVariableOpconv2d_135/kernel*&
_output_shapes
:		*
dtype0
v
conv2d_134/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_134/bias
o
#conv2d_134/bias/Read/ReadVariableOpReadVariableOpconv2d_134/bias*
_output_shapes
:*
dtype0
�
conv2d_134/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_134/kernel

%conv2d_134/kernel/Read/ReadVariableOpReadVariableOpconv2d_134/kernel*&
_output_shapes
:*
dtype0
v
conv2d_133/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_133/bias
o
#conv2d_133/bias/Read/ReadVariableOpReadVariableOpconv2d_133/bias*
_output_shapes
:*
dtype0
�
conv2d_133/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_133/kernel

%conv2d_133/kernel/Read/ReadVariableOpReadVariableOpconv2d_133/kernel*&
_output_shapes
:*
dtype0
�
 serving_default_conv2d_133_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_133_inputconv2d_133/kernelconv2d_133/biasconv2d_134/kernelconv2d_134/biasconv2d_135/kernelconv2d_135/biasconv2d_136/kernelconv2d_136/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/biasdense_84/kerneldense_84/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_134130

NoOpNoOp
�p
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�p
value�pB�p B�p
�
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
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op*
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias*
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias*
j
0
1
+2
,3
:4
;5
I6
J7
^8
_9
f10
g11
n12
o13*
j
0
1
+2
,3
:4
;5
I6
J7
^8
_9
f10
g11
n12
o13*
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
utrace_0
vtrace_1
wtrace_2
xtrace_3* 
6
ytrace_0
ztrace_1
{trace_2
|trace_3* 
* 
�
}iter

~beta_1

beta_2

�decay
�learning_ratem�m�+m�,m�:m�;m�Im�Jm�^m�_m�fm�gm�nm�om�v�v�+v�,v�:v�;v�Iv�Jv�^v�_v�fv�gv�nv�ov�*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_133/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_133/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

+0
,1*

+0
,1*
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

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_134/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_134/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_135/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_135/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

I0
J1*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_136/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_136/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

^0
_1*

^0
_1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_82/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_82/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

f0
g1*

f0
g1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_83/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_83/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

n0
o1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_84/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_84/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
Z
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
11*
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
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�~
VARIABLE_VALUEAdam/conv2d_133/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_133/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_134/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_134/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_135/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_135/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_136/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_136/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_82/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_82/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_83/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_83/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_84/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_84/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_133/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_133/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_134/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_134/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_135/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_135/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_136/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_136/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_82/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_82/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_83/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_83/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_84/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_84/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_133/kernel/Read/ReadVariableOp#conv2d_133/bias/Read/ReadVariableOp%conv2d_134/kernel/Read/ReadVariableOp#conv2d_134/bias/Read/ReadVariableOp%conv2d_135/kernel/Read/ReadVariableOp#conv2d_135/bias/Read/ReadVariableOp%conv2d_136/kernel/Read/ReadVariableOp#conv2d_136/bias/Read/ReadVariableOp#dense_82/kernel/Read/ReadVariableOp!dense_82/bias/Read/ReadVariableOp#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOp#dense_84/kernel/Read/ReadVariableOp!dense_84/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_133/kernel/m/Read/ReadVariableOp*Adam/conv2d_133/bias/m/Read/ReadVariableOp,Adam/conv2d_134/kernel/m/Read/ReadVariableOp*Adam/conv2d_134/bias/m/Read/ReadVariableOp,Adam/conv2d_135/kernel/m/Read/ReadVariableOp*Adam/conv2d_135/bias/m/Read/ReadVariableOp,Adam/conv2d_136/kernel/m/Read/ReadVariableOp*Adam/conv2d_136/bias/m/Read/ReadVariableOp*Adam/dense_82/kernel/m/Read/ReadVariableOp(Adam/dense_82/bias/m/Read/ReadVariableOp*Adam/dense_83/kernel/m/Read/ReadVariableOp(Adam/dense_83/bias/m/Read/ReadVariableOp*Adam/dense_84/kernel/m/Read/ReadVariableOp(Adam/dense_84/bias/m/Read/ReadVariableOp,Adam/conv2d_133/kernel/v/Read/ReadVariableOp*Adam/conv2d_133/bias/v/Read/ReadVariableOp,Adam/conv2d_134/kernel/v/Read/ReadVariableOp*Adam/conv2d_134/bias/v/Read/ReadVariableOp,Adam/conv2d_135/kernel/v/Read/ReadVariableOp*Adam/conv2d_135/bias/v/Read/ReadVariableOp,Adam/conv2d_136/kernel/v/Read/ReadVariableOp*Adam/conv2d_136/bias/v/Read/ReadVariableOp*Adam/dense_82/kernel/v/Read/ReadVariableOp(Adam/dense_82/bias/v/Read/ReadVariableOp*Adam/dense_83/kernel/v/Read/ReadVariableOp(Adam/dense_83/bias/v/Read/ReadVariableOp*Adam/dense_84/kernel/v/Read/ReadVariableOp(Adam/dense_84/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
__inference__traced_save_134681
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_133/kernelconv2d_133/biasconv2d_134/kernelconv2d_134/biasconv2d_135/kernelconv2d_135/biasconv2d_136/kernelconv2d_136/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/biasdense_84/kerneldense_84/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_133/kernel/mAdam/conv2d_133/bias/mAdam/conv2d_134/kernel/mAdam/conv2d_134/bias/mAdam/conv2d_135/kernel/mAdam/conv2d_135/bias/mAdam/conv2d_136/kernel/mAdam/conv2d_136/bias/mAdam/dense_82/kernel/mAdam/dense_82/bias/mAdam/dense_83/kernel/mAdam/dense_83/bias/mAdam/dense_84/kernel/mAdam/dense_84/bias/mAdam/conv2d_133/kernel/vAdam/conv2d_133/bias/vAdam/conv2d_134/kernel/vAdam/conv2d_134/bias/vAdam/conv2d_135/kernel/vAdam/conv2d_135/bias/vAdam/conv2d_136/kernel/vAdam/conv2d_136/bias/vAdam/dense_82/kernel/vAdam/dense_82/bias/vAdam/dense_83/kernel/vAdam/dense_83/bias/vAdam/dense_84/kernel/vAdam/dense_84/bias/v*?
Tin8
624*
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
"__inference__traced_restore_134844��
�
�
F__inference_conv2d_136_layer_call_and_return_conditional_losses_134424

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_134434

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
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
�
M
1__inference_max_pooling2d_55_layer_call_fn_134339

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
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573�
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
�
2__inference_my_modelV2_830_x2_layer_call_fn_134163

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
��
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
2__inference_my_modelV2_830_x2_layer_call_fn_134196

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
��
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597

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
D__inference_dense_84_layer_call_and_return_conditional_losses_133744

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_136_layer_call_fn_134413

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_134344

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
�
�
$__inference_signature_wrapper_134130
conv2d_133_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_133_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_133564o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�
�
2__inference_my_modelV2_830_x2_layer_call_fn_134001
conv2d_133_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_133_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�
h
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_134374

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
�
�
F__inference_conv2d_135_layer_call_and_return_conditional_losses_134394

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66*
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
:���������66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>
 
_user_specified_nameinputs
�
�
F__inference_conv2d_134_layer_call_and_return_conditional_losses_134364

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||*
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
:���������||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_134_layer_call_fn_134353

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������||`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_134844
file_prefix<
"assignvariableop_conv2d_133_kernel:0
"assignvariableop_1_conv2d_133_bias:>
$assignvariableop_2_conv2d_134_kernel:0
"assignvariableop_3_conv2d_134_bias:>
$assignvariableop_4_conv2d_135_kernel:		0
"assignvariableop_5_conv2d_135_bias:>
$assignvariableop_6_conv2d_136_kernel:@0
"assignvariableop_7_conv2d_136_bias:@6
"assignvariableop_8_dense_82_kernel:
��/
 assignvariableop_9_dense_82_bias:	�6
#assignvariableop_10_dense_83_kernel:	�@/
!assignvariableop_11_dense_83_bias:@5
#assignvariableop_12_dense_84_kernel:@/
!assignvariableop_13_dense_84_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: F
,assignvariableop_23_adam_conv2d_133_kernel_m:8
*assignvariableop_24_adam_conv2d_133_bias_m:F
,assignvariableop_25_adam_conv2d_134_kernel_m:8
*assignvariableop_26_adam_conv2d_134_bias_m:F
,assignvariableop_27_adam_conv2d_135_kernel_m:		8
*assignvariableop_28_adam_conv2d_135_bias_m:F
,assignvariableop_29_adam_conv2d_136_kernel_m:@8
*assignvariableop_30_adam_conv2d_136_bias_m:@>
*assignvariableop_31_adam_dense_82_kernel_m:
��7
(assignvariableop_32_adam_dense_82_bias_m:	�=
*assignvariableop_33_adam_dense_83_kernel_m:	�@6
(assignvariableop_34_adam_dense_83_bias_m:@<
*assignvariableop_35_adam_dense_84_kernel_m:@6
(assignvariableop_36_adam_dense_84_bias_m:F
,assignvariableop_37_adam_conv2d_133_kernel_v:8
*assignvariableop_38_adam_conv2d_133_bias_v:F
,assignvariableop_39_adam_conv2d_134_kernel_v:8
*assignvariableop_40_adam_conv2d_134_bias_v:F
,assignvariableop_41_adam_conv2d_135_kernel_v:		8
*assignvariableop_42_adam_conv2d_135_bias_v:F
,assignvariableop_43_adam_conv2d_136_kernel_v:@8
*assignvariableop_44_adam_conv2d_136_bias_v:@>
*assignvariableop_45_adam_dense_82_kernel_v:
��7
(assignvariableop_46_adam_dense_82_bias_v:	�=
*assignvariableop_47_adam_dense_83_kernel_v:	�@6
(assignvariableop_48_adam_dense_83_bias_v:@<
*assignvariableop_49_adam_dense_84_kernel_v:@6
(assignvariableop_50_adam_dense_84_bias_v:
identity_52��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_133_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_133_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_134_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_134_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_135_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_135_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_136_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_136_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_82_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_82_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_83_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_83_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_84_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_84_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_133_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_133_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_134_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_134_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_135_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_135_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_136_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_136_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_82_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_82_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_83_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_83_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_84_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_84_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_133_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_133_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_134_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_134_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_135_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_135_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_136_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_136_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_82_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_82_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_83_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_83_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_84_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_84_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
h
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585

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
�
�
2__inference_my_modelV2_830_x2_layer_call_fn_133782
conv2d_133_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:		
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_133_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�
�
)__inference_dense_82_layer_call_fn_134454

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_82_layer_call_and_return_conditional_losses_133710p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
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
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_133_layer_call_fn_134323

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�5
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133937

inputs+
conv2d_133_133896:
conv2d_133_133898:+
conv2d_134_133902:
conv2d_134_133904:+
conv2d_135_133908:		
conv2d_135_133910:+
conv2d_136_133914:@
conv2d_136_133916:@#
dense_82_133921:
��
dense_82_133923:	�"
dense_83_133926:	�@
dense_83_133928:@!
dense_84_133931:@
dense_84_133933:
identity��"conv2d_133/StatefulPartitionedCall�"conv2d_134/StatefulPartitionedCall�"conv2d_135/StatefulPartitionedCall�"conv2d_136/StatefulPartitionedCall� dense_82/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_133_133896conv2d_133_133898*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630�
 max_pooling2d_55/PartitionedCallPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573�
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_134_133902conv2d_134_133904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648�
 max_pooling2d_56/PartitionedCallPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585�
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_135_133908conv2d_135_133910*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666�
$average_pooling2d_78/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597�
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_136_133914conv2d_136_133916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684�
$average_pooling2d_79/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609�
flatten_40/PartitionedCallPartitionedCall-average_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_82_133921dense_82_133923*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_82_layer_call_and_return_conditional_losses_133710�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_133926dense_83_133928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_133727�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_133931dense_84_133933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_133744x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66*
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
:���������66X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������66i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>
 
_user_specified_nameinputs
�5
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134045
conv2d_133_input+
conv2d_133_134004:
conv2d_133_134006:+
conv2d_134_134010:
conv2d_134_134012:+
conv2d_135_134016:		
conv2d_135_134018:+
conv2d_136_134022:@
conv2d_136_134024:@#
dense_82_134029:
��
dense_82_134031:	�"
dense_83_134034:	�@
dense_83_134036:@!
dense_84_134039:@
dense_84_134041:
identity��"conv2d_133/StatefulPartitionedCall�"conv2d_134/StatefulPartitionedCall�"conv2d_135/StatefulPartitionedCall�"conv2d_136/StatefulPartitionedCall� dense_82/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCallconv2d_133_inputconv2d_133_134004conv2d_133_134006*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630�
 max_pooling2d_55/PartitionedCallPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573�
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_134_134010conv2d_134_134012*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648�
 max_pooling2d_56/PartitionedCallPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585�
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_135_134016conv2d_135_134018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666�
$average_pooling2d_78/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597�
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_136_134022conv2d_136_134024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684�
$average_pooling2d_79/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609�
flatten_40/PartitionedCallPartitionedCall-average_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_82_134029dense_82_134031*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_82_layer_call_and_return_conditional_losses_133710�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_134034dense_83_134036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_133727�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_134039dense_84_134041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_133744x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�`
�
!__inference__wrapped_model_133564
conv2d_133_inputU
;my_modelv2_830_x2_conv2d_133_conv2d_readvariableop_resource:J
<my_modelv2_830_x2_conv2d_133_biasadd_readvariableop_resource:U
;my_modelv2_830_x2_conv2d_134_conv2d_readvariableop_resource:J
<my_modelv2_830_x2_conv2d_134_biasadd_readvariableop_resource:U
;my_modelv2_830_x2_conv2d_135_conv2d_readvariableop_resource:		J
<my_modelv2_830_x2_conv2d_135_biasadd_readvariableop_resource:U
;my_modelv2_830_x2_conv2d_136_conv2d_readvariableop_resource:@J
<my_modelv2_830_x2_conv2d_136_biasadd_readvariableop_resource:@M
9my_modelv2_830_x2_dense_82_matmul_readvariableop_resource:
��I
:my_modelv2_830_x2_dense_82_biasadd_readvariableop_resource:	�L
9my_modelv2_830_x2_dense_83_matmul_readvariableop_resource:	�@H
:my_modelv2_830_x2_dense_83_biasadd_readvariableop_resource:@K
9my_modelv2_830_x2_dense_84_matmul_readvariableop_resource:@H
:my_modelv2_830_x2_dense_84_biasadd_readvariableop_resource:
identity��3my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOp�2my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOp�3my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOp�2my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOp�3my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOp�2my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOp�3my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOp�2my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOp�1my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOp�0my_modelV2_830_x2/dense_82/MatMul/ReadVariableOp�1my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOp�0my_modelV2_830_x2/dense_83/MatMul/ReadVariableOp�1my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOp�0my_modelV2_830_x2/dense_84/MatMul/ReadVariableOp�
2my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOpReadVariableOp;my_modelv2_830_x2_conv2d_133_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#my_modelV2_830_x2/conv2d_133/Conv2DConv2Dconv2d_133_input:my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
3my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOpReadVariableOp<my_modelv2_830_x2_conv2d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$my_modelV2_830_x2/conv2d_133/BiasAddBiasAdd,my_modelV2_830_x2/conv2d_133/Conv2D:output:0;my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
!my_modelV2_830_x2/conv2d_133/ReluRelu-my_modelV2_830_x2/conv2d_133/BiasAdd:output:0*
T0*1
_output_shapes
:������������
*my_modelV2_830_x2/max_pooling2d_55/MaxPoolMaxPool/my_modelV2_830_x2/conv2d_133/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
2my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOpReadVariableOp;my_modelv2_830_x2_conv2d_134_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
#my_modelV2_830_x2/conv2d_134/Conv2DConv2D3my_modelV2_830_x2/max_pooling2d_55/MaxPool:output:0:my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||*
paddingVALID*
strides
�
3my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOpReadVariableOp<my_modelv2_830_x2_conv2d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$my_modelV2_830_x2/conv2d_134/BiasAddBiasAdd,my_modelV2_830_x2/conv2d_134/Conv2D:output:0;my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||�
!my_modelV2_830_x2/conv2d_134/ReluRelu-my_modelV2_830_x2/conv2d_134/BiasAdd:output:0*
T0*/
_output_shapes
:���������||�
*my_modelV2_830_x2/max_pooling2d_56/MaxPoolMaxPool/my_modelV2_830_x2/conv2d_134/Relu:activations:0*/
_output_shapes
:���������>>*
ksize
*
paddingVALID*
strides
�
2my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOpReadVariableOp;my_modelv2_830_x2_conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0�
#my_modelV2_830_x2/conv2d_135/Conv2DConv2D3my_modelV2_830_x2/max_pooling2d_56/MaxPool:output:0:my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66*
paddingVALID*
strides
�
3my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOpReadVariableOp<my_modelv2_830_x2_conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$my_modelV2_830_x2/conv2d_135/BiasAddBiasAdd,my_modelV2_830_x2/conv2d_135/Conv2D:output:0;my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66�
!my_modelV2_830_x2/conv2d_135/ReluRelu-my_modelV2_830_x2/conv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:���������66�
.my_modelV2_830_x2/average_pooling2d_78/AvgPoolAvgPool/my_modelV2_830_x2/conv2d_135/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
2my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOpReadVariableOp;my_modelv2_830_x2_conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
#my_modelV2_830_x2/conv2d_136/Conv2DConv2D7my_modelV2_830_x2/average_pooling2d_78/AvgPool:output:0:my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
3my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOpReadVariableOp<my_modelv2_830_x2_conv2d_136_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
$my_modelV2_830_x2/conv2d_136/BiasAddBiasAdd,my_modelV2_830_x2/conv2d_136/Conv2D:output:0;my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
!my_modelV2_830_x2/conv2d_136/ReluRelu-my_modelV2_830_x2/conv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
.my_modelV2_830_x2/average_pooling2d_79/AvgPoolAvgPool/my_modelV2_830_x2/conv2d_136/Relu:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
s
"my_modelV2_830_x2/flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
$my_modelV2_830_x2/flatten_40/ReshapeReshape7my_modelV2_830_x2/average_pooling2d_79/AvgPool:output:0+my_modelV2_830_x2/flatten_40/Const:output:0*
T0*(
_output_shapes
:�����������
0my_modelV2_830_x2/dense_82/MatMul/ReadVariableOpReadVariableOp9my_modelv2_830_x2_dense_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!my_modelV2_830_x2/dense_82/MatMulMatMul-my_modelV2_830_x2/flatten_40/Reshape:output:08my_modelV2_830_x2/dense_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOpReadVariableOp:my_modelv2_830_x2_dense_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"my_modelV2_830_x2/dense_82/BiasAddBiasAdd+my_modelV2_830_x2/dense_82/MatMul:product:09my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
my_modelV2_830_x2/dense_82/ReluRelu+my_modelV2_830_x2/dense_82/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
0my_modelV2_830_x2/dense_83/MatMul/ReadVariableOpReadVariableOp9my_modelv2_830_x2_dense_83_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
!my_modelV2_830_x2/dense_83/MatMulMatMul-my_modelV2_830_x2/dense_82/Relu:activations:08my_modelV2_830_x2/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
1my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOpReadVariableOp:my_modelv2_830_x2_dense_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"my_modelV2_830_x2/dense_83/BiasAddBiasAdd+my_modelV2_830_x2/dense_83/MatMul:product:09my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
my_modelV2_830_x2/dense_83/ReluRelu+my_modelV2_830_x2/dense_83/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
0my_modelV2_830_x2/dense_84/MatMul/ReadVariableOpReadVariableOp9my_modelv2_830_x2_dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
!my_modelV2_830_x2/dense_84/MatMulMatMul-my_modelV2_830_x2/dense_83/Relu:activations:08my_modelV2_830_x2/dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOpReadVariableOp:my_modelv2_830_x2_dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"my_modelV2_830_x2/dense_84/BiasAddBiasAdd+my_modelV2_830_x2/dense_84/MatMul:product:09my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"my_modelV2_830_x2/dense_84/SoftmaxSoftmax+my_modelV2_830_x2/dense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������{
IdentityIdentity,my_modelV2_830_x2/dense_84/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp4^my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOp3^my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOp4^my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOp3^my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOp4^my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOp3^my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOp4^my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOp3^my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOp2^my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOp1^my_modelV2_830_x2/dense_82/MatMul/ReadVariableOp2^my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOp1^my_modelV2_830_x2/dense_83/MatMul/ReadVariableOp2^my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOp1^my_modelV2_830_x2/dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2j
3my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOp3my_modelV2_830_x2/conv2d_133/BiasAdd/ReadVariableOp2h
2my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOp2my_modelV2_830_x2/conv2d_133/Conv2D/ReadVariableOp2j
3my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOp3my_modelV2_830_x2/conv2d_134/BiasAdd/ReadVariableOp2h
2my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOp2my_modelV2_830_x2/conv2d_134/Conv2D/ReadVariableOp2j
3my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOp3my_modelV2_830_x2/conv2d_135/BiasAdd/ReadVariableOp2h
2my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOp2my_modelV2_830_x2/conv2d_135/Conv2D/ReadVariableOp2j
3my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOp3my_modelV2_830_x2/conv2d_136/BiasAdd/ReadVariableOp2h
2my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOp2my_modelV2_830_x2/conv2d_136/Conv2D/ReadVariableOp2f
1my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOp1my_modelV2_830_x2/dense_82/BiasAdd/ReadVariableOp2d
0my_modelV2_830_x2/dense_82/MatMul/ReadVariableOp0my_modelV2_830_x2/dense_82/MatMul/ReadVariableOp2f
1my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOp1my_modelV2_830_x2/dense_83/BiasAdd/ReadVariableOp2d
0my_modelV2_830_x2/dense_83/MatMul/ReadVariableOp0my_modelV2_830_x2/dense_83/MatMul/ReadVariableOp2f
1my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOp1my_modelV2_830_x2/dense_84/BiasAdd/ReadVariableOp2d
0my_modelV2_830_x2/dense_84/MatMul/ReadVariableOp0my_modelV2_830_x2/dense_84/MatMul/ReadVariableOp:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�

�
D__inference_dense_82_layer_call_and_return_conditional_losses_133710

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_84_layer_call_fn_134494

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_133744o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_84_layer_call_and_return_conditional_losses_134505

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_83_layer_call_fn_134474

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_133727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
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
G
+__inference_flatten_40_layer_call_fn_134439

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
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
l
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_134404

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
�
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_134445

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_135_layer_call_fn_134383

inputs!
unknown:		
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������>>
 
_user_specified_nameinputs
�

�
D__inference_dense_83_layer_call_and_return_conditional_losses_134485

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573

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
�I
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134255

inputsC
)conv2d_133_conv2d_readvariableop_resource:8
*conv2d_133_biasadd_readvariableop_resource:C
)conv2d_134_conv2d_readvariableop_resource:8
*conv2d_134_biasadd_readvariableop_resource:C
)conv2d_135_conv2d_readvariableop_resource:		8
*conv2d_135_biasadd_readvariableop_resource:C
)conv2d_136_conv2d_readvariableop_resource:@8
*conv2d_136_biasadd_readvariableop_resource:@;
'dense_82_matmul_readvariableop_resource:
��7
(dense_82_biasadd_readvariableop_resource:	�:
'dense_83_matmul_readvariableop_resource:	�@6
(dense_83_biasadd_readvariableop_resource:@9
'dense_84_matmul_readvariableop_resource:@6
(dense_84_biasadd_readvariableop_resource:
identity��!conv2d_133/BiasAdd/ReadVariableOp� conv2d_133/Conv2D/ReadVariableOp�!conv2d_134/BiasAdd/ReadVariableOp� conv2d_134/Conv2D/ReadVariableOp�!conv2d_135/BiasAdd/ReadVariableOp� conv2d_135/Conv2D/ReadVariableOp�!conv2d_136/BiasAdd/ReadVariableOp� conv2d_136/Conv2D/ReadVariableOp�dense_82/BiasAdd/ReadVariableOp�dense_82/MatMul/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�
 conv2d_133/Conv2D/ReadVariableOpReadVariableOp)conv2d_133_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_133/Conv2DConv2Dinputs(conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
!conv2d_133/BiasAdd/ReadVariableOpReadVariableOp*conv2d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_133/BiasAddBiasAddconv2d_133/Conv2D:output:0)conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
conv2d_133/ReluReluconv2d_133/BiasAdd:output:0*
T0*1
_output_shapes
:������������
max_pooling2d_55/MaxPoolMaxPoolconv2d_133/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_134/Conv2D/ReadVariableOpReadVariableOp)conv2d_134_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_134/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0(conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||*
paddingVALID*
strides
�
!conv2d_134/BiasAdd/ReadVariableOpReadVariableOp*conv2d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_134/BiasAddBiasAddconv2d_134/Conv2D:output:0)conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||n
conv2d_134/ReluReluconv2d_134/BiasAdd:output:0*
T0*/
_output_shapes
:���������||�
max_pooling2d_56/MaxPoolMaxPoolconv2d_134/Relu:activations:0*/
_output_shapes
:���������>>*
ksize
*
paddingVALID*
strides
�
 conv2d_135/Conv2D/ReadVariableOpReadVariableOp)conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0�
conv2d_135/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0(conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66*
paddingVALID*
strides
�
!conv2d_135/BiasAdd/ReadVariableOpReadVariableOp*conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_135/BiasAddBiasAddconv2d_135/Conv2D:output:0)conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66n
conv2d_135/ReluReluconv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:���������66�
average_pooling2d_78/AvgPoolAvgPoolconv2d_135/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_136/Conv2DConv2D%average_pooling2d_78/AvgPool:output:0(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@n
conv2d_136/ReluReluconv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
average_pooling2d_79/AvgPoolAvgPoolconv2d_136/Relu:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_40/ReshapeReshape%average_pooling2d_79/AvgPool:output:0flatten_40/Const:output:0*
T0*(
_output_shapes
:�����������
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_82/MatMulMatMulflatten_40/Reshape:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_83/ReluReludense_83/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_84/MatMulMatMuldense_83/Relu:activations:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_84/SoftmaxSoftmaxdense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_84/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_133/BiasAdd/ReadVariableOp!^conv2d_133/Conv2D/ReadVariableOp"^conv2d_134/BiasAdd/ReadVariableOp!^conv2d_134/Conv2D/ReadVariableOp"^conv2d_135/BiasAdd/ReadVariableOp!^conv2d_135/Conv2D/ReadVariableOp"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_133/BiasAdd/ReadVariableOp!conv2d_133/BiasAdd/ReadVariableOp2D
 conv2d_133/Conv2D/ReadVariableOp conv2d_133/Conv2D/ReadVariableOp2F
!conv2d_134/BiasAdd/ReadVariableOp!conv2d_134/BiasAdd/ReadVariableOp2D
 conv2d_134/Conv2D/ReadVariableOp conv2d_134/Conv2D/ReadVariableOp2F
!conv2d_135/BiasAdd/ReadVariableOp!conv2d_135/BiasAdd/ReadVariableOp2D
 conv2d_135/Conv2D/ReadVariableOp conv2d_135/Conv2D/ReadVariableOp2F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||*
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
:���������||X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������||i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������||w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
Q
5__inference_average_pooling2d_78_layer_call_fn_134399

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
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597�
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
D__inference_dense_82_layer_call_and_return_conditional_losses_134465

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�5
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134089
conv2d_133_input+
conv2d_133_134048:
conv2d_133_134050:+
conv2d_134_134054:
conv2d_134_134056:+
conv2d_135_134060:		
conv2d_135_134062:+
conv2d_136_134066:@
conv2d_136_134068:@#
dense_82_134073:
��
dense_82_134075:	�"
dense_83_134078:	�@
dense_83_134080:@!
dense_84_134083:@
dense_84_134085:
identity��"conv2d_133/StatefulPartitionedCall�"conv2d_134/StatefulPartitionedCall�"conv2d_135/StatefulPartitionedCall�"conv2d_136/StatefulPartitionedCall� dense_82/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCallconv2d_133_inputconv2d_133_134048conv2d_133_134050*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630�
 max_pooling2d_55/PartitionedCallPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573�
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_134_134054conv2d_134_134056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648�
 max_pooling2d_56/PartitionedCallPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585�
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_135_134060conv2d_135_134062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666�
$average_pooling2d_78/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597�
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_136_134066conv2d_136_134068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684�
$average_pooling2d_79/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609�
flatten_40/PartitionedCallPartitionedCall-average_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_82_134073dense_82_134075*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_82_layer_call_and_return_conditional_losses_133710�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_134078dense_83_134080*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_133727�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_134083dense_84_134085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_133744x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_nameconv2d_133_input
�
Q
5__inference_average_pooling2d_79_layer_call_fn_134429

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
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609�
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
F__inference_conv2d_133_layer_call_and_return_conditional_losses_134334

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
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
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�5
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_133751

inputs+
conv2d_133_133631:
conv2d_133_133633:+
conv2d_134_133649:
conv2d_134_133651:+
conv2d_135_133667:		
conv2d_135_133669:+
conv2d_136_133685:@
conv2d_136_133687:@#
dense_82_133711:
��
dense_82_133713:	�"
dense_83_133728:	�@
dense_83_133730:@!
dense_84_133745:@
dense_84_133747:
identity��"conv2d_133/StatefulPartitionedCall�"conv2d_134/StatefulPartitionedCall�"conv2d_135/StatefulPartitionedCall�"conv2d_136/StatefulPartitionedCall� dense_82/StatefulPartitionedCall� dense_83/StatefulPartitionedCall� dense_84/StatefulPartitionedCall�
"conv2d_133/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_133_133631conv2d_133_133633*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630�
 max_pooling2d_55/PartitionedCallPartitionedCall+conv2d_133/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_133573�
"conv2d_134/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_55/PartitionedCall:output:0conv2d_134_133649conv2d_134_133651*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������||*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_134_layer_call_and_return_conditional_losses_133648�
 max_pooling2d_56/PartitionedCallPartitionedCall+conv2d_134/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585�
"conv2d_135/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_135_133667conv2d_135_133669*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_135_layer_call_and_return_conditional_losses_133666�
$average_pooling2d_78/PartitionedCallPartitionedCall+conv2d_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_133597�
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_78/PartitionedCall:output:0conv2d_136_133685conv2d_136_133687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_133684�
$average_pooling2d_79/PartitionedCallPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_133609�
flatten_40/PartitionedCallPartitionedCall-average_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_40/PartitionedCall:output:0dense_82_133711dense_82_133713*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_82_layer_call_and_return_conditional_losses_133710�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_133728dense_83_133730*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_83_layer_call_and_return_conditional_losses_133727�
 dense_84/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0dense_84_133745dense_84_133747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_84_layer_call_and_return_conditional_losses_133744x
IdentityIdentity)dense_84/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^conv2d_133/StatefulPartitionedCall#^conv2d_134/StatefulPartitionedCall#^conv2d_135/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall!^dense_84/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2H
"conv2d_133/StatefulPartitionedCall"conv2d_133/StatefulPartitionedCall2H
"conv2d_134/StatefulPartitionedCall"conv2d_134/StatefulPartitionedCall2H
"conv2d_135/StatefulPartitionedCall"conv2d_135/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 dense_84/StatefulPartitionedCall dense_84/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
D__inference_dense_83_layer_call_and_return_conditional_losses_133727

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�I
�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134314

inputsC
)conv2d_133_conv2d_readvariableop_resource:8
*conv2d_133_biasadd_readvariableop_resource:C
)conv2d_134_conv2d_readvariableop_resource:8
*conv2d_134_biasadd_readvariableop_resource:C
)conv2d_135_conv2d_readvariableop_resource:		8
*conv2d_135_biasadd_readvariableop_resource:C
)conv2d_136_conv2d_readvariableop_resource:@8
*conv2d_136_biasadd_readvariableop_resource:@;
'dense_82_matmul_readvariableop_resource:
��7
(dense_82_biasadd_readvariableop_resource:	�:
'dense_83_matmul_readvariableop_resource:	�@6
(dense_83_biasadd_readvariableop_resource:@9
'dense_84_matmul_readvariableop_resource:@6
(dense_84_biasadd_readvariableop_resource:
identity��!conv2d_133/BiasAdd/ReadVariableOp� conv2d_133/Conv2D/ReadVariableOp�!conv2d_134/BiasAdd/ReadVariableOp� conv2d_134/Conv2D/ReadVariableOp�!conv2d_135/BiasAdd/ReadVariableOp� conv2d_135/Conv2D/ReadVariableOp�!conv2d_136/BiasAdd/ReadVariableOp� conv2d_136/Conv2D/ReadVariableOp�dense_82/BiasAdd/ReadVariableOp�dense_82/MatMul/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�dense_84/BiasAdd/ReadVariableOp�dense_84/MatMul/ReadVariableOp�
 conv2d_133/Conv2D/ReadVariableOpReadVariableOp)conv2d_133_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_133/Conv2DConv2Dinputs(conv2d_133/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
!conv2d_133/BiasAdd/ReadVariableOpReadVariableOp*conv2d_133_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_133/BiasAddBiasAddconv2d_133/Conv2D:output:0)conv2d_133/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
conv2d_133/ReluReluconv2d_133/BiasAdd:output:0*
T0*1
_output_shapes
:������������
max_pooling2d_55/MaxPoolMaxPoolconv2d_133/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_134/Conv2D/ReadVariableOpReadVariableOp)conv2d_134_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_134/Conv2DConv2D!max_pooling2d_55/MaxPool:output:0(conv2d_134/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||*
paddingVALID*
strides
�
!conv2d_134/BiasAdd/ReadVariableOpReadVariableOp*conv2d_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_134/BiasAddBiasAddconv2d_134/Conv2D:output:0)conv2d_134/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������||n
conv2d_134/ReluReluconv2d_134/BiasAdd:output:0*
T0*/
_output_shapes
:���������||�
max_pooling2d_56/MaxPoolMaxPoolconv2d_134/Relu:activations:0*/
_output_shapes
:���������>>*
ksize
*
paddingVALID*
strides
�
 conv2d_135/Conv2D/ReadVariableOpReadVariableOp)conv2d_135_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype0�
conv2d_135/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0(conv2d_135/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66*
paddingVALID*
strides
�
!conv2d_135/BiasAdd/ReadVariableOpReadVariableOp*conv2d_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_135/BiasAddBiasAddconv2d_135/Conv2D:output:0)conv2d_135/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������66n
conv2d_135/ReluReluconv2d_135/BiasAdd:output:0*
T0*/
_output_shapes
:���������66�
average_pooling2d_78/AvgPoolAvgPoolconv2d_135/Relu:activations:0*
T0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_136/Conv2DConv2D%average_pooling2d_78/AvgPool:output:0(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@n
conv2d_136/ReluReluconv2d_136/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
average_pooling2d_79/AvgPoolAvgPoolconv2d_136/Relu:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
a
flatten_40/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_40/ReshapeReshape%average_pooling2d_79/AvgPool:output:0flatten_40/Const:output:0*
T0*(
_output_shapes
:�����������
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_82/MatMulMatMulflatten_40/Reshape:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_83/ReluReludense_83/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_84/MatMul/ReadVariableOpReadVariableOp'dense_84_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_84/MatMulMatMuldense_83/Relu:activations:0&dense_84/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_84/BiasAdd/ReadVariableOpReadVariableOp(dense_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_84/BiasAddBiasAdddense_84/MatMul:product:0'dense_84/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_84/SoftmaxSoftmaxdense_84/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_84/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_133/BiasAdd/ReadVariableOp!^conv2d_133/Conv2D/ReadVariableOp"^conv2d_134/BiasAdd/ReadVariableOp!^conv2d_134/Conv2D/ReadVariableOp"^conv2d_135/BiasAdd/ReadVariableOp!^conv2d_135/Conv2D/ReadVariableOp"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp ^dense_84/BiasAdd/ReadVariableOp^dense_84/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_133/BiasAdd/ReadVariableOp!conv2d_133/BiasAdd/ReadVariableOp2D
 conv2d_133/Conv2D/ReadVariableOp conv2d_133/Conv2D/ReadVariableOp2F
!conv2d_134/BiasAdd/ReadVariableOp!conv2d_134/BiasAdd/ReadVariableOp2D
 conv2d_134/Conv2D/ReadVariableOp conv2d_134/Conv2D/ReadVariableOp2F
!conv2d_135/BiasAdd/ReadVariableOp!conv2d_135/BiasAdd/ReadVariableOp2D
 conv2d_135/Conv2D/ReadVariableOp conv2d_135/Conv2D/ReadVariableOp2F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2B
dense_84/BiasAdd/ReadVariableOpdense_84/BiasAdd/ReadVariableOp2@
dense_84/MatMul/ReadVariableOpdense_84/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_56_layer_call_fn_134369

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
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_133585�
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
�g
�
__inference__traced_save_134681
file_prefix0
,savev2_conv2d_133_kernel_read_readvariableop.
*savev2_conv2d_133_bias_read_readvariableop0
,savev2_conv2d_134_kernel_read_readvariableop.
*savev2_conv2d_134_bias_read_readvariableop0
,savev2_conv2d_135_kernel_read_readvariableop.
*savev2_conv2d_135_bias_read_readvariableop0
,savev2_conv2d_136_kernel_read_readvariableop.
*savev2_conv2d_136_bias_read_readvariableop.
*savev2_dense_82_kernel_read_readvariableop,
(savev2_dense_82_bias_read_readvariableop.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop.
*savev2_dense_84_kernel_read_readvariableop,
(savev2_dense_84_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_133_kernel_m_read_readvariableop5
1savev2_adam_conv2d_133_bias_m_read_readvariableop7
3savev2_adam_conv2d_134_kernel_m_read_readvariableop5
1savev2_adam_conv2d_134_bias_m_read_readvariableop7
3savev2_adam_conv2d_135_kernel_m_read_readvariableop5
1savev2_adam_conv2d_135_bias_m_read_readvariableop7
3savev2_adam_conv2d_136_kernel_m_read_readvariableop5
1savev2_adam_conv2d_136_bias_m_read_readvariableop5
1savev2_adam_dense_82_kernel_m_read_readvariableop3
/savev2_adam_dense_82_bias_m_read_readvariableop5
1savev2_adam_dense_83_kernel_m_read_readvariableop3
/savev2_adam_dense_83_bias_m_read_readvariableop5
1savev2_adam_dense_84_kernel_m_read_readvariableop3
/savev2_adam_dense_84_bias_m_read_readvariableop7
3savev2_adam_conv2d_133_kernel_v_read_readvariableop5
1savev2_adam_conv2d_133_bias_v_read_readvariableop7
3savev2_adam_conv2d_134_kernel_v_read_readvariableop5
1savev2_adam_conv2d_134_bias_v_read_readvariableop7
3savev2_adam_conv2d_135_kernel_v_read_readvariableop5
1savev2_adam_conv2d_135_bias_v_read_readvariableop7
3savev2_adam_conv2d_136_kernel_v_read_readvariableop5
1savev2_adam_conv2d_136_bias_v_read_readvariableop5
1savev2_adam_dense_82_kernel_v_read_readvariableop3
/savev2_adam_dense_82_bias_v_read_readvariableop5
1savev2_adam_dense_83_kernel_v_read_readvariableop3
/savev2_adam_dense_83_bias_v_read_readvariableop5
1savev2_adam_dense_84_kernel_v_read_readvariableop3
/savev2_adam_dense_84_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_133_kernel_read_readvariableop*savev2_conv2d_133_bias_read_readvariableop,savev2_conv2d_134_kernel_read_readvariableop*savev2_conv2d_134_bias_read_readvariableop,savev2_conv2d_135_kernel_read_readvariableop*savev2_conv2d_135_bias_read_readvariableop,savev2_conv2d_136_kernel_read_readvariableop*savev2_conv2d_136_bias_read_readvariableop*savev2_dense_82_kernel_read_readvariableop(savev2_dense_82_bias_read_readvariableop*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop*savev2_dense_84_kernel_read_readvariableop(savev2_dense_84_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_133_kernel_m_read_readvariableop1savev2_adam_conv2d_133_bias_m_read_readvariableop3savev2_adam_conv2d_134_kernel_m_read_readvariableop1savev2_adam_conv2d_134_bias_m_read_readvariableop3savev2_adam_conv2d_135_kernel_m_read_readvariableop1savev2_adam_conv2d_135_bias_m_read_readvariableop3savev2_adam_conv2d_136_kernel_m_read_readvariableop1savev2_adam_conv2d_136_bias_m_read_readvariableop1savev2_adam_dense_82_kernel_m_read_readvariableop/savev2_adam_dense_82_bias_m_read_readvariableop1savev2_adam_dense_83_kernel_m_read_readvariableop/savev2_adam_dense_83_bias_m_read_readvariableop1savev2_adam_dense_84_kernel_m_read_readvariableop/savev2_adam_dense_84_bias_m_read_readvariableop3savev2_adam_conv2d_133_kernel_v_read_readvariableop1savev2_adam_conv2d_133_bias_v_read_readvariableop3savev2_adam_conv2d_134_kernel_v_read_readvariableop1savev2_adam_conv2d_134_bias_v_read_readvariableop3savev2_adam_conv2d_135_kernel_v_read_readvariableop1savev2_adam_conv2d_135_bias_v_read_readvariableop3savev2_adam_conv2d_136_kernel_v_read_readvariableop1savev2_adam_conv2d_136_bias_v_read_readvariableop1savev2_adam_dense_82_kernel_v_read_readvariableop/savev2_adam_dense_82_bias_v_read_readvariableop1savev2_adam_dense_83_kernel_v_read_readvariableop/savev2_adam_dense_83_bias_v_read_readvariableop1savev2_adam_dense_84_kernel_v_read_readvariableop/savev2_adam_dense_84_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::		::@:@:
��:�:	�@:@:@:: : : : : : : : : :::::		::@:@:
��:�:	�@:@:@::::::		::@:@:
��:�:	�@:@:@:: 2(
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
��:!


_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:		: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:& "
 
_output_shapes
:
��:!!

_output_shapes	
:�:%"!

_output_shapes
:	�@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:		: +

_output_shapes
::,,(
&
_output_shapes
:@: -

_output_shapes
:@:&."
 
_output_shapes
:
��:!/

_output_shapes	
:�:%0!

_output_shapes
:	�@: 1

_output_shapes
:@:$2 

_output_shapes

:@: 3

_output_shapes
::4

_output_shapes
: 
�
�
F__inference_conv2d_133_layer_call_and_return_conditional_losses_133630

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
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
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
b
F__inference_flatten_40_layer_call_and_return_conditional_losses_133697

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
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
conv2d_133_inputC
"serving_default_conv2d_133_input:0�����������<
dense_840
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ĝ
�
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
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias
 -_jit_compiled_convolution_op"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
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
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias"
_tf_keras_layer
�
0
1
+2
,3
:4
;5
I6
J7
^8
_9
f10
g11
n12
o13"
trackable_list_wrapper
�
0
1
+2
,3
:4
;5
I6
J7
^8
_9
f10
g11
n12
o13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
utrace_0
vtrace_1
wtrace_2
xtrace_32�
2__inference_my_modelV2_830_x2_layer_call_fn_133782
2__inference_my_modelV2_830_x2_layer_call_fn_134163
2__inference_my_modelV2_830_x2_layer_call_fn_134196
2__inference_my_modelV2_830_x2_layer_call_fn_134001�
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
 zutrace_0zvtrace_1zwtrace_2zxtrace_3
�
ytrace_0
ztrace_1
{trace_2
|trace_32�
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134255
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134314
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134045
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134089�
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
 zytrace_0zztrace_1z{trace_2z|trace_3
�B�
!__inference__wrapped_model_133564conv2d_133_input"�
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
�
}iter

~beta_1

beta_2

�decay
�learning_ratem�m�+m�,m�:m�;m�Im�Jm�^m�_m�fm�gm�nm�om�v�v�+v�,v�:v�;v�Iv�Jv�^v�_v�fv�gv�nv�ov�"
	optimizer
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_133_layer_call_fn_134323�
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
F__inference_conv2d_133_layer_call_and_return_conditional_losses_134334�
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
+:)2conv2d_133/kernel
:2conv2d_133/bias
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
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_55_layer_call_fn_134339�
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
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_134344�
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
+0
,1"
trackable_list_wrapper
.
+0
,1"
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
�
�trace_02�
+__inference_conv2d_134_layer_call_fn_134353�
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
F__inference_conv2d_134_layer_call_and_return_conditional_losses_134364�
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
+:)2conv2d_134/kernel
:2conv2d_134/bias
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
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_56_layer_call_fn_134369�
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
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_134374�
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
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_135_layer_call_fn_134383�
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_134394�
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
+:)		2conv2d_135/kernel
:2conv2d_135/bias
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
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_78_layer_call_fn_134399�
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
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_134404�
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
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_136_layer_call_fn_134413�
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_134424�
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
+:)@2conv2d_136/kernel
:@2conv2d_136/bias
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
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_average_pooling2d_79_layer_call_fn_134429�
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
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_134434�
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
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_40_layer_call_fn_134439�
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_134445�
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
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_82_layer_call_fn_134454�
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
D__inference_dense_82_layer_call_and_return_conditional_losses_134465�
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
#:!
��2dense_82/kernel
:�2dense_82/bias
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_83_layer_call_fn_134474�
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
D__inference_dense_83_layer_call_and_return_conditional_losses_134485�
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
": 	�@2dense_83/kernel
:@2dense_83/bias
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_84_layer_call_fn_134494�
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
D__inference_dense_84_layer_call_and_return_conditional_losses_134505�
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
!:@2dense_84/kernel
:2dense_84/bias
 "
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_my_modelV2_830_x2_layer_call_fn_133782conv2d_133_input"�
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
2__inference_my_modelV2_830_x2_layer_call_fn_134163inputs"�
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
2__inference_my_modelV2_830_x2_layer_call_fn_134196inputs"�
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
2__inference_my_modelV2_830_x2_layer_call_fn_134001conv2d_133_input"�
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
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134255inputs"�
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
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134314inputs"�
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
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134045conv2d_133_input"�
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
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134089conv2d_133_input"�
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
$__inference_signature_wrapper_134130conv2d_133_input"�
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
+__inference_conv2d_133_layer_call_fn_134323inputs"�
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
F__inference_conv2d_133_layer_call_and_return_conditional_losses_134334inputs"�
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
1__inference_max_pooling2d_55_layer_call_fn_134339inputs"�
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
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_134344inputs"�
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
+__inference_conv2d_134_layer_call_fn_134353inputs"�
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
F__inference_conv2d_134_layer_call_and_return_conditional_losses_134364inputs"�
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
1__inference_max_pooling2d_56_layer_call_fn_134369inputs"�
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
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_134374inputs"�
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
+__inference_conv2d_135_layer_call_fn_134383inputs"�
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
F__inference_conv2d_135_layer_call_and_return_conditional_losses_134394inputs"�
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
5__inference_average_pooling2d_78_layer_call_fn_134399inputs"�
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
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_134404inputs"�
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
+__inference_conv2d_136_layer_call_fn_134413inputs"�
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
F__inference_conv2d_136_layer_call_and_return_conditional_losses_134424inputs"�
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
5__inference_average_pooling2d_79_layer_call_fn_134429inputs"�
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
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_134434inputs"�
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
+__inference_flatten_40_layer_call_fn_134439inputs"�
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
F__inference_flatten_40_layer_call_and_return_conditional_losses_134445inputs"�
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
)__inference_dense_82_layer_call_fn_134454inputs"�
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
D__inference_dense_82_layer_call_and_return_conditional_losses_134465inputs"�
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
)__inference_dense_83_layer_call_fn_134474inputs"�
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
D__inference_dense_83_layer_call_and_return_conditional_losses_134485inputs"�
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
)__inference_dense_84_layer_call_fn_134494inputs"�
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
D__inference_dense_84_layer_call_and_return_conditional_losses_134505inputs"�
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
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.2Adam/conv2d_133/kernel/m
": 2Adam/conv2d_133/bias/m
0:.2Adam/conv2d_134/kernel/m
": 2Adam/conv2d_134/bias/m
0:.		2Adam/conv2d_135/kernel/m
": 2Adam/conv2d_135/bias/m
0:.@2Adam/conv2d_136/kernel/m
": @2Adam/conv2d_136/bias/m
(:&
��2Adam/dense_82/kernel/m
!:�2Adam/dense_82/bias/m
':%	�@2Adam/dense_83/kernel/m
 :@2Adam/dense_83/bias/m
&:$@2Adam/dense_84/kernel/m
 :2Adam/dense_84/bias/m
0:.2Adam/conv2d_133/kernel/v
": 2Adam/conv2d_133/bias/v
0:.2Adam/conv2d_134/kernel/v
": 2Adam/conv2d_134/bias/v
0:.		2Adam/conv2d_135/kernel/v
": 2Adam/conv2d_135/bias/v
0:.@2Adam/conv2d_136/kernel/v
": @2Adam/conv2d_136/bias/v
(:&
��2Adam/dense_82/kernel/v
!:�2Adam/dense_82/bias/v
':%	�@2Adam/dense_83/kernel/v
 :@2Adam/dense_83/bias/v
&:$@2Adam/dense_84/kernel/v
 :2Adam/dense_84/bias/v�
!__inference__wrapped_model_133564�+,:;IJ^_fgnoC�@
9�6
4�1
conv2d_133_input�����������
� "3�0
.
dense_84"�
dense_84����������
P__inference_average_pooling2d_78_layer_call_and_return_conditional_losses_134404�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
5__inference_average_pooling2d_78_layer_call_fn_134399�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
P__inference_average_pooling2d_79_layer_call_and_return_conditional_losses_134434�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
5__inference_average_pooling2d_79_layer_call_fn_134429�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
F__inference_conv2d_133_layer_call_and_return_conditional_losses_134334p9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
+__inference_conv2d_133_layer_call_fn_134323c9�6
/�,
*�'
inputs�����������
� ""�������������
F__inference_conv2d_134_layer_call_and_return_conditional_losses_134364l+,7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������||
� �
+__inference_conv2d_134_layer_call_fn_134353_+,7�4
-�*
(�%
inputs���������
� " ����������||�
F__inference_conv2d_135_layer_call_and_return_conditional_losses_134394l:;7�4
-�*
(�%
inputs���������>>
� "-�*
#� 
0���������66
� �
+__inference_conv2d_135_layer_call_fn_134383_:;7�4
-�*
(�%
inputs���������>>
� " ����������66�
F__inference_conv2d_136_layer_call_and_return_conditional_losses_134424lIJ7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������@
� �
+__inference_conv2d_136_layer_call_fn_134413_IJ7�4
-�*
(�%
inputs���������
� " ����������@�
D__inference_dense_82_layer_call_and_return_conditional_losses_134465^^_0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_82_layer_call_fn_134454Q^_0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_83_layer_call_and_return_conditional_losses_134485]fg0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� }
)__inference_dense_83_layer_call_fn_134474Pfg0�-
&�#
!�
inputs����������
� "����������@�
D__inference_dense_84_layer_call_and_return_conditional_losses_134505\no/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� |
)__inference_dense_84_layer_call_fn_134494Ono/�,
%�"
 �
inputs���������@
� "�����������
F__inference_flatten_40_layer_call_and_return_conditional_losses_134445a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� �
+__inference_flatten_40_layer_call_fn_134439T7�4
-�*
(�%
inputs���������@
� "������������
L__inference_max_pooling2d_55_layer_call_and_return_conditional_losses_134344�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_55_layer_call_fn_134339�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_134374�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_56_layer_call_fn_134369�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134045�+,:;IJ^_fgnoK�H
A�>
4�1
conv2d_133_input�����������
p 

 
� "%�"
�
0���������
� �
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134089�+,:;IJ^_fgnoK�H
A�>
4�1
conv2d_133_input�����������
p

 
� "%�"
�
0���������
� �
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134255z+,:;IJ^_fgnoA�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
M__inference_my_modelV2_830_x2_layer_call_and_return_conditional_losses_134314z+,:;IJ^_fgnoA�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
2__inference_my_modelV2_830_x2_layer_call_fn_133782w+,:;IJ^_fgnoK�H
A�>
4�1
conv2d_133_input�����������
p 

 
� "�����������
2__inference_my_modelV2_830_x2_layer_call_fn_134001w+,:;IJ^_fgnoK�H
A�>
4�1
conv2d_133_input�����������
p

 
� "�����������
2__inference_my_modelV2_830_x2_layer_call_fn_134163m+,:;IJ^_fgnoA�>
7�4
*�'
inputs�����������
p 

 
� "�����������
2__inference_my_modelV2_830_x2_layer_call_fn_134196m+,:;IJ^_fgnoA�>
7�4
*�'
inputs�����������
p

 
� "�����������
$__inference_signature_wrapper_134130�+,:;IJ^_fgnoW�T
� 
M�J
H
conv2d_133_input4�1
conv2d_133_input�����������"3�0
.
dense_84"�
dense_84���������