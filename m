Return-Path: <devicetree+bounces-14710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 076407E650F
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1F072812D6
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8CF310797;
	Thu,  9 Nov 2023 08:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bp.renesas.com header.i=@bp.renesas.com header.b="ml7C/uEh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F0E10793
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 08:18:43 +0000 (UTC)
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2131.outbound.protection.outlook.com [40.107.113.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C93892D4F;
	Thu,  9 Nov 2023 00:18:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTb+xM5Refnu1VTwAPkhNlkURvCTstPVw9pQFfRn5P5muMwp0YY7xbwXtxEqZqd4GLm96eF9Vbq4dJBbOvmKyojdQacmsNLWox+JwvO0ZrKyNCqJclRpKNNKpWcnXDVW3LygrS1AaqB/rcBY6RcluY54Y98o+jsIu2hVj2udqUAlQ+yhcXTUkj47YcGG875zf+m6pg0BRZ1AolWgl4H+FEhEc8VScMWDiF0kj+n8so00ETmZUnFEV1qn+JGgH7IHI7L1kfRVVg5Qsln4ZsN4krVuzWAAEU2j0qE6YswapRJqKC0aCXs6kzhG+wjx4YOdEQgbc525/c9iyY8P/TQWjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7LwEavt3AeAEfMH2UKk1WGWLWTGEl4ratOZiG1xfsYI=;
 b=KUNNHDXcVBzrZDRsQ17V+yDBz6UdQgpVgojntA3JnfMaQAb7f5ZsYUThS/2gNeNjK1UQGmmfNaRyC+x6wm2HQh7E8e6nG0Afg4hU9NRr3WuQlvSPC0e3jotb4j9driMGiQ2w9c/Oym8oqAif8YvZs2wil1NO/uunoNW9bTjYRosBcKNiDzJF9is24y9Lfk/XtKco3NXT1yVgvLw396fMKhMXfrwVOkoPH/wpOb0daN8y5z2zdwN8b3OOQHm4z7GCXLT6VMtIWJt3hclMBeq7SXWjtdpTRUN4Mpi/wj+WBqAHhyu5uvMZ0q81j6/85qvVaDCz47Dicv6ZGCcghl9Dqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7LwEavt3AeAEfMH2UKk1WGWLWTGEl4ratOZiG1xfsYI=;
 b=ml7C/uEhGj6hjCfG1+A/lXSHHRJnhtqW8QjhFL1An+o42PMSiVa//OjIO7vEAxBYGeONNwNaGDdrbjJvjMm0FgbuJ+fmLLfJhC6XcA5jliIbaYUx+qYnVq+17c6VUIlpAZA56DqzcIOQl0slVblj6yv3R1jIuSh/U3wpmUqXdto=
Received: from TYCPR01MB11269.jpnprd01.prod.outlook.com
 (2603:1096:400:3c0::10) by TYAPR01MB5338.jpnprd01.prod.outlook.com
 (2603:1096:404:8030::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.19; Thu, 9 Nov
 2023 08:18:39 +0000
Received: from TYCPR01MB11269.jpnprd01.prod.outlook.com
 ([fe80::6cb:4ed9:b0be:36c0]) by TYCPR01MB11269.jpnprd01.prod.outlook.com
 ([fe80::6cb:4ed9:b0be:36c0%7]) with mapi id 15.20.6954.027; Thu, 9 Nov 2023
 08:18:38 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, biju.das.au
	<biju.das.au@gmail.com>
Subject: RE: [PATCH v4 0/2] Enable 4-bit tx support for RZ/{G2L,G2LC,V2L}
 SMARC EVKs
Thread-Topic: [PATCH v4 0/2] Enable 4-bit tx support for RZ/{G2L,G2LC,V2L}
 SMARC EVKs
Thread-Index: AQHaEmgsq4CksCbVNkuizHJohAoqGbBxoLOAgAACYBA=
Date: Thu, 9 Nov 2023 08:18:38 +0000
Message-ID:
 <TYCPR01MB1126924D52FB0E93F6B0B134B86AFA@TYCPR01MB11269.jpnprd01.prod.outlook.com>
References: <20231108172232.259301-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdWWgq=gnM+h-GNwvFTxZFXWTtsx=+LFJ1-cwbLi0GXJEw@mail.gmail.com>
In-Reply-To:
 <CAMuHMdWWgq=gnM+h-GNwvFTxZFXWTtsx=+LFJ1-cwbLi0GXJEw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYCPR01MB11269:EE_|TYAPR01MB5338:EE_
x-ms-office365-filtering-correlation-id: 0f483bc2-28e9-42df-67cd-08dbe0fc7a20
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ZZUPFFGT/VIlUERTy5NIe2JaX9SEi5ENk0NI6kGQjFekxEG/Jx0mZs/ZTJt75AAhfpp0f3u+43dQpCGpnMQY0iCOtYROhQjKHxehcBgpYns7VmnNd+3zSTOC7NA/xDLOgU0ofBuEWtHFFAA1LiQJGZNtT2mG04BCRswL8tBZFgS3AtgEa9OgNVs0ilbmoRSm+pIFjB5dSMDch0yz2KeVDoTcAhoP4kBA+g4yFPJNX6Ig7/OfBgN1Jmr8wpsXaZY4HaNzghIE57A+ka4gxlEinQWnL/3d4lKgWxH7xkmPd8pMIUl2LrNjFpL6j/509WZX/wmOfKA8eaYe7cflBK9qG88GwOuqdU44j03Q3qYpZjelyfmqj8Ejf5bGfaCr2ayZXJhaDiErEccxaHcNy1B36/jqS4hi+XVyZgZnC6/8LxrGKoTa/OVOm4AkMcTObtvbLrmLkK1EBjBqgC3pmWv0cfHdnFppc28xjWrBWbQwLdIRsvwRqoaHxV8Dn5xq0s82RkbfNlde+DPczm7XlY7m1+WPK/PlIGt910UutREJjh0Elxg5dlPQwBcgybh+ktzcYpPF90uJsDp530ceiXBN627X6UGJpnSHsc4qEnRvBVE=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11269.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(136003)(346002)(376002)(366004)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(8676002)(8936002)(52536014)(7696005)(6506007)(53546011)(86362001)(4326008)(26005)(2906002)(38070700009)(71200400001)(33656002)(55016003)(5660300002)(66446008)(316002)(64756008)(66556008)(54906003)(76116006)(66946007)(66476007)(6916009)(9686003)(41300700001)(38100700002)(83380400001)(966005)(478600001)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?MURKaGRBTjhYOXNWZmpjeGxDRHZlYUxmN0RnRnJzSTFtOUZLcUY5MkNGNlBJ?=
 =?utf-8?B?Q29vWW1GandVNy9HYldNc0dXenFUNE5sWllvNjVtSXVySWdCcW5YSTg0SW51?=
 =?utf-8?B?UkJYN1B1Wm9LVkpaZHBBZENLcGpxSjR3cDlMbGh4NDZWNkZNdTlzcjNrUWt4?=
 =?utf-8?B?NVRaaUN3QU5YSzlpRlExazY3aFJyc3RKZTVzOW8wbWlFZEx5RzJUcmpGMWhD?=
 =?utf-8?B?S25ObmtTRXJBWkZzbEhMVkcvbHBXczVMWFZabS9FNExLSmxNaU9kc01NWWQ2?=
 =?utf-8?B?cjhvRytjMElKNGd1cXVyYmlyUWJ6Y09tMlBnWnhoSUJ6R0dDOFZ4SEdqTXBM?=
 =?utf-8?B?MVpEYmovbk5FUm5HZlpKektOWE9sMDV3Ym5GMFRvcTZMTVlBckNUUTM3MDNF?=
 =?utf-8?B?OXIxWWRXd09DakpvcUt4UmhXeEltK2JLbUJ2dEMveWZ6OFZWaVNFdHQ0L1pQ?=
 =?utf-8?B?SXFDd1JCWUVicjB0ZVRHUGJBMks5cnJrdXlzem92QU5DNkRPUDE5NitlL0pN?=
 =?utf-8?B?M1NlUXVkOEMrUGJFZ1NVOFRONHVnOEhEbWVybXM0MmVLSU5BRER1K1d1Znlh?=
 =?utf-8?B?MmRnckx1d3RER3J2V0t6RlY1RStNTGFmM3oyNDhKN0grSHpPMW4vSmRkTW1L?=
 =?utf-8?B?c0d4aDA4YzlxbWc5WndzYmhWQjZwajhONlRoeVo4U0dCUFpOa1U5dEEzdnp3?=
 =?utf-8?B?b01MWTF0Q2M0UlpUQkdnejN0SkhkakhieGhVUTJ0Y3huS1haREg2NWYxRzIz?=
 =?utf-8?B?WmIrcExXM3RwYytXUldsd2hqMGtVUmJleFdUazIyNUZrbndUNnB0aHFncFJx?=
 =?utf-8?B?VGc4MGU5L3h2Yzcrc2N5Uk82MDNhd082OFdjSDl4Vy8rWDhodW0vc3pROTQr?=
 =?utf-8?B?ay9RRkRmaFppdWR1VGlwSXd1N3VpcGhXUnl3SkM0Qm1JRHYzcGZhT05OWGJZ?=
 =?utf-8?B?RnhsWGhicGtUTndwaGlidGU5WFVBMFU5WjVTTWdWVGN0ck5sS2NzTDY4R01s?=
 =?utf-8?B?QzlDWjFxZGVpblNtZUxYaXJlOFRKekNlTjFFaDErV0pzcm54TjQ4UW1xOXdk?=
 =?utf-8?B?OHRBK3o0WjljeVZYVmliMDRveGxZZnZsazgzM0dtUS9KNmJWVWEvV3RZK2RG?=
 =?utf-8?B?VWZOYmxjU21EU3NjaVpKS3FhM1lqUWpRcVJHQUZ4eHpVQ0FsczdLeGFqb29M?=
 =?utf-8?B?eE5NaFNMZ0xCWE9zck5pUk1NNk5WZ1FDeXpteUtOVzVOcjhvVmVmUlBqY2pt?=
 =?utf-8?B?bDhOeEJ2ZDN1ZTkrN3M0ZzJ6aXVmczRMSEwrWjNJZ1hIUll2eDRhRUt5ZE9Z?=
 =?utf-8?B?N1F5OUZ5SG83VnVsQ3FIbDhaZkpIbmpJOGduQ0c5Rkt0ekEyZTZaZG1hK1pN?=
 =?utf-8?B?Z1VvRWozMjR5WTdvWWJqck5YMjJQbFJFeEwvV2xWZDdUbStHTU5FeGJhZnVw?=
 =?utf-8?B?RkxPMTJoWFRQWWJybDhuUDF4ZFd4T3Z3aXp6Kzh1LytXbU1aRkF6dldFZitT?=
 =?utf-8?B?ZWg0REpUcWsrTWpwU1JjTWxHS2FPWCtOYWJwM2d2RmhpNFdQVUc4ZWZyWUJF?=
 =?utf-8?B?Wncxb3E3UDk0UGlqaCtGeDZyeG1udy93QTFBYjcrbXhTeEhCcHVGa21kQUdw?=
 =?utf-8?B?dVloeXBXblJ1Nm5iblBDNVhhVitFU2tEZVJqeWZVK2lJWURwekRBdzNxdVVS?=
 =?utf-8?B?WXpQNWJXR1JGekdPZ0c2RlZmbzVDVzYrWGZtdG1wVTNwMTdJRDl4YnByeVN5?=
 =?utf-8?B?Zi9uVU40WndabUZTL3BUOHNCVWJ2VjZZeGgrb3pEckpJaEhvOFZEaFdBTStJ?=
 =?utf-8?B?SUFoRnhyVGVYSzVCNmEvb1VrbHpTYUdNNFVjOGZ3VGFsME8wb0J6TERxcndi?=
 =?utf-8?B?QmZxajkxWEtjOHBOV3VIb1B2cUNsR29RSGpnUVNOMCtmdGRVNEthYjdRR2pI?=
 =?utf-8?B?OUl1eDZtWEd4WTlWamxKMTJTNnBvVnQvRTJ0SnhUbFQ0aWIrQ2VvWDRlNEpR?=
 =?utf-8?B?bCtNQjQ2c3QvMTEvMlhQMVFqdEkyS0xTcVNMUHJjMVlXbG9uTG0xcXZSc25p?=
 =?utf-8?B?Vit4dXFkN0cvUnpyek5DNGZJSm5LaEE2VWZZTnVJYUFMNXh6K1BrcWxzd2xk?=
 =?utf-8?B?YW1YeHl5SjNibzRSaVdLVDRST3hKZ3oxdk0rYlR2L2c2dnZ6NnhmL1NINVlv?=
 =?utf-8?B?dXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11269.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f483bc2-28e9-42df-67cd-08dbe0fc7a20
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 08:18:38.7803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iBrNfk8r4x8g2imUGNOnt+KHFpTJL4SpGEJHFL/pgfiHrVUEfso68xEBooKVLJRah2O2c6L/6AUBGa75OCnvaey/k3BeK3PmiwwzTDAR6Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5338

SGkgR2VlcnQsDQoNClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrLg0KDQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggdjQgMC8yXSBFbmFibGUgNC1iaXQgdHggc3VwcG9ydCBmb3IgUlove0cyTCxHMkxDLFYy
TH0NCj4gU01BUkMgRVZLcw0KPiANCj4gSGkgQmlqdSwNCj4gDQo+IE9uIFdlZCwgTm92IDgsIDIw
MjMgYXQgNjoyMuKAr1BNIEJpanUgRGFzIDxiaWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT4NCj4g
d3JvdGU6DQo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgYWltcyB0byBlbmFibGUgNC1iaXQgdHggc3Vw
cG9ydCBmb3INCj4gPiBSWi97RzJMLEcyTEMsVjJMfSBTTUFSQyBFVktzLg0KPiANCj4gVGhhbmtz
IGZvciB5b3VyIHNlcmllcyENCj4gDQo+ID4gTm90ZToNCj4gPiAgVGhpcyBwYXRjaCBzZXJpZXMg
ZG9lc24ndCBoYXZlIGFueSBkcml2ZXIgZGVwZW5kZW5jeSBhcyA0LWJpdCB0eCBtb2RlDQo+ID4g
d29ya3MgZmluZSB3aXRoIHRoZSBsYXRlc3QgcmVuZXNhcy1kZXZlbCBhbmQgbGludXgtbmV4dC4N
Cj4gDQo+IENhbiB5b3UgcGxlYXNlIHRlbGwgbWUgd2h5IHRoZXJlIGlzIG5vIGxvbmdlciBhIGRy
aXZlciBkZXBlbmRlbmN5Pw0KPiBXaGF0IGhhcyBjaGFuZ2VkPw0KDQpJZiBJIHJlbWVtYmVyIGNv
cnJlY3RseSwgcHJldmlvdXNseSBmbGFzaCBkZXRlY3Rpb24gYW5kIHJlYWQvd3JpdGUgdGVzdCB1
c2VkDQp0byBmYWlsIHdpdGggNC1iaXQgdHgtbW9kZS4gSSBjYW5ub3QgcmVwcm9kdWNlIHRoaXMg
aXNzdWUgd2l0aCBsYXRlc3QgbGludXgtbmV4dA0KYW5kIHJlbmVzYXMtZGV2ZWwuDQoNClRoZXJl
IGFyZSBubyBTb0MgZHJpdmVyIGNoYW5nZXMsIGJ1dCB0aGVyZSBhcmUgY2hhbmdlcyBpbiBzdWJz
eXN0ZW0gd2hpY2ggbWF5IGZpeGVkIHRoaXMgaXNzdWUuDQpJdCBjb3VsZCBiZSB0aW1pbmcgcmVs
YXRlZC4gSSBoYXZlbid0IGJpc2VjdGVkIHdoaWNoIHBhdGNoIGlzIGZpeGluZyB0aGUgaXNzdWUu
DQoNCkFub3RoZXIgY2hhbmdlIGlzIHJlbGF0ZWQgdG8gUm9vdEZTLCBJIG1pZ3JhdGVkIHRvIHVz
aW5nIFZMUCAzLjAuNVsxXSBhcyByb290RlMgY29tcGFyZWQgdG8gVkxQIDMuMC4yLg0KSSBkb24n
dCB0aGluayB0aGlzIHdpbGwgZml4IHRoZSBpc3N1ZS4NCg0KWzFdIGh0dHBzOi8vd3d3LnJlbmVz
YXMuY24vY24vemgvZG9jdW1lbnQvcmxuL3J6Zy12ZXJpZmllZC1saW51eC1wYWNrYWdlLXYzMDUt
cmVsZWFzZS1ub3RlDQoNCkNoZWVycywNCkJpanUNCg==

