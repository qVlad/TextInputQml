// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
	width: 360
	height: 360
	property int name1: 0
	property int name2: 0
	property int name3: 0
	function genValue(value){
		if(value<10)
			return "0"+value
		else
			return value
	}

	TextInput {
		anchors.centerIn: parent
		inputMask: "99:99:90;0"
		text:genValue(name1)+":"+genValue(name2)+":"+genValue(name3)
	}
	MouseArea {
		anchors.fill: parent
		onClicked: {
			Qt.quit();
		}
	}
	Timer{
		running: true
		interval: 10
		repeat:true
		onTriggered: {
			name3++;
			console.log(name3)
			if(name3>=75){
				name3=0;
				name2++;
			}
			if(name2>=60){
				name2=0;
				name1++;
			}
		}
	}
}
