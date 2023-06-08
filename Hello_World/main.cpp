#include <QApplication>
#include <QLabel>

int main(int argc, char* args[])
{
    QApplication app(argc, args);
    QLabel *label = new QLabel("Hello World");
    label->show();
    label ->setWindowTitle("MY APP");
    label->resize(400,400);
    return app.exec();
}
