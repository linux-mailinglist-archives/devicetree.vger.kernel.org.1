Return-Path: <devicetree+bounces-25363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66763813078
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C71DBB21800
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40FD4D58F;
	Thu, 14 Dec 2023 12:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="T2nWALcP"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2047.outbound.protection.outlook.com [40.107.7.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9C7113
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:44:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQybWcag4bvNR1cFgJpbIh0bSdpsQtIEEEwXsMqwsR7gZUhE8OQJ+JMaTe0fcTQnwex9DsMemtHfyqz9hHbTG1p4SfV3JwFUYqRIHOjjrcQAYd9phyE2mRytiRNDF4c4D4UMUZdt7AFvw8AejzyMDBKgDPN8ih4luee4CRgE9Y4/c/swcDniMUEj8s2e8mZicrrywFA9d6Gt3IvH0R2I7CUSGf+iOLDIxaHc0kB0lR4eADqGj6Khi/ru/ZFXAgo9ZlA3J7gSnnfNSmCrViCcKNEg0IXEcfAakiKVv5bXIOW3FNaX1xBCx5HG0SS1KGN4I7t0KGXvx5pF7bHb8JmQ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5LBBR33dF7N8vPp/dgSsIRdup0ChsVDZrNd4P9fs6xo=;
 b=mqJ9+TEFgm4vTKFGxlmH1evkaqB787Mg3Dg+OKdmiNC2jXOcavc7JRLvFoo5A3Ym3nBCjfzwXQJrU5M8GWQ4qk4WaAlBR76wODZ6iKVjUX0FaxQ1vlAgJc2tdbqd7397kFq1kZQZfVVuOSlfnNAAalGAR2tinS3gmgtC0HC7iaox4t9IsY9xxAKF838EUy0NMQdjPeRY5JyY3MiV/m9kNJ/GXqbU+ipUo9RT+2n28KMv+Ov00/v0PlaoBuTHpG6aXpqW+X/7NegPLWx3Pq2pRx9sc2gj0Htj34duoInVJ4Z9fPkDj0vVSeg06WGrybPuJjghtq79gf5kHUInfPHMHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5LBBR33dF7N8vPp/dgSsIRdup0ChsVDZrNd4P9fs6xo=;
 b=T2nWALcPH+UM3lbZtwPkg4/2zTKe5AuKEcJhkgiBqw3dsp/JFaPaiybDcR1A087xuecPJeTdRwSEE3CtX3yZ8Jfm22Wt54yiYjYrt3CaEryQipH3EWacVT5uKFsegdTqMIG7XP4grmkZnrK72m6iuvUxW552FSs9SBWogv7tdiw=
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by AS1PR04MB9382.eurprd04.prod.outlook.com (2603:10a6:20b:4da::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 12:44:36 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 12:44:35 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Thread-Topic: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Thread-Index: AQHaLn9RXeQaIxpAwUS6zMe/OUV0PLCopOeAgAAUaYA=
Date: Thu, 14 Dec 2023 12:44:35 +0000
Message-ID:
 <VI1PR04MB515264C2492276E42BA33F2D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-2-xu.yang_2@nxp.com>
 <CAOMZO5CgzioWKjWkhmQjL58GGGmDSsm9SD1f6YAX2EyM0DNJtA@mail.gmail.com>
In-Reply-To:
 <CAOMZO5CgzioWKjWkhmQjL58GGGmDSsm9SD1f6YAX2EyM0DNJtA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5152:EE_|AS1PR04MB9382:EE_
x-ms-office365-filtering-correlation-id: 166223fd-9499-4bd6-5566-08dbfca26dbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 Vsd+0iRW9fkPhP3vgl9n8kQf/YJ8meAdSW2QUc4sbiZePViudP0QNpeeL5FObZQBWZW6FuuXwpzoNUcYf7jVdz9cL4IpSoCsljc0itaOezGXoQ1uShlXBtrbIfNNnvWa7CHLbG+wOrdVKONliiXFljf289Xh7FVrYqJLa2QDsF1pLXnEYhWzlGORChs8DBtEeBG/zrXc5CSy+UzpPDuWNYGzYB/unSr0T2hNQEF26pMlfmFbkaBxQjLkbu34BmbG/mM46G8lmdqgEm6fsUd58C6Q0o2GD0yKj7eawtBcd8wO5LBPcVETzoywhPaRoZi8B+YdESIfFIz4Ddr5lCccwB2PonCTL9sQKEmWrb+h8xEoPndbKsjbHMvEfIHFPqoKWRaDjGBImh+Zn8OEISD/yQggUnpvshtkM/aOB1E5wHH3zFgMq0fenjVJp6gOAYVsSyQZBueHKQHRDkfIN94tzbcQ6jdTSA9fgvPwBlKf2hgZuDAf/AeTvCqr0iV8rzKtJ/Fsf00MNATq5FOKJU0ug8eM/3pdQylO1n0FpH57stpo1xIbdEFDd7t+tXmJ3mjmK+xzpIhz6EAtA3toz9IHDsQGV27qhj+jZ9huzGauPt8K0v3jU4xwAD5C8P+7X8sJAFHNoHmK08DlYLu/gSW9UocQsJYoNsuLWgv9o/iZ2Z7PwLFsmAJfjRXWhjmLZ5SY
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(346002)(396003)(39860400002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(66556008)(66946007)(76116006)(66476007)(66446008)(64756008)(316002)(478600001)(5660300002)(4744005)(2906002)(8676002)(4326008)(86362001)(8936002)(52536014)(55016003)(6506007)(9686003)(53546011)(71200400001)(7696005)(26005)(38070700009)(54906003)(6916009)(38100700002)(33656002)(122000001)(41300700001)(32563001)(414714003)(473944003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?WkJxQUVJNjF1UzZJRWJEUVJ1VzVXRmQ3SFB3bmJZSW9NNWFIZVF2UzhVamlK?=
 =?utf-8?B?ZUVsbW5DQ1lVQzlRRUhEYTczY25QNUpDLzdTbTFtRHBGeFJCMjUzdXArTEg0?=
 =?utf-8?B?bm1BTEt3MGpONmtUT2U1R05NWG83MGg3UlhwQjBRNE54OWtQOE9hT09WWUpo?=
 =?utf-8?B?UGhtajlXSFpRT3l4eGhRT3JzYy95TnRVVUIzN3NjSFZrZXlnOGNiWkg0ZWdr?=
 =?utf-8?B?emV5c1IzRFZwS25pK2wzYmRFMWZCTDBwUS8ra0x3dE9GTVN0LzRZMldjWjNu?=
 =?utf-8?B?Q2Q3VSt0cGhkRDRtcjA0V25KOVI0Mklta0ZOa2xUVUVhb1lBeHlPdEZqZEFn?=
 =?utf-8?B?OGlOZ2phdk5CcW9FeWJvRUxrRlV0QzBSOWgzYVhLZWcvVFRMUFBpQ2x3OFFu?=
 =?utf-8?B?SmUrLzlDdStiMW1Zd2NJZFJUVTM5VDVnOGVIaDVqSXg2MUxXSjdTL0dvcTlF?=
 =?utf-8?B?SWNlNC85cVZhK2pmc3V4VGZEQlpjekdEVjFzbVBmMitIT0FRZm9uZ2RJeDNr?=
 =?utf-8?B?aWhZenM1NW15NE5sNHoyOXpwWWpFMGxHbFlVK3E5N09NMFdJRENSaU1TdmZW?=
 =?utf-8?B?c1d2dStrTWloeDAzTzl5UGNuR3ZZQ3oxRld2QnZub1gyYkh1YnlTcDArYjBM?=
 =?utf-8?B?UDdnbnh1cUpRc1hTTUhPbHpUeXNJMmJMNEErZXo2clk0NzVjMmliVUwvK3Vs?=
 =?utf-8?B?Q25iTHJqQWppbmRQbk1FV1IzbXNPTmhhVnJqV25CZUZwK1VxVksyeVRUZ2lD?=
 =?utf-8?B?bHNydVM3WGp6SW4xbzcrUlBDZW9wWFU0R3c2V0w5S1diRGhFQmp4TW9jTllv?=
 =?utf-8?B?Z1FTMFo0WDl1ZFRUSUoyOEpMT2RFbEdqQjdKckEwUm9NUzJQTkpOdU1qUjE2?=
 =?utf-8?B?cmd4bjBBTWRUWGRvcTlYMGh6TU1FMkx5dTRDMFNSUlBhZnQ0N0FjUWJJWDds?=
 =?utf-8?B?cG80UmROdnpCNTJKZW1DazZ3VzRLYUtHalhLNmxJdkZWcEcrSnRITUM1QjBD?=
 =?utf-8?B?c3NLbjdpYlcxM2RqQ25PNXRpeXpXcFpCc01aMS9tUjU3OFBwSkZ1YUx4ejk5?=
 =?utf-8?B?YWR5RUVyTDdVR3pMa1hIbDV4VzJKZkl2QTFBVXlCeEl0R0xSazdVOHZTRTRQ?=
 =?utf-8?B?VW5NbHVGVDZBSmRaSWhpNDZTUUZnZVBMUGk4cGpoZ3l2eVdVS2J4VEhGTjM0?=
 =?utf-8?B?Z3VXdFo1WUFPWksrcGdSS3UxOThib041L1F4aHVZWVp2U2FiR1BQYjFxaVhH?=
 =?utf-8?B?VTJlbmpSM1NSU1MwZlR3d203a1pYbzlNWmZ1MjN6RUo3bzNkVjhQS0VWWXdk?=
 =?utf-8?B?L0V1ZWJDUDZnVmtlWS93UFI3OUxZQkZWTzdaVS94SnVvY3hPdHFGSVBrelRI?=
 =?utf-8?B?U3dCSFJnVlMvNy8ra1BlYi9hZUsySXRtaTBUdmxZM1ZZZEw5bTFTQkh2WW1i?=
 =?utf-8?B?V01QdWkrMklNa1N1cFE5d0dlc2xEcmxhejFYSDZ2a3NDUDhQekdDa2VGazRD?=
 =?utf-8?B?dmV4Mkw1b1NFajlPMFB5bWFVbko4bkIwcm16dm9wVTZqYzF6QklRYWE2cSsw?=
 =?utf-8?B?MlBLaGFWUjN4RGFiMkZDRHdUdTErQkZqcmllUlVBTjk5aXBXZWZEUVRoN3Nu?=
 =?utf-8?B?SVpxc2tHTTJGUS9HSFdERDFOL3AxZHE1OEdlQmdMNnY5T1NDYStjQmQ2WGNm?=
 =?utf-8?B?dE54eUFDRjFOdDRzU3QxMDYxUW9DVCs2OTQ3bFBpTkFNQ00wOFRTY25pb1Yv?=
 =?utf-8?B?NTdKRVladmtuNzg2Wm9kOWFOcDJpVmoxVjZYa1Zyc1Y2VXNvb1RTbWtBNnl4?=
 =?utf-8?B?dzhjMzZPRDB6OTNvVmhYRmNmYVZKczJCcVRkejUyKzN5M0dpRWthdFZ3UGdt?=
 =?utf-8?B?VnArVWh3cFhTWTl2Vkh0cGxBNTRhbFNkRUsvR2lRVlRLSFZ2d3lvRG50S2JZ?=
 =?utf-8?B?dll4dzlhSkdDYWM0eVc1OStsQStsanlTZDdzT0hWYngxYis2VDE0OVRnYW1m?=
 =?utf-8?B?ZnhJa2JZMlM4ekZIWUZPdHp1dzgzTnVYdzFyQUk1UFd3QnNNL0tyR3RWVXBU?=
 =?utf-8?B?MUE2VlcxQStOSXVNWFJiVUx4NWxpTGtIdXdQTW44c3YydU4vT3IxbG5WYzMx?=
 =?utf-8?Q?fHXGwckwUKxCT+rxf1pg6dafJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5152.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 166223fd-9499-4bd6-5566-08dbfca26dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 12:44:35.8972
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4IsvMOKro2u8xnN3/SVVD4Qx1LQj20yyYcxchM8Iu2VZ0cjWlJ6q8B2QZtjFJ3xV1FOCoU9/w4aUe5YC970tkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9382

SGkgRmFiaW8sDQoNCj4gDQo+IE9uIFRodSwgRGVjIDE0LCAyMDIzIGF0IDg6MTnigK9BTSBYdSBZ
YW5nIDx4dS55YW5nXzJAbnhwLmNvbT4gd3JvdGU6DQo+IA0KPiA+ICsmdXNicGh5MSB7DQo+ID4g
KyAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ID4gKyAgICAgICBmc2wsdHgtZC1jYWwgPSA8MTEw
PjsNCj4gDQo+IFBsYWNlIHN0YXR1cyBhcyB0aGUgbGFzdCBwcm9wZXJ0eS4NCg0KT2theS4NCg0K
PiANCj4gPiArJnVzYnBoeTIgew0KPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOw0KPiA+ICsg
ICAgICAgZnNsLHR4LWQtY2FsID0gPDExMD47DQo+IA0KPiBQbGFjZSBzdGF0dXMgYXMgdGhlIGxh
c3QgcHJvcGVydHkuDQoNCk9rYXkuDQoNCj4gDQo+ID4gK307DQo+ID4gKw0KPiA+ICsmdXNibWlz
YzIgew0KPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAg
JnVzZGhjMCB7DQo+ID4gICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAic3RhdGVf
MTAwbWh6IiwgInN0YXRlXzIwMG1oeiIsICJzbGVlcCI7DQo+ID4gICAgICAgICBwaW5jdHJsLTAg
PSA8JnBpbmN0cmxfdXNkaGMwPjsNCj4gPiBAQCAtMjI0LDYgKzI2NCwyMCBAQCBNWDhVTFBfUEFE
X1BURTEzX19MUEkyQzdfU0RBICAgICAgIDB4MjANCj4gPiAgICAgICAgICAgICAgICAgPjsNCj4g
PiAgICAgICAgIH07DQo+ID4NCj4gPiArICAgICAgIHBpbmN0cmxfb3RnaWQxOiB1c2IxZ3JwIHsN
Cj4gDQo+IHBpbmN0cmxfdWJzMTogdXNiMWdycA0KDQpPa2F5Lg0KDQo+IA0KPiA+ICsgICAgICAg
ICAgICAgICBmc2wscGlucyA9IDwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBNWDhVTFBf
UEFEX1BURjJfX1VTQjBfSUQgICAgICAgIDB4MTAwMDMNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBNWDhVTFBfUEFEX1BURjRfX1VTQjBfT0MgICAgICAgIDB4MTAwMDMNCj4gPiArICAgICAg
ICAgICAgICAgPjsNCj4gPiArICAgICAgIH07DQo+ID4gKw0KPiA+ICsgICAgICAgcGluY3RybF9v
dGdpZDI6IHVzYjJncnAgew0KPiANCj4gcGluY3RybF91c2IyOiB1c2IyZ3JwDQoNCk9rYXkuDQoN
Cg==

