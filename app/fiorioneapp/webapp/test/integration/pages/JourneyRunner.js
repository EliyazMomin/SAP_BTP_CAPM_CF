sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/sap/fiorioneapp/test/integration/pages/SalesOrdersList",
	"com/sap/fiorioneapp/test/integration/pages/SalesOrdersObjectPage"
], function (JourneyRunner, SalesOrdersList, SalesOrdersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/sap/fiorioneapp') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrdersList: SalesOrdersList,
			onTheSalesOrdersObjectPage: SalesOrdersObjectPage
        },
        async: true
    });

    return runner;
});

