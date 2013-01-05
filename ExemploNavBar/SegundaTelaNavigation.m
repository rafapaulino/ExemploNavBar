//
//  SegundaTelaNavigation.m
//  ExemploNavBar
//
//  Created by Rafael Brigagão Paulino on 30/08/12.
//  Copyright (c) 2012 teste. All rights reserved.
//

#import "SegundaTelaNavigation.h"
#import "TerceiraTelaNavigation.h"

@interface SegundaTelaNavigation ()

@end

@implementation SegundaTelaNavigation

-(IBAction)botaoClicado:(id)sender
{
    [_meuCampoTexto resignFirstResponder];
    [_meuCampoTexto2 resignFirstResponder];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TerceiraTelaNavigation *terceiraTela = segue.destinationViewController;
    //passando o texto do campo de texto para String definidana tela de destino
    //terceiraTela.textoRecebido = _meuCampoTexto.text;
    
    //criando um dicionario para guardar os dois textos do campo de texto
    NSMutableDictionary *textosEnviar = [[NSMutableDictionary alloc] init];
    //add os textos no dicionairo
    [textosEnviar setObject:_meuCampoTexto.text forKey:@"texto1"];
    [textosEnviar setObject:_meuCampoTexto2.text forKey:@"texto2"];
    
    //passando os parametros para a outra tela
    terceiraTela.textosRecebidos = textosEnviar;
    
    _meuCampoTexto.text = @"";
    [_meuCampoTexto resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
