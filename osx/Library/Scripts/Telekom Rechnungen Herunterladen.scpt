FasdUAS 1.101.10   ��   ��    k             p         �� �� 
0 server    �� 	�� 0 account_name   	 ������ 0 account_password  ��     
  
 p         ������ 0 destination_folder  ��        l     ��������  ��  ��        l     ����  r         m        �   < a c c o u n t s . l o g i n . i d m . t e l e k o m . c o m  o      ���� 
0 server  ��  ��        l    ����  r        m       �   2 D o c u m e n t s : P r i v a t : T e l e k o m :  o      ���� 0 telekom_path  ��  ��        l    ����  r       !   c     " # " b     $ % $ l    &���� & I   �� ' (
�� .earsffdralis        afdr ' m    	��
�� afdrcusr ( �� )��
�� 
rtyp ) m   
 ��
�� 
ctxt��  ��  ��   % o    ���� 0 telekom_path   # m    ��
�� 
alis ! o      ���� 0 destination_folder  ��  ��     * + * l     ��������  ��  ��   +  , - , i     . / . I      �� 0���� 	0 split   0  1 2 1 o      ���� 0 	thestring 	theString 2  3�� 3 o      ���� 0 thedelimiter theDelimiter��  ��   / k      4 4  5 6 5 l     �� 7 8��   7 . ( save delimiters to restore old settings    8 � 9 9 P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s 6  : ; : r      < = < n     > ? > 1    ��
�� 
txdl ? 1     ��
�� 
ascr = o      ���� 0 olddelimiters oldDelimiters ;  @ A @ l   �� B C��   B - ' set delimiters to delimiter to be used    C � D D N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d A  E F E r     G H G o    ���� 0 thedelimiter theDelimiter H n      I J I 1    
��
�� 
txdl J 1    ��
�� 
ascr F  K L K l   �� M N��   M   create the array    N � O O "   c r e a t e   t h e   a r r a y L  P Q P r     R S R n     T U T 2    ��
�� 
citm U o    ���� 0 	thestring 	theString S o      ���� 0 thearray theArray Q  V W V l   �� X Y��   X   restore the old setting    Y � Z Z 0   r e s t o r e   t h e   o l d   s e t t i n g W  [ \ [ r     ] ^ ] o    ���� 0 olddelimiters oldDelimiters ^ n      _ ` _ 1    ��
�� 
txdl ` 1    ��
�� 
ascr \  a b a l   �� c d��   c   return the result    d � e e $   r e t u r n   t h e   r e s u l t b  f�� f L     g g o    ���� 0 thearray theArray��   -  h i h l     ��������  ��  ��   i  j k j i    l m l I      �������� 0 get_last_download  ��  ��   m k      n n  o p o q       q q �� r�� 0 destination_posix   r ������ 0 last_downloaded_yearmonth  ��   p  s t s l     �� u v��   u : 4 display dialog "Ermittle Datum des letzten Exports"    v � w w h   d i s p l a y   d i a l o g   " E r m i t t l e   D a t u m   d e s   l e t z t e n   E x p o r t s " t  x y x r      z { z n      | } | 1    ��
�� 
strq } n      ~  ~ 1    ��
�� 
psxp  o     ���� 0 destination_folder   { o      ���� 0 destination_posix   y  � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � m    	 � � � � �  l s   - l 1   � o   	 
���� 0 destination_posix   � m     � � � � � p / R e c h n u n g _ ? ? ? ? _ *   |   s o r t   - r   |   h e a d   - 1   |   c u t   - d   ' _ '   - f   2 , 3��   � o      ���� 0 last_downloaded_yearmonth   �  ��� � r     � � � I    �� ����� 	0 split   �  � � � o    ���� 0 last_downloaded_yearmonth   �  ��� � m     � � � � �  _��  ��   � o      ���� 0 last_downloaded  ��   k  � � � l     ��������  ��  ��   �  � � � i    � � � I      �� ����� 0 download   �  ��� � o      ����  0 untilyearmonth untilYearMonth��  ��   � k     / � �  � � � r      � � � n      � � � 4   �� �
�� 
cobj � m    ����  � o     ����  0 untilyearmonth untilYearMonth � o      ���� 0 	untilyear 	untilYear �  � � � r     � � � n     � � � 4   �� �
�� 
cobj � m   	 
����  � o    ����  0 untilyearmonth untilYearMonth � o      ���� 0 
untilmonth 
untilMonth �  � � � O    ) � � � I   (�� � �
�� .sfridojsnull���     ctxt � b     � � � b     � � � b     � � � b     � � � b     � � � b     � � � m     � � � � �� 
 	 	 $ ( ' . r e o - i n v o i c e s - t a b l e   t b o d y   t r ' ) . e a c h (   f u n c t i o n ( i n d e x ,   t r )   {   
 	 	 	 v a r   t d s   =   $ ( t r ) . c h i l d r e n ( ) , 
 	 	 	 	 d a t e S t r i n g   =   t d s [ 0 ] . i n n e r T e x t , 
 	 	 	 	 y e a r S t r i n g   =   d a t e S t r i n g . s u b s t r ( 6 ) , 
 	 	 	 	 m o n t h S t r i n g   =   d a t e S t r i n g . s u b s t r ( 3 , 2 ) , 
 	 	 	 	 i n v o i c e M o n t h   =   p a r s e I n t ( m o n t h S t r i n g , 1 0 ) - 1 , 
 	 	 	 	 i n v o i c e Y e a r   =   p a r s e I n t ( y e a r S t r i n g , 1 0 ) , 
 	 	 	 	 u n t i l M o n t h   =   p a r s e I n t ( ' � o    ���� 0 
untilmonth 
untilMonth � m     � � � � � � ' ,   1 0 ) ; 
 	 	 	 i f   ( i n v o i c e M o n t h   = =   0 )   { 
 	 	 	 	 i n v o i c e M o n t h   =   1 2 ; 
 	 	 	 	 i n v o i c e Y e a r   =   i n v o i c e Y e a r   - 1 ; 
 	 	 	 } 
 	 	 	 i f   ( i n v o i c e Y e a r   >   � o    ���� 0 	untilyear 	untilYear � m     � � � � � &   | |   i n v o i c e Y e a r   = =   � o    ���� 0 	untilyear 	untilYear � m     � � � � �p   & &   i n v o i c e M o n t h   >   u n t i l M o n t h )   { 
 	 	 	 	 $ ( t d s [ 3 ] ) . f i n d ( ' a ' ) . e a c h ( f u n c t i o n ( i n d e x 2 ,   a )   { 
 	 	 	 	 	 $ ( a ) . a t t r ( ' d o w n l o a d ' ,   ' ' ) ; 
 	 	 	 	 	 $ ( a ) . r e m o v e A t t r ( ' t a r g e t ' ) ; 
 	 	 	 	 	 a . c l i c k ( ) 
 	 	 	 	 } ) 
 	 	 	 } 
 	 	 }   ) ; 
 	 	 � �� ���
�� 
dcnm � 4     $�� �
�� 
docu � m   " #���� ��   � m     � ��                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   �  ��� � I  * /�� ���
�� .sysodelanull��� ��� nmbr � m   * +���� ��  ��   �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� 0 set_credentials  ��  ��   � k      � �  � � � r      � � � I    	�� ���
�� .sysoexecTEXT���     TEXT � b      � � � b      � � � m      � � � � � F s e c u r i t y   f i n d - i n t e r n e t - p a s s w o r d   - s   � o    ���� 
0 server   � m     � � � � � <   |   g r e p   a c c t   |   c u t   - d   ' " '   - f   4��   � o      ���� 0 account_name   �  ��� � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � m     � � � � � F s e c u r i t y   f i n d - i n t e r n e t - p a s s w o r d   - s   � o    ���� 
0 server   � m     � � � � �    - w��   � o      ���� 0 account_password  ��   �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� 
0 logout  ��  ��   � O      � � � k     � �  � � � I   	����~
�� .miscactvnull��� ��� null�  �~   �  � � � I  
 �} ��|
�} .GURLGURLnull��� ��� TEXT � m   
  � � � � � h t t p s : / / a c c o u n t s . l o g i n . i d m . t e l e k o m . c o m / s e s s i o n m e s s a g e / l o g o u t ? r e d i r e c t U R L = h t t p s % 3 A % 2 F % 2 F w w w . t e l e k o m . d e % 2 F k u n d e n c e n t e r % 2 F l o g o u t & s k i n I D = n o _ s c r�|   �  ��{ � I   �z ��y
�z .sysodelanull��� ��� nmbr � m    �x�x �y  �{   � m      � ��                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   �  �  � l     �w�v�u�w  �v  �u     i    I      �t�s�r�t 0 open_invoice_overview  �s  �r   O      k     	 I   	�q�p�o
�q .miscactvnull��� ��� null�p  �o  	 
�n
 I  
 �m�l
�m .GURLGURLnull��� ��� TEXT m   
  � n h t t p s : / / w w w . t e l e k o m . d e / k u n d e n c e n t e r / r e c h n u n g s u e b e r s i c h t�l  �n   m     �                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��    l     �k�j�i�k  �j  �i    i    I      �h�g�h 0 	set_input    o      �f�f 0 theid theId �e o      �d�d 0 thevalue theValue�e  �g   O      I   �c
�c .sfridojsnull���     ctxt b     b      b    	!"! b    #$# m    %% �&& 2 d o c u m e n t . g e t E l e m e n t B y I d ( '$ o    �b�b 0 theid theId" m    '' �((  ' ) . v a l u e   =   '  o   	 
�a�a 0 thevalue theValue m    )) �**  ' ; �`+�_
�` 
dcnm+ 4    �^,
�^ 
docu, m    �]�] �_   m     --�                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   ./. l     �\�[�Z�\  �[  �Z  / 010 i   232 I      �Y4�X�Y 	0 click  4 5�W5 o      �V�V 0 theid theId�W  �X  3 O     676 I   �U89
�U .sfridojsnull���     ctxt8 b    	:;: b    <=< m    >> �?? 2 d o c u m e n t . g e t E l e m e n t B y I d ( '= o    �T�T 0 theid theId; m    @@ �AA  ' ) . c l i c k ( ) ;9 �SB�R
�S 
dcnmB 4   
 �QC
�Q 
docuC m    �P�P �R  7 m     DD�                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  1 EFE l     �O�N�M�O  �N  �M  F GHG i    #IJI I      �L�K�J�L 	0 login  �K  �J  J k     "KK LML I    �IN�H
�I .sysodelanull��� ��� nmbrN m     �G�G �H  M OPO I    �FQ�E�F 0 	set_input  Q RSR m    TT �UU  p w _ u s rS V�DV o    	�C�C 0 account_name  �D  �E  P WXW I    �BY�A�B 0 	set_input  Y Z[Z m    \\ �]]  p w _ p w d[ ^�@^ o    �?�? 0 account_password  �@  �A  X _`_ I    �>a�=�> 	0 click  a b�<b m    cc �dd  p w _ s u b m i t�<  �=  ` e�;e I   "�:f�9
�: .sysodelanull��� ��� nmbrf m    �8�8 �9  �;  H ghg l     �7�6�5�7  �6  �5  h iji l   k�4�3k I    �2�1�0�2 0 set_credentials  �1  �0  �4  �3  j lml l     �/no�/  n  logout()   o �pp  l o g o u t ( )m qrq l   !s�.�-s I    !�,�+�*�, 0 open_invoice_overview  �+  �*  �.  �-  r tut l  " 'v�)�(v I   " '�'�&�%�' 	0 login  �&  �%  �)  �(  u wxw l  ( 2y�$�#y I   ( 2�"z�!�" 0 download  z {� { I   ) .���� 0 get_last_download  �  �  �   �!  �$  �#  x |}| l  3 8~��~ I   3 8���� 
0 logout  �  �  �  �  } � l  9 R���� O  9 R��� I  ? Q���
� .coreclosnull���     obj � n   ? I��� 1   E I�
� 
cTab� 4  ? E��
� 
cwin� m   C D�� � ���
� 
savo� m   L M�
� boovfals�  � m   9 <���                                                                                  sfri  alis    N  Macintosh HD               �v �H+  7/�
Safari.app                                                     7ȄѮ;�        ����  	                Applications    �u�      Ѯ�    7/�  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  �  �  � ��� l     ����  �  �  �       �
������������
  � 
�	��������� �	 	0 split  � 0 get_last_download  � 0 download  � 0 set_credentials  � 
0 logout  � 0 open_invoice_overview  � 0 	set_input  � 	0 click  � 	0 login  
�  .aevtoappnull  �   � ****� �� /���������� 	0 split  �� ����� �  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  � ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray� ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� �� m���������� 0 get_last_download  ��  ��  � �������� 0 destination_posix  �� 0 last_downloaded_yearmonth  �� 0 last_downloaded  � ������ � ��� ����� 0 destination_folder  
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� 	0 split  �� ��,�,E�O�%�%j E�O*��l+ E�� �� ����������� 0 download  �� ����� �  ����  0 untilyearmonth untilYearMonth��  � ��������  0 untilyearmonth untilYearMonth�� 0 	untilyear 	untilYear�� 0 
untilmonth 
untilMonth� �� � � � � �����������
�� 
cobj
�� 
dcnm
�� 
docu
�� .sfridojsnull���     ctxt�� 
�� .sysodelanull��� ��� nmbr�� 0��k/E�O��l/E�O� �%�%�%�%�%�%�*�k/l UO�j 
� �� ����������� 0 set_credentials  ��  ��  �  �  ��� ����� � ����� 
0 server  
�� .sysoexecTEXT���     TEXT�� 0 account_name  �� 0 account_password  �� ��%�%j E�O��%�%j E�� �� ����������� 
0 logout  ��  ��  �  �  ��� �����
�� .miscactvnull��� ��� null
�� .GURLGURLnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� � *j O�j Omj U� ������������ 0 open_invoice_overview  ��  ��  �  � ����
�� .miscactvnull��� ��� null
�� .GURLGURLnull��� ��� TEXT�� � *j O�j U� ������������ 0 	set_input  �� ����� �  ������ 0 theid theId�� 0 thevalue theValue��  � ������ 0 theid theId�� 0 thevalue theValue� -%')������
�� 
dcnm
�� 
docu
�� .sfridojsnull���     ctxt�� � �%�%�%�%�*�k/l U� ��3���������� 	0 click  �� ����� �  ���� 0 theid theId��  � ���� 0 theid theId� D>@������
�� 
dcnm
�� 
docu
�� .sfridojsnull���     ctxt�� � �%�%�*�k/l U� ��J���������� 	0 login  ��  ��  �  � 	��T����\��c����
�� .sysodelanull��� ��� nmbr�� 0 account_name  �� 0 	set_input  �� 0 account_password  �� 	0 click  �� �� #lj  O*��l+ O*��l+ O*�k+ O�j  � �����������
�� .aevtoappnull  �   � ****� k     R��  ��  ��  �� i�� q�� t�� w�� |�� ����  ��  ��  �  �  �� ������������������������������������� 
0 server  �� 0 telekom_path  
�� afdrcusr
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
alis�� 0 destination_folder  �� 0 set_credentials  �� 0 open_invoice_overview  �� 	0 login  �� 0 get_last_download  �� 0 download  �� 
0 logout  
�� 
cwin
�� 
cTab
�� 
savo
�� .coreclosnull���     obj �� S�E�O�E�O���l �%�&E�O*j+ 
O*j+ O*j+ O**j+ k+ O*j+ Oa  *a k/a ,a fl U ascr  ��ޭ