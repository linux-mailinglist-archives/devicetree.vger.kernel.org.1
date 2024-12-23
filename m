Return-Path: <devicetree+bounces-133448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCD29FA9A2
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 04:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 553B518870A2
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 03:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC7C33987;
	Mon, 23 Dec 2024 03:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="RrrjAObp";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="lqpwZ6Ox"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6950217BB6;
	Mon, 23 Dec 2024 03:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734923208; cv=fail; b=pLf1L7lFK4AzcYLRwUHntVzf4xI/KSfz43MupFL7h09E1MOzswqGoqX9QLv9rZKVGaM1Yy+Zi7DuSdjjOAmSl6VpWOhEUEkVgGx/EMJrsS0Gj7Blj1ZImZI8oMLt0No1oCsAiqZXtWW3dE3GN5FkmbnTNAcHW+Bgj1u2xX3vv7M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734923208; c=relaxed/simple;
	bh=+HlbwCNQhAL64zl3K5vZT2fxMDPdaak+qCsEmk+BOOc=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=N5PxUMfnnThohyy0NxcEAfsuX0q3agLoYnE8AeolzTk+kEZ+/TZbGviJmxb4ztGb9E8mT0lAPT1wtTFT20SAZq3o62niLmtlTraB+TTFlqRTw8nroIv3VHqVEG2aq3Amo+6U8JYGIUpRK86AiHKt4NmRCHW5WEn+O137a7NmB98=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=RrrjAObp; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=lqpwZ6Ox; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: e8cc4a8cc0da11efbd192953cf12861f-20241223
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=+HlbwCNQhAL64zl3K5vZT2fxMDPdaak+qCsEmk+BOOc=;
	b=RrrjAObpJsgeuPICrF+dHF60xPzRjxTYoDclAP4OY7m4JAe9VrIaRdm9BCmUAyRCqgBhW7aeR6deso5rPQ+28lWchB4SFX7cp5neSFv4BuPRMm0/CzbIciFaxgoe8n9LTNaSsnhsvr4bhiOL7eyUILAPP+Lu2jZgU3SruIm679w=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:9d5aa835-bf93-4e56-b6b9-8d1cc55f033b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:c95cbb36-e11c-4c1a-89f7-e7a032832c40,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0,EDM
	:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: e8cc4a8cc0da11efbd192953cf12861f-20241223
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2075481267; Mon, 23 Dec 2024 11:06:31 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS09N1.mediatek.inc (172.21.101.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 23 Dec 2024 11:06:30 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 23 Dec 2024 11:06:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fPq+qMWmUHjznQtvnDFR9DUwECBkJAcz9pIlqmr9nLcIx9YUUmDtIhP8S95Qn15KgCTmZqInFRy45iH4OxpF3E6SsVzo/OT60oJ8ozXgY8e2/eoEiD0YnWpjXoD2gA79XGqbq7ByQTsTjR0iTgnN72NgiBqiZt0OUw8og6jnDaWgvTNra2mgqkcSeMk6NGocr8VSKuv6kZ3kkD8XXbTLwJaez+IPnKmcAWwhvWsHKUAEZXd7X3+zTUtDAClc6s+aHqR8Isk4Ex7Sb9d4fvksP0xSLvUFzX1grgsOJdZtm9HG6KUb3UFqYaK/jyq7Te/ocMhK5Va/2s6q57+A7AZLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+HlbwCNQhAL64zl3K5vZT2fxMDPdaak+qCsEmk+BOOc=;
 b=Cuol8F7VzYyl4099HkNxfwAfTIpnn8aVZhc1sYV5Bbmng4dxk/kqmnpEJGFW9elnNg/iSmEcx7DCYq6uRyrhOSNujQUiRBznI2sFVbGcrpa+PL/Ku1+YOID1tSzIWqBN2hH8J1tBS2NB75IDr9jOP3BAPeqJwkZq+OC7S1vAikQwA2BnEIvr7rwQjZHt2gMRgZuXAC5gxZloqjHAKhs5dLNglOMeSGrMqJQKEt6UbiXfSj2C33nn1a6XH3RghucrNkn7B0Az2XyrTJlspEaVN7eKawCrzlwKR8tLw/Y4NuXgFEWB5K6eF22Hffqo04HnrJ2qUk4fieKT9VJ4+y5OZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+HlbwCNQhAL64zl3K5vZT2fxMDPdaak+qCsEmk+BOOc=;
 b=lqpwZ6Ox98+dzcU4Qpu0sihrKzZzY6pmoCQ+O1hFfXlAaKsLp1OpAsmg28LVB9jNxu6RFasOEANApRjeZ69A514m6fsRJPH5Jf8B90dLETqLurKOSJl+84gEn/cDja4/DXvF4oSxykRWo5CVLKOzXroNYE2xc5ApkuPUYIMI5e0=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by JH0PR03MB7905.apcprd03.prod.outlook.com (2603:1096:990:2e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.18; Mon, 23 Dec
 2024 03:06:27 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8251.015; Mon, 23 Dec 2024
 03:06:27 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"krzk@kernel.org" <krzk@kernel.org>
CC: "kernel@collabora.com" <kernel@collabora.com>, "robh@kernel.org"
	<robh@kernel.org>, "jie.qiu@mediatek.com" <jie.qiu@mediatek.com>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "simona@ffwll.ch"
	<simona@ffwll.ch>, "mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "junzhi.zhao@mediatek.com"
	<junzhi.zhao@mediatek.com>
Subject: Re: [PATCH v3 07/33] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
Thread-Topic: [PATCH v3 07/33] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
Thread-Index: AQHbUJqxk+jnkyq2NEGqPZrAKSlOo7LrqlOAgAG9JACAA8NvAIACAzMA
Date: Mon, 23 Dec 2024 03:06:27 +0000
Message-ID: <47fe777804cc9666422bfd6b492b78fe1953371a.camel@mediatek.com>
References: <20241217154345.276919-1-angelogioacchino.delregno@collabora.com>
	 <20241217154345.276919-8-angelogioacchino.delregno@collabora.com>
	 <rsnyljmkdf7i74bkrlf5nesp2sa3n6xcnzsqao4znmczjpfyq2@dsakz56s4ypt>
	 <9a75e88c-d90d-4ea8-b5c3-6d056d4f0498@collabora.com>
	 <425fd1b0-fcba-4547-81f6-84acee5ce7f4@kernel.org>
In-Reply-To: <425fd1b0-fcba-4547-81f6-84acee5ce7f4@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|JH0PR03MB7905:EE_
x-ms-office365-filtering-correlation-id: 23f02d40-7855-4e5a-7563-08dd22fecaba
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cDRpeTNRSVVSRG1Gcm1sdXhRbTFobGp4S1NpdEd5aHpYRVVaS0w2K2xHaXFV?=
 =?utf-8?B?NFRwaXdnZmsxTklvN0RJT1JicTFGbHBGTWdFY3RYa0ZBdWltbG9LQmxGVG5X?=
 =?utf-8?B?cGowSExGY2cyQkM3U3Z1RnBsQ1ZQbm1xR2o2cXlFUjhLU3M3RW5GSXlEMVZk?=
 =?utf-8?B?aldMWFVOdEZ2d0hMUWo2ajE4YnczS3Y0ckQ4MjJkOERmNlo2dVRDaTMyb1Bs?=
 =?utf-8?B?S1ZqbUlpTnpMVGlmbDlvMnQ5ZCtFZ3lubHlaNDliaThkSVluWWRZaXE4c2N6?=
 =?utf-8?B?SWIrQk9IYWRZV1l6WXZtKzVKT3JaTStGK3dPVWU0ZERFMGl6TVM0RFBWd0No?=
 =?utf-8?B?U1R5UjZsYXByMVlYUWh3MklwYm1vV0U5akY4TWRSRC9qNy9tRWlNZ1Mva2VI?=
 =?utf-8?B?dW10Vi9VTVFsdUFLNWI4RlhZOVl1bVoxdUpTSTRETCsyM3EyRmk3V0daOURZ?=
 =?utf-8?B?OE5HdGg3djFHdFNmTXVDS01LN0ZGZ01lNHdURzF6OW9TZVNTNjVFeitEQmtB?=
 =?utf-8?B?Z1ZOczhnWmlZSnZwVCtVSGVnd2xyNGRhY0JZd3JiOXNheGdrWm95ZmJwNGpT?=
 =?utf-8?B?ZXIrbnhPT3d2cGoxSkpjNkJOcU1zZVY5eFdpRGtyRWZwdVgxUkp2Vnd5T3BT?=
 =?utf-8?B?RitkeHdZL3FkMno0OUVUMTZaaW45cTI3aGw5YWF5Tk85ZURCRFU1dmY3UENS?=
 =?utf-8?B?T1dXNHN5R2ZOSVNHbU5OVmxXQ3p6NktYVUREZnpLRENRNkR2SUFzQldLbEg4?=
 =?utf-8?B?NUJPamV5R2JJWFpoR1JzQ0laRkFkQ1pOcVhuY09ieGQ5NmRYZWttSjU2c1NE?=
 =?utf-8?B?eGJlb2UwVjNXRENCT2djMi9oMUNHSEpJK1Nrd09lWHN4U1NyempXbXJtWTlT?=
 =?utf-8?B?QjhiL2doZDdvdlBjdHBUZ2p4dVFYY0tsVHpXVXlVZTFId1RjNXJVanE0Q0R5?=
 =?utf-8?B?Z3FlZmkwMVJvNFNZWFhZVnhtTUUzcjZ2VHU3YlNiOUR4M3poVUpjWmw4M0sz?=
 =?utf-8?B?bE9pSTNGdmw5MFF3T29BTlozNWI1RCtxUWloMFNhK21xT0d6RklEQUFjQzhN?=
 =?utf-8?B?OGtEQmlGYkxZRFQ0SFFBcGhEMWVFOEFVMGc3MTJDdE1FS1ZHM3BNMUJGcFYy?=
 =?utf-8?B?SmoxQlBjamYwUXdqa1pzM01UbEtId2x5ZlgwalFSZlVnN0pTWWVqQzE3dVZF?=
 =?utf-8?B?d29Tb3QwZDRkNml2UXRVY0dYQlRCZkRobk8rZWRHYlZ4TzZ1N1o5TmNnTGxm?=
 =?utf-8?B?QXJPQmxYSmdGUkZ3b3oxNzg0NlcydDlESjk3b0VzQ1pwQmxWUE5QOE1YL2FF?=
 =?utf-8?B?VkVhMXpWd0lZVEdzYytHcHVpNFBpQ1JFbTVDM3FNSnJ6TFprTTNOZlJ5dmNR?=
 =?utf-8?B?WWZKVzcrK3IwT3l6SEVEczMvR0JWMjEyZjZLRjdwQTg4R2FaQVlHV2cvU1hI?=
 =?utf-8?B?VEI2NG9nT0xuVHBhTW8wY1NvUUtjYnNTZW1Kakp2WlZsZlpNTW51MHhkTWgr?=
 =?utf-8?B?R1VZdGdSeXEwZ0F4cnhZM2dMTjdBSEUvTDVPZElLUDluay9nTU1JcU8zSjg4?=
 =?utf-8?B?LzA1R2l6bjBkS0k4cnFldWVDZG55anZIVnZDRG1oRGZlNDVRMTlHUGltbXFl?=
 =?utf-8?B?d2tvdVQyTFh2QlhsQ09SamxIVXJzYUppM2x4aXdMNFoyeGJEekxSc0NMNFRX?=
 =?utf-8?B?ZXg0c2dKaU54K0UvallXZW04bkNhcUppT21uUXN0N2ZRQWNqTzBSeUVzaXlz?=
 =?utf-8?B?dWlaNnRaWVlSeG5ORHFOOS9qUHZYcnhzS0pic3IvYjg0dE5HRWduLzFXRGl2?=
 =?utf-8?B?N2dnczNsRUd5c3UyRXF0VXdTK09sSXdxdEtXSU9jVExzRDg1K1A3THEzZTZx?=
 =?utf-8?B?bkVzSUsvdGpHeWhoUUkrcFNURHMrTS9FR0pCQ20zQVB0MTU1UEFsaGdhdEFy?=
 =?utf-8?Q?PoH+xcYI+3+8CAP6ItEt6QlgrmdE4d8h?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2xKekVlRU5Oc3N5WG5udkRyK21oMnIvZXM0aW9rZmZ0ZTZwWmI5MEdHL1RC?=
 =?utf-8?B?Zmk1d3VNMGc1aDgvY05kVExRbDk1cS85ajltazlVODVCTUN4ZGJiTmdlZFl4?=
 =?utf-8?B?c2ZGR1FjOUw4M2t2Zyt1UWVEbUFab0l2QWNPNGo5T2JQYm5aSkxIRnovVWcv?=
 =?utf-8?B?Y04vMitZUmdzR1VKTFlqeHhKVGtMNzRZWlpWVS8rUXpVdEJhYnY2ZmhzMVhn?=
 =?utf-8?B?c3J5NkRxcno0R3MzNFlFcUtQdGN0YzVDK21DNHhhY3JBTmlwd1ZDSG1ESXcv?=
 =?utf-8?B?cVpMSXRDT3oreFMrcnR1RGltUkh6bCtFY1k3a1g4Z05DVUJtMFQwMG1XRUZ6?=
 =?utf-8?B?NkYwUldpRTZEbWNQeGRYc0FnYmhISnFSMWg2dWlyOUNMaHFVdG5ZQThOVnA2?=
 =?utf-8?B?SDNrdEhYcGZxcGEwWDZCWWR4eUlja2ZsOXpXSVZ3dlNZVkxoR2FvMzhRbEhK?=
 =?utf-8?B?eU92eWE2cWZ3QlZGQ1NNSzMvYWo1OWJHZWVmejRZZlNaNmhGeFBPZUFXZkhK?=
 =?utf-8?B?MG50ZHlMckF4ZjZTL2tHMldKeDdVVlpVLysvL0RMbFFGV01EZWx1NVVBajlH?=
 =?utf-8?B?MURROG5vYjJDTDlUUTcwYkFTVHMzS0c3S1BNc1F3djlqbmtRT21Mc21kT0lv?=
 =?utf-8?B?ZWZYdnlMYVJ3a3EzRnVFbEdON1pZMDlhV2x2NEZWM2lTNGI3WEtRcklpaDMr?=
 =?utf-8?B?dEcxTzIwVjdYQXhQVUZ0SE5BT09IQ3A2TENsZU1SeW9NK3AxTkRmMlM3aENp?=
 =?utf-8?B?WlFBYlE2N3BTMks4V21wb1pIWVFaU2dlOWM3NDlKaDdEL0xJclc3dDdDSmIw?=
 =?utf-8?B?eUZFb0xUUFQ5NlRzOFZqY3BqMStCQVZTL0tVNlc2VzRqMko5SHhSM083ZnFs?=
 =?utf-8?B?RFlhU2xhS0t0V0UzS2VyREpRQ24xdE12QTgwc3B0Mm92OXY5L3puaGdsc0Q0?=
 =?utf-8?B?WlZzNkJOdG5pOWRjQVFpdzNDNnNLaS9IeGdZYnpGN1FXUVVuSHRtRDdmbnYw?=
 =?utf-8?B?TzJ1ZEczUndhcWJGQlVpVHd6SDdidlU2b2drSzl6YnNZemJ6VndQUjM0d2tu?=
 =?utf-8?B?eXRUWmJYbDNIWklCT0JMQVZ2SlZlMFZKZHVBV243S2lHbmV0L05sWGxRKytx?=
 =?utf-8?B?ZDJPWDhnSVhtSkQ1TFJueXpqdm5GcGN4Y29RLzJIa2p4SXAva29FQlA2QzJu?=
 =?utf-8?B?VStDaGlqWXcrZ1hpbnNPWTJmbE8wY2l6dXVlWUNHaGhzRDVweTQzR1V0c3Bi?=
 =?utf-8?B?ZWJpcmdyV092OU82ZWZlRTNsOC8zWXEvTi9JVVRLallKMFNaTkJvRDJxM0NR?=
 =?utf-8?B?NnN0UHI5WVpIanBJOWVGKzlNeFc0Z09sRWYzNVhjcUMxN3QrVHlaMzJXWjdx?=
 =?utf-8?B?YmovUXdQWGRyL09DbVVIdTh1RUFQQnR4SkhHRndsRExRK1RqYjBLdFlQcy95?=
 =?utf-8?B?ck9rVFF5WmFsaUtqUHdBRExCUVZqdHIyd3NxZnl0czRvR08wRlNSWkJjMEhQ?=
 =?utf-8?B?TW9yVTQzazZSejAraFc4dDJSRkZXUU5kRmFTcHk1aW52S1o4ZyttOHorSkE1?=
 =?utf-8?B?MWlzZ1FCU0xoVXhMbWt3YVFmaTU2WWwyRzF0YmNyVkxFNE1iSkRYSHBzYzVC?=
 =?utf-8?B?M0JkekNkSmY3MHZnSzluWnRvYnlyc2pndmp2elBZdy84Z1N0U25UTzZVakho?=
 =?utf-8?B?eDJlQk9KRE9ma25XNjFoajNLblF6ZVV6S004YStZT3hqenFhL2kzakMrYnNM?=
 =?utf-8?B?RnFnUHc0MjJYSjd3MXJacHA3QWlNY25QcmNOb0lleVhGcmN0cHgzS1RGOXVm?=
 =?utf-8?B?UGxmTlpQbjJEZ3FMM3A4QmdzSUl5S3VEWlE4SktzeWltZEJxbmVzUHlMOHMx?=
 =?utf-8?B?TllweGtKbnVoZjlQRnRmRVdreXoyQ2R4S0xjckJHZm9KbjVkKzRwdDdvUTNu?=
 =?utf-8?B?VFBWcURMSGxmZmVIZWk4UkFkR2Q2cis5OXdFR1hwUkUvMGJrbFZwZ0pjYXhU?=
 =?utf-8?B?MUdkVHhlbndsNTBqeEZHQ3c0ajdRMWMwWVVRUVN6Y0pOS3JDaVlXQUdXYkhP?=
 =?utf-8?B?N056VGE0SVpuaHFWNS9tZVloTDBFUCsxTkhFU1FOMUZMQ1NVOVZ3cnArWUlz?=
 =?utf-8?Q?GjiPdaw+/1zbjMBYmZu3ywklW?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <287FF422FE92034196E6391E9F3F4054@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f02d40-7855-4e5a-7563-08dd22fecaba
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2024 03:06:27.4681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJ7KC9hg97t83+3UWyOMc4zpHB/OeBLEl6Zy+WF6DuMQXDBz1EmkgQluPtDYIprUatWqiba2T5PnU9Zgu3P8ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7905

T24gU2F0LCAyMDI0LTEyLTIxIGF0IDIxOjIyICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3Bl
biBhdHRhY2htZW50cyB1bnRpbCB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBj
b250ZW50Lg0KPiANCj4gDQo+IE9uIDE5LzEyLzIwMjQgMTE6NTQsIEFuZ2Vsb0dpb2FjY2hpbm8g
RGVsIFJlZ25vIHdyb3RlOg0KPiA+ID4gaGRtaUANCj4gPiA+IA0KPiA+ID4gQmVzdCByZWdhcmRz
LA0KPiA+ID4gS3J6eXN6dG9mDQo+ID4gPiANCj4gPiANCj4gPiBUaGFua3MgZm9yIHRoZSBncmVh
dCByZXZpZXcga3J6ay4NCj4gPiANCj4gPiBJIHdhcyB3b25kZXJpbmcgaWYgaXQnZCBiZSBtb3Jl
IHN0cmFpZ2h0Zm9yd2FyZCB0byBqdXN0IHNlbmQgdGhlIGJpbmRpbmdzIGluIGENCj4gPiBkaWZm
ZXJlbnQgc2VyaWVzLCBpbnN0ZWFkIG9mIHNlbmRpbmcgYW5vdGhlciBiYXRjaCBvZiAzMyAoYWN0
dWFsbHksIDM0LCBiZWNhdXNlDQo+ID4gSSBmb3Jnb3Qgb25lIGNvbW1pdCBhZGRpbmcgdGhlIERE
QyBiaW5kaW5nLCB1Z2ghKSBwYXRjaGVzLi4uDQo+ID4gDQo+ID4gQ0ssIGFueSBvYmplY3Rpb25z
Pw0KDQpJIHByZWZlciBrZWVwIGJpbmRpbmcgYW5kIGRyaXZlciBpbiB0aGUgc2FtZSBzZXJpZXMu
DQpPZiBjb3Vyc2UgeW91IGNvdWxkIGNob29zZSB0byBzZXBhcmF0ZSB0aGVtLCBidXQgaW4gdGhl
IHNhbWUgc2VyaWVzIGlzIGVhc2llciB0byByZXZpZXcuDQoNClJlZ2FyZHMsDQpDSw0KDQo+IE1h
eWJlIGp1c3Qgd2FpdCBmZXcgbW9yZSBkYXlzIGZvciBvdGhlciBwZW9wbGUncyByZXZpZXcgYW5k
IHRoZW4gc2VuZCB2NA0KPiBvZiBldmVyeXRoaW5nPyBZb3UgY2FuIHNwbGl0IHRoZSBiaW5kaW5n
cyBzZXBhcmF0ZWx5LCBhbHRob3VnaCB0aGVyZSBpcw0KPiBhIHJpc2sgd2Ugd2lsbCBnZXQgY29u
ZnVzZWQgb3Igd2Ugd2lsbCBmb3Jnb3Qgd2h5IHRoZXkgZ290IHNlcGFyYXRlZC4NCj4gDQo+IEJl
c3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCg==

