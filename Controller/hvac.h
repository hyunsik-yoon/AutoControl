#ifndef HVAC_H
#define HVAC_H

#include <QObject>

class HVAC : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int temperature READ temperature WRITE setTemperature NOTIFY temperatureChanged)

public:
    explicit HVAC(QObject *parent = nullptr);

    int temperature() const;
    Q_INVOKABLE void change(int delta);

signals:
    void temperatureChanged();

public slots:
    void setTemperature(int newTemperature);

private:
    int m_temperature;
};

#endif // HVAC_H
