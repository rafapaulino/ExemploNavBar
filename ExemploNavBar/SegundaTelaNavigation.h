//
//  SegundaTelaNavigation.h
//  ExemploNavBar
//
//  Created by Rafael Brigagão Paulino on 30/08/12.
//  Copyright (c) 2012 teste. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegundaTelaNavigation : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *meuCampoTexto;
@property (weak, nonatomic) IBOutlet UITextField *meuCampoTexto2;

-(IBAction)botaoClicado:(id)sender;

@end
