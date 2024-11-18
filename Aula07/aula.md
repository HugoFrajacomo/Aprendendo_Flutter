# Usando Platform channels

Flutter é um framework e para obter acesso às APIs nativas, você precisa obter acesso às funções nativas da plataforma. No caso do flutter, ele faz isso criando um canal de plataforma para a plataforma Nativa. Usando esses canais de plataforma, os desenvolvedores podem chamar as funções nativas, como informações de dispositivos, acesso a arquivos e pastas, acesso a sensor, câmeras e muito mais. 

Você tem que definir um canal de plataforma p/ cada plataforma. No caso do Android, eles são chammados MethodChannels e no IOS, eles são conhecidos como FlutterMethodChannels.

É importante saber o suporte para o tipo de dados da plataforma e os codecs. Os canias da plataforma padrão adotam um codec de mensagem padrão que suporta serialização binária eficiente. Eles são semelhantes a JSON. 

Quando você envia valores de e para eles, a serialização e desserialização acontecem automáticamente. 