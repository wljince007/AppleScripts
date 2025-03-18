FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Library Loader
v1.1
Dov Frankel, 2013

loadScript() handler adapted from code at http://codemunki.com


*** Instructions ***

Copy the compiled version (.scpt) into your ~/Library/Scripts directory, and then include it in your scripts like so:

property LibLoader : load script file ((path to scripts folder from user domain as text) & "Library Loader.scpt")

You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:

property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
     � 	 	, 
 L i b r a r y   L o a d e r 
 v 1 . 1 
 D o v   F r a n k e l ,   2 0 1 3 
 
 l o a d S c r i p t ( )   h a n d l e r   a d a p t e d   f r o m   c o d e   a t   h t t p : / / c o d e m u n k i . c o m 
 
 
 * * *   I n s t r u c t i o n s   * * * 
 
 C o p y   t h e   c o m p i l e d   v e r s i o n   ( . s c p t )   i n t o   y o u r   ~ / L i b r a r y / S c r i p t s   d i r e c t o r y ,   a n d   t h e n   i n c l u d e   i t   i n   y o u r   s c r i p t s   l i k e   s o : 
 
 p r o p e r t y   L i b L o a d e r   :   l o a d   s c r i p t   f i l e   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " L i b r a r y   L o a d e r . s c p t " ) 
 
 Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t : 
 
 p r o p e r t y   L i b N a m e   :   L i b L o a d e r ' s   l o a d S c r i p t ( " F o l d e r   N a m e : S o m e   C o o l   S c r i p t . a p p l e s c r i p t " ) 
   
  
 l     ��������  ��  ��        l     ��  ��    ^ X Loads any script to use as a script property, with a path relative to ~/Library/Scripts     �   �   L o a d s   a n y   s c r i p t   t o   u s e   a s   a   s c r i p t   p r o p e r t y ,   w i t h   a   p a t h   r e l a t i v e   t o   ~ / L i b r a r y / S c r i p t s      l      ��  ��    ] W
property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
     �   � 
 p r o p e r t y   L i b N a m e   :   L i b L o a d e r ' s   l o a d S c r i p t ( " F o l d e r   N a m e : S o m e   C o o l   S c r i p t . a p p l e s c r i p t " ) 
      l     ��������  ��  ��        i         I      �� ���� 0 
loadscript 
loadScript   ��  o      ���� (0 scriptrelativepath scriptRelativePath��  ��    k     �        l     ��������  ��  ��      ! " ! l    
 # $ % # r     
 & ' & c      ( ) ( n     * + * I    �� ,���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder ,  -�� - o    ���� (0 scriptrelativepath scriptRelativePath��  ��   +  f      ) m    ��
�� 
ctxt ' o      ���� $0 scriptfiletoload scriptFileToLoad $   to be safe     % � . .    t o   b e   s a f e   "  / 0 / Q    � 1 2 3 1 r     4 5 4 I   �� 6��
�� .sysoloadscpt        file 6 4    �� 7
�� 
alis 7 o    ���� $0 scriptfiletoload scriptFileToLoad��   5 o      ���� 0 scriptobject scriptObject 2 R      ���� 8
�� .ascrerr ****      � ****��   8 �� 9��
�� 
errn 9 d       : : m      �������   3 l    � ; < = ; k     � > >  ? @ ? r     # A B A m     ! C C � D D   B o      ���� 0 
scripttext 
scriptText @  E F E Q   $ J G H I G k   ' 3 J J  K L K l  ' '�� M N��   M ( " Try reading as Mac encoding first    N � O O D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t L  P�� P r   ' 3 Q R Q I  ' 1�� S T
�� .rdwrread****        **** S 4   ' +�� U
�� 
alis U o   ) *���� $0 scriptfiletoload scriptFileToLoad T �� V��
�� 
as   V m   , -��
�� 
ctxt��   R o      ���� 0 
scripttext 
scriptText��   H R      ���� W
�� .ascrerr ****      � ****��   W �� X��
�� 
errn X d       Y Y m      �������   I l  ; J Z [ \ Z k   ; J ] ]  ^ _ ^ l  ; ;�� ` a��   `   Finally try UTF-8    a � b b $   F i n a l l y   t r y   U T F - 8 _  c�� c r   ; J d e d I  ; H�� f g
�� .rdwrread****        **** f 4   ; ?�� h
�� 
alis h o   = >���� $0 scriptfiletoload scriptFileToLoad g �� i��
�� 
as   i 4   @ D�� j
�� 
pcls j o   B C���� 0 utf8  ��   e o      ���� 0 
scripttext 
scriptText��   [ &   Error reading script's encoding    \ � k k @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g F  l m l l  K K��������  ��  ��   m  n�� n Q   K � o p q o r   N a r s r I  N _�� t��
�� .sysodsct****        scpt t l  N [ u���� u b   N [ v w v b   N Y x y x b   N W z { z b   N U | } | b   N S ~  ~ b   N Q � � � m   N O � � � � �  s c r i p t   s � o   O P��
�� 
ret   o   Q R���� 0 
scripttext 
scriptText } o   S T��
�� 
ret  { m   U V � � � � �  e n d   s c r i p t   y o   W X��
�� 
ret  w m   Y Z � � � � �  r e t u r n   s��  ��  ��   s o      ���� 0 scriptobject scriptObject p R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 e   � �� � �
�� 
errn � o      ���� 0 n   � �� � �
�� 
ptlr � o      ���� 0 p   � �� � �
�� 
erob � o      ���� 0 f   � �� ���
�� 
errt � o      ���� 0 t  ��   q k   i � � �  � � � I  i |�� ���
�� .sysodlogaskr        TEXT � b   i x � � � b   i t � � � b   i r � � � b   i n � � � m   i l � � � � � * E r r o r   r e a d i n g   l i b r a r y � o   l m���� $0 scriptfiletoload scriptFileToLoad � m   n q � � � � �   � o   r s���� 0 e   � m   t w � � � � � : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��   �  ��� � R   } ��� � �
�� .ascrerr ****      � **** � o   � ����� 0 e   � �� � �
�� 
errn � o   � ����� 0 n   � �� � �
�� 
ptlr � o   � ����� 0 p   � �� � �
�� 
erob � o   � ����� 0 f   � �� ���
�� 
errt � o   � ����� 0 t  ��  ��  ��   <   text format script     = � � � (   t e x t   f o r m a t   s c r i p t   0  � � � l  � ���������  ��  ��   �  ��� � L   � � � � o   � ����� 0 scriptobject scriptObject��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ] W Runs any script (and and returns its output) with a path relative to ~/Library/Scripts    � � � � �   R u n s   a n y   s c r i p t   ( a n d   a n d   r e t u r n s   i t s   o u t p u t )   w i t h   a   p a t h   r e l a t i v e   t o   ~ / L i b r a r y / S c r i p t s �  � � � l      �� � ���   � D >
LibLoader's runScript("Folder Name:Script Name.applescript")
    � � � � | 
 L i b L o a d e r ' s   r u n S c r i p t ( " F o l d e r   N a m e : S c r i p t   N a m e . a p p l e s c r i p t " ) 
 �  � � � i     � � � I      �� ����� 0 	runscript 	runScript �  ��� � o      ���� (0 scriptrelativepath scriptRelativePath��  ��   � k      � �  � � � r      � � � n     � � � I    �� ����� 40 filealiasinscriptsfolder fileAliasInScriptsFolder �  ��� � o    ���� (0 scriptrelativepath scriptRelativePath��  ��   �  f      � o      ���� 0 thescriptpath theScriptPath �  � � � r   	  � � � I  	 �� ���
�� .sysodsct****        scpt � o   	 
���� 0 thescriptpath theScriptPath��   � o      ���� 0 	theresult 	theResult �  � � � I   �� ���
�� .ascrcmnt****      � **** � o    ���� 0 	theresult 	theResult��   �  ��� � L     � � o    ���� 0 	theresult 	theResult��   �  � � � l     �������  ��  �   �  � � � l     �~�}�|�~  �}  �|   �  � � � l      �{ � ��{   �    Intended for Private use     � � � � 4   I n t e n d e d   f o r   P r i v a t e   u s e   �  � � � l     �z�y�x�z  �y  �x   �  � � � i     � � � I      �w ��v�w 40 filealiasinscriptsfolder fileAliasInScriptsFolder �  ��u � o      �t�t (0 scriptrelativepath scriptRelativePath�u  �v   � L      � � c      � � � l     ��s�r � b      � � � l    	 ��q�p � I    	�o � �
�o .earsffdralis        afdr � m     �n
�n afdrscr� � �m � �
�m 
from � m    �l
�l fldmfldu � �k ��j
�k 
rtyp � m    �i
�i 
ctxt�j  �q  �p   � o   	 
�h�h (0 scriptrelativepath scriptRelativePath�s  �r   � m    �g
�g 
alis �  � � � l     �f�e�d�f  �e  �d   �  � � � l     �c�b�a�c  �b  �a   �  � � � l      �` � ��`   �   Test Calls     � � � �    T e s t   C a l l s   �  � � � l     �_�^�]�_  �^  �]   �  �  � l     �\�\   M Gproperty StringsLib : loadScript("Libraries:Strings utf16.applescript")    � � p r o p e r t y   S t r i n g s L i b   :   l o a d S c r i p t ( " L i b r a r i e s : S t r i n g s   u t f 1 6 . a p p l e s c r i p t " )  �[ l     �Z�Z   4 .my runScript("Test Return String.applescript")    � \ m y   r u n S c r i p t ( " T e s t   R e t u r n   S t r i n g . a p p l e s c r i p t " )�[       �Y	
�Y   �X�W�V�X 0 
loadscript 
loadScript�W 0 	runscript 	runScript�V 40 filealiasinscriptsfolder fileAliasInScriptsFolder	 �U �T�S�R�U 0 
loadscript 
loadScript�T �Q�Q   �P�P (0 scriptrelativepath scriptRelativePath�S   
�O�N�M�L�K�J�I�H�G�F�O (0 scriptrelativepath scriptRelativePath�N $0 scriptfiletoload scriptFileToLoad�M 0 scriptobject scriptObject�L 0 
scripttext 
scriptText�K 0 utf8  �J 0 e  �I 0 n  �H 0 p  �G 0 f  �F 0 t   �E�D�C�B�A C�@�?�> ��= � ��<�; � � ��:�9�8�7�6�5�E 40 filealiasinscriptsfolder fileAliasInScriptsFolder
�D 
ctxt
�C 
alis
�B .sysoloadscpt        file�A   �4�3�2
�4 
errn�3�(�2  
�@ 
as  
�? .rdwrread****        **** �1�0�/
�1 
errn�0�\�/  
�> 
pcls
�= 
ret 
�< .sysodsct****        scpt�; 0 e   �.�-
�. 
errn�- 0 n   �,�+
�, 
ptlr�+ 0 p   �*�)
�* 
erob�) 0 f   �(�'�&
�( 
errt�' 0 t  �&  
�: .sysodlogaskr        TEXT
�9 
errn
�8 
ptlr
�7 
erob
�6 
errt�5 �R �)�k+  �&E�O *�/j E�W zX  �E�O *�/��l E�W X  	*�/�*�/l E�O ��%�%�%�%�%�%j E�W 1X  a �%a %�%a %j O)a �a �a �a �a �O�
 �% ��$�#�"�% 0 	runscript 	runScript�$ �!�!   � �  (0 scriptrelativepath scriptRelativePath�#   ���� (0 scriptrelativepath scriptRelativePath� 0 thescriptpath theScriptPath� 0 	theresult 	theResult ���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder
� .sysodsct****        scpt
� .ascrcmnt****      � ****�" )�k+  E�O�j E�O�j O� � ����� 40 filealiasinscriptsfolder fileAliasInScriptsFolder� ��   �� (0 scriptrelativepath scriptRelativePath�   �� (0 scriptrelativepath scriptRelativePath ��������
� afdrscr�
� 
from
� fldmfldu
� 
rtyp
� 
ctxt� 
� .earsffdralis        afdr
� 
alis� ������ �%�& ascr  ��ޭ