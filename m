Return-Path: <devicetree+bounces-58083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7938A05A9
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 03:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99AB428763A
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 01:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516B96217D;
	Thu, 11 Apr 2024 01:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="GgDUxSfA"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2130.outbound.protection.outlook.com [40.107.7.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EF362144;
	Thu, 11 Apr 2024 01:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.7.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712800263; cv=fail; b=qFIs1diNAv8nslP3QsmytP8aYM//Nf3chVrdKBlO/ZEYmbbLR/TzOz8PqG22lOFu1PpuvhF8b0KdVVqvqLYQySASdYBIqJ6l5Y438AGloFnSmobcxDWqdiSEmlKbnjYgmhcD///yJRqjlWRLSmdhHqbCPrEiO2wNaGZzKzCSSnE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712800263; c=relaxed/simple;
	bh=lkw1x+Q+vYVOkcH8eXV9ZJJMl7HFczCCQ63VMHcj0K0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=ctMq1dEVeIstexJuAOs0kuJUUC87XGsjIyOsuEcSVMa+KXvDu2r5oS2vIu/LBehWIv39D1hnP4BtHE/h/QLOSKlZ3b88hpl9kqt87gk6p0O3Jao0ueqjekOXXSgZLoluN13pJM1jzB5e2Avnvcqz+94GpZXEMMu6NgYU4Qcs5dE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=GgDUxSfA; arc=fail smtp.client-ip=40.107.7.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MYZSORBwXap6SqDm+dHxFxpnGlKIA2WSL+P/6pzcJx8woWDyxeugo0QRNrXz5fPRfbf1k1qj1VYPEIaQqfFCv7ijr3G0yuti39GEDhd4HZWAXkBgt2XQkk3ha68OSv2OVwvdHZPbGsfpbA0CGsnO9sWz1X6eibqgsABy+/QHOTsUezSZBIY1QQ+ZemFLoIyWPJyd8JUARqwo7xOwXWcZgS9T0gA+K0W5ZyD9hnp/cvXLoM4G8COK65OjEYbeYtDM02Nfs7P+36VqIU2VgSpI0MojjviJV6R5pn5aV1WgfLgcJxuaZicYPw38d7k21Jb8QnfSZLV1SmH8bBqx5RcITw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lkw1x+Q+vYVOkcH8eXV9ZJJMl7HFczCCQ63VMHcj0K0=;
 b=A9QMpDnqJ2v++l9dQShrZAzML2AJFH80LrD7XDOYUzLTtUx5h7Mb3gPqZVP1tFRfoKTbjGLaXCVIBOAzmZTmZILtszQqCEGuWVtKVEQ1WCFInW8P4oA6E1JtdAnFAa9E8GD0uPIJu5ZSlKRv/HOV3Hj86LvmpQKFn1WVnJAeR90xu2U2xxOGhHTsN76DfNCmCB8oONuXCvhirgGOLyY8cOBGS1TzKV6uBEomR/Rwx/+nTYnq0S3qTb+uF/IHGshxutNSHeNPasejw3cTnUX3Q5TZs0a7TWd0cya8jLcTTGVu9Bs/ivs6xftk7HP5E5ZWBiZv9uIiXpysiM5kFHaJtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lkw1x+Q+vYVOkcH8eXV9ZJJMl7HFczCCQ63VMHcj0K0=;
 b=GgDUxSfAwYh/gWfQFe6LXuPliv8pkVcQfUpCzHEkCy/Gf7To/QefmqKDJ1X4HRnVeVU8WVqXiilRCv95SJE67sTZ+kBo53+V88Ol37bNV/zh2YkmwxbcwBsFl2yYxiDHu34PZ3g5AHz+1J1cYF7z9e2Bll83wMtyBOTDZUCYbIE=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by DBBPR04MB7609.eurprd04.prod.outlook.com (2603:10a6:10:1f7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Thu, 11 Apr
 2024 01:50:56 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::d30b:44e7:e78e:662d]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::d30b:44e7:e78e:662d%4]) with mapi id 15.20.7386.037; Thu, 11 Apr 2024
 01:50:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, "Peng Fan (OSS)"
	<peng.fan@oss.nxp.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
 additionalProperties to true
Thread-Topic: [PATCH v2 1/6] dt-bindings: firmware: arm,scmi: set
 additionalProperties to true
Thread-Index:
 AQHah1U2hf+AkPhDj02wsn9yNtLUjbFbE9+AgADkvNCAAItFAIAAEwgggABoGYCAAH0iQIAAaICAgAAAQWCAABZPAIAAAHjwgAG0zOCAACxBgIAAI8QAgAANEQCAAkgVcA==
Date: Thu, 11 Apr 2024 01:50:54 +0000
Message-ID:
 <DU0PR04MB941712378C437BE3F099E2B488052@DU0PR04MB9417.eurprd04.prod.outlook.com>
References:
 <DU0PR04MB9417C5B9BDD9E0B47E7494C088012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <5b9e0e44-0b9c-44fc-9d18-21c47b46dc63@kernel.org>
 <DU0PR04MB9417839C42681F57366003EF88012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <ba4c9f20-0391-4ac2-a236-d6930285cd7e@kernel.org>
 <DU0PR04MB94176D02B90528913842B76A88002@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <e6333665-8051-43b1-9e98-f76262ddbc35@kernel.org>
 <DU0PR04MB9417C8C5013C72AB1F61F1C588002@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <AS1PR04MB9431BE4B2BFE05507A2D93F288072@AS1PR04MB9431.eurprd04.prod.outlook.com>
 <ZhUuKajQbce2AI9f@pluto>
 <CAL_Jsq+aVEOPzqddu-X8GLJPex+J6V+_T1qaGHAXgp94+_-ptg@mail.gmail.com>
 <ZhVXIAHWQv3mHBgP@pluto>
In-Reply-To: <ZhVXIAHWQv3mHBgP@pluto>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR04MB9417:EE_|DBBPR04MB7609:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 cNdHQSe9VuZeGKMcX8cgQdWmjD3BJPWrjbtTIsYSUTWsfTIcEZKqH5Skx6dBrpT8yBdsqV36/RrPFPoFIxc8BJAo+b/h7esXmSjYYB6/ojABvIqLeZLpMxUGRK1wqrXtS1UBXjbSCAYPbRKaXGa20ZmP27Qvj5FIPmTUbgZaWA+6j3J79Lus0mph8IjmMEAXiRANbaBnrcxdOLNlPPuRS+O3k1JjDFnQk/smGr8F/aBSX1aeRulH90txDsQghtyhPmzr/6v3qJ+WMRUO1SiD2dVaenmuUqe6/0OmdsXyGzoEloRwseWowUhqGOxOi8PRoqBYFQRzkh0L/TytE9R0UWqSbaxOZ+8St8QrKyd2PolhUIG7ALfC0hP0yMA7bihyVxmuU8pEdKAzkDkEMr6o2CGHPcmxOWXqvVDLLt70wkijgWY5o/x9S2q0mwClmEuWH2JKq18faCp0bsq87es5SVP1mdCKLTqGrr69MFv3CVi84EuQJV76namh/7og7tAm56iK0QW0srmlbfXa+qrggYVaCvdevJxU2N48l+LgXwIlvzzKSDSqeCYBhXJ3Fyy3PHfPh0iqTZ3S3NJlUmH5ySyqkLUCO+oQ5BadSDWGEFBN8dmABP8FaSr1yppDi8dVgqd9hKjLUkTzUI2gWdU4FIbDvD7opFV4RaZizhGeJHY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(7416005)(376005)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Y3MxTlJwRWplWnhRd2lXSWgycUhKWUszODk1ckZUdndxaEZpdTRlL0I3V2lD?=
 =?utf-8?B?TjltMEFzalVHM2NIUkMwek1oT3pYbS9SS1JvRmJ0eFlXMVNGMHVEcmJGOUJX?=
 =?utf-8?B?UFVPRkNNODRlZFJ1R0FORDVDUzB2bE9KVnYyOGtzV2pkUnBPYTJEbTk0dzR4?=
 =?utf-8?B?RWl5QmlSb2lGN0VPN2tNUzltK1VLN1o1MlA5Q2xOZDFqQkpJRmVJZlFEbFI1?=
 =?utf-8?B?b1dWeWdlNFNGMTk3dDhyYmYzYllzZDl4Z0VSbW1Jc0x0NHVaM2JvaVB0YWZM?=
 =?utf-8?B?VHVOajFrNlFqTk9zam5wdkQ3Z2NMOTBmZ1dDaUVBYzlKZ1kxaC9EenMreFhp?=
 =?utf-8?B?NzZZQ2xpeGxySFVrZ1AyTTBVRGR1RWozbS95TFkzdlRTRzJ3eHJwL2Z4RW4y?=
 =?utf-8?B?K2p1MDBqR256aDdxdWd2NE9IYytqamZsYUpWZkIwM2hvcExiNWtIaEc1cFph?=
 =?utf-8?B?QmxRdDIrcDhBa29vNXFtdWcvZE9LZVBEaDg0eXg2cndiWjdPZi8wWnkxTzlB?=
 =?utf-8?B?MHVNbDRtUkR2aGpJTFRWSXBTUmJMY3lYeEtRdkU4NXpKRWFWYkdndC9MaVQx?=
 =?utf-8?B?cUVtdUxFeFBMTWNLUXR3OVlmRTJjZWRuYkZGR1Zaalp0QVJia3FLajN0Smdm?=
 =?utf-8?B?blNVUmRqQU0yVjR6Nkp6US9uR25rRVNRMUVtQ3hmWFFhY0lnZmw2Zlc3bVBj?=
 =?utf-8?B?K2ZUMzNTV243S0NIWHQzTmF4eWhtMjk1cThsR2ppc28zeWQzSkExeTBWVU9n?=
 =?utf-8?B?aXhIalFRa0twTmowQlc5UjdqYjJOOFl1K3QzYkpQNUhlY2tEY1pvUkpDR2Y1?=
 =?utf-8?B?UGQ5ZVNTQld3MVJ1WDZZSXdUVlpYRndpRVFTQnU2bExRMGw0bmlPTFR2L2VK?=
 =?utf-8?B?ajVoQmdIZnhSTUxZZy9Qc0F6RURkQTNxVW9ZdmFHaUNoYUNLZVFaU0xXRXo0?=
 =?utf-8?B?Z0dXTzVrTkZnUjdVUS83bThjc3NERmF1eERzKzJYVTg5bXpTelluT3hva2hS?=
 =?utf-8?B?NC9WTWlTdmF3TDhnQk1vRkg3dHcxSGx0alpZTGY4VndVUHphU1I3SnZSUkVJ?=
 =?utf-8?B?NDhpUGtpT1h3SXYzSjZwUHFUQkVDbUNIa2diV0tMWmxhRWlZTmZNNlVZY1A0?=
 =?utf-8?B?NDVTNEdaSlRHQlJkS0hkWHhIVWIrS1dlc3cvOExKU1RJVkJlKzJvNTRrcWxN?=
 =?utf-8?B?TFA3R2JCVC9STkw3U0oxRXIwTmU5Vm1pMUxyTTZhQk83eDh1K1BGN2JzK1pH?=
 =?utf-8?B?bmZqcldDS2JJbGFpcG9tZml6d0dtUFdWRHhUZlJ6Z1UrRlBWVXdLRTZTaXhG?=
 =?utf-8?B?MVV2ZmJLUnBuVXZqRW05ZWJpUk02MytwR09kdlpLNDJybWFpR0RlTFp0MEJx?=
 =?utf-8?B?U2JLeWpjUmhkVCtlZlllMHhrNFBHUG1SY09HV0grV3FiYlBjYlpRMWtFY2po?=
 =?utf-8?B?amxwY3ZTWCtUL1hCcnhHaHBvV25jVkhlakFyNTBlaG9OR3h0M240UnlsemRH?=
 =?utf-8?B?akJLc3VrTzJGZGRvSWFleE94dk1adVZqa0ZORHJINkY4N1VMVjFJQzlXMkhS?=
 =?utf-8?B?T3lYM3hwT0Q3QU5jaFl3YXk3RDVTT2JQYTA4dFNwUkFGcXVmZXJDRGVFa09l?=
 =?utf-8?B?Ni95T1hIdDhzK0JDU1l6OUc3cy9uTGJFTjVOYklMNmNjMFZCS2s2RlBlWVVy?=
 =?utf-8?B?NGdzY0lPNGU4ak8yVzlNQzF0bFJNVWI3S1dKdnk3SllZZTFSeFhQSXpvS3Vl?=
 =?utf-8?B?ZE8wQ3hhZDNWT2p6c3NQaGNaTStjMEFPZjkzZDVkdXhkc1BQUUpORTR6S09n?=
 =?utf-8?B?OGpudDJkMk4vL3hzVlU3d2FnSHJmcFFPSWZkL3I4TjRHYXV1NVZ4L2loODVk?=
 =?utf-8?B?dkNPT1gydTdqTmkzSG1rK1RDRHVDTi9JWVBKeWx3NWhwQXN0V0lnMWhIVnpn?=
 =?utf-8?B?QXlDVXRkdmluZkloL2pYcXFmb2FSN3RJY0VOdHhPRlJMcjRFeFFVZGtpSFR0?=
 =?utf-8?B?L05MTFBITE9MeFRZblNzVnNBUlBTRUtkb2pYYmpIQmphOFJHekZZOGFZQnFz?=
 =?utf-8?B?eFQwUVdjemh4NjRuanAyWnBkT016VWJwV0FXWmFhcXdaUWgwWHZHaW1TR2hu?=
 =?utf-8?Q?sO0Y=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f0f42c5-d446-4afb-506d-08dc59c9d315
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 01:50:54.4154
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STTZNeTv19lwmE12MY+4d/b2rzsgVD/g8UPOcXXJK+i2czZ7STKi0lMycwLzgs3hGsbiTkZtsS9L9M2hmDNMOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7609

SGkgUm9iLCBDcmlzdGlhbiwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDEvNl0gZHQtYmlu
ZGluZ3M6IGZpcm13YXJlOiBhcm0sc2NtaTogc2V0DQo+IGFkZGl0aW9uYWxQcm9wZXJ0aWVzIHRv
IHRydWUNCj4gDQo+IE9uIFR1ZSwgQXByIDA5LCAyMDI0IGF0IDA5OjA5OjQ2QU0gLTA1MDAsIFJv
YiBIZXJyaW5nIHdyb3RlOg0KPiA+IE9uIFR1ZSwgQXByIDksIDIwMjQgYXQgNzowMeKAr0FNIENy
aXN0aWFuIE1hcnVzc2kNCj4gPiA8Y3Jpc3RpYW4ubWFydXNzaUBhcm0uY29tPiB3cm90ZToNCj4g
PiA+DQo+ID4gPiBPbiBUdWUsIEFwciAwOSwgMjAyNCBhdCAwOToyNToxMEFNICswMDAwLCBQZW5n
IEZhbiB3cm90ZToNCj4gPiA+ID4gSGkgS3J6eXN6dG9mLA0KPiA+ID4gPg0KPiA+ID4gPiA+IFN1
YmplY3Q6IFJFOiBbUEFUQ0ggdjIgMS82XSBkdC1iaW5kaW5nczogZmlybXdhcmU6IGFybSxzY21p
OiBzZXQNCj4gPiA+ID4gPiBhZGRpdGlvbmFsUHJvcGVydGllcyB0byB0cnVlDQo+ID4gPiA+ID4N
Cj4gPiA+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS82XSBkdC1iaW5kaW5nczogZmly
bXdhcmU6IGFybSxzY21pOg0KPiA+ID4gPiA+ID4gc2V0IGFkZGl0aW9uYWxQcm9wZXJ0aWVzIHRv
IHRydWUNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBPbiAwOC8wNC8yMDI0IDA4OjA4LCBQZW5n
IEZhbiB3cm90ZToNCj4gPiA+ID4gPiA+ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS82XSBk
dC1iaW5kaW5nczogZmlybXdhcmU6DQo+ID4gPiA+ID4gPiA+PiBhcm0sc2NtaTogc2V0IGFkZGl0
aW9uYWxQcm9wZXJ0aWVzIHRvIHRydWUNCj4gPiA+ID4gPiA+ID4+DQo+ID4gPiA+ID4gPiA+PiBP
biAwOC8wNC8yMDI0IDAxOjUwLCBQZW5nIEZhbiB3cm90ZToNCj4gPiA+ID4gPiA+ID4+Pj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2MiAxLzZdIGR0LWJpbmRpbmdzOiBmaXJtd2FyZToNCj4gPiA+ID4g
PiA+ID4+Pj4gYXJtLHNjbWk6IHNldCBhZGRpdGlvbmFsUHJvcGVydGllcyB0byB0cnVlDQo+ID4g
PiA+ID4gPiA+Pj4+DQo+ID4gPiA+ID4gPiA+Pj4+IE9uIDA3LzA0LzIwMjQgMTI6MDQsIFBlbmcg
RmFuIHdyb3RlOg0KPiA+ID4gPiA+ID4gPj4+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS82
XSBkdC1iaW5kaW5nczogZmlybXdhcmU6IGFybSxzY21pOg0KPiA+ID4gPiA+ID4gPj4+Pj4+IHNl
dCBhZGRpdGlvbmFsUHJvcGVydGllcyB0byB0cnVlDQo+ID4gPiA+ID4gPiA+Pj4+Pj4NCj4gPiA+
ID4gPiA+ID4+Pj4+PiBPbiAwNy8wNC8yMDI0IDAyOjM3LCBQZW5nIEZhbiB3cm90ZToNCj4gPiA+
ID4gPiA+ID4+Pj4+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS82XSBkdC1iaW5kaW5nczog
ZmlybXdhcmU6DQo+IGFybSxzY21pOg0KPiA+ID4gPiA+ID4gPj4+Pj4+Pj4gc2V0IGFkZGl0aW9u
YWxQcm9wZXJ0aWVzIHRvIHRydWUNCj4gPiA+ID4gPiA+ID4+Pj4+Pj4+DQo+ID4gPiA+ID4gPiA+
Pj4+Pj4+PiBPbiAwNS8wNC8yMDI0IDE0OjM5LCBQZW5nIEZhbiAoT1NTKSB3cm90ZToNCj4gPiA+
ID4gPiA+ID4+Pj4+Pj4+PiBGcm9tOiBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT4NCj4gPiA+
ID4gPiA+ID4+Pj4+Pj4+Pg0KPiA+ID4gPiA+ID4gPj4+Pj4+Pj4+IFdoZW4gYWRkaW5nIHZlbmRv
ciBleHRlbnNpb24gcHJvdG9jb2xzLCB0aGVyZSBpcw0KPiA+ID4gPiA+ID4gPj4+Pj4+Pj4+IGR0
LXNjaGVtYQ0KPiA+ID4gPiA+ID4gPj4gd2FybmluZzoNCj4gPiA+ID4gPiA+ID4+Pj4+Pj4+PiAi
DQo+ID4gPiA+ID4gPiA+Pj4+Pj4+Pj4gaW14LHNjbWkuZXhhbXBsZS5kdGI6IHNjbWk6ICdwcm90
b2NvbEA4MScsDQo+ID4gPiA+ID4gPiA+Pj4+Pj4+Pj4gJ3Byb3RvY29sQDg0JyBkbyBub3QgbWF0
Y2ggYW55IG9mIHRoZSByZWdleGVzOiAncGluY3RybC0NCj4gWzAtOV0rJw0KPiA+ID4gPiA+ID4g
Pj4+Pj4+Pj4+ICINCj4gPiA+ID4gPiA+ID4+Pj4+Pj4+Pg0KPiA+ID4gPiA+ID4gPj4+Pj4+Pj4+
IFNldCBhZGRpdGlvbmFsUHJvcGVydGllcyB0byB0cnVlIHRvIGFkZHJlc3MgdGhlIGlzc3VlLg0K
PiA+ID4gPiA+ID4gPj4+Pj4+Pj4NCj4gPiA+ID4gPiA+ID4+Pj4+Pj4+IEkgZG8gbm90IHNlZSBh
bnl0aGluZyBhZGRyZXNzZWQgaGVyZSwgZXhjZXB0IG1ha2luZw0KPiA+ID4gPiA+ID4gPj4+Pj4+
Pj4gdGhlIGJpbmRpbmcgYWNjZXB0aW5nIGFueXRoaW5nIGFueXdoZXJlLi4uDQo+ID4gPiA+ID4g
PiA+Pj4+Pj4+DQo+ID4gPiA+ID4gPiA+Pj4+Pj4+IEkgbm90IHdhbm5hIGFkZCB2ZW5kb3IgcHJv
dG9jb2xzIGluIGFybSxzY21pLnlhbWwsIHNvDQo+ID4gPiA+ID4gPiA+Pj4+Pj4+IHdpbGwgaW50
cm9kdWNlIGEgbmV3IHlhbWwgaW14LnNjbWkueWFtbCB3aGljaCBhZGQgaS5NWA0KPiA+ID4gPiA+
ID4gPj4+Pj4+PiBTQ01JIHByb3RvY29sDQo+ID4gPiA+ID4gPiA+PiBleHRlbnNpb24uDQo+ID4g
PiA+ID4gPiA+Pj4+Pj4+DQo+ID4gPiA+ID4gPiA+Pj4+Pj4+IFdpdGggYWRkaXRpb25hbFByb3Bl
cnRpZXMgc2V0IHRvIGZhbHNlLCBJIG5vdCBrbm93DQo+ID4gPiA+ID4gPiA+Pj4+Pj4+IGhvdywg
cGxlYXNlDQo+ID4gPiA+ID4gPiBzdWdnZXN0Lg0KPiA+ID4gPiA+ID4gPj4+Pj4+DQo+ID4gPiA+
ID4gPiA+Pj4+Pj4gRmlyc3Qgb2YgYWxsLCB5b3UgY2Fubm90IGFmZmVjdCBuZWdhdGl2ZWx5IGV4
aXN0aW5nDQo+ID4gPiA+ID4gPiA+Pj4+Pj4gZGV2aWNlcyAodGhlaXINCj4gPiA+ID4gPiA+ID4+
Pj4+PiBiaW5kaW5ncykgYW5kIHlvdXIgcGF0Y2ggZG9lcyBleGFjdGx5IHRoYXQuIFRoaXMgc2hv
dWxkDQo+ID4gPiA+ID4gPiA+Pj4+Pj4gbWFrZSB5b3UgdGhpbmcgd2hhdCBpcyB0aGUgY29ycmVj
dCBhcHByb2FjaC4uLg0KPiA+ID4gPiA+ID4gPj4+Pj4+DQo+ID4gPiA+ID4gPiA+Pj4+Pj4gUm9i
IGdhdmUgeW91IHRoZSBjb21tZW50IGFib3V0IG1pc3NpbmcgY29tcGF0aWJsZSAtIHlvdQ0KPiA+
ID4gPiA+ID4gPj4+Pj4+IHN0aWxsIGRpZCBub3QgYWRkcmVzcyB0aGF0Lg0KPiA+ID4gPiA+ID4g
Pj4+Pj4NCj4gPiA+ID4gPiA+ID4+Pj4+IEkgYWRkZWQgdGhlIGNvbXBhdGlibGUgaW4gcGF0Y2gg
Mi82IGluIHRoZSBleGFtcGxlcw0KPiA+ID4gPiA+ID4gPj4+Pj4gImNvbXBhdGlibGUgPQ0KPiA+
ID4gPiA+ID4gPj4+PiAiYXJtLHNjbWkiOyINCj4gPiA+ID4gPiA+ID4+Pj4NCj4gPiA+ID4gPiA+
ID4+Pj4gU28geW91IGNsYWltIHRoYXQgeW91ciB2ZW5kb3IgZXh0ZW5zaW9ucyBhcmUgdGhlIHNh
bWUgb3INCj4gPiA+ID4gPiA+ID4+Pj4gZnVsbHkgY29tcGF0aWJsZSB3aXRoIGFybSxzY21pIGFu
ZCB5b3UgYWRkIG5vdGhpbmcuLi4gQXJlDQo+ID4gPiA+ID4gPiA+Pj4+IHlvdXIgZXh0ZW5zaW9u
cy9wcm90b2NvbCB2YWxpZCBmb3IgYXJtLHNjbWk/DQo+ID4gPiA+ID4gPiA+Pj4NCj4gPiA+ID4g
PiA+ID4+PiBZZXMuIFRoZXkgYXJlIHZhbGlkIGZvciBhcm0sc2NtaS4NCj4gPiA+ID4gPiA+ID4+
Pg0KPiA+ID4gPiA+ID4gPj4+ICBJZiB5ZXMsIHdoeSBpcyB0aGlzIGluIHNlcGFyYXRlIGJpbmRp
bmcuIElmIG5vLCB3aHkgeW91DQo+ID4gPiA+ID4gPiA+Pj4gdXNlIHNvbWVvbmUNCj4gPiA+ID4g
PiA+ID4+Pj4gZWxzZSdzIGNvbXBhdGlibGU/DQo+ID4gPiA+ID4gPiA+Pj4NCj4gPiA+ID4gPiA+
ID4+PiBQZXIgU0NNSSBTcGVjDQo+ID4gPiA+ID4gPiA+Pj4gMHg4MC0weEZGOiBSZXNlcnZlZCBm
b3IgdmVuZG9yIG9yIHBsYXRmb3JtLXNwZWNpZmljDQo+ID4gPiA+ID4gPiA+Pj4gZXh0ZW5zaW9u
cyB0byB0aGlzIGludGVyZmFjZQ0KPiA+ID4gPiA+ID4gPj4+DQo+ID4gPiA+ID4gPiA+Pj4gaS5N
WCB1c2UgMHg4MSBmb3IgQkJNLCAweDg0IGZvciBNSVNDLiBCdXQgb3RoZXIgdmVuZG9ycw0KPiA+
ID4gPiA+ID4gPj4+IHdpbGwgdXNlIHRoZSBpZCBmb3IgdGhlaXIgb3duIHByb3RvY29sLg0KPiA+
ID4gPiA+ID4gPj4NCj4gPiA+ID4gPiA+ID4+IFNvIGhvdyBhcmUgdGhleSB2YWxpZCBmb3IgYXJt
LHNjbWk/IEkgZG9uJ3QgdW5kZXJzdGFuZC4NCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4g
YXJtLHNjbWkgaXMgYSBmaXJtd2FyZSBjb21wYXRpYmxlIHN0cmluZy4gVGhlIHByb3RvY29sIG5v
ZGUgaXMgYQ0KPiBzdWItbm9kZS4NCj4gPiA+ID4gPiA+ID4gSSB0aGluayB0aGUgYXJtLHNjbWkg
aXMgdGhhdCBzYXlpbmcgdGhlIGZpcm13YXJlIGZvbGxvd2luZw0KPiA+ID4gPiA+ID4gPiBTQ01J
IHNwZWMgdG8gaW1wbGVtZW50IHRoZSBwcm90b2NvbHMuDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+
ID4gPiA+IEZvciB2ZW5kb3IgcmVzZXJ2ZWQgSUQsIGZpcm13YXJlIGFsc28gZm9sbG93IHRoZSBT
Q01JIHNwZWMNCj4gPiA+ID4gPiA+ID4gdG8gaW1wbGVtZW50IHRoZWlyIG93biB1c2FnZSwgc28g
ZnJvbSBmaXJtd2FyZSBsZXZlbCwgaXQgaXMNCj4gPiA+ID4gPiA+ID4gQVJNIFNDTUkgc3BlYw0K
PiA+ID4gPiA+ID4gY29tcGF0aWJsZS4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBUaGF0J3Mg
bm90IHRoZSBwb2ludC4gSXQgaXMgb2J2aW91cyB0aGF0IHlvdXIgZmlybXdhcmUgaXMNCj4gPiA+
ID4gPiA+IGNvbXBhdGlibGUgd2l0aCBhcm0sc2NtaSwgYnV0IHdoYXQgeW91IHRyeSB0byBzYXkg
aW4gdGhpcyBhbmQNCj4gPiA+ID4gPiA+IHJldmlzZWQgcGF0Y2ggaXMgdGhhdCBldmVyeSBhcm0s
c2NtaSBpcyBjb21wYXRpYmxlIHdpdGggeW91cg0KPiA+ID4gPiA+ID4gaW1wbGVtZW50YXRpb24u
IFdoYXQgeW91IGFyZSBzYXlpbmcgaXMgdGhhdCAweDg0IGlzIE1JU0MNCj4gPiA+ID4gPiA+IHBy
b3RvY29sIGZvciBldmVyeSBmaXJtd2FyZSwgUXVhbGNvbW0sIE5YUCwgU2Ftc3VuZywgVEksIE1l
ZGlhdGVrDQo+IGV0Yy4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBJIGNsYWltIGl0IGlzIG5v
dCB0cnVlLiAweDg0IGlzIG5vdCBNSVNDIGZvciBRdWFsY29tbSwgZm9yIGV4YW1wbGUuDQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiBZb3UgYXJlIHJpZ2h0LiBJIGFtIGxvc3Qgbm93IG9uIGhvdyB0byBh
ZGQgdmVuZG9yIElEIHN1cHBvcnQsDQo+ID4gPiA+ID4gdXNpbmcgYXJtLHNjbWkueWFtbCBvciBh
ZGRpbmcgYSBuZXcgaW14LHNjbWkueWFtbCBvciBlbHNlLg0KPiA+ID4gPg0KPiA+ID4NCj4gPiA+
IEhpIFBlbmcsDQo+ID4gPg0KPiA+ID4gSSBkb250IHRoaW5rIGluIHRoZSBmb2xsb3dpbmcgeW91
IHdpbGwgZmluZCB0aGUgc29sdXRpb24gdG8gdGhlDQo+ID4gPiBwcm9ibGVtLCBpdCBpcyBqdXN0
IHRvIHJlY2FwIHRoZSBzaXR1YXRpb24gYW5kIGNvbnN0cmFpbnRzIGFyb3VuZA0KPiA+ID4gdmVu
ZG9yIHByb3RvY29sIGJpbmRpbmdzLg0KPiA+ID4NCj4gPiA+IERlc2NyaWJpbmcgU0NNSSB2ZW5k
b3JzIHByb3RvY29scyBpcyB0cmlja3kgYmVjYXVzZSB3aGlsZSBvbiBvbmUNCj4gPiA+IHNpZGUg
dGhlIHByb3RvY29sIG5vZGUgaGFzIHRvIGJlIHJvb3RlZCB1bmRlciB0aGUgbWFpbiBzY21pIGZ3
IERUDQo+ID4gPiBub2RlIChsaWtlIGFsbCB0aGUgc3RhbmRhcmQgcHJvdG9jb2xzKSBhbmQgYmUg
J2Rlcml2ZWQnIGZyb20gdGhlDQo+ID4gPiBhcm0sc2NtaS55YW1sIHByb3RvY29sLW5vZGUgZGVm
aW5pdGlvbiwgdGhlIG9wdGlvbmFsIGFkZGl0aW9uYWwNCj4gPiA+IHByb3BlcnRpZXMgb2YgdGhl
IGEgc3BlY2lmaWMgdmVuZG9yIHByb3RvY29sIG5vZGVzIGNhbiBiZSBjdXN0b21pemVkDQo+ID4g
PiBieSBlYWNoIHNpbmdsZSB2ZW5kb3IsIGFuZCBzaW5jZSwgYXMgeW91IHNhaWQsIHlvdSBjYW4g
aGF2ZSBtdWx0aXBsZQ0KPiA+ID4gcHJvdG9jb2xzIGZyb20gZGlmZmVyZW50IHZlbmRvcnMgc2hh
cmluZyB0aGUgc2FtZSBwcm90b2NvbCBudW1iZXIsDQo+ID4gPiB5b3UgY291bGQgaGF2ZSBtdWx0
aXBsZSBkaXNqb2ludCBzZXRzIG9mIHZhbGlkIHByb3BlcnRpZXMgYWxsb3dlZA0KPiA+ID4gdW5k
ZXIgdGhhdCBzYW1lIHByb3RvY29sIG5vZGUgbnVtYmVyOyBzbyBvbiBvbmUgc2lkZSB5b3UgaGF2
ZSB0bw0KPiA+ID4gc3RpY2sgdG8gc29tZSBiYXNpYyBwcm90b2NvbC1ub2RlIGRlZnMgYW5kIGJl
IHJvb3RlZCB1bmRlciB0aGUgU0NNSQ0KPiA+ID4gbm9kZSwgd2hpbGUgb24gdGhlIG90aGVyIHNp
ZGUgeW91IHdpbGwgaGF2ZSBtdWx0aXBsZSBwb3NzaWJseQ0KPiA+ID4gYWxsb3dlZCBzZXRzIG9m
IGFkZGl0aW9uYWwgcHJvcGVydGllcyB0byBjaGVjayBhZ2FpbnN0LCBzbyBJT1cgeW91IGNhbm5v
dA0KPiBhbnl3YXkganVzdCBzZXQgYWRkaXRpb25hbFByb3BlcnRpZXMgdG8gZmFsc2Ugc2luY2Ug
dGhhdCB3aWxsIHJlc3VsdCBpbiBubyBjaGVja3MNCj4gYXQgYWxsLg0KPiA+ID4NCj4gPiA+IEFz
IGEgY29uc2VxdWVuY2UsIGF0IHJ1bnRpbWUsIGluIHRoZSBmaW5hbCBEVEIgc2hpcHBlZCB3aXRo
IGENCj4gPiA+IHNwZWNpZmljIHBsYXRmb3JtIHlvdSBzaG91bGQgaGF2ZSBvbmx5IG9uZSBvZiB0
aGUgcG9zc2libGUgdmVuZG9yDQo+ID4gPiBub2RlcyBmb3IgZWFjaCBvZiB0aGVzZSBvdmVybGFw
cGluZyBwcm90b2NvbHMsIGFuZCB0aGUgU0NNSSBjb3JlIGF0DQo+ID4gPiBwcm9iZSB0aW1lIHdp
bGwgcGljayB0aGUgcHJvcGVyIHByb3RvY29sIGltcGxlbWVudGF0aW9uIGJhc2VkIG9uIHRoZQ0K
PiA+ID4gdmVuZG9yL3N1Yl92ZW5kb3IgSURzIGdhdGhlcmVkIGZyb20gdGhlIHJ1bm5pbmcgU0NN
SSBmdyBwbGF0Zm9ybSBhdA0KPiA+ID4gaW5pdDogdGhpcyB3YXkgeW91IGNhbiBqdXN0IGJ1aWxk
IHRoZSB1c3VhbCAiYWxsLWluY2x1c2l2ZSINCj4gPiA+IGRlZmNvbmZpZyB3aXRob3V0IHdvcnJ5
aW5nIGFib3V0IHZlbmRvciBwcm90b2NvbCBjbGFzaGVzIHNpbmNlIHRoZQ0KPiA+ID4gU0NNSSBj
b3JlIGNhbiBwaWNrIHRoZSByaWdodCBwcm90b2NvbCBpbXBsZW1lbnRhdGlvbiwgeW91IHNob3Vs
ZA0KPiA+ID4ganVzdCBoYWQgdGFrZW4gY2FyZSB0byBwcm92aWRlIHRoZSBwcm9wZXIgRFRCIGZv
ciB5b3VyIHByb3RvY29sOyBCVVQNCj4gPiA+IHRoaXMgYWxzbyBtZWFucyB0aGF0IGl0IGlzIG5v
dCBwb3NzaWJsZSB0byBhZGQgbXVsdGlwbGUgRFQgYmluZGluZ3MNCj4gPiA+IGJhc2VkIG9uIGEg
J2lmIHZlbmRvcicgY29uZGl0aW9uIHNpbmNlIHRoZSB2ZW5kb3IgaXRzZWxmIGlzIE5PVA0KPiA+
ID4gZGVmaW5lZCBhbmQgbm90IG5lZWRlZCBpbiB0aGUgYmluZGluZ3Mgc2luY2UgaXQgaXMgZGlz
Y292ZXJhYmxlIGF0IHJ1bnRpbWUuDQo+ID4gPg0KPiA+ID4gU28sIGFmdGVyIGFsbCBvZiB0aGlz
IGJsYWJiaW5nIG9mIG1pbmUgYWJvdXQgdGhpcywgSSBhbSB3b25kZXJpbmcgaWYNCj4gPiA+IGl0
IGlzIG5vdCBwb3NzaWJsZSB0aGF0IHRoZSBzb2x1dGlvbiBpcyB0byBoYW5kbGUgZWFjaCBhbmQg
ZXZlcnkNCj4gPiA+IHZlbmRvciBwcm90b2NvbCBub2RlIHRoYXQgYXBwZWFycyB3aXRoIGEgYmxv
Y2sgb2YgYWRkdGlvbmFsDQo+ID4gPiBwcm9wZXJ0aWVzIHRoYXQgYXJlIHBpY2tlZCB2aWEgYSBv
bmVPZiBzdGF0ZW1lbnQgZnJvbSBzb21lIGV4dGVybmFsDQo+ID4gPiB2ZW5kb3Igc3BlY2lmaWMg
eWFtbC4NCj4gPiA+ICguLi5pbiBhIHNpbWlsYXIgd2F5IHRvIGhvdyBwaW5jdHJsIGFkZGl0aW9u
YWwgcHJvcGVydGllcyBhcmUNCj4gPiA+IGFkZGVkLi4uKQ0KPiA+ID4NCj4gPiA+DQo+ID4gPiBO
T1RFIFRIQVQgdGhlIGZvbGxvd2luZyBpcyBqdXN0IGFuIGV4YW1wbGUgb2Ygd2hhdCBJIG1lYW4s
IGl0IGlzDQo+ID4gPiBjZXJ0YWlubHkgd3JvbmcsIGluY29tcGxldGUgYW5uZCBtYXliZSBqdXN0
IG5vdCBhY2NlcHRhYmxlIChhbmQNCj4gPiA+IGNvdWxkIGNhdXNlIERUIG1haW50YWluZXJzIGV5
ZXMgdG8gYmxlZWQgOlApLi4uDQo+ID4gPg0KPiA+ID4gLi4uc28gaXQgaXMganVzdCBmciB0aGUg
c2FrZSBvZiBleHBsYWluaW5nIHdoYXQgSSBtZWFuLi4uDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdp
dA0KPiA+ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZmlybXdhcmUvYXJt
LHNjbWkueWFtbA0KPiA+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZmly
bXdhcmUvYXJtLHNjbWkueWFtbA0KPiA+ID4gaW5kZXggZTlkM2YwNDNjNGVkLi4zYzM4YTFlM2Zm
ZWQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZmlybXdhcmUvYXJtLHNjbWkueWFtbA0KPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Zpcm13YXJlL2FybSxzY21pLnlhbWwNCj4gPiA+IEBAIC0yNzgsNiArMjc4
LDIyIEBAIHByb3BlcnRpZXM6DQo+ID4gPiAgICAgIHJlcXVpcmVkOg0KPiA+ID4gICAgICAgIC0g
cmVnDQo+ID4gPg0KPiA+ID4gKyAgcHJvdG9jb2xAODE6DQo+ID4gPiArICAgICRyZWY6ICcjLyRk
ZWZzL3Byb3RvY29sLW5vZGUnDQo+ID4gPiArICAgIHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFs
c2UNCj4gPiA+ICsNCj4gPiA+ICsgICAgcHJvcGVydGllczoNCj4gPiA+ICsgICAgICByZWc6DQo+
ID4gPiArICAgICAgICBjb25zdDogMHg4MQ0KPiA+ID4gKw0KPiA+ID4gKyAgICBwYXR0ZXJuUHJv
cGVydGllczoNCj4gPiA+ICsgICAgICAnJCc6DQo+ID4gPiArICAgICAgICB0eXBlOiBvYmplY3QN
Cj4gPg0KPiA+IERpZCB5b3UgbWVhbiB0byBoYXZlIGNoaWxkIG5vZGVzIHVuZGVyIHRoZSBwcm90
b2NvbCBub2RlIHJhdGhlciB0aGFuIGluIGl0Pw0KPiANCj4gLi4uIG5vcGUgLi4uIGl0IGlzIGp1
c3QgYXMgYmFkIGFzIG15IHlhbWwtZnUgaXMgOlAgLi4uIGJ1dCBub3Qgc3VyZSBpZiB2ZW5kb3Jz
IGhhcw0KPiBhbHNvIHRoaXMgbmVlZHMgb3IgcGxhaW4gcHJvcHMgd2lsbCBzdWZmaWNlLi4uDQo+
IA0KPiA+DQo+ID4gPiArICAgICAgICBvbmVPZjoNCj4gPiA+ICsgICAgICAgICAgLSAkcmVmOiAv
c2NoZW1hcy92ZW5kb3ItQS9zY21pLXByb3Rvcy55YW1sIw0KPiA+ID4gKyAgICAgICAgICAtICRy
ZWY6IC9zY2hlbWFzL3ZlbmRvci1CL3Byb3Rvcy55YW1sIw0KPiA+DQo+ID4gTW92ZWQgdXAgb25l
IGxldmVsLCB0aGlzIHdvdWxkIHdvcmssIGJ1dCBpdCB3b3VsZCBoYXZlIHRvIGJlIGFuDQo+ID4g
J2FueU9mJyBiZWNhdXNlIGl0IGlzIHBvc3NpYmxlIHRoYXQgMiB2ZW5kb3JzIGhhdmUgdGhlIGV4
YWN0IHNhbWUgc2V0DQo+ID4gb2YgcHJvcGVydGllcy4NCj4gPg0KDQpJIHRyeSB0aGlzOg0KICBw
cm90b2NvbEA4NDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgIGFueU9mOiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgICAgLSAkcmVmOiAvc2NoZW1hcy9maXJt
d2FyZS9pbXgsc2NtaS55YW1sIyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIA0KICAgICAgLSAkcmVmOiAvc2NoZW1hcy9maXJtd2FyZS92ZW5kb3It
QixzY21pLnlhbWwjICAgICANCg0KYnV0IHVuZXZhbHVhdGVkUHJvcGVydGllcyBjb3VsZCBub3Qg
YmUgc2V0IHRvIGZhbHNlLCBvdGhlcndpc2UgdGhlDQpleGFtcGxlIGNoZWNrIHdpbGwgcmVwb3J0
DQpyZWcgaXMgdW5ldmFsdWF0ZWQsIGZzbCx3YWtldXAtc291cmNlcyBpcyB1bmV2YWx1YXRlZC4N
Cg0KVGhlIGlteCxzY21pLnlhbWwgaXMgYXMgYmVsb3c6DQpwcm9wZXJ0aWVzOiANCiBwcm90b2Nv
bEA4NDoNCiAgICAkcmVmOiAnYXJtLHNjbWkueWFtbCMvJGRlZnMvcHJvdG9jb2wtbm9kZScNCiAg
ICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlDQogICAgZGVzY3JpcHRpb246DQogICAgICBU
aGUgTUlTQyBQcm90b2NvbCBpcyBmb3IgbWFuYWdpbmcgU29DIE1pc2Mgc2V0dGluZ3MsIHN1Y2gg
YXMgR1BSIHNldHRpbmdzDQoNCiAgICBwcm9wZXJ0aWVzOg0KICAgICAgcmVnOg0KICAgICAgICBj
b25zdDogMHg4NA0KDQogICAgICBmc2wsd2FrZXVwLXNvdXJjZXM6DQogICAgICAgIGRlc2NyaXB0
aW9uOg0KICAgICAgICAgIEVhY2ggZW50cnkgY29uc2lzdHMgb2YgMiBpbnRlZ2VycywgcmVwcmVz
ZW50cyB0aGUgc291cmNlIGFuZCBlbGVjdHJpYyBzaWduYWwgZWRnZQ0KICAgICAgICBpdGVtczoN
CiAgICAgICAgICBpdGVtczoNCiAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IHRoZSB3YWtldXAg
c291cmNlDQogICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiB0aGUgd2FrZXVwIGVsZWN0cmljIHNp
Z25hbCBlZGdlDQogICAgICAgIG1pbkl0ZW1zOiAxDQogICAgICAgIG1heEl0ZW1zOiAzMg0KICAg
ICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItbWF0cml4
DQoNCiAgICByZXF1aXJlZDoNCiAgICAgIC0gcmVnDQoNCmFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0
cnVlDQoNCg0KSXMgdGhlIHVwcGVyIG9rPw0KDQpUaGFua3MsDQpQZW5nLg0KPiANCj4gb2sNCj4g
DQo+ID4gSSBjYW4gdGhpbmsgb2YgMiBvdGhlciB3YXlzIHRvIHN0cnVjdHVyZSB0aGlzLg0KPiA+
DQo+ID4gRmlyc3QsIGlzIGEgc3BlY2lmaWMgdmVuZG9yIHByb3RvY29sIGRpc2NvdmVyYWJsZT8g
Tm90IHRoYXQgaXMgMHg4MQ0KPiA+IHByb3RvY29sIHByZXNlbnQsIGJ1dCB0aGF0IDB4ODEgaXMg
dmVuZG9yIEZvbydzIGV4dHJhIHNwZWNpYWwNCj4gPiB2YWx1ZS1hZGQgcHJvdG9jb2w/IElmIG5v
dCwgSSB0aGluayB3ZSBzaG91bGQgcmVxdWlyZSBhIGNvbXBhdGlibGUNCj4gPiBzdHJpbmcgb24g
dmVuZG9yIHByb3RvY29scy4gVGhlbiB0aGUgYmFzZSBTQ01JIHNjaGVtYSBjYW4gcmVxdWlyZSBq
dXN0DQo+ID4gdGhhdCwgYW5kIGVhY2ggdmVuZG9yIHByb3RvY29sIGRlZmluZXMgaXRzIG5vZGUg
d2l0aCBhICRyZWYgdG8NCj4gPiAnIy8kZGVmcy9wcm90b2NvbC1ub2RlJy4NCj4gDQo+IEJhc2lj
YWxseSB5ZXMgaXQgaXMgZGlzY292ZXJhYmxlLCBzaW5jZSBhdCBydW50aW1lIHRoZSBTQ01JIGNv
cmUsIGVhcmx5IG9uLA0KPiBub3JtYWxseSBkaXNjb3ZlcnMgdGhlIHZlbmRvcl9pZC9zdWJfdmVu
ZG9yX2lkIGJ5IHF1ZXJ5aW5nIHRoZSBwbGF0Zm9ybQ0KPiB2aWEgQmFzZSBwcm90b2NvbCBhbmQg
dGhlbiBsYXRlciBvbmx5IGxvYWRzL2luaXRpYWxpemVzIChieSBjbG9zZXN0IG1hdGNoKSB0aGUN
Cj4gdmVuZG9yIHByb3RvY29scyB0aGF0IGFyZSBwcmVzZW50IGluIHRoZSBEVCBBTkQgdGhhdCBo
YXMgYmVlbiAndGFnZ2VkJyBhdA0KPiBjb21waWxlIHRpbWUgd2l0aCB0aGUgc2FtZSB2ZW5kb3Jf
aWQvc3ViX3ZlbmRvcl9pZCB0dXBsZSAoaW4gdGhlIHZlbmRvcg0KPiBtb2R1bGUgY29kZSwgc3Ry
dWN0IHNjbWlfcHJvdG9jb2wpDQo+IA0KPiBPZiBjb3Vyc2UgeW91IHNob3VsZCB0YWtlIGNhcmUg
dG8gcHV0IHRoZSBwcm9wZXIgcHJvdG9jb2xAODEgbm9kZSBpbiB5b3VyDQo+IHZlbmRvcl9BIERU
QiBmb3IgdGhlIHZlbmRvcl9BIFNDTUkgZHJpdmVyIHRvIG1ha2UgdXNlIG9mIHRoZSBhZGRpdGlv
bmFsDQo+IHZlbmRvcl9BIHByb3BlcnRpZXMgdGhhdCB5b3UgaGF2ZSBkZWZpbmVkIHVuZGVyIHlv
dXIgbm9kZSBhcyByZWZlcnJlZCBpbg0KPiB5b3VyIHZlbmRvci1wcm90b3MueWFtbC4uLmlmIHlv
dSBib3RjaCB0aGF0IHVwIEkgd2lsbCBsb2FkIGEgcHJvdG9jb2wgYW5kIGNhbGwNCj4geW91ciB2
ZW5kb3JfQSBkcml2ZXIgd2l0aCBhIHZlbmRvcl9YIERUIG5vZGUuDQo+IA0KPiBEVCBpcyBjdXJy
cmVudGx5IHZlbmRvci1hZ25vc3RpYy4NCj4gDQo+ID4NCj4gPiBUaGUgMm5kIHdheSBpcyBqdXN0
IGEgdmFyaWF0aW9uIG9mIHRoZSBvbmVPZiBhYm92ZSwgYnV0IGRvIHdlIGRvIDENCj4gPiBmaWxl
IHBlciB2ZW5kb3IgcHJvdG9jb2wgb3IgMSBmaWxlIHBlciB2ZW5kb3IuIEVpdGhlciBzaG91bGQg
YmUNCj4gPiBkb2FibGUsIGp1c3QgYSBtYXR0ZXIgb2Ygd2hlcmUgJ3Byb3RvY29sQDgxJywgZXRj
LiBhcmUgZGVmaW5lZC4NCj4gPg0KPiANCj4gT2gsIHllcyBtaW5lIHdhcyBqdXN0IGFuIGlsbCBl
eGFtcGxlLi4ub25lIGZpbGUgcGVyIHZlbmRvciB3aWxsIGRvIGp1c3QNCj4gZmluZTogdGhlIGlt
cG9ydGFudCB0aGluZyBpcyB0aGF0IHRoZSBsaXN0IGFuZCB0aGUgeWFtbCBpdHNlbGYgY2FuIGJl
IGV4dGVuZGVkIGFzDQo+IG5ldyB2ZW5kb3JzIGFwcGVhcnMgKGluIGEgYmFja3dhcmQgY29tcGF0
YmxlIHdheSBvZiBjb3Vyc2UpDQo+IA0KPiBUaGFua3MsDQo+IENyaXN0aWFuDQo=

