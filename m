Return-Path: <devicetree+bounces-67208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C70D8C708D
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 05:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95FA9B22810
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 03:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893CD1862;
	Thu, 16 May 2024 03:12:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2129.outbound.protection.partner.outlook.cn [139.219.17.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB5A4696;
	Thu, 16 May 2024 03:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.129
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715829176; cv=fail; b=PXtQcritvUjHWaIQktRRHPbPZ8wnwVoB6xo0K04L3r3RkdY7mui5jUlBQDTe/Q1RWp9Kn9SvEiJSfJceLBOhA99fCj3lqWXC+WINpjlfY1eUD44DhPe+XROpp2NxbUbB430iAAErjDAtX/RBcDmjrsXXr+mgCOxLC7ius8dLpN0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715829176; c=relaxed/simple;
	bh=vhq0WpQ1VaXoGs3BD/0oTFkKuzKq6ASAjX+0bd10WBQ=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=U9jnJwKlYeDzMO5tSIWFtNhETtRjk6ner/ie9dZCF7vXrgcGgDfoIwsLUhANa41RijnNZSkeug5iQefUftlAKN3QzBHmt2N7CPUjQ3XobCfMdmKJYYmO2A6/fQLtIWPj3yZvuqaGg6ehnPlZTeKZ8NpK+YQW/JIkAmFolsg49ig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0Gn3tXzezAvst4heJWqfBTCI5i9XU5ClvXpxt8r9ZTYSGqe7bs6j2rEcic3mWqjy1NBGyvLi5yxXv13/lhBe75iuZmP/QLlEu1Ud8c2VHfQ7fA61uGJd5z4VYZX6b1qufs7eat8bq4EyYfaWVt7JO5Wzami+PWCA6bwRXMgWQDaNIG6JqdqfulUUz4KnOh5546/BcI841FiPWPL5CH9L7XTw/iz6ytbR88t71v14lbA6NsnqdQilHHt+/9BsYzUys5WtsuU0t03T+Hj+ihGEXtVm6MKhf1QUl6zS0hHOW5M/pPQMHUrYoYexJF2JLnu2JQgED0Uy4HuASgvKMPMqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhq0WpQ1VaXoGs3BD/0oTFkKuzKq6ASAjX+0bd10WBQ=;
 b=UYuIFoHtMZ4Fj/tfr8qScwPaVpI/lG8h3zDN1AqFDqMmF68FiFXBdfBv+L++bsQNVVZ3yFvMgzy0IXiWqTBhH7JxmPyAG9dmz2dKAmndFxgZdfSaRhnez/pp7+lO/xCynNyX9YoVm0jQyK1jpkqZXBAzn6ici0pKMXX5xP2ORGtxeFyZhPaYXthZ2yhioEbORjr5IFi7fNo7tenosiStilfKB4IQSxabdKUNceLLGpHuQ/3wzknbMf1tJHFKJCE6UUSgylrIsm0CeNDkuDoB6nbJZvpB0xcnRLx5rJeMFt8gMKlj/1xdYy5PA7ugqnMPMApQlI3PIoQYuV7ru0/85w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) by NTZPR01MB1113.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:a::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Thu, 16 May
 2024 02:57:45 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::80b1:7114:e636:a4e]) by NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::80b1:7114:e636:a4e%6]) with mapi id 15.20.7472.042; Thu, 16 May 2024
 02:57:44 +0000
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
Thread-Index: AQHaJq4PXJGeBe098kGxFlIGYfijMbCaJm8AgAABPICA/siQUIAAeE8AgAC4iKA=
Date: Thu, 16 May 2024 02:57:44 +0000
Message-ID:
 <NTZPR01MB1050BDEAB3E0C1AF28F04FEDEEED2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-7-keith.zhao@starfivetech.com>
 <CAA8EJpqbQKjTeEdOpwNy7P+dJK-nnZzZYefyzoG+JWKVgsS=rw@mail.gmail.com>
 <CAA8EJpqrYpL8N4_nXW4BbJRuUR=zqmP88Ze6_xkoZRStso6ugA@mail.gmail.com>
 <NTZPR01MB1050B57AEAD7FC6EE1911D5FEEEC2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
 <vimeq7nqco4iu5kbwetkoyiwe4kosb4wf3ch3eqcx4lzexp4hc@cul2sle6glvy>
In-Reply-To: <vimeq7nqco4iu5kbwetkoyiwe4kosb4wf3ch3eqcx4lzexp4hc@cul2sle6glvy>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB1050:EE_|NTZPR01MB1113:EE_
x-ms-office365-filtering-correlation-id: fce26899-cbed-4ced-c2e9-08dc7553f5f2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 umStbSxCI0gy9ihSgc/yfIkFJuJBKpQy9XqoMH4lS5IKxqGK69bAnZLqgtLc/ZxaVNZCFZX1FXKkLRdwSegJc+EzOm6C9OSlQ4naukuGJuN66m/nBkqQgSENcMN55sOE2vrwfc/P+SrcDjvrBUb/HazhUZer/3CQT1NiARk6w7Y5FPh7Ai5h6Z62OrjyqDq9aZDrM4PMw5ALEY3aYWKXJYUnw+VAtqPTOil1+s/5hptMfYyl4LhwhMxPqV41P2WhYQzVHuONVMwvpzYgzqhd3IeNa56f0rB3/zMxTwYr5hj3mRmm4Hbog8j3GOqmavP2PZr5piVJukGcBiq3aH7l5Dcf47MrAPgV8P/RsRtdC1QZQ328q+asPyzJw3pO/Mtc90IPueihw5/RWatInrJqZx6P4HbQDRJSnv2++MvJ3H+2AtSXihc/Ze4Uo8EP0KVzttT1L212rYl61V5tDKB5ktBJ0h7AZt0ARMFRlI/aQ889d+c1OVSBSpR8Ox4PAcFIwBn386kSPLXCqk1hrKC2ip490XFFGVpNd15Xyfmy5Occ/di+o+5FuqelHUpHDedXhuspVU8XVb1Nt9N95P0hBQ7JEs66B7vX/chVLlO3x74Xa22OCxG8D5Xa8BRKyNV7
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(7416005)(41320700004)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?eEJ5YXhDS0F6WkNxZ2EyamdiaEhwTVBzMlZRV3JlWUkxcTRKczZUbXFvTVZQ?=
 =?utf-8?B?c3BEM210Q0xGaDBDdnNwdzI2NGJxS3F1OURpQ3pjb0R0cUIycnNvTy9SRjdV?=
 =?utf-8?B?VkpJQWFySVdUbGwvVjF3Qmk2blYwQm92VkFnNWR3aUFzT0VKaXZnTW5SZ09z?=
 =?utf-8?B?LzY3MjMxWFRYQTlabHlURTU0MTh5bmZpQVNaVjMxNDUvcGhLRU1PTnVtYmRt?=
 =?utf-8?B?b2tpa21YelFvMmprcS82NkVaQ0V1K2I0eXJxaC9VMmQ2bEVWejhWcUJvdUNL?=
 =?utf-8?B?M3Q5d3B2d3FMS0tVSWx2eUFaTjNON1dlT3B3ZjgzVk54WExxZlIyTkNFSEll?=
 =?utf-8?B?REdkU1hxZVhjdWlCb0VmRWMrRm9qQ2JlUSt4NUM2L1RnY3dhdXlxQXFvZjBF?=
 =?utf-8?B?aFhEUVJERDJ1SjJPVElWaTdKU1pzQk5aZHFmSktHMTVTNGsrNWFlcnNXc3kw?=
 =?utf-8?B?akU4clJ0WGlYNWZxV3k1WVkyQ2U5NmdvSHNuRjJZSFVSQytremJQMVUxZG9i?=
 =?utf-8?B?V1hQMS9EVUJRRW92ZEwzbWFIT1lUQ05XSWhZQ2ZwR3prZ3F4UUdTY0x6ckQ1?=
 =?utf-8?B?NlFjTURWb0lVWG50OHdlUEk2anFtSUwrc3loTklEaEdacm1QNUtrVXB6dWdk?=
 =?utf-8?B?bkltV0hGRGdTQXNhSk5iZVFuczlRMGlaRVBVMmt2THNWbVV5Q0VrbXVlbjQ3?=
 =?utf-8?B?c2ZMeFFEWnRhTDZpVTR4SlQ3Mnh1V0xWZ3JkZDBsazZsSzBkMHZWRHNvL2ow?=
 =?utf-8?B?TldNMXdpc09ZWHBZQnU2a3k5TW9zVmpTekJoREJzMjlSS2VKdHZCYTFnY1c5?=
 =?utf-8?B?M0E2TU5VdTkyNjBsUGY1a1ErR2tycU90MzJsQmFweHlSZHFhN05JQWtKS2Fh?=
 =?utf-8?B?cHNoajhTdDQyL0pCU09Vb3ZobmhaWVlaL3RkMzBrZHhXNHN5UHYyTnJYWjBT?=
 =?utf-8?B?UGtLZ2hRNjNVMGFlQ3ZIQVhCNndiZmdyMWpBOS95Ym9nY0s4U1QzWGpqYmF1?=
 =?utf-8?B?RjBOTk5KbGhqZXFSbzFraW9UTExlM1lBK0txNFVnN2xDSW5oaW8yeGtsUWNz?=
 =?utf-8?B?TmZyWDFkZjdOMW01RzdlM0RoaVhiZXVHUzBINTUreEkvaWpocEl2b0F5R3Jp?=
 =?utf-8?B?VjFuWjZhdm5FL1dYM3BZVUMzR3AzVGZuNnp5ODcrNjBpeVlJSmRkSUZXblB2?=
 =?utf-8?B?OGxib1Zvbm1vdjN5aEVrVGFtdEIrSVdsVHdXYUE5d3lZdmpTOXMxOUdkU29i?=
 =?utf-8?B?REkxWmJEcEJFSkI4ZU9FYm9aNkVlclhLMkxXZ3ZyQTZSSEFnR1Fac0dpNlRr?=
 =?utf-8?B?MHpJdHk3emRXZmE1cWVjZU1TZGN1VDJpdXlVU0FaQURqcUNYWWd1a2Q3ZlZV?=
 =?utf-8?B?TzNaSU55YWJ3RUhJV3pVRmVMcUltekY5Q2YwSTlvdnp4eWRiekR4Z2tkbmtm?=
 =?utf-8?B?MUo2TUNiSE1TNjV4SjBwNng5Ky85ZDJBQThnWDNaZlIvZElidVY1MldMOVVS?=
 =?utf-8?B?WGlPUTQ0TVRZZXM1SFNwRWEzV1VCNVVJVnFNK01admt4NmxLSUpjQlFPSGFr?=
 =?utf-8?B?bVhtSWsyZnlDa1o0bGRwRjhINmh1VlVmUnd2LzJINjRRSmkwdExYODlLaWVk?=
 =?utf-8?B?R1gzU2YvTy9yYUF0MWlsTEJDT3gzRk01K0tyWk1jbyt3WWhtcXFNR25ZbmFt?=
 =?utf-8?B?ZmcxM2RIYlBJYmZVV2FSRnVabVhCaTVENndvVmYvZHVqUVp6eVRuRVY3V1VE?=
 =?utf-8?B?SnppSlZVVmoyQ3VwOGNjOFhQeDhKNThUd044bEdqYzVPeFdjNERkWlBvVVVO?=
 =?utf-8?B?Qmp0M0VDNERmYTZabnBZMUp3UHRaUm9LY2NhTDRzSDN4MUQwemZUZkMvNEdm?=
 =?utf-8?B?RU5ENEk2Z011Nm8xWHpWNisxb3ZYUTNzMEl5T2kvWDF4THZ2QmVjSUd3RnR6?=
 =?utf-8?B?RkdYQXJmclN0bHJmdDlDaUQ4YkRiL2VxZm55bmhJSHV4d2g0aGt1SndiV0du?=
 =?utf-8?B?R1BqVkp6bUI2Tkk4clVpTCtoeUVHREk1bWFrd2dxRitJUDFnRVpyb3FZVGJi?=
 =?utf-8?B?UlFSQVlzUm80dElrdEJBOTFCY21aN3BNVkdhcFN4WGhuam96bFVmZkpneXlG?=
 =?utf-8?B?dUFmR3lreEJaajhUWEc4VUtnNTNoYk9wTExDRVpqeU81MkcxUjRac3dFcGx2?=
 =?utf-8?B?UFE9PQ==?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: fce26899-cbed-4ced-c2e9-08dc7553f5f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2024 02:57:44.8211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j+jAfwyFzAhKXN/oiyK0Ka8kvHUjw6vwjBr4dTsi8g7rcSUdBOfcCCAwBOFSOODoMXcF1GJPyCc3M3zXmfiZRKejmRjDY3X0J90gKPJ9dR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1113

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRG1pdHJ5IEJhcnlzaGtv
diA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPg0KPiBTZW50OiAyMDI05bm0NeaciDE15pel
IDIzOjE3DQo+IFRvOiBLZWl0aCBaaGFvIDxrZWl0aC56aGFvQHN0YXJmaXZldGVjaC5jb20+DQo+
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
Nl0gZHJtL3ZzOiBzaW1wbGUgZW5jb2Rlcg0KPiANCj4gT24gV2VkLCBNYXkgMTUsIDIwMjQgYXQg
MTA6MDc6MjdBTSArMDAwMCwgS2VpdGggWmhhbyB3cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1p
dHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPg0KPiA+ID4gU2VudDogMjAyM+W5tDEy5pyINeaXpSAy
MToxOQ0KPiA+ID4gVG86IEtlaXRoIFpoYW8gPGtlaXRoLnpoYW9Ac3RhcmZpdmV0ZWNoLmNvbT4N
Cj4gPiA+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsNCj4gPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+ID4gPiBhb3VAZWVjcy5iZXJrZWxleS5lZHU7
IHN1aWppbmdmZW5nQGxvb25nc29uLmNuOyB0emltbWVybWFubkBzdXNlLmRlOw0KPiA+ID4gcGF1
bC53YWxtc2xleUBzaWZpdmUuY29tOyBtcmlwYXJkQGtlcm5lbC5vcmc7IFhpbmd5dSBXdQ0KPiA+
ID4gPHhpbmd5dS53dUBzdGFyZml2ZXRlY2guY29tPjsgSmFjayBaaHUgPGphY2suemh1QHN0YXJm
aXZldGVjaC5jb20+Ow0KPiA+ID4gcGFsbWVyQGRhYmJlbHQuY29tOyBrcnp5c3p0b2Yua296bG93
c2tpK2R0QGxpbmFyby5vcmc7IFdpbGxpYW0gUWl1DQo+ID4gPiA8d2lsbGlhbS5xaXVAc3RhcmZp
dmV0ZWNoLmNvbT47IFNoZW5neWFuZyBDaGVuDQo+ID4gPiA8c2hlbmd5YW5nLmNoZW5Ac3RhcmZp
dmV0ZWNoLmNvbT47IENoYW5naHVhbmcgTGlhbmcNCj4gPiA+IDxjaGFuZ2h1YW5nLmxpYW5nQHN0
YXJmaXZldGVjaC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogW3YzIDYvNl0gZHJtL3ZzOiBzaW1w
bGUgZW5jb2Rlcg0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgNSBEZWMgMjAyMyBhdCAxNToxNCwgRG1p
dHJ5IEJhcnlzaGtvdg0KPiA+ID4gPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4NCj4gPiA+
IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiBPbiBNb24sIDQgRGVjIDIwMjMgYXQgMTQ6MzMsIEtl
aXRoIFpoYW8NCj4gPiA+ID4gPGtlaXRoLnpoYW9Ac3RhcmZpdmV0ZWNoLmNvbT4NCj4gPiA+IHdy
b3RlOg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gYWRkIHNpbXBsZSBlbmNvZGVyIGZvciBkc2kgYnJp
ZGdlDQo+ID4gPiA+DQo+ID4gPiA+IFRoaXMgZG9lc24ndCBsb29rIGxpa2UgYSBwcm9wZXIgY29t
bWl0IG1lc3NhZ2UuDQo+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBLZWl0aCBaaGFvIDxrZWl0aC56aGFvQHN0YXJmaXZldGVjaC5jb20+DQo+ID4gPiA+ID4gLS0t
DQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmlsZSAgICAgICAg
fCAgIDQgKy0NCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2Rydi5j
ICAgICAgICB8ICAgMiArDQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92
c19zaW1wbGVfZW5jLmMgfCAxOTUNCj4gPiA+ID4gPiArKysrKysrKysrKysrKysrKysrKw0KPiA+
ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92
c19zaW1wbGVfZW5jLmgNCj4gPiA+ID4gPiArKysrKysrKysrKysrKysrKysrKyB8DQo+ID4gPiA+
ID4gMjMgKysrDQo+ID4gPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMjIzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkgIGNyZWF0ZSBtb2RlDQo+ID4gPiA+ID4gMTAwNjQ0IGRyaXZlcnMvZ3B1
L2RybS92ZXJpc2lsaWNvbi92c19zaW1wbGVfZW5jLmMNCj4gPiA+ID4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19zaW1wbGVfZW5jLmgNCj4gPiA+
ID4gPg0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24v
TWFrZWZpbGUNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmls
ZQ0KPiA+ID4gPiA+IGluZGV4IDcxZmFkYWZjZWUxMy4uY2Q1ZDBhOTBiY2ZlIDEwMDY0NA0KPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmlsZQ0KPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi9NYWtlZmlsZQ0KPiA+ID4gPiA+
IEBAIC01LDYgKzUsOCBAQCB2c19kcm0tb2JqcyA6PSB2c19kY19ody5vIFwNCj4gPiA+ID4gPiAg
ICAgICAgICAgICAgICAgdnNfY3J0Yy5vIFwNCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgdnNf
ZHJ2Lm8gXA0KPiA+ID4gPiA+ICAgICAgICAgICAgICAgICB2c19tb2Rlc2V0Lm8gXA0KPiA+ID4g
PiA+IC0gICAgICAgICAgICAgICB2c19wbGFuZS5vDQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
IHZzX3BsYW5lLm8gXA0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICB2c19zaW1wbGVfZW5jLm8N
Cj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gIHZzX2RybS0kKENPTkZJR19EUk1fVkVSSVNJTElDT05f
U1RBUkZJVkVfSERNSSkgKz0NCj4gPiA+IHN0YXJmaXZlX2hkbWkubw0KPiA+ID4gPiA+ICBvYmot
JChDT05GSUdfRFJNX1ZFUklTSUxJQ09OKSArPSB2c19kcm0ubyBkaWZmIC0tZ2l0DQo+ID4gPiA+
ID4gYS9kcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfZHJ2LmMNCj4gPiA+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19kcnYuYw0KPiA+ID4gPiA+IGluZGV4IGQ3ZTUx
OTlmZTI5My4uOTQ2ZjEzN2FiMTI0IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS92ZXJpc2lsaWNvbi92c19kcnYuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS92ZXJpc2lsaWNvbi92c19kcnYuYw0KPiA+ID4gPiA+IEBAIC0yMyw2ICsyMyw3IEBADQo+ID4g
PiA+ID4gICNpbmNsdWRlICJ2c19kcnYuaCINCj4gPiA+ID4gPiAgI2luY2x1ZGUgInZzX21vZGVz
ZXQuaCINCj4gPiA+ID4gPiAgI2luY2x1ZGUgInZzX2RjLmgiDQo+ID4gPiA+ID4gKyNpbmNsdWRl
ICJ2c19zaW1wbGVfZW5jLmgiDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgI2RlZmluZSBEUlZfTkFN
RSAgICAgICAidmVyaXNpbGljb24iDQo+ID4gPiA+ID4gICNkZWZpbmUgRFJWX0RFU0MgICAgICAg
IlZlcmlzaWxpY29uIERSTSBkcml2ZXIiDQo+ID4gPiA+ID4gQEAgLTIxNyw2ICsyMTgsNyBAQCBz
dGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlcg0KPiA+ID4gPiA+ICpkcm1fc3ViX2RyaXZlcnNb
XSA9IHsgICNpZmRlZg0KPiBDT05GSUdfRFJNX1ZFUklTSUxJQ09OX1NUQVJGSVZFX0hETUkNCj4g
PiA+ID4gPiAgICAgICAgICZzdGFyZml2ZV9oZG1pX2RyaXZlciwNCj4gPiA+ID4gPiAgI2VuZGlm
DQo+ID4gPiA+ID4gKyAgICAgICAmc2ltcGxlX2VuY29kZXJfZHJpdmVyLA0KPiA+ID4gPiA+ICB9
Ow0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gIHN0YXRpYyBzdHJ1Y3QgY29tcG9uZW50X21hdGNoICp2
c19kcm1fbWF0Y2hfYWRkKHN0cnVjdCBkZXZpY2UNCj4gPiA+ID4gPiAqZGV2KSBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX3NpbXBsZV9lbmMuYw0KPiA+ID4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX3NpbXBsZV9lbmMuYw0KPiA+ID4gPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jNWE4
ZDgyYmM0NjkNCj4gPiA+ID4gPiAtLS0gL2Rldi9udWxsDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX3NpbXBsZV9lbmMuYw0KPiA+ID4gPiA+IEBAIC0wLDAg
KzEsMTk1IEBADQo+ID4gPiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
DQo+ID4gPiA+ID4gKy8qDQo+ID4gPiA+ID4gKyAqIENvcHlyaWdodCAoQykgMjAyMCBWZXJpU2ls
aWNvbiBIb2xkaW5ncyBDby4sIEx0ZC4NCj4gPiA+ID4gPiArICovDQo+ID4gPiA+ID4gKyNpbmNs
dWRlIDxsaW51eC9jb21wb25lbnQuaD4NCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mX2Rl
dmljZS5oPg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+DQo+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+ICNpbmNsdWRl
IDxkcm0vZHJtX2JyaWRnZS5oPg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9jcnRjX2hl
bHBlci5oPiAjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGlu
dXgvcmVnbWFwLmg+ICNpbmNsdWRlIDxsaW51eC9tZWRpYS1idXMtZm9ybWF0Lmg+DQo+ID4gPiA+
ID4gKyNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+
ICsjaW5jbHVkZSAidnNfY3J0Yy5oIg0KPiA+ID4gPiA+ICsjaW5jbHVkZSAidnNfc2ltcGxlX2Vu
Yy5oIg0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzaW1wbGVf
ZW5jb2Rlcl9wcml2IGRzaV9wcml2ID0gew0KPiA+ID4gPg0KPiA+ID4gPiBQbGVhc2UgdXNlIHBy
b3BlciBwcmVmaXggZm9yIGFsbCB0aGUgc3RydWN0IGFuZCBmdW5jdGlvbiBuYW1lcy4NCj4gPiA+
ID4gdnNfc2ltcGxlX2VuY29kZXIgc291bmRzIGJldHRlci4gT3IgdnNfZHNpX2VuY29kZXIuDQo+
ID4gPiA+DQo+ID4gPiA+ID4gKyAgICAgICAuZW5jb2Rlcl90eXBlID0gRFJNX01PREVfRU5DT0RF
Ul9EU0kgfTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IHNp
bXBsZV9lbmNvZGVyICp0b19zaW1wbGVfZW5jb2RlcihzdHJ1Y3QNCj4gPiA+ID4gPiArZHJtX2Vu
Y29kZXIgKmVuYykgew0KPiA+ID4gPiA+ICsgICAgICAgcmV0dXJuIGNvbnRhaW5lcl9vZihlbmMs
IHN0cnVjdCBzaW1wbGVfZW5jb2RlciwNCj4gPiA+ID4gPiArZW5jb2Rlcik7IH0NCj4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gK3N0YXRpYyBpbnQgZW5jb2Rlcl9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNl
ICpkZXYpIHsNCj4gPiA+ID4gPiArICAgICAgIHN0cnVjdCBzaW1wbGVfZW5jb2RlciAqc2ltcGxl
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQo+ID4gPiA+ID4gKyAgICAgICB1bnNpZ25lZCBpbnQg
YXJnc1syXTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKyAgICAgICBzaW1wbGUtPmRzc19yZWdt
YXAgPQ0KPiA+ID4gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9hcmdzKGRldi0+b2Zf
bm9kZSwNCj4gPiA+ID4gPiArDQo+ID4gPiAic3RhcmZpdmUsc3lzY29uIiwNCj4gPiA+ID4gPiAr
DQo+ID4gPiAyLA0KPiA+ID4gPiA+ICsgYXJncyk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsg
ICAgICAgaWYgKElTX0VSUihzaW1wbGUtPmRzc19yZWdtYXApKSB7DQo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwNCj4gPiA+IFBUUl9FUlIoc2ltcGxl
LT5kc3NfcmVnbWFwKSwNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImdldHRpbmcgdGhlIHJlZ21hcA0KPiA+ID4gZmFpbGVkXG4iKTsNCj4gPiA+ID4gPiAr
ICAgICAgIH0NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKyAgICAgICBzaW1wbGUtPm9mZnNldCA9
IGFyZ3NbMF07DQo+ID4gPiA+ID4gKyAgICAgICBzaW1wbGUtPm1hc2sgPSBhcmdzWzFdOw0KPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiArICAgICAgIHJldHVybiAwOw0KPiA+ID4gPiA+ICt9DQo+ID4g
PiA+ID4gKw0KPiA+ID4gPiA+ICt2b2lkIGVuY29kZXJfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJt
X2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKSB7DQo+ID4gPiA+ID4gKyAgICAgICBzdHJ1
Y3Qgc2ltcGxlX2VuY29kZXIgKnNpbXBsZSA9DQo+ID4gPiA+ID4gK3RvX3NpbXBsZV9lbmNvZGVy
KGVuY29kZXIpOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArICAgICAgIHJlZ21hcF91cGRhdGVf
Yml0cyhzaW1wbGUtPmRzc19yZWdtYXAsIHNpbXBsZS0+b2Zmc2V0LA0KPiA+ID4gc2ltcGxlLT5t
YXNrLA0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHNpbXBsZS0+bWFzayk7
IH0NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK2ludCBlbmNvZGVyX2F0b21pY19jaGVjayhzdHJ1
Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
DQo+IHsNCj4gPiA+ID4gPiArICAgICAgIHN0cnVjdCB2c19jcnRjX3N0YXRlICp2c19jcnRjX3N0
YXRlID0NCj4gPiA+IHRvX3ZzX2NydGNfc3RhdGUoY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gKyAg
ICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gY29ubl9zdGF0ZS0+Y29ubmVj
dG9yOw0KPiA+ID4gPiA+ICsgICAgICAgaW50IHJldCA9IDA7DQo+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ICsgICAgICAgc3RydWN0IGRybV9icmlkZ2UgKmZpcnN0X2JyaWRnZSA9DQo+ID4gPiBkcm1f
YnJpZGdlX2NoYWluX2dldF9maXJzdF9icmlkZ2UoZW5jb2Rlcik7DQo+ID4gPiA+ID4gKyAgICAg
ICBzdHJ1Y3QgZHJtX2JyaWRnZV9zdGF0ZSAqYnJpZGdlX3N0YXRlID0NCj4gPiA+ID4gPiArIEVS
Ul9QVFIoLUVJTlZBTCk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsgICAgICAgdnNfY3J0Y19z
dGF0ZS0+ZW5jb2Rlcl90eXBlID0gZW5jb2Rlci0+ZW5jb2Rlcl90eXBlOw0KPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiArICAgICAgIGlmIChmaXJzdF9icmlkZ2UgJiYNCj4gZmlyc3RfYnJpZGdlLT5m
dW5jcy0+YXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSkNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAg
YnJpZGdlX3N0YXRlID0NCj4gPiA+ID4gPiArIGRybV9hdG9taWNfZ2V0X2JyaWRnZV9zdGF0ZShj
cnRjX3N0YXRlLT5zdGF0ZSwgZmlyc3RfYnJpZGdlKTsNCj4gPiA+ID4NCj4gPiA+ID4gUGxlYXNl
IGRvbid0IHBva2UgaW50byBvdGhlcnMnIHBsYXlncm91bmQuIFRoaXMgc2hvdWxkIGdvIGludG8N
Cj4gPiA+ID4geW91ciBEU0kgYnJpZGdlJ3MgYXRvbWljX2NoZWNrKCkgaW5zdGVhZC4NCj4gPiA+
DQo+ID4gPiBIbW0uIEFuZCB5b3UgY2FuIG5vdCB1c2UgdnNfY3J0Y19zdGF0ZSBmcm9tIHlvdXIg
YnJpZGdlLiBBY3R1YWxseQ0KPiA+ID4gdGhpcyBkZXNpZ24gbWFrZXMgbWUgd29uZGVyLCBob3cg
ZG9lcyB5b3VyIGhhcmR3YXJlIHdvcms/IElzIGl0DQo+ID4gPiBwb3NzaWJsZSB0byBzZW5kIHRo
ZSBEU0kgY29tbWFuZHMgdG8gdGhlIHBhbmVsPw0KPiA+ID4NCj4gPiBIaSBEbWl0cnk6DQo+ID4g
MeOAgSBUaGlzIGZ1biBpcyB1c2VkIHRvIGNoZWNrIHRoZSBtZWRpYSBidXMgZm9ybWF0IHdoZXRo
ZXIgaW4gc3VwcG9ydCBsaXN0ICwgaWYNCj4gbm90ICwgdGhpcyBtb2RlIHdpbGwgYmUgaW52YWxp
ZCwNCj4gPiAgICAgSSBqdXN0IHVzZWQgdGhlIGJyaWRnZSBhcGkgdG8gZ2V0IHRoZSBtZWRpYSBi
dXMgZm9ybWF0LiAoc3luYyB3aXRoDQo+ID4gdGhlIGlucHV0IGJyaWRnZShjb25uZWN0b3IpIGJ1
cyBmb3JtYXQpDQo+ID4gMuOAgSB0aGUgYnJpZGdlIGRvZXNuJ3QgY2FyZSB0aGUgdnNfY3J0Y19z
dGF0ZSwgIGp1c3QgZG8gdGhlaXIgb3duDQo+IGRybV9icmlkZ2VfZnVuY3MgLT5hdG9taWNfY2hl
Y2ssDQo+ID4gICAgIG9yIGl0IHdpbGwgYmUgaW1wb3NzaWJsZSB0byBtYWtlIHRoaXMgZHNpIGVu
Y29kZXIgdG8gZml0IGRzaSBicmlkZ2UgZHJpdmVyLg0KPiA+IDPjgIEgaGFyZHdhcmUgd29yayA6
DQo+ID4gICAgIGVuY29kZXJfYXRvbWljX2NoZWNrIGdldCB0aGUgbWVkaWEgYnVzIGZvcm1hdCBh
bmQgdXBkYXRlIGl0IHRvDQo+IHZzX2NydGNfc3RhdGUtPiBvdXRwdXRfZm10LA0KPiA+ICAgICBk
dXJpbmcgdGhlIGNydGNfZW5hYmxlICwgaXQgd2lsbCB3cml0ZSB0aGUgb3V0cHV0X2ZtdCB0byBo
YXJkd2FyZSAuDQo+ID4NCj4gPiA044CBCXRvIHNlbmQgZHNpIGNvbW1hbmQgdG8gcGFuZWwgLCAg
SXQgaXMgb25seSByZWxldmFudCB0byBkc2kgY29udHJvbGxlcnMNCj4gYW5kIHBhbmVsIGRyaXZl
ciAoYnJpZGdlIGFuZCBwYW5lbCAp77yMDQo+ID4gCUl0IGRvZXMgbm90IGludm9sdmUgdGhlIGxv
Z2ljIGFzc29jaWF0ZWQgd2l0aCBlbmNvZGVyIGFuZCBjcnRjDQo+IA0KPiBEbyB5b3UgaGF2ZSBh
IHBvaW50ZXIgdG8geW91ciBEU0kgYnJpZGdlIGRyaXZlciBzb21ld2hlcmUgKGEgcHJlbGltaW5h
cnkNCj4gdmVyc2lvbiBpcyBvaywgaWYgaXQncyBub3QgcmVhZHkgeWV0IGZvciB1cHN0cmVhbSBz
dWJtaXNzaW9uKS4gRnJvbSB0aGUgY3VycmVudA0KPiBkZXNpZ24gaXQgc2VlbXMgdGhhdCB0aGVy
ZSBpcyBubyBuZWVkIGZvciBhIHNlcGFyYXRlICdzaW1wbGUnDQo+IGVuY29kZXIuIEluc3RlYWQg
aXQgbWlnaHQgYmUgZWFzaWVyL2JldHRlciB0byB0cmFuc2Zvcm0geW91ciBEU0kgYnJpZGdlIGRy
aXZlcg0KPiBpbnRvIGFuIGVuY29kZXIgZHJpdmVyLCBlc3BlY2lhbGx5IGFzIHlvdSBhcmUgcHJl
dHkgZmxleGlibGUgaW4gdGhlIGNvbXBvbmVudA0KPiBjb25uZWN0aW9ucy4NCj4gDQpIaSBEbWl0
cnk6DQpNeSBTb0MgRFNJIGJyaWRnZSBkcml2ZXIgaXMgY2RucyBkc2kgYW5kIGNkbnMgZHNpIGlz
IGFscmVhZHkgaW4gdGhlIHBhdGg6DQovbGludXgvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRl
bmNlL2NkbnMtZHNpLWNvcmUuYw0KDQpFbmNvZGVyX2JpbmQgd2lsbCBhdHRhY2ggdGhlIGJyaWRn
ZSB0byBlbmNvZGVyDQovKiBvdXRwdXQgcG9ydCBpcyBwb3J0MSovDQoJYnJpZGdlID0gZGV2bV9k
cm1fb2ZfZ2V0X2JyaWRnZShkZXYsIGRldi0+b2Zfbm9kZSwgMSwgMCk7DQogICAgLi4uLi4uDQoJ
cmV0dXJuIGRybV9icmlkZ2VfYXR0YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVMTCwgMCk7DQoNCg0K
VGhlcmUgYXJlIHR3byB0eXBlcyBvZiBicmlkZ2VzIGluIHRoZSBMaW51eCBtYWlubGluZSBjb2Rl
Og0KVHlwZSAxOiBvbmx5IGNvbnRhaW5zIGJyaWRnZSBkcml2ZXIsIGZvciBleGFtcGxlDQovbGlu
dXgvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYw0KL2xpbnV4
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYWR2NzUxMS9hZHY3NTExX2Rydi5jDQpUeXBlIDI6IENv
bnRhaW5zIGVuY29kZXIgKyBicmlkZ2U6DQovbGludXgvZHJpdmVycy9ncHVcZHJtL2kyYy90ZGE5
OTh4X2Rydi5jDQoNClRoaXMgc2ltcGxlIGVuY29kZXIgZHJpdmVyIGlzIHVzZWQgdG8gbWF0Y2gg
dGhlIFR5cGUgMSBicmlkZ2UuDQpPZiBjb3Vyc2UsIGlmIGkgYWRhcHQgdG8gVHlwZSAyLCBpIG9u
bHkgbmVlZCB0byBjYXJlIHRoZSBlbmNvZGVyIHBvc3NpYmxlIGNydGMuIFNraXAgdGhpcyBlbmNv
ZGVyDQoNClRoYW5rcyANCktlaXRoDQo+ID4NCj4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92Ni42LjMwL3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvDQo+ID4gbGNkaWZf
a21zLmMjTDQ1Nw0KPiA+IERvIHRoZSBzaW1pbGFyIGxvZ2ljDQo+IA0KPiAtLQ0KPiBXaXRoIGJl
c3Qgd2lzaGVzDQo+IERtaXRyeQ0K

