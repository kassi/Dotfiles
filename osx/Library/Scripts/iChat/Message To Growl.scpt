FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
What follows are configuration variables that advanced users can edit to customize the script's behavior.
If you don't want to change this script to edit these config variables, you can put them in another script named "Growl Config.scpt" in your Library:Scripts:iChat folder (usually the same folder as this script).  You can copy just the properties you want.  For example, if you want to change autoAccept, then the "Growl Config.scpt" file should only contain the line:
property autoAccept : {"text", "remote screen sharing"}
     � 	 	& 
 W h a t   f o l l o w s   a r e   c o n f i g u r a t i o n   v a r i a b l e s   t h a t   a d v a n c e d   u s e r s   c a n   e d i t   t o   c u s t o m i z e   t h e   s c r i p t ' s   b e h a v i o r . 
 I f   y o u   d o n ' t   w a n t   t o   c h a n g e   t h i s   s c r i p t   t o   e d i t   t h e s e   c o n f i g   v a r i a b l e s ,   y o u   c a n   p u t   t h e m   i n   a n o t h e r   s c r i p t   n a m e d   " G r o w l   C o n f i g . s c p t "   i n   y o u r   L i b r a r y : S c r i p t s : i C h a t   f o l d e r   ( u s u a l l y   t h e   s a m e   f o l d e r   a s   t h i s   s c r i p t ) .     Y o u   c a n   c o p y   j u s t   t h e   p r o p e r t i e s   y o u   w a n t .     F o r   e x a m p l e ,   i f   y o u   w a n t   t o   c h a n g e   a u t o A c c e p t ,   t h e n   t h e   " G r o w l   C o n f i g . s c p t "   f i l e   s h o u l d   o n l y   c o n t a i n   t h e   l i n e : 
 p r o p e r t y   a u t o A c c e p t   :   { " t e x t " ,   " r e m o t e   s c r e e n   s h a r i n g " } 
   
  
 l     ��  ��    � � Note to developers: If you add a property or handler to the config script, you'll need to add it to the end of initConfig() too.     �     N o t e   t o   d e v e l o p e r s :   I f   y o u   a d d   a   p r o p e r t y   o r   h a n d l e r   t o   t h e   c o n f i g   s c r i p t ,   y o u ' l l   n e e d   t o   a d d   i t   t o   t h e   e n d   o f   i n i t C o n f i g ( )   t o o .      h     �� �� 
0 config    k             l     ��  ��   �� autoAccept: Since you can't specify both this script and "Auto Accept" in the script field in iChat's preferences, it's handy to be able to tell this script to do the accept for certain types of invitations.  It would also be possible to tell it to chain-call a different script; this would be more flexible (for example, if you wanted to run "iTunes Remote Control" instead), but slower.     �  
   a u t o A c c e p t :   S i n c e   y o u   c a n ' t   s p e c i f y   b o t h   t h i s   s c r i p t   a n d   " A u t o   A c c e p t "   i n   t h e   s c r i p t   f i e l d   i n   i C h a t ' s   p r e f e r e n c e s ,   i t ' s   h a n d y   t o   b e   a b l e   t o   t e l l   t h i s   s c r i p t   t o   d o   t h e   a c c e p t   f o r   c e r t a i n   t y p e s   o f   i n v i t a t i o n s .     I t   w o u l d   a l s o   b e   p o s s i b l e   t o   t e l l   i t   t o   c h a i n - c a l l   a   d i f f e r e n t   s c r i p t ;   t h i s   w o u l d   b e   m o r e   f l e x i b l e   ( f o r   e x a m p l e ,   i f   y o u   w a n t e d   t o   r u n   " i T u n e s   R e m o t e   C o n t r o l "   i n s t e a d ) ,   b u t   s l o w e r .      l     ��  ��   % Set this to a list containing some subset of "text", "audio", "video", "buddy authorization", "local screen sharing", "remote screen sharing", and "file transfer", depending on what you want to auto-accept.  (Note that "remote screen sharing" is presently broken; see the comment below.     �  >   S e t   t h i s   t o   a   l i s t   c o n t a i n i n g   s o m e   s u b s e t   o f   " t e x t " ,   " a u d i o " ,   " v i d e o " ,   " b u d d y   a u t h o r i z a t i o n " ,   " l o c a l   s c r e e n   s h a r i n g " ,   " r e m o t e   s c r e e n   s h a r i n g " ,   a n d   " f i l e   t r a n s f e r " ,   d e p e n d i n g   o n   w h a t   y o u   w a n t   t o   a u t o - a c c e p t .     ( N o t e   t h a t   " r e m o t e   s c r e e n   s h a r i n g "   i s   p r e s e n t l y   b r o k e n ;   s e e   t h e   c o m m e n t   b e l o w .      l     ��   ��    u o The default, as distributed, is to not auto-accept anything, since that's really not the point of this script.      � ! ! �   T h e   d e f a u l t ,   a s   d i s t r i b u t e d ,   i s   t o   n o t   a u t o - a c c e p t   a n y t h i n g ,   s i n c e   t h a t ' s   r e a l l y   n o t   t h e   p o i n t   o f   t h i s   s c r i p t .   " # " l     �� $ %��   $ = 7 Example to enable only text and remote screen sharing:    % � & & n   E x a m p l e   t o   e n a b l e   o n l y   t e x t   a n d   r e m o t e   s c r e e n   s h a r i n g : #  ' ( ' l     �� ) *��   ) > 8 property autoAccept : {"text", "remote screen sharing"}    * � + + p   p r o p e r t y   a u t o A c c e p t   :   { " t e x t " ,   " r e m o t e   s c r e e n   s h a r i n g " } (  , - , j     �� .�� 0 
autoaccept 
autoAccept . J     ����   -  / 0 / l     ��������  ��  ��   0  1 2 1 l      �� 3 4��   3$
I have too many contacts on the social networks, and I don't chat with the vast majority of them.  This script supports filtering out the distracting login / logout messages.  I don't care about login / logout messages from:
- Facebook friends
- Contacts from Google Talk via Google+
- Bonjour contacts
- Myself

However, if I'm chatting with any of these people, I do care what they have to say.  Only login and logout messages get filtered.

The filtering rules may seem strange, but they work for me in practice.
First: Filtering is only applied to events in filterEvents.  No other events ever get filtered.
Second: A event will be ignored if it matches either filterAccounts or filterBuddies.
In other words, it must match (filterEvents and (filterAccounts or filterBuddies)) to be filtered.
    4 � 5 5< 
 I   h a v e   t o o   m a n y   c o n t a c t s   o n   t h e   s o c i a l   n e t w o r k s ,   a n d   I   d o n ' t   c h a t   w i t h   t h e   v a s t   m a j o r i t y   o f   t h e m .     T h i s   s c r i p t   s u p p o r t s   f i l t e r i n g   o u t   t h e   d i s t r a c t i n g   l o g i n   /   l o g o u t   m e s s a g e s .     I   d o n ' t   c a r e   a b o u t   l o g i n   /   l o g o u t   m e s s a g e s   f r o m : 
 -   F a c e b o o k   f r i e n d s 
 -   C o n t a c t s   f r o m   G o o g l e   T a l k   v i a   G o o g l e + 
 -   B o n j o u r   c o n t a c t s 
 -   M y s e l f 
 
 H o w e v e r ,   i f   I ' m   c h a t t i n g   w i t h   a n y   o f   t h e s e   p e o p l e ,   I   d o   c a r e   w h a t   t h e y   h a v e   t o   s a y .     O n l y   l o g i n   a n d   l o g o u t   m e s s a g e s   g e t   f i l t e r e d . 
 
 T h e   f i l t e r i n g   r u l e s   m a y   s e e m   s t r a n g e ,   b u t   t h e y   w o r k   f o r   m e   i n   p r a c t i c e . 
 F i r s t :   F i l t e r i n g   i s   o n l y   a p p l i e d   t o   e v e n t s   i n   f i l t e r E v e n t s .     N o   o t h e r   e v e n t s   e v e r   g e t   f i l t e r e d . 
 S e c o n d :   A   e v e n t   w i l l   b e   i g n o r e d   i f   i t   m a t c h e s   e i t h e r   f i l t e r A c c o u n t s   o r   f i l t e r B u d d i e s . 
 I n   o t h e r   w o r d s ,   i t   m u s t   m a t c h   ( f i l t e r E v e n t s   a n d   ( f i l t e r A c c o u n t s   o r   f i l t e r B u d d i e s ) )   t o   b e   f i l t e r e d . 
 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   :MG filterEvents : Don't show these events if either the account name is in filterAccounts, or the buddy is in filterBuddies.  If neither of those matches, then the event is handled normally. If you want to ignore a particular event altogether, regardless of account, then disable the script for that event in iChat's Preferences.    ; � < <�   f i l t e r E v e n t s   :   D o n ' t   s h o w   t h e s e   e v e n t s   i f   e i t h e r   t h e   a c c o u n t   n a m e   i s   i n   f i l t e r A c c o u n t s ,   o r   t h e   b u d d y   i s   i n   f i l t e r B u d d i e s .     I f   n e i t h e r   o f   t h o s e   m a t c h e s ,   t h e n   t h e   e v e n t   i s   h a n d l e d   n o r m a l l y .   I f   y o u   w a n t   t o   i g n o r e   a   p a r t i c u l a r   e v e n t   a l t o g e t h e r ,   r e g a r d l e s s   o f   a c c o u n t ,   t h e n   d i s a b l e   t h e   s c r i p t   f o r   t h a t   e v e n t   i n   i C h a t ' s   P r e f e r e n c e s . 9  = > = l     �� ? @��   ? R L Note that only events that are associated with a buddy can be filterd here.    @ � A A �   N o t e   t h a t   o n l y   e v e n t s   t h a t   a r e   a s s o c i a t e d   w i t h   a   b u d d y   c a n   b e   f i l t e r d   h e r e . >  B C B l     �� D E��   D  	 Example:    E � F F    E x a m p l e : C  G H G l     �� I J��   I U O property filterEvents : {"Buddy Became Available", "Buddy Became Unavailable"}    J � K K �   p r o p e r t y   f i l t e r E v e n t s   :   { " B u d d y   B e c a m e   A v a i l a b l e " ,   " B u d d y   B e c a m e   U n a v a i l a b l e " } H  L M L j    �� N�� 0 filterevents filterEvents N J    ����   M  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S � � filterAccounts : Don't show certain events (listed in filterEvents) for these accounts.  The account name should match the "Description" field of the service in your iChat settings; note that Bonjour is always named "Bonjour".    T � U U�   f i l t e r A c c o u n t s   :   D o n ' t   s h o w   c e r t a i n   e v e n t s   ( l i s t e d   i n   f i l t e r E v e n t s )   f o r   t h e s e   a c c o u n t s .     T h e   a c c o u n t   n a m e   s h o u l d   m a t c h   t h e   " D e s c r i p t i o n "   f i e l d   o f   t h e   s e r v i c e   i n   y o u r   i C h a t   s e t t i n g s ;   n o t e   t h a t   B o n j o u r   i s   a l w a y s   n a m e d   " B o n j o u r " . R  V W V l     �� X Y��   X  	 Example:    Y � Z Z    E x a m p l e : W  [ \ [ l     �� ] ^��   ] 8 2 property filterAccounts : {"Bonjour", "Facebook"}    ^ � _ _ d   p r o p e r t y   f i l t e r A c c o u n t s   :   { " B o n j o u r " ,   " F a c e b o o k " } \  ` a ` j    �� b��  0 filteraccounts filterAccounts b J    
����   a  c d c l     �� e f��   e�� filterBuddies : Don't show events from filterEvents if the handle or name includes one of these strings.  You may want to include yourself here, so that you don't get messages when you log in.  The @public.talk.google.com will filter out Google+ contacts (if you've enabled Google Talk for Google+ friends), but not Google Talk contacts that you've added otherwise.  You can also include any buddies who log on and off frequently.    f � g g^   f i l t e r B u d d i e s   :   D o n ' t   s h o w   e v e n t s   f r o m   f i l t e r E v e n t s   i f   t h e   h a n d l e   o r   n a m e   i n c l u d e s   o n e   o f   t h e s e   s t r i n g s .     Y o u   m a y   w a n t   t o   i n c l u d e   y o u r s e l f   h e r e ,   s o   t h a t   y o u   d o n ' t   g e t   m e s s a g e s   w h e n   y o u   l o g   i n .     T h e   @ p u b l i c . t a l k . g o o g l e . c o m   w i l l   f i l t e r   o u t   G o o g l e +   c o n t a c t s   ( i f   y o u ' v e   e n a b l e d   G o o g l e   T a l k   f o r   G o o g l e +   f r i e n d s ) ,   b u t   n o t   G o o g l e   T a l k   c o n t a c t s   t h a t   y o u ' v e   a d d e d   o t h e r w i s e .     Y o u   c a n   a l s o   i n c l u d e   a n y   b u d d i e s   w h o   l o g   o n   a n d   o f f   f r e q u e n t l y . d  h i h l     �� j k��   j  	 Example:    k � l l    E x a m p l e : i  m n m l     �� o p��   o ; 5 property filterBuddies : {"@public.talk.google.com"}    p � q q j   p r o p e r t y   f i l t e r B u d d i e s   :   { " @ p u b l i c . t a l k . g o o g l e . c o m " } n  r s r j    �� t�� 0 filterbuddies filterBuddies t J    ����   s  u v u l     ��������  ��  ��   v  w x w l     �� y z��   y � � If you're filtering certain events, you might want to turn off their sounds in iChat, and let this script play the sound if the event passes the filters.    z � { {4   I f   y o u ' r e   f i l t e r i n g   c e r t a i n   e v e n t s ,   y o u   m i g h t   w a n t   t o   t u r n   o f f   t h e i r   s o u n d s   i n   i C h a t ,   a n d   l e t   t h i s   s c r i p t   p l a y   t h e   s o u n d   i f   t h e   e v e n t   p a s s e s   t h e   f i l t e r s . x  | } | l     �� ~ ��   ~ � � The sound can be a filename, or any of the sounds built into iChat: "Buddy Logging In", "Buddy Logging Out", "File Transfer Complete", "Invitation Accepted", "Invitation", "Logged In", "Received Message", "Ringer", "Sent Message".     � � ��   T h e   s o u n d   c a n   b e   a   f i l e n a m e ,   o r   a n y   o f   t h e   s o u n d s   b u i l t   i n t o   i C h a t :   " B u d d y   L o g g i n g   I n " ,   " B u d d y   L o g g i n g   O u t " ,   " F i l e   T r a n s f e r   C o m p l e t e " ,   " I n v i t a t i o n   A c c e p t e d " ,   " I n v i t a t i o n " ,   " L o g g e d   I n " ,   " R e c e i v e d   M e s s a g e " ,   " R i n g e r " ,   " S e n t   M e s s a g e " . }  � � � l     �� � ���   �  	 Example:    � � � �    E x a m p l e : �  � � � l     �� � ���   � � � property soundList : {{event:"Buddy Became Available", sound:"Buddy Logging In"}, {event:"Buddy Became Unavailable", sound:"Buddy Logging Out"}}    � � � �"   p r o p e r t y   s o u n d L i s t   :   { { e v e n t : " B u d d y   B e c a m e   A v a i l a b l e " ,   s o u n d : " B u d d y   L o g g i n g   I n " } ,   { e v e n t : " B u d d y   B e c a m e   U n a v a i l a b l e " ,   s o u n d : " B u d d y   L o g g i n g   O u t " } } �  � � � j    �� ��� 0 	soundlist   � J    ����   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���*******************************************************
This is the end of the the straightforward configuration variables.
If you know some basic AppleScript, there's a few handlers you can put in your Growl Config.scpt to add custom actions, as follows.
(By the way: if you need to, you can use a script bundle named Growl Config.scptd instead of a normal .scpt script.)
*******************************************************    � � � �X * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 T h i s   i s   t h e   e n d   o f   t h e   t h e   s t r a i g h t f o r w a r d   c o n f i g u r a t i o n   v a r i a b l e s . 
 I f   y o u   k n o w   s o m e   b a s i c   A p p l e S c r i p t ,   t h e r e ' s   a   f e w   h a n d l e r s   y o u   c a n   p u t   i n   y o u r   G r o w l   C o n f i g . s c p t   t o   a d d   c u s t o m   a c t i o n s ,   a s   f o l l o w s . 
 ( B y   t h e   w a y :   i f   y o u   n e e d   t o ,   y o u   c a n   u s e   a   s c r i p t   b u n d l e   n a m e d   G r o w l   C o n f i g . s c p t d   i n s t e a d   o f   a   n o r m a l   . s c p t   s c r i p t . ) 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � We avoid using terms from iChat or Growl in the parameter names here, so that the user's config file doesn't need a "using terms from" section.  (Terms from AppleScript are fine, even if they're also in iChat or Growl.  That's why we can use "title".)    � � � ��   W e   a v o i d   u s i n g   t e r m s   f r o m   i C h a t   o r   G r o w l   i n   t h e   p a r a m e t e r   n a m e s   h e r e ,   s o   t h a t   t h e   u s e r ' s   c o n f i g   f i l e   d o e s n ' t   n e e d   a   " u s i n g   t e r m s   f r o m "   s e c t i o n .     ( T e r m s   f r o m   A p p l e S c r i p t   a r e   f i n e ,   e v e n   i f   t h e y ' r e   a l s o   i n   i C h a t   o r   G r o w l .     T h a t ' s   w h y   w e   c a n   u s e   " t i t l e " . ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � m g loadedConfig is sent right after the config file is loaded, to give it a chance to initialize globals.    � � � � �   l o a d e d C o n f i g   i s   s e n t   r i g h t   a f t e r   t h e   c o n f i g   f i l e   i s   l o a d e d ,   t o   g i v e   i t   a   c h a n c e   t o   i n i t i a l i z e   g l o b a l s . �  � � � i     ��� � I      �������� 0 loadedconfig loadedConfig��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � x r readyToNotify is called before notifications for an event, regardless of whether an event is filtered out or not.    � � � � �   r e a d y T o N o t i f y   i s   c a l l e d   b e f o r e   n o t i f i c a t i o n s   f o r   a n   e v e n t ,   r e g a r d l e s s   o f   w h e t h e r   a n   e v e n t   i s   f i l t e r e d   o u t   o r   n o t . �  � � � i     ��� � I      ���� ��� 0 readytonotify readyToNotify��   � �� � �
�� 
for  � o      ���� 0 thegrowltext theGrowlText � �� � �
�� 
from � o      ���� 0 thebuddy theBuddy � �� � �
�� 
outo � o      ����  0 growleventname growlEventName � �� ����� 0 showingstatus showingStatus � o      ���� 0 showingstatus showingStatus��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � willNotify and didNotify are called before and after playing sounds or showing growls.  They are not called if an event is filtered out, or if the chat window for the buddy is frontmost.    � � � �v   w i l l N o t i f y   a n d   d i d N o t i f y   a r e   c a l l e d   b e f o r e   a n d   a f t e r   p l a y i n g   s o u n d s   o r   s h o w i n g   g r o w l s .     T h e y   a r e   n o t   c a l l e d   i f   a n   e v e n t   i s   f i l t e r e d   o u t ,   o r   i f   t h e   c h a t   w i n d o w   f o r   t h e   b u d d y   i s   f r o n t m o s t . �  � � � i     ��� � I      ���� ��� 0 
willnotify 
willNotify��   � �� � �
�� 
for  � o      ���� 0 thegrowltext theGrowlText � �� � �
�� 
from � o      ���� 0 thebuddy theBuddy � �� � �
�� 
outo � o      ����  0 growleventname growlEventName � �� � ��� 	0 title   � o      ���� 0 thetitle theTitle � �� � ��� 0 icon   � o      ���� 0 theicon theIcon � �� ����� 0 showingstatus showingStatus � o      ���� 0 showingstatus showingStatus��  ��   �  � � � i     # ��� � I      ���� ��� 0 	didnotify 	didNotify��   � �� � �
�� 
for  � o      ���� 0 thegrowltext theGrowlText � �� � �
�� 
from � o      ���� 0 thebuddy theBuddy � �� � �
�� 
outo � o      ����  0 growleventname growlEventName � �� � ��� 	0 title   � o      ���� 0 thetitle theTitle � �� � ��� 0 icon   � o      ���� 0 theicon theIcon � �� ����� 0 showingstatus showingStatus � o      ���� 0 showingstatus showingStatus��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �0* willGrowl and didGrowl are called right before and after showing a Growl notification.  If a Growl won't be sent (because it's been filtered out, or because Growl isn't running), then they are not called.  (If you turn off Growls for iChat in the Growl preferences, these are still called anyway.)    � � � �T   w i l l G r o w l   a n d   d i d G r o w l   a r e   c a l l e d   r i g h t   b e f o r e   a n d   a f t e r   s h o w i n g   a   G r o w l   n o t i f i c a t i o n .     I f   a   G r o w l   w o n ' t   b e   s e n t   ( b e c a u s e   i t ' s   b e e n   f i l t e r e d   o u t ,   o r   b e c a u s e   G r o w l   i s n ' t   r u n n i n g ) ,   t h e n   t h e y   a r e   n o t   c a l l e d .     ( I f   y o u   t u r n   o f f   G r o w l s   f o r   i C h a t   i n   t h e   G r o w l   p r e f e r e n c e s ,   t h e s e   a r e   s t i l l   c a l l e d   a n y w a y . ) �  � � � i   $ ' ��� � I      ���� ��� 0 	willgrowl 	willGrowl��   � �� � �
�� 
for  � o      ���� 0 thegrowltext theGrowlText � �� � �
�� 
from � o      ���� 0 thebuddy theBuddy � �� � �
�� 
outo � o      ����  0 growleventname growlEventName � �� � ��� 	0 title   � o      �� 0 thetitle theTitle � �~ � ��~ 0 icon   � o      �}�} 0 theicon theIcon � �| ��{�| 0 showingstatus showingStatus � o      �z�z 0 showingstatus showingStatus�{  ��   �  � � � i   ( + ��y � I      �x�w ��x 0 didgrowl didGrowl�w   � �v � �
�v 
for  � o      �u�u 0 thegrowltext theGrowlText � �t � �
�t 
from � o      �s�s 0 thebuddy theBuddy � �r � �
�r 
outo � o      �q�q  0 growleventname growlEventName � �p � ��p 	0 title   � o      �o�o 0 thetitle theTitle � �n � �n 0 icon   � o      �m�m 0 theicon theIcon  �l�k�l 0 showingstatus showingStatus o      �j�j 0 showingstatus showingStatus�k  �y   �  l     �i�h�g�i  �h  �g    l     �f�f   X R willPlaySound and didPlaySound are called right before and after playing a sound.    � �   w i l l P l a y S o u n d   a n d   d i d P l a y S o u n d   a r e   c a l l e d   r i g h t   b e f o r e   a n d   a f t e r   p l a y i n g   a   s o u n d . 	
	 i   , /�e I      �d�c�d 0 willplaysound willPlaySound�c   �b
�b 
for  o      �a�a 0 thegrowltext theGrowlText �`
�` 
from o      �_�_ 0 thebuddy theBuddy �^
�^ 
outo o      �]�]  0 growleventname growlEventName �\�\ 	0 title   o      �[�[ 0 thetitle theTitle �Z�Z 0 icon   o      �Y�Y 0 theicon theIcon �X�W�X 0 showingstatus showingStatus o      �V�V 0 showingstatus showingStatus�W  �e  
  i   0 3�U I      �T�S�T 0 didplaysound didPlaySound�S   �R
�R 
for  o      �Q�Q 0 thegrowltext theGrowlText �P
�P 
from o      �O�O 0 thebuddy theBuddy �N !
�N 
outo  o      �M�M  0 growleventname growlEventName! �L"#�L 	0 title  " o      �K�K 0 thetitle theTitle# �J$%�J 0 icon  $ o      �I�I 0 theicon theIcon% �H&�G�H 0 showingstatus showingStatus& o      �F�F 0 showingstatus showingStatus�G  �U   '(' l     �E�D�C�E  �D  �C  ( )*) l     �B+,�B  + � � shouldNotify is called to filter events, and only notify for some events.  It must return a true or false value.  It is called after readyToNotify, but before willNotify.   , �--V   s h o u l d N o t i f y   i s   c a l l e d   t o   f i l t e r   e v e n t s ,   a n d   o n l y   n o t i f y   f o r   s o m e   e v e n t s .     I t   m u s t   r e t u r n   a   t r u e   o r   f a l s e   v a l u e .     I t   i s   c a l l e d   a f t e r   r e a d y T o N o t i f y ,   b u t   b e f o r e   w i l l N o t i f y .* ./. i   4 7010 I      �A�@2�A 0 shouldnotify shouldNotify�@  2 �?34
�? 
for 3 o      �>�> 0 thetext theText4 �=56
�= 
from5 o      �<�< 0 thebuddy theBuddy6 �;78
�; 
outo7 o      �:�:  0 growleventname growlEventName8 �99�8�9 0 showingstatus showingStatus9 o      �7�7 0 showingstatus showingStatus�8  1 k     l:: ;<; l     �6=>�6  = � � This is where filterEvents, filterAccounts, and filteredBuddies happen.  If you override this handler in your config file, then your code will need to do this if you want it to happen.   > �??r   T h i s   i s   w h e r e   f i l t e r E v e n t s ,   f i l t e r A c c o u n t s ,   a n d   f i l t e r e d B u d d i e s   h a p p e n .     I f   y o u   o v e r r i d e   t h i s   h a n d l e r   i n   y o u r   c o n f i g   f i l e ,   t h e n   y o u r   c o d e   w i l l   n e e d   t o   d o   t h i s   i f   y o u   w a n t   i t   t o   h a p p e n .< @�5@ w     lABA k    lCC DED Z    iFG�4�3F E   HIH n   	JKJ o    	�2�2 0 filterevents filterEventsK o    �1�1 
0 config  I o   	 
�0�0  0 growleventname growlEventNameG k    eLL MNM q    OO �/P�/ $0 thefilteredbuddy thefilteredBuddyP �.Q�. 0 	buddyname 	buddyNameQ �-�,�- 0 buddyhandle buddyHandle�,  N RSR Z   $TU�+�*T E   VWV n   XYX o    �)�)  0 filteraccounts filterAccountsY o    �(�( 
0 config  W l   Z�'�&Z n    [\[ 1    �%
�% 
pnam\ l   ]�$�#] n    ^_^ m    �"
�" 
icsv_ o    �!�! 0 thebuddy theBuddy�$  �#  �'  �&  U L     `` m    � 
�  boovfals�+  �*  S aba r   % *cdc n  % (efe 1   & (�
� 
pnamf o   % &�� 0 thebuddy theBuddyd o      �� 0 	buddyname 	buddyNameb ghg r   + 0iji n  + .klk 1   , .�
� 
hndll o   + ,�� 0 thebuddy theBuddyj o      �� 0 buddyhandle buddyHandleh m�m X   1 en�on k   G `pp qrq Z  G Sst��s E  G Juvu o   G H�� 0 buddyhandle buddyHandlev o   H I�� $0 thefilteredbuddy thefilteredBuddyt L   M Oww m   M N�
� boovfals�  �  r x�x Z  T `yz��y E  T W{|{ o   T U�� 0 	buddyname 	buddyName| o   U V�� $0 thefilteredbuddy thefilteredBuddyz L   Z \}} m   Z [�
� boovfals�  �  �  � $0 thefilteredbuddy thefilteredBuddyo n  4 ;~~ o   9 ;�� 0 filterbuddies filterBuddies o   4 9�� 
0 config  �  �4  �3  E ��
� L   j l�� m   j k�	
�	 boovtrue�
  B�                                                                                  fez!  alis    H  Macintosh HD               ���H+     	iChat.app                                                        ���h�        ����  	                Applications    ���      �L�         #Macintosh HD:Applications:iChat.app    	 i C h a t . a p p    M a c i n t o s h   H D  Applications/iChat.app  / ��  �5  / ��� l     ����  �  �  � ��� l      ����  � � �*******************************************************
This is the end of the configuration section.
*******************************************************   � ���: * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 T h i s   i s   t h e   e n d   o f   t h e   c o n f i g u r a t i o n   s e c t i o n . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *�    ��� l     ����  �  �  � ��� j    
� ��  0 
userconfig 
userConfig� m    	��
�� 
msng� ��� j    ����� 00 userconfiglastmodified userConfigLastModified� m    ��
�� 
msng� ��� l     ��������  ��  ��  � ��� l     ������  � � � When we're loading the user's config, we save the default config (the one in "script config" above) here, so that if a variable is removed from the user's config, we can recover the default, despite "config" being persistent.   � ����   W h e n   w e ' r e   l o a d i n g   t h e   u s e r ' s   c o n f i g ,   w e   s a v e   t h e   d e f a u l t   c o n f i g   ( t h e   o n e   i n   " s c r i p t   c o n f i g "   a b o v e )   h e r e ,   s o   t h a t   i f   a   v a r i a b l e   i s   r e m o v e d   f r o m   t h e   u s e r ' s   c o n f i g ,   w e   c a n   r e c o v e r   t h e   d e f a u l t ,   d e s p i t e   " c o n f i g "   b e i n g   p e r s i s t e n t .� ��� j    ����� 0 defaultconfig defaultConfig� m    ��
�� 
msng� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	getconfig 	getConfig� ��� o      ���� 0 cfg  � ���� o      ���� 0 default  ��  ��  � Q     ���� L    �� n   ��� 1    ��
�� 
pcnt� o    ���� 0 cfg  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      �������  � k    �� ��� l   ������  � � � Note that if the config has a parent, then this error will be number -1728 instead.  However, the mechanism I use here doesn't really work well with parented configs.   � ���N   N o t e   t h a t   i f   t h e   c o n f i g   h a s   a   p a r e n t ,   t h e n   t h i s   e r r o r   w i l l   b e   n u m b e r   - 1 7 2 8   i n s t e a d .     H o w e v e r ,   t h e   m e c h a n i s m   I   u s e   h e r e   d o e s n ' t   r e a l l y   w o r k   w e l l   w i t h   p a r e n t e d   c o n f i g s .� ���� L    �� n   ��� 1    ��
�� 
pcnt� o    ���� 0 default  ��  � ��� i    ��� I      �������� 0 
initconfig 
initConfig��  ��  � k    ��� ��� Z     ������� =    ��� o     ���� 0 defaultconfig defaultConfig� m    ��
�� 
msng� r   
 ��� o   
 ���� 
0 config  � o      ���� 0 defaultconfig defaultConfig��  ��  � ��� l   ��������  ��  ��  � ��� r    '��� l   %������ l   %������ I   %����
�� .earsffdralis        afdr� l   ������ m    ��
�� afdrdlib��  ��  � ����
�� 
from� l   ������ m    ��
�� fldmfldu��  ��  � ����
�� 
rtyp� m    ��
�� 
ctxt� �����
�� 
crfl� m     !��
�� boovfals��  ��  ��  ��  ��  � o      ���� 0 userlib userLib� ��� l  ( (������  � � � We can't use "load script" on .applescript (uncompiled) files, only .scpt and .scptd files.  We actually can also use .app files, but I don't think that would be a great idea here.   � ���j   W e   c a n ' t   u s e   " l o a d   s c r i p t "   o n   . a p p l e s c r i p t   ( u n c o m p i l e d )   f i l e s ,   o n l y   . s c p t   a n d   . s c p t d   f i l e s .     W e   a c t u a l l y   c a n   a l s o   u s e   . a p p   f i l e s ,   b u t   I   d o n ' t   t h i n k   t h a t   w o u l d   b e   a   g r e a t   i d e a   h e r e .� ��� r   ( +��� m   ( )��
�� 
null� o      ����  0 newconfigalias newConfigAlias� ��� X   , b����� k   ? ]�� ��� r   ? F��� b   ? D��� b   ? B��� o   ? @���� 0 userlib userLib� m   @ A�� ��� 6 S c r i p t s : i C h a t : G r o w l   C o n f i g .� o   B C���� 0 	extension  � o      ���� 0 
configpath 
configPath� ���� Q   G ]���� k   J T�� ��� r   J R��� l  J P������ 4   J P���
�� 
alis� o   N O���� 0 
configpath 
configPath��  ��  � o      ����  0 newconfigalias newConfigAlias� ����  S   S T��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� +��  � l  \ \������  �   Try the next extension   � ��� .   T r y   t h e   n e x t   e x t e n s i o n��  �� 0 	extension  � J   / 3��    m   / 0 �  s c p t �� m   0 1 � 
 s c p t d��  �  Z   c �	
����	 =  c f o   c d����  0 newconfigalias newConfigAlias m   d e��
�� 
null
 k   i   I  i p����
�� .ascrcmnt****      � **** m   i l �  N o   c o n f i g   f i l e��    r   q | o   q v���� 0 defaultconfig defaultConfig o      ���� 
0 config   �� L   } ����  ��  ��  ��    l  � ���������  ��  ��    r   � � l  � ����� n   � �  1   � ���
�� 
asmo  l  � �!����! I  � ���"��
�� .sysonfo4asfe        file" o   � �����  0 newconfigalias newConfigAlias��  ��  ��  ��  ��   o      ���� :0 newconfigscriptlastmodified newConfigScriptLastModified #$# Z   � �%&����% =   � �'(' o   � ����� :0 newconfigscriptlastmodified newConfigScriptLastModified( o   � ����� 00 userconfiglastmodified userConfigLastModified& k   � �)) *+* l  � ���,-��  , 5 / The script we've loaded is the latest version.   - �.. ^   T h e   s c r i p t   w e ' v e   l o a d e d   i s   t h e   l a t e s t   v e r s i o n .+ /0/ I  � ���1��
�� .ascrcmnt****      � ****1 m   � �22 �33 " C o n f i g   i s   c u r r e n t��  0 4��4 L   � �����  ��  ��  ��  $ 565 I  � ���7��
�� .ascrcmnt****      � ****7 m   � �88 �99 & L o a d i n g   c o n f i g   f i l e��  6 :;: I  � ���<��
�� .sysoloadscpt        file< o   � �����  0 newconfigalias newConfigAlias��  ; =>= r   � �?@? l  � �A����A 1   � ���
�� 
rslt��  ��  @ o      ���� 0 
userconfig 
userConfig> BCB r   � �DED o   � ����� :0 newconfigscriptlastmodified newConfigScriptLastModifiedE o      ���� 00 userconfiglastmodified userConfigLastModifiedC FGF l  � ���HI��  H � � All these go through references, because it prevents us from getting an error immediately if they're not in the user's config file.  Instead, the error is raised when we dereference it in getConfig, where we have a handler.   I �JJ�   A l l   t h e s e   g o   t h r o u g h   r e f e r e n c e s ,   b e c a u s e   i t   p r e v e n t s   u s   f r o m   g e t t i n g   a n   e r r o r   i m m e d i a t e l y   i f   t h e y ' r e   n o t   i n   t h e   u s e r ' s   c o n f i g   f i l e .     I n s t e a d ,   t h e   e r r o r   i s   r a i s e d   w h e n   w e   d e r e f e r e n c e   i t   i n   g e t C o n f i g ,   w h e r e   w e   h a v e   a   h a n d l e r .G KLK l  � ���MN��  M � { Sadly, the AppleScript compiler will eliminate any � continuations inside the record literal, so this is all run together.   N �OO �   S a d l y ,   t h e   A p p l e S c r i p t   c o m p i l e r   w i l l   e l i m i n a t e   a n y   �   c o n t i n u a t i o n s   i n s i d e   t h e   r e c o r d   l i t e r a l ,   s o   t h i s   i s   a l l   r u n   t o g e t h e r .L PQP r   � �RSR I   � ���T���� 0 	getconfig 	getConfigT UVU N   � �WW n  � �XYX o   � ����� 0 
autoaccept 
autoAcceptY o   � ����� 0 
userconfig 
userConfigV Z��Z n  � �[\[ o   � ��� 0 
autoaccept 
autoAccept\ o   � ��~�~ 0 defaultconfig defaultConfig��  ��  S n     ]^] o   � ��}�} 0 
autoaccept 
autoAccept^ o   � ��|�| 
0 config  Q _`_ r   �aba I   ��{c�z�{ 0 	getconfig 	getConfigc ded N   � �ff n  � �ghg o   � ��y�y 0 filterevents filterEventsh o   � ��x�x 0 
userconfig 
userConfige i�wi n  � jkj o   � �v�v 0 filterevents filterEventsk o   � ��u�u 0 defaultconfig defaultConfig�w  �z  b n     lml o  	�t�t 0 filterevents filterEventsm o  	�s�s 
0 config  ` non r  1pqp I  '�rr�q�r 0 	getconfig 	getConfigr sts N  uu n vwv o  �p�p  0 filteraccounts filterAccountsw o  �o�o 0 
userconfig 
userConfigt x�nx n #yzy o  #�m�m  0 filteraccounts filterAccountsz o  �l�l 0 defaultconfig defaultConfig�n  �q  q n     {|{ o  ,0�k�k  0 filteraccounts filterAccounts| o  ',�j�j 
0 config  o }~} r  2T� I  2J�i��h�i 0 	getconfig 	getConfig� ��� N  3=�� n 3<��� o  8<�g�g 0 filterbuddies filterBuddies� o  38�f�f 0 
userconfig 
userConfig� ��e� n =F��� o  BF�d�d 0 filterbuddies filterBuddies� o  =B�c�c 0 defaultconfig defaultConfig�e  �h  � n     ��� o  OS�b�b 0 filterbuddies filterBuddies� o  JO�a�a 
0 config  ~ ��� r  Uw��� I  Um�`��_�` 0 	getconfig 	getConfig� ��� N  V`�� n V_��� o  [_�^�^ 0 	soundlist  � o  V[�]�] 0 
userconfig 
userConfig� ��\� n `i��� o  ei�[�[ 0 	soundlist  � o  `e�Z�Z 0 defaultconfig defaultConfig�\  �_  � n     ��� o  rv�Y�Y 0 	soundlist  � o  mr�X�X 
0 config  � ��� r  x���� I  x��W��V�W 0 	getconfig 	getConfig� ��� N  y��� n y���� o  ~��U�U 0 loadedconfig loadedConfig� o  y~�T�T 0 
userconfig 
userConfig� ��S� n ����� o  ���R�R 0 loadedconfig loadedConfig� o  ���Q�Q 0 defaultconfig defaultConfig�S  �V  � n     ��� o  ���P�P 0 loadedconfig loadedConfig� o  ���O�O 
0 config  � ��� r  ����� I  ���N��M�N 0 	getconfig 	getConfig� ��� N  ���� n ����� o  ���L�L 0 readytonotify readyToNotify� o  ���K�K 0 
userconfig 
userConfig� ��J� n ����� o  ���I�I 0 readytonotify readyToNotify� o  ���H�H 0 defaultconfig defaultConfig�J  �M  � n     ��� o  ���G�G 0 readytonotify readyToNotify� o  ���F�F 
0 config  � ��� r  ����� I  ���E��D�E 0 	getconfig 	getConfig� ��� N  ���� n ����� o  ���C�C 0 
willnotify 
willNotify� o  ���B�B 0 
userconfig 
userConfig� ��A� n ����� o  ���@�@ 0 
willnotify 
willNotify� o  ���?�? 0 defaultconfig defaultConfig�A  �D  � n     ��� o  ���>�> 0 
willnotify 
willNotify� o  ���=�= 
0 config  � ��� r  ���� I  ���<��;�< 0 	getconfig 	getConfig� ��� N  ���� n ����� o  ���:�: 0 	didnotify 	didNotify� o  ���9�9 0 
userconfig 
userConfig� ��8� n ����� o  ���7�7 0 	didnotify 	didNotify� o  ���6�6 0 defaultconfig defaultConfig�8  �;  � n     ��� o  ��5�5 0 	didnotify 	didNotify� o  ���4�4 
0 config  � ��� r  &��� I  �3��2�3 0 	getconfig 	getConfig� ��� N  �� n ��� o  
�1�1 0 	willgrowl 	willGrowl� o  
�0�0 0 
userconfig 
userConfig� ��/� n ��� o  �.�. 0 	willgrowl 	willGrowl� o  �-�- 0 defaultconfig defaultConfig�/  �2  � n     ��� o  !%�,�, 0 	willgrowl 	willGrowl� o  !�+�+ 
0 config  � ��� r  'I��� I  '?�*��)�* 0 	getconfig 	getConfig� ��� N  (2�� n (1��� o  -1�(�( 0 didgrowl didGrowl� o  (-�'�' 0 
userconfig 
userConfig� ��&� n 2;��� o  7;�%�% 0 didgrowl didGrowl� o  27�$�$ 0 defaultconfig defaultConfig�&  �)  � n     ��� o  DH�#�# 0 didgrowl didGrowl� o  ?D�"�" 
0 config  � ��� r  Jl��� I  Jb�!�� �! 0 	getconfig 	getConfig� ��� N  KU�� n KT��� o  PT�� 0 willplaysound willPlaySound� o  KP�� 0 
userconfig 
userConfig� ��� n U^   o  Z^�� 0 	willgrowl 	willGrowl o  UZ�� 0 defaultconfig defaultConfig�  �   � n      o  gk�� 0 willplaysound willPlaySound o  bg�� 
0 config  �  r  m� I  m���� 0 	getconfig 	getConfig 	
	 N  nx n nw o  sw�� 0 didplaysound didPlaySound o  ns�� 0 
userconfig 
userConfig
 � n x� o  }��� 0 didplaysound didPlaySound o  x}�� 0 defaultconfig defaultConfig�  �   n      o  ���� 0 didplaysound didPlaySound o  ���� 
0 config    r  �� I  ����� 0 	getconfig 	getConfig  N  �� n �� o  ���� 0 shouldnotify shouldNotify o  ���� 0 
userconfig 
userConfig � n �� o  ���
�
 0 shouldnotify shouldNotify o  ���	�	 0 defaultconfig defaultConfig�  �   n      !  o  ���� 0 shouldnotify shouldNotify! o  ���� 
0 config   "#" n ��$%$ I  ������ 0 loadedconfig loadedConfig�  �  % o  ���� 
0 config  # &�& L  ��'' o  ���� 
0 config  �  � ()( l     � �����   ��  ��  ) *+* l     ��,-��  , y s Play a sound file, specified by its POSIX path.  The file can be any format that Core Audio or QuickTime supports.   - �.. �   P l a y   a   s o u n d   f i l e ,   s p e c i f i e d   b y   i t s   P O S I X   p a t h .     T h e   f i l e   c a n   b e   a n y   f o r m a t   t h a t   C o r e   A u d i o   o r   Q u i c k T i m e   s u p p o r t s .+ /0/ i    121 I      ����3�� 0 playsoundfile playSoundFile��  3 ��4��
�� 
from4 o      ���� 0 	soundpath 	soundPath��  2 k     55 676 l     ��89��  8^X Yes, this is ridiculous.  AppleScript doesn't provide a way to play a sound file.  AppKit gives us NSSound, but of course it isn't accessible to AppleScript.  It's possible with AppleScriptObjC, but that's only available in AppleScript applications, not in scripts.  This has to be a script (not an application) for iChat to be able to run it.   9 �::�   Y e s ,   t h i s   i s   r i d i c u l o u s .     A p p l e S c r i p t   d o e s n ' t   p r o v i d e   a   w a y   t o   p l a y   a   s o u n d   f i l e .     A p p K i t   g i v e s   u s   N S S o u n d ,   b u t   o f   c o u r s e   i t   i s n ' t   a c c e s s i b l e   t o   A p p l e S c r i p t .     I t ' s   p o s s i b l e   w i t h   A p p l e S c r i p t O b j C ,   b u t   t h a t ' s   o n l y   a v a i l a b l e   i n   A p p l e S c r i p t   a p p l i c a t i o n s ,   n o t   i n   s c r i p t s .     T h i s   h a s   t o   b e   a   s c r i p t   ( n o t   a n   a p p l i c a t i o n )   f o r   i C h a t   t o   b e   a b l e   t o   r u n   i t .7 ;��; I    ��<��
�� .sysoexecTEXT���     TEXT< b     =>= b     ?@? m     AA �BB> p y t h o n   - c   ' i m p o r t   s y s ,   t i m e ,   A p p K i t ;   s = A p p K i t . N S S o u n d   . a l l o c ( )   . i n i t W i t h C o n t e n t s O f F i l e _ b y R e f e r e n c e _ ( s y s . a r g v [ 1 ] ,   T r u e ) ;   s . p l a y ( )   a n d   t i m e . s l e e p ( s . d u r a t i o n ( ) ) '  @ l   C����C n    DED 1    ��
�� 
strqE o    ���� 0 	soundpath 	soundPath��  ��  > m    FF �GG    & > / d e v / n u l l &��  ��  0 HIH l     ��JK��  J � � Play a sound.  The soundName can be an alias, a POSIX path, or text that is the name of a sound built into iChat (e.g., "Buddy Logging In").   K �LL   P l a y   a   s o u n d .     T h e   s o u n d N a m e   c a n   b e   a n   a l i a s ,   a   P O S I X   p a t h ,   o r   t e x t   t h a t   i s   t h e   n a m e   o f   a   s o u n d   b u i l t   i n t o   i C h a t   ( e . g . ,   " B u d d y   L o g g i n g   I n " ) .I MNM i     OPO I      ����Q�� 0 	playsound 	playSound��  Q ��R��
�� 
fromR o      ���� 0 	soundname 	soundName��  P Z     =STUVS =    WXW l    Y����Y n     Z[Z 1    ��
�� 
pcls[ o     ���� 0 	soundname 	soundName��  ��  X m    ��
�� 
alisT I   ����\�� 0 playsoundfile playSoundFile��  \ ��]��
�� 
from] l  
 ^����^ n   
 _`_ 1    ��
�� 
psxp` o   
 ���� 0 	soundname 	soundName��  ��  ��  U aba C    cdc o    ���� 0 	soundname 	soundNamed m    ee �ff  /b g��g I   !����h�� 0 playsoundfile playSoundFile��  h ��i��
�� 
fromi o    ���� 0 	soundname 	soundName��  ��  V k   $ =jj klk q   $ $mm ��n�� 0 soundfilename soundFilenamen ������ 0 
soundalias 
soundAlias��  l opo r   $ )qrq b   $ 'sts o   $ %���� 0 	soundname 	soundNamet m   % &uu �vv 
 . a i f fr o      ���� 0 soundfilename soundFilenamep wxw r   * 3yzy l  * 1{����{ I  * 1��|}
�� .sysorpthalis        TEXT| o   * +���� 0 soundfilename soundFilename} ��~��
�� 
in B~ l  , -���� m   , -���                                                                                  fez!  alis    H  Macintosh HD               ���H+     	iChat.app                                                        ���h�        ����  	                Applications    ���      �L�         #Macintosh HD:Applications:iChat.app    	 i C h a t . a p p    M a c i n t o s h   H D  Applications/iChat.app  / ��  ��  ��  ��  ��  ��  z o      ���� 0 
soundalias 
soundAliasx ���� I  4 =������� 0 playsoundfile playSoundFile��  � �����
�� 
from� n  6 9��� 1   7 9��
�� 
psxp� o   6 7���� 0 
soundalias 
soundAlias��  ��  N ��� l     ��������  ��  ��  � ��� w      ��� k      �� ��� i   ! $��� I      ������ 	0 growl  � o      ���� 0 thetext theText� ����
�� 
from� o      ���� 0 thebuddy theBuddy� ����
�� 
for � o      ���� 0 theevent theEvent� ������� 0 showingstatus showingStatus� o      ���� 0 showingstatus showingStatus��  � k    ��� ��� q      �� ����� 0 	buddyname 	buddyName� ������ 0 	buddyicon 	buddyIcon��  � ��� q      �� ����� 0 thetitle theTitle� ������  0 thedescription theDescription��  � ��� l     ��������  ��  ��  � ��� I     �������� 0 
initconfig 
initConfig��  ��  � ��� l   ��������  ��  ��  � ��� l   ������  � � � You could actually combine readyToNotify with shouldNotify.  They're separate because the default shouldNotify has useful code that the user might want to keep when overriding readyToNotify.   � ���~   Y o u   c o u l d   a c t u a l l y   c o m b i n e   r e a d y T o N o t i f y   w i t h   s h o u l d N o t i f y .     T h e y ' r e   s e p a r a t e   b e c a u s e   t h e   d e f a u l t   s h o u l d N o t i f y   h a s   u s e f u l   c o d e   t h a t   t h e   u s e r   m i g h t   w a n t   t o   k e e p   w h e n   o v e r r i d i n g   r e a d y T o N o t i f y .� ��� I   ������ 0 readytonotify readyToNotify� o    ���� 
0 config  � ����
�� 
for � o    ���� 0 thetext theText� ����
�� 
from� o    ���� 0 thebuddy theBuddy� ����
�� 
outo� o    ���� 0 theevent theEvent� ������� 0 showingstatus showingStatus� o    ���� 0 showingstatus showingStatus��  � ��� l   ��������  ��  ��  � ��� I   )������ 0 shouldnotify shouldNotify� o    ���� 
0 config  � ����
�� 
for � o    ���� 0 thetext theText� ����
�� 
from� o     !���� 0 thebuddy theBuddy� ����
�� 
outo� o   " #���� 0 theevent theEvent� ������� 0 showingstatus showingStatus� o   $ %���� 0 showingstatus showingStatus��  � ��� Z   * ;������� H   * ,�� 1   * +��
�� 
rslt� k   / 7�� ��� I  / 4�����
�� .ascrcmnt****      � ****� m   / 0�� ��� N U s e r   c o n f i g   h a s   f i l t e r e d   o u t   t h i s   e v e n t��  � ���� L   5 7����  ��  ��  ��  � ��� l  < <��������  ��  ��  � ��� Z   < ������� =  < ?��� o   < =���� 0 thebuddy theBuddy� m   = >�
� 
null� k   B M�� ��� r   B E��� o   B C�~�~ 0 theevent theEvent� o      �}�} 0 thetitle theTitle� ��� r   F I��� o   F G�|�| 0 thetext theText� o      �{�{  0 thedescription theDescription� ��z� r   J M��� m   J K�y
�y 
msng� o      �x�x 0 	buddyicon 	buddyIcon�z  ��  � k   P ��� ��� r   P U��� n  P S��� 1   Q S�w
�w 
pnam� o   P Q�v�v 0 thebuddy theBuddy� o      �u�u 0 	buddyname 	buddyName� ��� r   V [��� n  V Y��� 1   W Y�t
�t 
imaA� o   V W�s�s 0 thebuddy theBuddy� o      �r�r 0 	buddyicon 	buddyIcon� ��� l  \ \�q�p�o�q  �p  �o  � ��� Z   \ ����n�� F   \ k��� o   \ ]�m�m 0 showingstatus showingStatus� >  ` g��� n  ` c��� 1   a c�l
�l 
smsg� o   ` a�k�k 0 thebuddy theBuddy� m   c f�� �    � k   n w  r   n q o   n o�j�j 0 thetext theText o      �i�i 0 thetitle theTitle �h r   r w n  r u	
	 1   s u�g
�g 
smsg
 o   r s�f�f 0 thebuddy theBuddy o      �e�e  0 thedescription theDescription�h  �n  � k   z �  r   z } o   z {�d�d 0 	buddyname 	buddyName o      �c�c 0 thetitle theTitle �b r   ~ � o   ~ �a�a 0 thetext theText o      �`�`  0 thedescription theDescription�b  �  l  � ��_�^�]�_  �^  �]    l  � ��\�\   F @ Don't do anything if we're chatting with the buddy in question.    � �   D o n ' t   d o   a n y t h i n g   i f   w e ' r e   c h a t t i n g   w i t h   t h e   b u d d y   i n   q u e s t i o n . �[ Q   � ��Z k   � �  q   � �   �Y!�Y 0 frontapp frontApp! �X�W�X 0 
windowname 
windowName�W   "#" l  � ��V$%�V  $ � � This is in a "try" because, if things aren't exactly as we're expecting (e.g., iChat is frontmost but has no windows open), we want to go ahead and growl.   % �&&6   T h i s   i s   i n   a   " t r y "   b e c a u s e ,   i f   t h i n g s   a r e n ' t   e x a c t l y   a s   w e ' r e   e x p e c t i n g   ( e . g . ,   i C h a t   i s   f r o n t m o s t   b u t   h a s   n o   w i n d o w s   o p e n ) ,   w e   w a n t   t o   g o   a h e a d   a n d   g r o w l .# '�U' Z   � �()�T�S( =  � �*+* n   � �,-, 1   � ��R
�R 
pisf- m   � �..�                                                                                  fez!  alis    H  Macintosh HD               ���H+     	iChat.app                                                        ���h�        ����  	                Applications    ���      �L�         #Macintosh HD:Applications:iChat.app    	 i C h a t . a p p    M a c i n t o s h   H D  Applications/iChat.app  / ��  + m   � ��Q
�Q boovtrue) k   � �// 010 O  � �232 r   � �454 n   � �676 1   � ��P
�P 
pnam7 4  � ��O8
�O 
cwin8 m   � ��N�N 5 o      �M�M 0 
windowname 
windowName3 m   � �99�                                                                                  fez!  alis    H  Macintosh HD               ���H+     	iChat.app                                                        ���h�        ����  	                Applications    ���      �L�         #Macintosh HD:Applications:iChat.app    	 i C h a t . a p p    M a c i n t o s h   H D  Applications/iChat.app  / ��  1 :;: l  � ��L<=�L  < � � Character id 8212 is an em dash.  We don't use a literal, because AppleScript uses Mac-Roman or UTF-16 (with a BOM), but github will show it as ISO-8859-1.  To allow both clones and web browsing to work, we use ASCII only.   = �>>�   C h a r a c t e r   i d   8 2 1 2   i s   a n   e m   d a s h .     W e   d o n ' t   u s e   a   l i t e r a l ,   b e c a u s e   A p p l e S c r i p t   u s e s   M a c - R o m a n   o r   U T F - 1 6   ( w i t h   a   B O M ) ,   b u t   g i t h u b   w i l l   s h o w   i t   a s   I S O - 8 8 5 9 - 1 .     T o   a l l o w   b o t h   c l o n e s   a n d   w e b   b r o w s i n g   t o   w o r k ,   w e   u s e   A S C I I   o n l y .; ?@? Z  � �AB�K�JA C   � �CDC o   � ��I�I 0 
windowname 
windowNameD l  � �E�H�GE b   � �FGF b   � �HIH b   � �JKJ o   � ��F�F 0 	buddyname 	buddyNameK 1   � ��E
�E 
spacI 5   � ��DL�C
�D 
cha L m   � ��B�B 
�C kfrmID  G 1   � ��A
�A 
spac�H  �G  B L   � ��@�@  �K  �J  @ M�?M Z  � �NO�>�=N D   � �PQP o   � ��<�< 0 
windowname 
windowNameQ l  � �R�;�:R b   � �STS b   � �UVU b   � �WXW 1   � ��9
�9 
spacX 5   � ��8Y�7
�8 
cha Y m   � ��6�6 
�7 kfrmID  V 1   � ��5
�5 
spacT o   � ��4�4 0 	buddyname 	buddyName�;  �:  O L   � ��3�3  �>  �=  �?  �T  �S  �U   R      �2�1�0
�2 .ascrerr ****      � ****�1  �0  �Z  �[  � Z[Z l  � ��/�.�-�/  �.  �-  [ \]\ I  ��,^_�, 0 
willnotify 
willNotify^ o   � ��+�+ 
0 config  _ �*`a
�* 
for ` o   � ��)�) 0 thetext theTexta �(bc
�( 
fromb o   � ��'�' 0 thebuddy theBuddyc �&de
�& 
outod o   � ��%�% 0 theevent theEvente �$fg�$ 	0 title  f o   �#�# 0 thetitle theTitleg �"hi�" 0 description  h o  �!�!  0 thedescription theDescriptioni � jk�  0 icon  j o  	�� 0 	buddyicon 	buddyIconk �l�� 0 showingstatus showingStatusl o  
�� 0 showingstatus showingStatus�  ] mnm l ����  �  �  n opo X  �q�rq Z  .�st��s = .5uvu n .3wxw m  /3�
� 
evntx o  ./�� 0 soundrec soundRecv o  34�� 0 theevent theEventt k  8�yy z{z I 8W�|}� 0 willplaysound willPlaySound| o  8=�� 
0 config  } �~
� 
for ~ o  >?�� 0 thetext theText ���
� 
from� o  @A�� 0 thebuddy theBuddy� ���
� 
outo� o  BC�� 0 theevent theEvent� �
���
 	0 title  � o  FG�	�	 0 thetitle theTitle� ���� 0 description  � o  JK��  0 thedescription theDescription� ���� 0 icon  � o  NO�� 0 	buddyicon 	buddyIcon� ���� 0 showingstatus showingStatus� o  PQ�� 0 showingstatus showingStatus�  { ��� I Xc�� �� 0 	playsound 	playSound�   � �����
�� 
from� n Z_��� m  [_��
�� 
snd � o  Z[���� 0 soundrec soundRec��  � ���� I d������� 0 didplaysound didPlaySound� o  di���� 
0 config  � ����
�� 
for � o  jk���� 0 thetext theText� ����
�� 
from� o  lm���� 0 thebuddy theBuddy� ����
�� 
outo� o  no���� 0 theevent theEvent� ������ 	0 title  � o  rs���� 0 thetitle theTitle� ������ 0 description  � o  vw����  0 thedescription theDescription� ������ 0 icon  � o  z{���� 0 	buddyicon 	buddyIcon� ������� 0 showingstatus showingStatus� o  |}���� 0 showingstatus showingStatus��  ��  �  �  � 0 soundrec soundRecr n ��� o  ���� 0 	soundlist  � o  ���� 
0 config  p ��� l ����������  ��  ��  � ��� l ��������  �[U The Growl development team highly recommends not sending notifications from AppleScript if the app isn't running.  I'm not sure I agree with that assessment (particularly for a script whose purpose is to growl), but I'll defer to the collected wisdom of the community.  http://growl.info/documentation/applescript-support.php#growlisrunning   � ����   T h e   G r o w l   d e v e l o p m e n t   t e a m   h i g h l y   r e c o m m e n d s   n o t   s e n d i n g   n o t i f i c a t i o n s   f r o m   A p p l e S c r i p t   i f   t h e   a p p   i s n ' t   r u n n i n g .     I ' m   n o t   s u r e   I   a g r e e   w i t h   t h a t   a s s e s s m e n t   ( p a r t i c u l a r l y   f o r   a   s c r i p t   w h o s e   p u r p o s e   i s   t o   g r o w l ) ,   b u t   I ' l l   d e f e r   t o   t h e   c o l l e c t e d   w i s d o m   o f   t h e   c o m m u n i t y .     h t t p : / / g r o w l . i n f o / d o c u m e n t a t i o n / a p p l e s c r i p t - s u p p o r t . p h p # g r o w l i s r u n n i n g� ��� l ��������  �'! We avoid talking to System Events like the sample code does, since that may take several seconds of loading.  We know the current application is running, and it's a fair bet that the current application has a fair bit of its scripting support paged in, so we mostly try to use it instead.   � ���B   W e   a v o i d   t a l k i n g   t o   S y s t e m   E v e n t s   l i k e   t h e   s a m p l e   c o d e   d o e s ,   s i n c e   t h a t   m a y   t a k e   s e v e r a l   s e c o n d s   o f   l o a d i n g .     W e   k n o w   t h e   c u r r e n t   a p p l i c a t i o n   i s   r u n n i n g ,   a n d   i t ' s   a   f a i r   b e t   t h a t   t h e   c u r r e n t   a p p l i c a t i o n   h a s   a   f a i r   b i t   o f   i t s   s c r i p t i n g   s u p p o r t   p a g e d   i n ,   s o   w e   m o s t l y   t r y   t o   u s e   i t   i n s t e a d .� ��� Z  ��������� = ����� n  ����� 1  ����
�� 
prun� 5  �������
�� 
capp� m  ���� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  � m  ����
�� boovtrue� k  ���� ��� l ����������  ��  ��  � ��� I �������� 0 	willgrowl 	willGrowl� o  ������ 
0 config  � ����
�� 
for � o  ������  0 thedescription theDescription� ����
�� 
from� o  ������ 0 thebuddy theBuddy� ����
�� 
outo� o  ������ 0 theevent theEvent� ������ 	0 title  � o  ������ 0 thetitle theTitle� ������ 0 	eventname 	eventName� o  ������ 0 theevent theEvent� ������ 0 icon  � o  ������ 0 	buddyicon 	buddyIcon� ������� 0 showingstatus showingStatus� o  ������ 0 showingstatus showingStatus��  � ��� l ����������  ��  ��  � ��� l ��������  � � � We use the application id here instead of the name because the application name changed in Growl 1.3, so this works with both.	   � ���    W e   u s e   t h e   a p p l i c a t i o n   i d   h e r e   i n s t e a d   o f   t h e   n a m e   b e c a u s e   t h e   a p p l i c a t i o n   n a m e   c h a n g e d   i n   G r o w l   1 . 3 ,   s o   t h i s   w o r k s   w i t h   b o t h . 	� ��� O  �h��� k  �g�� ��� q  ���� ����� ,0 allnotificationslist allNotificationsList� ������ 40 enablednotificationslist enabledNotificationsList��  � ��� r  ���� J  �	�� ��� m  ���� ���  L o g i n   F i n i s h e d� ��� m  ���� ���  L o g o u t   F i n i s h e d� ��� m  ���� ��� , B u d d y   B e c a m e   A v a i l a b l e� ��� m  ���� ��� 0 B u d d y   B e c a m e   U n a v a i l a b l e� ��� m  ���� ��� : B u d d y   A u t h o r i z a t i o n   R e q u e s t e d� ��� m  ���� ��� 4 C h a t   R o o m   M e s s a g e   R e c e i v e d� ��� m  ���� ���   M e s s a g e   R e c e i v e d� � � m  �� � 4 A d d r e s s e d   M e s s a g e   R e c e i v e d   m  �� �  M e s s a g e   S e n t  m  ��		 �

 0 R e c e i v e d   T e x t   I n v i t a t i o n  m  �� � 2 R e c e i v e d   A u d i o   I n v i t a t i o n  m  �� � 2 R e c e i v e d   V i d e o   I n v i t a t i o n  m  �� � P R e c e i v e d   L o c a l   S c r e e n   S h a r i n g   I n v i t a t i o n  m  �� � R R e c e i v e d   R e m o t e   S c r e e n   S h a r i n g   I n v i t a t i o n  m  �� �   A / V   C h a t   S t a r t e d   m  ��!! �""  A / V   C h a t   E n d e d  #$# m  �%% �&& B R e c e i v e d   F i l e   T r a n s f e r   I n v i t a t i o n$ '��' m  (( �)) . C o m p l e t e d   F i l e   T r a n s f e r��  � l     *����* o      ���� ,0 allnotificationslist allNotificationsList��  ��  � +,+ l ��-.��  - � � Since the script has to be manually enabled for each event in iChat, we tell Growl to enable us on all notifications.  There's no point in filtering both in iChat and in Growl.   . �//b   S i n c e   t h e   s c r i p t   h a s   t o   b e   m a n u a l l y   e n a b l e d   f o r   e a c h   e v e n t   i n   i C h a t ,   w e   t e l l   G r o w l   t o   e n a b l e   u s   o n   a l l   n o t i f i c a t i o n s .     T h e r e ' s   n o   p o i n t   i n   f i l t e r i n g   b o t h   i n   i C h a t   a n d   i n   G r o w l ., 010 r  232 o  ���� ,0 allnotificationslist allNotificationsList3 l     4����4 o      ���� 40 enablednotificationslist enabledNotificationsList��  ��  1 565 I )����7
�� .registernull��� ��� null��  7 ��89
�� 
appl8 m  :: �;; . i C h a t   G r o w l   A p p l e S c r i p t9 ��<=
�� 
anot< o  ���� ,0 allnotificationslist allNotificationsList= ��>?
�� 
dnot> o  ���� 40 enablednotificationslist enabledNotificationsList? ��@��
�� 
iapp@ m  "%AA �BB 
 i C h a t��  6 C��C Z  *gDE��FD = *-GHG o  *+���� 0 	buddyicon 	buddyIconH m  +,��
�� 
msngE I 0G����I
�� .notifygrnull��� ��� null��  I ��JK
�� 
nameJ o  45���� 0 theevent theEventK ��LM
�� 
titlL o  89���� 0 thetitle theTitleM ��NO
�� 
descN o  <=����  0 thedescription theDescriptionO ��P��
�� 
applP m  @CQQ �RR . i C h a t   G r o w l   A p p l e S c r i p t��  ��  F I Jg����S
�� .notifygrnull��� ��� null��  S ��TU
�� 
nameT o  NO���� 0 theevent theEventU ��VW
�� 
titlV o  RS���� 0 thetitle theTitleW ��XY
�� 
descX o  VW����  0 thedescription theDescriptionY ��Z[
�� 
applZ m  Z]\\ �]] . i C h a t   G r o w l   A p p l e S c r i p t[ ��^��
�� 
imag^ o  `a���� 0 	buddyicon 	buddyIcon��  ��  � 5  ����_��
�� 
capp_ m  ��`` �aa 0 c o m . G r o w l . G r o w l H e l p e r A p p
�� kfrmID  � bcb l ii��������  ��  ��  c d��d I i���ef�� 0 didgrowl didGrowle o  in���� 
0 config  f ��gh
�� 
for g o  op����  0 thedescription theDescriptionh ��ij
�� 
fromi o  qr���� 0 thebuddy theBuddyj ��kl
�� 
outok o  st���� 0 theevent theEventl ��mn�� 	0 title  m o  wx���� 0 thetitle theTitlen ��op�� 0 	eventname 	eventNameo o  {|���� 0 theevent theEventp ��qr�� 0 icon  q o  ����� 0 	buddyicon 	buddyIconr ��s���� 0 showingstatus showingStatuss o  ���� 0 showingstatus showingStatus��  ��  ��  ��  � tut l ���~�}�|�~  �}  �|  u vwv I ���{xy�{ 0 	didnotify 	didNotifyx o  ���z�z 
0 config  y �yz{
�y 
for z o  ���x�x 0 thetext theText{ �w|}
�w 
from| o  ���v�v 0 thebuddy theBuddy} �u~
�u 
outo~ o  ���t�t 0 theevent theEvent �s���s 	0 title  � o  ���r�r 0 thetitle theTitle� �q���q 0 description  � o  ���p�p  0 thedescription theDescription� �o���o 0 icon  � o  ���n�n 0 	buddyicon 	buddyIcon� �m��l�m 0 showingstatus showingStatus� o  ���k�k 0 showingstatus showingStatus�l  w ��j� l ���i�h�g�i  �h  �g  �j  � ��� l     �f�e�d�f  �e  �d  � ��� i   % (��� I     �c�b�
�c .ichthe00null��� ��� null�b  � �a��`
�a 
heac� o      �_�_ 0 
theservice 
theService�`  � I    �^���^ 	0 growl  � l    ��]�\� b     ��� n    ��� 1    �[
�[ 
pnam� o     �Z�Z 0 
theservice 
theService� m    �� ���    l o g i n   f i n i s h e d�]  �\  � �Y��
�Y 
from� m    �X
�X 
null� �W��
�W 
for � m    	�� ���  L o g i n   F i n i s h e d� �V��U�V 0 showingstatus showingStatus� m   
 �T
�T boovfals�U  � ��� i   ) ,��� I     �S�R�
�S .ichthe01null��� ��� null�R  � �Q��P
�Q 
heac� o      �O�O 0 
theservice 
theService�P  � I    �N���N 	0 growl  � l    ��M�L� b     ��� n    ��� 1    �K
�K 
pnam� o     �J�J 0 
theservice 
theService� m    �� ���     l o g o u t   f i n i s h e d�M  �L  � �I��
�I 
from� m    �H
�H 
null� �G��
�G 
for � m    	�� ���  L o g o u t   F i n i s h e d� �F��E�F 0 showingstatus showingStatus� m   
 �D
�D boovfals�E  � ��� i   - 0��� I     �C��B
�C .ichthe02null���     pres� o      �A�A 0 thebuddy theBuddy�B  � I    �@���@ 	0 growl  � l    ��?�>� b     ��� n    ��� 1    �=
�= 
pnam� o     �<�< 0 thebuddy theBuddy� m    �� ��� "   b e c a m e   a v a i l a b l e�?  �>  � �;��
�; 
from� o    �:�: 0 thebuddy theBuddy� �9��
�9 
for � m    	�� ��� , B u d d y   B e c a m e   A v a i l a b l e� �8��7�8 0 showingstatus showingStatus� m   
 �6
�6 boovtrue�7  � ��� i   1 4��� I     �5��4
�5 .ichthe03null���     pres� o      �3�3 0 thebuddy theBuddy�4  � I    �2���2 	0 growl  � l    ��1�0� b     ��� n    ��� 1    �/
�/ 
pnam� o     �.�. 0 thebuddy theBuddy� m    �� ��� &   b e c a m e   u n a v a i l a b l e�1  �0  � �-��
�- 
from� o    �,�, 0 thebuddy theBuddy� �+��
�+ 
for � m    	�� ��� 0 B u d d y   B e c a m e   U n a v a i l a b l e� �*��)�* 0 showingstatus showingStatus� m   
 �(
�( boovtrue�)  � ��� i   5 8��� I     �'��&
�' .ichthe14null���     barq� o      �%�% 0 
therequest 
theRequest�&  � k     +�� ��� q      �� �$�#�$ 0 thebuddy theBuddy�#  � ��� r     ��� n    ��� m    �"
�" 
pres� o     �!�! 0 
therequest 
theRequest� o      � �  0 thebuddy theBuddy� ��� I   ���� 	0 growl  � l   ���� b    ��� n   	��� 1    	�
� 
pnam� o    �� 0 thebuddy theBuddy� m   	 
�� ��� 0   r e q u e s t e d   a u t h o r i z a t i o n�  �  � ���
� 
from� o    �� 0 thebuddy theBuddy� ���
� 
for � m    �� ��� : B u d d y   A u t h o r i z a t i o n   R e q u e s t e d� � �� 0 showingstatus showingStatus  m    �
� boovfals�  � � Z   +�� E    n    o    �� 0 
autoaccept 
autoAccept o    �� 
0 config   m     �		 & b u d d y   a u t h o r i z a t i o n I  " '�
�
� .ichtacptnull���     ****
 o   " #�� 0 
therequest 
theRequest�  �  �  �  �  i   9 < I     �
� .ichthe12null���     ctxt o      �� 0 message   �

�
 
hepr o      �	�	 0 thebuddy theBuddy ��
� 
hect o      �� 0 textchat textChat�   I    �� 	0 growl   o     �� 0 message   �
� 
from o    �� 0 thebuddy theBuddy �
� 
for  m     � 4 C h a t   R o o m   M e s s a g e   R e c e i v e d � ���  0 showingstatus showingStatus m    ��
�� boovfals��    i   = @  I     ��!"
�� .ichthe04null���     ctxt! o      ���� 0 message  " ��#$
�� 
hepr# o      ���� 0 thebuddy theBuddy$ ��%��
�� 
hect% o      ���� 0 textchat textChat��    I    ��&'�� 	0 growl  & o     ���� 0 message  ' ��()
�� 
from( o    ���� 0 thebuddy theBuddy) ��*+
�� 
for * m    ,, �--   M e s s a g e   R e c e i v e d+ ��.���� 0 showingstatus showingStatus. m    ��
�� boovfals��   /0/ l      ��12��  14.
	-- The "addressed message received" and "received remote screen sharing invitation" events conflict; I think they have the same ID by mistake.
	on addressed message received from theBuddy for textChat
		growl of message from theBuddy for "Addressed Message Received"
	end addressed message received
	   2 �33\ 
 	 - -   T h e   " a d d r e s s e d   m e s s a g e   r e c e i v e d "   a n d   " r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n "   e v e n t s   c o n f l i c t ;   I   t h i n k   t h e y   h a v e   t h e   s a m e   I D   b y   m i s t a k e . 
 	 o n   a d d r e s s e d   m e s s a g e   r e c e i v e d   f r o m   t h e B u d d y   f o r   t e x t C h a t 
 	 	 g r o w l   o f   m e s s a g e   f r o m   t h e B u d d y   f o r   " A d d r e s s e d   M e s s a g e   R e c e i v e d " 
 	 e n d   a d d r e s s e d   m e s s a g e   r e c e i v e d 
 	0 454 i   A D676 I     ��89
�� .ichthe05null���     ctxt8 o      ���� 0 message  9 ��:��
�� 
hect: o      ���� 0 textchat textChat��  7 I    ��;<�� 	0 growl  ; o     ���� 0 message  < ��=>
�� 
from= m    ��
�� 
null> ��?@
�� 
for ? m    AA �BB  M e s s a g e   S e n t@ ��C���� 0 showingstatus showingStatusC m    ��
�� boovfals��  5 DED i   E HFGF I     ��HI
�� .ichthe06null���     ctxtH o      ���� 0 message  I ��JK
�� 
heprJ o      ���� 0 thebuddy theBuddyK ��L��
�� 
hectL o      ���� 0 textchat textChat��  G k     !MM NON I    ��PQ�� 	0 growl  P o     ���� 0 message  Q ��RS
�� 
fromR o    ���� 0 thebuddy theBuddyS ��TU
�� 
for T m    VV �WW 0 R e c e i v e d   T e x t   I n v i t a t i o nU ��X���� 0 showingstatus showingStatusX m    ��
�� boovfals��  O Y��Y Z   !Z[����Z E   \]\ n   ^_^ o    ���� 0 
autoaccept 
autoAccept_ o    ���� 
0 config  ] m    `` �aa  t e x t[ I   ��b��
�� .ichtacptnull���     ****b o    ���� 0 textchat textChat��  ��  ��  ��  E cdc i   I Lefe I     ����g
�� .ichthe07null��� ��� null��  g ��hi
�� 
heprh o      ���� 0 thebuddy theBuddyi ��j��
�� 
hectj o      ���� 0 	audiochat 	audioChat��  f k     %kk lml I    ��no�� 	0 growl  n l    p����p b     qrq n    sts 1    ��
�� 
pnamt o     ���� 0 thebuddy theBuddyr m    uu �vv <   w o u l d   l i k e   t o   s p e a k   w i t h   y o u .��  ��  o ��wx
�� 
fromw o    ���� 0 thebuddy theBuddyx ��yz
�� 
for y m    	{{ �|| 2 R e c e i v e d   A u d i o   I n v i t a t i o nz ��}���� 0 showingstatus showingStatus} m   
 ��
�� boovfals��  m ~��~ Z   %����� E   ��� n   ��� o    ���� 0 
autoaccept 
autoAccept� o    ���� 
0 config  � m    �� ��� 
 a u d i o� I   !�����
�� .ichtacptnull���     ****� o    ���� 0 	audiochat 	audioChat��  ��  ��  ��  d ��� i   M P��� I     �����
�� .ichthe08null��� ��� null��  � ����
�� 
hepr� o      ���� 0 thebuddy theBuddy� �����
�� 
hect� o      ���� 0 	videochat 	videoChat��  � k     %�� ��� I    ������ 	0 growl  � l    ������ b     ��� n    ��� 1    ��
�� 
pnam� o     ���� 0 thebuddy theBuddy� m    �� ��� .   w o u l d   l i k e   t o   s e e   y o u .��  ��  � ����
�� 
from� o    ���� 0 thebuddy theBuddy� ����
�� 
for � m    	�� ��� 2 R e c e i v e d   V i d e o   I n v i t a t i o n� ������� 0 showingstatus showingStatus� m   
 ��
�� boovfals��  � ���� Z   %������� E   ��� n   ��� o    ���� 0 
autoaccept 
autoAccept� o    ���� 
0 config  � m    �� ��� 
 v i d e o� I   !�����
�� .ichtacptnull���     ****� o    ���� 0 	videochat 	videoChat��  ��  ��  ��  � ��� i   Q T��� I     �����
�� .ichthe15null��� ��� null��  � ����
�� 
hepr� o      ���� 0 thebuddy theBuddy� �����
�� 
hect� o      ���� 0 
screenchat 
screenChat��  � k     %�� ��� I    ������ 	0 growl  � l    ������ b     ��� n    ��� 1    ��
�� 
pnam� o     ���� 0 thebuddy theBuddy� m    �� ��� >   w o u l d   l i k e   t o   s e e   y o u r   s c r e e n .��  ��  � ����
�� 
from� o    ���� 0 thebuddy theBuddy� ����
�� 
for � m    	�� ��� P R e c e i v e d   L o c a l   S c r e e n   S h a r i n g   I n v i t a t i o n� ������� 0 showingstatus showingStatus� m   
 ��
�� boovfals��  � ���� Z   %������� E   ��� n   ��� o    ���� 0 
autoaccept 
autoAccept� o    �� 
0 config  � m    �� ��� ( l o c a l   s c r e e n   s h a r i n g� I   !�~��}
�~ .ichtacptnull���     ****� o    �|�| 0 
screenchat 
screenChat�}  ��  ��  ��  � ��� l      �{���{  ���
	-- The "addressed message received" and "received remote screen sharing invitation" events conflict; I think they have the same ID by mistake.
	on received remote screen sharing invitation from theBuddy for screenChat
		growl of (theBuddy's name & " would like you to see their screen.") from theBuddy for "Received Remote Screen Sharing Invitation"
		if "remote screen sharing" is in config's autoAccept then accept screenChat
	end received remote screen sharing invitation
	   � ���� 
 	 - -   T h e   " a d d r e s s e d   m e s s a g e   r e c e i v e d "   a n d   " r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n "   e v e n t s   c o n f l i c t ;   I   t h i n k   t h e y   h a v e   t h e   s a m e   I D   b y   m i s t a k e . 
 	 o n   r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n   f r o m   t h e B u d d y   f o r   s c r e e n C h a t 
 	 	 g r o w l   o f   ( t h e B u d d y ' s   n a m e   &   "   w o u l d   l i k e   y o u   t o   s e e   t h e i r   s c r e e n . " )   f r o m   t h e B u d d y   f o r   " R e c e i v e d   R e m o t e   S c r e e n   S h a r i n g   I n v i t a t i o n " 
 	 	 i f   " r e m o t e   s c r e e n   s h a r i n g "   i s   i n   c o n f i g ' s   a u t o A c c e p t   t h e n   a c c e p t   s c r e e n C h a t 
 	 e n d   r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n 
 	� ��� i   U X��� I     �z�y�x
�z .ichthe09null���     icaa�y  �x  � I    �w���w 	0 growl  � m     �� ���   A / V   C h a t   S t a r t e d� �v��
�v 
from� m    �u
�u 
null� �t��
�t 
for � m    �� ���   A / V   C h a t   S t a r t e d� �s��r�s 0 showingstatus showingStatus� m    �q
�q boovfals�r  � ��� i   Y \��� I     �p�o�n
�p .ichthe13null���     icaa�o  �n  � I    �m���m 	0 growl  � m     �� ���  A / V   C h a t   E n d e d� �l��
�l 
from� m    �k
�k 
null� �j��
�j 
for � m    �� ���  A / V   C h a t   E n d e d� �i��h�i 0 showingstatus showingStatus� m    �g
�g boovfals�h  � ��� i   ] `��� I     �f��e
�f .ichthe10null���     tnfr� o      �d�d 0 filetransfer fileTransfer�e  � k     %�� ��� I    �c���c 	0 growl  � l    ��b�a� n       1    �`
�` 
pnam o     �_�_ 0 filetransfer fileTransfer�b  �a  � �^
�^ 
from n    m    �]
�] 
pres o    �\�\ 0 filetransfer fileTransfer �[
�[ 
for  m    	 �		 B R e c e i v e d   F i l e   T r a n s f e r   I n v i t a t i o n �Z
�Y�Z 0 showingstatus showingStatus
 m   
 �X
�X boovfals�Y  � �W Z   %�V�U E    n    o    �T�T 0 
autoaccept 
autoAccept o    �S�S 
0 config   m     �  f i l e   t r a n s f e r I   !�R�Q
�R .ichtacptnull���     **** o    �P�P 0 filetransfer fileTransfer�Q  �V  �U  �W  �  i   a d I     �O�N
�O .ichthe11null���     tnfr o      �M�M 0 filetransfer fileTransfer�N   I    �L�L 	0 growl   l    �K�J n     1    �I
�I 
pnam o     �H�H 0 filetransfer fileTransfer�K  �J   �G 
�G 
from n   !"! m    �F
�F 
pres" o    �E�E 0 filetransfer fileTransfer  �D#$
�D 
for # m    	%% �&& . C o m p l e t e d   F i l e   T r a n s f e r$ �C'�B�C 0 showingstatus showingStatus' m   
 �A
�A boovfals�B   (�@( l     �?�>�=�?  �>  �=  �@  ��                                                                                  fez!  alis    H  Macintosh HD               ���H+     	iChat.app                                                        ���h�        ����  	                Applications    ���      �L�         #Macintosh HD:Applications:iChat.app    	 i C h a t . a p p    M a c i n t o s h   H D  Applications/iChat.app  / ��  � )*) l     �<�;�:�<  �;  �:  * +�9+ l      �8,-�8  ,��
-- It's convenient to have an "on run" handler during development to run test code from AppleScript Editor.  However, it appears that this handler will be called if there is an error while running the other handlers, when iChat displays the error dialog.  (It is not called for normal events.)  So don't leave it in here after you're done with debugging.
on run
	initConfig()
	set testRoutine to getConfig(a reference to userConfig's testRoutine, null)
	if testRoutine is not null then
		testRoutine()
	else
		using terms from application "iChat"
			growl of "test message" from {handle:"buddy", name:"buddy", image:missing value, service:{name:"Gmail"}} for "Buddy Became Available" without showingStatus
		end using terms from
	end if
end run
   - �..� 
 - -   I t ' s   c o n v e n i e n t   t o   h a v e   a n   " o n   r u n "   h a n d l e r   d u r i n g   d e v e l o p m e n t   t o   r u n   t e s t   c o d e   f r o m   A p p l e S c r i p t   E d i t o r .     H o w e v e r ,   i t   a p p e a r s   t h a t   t h i s   h a n d l e r   w i l l   b e   c a l l e d   i f   t h e r e   i s   a n   e r r o r   w h i l e   r u n n i n g   t h e   o t h e r   h a n d l e r s ,   w h e n   i C h a t   d i s p l a y s   t h e   e r r o r   d i a l o g .     ( I t   i s   n o t   c a l l e d   f o r   n o r m a l   e v e n t s . )     S o   d o n ' t   l e a v e   i t   i n   h e r e   a f t e r   y o u ' r e   d o n e   w i t h   d e b u g g i n g . 
 o n   r u n 
 	 i n i t C o n f i g ( ) 
 	 s e t   t e s t R o u t i n e   t o   g e t C o n f i g ( a   r e f e r e n c e   t o   u s e r C o n f i g ' s   t e s t R o u t i n e ,   n u l l ) 
 	 i f   t e s t R o u t i n e   i s   n o t   n u l l   t h e n 
 	 	 t e s t R o u t i n e ( ) 
 	 e l s e 
 	 	 u s i n g   t e r m s   f r o m   a p p l i c a t i o n   " i C h a t " 
 	 	 	 g r o w l   o f   " t e s t   m e s s a g e "   f r o m   { h a n d l e : " b u d d y " ,   n a m e : " b u d d y " ,   i m a g e : m i s s i n g   v a l u e ,   s e r v i c e : { n a m e : " G m a i l " } }   f o r   " B u d d y   B e c a m e   A v a i l a b l e "   w i t h o u t   s h o w i n g S t a t u s 
 	 	 e n d   u s i n g   t e r m s   f r o m 
 	 e n d   i f 
 e n d   r u n 
�9       �7/0�6�5�4123456789:;<=>?@ABCDE�7  / �3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������3 
0 config  �2 0 
userconfig 
userConfig�1 00 userconfiglastmodified userConfigLastModified�0 0 defaultconfig defaultConfig�/ 0 	getconfig 	getConfig�. 0 
initconfig 
initConfig�- 0 playsoundfile playSoundFile�, 0 	playsound 	playSound�+ 	0 growl  
�* .ichthe00null��� ��� null
�) .ichthe01null��� ��� null
�( .ichthe02null���     pres
�' .ichthe03null���     pres
�& .ichthe14null���     barq
�% .ichthe12null���     ctxt
�$ .ichthe04null���     ctxt
�# .ichthe05null���     ctxt
�" .ichthe06null���     ctxt
�! .ichthe07null��� ��� null
�  .ichthe08null��� ��� null
� .ichthe15null��� ��� null
� .ichthe09null���     icaa
� .ichthe13null���     icaa
� .ichthe10null���     tnfr
� .ichthe11null���     tnfr0 �   F� 
0 config  F  GHIJKLMNOPQRSTUG ��������������� 0 
autoaccept 
autoAccept� 0 filterevents filterEvents�  0 filteraccounts filterAccounts� 0 filterbuddies filterBuddies� 0 	soundlist  � 0 loadedconfig loadedConfig� 0 readytonotify readyToNotify� 0 
willnotify 
willNotify� 0 	didnotify 	didNotify� 0 	willgrowl 	willGrowl� 0 didgrowl didGrowl� 0 willplaysound willPlaySound� 0 didplaysound didPlaySound� 0 shouldnotify shouldNotifyH ��
�  �
  I �	��	  �  J ���  �  K ���  �  L ���  �  M �� ����VW��� 0 loadedconfig loadedConfig�   ��  ��  V  W  �� hN ��������XY���� 0 readytonotify readyToNotify��  ��  �� ����Z
�� 
for �� 0 thegrowltext theGrowlTextZ ����[
�� 
from�� 0 thebuddy theBuddy[ ����\
�� 
outo��  0 growleventname growlEventName\ �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  X ���������� 0 thegrowltext theGrowlText�� 0 thebuddy theBuddy��  0 growleventname growlEventName�� 0 showingstatus showingStatusY  �� hO ��������]^���� 0 
willnotify 
willNotify��  ��  �� ����_
�� 
for �� 0 thegrowltext theGrowlText_ ����`
�� 
from�� 0 thebuddy theBuddy` ����a
�� 
outo��  0 growleventname growlEventNamea ����b�� 	0 title  �� 0 thetitle theTitleb ����c�� 0 icon  �� 0 theicon theIconc �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  ] �������������� 0 thegrowltext theGrowlText�� 0 thebuddy theBuddy��  0 growleventname growlEventName�� 0 thetitle theTitle�� 0 theicon theIcon�� 0 showingstatus showingStatus^  �� hP ��������de���� 0 	didnotify 	didNotify��  ��  �� ����f
�� 
for �� 0 thegrowltext theGrowlTextf ����g
�� 
from�� 0 thebuddy theBuddyg ����h
�� 
outo��  0 growleventname growlEventNameh ����i�� 	0 title  �� 0 thetitle theTitlei ����j�� 0 icon  �� 0 theicon theIconj �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  d �������������� 0 thegrowltext theGrowlText�� 0 thebuddy theBuddy��  0 growleventname growlEventName�� 0 thetitle theTitle�� 0 theicon theIcon�� 0 showingstatus showingStatuse  �� hQ ��������kl���� 0 	willgrowl 	willGrowl��  ��  �� ����m
�� 
for �� 0 thegrowltext theGrowlTextm ����n
�� 
from�� 0 thebuddy theBuddyn ����o
�� 
outo��  0 growleventname growlEventNameo ����p�� 	0 title  �� 0 thetitle theTitlep ����q�� 0 icon  �� 0 theicon theIconq �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  k �������������� 0 thegrowltext theGrowlText�� 0 thebuddy theBuddy��  0 growleventname growlEventName�� 0 thetitle theTitle�� 0 theicon theIcon�� 0 showingstatus showingStatusl  �� hR ��������rs���� 0 didgrowl didGrowl��  ��  �� ����t
�� 
for �� 0 thegrowltext theGrowlTextt ����u
�� 
from�� 0 thebuddy theBuddyu ����v
�� 
outo��  0 growleventname growlEventNamev ����w�� 	0 title  �� 0 thetitle theTitlew ����x�� 0 icon  �� 0 theicon theIconx �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  r �������������� 0 thegrowltext theGrowlText�� 0 thebuddy theBuddy��  0 growleventname growlEventName�� 0 thetitle theTitle�� 0 theicon theIcon�� 0 showingstatus showingStatuss  �� hS ��������yz���� 0 willplaysound willPlaySound��  ��  �� ����{
�� 
for �� 0 thegrowltext theGrowlText{ ����|
�� 
from�� 0 thebuddy theBuddy| ����}
�� 
outo��  0 growleventname growlEventName} ��~~� 	0 title  �~ 0 thetitle theTitle~ �}�|�} 0 icon  �| 0 theicon theIcon �{�z�y�{ 0 showingstatus showingStatus�z 0 showingstatus showingStatus�y  y �x�w�v�u�t�s�x 0 thegrowltext theGrowlText�w 0 thebuddy theBuddy�v  0 growleventname growlEventName�u 0 thetitle theTitle�t 0 theicon theIcon�s 0 showingstatus showingStatusz  �� hT �r�q�p�o���n�r 0 didplaysound didPlaySound�q  �p  �o �m�l�
�m 
for �l 0 thegrowltext theGrowlText� �k�j�
�k 
from�j 0 thebuddy theBuddy� �i�h�
�i 
outo�h  0 growleventname growlEventName� �g�f��g 	0 title  �f 0 thetitle theTitle� �e�d��e 0 icon  �d 0 theicon theIcon� �c�b�a�c 0 showingstatus showingStatus�b 0 showingstatus showingStatus�a  � �`�_�^�]�\�[�` 0 thegrowltext theGrowlText�_ 0 thebuddy theBuddy�^  0 growleventname growlEventName�] 0 thetitle theTitle�\ 0 theicon theIcon�[ 0 showingstatus showingStatus�  �n hU �Z1�Y�X���W�Z 0 shouldnotify shouldNotify�Y  �X �V�U�
�V 
for �U 0 thetext theText� �T�S�
�T 
from�S 0 thebuddy theBuddy� �R�Q�
�R 
outo�Q  0 growleventname growlEventName� �P�O�N�P 0 showingstatus showingStatus�O 0 showingstatus showingStatus�N  � �M�L�K�J�I�H�G�M 0 thetext theText�L 0 thebuddy theBuddy�K  0 growleventname growlEventName�J 0 showingstatus showingStatus�I $0 thefilteredbuddy thefilteredBuddy�H 0 	buddyname 	buddyName�G 0 buddyhandle buddyHandle� 
B�F�E�D�C�B�A�@�?�>�F 0 filterevents filterEvents�E  0 filteraccounts filterAccounts
�D 
icsv
�C 
pnam
�B 
hndl�A 0 filterbuddies filterBuddies
�@ 
kocl
�? 
cobj
�> .corecnte****       ****�W m�Zb   �,� \b   �,��,�, fY hO��,E�O��,E�O 3b   �,[��l 	kh �� fY hO�� fY h[OY��Y hOe
�6 
msng
�5 
msng
�4 
msng1 �=��<�;���:�= 0 	getconfig 	getConfig�< �9��9 �  �8�7�8 0 cfg  �7 0 default  �;  � �6�5�6 0 cfg  �5 0 default  � �4�3�
�4 
pcnt�3  � �2�1�0
�2 
errn�1�\�0  �:  
��,EW X  ��,E2 �/��.�-���,�/ 0 
initconfig 
initConfig�.  �-  � �+�*�)�(�'�+ 0 userlib userLib�*  0 newconfigalias newConfigAlias�) 0 	extension  �( 0 
configpath 
configPath�' :0 newconfigscriptlastmodified newConfigScriptLastModified� *�&�%�$�#�"�!� �������������28�����������
�	�����
�& 
msng
�% afdrdlib
�$ 
from
�# fldmfldu
�" 
rtyp
�! 
ctxt
�  
crfl� 
� .earsffdralis        afdr
� 
null
� 
kocl
� 
cobj
� .corecnte****       ****
� 
alis�  � ���
� 
errn����  
� .ascrcmnt****      � ****
� .sysonfo4asfe        file
� 
asmo
� .sysoloadscpt        file
� 
rslt� 0 
autoaccept 
autoAccept� 0 	getconfig 	getConfig� 0 filterevents filterEvents�  0 filteraccounts filterAccounts� 0 filterbuddies filterBuddies� 0 	soundlist  � 0 loadedconfig loadedConfig� 0 readytonotify readyToNotify�
 0 
willnotify 
willNotify�	 0 	didnotify 	didNotify� 0 	willgrowl 	willGrowl� 0 didgrowl didGrowl� 0 willplaysound willPlaySound� 0 didplaysound didPlaySound� 0 shouldnotify shouldNotify�,�b  �  b   Ec  Y hO������f� E�O�E�O 5��lv[��l kh ��%�%E�O *a �/E�OW X  h[OY��O��  a j Ob  Ec   OhY hO�j a ,E�O�b    a j OhY hOa j O�j O_ Ec  O�Ec  O*b  a ,b  a ,l+ b   a ,FO*b  a ,b  a ,l+ b   a ,FO*b  a ,b  a ,l+ b   a ,FO*b  a ,b  a ,l+ b   a ,FO*b  a  ,b  a  ,l+ b   a  ,FO*b  a !,b  a !,l+ b   a !,FO*b  a ",b  a ",l+ b   a ",FO*b  a #,b  a #,l+ b   a #,FO*b  a $,b  a $,l+ b   a $,FO*b  a %,b  a %,l+ b   a %,FO*b  a &,b  a &,l+ b   a &,FO*b  a ',b  a %,l+ b   a ',FO*b  a (,b  a (,l+ b   a (,FO*b  a ),b  a ),l+ b   a ),FOb   j+ !Ob   3 � 2���������  0 playsoundfile playSoundFile��  �� ������
�� 
from�� 0 	soundpath 	soundPath��  � ���� 0 	soundpath 	soundPath� A��F��
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,%�%j 4 ��P���������� 0 	playsound 	playSound��  �� ������
�� 
from�� 0 	soundname 	soundName��  � �������� 0 	soundname 	soundName�� 0 soundfilename soundFilename�� 0 
soundalias 
soundAlias� 
����������eu�����
�� 
pcls
�� 
alis
�� 
from
�� 
psxp�� 0 playsoundfile playSoundFile
�� 
in B
�� .sysorpthalis        TEXT�� >��,�  *��,l Y +�� *�l Y ��%E�O���l 	E�O*��,l 5 ������������� 	0 growl  �� 0 thetext theText�� �����
�� 
from�� 0 thebuddy theBuddy� �����
�� 
for �� 0 theevent theEvent� �������� 0 showingstatus showingStatus�� 0 showingstatus showingStatus��  � ���������������������������� 0 thetext theText�� 0 thebuddy theBuddy�� 0 theevent theEvent�� 0 showingstatus showingStatus�� 0 	buddyname 	buddyName�� 0 	buddyicon 	buddyIcon�� 0 thetitle theTitle��  0 thedescription theDescription�� 0 frontapp frontApp�� 0 
windowname 
windowName�� 0 soundrec soundRec�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList� S����������������������������������.�����������������������������������������������������`�������	!%(����:������A��������Q��\���������� 0 
initconfig 
initConfig
�� 
for 
�� 
from
�� 
outo�� 0 showingstatus showingStatus�� �� 0 readytonotify readyToNotify�� 0 shouldnotify shouldNotify
�� 
rslt
�� .ascrcmnt****      � ****
�� 
null
�� 
msng
�� 
pnam
�� 
imaA
�� 
smsg
�� 
bool
�� 
pisf
�� 
cwin
�� 
spac
�� 
cha �� 
�� kfrmID  ��  ��  �� 	0 title  �� 0 description  �� 0 icon  �� �� 0 
willnotify 
willNotify�� 0 	soundlist  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
evnt�� 0 willplaysound willPlaySound
�� 
snd �� 0 	playsound 	playSound�� 0 didplaysound didPlaySound
�� 
capp
�� 
prun�� 0 	eventname 	eventName�� 0 	willgrowl 	willGrowl�� 
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� 
imag�� 
�� 0 didgrowl didGrowl�� 0 	didnotify 	didNotify���*j+  Ob   ����� Ob   ����� O� �j 
OhY hO��  �E�O�E�O�E�Y ���,E�O��,E�O�	 ��,a a & �E�O��,E�Y 	�E�O�E�O ha a ,e  Xa  *a k/�,E�UO��_ %)a a a 0%_ % hY hO�_ )a a a 0%_ %�% hY hY hW X  hOb   ���a �a �a ��a  O yb   a  ,[a !a "l #kh 
�a $,�  Pb   ���a �a �a ��a  %O*�a &,l 'Ob   ���a �a �a ��a  (Y h[OY��O)a )a *a 0a +,e  �b   ���a �a ,�a ��a  -O)a )a .a 0 �a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a AvE�O�E�O*a Ba Ca D�a E�a Fa G� HO��  *a I�a J�a K�a Ba L� MY *a I�a J�a K�a Ba Na O�a P MUOb   ���a �a ,�a ��a  QY hOb   ���a �a �a ��a  ROP6 �����������
�� .ichthe00null��� ��� null��  �� ������
�� 
heac�� 0 
theservice 
theService��  � ���� 0 
theservice 
theService� 	����������������
�� 
pnam
�� 
from
�� 
null
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� ��,�%�����f� 7 �����������
�� .ichthe01null��� ��� null��  �� ������
�� 
heac�� 0 
theservice 
theService��  � �� 0 
theservice 
theService� 	�~��}�|�{��z�y�x
�~ 
pnam
�} 
from
�| 
null
�{ 
for �z 0 showingstatus showingStatus�y �x 	0 growl  �� ��,�%�����f� 8 �w��v�u���t
�w .ichthe02null���     pres�v 0 thebuddy theBuddy�u  � �s�s 0 thebuddy theBuddy� �r��q�p��o�n�m
�r 
pnam
�q 
from
�p 
for �o 0 showingstatus showingStatus�n �m 	0 growl  �t ��,�%����e� 9 �l��k�j���i
�l .ichthe03null���     pres�k 0 thebuddy theBuddy�j  � �h�h 0 thebuddy theBuddy� �g��f�e��d�c�b
�g 
pnam
�f 
from
�e 
for �d 0 showingstatus showingStatus�c �b 	0 growl  �i ��,�%����e� : �a��`�_���^
�a .ichthe14null���     barq�` 0 
therequest 
theRequest�_  � �]�\�] 0 
therequest 
theRequest�\ 0 thebuddy theBuddy� �[�Z��Y�X��W�V�U�T�S
�[ 
pres
�Z 
pnam
�Y 
from
�X 
for �W 0 showingstatus showingStatus�V �U 	0 growl  �T 0 
autoaccept 
autoAccept
�S .ichtacptnull���     ****�^ ,��,E�O��,�%����f� Ob   �,� 
�j Y h; �R�Q�P���O
�R .ichthe12null���     ctxt�Q 0 message  �P �N�M�
�N 
hepr�M 0 thebuddy theBuddy� �L�K�J
�L 
hect�K 0 textchat textChat�J  � �I�H�G�I 0 message  �H 0 thebuddy theBuddy�G 0 textchat textChat� �F�E�D�C�B
�F 
from
�E 
for �D 0 showingstatus showingStatus�C �B 	0 growl  �O �����f� < �A �@�?���>
�A .ichthe04null���     ctxt�@ 0 message  �? �=�<�
�= 
hepr�< 0 thebuddy theBuddy� �;�:�9
�; 
hect�: 0 textchat textChat�9  � �8�7�6�8 0 message  �7 0 thebuddy theBuddy�6 0 textchat textChat� �5�4,�3�2�1
�5 
from
�4 
for �3 0 showingstatus showingStatus�2 �1 	0 growl  �> �����f� = �07�/�.���-
�0 .ichthe05null���     ctxt�/ 0 message  �. �,�+�*
�, 
hect�+ 0 textchat textChat�*  � �)�(�) 0 message  �( 0 textchat textChat� �'�&�%A�$�#�"
�' 
from
�& 
null
�% 
for �$ 0 showingstatus showingStatus�# �" 	0 growl  �- ������f� > �!G� ����
�! .ichthe06null���     ctxt�  0 message  � ���
� 
hepr� 0 thebuddy theBuddy� ���
� 
hect� 0 textchat textChat�  � ���� 0 message  � 0 thebuddy theBuddy� 0 textchat textChat� 	��V����`�
� 
from
� 
for � 0 showingstatus showingStatus� � 	0 growl  � 0 
autoaccept 
autoAccept
� .ichtacptnull���     ****� "�����f� Ob   �,� 
�j Y h? �f�����
� .ichthe07null��� ��� null�  � �
�	�
�
 
hepr�	 0 thebuddy theBuddy� ���
� 
hect� 0 	audiochat 	audioChat�  � ��� 0 thebuddy theBuddy� 0 	audiochat 	audioChat� �u��{� ���������
� 
pnam
� 
from
� 
for �  0 showingstatus showingStatus�� �� 	0 growl  �� 0 
autoaccept 
autoAccept
�� .ichtacptnull���     ****� &��,�%����f� Ob   �,� 
�j 
Y h@ �����������
�� .ichthe08null��� ��� null��  �� �����
�� 
hepr�� 0 thebuddy theBuddy� ������
�� 
hect�� 0 	videochat 	videoChat��  � ������ 0 thebuddy theBuddy�� 0 	videochat 	videoChat� �������������������
�� 
pnam
�� 
from
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� 0 
autoaccept 
autoAccept
�� .ichtacptnull���     ****�� &��,�%����f� Ob   �,� 
�j 
Y hA �����������
�� .ichthe15null��� ��� null��  �� �����
�� 
hepr�� 0 thebuddy theBuddy� ������
�� 
hect�� 0 
screenchat 
screenChat��  � ������ 0 thebuddy theBuddy�� 0 
screenchat 
screenChat� �������������������
�� 
pnam
�� 
from
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� 0 
autoaccept 
autoAccept
�� .ichtacptnull���     ****�� &��,�%����f� Ob   �,� 
�j 
Y hB �����������
�� .ichthe09null���     icaa��  ��  �  � ��������������
�� 
from
�� 
null
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� ������f� C �����������
�� .ichthe13null���     icaa��  ��  �  � ��������������
�� 
from
�� 
null
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� ������f� D �����������
�� .ichthe10null���     tnfr�� 0 filetransfer fileTransfer��  � ���� 0 filetransfer fileTransfer� ������������������
�� 
pnam
�� 
from
�� 
pres
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� 0 
autoaccept 
autoAccept
�� .ichtacptnull���     ****�� &��,��,���f� Ob   �,� 
�j 
Y hE ����������
�� .ichthe11null���     tnfr�� 0 filetransfer fileTransfer��  � ���� 0 filetransfer fileTransfer� ��������%������
�� 
pnam
�� 
from
�� 
pres
�� 
for �� 0 showingstatus showingStatus�� �� 	0 growl  �� ��,��,���f�  ascr  ��ޭ