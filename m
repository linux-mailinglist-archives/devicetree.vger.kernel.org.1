Return-Path: <devicetree+bounces-146527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA27A35515
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 03:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E2527A19DF
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 02:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BA414884F;
	Fri, 14 Feb 2025 02:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Ajrzgfrl";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="Mzjrvp+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E80B13AA27;
	Fri, 14 Feb 2025 02:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739501610; cv=fail; b=V1f411N5aZql5NPe0zBWms5XHHehs/aGw9bLZbvTskNb6jNLsDsAXmICXPFhuYN6xOyLAQ+rZlUTZGYDYPpCKWw3FpCSmGK29IP5+Z01W5yqsV3xss6/aUMrGVYixfMKmTU0MaAdkfTK9tX+F1JdXDUO6I9prF2Yd/ivsxuea6Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739501610; c=relaxed/simple;
	bh=ggYPDfy2xTwpDHaKEyVicLLTKaaGQD8WgrI66APkpeg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=mUbu2ueqGKGixglskNUQe6FylK7+RCQx5TL/ahFC9eNUmsPpW/mRfP8LcehJxAwPGdygI5/GanNdPkyIOJluKXHbjVCIeGtjPuMj5LdhWzTAaHFBjUnzcjb21o4tJEBvzwhA737bEY83xswAiErFM8Xe/vW81CfpiVzpZCTBlm8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Ajrzgfrl; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=Mzjrvp+f; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: daa6a556ea7e11efbd192953cf12861f-20250214
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ggYPDfy2xTwpDHaKEyVicLLTKaaGQD8WgrI66APkpeg=;
	b=Ajrzgfrlo5nznKc5u2QYXra+KikMg09VX1fMU6F95C/xgc2R97n2hM1aY/IDllIXF44YnuzGSIxCFpyc+O17jKXS6asEyip64VU7vMcRj1KqrE6z6nQYeN9qqkSQpQ7QOAcsU2KlTLGii5Y1ZZaWQpzwA/7sbGZ0cOMN5UTNdus=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:11cc213f-e514-47c4-9bd8-16964fcadbd9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:83ad72a1-97df-4c26-9c83-d31de0c9db26,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: daa6a556ea7e11efbd192953cf12861f-20250214
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1705997290; Fri, 14 Feb 2025 10:53:22 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Fri, 14 Feb 2025 10:53:21 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Fri, 14 Feb 2025 10:53:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D5T9tkIkVRe/uBgf9TuM9b7JZ3AFVlgthuJEPVCC3sq07derApp6KFPUg8qvZsjDw1tLpk9zxjRYu6Jxlt3ErDyXXFwWLMVLAsysa7NDQcWRumbVCpV9d+uWcOenea3P6FJthqTrYYeAcMPzFgcc++Y08/3R15WF7IJZeyqvTKCAVrYitQOTX7cspTTKmHUWVPDeoptPBbTKvdKJibGFjNGf6W0Czju9+3ERTneY+aL4uYcgUbnbQ3dDWrEGoRl3RTF9TH7AHpKN40QpdBWA8Om0k3phHl3LxVaMnxSuUwFkRvvniVt9mxGN/HkqAkvbdJROy3jTrS6ihEyy7AWcGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggYPDfy2xTwpDHaKEyVicLLTKaaGQD8WgrI66APkpeg=;
 b=CBFNqbVGJArU5sMHtV6u94XpBn5U08fI5VFBZTlSFE3HfNmLzgyZqcLEMq11V9uKvajvUEpS8qHz4wYPWIeyhL4Gz6SKtd+hd9pMv+sONZfJhVMLSYwlk0hpNiRffLE4bPUUIk0Y1J9NtuYSlzMT1RdVIAYVzd28ijfPrF7vh0hOgdfp+nkvozyfQ4nZ7L+bHtjyoN1btzXwVS0VH9gVuljTtlFFmOWY4Vko4pNXYFbX/ig3+9PKmaBS6Uyr5Aulo4jcT0rU0MKJjNS0MZzoXJ0VcT7QlcGKU6adk320CJtc1mJnsdjd47e1PU6DI7RUvYXFXvo3j/skdFdlbCSHLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ggYPDfy2xTwpDHaKEyVicLLTKaaGQD8WgrI66APkpeg=;
 b=Mzjrvp+f6Fmr9kNmOddmhu1PSFqXvqiXuwzEho5fI11lIAg2sTpm5cQIO37FgeAFwx6mvTt1DcrpUqSgDqNbBeuLLAR+lYhx56Qnfkdow/WCeFU0NKO2RfG4we+s3omtU06nVVGY1Wat33RaSm6Oca0RLAhsxs6WB35vJQt2HM4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYZPR03MB7276.apcprd03.prod.outlook.com (2603:1096:400:1fa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.12; Fri, 14 Feb
 2025 02:53:18 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8422.015; Fri, 14 Feb 2025
 02:53:18 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
CC: "robh@kernel.org" <robh@kernel.org>, "jie.qiu@mediatek.com"
	<jie.qiu@mediatek.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	"simona@ffwll.ch" <simona@ffwll.ch>, "mripard@kernel.org"
	<mripard@kernel.org>, =?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
	<jitao.shi@mediatek.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "kernel@collabora.com" <kernel@collabora.com>,
	"dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	=?utf-8?B?TGV3aXMgTGlhbyAo5buW5p+P6YieKQ==?= <Lewis.Liao@mediatek.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, =?utf-8?B?VG9tbXlZTCBDaGVuICjpmbPlvaXoia8p?=
	<TommyYL.Chen@mediatek.com>, =?utf-8?B?SXZlcyBDaGVuamggKOmZs+S/iuW8mCk=?=
	<Ives.Chenjh@mediatek.com>, "airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?=
	<Jason-JH.Lin@mediatek.com>, "junzhi.zhao@mediatek.com"
	<junzhi.zhao@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH v6 14/42] drm/mediatek: mtk_hdmi_ddc: Switch to register
 as module_platform_driver
Thread-Topic: [PATCH v6 14/42] drm/mediatek: mtk_hdmi_ddc: Switch to register
 as module_platform_driver
Thread-Index: AQHbfHka6jM462MkEkaX8K/AieX41bNGHkAA
Date: Fri, 14 Feb 2025 02:53:18 +0000
Message-ID: <bbf04718101c47125ad20a9ae951802f0beb61fe.camel@mediatek.com>
References: <20250211113409.1517534-1-angelogioacchino.delregno@collabora.com>
	 <20250211113409.1517534-15-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250211113409.1517534-15-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYZPR03MB7276:EE_
x-ms-office365-filtering-correlation-id: 54bebf86-d26f-48d2-3ff8-08dd4ca2bc86
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UWxBYTdnUTRsSGVRL0NRam9hQXZzS1VLTUNGLzRIN095RFVLeFRwd0tIc2h2?=
 =?utf-8?B?SW9GVmZhZnR3NmkxR1EvUWRiTk4zbWZTaVpLemwwNC9lREZRSCtKQjRBak1k?=
 =?utf-8?B?djlMc2FUcnNRTWt5ZlZiK1lSMmVjQUtIR25DYnI4bXptS2dIdzB0N0xGQ3lO?=
 =?utf-8?B?WmpaYk93YnNWL25yejRLUkZNZnRJeHkyOTdJVk5xS1hDM1hNU1QwM0l0THZI?=
 =?utf-8?B?WlhqQnJudnRYOWVVODc4ZUkwWGIwTHdwTHAyVGIwMWc0WldzZ1BNN2FnYVQw?=
 =?utf-8?B?N1VZUjhhZzRXZUVndjUyOWtUeEdOTExDd0xCTXU0ZWhMaUh3NVpkRmFhQ2tB?=
 =?utf-8?B?SVpTMzI3Nit1aHUrUk51dEVsOXFoR3JFQVNRamJZYzRTQmZjL04yb3VKZXBr?=
 =?utf-8?B?SDVEZExINnJSeW80MnB2V2lKa09nL3lObHdzN1gxRUhnL0xRMDgyS3k2L0Ju?=
 =?utf-8?B?eXFqNnFqT0VPS0NUSEZ4S1l6cWNjZnpSUThuQkdSazh5VUZYNTFNMFlscUJX?=
 =?utf-8?B?Sy9yM1NHWVNYcXoxWCtuam03SXowUEtLS0NlR29jRWpHMkdCK3BVbW1iMTkx?=
 =?utf-8?B?YzZkaEJrOEtUTVFHQWFsb2hJSEtXRmNGSnhKQ0dyZERLRUlGR2lrdEpiS0hh?=
 =?utf-8?B?NS91dnFteXJPU0lLZnpSZ0tVcWlSQnh5dGR2NnI5ZVgyUVVqRzcxSWdIZjhJ?=
 =?utf-8?B?Q29YVzl6djAvc3lrQWNDRkFaNGcvYnhQUDQvdDg5b2d0Qmp2azVadzB4UHNL?=
 =?utf-8?B?R3FpK2xNdFJQU2htamxHdWFvcG8rTE4xbmNrNnhhVXduTktyQmVrYVc2Rjkv?=
 =?utf-8?B?Z21HS3VSSHdyV0NUd2JFTGQwNmY4eGYwcjRRQmtzK3hyU1VPQjFCeUpQUjVw?=
 =?utf-8?B?bys1MjFqMDhML3B3aUpKbXlSblRyeEc1UjRYd3dQNEIvWXArSThicS9PS2kw?=
 =?utf-8?B?Vm1TZmR6L3doa3cyWEwzVXVjdUhrUVJSNnJDZGhYZGRGVytKcGhUeUNOdVhW?=
 =?utf-8?B?MytNK1dkM2lCWEhmUGJueU9JRnZ4eXk5YW91SmNrTkVNL1NCSWRPcElsVDNk?=
 =?utf-8?B?TTR6di9FdzBONXNuN04xTmMxQ2ZmbTF5MFAwUWpQYkF5TThsZVJsb0kva25Y?=
 =?utf-8?B?SWoyL1hGb0pZUnFRTGtZWG45MTkzUkwvOUJxemJpZ2Q3aC8zS0dZMkkwR1ds?=
 =?utf-8?B?SDQ5NEsyWjA3a1lBWk10eXN5dU5MNmtkY1BMMVllWXJwQUZjMjN1NTRhM2tY?=
 =?utf-8?B?Rks1T2k5Q1lPeFBxd3BQVy8wY2pQRHVKeXllNkxhQUhHMTJrY3RINFpJeDlT?=
 =?utf-8?B?bnlrcVo5UVdqTWdsdDFTeW9xNGQxRjBycS92WkJ5d0pVYVdzRi9TT2paazhB?=
 =?utf-8?B?ZHkxN1NKd3NhclhxWXJXMm9mTlkwMjlBcVA1SG9na09XV1hQZnB5dkVDKzhO?=
 =?utf-8?B?SDBOMVlxUGpuTUR2ZUxBdU1RWm12bUVZaGhZSVRQR1lnVkFxMnZXekpmc2VR?=
 =?utf-8?B?b01ZMjJqVCtJbXgvM2IzSVE1Ukdxa1g0dXRvbTFDc1U3QjAzQUg2aVI1U0dn?=
 =?utf-8?B?ZDFNa3VES2pRWGowWWdrTmplR0ZoekZrcStXL3Y4ekw2UWJkZ0dxWGhudU1P?=
 =?utf-8?B?MGZNaklQZ1FvTUtvTjdrUXYrZXZPWk1oeldHazA5dXg3Q0hhRUkyb1U4bVB6?=
 =?utf-8?B?SUxnaTFHSDlycGxxeHo1Y3ROUUNZYTNlUVZhN3V2dVBGZE11a1dSaGxUaUhF?=
 =?utf-8?B?M3o0MDZQam9Nc0VlaWEwQUgxM2tYT1BIa2NYaWhHd01qTVIvajU3MlpKUmRK?=
 =?utf-8?B?WXpJd1ZvL3VzMVYxcmk2OUsxK0UrWjVBWWVxYVN5UFAya1FLZzNyS1FIZlpD?=
 =?utf-8?B?dW1iZ0t1TFVHcWxRUnhjVUZnMXhJSzlTKzZlUy9mM0F3WnVzT1hybHB2QjdE?=
 =?utf-8?Q?7Z7ASIIo9aDkyl4g4U6j0cWLCP1R3bv+?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjRhRWhxM3ZMTmJIN2NKM1dKVWZiaEFGbnZKbVdYZC90ckR0c0NBVFZiT1Av?=
 =?utf-8?B?WmpKTHcrVVdKcEV2bXQ5aHlpSzQ4NVA5TkJ1L1pnWWpTUEJhYjBLOW1ha0k4?=
 =?utf-8?B?TUdoTFBsTUp5eExtelNrS2I4L3k1THc0bEtYRGxBT0VIaVU2MjZTOVQwMzNz?=
 =?utf-8?B?ZmV3c1NrMWMvY3lmbW5LYnRVQWJJaHZVYkViV2l6TldRNG5rWWtwUU5YeGxH?=
 =?utf-8?B?MHNyazYydHc3UmNKMXZXMUR2aGRuaFQvV243ODdEVkdYd2xBQ1I0STc3d0Zy?=
 =?utf-8?B?SUs5NXBNVVQzS2M5MTlTenVZa0ZqcnNjSWFKVnhyU2pMMkJuL05ibFNYbXVP?=
 =?utf-8?B?REZMWUhlNG9JZjZlSWF0cGt6MkJZVXE2dTNwWTRXM2RWQ2tTSFExanpLMjdU?=
 =?utf-8?B?WGlIbWpxOEZvRTJMc1Z5T21xbm1wVDFVWHFwazIyaVViZ3l3Q1VRNUFZNEUx?=
 =?utf-8?B?a3pzd3BOTmRZcnFVb25vdGcxc0RvcDR6eCtJNjlEdTBsWHY0azB1YVNVNVpU?=
 =?utf-8?B?YnQ5SUpBd1Jka1NLQVNnbmsrdVBzV0x3TVgvQUp3YXdEZVJRaWU1cnF3akdN?=
 =?utf-8?B?cXB5ZUQ0NFFWTGF3WjQ3OVFTOWNCQ09vdlE5UEh3bUlSMm92L3ZlVGJUeDNp?=
 =?utf-8?B?Y2RSYW9SR2JHNU56WnU5YjBpK1Q2WWpQTEVnbE1CMnlDNDFCeHJIUkdaRU1m?=
 =?utf-8?B?bkk4WTg0eHdpaEN2elFCWFB4VklwZWZ5WnIvUldQMFpQeHVHQ0FiTmxJYm5L?=
 =?utf-8?B?TU1nSGE1SlFmb0dyRTZrS01vS3hySk1wQ0ZvM3JsUjVrekRLUnBZUHpxaWFs?=
 =?utf-8?B?OXB2c3A4VVNQajNtV1RWQXpzMnZYbmI4T3pHbnlPQ2pQdjZKVHVqblQ2YjNz?=
 =?utf-8?B?WXhoTHBHbE92RTBSRHRncXQyM1l2UGJvYlY5KzRQQ3Q3VjBWY3YzUHllSlNJ?=
 =?utf-8?B?dGVmT3VIcFdtdkluTXlEVVcvQlNCR3RjcW42Nk4zTzd5SnBsRkQ1dnJTeTJs?=
 =?utf-8?B?dis3ZEVlcjVEL3NselNxcTZCbURUa3N3RzByWmN3bHBKdVlzRExPenRTcCs5?=
 =?utf-8?B?VjBUNG5IMU82ZTVjOTJCU05xT25RV1VlMjhUL2YwUUhCZlNtUFZwTy9OVVI1?=
 =?utf-8?B?dUtsM25MaFZNcnFxUG1ZUmI4cnNadXMzSUlPSE1qaVZrS3Y2ZWo3OHR5TTA1?=
 =?utf-8?B?WUxFUEtUL2J5VEtCSjdEbDNDd2RwcjYraWUzZE1WR3o4K2NaT3Bobk1ldlU5?=
 =?utf-8?B?RWxHSWFkT3NyMnNzRC80L1UvMW5RUWxoQkN3ajlIRy9ody93YldZTVo1bUM0?=
 =?utf-8?B?SUFPaCtLSTdRVkFrdEFERDRreUdsb2VOZ1Q2WmxvVGhRdytnTTJ5YlRIV095?=
 =?utf-8?B?MkJiaWJuUlU4ZWU0ekVGS3JVaUV3VUhBTjJVSjNtRHY1aVpVR2hFVDY4aXhW?=
 =?utf-8?B?V21IMTFwSVJ6alBMd1p0RXdvQ1QwZ00zNzQ2akxQUlJrUFNxeHdoUjJ1UUph?=
 =?utf-8?B?UXptWEhEd1R4emxHVWo5eEUyWHZSZGlrY0FZbGJsanViNXR6bkNyanIzQWhK?=
 =?utf-8?B?amNyNGRUTXIyUEpmRDkrYUdzclBRT3FUVERmcnh2S2FoQzNwT3l5Z0g0L3Vx?=
 =?utf-8?B?Y29VK2FRbWFxcW9uNDdYZ0NwWC9XeExSRmJ1ckp1bHNVbkVBN1RwRTBHdU5u?=
 =?utf-8?B?dnNPd0tocnV0NzFmalgxK2Y0WEtsc1pVS1kwL01PN2xwT3V3aHppYkNRQlAy?=
 =?utf-8?B?enViWHJON3VjRVFnUGhkeGFqNVcvUVJWMTNnN2Z4NUVoQW56dTFRTmtDYlpm?=
 =?utf-8?B?SGhxdXNnelNTSXBWdjhMaUtQN0RmcjBpOThaN0tscWdIak1yckNLYXovZ1Fh?=
 =?utf-8?B?QXBuY1pCbzQ3Y1pwRHlSckJ0UHg2MG5PRVgvQ1Nwa0owV3RkY1RkbndDalFq?=
 =?utf-8?B?U3ZOV0NpMHpOdlhXdDF1bElrVThHeFBycmxLMTdreVlJRjU3TmoyRGh2T0s3?=
 =?utf-8?B?SkFTNGZ5Nlhud1BJY3JYWWhuQnBpbWcxTW02VlNVUWlFbUoxZXdyYk1MemJB?=
 =?utf-8?B?Qlg1bGVLdWFDSVdiUExVUXZvS29uQ2YyVTFWWHdnbnlrVkdSNUdtWGdjMWNa?=
 =?utf-8?Q?ZOfS2KFbTfPnIdUeR7xE13rpq?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5493F2C5EDCB5C45803A64E00586BEFB@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54bebf86-d26f-48d2-3ff8-08dd4ca2bc86
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 02:53:18.7557
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0axvXoxSYP43YX1fXLdFNSnL1eXLeyV0YaxxPNMpLwRD0hKPMoGIdn3pPODUH6A7fDSvIIMi32hx9r6vyE9rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7276

T24gVHVlLCAyMDI1LTAyLTExIGF0IDEyOjMzICswMTAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtz
IG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBv
ciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbiBwcmVwYXJhdGlvbiBmb3IgYWRkaW5nIGEgZHJp
dmVyIGZvciB0aGUgbmV3IEhETUl2MiBJUCwgYW5kDQo+IGJlZm9yZSBzcGxpdHRpbmcgb3V0IHRo
ZSBjb21tb24gYml0cyBmcm9tIHRoZSBIRE1JIGRyaXZlciwNCj4gY2hhbmdlIHRoZSBtdGtfaGRt
aV9kZGMgZHJpdmVyIGZyb20gYmVpbmcgcmVnaXN0ZXJlZCBmcm9tIHRoZQ0KPiBIRE1JIGRyaXZl
ciBpdHNlbGYgdG8gYmUgYSBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyIG9mIGl0cyBvd24uDQo+IA0K
PiBXaXRoIHRoaXMgY2hhbmdlLCB0aGVyZSBhcmUgbm8gbW9yZSB1c2VycyBvZiB0aGUgbXRrX2hk
bWkuaCBoZWFkZXINCj4gc28sIHdoaWxlIGF0IGl0LCBhbHNvIHJlbW92ZSBpdC4NCg0KUmV2aWV3
ZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+DQoNCj4gDQo+IFJldmlld2VkLWJ5OiBB
bGV4YW5kcmUgTWVyZ25hdCA8YW1lcmduYXRAYmF5bGlicmUuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bj
b2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9NYWtlZmls
ZSAgICAgICB8ICA2ICsrLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1p
LmMgICAgIHwgIDIgLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5oICAg
ICB8IDEzIC0tLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRt
aV9kZGMuYyB8ICAyICstDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMjAg
ZGVsZXRpb25zKC0pDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19oZG1pLmgNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvTWFrZWZpbGUNCj4gaW5kZXgg
YmRkM2EwNjJmNzk3Li40M2FmZDBhMjZkMTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9NYWtlZmlsZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvTWFr
ZWZpbGUNCj4gQEAgLTIxLDEwICsyMSw4IEBAIG1lZGlhdGVrLWRybS15IDo9IG10a19jcnRjLm8g
XA0KPiANCj4gIG9iai0kKENPTkZJR19EUk1fTUVESUFURUspICs9IG1lZGlhdGVrLWRybS5vDQo+
IA0KPiAtbWVkaWF0ZWstZHJtLWhkbWktb2JqcyA6PSBtdGtfaGRtaS5vIFwNCj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICBtdGtfaGRtaV9kZGMubw0KPiAtDQo+ICBvYmotJChDT05GSUdfRFJN
X01FRElBVEVLX0hETUkpICs9IG10a19jZWMubw0KPiAtb2JqLSQoQ09ORklHX0RSTV9NRURJQVRF
S19IRE1JKSArPSBtZWRpYXRlay1kcm0taGRtaS5vDQo+ICtvYmotJChDT05GSUdfRFJNX01FRElB
VEVLX0hETUkpICs9IG10a19oZG1pLm8NCj4gK29iai0kKENPTkZJR19EUk1fTUVESUFURUtfSERN
SSkgKz0gbXRrX2hkbWlfZGRjLm8NCj4gDQo+ICBvYmotJChDT05GSUdfRFJNX01FRElBVEVLX0RQ
KSArPSBtdGtfZHAubw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYw0KPiBpbmRleCBk
YTcyNTE4MmYwZGIuLmU2NDhmYjU3MTRlNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19oZG1pLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19oZG1pLmMNCj4gQEAgLTMxLDcgKzMxLDYgQEANCj4gICNpbmNsdWRlIDxkcm0vZHJtX3Byb2Jl
X2hlbHBlci5oPg0KPiANCj4gICNpbmNsdWRlICJtdGtfY2VjLmgiDQo+IC0jaW5jbHVkZSAibXRr
X2hkbWkuaCINCj4gICNpbmNsdWRlICJtdGtfaGRtaV9yZWdzLmgiDQo+IA0KPiAgI2RlZmluZSBO
Q1RTX0JZVEVTICAgICA3DQo+IEBAIC0xODA0LDcgKzE4MDMsNiBAQCBzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX2RyaXZlciBtdGtfaGRtaV9kcml2ZXIgPSB7DQo+ICB9Ow0KPiANCj4gIHN0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyICogY29uc3QgbXRrX2hkbWlfZHJpdmVyc1tdID0gew0KPiAt
ICAgICAgICZtdGtfaGRtaV9kZGNfZHJpdmVyLA0KPiAgICAgICAgICZtdGtfaGRtaV9kcml2ZXIs
DQo+ICB9Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
aGRtaS5oIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmgNCj4gZGVsZXRlZCBm
aWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IGU0MGJjNDY1MTk5NS4uMDAwMDAwMDAwMDAwDQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5oDQo+ICsrKyAvZGV2L251bGwN
Cj4gQEAgLTEsMTMgKzAsMCBAQA0KPiAtLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seSAqLw0KPiAtLyoNCj4gLSAqIENvcHlyaWdodCAoYykgMjAxNCBNZWRpYVRlayBJbmMu
DQo+IC0gKiBBdXRob3I6IEppZSBRaXUgPGppZS5xaXVAbWVkaWF0ZWsuY29tPg0KPiAtICovDQo+
IC0jaWZuZGVmIF9NVEtfSERNSV9DVFJMX0gNCj4gLSNkZWZpbmUgX01US19IRE1JX0NUUkxfSA0K
PiAtDQo+IC1zdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyOw0KPiAtDQo+IC1leHRlcm4gc3RydWN0IHBs
YXRmb3JtX2RyaXZlciBtdGtfaGRtaV9kZGNfZHJpdmVyOw0KPiAtDQo+IC0jZW5kaWYgLyogX01U
S19IRE1JX0NUUkxfSCAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pX2RkYy5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pX2RkYy5j
DQo+IGluZGV4IDA3ZGI2ODA2Nzg0NC4uNjM1OGUxYWY2OWI0IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWlfZGRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19oZG1pX2RkYy5jDQo+IEBAIC0yMCw3ICsyMCw2IEBADQo+ICAjaW5j
bHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4NCj4gDQo+ICAjaW5jbHVkZSAibXRrX2RybV9kcnYu
aCINCj4gLSNpbmNsdWRlICJtdGtfaGRtaS5oIg0KPiANCj4gICNkZWZpbmUgU0lGMV9DTE9LICAg
ICAgICAgICAgICAoMjg4KQ0KPiAgI2RlZmluZSBERENfRERDTUNUTDAgICAgICAgICAgICgweDAp
DQo+IEBAIC0zMzcsNiArMzM2LDcgQEAgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtdGtfaGRtaV9k
ZGNfZHJpdmVyID0gew0KPiAgICAgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0gbXRrX2hk
bWlfZGRjX21hdGNoLA0KPiAgICAgICAgIH0sDQo+ICB9Ow0KPiArbW9kdWxlX3BsYXRmb3JtX2Ry
aXZlcihtdGtfaGRtaV9kZGNfZHJpdmVyKTsNCj4gDQo+ICBNT0RVTEVfQVVUSE9SKCJKaWUgUWl1
IDxqaWUucWl1QG1lZGlhdGVrLmNvbT4iKTsNCj4gIE1PRFVMRV9ERVNDUklQVElPTigiTWVkaWFU
ZWsgSERNSSBEREMgRHJpdmVyIik7DQo+IC0tDQo+IDIuNDguMQ0KPiANCg0K

