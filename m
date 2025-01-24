Return-Path: <devicetree+bounces-140729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D65A1B241
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D06D1881AD9
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003761D6DC8;
	Fri, 24 Jan 2025 09:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="lrIgh1CK";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="stMFjOt6"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4D91D47BD;
	Fri, 24 Jan 2025 09:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737709368; cv=fail; b=dIBSuAAW7AEKbmlAqdLYT93cF/yf1ISWuPCaCOqhCgbGD1ovjs0Ic9MQYEfBD8gh1LJjNuTZV8Oz8EbLlzYqZ/pqo1C7YFK9q6Wtj7F4QUjjFuoNh74i1fgB32HDDZpMz32W8bUy4PRJQ0g9A5o4HALri5PhcPqwUYf7golf9/E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737709368; c=relaxed/simple;
	bh=5AMtabVOToqDu2TDymnGmfpoBjCOGp6xmhdqYG0GTi8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=c30TcVtpb/pGL2Lpwgsp3bChx3iATlRpLooD4fgazWpr28DTgtaIqcN9q6P90u2/bitnl9jMKEtFegX/MO01WoFsjNPlEJOmuMNWCR/PX8XhRAv5P4BNuJReKNox4d62zSe5C9wqh3ZmvhA6MOd4lzrOOewnkyD9MzLchtXbuIU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=lrIgh1CK; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=stMFjOt6; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: f6b18dfeda3111efbd192953cf12861f-20250124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=5AMtabVOToqDu2TDymnGmfpoBjCOGp6xmhdqYG0GTi8=;
	b=lrIgh1CKYYnmwa0tK4tc26asEWeQVAGj4TGIWkytKBqYFWtPqxRFTi8QcLQXKFQJ7u2GOl7RHbC0wBFbqqH/vLqK0YMASB0IASJfWAM4tEcjtg0i9nsPvI2BirvCT5GzyJXO4ipKziGsHgfI2MA8bQkJpVgf1JV/s3GymqD3/pU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:00864454-0d79-4595-bebf-c1983ab7776c,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:5339a97e-427a-4311-9df4-bfaeeacd8532,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: f6b18dfeda3111efbd192953cf12861f-20250124
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1397564169; Fri, 24 Jan 2025 17:02:39 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Fri, 24 Jan 2025 17:02:38 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Fri, 24 Jan 2025 17:02:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RucUr5cARe3tApkGKGfurIAFmqa8cfDUXuCmm68BK/VCBADjGmVcJ08UzmPV9ud4/WfSQ1O7mKlwP1XcvQu3NMNa+yCswkrN5ewvbH/ckUp711LhMw53Kl5lRt4l6Eel09Lao3kbh8WjsHvE0sqBceP0pRKjJNpGJxwsgbs9jVQAzFaDRKl20oCLjKvdKGcCfE2p+2YdD7sgoxEEPpDzLWHgLlLj8yaoermz1Kq3OY284bYFghud4xJE8eWe/0KJPP/V0YNQqlBWuK9WKziyVn/7VObTkaoMqAMRb7mTasqqDT70LlphGxPPKUrl5ADLOr5HL+1X7iP9Xycqf6Xsdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5AMtabVOToqDu2TDymnGmfpoBjCOGp6xmhdqYG0GTi8=;
 b=AdD/nQelySSZaPRJHnBpviG+HthBAWsG2QjO0mZuidynbP1c62PNJnPFUFqx20w/8O8joMD8Amq9GhvWGSMRTaL7G8Cn1aw8zdikVb3tLifF7gt6zgYO22NFjjOcBBYOAUNhd2gcuxcrInzWTMl7JC6gO2XxxoQacabuqMcEw1mJy+hsVbjB4Gw8fftW7P4EUGaPw1b9+7iFWmX3gu6a8dAiQF7ba+z68o7GWQP22NipDiMqi5oB9h/ChyrJ2sKyIrZV6YjKrFEeT8rGG4ZbDswXJCNVB0KqRSUncwAAuVKB7MtxZTQU8CZpfHN/qoPJhK57WE/FTrUARimidpjXQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AMtabVOToqDu2TDymnGmfpoBjCOGp6xmhdqYG0GTi8=;
 b=stMFjOt66fV90eDOsdZrfo5xi11oHJcryHbySwVGV5DaBuM6CyO6CRPSY5I7onauP2/BDsnkhXKrzmAX7UAagVnOPv3G5zWhsO/qVl71j2CC6WT8rnEovAwHaYiyBh1hw8382mhoGUhpI9+k+AI/3X7Ot0vyhOaKWUSIsv2wPy4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEZPR03MB7418.apcprd03.prod.outlook.com (2603:1096:101:133::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Fri, 24 Jan
 2025 09:02:35 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%4]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 09:02:35 +0000
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
	<junzhi.zhao@mediatek.com>
Subject: Re: [PATCH v5 04/34] drm/mediatek: mtk_dpi: Move pixel clock setting
 flow to function
Thread-Topic: [PATCH v5 04/34] drm/mediatek: mtk_dpi: Move pixel clock setting
 flow to function
Thread-Index: AQHbZcrw+TUnk8I96EihwvYN+5CFC7MlsdMA
Date: Fri, 24 Jan 2025 09:02:35 +0000
Message-ID: <544e0cb0944ebed6b0315ed1e3972d0112b4de51.camel@mediatek.com>
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
	 <20250113145232.227674-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250113145232.227674-5-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEZPR03MB7418:EE_
x-ms-office365-filtering-correlation-id: 693b5a07-4a35-4ff0-c6ad-08dd3c55d83c
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c3Bxa2lqNkVObnVsREVNN0ZJcnNKOC83YkloNjhOdGVwRTZnck5RSmdtdGZD?=
 =?utf-8?B?cmNHWEhNaWRsQ0xRS01XZ1hoNThnajBFcVJSSXBKVitwbVpUL0s4cTJROGpi?=
 =?utf-8?B?bnJNenNZZStuS054dEFtNkVBWnJUSzBRVVFQNmd2NVkxcU9YUFFSYmRJbDRF?=
 =?utf-8?B?bjJGVUh4VHVnWk9GNm1DYmJVUFVzZEpMb2Fic0JOWUtDSTZLRVdnTVYxWExl?=
 =?utf-8?B?TUVhYkpXMWJyb25JN0lPVXU3R1hpeHBFY0JNdElhc0d2bE50WnlmbVZNM0hM?=
 =?utf-8?B?Q3ZvUHFIdEFrY3lXNURyNUk4YWhUNkc1Ym85Z2ZGRWRvZzErOEVZS0Uvdk1m?=
 =?utf-8?B?MHRwOUtweUZZdGxVaDYzUXRoeGRZK2F0Y2tQNWVhdnB5UHl5aDB1MGtrN2c2?=
 =?utf-8?B?L0xMa0lmSzU5WDJIVnF6NWlPU2pnSDVBbWg3RTdGQUM4LzJFMi81UnV2SElM?=
 =?utf-8?B?WUNhQTk1MHBCS2ZieWtXSWtXTUxjc1RmdWhwU3V2MWEvWWl1amNIV0x0L3B4?=
 =?utf-8?B?c3lzVUxIMEVUMnJlMkZFTWdFbkcySXJhQ00yaXZXR0FWeHdvaVlpSjJCYm5C?=
 =?utf-8?B?V0pGUVFZWFl2MkNOc2IrZE9hQkpveTlPTERUZmk1OXVteGNHZEVtQk5XZFBl?=
 =?utf-8?B?NjRWN1RIdEVTYTYxV3ZBZGJQNDhMcFd0Q2hrMjFyR1VXKzl3b3dLMDRML01n?=
 =?utf-8?B?ZXBkTTZqVnRJZHF0NlR4aThYUitLWjRzVk9heEZKdnY3cUpiYXVEaUVPZk03?=
 =?utf-8?B?ckhaczArazVrQ1ZSbE9DNkVMVHdlUVM5M0l6dldzczd0SFpNczVqVUFOb0Nq?=
 =?utf-8?B?QWR2dGsrdVVrcEdJdmRYU3ZSM0lIUlQwNGxNeUJtbWhzU25oUk9DUWRSK2Nm?=
 =?utf-8?B?cEZldlBGTkRUMDM2WFVBN3RKMGpXMWEwVytPdWM5bzBYYzVNZHdMdVBZVjRu?=
 =?utf-8?B?OEVNK0Fvd1dUcnFvaXdReUNONW8rN1hpMFkrRWdodFVaQnpNMGh4Ny9Mc0Fk?=
 =?utf-8?B?dlU3WmxTSGtkWmhYV3NhRjBiYjRRb1B4SjB0L1Iwb0thM1A2VVVKVkVWTUl6?=
 =?utf-8?B?allHMjA2NVBHUkRvRHJZdm5wVkN3cnJ4REtXWTZrR2pSQlBCQXVES0I4K1pp?=
 =?utf-8?B?OUt4N1VJK1U2OXRRdGV3cHNkdnJ3dEE2QW81RWgzWXUyRFNQOXZkcHU3bzU5?=
 =?utf-8?B?RWlsQmVsdUE3dktSSGlTZ3FxWWFkVGwzaHFlbUtJSGJDaElOYWZnSTNWZXAz?=
 =?utf-8?B?MHZJSlFlcFlmK3djT2NLLzk2QXNBSnBaNGg2elRremkvWDl1OFV6WWc2UXVE?=
 =?utf-8?B?cWdiMHE1TnZQaWg0N1BuTkFxbnFBNmF2dHAvdlBTOTZYK2V5YjdEWDV5UHpa?=
 =?utf-8?B?L2UwenpxOWtaNTAwbS9ocnlubDRpdU1xaVJaM1Zyb0pTczdlU2Y5YjZ1V0Y3?=
 =?utf-8?B?bXNUWGZoNXVKamRJREM5TitLdmpnejRlZ3hQUm1HMk4vSk1VWFpQanFwc2Zz?=
 =?utf-8?B?U2JFdnAzUE9VZkhIdkVETGd1MUhNQlpPeTA1UlhPTTVTY2Y3RlhnRFRyRGFp?=
 =?utf-8?B?VzZCdjdPaGprWG15R3QrRHVJS1JBSkcxT1RoUE9PNGdqcnJkclJweWRUeXc1?=
 =?utf-8?B?eVdjc1BRd1NlbENRS3hldit5ZUNXOHRLWlVKelo5cDBJajFwNDdaRXJkT0Zw?=
 =?utf-8?B?MGNRenZsTENra2NFL3RjbEY1T3dRY25mSThKSHpyS2p3QUNsL0w2c3BBN3ZY?=
 =?utf-8?B?aTdENk1CdGN6NlI1ZFdpaS9aeTNWdnNvem1NNVZ2YmhJcURMVmlyb0pzSHlX?=
 =?utf-8?B?QVhvMGVtU3d4cXo1Z2hNZitzeXptYWhqS2F1bXNJcXZuZDZwNUFXSEVjNmxP?=
 =?utf-8?B?VWtVWGlqTFcyN2FCdEt6V09hYWpSTjExMWd4Mm1uODIxUFNnZGtDU1FWeklm?=
 =?utf-8?Q?c0HOWTwOgnJjdx7pADIIEyNVxw4KiKud?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VENrSkRaRGU2MWxnMWlCRFhNTmVTekRzZ21hV2JERndGRCtMYUdEdG5GdURM?=
 =?utf-8?B?ckFHNWdWNCt4SDdWRmc4L2dhVFo3aHhyMXJzaHFocXQ2NFFnZm9ZNzlMOThH?=
 =?utf-8?B?NEFidzc3WmdsRlhvQWl3czZZOVFtVGNTM05NVEdpd081cWlwbXdDYXRTYkg4?=
 =?utf-8?B?RFRxemVCUW9qeGMwVTZIYmN0dkg4aUE4VDRLbEJINFh4RXlCbTZnS1laOUtK?=
 =?utf-8?B?Y3BEaFVWTTlBbU1YUHRTS0FaMnk1bnZyZCtvaDVPdC81ZE8vREZDcGE2QUlr?=
 =?utf-8?B?QUltaGw2eHQvSTduOExrL0VJNGxlYlNKcG95bm93aGxHMzlGdFJ2MHdUdVkz?=
 =?utf-8?B?M1RDeHpFcFgxTFpEaWFHZnppOUhDeng2NHhwNXpEM2NpaGh0NkJxVUF0Smcz?=
 =?utf-8?B?S2FBSTdaZGhZTGxibWlnRFBpd29ScXM3ZlkzT202NHZrRVl1WU1uVVQ1bks4?=
 =?utf-8?B?eVRCQmhndVBuZkh4VHBSYjNqZWgvWUcyRkFFeXJnbDJxeXVzdDdZVjJvV1BL?=
 =?utf-8?B?amFIUEw4VXR5SDJac1ZVVzNvMUxEbTdBb1ZRVUxvZlh6QnNHYlpyc1NIZjd3?=
 =?utf-8?B?a0I1R1htL1dPVHRMWnZvVFZxbXk2YW1qMnVJbktGZm5xdnBkT05VMDZHQjM5?=
 =?utf-8?B?Q0NYNVN1TXlTNjRWaDd2MXJFMHVQOFp1KytXdEZOZ2UzYXlKSmk0ZktpVVdr?=
 =?utf-8?B?by9TU0V0WHI4U01TVTVtQXJCbEZ6N29VSm9NaTd6QkY1R1ZVeEIrdktoNEVr?=
 =?utf-8?B?bWdhcmpETGRuakFlNFFxOTdoNlJHU1paeXpIekxvSXlELzY3VVRGU0xTaWtD?=
 =?utf-8?B?U1VRTkFwUGhUN2QveDQxZDJhL3lmanA2Uk91MEdwblBQSlR0OUljU2lyZnpm?=
 =?utf-8?B?QVlwNkxJK29KaWlpQytDeFRicDRLdWw0QzI4OFJja3AyQXV3NWx5aFJjcjhU?=
 =?utf-8?B?VU9WZHZpalJodG40Y0FZTVlBa3BtQ2Q2NUpodWg3RlBKSTBVMmNwbnp6MFJr?=
 =?utf-8?B?NEZNWmhSUUQ0ckw1UkliVGtXUTN4UlpSM1JzcEhqSy9uMVlyVXBJaU1IdHpC?=
 =?utf-8?B?OTBlbE01NGkyNGNpdFgwSkkzcTVVWHc2OWlzcGNEeThjMmpQL3VSL3pmeUx5?=
 =?utf-8?B?RXY3Ky9wcjlYMTVaVVJXMU1sWDJrVVEra052N2g4MUEveDdQYTVXczBrQlhF?=
 =?utf-8?B?N1lyUG8rc2VQMGVZZ1JaVUxhWU5xQWFsQUY1QzBsV3dVUFNPWVFJZmlJalYr?=
 =?utf-8?B?dlBlbTVwU3dsZ2E5L3lEM2xCd2VXU2R0bFdzQWVneEc1Vktyc1BUd3BpWXZK?=
 =?utf-8?B?SVJONXZIWXRIWjAzOHVQd0sxMTllWWNkS2dNY0dhemNjbzZKcTBXakJ6RHM5?=
 =?utf-8?B?eDRsRUptVmRWREhHbFVUTWpISHdITjRtQm9TTk5hckdZMkZOakJKRzFRaWpi?=
 =?utf-8?B?K0hGMTgvZ1dpcnVMZlozeUdST3RLMFArdXFJWC9SVmx2Z0FqWm1tbE5oZU8x?=
 =?utf-8?B?c1pQazdsaVhTVDUzTEpjeGFKNzY3NEh2ZEsxejFUVVZrNTFXc0VwckhiZzk2?=
 =?utf-8?B?S0FoL2NHODVSYXR0MzZzV29RZnh0bW5scTNDKzB0dXpYb0xjUFhLSWVZZ1JK?=
 =?utf-8?B?bSsyVkZLb0xTNW9STzEycUxsR1hkSFhaYVRsK1VNK1h2Z3craFlLa3BrNXdi?=
 =?utf-8?B?Y1ZIYVpBQVRUOEJIRCtZSlU1cGt0amNFZzQwWU42L2Z5dFlLRHFqOTZicmdM?=
 =?utf-8?B?NTJQb2ltbHdQU3RMeURab0NKaGgyREhXelV5OHA1S2pWRmlyRXIxRVV5U0RT?=
 =?utf-8?B?MjJ3R3pGV2dYWFlnc2g1bGRPcE9qM1Nva3pMRWlIUWJsbnc2TUhuN3Y3TDJZ?=
 =?utf-8?B?TlN4QkwzNGovREdyQ1U1d2RISEo2T2Q5SVJlTnJXN0JWU1VmUis1OHIzczA0?=
 =?utf-8?B?dk9NUWRiK05YUS9kRlRKQm1BVTRwQlJCNnJZLzkyamMrUVBicW9SUTVlN2lK?=
 =?utf-8?B?enBWNUxBZ3JZbS9FRk9FZUpFbEJIcTVDZjl0bDBaR1FrM2pMUE5jcGVMUytj?=
 =?utf-8?B?U082UW5EbWNFWk01R1VmQStNVit0U2VmUmNLRnZSYk5kb0p0d0t0NjlWK0hw?=
 =?utf-8?Q?hiWy/fX7+zCjalog0sRDRQQN3?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E94D39213ABD5F44939D3825F516344A@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 693b5a07-4a35-4ff0-c6ad-08dd3c55d83c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 09:02:35.3726
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rav82rZXdaRzkqO7Hcqi2Q48d441fcpd7906PR7npImO8PHloCys4j+QQgrFPSkM+ov2oBDELngupfcFp9GREw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7418

SGksIEFuZ2VsbzoNCg0KT24gTW9uLCAyMDI1LTAxLTEzIGF0IDE1OjUyICswMTAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8g
bm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZp
ZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbiBwcmVwYXJhdGlvbiBm
b3IgYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSBEUEkgSVAgZm91bmQgaW4gTVQ4MTk1DQo+IGFuZCBp
biBNVDgxODggdXNlZCBmb3IgSERNSSwgbW92ZSB0aGUgY29kZSBmbG93IGZvciBjYWxjdWxhdGlv
bg0KPiBhbmQgc2V0dGluZyBvZiB0aGUgRFBJIHBpeGVsIGNsb2NrIHRvIGEgc2VwYXJhdGUgZnVu
Y3Rpb24gY2FsbGVkDQo+IG10a19kcGlfc2V0X3BpeGVsX2NsaygpLg0KPiANCj4gVGhpcyB3YXMg
ZG9uZSBiZWNhdXNlLCBvbiB0aG9zZSBwbGF0Zm9ybXMsIHRoZSBEUEkgaW5zdGFuY2UgdGhhdA0K
PiBpcyB1c2VkIGZvciBIRE1JIHdpbGwgZ2V0IGl0cyBwaXhlbCBjbG9jayBmcm9tIHRoZSBIRE1J
IGNsb2NrLA0KPiBoZW5jZSBpdCBpcyBub3QgbmVjZXNzYXJ5LCBub3IgZGVzaXJhYmxlLCB0byBj
YWxjdWxhdGUgb3Igc2V0DQo+IHRoZSBwaXhlbCBjbG9jayBpbiBEUEkuDQoNClJldmlld2VkLWJ5
OiBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMgfCA0
MyArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBp
bnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcGkuYw0KPiBpbmRleCA0MWZkYzE5Mzg5MWEuLjU5YzJlNGYzMmE2MSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcGkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jDQo+IEBAIC01MzcsMjYgKzUzNywxNyBAQCBzdGF0aWMg
dW5zaWduZWQgaW50IG10a19kcGlfY2FsY3VsYXRlX2ZhY3RvcihzdHJ1Y3QgbXRrX2RwaSAqZHBp
LCBpbnQgbW9kZV9jbGspDQo+ICAgICAgICAgcmV0dXJuIGRwaV9mYWN0b3JbZHBpLT5jb25mLT5u
dW1fZHBpX2ZhY3RvciAtIDFdLmZhY3RvcjsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgaW50IG10a19k
cGlfc2V0X2Rpc3BsYXlfbW9kZShzdHJ1Y3QgbXRrX2RwaSAqZHBpLA0KPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkNCj4g
K3N0YXRpYyB2b2lkIG10a19kcGlfc2V0X3BpeGVsX2NsayhzdHJ1Y3QgbXRrX2RwaSAqZHBpLCBz
dHJ1Y3QgdmlkZW9tb2RlICp2bSwgaW50IG1vZGVfY2xrKQ0KPiAgew0KPiAtICAgICAgIHN0cnVj
dCBtdGtfZHBpX3BvbGFyaXRpZXMgZHBpX3BvbDsNCj4gLSAgICAgICBzdHJ1Y3QgbXRrX2RwaV9z
eW5jX3BhcmFtIGhzeW5jOw0KPiAtICAgICAgIHN0cnVjdCBtdGtfZHBpX3N5bmNfcGFyYW0gdnN5
bmNfbG9kZCA9IHsgMCB9Ow0KPiAtICAgICAgIHN0cnVjdCBtdGtfZHBpX3N5bmNfcGFyYW0gdnN5
bmNfbGV2ZW4gPSB7IDAgfTsNCj4gLSAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFtIHZz
eW5jX3JvZGQgPSB7IDAgfTsNCj4gLSAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFtIHZz
eW5jX3JldmVuID0geyAwIH07DQo+IC0gICAgICAgc3RydWN0IHZpZGVvbW9kZSB2bSA9IHsgMCB9
Ow0KPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgcGxsX3JhdGU7DQo+ICAgICAgICAgdW5zaWduZWQg
aW50IGZhY3RvcjsNCj4gDQo+ICAgICAgICAgLyogbGV0IHBsbF9yYXRlIGNhbiBmaXggdGhlIHZh
bGlkIHJhbmdlIG9mIHR2ZHBsbCAoMUd+MkdIeikgKi8NCj4gICAgICAgICBmYWN0b3IgPSBtdGtf
ZHBpX2NhbGN1bGF0ZV9mYWN0b3IoZHBpLCBtb2RlX2Nsayk7DQo+IC0gICAgICAgZHJtX2Rpc3Bs
YXlfbW9kZV90b192aWRlb21vZGUobW9kZSwgJnZtKTsNCj4gLSAgICAgICBwbGxfcmF0ZSA9IHZt
LnBpeGVsY2xvY2sgKiBmYWN0b3I7DQo+ICsgICAgICAgcGxsX3JhdGUgPSB2bS0+cGl4ZWxjbG9j
ayAqIGZhY3RvcjsNCj4gDQo+ICAgICAgICAgZGV2X2RiZyhkcGktPmRldiwgIldhbnQgUExMICVs
dSBIeiwgcGl4ZWwgY2xvY2sgJWx1IEh6XG4iLA0KPiAtICAgICAgICAgICAgICAgcGxsX3JhdGUs
IHZtLnBpeGVsY2xvY2spOw0KPiArICAgICAgICAgICAgICAgcGxsX3JhdGUsIHZtLT5waXhlbGNs
b2NrKTsNCj4gDQo+ICAgICAgICAgY2xrX3NldF9yYXRlKGRwaS0+dHZkX2NsaywgcGxsX3JhdGUp
Ow0KPiAgICAgICAgIHBsbF9yYXRlID0gY2xrX2dldF9yYXRlKGRwaS0+dHZkX2Nsayk7DQo+IEBA
IC01NjYsMjAgKzU1NywzNCBAQCBzdGF0aWMgaW50IG10a19kcGlfc2V0X2Rpc3BsYXlfbW9kZShz
dHJ1Y3QgbXRrX2RwaSAqZHBpLA0KPiAgICAgICAgICAqIHBpeGVscyBmb3IgZWFjaCBpdGVyYXRp
b246IGRpdmlkZSB0aGUgY2xvY2sgYnkgdGhpcyBudW1iZXIgYW5kDQo+ICAgICAgICAgICogYWRq
dXN0IHRoZSBkaXNwbGF5IHBvcmNoZXMgYWNjb3JkaW5nbHkuDQo+ICAgICAgICAgICovDQo+IC0g
ICAgICAgdm0ucGl4ZWxjbG9jayA9IHBsbF9yYXRlIC8gZmFjdG9yOw0KPiAtICAgICAgIHZtLnBp
eGVsY2xvY2sgLz0gZHBpLT5jb25mLT5waXhlbHNfcGVyX2l0ZXI7DQo+ICsgICAgICAgdm0tPnBp
eGVsY2xvY2sgPSBwbGxfcmF0ZSAvIGZhY3RvcjsNCj4gKyAgICAgICB2bS0+cGl4ZWxjbG9jayAv
PSBkcGktPmNvbmYtPnBpeGVsc19wZXJfaXRlcjsNCj4gDQo+ICAgICAgICAgaWYgKChkcGktPm91
dHB1dF9mbXQgPT0gTUVESUFfQlVTX0ZNVF9SR0I4ODhfMlgxMl9MRSkgfHwNCj4gICAgICAgICAg
ICAgKGRwaS0+b3V0cHV0X2ZtdCA9PSBNRURJQV9CVVNfRk1UX1JHQjg4OF8yWDEyX0JFKSkNCj4g
LSAgICAgICAgICAgICAgIGNsa19zZXRfcmF0ZShkcGktPnBpeGVsX2Nsaywgdm0ucGl4ZWxjbG9j
ayAqIDIpOw0KPiArICAgICAgICAgICAgICAgY2xrX3NldF9yYXRlKGRwaS0+cGl4ZWxfY2xrLCB2
bS0+cGl4ZWxjbG9jayAqIDIpOw0KPiAgICAgICAgIGVsc2UNCj4gLSAgICAgICAgICAgICAgIGNs
a19zZXRfcmF0ZShkcGktPnBpeGVsX2Nsaywgdm0ucGl4ZWxjbG9jayk7DQo+ICsgICAgICAgICAg
ICAgICBjbGtfc2V0X3JhdGUoZHBpLT5waXhlbF9jbGssIHZtLT5waXhlbGNsb2NrKTsNCj4gDQo+
IC0NCj4gLSAgICAgICB2bS5waXhlbGNsb2NrID0gY2xrX2dldF9yYXRlKGRwaS0+cGl4ZWxfY2xr
KTsNCj4gKyAgICAgICB2bS0+cGl4ZWxjbG9jayA9IGNsa19nZXRfcmF0ZShkcGktPnBpeGVsX2Ns
ayk7DQo+IA0KPiAgICAgICAgIGRldl9kYmcoZHBpLT5kZXYsICJHb3QgIFBMTCAlbHUgSHosIHBp
eGVsIGNsb2NrICVsdSBIelxuIiwNCj4gLSAgICAgICAgICAgICAgIHBsbF9yYXRlLCB2bS5waXhl
bGNsb2NrKTsNCj4gKyAgICAgICAgICAgICAgIHBsbF9yYXRlLCB2bS0+cGl4ZWxjbG9jayk7DQo+
ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgbXRrX2RwaV9zZXRfZGlzcGxheV9tb2RlKHN0cnVjdCBt
dGtfZHBpICpkcGksDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQ0KPiArew0KPiArICAgICAgIHN0cnVjdCBtdGtfZHBp
X3BvbGFyaXRpZXMgZHBpX3BvbDsNCj4gKyAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFt
IGhzeW5jOw0KPiArICAgICAgIHN0cnVjdCBtdGtfZHBpX3N5bmNfcGFyYW0gdnN5bmNfbG9kZCA9
IHsgMCB9Ow0KPiArICAgICAgIHN0cnVjdCBtdGtfZHBpX3N5bmNfcGFyYW0gdnN5bmNfbGV2ZW4g
PSB7IDAgfTsNCj4gKyAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFtIHZzeW5jX3JvZGQg
PSB7IDAgfTsNCj4gKyAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFtIHZzeW5jX3JldmVu
ID0geyAwIH07DQo+ICsgICAgICAgc3RydWN0IHZpZGVvbW9kZSB2bSA9IHsgMCB9Ow0KPiArDQo+
ICsgICAgICAgZHJtX2Rpc3BsYXlfbW9kZV90b192aWRlb21vZGUobW9kZSwgJnZtKTsNCj4gKyAg
ICAgICBtdGtfZHBpX3NldF9waXhlbF9jbGsoZHBpLCAmdm0sIG1vZGUtPmNsb2NrKTsNCj4gDQo+
ICAgICAgICAgZHBpX3BvbC5ja19wb2wgPSBNVEtfRFBJX1BPTEFSSVRZX0ZBTExJTkc7DQo+ICAg
ICAgICAgZHBpX3BvbC5kZV9wb2wgPSBNVEtfRFBJX1BPTEFSSVRZX1JJU0lORzsNCj4gLS0NCj4g
Mi40Ny4wDQo+IA0KDQo=

