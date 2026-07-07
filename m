Return-Path: <devicetree+bounces-321660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FzhMBultTGqnkQEAu9opvQ
	(envelope-from <devicetree+bounces-321660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 05:09:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0360716F3F
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 05:09:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mediatek.com header.s=dk header.b=Z3LoGPAO;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=hXBeA32x;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321660-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321660-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 197B130230EA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 03:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0138B37DAA9;
	Tue,  7 Jul 2026 03:09:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4703612E3;
	Tue,  7 Jul 2026 03:09:22 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783393765; cv=fail; b=rJB/Qv43mXT98+wD8Ahm8N1xymLV/iiIDtQ35R7MQ7Qyh0J8S+O8uNYT3eeQTA5Hwty+AEwUuzSJ2+NFkbAfXHhKfD1aVvJ48RRxEo5xVox5MgeeUMBs2j1+gm1QjQKd3m0TjP+3CzGQ1NbQSYTPxxYPeRgCCyHpzvpoqybfELo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783393765; c=relaxed/simple;
	bh=ZlT5XJB9JtVsXmxIOKbP62UuX3T8ObZtTMNyUkr7yMg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=vAca8vyANH4wBvw4t6C3+QwtiSOfxGG7zDGzELWCyWZFiHuJbfdVhN9u4Wydq/Gldt7PaXgG/NmvxuO6M7zI3zR6lPBDI3nwT9Dfc/rOi0JsJ8pHnTPUp5YqYlJ08Munxv/Fk7wt+q01RETCSFAKPBqrdsoK6S++hPobiUWdASQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Z3LoGPAO; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=hXBeA32x; arc=fail smtp.client-ip=210.61.82.184
X-UUID: 3a306a1279b111f18dc8c9802ae25ab1-20260707
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ZlT5XJB9JtVsXmxIOKbP62UuX3T8ObZtTMNyUkr7yMg=;
	b=Z3LoGPAOhTgfjnSYCxq29raD+AC1M4VHC8i+Xs8O0WAwC5x+DAgKQ8yDbyY1qwXdRh7yab82se1S4qX0VDrwGEIeCUOabS37UmYEcxrHLaefow9le0RqVh3Qqsz4CZef0jckUUNPlFOMog0RDH0kSuHNBRHgIkm1Uq9ztB34q2M=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.17,REQID:6104eadc-3fe7-48c3-968b-f007a7f5e38d,IP:0,U
	RL:0,TC:0,Content:1,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:1
X-CID-META: VersionHash:d497b38,CLOUDID:8235ecd6-4504-45e1-b7e4-0b9331be048a,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|836|865|888|898,TC:-5,
	Content:4|15|50|99,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-
	1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 3a306a1279b111f18dc8c9802ae25ab1-20260707
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1409013056; Tue, 07 Jul 2026 11:09:11 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 7 Jul 2026 11:09:10 +0800
Received: from SI4PR04CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Tue, 7 Jul 2026 11:09:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dFZoO+Htwpbp6xX2t/rbOS/hI0VXw8oKE9xIfg0+xl7PRKCGFSin1Ubj1wRMeRTV2IVSPH43tZUzvk2Sck7xtYApiFnsjtZZ3o17KyvfAGWplTRv6IKfd9DzZE0+ps6dtV615F+aLv+B9aKUNq7s9/aWZyCQzDjgoPUZF0HHw1uC7JIQRxWf/6Z56QuB8OxxKw5zCZ+MGmkz/eR3XJfcVxKQHJEx/q3T9BMYWG7jqPqr3d/Xy7tr6KSjvfSPCSfUsOFyE3tUBTv5dnpyl/H3j0Zzjy+vjWiObISXVjw3sL68QDYPw1T6Wglhy76RuCDNesmKc+6p7VUw8Sg2r0lc6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlT5XJB9JtVsXmxIOKbP62UuX3T8ObZtTMNyUkr7yMg=;
 b=EOi4scDTbt+lusGU29CZcgho3XZoJwhWTQj8RrCCzp0sbA/hUL99zi17iKldlKJNg+T1NZuVEW09cdSnRLLnGHto9I9YynCAZKlXh1Xacm5kttn7YQse6R0RtRPxECaDlj/IZho+lpCB5x2MTfZIIMiacsaaqOQSl8W11svr63ajjpiVh07ztI2g+ejy8ngruKOlyqMGU/2A96HZyUCzJvgz9gmf6ZSKBQLKJEjkUHu8aQZb89M6RX6IqoE7VTfddRheUuzLICHNcTweUjxcVv6aUG4NBI6wR0T5KSeVQBfOzmDRtYG41gPbWuGTPZqkC/otoxWnK9LMVHOUBUAXAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlT5XJB9JtVsXmxIOKbP62UuX3T8ObZtTMNyUkr7yMg=;
 b=hXBeA32xnDHO4Z9l2KZdQbM9hgUudJRXFtZqhjU70B3fj64Es2m5BJHavi9Ftj6hdV/HFB0KwwQKYXxhFI9dygJs0qaohAcaizpdzX3BHVn7ldwZFVBpmpIdp3pCQBmQxsG+Ehig7d8SVbifoNq7z/oPXt08dsxxKP5t7Uawcfs=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYZPR03MB7437.apcprd03.prod.outlook.com (2603:1096:400:418::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 7 Jul 2026
 03:09:06 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640%4]) with mapi id 15.21.0181.010; Tue, 7 Jul 2026
 03:09:06 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
CC: "robh@kernel.org" <robh@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"mripard@kernel.org" <mripard@kernel.org>, "kernel@collabora.com"
	<kernel@collabora.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "airlied@gmail.com" <airlied@gmail.com>,
	=?utf-8?B?SnVzdGluIFllaCAo6JGJ6Iux6IyCKQ==?= <Justin.Yeh@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
Subject: Re: [PATCH 07/42] drm/mediatek: ddp_comp: Move internal component
 register in function
Thread-Topic: [PATCH 07/42] drm/mediatek: ddp_comp: Move internal component
 register in function
Thread-Index: AQHdCVQx1q2BMeeCtU2ZOBtgvaK3OLZhaUgA
Date: Tue, 7 Jul 2026 03:09:06 +0000
Message-ID: <8c5076fb17970a6c31f706f78079d90ce5b8da57.camel@mediatek.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
	 <20260701122057.19648-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260701122057.19648-8-angelogioacchino.delregno@collabora.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYZPR03MB7437:EE_
x-ms-office365-filtering-correlation-id: ec400ae3-f20e-41a6-5608-08dedbd51b3e
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|23010399003|42112799006|366016|38070700021|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: Rw3SX+9bx0f7+FkR8JudzhuzhJGHBuIVGAV/yv92h6MEcKlpz7UGW3QGf5GRBJaeHYJo0j42CV0EJCoGXJbEFZcoQakwTIe/ijv2ZokXCrJh3HSlcVCP/2oIGvJGdjChcFYpH4+BvCvMiBT7VLRuodVgXINdJGbstfoPvLVSJAWD4YoQOuQ3QPG9pqm/mEZDyty6GW2Huv1YKmA+xB0uQ8q9cJt9GO1ZbppYathZd/mmkgf5RW6H8wgzxsnDkjAbldlIZlR+Uh8WU3XJX+0sRyiBtAo/QLqf5KkrLEf24/zdaNMC+r0QcOPQGUNhomtjq/etOvdMR0waxgM06yykDtCdATFlPG3q43wlqDvzCqGhh0Qyb/C75WK0fxTcR6gTRTWUU4fzysdU3qwRGqXAf2V4Iv3W+38OVYHM49i+TJHafRcHkGVYwexhwDHNsE/4KLboImVOkKT0c2U5Z0r+BzbV76bLaHQ7rnQ4ZQMxs1s7Q9Wbrrx3yI93UYWEWaJ9f5FDDNS76xW52keayHbIoy3PoC/S3CTq/zMXcrA91l5xhMinYXZDwrqg7G3vs2t6k4kA4kU15u0JS+7Ki7W+3kEnMInRHG6M/nnv4j5/KYkCDYD1NvhZk27wrRlqWVk/SCHfr9HtWmTIW3EaIYH5BKS50/RgDKfydlr4KyLsT2K0/2RmDbqTr4CwI3sgPnBxEhaJVSvsRIS3FeFxGRebQthG2G4Aub/DvOZ17sA+Et8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(23010399003)(42112799006)(366016)(38070700021)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1kyeFp5b2hEYWVmK2tiL3NwUXVPelorTDNKWVNHQ0NZMk1ndjQxaW11b2Fk?=
 =?utf-8?B?NzIyYjc5THhycHMrdlgra21hZkRwRlZybnFjSmsrWFZNcjd1VkJSeUdoMnpa?=
 =?utf-8?B?U0V2RGoraTU2QXN1ckFoeERHdTVNb0RwZElNV1ZPbFYvNzl0UG5WQ1BvNytz?=
 =?utf-8?B?cWwyVFd1VXJRUW1nWk04bVdyZURsbkJPSWM0SlNMejhvRGJ5b2k3c1NhVElp?=
 =?utf-8?B?bnMvV2szYzdOZDg5bVo4eWc1MGlHMHF1ZmR3eGR6SThuRFBXbEllMytWUlU3?=
 =?utf-8?B?RWRRVTFSaFArWForOHRQTG1mTFlBVk1TOUhFSFV0SExzRjlFZytVRVFHd091?=
 =?utf-8?B?UWMzcUhDVnZDekxEV2FnVnFCOTlqaVQyZ0Vjckxzb1RRR0JkU2R0L0FxLzN1?=
 =?utf-8?B?bEszWlk1bmc0NWx2U215ak1tVTNoaFJWbEtGQkVrSVdRdTQxWSs0djB2VXpY?=
 =?utf-8?B?dzB3dDBkN1gvak11RnpNdXFyc09hVE5pRVovbFZlYitBRUhwL3FrWVdMaGdl?=
 =?utf-8?B?amp5YVFOak1SQ1JwcUhqNTBsazJadXcxU21aY3pLR0FSNmhxTFhCSmZGbEVK?=
 =?utf-8?B?UGdTNHZRQ2JYcFhzOFJpNGdvNnIwdHpmbWRhbnh6SEVYU2pXUndWUndzQW9i?=
 =?utf-8?B?M2wyRzJpdy9BNFFIWmpMOW9uNy9IYUFhTWcwZW96a1E0cS9yNWUvMnhhTVli?=
 =?utf-8?B?c2hobFhwS0xCbkVRczd3d2RyTnpIQlBMR2xrRG1DVkNvQklZd1JwUkM3ZDNR?=
 =?utf-8?B?dU9XaGZxV2NmQnFFcloyMjNrUkF5NDhwR0JxOVhQeC83S3BaRUtiSElSeDI2?=
 =?utf-8?B?VGhLbzVDSXBrTGxHZnZHVmJwQVpGbXc5UnRvUkZjbW9RYUcrc1AzbmwyVy9h?=
 =?utf-8?B?d0RmN2NmT3psb21IeG11MTJ0cFQ2NThURXdXZ3ZhcjMwamZGMGUwc1FDUkZH?=
 =?utf-8?B?U1NNWUNxemVJdllBUC9vWVo0MUgvc0w5Wm95UUNVNm1qVHVOdU9XQUdZU2gr?=
 =?utf-8?B?MEM1UXZtcEgzeXpaRkd6OE9wbUJCbGNZaXdVT3VIakNhQkpuYjFuQ3FOWG5v?=
 =?utf-8?B?T1ZxYXA2bEJuRzN6M3QzOWNhMUlTOU5EWGxmYVNKZGtLdHAxbDR4TmVDeHZQ?=
 =?utf-8?B?V2o0dG8yN1NFSk9UTUxKSmxVUmxxVjFYTjZHUGdiZGNEZDhDaGo1Rkx3dkpj?=
 =?utf-8?B?QnhHWTZsaTRLRjU5aGliWnQxR3d6OFY4OG9qb1VRNUR4U2lCcXJhWjBpK0JV?=
 =?utf-8?B?cTk4VFV4a09wQlJhNTNXYi83ZFRZZU9JZUtOVjlLWS91NmlUaEZELzRlbkNl?=
 =?utf-8?B?bGkwWnNmZU51QXBwbldLU0lJSFYzSk4zb2pRdDN0SlFvM1FQZGY3VHJZNmRO?=
 =?utf-8?B?K3ROMHlZaHNWTnN6b1UvQzJrd1FFOXBobCs2bGNzQXVmdmNFMWEyWGlVMWY4?=
 =?utf-8?B?YkNHUkFaMExDcjRsNW5PeStPZEVobE9lZnJQVXFwbGpHVzdtdi84dVVValVh?=
 =?utf-8?B?T2YwekNYMUNkNGc0UDZFUURXYVFKWnRteHNNU0xyV1Y0ZWxIaVI1aW1ZZVRN?=
 =?utf-8?B?Y0Yxd2xpb1ZJdUExZ3dBOFZJNGs2VFVrZzdjeXVuQ2Z6amt3aWU4bDBXeVdi?=
 =?utf-8?B?OVZlakFONTN4elR3Rk9uTncvTXpyTjNIcTBIcXBlMWxNZVl4ZHV3ZnF2OUU3?=
 =?utf-8?B?UGtiUWJvSVpvekxQa1QrY3QxamdJSHJteHdkaGVFYVpiZi9Qb0EzZzVYU0Jw?=
 =?utf-8?B?dWlWSWtNd3FEY0I1UDFiQkVqVE14Q200TTdmT3o2OUpDcUw2ZysyWHp2TFk3?=
 =?utf-8?B?Q2JMVlJmR1ZiS09RZjRaTjlDQjN3SDNvWURwaUxRREo3UktkeElvZ0RnZzc3?=
 =?utf-8?B?TE96TkxYQ0VXUm1GbHBETDExSEFBbW90N3ZOWmpvME1lL1p2dWgrb081VzFt?=
 =?utf-8?B?dDF6TVBzcEpnc3JYOXJWQ1Z0MitxTk10clRYeTJhclY3Y3FOUnM0V1hTQ1lu?=
 =?utf-8?B?NG5peHdvK2dYU2p6WUtOb1BJWkpvdXZzLzRWYkloQkFMdG43MzdSeW5xSXZW?=
 =?utf-8?B?VVpMMnZBQkc1NDhDRkloV0VSZ1FIWGU3ZHFYYXZlRWtSZHJtajIxbW1NSDd3?=
 =?utf-8?B?SnRHeE01RkdvcG01eFhLR21WZUFJbGEyZi9BNFdPTEhTamJEanRINWIyVzZ4?=
 =?utf-8?B?TkdhcU0wSzNlV0N1WTZWZVdweUYxQUZsOGdZZjBNY09sVEhWRURRZDdsQTNI?=
 =?utf-8?B?cjhTdGFaVkRFdjZOcWJNL2NHQkZtSUxqbVFGR1RXek5kVitwY3oyeU9mYnJC?=
 =?utf-8?B?RTN2Q2E0U004Rm5STWtJTVIzd1cyRGJQUitURXo4Sk9GWXVPL09LQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E966083BE0768F4C836E2D07B389CDB7@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X+/JOn8OQ1zhnxDZXExC+zz6z/gOErRPbAaRaOCADuvfDoJIg5gzezH/MQcGFBIzFa/nr2zJgy/gH81U/6GogS43+39E4YS/bs3QFRgN4SUCT0/yxARcifFANDl5CKOKF15+6WT8xGy9xpc7kBoiNrKrBi1o+JR481jD6/KEgfv3FLxkkviMYNndFGNVtUP78LEvVqZ8tb96uZfzMIsUd3pBVWs4khHbkRk2MyTdO6HlucmjKxzkRAjwEvxtJoWHhli28ztN5N6OQa/8VGYvwe4d58TVgkeJ2Ws9Lu696+s1LWXl3SCV5tg3m+eQzkyN0jz7vH6OPWeDaTEFTy4tcg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec400ae3-f20e-41a6-5608-08dedbd51b3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 03:09:06.4157
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mXiODR6iAm/zfBHiC3L2xuEyVzwrOAgoTJfdlAhU1IePcj/nnk8IpohzDmyy6Kywyx6+sgzgr3E4LsA/hggqsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7437
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321660-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[ck.hu@mediatek.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:robh@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:mripard@kernel.org,m:kernel@collabora.com,m:linux-mediatek@lists.infradead.org,m:maarten.lankhorst@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:Justin.Yeh@mediatek.com,m:matthias.bgg@gmail.com,m:linux-arm-kernel@lists.infradead.org,m:Jason-JH.Lin@mediatek.com,m:conor@kernel.org,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:from_mime,mediatek.com:email,mediatek.com:mid,mediatek.com:dkim,vger.kernel.org:from_smtp,mediateko365.onmicrosoft.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ck.hu@mediatek.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,ffwll.ch,collabora.com,lists.infradead.org,linux.intel.com,lists.freedesktop.org,vger.kernel.org,pengutronix.de,gmail.com,mediatek.com];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0360716F3F

T24gV2VkLCAyMDI2LTA3LTAxIGF0IDE0OjIwICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gSW4gcHJlcGFyYXRpb24gZm9yIGFkZGluZyBhbiBoZWxwZXIgc2Vydmlu
ZyB0aGUgcHVycG9zZSBvZiBmaW5hbGx5DQo+IHJlbW92aW5nIGR1cGxpY2F0ZWQgY29kZSB0byBj
aGVjayBmb3IgaW50ZXJuYWwvc2ltcGxlIGNvbXBvbmVudHMsDQo+IGFuZCBmb3IgaW1wcm92aW5n
IGh1bWFuIHJlYWRhYmlsaXR5IGluIHRoZSB1cCBjb21pbmcgcmVmYWN0b3JpbmcsDQo+IG1vdmUg
dGhlIGludGVybmFsL3NpbXBsZSBjb21wb25lbnQgcmVnaXN0cmF0aW9uIGxvZ2ljIHRvIGl0cyBv
d24NCj4gbXRrX2RkcF9jb21wX2luaXRfaW50ZXJuYWxfY29tcCgpIGZ1bmN0aW9uLg0KPiANCj4g
VGhpcyBicmluZ3Mgbm8gZnVuY3Rpb25hbCBjaGFuZ2VzLg0KDQpSZXZpZXdlZC1ieTogQ0sgSHUg
PGNrLmh1QG1lZGlhdGVrLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4N
Cj4gLS0tDQo+ICANCg0K

