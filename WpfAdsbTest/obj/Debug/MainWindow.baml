   M S B A M L   `   `   `  ����F  BWpfAdsbTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfAdsbTestWpfAdsbTest  5   	       WpfAdsbTest.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WpfAdsbTest     5   	   -   5          �Name$  MyWindow��5
   	    � Title$ 
MainWindow��5   	   $	��450��6   $	��800��6,   $	��450��6;   $	��800��6K    � 	Resources 5      #   WpfAdsbTest.BlinkingConverter   myBlinkingConverter��%   &	          5   
   6"   58      .��5<      �� $��Stretch=�6   $��Stretch=�6-    �� Orientation$ Vertical=�6K   .+�5=   
   � $��10q�6   $
��Left=�6   $	��Top=�66    � ColumnDefinitions 5>      �� 5?      $
��190* �6#   .+�5A      A� -   5         A�Name$ 	myEllipse��5A      $��15��6*   $��15��66   $��15��6F   
���   �$��1��6d   $
��Left=�6y   $��Center=�6�    �� Stretch$ Uniform=�6�   ��5B      �� 5C       �� Color$	 Red��6&   5E      A� 5F      -   5        $ 
myEllipse1��5F      $��15��6*   $��15��66   $��15��6F   
���   �$��1��6d   $
��Left=�6y   $��Center=�6�   $ Uniform=�6�    J� RenderTransformOrigin$ 0.533,0.536&�6�   $��33,0,0,0q�6�   ��5G      �� 5H      $ White��6&   5J      5K      � 5L   
   $
��Left=�6   $	��Top=�6*   .+�5N      �� $ 
Horizontal=�6   $��10q�62   .+�5O      �� $��
Port Name:��6   $��Center=�6.   $��5q�6I   �� 5P      -   5        	 ��Name$	 ComboBoxPortName��5P      $	��100��65   $��5q�6A   ��5Q      �� *serialPortNames+
 �� SelectedItem
 5R      �� *serialPortName+�� 5S      $��Speed Rate:��6   $��Center=�6/   $��5q�6J   �� 5T      -   5         ��Name$ TextBoxSpeedRate��5T      $	��100��64   $��5q�6@   ��5U      �� *serialPortBaudRate+�� 5V      -   5         ��Name$ btnConnectCOM��5V      $��Connect COM��60   $��5q�6F   5W      5X      5Z      �� 5[   
   -   5        $ btnConnectTCP��5[      $��Connect TCP��6(   $	��Top=�6>   6V   �� 5\   
   -   5        $ btnDisconnect��5\      $��
Disconnect��6(   $	��Top=�6=   6U   �� 5]   
   -	   5        $ btnClear��5]      $��Clear��6#   $	��Top=�63   6K   &   System.Windows.Controls.DataGrid  5`      -
   5          Name$ 	dataGrid1��5a         AutoGenerateColumns .  $	��178��6(      	CellStyle 5b      �� 5c       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    �� Triggers 5d      �� 5e       �� Binding 6*   ��  �� RelativeSource �� *Self+ �� Path$ Value� �� 	Converter# [   �� Value true6�    N� EnterActions 5f   "   �� 5g   &    ��Name$ BlinkingStoryboard��66   .��5h   *   �� .��5i   .   ��  �� TargetProperty$ Background.Color�6=   	 �� To$	 RedX�6j    g� Duration$ 0:0:0.5D�6s    g� AutoReverse .  g� RepeatBehavior$ 1x��6�   5j   +   5k   '    N� ExitActions 5m   "   �� 5n   &    �� BeginStoryboardName$ BlinkingStoryboard��65   5p      5r          Columns  5t      0  *System.Windows.Controls.DataGridTextColumn  5u      ,  &System.Windows.Controls.DataGridColumn!   Header$
! Icao��6)   "   MinWidth$" 50Q�6�   1  +System.Windows.Controls.DataGridBoundColumn#   Binding# 68   �� *Icao+$ �� Mode$$ TwoWay=�% �� UpdateSourceTrigger$% PropertyChanged=�& �� NotifyOnTargetUpdated& . 6�     5v      $! Model��6)   $" 50Q�6�   # 68   �� *	ModelName+$$ TwoWay=�$% PropertyChanged=�& . 6�     5w      $
! Time��6)   $" 50Q�6�   # 67   �� *Time+$$ OneWay=�$% PropertyChanged=�6�     5x      $! Latitude, °��6)   $" 50Q�6�   # 6>   �� *
Latitude+$$ TwoWay=�$% PropertyChanged=�& . 6�     5y      $! Longitude, °��6)   $" 50Q�6�   # 6?   �� *	Longitude+$$ TwoWay=�$% PropertyChanged=�& . 6�     5z      $! Altitude, m��6)   $" 50Q�6�   # 6?   �� *
Altitude+$$ TwoWay=�$% PropertyChanged=�& . 6�     5{      $! Air Velocity, kt��6)   $" 50Q�6�   # 6C   �� *AirVelocity+$$ TwoWay=�$% PropertyChanged=�& . 6�     5|      $! Track Angle, °��6)   $" 50Q�6�   # 6A   �� *	Direction+$$ TwoWay=�$% PropertyChanged=�& . 6�     5}      $! Country��6)   $" 50Q�6�   # 6:   �� *	Country+$$ TwoWay=�$% PropertyChanged=�& . 6�   4  .System.Windows.Controls.DataGridTemplateColumn  5~      $
! Flag��6-   '   
IsReadOnly' . (   CellTemplate( 5      �� 5�      .R�5�   "   �� $��20��6�   $��30��6�   ��6(   �� *Flag+$% PropertyChanged=�& . 6�   5�      5�      5�      �� 5�      -   5        $ textBoxConsole��5�      ") �� VerticalScrollBarVisibility$) Visible=�6.   * �� TextWrapping$
* Wrap=�6T   $�� ��6h   $	��100��6p   5�      5�      