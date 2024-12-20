Return-Path: <devicetree+bounces-132972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6D09F8E05
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:32:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95F78189681D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278711A8404;
	Fri, 20 Dec 2024 08:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mH7ZVoD4";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="GbYGN2Fl"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963AD1A2564;
	Fri, 20 Dec 2024 08:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734683511; cv=fail; b=KX0c01nf4MZOHBFPKRYgd+2sQKj2OJUDwXfa4sB0lcPBbxu+zrblxMNloI3aJtAS1dIzeUuS2t+Dem7hRRdIdGKpQ87cnumnQnjKyhYc9hNL91VLk5ov+sgBuc+76hOfDgaYe1anQKFTD2s2Oz52g6hZdDS6ClDac2NJN2oTaKQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734683511; c=relaxed/simple;
	bh=mZN9r6kWmP3bMH9YjAhYfByAdnCUbDPijyZ484Gl54w=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=aG/6lHxHwxL9W+enb0IOpN53PJuuatOZzzP438asmwbju4dnBgbTbRSRelccm2eUg9JUFKvOhGQEWKxTr40Tedf8KE899xctIIBgF47CS7suDc6UsZhDEWB4YZcyqJfEdlxnj4OFHYLWrx08pmCBZdzISfXKCyL3kBd14PaxhLc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=mH7ZVoD4; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=GbYGN2Fl; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d56fd4c0beac11efbd192953cf12861f-20241220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=mZN9r6kWmP3bMH9YjAhYfByAdnCUbDPijyZ484Gl54w=;
	b=mH7ZVoD4ShTJl5gGhugJDkS91icfWcjzH2VDYezIbLvdEKMebihPj0y4rn/bs8EiEEAzcaPi2NsAUDhxpQi/thZDAtfvZAY1JT5zh36APwGaS8Q/c2dyXDfp4Wwbh7Mta01nHzkd30rZOpwQT7/dTLFQlN1/hoSUYgUnXktHShk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:f82959d6-b595-4e08-9acb-645cf75c0c1f,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:df2ca036-e11c-4c1a-89f7-e7a032832c40,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0,EDM
	:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OS
	A:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: d56fd4c0beac11efbd192953cf12861f-20241220
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 675582756; Fri, 20 Dec 2024 16:31:39 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Dec 2024 16:31:38 +0800
Received: from HK3PR03CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Dec 2024 16:31:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gZnxNS8bpdlUEx8+z/oDG2hU1QqYIfmSCmgi3LPgFBDRdciCyJY2PSRCEBshzgXy0jjWuHBeqa7PFkd2Im1wUtSKig9EFKTQFjiUjJbLZAmONo66FU64L1LmO6bxyUWCzqJaYl4wOFXbEDepjNQDoDwbiGyMm5tp9MDJ9SoAQFZMBObv9cm0k8ISY5ZIOUdftyoXyOSM/D8oLm/lLvviBRL5wDXPPyFU1bc/lKolZiYU56G8B+99mwli3AEXPjT6ULtEwPR7mh7SQC9PVlOkx+SxqURLpnA6INXteqbvrp6q9itIk5arCAkbObSA3e/r+IGRyC+qrqFiF9HIY8eTKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mZN9r6kWmP3bMH9YjAhYfByAdnCUbDPijyZ484Gl54w=;
 b=Q65BodCSgXstg2em9bfnLLVj720IHBo+dTKWdb4QmgZJ2KkcDB13VdKdxh2d4z1WACZpEOYilcnPMQ3mVtrp+DM9aM2ASJ6eVvoH+gBDcrJr9rksU7feAmg1JtH6bVTBY3ucRbkpVP3yjyCOPAP1Hx46i0J0CSH7bZu6jr1SXjiv6RTHPfHQukQgeCylexZSxyCKa8dUzAIfmIXK8u486OrKnyPRDCz2jF+NICUSMTjxGO0VkGHBOxtX0ocIz98Mvrme7eCUQI2IVHP8ObzQCSrqlfY0fkX0peteKpP8YPzlrciJBTBBr5uDg0eD2VbifI8AAF2E3gndPePZKd0w8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mZN9r6kWmP3bMH9YjAhYfByAdnCUbDPijyZ484Gl54w=;
 b=GbYGN2FllYwpCx6EWQNUqT51vqiXgJ8VLbPEnQNY5mAYk7sj6euTo7UsTnz5+lsDcWzh58Ze7J7/9RPpZ4OahMoE0UM++JRn8CyO3o5ZMwFPLaIn7h1gEJYsdELh5dxkpMFNUeh49afPyFzdmM6vmNCKOhYc08wkcVrnfOUuLqc=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYSPR03MB7942.apcprd03.prod.outlook.com (2603:1096:400:474::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 08:31:35 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8251.015; Fri, 20 Dec 2024
 08:31:35 +0000
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
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "junzhi.zhao@mediatek.com"
	<junzhi.zhao@mediatek.com>
Subject: Re: [PATCH v3 23/33] drm/mediatek: mtk_hdmi: Use devm managed version
 of drm_bridge_add
Thread-Topic: [PATCH v3 23/33] drm/mediatek: mtk_hdmi: Use devm managed
 version of drm_bridge_add
Thread-Index: AQHbUJqwCT+hudMz3ky8mhd1iwdRe7Lu0fIA
Date: Fri, 20 Dec 2024 08:31:35 +0000
Message-ID: <bb26fb95bc38087ebc1b915fead920fc3a01a077.camel@mediatek.com>
References: <20241217154345.276919-1-angelogioacchino.delregno@collabora.com>
	 <20241217154345.276919-24-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20241217154345.276919-24-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYSPR03MB7942:EE_
x-ms-office365-filtering-correlation-id: eb4420ba-0937-4731-695f-08dd20d0b710
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RXNCajZ3aHBIck5yL3BQWVZSUDhCeDRNeHBGbHRpcVVKSmZtSWtIeWlkUGs4?=
 =?utf-8?B?NGJ6S0dvaVRkZ3YvZWo3cW03YUlMeFRjdm9QMDBCYVd5Z3JqZ3hjWlR3T20v?=
 =?utf-8?B?dnBNTGsrTDBUbXB3MlhVNHFSNUx5bkZJZ0RDQWh5VFY2QlMxWEd0NHdBZDJR?=
 =?utf-8?B?RWphaFY5Sjk3djdES3c4VmJZUThKSWd2cDl0QlRQZXVCenI2Q2RkV3RlNlVr?=
 =?utf-8?B?K1orWldMeTF2NUpreXdHRWh6dUlOQ2drOFMrNFdYTFRvSzlqU1FNR21pbTBr?=
 =?utf-8?B?aTdPUzVNUGZBWndCK3l0SjhlcnY2SmhjVkRaelhTaGZFLzdQUldqdHkzRTJR?=
 =?utf-8?B?MkNCUXRnckl6Nm9MZWQraWMvOGdwUHoyOWIyQXNkdXRlc2xzd085U3pVMVZl?=
 =?utf-8?B?RW9ETjZRbVZjUXpUVDJhb1BIUnlTRWRUWU5BakZidEtsV1BUUnFvL0g2eWY4?=
 =?utf-8?B?YVdPZjhMVmQ4anZYNW9TUU1zWG40bGh3VTJBTnF5SXpiQ25MZ0lqampuaWpi?=
 =?utf-8?B?cHc1alUwTnYwSGRKV2ZHVGpxSmlLVFZTV2M2NTBwT2xFclBBNjQ2dnVXUFRa?=
 =?utf-8?B?eXo3eFZzOFlIcEgvMnhIL0FYaTZEaFJXNEo4bVNUaS9Qakhld0dXRnBMZWYv?=
 =?utf-8?B?ZkVJdEpWWVF0VVJDbUFtdnZQb2M0WVNnTERnYWVicFp6VVRoTFBJcUI2WFZU?=
 =?utf-8?B?aTBranRGdGx3dXRPNlJ5M1R1RkZGOWxNaFNVeHBGazVDNHF4R2VEU2hwcEV3?=
 =?utf-8?B?VVU3UERRalFqYzZhSWN5R1JseFVXaXNXcUNBeGhJOURvbVRFTHV4K0FrdCtm?=
 =?utf-8?B?eFg1cUxibEl6SGVYelNyOVBtT2FBcHBjamZBRkhvek4vZFR4MzNhZEJzcTNj?=
 =?utf-8?B?RVVxYmg5b2pCdE0vU3ZZZS9XUG9GZUhLc2xnMkJQR3BTUC9xUmJFcWV0QU5h?=
 =?utf-8?B?Nnp6K1NrNElvZVBQL0FMNTU1N1pyblB3dTFiN25JbXJYanlXbzhkUkM2TnlJ?=
 =?utf-8?B?WnNKZ2g4UkZ2YWk5WUdIRWpnWjlGbkNlM2JDS2IrcmtPOVd6ei9RSVVaenJY?=
 =?utf-8?B?d2d2MmtxWVJMYzI4dEY2K1RzdWFOQmtZWDBJdzVaeHBqSFpSTFdmVEhxakdu?=
 =?utf-8?B?c2lEY3dVMUVjbjljbm8xSHU2SUkyOWQrdXB2RzBHclVJcUV3L0RxQ3BaT0pW?=
 =?utf-8?B?dEtjTHE2alZETGJ6bDNXeCtyR2p1VmhYSU5aZUJ0RnFTT1VNTWpGbFNLbHdz?=
 =?utf-8?B?bGUrOStVR2ZtczR0K0JianlUQ0tnaTdEUHdBcHhMbkpsTzlKV3RUSEJTN3Bn?=
 =?utf-8?B?Zmdzbm00a3A0MmI0eUo2Z3ZtMGRyemZCVWtzd1JGN0J2UkxzWUI2RmowV0Zi?=
 =?utf-8?B?OVFJM1FqNUp1dlNPTGtpUU9PWnpaZnFOb3JuVGR3ZWxWems1b3J0KzdpT0tJ?=
 =?utf-8?B?ZEVBNTdZRDl0UkVWSnFYeTM2dHNIVmtoby9ORTg2YlF6RTFMamw2UU9YMmJw?=
 =?utf-8?B?Tms4cS9YRGxKazBxZ1ZnaXFuMldjaDNndEEySkExYmlwYkt5QWpwMHBjdVEy?=
 =?utf-8?B?amEwU2JMWGQ0QlRFNENjbnNEQXJXYXNlL0F2WHdOc1UySkhhcDdRQWl3YTFP?=
 =?utf-8?B?SjZVZ1ZTVitwRk5FaThQZ1Fkc2MvNVVDeDNSVjZmbnpUNkUzYWtSYXh4VmZU?=
 =?utf-8?B?bUVhZEZRK2J4Nmw4Qi80Qk1GQVZwRU05cFdyd0EzTU9FQWtoY3M4UmVJQjFM?=
 =?utf-8?B?bmJCcVJrcGZmdG5paE1nNDk1dG5ZQnBOTDBxNk5BYjNvMmFUUW1qMEk3b2Mz?=
 =?utf-8?B?UWY2MlBCQ29sZjdUdERjcVpicElNRWpPSXY0R1piODRtSnZqV1czT3hLQVhl?=
 =?utf-8?B?aDlPNDNmeW1pbkFHelZhOFJqa1JUdFFYbVN2K0hNbDcrS1JQZTVpb2cvNDF3?=
 =?utf-8?Q?P97LDRWDATPlQPQeBQMqnIcrsxD6zu4m?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXBEN3VwK1dtWE96bkRsRDJrelNiNG82UHRqWU1MazFUVGNEWFBpYU94WVQx?=
 =?utf-8?B?Uk9IOHQyWUoyamJGQXVadWRvd3RraTN0TDhTaEtwWmRkbTNIbmFzTUlkZU5P?=
 =?utf-8?B?Y0FsSXd5SEtHd3FDK0t5WlUya0ppaDY3YkhhRExidngrMVNQUjVtd1QzUTAv?=
 =?utf-8?B?Z05nRC85OWpCM3BoUlBOWENFS0tMa1cwQVdJeEJrRGo4MFBMVktUTnpNVzdm?=
 =?utf-8?B?Z3k2TVQ0VElVSitySkVQV1ZSRDBmdjhheExUd2tMMnZHYm1henhHMjdSbkRt?=
 =?utf-8?B?MG1lRUJDcWxhZXp5MXZlN3F1ZVlYUkNVaG8zQzkzMHo4QTQ2QkdYN1FOSkNO?=
 =?utf-8?B?QlFXdE9wTWw0dFZpbFV6MVRoa05uUjc3eE84eERnNzBndU1ieVNZUVlvM1dh?=
 =?utf-8?B?eDNIa0cxNmhVZmxVay9HSTRmV3ZxbVFiTlg5eFRaeHdwMmhDTGsyRVptanNG?=
 =?utf-8?B?RVdRbUgxcGNDL2xWbkxqZVlxZkVFRWlyYzZsTStiS0Yrc3N6QzhTZ205cGJo?=
 =?utf-8?B?aGkyOVVRNHVscEF0S3R4WkRXTUJDVjJqYzBIMEttUm0wNmk2VW40cDE5MUNy?=
 =?utf-8?B?KzF3MjF5OGRMbGRMMHAxVHYrZExIMWJHZ2hGdDBIenhkRytYWHJ2ellCK0Q0?=
 =?utf-8?B?dE9uSmQyVCthcEN6R0JCVmlQZXJpK3oyaDhNN3hzZGllYU51VkVpUzhxY2Rn?=
 =?utf-8?B?eUtUVUQ5Qkt1NlcyYzlJVVhkSVp0eXh1RGoySjRWcFZEVzU4WEZIeFpFTmhz?=
 =?utf-8?B?RVFRcVhQZnZPcHpEUE84RDR5MSszNEZxeXVuYTFnb1lSVDEwdi9oUjVyWDVT?=
 =?utf-8?B?dmVxczNGdFVLSXdydmR6WU9BYzRFRDBDZzNWYmZRaXFqTllJdmtBNzkyc01W?=
 =?utf-8?B?SDhBaktjK3FGbmpLVlV1VFdjcXVTdUs4SGxlclpTc285aWFnc3ZobU1LWC9H?=
 =?utf-8?B?bEhBL0pvbVhod1RIZEIrc09rUjhDSWtNdkhTQUM4Q2FvSitMK2g5MTZGZmdW?=
 =?utf-8?B?MnVnRDhBMTRkZ0swZ09kd05KemhQYXBrdnZRajFEcXVOUThpOVl4ZHVNU3pV?=
 =?utf-8?B?dGZtTnBtOXlxOTRzSVNnZEVtSjdaWGV3RUJ0bWNscTlYY3J1MTQxNU5sOGkz?=
 =?utf-8?B?S3FSNkN0Wm9Ld2cwa1VrWjZYNHhHZUlZb1lTOWtEWkhobnJlcmF2N2Vmb3I5?=
 =?utf-8?B?TmRKUWJzZ0kwTTU5Tk84SUhpU01yd24rRmV5akVjSGNvMUQrb1Bvb2JSUktQ?=
 =?utf-8?B?T3dkZU1KZklFa3lmM2c3UnVIZDVuT3JqbmFoSzZuUHJZb2l4TlZvSDdkQ1pY?=
 =?utf-8?B?QVBkb1hEeTFKYU8wOWsvS1doTHYvT2x5YysvWUFSREE1alJxd0hSQnU3T0ww?=
 =?utf-8?B?WTFGSFdwb2pYUDNtODR1QmowaWV1LzRudFNxTU9wWUVFbzFqdmY0MFdXeVZm?=
 =?utf-8?B?ZlMxV1psdXhvU1BreEp3VGQyYkJxbEJKZzYxalFiQ0tYa0NtaEZNYVUzdStJ?=
 =?utf-8?B?Y3NBbmtLbGo5cHlnSWNFelh3bE1WbTllcGlCZ3VZc0RIZ3ZZd1hJNGNTQyt6?=
 =?utf-8?B?bG9pdTBIbzJsNEk0YnlmMit5b0ppUlVnN202UXVVUnROWFo2QmpOenVVaWdj?=
 =?utf-8?B?NDZ0Q04yMlBUVlM3WmhzOFVQZk0xZU1LWG45ZDZqeFVteGFBeE1MVkJ4WldB?=
 =?utf-8?B?NnhRWVAvRzQ1L2hsbVJPL0c3emdDZXhFaHRPZ29OSzc3VUQwK3l4eEpiNG1T?=
 =?utf-8?B?YkJMWlM4M3liU0FmREdib2lSTFcyWXVRbFNjRW5QN1I0eU55YzBVMXBFZmpu?=
 =?utf-8?B?SUdXZUl5Mi9OQUdRYUh3Y3cyMC9uZFZ2cDREQ2ptd2lNMUU4RndEOVgwNytS?=
 =?utf-8?B?NzJLMmVGaUIvZVh1SklFc0E2K0NIMTlqcGNac2lyeW5zQzJENHZNZVd2OGZw?=
 =?utf-8?B?TUllYnJEWTJsTElNY3lUMlZTZVFmTE1HelV3SEVrVHpMS3JkbElYR3hORUJW?=
 =?utf-8?B?YmZVdXBHdUJkZnUzRDRkWG1QdWJKZjZWVnlJOXpobkFySWsvbjJuSDBLTWlG?=
 =?utf-8?B?UkhZSytoa3lPb0RETzRjNjlHa0gvbWthOVg5bUhmUUpzOEJrbWpHQXFuRWJX?=
 =?utf-8?Q?BZLX+Vw4Gm/1fKLEGdbn1J3at?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <42B2C4FAAD305940B329808514E066E0@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb4420ba-0937-4731-695f-08dd20d0b710
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2024 08:31:35.2929
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lojaYtZj+E7wwO2EAr0twCSjLXI+10uoCo0e0ydBD7g6+2RusBQToBQBwjUy85L0DzeGY4q7Y0wL1Psdg0hL9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB7942

SGksIEFuZ2VsbzoNCg0KT24gVHVlLCAyMDI0LTEyLTE3IGF0IDE2OjQzICswMTAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8g
bm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZp
ZWQgdGhlIHNlbmRlciBvciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBTaW1wbGlmeSB0aGUgcHJv
YmUvcmVtb3ZlIGZ1bmN0aW9ucyBieSB1c2luZyBkZXZtX2RybV9icmlkZ2VfYWRkKCkNCj4gYXMg
bm93IHRoZXJlIGlzIG5vIG1vcmUgbmVlZCB0byBtYW51YWxseSByZW1vdmUgdGhlIGJyaWRnZS4N
Cg0KUmV2aWV3ZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+DQoNCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRl
bHJlZ25vQGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pLmMgfCAxMCArKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1p
LmMNCj4gaW5kZXggMmQ1Y2Y3MzUyZWQyLi41ZDQ2ZDQ4NmM2OGYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaS5jDQo+IEBAIC0xNjc0LDE0ICsxNjc0LDE1IEBAIHN0YXRpYyBp
bnQgbXRrX2hkbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gICAgICAg
ICBoZG1pLT5icmlkZ2UudHlwZSA9IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQTsNCj4gICAgICAg
ICBoZG1pLT5icmlkZ2UudmVuZG9yID0gIk1lZGlhVGVrIjsNCj4gICAgICAgICBoZG1pLT5icmlk
Z2UucHJvZHVjdCA9ICJPbi1DaGlwIEhETUkiOw0KPiAtICAgICAgIGRybV9icmlkZ2VfYWRkKCZo
ZG1pLT5icmlkZ2UpOw0KPiArDQo+ICsgICAgICAgcmV0ID0gZGV2bV9kcm1fYnJpZGdlX2FkZChk
ZXYsICZoZG1pLT5icmlkZ2UpOw0KPiArICAgICAgIGlmIChyZXQpDQo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgIkZhaWxlZCB0byBhZGQgYnJpZGdlXG4i
KTsNCj4gDQo+ICAgICAgICAgcmV0ID0gbXRrX2hkbWlfY2xrX2VuYWJsZV9hdWRpbyhoZG1pKTsN
Cj4gLSAgICAgICBpZiAocmV0KSB7DQo+IC0gICAgICAgICAgICAgICBkcm1fYnJpZGdlX3JlbW92
ZSgmaGRtaS0+YnJpZGdlKTsNCj4gKyAgICAgICBpZiAocmV0KQ0KPiAgICAgICAgICAgICAgICAg
cmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAiRmFpbGVkIHRvIGVuYWJsZSBhdWRpbyBjbG9ja3NcbiIpOw0KPiAtICAg
ICAgIH0NCj4gDQo+ICAgICAgICAgcmV0dXJuIDA7DQo+ICB9DQo+IEBAIC0xNjkwLDcgKzE2OTEs
NiBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikNCj4gIHsNCj4gICAgICAgICBzdHJ1Y3QgbXRrX2hkbWkgKmhkbWkgPSBwbGF0Zm9ybV9n
ZXRfZHJ2ZGF0YShwZGV2KTsNCj4gDQo+IC0gICAgICAgZHJtX2JyaWRnZV9yZW1vdmUoJmhkbWkt
PmJyaWRnZSk7DQo+ICAgICAgICAgbXRrX2hkbWlfY2xrX2Rpc2FibGVfYXVkaW8oaGRtaSk7DQo+
ICB9DQo+IA0KPiAtLQ0KPiAyLjQ3LjANCj4gDQoNCg==

