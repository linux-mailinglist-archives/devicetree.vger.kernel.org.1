Return-Path: <devicetree+bounces-67066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E684B8C6797
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 15:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D19E280FA6
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 13:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B7E13E8B2;
	Wed, 15 May 2024 13:41:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2113.outbound.protection.partner.outlook.cn [139.219.146.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA312C7FB;
	Wed, 15 May 2024 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.113
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715780519; cv=fail; b=VUFbHUMjBu71+BjYMpwiWFWxTTPXM7CxPXCMifSHKJLeOhCbgKA8rer6VJvguebcCypaK/P+ic7OGpxSsUrLCKz5CX5nFXATcn7W5P3pKyQy1RjbnEyHcd26pQIKdNNuzUItrcS/JKMzHRaESlsDZ7sRFWrlIC6Lcvxqn4YgGdg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715780519; c=relaxed/simple;
	bh=CITSJBsx2mlOd1EvkLpouZ5F7Wwg9VQXnDG/d6UgA5w=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=tO59vlCQOqu0ERKOa758YgBqN3NqootDnZRxldGsaQHsetgWepS2Wn/mSR1isist18sACcP9X3qeenptF0xwlt8c8vR1sQfI42VuNJ7yVE/qTNUmWsOrW0W5awosQ09WIZ73BM68/sJble4UoSigQEq5tk1HFn9UKxMWe2NTFyE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nySx1Gwo5lU2FHWLlBommiW3gmmn8vdnqv+x0DhKWyb4Fwgqse+i2wwS/oKuXi7+QBn4fUze0C6XZtTZg5Ol+H2zRRaWUjMlD2scsxA9gzUZmCl/XwRaaVkYYRKd7kNR7bWGMj43mfL3YhoJ8cN6egY5rjOEuCaheS3LE5qo7BzaQ7AfDzsX+m8mi6R/ZqbhBLpvHz9uWYLFR/dmMmDBM9lBYAc3BwIqtx93crRert8XjoZDbwSRA5f7cRhqA6J7J5tNhCQvm0DUkECIbWAVADFq1drXGz+Mv19iUzHJX4gGHQZBFg3pHzAqHlR1z/3laBBGhj/ZlAAvo3I9RnPEMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CITSJBsx2mlOd1EvkLpouZ5F7Wwg9VQXnDG/d6UgA5w=;
 b=VmwgM5gzpkAbqIa6s/nFd2z75Sau2LRC3Bea2JgdPXS5nTfkbVGc79fdaC8Qc3IDL2DnQhsB7PCVVOYRqx7tyNT/SGFirxN7m242pQ8QvyaXMjOTo4VDLHEWHdnDUD8bmo5nUtcrPkbhLwnArv2FeF+qIDTTy4DJA5e9VwDRBsDB09CZAUaVFt+BcxkPXFyPQvfwI8uspsDJSpveP51q0xORKr2SGX8vkJYKyvrVo3SD65VIvUnY/iOlpmAjJ2J3O2dX7TLItJvrRU9jLZVq4zETtt99nH2Poh9vNCpI3O509lu5SslrYbpAoV7eIf6eDdsUxxSm7Q5eW48YxJkwjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) by NTZPR01MB1019.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Wed, 15 May
 2024 10:07:27 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::80b1:7114:e636:a4e]) by NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::80b1:7114:e636:a4e%6]) with mapi id 15.20.7472.042; Wed, 15 May 2024
 10:07:27 +0000
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Keith Zhao
	<keith.zhao@starfivetech.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "suijingfeng@loongson.cn"
	<suijingfeng@loongson.cn>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "mripard@kernel.org"
	<mripard@kernel.org>, Xingyu Wu <xingyu.wu@starfivetech.com>, Jack Zhu
	<jack.zhu@starfivetech.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	William Qiu <william.qiu@starfivetech.com>, Shengyang Chen
	<shengyang.chen@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>
Subject: RE: [v3 6/6] drm/vs: simple encoder
Thread-Topic: [v3 6/6] drm/vs: simple encoder
Thread-Index: AQHaJq4PXJGeBe098kGxFlIGYfijMbCaJm8AgAABPICA/siQUA==
Date: Wed, 15 May 2024 10:07:27 +0000
Message-ID:
 <NTZPR01MB1050B57AEAD7FC6EE1911D5FEEEC2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-7-keith.zhao@starfivetech.com>
 <CAA8EJpqbQKjTeEdOpwNy7P+dJK-nnZzZYefyzoG+JWKVgsS=rw@mail.gmail.com>
 <CAA8EJpqrYpL8N4_nXW4BbJRuUR=zqmP88Ze6_xkoZRStso6ugA@mail.gmail.com>
In-Reply-To:
 <CAA8EJpqrYpL8N4_nXW4BbJRuUR=zqmP88Ze6_xkoZRStso6ugA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB1050:EE_|NTZPR01MB1019:EE_
x-ms-office365-filtering-correlation-id: 247daa8c-55c3-4861-28df-08dc74c6d329
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 MEc42bfdlRmfOQLnoPq1Oaxmm4V8gPKwU3R64shYUonrrGYEZ4xjBQjslzppcBar5WVpZUYd+vLGY5WjaYlzOhq13Nobs/AnvrlgIzFaSTxVYK93yz0HzJ986DLjQOwf86TGXckGjla1psVqHx4lFwzUjrbt1UE1jRyEjv4n5SAXvacwOHKwqItBvTcUDFxiwUfTy5lIqcCyDs+4tnSt69bG5zd2AagfpJLtlUIjD90qWV/p/868gbzyAqlxESASUwSoAamtDSQ5l8h56B18e1iB1GYyP7A4EAGDlmDQgsOjq7oQ3Zao231boKfP/2+n67WyZbzE8epajPDrQBZcPxOWzBvOviZCy11CH/0CxKQ5vA513w+saBbfbxGgtQ3kO+wFJIi6hzrPuCTAwOnGNW0CL/oWMPccOaUe2hxlQCnpwYY3hNqgb7rt/6MWgqci3PeEMVR9bVMr3dzljoIrl0fpDi2PTn2KDRs4X46AVxddb0GAi9xHD+D5vR9frrrFqgSw6XWCy016U6PZtd0WM+gsBWhX+Yy6wxyulaKcQTSKDJkeGcCnzN8LxSe1axAmRBtrJekl06wPr6RhgKBBbkOR9cE7unETzbVmIFfokFu1Gm/c4xVcnkqB8sBCL0Ex
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(7416005)(366007)(1800799015)(41320700004)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?NWFobDZaTTd3djl6VW5yUlZKOGJUckFBSlg1WXNJVWJ6bTZKM21Ca2w1ZDV5?=
 =?utf-8?B?Q2QvRUlBbFNiV3NXQktMQTV1anVEWklNdkw1Q3dFUWMyU3dIWjlVaUZsby9M?=
 =?utf-8?B?M2dPQVhJUENibi9SMlVXanp2TWVPQWJodExkWGV1UWlLWlQ4bENZRCtuZmJu?=
 =?utf-8?B?TlhpRGZXYTZacUIyOVFoTUw1NjhoTm9xSTdoMm50bHRiN2FBcjgraXBQTDdy?=
 =?utf-8?B?amdDZGdGaDA3OEp0YmtyN0pWdlhXZWJpaTJQYnBpeUdraGRCUUd1dXVsVkRi?=
 =?utf-8?B?S3ZwSThDdXRHQkcxQ2ZzNHJqaUdyOUF2Tk1lSnd1ZHN2dzNGMGxKcVZ0RWV1?=
 =?utf-8?B?VzdGUDBnMXJvZk93bnhjdDNCbTdNODE0ZnRLWUpMekM2YzdqVzRoK3EvSllE?=
 =?utf-8?B?WVBoc1VHcFZFS1RwWVJ1by9oSnkwR3FwTXUzL3c0UzI2a2xNK1FZSEMyd0Ny?=
 =?utf-8?B?UGpDRitlV2hNRzVkejgvMEtuQ0tKNWY5SlFEZkR5OVBlZVJzekszTzRscUdl?=
 =?utf-8?B?em9nRXpwMG5GUVFLVUhNNDV2SHg4aEhNWGdVRk5RWDVJRTNTOHZXYUJ6T1c0?=
 =?utf-8?B?a0ZlTUVDMUpCNTR0MU5KemdkZ2FMSFBnUVNuWW5TRHA2NnEvY0ZUaTNFMTNL?=
 =?utf-8?B?VkUxa2NrdHBkWEtKQjh2ZGJBc29nRmRPZ3lKc1Y4cjNZUVRJMDc5d1dmT21T?=
 =?utf-8?B?Qkp4YnBRS0NtUmxCV1lJSUtLKzlNRUs5SmcwRVNhQUpMQ2g5NkJtOG5tZjRo?=
 =?utf-8?B?dGtnNmUvbXVRVXRXbDNKaGt3cDc1bFRtZStyVGVvS2xIbDZERGh0QkdEN1VU?=
 =?utf-8?B?TGNpaUt5WXB5Z3oydmI5Ymswb1hWQUxkNmNMQms2Q1VjVmliQXFtcko0WU9X?=
 =?utf-8?B?dGMrbzZHNzNOMThHSU4wdXdXc0pEcmxiQVV5Ulgva0MxNzhCdzVLZyt6bHNk?=
 =?utf-8?B?Sk9UUjV2RzZJa0o2K0dwM042dGRiMEdhUHI5RFdVTUwvSWNlcXFIRFFqS2N3?=
 =?utf-8?B?cWN3MmpQbzQ2b2ZURjNTYndMQkI5bGJnekRhb3ptc2JlZ1JoTm9GUDJtQlVL?=
 =?utf-8?B?bmIxYmp6aWJEY0ZtMXlERFFpS3FWQ1JJQ0FHMmpKN0h0WlRyS1NHNWJHS1lk?=
 =?utf-8?B?aENKdW96aG5xRDJQRmQ5WUlzSGhwY291aHBUczJvZkIydk9jUzhxUURYVDlL?=
 =?utf-8?B?SGllYWdpL0JJdklBYytlNFR5MSt4MVJiblhnMUhqRnR4cThzS3BTWXF5SjVm?=
 =?utf-8?B?THBheklOckNLU1RIVGg2VkRPa24yS3FiZ1J2UGVENFVnbG11OG1TdHREL2ZV?=
 =?utf-8?B?YU80NXYvT0FlOWJHZTJYdWhlU1EyUis4MDdtYTJsbmQramkvTTRzZnhBemxz?=
 =?utf-8?B?ZlRpcXA4a3poV3ZRN0hMTW9UcXE0bEpRZkV6aEkzeTJQZUREV2xhRUhlbFZS?=
 =?utf-8?B?YkswWlk2Q1JoaWI2TzJQeFVCa04wZmNQajlJOEhLSlBKaWFZdDIyQmhEaHZ5?=
 =?utf-8?B?L2l2N3dEdkJYbStUam45QlFyb3JyZTFZQ3RhZ05xNEJHVk9KeGVQZUNKWmFT?=
 =?utf-8?B?VkdGSjJIT2RCN0Q1OEN6M3FyNGhNWVFhaXJqK0R4cUtaNDhHSHFOZ3dwTXFr?=
 =?utf-8?B?M1hPN3JYSG5qOXZLWFdvbE5pZEdWYmxUU2FpWmVPblpMMW1iZVpxY2RZSVJ1?=
 =?utf-8?B?WEZOazZBekhlZUpGb0NrOEtnOTdMOGRySWVrZHhXYjFuNCtENTQ3VWdzSUJs?=
 =?utf-8?B?SjZRb1BJNDBjNmFXQk9HUGNHUmxXcUM0ZzdvalJyRDA0NFB4ZzhvVS9XeWU4?=
 =?utf-8?B?cDVBaHgyZldWSXJwUGlVaFp0QjV2R2pVdUR4YkU5dndGdHJJWjYxYTgzZ09O?=
 =?utf-8?B?S3h6NTBUL2hRa3RtbXVxUkd2YmFBSHJFWk5yQ3JOVXIxMW1ZbnpTM3YrdlpE?=
 =?utf-8?B?dVZLZ210Rm8weEpUOHZnc051QjRhQWg2T0RhYlpGOVRkQ3c2MTZpOW5MWFgy?=
 =?utf-8?B?bVNXMm1hOVZBMVdxdjljWkIwdFUvNGM1ZGl1YVZJSzBHbGYxUnN1VC9ibTVk?=
 =?utf-8?B?NWxOeWJHcUc4RzNsMGljalRPcFZXUjl5azBqVHU3K09uK05GaXR2UVdvb0NI?=
 =?utf-8?B?NVdlUUFEeTVLK2orQVQ4b1hWWitFeXJkOFUwU0U2K1dvNjlwc1lvQnVrZU52?=
 =?utf-8?B?V1E9PQ==?=
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
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 247daa8c-55c3-4861-28df-08dc74c6d329
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 10:07:27.4349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l4aYfaVFsKl6daHkWZrL8NLnCvnX8LXwbX08cC6s8lM+qAxTLoDlUjoDi3zDKLWbl3Qb/IUwGbzfIRcUp0UEG/SZEZRrpZ06MElbXUe/Mao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1019

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRG1pdHJ5IEJhcnlzaGtv
diA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPg0KPiBTZW50OiAyMDIz5bm0MTLmnIg15pel
IDIxOjE5DQo+IFRvOiBLZWl0aCBaaGFvIDxrZWl0aC56aGFvQHN0YXJmaXZldGVjaC5jb20+DQo+
IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtcmlzY3ZAbGlz
dHMuaW5mcmFkZWFkLm9yZzsNCj4gYW91QGVlY3MuYmVya2VsZXkuZWR1OyBzdWlqaW5nZmVuZ0Bs
b29uZ3Nvbi5jbjsgdHppbW1lcm1hbm5Ac3VzZS5kZTsNCj4gcGF1bC53YWxtc2xleUBzaWZpdmUu
Y29tOyBtcmlwYXJkQGtlcm5lbC5vcmc7IFhpbmd5dSBXdQ0KPiA8eGluZ3l1Lnd1QHN0YXJmaXZl
dGVjaC5jb20+OyBKYWNrIFpodSA8amFjay56aHVAc3RhcmZpdmV0ZWNoLmNvbT47DQo+IHBhbG1l
ckBkYWJiZWx0LmNvbTsga3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnOyBXaWxsaWFt
IFFpdQ0KPiA8d2lsbGlhbS5xaXVAc3RhcmZpdmV0ZWNoLmNvbT47IFNoZW5neWFuZyBDaGVuDQo+
IDxzaGVuZ3lhbmcuY2hlbkBzdGFyZml2ZXRlY2guY29tPjsgQ2hhbmdodWFuZyBMaWFuZw0KPiA8
Y2hhbmdodWFuZy5saWFuZ0BzdGFyZml2ZXRlY2guY29tPg0KPiBTdWJqZWN0OiBSZTogW3YzIDYv
Nl0gZHJtL3ZzOiBzaW1wbGUgZW5jb2Rlcg0KPiANCj4gT24gVHVlLCA1IERlYyAyMDIzIGF0IDE1
OjE0LCBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+DQo+IHdy
b3RlOg0KPiA+DQo+ID4gT24gTW9uLCA0IERlYyAyMDIzIGF0IDE0OjMzLCBLZWl0aCBaaGFvIDxr
ZWl0aC56aGFvQHN0YXJmaXZldGVjaC5jb20+DQo+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IGFkZCBz
aW1wbGUgZW5jb2RlciBmb3IgZHNpIGJyaWRnZQ0KPiA+DQo+ID4gVGhpcyBkb2Vzbid0IGxvb2sg
bGlrZSBhIHByb3BlciBjb21taXQgbWVzc2FnZS4NCj4gPg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEtlaXRoIFpoYW8gPGtlaXRoLnpoYW9Ac3RhcmZpdmV0ZWNoLmNvbT4NCj4gPiA+IC0t
LQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmlsZSAgICAgICAgfCAg
IDQgKy0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfZHJ2LmMgICAgICAg
IHwgICAyICsNCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfc2ltcGxlX2Vu
Yy5jIHwgMTk1DQo+ID4gPiArKysrKysrKysrKysrKysrKysrKyAgZHJpdmVycy9ncHUvZHJtL3Zl
cmlzaWxpY29uL3ZzX3NpbXBsZV9lbmMuaCB8DQo+ID4gPiAyMyArKysNCj4gPiA+ICA0IGZpbGVz
IGNoYW5nZWQsIDIyMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pICBjcmVhdGUgbW9kZQ0K
PiA+ID4gMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19zaW1wbGVfZW5jLmMN
Cj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3Zz
X3NpbXBsZV9lbmMuaA0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dmVyaXNpbGljb24vTWFrZWZpbGUNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29u
L01ha2VmaWxlDQo+ID4gPiBpbmRleCA3MWZhZGFmY2VlMTMuLmNkNWQwYTkwYmNmZSAxMDA2NDQN
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmlsZQ0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL01ha2VmaWxlDQo+ID4gPiBAQCAtNSw2
ICs1LDggQEAgdnNfZHJtLW9ianMgOj0gdnNfZGNfaHcubyBcDQo+ID4gPiAgICAgICAgICAgICAg
ICAgdnNfY3J0Yy5vIFwNCj4gPiA+ICAgICAgICAgICAgICAgICB2c19kcnYubyBcDQo+ID4gPiAg
ICAgICAgICAgICAgICAgdnNfbW9kZXNldC5vIFwNCj4gPiA+IC0gICAgICAgICAgICAgICB2c19w
bGFuZS5vDQo+ID4gPiArICAgICAgICAgICAgICAgdnNfcGxhbmUubyBcDQo+ID4gPiArICAgICAg
ICAgICAgICAgdnNfc2ltcGxlX2VuYy5vDQo+ID4gPiArDQo+ID4gPiAgdnNfZHJtLSQoQ09ORklH
X0RSTV9WRVJJU0lMSUNPTl9TVEFSRklWRV9IRE1JKSArPQ0KPiBzdGFyZml2ZV9oZG1pLm8NCj4g
PiA+ICBvYmotJChDT05GSUdfRFJNX1ZFUklTSUxJQ09OKSArPSB2c19kcm0ubyBkaWZmIC0tZ2l0
DQo+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19kcnYuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfZHJ2LmMNCj4gPiA+IGluZGV4IGQ3ZTUxOTlm
ZTI5My4uOTQ2ZjEzN2FiMTI0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zl
cmlzaWxpY29uL3ZzX2Rydi5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGlj
b24vdnNfZHJ2LmMNCj4gPiA+IEBAIC0yMyw2ICsyMyw3IEBADQo+ID4gPiAgI2luY2x1ZGUgInZz
X2Rydi5oIg0KPiA+ID4gICNpbmNsdWRlICJ2c19tb2Rlc2V0LmgiDQo+ID4gPiAgI2luY2x1ZGUg
InZzX2RjLmgiDQo+ID4gPiArI2luY2x1ZGUgInZzX3NpbXBsZV9lbmMuaCINCj4gPiA+DQo+ID4g
PiAgI2RlZmluZSBEUlZfTkFNRSAgICAgICAidmVyaXNpbGljb24iDQo+ID4gPiAgI2RlZmluZSBE
UlZfREVTQyAgICAgICAiVmVyaXNpbGljb24gRFJNIGRyaXZlciINCj4gPiA+IEBAIC0yMTcsNiAr
MjE4LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgKmRybV9zdWJfZHJpdmVyc1td
DQo+ID4gPiA9IHsgICNpZmRlZiBDT05GSUdfRFJNX1ZFUklTSUxJQ09OX1NUQVJGSVZFX0hETUkN
Cj4gPiA+ICAgICAgICAgJnN0YXJmaXZlX2hkbWlfZHJpdmVyLA0KPiA+ID4gICNlbmRpZg0KPiA+
ID4gKyAgICAgICAmc2ltcGxlX2VuY29kZXJfZHJpdmVyLA0KPiA+ID4gIH07DQo+ID4gPg0KPiA+
ID4gIHN0YXRpYyBzdHJ1Y3QgY29tcG9uZW50X21hdGNoICp2c19kcm1fbWF0Y2hfYWRkKHN0cnVj
dCBkZXZpY2UgKmRldikNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfc2ltcGxlX2VuYy5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNv
bi92c19zaW1wbGVfZW5jLmMNCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLmM1YThkODJiYzQ2OQ0KPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX3NpbXBsZV9lbmMuYw0KPiA+ID4g
QEAgLTAsMCArMSwxOTUgQEANCj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMA0KPiA+ID4gKy8qDQo+ID4gPiArICogQ29weXJpZ2h0IChDKSAyMDIwIFZlcmlTaWxpY29u
IEhvbGRpbmdzIENvLiwgTHRkLg0KPiA+ID4gKyAqLw0KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9j
b21wb25lbnQuaD4NCj4gPiA+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+DQo+ID4gPiAr
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+ID4gKw0KPiA+ID4gKyNpbmNsdWRlIDxkcm0v
ZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2UuaD4N
Cj4gPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9jcnRjX2hlbHBlci5oPg0KPiA+ID4gKyNpbmNsdWRl
IDxkcm0vZHJtX29mLmg+DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPg0KPiA+ID4g
KyNpbmNsdWRlIDxsaW51eC9tZWRpYS1idXMtZm9ybWF0Lmg+ICNpbmNsdWRlIDxsaW51eC9tZmQv
c3lzY29uLmg+DQo+ID4gPiArDQo+ID4gPiArI2luY2x1ZGUgInZzX2NydGMuaCINCj4gPiA+ICsj
aW5jbHVkZSAidnNfc2ltcGxlX2VuYy5oIg0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgc2ltcGxlX2VuY29kZXJfcHJpdiBkc2lfcHJpdiA9IHsNCj4gPg0KPiA+IFBsZWFzZSB1
c2UgcHJvcGVyIHByZWZpeCBmb3IgYWxsIHRoZSBzdHJ1Y3QgYW5kIGZ1bmN0aW9uIG5hbWVzLg0K
PiA+IHZzX3NpbXBsZV9lbmNvZGVyIHNvdW5kcyBiZXR0ZXIuIE9yIHZzX2RzaV9lbmNvZGVyLg0K
PiA+DQo+ID4gPiArICAgICAgIC5lbmNvZGVyX3R5cGUgPSBEUk1fTU9ERV9FTkNPREVSX0RTSSB9
Ow0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IHNpbXBsZV9lbmNvZGVyICp0
b19zaW1wbGVfZW5jb2RlcihzdHJ1Y3QNCj4gPiA+ICtkcm1fZW5jb2RlciAqZW5jKSB7DQo+ID4g
PiArICAgICAgIHJldHVybiBjb250YWluZXJfb2YoZW5jLCBzdHJ1Y3Qgc2ltcGxlX2VuY29kZXIs
IGVuY29kZXIpOyB9DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIGludCBlbmNvZGVyX3BhcnNlX2R0
KHN0cnVjdCBkZXZpY2UgKmRldikgew0KPiA+ID4gKyAgICAgICBzdHJ1Y3Qgc2ltcGxlX2VuY29k
ZXIgKnNpbXBsZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiA+ID4gKyAgICAgICB1bnNpZ25l
ZCBpbnQgYXJnc1syXTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgc2ltcGxlLT5kc3NfcmVnbWFw
ID0NCj4gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9hcmdzKGRldi0+b2Zfbm9kZSwN
Cj4gPiA+ICsNCj4gInN0YXJmaXZlLHN5c2NvbiIsDQo+ID4gPiArDQo+IDIsDQo+ID4gPiArIGFy
Z3MpOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBpZiAoSVNfRVJSKHNpbXBsZS0+ZHNzX3JlZ21h
cCkpIHsNCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsDQo+
IFBUUl9FUlIoc2ltcGxlLT5kc3NfcmVnbWFwKSwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAiZ2V0dGluZyB0aGUgcmVnbWFwDQo+IGZhaWxlZFxuIik7DQo+ID4g
PiArICAgICAgIH0NCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgc2ltcGxlLT5vZmZzZXQgPSBhcmdz
WzBdOw0KPiA+ID4gKyAgICAgICBzaW1wbGUtPm1hc2sgPSBhcmdzWzFdOw0KPiA+ID4gKw0KPiA+
ID4gKyAgICAgICByZXR1cm4gMDsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArdm9pZCBlbmNv
ZGVyX2F0b21pY19lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKSB7
DQo+ID4gPiArICAgICAgIHN0cnVjdCBzaW1wbGVfZW5jb2RlciAqc2ltcGxlID0gdG9fc2ltcGxl
X2VuY29kZXIoZW5jb2Rlcik7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHJlZ21hcF91cGRhdGVf
Yml0cyhzaW1wbGUtPmRzc19yZWdtYXAsIHNpbXBsZS0+b2Zmc2V0LA0KPiBzaW1wbGUtPm1hc2ss
DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBzaW1wbGUtPm1hc2spOyB9DQo+ID4g
PiArDQo+ID4gPiAraW50IGVuY29kZXJfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIHsNCj4gPiA+ICsgICAgICAgc3RydWN0
IHZzX2NydGNfc3RhdGUgKnZzX2NydGNfc3RhdGUgPQ0KPiB0b192c19jcnRjX3N0YXRlKGNydGNf
c3RhdGUpOw0KPiA+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0g
Y29ubl9zdGF0ZS0+Y29ubmVjdG9yOw0KPiA+ID4gKyAgICAgICBpbnQgcmV0ID0gMDsNCj4gPiA+
ICsNCj4gPiA+ICsgICAgICAgc3RydWN0IGRybV9icmlkZ2UgKmZpcnN0X2JyaWRnZSA9DQo+IGRy
bV9icmlkZ2VfY2hhaW5fZ2V0X2ZpcnN0X2JyaWRnZShlbmNvZGVyKTsNCj4gPiA+ICsgICAgICAg
c3RydWN0IGRybV9icmlkZ2Vfc3RhdGUgKmJyaWRnZV9zdGF0ZSA9IEVSUl9QVFIoLUVJTlZBTCk7
DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHZzX2NydGNfc3RhdGUtPmVuY29kZXJfdHlwZSA9IGVu
Y29kZXItPmVuY29kZXJfdHlwZTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgaWYgKGZpcnN0X2Jy
aWRnZSAmJiBmaXJzdF9icmlkZ2UtPmZ1bmNzLT5hdG9taWNfZHVwbGljYXRlX3N0YXRlKQ0KPiA+
ID4gKyAgICAgICAgICAgICAgIGJyaWRnZV9zdGF0ZSA9DQo+ID4gPiArIGRybV9hdG9taWNfZ2V0
X2JyaWRnZV9zdGF0ZShjcnRjX3N0YXRlLT5zdGF0ZSwgZmlyc3RfYnJpZGdlKTsNCj4gPg0KPiA+
IFBsZWFzZSBkb24ndCBwb2tlIGludG8gb3RoZXJzJyBwbGF5Z3JvdW5kLiBUaGlzIHNob3VsZCBn
byBpbnRvIHlvdXINCj4gPiBEU0kgYnJpZGdlJ3MgYXRvbWljX2NoZWNrKCkgaW5zdGVhZC4NCj4g
DQo+IEhtbS4gQW5kIHlvdSBjYW4gbm90IHVzZSB2c19jcnRjX3N0YXRlIGZyb20geW91ciBicmlk
Z2UuIEFjdHVhbGx5IHRoaXMgZGVzaWduDQo+IG1ha2VzIG1lIHdvbmRlciwgaG93IGRvZXMgeW91
ciBoYXJkd2FyZSB3b3JrPyBJcyBpdCBwb3NzaWJsZSB0byBzZW5kIHRoZSBEU0kNCj4gY29tbWFu
ZHMgdG8gdGhlIHBhbmVsPw0KPiANCkhpIERtaXRyeToNCjHjgIEgVGhpcyBmdW4gaXMgdXNlZCB0
byBjaGVjayB0aGUgbWVkaWEgYnVzIGZvcm1hdCB3aGV0aGVyIGluIHN1cHBvcnQgbGlzdCAsIGlm
IG5vdCAsIHRoaXMgbW9kZSB3aWxsIGJlIGludmFsaWQsDQogICAgSSBqdXN0IHVzZWQgdGhlIGJy
aWRnZSBhcGkgdG8gZ2V0IHRoZSBtZWRpYSBidXMgZm9ybWF0LiAoc3luYyB3aXRoIHRoZSBpbnB1
dCBicmlkZ2UoY29ubmVjdG9yKSBidXMgZm9ybWF0KQ0KDQoy44CBIHRoZSBicmlkZ2UgZG9lc24n
dCBjYXJlIHRoZSB2c19jcnRjX3N0YXRlLCAganVzdCBkbyB0aGVpciBvd24gZHJtX2JyaWRnZV9m
dW5jcyAtPmF0b21pY19jaGVjaywgDQogICAgb3IgaXQgd2lsbCBiZSBpbXBvc3NpYmxlIHRvIG1h
a2UgdGhpcyBkc2kgZW5jb2RlciB0byBmaXQgZHNpIGJyaWRnZSBkcml2ZXIuDQoz44CBIGhhcmR3
YXJlIHdvcmsgOg0KICAgIGVuY29kZXJfYXRvbWljX2NoZWNrIGdldCB0aGUgbWVkaWEgYnVzIGZv
cm1hdCBhbmQgdXBkYXRlIGl0IHRvIHZzX2NydGNfc3RhdGUtPiBvdXRwdXRfZm10LA0KICAgIGR1
cmluZyB0aGUgY3J0Y19lbmFibGUgLCBpdCB3aWxsIHdyaXRlIHRoZSBvdXRwdXRfZm10IHRvIGhh
cmR3YXJlIC4NCg0KNOOAgQl0byBzZW5kIGRzaSBjb21tYW5kIHRvIHBhbmVsICwgIEl0IGlzIG9u
bHkgcmVsZXZhbnQgdG8gZHNpIGNvbnRyb2xsZXJzIGFuZCBwYW5lbCBkcml2ZXIgKGJyaWRnZSBh
bmQgcGFuZWwgKe+8jA0KCUl0IGRvZXMgbm90IGludm9sdmUgdGhlIGxvZ2ljIGFzc29jaWF0ZWQg
d2l0aCBlbmNvZGVyIGFuZCBjcnRjDQoNCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y2LjYuMzAvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9sY2RpZl9rbXMuYyNMNDU3DQpE
byB0aGUgc2ltaWxhciBsb2dpYw0KDQpCZXN0IHdpc2gNCj4gPg0KPiA+ID4gKw0KPiA+ID4gKyAg
ICAgICBpZiAoSVNfRVJSKGJyaWRnZV9zdGF0ZSkpIHsNCj4gPiA+ICsgICAgICAgICAgICAgICBp
ZiAoY29ubmVjdG9yLT5kaXNwbGF5X2luZm8ubnVtX2J1c19mb3JtYXRzKQ0KPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgdnNfY3J0Y19zdGF0ZS0+b3V0cHV0X2ZtdCA9DQo+IGNvbm5lY3Rv
ci0+ZGlzcGxheV9pbmZvLmJ1c19mb3JtYXRzWzBdOw0KPiA+ID4gKyAgICAgICAgICAgICAgIGVs
c2UNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHZzX2NydGNfc3RhdGUtPm91dHB1dF9m
bXQgPQ0KPiBNRURJQV9CVVNfRk1UX0ZJWEVEOw0KPiA+ID4gKyAgICAgICB9IGVsc2Ugew0KPiA+
ID4gKyAgICAgICAgICAgICAgIHZzX2NydGNfc3RhdGUtPm91dHB1dF9mbXQgPQ0KPiBicmlkZ2Vf
c3RhdGUtPmlucHV0X2J1c19jZmcuZm9ybWF0Ow0KPiA+ID4gKyAgICAgICB9DQo+ID4gPiArDQo+
ID4gPiArICAgICAgIHN3aXRjaCAodnNfY3J0Y19zdGF0ZS0+b3V0cHV0X2ZtdCkgew0KPiA+ID4g
KyAgICAgICBjYXNlIE1FRElBX0JVU19GTVRfRklYRUQ6DQo+ID4gPiArICAgICAgIGNhc2UgTUVE
SUFfQlVTX0ZNVF9SR0I1NjVfMVgxNjoNCj4gPiA+ICsgICAgICAgY2FzZSBNRURJQV9CVVNfRk1U
X1JHQjY2Nl8xWDE4Og0KPiA+ID4gKyAgICAgICBjYXNlIE1FRElBX0JVU19GTVRfUkdCODg4XzFY
MjQ6DQo+ID4gPiArICAgICAgIGNhc2UgTUVESUFfQlVTX0ZNVF9SR0I2NjZfMVgyNF9DUEFESEk6
DQo+ID4gPiArICAgICAgIGNhc2UgTUVESUFfQlVTX0ZNVF9SR0IxMDEwMTBfMVgzMDoNCj4gPiA+
ICsgICAgICAgY2FzZSBNRURJQV9CVVNfRk1UX1VZWVZZWThfMF81WDI0Og0KPiA+ID4gKyAgICAg
ICBjYXNlIE1FRElBX0JVU19GTVRfVVlWWThfMVgxNjoNCj4gPiA+ICsgICAgICAgY2FzZSBNRURJ
QV9CVVNfRk1UX1lVVjhfMVgyNDoNCj4gPiA+ICsgICAgICAgY2FzZSBNRURJQV9CVVNfRk1UX1VZ
WVZZWTEwXzBfNVgzMDoNCj4gPiA+ICsgICAgICAgY2FzZSBNRURJQV9CVVNfRk1UX1VZVlkxMF8x
WDIwOg0KPiA+ID4gKyAgICAgICBjYXNlIE1FRElBX0JVU19GTVRfWVVWMTBfMVgzMDoNCj4gPiA+
ICsgICAgICAgICAgICAgICByZXQgPSAwOw0KPiA+ID4gKyAgICAgICAgICAgICAgIGJyZWFrOw0K
PiA+ID4gKyAgICAgICBkZWZhdWx0Og0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldCA9IC1FSU5W
QUw7DQo+ID4gPiArICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gPiArICAgICAgIH0NCj4gPiA+
ICsNCj4gPiA+ICsgICAgICAgLyogSWYgTUVESUFfQlVTX0ZNVF9GSVhFRCwgc2V0IGl0IHRvIGRl
ZmF1bHQgdmFsdWUgKi8NCj4gPiA+ICsgICAgICAgaWYgKHZzX2NydGNfc3RhdGUtPm91dHB1dF9m
bXQgPT0gTUVESUFfQlVTX0ZNVF9GSVhFRCkNCj4gPiA+ICsgICAgICAgICAgICAgICB2c19jcnRj
X3N0YXRlLT5vdXRwdXRfZm10ID0NCj4gPiA+ICsgTUVESUFfQlVTX0ZNVF9SR0I4ODhfMVgyNDsN
Cj4gPiA+ICsNCj4gPiA+ICsgICAgICAgcmV0dXJuIHJldDsNCj4gPiA+ICt9DQo+ID4gPiArDQo+
ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3MgZW5jb2Rl
cl9oZWxwZXJfZnVuY3MgPSB7DQo+ID4gPiArICAgICAgIC5hdG9taWNfY2hlY2sgPSBlbmNvZGVy
X2F0b21pY19jaGVjaywNCj4gPiA+ICsgICAgICAgLmF0b21pY19lbmFibGUgPSBlbmNvZGVyX2F0
b21pY19lbmFibGUsIH07DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIGludCBlbmNvZGVyX2JpbmQo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsDQo+ID4gPiArdm9pZCAq
ZGF0YSkgew0KPiA+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldiA9IGRhdGE7
DQo+ID4gPiArICAgICAgIHN0cnVjdCBzaW1wbGVfZW5jb2RlciAqc2ltcGxlID0gZGV2X2dldF9k
cnZkYXRhKGRldik7DQo+ID4gPiArICAgICAgIHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcjsN
Cj4gPiA+ICsgICAgICAgc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZTsNCj4gPiA+ICsgICAgICAg
aW50IHJldDsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgZW5jb2RlciA9ICZzaW1wbGUtPmVuY29k
ZXI7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHJldCA9IGRybW1fZW5jb2Rlcl9pbml0KGRybV9k
ZXYsIGVuY29kZXIsIE5VTEwsDQo+IHNpbXBsZS0+cHJpdi0+ZW5jb2Rlcl90eXBlLCBOVUxMKTsN
Cj4gPiA+ICsgICAgICAgaWYgKHJldCkNCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0
Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKGVuY29kZXIs
ICZlbmNvZGVyX2hlbHBlcl9mdW5jcyk7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIGVuY29kZXIt
PnBvc3NpYmxlX2NydGNzID0NCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGRybV9vZl9m
aW5kX3Bvc3NpYmxlX2NydGNzKGRybV9kZXYsDQo+ID4gPiArIGRldi0+b2Zfbm9kZSk7DQo+ID4g
PiArDQo+ID4gPiArICAgICAgIC8qIG91dHB1dCBwb3J0IGlzIHBvcnQxKi8NCj4gPiA+ICsgICAg
ICAgYnJpZGdlID0gZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZShkZXYsIGRldi0+b2Zfbm9kZSwgMSwg
MCk7DQo+ID4gPiArICAgICAgIGlmIChJU19FUlIoYnJpZGdlKSkNCj4gPiA+ICsgICAgICAgICAg
ICAgICByZXR1cm4gMDsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgcmV0dXJuIGRybV9icmlkZ2Vf
YXR0YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVMTCwgMCk7IH0NCj4gPiA+ICsNCj4gPiA+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IGNvbXBvbmVudF9vcHMgZW5jb2Rlcl9jb21wb25lbnRfb3BzID0gew0K
PiA+ID4gKyAgICAgICAuYmluZCA9IGVuY29kZXJfYmluZCwNCj4gPiA+ICt9Ow0KPiA+ID4gKw0K
PiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNpbXBsZV9lbmNvZGVyX2R0
X21hdGNoW10gPSB7DQo+ID4gPiArICAgICAgIHsgLmNvbXBhdGlibGUgPSAic3RhcmZpdmUsZHNp
LWVuY29kZXIiLCAuZGF0YSA9ICZkc2lfcHJpdn0sDQo+ID4gPiArICAgICAgIHt9LA0KPiA+ID4g
K307DQo+ID4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc2ltcGxlX2VuY29kZXJfZHRfbWF0
Y2gpOw0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBpbnQgZW5jb2Rlcl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KSB7DQo+ID4gPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7DQo+ID4gPiArICAgICAgIHN0cnVjdCBzaW1wbGVfZW5jb2RlciAqc2ltcGxl
Ow0KPiA+ID4gKyAgICAgICBpbnQgcmV0Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBzaW1wbGUg
PSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnNpbXBsZSksIEdGUF9LRVJORUwpOw0KPiA+ID4g
KyAgICAgICBpZiAoIXNpbXBsZSkNCj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01F
TTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgc2ltcGxlLT5wcml2ID0gb2ZfZGV2aWNlX2dldF9t
YXRjaF9kYXRhKGRldik7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIHNpbXBsZS0+ZGV2ID0gZGV2
Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBkZXZfc2V0X2RydmRhdGEoZGV2LCBzaW1wbGUpOw0K
PiA+ID4gKw0KPiA+ID4gKyAgICAgICByZXQgPSBlbmNvZGVyX3BhcnNlX2R0KGRldik7DQo+ID4g
PiArICAgICAgIGlmIChyZXQpDQo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4g
PiA+ICsNCj4gPiA+ICsgICAgICAgcmV0dXJuIGNvbXBvbmVudF9hZGQoZGV2LCAmZW5jb2Rlcl9j
b21wb25lbnRfb3BzKTsgfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBpbnQgZW5jb2Rlcl9yZW1v
dmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgew0KPiA+ID4gKyAgICAgICBzdHJ1Y3Qg
ZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBjb21wb25l
bnRfZGVsKGRldiwgJmVuY29kZXJfY29tcG9uZW50X29wcyk7DQo+ID4gPiArICAgICAgIGRldl9z
ZXRfZHJ2ZGF0YShkZXYsIE5VTEwpOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICByZXR1cm4gMDsN
Cj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzaW1wbGVf
ZW5jb2Rlcl9kcml2ZXIgPSB7DQo+ID4gPiArICAgICAgIC5wcm9iZSA9IGVuY29kZXJfcHJvYmUs
DQo+ID4gPiArICAgICAgIC5yZW1vdmUgPSBlbmNvZGVyX3JlbW92ZSwNCj4gPiA+ICsgICAgICAg
LmRyaXZlciA9IHsNCj4gPiA+ICsgICAgICAgICAgICAgICAubmFtZSA9ICJ2cy1zaW1wbGUtZW5j
b2RlciIsDQo+ID4gPiArICAgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0NCj4gb2ZfbWF0
Y2hfcHRyKHNpbXBsZV9lbmNvZGVyX2R0X21hdGNoKSwNCj4gPiA+ICsgICAgICAgfSwNCj4gPiA+
ICt9Ow0KPiA+ID4gKw0KPiA+ID4gK01PRFVMRV9ERVNDUklQVElPTigiU2ltcGxlIEVuY29kZXIg
RHJpdmVyIik7DQo+IE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsNCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfc2ltcGxlX2VuYy5oDQo+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19zaW1wbGVfZW5jLmgNCj4gPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0DQo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmZiMzNjYTllMThkNg0KPiA+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3Zz
X3NpbXBsZV9lbmMuaA0KPiA+ID4gQEAgLTAsMCArMSwyMyBAQA0KPiA+ID4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovDQo+ID4gPiArLyoNCj4gPiA+ICsgKiBDb3B5cmln
aHQgKEMpIDIwMjIgVmVyaVNpbGljb24gSG9sZGluZ3MgQ28uLCBMdGQuDQo+ID4gPiArICovDQo+
ID4gPiArDQo+ID4gPiArI2lmbmRlZiBfX1ZTX1NJTVBMRV9FTkNfSF8NCj4gPiA+ICsjZGVmaW5l
IF9fVlNfU0lNUExFX0VOQ19IXw0KPiA+ID4gKw0KPiA+ID4gK3N0cnVjdCBzaW1wbGVfZW5jb2Rl
cl9wcml2IHsNCj4gPiA+ICsgICAgICAgdW5zaWduZWQgY2hhciBlbmNvZGVyX3R5cGU7DQo+ID4g
PiArfTsNCj4gPiA+ICsNCj4gPiA+ICtzdHJ1Y3Qgc2ltcGxlX2VuY29kZXIgew0KPiA+ID4gKyAg
ICAgICBzdHJ1Y3QgZHJtX2VuY29kZXIgZW5jb2RlcjsNCj4gPiA+ICsgICAgICAgc3RydWN0IGRl
dmljZSAqZGV2Ow0KPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgc2ltcGxlX2VuY29kZXJfcHJp
diAqcHJpdjsNCj4gPiA+ICsgICAgICAgc3RydWN0IHJlZ21hcCAqZHNzX3JlZ21hcDsNCj4gPiA+
ICsgICAgICAgdW5zaWduZWQgaW50IG9mZnNldDsNCj4gPiA+ICsgICAgICAgdW5zaWduZWQgaW50
IG1hc2s7DQo+ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+ICtleHRlcm4gc3RydWN0IHBsYXRmb3Jt
X2RyaXZlciBzaW1wbGVfZW5jb2Rlcl9kcml2ZXI7ICNlbmRpZiAvKg0KPiA+ID4gK19fVlNfU0lN
UExFX0VOQ19IXyAqLw0KPiA+ID4gLS0NCj4gPiA+IDIuMzQuMQ0KPiA+ID4NCj4gPg0KPiA+DQo+
ID4gLS0NCj4gPiBXaXRoIGJlc3Qgd2lzaGVzDQo+ID4gRG1pdHJ5DQo+IA0KPiANCj4gDQo+IC0t
DQo+IFdpdGggYmVzdCB3aXNoZXMNCj4gRG1pdHJ5DQo=

