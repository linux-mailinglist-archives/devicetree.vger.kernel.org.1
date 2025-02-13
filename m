Return-Path: <devicetree+bounces-146182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD314A33B15
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 10:23:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA9BC188B787
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 09:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9BDC202C27;
	Thu, 13 Feb 2025 09:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="BMSm9qMx";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="D/s40+az"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8892320103A;
	Thu, 13 Feb 2025 09:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739438554; cv=fail; b=SbwrLhLUPAoFVY4E0M4fNje2YpS0ss7R+oYK3Q3VHx+47vkFrhvFST6O319YdNp1edxsEHz5edzZyHb2cBUqepL/t2fA6kE/K6pZrnF/ykXPLBUqM/gD5dgmZHu7wN49g79no4bHYkZQI8luseo+sYZxBpM+RDc0AJ16XoBU2IU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739438554; c=relaxed/simple;
	bh=aN67xojx9dj13oTVVs9lINzwKRCt7c27FzFoS20IvZw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=JcX1OvdD66t4Cgeux2fOuT3tMiXaHJmxJDXiGDe/LMTO8/zGaLG4tlz8Z4YWbSoKRnQEjgzoBj23gr5+UeVQ3AffTVcfydjWA0UEvrnQtwGKfWwWiDzo7pwd1HenbFnhgylmThGmIjadmc+uBt0iG+MfstiFexssAhygEioUm1Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=BMSm9qMx; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=D/s40+az; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 0a514d76e9ec11efbd192953cf12861f-20250213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=aN67xojx9dj13oTVVs9lINzwKRCt7c27FzFoS20IvZw=;
	b=BMSm9qMx1CDBFraajx3v+GTlxlFeViv5S4lvjFtE0B7GrH235P0/mZa3wza5sOxSobJX8KK3dunblogjYNct/7gBa0AVdEOVbt4+n2cW05O3w8JiUXAvpleKjquaYzjAYcXQ4meaVWR3ec5wwd65nMeDRf9TnVhLMDXQEIofh/0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:2705221a-c2f9-41eb-9bf1-ef49173b16f1,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:e15569a1-97df-4c26-9c83-d31de0c9db26,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 0a514d76e9ec11efbd192953cf12861f-20250213
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1572059799; Thu, 13 Feb 2025 17:22:26 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Thu, 13 Feb 2025 17:22:25 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Thu, 13 Feb 2025 17:22:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rRewzrrjZbDomsMnZUnPIFi5wC2tC0UQP1qDyxx975TM3c5SdjO6UnsX8E7Oy75Ig0xYUEpRqHg/e6KwarsM8QHpxKdjmMEjb5/yueCqoDC1cpUbFKmOUszCa0X2kFkLHlEOhf76x0IPccIeAtvta01qPERH+ue08HxW/sqVUdambbAHPpZlnriQ/+zSXyV56AfkW8/POnfbS6jLPXGj1x1p15Wu+Isalxi5H4xFhlVkH31rjQOyEnuWm85u1wT58octrNEKLG31kQWuo+py0kKEntK4eLzo3BbHJ/PPE+OAE9CU6rYbyMBfueRcdkDz55XiSm+62F8Vt7DU5kYgKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aN67xojx9dj13oTVVs9lINzwKRCt7c27FzFoS20IvZw=;
 b=FCteWU6zpVLZniqbg48vgY5IWAcYCCNmfCB6T2MkswmGhDELsWh6OSFU/Hg6bpwo8BF+TnahvG2K5g6PJYqjeBxr51rj+XYbhNO6PQi7eYAp2oFKvr9fXwXTYyJvnm1Bn4C/Bd0W55WOm/M/A/zxMEiCFD89xpMHg9I0rANmumuudU3AVp+Pd7KKnw1dsVjzeG/kFsN5uyahdtE9l38Lw9JtA4RTQCsEigEw/C1aNjW7cyl+xBd/AiDvdbl7vZMKHBy+nC1gVpP+W3ktUySgaTarVd4g59wSFA30e/gLV8ABJY5QQDDPKM0BU5PHqmTvCzY7QbJrOCYByClSFjDozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aN67xojx9dj13oTVVs9lINzwKRCt7c27FzFoS20IvZw=;
 b=D/s40+azqwy9KaMIaPaUvYzW08yB8JV9Ndo3F5Mx3iJ7Z0exCDfbjyfP8GLyaCzFTy2bzp9wuCyxim1KMr/EARu3UE7oOj8MOtwrUXzceinbqIRyG9lLv5yp/irMvPbu5NipJ4DVFZMEmh6tzQ2wd6PukPrcFkbiw7iR/As0EkU=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEYPR03MB8789.apcprd03.prod.outlook.com (2603:1096:101:205::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Thu, 13 Feb
 2025 09:22:22 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8422.015; Thu, 13 Feb 2025
 09:22:22 +0000
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
Subject: Re: [PATCH v6 38/42] drm/mediatek: mtk_hdmi_common: Add OP_HDMI if
 helper funcs assigned
Thread-Topic: [PATCH v6 38/42] drm/mediatek: mtk_hdmi_common: Add OP_HDMI if
 helper funcs assigned
Thread-Index: AQHbfHk1O1ypGIgelkiUaSzNaEuW57NE+J6A
Date: Thu, 13 Feb 2025 09:22:22 +0000
Message-ID: <dbf97af777753c8611cc3de9dcb87727ba39f542.camel@mediatek.com>
References: <20250211113409.1517534-1-angelogioacchino.delregno@collabora.com>
	 <20250211113409.1517534-39-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250211113409.1517534-39-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEYPR03MB8789:EE_
x-ms-office365-filtering-correlation-id: 0584726d-9a91-4736-59f9-08dd4c0febea
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OUt2b2R1ZXdpYzQ4SlpGYUI2cCtUWDVHSmJHdmdIZm1IVnIzZWM2N1VBRmhv?=
 =?utf-8?B?UDlLbFJsVGlQMFRxSVJZWFRkeCtTRzJTNi9LV0RhZDl3ZVE5cVUxeE1QWlZs?=
 =?utf-8?B?T2paNHN4SzZHUmpESW40eHpvYWJQUmI1Z013T2YvMklqUFlEZmlvZkZtZjZP?=
 =?utf-8?B?WGk5bGdKWGVIdndpOXMyOCtCN1FIUHo1aENzc1ZxWktEN3RQSlFFY3N4R09S?=
 =?utf-8?B?bnYxTHlMRkYvVlcwUGVwQmlSaWU3N3BBZDkwYXJNYnNSYmJoWDNwaW84TXNQ?=
 =?utf-8?B?NHhTM1ArdFZRZkhmK1N2N1I2cFk5eDV1b0RmcC9LTnZ3M1hDUnB3bk5aVmRo?=
 =?utf-8?B?Z0NPMjcxcTllelcvZ2F3cnBvazlxSEJvUm02Uk90WGQvOW5LcXJPcFhteGpV?=
 =?utf-8?B?Q0N1Z2NlV3dRczRaT1pQVDhvYWlSL0tLNlVEb3hNWUg0eVEwT05yQ3RLY20r?=
 =?utf-8?B?WUQwUDhLeGZicE1CSXdadHowaTE3UDdCVk9QZWJLR3NNMGFIRFVHMU9IYW1F?=
 =?utf-8?B?Z25mRlYxN09adEVvNDNzQlJ0bGhLSDdYUnQ1dkZoaUJKeHFUOVdWUVdiaTgv?=
 =?utf-8?B?RSt4NWd1NWhRaDNucFZxWXBobW9jc2VEMDhNNXlXQ3A2RGdxVzdXRDNZUkNF?=
 =?utf-8?B?T1ZrT25CQUs0SlhvcjJ0NmlYb25lOWsyUFcrNXluZENhZkNXWjJiTTVEVWV0?=
 =?utf-8?B?RS9xQmFwdm91dWxwVE9QNFBXaDRPL1JUZ2lKcjlQcksrSk5MMjMwTVNHdktn?=
 =?utf-8?B?UXBudmlRRStEZmVHSWlwYXluNE0zQ3E1UmNrS3FCZVM0Z0xTaUk0UGdYTDM0?=
 =?utf-8?B?S0FwM0FLZ3JoVVJEYmtDSnQ2YzNnZWlaQU5CUk0rUWhTTFV5U1VydjJOdnVJ?=
 =?utf-8?B?c2ZPZGE1Y0gwRW5KczlnWFBwRVBqdnpMUDlTNlh3NG9NMTNYeHZlTHlKbVRn?=
 =?utf-8?B?bE11ZGRCSFZYZWFNQ0RDemdQOWNCNU83cjNrcWRFR0ZBT2E1NmNEN0czOHpG?=
 =?utf-8?B?a3dka3FMY2NiTzZ4bWY3c2kvTkJ2UlBUeFgxejdmK3lsUjQ5cS9qcHBUZlBj?=
 =?utf-8?B?d3R2WjFZMVpyTWljM1FiWkNzSkdoUlMxRDNmS0txUEdGNWxIazl1d1M3RGtN?=
 =?utf-8?B?cXdnRk1GZklVb2s3NmpwbE1OYXFMbE9MMi9vVkNFTUtGYXpmbXgzMkR0cGV1?=
 =?utf-8?B?TkUzejZ3Ukp5SjMwMW9hSWpOMlI4eGU4VC9tVm5lVkN0WkR2V3pZbXdPWU9E?=
 =?utf-8?B?Q0xBQVFVVGpzbGMxczdqeDcwQkIzUGVzWGxWeFBMY0RuZmVvZmc2RUYxUXFI?=
 =?utf-8?B?WUI5QzJDdndGQ3RyN2Z0am5ZaVZ1M0xEQXFhVGZNaW52bTU0cHpZYmFvMk9o?=
 =?utf-8?B?OVZyeE9oNGZ0WHV2bTVmYzFhOXpTZkR0M0N5VDVhMUZTcXJGamc5akZ2aG5D?=
 =?utf-8?B?bk8yR0daQkpodS9kS3psU1RjR084Y0lOTGEyODNla05XelMyV2VDREFQTEVl?=
 =?utf-8?B?R0xBNlg1anlsMi9kVmUzQVVvNWdLSW5RNitoUFRkbW1WbWRyQmJNTk1yVXBX?=
 =?utf-8?B?ZVlkSmpTY0g3cVlkL0RkKzBnZm42YkRqb09nbW0zOGxEOUFYN1o0TGcxNE16?=
 =?utf-8?B?cDVUNVZBU0ovOGZTTHgwS1ZEQ0FQMTV3SHFvN2piWUMxN2gxWnh2c2dGT1Er?=
 =?utf-8?B?OEo5RGEzSWkxWngzUGE1ZVRId21DREhWeCtSTVkwNmdyWG5lRXlqQ2Ezcm85?=
 =?utf-8?B?Q0VGYVcvVVBJcnRzWG1nT1FhSmZVVVJ2TkRLRmpFVFNZOElaSXRrY2MrUlho?=
 =?utf-8?B?cVN4MU1ta2wvY2VkZXhYVFJVUDArekh1SEJkQ3dyTmsyUUk2Y25XSVkxcWZt?=
 =?utf-8?B?R01MSElqbkdnanZuQ2R6ajRTQVJVMWFtdnR6ZERTMkZySXBHTTd0QWpGdi9Q?=
 =?utf-8?Q?mZ1J2rgxBEC0J0EmXliLanTphek2yv3V?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enVTQ05VTU96MUtUdElSSVNMd0NjYXJvUFdBRDZRem9JM0hwTkgvRFY5SWw2?=
 =?utf-8?B?U09FeG42djBMYndQVmpQYWtlOWFXUDRmeXdOdUtFTlhTV2pVdW56ZTdLdUZK?=
 =?utf-8?B?ajJSUEVQV0hCOWlyYjZxSndzaW1WdWZDZWZaMURWSmhoUFJ1Q1I0WkJtY294?=
 =?utf-8?B?RVBBcUhqVXdxTnVwc0RkbnpNT0xWVllLTmt1Rk81NVpqUjR3YVBnMUpnY1VG?=
 =?utf-8?B?Wk1qWlVtWFVuNjZ2Ly90eW4yMFFtaFJtQUxUdHFCdUJqK0h1Ukx1d2k4SWNx?=
 =?utf-8?B?RlhtVHpXd3NCd2srRHo3cmxlZStvbVM0eUI3MjBQb2ExeXQ4bHp5eTdMdHVM?=
 =?utf-8?B?eTEyVkpOR0tONzJCTkJhMmRYVHBKdGY5YlJNczVyaCtMYUw4OElpMzdnSlVt?=
 =?utf-8?B?WGM1cE9NbERtelJLREJiZzhpTkowQ1doaS9LKzNJb09JYjRnYnc2dHB1UDg1?=
 =?utf-8?B?ZXQ0clJoYndVMTFKOHJjdW03cE56SVJaeXZzamM3NUhsRkVpZ096eUZhVEJq?=
 =?utf-8?B?MGpXWlN6US9PRlNRRUdhN2hPSVZoTkZnYWpJTVFtckRhSGVzR3ROZ0k5NHd0?=
 =?utf-8?B?eHhTRnVCb3Y1dk96NjBBUWY1Q0Q3Z3JqVTcwcGhscms5Yy9VdGYyQ24vVWZN?=
 =?utf-8?B?RDA2NU5EbEh2ZFprMjI4TFU1b2FvNEFUNjNWYi9JdXZTNDNoUC83NWVqZW9Y?=
 =?utf-8?B?UnpCNGFoLzRKK3MyN0pObDFaN0U1UnhRbWMxR1VkMlZBUENSSjFiR3hSc3Jp?=
 =?utf-8?B?NEs5OGJhaVFNWTF2b2FaajRHNkhOZC84Ukx0YlZ4bjkrdTgzTzdpVW8vN3hB?=
 =?utf-8?B?NkMzTk9LYWFCVEN1cXFISUxDMDNVTm9WYjVpaVdEb1JQV0d4ckp4UlNqUVpw?=
 =?utf-8?B?bUk2akhoZTNEVlVlODJTQ3RkODZYbXhITGdtVEhWdjFNcWZoVnhQTmhxSndZ?=
 =?utf-8?B?cFhRV1ZKM2taUHZJVEFENTNUejc5elBCekpaOVdUbjhIUkdoTHB6UVZieHpa?=
 =?utf-8?B?NzhSRC9nVnh3SFNhZlh6VjdGclJsTHJJOC9pdmdGZkxkQTVueGJ1cElRcVgr?=
 =?utf-8?B?aGFpMXU5RHlQQTFaVmVuRWdIR3hFUjVuckJTenA5WllDNlA3eDdIV3NwMmJZ?=
 =?utf-8?B?ZlVwMnJINXYxWnBZemUyQkZndzJwTUdWb2NuL3JoZXpXMHZ6c0tjK3VBQ1lB?=
 =?utf-8?B?K09Ma0V4OHlyTXdjWm1EU2VjOUhjU3FydFRWTTVDWkRhd2NseHVVeWhZMTMr?=
 =?utf-8?B?bjZqbHFQZlFuOFcrb2lnVjhUa3BHNHZLeXZDMisxMzBtNDdWQ2g2a3N5UE9U?=
 =?utf-8?B?WUNva0xmVzE1a3d4K0tBbHBHcW5ScjUyR25mcllZR25GRlU3bEJyQjEvSVpW?=
 =?utf-8?B?L3IzTDVoQ3gzOEplK09vRkNMbHNlSk1CL3FZWlV4U09IMTJyZjdJdzlFU3Fv?=
 =?utf-8?B?cGU5ZVlwUmcxMWtmR3BUejNkR2hkLytBeEM1SWlUTkdKOGNodWVNWU1Qd0x5?=
 =?utf-8?B?OEgrYW1WYWVjY3RZcENSWEZPS1ZuVGtEcmlpU1NJQUduUDlkZW1qQUFYbXB4?=
 =?utf-8?B?MjRnd2wzR01NeGVWajVoUlJUaEt3S3dkLytlc1dITkFSb1VWbUxMeVp3OUtq?=
 =?utf-8?B?SWN5ZGk0bURybnhTOXNGMmtMN1BGemN4VlVLRjIreldaZG9vWkM3elpIK3VE?=
 =?utf-8?B?YnlGdjRiVDhaQW5Lcy94SWllTUtaRUsrUmpZdTNvUWlTREhEcE5nb3pLeDNu?=
 =?utf-8?B?SWxxSlMvMGNRMmNyMVJpdVo4NCtUT2d1ZmlOZmQxTytLUDRWa1hKY3BHaU5w?=
 =?utf-8?B?OExNS2Z2aDc5aEU4RWVucVh2bVI2dHNGdXJvUWdMek54U0V4UFp4eFdJR3Ey?=
 =?utf-8?B?Ty93aWFvZEQvZnk0UzdnKzNWM2hyYXJQSlp4RjNKT0pPVitjVHMyWDNHU0NT?=
 =?utf-8?B?NXhtVVpNQXVkcC9TTE1WYVQ5UDdRSzNxWTNDWUV6YnkxMmN5NHRzUDByME9a?=
 =?utf-8?B?dDhPcldkMEE1NWtaRkxoc0pjM215bmpUWmJzNFdkNDFlMlBQdkUvY2wvcmRW?=
 =?utf-8?B?bVFla3Y2QzBxQTN1MFlGR252Q0dGMHBqQ3JsT2xIdHE4QmxqbGUwYlNoT2Fl?=
 =?utf-8?Q?Ns+VXWpfEAZE3tDZBvsDTBEqR?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CFF2ADA14BACED4EB8F96DBBF52CD1DD@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0584726d-9a91-4736-59f9-08dd4c0febea
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:22:22.2140
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chFKws34RHNs8vjonhaQBC3uX3beu8bspGeJJH0O60z6KIRVMMfbrABONKsvqXVmtO+oPD+DPVjvwfy6bXBLzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8789

T24gVHVlLCAyMDI1LTAyLTExIGF0IDEyOjM0ICswMTAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtz
IG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBv
ciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbiBwcmVwYXJhdGlvbiBmb3IgYWRkaW5nIHRoZSBI
RE1JIFRYIHYyIGRyaXZlciwgYW5kIHRvIGFsbG93DQo+IGEgZnV0dXJlIG1vZGVybml6YXRpb24g
b2YgdGhlIEhETUkgdjEgb25lLCBwZXJmb3JtIGNoYW5nZXMNCj4gdGhhdCBlbmFibGUgdGhlIHVz
YWdlIG9mIHRoZSBIRE1JIEhlbHBlcnMgcHJvdmlkZWQgYnkgRFJNLg0KPiANCj4gQ2hlY2sgaWYg
dGhlIEhETUkgZHJpdmVyIHByb3ZpZGVzIHRoZSBmdW5jdGlvbiBwb2ludGVycyB0bw0KPiBoZG1p
X3tjbGVhcix3cml0ZX1faW5mb2ZyYW1lIHVzZWQgYnkgdGhlIEhETUkgSGVscGVyIEFQSSBhbmQs
DQo+IGlmIHByZXNlbnQsIGFkZCBEUk1fQlJJREdFX09QX0hETUkgdG8gdGhlIGRybV9icmlkZ2Ug
b3BzLA0KPiBlbmFibGluZyB0aGUgZHJtIEFQSSB0byByZWdpc3RlciB0aGUgYnJpZGdlIGFzIEhE
TUkgYW5kIHRvIHVzZQ0KPiB0aGUgSERNSSBIZWxwZXIgZnVuY3Rpb25zLg0KPiANCj4gSWYgdGhl
IGhkbWlfe3dyaXRlLGNsZWFyfV9pbmZvZnJhbWUgcG9pbnRlcnMgYXJlIG5vdCBhc3NpZ25lZCwN
Cj4gdmVuZG9yIGFuZCBwcm9kdWN0IHN0cmluZ3MgYW5kIEhETUkgaGVscGVycyB3aWxsIG5vdCBi
ZSB1c2VkLA0KPiBoZW5jZSB0aGlzIGNvbW1pdCBicmluZ3Mgbm8gZnVuY3Rpb25hbCBjaGFuZ2Vz
IHRvIGRyaXZlcnMgdGhhdA0KPiBoYXZlIG5vdCBiZWVuIHJlZmFjdG9yZWQgdG8gdXNlIHRoZSBu
ZXcgaGVscGVycy4NCj4gDQo+IFRoaXMgYWxzbyBtZWFucyB0aGF0LCBpbiB0aGUgY3VycmVudCBz
dGF0ZSwgdGhlcmUgaXMgZWZmZWN0aXZlbHkNCj4gbm8gZnVuY3Rpb25hbCBjaGFuZ2UgdG8gbXRr
X2hkbWkgYW5kIGl0cyBvdGhlciBjb21wb25lbnRzLg0KDQpSZXZpZXdlZC1ieTogQ0sgSHUgPGNr
Lmh1QG1lZGlhdGVrLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWlfY29tbW9uLmMgfCA1ICsr
KysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pX2NvbW1vbi5jIGIvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19oZG1pX2NvbW1vbi5jDQo+IGluZGV4IDJjOTFmNjVmMjZmYS4u
ZDU4NzUyYjc3MmU4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2hkbWlfY29tbW9uLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1p
X2NvbW1vbi5jDQo+IEBAIC00MTAsNiArNDEwLDExIEBAIHN0cnVjdCBtdGtfaGRtaSAqbXRrX2hk
bWlfY29tbW9uX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ICAgICAgICAg
aGRtaS0+YnJpZGdlLm9mX25vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsNCj4gICAgICAgICBoZG1p
LT5icmlkZ2Uub3BzID0gRFJNX0JSSURHRV9PUF9ERVRFQ1QgfCBEUk1fQlJJREdFX09QX0VESUQN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIHwgRFJNX0JSSURHRV9PUF9IUEQ7DQo+ICsNCj4g
KyAgICAgICBpZiAodmVyX2NvbmYtPmJyaWRnZV9mdW5jcy0+aGRtaV93cml0ZV9pbmZvZnJhbWUg
JiYNCj4gKyAgICAgICAgICAgdmVyX2NvbmYtPmJyaWRnZV9mdW5jcy0+aGRtaV9jbGVhcl9pbmZv
ZnJhbWUpDQo+ICsgICAgICAgICAgICAgICBoZG1pLT5icmlkZ2Uub3BzIHw9IERSTV9CUklER0Vf
T1BfSERNSTsNCj4gKw0KPiAgICAgICAgIGhkbWktPmJyaWRnZS50eXBlID0gRFJNX01PREVfQ09O
TkVDVE9SX0hETUlBOw0KPiAgICAgICAgIGhkbWktPmJyaWRnZS5kZGMgPSBoZG1pLT5kZGNfYWRw
dDsNCj4gICAgICAgICBoZG1pLT5icmlkZ2UudmVuZG9yID0gIk1lZGlhVGVrIjsNCj4gLS0NCj4g
Mi40OC4xDQo+IA0KDQo=

