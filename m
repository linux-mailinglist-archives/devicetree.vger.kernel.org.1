Return-Path: <devicetree+bounces-25365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E02B81308A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B9701C209FB
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED874D132;
	Thu, 14 Dec 2023 12:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="qUtbhoIB"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2085.outbound.protection.outlook.com [40.107.105.85])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97822115
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:50:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y37E/g8G6Iths08ODNOthnIzheGDDFJlgYHjBYzIgk1nFnLNS/QJAMyXKtInefNoYOj6nbT6vXG+BT7cGwo9sZFBwKiHayeq9O/lg8dSvMDHue1rMfWtxptUmx5khyW+HJDS8UjQFVJW+K2e+rc+/mgYxFlkDPcmr09ugRK4njfN0www9GgdMCx42nCpxZLS97mzW01KyHl6YlGqFWHzJfYN8EwLe/r+8WsStJCnAGi3mXSBxU6DOJLoMxzbC0+2oyy0ZBf2UViH97j/EAIAMVly4Ve6Asn1FILGiFwMwWZteXGLQ3hSRDOd8dJsM4yr6Yd3Hh6D7gi0OPaqpZlnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gXLdU3c8CjI0praSWZwqGvubfrxYojz26tc/A+BNHoQ=;
 b=PIOBac6X9UGQ/6UqRKT498jlT6+9g1mVQeKWS3oYqfiyzV1zv6bodCxSPyCtr4Q/7viXdkCDYHOTG2HZucyOrg3aWsdngxcnlVqbRWa7dz/Bl/q1Z+OrOJ9nD/Rg7Qp50nKljp0+tWCAcsPF+f2wPv+mn1GFYIDLaYAksKONSRUTgyuoMZ3S7kqohj0KDgYp42hMnyipnS8TP4RnYoxJqmXJtsUkwBRZ0m3A9Mr4Wqv5lsuApairBpr7P9qLDSOlJLo2x2lJiywHwYicBWr3YzuNy0PzXsRZS2YOkWXo9d/3/DdyFH24QiJ456d3jVS6bafW69y7eZ4XrjyVbXOywg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gXLdU3c8CjI0praSWZwqGvubfrxYojz26tc/A+BNHoQ=;
 b=qUtbhoIBEu7GzrK8bdvl1XlEfasM4uWHFHmk8TQlA8x1Vs3m5N7RNVU2o/C9bPS4yTdfrmP38eXNWpOMW71N6VmeGUIqhKaccDsDxbZ4ZuoG+LJSEiRpYhFHT5qNsRggyzJco/MrIXDgW5uPUZX9M82JNn+8/vkeOCni5BAuNus=
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by AS1PR04MB9382.eurprd04.prod.outlook.com (2603:10a6:20b:4da::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 12:50:25 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 12:50:24 +0000
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
Thread-Index: AQHaLn9RXeQaIxpAwUS6zMe/OUV0PLCorKEAgAAM+7A=
Date: Thu, 14 Dec 2023 12:50:24 +0000
Message-ID:
 <VI1PR04MB51523F1EF74EF23B92C6880D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-2-xu.yang_2@nxp.com>
 <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com>
In-Reply-To:
 <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5152:EE_|AS1PR04MB9382:EE_
x-ms-office365-filtering-correlation-id: 1e355189-3822-4228-097e-08dbfca33d73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 3G+rNmo1w28BOoSWHI8QKZfvwp8Zs/JJfz4A8AWmZHQlCDIltcfSQBoc1B/OdeGoEuCtQ3AeQmLbB2ftK8BnbEqizEVenhMlVdnQ2E9uDMLuTeWT+4UvlnPALv12bmfaxTOxuouqH4BvPPVkQOgsroKgks61E65PhpAPZnc3wA/1vhX5j1KwQX1xKXQOSfWwNgAXe7lnwOf0BkL2QkcnDJ9Jyz+bZQSC80YGI3iVxaggaBjPgGAe0YlUWWw2jahfWcb/y/QKbaCc3YFaqSZjSZEVfFzS/YSrygQvRFDrJsdk0G01fhgTsjCGi1rGwdxkLsZMvZ6KsdE9DRuqH5P4y4oJMuHag8GFB6vP+9QgLJtLYY8Dc39I3A8LlBUmEogHKAyVd+6J/xUmndOkQ6xXrlzpuyU++8w7eNwzydY9QzMhs3zsBhURANnygrIf/V+1PumCqYad3z4QU44bYQJY0S4HqjhX9h66iM1fnNVZ4Fsk0ZWg1J3XEU2m1KfxwYSfMc4wdIR3YmoPjsZZWuFGZbujXTfxcCxkLgJE76/2u8aMDLwJ+PPwdXzG57q7UWFJMcdfP7TfFgwEMVWvArTQugolJT7g0IewxoKdgXrwwAqn5nEEx/Dfo4p+MKlkm3QjsNd2j919NwmtW4MNjLZ3qA==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(52536014)(55016003)(86362001)(4326008)(8936002)(8676002)(2906002)(71200400001)(9686003)(53546011)(6506007)(7696005)(66946007)(76116006)(66556008)(316002)(66446008)(66476007)(64756008)(478600001)(5660300002)(4744005)(38100700002)(122000001)(41300700001)(33656002)(38070700009)(26005)(54906003)(6916009)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZE5pdlJSMWR0cGxZL3dCRjc1V3J5ZjBpbjU5a2E4TmlVaHBFMFc1akVsdWpE?=
 =?utf-8?B?blFwTEg5bFp2S2xHK0RnYjVXK2tnT2lwWEJqVUwydkFVL2YxWjlBTnk5WThQ?=
 =?utf-8?B?NzlEb3M4ellTQ1pnWHBEWmJaMTNRZ0ZaZy84SGQyakIrL1k0enZnTVI5OXBm?=
 =?utf-8?B?RWF4RFZ4TGNjaDc2bG1vayt5QlpZc3lNajVJQk1Wc1luYjd3ZXZaZmNpZkxn?=
 =?utf-8?B?c21vL2F3NjV2V2xQSk0xaXcrdjRMVU1jUDVyRkZKTGlaaWhDc01OUVhtMGNG?=
 =?utf-8?B?QlNBTmxRWGR4Z0VMSnJuT1hOL3lxSS9UbU9Ia3MzUisrYVdsdDhiKzBpRDZO?=
 =?utf-8?B?NVliMCtRYzlIWFpSa1hIUDY0UVJWZVdsaGsyWTEzTUgraUJaUWJoRWNvUmtZ?=
 =?utf-8?B?b3YyQ3hwMTdlck5MdDl3UXlha21GUE1pVE90WW5HeVFhdEo4RVI3YkM2a2dE?=
 =?utf-8?B?cTVEYmsxN3NRVzVkUXpQcU5GUDdDM2VzSmFRQThicTZXMmpyVlF3MnQ4ZFZN?=
 =?utf-8?B?bnZodm5STnhBL3E4S3JtSTEweXlIOElIMXhlNGwrTi9CWUozcFR4YTEyZWlx?=
 =?utf-8?B?bHNKNGFVOWRyRjByOW1RckZMdk1MWHJMTEhJajc5ZURPV0VGSThNYk1tZ3ky?=
 =?utf-8?B?SU13TVpPZmJ5ZEc0dHZYWWp4UGZ6UWM2Uk9vbGpFK3ZJaTcyY1RqRFpRTzFV?=
 =?utf-8?B?Y0NkbmYyUVhGQnZ2NEFITUR3SXZ4bXhBMjhkS1k2MzFncnpjMG5Dd0NDemdK?=
 =?utf-8?B?MVlWNEJJZ2phTGN6bkR2aGs1ODc2aWd6RVIyOTNmcjlOdUxYWmRjb0N3dFBV?=
 =?utf-8?B?cjg5WnhCdnpZZ1hDbDVWSXFuRnBkVE9uQVQyV3NqdldkdzJ6NDM3TVlLb1lQ?=
 =?utf-8?B?RzViY2FxUDMybnQ3TmFiL05LQzloMlZMR0pKd0lqM3R5a3MrZTNkZnprMEx4?=
 =?utf-8?B?dEtKZnRTWENaOGhrY1E4TW1IT0JVWkNVMm1vZXFUVkYzVmJMMnltalJqZjBD?=
 =?utf-8?B?WDlLUW1taHlYRFJoRXRjdWlybEUwQjd1WlorM05mVjFTcnhxeDQ3RWRWTCtH?=
 =?utf-8?B?U01jWldnMVNpenREc1hYNXU3MmZkOVNrWHgyVmZZclI4SVFNQllpLzlLWFJM?=
 =?utf-8?B?QXRoVE1KQUtvYW5RclNiWGhBSlFHMFUrTEFHVTRJdncyT1gyV1psYVlmaC90?=
 =?utf-8?B?N29kaDRyRjNrTXF3a3JNYXdRTEFLbENabGZSUTRscXZDZ0V3RHU0b0RzTFlB?=
 =?utf-8?B?LzBUQm9ydkZ4WE5YTmV6Z1FockNoR1FlcCswczNNaGpFOUZmRU4xUlZqRWlL?=
 =?utf-8?B?ekpQSFdwdXVzZVpjSGFwYkxDVjVwVTNFVWkxa0ZSY1BSOHU4UmMwMFF1cW5J?=
 =?utf-8?B?bUs3WGJEL2g5YkdFeVd5VmpQWURqZW9peFlUYWI4bVFHeitWV2ltcDFWVTRs?=
 =?utf-8?B?cGVkaVBQaDdFMkMvWEdNdkRzTENOK0MwWGJmbEpkaVFwSURMaHZGYUVieUl2?=
 =?utf-8?B?M1VsdlJHMzN2ZThyNjBQNGVIc05oTEVtVzF2RDg4V2pPaVIrZFYzWG8yZ0dM?=
 =?utf-8?B?R2N6d1k5eVAwSmxLUDc4NFR0STlPczd0N0diVXp6R3NvaWJIaWsvdkNtQi9y?=
 =?utf-8?B?ZGd1bmw5aHhabzdTK3lFTkxIQkZFT1BQalMrSk5KQUUvd3pIVG4vL3p6RHhN?=
 =?utf-8?B?R2FaS3NpZ2VJck5EK3cxMWNYRUZIaDY0dlg0dk5kL2ZiNlQyV1NpN216MmlK?=
 =?utf-8?B?WVZSZWIvN1BKY2E1OEQ5aFQwT3RUWS80emx4aVJmQlErMG9ZdzdOMENldEUy?=
 =?utf-8?B?TmREdjhHNWtEaThZWllFWjlEaXlNZDE1b1BoZEFDcUhXd2lkZTMyYzA2RUtr?=
 =?utf-8?B?TDlzZ0FHTElTNDVHVzYvaitmd2JqYVp4Y0l4cGgwblBTT2xxQWltVE40RTYw?=
 =?utf-8?B?MlFKbnNvbTAzNW5QMlVkdVRFcFl4L2JXTkw3dmtRK01Ya2hWSTI2c3Y3akhD?=
 =?utf-8?B?d1hLVlljNHRQR1F4a1QrNEZWZ2E4c3JSTThVZG9FRCtMaXE2cS9lS2pReEhW?=
 =?utf-8?B?S0lnK2NUSVBhb2xZdFRSTE5xWEg0TW9UL1UxTHZxUk1WZVd3ZUM5d3JveEVF?=
 =?utf-8?Q?i2Mw6l4aDJOIPakBIPzl0IB+/?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e355189-3822-4228-097e-08dbfca33d73
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 12:50:24.3774
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4PEUAYBjzh1DguIZigQzfs+rZSf4UU776ao4Vo2UQnSbNpCmaL6ktdQYaZy6ZtQNhqq4wzLVu3seYwj/djyh7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9382

SGkgRmFiaW8sDQoNCj4gDQo+IE9uIFRodSwgRGVjIDE0LCAyMDIzIGF0IDg6MTnigK9BTSBYdSBZ
YW5nIDx4dS55YW5nXzJAbnhwLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBFbmFibGUgMiBVU0Igbm9k
ZXMgb24gaS5NWDhVTFAgZXZrIGJvYXJkLg0KPiANCj4gaW14OHVscC1ldmsgc2NoZW1hdGljcyBz
aG93IHR3byBQVE41MTUwIGFuZCB0d28gVVNCIFR5cGUtQyBjb25uZWN0b3JzLg0KPiANCj4gV2h5
IGFyZSB0aGV5IG5vdCByZXByZXNlbnRlZCBpbiB0aGUgZGV2aWNldHJlZT8NCg0KUFRONTE1MCBj
YW4gd29yayBhdXRvbm9tb3VzbHkgZm9yIG1vc3Qgb2YgdGhlIGJhc2ljIGZ1bmN0aW9ucy4NCkkg
ZG9u4oCZdCBzZWUgYSBuZWVkIHRvIGVuYWJsZSBkcml2ZXIgZm9yIGl0IG5vdy4NCg0KVGhhbmtz
LA0KWHUgWWFuZw0K

