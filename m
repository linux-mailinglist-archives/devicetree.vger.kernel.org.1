Return-Path: <devicetree+bounces-127183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADD99E4CC4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 04:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82AF418813FD
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 03:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F55D18D620;
	Thu,  5 Dec 2024 03:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="W9XT68j5";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="eUrQVM+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C1717BB35;
	Thu,  5 Dec 2024 03:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733370016; cv=fail; b=R9v98A+TOuVB5H+sfVgyKl23j8eRYoybIn2nhDGzcWzODKVIhZVAnxrP6824mE1ppiC9iHcVcSfW4pEzn9rBU54DVJIM5h+xus4DWh1BZwezBnf9ldfg6AzpSX80gGymNhQ2Kn3MdHTn7L57jzt4YurbTykf/B+DRMfhHCcZxuk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733370016; c=relaxed/simple;
	bh=TPa/6VC79dlVA4191kaWMFyUuuXq6rmlgJW/5XyCkk4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=u1LUrKYQIKXau1iD5pgQfufQCp5worVse495m8JZ4HeCoEuEnC1RJUV+ryGc9cYrmCeKfa4rLeBK7xHZhHcdZswFx3g1rxPhasa57JLQjLgVqscmcK3VjfT/ihdk76LDVDAERHVCoNN6eSwSu4hIlb/o/rpBnrCbmju39+U7rUg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=W9XT68j5; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=eUrQVM+F; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 9eb105ecb2ba11efbd192953cf12861f-20241205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=TPa/6VC79dlVA4191kaWMFyUuuXq6rmlgJW/5XyCkk4=;
	b=W9XT68j5r44237Q7SACnisKwgc0SEgpkPggCLWs/CHzw/YQG9uoVbKe3qOKQ11efOJEUv/xHKc/vfJuzY51G5epdcPiymG1weyfcRC9znPI4S4UVCgOAouqZYmqcUZ1D6N3RfZS0vZI2vcRKj2MjC7SJcesCJ4QkE44xQ1FPl1Y=;
X-CID-CACHE: Type:Local,Time:202412051042+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:08a0872a-7fcd-413e-aef6-45e4aef8e1c8,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:e26b743b-e809-4df3-83cd-88f012b9e9ba,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0,EDM
	:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 9eb105ecb2ba11efbd192953cf12861f-20241205
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 910526413; Thu, 05 Dec 2024 11:40:06 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 5 Dec 2024 11:40:06 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 5 Dec 2024 11:40:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LLO0lAGCPBLhcgqg0IAttvLHvNwEfOJclk4qzmenMTw88oPeUgl8Zr5BROrCp30v5tLA8YOi9Xv34jAitXSC6f0wVsH+O9PDwDf5ZKC63wcPCcyOV4Y0fNBplfgzCm7MXFBOHMdBl+6BHcY7Qme0PK+Eqzi5TMYV4EjHlnQDi7renx6wFpuc5/H76cb9qdFvmLpceoDMOBGHrKuCihPhbiRwOra8DbrbnS9+pBfybL7UtirB0f7cwm7sKxpblqV7/w5YSHQ2HClKLdHdIZLQuzRwnsgJKePOUYd3StqvW+zjdFnA3i756mfz0wpfBgSOWjoZOApVQHGf4jUYBXbNjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPa/6VC79dlVA4191kaWMFyUuuXq6rmlgJW/5XyCkk4=;
 b=Jegeq+dsqTZK9IOx+r81WZEzVRkUlV05sDO7NxIIfNedr9PyNSH0j/RMRsJ7IMX700EvTk9qwYG84m4OW3c93lt2+hEeHn4a0l4uJzMG4WZ6opoMeK/xWe2jRPScf0DK1Y/mtdjO4LEGd+b1ZrG3BeykWr0AtsIjzP70ej2sxepw/yY9/PC82k2VjXOz1P+LP4Z2HzPnWp14dXFtlIfHFgYIRnTLKfZYvh9js+2s9W1vARJ6gdIKHcB5q7UYc7G9paCbZ6nWuedx7ztJ31lMT6LXzawYilJTy5YFzhb+QnV6jh2YnlULCzEpEHXD/AB8Iog8ex34g+WvavBoaAx67g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TPa/6VC79dlVA4191kaWMFyUuuXq6rmlgJW/5XyCkk4=;
 b=eUrQVM+FXoLgPzXx88Y9vrdypv7b0jybJXfF0T4u++a85P/9GDCxmpVJDdDgrGXIu7hu/7nd0xoCdMgcYbcdKAchvMWgUO6Thj5ww80mKMYjh/s4l/D9QGAkSgyFIKdAFH/u45CDd3ZujBhQT0Ue8lqcARxPfgqHPW14Is8C9co=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYSPR03MB7944.apcprd03.prod.outlook.com (2603:1096:400:47d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 03:40:04 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8207.014; Thu, 5 Dec 2024
 03:40:02 +0000
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
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>
Subject: Re: [PATCH v1 7/7] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Thread-Topic: [PATCH v1 7/7] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Thread-Index: AQHbO0pF3Zp6UXdpSEmkHbI6wNkmT7LXGCWA
Date: Thu, 5 Dec 2024 03:40:01 +0000
Message-ID: <d9ca3245c89813d78e7a25aa9d4a0868fb30d27e.camel@mediatek.com>
References: <20241120124512.134278-1-angelogioacchino.delregno@collabora.com>
	 <20241120124512.134278-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20241120124512.134278-8-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYSPR03MB7944:EE_
x-ms-office365-filtering-correlation-id: 08d40662-d047-4d0a-d462-08dd14de800a
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWtPMjdmN0VINjFWblFaNlpwekxaQ0lHSS95am51eHBCclNLYzZNUzVZM21O?=
 =?utf-8?B?OVhiUUp1S0I1clM4R1hCSVRuT09jUStnU2h6WFlQaFhNSzRVNHZUZ1VpRS9F?=
 =?utf-8?B?bGY2MnpxWk5MZGNaVHdMY2JMUVpvMTUwRE52bzBMU0l1WFdabmdoTUs5eXEz?=
 =?utf-8?B?K1VOR2VhRGRiUVVmU0IwdFZkWlRxbmxkQkkxc29vTTdXMHNpOG1QUXkvSmpN?=
 =?utf-8?B?dzhrZGpoYjlFVXNTamQ2UnRkY2lGZUxuSlB3WHNuc3ljcHkyamt3QXd4WERl?=
 =?utf-8?B?dWpjNjQrNFcrZTY1UGgrelg2Q3RUQ1g1elJHeTl0aEp2d2NNVkhUZUhvWjFN?=
 =?utf-8?B?c0U4N1FXSEVOZjZrZng4RW1JS0gxekwxaEFzamVNMjQ5UzV5WkZ1Wll3OS80?=
 =?utf-8?B?bzJkV1h2VGJHV292cktIVDU0TDh1eDRwMkRiY1pDZTNIcWNRZzJrNVU4a1Fp?=
 =?utf-8?B?Si9XWnRBMnFZd21nTjh3UCtwendGaFc2Y2syK0IvdUlvVHZUc2tjYWt5Qllw?=
 =?utf-8?B?OUpvYmdzb3ltL21vVVd0Z1lmekFUM21mSWs3b2F5SVJSakFBbG0xY1htaUQz?=
 =?utf-8?B?TEZjKzhsLzBxMGlGclRtbmkzT29pdHZRS2xOZGh1REZyRFFnaWNRTnZ3Z3Bs?=
 =?utf-8?B?N25VdVdjYTVuNk5pVUVKY2xENkxMT1V1SUo3NnpiVE9ybGFtckl1OUFYTERC?=
 =?utf-8?B?cHNJbWY2VWVUQlFPa3A0enBYYnBhdVU1MG9kM1pPU0ZORXdSWXljVUhGODd0?=
 =?utf-8?B?bW5IYXRFK2VwNHBxVjRxeEdJRmwxKzdjcmJ0N0xXdW5IYjRvZCt2UUxDVVNz?=
 =?utf-8?B?RitHd3lnNEFlNEVEbjVjV2hvUGVTTUFEV0RUQkpkZXcxK3BaZGk1UjJrV0x3?=
 =?utf-8?B?bGI1UFFtSHhvbW5IUzFEblVvYisxZEZsc0FpaldHSHRrVU1VZXlXSllSa3M2?=
 =?utf-8?B?OExzeUlnWldHekh0cjNqN1pQRlIva3F4V1h1S1JoNXA3V1RIU3RBYUozWnIz?=
 =?utf-8?B?eGZCcHdWZXVESk54TlBvempFdEM4bjYySHJCWHptbVNCaTVYcUZBSUxQTUVh?=
 =?utf-8?B?eitVQjNVTVVDNTFPUFhIVUJvWUFiWUhuMjJRRVY4TEFQUXBMaVlUcC90RTd3?=
 =?utf-8?B?cUVhNEpmZkg2dXRmTzZsRzRXTlRGVjgrdHhDbUJURUtjQ2dGZ0Z6VXdRVmE2?=
 =?utf-8?B?NDVkODNNa2FMODlhczlndUFDeHNQNlF6eXU2K2xtV055b1h2ZEVKaVRSQ0dK?=
 =?utf-8?B?dG4zM2gxbCtMdys2ZWVCS3JNdkVTdWhBeXhVRDVxUWlRRVFIck5Bc1dWMU8v?=
 =?utf-8?B?SkF2NWhBaU5rRHRpdFdPSktBb2JDZGJFalhFN2phK3FIQmZnTGNPUDBlWDFv?=
 =?utf-8?B?eUpsbGtPZk5Ed2k3b0p3dVRWdzJCTkpxcndaWHlxa2FoWEZkMmQ4Y0VkYldF?=
 =?utf-8?B?MXRJSC9WbkV1VFl1bzQxZk9UbVZzQ1dIU2tKNGpRNnNDN2UzVnFyNVRDU1Ba?=
 =?utf-8?B?M2J3ZDBrTFBQajZaNVlQTEdwV0tJeGRPTjkya2dqajlnaGUvaEdkcmVDNUNj?=
 =?utf-8?B?RDNPT2hlTDdQQnZaQnRkcnRQeEZlaEhGaVU1bnVYM0M3MXRzR0JBSXA0T3Vq?=
 =?utf-8?B?WVYrczNjT3RrTm9NWFNTRHhDUHgzbFVKZWhhT1FmTjF5OExsWTZrS242b2FC?=
 =?utf-8?B?ZDREcFAzVm5UL2N2Q3B0L1V4ZU15V1MzbGRCM1UyM05BNi8wNEhVc0ppQk54?=
 =?utf-8?B?dVBUNzhlLzNUMHJrcDFkV3NoeDFPY1JaM05DSnFqSFlYdUZyaXRiVDhGelJT?=
 =?utf-8?B?M1l1ZnFVWHVrM3VpZTNpSkRwaEhtOEZsWFpVeFhuYmNQUEh4M2RIS29vWWk3?=
 =?utf-8?B?Q1hRdU9POElwOGJzN0lZNndXS05pNzlTbUdVUFRyNEd1cmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVFHMXlzMUVrbW1ENVk3VmIrSW55WjZ0SW9TdUo4RmxzTWVVcm55THdQckly?=
 =?utf-8?B?WjN2SjlwTTdab2N3dFJxdG5WRk1aWWk2Q1M1Q2pGaUZNK3JxY2ZtekhnQWNo?=
 =?utf-8?B?dXhmcTViNnhGTjlHanF0djBIZGlZV0FXeEpLVnpIODU3WG9uNmhhT2wrdHQ5?=
 =?utf-8?B?VjdXQlJ0UFBYTGZMc01FSjlqcVBiY1IzQlZreGwzek1LY2ZTbW5YTzNGWE05?=
 =?utf-8?B?LzN6TG5oQmJ0THhqR01tSmNwM2pkdXpXeCsrMlVKS0YvblU4K3M5Y0x6c051?=
 =?utf-8?B?eU5MZmhXWXE0VzRKTVAveFlLdVZudGJBT3pUODBuWk0zY1NtYi96MXlkbWkz?=
 =?utf-8?B?d2h6dTVDMFI0cTVoNlpQaHZ3UGJsaVN0bG4vZkczUGNwczR1M1lUMWVyNWxC?=
 =?utf-8?B?L2N2bkRQSFpvUVFxVmFqYktraVRleW80VWx3TDY0bjBoS2RTSUhtRWtTNXZP?=
 =?utf-8?B?eTh5djJpeGQ1QTJYRTNLekRNUk9FUWdLUDllT1ZYR2M2YmhmTEZ3b1hRSVBN?=
 =?utf-8?B?QThRankyR3gyZmJiSW9OV3hRVmxCdXFVYmpFNkVCWklST2dpSm1zOUxSbXA2?=
 =?utf-8?B?OGZvb2p1TlpsenUvWlA4a2F6cVRLTGxlY1FBV3N6STl0MmpRaDEvZkhLZy9o?=
 =?utf-8?B?WFlyQ3BDVU41K1U1QjFIcTIwNVdGNEthdWU1bTJIUUl5WmkrdHQ1b0lpN0ZD?=
 =?utf-8?B?dm16bkpqay9mayszdkl3WUJKRW51aWlESnBxd3RqaStVWk5DaTY0L0FLWFht?=
 =?utf-8?B?QXMrMVU1SGdWV0RIeU1ub3BTcVU3OURaZzVZQUE1OGtqTUdSa3Y1TmM5ZTlY?=
 =?utf-8?B?aUtQVkx6K0RTRnVyQnF3TnVaaUhSdUpiMzV6WEZHdEZ6bHpKN0p4QWdKaG45?=
 =?utf-8?B?MzhjUkpzS0FoRUhZamZSdkdJdGpoMnlERENJczJlb2lieWJaVXFCWlJkaFVO?=
 =?utf-8?B?b2VnRXBWakdwa01McXlJbldqOG9FWkExcnBWRUdheHA2UGZPbjV6VnFmWUls?=
 =?utf-8?B?ck50TkhTOGw0dHd1M2N6LzNmRHdQWk5vWGxXbW9jbDlHWlNrYS9POWxzYUls?=
 =?utf-8?B?NE8ybG04dVUxMFhuZEp6T1lrUGZMSGpYaWxnZ3hjRHFkRzIyd21mclNNa0pN?=
 =?utf-8?B?eGsxUHpxZDM0R0V5MFg2aGhTcTYzandLQlpNcHkrY1NQYTBBL3UvSzlVd1pt?=
 =?utf-8?B?RFlxTVQvckljNzZmWnVjdVhGNFY4UEwyRDlhVmN5ci9heXVqdmgrbEkrTWQ4?=
 =?utf-8?B?QmlnQTRiN1VEeVF3QkJwL0dWSnJweUppU01wOFZvQi9rVkF3WWNkQjRleVpa?=
 =?utf-8?B?TGo5ZGo5Q085emZBT2g5cE5Tc2wwTkhEUXQ2VlV1KzhDV01oR3JadkM5dllk?=
 =?utf-8?B?VUVtL015bmVjMC82YkpHdUpwWUZwZnc0RXp0Vk1MVTZGajFkemd3dTdJZXZU?=
 =?utf-8?B?c2NsUkxweWxVZzY4aUxhWVBacTFCcXpnM1N3UDZJSVdYUmVkdzJjOGhtVVZl?=
 =?utf-8?B?VGlmaE5tVTNiRDMyaC9FN0VtQTRjUFNPc0o1YWYzLzhoN1YvUjI2RWpMaDRh?=
 =?utf-8?B?RERIeS8yckp4RE1hN1cwSWc5K0NoYlFzMEE1NDlKMnpMald2WGxyNFpKL0V6?=
 =?utf-8?B?Q2VrVjBmVXJHbDdyYzZLRG56ZkhTV1RpMjY5R3RZUm9LWjdDTmlIWXJBYjho?=
 =?utf-8?B?OFROL1RpN3Jxc1BDTkJxOENBbjZwZWlZWExTVW5JSEU4eGR4dTlBNDMwa2Rz?=
 =?utf-8?B?WldLRnBkQldkVTJLSCsvWWtXMjJmeEJHbXJWQmxtRkcvazVBM1NoL0xmbWNC?=
 =?utf-8?B?WDJiWjBMU1RLQlJmVm93NlFxcDB0bmtzWG52cHBBcm50QVdsY3NpZllub3dB?=
 =?utf-8?B?cDI2V0tMbmNNb2M5cXRiRlp2WGxaQzdwaWxLS2hDK0l2Q2ZOU0J2U1ltZU1x?=
 =?utf-8?B?djFsNXpvMVdKdVlaMW5XZ3JTbnF4S3kzR0dVY2VUdEhXQm9udForMldONUx1?=
 =?utf-8?B?aDBuOGZOZHdkbE5EK3NsYVBNaXRzYnEvNVZadkY2YWlJUGQ2RXlkd2RpQS82?=
 =?utf-8?B?ZlBWUEQzQUthNHRQbERwd2JGU0VabUpEaU5JenVSMDhNMmZDbkIvbEtkR1BY?=
 =?utf-8?Q?9IqxiVOqeIG7bip4JazxYbi+L?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CE116881261B2B4AA0DC416675CCD3E3@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08d40662-d047-4d0a-d462-08dd14de800a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 03:40:01.9735
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +uq1H8CBwjzAXNpsxmNh/oxHEHhPkG/4rwAeNWHhaBs0XHw89J5Pkb8vBKZ6GyOB8OcFgcXB/BKECzXx18Wy3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB7944

SGksIEFuZ2VsbzoNCg0KT24gV2VkLCAyMDI0LTExLTIwIGF0IDEzOjQ1ICswMTAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8g
bm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZp
ZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBBZGQgc3VwcG9ydCBmb3Ig
dGhlIG5ld2VyIEhETUktVFggKEVuY29kZXIpIHYyIGFuZCBEREMgdjIgSVBzDQo+IGZvdW5kIGlu
IE1lZGlhVGVrJ3MgTVQ4MTk1LCBNVDgxODggU29DIGFuZCB0aGVpciB2YXJpYW50cywgYW5kDQo+
IGluY2x1ZGluZyBzdXBwb3J0IGZvciBkaXNwbGF5IG1vZGVzIHVwIHRvIDRrNjAgYW5kIGZvciBI
RE1JDQo+IEF1ZGlvLCBhcyBwZXIgdGhlIEhETUkgMi4wIHNwZWMuDQo+IA0KPiBIRENQIGFuZCBD
RUMgZnVuY3Rpb25hbGl0aWVzIGFyZSBhbHNvIHN1cHBvcnRlZCBieSB0aGlzIGhhcmR3YXJlLA0K
PiBidXQgYXJlIG5vdCBpbmNsdWRlZCBpbiB0aGlzIGNvbW1pdC4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25v
QGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArc3RhdGljIGludCBtdGtfaGRt
aV92Ml9hdWRpb19od19wYXJhbXMoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaGRtaV9jb2RlY19kYWlm
bXQgKmNvZGVjX2RhaWZtdCwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGhkbWlfY29kZWNfcGFyYW1zICpjb2RlY19wYXJhbXMpDQo+ICt7DQoNClRoaXMgZnVu
Y3Rpb24gaXMgYWxtb3N0IHRoZSBzYW1lIGFzIHYxLg0KVHJ5IHRvIG1ha2UgdGhpcyBmdW5jdGlv
biBhcyBjb21tb24gZnVuY3Rpb24uDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsgICAgICAgc3RydWN0
IG10a19oZG1pICpoZG1pID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQo+ICsgICAgICAgc3RydWN0
IGhkbWlfYXVkaW9fcGFyYW0gYXVkX3BhcmFtcyA9IHsgMCB9Ow0KPiArDQo+ICsgICAgICAgaWYg
KCFoZG1pLT5icmlkZ2UuZW5jb2RlcikNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVW
Ow0KPiArDQo+ICsgICAgICAgc3dpdGNoIChjb2RlY19wYXJhbXMtPmNlYS5jaGFubmVscykgew0K
PiArICAgICAgIGNhc2UgMjoNCj4gKyAgICAgICAgICAgICAgIGF1ZF9wYXJhbXMuYXVkX2lucHV0
X2NoYW5fdHlwZSA9IEhETUlfQVVEX0NIQU5fVFlQRV8yXzA7DQo+ICsgICAgICAgICAgICAgICBi
cmVhazsNCj4gKyAgICAgICBjYXNlIDQ6DQo+ICsgICAgICAgICAgICAgICBhdWRfcGFyYW1zLmF1
ZF9pbnB1dF9jaGFuX3R5cGUgPSBIRE1JX0FVRF9DSEFOX1RZUEVfNF8wOw0KPiArICAgICAgICAg
ICAgICAgYnJlYWs7DQo+ICsgICAgICAgY2FzZSA2Og0KPiArICAgICAgICAgICAgICAgYXVkX3Bh
cmFtcy5hdWRfaW5wdXRfY2hhbl90eXBlID0gSERNSV9BVURfQ0hBTl9UWVBFXzVfMTsNCj4gKyAg
ICAgICAgICAgICAgIGJyZWFrOw0KPiArICAgICAgIGNhc2UgODoNCj4gKyAgICAgICAgICAgICAg
IGF1ZF9wYXJhbXMuYXVkX2lucHV0X2NoYW5fdHlwZSA9IEhETUlfQVVEX0NIQU5fVFlQRV83XzE7
DQo+ICsgICAgICAgICAgICAgICBicmVhazsNCj4gKyAgICAgICBkZWZhdWx0Og0KPiArICAgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ICsgICAgICAgfQ0KPiArDQo+ICsgICAgICAgc3dp
dGNoIChjb2RlY19wYXJhbXMtPnNhbXBsZV9yYXRlKSB7DQo+ICsgICAgICAgY2FzZSAzMjAwMDoN
Cj4gKyAgICAgICBjYXNlIDQ0MTAwOg0KPiArICAgICAgIGNhc2UgNDgwMDA6DQo+ICsgICAgICAg
Y2FzZSA4ODIwMDoNCj4gKyAgICAgICBjYXNlIDk2MDAwOg0KPiArICAgICAgIGNhc2UgMTc2NDAw
Og0KPiArICAgICAgIGNhc2UgMTkyMDAwOg0KPiArICAgICAgICAgICAgICAgYnJlYWs7DQo+ICsg
ICAgICAgZGVmYXVsdDoNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArICAg
ICAgIH0NCj4gKw0KPiArICAgICAgIHN3aXRjaCAoY29kZWNfZGFpZm10LT5mbXQpIHsNCj4gKyAg
ICAgICBjYXNlIEhETUlfSTJTOg0KPiArICAgICAgICAgICAgICAgYXVkX3BhcmFtcy5hdWRfY29k
ZWMgPSBIRE1JX0FVRElPX0NPRElOR19UWVBFX1BDTTsNCj4gKyAgICAgICAgICAgICAgIGF1ZF9w
YXJhbXMuYXVkX3NhbXBsZV9zaXplID0gSERNSV9BVURJT19TQU1QTEVfU0laRV8xNjsNCj4gKyAg
ICAgICAgICAgICAgIGF1ZF9wYXJhbXMuYXVkX2lucHV0X3R5cGUgPSBIRE1JX0FVRF9JTlBVVF9J
MlM7DQo+ICsgICAgICAgICAgICAgICBhdWRfcGFyYW1zLmF1ZF9pMnNfZm10ID0gSERNSV9JMlNf
TU9ERV9JMlNfMjRCSVQ7DQo+ICsgICAgICAgICAgICAgICBhdWRfcGFyYW1zLmF1ZF9tY2xrID0g
SERNSV9BVURfTUNMS18xMjhGUzsNCj4gKyAgICAgICAgICAgICAgIGJyZWFrOw0KPiArICAgICAg
IGRlZmF1bHQ6DQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gKyAgICAgICB9
DQo+ICsNCj4gKyAgICAgICBtZW1jcHkoJmF1ZF9wYXJhbXMuY29kZWNfcGFyYW1zLCBjb2RlY19w
YXJhbXMsIHNpemVvZihhdWRfcGFyYW1zLmNvZGVjX3BhcmFtcykpOw0KPiArICAgICAgIG10a19o
ZG1pX3YyX2F1ZGlvX3NldF9wYXJhbShoZG1pLCAmYXVkX3BhcmFtcyk7DQo+ICsNCj4gKyAgICAg
ICByZXR1cm4gMDsNCj4gK30NCj4gKw0KDQo+IA0KDQo=

