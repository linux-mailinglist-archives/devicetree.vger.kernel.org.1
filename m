Return-Path: <devicetree+bounces-25359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A288281303C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05D48B21322
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E8F4AF9E;
	Thu, 14 Dec 2023 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="nXBAoZbk"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2042.outbound.protection.outlook.com [40.107.15.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A549CF
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QO1w+U6419vYmd7PM4kdVoXP9g4u9a2XgeXIdKYdZ/0nNoeBIF6Tdi/OxvyKYtWrhxeKmQSOlPxRrizjWbEQDERdgdPY66dbwmhpwaBpRJyU1ST3G+ZAxUs2BAtebelC24iMswy7wHLdzlvvVVkcsWeueyE6EcanjfAtbCI6v0m2Zyh+cBJyH5mgKpY/zgOO7cOHVfsDXvLV00Rp3vbrQwjGpOFeye0nXkUkVTHFscEFlmvYO9DP8aj0efdWWSiScNAnDN9bSrmol62lM5szrrIv+iT2NytA/yKWyL0l+LVa5s4LigsfjvUklrJ8pRdF7qVZQBYGvwDyO8JN1zClRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxIqlQgqIY5mJ1MjK0T3LMeIOA8xtnSXoE7TMJpbE0E=;
 b=Ge+49GPU7XSM3ABPpFVKx1EAK42QEXI0m23ZSL0cDDtgk23lTcp0n4lNyknXKMBk8DUc/pOdNDDrss0rkHSaMRAlzfOVN8M8ueUe+T1nF6Hgnkzc4owelkP0xzcVdWnw142g946JyorxgccWeRoE7Z2sB0Eu/nrycrZWlS+WF9eInZjRpT95Zu06RykOGVu5Ysl7ipGQp0z+6VE3voXKPocsRRKbwq7W+geZ8GErqB1HWUXOZ8KYYmcFaHZuVF3OvsXYK3SQHYbSHyuahkosVVs2oBvnJOTQ3UJxKOUwIYjMfAmb9EyV7sjn9sn7q1NP61dWZMpR9urervZOCgm5dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxIqlQgqIY5mJ1MjK0T3LMeIOA8xtnSXoE7TMJpbE0E=;
 b=nXBAoZbkGR7EuOd+Bg8ewFVWyg21B0CpBf62CPudKfKsZc+aSw6sx1tjfiQUjlW5TDvfM3K3CRLd6z+fjtByJKHqMj8TuPjQyPfiRDQLyoDivpQeh/L8IWzofX9jusV6SecWSyPpdX8AYSTgOqGiFHF6IsrQ3jgWGGuABdIyIT8=
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com (2603:10a6:803:5b::13)
 by PR3PR04MB7244.eurprd04.prod.outlook.com (2603:10a6:102:8e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 12:34:48 +0000
Received: from VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f]) by VI1PR04MB5152.eurprd04.prod.outlook.com
 ([fe80::577e:f2c6:9d67:f89f%7]) with mapi id 15.20.7068.033; Thu, 14 Dec 2023
 12:34:48 +0000
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
Subject: RE: [EXT] Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb and
 typec nodes
Thread-Topic: [EXT] Re: [PATCH 4/4] arm64: dts: imx93-11x11-evk: enable usb
 and typec nodes
Thread-Index: AQHaLn9VF9d64TFuM0+cjMAn7zio9rCoo2CAgAATQLA=
Date: Thu, 14 Dec 2023 12:34:48 +0000
Message-ID:
 <VI1PR04MB5152593905C7BE186F72FECB8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-4-xu.yang_2@nxp.com>
 <CAOMZO5AXB8h6+fqPO3aCsa1=-etRzPMZSLn7Kca6egUmUX822Q@mail.gmail.com>
In-Reply-To:
 <CAOMZO5AXB8h6+fqPO3aCsa1=-etRzPMZSLn7Kca6egUmUX822Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5152:EE_|PR3PR04MB7244:EE_
x-ms-office365-filtering-correlation-id: 76962f2f-caa1-4d39-2a88-08dbfca10f7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 cKStGdZcVZ7tqdxG6fjfj+coeedVFtVdPGA0v4CWFjJtIQkmw8jLo9l3Hwsq7H+zPSQ9UdUsaMzyOzl3D+leHSzUVv/lFd8UCtO5DpG2OsKHmQlYivD5qsYVlY9M8NvI3mogwXfDExD6q8ECmtA4nGf8vV5EKBZTMNe0gu9USDz3xqN1A5woWP4024iuDFLNLUiNZ2fBaL7ORiIkERUd5SasjEaMjuPAiTauQHYsHNGbaWBpmlRSWIQixfc0L4LTrq3gKeP03mzzt2rZe3mNemNcFRXDXXfHrq6KLMQObOEZFLe0cz51jhfeZ+m2lVqScGrJn1h8noKRKvWlElsH27owyxRbQORjT0QMgxdlNVs/NmXJ6egseWe8l5TuhxyaAROaAcTctPGc0CDZe3mYpEUQO080lQvFSlh9I9X5IV4PUjmHAVD4dgi1ssZXPCqonqPSp3QWSi2DxAHjD/TMDW1VVuGVpvMVThfbCG+/Nj4w55Pha9vknXeNG50HoEIJUoj58wJ+pxJncUwt5PaOLPP4nJVpmJJGUHkMdVpS3NrIxbRB7noVVhHY96Y2/FV+6aSfZVOjud0xdyV+AJGtxV7/qnxwutn7TZYe+7N8DQX4XwasTqs6T6P+T3OWrl6tGeOtqQV68og1Vk7MhGrjkQ==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5152.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(366004)(39860400002)(376002)(396003)(230273577357003)(230922051799003)(230173577357003)(186009)(64100799003)(451199024)(1800799012)(83380400001)(9686003)(26005)(122000001)(38100700002)(8936002)(8676002)(52536014)(4326008)(316002)(5660300002)(2906002)(45080400002)(966005)(478600001)(53546011)(6506007)(7696005)(66556008)(76116006)(6916009)(54906003)(64756008)(66446008)(66476007)(66946007)(71200400001)(41300700001)(38070700009)(86362001)(33656002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?M2Y2aUhkUkJGUUR2bDM5TGRVMis1c2srNHZUaWhvS3kyMEhVVFJISGdQNmFW?=
 =?utf-8?B?SlZ0ckFYNWpFZWRmTnpSVmZFR0tyeERwMjlOeVh6SFVXd0RsbldvOEx6MGtv?=
 =?utf-8?B?eWoxaktkMy9aUS90WjZzYkR0N3l6YmovTzFXMkRqYTFEL2hZdFF5MFlsdkNG?=
 =?utf-8?B?Q1E5U3pEd1NkU004K2R1WXRXcklCTk5SZCtoZ3FXZjN5Q0VZRUFnWlRIZ3hl?=
 =?utf-8?B?MncvOVJVWDhtTWlKTUUvd1BCcVhwWDcvYThhMXQ1U1ZGaVBXSHFtTzMxaXFN?=
 =?utf-8?B?RnpmOWtEZDlaNTkvQW9Uc3NIYnFEVEVlYWptR3dhSDhXQS9uMFJuZ1diemNT?=
 =?utf-8?B?VzMxY2NBTnQ1cVg4ZnlCeFhUalpxVkhwQ2JMK2R6cXVGcFBMYitRcnRjNU1v?=
 =?utf-8?B?OCtscHN3OUNIQy9VL0JVZkttTEhPWmVlNFU1VlYvR2RSSE96aGNsa0pOY0pl?=
 =?utf-8?B?Y2hYQnBMM3VTQkNmSmVSSWdFSFJmYllUOTl2L28wS3NDcGpmdUNOVXl1NGgx?=
 =?utf-8?B?ajJlbCtLUG4vT21tbERya3JrUnFiUTRsNXVuUTEzWm8ydm5RUEZPdytSbFdX?=
 =?utf-8?B?QVZsY2pZMG9RYkhBOUIwL3Fja0FhSTcweDJiMVNnZjBlMldMeXRHNkkrZm8x?=
 =?utf-8?B?K2h3MHBacU1rU1BiUjlKbVZLNzg1cTFrdWNNMzd2dFRCK0dqSEUxSFRFSGd6?=
 =?utf-8?B?cFlEZ2g4N1laajRJR1laT1V2ckxrTHdUdWZiNEJ2M0pMMjIzSk1PUFRUaUJo?=
 =?utf-8?B?RHppTkdjMjZYdWZ6ZEJLc2tpbXRNUTRMMHRrSnpFSWZISC93NENOZHlFZHBX?=
 =?utf-8?B?WGc0Q0hsMnNMa0ZxdGRXNW9EajhkSDJhVFczQ05SRTgwRDA3N05KbG83RkFa?=
 =?utf-8?B?ZHBLRENNSmZhK2gxOW5SdnBiVHFhbnZvWkhQU1llMURFVEoybXdZcGFsdEtk?=
 =?utf-8?B?MzFCbDVpWEJ5UFdlKzltc1lwYTFwNFlTTjdzL2dVWjliMXBxY2FiQ0JncjQ3?=
 =?utf-8?B?NGd6M3huNnpCT1B1MHpHOFduS0ZFeUlqb2xMN2ZvRmlsTHlyQ0pYR1dVWUpJ?=
 =?utf-8?B?cll5NVNuQnhVYURPcm5PWWl5Ui94TGFOU1RlRCtwelR2MTlsSFRtWHQ5eURW?=
 =?utf-8?B?N09DSGl0bGt6VTlYNEE5dkFBMUdrNmVlcGVyNklYSGo1OTVKZ2d2NTlZcjJv?=
 =?utf-8?B?TS9MSEZPRk01WThHNTUvUk1ZaDdOd2FaTTN5akpKdkxzYmxwV1lHWDRjb1o0?=
 =?utf-8?B?OHZ1cGNOZ3dsbHVRMi8yalR1ancvM0ZpSUZrdnhNSnZGL25nNkhLU0tkdVdO?=
 =?utf-8?B?OTdmMnJPWEZnT2dUTHAycDhtV1hDK2FMb2ZySERmU0d1RmFYbXVzTFhpcTRh?=
 =?utf-8?B?YnMyWFA5cFYxc2tsdjgrdVN1YkJ2RVJsT0ppcFhUNzNyUndNck9XT2JJYldq?=
 =?utf-8?B?eFE2TmFVUzJkM2lKekJFQUFYUkJFWTkzKzJ4YmFxVmt6TXovN0tNdHFobTZR?=
 =?utf-8?B?aWp5SGJFK1d2TmFLbHBQT0lPUG5QeGhsZS82VTZscU5ZS041QWh3QVprWXZp?=
 =?utf-8?B?cFZMNE9tcDFnbFFLUnJXZDNtVFBndjRGbUlMa3VqQytqQ3dVQUtURDlqMDEw?=
 =?utf-8?B?M1pmUXp5QVh2cis5Y0MyQ280eGUzTGJybnFsaThYc2RyTTdtajQ1TGlFdjFo?=
 =?utf-8?B?SU0yZGFRVThrQ0ViMjZLZzJ0dkxTS0wvZEp5NDJQa1Y1WUg2dGNpcW9VNTFa?=
 =?utf-8?B?bmhXdjJLUGdvY2QxWEY5N3RoOVlxeGY1aFVhRFkwOUZVNVdKSDJmSHRpWERt?=
 =?utf-8?B?djRIaFU3Rmg0MU9Za2hGK0lOVWFGRDU4MHBUS2RwMEtza0hCWXloS0dmZHZa?=
 =?utf-8?B?cExFbHR1Y2FkRUlqVGM3aEp3MnRmYVRzZHFLektvYS9tVXFDUFN1V2V2Z0o1?=
 =?utf-8?B?OThrcjlVS0JEcE1xUmg3d1pWZGhzR1pSVkdhR2RSQ0lSZkhSNXk1dEQ0SHVx?=
 =?utf-8?B?eis1Vk0vUHUxL3BYaGZZd0VHalVpOXEyZkdYNDJpQjlFVStZNzVDUmdxNUNI?=
 =?utf-8?B?dHJyZS9iYkFSTFFQNjVGOURmRFdCV3pFNmdYWlRXSk54YUVFbmNTVDA0YXFy?=
 =?utf-8?Q?mIzSIpyOo56ILUv8zxjsYx1Sv?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 76962f2f-caa1-4d39-2a88-08dbfca10f7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 12:34:48.2592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UywdepCclfFKA5NLpafGJu1RV10GKEHHg/fRnd/GhRyBvHtCF9fYKEEIz2BKwHUpit3vn8YyWJMcxIrnrUIF4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7244

SGkgRmFiaW8sDQoNCj4NCj4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgODoxOeKAr0FNIFh1IFlh
bmcgPHh1LnlhbmdfMkBueHAuY29tPiB3cm90ZToNCj4gPg0KPiA+IFRoZXJlIGFyZSAyIFR5cGUt
QyBwb3J0cyBhbmQgMiBVU0IgY29udHJvbGxlcnMgb24gaS5NWDkzLiBFbmFibGUgdGhlbS4NCj4g
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IFh1IFlhbmcgPHh1LnlhbmdfMkBueHAuY29tPg0KPiA+IC0t
LQ0KPiA+ICAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2lteDkzLTExeDExLWV2ay5kdHMgICAgfCAx
MDggKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMDggaW5zZXJ0aW9u
cygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDkzLTExeDExLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg5
My0xMXgxMS1ldmsuZHRzDQo+ID4gaW5kZXggMmI5ZDQ3NzE2Zjc1Li40MmIxZWE3ZDUyMjAgMTAw
NjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OTMtMTF4MTEt
ZXZrLmR0cw0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDkzLTEx
eDExLWV2ay5kdHMNCj4gPiBAQCAtNSw2ICs1LDcgQEANCj4gPg0KPiA+ICAvZHRzLXYxLzsNCj4g
Pg0KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdXNiL3BkLmg+DQo+ID4gICNpbmNsdWRlICJp
bXg5My5kdHNpIg0KPiA+DQo+ID4gIC8gew0KPiA+IEBAIC0xMDMsNiArMTA0LDcwIEBAICZtdTIg
ew0KPiA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOw0KPiA+ICB9Ow0KPiA+DQo+ID4gKyZscGky
YzMgew0KPiA+ICsgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ID4gKyAgICAgICAjc2l6
ZS1jZWxscyA9IDwwPjsNCj4gPiArICAgICAgIGNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Ow0K
PiA+ICsgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgInNsZWVwIjsNCj4gPiArICAg
ICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9scGkyYzM+Ow0KPiA+ICsgICAgICAgcGluY3RybC0x
ID0gPCZwaW5jdHJsX2xwaTJjMz47DQo+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ID4g
Kw0KPiA+ICsgICAgICAgcHRuNTExMDogdGNwY0A1MCB7DQo+ID4gKyAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAibnhwLHB0bjUxMTAiOw0KPiA+ICsgICAgICAgICAgICAgICByZWcgPSA8MHg1
MD47DQo+ID4gKyAgICAgICAgICAgICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8zPjsNCj4g
PiArICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwyNyBJUlFfVFlQRV9MRVZFTF9MT1c+Ow0K
PiA+ICsgICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ID4gKw0KPiA+ICsgICAgICAg
ICAgICAgICBwb3J0IHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICB0eXBlYzFfZHJfc3c6
IGVuZHBvaW50IHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1l
bmRwb2ludCA9IDwmdXNiMV9kcmRfc3c+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH07
DQo+ID4gKyAgICAgICAgICAgICAgIH07DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICB0eXBl
YzFfY29uOiBjb25uZWN0b3Igew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAidXNiLWMtY29ubmVjdG9yIjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBsYWJl
bCA9ICJVU0ItQyI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItcm9sZSA9ICJk
dWFsIjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBkYXRhLXJvbGUgPSAiZHVhbCI7DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJ5LXBvd2VyLXJvbGUgPSAic2luayI7DQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgc291cmNlLXBkb3MgPSA8UERPX0ZJWEVEKDUwMDAsIDMw
MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHNp
bmstcGRvcyA9IDxQRE9fRklYRUQoNTAwMCwgMzAwMCwgUERPX0ZJWEVEX1VTQl9DT01NKQ0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQRE9fVkFSKDUwMDAsIDIwMDAw
LCAzMDAwKT47DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgb3Atc2luay1taWNyb3dhdHQg
PSA8MTUwMDAwMDA+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHNlbGYtcG93ZXJlZDsN
Cj4NCj4gWW91ciBwYXRjaCBpbnRyb2R1Y2UgZHQtc2NoZW1hIHdhcm5pbmdzLg0KPg0KPiBQb3J0
IHNob3VsZCBiZSBwbGFjZWQgdW5kZXIgY29ubmVjdG9yIGFzIHBlciBueHAscHRuNTExMC55YW1s
Lg0KDQpXaWxsIGZpeCB0aGlzIGluIHYyLg0KDQo+DQo+IFBsZWFzZSBjaGVjazoNCj4gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQlMjUNCj4gMkZzaGF3bmd1
byUyRmxpbnV4LmdpdCUyRmNvbW1pdCUyRiUzRmglM0Rmb3ItDQo+IG5leHQlMjZpZCUzRGRlMGJh
ZTBiNzVmMjg4MzgxNzQ2YmI5ZjZkNmZkMWIzMGYzOTc5NzUmZGF0YT0wNSU3QzAyJTdDeHUueWFu
Z18yJTQwbnhwLmNvbSU3Q2UxZTBmZDM5NGUzYzQwDQo+IDExMzM5YTA4ZGJmYzk3NWE4MSU3QzY4
NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzgzODE0OTkyMDg3Nzkx
NzIlN0NVbmtub3duJTdDVFdGcGINCj4gR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlq
b2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0Mm
c2RhdGE9Rm9KZnNoVUgNCj4gbmdDMjN2eERTVFVmbVJWblclMkZLSUZNd1V3OFlaT2tSNDYxWSUz
RCZyZXNlcnZlZD0wDQo=

