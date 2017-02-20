//
//  Empleado.swift
//  Aumento
//
//  Created by Leonardo Guzman on 2/13/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Foundation
class Empleado : NSObject{
    
    var nombre: String? = "Nuevo Empleado"
    var aumento: Float = 0.05
    
    
    override func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws {
        let valor = ioValue.pointee
        var validacionException : NSError?
        
        switch inKey {
            
        case "aumento":
                validacionException = validarAumento(valor);
            
        case "nombre":
                validacionException = validarNombre(valor);
            
        default : break
            
        }
        
        if let validacion = validacionException{
            throw validacion;
        }
    }
    
    
    func validarNombre(_ nombre : AnyObject?) -> NSError?{
        var retorno : NSError?
        if(nombre == nil) {
            
            let domain = "UserInputValidationErrorDomain"
            let code = 0
            let userInfo = [NSLocalizedDescriptionKey : "El nombre del empleado no puede ser vacio"]
            retorno = NSError(domain: domain, code: code, userInfo: userInfo)
        }
        
        return retorno
    }
    
    
    func validarAumento(_ aumento : AnyObject?) -> NSError?{
        var retorno : NSError?
        if(aumento == nil) {
            
            let domain = "UserInputValidationErrorDomain"
            let code = 0
            let userInfo = [NSLocalizedDescriptionKey : "El aumento del empleado debe ser un numero"]
            retorno = NSError(domain: domain, code: code, userInfo: userInfo)
        }
        
        return retorno
    }
}
