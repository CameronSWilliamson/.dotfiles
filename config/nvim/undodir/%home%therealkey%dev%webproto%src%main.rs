Vim�UnDo� �6Ǜ��X;̍(L7�w�Xw�k��w�%���,oT      1    server.add_endpoint(Method::Get, "/", |req| {      +                       d7[�    _�                            ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �               @    let server = HttpServer::new("localhost".to_string(), 8080);5��                         6                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �      	             �             �             5��                          s                      �                         w                      �                        w                     �                        y               b       5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �         
      2    server.add_route("/".to_string(), |req, res| {5��       +                  �                      �       +                  �                      �       *                  �                      �       )                  �                      �       (                  �                      �       '                  �                      5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �         
      .    server.add_route("/".to_string(), | res| {5��       '                 �                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �         
      -    server.add_route("/".to_string(), |res| {5��       -                 �                      �                      
   �              
       �       	                  �                      �                     
   �              
       5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �               -    server.add_route("/".to_string(), |res| {5��       '                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                            d7Z�     �                       let res = �                use webproto::http::HttpServer;5��                         �                      �                         �                      �                         �                      �                        �                     �                         �                      �                         �                      �                         �                      �                         �                      �                        �                     �                        �                     �               
                 
              �                                              �                        �                     �                         �                      �                        �                     �                        �                     �                        �                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                               %                  v        d7Z�     �               '        let res = Response::new(status)�                +use webproto::http::{HttpServer, Response};5��                         �                     �       &                  �                      �       %                  �                      �       $                 �                     �       )                  �                      �       (                  �                      �       '                  �                      �       &                  �                      �       %                  �                      �       $                  �                      �       #                  �                      �       "                  �                      �       !                  �                      �                      
   �              
       �               
       
   �       
       
       �        )                  )                      �               
          �       
              �       ,                 �                     5�_�      
           	      /    ����                                                                                                                                                                                                                                                                                                                               %                  v        d7[     �      	         /        let res = Response::new(StatusCode::OK)5��       /                  �                      �       0                 �               	       �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                          �                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                               %                  v        d7[     �                 5��                          �                      5�_�   
                    ,    ����                                                                                                                                                                                                                                                                                                                               %                  v        d7[     �                -        res.send("Hello World!".to_string());5��                          �       .               5�_�                           ����                                                                                                                                                                                                                                                                                                                               %                  v        d7[     �      	                 �      	   
    5��                          �               	       �                         �                      �                         �                      �                        �                     �                         �                      �                         �                      �                        �                     �                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d7[     �      	                 res.add_body(body)�      	       5��                        �                     �                         �                      �                        �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       d7[)     �      
       5��                                               �                                             5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                v       d7[0    �      
                 5��                         $                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d7[=     �               -    server.add_route("/".to_string(), |req| {5��              	           �       	               �       
                 �                     �                         �                      �       
                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d7[Z    �               $    server.("/".to_string(), |req| {5��                         �                      �                         �                      �                         �                      �                        �                     �                        �                     �                        �                     5�_�                          ����                                                                                                                                                                                                                                                                                                                                            v       d7[�     �               0    server.add_endpoint("/".to_string(), |req| {�                7use webproto::http::{HttpServer, Response, StatusCode};5��                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                        �                     �                        �                     �        5                  5                      �                        �                     �       "                  �                      �       !                  �                      �                         �                     �       "                  �                      �       !                  �                      �                         �                     �                         �                     �                         �                     5�_�                       (    ����                                                                                                                                                                                                                                                                                                                             (          4       v   4    d7[�     �               =    server.add_endpoint(Method::Get, "/".to_string(), |req| {5��       (                  �                      5�_�                       (    ����                                                                                                                                                                                                                                                                                                                             (          4       v   4    d7[�    �               0    server.add_endpoint(Method::Get, "/" |req| {5��       (                  �                      �       (                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                             (          4       v   4    d7[�    �               0        let res = Response::new(StatusCode::OK);5��                         �                      5�_�                        +    ����                                                                                                                                                                                                                                                                                                                             (          4       v   4    d7[�    �               1    server.add_endpoint(Method::Get, "/", |req| {5��       +                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                              v       d7[]     �               Y    server.add_endpoint("/".to_string(), |req| { let res = Response::new(StatusCode::OK);5��       0                �       	              5��