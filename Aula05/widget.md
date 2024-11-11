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

## Widgets Mais usados

### Text

    Text - Usado para exibir texto na tela com um único estilo. Pode ser exibido em uma única linha ou em várias, dependendo da restrição do layout.

    Center(
	Child:Container(
		height: 200.0,
		width: 200.0,
		child:text("This is a text"),
		),
	)

### Colums

    Colums é essencial para compor o Layout em aplicatiovos Flutter. Ele exibe seus filhos em uma matriz vertical.

    Center(
	Child:column(
		children:<widget>{
		container(
			height: 20.0,
			width: 20.0, 
			color:Colors.red,
		),
	},
    )

### Row

    Row - Similar ao column, mas na versão horizontal de column, ele desenha os filhos em um array horizontal

    Center(
	Child:Row(
		Children:<widget>{
		Container(
			height: 20.0,
			width: 20.0,
			color: Colors.red,
		),
	},
    )

### Stack

    Stack - Permite que vocÊ coloque widgets sobre os outros em ordem de pintura. você pode usar Posicioned nos filhos stack para posiciona-los em Relação a borda superior, direta, inferior ou esquerda da pilha. As pilhas são baseadas no modelo de Layout de posicionamento absoluto da web. 

    Stack(
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 90,
      height: 90,
      color: Colors.green,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.blue,
    ),
    ],
)

### Image

    Image: Exibir imagens em seu aplicativo é um recurso que seu aplicativo deve ter. Quase não há aplicativo shoje que não tenha a funcionalidade de exibir uma imagem. E, para fazer isso, o widget Image entra em cena.

    Center(
	child:Container(
		height: 200.0,
		width: 200.0,
		child:
		Image.network(https://flutter.io/image/flutter-square-100.png,
	),
)

### Icon

    Icon: É usado para desenhar um ícone usando a fonte descrita em IconData, como o IconData preferido de um material na classe Icon.

    Center(
	child:Container(
		height: 200.0,
		width: 200.0,
		child: icon(Icons.flag),
	),
)

### RaisedButton

    RaisedButton: É usado para exibir um botão elevado simples. O botão é elevado porque é baseado em um widget de material cuja elevação aumenta quando o botão é pressionado. Se o retorno da chamada onPressed() for nulo, o botão será desabilitado e se parecerá com um botão plano em disabledColor.

    Center(
	child:Container(
		height: 200.0,
		width: 200.0,
		child:RaisedButton(
			onPressed: ()=> print("on pressed"),
			child: Text("Button"),
			color: Colors.blue,
		),
	),
)		

### Scaffold

    Scaffold: é uma estrutura de layout básica baseada em Material Design. Na prática, se você usar Material Design, cada tela do seu aplicativo terá um Scaffold como base. O widget é usado para mostrar gavetas, SnackBars, BottomSheets, FloatingActionButton e asssim por diante, oferecendo APIs. Para exibir um SnackBar ou um BottomSheet, você deve usar Scaffold state para o contexto atual. Podemos usa-lo via Scaffold.of e usar a função ScaffoldState.showSnackBar.

    Center(
	child:Container(
		height: 200.0,
		width: 200.0,
		child: RaisedButton(
			onPressed:() {
				Scaffold.of(context).ShowSnackBar(SnackBar(content:Text("Hello"),))}
		)
	)
)			

### AppBar

    AppBar: É usado como uma propriedade do Scaffold, e a maioria dos Scaffolds tem barras de aplicativos. A barra de aplicativos consiste em uma barra de ferramentas e potencialmente outros widgets. Por exemplo, ele pode hospedar TabBar, FlexibleSpaceBar ou alguma outra ação opcionalmente seguida por PopUpMenuButton pra operações menos comuns.

    A propriedade usada pra AppBar é Scaffold.appBar, que parece com o seguinte:
    ADICIONAR IMAGEM

    Esse diagrama exibe onde cada widget será colocado pelo componente appBar. Se o widget líder for omitido e Scaffold tiver uma gaveta, então appBar colocará um botão para abrir a gaveta. Se o navegador mais próximo tiver alguma rota anterior, um BackButton será inserido.

### PlaceHolder

    Placeholder: É usado pra segurar um lugar pra um widget. Ele desenha uma caixa que representa onde outros widgets serão adicionados mais tarde.

    Center(
	child:Container(
	height: 200.0,
	width: 200.0,
	child: Placeholder(),
	),
)

### LastView

    ListView: Se comporta de forma semelhante a uma coluna ou linha, a única diferença é que seus filhos poedm ser rolados.

    Existem 3 construtores pra ListView:
    - O padrão pega uma lista de widgets em sua propriedade Children. Esta é uma boa escolha pra listas pequenas porque pra cria-las a lista processará cada filho
    - ListView.Builder pega um construtor indexado pra construir os filhos sob demanda. Esta é a escolha a ser feita se você tiver um grande número de filhos porque toda vez a lista processará apenas os filhos visíveis
    - ListView.Custom pega SilverChildDelegate que fornece a capacidade de personalizar aspectos do ListView

## Widgets de Componentes de Material

 - Actions - ações
 - Communication - comunicação
 - Containment - contenção/conteinerização/encapsular
 - Navigation - navegação
 - Selection - seleção
 - Text inputs - entrada de textos

## Actions Widgets

 - CommonButton
 - FloatingActionButton
 - ExtendedFloatingActionButton
 - IconButton
 - SegmentedButton

### CommonButton

CommonButton: Blocos clicáveis que iniciam uma ação, como enviar email, curtir um comentário ou compartilhar um documento.

O Material Design 3 especifica cinco tipos usando as seguintes classes:

<table>
  <tr>
    <th>Type</th>
    <th>Flutter Implementation</th>
    <th>Descrição</th>
  </tr>
  <tr>
    <td>Elevated</td>
    <td>ElevatedButton</td>
    <td>Botão elevado com sombra</td>
  </tr>
  <tr>
    <td>Filled</td>
    <td>FilledButton</td>
    <td>Botão preenchido com cor sólida</td>
  </tr>
  <tr>
    <td>Filled tonal</td>
    <td>FilledButton.tonal</td>
    <td>Botão preenchido com tom mais suave</td>
  </tr>
  <tr>
    <td>Outlined</td>
    <td>Outlined.Button</td>
    <td>Botão com contorno</td>
  </tr>
  <tr>
    <td>Text</td>
    <td>TextButton</td>
    <td>Botão de texto simples sem fundo</td>
  </tr>
</table>

## FloatingActionButton

FloatingActionButton: Blocos clicáveis contendo um ícone que mantém uma ação chave sempre ao alcance.

## ExtendedFloatingButton

ExtendedFloatingButton: Blocos clicáveis que disparam uma ação

## Icon Button

Icon Button: Blocos clicáveis para solicitar que os usuários do aplicativo tomem ações complementares

## SegmentedButton

SegmentedButton: Blocos clicáveis selecionados individualmente ou em vários pra ajudar as pessoas a selecionar opções, alternar visualizações ou classificar elementos

# Communication Widgets

 Possui três opções de widgets pra auxiliar o desenvolvedor:

  - Badge:
  Bloco tipo ícones que transmite conteúdo dinâmico, como contagens ou status, podendo incluir rótulo ou números

  - LinearProgressIndicator
  Linha vertical que muda de cor conforme um processo em andamento, como carregar um aplicativo ou enviar um formulário, é concluído

  - SnackBar:
  Mensagens breves sobre os processos do aplicativo que são exibidas na parte inferior da tela

# Containment Widget

Possui cinco opções de widgets pra auxiliar o desenvolvedor:

 - AlertDialog:
 Container flutuante que solicita que os usuários do aplicativo forneçam mais dados ou tomem uma decisão

 - BottomSheet
 Container que ancora conteúdos suplementares na parte inferior da tela

 - Card
 Recipiente pra conteúdos curtos e relacionados, exibidos em uma caixa com cantos arredondados e sombras projetadas

 - Divider
 Linha fina que agrupa conteúdo em listas ou containers

 - ListTitle
 Uma única linha de altura fixa que normalmente contém algum texto, bem como um ícone inicial ou final

# Navigation Widget

 - AppBar: Container que desliza da borda inicial do aplicativo para navegar pra outras seções do aplicativo

 - BottomAppBar: Container que exibe a navegação e as principais ações  na parte inferior da tela

 - NavigationBar: Container persistente que permite alternar entre os principais destinos em um aplicativo

 - Navigation Drawer: Container que desliza da borda inicial do aplicativo para navegar pra outras seções do aplicativo

 - Navigation Rail:  Container persistente na borda inicial das telas de tablets e desktops para navegar até partes de um aplicativo

 - TabBar: Container  em camadas que organiza o conteúdo em diferentes telas, conjuntos de dados e outras iterações

# Selection Widget

- CheckBox: Controle de formulários que o usuário do aplicativo pode definir ou limpar para selecionar uma ou mais opções de um conjunto.

- Chip: Blocos que simplificam a inserção de informações, a reailização de seleções, a filtragem de conteúdo ou o acionamento de ações

- DataPicker: Interface de calendário usada pra selecionar uma data ou um intervalo de datas

- Menu: Container que exibe uma lista de opções em uma superfície temporária 

- Radio: Container de formulário que os usuários do aplicativo podem definir ou limpar pra selecionar apenas uma opção de um conjunto

- Slider: Controle de formulário que permite selecionar um intervalo de valores

- Switch: Controle de alternância que altera o estado de um único item pra liga-lo ou desliga-lo

- TimePicker: Interface de relógio usada pra selecionar e definir um horário específico

- TextInput: Caixa na qual o usuário pode inserir textos


# Variável Late

Há momentos em que você sabe que uma variável terá um valor definido antes que esse valor definido antes que esse valor seja acessado, mas o valor da variável não pode ser inicializado imediatamente na declaração da variável. Um exemplo disso no Flutter é quando uma variável é declarada sem valor, mas imediatamente na inicialização do widget ela recebe um valor. Se fossemos forçados a fazer verificações toda vez que acessássemos a variável, nosso código seria mais difícil de ler e manter. 

Para resolver esse problema, o Dart tem o modificador do tipo **Late**. Isso diz ao Dart que você está completamente confiante de que no ponto em que o valor da variável é acessado, a variável já terá sido definida pra um valor.

Código:

Late int novoNumero; // novoNumero permite ser NULL
// fazer alguma inicialização 
novoNumero = 42; // atualiza valor de novoNumero
print(novoNumero): // imprime novoNumero

Há dois tipos de widgets fornecidos pelo Flutter:

1) O widget sem estado (StatelessWidget)
2) O widget com estado (StatefulWidget)

Como o nome sugere, os StatefulWidgets são compostos de algum “estado”. A classe state tem um ciclo de vida. Diferentemente de StatelessWidget, que não tem nada mais do que um método de construção, StatefulWidget tem métodos de ciclo de vida que são chamados em uma ordem específica.

O **initState( )** é um método que é chamado quando um objeto para seu widget com estado é criado e inserido dentro da árvore de widgets. É basicamente o ponto de entrada para os StatefulWidgets. Este método é usado para inicializar qualquer valor não final na sua classe como executar um trabalho semelhante a um construtor.

A classe é que controla o estado de StatefulWidget, e é por isso que é colocado o **initState( )** dentro da classe _selectableButtonState, e não em SelectableButton.

Você precisa chamar super.initState( ) no método initState( ) da sua classe de estado (state) para garantir que qualquer configuração inicial seja executada corretamente. Isso não ocorre automaticamente; você deve fazer a chamada explicitamente.

Código:

class _selectableButtonState extends State<SelectableButton> {
	Late final MaterialStateController statesController;
		@override
		void initState(){
			super.initState();
			statesController = MaterialStatesController(
			<MaterialState>
			{if (widget.select) MaterialState.Selected}
		}
	}

    O método createState( ) é um método fundamental na classe StatefulWidgets do Flutter. Ele é responsável por criar a instância da classe de estado que gerenciará a lógica e o ciclo de vida do widget.

Método **didUpdateWidget** da classe State, chamando sempre que a construção do widget é alterada. Se o widget pai foi reconstruído e solicitar que esse local na árvore seja atualizado para exibir um novo widget e, em seguida, chamará esse método com o widget anterior como argumento.

Esse método é crucial para manter o estado do widget sincronizado com as mudanças de propriedades.

O método **Build** da classe **State** é responsável por construir a interface do usuário (UI) com base no estado atual do widget.

O método build recebe um parâmetro context, que é uma instância de BuildContext. Esse contexto fornece informações sobre a localização do widget na árvore de widgets e permite acessar temas, media queries e outros dados relevantes pro o widget.

    