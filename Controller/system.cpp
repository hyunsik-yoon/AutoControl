#include "system.h"

#include <QTime>
#include <QTimer>
#include <QDebug>

System::System(QObject *parent)
    : QObject{parent}, m_locked(false), m_outTemp(68), m_userName("eric")
{
    m_timer = new QTimer(parent);
    {
        QObject::connect(m_timer, &QTimer::timeout, [=]() {
            QString timeText = (QTime::currentTime()).toString("hh:mm A");
            setCurrentTime(timeText);
        });

        m_timer->setSingleShot(false);
        m_timer->start(1000); // Update every second
    }
}

bool System::locked() const
{
    return m_locked;
}

void System::setLocked(bool newLocked)
{
    if (m_locked == newLocked)
        return;
    m_locked = newLocked;
    emit lockedChanged();
}

int System::outTemp() const
{
    return m_outTemp;
}

void System::setOutTemp(int newOutTemp)
{
    if (m_outTemp == newOutTemp)
        return;
    m_outTemp = newOutTemp;
    emit outTempChanged();
}

QString System::userName() const
{
    return m_userName;
}

void System::setUserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}

QString System::currentTime() const
{
    return m_currentTime;
}

void System::setCurrentTime(const QString &newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged();
}
