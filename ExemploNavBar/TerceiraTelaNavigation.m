//
//  TerceiraTelaNavigation.m
//  ExemploNavBar
//
//  Created by Rafael Brigagão Paulino on 30/08/12.
//  Copyright (c) 2012 teste. All rights reserved.
//

#import "TerceiraTelaNavigation.h"

@interface TerceiraTelaNavigation ()

@end

@implementation TerceiraTelaNavigation
@synthesize labelBonito;

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
    //labelBonito.text = _textoRecebido;
    //acessar o dicionario e setar as labels de acordo
    labelBonito.text = [_textosRecebidos objectForKey:@"texto1"];
    _labelBonito2.text = [_textosRecebidos objectForKey:@"texto2"];
    
}

- (void)viewDidUnload
{
    [self setLabelBonito:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
