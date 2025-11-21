Return-Path: <devicetree+bounces-240890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DFBC77426
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 05:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 135B54E6D18
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 04:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B60D62BDC0C;
	Fri, 21 Nov 2025 04:38:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2139.outbound.protection.partner.outlook.cn [139.219.146.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA420C001;
	Fri, 21 Nov 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.139
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763699939; cv=fail; b=sEHsMEneZGAWIovrXPaHdup0UW/3GLk2ZEn5rAzVkCvTYLFG6YqT1N33RUX8RbOExxcSsNImyYq+MtXJ9RKhkp2wI3SART0tfjHiEsqotDe76zlDCPiPrCT4S41QyXmKsrnOQZwE9GaQii6hcNrc8WNIczHWWx1ro0koBdBAUz0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763699939; c=relaxed/simple;
	bh=X4laH/J+ASu+H2l/nZ+keS8X7yEqarth+iifRg/XKQo=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=DWsrifKJ1mjfaZqaGzPDsFIkNvCA1Stw7eoqbK6UwIgGkGEs9xQCBBDgXzVCf3lsUNQDIarSACTeozMUvGwtiyZ0lT5FbVHL+9bl9N7C51VHqMMvCYLcyofDJAXjFB3agZR7G/7clueWORM2JndSk0Axy4t+wYEE0ixDlcYgfhc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HZmNwVFrLenVEzp1Fd4y4V21glqT243ZzqMBu8FrtvxlCgQyEIt3xhzT5Ph2MTp47tMwpJKEWpcCkMeQwdyp4xAwhEySY1rSP7CleNFQyX5Q1VDEUjMZ1qEtyvfCVcLDTe3FoJqHsR2dzAbF4iMODexGBQmR/K7deAf3ifiZrHR/tBKLI4l1ZoGGC3b4NEo5wi3xbqlK5+nW9B0mU6vrOTTqMX90UnWUiIUs0U644mDGpH2pPvXYSzWScWVl28RQ84aEmHc6Hujavvavga9ulnoY5WqEmfVyLE62DpBSmlUXTq2/7V5By+8VQ/RFrxvfXtN+0dxKUg1LtCfJ79I1Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4laH/J+ASu+H2l/nZ+keS8X7yEqarth+iifRg/XKQo=;
 b=Kfnh25EjWFvvj1kVcjVBBqIoj84GA0TXlft/gb1WzpGhpU1PSEImB47+sXGq3TAwOsLG+5aJ7mJQXWNjhIsuKqei65HHnP+uLFe/Jk2auAHwBJUKR5wz/36f5Q8bLBWSiF7bauEqrIQLk7VKNj+IZBR7+jUyjB3x3DEC4yc3q4WfU8wJzjLx3Rn8YU7fwsGcxAni12xDP31j+6tYlbQBVCn64nOhN/L94IY/wRiFWjFTNOpNBus37YaQmb0nUspGLOEhYYj7JV1qmlnS2cQyHWIt7H/tTDuQVnMjS00YmANdupv1KpW3pw7cPilCkFQifa291pwMta3V6M9Dn1xXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1180.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:12::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.23; Fri, 21 Nov
 2025 04:23:35 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.024; Fri, 21 Nov 2025
 04:23:35 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Manivannan Sadhasivam <mani@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Palmer Dabbelt
	<palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, Albert Ou
	<aou@eecs.berkeley.edu>, "Rafael J . Wysocki" <rafael@kernel.org>, Viresh
 Kumar <viresh.kumar@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, =?utf-8?B?S3J6eXN6dG9mIFdpbGN6ecWEc2tp?=
	<kwilczynski@kernel.org>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Heinrich Schuchardt
	<heinrich.schuchardt@canonical.com>, E Shattow <e@freeshell.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 1/5] dt-bindings: PCI: starfive,jh7110-pcie: Add
 enable-gpios property
Thread-Topic: [PATCH v3 1/5] dt-bindings: PCI: starfive,jh7110-pcie: Add
 enable-gpios property
Thread-Index: AQHcWffZZq7M6stxzk+m/AvQeD+fAbT7hT2AgADmvhA=
Date: Fri, 21 Nov 2025 04:23:35 +0000
Message-ID:
 <ZQ2PR01MB1307A802B916620235B87518E6D52@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
 <20251120082946.109378-2-hal.feng@starfivetech.com>
 <xxswzi4v6gpuqbe3cczj2yjmprhvln26fl5ligsp5vkiogrnwk@hpifxivaps6j>
In-Reply-To: <xxswzi4v6gpuqbe3cczj2yjmprhvln26fl5ligsp5vkiogrnwk@hpifxivaps6j>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1180:EE_
x-ms-office365-filtering-correlation-id: d2e44f9d-42a5-4789-36ba-08de28b5bcc1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|41320700013|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 PzdqPgUF8naRPMlfDOmhQYnvFgeuigAvG6yYOQMVb6yrwH9BNEBltEgvb1OsoAYI6u4HRbxsPVZleQ3dnUFRIijHPSlmfhe/ko5P3CIwkUU1DDrLFJeYJ7/pu1KXzF24Rix/aZqvfgmNuZNfjFJM5vXuZ7BdvNYBYv8uyQ267U6QtRfXtF7mrkXKNPcq7ZkZzFP05JQNh7Dwzw0SsN7332AgD/V7glHY+QIidgUwwsji3DhwWZ/NCx4+tN9z5X9ZnuQfIrlTfHseY62pLNx69v2HQTval1KXp17mCt0q0+oymqQuOe1WVWtC/86+olIOngyJhJhenFQ0LWN855itKpEPk5y7aLpVSJnti5uFfWW0pV/vGgqb4cdQTyO+1t2JF0xDAGohiJ7u/n5G+R8QbXjB75ZX3+D5csQW8LcyKAUhUSNIZelr56VitLBHcCqq/gyi56FpMbXBSOMOu7QWuYtVCnxwkuvJAP9hTk5zPBdsf5k9DNXVes4nhHUDiFFPlS2F5RN3pKb0FEhpL3JwiEX2tUllcV5IZRIgX/IK2eA1ovHrWpwgLV0aRA6L/2MbeXx6ZN0/gjAsbinrd+tSAg==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(7416014)(41320700013)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?WnZ6WWFkRy9lT2haQXhNYnVyT2ZoWWFQZGluRmwzbVI2WlFqNEU5K2pjOERu?=
 =?utf-8?B?Ylk5aWhoRlJMcE1kZ0g3bmIrNnpPOXN1bzFIT2ZDU0J6WWtmT1M2ODBvdE5M?=
 =?utf-8?B?bTFWMlh2OWRIRjIyVXpYRkx3dTIzK3JQS0ZZRFBZVTFDYUNzaFFjK0JBY3ZS?=
 =?utf-8?B?YlZBU0NtdVcybmhRVUZESE1JaGRMY01rYS9CUmQ0Q3hMWVlCSlFVZ3BRRjBY?=
 =?utf-8?B?VDRyUStqVE1oeW82b1dmS3dNZXVlZWU3ZWtxNXFkNUZGYU05am9GN1ByelBx?=
 =?utf-8?B?L1ErSTVBMmZUQlhIV2U4aEpLK2VqaWRNTjU3cWlCNC83bzZ5NzJmUFVXb3JD?=
 =?utf-8?B?aDVYMCt6NnVzK25rdmRkTEZ4TjhRcVUrYUoxcU5SaitRVWg2VG1RMHRKOUVq?=
 =?utf-8?B?SFowVlEwcFFoZnd3NVJFMStobE1HajNDNUlteVVQcTFzU1d6MkJVZDhDS3RN?=
 =?utf-8?B?azZ1Q3dmRnBCaDNnMlg1UHAwL0s2bXppV0tjaEhxUkJVakljdUlTRTBDUU5D?=
 =?utf-8?B?MDJtL2RMVkpIbEZjS3dpQXBLTUFTWW1LZG5KZkxrOHNOcUFWaklDZ0xubm1Z?=
 =?utf-8?B?NVdGMjVsOXRTZFBqbWpKdWdBN3BoeWJ0U2VRQmhiU25zSVBKUkhzdE00bTZn?=
 =?utf-8?B?K0dlUW9KTWhTWkZzNm41dVdQS2grc2pRYmtDZWZqSHR4NEt2bkNzTFlJdjJS?=
 =?utf-8?B?MG0rNE5zYlZNZEgzMzQ5dWVXcVErbk9lOXhsdWo4dkI3WTloUDJ1bXd3TXpi?=
 =?utf-8?B?OHlvckd2QlYyS3lrUWlUNnN3ekdOM0VuZENhb0VWTEFzdzB6TDMrMDdYb05y?=
 =?utf-8?B?bXJrallQWDhaVjNTSWl0S3g2MmNqUDVrU3F5MXRha1hlL3hTbHNiUkZlM3hr?=
 =?utf-8?B?MndhV1h5UzdxZ1ZZMHRsQnM0Y0pTRDNmT0s4UHBjQlhEQTFaTmMvWjRvSzMr?=
 =?utf-8?B?UFRqS3QyYWlwWGliWlNSTW0wWStYQkN1ZDEwS2Ixd2t4WkE2a01YaGFMVVkr?=
 =?utf-8?B?SC8zelpIRkJVT3N2VW1hYVdxblVXU0pJNDc1SFEzWEppQitPRFBxais1VXJn?=
 =?utf-8?B?Y3FDdWZQUS9rT2xsTXNsNWpBeWd0QmJxWEdTMGxvK0ZuaU5SUjMrQmswM3NG?=
 =?utf-8?B?RGp4UlZnYUVIaE1HTDVsdXk0U2hUYTRTR2R4dUFibEFKTDhveVkvVmo3OGpR?=
 =?utf-8?B?RVJpRkZxNUZtUk0vaENLL1VWSng4WWxEU050M0ptWUFkSVJNUTZLSC8yRWhK?=
 =?utf-8?B?YmpKaUozenFWUGtVZUZubk1zbzM5OFgwMjRTVGJIcE5TMC9qa0pxekhQNEhB?=
 =?utf-8?B?N2FnZ3pGWlVTemdadm9SL1loWmZzYU9xaCt4VWgxZ0x5U3YyUjRSTU0wMll0?=
 =?utf-8?B?Q28zcjVwU2RaM3ovY1AvQjNYRGZIN3BOTU90MUxEc0tJWEFDU3h3WGJZaVhH?=
 =?utf-8?B?bk9jUXBpSS81VTQ0UVJYZVE0M3NwSVVRWTJWdHY2bW5kRzNIYS9reTZ5WlZM?=
 =?utf-8?B?bmNROFE0M2M4VzkxNWdnMTdtN2Z2d0FhdHhVRFhNQWFMZkR1OWZneENqTFVV?=
 =?utf-8?B?YXJOWllLeXBQbjhqa3V5OFJ3Z3lncWpLS3JOUlVHcTFLU0gxRFZQenp3NVVt?=
 =?utf-8?B?SDg3aW0rd1QwU2lpdmh1alRQL0dXUEtZa1Zvd2JZWE8wb3FyUnptV3JKOWRq?=
 =?utf-8?B?ODczYk82dzQ4Z3Q1ZlV2UGRWcnAyamVrYndOK0JFVk12QlFNaVdoall5Z0lz?=
 =?utf-8?B?bFVsOElKMUxnb0R0aVJneTE1blFtOWVHNEp6VEMyR2FiWWZxRC8wUnR6cFJN?=
 =?utf-8?B?QzBRY1lhYkxrb05Ya2JndVNsQWJSWE50M3gwZzY2bm03YjlMQjltZ3RqbUVw?=
 =?utf-8?B?ajNRSW81SUVwRk9XZkJ5RTJDTWxtQkI0MXBvREpyTk8waFR1RjBVMGdzRDJZ?=
 =?utf-8?B?WFZwUzFQSkpXWlRaSkRnbXF5WVlVeWpCMU40N0c1WEFEVTF4eGx0Y2tTVjNv?=
 =?utf-8?B?eGhvSVBhNnJqM2pYTXhiR1lrWTVsWkt6NzRNVTBTY0ozTFFhMUg3cDBtcDY3?=
 =?utf-8?B?SFVZWEduZlNkY2RmLzhhVFAxNE5IODRMQ1RmbzY5YWFsZWVLbmNKNGVIbkV6?=
 =?utf-8?Q?4y+F6yxCXRHM+WBZ211D56dik?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e44f9d-42a5-4789-36ba-08de28b5bcc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 04:23:35.3749
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IZQylKsTAy+cd/s89xMHos+pBVHhLVt2+8YcPTMvlACDg5GtdqSO+We/9zn5kRUpA3F5wL4L7n4IWK02X+7/4/lWDDnhsQPc1q6P/0ijeFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1180

PiBPbiAxMi4xMS4yNSAyMTo1NCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOg0KPiBPbiBU
aHUsIE5vdiAyMCwgMjAyNSBhdCAwNDoyOTo0MlBNICswODAwLCBIYWwgRmVuZyB3cm90ZToNCj4g
PiBBZGQgZW5hYmxlLWdwaW9zIHByb3BlcnR5IGZvciBjb250cm9sbGluZyB0aGUgUENJIGJ1cyBk
ZXZpY2UgcG93ZXIuDQo+ID4gVGhpcyBwcm9wZXJ0eSBoYWQgYmVlbiBzdXBwb3J0ZWQgaW4gdGhl
IGRyaXZlciBidXQgbm90IGFkZGVkIGluIHRoZQ0KPiA+IGR0LWJpbmRpbmdzLg0KPiA+DQo+ID4g
QWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+DQo+ID4g
Rml4ZXM6IDIyZmUzMjIzOTc3MCAoImR0LWJpbmRpbmdzOiBQQ0k6IEFkZCBTdGFyRml2ZSBKSDcx
MTAgUENJZQ0KPiA+IGNvbnRyb2xsZXIiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEhhbCBGZW5nIDxo
YWwuZmVuZ0BzdGFyZml2ZXRlY2guY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvc3RhcmZpdmUsamg3MTEwLXBjaWUueWFtbCAgICAgICAgIHwgNCArKysrDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQN
Cj4gPiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc3RhcmZpdmUsamg3
MTEwLXBjaWUueWFtbA0KPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9zdGFyZml2ZSxqaDcxMTAtcGNpZS55YW1sDQo+ID4gaW5kZXggMzNjODA2MjZlOGVjLi4xZTM2
ZjkyZWM4NTIgMTAwNjQ0DQo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BjaS9zdGFyZml2ZSxqaDcxMTAtcGNpZS55YW1sDQo+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zdGFyZml2ZSxqaDcxMTAtcGNpZS55YW1sDQo+ID4g
QEAgLTU5LDYgKzU5LDEwIEBAIHByb3BlcnRpZXM6DQo+ID4gICAgICBkZXNjcmlwdGlvbjoNCj4g
PiAgICAgICAgVGhlIHBoYW5kbGUgdG8gU3lzdGVtIFJlZ2lzdGVyIENvbnRyb2xsZXIgc3lzY29u
IG5vZGUuDQo+ID4NCj4gPiArICBlbmFibGUtZ3Bpb3M6DQo+ID4gKyAgICBkZXNjcmlwdGlvbjog
R1BJTyB1c2VkIHRvIGVuYWJsZSB0aGUgUENJIGJ1cyBkZXZpY2UgcG93ZXINCj4gDQo+IFRoaXMg
ZmVlbHMgd3JvbmcgdG8gbWUuIElzIHRoaXMgR1BJTyBhc3NvY2lhdGVkIHdpdGggdGhlIFBDSWUg
Y29udHJvbGxlcj8gSSBiZXQNCj4gdGhpcyBpcyBqdXN0IGNvbnRyb2xsaW5nIHNvbWUgcmVndWxh
dG9yIHRoYXQgcG93ZXJzIHRoZSBWREQgb2YgdGhlIFBDSWUNCj4gZGV2aWNlL3Nsb3QuIElmIHNv
LCB0aGlzIHNob3VsZCBiZSBhZGRlZCBhcyBhIHBhcnQgb2YgdGhlIHJlZ3VsYXRvciBub2RlIGFu
ZA0KPiByZWZlcmVuY2VkIGluIHRoZSBQQ0llIG5vZGUgdXNpbmcgdGhlIGV4aXN0aW5nIC1zdXBw
bHkgcHJvcGVydGllcy4NCg0KVGhpcyBHUElPIGp1c3QgY29udHJvbHMgdGhlIHBvd2VyIG9mIFBD
SWUgZGV2aWNlcywgbm90IFBDSWUgY29udHJvbGxlci4NCkkgdGhpbmsgdGhlcmUgbWF5IGJlIG5v
IGRlc2lnbiBhZGRpbmcgcG93ZXIgY29udHJvbCBHUElPcyBmb3IgdGhlIFBDSWUgY29udHJvbGxl
ciwNCmJlY2F1c2UgdXN1YWxseSB3ZSBkb24ndCBuZWVkIHRvIGNvbnRyb2wgdGhlIFBDSWUgY29u
dHJvbGxlciBwb3dlciBidXQgdGhlIFBDSWUNCmRldmljZSBwb3dlci4NCg0KSSBmaW5kIGEgc2lt
aWxhciAicHdyZW4tZ3Bpb3MiIGluDQpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3NpZml2ZSxmdTc0MC1wY2llLnlhbWwgLg0KSXQgdXNlcyB0aGUgR1BJTyB0byBjb250cm9s
IHRoZSBwb3dlciBvZiBQQ0llIGRldmljZXMgdG9vLg0KDQpDb3VsZCBJIGNvbnRpbnVlIHRvIGRv
IHNvPyBUaGFua3MuDQoNCkJlc3QgcmVnYXJkcywNCkhhbA0K

