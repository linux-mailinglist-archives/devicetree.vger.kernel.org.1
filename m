Return-Path: <devicetree+bounces-116245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BD49B2218
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 02:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70A071F21600
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 01:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699F51422AB;
	Mon, 28 Oct 2024 01:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="dJaOhjBZ";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="lxQN8um0"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDCF524C;
	Mon, 28 Oct 2024 01:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730080538; cv=fail; b=PAVCVptmlrwQn8qFkNrMqFgjspD2K9YQ2r5KAV9GG535oOxSuR/AiEbkTgAA+u/cUphn6J9CvAz+NYKvt3mqu4T2xpxKGaGKpE6TIn2kloyEBDKH+sFJ60sg8mFNFKBzvxm4DsjEQt/04jjx5SKV853Lu2hmLHUhv1L4ZIEGcXg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730080538; c=relaxed/simple;
	bh=mwzcQJK0Pr87KNnb4KLl2jagFWSigGbAMvVWmWv51f8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=qeToQcoVMIVscc8J9IvlX3yjHgX34ULMw4nA5Faf57APbiEv4DtbHA7hnN0dTHQ9NBKQQ/NDwJ13h+L1rF8pU6EihjwzflE+CphblAk+XwLX+VYxWjazioR69OhLR4ZABzyrFaRVx88vDlUu7KNcdSXWSYj8r4jEwiqpE90H9/0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=dJaOhjBZ; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=lxQN8um0; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: b56b3dba94cf11efbd192953cf12861f-20241028
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=mwzcQJK0Pr87KNnb4KLl2jagFWSigGbAMvVWmWv51f8=;
	b=dJaOhjBZa0hJcDEoxD+xlwZjxMvItL9gtJAKJMw0/m3Ntr6oqvgM51Hj0vpFn4sS3GvEt/rN3lmgvXEAFPs7PdQRNlhs+VOff26e37hkPllrEt31paD029IWejlBzr/fbI/xohyVGEH9eTTbRXr1lsjqZ1ZE/AoIP/0qpGadkXg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.42,REQID:a2587e31-2e86-46e1-8a67-a8531bce5132,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:b0fcdc3,CLOUDID:2536312e-a7a0-4b06-8464-80be82133975,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|-5,EDM:-3,IP:ni
	l,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: b56b3dba94cf11efbd192953cf12861f-20241028
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 518901746; Mon, 28 Oct 2024 09:55:29 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 27 Oct 2024 18:55:28 -0700
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 28 Oct 2024 09:55:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LsO9uklCopZPCzTA/3Kv2TWvedOK/ulSpIgxTZwmTgMmLOCrB0uTTo1tHmBQ0WMMIr7h+edvttvYnVNyKKYfICQ0WFP/rcEYlQD+Obz7neWr+LoAQrlM4HviALbPc4spp5ywanQ9AUmUBB0lFECSC8DfU2VADZ5adNE7d7gNgdXgtcVURUPUElBY6rc8coWfNhpq/p84H5Ne5tcjDlBiNwUqLLHRHtcZVnf1e1yGr13cBrS+HELD/ViJJuni/RrAnfICkuTsji6Ew8RBwLLqiSXABSqVDEzN26UtPyCXIbUVP/W2MxsFAmyhhcMu3uI+FZtrGwfEShR85FJYVFHjEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwzcQJK0Pr87KNnb4KLl2jagFWSigGbAMvVWmWv51f8=;
 b=tFbibcgytm2V+vhNUILPM6TwoMz/ifXDO6yg7ZUOIYSRidfvNddK0g9zUIg0xEKLifiBkOFVcnlHzCf5c/Us72kpGceedh0mhJiEE1jF7XN2tBgz1wQ3z8Pb1oj2hotnirWJehD+D7TpBxZr/IUfmPQDuAkE2k7xEncCyf/7GSzzVE6udcmlL8KjL5gXew8IrtQzTUHPTIMaHHm9OGm7101EIsi7j9NgK+I7kr5dUZl5lSrz5vwltgQ3lpctHv3AiPTh40i6et1Gg6cmJecC//f0v5Vscmigu2ZyzDRDKJ4VwWQELNxKNmXPMK85hl5V50gm0aSIGHFw1XUgjW9v+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mwzcQJK0Pr87KNnb4KLl2jagFWSigGbAMvVWmWv51f8=;
 b=lxQN8um0aFwnbJrojWRuhIKPPkbDaKQu++fjezvag+eZIV6APijij4nMLjVqA5/9m5G9VsB+z3BL1wFx0W/Fhqi9x+go+BunH8aETb4ioHlk4+qNS4QA9AbdvjS8fYiepE1witSUv0OBDLT8M7ypArB9hnGiACbkeCyf7FPx0wo=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by JH0PR03MB7834.apcprd03.prod.outlook.com (2603:1096:990:38::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 01:55:24 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.8093.021; Mon, 28 Oct 2024
 01:55:24 +0000
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
Subject: Re: [PATCH v1 02/10] media: platform: mediatek: add seninf controller
Thread-Topic: [PATCH v1 02/10] media: platform: mediatek: add seninf
 controller
Thread-Index: AQHbGj2MNHQ5sKpEAUCTiRDvBgOUWrKbhGuA
Date: Mon, 28 Oct 2024 01:55:24 +0000
Message-ID: <2d713559ac6c5ce7f19f4674e5dc4d1d1dbb6eee.camel@mediatek.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
	 <20241009111551.27052-3-Shu-hsiang.Yang@mediatek.com>
In-Reply-To: <20241009111551.27052-3-Shu-hsiang.Yang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|JH0PR03MB7834:EE_
x-ms-office365-filtering-correlation-id: 28da3d85-54cd-4a80-a3ed-08dcf6f39686
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SEkvWXlzNWJ3eWFwQW9GN2QvWVFmemwwQWhSSEZ5YlJMdElRdGpaNlVjMEIw?=
 =?utf-8?B?Y216QXBpd3JHZm43ZGNibFVJRnFRU0ZKMVJ0WnJiVHhmRkhPOGZONW1EQXFx?=
 =?utf-8?B?RHJwYXBUOTVhQ2swSDhKSzBNVDFxWEJVMFdBMGFlb0lYazdEalVvendJZWg5?=
 =?utf-8?B?Q01OQVBPc0JhNnMxTEpnQlJKSDlNSzJNSmhOMzlmRkN0Rk8zL2dSaUVVeTRM?=
 =?utf-8?B?UTRJaDhvZXlRaUF2czdCSUZoY1NZZE1JUDEzSE9GdlB2ZHNBQTZBdXRyR1h0?=
 =?utf-8?B?bzV1N3l5cDZJK25qTjhleWRmQ0plYlAxajhTV0Myc2V6ZzZYMTExV2tzRW8r?=
 =?utf-8?B?OHFRcnJidGlCSEYxR3JZL0lBck1VSndCUlFRUVVMdE53dDB2elIrYWR3Z1Ny?=
 =?utf-8?B?czdyUFV6OGZ4MEgrVGFhaytyQm1YWXdDVFZLUGU0UVZ3bWVjNFBFUFlOY0lp?=
 =?utf-8?B?Ri9WQ1F4cG5jMG5BM3pDR3cxQXo1b00rRzVYMVZGRlRpeFUxeHJkdTd5Tm1p?=
 =?utf-8?B?N0NTSzkzZm8vckRYcVd5OUhaYmRMSTdkQzc0NUp4ZmI1R3o1N0xjb2hHYk5C?=
 =?utf-8?B?YVBKenYyZ3dOeXZuSHRwOVpWb0RIaE9XZWtqQjlXeUJ6bHcxbHQrWHNoTE9L?=
 =?utf-8?B?b3k1ZTV4QkU1bmNKMDRJcE5QdnVXdkRyWi92NElGWWp3eXVkcEF1YXgza0hB?=
 =?utf-8?B?UjlqUXFLRUZMK0w3REpCWWFpNm9KcDJiWjJnN2dkMW9YajJYSDVCN0Qzeno3?=
 =?utf-8?B?SjJTaWkvWFN2Yy9XeXRLNzhNWkJaNy9DNkV5QzBva0JaM3lCdTVHNHlKNWQ4?=
 =?utf-8?B?TGJoWUxSZ0Fpd0h5dmFGY0JmV0N0RzJUamJodkhsUElGRDR6eHVuZFljeVQ2?=
 =?utf-8?B?Z2N1dTkxbU1XWE1wa2p6ZzlFeHlvK0dRblErOE9Lbm40TFFBUkZTWFhhWlNI?=
 =?utf-8?B?b0JKNlFzSFZiV0JraUNtdTZ4WDRXRG5RZ3l0T0RRVGk5TnRpS3FoRjVPQ1dO?=
 =?utf-8?B?aUZuaG5hTi9kaFZEcmVPd1Z2eXFYT3pCMVhTK3pyaTZIUDVrK0VTNHEvcXow?=
 =?utf-8?B?NGI0cnBoNCthVjI4S2dBTDd1OFBURExvTmRwRU5wZ2daSWdiUFdTYTNWa2Vl?=
 =?utf-8?B?TEZmUk5VdFp0MFh3RGZicThJRGJFZW5OakQ4U2M0cTMyams2bndjUGdGTGtk?=
 =?utf-8?B?aW5MMzdaQ2pJTngwR0x2a0lkMDA2a3lpbXFnTVJFQjRXUFZWeUNKdE5tYk5E?=
 =?utf-8?B?TXFnU3YxK2p5NGhDcXUrenFlRjRnc0s5N1RpZjh1KzM4S3lhSHFyejNSZEZQ?=
 =?utf-8?B?VXBiSlQ0ZEUyQnJOUlpvS3IzbUhnQzViM2JINUIrRG4vbkZqRzNLNFlwUi9N?=
 =?utf-8?B?SDdVVnNpQXR6Q29ZYUM2RWdZNXhIa1lOdjVNMXRoa3hYbXNxdStHcmNXU3Qz?=
 =?utf-8?B?VGIwek5XMTUxb1daQkxsVi9aYjU3R1NUeE1IRGs1aEtGdmo1SzIwbFZCNUJO?=
 =?utf-8?B?TFNRZ2J2M2gwU1V6ejNVRklWdEg0Tit3UmIzYlgyYUVIVnN1MGx2MVpvSHB4?=
 =?utf-8?B?a3hGd3JUQTl5bkV0WGRHVkhVbjZNazZLcE5EdFFxWFZEbHJEaXQxWVVjcW4y?=
 =?utf-8?B?RW55THV3VTdFMWpWTU44QXVEL1N1TTlJWVJ3Y2JLN2c3M0VXQVI2RHNLUGh3?=
 =?utf-8?B?citiMjRmRmhva3RDQmdTeWROQVIvTU1QZHVXYjljVENEaU5BOTduWHpsY0NH?=
 =?utf-8?B?REw4WDdSSEUvRUVhdmFzTC9BWkR3UzdJY1JrOTl4RFZOL0pHOEtYSnJKYndD?=
 =?utf-8?Q?1aI89y9Ki9+m/LAm6nDHSiJPRooFawm7NGfgw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUFNV01FWWVUT0tkSXBQWUtWelpBaGFMTnFZUFlBcjJwT3ZteUkxdGlSOUxB?=
 =?utf-8?B?dGpFUmlXWlhPRU5tVTRnYU4xak9ONDRDRld0d0o1KzRSZWROVVYzWG9nNElu?=
 =?utf-8?B?R1pPbE9iZ3FPSVN6RmJjWlNablc3Y3ZxaXNMVVg5aXF5ODFDSFZEckdYR3JV?=
 =?utf-8?B?eUU2YmJidFBkK0VFUVR6SWtUWG1jSm84MlBUSU1RWjc0VktBWHhHdTEwV1J2?=
 =?utf-8?B?aFUrSDB0WFoxckgrNVlTWDV6eEdxYjF3VDcxOTlMK1Q4STRJOTlMY1h1Vk1M?=
 =?utf-8?B?ZVJhcFhKZzZYQi91NkV4YVI1VUpLcGxOakp3Qm1ZMkxldDhlQUhsZXlSZUNv?=
 =?utf-8?B?aEJ6RTZQS2RmQ0NsREh1TE5mMERiWlhUQVdBYmVXb08xMnlDV2FQUjNmN2xG?=
 =?utf-8?B?TTdBTHc5RXo2cUJQUnVTYWdUMHh2dmRvQVVDeTQzZkxpaFNjMWUrSDVUL1BJ?=
 =?utf-8?B?cjVvVm5kRFQzZE5ua1dFQzRFNkFrRDNkYy9zTGVLM2F4Q0p2aWlRcEd0VHQx?=
 =?utf-8?B?NTd4M29hZUtSUVFTR0ZndzRZTGVCYlJXanBJbElwYmU0RlVMcmM3eUV0WXRM?=
 =?utf-8?B?c0ZYTmtRN1doRFdhSjYzRjBlNG1FTy9NdWUrVGlUM0c2RjAzVC9lV25DUlFC?=
 =?utf-8?B?czdoLzN2ajIwNnR5a240c3V0RWZ1RHN3QXhNcFJPRCtodmg2eWFWdStoMmVm?=
 =?utf-8?B?SDlTRlFyTkZ1SzJUTmFTWEtTeFROUXIwK0tsdnJ2OHRFWnFKdmlkdXgwV09o?=
 =?utf-8?B?K1MrUTY4RHNFKzhvdm1UemJPOGtlTjg5WkVQRzFLdnlPd3dRTXFWQk5kcEpY?=
 =?utf-8?B?UGNJUnp5THhTWDNDcFVXSy9ram9VS2xtSmwrUzZlbDcxbHE4akkySm9WalNX?=
 =?utf-8?B?UHpMN3E1UWkzYUNFUGdUa1BEa2tBYXhOQjhsclU3RGl2R011V0I2a2ZSYkUr?=
 =?utf-8?B?SEF4NEh0MmF3RU5FRTJtQ3ZwT3Y2Q2FDNG1qY09kRFRrVjZtMWl3d1l3YlNn?=
 =?utf-8?B?TTVLeTlvSzRPeEVxcjdPbld3SkFFZ3lFdTZQa1RNVi81U1pMM1hFZzdvdDJR?=
 =?utf-8?B?Y2R0UjFRMUNkMk9Ecjd2bW5QZGw0NGNDU0ozWTFSNFVvT0YwUlBQdUJtMDhX?=
 =?utf-8?B?OUt1dUMrSTVUL2tpck9rTVpTNlZqNlFIWGwrVU9LeHpjNEpoYkdTeTljVkF1?=
 =?utf-8?B?RXphVjBhYW9lMjZ4MGRJaFEwMXd4WWxVS0kyQ25xbTNibEt3WDAxZlRxUHdP?=
 =?utf-8?B?T2x0WjJTd3dSc2svbUdiaUFOOFhKZytZM1RxaDhwRUNOS2RRMEtqRkVqUVpP?=
 =?utf-8?B?TDlmbXVVKzc3dmMrQmtiWWtuMGdYcTByRSsyN3BDcDloMkMwOGZUK3BuckM3?=
 =?utf-8?B?SkExYnBXY01TQm1QTUVIY1dCV2QvUUxDKy9hYldXY2Z6aVFIRWtwTEw3bnJ5?=
 =?utf-8?B?Z0JZRkFoVHlmNUpFazB6VFpWMUQ4Z08rZVE1OUp3Rzg2UmdpL3FSOVAwOFNk?=
 =?utf-8?B?NUR1WnZtSnUzaXFUemZNSzZCb3JuSU0wOUdvKzFLSlJYQWZLWis2YWZYZ1Bi?=
 =?utf-8?B?cUVFbC9sTCt5UHVCdklJOXNEWGVVVXBydTZmWHRNeWJ5QTdlbVBrd2NFY1Jn?=
 =?utf-8?B?eU1OOUZGeFFyMkMrdXBrNndLZlIyUWpSQ09NNjVzRlA3eFFuOFVjTHh2QkZT?=
 =?utf-8?B?UlprM050WW1TdU9QSlRvRG1ZQ0M1Q3VYaGZxblRDOGZVUVkrWVV0WkNWTEtz?=
 =?utf-8?B?dUtHUFJacXYveVIrYlhQSmcweE5kaU9MMlRSMkVqc2xhK3FvbzRHU3IzZWFv?=
 =?utf-8?B?QTVHaWxwVXlBdmloY0Eyc2xYNDBPZFV4TU5aUFRoRFZ5NEg0M0lyemh3Wkcr?=
 =?utf-8?B?UzZROU8xc2tMa2ZNUm91eGVOTFZRalp0MXdxMUFWdWVjbEdJZU00WWZpRHhv?=
 =?utf-8?B?bEZmcE53b292czZkcjBSbjNiR0RVcDVQNEhLTFo1TFRqSkJRRm1JWm1NZXJD?=
 =?utf-8?B?QTkzS0NFMXNjZFRkZ0s3Wld3M3YrRGx0N0NMQTNrR0J2bFhra3Z1TEdrR2k2?=
 =?utf-8?B?N2lyMS9BUlN5cnA4dmhkTVcyRnBCQ2M2amswNHFrMG9BS05ESlgyK0p3anE0?=
 =?utf-8?Q?e7LoRpdWUVoJ6ucUrCy37MM72?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9DF2EF934A1D7348892E911401918433@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28da3d85-54cd-4a80-a3ed-08dcf6f39686
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 01:55:24.2627
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hkDaPVvrs5AbM3AyMDrr68c/s/6AZSSmsJ4Te7Z0lvJQXhMIysX0YA1z+D0nGihZusKUUdd7mZlB2kLi1ksD3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7834

SGksIFNodS1oc2lhbmc6DQoNCk9uIFdlZCwgMjAyNC0xMC0wOSBhdCAxOToxNSArMDgwMCwgU2h1
LWhzaWFuZyBZYW5nIHdyb3RlOg0KPiBJbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIHRoZSBzZW5zb3Ig
aW50ZXJmYWNlIGluIHRoZSBNZWRpYVRlayBTb0MsDQo+IHdpdGggdGhlIGZvY3VzIG9uIENTSSBh
bmQgc3RyZWFtIGNvbnRyb2wuIFRoZSBrZXkgZnVuY3Rpb25hbGl0aWVzDQo+IGluY2x1ZGUgcGFy
YW1ldGVyIGNvbnRyb2wsIG1ldGVyaW5nIGFuZCBtYWludGFpbmluZyBzdGF0dXMgaW5mb3JtYXRp
b24sDQo+IGludGVycnVwdCBoYW5kbGluZywgYW5kIGRlYnVnZ2luZy4gVGhlc2UgZmVhdHVyZXMg
ZW5zdXJlIGVmZmVjdGl2ZQ0KPiBtYW5hZ2VtZW50IGFuZCBkZWJ1Z2dpbmcgb2YgdGhlIGNhbWVy
YSBzZW5zb3IgaW50ZXJmYWNlIGhhcmR3YXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2h1LWhz
aWFuZyBZYW5nIDxTaHUtaHNpYW5nLllhbmdAbWVkaWF0ZWsuY29tPg0KPiAtLS0NCg0KW3NuaXBd
DQoNCj4gKw0KPiArI2RlZmluZSBTRU5JTkZfQ0FNX01VWDBfQ0hLX0NUTF8xIDB4MDEwNA0KPiAr
I2RlZmluZSBSR19TRU5JTkZfQ0FNX01VWDBfRVhQX0hTSVpFX1NISUZUIDANCj4gKyNkZWZpbmUg
UkdfU0VOSU5GX0NBTV9NVVgwX0VYUF9IU0laRV9NQVNLICgweGZmZmYgPDwgMCkNCj4gKyNkZWZp
bmUgUkdfU0VOSU5GX0NBTV9NVVgwX0VYUF9WU0laRV9TSElGVCAxNg0KPiArI2RlZmluZSBSR19T
RU5JTkZfQ0FNX01VWDBfRVhQX1ZTSVpFX01BU0sgKDB4ZmZmZiA8PCAxNikNCg0KDQojZGVmaW5l
IFNFTklORl9DQU1fTVVYX0NIS19DVExfMShuKQkoMHgwMTA0ICsgMHgxMCAqIG4pDQojZGVmaW5l
IFJHX1NFTklORl9DQU1fTVVYX0VYUF9IU0laRV9TSElGVCAwDQojZGVmaW5lIFJHX1NFTklORl9D
QU1fTVVYX0VYUF9IU0laRV9NQVNLICgweGZmZmYgPDwgMCkNCiNkZWZpbmUgUkdfU0VOSU5GX0NB
TV9NVVhfRVhQX1ZTSVpFX1NISUZUIDE2DQojZGVmaW5lIFJHX1NFTklORl9DQU1fTVVYX0VYUF9W
U0laRV9NQVNLICgweGZmZmYgPDwgMTYpDQoNCj4gK2ludCBtdGtfY2FtX3NlbmluZl9zZXRfY2Ft
bXV4X3NyYyhzdHJ1Y3Qgc2VuaW5mX2N0eCAqY3R4LCBpbnQgc3JjLA0KPiArCQkJCSAgaW50IHRh
cmdldCwgaW50IGV4cF9oc2l6ZSwgaW50IGV4cF92c2l6ZSkNCj4gK3sNCj4gKwl2b2lkIF9faW9t
ZW0gKnNlbmluZl9jYW1fbXV4X2Jhc2UgPSBjdHgtPnJlZ19pZl9jYW1fbXV4Ow0KPiArDQo+IA0K
DQpbc25pcF0NCg0KPiArDQo+ICsJc3dpdGNoICh0YXJnZXQpIHsNCj4gKwljYXNlIFNFTklORl9D
QU1fTVVYMDoNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NB
TV9NVVhfQ1RSTF8wLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMF9TUkNfU0VMLCBzcmMp
Ow0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDBf
Q0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMF9FWFBfSFNJWkUsIGV4cF9o
c2l6ZSk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1f
TVVYMF9DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVgwX0VYUF9WU0laRSwg
ZXhwX3ZzaXplKTsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBTRU5JTkZfQ0FNX01VWDE6DQo+ICsJ
CVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYX0NUUkxfMCwN
Cj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDFfU1JDX1NFTCwgc3JjKTsNCj4gKwkJU0VOSU5G
X0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVgxX0NIS19DVExfMSwNCj4g
KwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDFfRVhQX0hTSVpFLCBleHBfaHNpemUpOw0KPiArCQlT
RU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDFfQ0hLX0NUTF8x
LA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMV9FWFBfVlNJWkUsIGV4cF92c2l6ZSk7DQo+
ICsJCWJyZWFrOw0KPiArCWNhc2UgU0VOSU5GX0NBTV9NVVgyOg0KPiArCQlTRU5JTkZfQklUUyhz
ZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWF9DVFJMXzAsDQo+ICsJCQkgICAgUkdf
U0VOSU5GX0NBTV9NVVgyX1NSQ19TRUwsIHNyYyk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9j
YW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYMl9DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VO
SU5GX0NBTV9NVVgyX0VYUF9IU0laRSwgZXhwX2hzaXplKTsNCj4gKwkJU0VOSU5GX0JJVFMoc2Vu
aW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVgyX0NIS19DVExfMSwNCj4gKwkJCSAgICBS
R19TRU5JTkZfQ0FNX01VWDJfRVhQX1ZTSVpFLCBleHBfdnNpemUpOw0KPiArCQlicmVhazsNCj4g
KwljYXNlIFNFTklORl9DQU1fTVVYMzoNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhf
YmFzZSwgU0VOSU5GX0NBTV9NVVhfQ1RSTF8wLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVY
M19TUkNfU0VMLCBzcmMpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBT
RU5JTkZfQ0FNX01VWDNfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYM19F
WFBfSFNJWkUsIGV4cF9oc2l6ZSk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jh
c2UsIFNFTklORl9DQU1fTVVYM19DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9N
VVgzX0VYUF9WU0laRSwgZXhwX3ZzaXplKTsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBTRU5JTkZf
Q0FNX01VWDQ6DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9D
QU1fTVVYX0NUUkxfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDRfU1JDX1NFTCwgc3Jj
KTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVg0
X0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDRfRVhQX0hTSVpFLCBleHBf
aHNpemUpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FN
X01VWDRfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYNF9FWFBfVlNJWkUs
IGV4cF92c2l6ZSk7DQo+ICsJCWJyZWFrOw0KPiArCWNhc2UgU0VOSU5GX0NBTV9NVVg1Og0KPiAr
CQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWF9DVFJMXzEs
DQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVg1X1NSQ19TRUwsIHNyYyk7DQo+ICsJCVNFTklO
Rl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYNV9DSEtfQ1RMXzEsDQo+
ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVg1X0VYUF9IU0laRSwgZXhwX2hzaXplKTsNCj4gKwkJ
U0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVg1X0NIS19DVExf
MSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDVfRVhQX1ZTSVpFLCBleHBfdnNpemUpOw0K
PiArCQlicmVhazsNCj4gKwljYXNlIFNFTklORl9DQU1fTVVYNjoNCj4gKwkJU0VOSU5GX0JJVFMo
c2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVhfQ1RSTF8xLA0KPiArCQkJICAgIFJH
X1NFTklORl9DQU1fTVVYNl9TUkNfU0VMLCBzcmMpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZf
Y2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDZfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NF
TklORl9DQU1fTVVYNl9FWFBfSFNJWkUsIGV4cF9oc2l6ZSk7DQo+ICsJCVNFTklORl9CSVRTKHNl
bmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYNl9DSEtfQ1RMXzEsDQo+ICsJCQkgICAg
UkdfU0VOSU5GX0NBTV9NVVg2X0VYUF9WU0laRSwgZXhwX3ZzaXplKTsNCj4gKwkJYnJlYWs7DQo+
ICsJY2FzZSBTRU5JTkZfQ0FNX01VWDc6DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4
X2Jhc2UsIFNFTklORl9DQU1fTVVYX0NUUkxfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01V
WDdfU1JDX1NFTCwgc3JjKTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwg
U0VOSU5GX0NBTV9NVVg3X0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDdf
RVhQX0hTSVpFLCBleHBfaHNpemUpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9i
YXNlLCBTRU5JTkZfQ0FNX01VWDdfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1f
TVVYN19FWFBfVlNJWkUsIGV4cF92c2l6ZSk7DQo+ICsJCWJyZWFrOw0KPiArCWNhc2UgU0VOSU5G
X0NBTV9NVVg4Og0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZf
Q0FNX01VWF9DVFJMXzIsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVg4X1NSQ19TRUwsIHNy
Yyk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVY
OF9DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVg4X0VYUF9IU0laRSwgZXhw
X2hzaXplKTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NB
TV9NVVg4X0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDhfRVhQX1ZTSVpF
LCBleHBfdnNpemUpOw0KPiArCQlicmVhazsNCj4gKwljYXNlIFNFTklORl9DQU1fTVVYOToNCj4g
KwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVhfQ1RSTF8y
LA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYOV9TUkNfU0VMLCBzcmMpOw0KPiArCQlTRU5J
TkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDlfQ0hLX0NUTF8xLA0K
PiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYOV9FWFBfSFNJWkUsIGV4cF9oc2l6ZSk7DQo+ICsJ
CVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYOV9DSEtfQ1RM
XzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVg5X0VYUF9WU0laRSwgZXhwX3ZzaXplKTsN
Cj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBTRU5JTkZfQ0FNX01VWDEwOg0KPiArCQlTRU5JTkZfQklU
UyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWF9DVFJMXzIsDQo+ICsJCQkgICAg
UkdfU0VOSU5GX0NBTV9NVVgxMF9TUkNfU0VMLCBzcmMpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5p
bmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDEwX0NIS19DVExfMSwNCj4gKwkJCSAgICBS
R19TRU5JTkZfQ0FNX01VWDEwX0VYUF9IU0laRSwgZXhwX2hzaXplKTsNCj4gKwkJU0VOSU5GX0JJ
VFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVgxMF9DSEtfQ1RMXzEsDQo+ICsJ
CQkgICAgUkdfU0VOSU5GX0NBTV9NVVgxMF9FWFBfVlNJWkUsIGV4cF92c2l6ZSk7DQo+ICsJCWJy
ZWFrOw0KPiArCWNhc2UgU0VOSU5GX0NBTV9NVVgxMToNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5m
X2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVhfQ1RSTF8yLA0KPiArCQkJICAgIFJHX1NFTklO
Rl9DQU1fTVVYMTFfU1JDX1NFTCwgc3JjKTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9t
dXhfYmFzZSwgU0VOSU5GX0NBTV9NVVgxMV9DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5G
X0NBTV9NVVgxMV9FWFBfSFNJWkUsIGV4cF9oc2l6ZSk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmlu
Zl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYMTFfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJH
X1NFTklORl9DQU1fTVVYMTFfRVhQX1ZTSVpFLCBleHBfdnNpemUpOw0KPiArCQlicmVhazsNCj4g
KwljYXNlIFNFTklORl9DQU1fTVVYMTI6DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4
X2Jhc2UsIFNFTklORl9DQU1fTVVYX0NUUkxfMywNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01V
WDEyX1NSQ19TRUwsIHNyYyk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2Us
IFNFTklORl9DQU1fTVVYMTJfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVY
MTJfRVhQX0hTSVpFLCBleHBfaHNpemUpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211
eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDEyX0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZf
Q0FNX01VWDEyX0VYUF9WU0laRSwgZXhwX3ZzaXplKTsNCj4gKwkJYnJlYWs7DQo+ICsJY2FzZSBT
RU5JTkZfQ0FNX01VWDEzOg0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBT
RU5JTkZfQ0FNX01VWF9DVFJMXzMsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVgxM19TUkNf
U0VMLCBzcmMpOw0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZf
Q0FNX01VWDEzX0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDEzX0VYUF9I
U0laRSwgZXhwX2hzaXplKTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwg
U0VOSU5GX0NBTV9NVVgxM19DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVgx
M19FWFBfVlNJWkUsIGV4cF92c2l6ZSk7DQo+ICsJCWJyZWFrOw0KPiArCWNhc2UgU0VOSU5GX0NB
TV9NVVgxNDoNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NB
TV9NVVhfQ1RSTF8zLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMTRfU1JDX1NFTCwgc3Jj
KTsNCj4gKwkJU0VOSU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVgx
NF9DSEtfQ1RMXzEsDQo+ICsJCQkgICAgUkdfU0VOSU5GX0NBTV9NVVgxNF9FWFBfSFNJWkUsIGV4
cF9oc2l6ZSk7DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9D
QU1fTVVYMTRfQ0hLX0NUTF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMTRfRVhQX1ZT
SVpFLCBleHBfdnNpemUpOw0KPiArCQlicmVhazsNCj4gKwljYXNlIFNFTklORl9DQU1fTVVYMTU6
DQo+ICsJCVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYX0NU
UkxfMywNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDE1X1NSQ19TRUwsIHNyYyk7DQo+ICsJ
CVNFTklORl9CSVRTKHNlbmluZl9jYW1fbXV4X2Jhc2UsIFNFTklORl9DQU1fTVVYMTVfQ0hLX0NU
TF8xLA0KPiArCQkJICAgIFJHX1NFTklORl9DQU1fTVVYMTVfRVhQX0hTSVpFLCBleHBfaHNpemUp
Ow0KPiArCQlTRU5JTkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWDE1
X0NIS19DVExfMSwNCj4gKwkJCSAgICBSR19TRU5JTkZfQ0FNX01VWDE1X0VYUF9WU0laRSwgZXhw
X3ZzaXplKTsNCj4gKwkJYnJlYWs7DQo+ICsJZGVmYXVsdDoNCj4gKwkJZGV2X2RiZyhjdHgtPmRl
diwgImludmFsaWQgc3JjICVkIHRhcmdldCAlZCIsIHNyYywgdGFyZ2V0KTsNCj4gKwkJcmV0dXJu
IC1FSU5WQUw7DQo+ICsJfQ0KDQpSZXBsYWNlIHRoZSBzd2l0Y2ggbGlrZSB0aGlzOg0KDQpTRU5J
TkZfQklUUyhzZW5pbmZfY2FtX211eF9iYXNlLCBTRU5JTkZfQ0FNX01VWF9DSEtfQ1RMXzEodGFy
Z2V0KSwNCgkgICAgUkdfU0VOSU5GX0NBTV9NVVhfRVhQX0hTSVpFLCBleHBfaHNpemUpOw0KU0VO
SU5GX0JJVFMoc2VuaW5mX2NhbV9tdXhfYmFzZSwgU0VOSU5GX0NBTV9NVVhfQ0hLX0NUTF8xKHRh
cmdldCksDQoJICAgIFJHX1NFTklORl9DQU1fTVVYX0VYUF9WU0laRSwgZXhwX3ZzaXplKTsNCg0K
UmVnYXJkcywNCkNLDQoNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo=

