Return-Path: <devicetree+bounces-118984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 248969BC83B
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:43:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 482811C20BBA
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 08:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C376A1CEADD;
	Tue,  5 Nov 2024 08:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="A/757x8N";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="cBQbUxcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29371C7608;
	Tue,  5 Nov 2024 08:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730796222; cv=fail; b=eAY+ALy18AtA20s7rAxZruHNS9X7cFyscF0iXEkid8v1AdPc0o8/kv1LN1dzWR6Ho5RFnutJClr4hLlS7Vtf4XS/QNHBCpPoFEA68iIVRUPv6EooyQ8dMWnq+y/ZToNyOmoSFPE6JHF2FhZOcnEAQDPNNHkmpEz1AGwlpLSSPdE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730796222; c=relaxed/simple;
	bh=Umy4xaxIMRepf/X4jEP/cRYMNdbjHW65v2E1AXXXgZA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=kZd6asdYJXshWMWqTnSmrA9AOCMChSOyek/xigA/hKHil8bxrq7zELSs6pS3rKaw1HqxgD4RF8TJg2g9RCWRccH8wRG6K4J+9oIb2YSxWipUkBOXeNEWlRNx50LGQr5wul1f3rXQdv73aSrJL+aP/2SIGoeUvu2ACis3wgfXOAw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=A/757x8N; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=cBQbUxcj; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 0ae35e0c9b5211efb88477ffae1fc7a5-20241105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=Umy4xaxIMRepf/X4jEP/cRYMNdbjHW65v2E1AXXXgZA=;
	b=A/757x8Nh5VhQc/XSpW1eP7Zuu6N2PYn3DYGr8TOouLYqyGOlkSXNDG05LTHhrfe9hBtDN6CjaJG8e9OjTgAZBidYG0p3Fxm5Cr3LE8kYTpHGHYIUIUPIsi1XvDOK9H6uKDlSuNozA4RAGDdUSArx0DSHR3cd0z8JyioNNxGfrc=;
X-CID-CACHE: Type:Local,Time:202411051643+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.42,REQID:6aeef4d9-990c-4bc6-b9e1-d6ae25dcf931,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:b0fcdc3,CLOUDID:c262b748-ca13-40ea-8070-fa012edab362,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0ae35e0c9b5211efb88477ffae1fc7a5-20241105
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1823442825; Tue, 05 Nov 2024 16:43:34 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 5 Nov 2024 16:43:32 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 5 Nov 2024 16:43:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eW4Wm12NaCebxqTopOhQVsameGJzEtm/hYd/mNNyh7njCPeZMRxCLvv1ZzqDROdaqAKkFH0cHWlXilKOwNSEKnX/yx1wpURNOq53MZ4GFiJGzYhZEp+R4Tc4SwM4I9N+IjITeJ55s0oS7l5PcJjs/zsLlus3EfJlPpFSUdj8XBEZG0Mh2/acan9eMG83eT9BRcbIJs0zF1QKcJKRLBvmOfM9Pg4qaUv/PekTgeptmQ9KnuFHisIGGMAKEBj2yqLpOJb9ZVv7u9IkEzBM+x2m6VUNOOTqzqF7Zu2vTBAPKjyZbmTw5HG+trQ85whZqnNE8KB5UKW4+5uEbL2y7m2NEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Umy4xaxIMRepf/X4jEP/cRYMNdbjHW65v2E1AXXXgZA=;
 b=bIZ1vNcjAdeomhEA7x6z0bOrEmvQrTDMsdW8y8hSRri78VUHYAYMGNk0jdppMTWBPvFPFFw9NGm/K6LJK2zD2iR124OYBdq5xbEVRDhyP4heRha2NoniXmV8mMADHx77fLGLh4UP1LfN7MuhkiPwqv5e4S9R0RVXRxHqOOJd9XxMZLgLsaiWfmVILm544iC354SmDGdQ0BV8obEP+n3MA96uSuBiMpCtiHUDOBh4skOlDzYANRoHBDq1GD0kRO3wjolj1946rePz4U4SUQHpB4n9g0Ztqc6azsH6jYrpCHwn3amVvkoFZiyt3dLeUxXQGk69g2wqmV7LFRSrtqgUOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Umy4xaxIMRepf/X4jEP/cRYMNdbjHW65v2E1AXXXgZA=;
 b=cBQbUxcjtp1kQVL97CCZ7XjSXF5sHq3oNwY+hRxhQ6sJEFqGHKo/9mCVK/BOtMMOQbKSrtZf/AUZQRNRASoOdbwmsM7oguLKzf1OwLl4ft7zISPCpkQL+zdi8JII+2M3YOstbZIActeNAIost4aH0p3LRDKcZiuH/6KEJ+r6iZU=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KL1PR03MB7797.apcprd03.prod.outlook.com (2603:1096:820:f7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 08:43:28 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 08:43:28 +0000
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
Subject: Re: [PATCH v1 06/10] media: platform: mediatek: add isp_7x utility
Thread-Topic: [PATCH v1 06/10] media: platform: mediatek: add isp_7x utility
Thread-Index: AQHbGj2JaAd/ufwz/0W0Edv5eKs5YbKoiRWA
Date: Tue, 5 Nov 2024 08:43:28 +0000
Message-ID: <547cc2b6670ad36ebc0f396aa0f94e3bfca10790.camel@mediatek.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
	 <20241009111551.27052-7-Shu-hsiang.Yang@mediatek.com>
In-Reply-To: <20241009111551.27052-7-Shu-hsiang.Yang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KL1PR03MB7797:EE_
x-ms-office365-filtering-correlation-id: b39a7743-65c9-4555-6e27-08dcfd75eba5
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TkgvYS96SVFMckpKODZFTm9RMUdDd3RIWGhoRGl0d1BXTG5kUUtvYnl1VDkz?=
 =?utf-8?B?N1hpdkNIWnE5VFN4bk9jeVZscTk5Q1FHbnFEdVQxSlR5dndOSXdVQXpPRHpt?=
 =?utf-8?B?dkcxQVJQWHJSODdlSGpPM21PaHh2bCszcWZKeWNJRk41b05Ia3JvNlBWRS9x?=
 =?utf-8?B?L29Iai9GVWhORDZSQ2MraGJPVU5nQjJERGJGY2xzaCswQ2hXTWhhTHd4MjV3?=
 =?utf-8?B?dG9DMmliOEVmVjdNNWVEUlFBd1FxQzR4bTZmUEJZbHFGL3dRSHpMVUgvTmxk?=
 =?utf-8?B?d05FakJaRFZaNmlkM3JPbTNWNG9VWUVlTlhSUnMwTmwrUjcybTBnUm5McjM5?=
 =?utf-8?B?a1BpSi9IQmhGcTlUUVo4UEw2WlZPWFFDaEpGUlZRYW5FY3dyN3I1eHRjMUUr?=
 =?utf-8?B?b2ZtR2Y4VVlvT0c1RGc5SFNBVnhaZHF3UWtnTDRMZVFXWDFnZUl2NGwzYWN0?=
 =?utf-8?B?cFhBZXJsTU5ib0RvRnhHWTducy9wYnhGZ1JDQU96WUtSVVBTcXozS0FPZ09n?=
 =?utf-8?B?dHR6RkZBNlVXUytoY0g0Z3NIbzBzNTNFdXFDZG9seC9mY2NQOEEyNkVXbzFY?=
 =?utf-8?B?RlpVTHFoOHdadDZyMXVqMytlQVlGUUh4Zmo0UFFHQU5SV0FiamZvdUdDM2Jv?=
 =?utf-8?B?L2tVZmdmaml0aXJScDhYSkF3NjYwdGwxeVRMOU5Yd2g5TkZpK3pXNU9YbnZZ?=
 =?utf-8?B?d25odHZZbVlBeUxUOWlnTUM3aUFoWDc1QTRQR0JrMVRzZmhBUUNXM0ZPZmpz?=
 =?utf-8?B?MW9VTkJNbW45dFFYYTRLZUNTc1BzWWk4VW5EWHgrejNMVUVGRlJPb0hZV3cz?=
 =?utf-8?B?ZUIrNm5BdjZ1RURZMEpxU01vNjU4NGRVUDkxNkFpbngweHdXd2JPNS9GZm9F?=
 =?utf-8?B?aDFpMlhQdm1XTlVJOHV1c29LODBqM3B6RU5JUzhac3VXRitBRXhHdzhCSTJE?=
 =?utf-8?B?Z0M1ZVBxTTFHdmZGTWFOdWIrOWh3M0xQM0hEZDlHWEVqQUNHZXBNYW1lZE05?=
 =?utf-8?B?cGVUL2xpVWhrMFJ3UnJWZDJaeDNIOUdtMlQ4cjFYejZBRG54YWN2VHVMcyt4?=
 =?utf-8?B?eTZXS2p3cVZzWXJFWERWQ0pjOC9zVGVlZk9PdzdoSTZEZUUxL3dWYXNoYlky?=
 =?utf-8?B?YnUwQUVyQ0YvK3NmMnRpUGo4TmZEdmt5Ylg2SnI2c1BuUSt4cm5Zci9xNFJJ?=
 =?utf-8?B?ZTk1V2lXVC8zNloyWURLNklzOVNuN3Q4M1FKSjY5dVhRUnp0Qi9kOVJBZy9D?=
 =?utf-8?B?VWJSL3hCa3lJK1V6TUdPeVRjZU8yNG52UWNpSGp0eVNiNWN3TlEvQjVWdG1D?=
 =?utf-8?B?MG42dXVvaWZQUGQ3S2FiK3NIN2FtalFVa2FrYWU5VTZqVUJqdzFQa2p4eHNB?=
 =?utf-8?B?Z2daNnJiYjMvRktiU1V2REZwNEhqczYxWU5DK0RZZWR2bXZDcS9RQXRTVGhV?=
 =?utf-8?B?amYwMmkyNVFjNlJwM1ZoamJFOWpDS3JCRjRwQWhJUlNTczRGYm91dDFqZkwx?=
 =?utf-8?B?d0FBNzM5NU4xbDhoRVZHMHE2VjNkZnFFaHh1Yi9DRzhzblhxV05PSTkwUkFB?=
 =?utf-8?B?RlBKcWdVbUJDMncvdGlQUnBBRS93VGdjYlZtdi9HY1duZDUwUHk2SkF1cDh4?=
 =?utf-8?B?a0NCOGpHRDF3UUpRQUNKT1FkZTZHL1hDcHBGZWExL1dxYnJQVDMyQUhGVk1v?=
 =?utf-8?B?cFdPcDV1Z1pvNFNyejFjV1ZROU1RUFd3OUxIUENKa3lUcFhxc09KN2FROW1H?=
 =?utf-8?B?dDdWQm9zQmxDd2hBR2pLTXltVTkrMHhNUUZxMGVhZjFvYXpjNXpqOXowUmFs?=
 =?utf-8?Q?QazpgYd7QefEnAIXcTcuktf83U0IYb9GU0OwY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bktCTmlvemFyUVM3OTJhZTYza0tuYVpjSWZNaXpXZGNZaWwyRFdxSnJkVW03?=
 =?utf-8?B?S1hUSnNHb2szakJyMkdPOWI3MHRTSVpsMEdlcExoMXgrOGRoZEVBS3Jqemw1?=
 =?utf-8?B?MzV2TWthSndwRlFZekZ0Z011cG1tTFF0dzRvNGNDMlZ0VDFZMGlsUWhHVjc5?=
 =?utf-8?B?bmt3UnJEcTNjMXJ6bE9wNGJJaHVnK1Bpcm1wcmJlamV2VDB3N0xOU0V6Q2hj?=
 =?utf-8?B?ZEdBUG9NU2VDZ29sRTRETUpPNjVYdUxGRFVHSUNNRDYxZW15KzBBeE9EQ3U1?=
 =?utf-8?B?Rm9Zbjk1NW9RZTg1eFdOR2JkTHM5elVCcGptbW9xWm1LMmFYS0RFT2Z0Z0Ru?=
 =?utf-8?B?TFhJQ3FSMjNuSFhiUzdPcnBMeFc5SFNXVDNzNDk4eFRoQVorMWNBeWcyRWZE?=
 =?utf-8?B?SzJSeFE2dTVxVWlGaXZuelBjQWlrOXZMWU5PT3dRNEx6QjRLMU1aUzNIcmJR?=
 =?utf-8?B?ZS9aUWg1c1JCMzZhalY1TGlhZ3g3RzBZU1VnZHpqM0tBNEVDejBZS3g1Q240?=
 =?utf-8?B?MTBrTkhra1V3K0hYemNhREJXc2tERG0zSDNhL3NOMjVYUFJnWkVhc1JhSkNw?=
 =?utf-8?B?eSttcWxKdU9kSEE4ZXRWayt5ZHlwS2Q2eGpwbndVajBBcEtBdC95MXE2aHZC?=
 =?utf-8?B?Snl0L1JhRUtmaytKdlU3U1FNQWFmRXErSXRjNWI3RDc0SXl2bFZhYjVtYk5o?=
 =?utf-8?B?bGZhcURiYzVoWkhod3FOU0YyUEVsWkFJNGRIOGNlbWhqYk42c3Q4b0FlNWlZ?=
 =?utf-8?B?V2MvQ1Uydzc5NFJ3QTVvVEJnR1lLUUZoRlVWeEhRZlFyU3hqMHZEV3BFY0hs?=
 =?utf-8?B?d2JsVmM3TkFzSUdnNWQ2K1puOWs0VDBVdVhHbHppWHhOY0QydW5WSmY5azNm?=
 =?utf-8?B?azNjalBQQk5GNmYydlJYT3BCL2k4dmppTUh4VTA4RnEyeWJyYnVzZFhFTXRM?=
 =?utf-8?B?SzIvaW9LVUdVb3FtTGtDaXZVcFExRzdIWEtBVGhYeGhsUkpZL1BMMzR5TG5h?=
 =?utf-8?B?N1h4OGxhTGdibWJPemJTUkpQQzA0d3IvTFVnK0lDamNobzhHR1h2em9rQkNn?=
 =?utf-8?B?OTgwNzcvUnlZNUk4STVyZFRXTDJMKzg1OHlrd0ptQzRqaVBhaitiZXg1WXBt?=
 =?utf-8?B?bG9mVHN4d2JST2I2dUFaRk1Wems1ZlI3NkJLNWhOaUlYUW5mSUpaYVk2RlBj?=
 =?utf-8?B?ZERuS3B2Wnk2VDh2RUpjNVRBYkJCVzhMdTg5SnpZeCtRdHRTYVlKOFprdnVV?=
 =?utf-8?B?eFMxYUlwVkQyd0JhcWlZeWJoVzIzeC9HaFhudnFUazlEQUs5RWVIVE9uRFFS?=
 =?utf-8?B?MFpXUTVaL1E0c0F1NkJpbllxMTArSHZFT1dpT1J1czRlRmZYNWl6WElKckpS?=
 =?utf-8?B?ZXhrTUJ3Yk1RL0hlODQxVTJoR0tSQ1llTkNJUkd4L1RQWHMzTUNpRHdoMjZN?=
 =?utf-8?B?YjVkSUozbVBWaERUR3VnS2tKSEhLUGVTSmlQM2hjZkFobnAwQUR0UXk2Mzl3?=
 =?utf-8?B?NlMvMzZGRmZ6TGFreDFURC95am1xVGhzYzEwMm1WbHQvR25UampOLzQzb1Vz?=
 =?utf-8?B?dkttQzY1UFpFWFJpWDVTT1MwQ3k5UlZ0MkhHNGYvbkhPZVJHV1B2dWFEMmtP?=
 =?utf-8?B?RkRhQVlaaDZDbG1MNTVEaDQxY0RxMlJLVGRHSldsMDIvc21qV2tySHBqNFd5?=
 =?utf-8?B?eEJ5U0FQMzRsaEZJTVYxb2htSlZyU1FBSWdQZXZ0SkNmdXZ0bmtNVFExV3lS?=
 =?utf-8?B?K25rTjB5c0kwZU9EUDUvTDFHVmFIc0poV1NwS2FQZ2hnVWpzT2FYMXJlcjdE?=
 =?utf-8?B?ajh4NmlaTVBoY05IZGdWMWhobUhzbzdWOFF6RWUzUjRRUE5DcytZS203RUIy?=
 =?utf-8?B?ZlIvZWV5YUhaSTlsQjNVSWFKZFNWd3hZOExibEh1M2pMMGRvNGVCcWRIZi95?=
 =?utf-8?B?NmNidXFKYWxlK1NOYy9Yamo1ZjlaKzJBS3JnTWIySnlGVXMvSDlSem9JSjF2?=
 =?utf-8?B?c21KWEpWYXNGVTgwSVlWMFF1OVdzSGd3YTVSS213ZkdiQnRXalh1ak1Ockdu?=
 =?utf-8?B?aTlNVDFmc1M3TGwyR3V6a3hmUmJYSlJKbVJBWTkyTzA2N3pBNU5ud0pQQmVu?=
 =?utf-8?B?Q0dNaVFXdGJBbStIR1NHMU9LblR2OVhOYWJDbUVOZ05aRkx0V1RwN3hxUWho?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E96E35ED65F0B74BB5967D98A96B51A4@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b39a7743-65c9-4555-6e27-08dcfd75eba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 08:43:28.5697
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sS0nzY/iCgRbEtygZraB9ejmWAgJ0Vc41MJnWPW/5RK98atqsERRvE5ZGZ5OfYQ56a6TwXFdCYJnuYRBdyKFow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7797
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--11.158000-8.000000
X-TMASE-MatchedRID: O/y65JfDwwtm6oeM5+OJFCaix8JZpk78jLOy13Cgb4+qvcIF1TcLYEmo
	bOLhIyMmCPYbugXTgR+M5TCLNNgDParukyhyG02kylAqNTt8FdX54F/2i/DwjRrUQ7A9MrmGjse
	1+4fQ7uu2XuqHnmj9+0yb6E0Dw6IRig2uZvub1nj/hOhZ6EJFBX0tCKdnhB58pTwPRvSoXL2ZMP
	CnTMzfOiq2rl3dzGQ1av1sE3IcbJ76r11Vlbz976iMNIvniEa/3UZIWxv6ZHnTTe41slgrhw==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--11.158000-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	3DC21FA6A21F59598820750F12329119D1DFED566594CFD7FA5622C005D28ED42000:8

SGksIFNodS1oc2lhbmc6DQoNCk9uIFdlZCwgMjAyNC0xMC0wOSBhdCAxOToxNSArMDgwMCwgU2h1
LWhzaWFuZyBZYW5nIHdyb3RlOg0KPiBJbnRyb2R1Y2VzIHV0aWxpdHkgZmlsZXMgZm9yIHRoZSBN
ZWRpYVRlayBJU1A3LnggY2Ftc3lzIGRyaXZlci4gVGhlc2UNCj4gdXRpbGl0aWVzIHByb3ZpZGUg
ZXNzZW50aWFsIHBsYXRmb3JtIGRlZmluaXRpb25zLCBkZWJ1Z2dpbmcgdG9vbHMsIGFuZA0KPiBt
YW5hZ2VtZW50IGZ1bmN0aW9ucyB0byBzdXBwb3J0IElTUCBvcGVyYXRpb25zIGFuZCBTQ1AgY29t
bXVuaWNhdGlvbi4NCj4gS2V5IGZ1bmN0aW9uYWxpdGllcyBpbmNsdWRlOg0KPiAxLkhhcmR3YXJl
IHBpcGVsaW5lIGFuZCByZWdpc3RlciBkZWZpbml0aW9ucyBmb3IgbWFuYWdpbmcgaW1hZ2UNCj4g
cHJvY2Vzc2luZyBtb2R1bGVzLg0KPiAyLkRNQSBkZWJ1Z2dpbmcgdXRpbGl0aWVzIGFuZCBidWZm
ZXIgbWFuYWdlbWVudCBmdW5jdGlvbnMuDQo+IDMuRGVmaW5pdGlvbnMgb2Ygc3VwcG9ydGVkIGlt
YWdlIGZvcm1hdHMgZm9yIHByb3BlciBkYXRhIGhhbmRsaW5nLg0KPiA0LklQSSBhbmQgU0NQIGNv
bW11bmljYXRpb24gc3RydWN0dXJlcyBmb3IgbW9kdWxlIHN0YXRlIG1hbmFnZW1lbnQgYW5kDQo+
IGNvbmZpZ3VyaW5nIElTUC4NCj4gNS5NZXRhZGF0YSBwYXJhbWV0ZXJzIGZvciBjb25maWd1cmlu
ZyBpbWFnZSBwcm9jZXNzaW5nLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2h1LWhzaWFuZyBZYW5n
IDxTaHUtaHNpYW5nLllhbmdAbWVkaWF0ZWsuY29tPg0KPiAtLS0NCg0KW3NuaXBdDQoNCj4gKy8q
ICBDb250cm9sIGZsYWdzIG9mIENBTV9DTURfQ09ORklHICovDQo+ICsjZGVmaW5lIE1US19DQU1f
SVBJX0NPTkZJR19UWVBFX0lOSVQJCQkweDAwMDENCj4gKyNkZWZpbmUgTVRLX0NBTV9JUElfQ09O
RklHX1RZUEVfSU5QVVRfQ0hBTkdFCQkweDAwMDINCj4gKyNkZWZpbmUgTVRLX0NBTV9JUElfQ09O
RklHX1RZUEVfRVhFQ19UV0lDRQkJMHgwMDA0DQoNCk1US19DQU1fSVBJX0NPTkZJR19UWVBFX0VY
RUNfVFdJQ0UgaXMgdXNlbGVzcywgc28gZHJvcCBpdC4NCg0KPiArI2RlZmluZSBNVEtfQ0FNX0lQ
SV9DT05GSUdfVFlQRV9TTVZSX1BSRVZJRVcJCTB4MDAwOA0KDQpEaXR0byBmb3IgTVRLX0NBTV9J
UElfQ09ORklHX1RZUEVfU01WUl9QUkVWSUVXLg0KDQpSZWdhcmRzLA0KQ0sNCg0KPiArDQo=

