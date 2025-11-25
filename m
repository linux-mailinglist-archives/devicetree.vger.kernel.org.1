Return-Path: <devicetree+bounces-241965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4484FC84BC8
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E57BB34FCDC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F85531576C;
	Tue, 25 Nov 2025 11:29:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2101.outbound.protection.partner.outlook.cn [139.219.17.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F4126C39E;
	Tue, 25 Nov 2025 11:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764070158; cv=fail; b=R/7ldwd0/pznuwMxU6q7WDdQrbAIFJCtuFQCkvAmvGTDjIw6BbiACN6pj3BA8xPe9SLK06y+IZPVBVpJ2SRV8c+DHblmanvKZ4ixZZsmLWGBAud5+tR93GT+kXb2EwGD7pDtjLqvhQZGsLXIPGdzrvyl4218C6xTkAhbQNn0Fho=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764070158; c=relaxed/simple;
	bh=qtfwhYYOKtUc/HqEVzwSfbuWLVe+llYdaDT7PE/RGmU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=PcTYzF32g8b4aSmED4Ez5kOq88B0rpoo8fYl/1eB6YqBCq/VzELjZVvXL8sYx42mlxOhiECW6Ph9I69a2xGYyTpE5unM0ThIRdes+sVAtCODmsqCqrp7qHvqoz9vq3kWwyldovlYuq0wjZQqyD3D3Zxiji+Pk7hw0qjGxVukiqQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZbP48pPom6ARnyeS31C5uc0jKXEeketRyeV/Nm1HF0HlZbHIlq7PpmIVZlw5AFnihEmlb6zbO5XtZSsTsWyy8/P8WRIGhro9Gp7U/OOnnBYnYhIT2PoDjXcU2jg8B+Iboiw7fiZL6YQL/Y59Vk00NDW8lL96CPwUAaS9l69a3bZV5MBzU4SrLIbX//JV/UKimHyTlLIEC/q1L7O7H/Pq/5cdpxK4J4+qx6p/Xbg6Ca/GNJAE0A+NyrvFjRNoyPTZb4uDgpI/D9vCoVL4R77NNSEpnCxImHimPWoT8/SGmMHqtWx/D0gAP+N6l3E8yHx4IWV+Ui9+1Cmi6rl/CT42Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qtfwhYYOKtUc/HqEVzwSfbuWLVe+llYdaDT7PE/RGmU=;
 b=iqrpmymsE2gzjhYXvFJyen0AVXIj8oOAjfxBr1GiMYxXKTeCRzql21lA6opUXj+WkLyOnqGfUCEPgdiyoybup6p2C6GiN7DI07l45TqALzFeS8Qb56pMzS4DJkjvvDRlDJdbbQRevUgR79IJjmanJOby/ouy/kgqw607ySnC5QGSCzBrn/7RBKDAZr3IaIHoBBpEdMo2wsnr1CD1rA/J7F03tlmJmIr99VmxPMJKnDxcrOBueXgGuj27/Ck0kaZQ5iIXVkRQHHxqudsOZZ7S9+w/53zy5uSlHGvu2kYIVqYXQzFMCzlXeUPnHtgyeHUv/rOKY5U2RN+HuC94+Sfjjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1258.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Tue, 25 Nov
 2025 09:54:16 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.024; Tue, 25 Nov 2025
 09:54:16 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley
	<conor+dt@kernel.org>, E Shattow <e@freeshell.de>, Heinrich Schuchardt
	<heinrich.schuchardt@canonical.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, =?utf-8?B?S3J6eXN6dG9mIFdpbGN6ecWEc2tp?=
	<kwilczynski@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Rob
 Herring <robh@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 3/5] riscv: dts: starfive: Add common board dtsi for
 VisionFive 2 Lite variants
Thread-Topic: [PATCH v3 3/5] riscv: dts: starfive: Add common board dtsi for
 VisionFive 2 Lite variants
Thread-Index: AQHcWffbynCSA+IJ+0Oz5i411OTTsrT9BkyAgAYhFuA=
Date: Tue, 25 Nov 2025 09:54:16 +0000
Message-ID:
 <ZQ2PR01MB13071D2B6401DF66E2EF1F95E6D12@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
 <20251120082946.109378-4-hal.feng@starfivetech.com>
 <CAJM55Z8NsC_-jcrm+ndMonU6EtkSzhAQvoROXZwOWNi9FeQLXA@mail.gmail.com>
In-Reply-To:
 <CAJM55Z8NsC_-jcrm+ndMonU6EtkSzhAQvoROXZwOWNi9FeQLXA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1258:EE_
x-ms-office365-filtering-correlation-id: 55e2e924-11d2-4aef-9eac-08de2c089874
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|41320700013|366016|1800799024|38070700021|921020;
x-microsoft-antispam-message-info:
 6Wq6E21Mfkruntdt2L/rcMYinDNm/RnG8jLZTu75ZhC3zB3ByrXqgodh93GrmB0Gk3N3WAjuHAej3+cEIgUPpwC+a/zHOcaoTC19U+9WRFsVAQGZap+VvcNNnwxOIYXRq2u78h8dMf+yDfr2jU87jCDXIkl9snoFvnyi6WXF2Qx6e1IJ1Zr0bwjcwSz/82Zp5+wiDBe47WLdbDypPL0mWM9nmyzpjP7XBcNU0V2SsI4PyunnmlwfgsBft7726m+OOHWDCybulqWsqiq+y8NE7o6teD1LmDhYq0yVj1/I1h8fWMwdGYL0xNKyF4n0u8NTfWBM09MqEwU/B170kA7TgVF3X8ah68EgXrrnQO9fGECHRqpewj1bvsGKbZ5LE5TUM558r8WTXt3VTjpnHPbRKfVcAj4dQkqPcsLW9/BH0hjeFMQai161ziH6tCq3MbYNABkcC47xPvY+y8kIeHW+pgc8+yZFwqGuzMpJDQFbrfWlRlVmlrR6pXeU067weyH7KRqJbz/1f6v6dLgaLJEzMzskGvJuLivnN7nfNSMhDnpvnfLxA9N6qewVj+cxjcRnci1NEl0BT7VgU0GCAAW1DgaorNrQYwbncqlOpLP37wc=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(7416014)(41320700013)(366016)(1800799024)(38070700021)(921020);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?UWg0cExrTENKOXJUS3M1bGFQYXBqUUczMlZzR0lPRHpiZ3Z5Ym9DUFVmajJp?=
 =?utf-8?B?MlJxOG9vVWNDUkw4L2d5ZUJRYXpXTXBsUXdJZ2ZEY1haVEN2VEtGOXFMNUJI?=
 =?utf-8?B?TnUyU2RUUlVMaVFBbU95aFRhbmFVV091MTdqdThwMkZyakJnK2M1emprUWtI?=
 =?utf-8?B?MnErYmk5QTdISHBBZUowVGNMZTBSbVE2UGVnWmpoaUZDUlI0ZjhtcWtmaGlx?=
 =?utf-8?B?WE1uNUYwd1dTZXEwU1U5Y1ZJV1dBWXNBUHp6dTZmYlpISk8va2RnUXl2b1c5?=
 =?utf-8?B?KzBjQzQvZk5VM3BBWVZOcFk3ckgvako2dTRqT3NxbUI3NVNxNm50Z3ZjKy9p?=
 =?utf-8?B?SVJnNFF3b0JTTm5kWHJqbTl3WWpERzA0Qk5OcjcwN2kwWmVIRm1leC9xcDBB?=
 =?utf-8?B?c2NtalBOTXRjdzJRcHZSaFVNZ2VRZ0NQcHQvL2ZsMXhJS1ZJKzFGTmN4NldD?=
 =?utf-8?B?NSs1VW1VRm5Da0l5Y1lYTzZ4bEdqeGtCSFZpdHRRdllYemNmTlYrYXpSUS9P?=
 =?utf-8?B?ZWtQR21pVmFJa2tZUGthZXJjaS9GbTZZNDBkaDRBUUhqVklQdlo1bEVZQjZV?=
 =?utf-8?B?bk5qUHJMRXRieGlGM3pGL1BWZGpXc1dDTlRqbHVidmQvb3JDejN2MVExZ3RX?=
 =?utf-8?B?R0VZbjY3eGZNNVJSYllpdUExYW81eGRCRzUya3hEZFB3U1hiTStROElDa1dw?=
 =?utf-8?B?S0Jzd25mOUViWDJDanNwRDZqRExIaUd5d0pRNXJWd1ZacUtXS2J3YnZ4SnRl?=
 =?utf-8?B?akRUcHhRYmcwakJkSmRzQm5mbnJrSXU5TEVsNmRWdFhNenJ1YldyQXZrQ3Mr?=
 =?utf-8?B?VDBXSWpRa1Y0V201WkJadVFQRkkvU01lOE5KczF4dzVXNGRhOThIem4yM09L?=
 =?utf-8?B?U1hGVU9KYXUreU1qK2FvTnJXYkUyMEliQlVjQzNuWmZjYzhBOW5VbDlXSUJ6?=
 =?utf-8?B?OCs2bEJkTWFhUWM5eWVUc09oK1VaNm1lSitHZWc4VDMvTWt3NVBVU1E1Nmcx?=
 =?utf-8?B?YUN4ZERJTytHb2JpdjdMczBiYmJWSjNZekFQaEYyU0tCdytnVUxrd1BET3ZS?=
 =?utf-8?B?N2ZMSENiQWliQ3YzWC9oWnU5YzFPMWJqQURvMlY3S1oxcVRpZ0toMHZrQ1A4?=
 =?utf-8?B?aVdiclRSUklFV0hIS0J0aENUNW94eU1mV1crMGlYa0s5R3JuZVRVM25vYi9v?=
 =?utf-8?B?c3duaVN6TGc3dnl3MXM1bTFNV093dm5hT2QzdXJDWDIvdnlKWGp4OTJCbStC?=
 =?utf-8?B?MlpXd2UwaTZDQkxhTGlTNUY1Ny9ISEVpUmJvcU5PdTBpNEFETEJEOWRReStT?=
 =?utf-8?B?Q1VXMXpLam5qdmorNm1YRURucVZxa2ZRMThhNHF5L2doZ3BhMjIwUWZxaDVU?=
 =?utf-8?B?Wit1RGtCY2NkcUQ0Sm9lcDc0TjRQU2tLWjZHd0d3NGNKM1NSMVNkN1VpZ0Jv?=
 =?utf-8?B?K2xxNkdpVmxQOXFFNkE2aTZiVExZZ0cvVllXZU5FTS96ZzcwSFJraW45NitT?=
 =?utf-8?B?ckNERHExd09SOFhpc2E1elNuZXpLRjY1b09mR2FRaXQ0L1doOC9nTzU1WlRN?=
 =?utf-8?B?c1NRYXpjODcxK3BXbm83aCt0YkY1REFHMEliOFEzVCtqRHF2aTZHS1ZQZC9F?=
 =?utf-8?B?TFljQklnc1Y4b25QYlg5YVJHNkhGZTVwOWNVdU9UZFNiTTFaSXEvT1pGYzhX?=
 =?utf-8?B?YldMclhqMjBMZnJiMlFQN2pqc3JYVEJOdWM1T015K2xmY2x0QjQ0b1FROGpB?=
 =?utf-8?B?cXo2SXNVYUt6TjQ3eEc0YUNnbWVBN1BPTUJUZXppSzZoVE54d2RUbmkvWW9u?=
 =?utf-8?B?NGlwR0ZuRWdwNWNVNVNRYlg4QVZPeG5oVHBzM3M4U3dyZjZTZ3dWdUdQSnIz?=
 =?utf-8?B?d3owV01WUjhjWlVCRkF1S2ZubCtxOStnbVhhdjlNanJMeUQyODJIcFFXb3BQ?=
 =?utf-8?B?TG52N3BTS1QvejVTSEJ5bStvOUhBek4rRG9ORlRiaExGV0NVd3N4TnVyVTNz?=
 =?utf-8?B?SWxENlUwSmM3MW1zWnA5ZXdnRzRVd1NQNkRWakVaK3FlVzJlWEgzOHhVMkl3?=
 =?utf-8?B?NEZHUTdmK3ErYU5aVzhNVnZqVjlQdGw4M3JudWFqNUF3YS9aQUFqZElyTXcx?=
 =?utf-8?Q?TuCFPz72LaO6aTHsnSjqwARQE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 55e2e924-11d2-4aef-9eac-08de2c089874
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 09:54:16.1937
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yqQ/8yMSrglOAITAFYCQAxsKvkxFFE1dk0uvsr3kyOhluEvUxjbneCqiPm77Yjpw+p1zbwc0wESDi9l/6EgOdCKnE2ShUHGwjKuUunYRcWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1258

PiBPbiAyMS4xMS4yNSAxOTo1MSwgRW1pbCBSZW5uZXIgQmVydGhpbmcgd3JvdGU6IA0KPiBRdW90
aW5nIEhhbCBGZW5nICgyMDI1LTExLTIwIDA5OjI5OjQ0KQ0KPiA+IEFkZCBjb21tb24gYm9hcmQg
ZHRzaSBmb3IgdXNlIGJ5IFZpc2lvbkZpdmUgMiBMaXRlIHZhcmlhbnRzLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogSGFsIEZlbmcgPGhhbC5mZW5nQHN0YXJmaXZldGVjaC5jb20+DQo+ID4gLS0t
DQo+ID4gIC4uLi9qaDcxMTBzLXN0YXJmaXZlLXZpc2lvbmZpdmUtMi1saXRlLmR0c2kgICB8IDY5
MSArKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDY5MSBpbnNlcnRpb25z
KCspDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiA+IGFyY2gvcmlzY3YvYm9vdC9kdHMvc3Rh
cmZpdmUvamg3MTEwcy1zdGFyZml2ZS12aXNpb25maXZlLTItbGl0ZS5kdHNpDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0DQo+ID4gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3N0YXJmaXZlL2poNzExMHMtc3Rh
cmZpdmUtdmlzaW9uZml2ZS0yLWxpdGUuZHRzaQ0KPiA+IGIvYXJjaC9yaXNjdi9ib290L2R0cy9z
dGFyZml2ZS9qaDcxMTBzLXN0YXJmaXZlLXZpc2lvbmZpdmUtMi1saXRlLmR0c2kNCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYWEzNzVjNGEzZmEzDQo+
ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc3RhcmZpdmUv
amg3MTEwcy1zdGFyZml2ZS12aXNpb25maXZlLTItbGl0ZS4NCj4gPiArKysgZHRzaQ0KPiA+IEBA
IC0wLDAgKzEsNjkxIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
IE9SIE1JVA0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjUgU3RhckZpdmUgVGVj
aG5vbG9neSBDby4sIEx0ZC4NCj4gPiArICogQ29weXJpZ2h0IChDKSAyMDI1IEhhbCBGZW5nIDxo
YWwuZmVuZ0BzdGFyZml2ZXRlY2guY29tPiAgKi8NCj4gPiArDQo+ID4gKy9kdHMtdjEvOw0KPiA+
ICsjaW5jbHVkZSAiamg3MTEwLmR0c2kiDQo+ID4gKyNpbmNsdWRlICJqaDcxMTAtcGluZnVuYy5o
Ig0KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+DQo+ID4gKyNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9sZWRzL2NvbW1vbi5oPg0KPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
cGluY3RybC9zdGFyZml2ZSxqaDcxMTAtcGluY3RybC5oPg0KPiAnJw0KPiBJJ20gY29uZnVzZWQu
IEluIFsxXSB5b3Ugc2FpZCAicmVtb3ZlIGpoNzExMHMtY29tbW9uLmR0c2ksIGJlY2F1c2Ugb25s
eQ0KPiBvbmUgYm9hcmQgdXNlcyBKSDcxMTBTIG5vdy4iIGJ1dCB0aGlzIHNlcmllcyBzdGlsbCBh
ZGRzIHR3byBkaWZmZXJlbnQgYm9hcmRzLg0KDQpJbiBteSB2aWV3LCBWaXNpb25GaXZlIDIgTGl0
ZSBhbmQgVmlzaW9uRml2ZSAyIExpdGUgZU1NQyBhcmUgb25lIHR5cGUgb2YgYm9hcmQsDQpidXQg
dGhleSBoYXZlIGRpZmZlcmVudCBzdG9yYWdlIGNvbXBvbmVudHMuDQoNCj4gDQo+IEFsc28gdGhp
cyBkZXJpdmVzIGZyb20gamg3MTEwLmR0c2kgcmF0aGVyIHRoYW4gZnJvbSBqaDcxMTAtY29tbW9u
LmR0cyBhcyBJDQo+IHN1Z2dlc3RlZCBpbiBbMl0uDQoNClNvcnJ5LCBJIG1pc3VuZGVyc3Rvb2Qg
eW91ciBtZXNzYWdlcy4gSSBzZW50IHY0IFsxXSBqdXN0IG5vdywgcGxlYXNlIGNoZWNrIGl0Lg0K
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MTEyNTA3NTYwNC42OTM3MC0xLWhh
bC5mZW5nQHN0YXJmaXZldGVjaC5jb20vDQoNCkJlc3QgcmVnYXJkcywNCkhhbA0KDQo+IA0KPiBJ
biBhbnkgY2FzZSBJJ20gZmluZSB3aXRoIGRvaW5nIGl0IHRoaXMgd2F5LCBzbw0KPiBBY2tlZC1i
eTogRW1pbCBSZW5uZXIgQmVydGhpbmcgPGVtaWwucmVubmVyLmJlcnRoaW5nQGNhbm9uaWNhbC5j
b20+DQo+IA0KPiBbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LQ0KPiByaXNjdi9a
UTJQUjAxTUIxMzA3NjU0NEUyMTM2RTdFN0MyRUVEQTFFNkNEMkBaUTJQUjAxTUIxMzA3Lg0KPiBD
SE5QUjAxLnByb2QucGFydG5lci5vdXRsb29rLmNuLw0KPiBbMl06IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXJpc2N2L0NBSk01NVotDQo+IE1mcFZYM0V1UV9BanZEU2s2RndSNTFSNWNR
ZE41UnliUzlwYko4cjlOTmdAbWFpbC5nbWFpbC5jb20vDQo=

