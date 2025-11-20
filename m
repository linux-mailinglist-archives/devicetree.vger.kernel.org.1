Return-Path: <devicetree+bounces-240529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 37259C7287B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:13:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3F89A346744
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E4ED2FF660;
	Thu, 20 Nov 2025 07:10:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2105.outbound.protection.partner.outlook.cn [139.219.17.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E51B2FF644;
	Thu, 20 Nov 2025 07:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.105
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763622615; cv=fail; b=H7E48QCBTCxt5kpHSHGXjl2RULHwp+4ONkpsUQRtRXfMZxV84v65YnX9lWzLgq8mjtcRVGYJ4qXuD15vfC/uP57gFUAvNyQs0+ze8mp3jN22ev8zTig1vmo3H41hPF56k06TOBRlQf6Xk2J4AP6xNeB5ojTdtO6pPjiyVjR45nM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763622615; c=relaxed/simple;
	bh=GTMd2g4iZz3V2h7W3RyDkIf0jC9SPuuN0uyq7ylPRs4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=GATUPzHRFttERdqiSOafM8kztX/phveAOnsW+83oq+oOH/cvq+6whtoFsfnp8GWnsEcWH67mhLu/MnhHx5ajbvqojtV4TE4S0MHuSS8TfgFVX4VcnnNRxhSsOntmyi6eaOap6Nt15VSQNJ/fqrd6qSuFDv7RmuMCOXbb2Pdz4oQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gcwv2o1y/aXrN5VeoLsxubJuDfPnw0L9pK/XP4og1gYlOCwHGMB4LoZIpACb5IEhLUoX+VSHNvcv20t9IlcPYIZJUquMKRWm5G9Z6rAHQWbZCfmUJLPqArRGhyAr5EGjOA/6QMk9iJy1m/PHOo/dXt4DBA26T8PRXZxjepPHYhBHrxk45PO7jzJoRu4+goV4A8aoQFP6cuuNLHUyXGf6fIDLGgPJrxAp2BNklog6Oqbs375jmtKYtH3RITUM+m8JGzn/s9TckuTYOHhoVX56o8/F0qQ0j32W3HgrvGnhEMv3VeUKruQkj9dXhx92bO90BVf+oaG9b+NFg1rQJjNaiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTMd2g4iZz3V2h7W3RyDkIf0jC9SPuuN0uyq7ylPRs4=;
 b=FaL6dv7yngh4r1bOen2rOM+/cp14VSKH6QQuWaHS+quDjqz/COeu9hnCBu08CRUvRa5sTzMxW//RvwDESfAsHD66vw+7AHrEOegU0YH2YXo9fARELTjMcPZhBojY7JiyYNET0CpU1iymCfPjJruFD45p0e79V3bwA4FeSHfVtcA9ZdGnDu8Z8qr71e3xVun9Um+UGOB065BH3xXQWByP9VkYSESHf9JSC3mcs8cWaKscb5/ejZTSvFiVUk9Jj3rjBh8k4IaRwEJCKno2VvpdQsKizvP39vqHDvqqAw/JY1R5wg/oznVnIhtN4EWp8Xt8NpvpIYDk5OTPXGyOo26Y5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1257.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:11::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Thu, 20 Nov
 2025 02:38:04 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 02:38:04 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley
	<conor@kernel.org>
CC: E Shattow <e@freeshell.de>, Albert Ou <aou@eecs.berkeley.edu>, Bjorn
 Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, Heinrich
 Schuchardt <heinrich.schuchardt@canonical.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, =?utf-8?B?S3J6eXN6dG9mIFdpbGN6ecWEc2tp?=
	<kwilczynski@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Rob
 Herring <robh@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
Thread-Topic: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
Thread-Index:
 AQHcT8yr76WB0y2LYU6wjdN+ecXGd7TvGAmAgADiXSCAAHpnAIAATH0AgAM44ACAAnXysIABCekAgABDeoCAAWPeAIAA74wAgADZdKA=
Date: Thu, 20 Nov 2025 02:38:04 +0000
Message-ID:
 <ZQ2PR01MB130738275772B0AD73099EF0E6D42@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
 <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
 <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
 <ZQ2PR01MB13075CDDEFC2F03C837E1B31E6C92@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <b33919e9-e100-4629-92cb-d1ec3dd756a7@freeshell.de>
 <ZQ2PR01MB1307DADE17FFEFCE70C3F391E6D62@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20251118-throwing-marina-14a87d65465a@spud>
 <CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com>
In-Reply-To:
 <CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1257:EE_
x-ms-office365-filtering-correlation-id: c534e303-35b8-4a06-5bff-08de27ddd4c8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|41320700013|1800799024|366016|38070700021;
x-microsoft-antispam-message-info:
 u+DAAEvnLmZKXtlAIieA756E9S7TCeX4jpFjGzgqkWJNaNXVCc1GPmrAv7Q3gNPfwp3xTefw3tuNljzlwOgtztXrL5B6GlZ4tUDLO61EzT17jg3zcgI/iMUG/8OxzvattdI6C7q3ItkI/rPXQWGKe1SfyCLlIimkcKiiEpDimeiEtfLX9KftRzeixfrc+mHNpZTueVyG6lkxHbOQHKS1Rlye0GhAxzZGTlGYrhOEHOjdi5tnrRMkmV1eaTPQQPIBz1Id+A3TYO/UhBITRIYjWJM/ENipszSBao2v9WZ97J7nXLWBP2ljxbfbDpumhGMbkJCzzn93KQYdDlYJyYxAJn0iKY8cs2IcaC2NO8+TRkK49lSbgEDAnwy3x2F0C6k9whggs/J31N/ZLQQscEiNb3BqsLiwun+zv8K/vHJ8E1Uha/XN/R1Pgd2dxkR2VwNIt11uSNcxAh4aWvR8yxReXrxPxEp/re7SLPEvSvbaLwQO2QZleL9G5lhjNZH9F/rYccBO8DtdnvJhSp+lPWi4Z4g2gfTqPkGj1J6el0bZReGyjYHtXel15RR0U4I8v35CPx29t6h1j+DSORz74ShOrMsNxz3F8uPAlUcNBhXGSDY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(7416014)(41320700013)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZklIOWs3enhmMXhLcDQvU1UxbnpVcXFtT0R6VVE5eStqbE1PUEJ4Um9aSVR3?=
 =?utf-8?B?aUZ0ejZLK3htYm94SE1MOUNUVmozQkpJdVNUQ0Q1L05JWSs2amFJNlZCNWZ5?=
 =?utf-8?B?cW1qSnNkc3g1bkIyQzltRHJvZWRRVVFETkkxVFVTUDlsd1ZpY2hHUVhVdjF0?=
 =?utf-8?B?S1BSRnBvWU9MM3FOL0IrU090MmoyKzN6Y0ZvWEl4em9pQjh0SU5RODV0ckQy?=
 =?utf-8?B?aGNJMzVwdlE0WjNndVNvUnhHeWNEaFBDVDR6NnNvTXo1ZG5takNGVzBSdU1w?=
 =?utf-8?B?Yi8zSnFXTnNKZWNBbXRIWmRabW8yUkgyRU5IVWhuVnpwME0vYTJFQ05hcGZW?=
 =?utf-8?B?RnUvdzB3OTZRSUR0TzlUQlZFQndOd3h3YXpWM2NzYmcxQW56SkxiQTY2N3Q2?=
 =?utf-8?B?ajN4UlptU2RIeGFNS3cvUGQxcDhnRDVkMjF4bFhBRW0reGFGS2o4MzFDeTFB?=
 =?utf-8?B?K3RWSExtMTVlUk1lQk5ydnVlbGowVjZVa2lXZFRWdUxVZ1RrcUNqQzBZN2Nm?=
 =?utf-8?B?bFlaanJTZ1JhcFIxeU82WDFsMWxLQ3FaL3NUT01SYWNxbHRIaFJPdW1zMzF3?=
 =?utf-8?B?cTkwdWZZVW1IYmNwdjN5NFBTT2dMaXBFQ0pseVpCcFlWT1FmRzA1eCswQUNV?=
 =?utf-8?B?N3lxS3BUN0VsYkhOeEwwV1lzdWlPckRWTFlGUG5zclRBRFpPQXA3REV5eGRk?=
 =?utf-8?B?cEs2aCtwQzNsdGk5Y3UzQS94RkRJb29XQ1BiYjNpZE40VStEbTBibVFIN0VQ?=
 =?utf-8?B?QkMwaGpjNW96aGxqUjNpZ2RWSWJmbTRkU2tWQzhDaDVpRUVybktISnpNYW1z?=
 =?utf-8?B?aXJDTnprSjB2VWpPUlBjdGd6NUxyL3ZjNHhkcU8xSld3QmZVZDNISVVtQzBS?=
 =?utf-8?B?dHRYdFRRbUtmaHBJYnpSbE92NHFUMWF5aXhEaXB2cGI3b2lYd2ZzK1Y0dllB?=
 =?utf-8?B?RlpDakxOSCtqNnFScnZQWjR1L3NIVTVTYjJWUUNkTFBnR20ydWVNOUx1MDAz?=
 =?utf-8?B?UjMwRHp2ZDlxdzdLdWIybU14ZEdVQ2RUUElYdHJXVHhpbGdlRnpvRGFGa0h5?=
 =?utf-8?B?amFnZXB0eWZSU1VsdXR1a0xSb3NDdjJrR3ZKbXZtV2lualdUdTZ2c3Y0NGYw?=
 =?utf-8?B?SHhsV3UxTmVtM0QwRkd6aGplMnNCV2ZId3BXajUycnExRkJpbVFoWTNycncw?=
 =?utf-8?B?a0xCUVVRYVZkVzdtL2JZR1poR2lVU3RBVWlKc2FHK2ZGWE9DeDY3SUZzQnhD?=
 =?utf-8?B?dmlyMDZaRHFrcWZmbXJRdUJ6RkVybGFUbnJRekRKREo2ZkhEVU5jQWo4UkpK?=
 =?utf-8?B?Y3RTZURqNFhHR2l6aDRkRmlZRkhGYS9Bai9qU2NvcDUxWmxjL29Pak9zSHNZ?=
 =?utf-8?B?dFBRVWtDcEJVSnVsVnZoOGhvV3o0a3ZXZ3FNdGIvVkowbG9sYUpJUWdBUCta?=
 =?utf-8?B?S3AxYlhMMDMvb2NJNk9qN25ES1dETUJHNVdjelRZbkRMN2xsWStaeTRaSzlP?=
 =?utf-8?B?MW54WHFzNWxOdXRpd1BrdUU4UW9abjlVVmo1ZEx4YzRuT1RJZVBNNlR3OWpR?=
 =?utf-8?B?NVdWM2VCZkFqNUhJNG5tR2FNR2tnb21weTczazcwWXdkTkpUZkI3S3RTdFpm?=
 =?utf-8?B?U0RLdm1SUEE5S1JNY2U0ZnhIeVloSXhxTW45K21CRlJtL3FaYUgyMFlSOFBU?=
 =?utf-8?B?ZzZkdmJWUjI4SjEyWmZJM2tQTy9LbVZONzFsOGZUSzdZd0xLcTZWTnFLTGZv?=
 =?utf-8?B?aXpoN3JaWitXamR5STN0cERMTXBVeFArMzJoN1VYMURHWkYvdkNJSXBRWElj?=
 =?utf-8?B?R2tzNldqTUZrRDhnbTRJVzhDcnpyQlJjcWFzSlAzYkpLT0lFRXNlTm1QM0Uv?=
 =?utf-8?B?TWNVM2F2S3JzTStRb3I0bGJhVGZWem5udUl6KzU1akNWTHRDNGxDWm5hbUlQ?=
 =?utf-8?B?bGZKaEVvc01OdVkyWGFGcEE1dkhMWU5lcTBkekpsanp1SUhFYkFXaDNmSkF3?=
 =?utf-8?B?T1BVWlBiNER1SlZXQmVlMzViK21pSGgvY2lMbGN0T2hVUnJJTTFoNmEzaXla?=
 =?utf-8?B?VzJOK3Y3bVdaZFp2YitYS0FaUnJGVElhUE5GSFppL3pIdjVLLzRQVUdGRy9v?=
 =?utf-8?Q?u5Xgvwj4LFGiQr+mAKXDdXTUr?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: c534e303-35b8-4a06-5bff-08de27ddd4c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 02:38:04.4139
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bcsC+8nWsUAjQ9pDs4IpR46OblirW51+b6LJtthc4e7aieRe9gbqbKAmMfrU++fBKvDkHENKhB8Ug5m8Kn742yihl8BLluMpI6qlwvZ8y30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1257

PiBPbiAxOS4xMS4yNSAyMToyOCwgRW1pbCBSZW5uZXIgQmVydGhpbmcgd3JvdGU6DQo+IFF1b3Rp
bmcgQ29ub3IgRG9vbGV5ICgyMDI1LTExLTE5IDAwOjEwOjA4KQ0KPiA+IE9uIFR1ZSwgTm92IDE4
LCAyMDI1IGF0IDAyOjEyOjU4QU0gKzAwMDAsIEhhbCBGZW5nIHdyb3RlOg0KPiA+ID4gPiBBbGws
DQo+ID4gPiA+DQo+ID4gPiA+IEkgcmVwZWF0IHRoYXQgdGhlIHN1Z2dlc3Rpb24gd2FzIG1hZGUg
bW9udGhzIGFnbyAoYnkgSGFsKSB0byBzcGxpdA0KPiA+ID4gPiBvdXQgdGhlIE9QUCB0YWJsZXMg
cGVyLWJvYXJkIGZyb20gdGhlIHBlcmlvZCBvZiB0aW1lIHdoZW4gSSB3YXMNCj4gPiA+ID4gY29t
cGxhaW5pbmcgYWJvdXQgMS41R0h6IEpILTcxMTAgb3BlcmF0aW9uIHB1c2hpbmcgVERQIGludG8N
Cj4gPiA+ID4gb3Zlci10ZW1wZXJhdHVyZSB0aGVybWFsIGxpbWl0IG9uIE1pbGstViBNYXJzIENN
IFNvTS4NCj4gPiA+ID4NCj4gPiA+ID4gV2hldGhlciBvciBub3QgSkg3MTEwUyBpcyBhIG5ldyBj
b21wYXRpYmxlIHNob3VsZCBmb2xsb3cNCj4gPiA+ID4gcHJlY2VkZW5jZSBpbiBMaW51eCBkZXZl
bG9wbWVudC4gSkgtNzExMFMgaXMgZXZpZGVudGx5IHRoZSBzYW1lDQo+ID4gPiA+IHRhcGUtb3V0
IGFzIEpILTcxMTAgYW5kIGhvd2V2ZXIgeW91IGRlYWwgd2l0aCB0aGF0IGluIExpbnV4IGlzIHRo
ZQ0KPiA+ID4gPiBhcHByb3ByaWF0ZSB3YXkgdG8gZGVhbCB3aXRoIHRoYXQgaGVyZS4gU2VsZWN0
aW9uIG9mIE9QUCB0YWJsZSBmb3INCj4gPiA+ID4gY29ycmVjdCBvcGVyYXRpb24gd2lsbCBiZSBk
ZXRlcm1pbmVkIGJ5IGJvb3Rsb2FkZXIsIHdoZXJlLCBpdCBpcw0KPiA+ID4gPiBkZW1vbnN0cmF0
ZWQgYnkgcGF0Y2ggc2VyaWVzIHNlbnQgdG8gVS1Cb290IHVwc3RyZWFtIHRvIGJlDQo+ID4gPiA+
IHNlbGVjdGVkICoqIHBlci1ib2FyZCAqKiBiYXNlZCBvbiBFRVBST00gY29udGVudCBhcyBpZiBp
dCB3YXMgYW55DQo+ID4gPiA+IG90aGVyIEpILTcxMTAgYm9hcmQgZGVjaWRpbmcgZHRzIGJhc2Vk
IG9uIEVFUFJPTSBjb250ZW50LiBHaXZlbg0KPiA+ID4gPiB0aGF0IGl0IGlzIHRoZSBzYW1lIHRh
cGUtb3V0IEkgZG8gbm90IGZpbmQgYSB2YWxpZCBqdXN0aWZpY2F0aW9uDQo+ID4gPiA+IGZvciBh
IG5ldyBjb21wYXRpYmxlIGluIHRoZSBzdGFjayBvZiBhZGphY2VudCBzb2Z0d2FyZSBiZXNpZGVz
IGdvaW5nDQo+IGFsb25nIHdpdGggc29tZSBraW5kIG9mIG1hcmtldGluZy1kcml2ZW4gYW5zd2Vy
IGFib3V0IHdoZXRoZXIgb3Igbm90IHRoaXMgaXMNCj4gYSBuZXcgU29DLg0KPiA+ID4gPg0KPiA+
ID4gPiBXaGF0IEkgY2FyZSBhYm91dCBub3cgaXMgdGhhdCB0aGUgVmlzaW9uRml2ZSAyIExpdGUg
c2VyaWVzIGlzIGluDQo+ID4gPiA+IGdvb2QgZW5vdWdoIHNoYXBlIGFuZCB0aGVyZSdzIGEgcG9z
c2liaWxpdHkgdG8gYWN0IG9uIHRoaXMNCj4gPiA+ID4gbW9udGhzLW9sZCBzdWdnZXN0aW9uIHRv
IHNwbGl0IG91dCB0aGUgT1BQIHRhYmxlcyB3aGljaCBhcyB3ZSBoYXZlDQo+ID4gPiA+IGNvbmZp
cm1lZCB0aGUgSkg3MTEwUyBpcyB0aGUgc2FtZSBTb0MgYXMNCj4gPiA+ID4gSkg3MTEwIGl0IG1h
a2VzIGEgbG90IG9mIHNlbnNlIHRvIGRvLg0KPiA+ID4gPg0KPiA+ID4gPiBIb3cgaXMgaXQgc3Vw
cG9zZWQgdG8gd29yayBmb3IgYmlubmVkIHNpbGljb24gaW4gTGludXg/DQo+ID4gPg0KPiA+ID4g
SGksIENvbm9yLCAgRW1pbCwNCj4gPiA+DQo+ID4gPiBXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0
aGlzPyBIb3BlIHRvIGhlYXIgZnJvbSB5b3UuDQo+ID4NCj4gPiBDYW4gc29tZW9uZSBqdXN0IGdp
dmUgbWUgYSB5ZXMvbm8gcXVlc3Rpb24gb3V0IG9mIHRoaXMgdGhyZWFkPyBJJ20gbm90DQo+ID4g
cmVhbGx5IGltbWVkaWF0ZWx5IHN1cmUgd2hhdCdzIGJlaW5nIGFza2VkIG9mIG1lLiBXaGF0IGV4
YWN0bHkgZG8geW91DQo+ID4gd2FudCB0byBkbyB3aXRoIHRoZSBvcHAtdGFibGVzPyAiU3BsaXQg
b3V0IiBpc24ndCBzdXBlciBjbGVhci4gRG9lcw0KPiA+IHRoYXQgbWVhbiBpbnRvIGJvYXJkIGZp
bGVzPyBJIGFtIGd1ZXNzaW5nIGl0IGRvZXMsIHNpbmNlIHlvdSdyZSBzYXlpbmcNCj4gPiB0aGF0
IGEgcGFydGljdWxhciBib2FyZCBjYW5ub3Qgc3VwcG9ydCB0aGUgMS41IEdIeiBtb2RlLiBJdCdz
IG5vdA0KPiA+IHVudXN1YWwgdGhvdWdoIHRvIHVzZSBkZWxldGUgbm9kZSBmb3IgdW5zdXBwb3J0
ZWQgb3BwLXRhYmxlIGVudHJpZXMsDQo+ID4gY291bGQgdGhhdCBiZSBkb25lIGluc3RlYWQ/DQo+
IA0KPiBZZXMsIGFzIGZhciBhcyBJIGNhbiB0ZWxsIHdlIHNob3VsZCBiZSBhYmxlIHRvIGp1c3Qg
YWRkIHRoZSBib2FyZCBkZXNjcmlwdGlvbiBsaWtlDQo+IHRoaXM6DQo+IA0KPiAgamg3MTEwLmR0
c2kgICAgICAgICAgICAgICAjIEpINzExMCBTb0MgZGVzY3JpcHRpb24NCj4gIHwtIGpoNzExMC1j
b21tb24uZHRzaSAgICAgIyBQZXJpcGhlcmFscyBjb21tb24gdG8gYWxsIEpINzExMCBib2FyZHMN
Cj4gICAgIHwtIGpoNzExMC1zdGFyZml2ZS12aXNpb25maXZlLTIuZHRzaSAjIFBlcmlwaGVyYWxz
IGNvbW1vbiB0byBWRjIgYm9hcmRzDQo+ICAgICB8ICB8LSA8VkYyIGJvYXJkcz4gICAgICMgRmlu
YWwgVkYyIGJvYXJkIGRlc2NyaXB0aW9ucw0KPiAgICAgfC0gamg3MTEwLW1pbGt2LW1hcnNjbS5k
dHNpICMgUGVyaXBoZXJhbHMgY29tbW9uIHRvIE1hcnMgQ00gYm9hcmRzDQo+ICAgICB8ICB8LSA8
TWFycyBDTSBib2FyZHM+ICMgRmluYWwgTWFycyBDTSBib2FyZCBkZXNjcmlwdGlvbnMNCj4gICAg
IHwtIDxvdGhlciBib2FyZHM+ICAgICAgIyBPdGhlciBKSDcxMTAgYm9hcmQgZGVzY3JpcHRpb25z
DQo+ICsgICB8LSBqaDcxMTAtc3RhcmZpdmUtdmlzaW9uZml2ZS0yLWxpdGUuZHRzDQo+IA0KPiBh
bmQgaGF2ZSBpdCBkbw0KPiANCj4gJmNwdV9vcHAgew0KPiAgICAgL2RlbGV0ZS1ub2RlLyBvcHAt
Mzc1MDAwMDAwOw0KPiAgICAgL2RlbGV0ZS1ub2RlLyBvcHAtNTAwMDAwMDAwOw0KPiAgICAgL2Rl
bGV0ZS1ub2RlLyBvcHAtNzUwMDAwMDAwOw0KPiAgICAgL2RlbGV0ZS1ub2RlLyBvcHAtMTUwMDAw
MDAwMDsNCj4gDQo+ICAgICBvcHAtMzEyNTAwMDAwIHsNCj4gICAgICAgICBvcHAtaHogPSAvYml0
cy8gNjQgPDMxMjUwMDAwMD47DQo+ICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Ow0K
PiAgICAgfTsNCj4gICAgIG9wcC00MTcwMDAwMDAgew0KPiAgICAgICAgIG9wcC1oeiA9IC9iaXRz
LyA2NCA8NDE3MDAwMDAwPjsNCj4gICAgICAgICBvcHAtbWljcm92b2x0ID0gPDgwMDAwMD47DQo+
ICAgICB9Ow0KPiAgICAgb3BwLTYyNTAwMDAwMCB7DQo+ICAgICAgICAgb3BwLWh6ID0gL2JpdHMv
IDY0IDw2MjUwMDAwMDA+Ow0KPiAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8ODAwMDAwPjsNCj4g
ICAgIH07DQo+ICAgICBvcHAtMTI1MDAwMDAwMCB7DQo+ICAgICAgICAgb3BwLWh6ID0gL2JpdHMv
IDY0IDwxMjUwMDAwMDAwPjsNCj4gICAgICAgICBvcHAtbWljcm92b2x0ID0gPDEwMDAwMDA+Ow0K
PiAgICAgfTsNCj4gfTsNCj4gDQo+IFRoaXMgc2VlbXMgdG8gYmUgdGhlIG1pbmltYWwgYW1vdW50
IG9mIGNoYW5nZXMgbmVlZGVkLiBJIGxvb2tlZCB0aHJvdWdoIHRoZQ0KPiBsYXRlc3QgT3BlblNC
SSBhbmQgaXQgZG9lcyBtYXRjaCAic3RhcmZpdmUsamg3MTEwcyIsIGJ1dCBpdCB0cmVhdHMgaXQg
ZXhhY3RseSB0aGUNCj4gc2FtZSBhcyAic3RhcmZpdmUsamg3MTEwIiBhbmQgSGFsIGhhdmUgbm90
IHJlYWxseSBnaXZlbiBhbnkgb3RoZXIgcmVhc29uIHdlJ2QNCj4gbmVlZCBuZXcgY29tcGF0aWJs
ZSBzdHJpbmdzLg0KPiANCj4gRTogSSBrbm93IHRoaXMgZG9lc24ndCBzcGxpdCBvdXQgdGhlIG9w
cCB0YWJsZSBsaWtlIHlvdSBzdWdnZXN0ZWQsIGJ1dCBJIHRoaW5rDQo+IHRoYXQgY2FuIGNvbWUg
bGF0ZXIgaWYgbmVlZGVkLiBMZXQncyBqdXN0IHN0YXJ0IHdpdGggdGhlIG1pbmltYWwgYW1vdW50
IG9mDQo+IGNoYW5nZXMgdG8gZ2V0IHRoZSBWRjIgTGl0ZSBzdXBwb3J0ZWQuDQo+IA0KPiBIYWw6
IERvIHlvdSB0aGluayB0aGlzIGNvdWxkIHdvcms/IFlvdSBtaWdodCBuZWVkIGEgcGF0Y2ggdG8g
bW92ZSBzb21lIG1tYw0KPiBwcm9wZXJ0aWVzIG91dCBvZiBqaDcxMTAtY29tbW9uLmR0c2kNCg0K
WWVzLCBJIHdpbGwgc2VuZCBvdXQgYSBuZXcgdmVyc2lvbiB3aXRoIHRoZSBmaWxlIGxheW91dCBh
Ym92ZSB0b2RheS4gVGhhbmsgeW91Lg0KDQpCZXN0IHJlZ2FyZHMsDQpIYWwNCg==

