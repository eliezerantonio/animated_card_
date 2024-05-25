# 3D Transformation

## English

The Transform class is used to apply a 3D transformation to the child widget.
The transformation is defined by a 4x4 matrix (Matrix4), which allows for rotations and translations in a 3D space.
setEntry(2, 3, 0.005) is used to apply perspective to the transformation, creating an illusion of depth.
Gesture-Based Rotation:

onPanUpdate is a callback that is triggered when the user drags their finger on the screen.
details.delta provides the amount of displacement during the drag gesture.
offset += details.delta updates the total offset based on the finger's movement.
The rotateX and rotateY rotations are then adjusted based on the updated value of offset.
Transformation Reset:

A FloatingActionButton is provided to reset the transformation and bring the widget back to its original position. When the button is pressed, the offset is reset to Offset.zero.
Visual Style:

The transformed widget is a Container with a BoxDecoration that includes rounded corners, a shadow, and a color gradient.

Essa animação é uma animação de transformação 3D interativa, onde o usuário pode manipular a rotação de um widget em torno dos eixos X e Y ao arrastar o dedo na tela. Aqui está uma descrição detalhada dos componentes da animação:

## Portuguese

### Transformação 3D

A classe Transform é usada para aplicar uma transformação 3D ao widget filho.
A transformação é definida por uma matriz 4x4 (Matrix4), que permite aplicar rotações e translações em um espaço 3D.
setEntry(2, 3, 0.005) é usado para aplicar uma perspectiva à transformação, o que dá a ilusão de profundidade.
Rotação baseada em Gestos:

onPanUpdate é um callback que é acionado quando o usuário arrasta o dedo na tela.
details.delta fornece a quantidade de deslocamento durante o gesto de arrasto.
offset += details.delta atualiza o deslocamento total baseado no movimento do dedo.
As rotações rotateX e rotateY são então ajustadas com base no valor atualizado de offset.
Reset de Transformação:

Um FloatingActionButton é fornecido para redefinir a transformação e trazer o widget de volta à posição original. Quando o botão é pressionado, o offset é redefinido para Offset.zero.
Estilo Visual:

O widget transformado é um Container com um BoxDecoration que inclui bordas arredondadas, uma sombra e um gradiente de cores.

# flutter #android #ios #animation #card #gde #googldeveloper
