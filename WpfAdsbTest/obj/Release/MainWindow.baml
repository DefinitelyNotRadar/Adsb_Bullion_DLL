   M S B A M L   `   `   `  ���� F  BWpfAdsbTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfAdsbTestWpfAdsbTest      WpfAdsbTest.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:WpfAdsbTest     -     �Name$  MyWindow�� � Title$ 
MainWindow��$	��450��$	��800�� � 	Resources #   WpfAdsbTest.BlinkingConverter   BlinkingConverter��%   &	          .���� .����  �� Orientation$ Vertical=�.+�� $��10q� � ColumnDefinitions �� $
��190* �.+�A� -    A�Name$ 	myEllipse��$��15��$��15��$��15��
���   �$��1��$
��Left=�$��Center=� �� Stretch$ Uniform=�����  �� Color$	 Red��A� -   $ 
myEllipse1��$��15��$��15��$��15��
���   �$��1��$
��Left=�$��Center=�$ Uniform=� J� RenderTransformOrigin$ 0.533,0.536&�$��33,0,0,0q����� $ White��� .+��� $ 
Horizontal=�$��10q�.+��� $��
Port Name:��$��Center=�$��5q��� -   	 ��Name$	 ComboBoxPortName��$	��100��$��5q����� *serialPortNames+
 �� SelectedItem
 �� *serialPortName+�� $��Speed Rate:��$��Center=�$��5q��� -    ��Name$ TextBoxSpeedRate��$	��100��$��5q����� *serialPortBaudRate+�� -    ��Name$ btnConnectCOM��$��Connect COM��$��5q��� -   $ btnConnectTCP��$��Connect TCP��$	��Top=��� -   $ btnDisconnect��$��
Disconnect��$	��Top=��� -	   $ btnClear��$��Clear��$	��Top=�&   System.Windows.Controls.DataGrid  -
     Name$ 	dataGrid1��   AutoGenerateColumns .  $��Stretch=�$��Stretch=�   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"   �� Triggers ��  �� Binding ��  �� RelativeSource �� *Self+ �� Path$
 Text� �� 	Converter# [   �� Value true N� EnterActions ��  ��Name$ BlinkingStoryboard��.���� .����  �� TargetProperty$ Background.Color�	 �� To$	 RedX� g� Duration$ 0:0:0.5D� g� AutoReverse .  g� RepeatBehavior$ Forever�� N� ExitActions ��  �� BeginStoryboardName$ BlinkingStoryboard��    Columns  0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn!   Header$
! Icao��"   MinWidth$" 50Q�1  +System.Windows.Controls.DataGridBoundColumn#   Binding# �� *Icao+$ �� Mode$$ TwoWay=�% �� UpdateSourceTrigger$% PropertyChanged=�& �� NotifyOnTargetUpdated& .   $! Model��$" 50Q�# �� *	ModelName+$$ TwoWay=�$% PropertyChanged=�& .   $
! Time��$" 50Q�# �� *Time+$$ TwoWay=�$% PropertyChanged=�& .   $! Latitude, °��$" 50Q�# �� *
Latitude+$$ TwoWay=�$% PropertyChanged=�& .   $! Longitude, °��$" 50Q�# �� *	Longitude+$$ TwoWay=�$% PropertyChanged=�& .   $! Altitude, m��$" 50Q�# �� *
Altitude+$$ TwoWay=�$% PropertyChanged=�& .   $! Air Velocity, kt��$" 50Q�# �� *AirVelocity+$$ TwoWay=�$% PropertyChanged=�& .   $! Track Angle, °��$" 50Q�# �� *	Direction+$$ TwoWay=�$% PropertyChanged=�& .   $! Country��$" 50Q�# �� *	Country+$$ TwoWay=�$% PropertyChanged=�& . 4  .System.Windows.Controls.DataGridTemplateColumn  $
! Flag��'   
IsReadOnly' . (   CellTemplate( �� .R��� $��20��$��30������ *Flag+$% PropertyChanged=�& . 