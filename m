Return-Path: <devicetree+bounces-119292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 798379BDE6C
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 06:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A43B1C225F0
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 05:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154C3191F71;
	Wed,  6 Nov 2024 05:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="ZQOoJPGT";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="FlSOxdH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C351917C0;
	Wed,  6 Nov 2024 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730872737; cv=fail; b=ZZPFRJeVAVseErlm7F9rNrcH7meZNgjRv4z2C78nnOXBm8XCtFmqC1it2lEvFu2oSj6UeCie4aOFv6Yc6F3cxBpC4UQOWRlkl9ZxbYhp2VJ6gTDLcdxegx7ocMUyDuyt5kf7qK9pFwbyBGDoERS8T1cf4fvnT+m5X+MoMzLCPk4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730872737; c=relaxed/simple;
	bh=AWxyb/dVqhpZxSITI9iNfOOQp3UU1ihLhpR9Aq8KPZU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MVMkzMzMxJFLuQ2o7Jib+/6F0MrfiGpdvzF71kZzKSMOxi++nsMVD5frx+/rPHukTWxHLWARgKpADu81H5Pdo6KtuV/GKy7oxNYwmfNXm2E/cCxkdU0YUrCwySMHOJWA77RrnTGCW1aWaG/d8GsHWpdt6xmI5tN1sm4xLo068r4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=ZQOoJPGT; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=FlSOxdH5; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 2f78e41e9c0411efb88477ffae1fc7a5-20241106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=AWxyb/dVqhpZxSITI9iNfOOQp3UU1ihLhpR9Aq8KPZU=;
	b=ZQOoJPGT/PsOGw65Zjff5CaaeeRiA6tqN+MYNca8jlr45kzud7x7Xp7jRUw6BV9m2xoSE5mKRFrfGXU/9PC1pQMhagkkfbe1PbjAuYG07DEa0dnlti8inINFj2WEVo4oFc884prJ0K9cZgaax5z5LwfSdbTA3EJyFbeFAW/uyC4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.42,REQID:cf48aa84-6433-4454-8bb5-c62e6e3abd10,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:b0fcdc3,CLOUDID:804ea006-6ce0-4172-9755-bd2287e50583,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 2f78e41e9c0411efb88477ffae1fc7a5-20241106
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1725203688; Wed, 06 Nov 2024 13:58:46 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 6 Nov 2024 13:58:45 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 6 Nov 2024 13:58:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pn1YPPuREq8It9J9pb5PV8uZw+eFOF0mHMltDNSGz2cH4DSwukrRYQul8s25pH6SIggJWlnIlUVtlFuQpwnZVAWmvtjJyPVLvoFHT8KfXbkvScc7njqLfazhvJkoNYfApJIYcDZNp9zcu9K/drnOao8Pn5igW9DjbCf4fp/ErzctarVgTxLkQIQR/QHZ5sW8bTqNf14zZ7xEcT2dDEuYsK34ZuSR6fanR9X15DH5mUwZNMdsTxIVPjTHgyruTDNt3EmbSaeYqD2hQpty+ZrhQG91cWLELQPpMAbLmFa+H0wlGqJ+IjDvJqGXvcagl/fqskQKZowe9nJ5NFpUFlRaXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AWxyb/dVqhpZxSITI9iNfOOQp3UU1ihLhpR9Aq8KPZU=;
 b=sXlmVHNsz0kCxm62NGSV9EgEFXgh4H3QWbBkrhwmbobh3lwv5YPhp24ejTU0EwusSza+jArKERrpzBIujoG2MlDsRLrQ8YcJ99WzBAEcWO8eUrUkA6K2F+r4NwXENgwKCbTFsXhYiJ8VUEWruskq5Cx7g/KCZa6E+RYhQ33qRsCM0/Y90mHC1ltUalEK155KYGgGN5G7orCZJbkMFeDETzkNt65gF7nsAeEtIesit39n4461AP2bFpkNomHBZXB0zfL4xIK7IUrguziEyTYyFFjtKQFa7dF53k/7koj+z7Y05s6VeBfJ8BPUh4ftN32L4+bRlBza0AJgZTRajEEH3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AWxyb/dVqhpZxSITI9iNfOOQp3UU1ihLhpR9Aq8KPZU=;
 b=FlSOxdH5foyZI2XFixD0CbsOqH8dK7pGiGA1k7WVBOOMm6BHKICGvAXRLncodL+lZ619FpdTGMWLrZuMMx83tq2sk9uUtp2fnFy0jBqZRNUcskfQoEZp+ZM3InWi2rCRfH1X4bXwMo9bV1aLKPmKzRkfJzjy726yszMJn0tprd4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KL1PR03MB7503.apcprd03.prod.outlook.com (2603:1096:820:e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.25; Wed, 6 Nov
 2024 05:58:42 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.8114.028; Wed, 6 Nov 2024
 05:58:42 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	=?utf-8?B?U2h1LWhzaWFuZyBZYW5nICjmpYroiJLnv5Qp?=
	<Shu-hsiang.Yang@mediatek.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"yunkec@chromium.org" <yunkec@chromium.org>, "linaro-mm-sig@lists.linaro.org"
	<linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?WWF5YSBDaGFuZyAo5by16ZuF5riFKQ==?=
	<Yaya.Chang@mediatek.com>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	=?utf-8?B?VGVkZHkgQ2hlbiAo6Zmz5Lm+5YWDKQ==?= <Teddy.Chen@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "hidenorik@chromium.org"
	<hidenorik@chromium.org>, =?utf-8?B?U2h1bi1ZaSBXYW5nICjnjovpoIblhIQp?=
	<Shun-Yi.Wang@mediatek.com>
Subject: Re: [PATCH v1 03/10] media: platform: mediatek: add isp_7x seninf
 unit
Thread-Topic: [PATCH v1 03/10] media: platform: mediatek: add isp_7x seninf
 unit
Thread-Index: AQHbGj1K7oS5BpZAxk+Yfu5zQIUxBLKp7WGA
Date: Wed, 6 Nov 2024 05:58:42 +0000
Message-ID: <3d54575e322211957907fb33802fc16b377ebab0.camel@mediatek.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
	 <20241009111551.27052-4-Shu-hsiang.Yang@mediatek.com>
In-Reply-To: <20241009111551.27052-4-Shu-hsiang.Yang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KL1PR03MB7503:EE_
x-ms-office365-filtering-correlation-id: a124a0f8-3d73-4b72-8f76-08dcfe281153
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eGVzUVdQcUl3emZydWl5YjhOTGdHUjljZzEwWllYRVVEUkJXSEFjdXFwb25J?=
 =?utf-8?B?ZVJBMGJ1djBBK3B1WnVzR216RnRwMUoxQ1oxNGt3aHAwZVJNU1p5cy9mSDBi?=
 =?utf-8?B?eHZ4Q21maTJmT05pRm5sOXdVb1IzcXU4YlRYSHBocUhydW5jQjhwVzkvcTdP?=
 =?utf-8?B?SXRpN21hRE5qNDNWcFdUZ04ycC9hOVBOQktVdk5neUpBZDUyb2hnTEh5VVpB?=
 =?utf-8?B?dW1CNGRPMDhHWXJ2RU1PN2l3VTA5dXpVNEVDVkVJSjlmaW5aaUtZTWQ1bEVE?=
 =?utf-8?B?YWN3RDJ4cFNEWkpPTjlwZm5WeStzTGlZSTBMM3p0ZDlscDFmSm1wVUsrbTh0?=
 =?utf-8?B?MHZvUHBLYVRtemJER2cxZlNZWTh2YmtSQzNWTHlyc2NHeUNEaU53anE5cllK?=
 =?utf-8?B?amlOVE5IeVhtR1pRVkV4ZE9CNFdNaGs5UUpEY0tkZ0oxL1dVV0dXR3k1UE1E?=
 =?utf-8?B?UXJydi9jUVVTSVMzdzFqUFg4YThNVzVoMDFHUHl6TEUvNWJtOWszd0NEUmRT?=
 =?utf-8?B?aWVlZTZVNzRaZ3ZSbVJOTkZBTDZURzc4bDY1eitzanhDRHR2YVlBeVZ1MWdM?=
 =?utf-8?B?VGlZK1V3M2YvUGtObllxaXgzTkVDZ3JRM2lFVWMxQjFyb2hmV1A0SmVYNm5P?=
 =?utf-8?B?UUxvSHpvT1J1ODY0S0VHL2hEZWtEWnpvUVJ0Q1N0VkZzSjZlbjhvV21EaVli?=
 =?utf-8?B?WVFMa1NRY21CL0ZNTXprK3RRZG1nTVV0RC9RNXBmWFlvNmY3Vk5TczAyVUw0?=
 =?utf-8?B?OGJudHFnQkYwckNYYUZvWG5uaFBQWUpVSFgxNTNNN25URU1vdnZiWmtLSWlW?=
 =?utf-8?B?dHRqd2puOWFCMzhzMERSaXZDMHR4MVlKUEZoYnJPekFJVEhuTThaTHZmMFJ3?=
 =?utf-8?B?TDJRd1o4UU04UUpnaE5NVzNGMFBmL004SVRjTHdUTnFwUVRKMzROY2x4eUtG?=
 =?utf-8?B?UWsvMFM0UkxpRnNVb2pUQkhBaENQZnJnTG9NamJpTGxtTW4xYVNQcjc4Y3Qx?=
 =?utf-8?B?bGpWdytmTzBxNmRJUVMreEMvZSswd3dLWS9pY05pL0YxVDBuRG0zbUIyenph?=
 =?utf-8?B?UEt0Ulk0WHV1KzhZOWMrUDhXS3piWW9CM0dBWHJHekpFNFQybWFsVzlMbnZv?=
 =?utf-8?B?MmV1d2llVjVZRkk2VCt0UnlWMTFhbHgyWVprL2MwQ0dYV2tNUC9rWlV1UmZa?=
 =?utf-8?B?Q3FsQ2xiYVpMeDJpZEw4VmNSZVJVNG42SkcrbUZyMTJ6bzdwOVlOa3k1SExo?=
 =?utf-8?B?M1hhZ3pobC9kVjB1VlhkTjJYdFoxTnpnNGN4S0ZOU01WcHY1LzAwOFd4SitX?=
 =?utf-8?B?a1RhSFJpdmo0TVZMYVpHM054Y0xsNWEyNWxPcERad0Q4Z3FvOVBuOEE3K0Vz?=
 =?utf-8?B?bFQ3QzJMTmRqa2F2TVdoSHRjcmxkbnlYd1RUZkZqN0MybE10MlhML3czNkx4?=
 =?utf-8?B?MDhOUCtndlFKRFRFYlU3cXE4eGx4ZmRZVFc0NEYwNnNReTM4WUJ2SDAwbThF?=
 =?utf-8?B?d1FIWDIvOGdoRWVBYUxFeVM5WDhMM1J2YitqWkxFcy9OYlNHYkRNT01LajRN?=
 =?utf-8?B?VEhFU05icTR4NzNnVVJNYzFDMDVLYnV4em85OXlXa0FVbjEwY0o2STFQaGph?=
 =?utf-8?B?V241L3N0Z2FxN2VDV2VjaENWUWhleHQzM0M4bjhpTmtvYkhURmg3MHJDc1ow?=
 =?utf-8?B?cy9KQkhTRGxDNzYvbUp3NUV3YUhCcWlBdEtMQUprV2dXaG83VGRvMGFqU1dz?=
 =?utf-8?B?U21kcGtjRGJ1eEc0dC9STFlqNUNaRmhBeER5NjA0OFVLdUZrMC8yNTN6ejlX?=
 =?utf-8?Q?dVYVRAX1/81kGQRSte3h58h8u/CYGp29AZNg8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnE0ckVnd2dzU091c05uaWVJL1N1ZkErK2VFK2Z0WStsUFlOdUdOeHBVSjl5?=
 =?utf-8?B?bk4rZ295OHByTlRuMzRYS2twaTEyWnp6a1BmSXprN0tUWFJidm81aFc4eUtq?=
 =?utf-8?B?S3FrM3krSHlWeVk3S3RMMHNNSUdJMU1NUitYeGFrcGpyeTIyTGpTRnNXaVpS?=
 =?utf-8?B?Z3NXbUpCYkF6MG5MRjczaUdhOFBVVEhNcGlHQXVQdjV4eUhNa0NGZ2lYYUUv?=
 =?utf-8?B?eTJuOXg3NGE1d2NUUkFKbDFtN1YrOGxlT0VWT25tRUp2TnVHUHJDTkIrakQ2?=
 =?utf-8?B?a0h4RjNLekRMdldhdEtWYWxUQldaRnlXckFmKzlIaXMxRWtEUXlFdlRWUVBG?=
 =?utf-8?B?cXMrbFBzdERjU1BodTcrTXAzdUMwc1d6bzlvMGd5a2JyQkFxZWlqOU85ZXN0?=
 =?utf-8?B?bzBlRGgySmEzRSs0WExhMVZkb3NpbEZXZFNpSURaU1Q4aHlLazJaWnhvc3Ax?=
 =?utf-8?B?U2FiRUQzLzRQU3R2RDVsV1RYOForOUxkZlNPOXk1NmtTWGpIN044c3UwK3Ru?=
 =?utf-8?B?SnRxOXpQbHpDYlZwQTZvb2RLNGZQYklkd2xaeDN2WElmdktWYTRQMmROQ0dZ?=
 =?utf-8?B?d0E2OTAyVkM4bTljN3hPNGpqTmhUMWRldzlmYnBkM1dUb3ZSV21jV2N1d0ll?=
 =?utf-8?B?NllBNkx3NDVCMmc3SVF3d2ZVbkRtRlJqKzFuejA5dkdvSGlSVTZIalJVdWd4?=
 =?utf-8?B?V3pxTVphbG9McVYwdHpkOXFkSHQ3UGRsNXNLWFh4Zi9vZmp5WFE3RUg2K0tl?=
 =?utf-8?B?dE4rQ2RCNGVnSitoVnhJNFBuSUM5eFBEWnFZUFB0VkU5S0NTN3Z2T1cveVdD?=
 =?utf-8?B?bktMSUVlSjA5bVBpRHViN1Vqa1VCWGVyME1qWG1vMjh6MStqNmVSc1BHRERl?=
 =?utf-8?B?Kzd4NmlPSjQ5eUQ1dlM5L2J0VUFPbjBXL1l6eEh2MVRoV2tSU01FVUE2eE52?=
 =?utf-8?B?R2ZoY0hzRmdBSWpBRlZvSHJ0WDNEQzY0V0xoV0FRYzJjZzVVU3VuWktGbzlQ?=
 =?utf-8?B?YjhPQ1VPV1dnU2thQ0V6MFl4Q05iL0RTdWdoUEFqVXM3eTRDU0VkSGoxcFph?=
 =?utf-8?B?R1puUjRDOU1leUV4bEMwcTd6cTBUamhtblgwZjFuWW5BTE4xTEloU2orVG50?=
 =?utf-8?B?NFU5NzVvVjA2U0pOcmNpZGFDM0M3MnNlUDZoYjFQK0c3VnFVc1ZBMzVlQnpH?=
 =?utf-8?B?NjA5Tzk5a1kyNnRCNDVOanZlV2FRVUZEdEpwdGFTRHNIM2oxWE00RGhRYTQ5?=
 =?utf-8?B?eHVQTTQ5TloyazBrQ0JjYWExTWtUN0dFV08yMllwZUJSbWZ2V2VQWVhNSmwv?=
 =?utf-8?B?LzN0bWQ2N251S3ZKRnUxT1ZocDR5UFdzSkk5dG55MjkzdkhVYnMzdzEyd1V0?=
 =?utf-8?B?dk0zQWRFNmxwUlpaRFp2Rkk2WUppQmNGdTFURHNDaHA0Zk16TGdiRDh0dFZB?=
 =?utf-8?B?WWRVM2Y5QUkwTlBsS0ptNjR6S203bFVhS25peDZqZFQzQ2JrR1VGb3RhNUYr?=
 =?utf-8?B?cVN2Q21SOGpuMk9FeFEwTGdNbXpWZERLWE5zOUp0TFJDSzFLU2wrNmJoRW5v?=
 =?utf-8?B?Nm9vU292MUdwRm1zV3NpUnh6SmZiM1c4NGphazVraVd2ZnRqbnVtR1NpdUZo?=
 =?utf-8?B?Y0o3ZzkwR0FrVXgrQmNnWmdCNzZ4NkU2RnBXeWxuZzA4ZXZHZnVqcmsrRzdT?=
 =?utf-8?B?eThUOGJLYnVScEk2aWRreG9HWVVpSTI1QzJSbTByTkdEQTljZkdXZ1NINmlk?=
 =?utf-8?B?RzdvMm5vLytYTU12WEh4cnZ4eEdGdHllY0J1eEdRNThrN2JJdzFUU0hpSVJD?=
 =?utf-8?B?WnJabUM3SnhrV3p1dXRYdWltTkxnbEliZVN6ckdWTEF2NkFOdW10M0NvYm4y?=
 =?utf-8?B?UXZ1TWpjT2xRS281bm1DMVd3UUtXK293OUZFNDc1em1UTTBXWkZ4c1htWTkr?=
 =?utf-8?B?RjlOSjl6VUFVMWNDazB1SUE5azhhREFCOU55bjc1YnJHY3dUbmRIbWxBblNv?=
 =?utf-8?B?NmdkK3ZlNGxvVTQ0OWsxSEExMkJrQkRyK0M3MFgzQnNQbXR2UitKMWhaT3Jt?=
 =?utf-8?B?K0hvOC9Hc0FaTGpic2xMelczVDZ3U1B3aTJkenFKY0syY0JtaGNkYlZnRzZP?=
 =?utf-8?Q?s22nJoBIhUxE8sRNXot5yBOxS?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6BC51CD7CD7A8A43A4A0EAC4A80430F8@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a124a0f8-3d73-4b72-8f76-08dcfe281153
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 05:58:42.2528
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KFhMxyNgezYYmoTCyWIAAoyk+SFw4mVFd3Aev5U2g18XLLIlOjoVYC2YV74gr4PVzrUVP7iee5WutmUQTRnaPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7503

SGksIFNodS1oc2lhbmc6DQoNCk9uIFdlZCwgMjAyNC0xMC0wOSBhdCAxOToxNSArMDgwMCwgU2h1
LWhzaWFuZyBZYW5nIHdyb3RlOg0KPiBJbnRyb2R1Y2VzIHRoZSBkcml2ZXIgb2YgdGhlIE1lZGlh
VGVrIFNlbnNvciBJbnRlcmZhY2UsDQo+IGZvY3VzaW5nIG9uIGludGVncmF0aW9uIHdpdGggdGhl
IE1lZGlhVGVrIElTUCBDQU1TWVMuIFRoZQ0KPiBzZW5pbmYgZGV2aWNlIGJyaWRnZXMgY2FtZXJh
IHNlbnNvcnMgYW5kIHRoZSBJU1Agc3lzdGVtLA0KPiBwcm92aWRpbmcgbWFuYWdlbWVudCBmb3Ig
c2Vuc29yIGRhdGEgcm91dGluZyBhbmQgcHJvY2Vzc2luZy4NCj4gS2V5IGZlYXR1cmVzIGluY2x1
ZGUgVjRMMiBmcmFtZXdvcmsgY29udHJvbCwgYW5kIGR5bmFtaWMNCj4gaGFuZGxpbmcgb2Ygc3Ry
ZWFtIGNvbmZpZ3VyYXRpb25zIGFuZCB2aXJ0dWFsIGNoYW5uZWxzLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogU2h1LWhzaWFuZyBZYW5nIDxTaHUtaHNpYW5nLllhbmdAbWVkaWF0ZWsuY29tPg0KPiAt
LS0NCg0KW3NuaXBdDQoNCj4gK3N0YXRpYyBpbnQgZ2V0X3BpeGVsX3JhdGUoc3RydWN0IHNlbmlu
Zl9jdHggKmN0eCwgc3RydWN0IHY0bDJfc3ViZGV2ICpzZCwNCj4gKwkJCSAgczY0ICpyZXN1bHQp
DQo+ICt7DQo+ICsJc3RydWN0IHY0bDJfY3RybCAqY3RybDsNCj4gKw0KPiArCWN0cmwgPSB2NGwy
X2N0cmxfZmluZChzZC0+Y3RybF9oYW5kbGVyLCBWNEwyX0NJRF9QSVhFTF9SQVRFKTsNCg0KVjRM
Ml9DSURfUElYRUxfUkFURSBpcyBuZXZlciBzZXQsIHNvIHRoaXMgZnVuY3Rpb24gaXMgcmVkdW5k
YW50LiBEcm9wIHRoaXMgZnVuY3Rpb24uDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsJaWYgKCFjdHJs
KSB7DQo+ICsJCWRldl9pbmZvKGN0eC0+ZGV2LCAibm8gcGl4ZWwgcmF0ZSBpbiBzdWJkZXYgJXNc
biIsIHNkLT5uYW1lKTsNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJfQ0KPiArDQo+ICsJKnJl
c3VsdCA9IHY0bDJfY3RybF9nX2N0cmxfaW50NjQoY3RybCk7DQo+ICsNCj4gKwlyZXR1cm4gMDsN
Cj4gK30NCj4gKw0K

