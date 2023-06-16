#include "hvac.h"

HVAC::HVAC(QObject *parent)
    : QObject{parent}, m_temperature(70)
{

}

int HVAC::temperature() const
{
    return m_temperature;
}

void HVAC::change(int delta)
{
    setTemperature(temperature() + delta);
}

void HVAC::setTemperature(int newTemperature)
{
    if (m_temperature == newTemperature)
        return;
    m_temperature = newTemperature;
    emit temperatureChanged();
}
