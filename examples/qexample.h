#ifndef QEXAMPLE_H
#define QEXAMPLE_H

#include <qwebdav/qwebdav.h>
#include <qwebdav/qwebdavdirparser.h>
#include <qwebdav/qwebdavitem.h>

class QExample : public QObject
{
    Q_OBJECT

    QWebdav w;
    QWebdavDirParser p;
    QString m_path;
    QList<QNetworkReply *> m_replyList;

public:
    QExample(QObject *parent = 0);

signals:

public slots:
    void printList();
    void printError(QString errorMsg);
    void replySkipRead();

public:
    void start();
};

#endif // QEXAMPLE_H
