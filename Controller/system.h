#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>
#include <QTimer>

class System : public QObject
{
    Q_OBJECT

    Q_PROPERTY(bool locked READ locked WRITE setLocked NOTIFY lockedChanged)
    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged)
    Q_PROPERTY(int outTemp READ outTemp WRITE setOutTemp NOTIFY outTempChanged)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)

public:
    explicit System(QObject *parent = nullptr);

public:
    bool locked() const;
    int outTemp() const;
    QString userName() const;
    QString currentTime() const;

private:
    bool m_locked;
    int m_outTemp;
    QString m_userName;
    QString m_currentTime;

    QTimer *m_timer;

signals:
    void lockedChanged();
    void outTempChanged();
    void userNameChanged();

    void currentTimeChanged();

public slots:
    void setLocked(bool newLocked);
    void setCurrentTime(const QString &newCurrentTime);
    void setOutTemp(int newOutTemp);
    void setUserName(const QString &newUserName);

};

#endif // SYSTEM_H
