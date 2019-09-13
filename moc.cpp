

#define protected public
#define private public

#include "moc.h"
#include "_cgo_export.h"

#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QGraphicsObject>
#include <QGraphicsWidget>
#include <QLayout>
#include <QMetaMethod>
#include <QObject>
#include <QOffscreenSurface>
#include <QPaintDeviceWindow>
#include <QPdfWriter>
#include <QString>
#include <QTimerEvent>
#include <QWidget>
#include <QWindow>

#ifdef QT_QML_LIB
	#include <QQmlEngine>
#endif


class Controllera4325e: public QObject
{
Q_OBJECT
public:
	Controllera4325e(QObject *parent = Q_NULLPTR) : QObject(parent) {qRegisterMetaType<quintptr>("quintptr");Controllera4325e_Controllera4325e_QRegisterMetaType();Controllera4325e_Controllera4325e_QRegisterMetaTypes();callbackControllera4325e_Constructor(this);};
	 ~Controllera4325e() { callbackControllera4325e_DestroyController(this); };
	bool event(QEvent * e) { return callbackControllera4325e_Event(this, e) != 0; };
	bool eventFilter(QObject * watched, QEvent * event) { return callbackControllera4325e_EventFilter(this, watched, event) != 0; };
	void childEvent(QChildEvent * event) { callbackControllera4325e_ChildEvent(this, event); };
	void connectNotify(const QMetaMethod & sign) { callbackControllera4325e_ConnectNotify(this, const_cast<QMetaMethod*>(&sign)); };
	void customEvent(QEvent * event) { callbackControllera4325e_CustomEvent(this, event); };
	void deleteLater() { callbackControllera4325e_DeleteLater(this); };
	void Signal_Destroyed(QObject * obj) { callbackControllera4325e_Destroyed(this, obj); };
	void disconnectNotify(const QMetaMethod & sign) { callbackControllera4325e_DisconnectNotify(this, const_cast<QMetaMethod*>(&sign)); };
	void Signal_ObjectNameChanged(const QString & objectName) { QByteArray taa2c4f = objectName.toUtf8(); Moc_PackedString objectNamePacked = { const_cast<char*>(taa2c4f.prepend("WHITESPACE").constData()+10), taa2c4f.size()-10 };callbackControllera4325e_ObjectNameChanged(this, objectNamePacked); };
	void timerEvent(QTimerEvent * event) { callbackControllera4325e_TimerEvent(this, event); };
signals:
public slots:
private:
};

Q_DECLARE_METATYPE(Controllera4325e*)


void Controllera4325e_Controllera4325e_QRegisterMetaTypes() {
}

int Controllera4325e_Controllera4325e_QRegisterMetaType()
{
	return qRegisterMetaType<Controllera4325e*>();
}

int Controllera4325e_Controllera4325e_QRegisterMetaType2(char* typeName)
{
	return qRegisterMetaType<Controllera4325e*>(const_cast<const char*>(typeName));
}

int Controllera4325e_Controllera4325e_QmlRegisterType()
{
#ifdef QT_QML_LIB
	return qmlRegisterType<Controllera4325e>();
#else
	return 0;
#endif
}

int Controllera4325e_Controllera4325e_QmlRegisterType2(char* uri, int versionMajor, int versionMinor, char* qmlName)
{
#ifdef QT_QML_LIB
	return qmlRegisterType<Controllera4325e>(const_cast<const char*>(uri), versionMajor, versionMinor, const_cast<const char*>(qmlName));
#else
	return 0;
#endif
}

void* Controllera4325e___dynamicPropertyNames_atList(void* ptr, int i)
{
	return new QByteArray(({QByteArray tmp = static_cast<QList<QByteArray>*>(ptr)->at(i); if (i == static_cast<QList<QByteArray>*>(ptr)->size()-1) { static_cast<QList<QByteArray>*>(ptr)->~QList(); free(ptr); }; tmp; }));
}

void Controllera4325e___dynamicPropertyNames_setList(void* ptr, void* i)
{
	static_cast<QList<QByteArray>*>(ptr)->append(*static_cast<QByteArray*>(i));
}

void* Controllera4325e___dynamicPropertyNames_newList(void* ptr)
{
	Q_UNUSED(ptr);
	return new QList<QByteArray>();
}

void* Controllera4325e___findChildren_atList2(void* ptr, int i)
{
	return ({QObject* tmp = static_cast<QList<QObject*>*>(ptr)->at(i); if (i == static_cast<QList<QObject*>*>(ptr)->size()-1) { static_cast<QList<QObject*>*>(ptr)->~QList(); free(ptr); }; tmp; });
}

void Controllera4325e___findChildren_setList2(void* ptr, void* i)
{
	static_cast<QList<QObject*>*>(ptr)->append(static_cast<QObject*>(i));
}

void* Controllera4325e___findChildren_newList2(void* ptr)
{
	Q_UNUSED(ptr);
	return new QList<QObject*>();
}

void* Controllera4325e___findChildren_atList3(void* ptr, int i)
{
	return ({QObject* tmp = static_cast<QList<QObject*>*>(ptr)->at(i); if (i == static_cast<QList<QObject*>*>(ptr)->size()-1) { static_cast<QList<QObject*>*>(ptr)->~QList(); free(ptr); }; tmp; });
}

void Controllera4325e___findChildren_setList3(void* ptr, void* i)
{
	static_cast<QList<QObject*>*>(ptr)->append(static_cast<QObject*>(i));
}

void* Controllera4325e___findChildren_newList3(void* ptr)
{
	Q_UNUSED(ptr);
	return new QList<QObject*>();
}

void* Controllera4325e___findChildren_atList(void* ptr, int i)
{
	return ({QObject* tmp = static_cast<QList<QObject*>*>(ptr)->at(i); if (i == static_cast<QList<QObject*>*>(ptr)->size()-1) { static_cast<QList<QObject*>*>(ptr)->~QList(); free(ptr); }; tmp; });
}

void Controllera4325e___findChildren_setList(void* ptr, void* i)
{
	static_cast<QList<QObject*>*>(ptr)->append(static_cast<QObject*>(i));
}

void* Controllera4325e___findChildren_newList(void* ptr)
{
	Q_UNUSED(ptr);
	return new QList<QObject*>();
}

void* Controllera4325e___children_atList(void* ptr, int i)
{
	return ({QObject * tmp = static_cast<QList<QObject *>*>(ptr)->at(i); if (i == static_cast<QList<QObject *>*>(ptr)->size()-1) { static_cast<QList<QObject *>*>(ptr)->~QList(); free(ptr); }; tmp; });
}

void Controllera4325e___children_setList(void* ptr, void* i)
{
	static_cast<QList<QObject *>*>(ptr)->append(static_cast<QObject*>(i));
}

void* Controllera4325e___children_newList(void* ptr)
{
	Q_UNUSED(ptr);
	return new QList<QObject *>();
}

void* Controllera4325e_NewController(void* parent)
{
	if (dynamic_cast<QGraphicsObject*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QGraphicsObject*>(parent));
	} else if (dynamic_cast<QGraphicsWidget*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QGraphicsWidget*>(parent));
	} else if (dynamic_cast<QLayout*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QLayout*>(parent));
	} else if (dynamic_cast<QOffscreenSurface*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QOffscreenSurface*>(parent));
	} else if (dynamic_cast<QPaintDeviceWindow*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QPaintDeviceWindow*>(parent));
	} else if (dynamic_cast<QPdfWriter*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QPdfWriter*>(parent));
	} else if (dynamic_cast<QWidget*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QWidget*>(parent));
	} else if (dynamic_cast<QWindow*>(static_cast<QObject*>(parent))) {
		return new Controllera4325e(static_cast<QWindow*>(parent));
	} else {
		return new Controllera4325e(static_cast<QObject*>(parent));
	}
}

void Controllera4325e_DestroyController(void* ptr)
{
	static_cast<Controllera4325e*>(ptr)->~Controllera4325e();
}

void Controllera4325e_DestroyControllerDefault(void* ptr)
{
	Q_UNUSED(ptr);

}

char Controllera4325e_EventDefault(void* ptr, void* e)
{
	return static_cast<Controllera4325e*>(ptr)->QObject::event(static_cast<QEvent*>(e));
}

char Controllera4325e_EventFilterDefault(void* ptr, void* watched, void* event)
{
	return static_cast<Controllera4325e*>(ptr)->QObject::eventFilter(static_cast<QObject*>(watched), static_cast<QEvent*>(event));
}

void Controllera4325e_ChildEventDefault(void* ptr, void* event)
{
	static_cast<Controllera4325e*>(ptr)->QObject::childEvent(static_cast<QChildEvent*>(event));
}

void Controllera4325e_ConnectNotifyDefault(void* ptr, void* sign)
{
	static_cast<Controllera4325e*>(ptr)->QObject::connectNotify(*static_cast<QMetaMethod*>(sign));
}

void Controllera4325e_CustomEventDefault(void* ptr, void* event)
{
	static_cast<Controllera4325e*>(ptr)->QObject::customEvent(static_cast<QEvent*>(event));
}

void Controllera4325e_DeleteLaterDefault(void* ptr)
{
	static_cast<Controllera4325e*>(ptr)->QObject::deleteLater();
}

void Controllera4325e_DisconnectNotifyDefault(void* ptr, void* sign)
{
	static_cast<Controllera4325e*>(ptr)->QObject::disconnectNotify(*static_cast<QMetaMethod*>(sign));
}

void Controllera4325e_TimerEventDefault(void* ptr, void* event)
{
	static_cast<Controllera4325e*>(ptr)->QObject::timerEvent(static_cast<QTimerEvent*>(event));
}



#include "moc_moc.h"
