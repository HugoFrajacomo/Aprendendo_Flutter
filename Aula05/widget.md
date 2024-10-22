## widgets

    Os widgets do flutter são construidos usando uma estrutura moderna que se inspira no React. A ideia central é que você construa sua IU a partir de widegets. Eles descrevem como sua visualização deve ser dada sua configuração e estado atual. 

    Quando o estado de um widget muda, o widget reconstroi sua descrição, que a estrutura diferencia da descrição anteiror para determinar as mudanças mínimas necessárias na arvore de renderização subjacente para fazer a transição de um estado para o próximo. 

    A função runApp() pega o widget dado e o torna a raiz da de widgets. Neste exemplo a arvore de widgets consiste em dois widgets, o widget Center e seu filho, o widget Text. O framework força o widget raiz a cobrir a tela, o que significa que o texto "Olá Mundo" acaba centralizando na tela. A direnção do texto precisa ser especificada na instância; quando o widget MateterialApp é usado, isso é cuidado para você.

    Ao escrever umm aplicativo, você normalmente criará novos widgets que são subclasses de StateLessWidgets e StatefullWidgets, dependendo se seu widget gernecia algum estado. 

    O trabalho principal de um widget é implementar uma função build(), que descreve o widget em termos de outros widgets de nível inferior. o framework constroi essas widgets que representam o subjacente Render@Object, que calcula e descreve a geometria do widget. 

    Os widgets básicos ou de base do flutter são blocos de construção fundamentais para criar interfaces do usuário. Eles são autamente personalizáveis por outros widgets oferencem suporte a uma variedade de opções comuns de renderização, como entrada, layout e texto. Aqui estão alguns dos principais: 

    - Container             -Icon                   -Padding
    - Row                   -Scaffold               -Sizedbox
    - Column                -AppBar                 -Stack
    - Text                  -Listview               -Center
    - Image                 -Elevated button        -Expanded

    No flutter, os widgets podem ser classificados em várias categorias, sendo as mais comuns widgets de layout e widgets de interface. Esses widgets ajudam a criar interfaces interativas e Layouts complexos. 

    O flutter oferece uma vasta biblioteca de widgets que podem ser combinados e customizados para criar aplicativos poderosos e responsivos. 

    Widgets de layout são responsáveis por organizar outros widgewts na tela, ajudando a criar a estrutura e o posicionamento da interface. 

    -Container              -Listview               -Flexible
    -Row                    -Column                 -Expanded
    -GridView               -Padding                -Space
    -Stack                  -Align                  -Wrap
    -SizedBox

    widgets de interface são focados na interação do usuário com a interface, como botões, campos de texto e outros controles visuais.

    -Text                   -Switch                 -Slider
    -TextField              -DropdownButton         -Radio
    -Elevated Button        -Test Button            -IconButton
    -FloatingActionButton   -ChackBox               -Form
    -Appbar                 -BottomNavigationBar    -Alert Diolog
    -ProgressIndicator

    Catalogo de widget: https://flutter.io/widgets

    <h3>Widgets Mais usados</h3>

    Text - Usado para exibir texto na tela com um único estilo. Pode ser exibido em uma única linha ou em várias, dependendo da restrição do layout.


    Colums é essencial para compor o Layout em aplicatiovos Flutter. Ele exibe seus filhos em uma matriz vertical.

    Row - Similar ao column, mas na versão horizontal de column, ele desenha os filhos em um array horizontal

    Stack - Permite que vocÊ coloque widgets sobre os outros em ordem de pintura. você pode usar Posicioned nos filhos stack para posiciona-los em Relação a borda superior, direta, inferior ou esquerda da pilha. As pilhas são baseadas no modelo de Layout de posicionamento absoluto da web. 



    