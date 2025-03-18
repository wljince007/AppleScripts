FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Library Loader
v1.1
Dov Frankel, 2013

loadScript() handler adapted from code at http://codemunki.com


*** Instructions ***

Copy the compiled version (.scpt) into your ~/Library/Scripts directory, and then include it in your scripts like so:

property LibLoader : load script file ((path to scripts folder from user domain as text) & "LibraryLoader.scpt")

You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:

property LibName : LibLoader's loadScript("Folder Name:Some Cool Script.applescript")
     � 	 	* 
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
 p r o p e r t y   L i b L o a d e r   :   l o a d   s c r i p t   f i l e   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " L i b r a r y L o a d e r . s c p t " ) 
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
loadScript   ��  o      ���� (0 scriptrelativepath scriptRelativePath��  ��    k            n     ! " ! I    �� #���� 	0 logit   #  $�� $ m     % % � & &  
 
��  ��   "  f         ' ( ' n    ) * ) I    �� +���� 	0 logit   +  ,�� , m    	 - - � . . $ l o a d S c r i p t   |   b e g i n��  ��   *  f     (  / 0 / n    1 2 1 I    �� 3���� 	0 logit   3  4�� 4 b     5 6 5 m     7 7 � 8 8 @ l o a d S c r i p t   |   s c r i p t R e l a t i v e P a t h : 6 o    ���� (0 scriptrelativepath scriptRelativePath��  ��   2  f     0  9 : 9 l   �� ; <��   ; d ^ set scriptFileToLoad to my fileAliasInScriptsFolder(scriptRelativePath) as text -- to be safe    < � = = �   s e t   s c r i p t F i l e T o L o a d   t o   m y   f i l e A l i a s I n S c r i p t s F o l d e r ( s c r i p t R e l a t i v e P a t h )   a s   t e x t   - -   t o   b e   s a f e :  > ? > r     @ A @ n    B C B I    �� D���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder D  E�� E o    ���� (0 scriptrelativepath scriptRelativePath��  ��   C  f     A o      ���� $0 scriptfiletoload scriptFileToLoad ?  F G F l     �� H I��   H g a set scriptFileToLoad to ((path to scripts folder from user domain as text) & scriptRelativePath)    I � J J �   s e t   s c r i p t F i l e T o L o a d   t o   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   s c r i p t R e l a t i v e P a t h ) G  K L K n    ( M N M I   ! (�� O���� 	0 logit   O  P�� P b   ! $ Q R Q m   ! " S S � T T < l o a d S c r i p t   |   s c r i p t F i l e T o L o a d : R o   " #���� $0 scriptfiletoload scriptFileToLoad��  ��   N  f     ! L  U V U Q   ) � W X Y W k   , ? Z Z  [ \ [ r   , 6 ] ^ ] I  , 4�� _��
�� .sysoloadscpt        file _ 4   , 0�� `
�� 
file ` o   . /���� $0 scriptfiletoload scriptFileToLoad��   ^ o      ���� 0 scriptobject scriptObject \  a�� a n  7 ? b c b I   8 ?�� d���� 	0 logit   d  e�� e b   8 ; f g f m   8 9 h h � i i 4 l o a d S c r i p t   |   s c r i p t O b j e c t : g o   9 :���� 0 scriptobject scriptObject��  ��   c  f   7 8��   X R      ���� j
�� .ascrerr ****      � ****��   j �� k��
�� 
errn k d       l l m      �������   Y l  G � m n o m k   G � p p  q r q r   G J s t s m   G H u u � v v   t o      ���� 0 
scripttext 
scriptText r  w x w Q   K | y z { y k   N c | |  } ~ } l  N N��  ���    ( " Try reading as Mac encoding first    � � � � D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t ~  � � � r   N Z � � � I  N X�� � �
�� .rdwrread****        **** � 4   N R�� �
�� 
file � o   P Q���� $0 scriptfiletoload scriptFileToLoad � �� ���
�� 
as   � m   S T��
�� 
ctxt��   � o      ���� 0 
scripttext 
scriptText �  ��� � n  [ c � � � I   \ c�� ����� 	0 logit   �  ��� � b   \ _ � � � m   \ ] � � � � � 0 l o a d S c r i p t   |   s c r i p t T e x t : � o   ] ^���� 0 
scripttext 
scriptText��  ��   �  f   [ \��   z R      ���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � d       � � m      �������   { l  k | � � � � k   k | � �  � � � l  k k�� � ���   �   Finally try UTF-8    � � � � $   F i n a l l y   t r y   U T F - 8 �  ��� � r   k | � � � I  k z�� � �
�� .rdwrread****        **** � 4   k o�� �
�� 
file � o   m n���� $0 scriptfiletoload scriptFileToLoad � �� ���
�� 
as   � 4   p v�� �
�� 
pcls � o   t u���� 0 utf8  ��   � o      ���� 0 
scripttext 
scriptText��   � &   Error reading script's encoding    � � � � @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g x  � � � l  } }��������  ��  ��   �  � � � Q   } � � � � � k   � � � �  � � � r   � � � � � I  � ��� ���
�� .sysodsct****        scpt � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  s c r i p t   s � o   � ���
�� 
ret  � o   � ����� 0 
scripttext 
scriptText � o   � ���
�� 
ret  � m   � � � � � � �  e n d   s c r i p t   � o   � ���
�� 
ret  � m   � � � � � � �  r e t u r n   s��  ��  ��   � o      ���� 0 scriptobject scriptObject �  ��� � n  � � � � � I   � ��� ����� 	0 logit   �  ��� � b   � � � � � m   � � � � � � � 4 l o a d S c r i p t   |   s c r i p t O b j e c t : � o   � ����� 0 scriptobject scriptObject��  ��   �  f   � ���   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 e   � �� � �
�� 
errn � o      ���� 0 n   � �� � �
�� 
ptlr � o      ���� 0 p   � �� � �
�� 
erob � o      ���� 0 f   � �� ���
�� 
errt � o      ���� 0 t  ��   � k   � � � �  � � � n  � � � � � I   � ��� ����� 	0 logit   �  ��� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � , l o a d S c r i p t   |   o n   e r r o r : � m   � � � � � � � * E r r o r   r e a d i n g   l i b r a r y � o   � ����� $0 scriptfiletoload scriptFileToLoad � m   � � � � � � �   � o   � ����� 0 e   � m   � � � � � � � : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��  ��   �  f   � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � * E r r o r   r e a d i n g   l i b r a r y � o   � ����� $0 scriptfiletoload scriptFileToLoad � m   � �   �   � o   � ����� 0 e   � m   � � � : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��   � �� R   � ���
�� .ascrerr ****      � **** o   � ����� 0 e   ��
�� 
errn o   � ����� 0 n   ��	

�� 
ptlr	 o   � ����� 0 p  
 ��
�� 
erob o   � ����� 0 f   ����
�� 
errt o   � ����� 0 t  ��  ��   � � n  � � I   � ��~�}�~ 	0 logit   �| m   � � �   l o a d S c r i p t   |   e n d�|  �}    f   � ��   n   text format script     o � (   t e x t   f o r m a t   s c r i p t   V  l  � ��{�z�y�{  �z  �y   �x L   � o   � �w�w 0 scriptobject scriptObject�x     l     �v�u�t�v  �u  �t    l     �s�s   ] W Runs any script (and and returns its output) with a path relative to ~/Library/Scripts    �   �   R u n s   a n y   s c r i p t   ( a n d   a n d   r e t u r n s   i t s   o u t p u t )   w i t h   a   p a t h   r e l a t i v e   t o   ~ / L i b r a r y / S c r i p t s !"! l      �r#$�r  # D >
LibLoader's runScript("Folder Name:Script Name.applescript")
   $ �%% | 
 L i b L o a d e r ' s   r u n S c r i p t ( " F o l d e r   N a m e : S c r i p t   N a m e . a p p l e s c r i p t " ) 
" &'& i    ()( I      �q*�p�q 0 	runscript 	runScript* +�o+ o      �n�n (0 scriptrelativepath scriptRelativePath�o  �p  ) k     %,, -.- r     /0/ n    121 I    �m3�l�m 40 filealiasinscriptsfolder fileAliasInScriptsFolder3 4�k4 o    �j�j (0 scriptrelativepath scriptRelativePath�k  �l  2  f     0 o      �i�i 0 thescriptpath theScriptPath. 565 n  	 787 I   
 �h9�g�h 	0 logit  9 :�f: b   
 ;<; m   
 == �>> 4 r u n S c r i p t   |   t h e S c r i p t P a t h :< o    �e�e 0 thescriptpath theScriptPath�f  �g  8  f   	 
6 ?@? r    ABA I   �dC�c
�d .sysodsct****        scptC o    �b�b 0 thescriptpath theScriptPath�c  B o      �a�a 0 	theresult 	theResult@ DED n   "FGF I    "�`H�_�` 	0 logit  H I�^I b    JKJ m    LL �MM , r u n S c r i p t   |   t h e R e s u l t :K o    �]�] 0 	theresult 	theResult�^  �_  G  f    E N�\N L   # %OO o   # $�[�[ 0 	theresult 	theResult�\  ' PQP l     �Z�Y�X�Z  �Y  �X  Q RSR l     �W�V�U�W  �V  �U  S TUT l      �TVW�T  V    Intended for Private use    W �XX 4   I n t e n d e d   f o r   P r i v a t e   u s e  U YZY l     �S�R�Q�S  �R  �Q  Z [\[ i    ]^] I      �P_�O�P 40 filealiasinscriptsfolder fileAliasInScriptsFolder_ `�N` o      �M�M (0 scriptrelativepath scriptRelativePath�N  �O  ^ k     ,aa bcb n    ded I    �Lf�K�L 	0 logit  f g�Jg b    hih m    jj �kk \ f i l e A l i a s I n S c r i p t s F o l d e r   |   s c r i p t R e l a t i v e P a t h :i o    �I�I (0 scriptrelativepath scriptRelativePath�J  �K  e  f     c lml r   	 non l  	 p�H�Gp b   	 qrq l  	 s�F�Es I  	 �Dtu
�D .earsffdralis        afdrt m   	 
�C
�C afdrscr�u �Bvw
�B 
fromv m    �A
�A fldmflduw �@x�?
�@ 
rtypx m    �>
�> 
ctxt�?  �F  �E  r o    �=�= (0 scriptrelativepath scriptRelativePath�H  �G  o o      �<�< 0 fullpath fullPathm yzy n   {|{ I    �;}�:�; 	0 logit  } ~�9~ b    � m    �� ��� H f i l e A l i a s I n S c r i p t s F o l d e r   |   f u l l P a t h :� o    �8�8 0 fullpath fullPath�9  �:  |  f    z ��7� L     ,�� l    +��6�5� b     +��� l    )��4�3� I    )�2��
�2 .earsffdralis        afdr� m     !�1
�1 afdrscr�� �0��
�0 
from� m   " #�/
�/ fldmfldu� �.��-
�. 
rtyp� m   $ %�,
�, 
ctxt�-  �4  �3  � o   ) *�+�+ (0 scriptrelativepath scriptRelativePath�6  �5  �7  \ ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  �   Test Calls    � ���    T e s t   C a l l s  � ��� l     �#�"�!�#  �"  �!  � ��� l     � ���   � M Gproperty StringsLib : loadScript("Libraries:Strings utf16.applescript")   � ��� � p r o p e r t y   S t r i n g s L i b   :   l o a d S c r i p t ( " L i b r a r i e s : S t r i n g s   u t f 1 6 . a p p l e s c r i p t " )� ��� l     ����  � 4 .my runScript("Test Return String.applescript")   � ��� \ m y   r u n S c r i p t ( " T e s t   R e t u r n   S t r i n g . a p p l e s c r i p t " )� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i    ��� I      ���� 	0 logit  � ��� o      �� 0 
log_string  �  �  � n    ��� I    ���� 0 logit_withfile  � ��� o    �� 0 
log_string  � ��� m    �� ��� * a p p l e s c r i p t _ d e b u g . l o g�  �  �  f     � ��� l     ����  �  �  � ��� l     ����  �   ????   � ��� 
  e�_�nzz� ��� i    ��� I      ���
� 0 logit_clean  �  �
  � n    ��� I    �	���	 0 logit_clean_withfile  � ��� m    �� ��� * a p p l e s c r i p t _ d e b u g . l o g�  �  �  f     � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 logit_withfile  � ��� o      �� 0 
log_string  � �� � o      ���� 0 log_file  �   �  � k     �� ��� I    �����
�� .ascrcmnt****      � ****� o     ���� 0 
log_string  ��  � ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    	��� m    �� ��� : e c h o   ` d a t e   ' + % Y - % m - % d   % T :   ' ` "� o    ���� 0 
log_string  � m   	 
�� ��� 0 "   > >   $ H O M E / L i b r a r y / L o g s /� o    ���� 0 log_file  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   ????   � ��� 
  e�_�nzz� ���� i    ��� I      ������� 0 logit_clean_withfile  � ���� o      ���� 0 log_file  ��  ��  � I    �����
�� .sysoexecTEXT���     TEXT� b     ��� m     �� ��� 4 e c h o   >   $ H O M E / L i b r a r y / L o g s /� o    ���� 0 log_file  ��  ��       	������������  � ���������������� 0 
loadscript 
loadScript�� 0 	runscript 	runScript�� 40 filealiasinscriptsfolder fileAliasInScriptsFolder�� 	0 logit  �� 0 logit_clean  �� 0 logit_withfile  �� 0 logit_clean_withfile  � �� ���������� 0 
loadscript 
loadScript�� ����� �  ���� (0 scriptrelativepath scriptRelativePath��  � 
���������������������� (0 scriptrelativepath scriptRelativePath�� $0 scriptfiletoload scriptFileToLoad�� 0 scriptobject scriptObject�� 0 
scripttext 
scriptText�� 0 utf8  �� 0 e  �� 0 n  �� 0 p  �� 0 f  �� 0 t  � ( %�� - 7�� S���� h��� u������ ���� ��� � ��� ���� � � � � � �������������� 	0 logit  �� 40 filealiasinscriptsfolder fileAliasInScriptsFolder
�� 
file
�� .sysoloadscpt        file��  � ������
�� 
errn���(��  
�� 
as  
�� 
ctxt
�� .rdwrread****        ****� ������
�� 
errn���\��  
�� 
pcls
�� 
ret 
�� .sysodsct****        scpt�� 0 e  � �����
�� 
errn�� 0 n  � ���� 
�� 
ptlr�� 0 p    ����
�� 
erob�� 0 f   ������
�� 
errt�� 0 t  ��  
�� .sysodlogaskr        TEXT
�� 
errn
�� 
ptlr
�� 
erob
�� 
errt�� ��)�k+ O)�k+ O)�%k+ O)�k+ E�O)�%k+ O *�/j E�O)�%k+ W �X 	 
�E�O *�/��l E�O)�%k+ W X 	 *�/�*a �/l E�O /a _ %�%_ %a %_ %a %j E�O)a �%k+ W JX  )a a %�%a %�%a %k+ Oa �%a %�%a  %j !O)a "�a #�a $�a %�a &�O)a 'k+ O�� ��)�������� 0 	runscript 	runScript�� ����   ���� (0 scriptrelativepath scriptRelativePath��   �������� (0 scriptrelativepath scriptRelativePath�� 0 thescriptpath theScriptPath�� 0 	theresult 	theResult ��=����L�� 40 filealiasinscriptsfolder fileAliasInScriptsFolder�� 	0 logit  
�� .sysodsct****        scpt�� &)�k+  E�O)�%k+ O�j E�O)�%k+ O�� ��^�������� 40 filealiasinscriptsfolder fileAliasInScriptsFolder�� ����   ���� (0 scriptrelativepath scriptRelativePath��   ������ (0 scriptrelativepath scriptRelativePath�� 0 fullpath fullPath 
j������������������� 	0 logit  
�� afdrscr�
�� 
from
�� fldmfldu
�� 
rtyp
�� 
ctxt�� 
�� .earsffdralis        afdr�� -)�%k+ O������ �%E�O)�%k+ O������ �%� �������	���� 	0 logit  �� ��
�� 
  ���� 0 
log_string  ��   ���� 0 
log_string  	 ����� 0 logit_withfile  �� )��l+ � ����������� 0 logit_clean  ��  ��     ����� 0 logit_clean_withfile  �� )�k+ � ����������� 0 logit_withfile  �� ����   ������ 0 
log_string  �� 0 log_file  ��   ������ 0 
log_string  �� 0 log_file   ����~
� .ascrcmnt****      � ****
�~ .sysoexecTEXT���     TEXT�� �j  O�%�%�%j � �}��|�{�z�} 0 logit_clean_withfile  �| �y�y   �x�x 0 log_file  �{   �w�w 0 log_file   ��v
�v .sysoexecTEXT���     TEXT�z �%j ascr  ��ޭ