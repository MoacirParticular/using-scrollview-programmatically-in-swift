# Como criar um Scrollview na Programaticamente(Programmatically) em Swift

A que estresse mais um tutorial de como criar um ScrollView.......
![](https://github.com/MoacirParticular/MoacirParticular/blob/main/Imagens/bb8flame.png)

Eu sempre digo que não sei demais a ponto de não ter que aprender sempre, talvez e digo somente talvez você encontre alguma dica aqui que possa te ajudar com alguma coisa.

![](https://github.com/MoacirParticular/MoacirParticular/blob/main/Imagens/darth_maul.gif)

_O medo é o caminho para o lado negro. O medo leva a raiva, a raiva leva ao ódio, o ódio leva ao sofrimento._

Eu não curto tutoriais pela metade, que acham que o cara que esta buscando conhecimento esta na mesma pagina de pensamento que o cara que escreveu o troço.

Então vou dar umas dicas aqui mas voce vai encontrar um projeto funcional pelo menos na versao do xCode 12.5 e iOS 14.5

Você tem muitas maneiras de fazer isto, vou mostrar a que eu utilizo e curto fazer. 

>
>_é eu curto ViewCode, me condene._
>

## O ScrollView


```
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
```

Eu gosto de criar uma view para adicionar dentro do ScroolView.

## a View

```
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
```


## na ViewModel

Este é
 um exemplo simples, dentro de viewmodel que vem criada por padrao com um projeto vazio voce pode criar assim por exemplo :
 
 ```
    override func viewDidLoad() {
        super.viewDidLoad()        
              
        setupScrollView()
        setupViews()
    }

    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupViews(){
    }
    
```


## Aqui voce tem exemplo de alguns Labels, view 
para fazer com que tenha scroll quando for rodar o app, voce pode criar o que precisar.

```

let oneLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let twoLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a4Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a5Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let a6Label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit"
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        view.backgroundColor = .red
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.backgroundColor = .blue
        return view
    }()
    
```


## uma maneira de Fazer:

```


func setupViews(){
        contentView.addSubview(oneLabel)
        oneLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        oneLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        oneLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(twoLabel)
        twoLabel.topAnchor.constraint(equalTo: oneLabel.bottomAnchor, constant: 24).isActive = true
        twoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        twoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(threeLabel)
        threeLabel.topAnchor.constraint(equalTo: twoLabel.bottomAnchor, constant: 24).isActive = true
        threeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        threeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a4Label)
        a4Label.topAnchor.constraint(equalTo: threeLabel.bottomAnchor, constant: 24).isActive = true
        a4Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a4Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a5Label)
        a5Label.topAnchor.constraint(equalTo: a4Label.bottomAnchor, constant: 24).isActive = true
        a5Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a5Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(a6Label)
        a6Label.topAnchor.constraint(equalTo: a5Label.bottomAnchor, constant: 24).isActive = true
        a6Label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        a6Label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(redView)
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: a6Label.bottomAnchor, constant: 24).isActive = true
        redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        redView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
        contentView.addSubview(blueView)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 24).isActive = true
        blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        blueView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true        
    }
    
```


## O que é importante aqui:

>
>blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true  
>

Em momento algum eu fixei o tamanho da minha view _contentView_, fui adicionando dentro que era preciso mas eu preciso em algum momento informar a ultima posição dentro dela.

Como não fixei o tamanho dos meu componentes com .heightAnchor os meus componentes podem ter o tamanho que eles precisarem e isso vai dar certo. Pode testar.

Clona o repositorio ai e testa se nao entender, tem muitos mas muitos outros na web. 



![](https://github.com/MoacirParticular/MoacirParticular/blob/main/Imagens/yoda.gif)
>_Que a Força esteja com você._

