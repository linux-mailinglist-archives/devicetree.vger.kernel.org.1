Return-Path: <devicetree+bounces-124491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D34B29D90A3
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 04:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AAA6169799
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 03:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED15A40C03;
	Tue, 26 Nov 2024 03:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="KZ5/Xr+R";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="qldfFe97"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0245B2F85C;
	Tue, 26 Nov 2024 03:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732590444; cv=fail; b=OJmN9K+6IU8rcKY6/4RZNR5p2HeXGZ4nTxvy1vK6F7+mKpM3MvpHA5UlLKYdI6deshMu+XyWsZsDMY2mbaiL1oX3bfPa5BcfhW4y0MXeF8ltjKVk/xYMdMylm6RubY5sReF/+bziRza9HE0/lDh1izxxudK60AbzgJL0F4dE5d0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732590444; c=relaxed/simple;
	bh=tcahZUw/KVaklbkufjUV9hiaeHAAdaa51xZklrP6elw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=QsrZM4sEy8uLcrnGUzE3uPq0qpUjjSmve/sgnoZgTi+eBi6XxY39wXvX9L0MzPQ3WfFIeMxDoXQFyHT6SUlu/24DYVpuplL4qZIX8+D61/fdwQmxHralS3EtT3slR0xg0kNdITZPdoi+glLczNy6HswD6BD+Di/hXom5Q9QE9Ac=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=KZ5/Xr+R; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=qldfFe97; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 8a202f4aaba311efbd192953cf12861f-20241126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=tcahZUw/KVaklbkufjUV9hiaeHAAdaa51xZklrP6elw=;
	b=KZ5/Xr+Ri3WeUMb0b9AHf3Y7Mu9E76UnhBBKIlv9xY3m4S7ZY7SfEQBMk4DuVCrW24E1ado/Yn/QD+WLmaTTgZ9Hpk4sL0LkTr40Y6m6ufn4FY/7BsfvLKFFZJRu6aYXQ9K5M2mmAuJPlysEoLgpfZECPCcsy8Z1q3YH3bSTLpQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.44,REQID:607b2387-ab6f-44e1-936c-fc89ed43e6ab,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:464815b,CLOUDID:ff1f64b9-596a-4e31-81f2-cae532fa1b81,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0,EDM
	:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 8a202f4aaba311efbd192953cf12861f-20241126
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 362785565; Tue, 26 Nov 2024 11:07:15 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 26 Nov 2024 11:07:14 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 26 Nov 2024 11:07:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EfHWMAJL6mzblBJJBxiXOmkj/56PvkwCZjRLiSjTCHpI/8XDgyAb0lTqoKOza2v6dqBtjWi/u7W7cmBGd6mQbu9RfBmEtz9GVW9psx2ELmyfrkjQRPTUuDJrhw6Ej9TZGrOLdsba0jRfsn02tKwMozK+Jl2bf43Rnu05pheS7Rre8Aw/wdQ2FgkJB+h0RrZxES3BrAPxXdOLZm0vr59WKqygRJMDPw18y1/5OC3ka0sOZtExxi17Vn3z/1qroQ8roCRZqk245s9iPNPHVIuVsD5LGegq0E7pZfTnTOGSZYAFEZeAD9IuhuTvgCaYAWRKpuUBiZRx1GzZ8p3HtdiamQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcahZUw/KVaklbkufjUV9hiaeHAAdaa51xZklrP6elw=;
 b=oToFRSG9hNCqd7SC68PzY2QuT43woXczG4GUqRAWc1XAfMrUD6Q2TQ0Lwz5yQeTaPKXrxLSlw+VbdQTXKIroMsvplWMMADhEmUTYRNMGQE2jKg9t7YB26wpGa1wlPQ2VXIODbnWVz/TwrDwI8b5/lpaqPNzAd2p61wQf4v5o0yPON19XE4gS7fbUPwiojVIa5bZgwDi2qMOasOpul1sE5c/ZJiaGaPHy770UFFgsDlNEiTKeVGVVjjs9V6mNanIwzR6zJVC1wdvmmWMSQiCEOKyt0a5249sWUGrPCBakuVqpbxJBgz1/GC+UUofRBmR18SZxPWNXyMph5xQZY7x8Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tcahZUw/KVaklbkufjUV9hiaeHAAdaa51xZklrP6elw=;
 b=qldfFe97lrU4k9lDNJ3dOzFt6W1VsPldI89I1mnJzMUvw71VZ5Ve8QlnXicBACwqj9a8dGBVhsHmITQys2JKwJUEW3kXoFyFKWMGFzaz0qZ/7W5T/7m0fQLHm9Bfj80F0tzhp674h5+9kDuTdGvitgfynxpsElShlS8NLV04pSU=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KL1PR03MB7798.apcprd03.prod.outlook.com (2603:1096:820:f7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Tue, 26 Nov
 2024 03:07:11 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8182.018; Tue, 26 Nov 2024
 03:07:11 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "kernel@collabora.com"
	<kernel@collabora.com>, =?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
	<jitao.shi@mediatek.com>, "mripard@kernel.org" <mripard@kernel.org>,
	"simona@ffwll.ch" <simona@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>
Subject: Re: [PATCH v1 6/6] drm/mediatek: Add support for MT8195 Digital
 Parallel Interface
Thread-Topic: [PATCH v1 6/6] drm/mediatek: Add support for MT8195 Digital
 Parallel Interface
Thread-Index: AQHbO0o2kTOzG2fD30avrRutQMN1rbLC6GCAgAVWuwCAAKrhAA==
Date: Tue, 26 Nov 2024 03:07:11 +0000
Message-ID: <fd48c582e99d6c07be4b66919fb6c309379ad752.camel@mediatek.com>
References: <20241120124420.133914-1-angelogioacchino.delregno@collabora.com>
	 <20241120124420.133914-7-angelogioacchino.delregno@collabora.com>
	 <1b966a136f02b5586749a9c3d0bcec6c75224e49.camel@mediatek.com>
	 <33acccd3-e543-493e-a61c-282d894ef2b1@collabora.com>
In-Reply-To: <33acccd3-e543-493e-a61c-282d894ef2b1@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KL1PR03MB7798:EE_
x-ms-office365-filtering-correlation-id: 15ddcd6d-4433-46d7-b3e6-08dd0dc76bd0
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Zi9OdlpaZWZIQXV0MVdsTjNXZHFIMTJmeEhQMDQzdmlaOGxUSjloS05SYlEv?=
 =?utf-8?B?VENvb3d5UGV2ZkVqMWszRDYvelljeTZBc3lCWVdTSXpuSkJEUy9aemFRcTN3?=
 =?utf-8?B?WkxyS1N3UGdRdzl5Zmk4T3BwZEg0aFMyNThzTnpTT2laNFpzZ1UxeUR4emZa?=
 =?utf-8?B?aTBpdUtMR3JFb1p0WjZUY1BnTFlNMytKc05UbnUzUHNrZjIwSXQ5aFJVM0or?=
 =?utf-8?B?cDA5dHE1alc5SVRLUkdyZ3FieUF3aFUxRTE0U2YyeW9FY1RmbnN4WmxhVzNm?=
 =?utf-8?B?eUxxbXNYUTJkdi9Jdi81RmYrMzlXK0d4czROd2UxMkFQSE93OCtvcTE4dEZh?=
 =?utf-8?B?S0pFR0JEaWFjK01yWHRCcG1PejNHdXhNN05Ca0Z3T251alNLY2VXKzBIbVY2?=
 =?utf-8?B?SW95ZXJwYjl0bDhMeVYzVllDR1lMVXFJUTJCWUJqdDA5YmNOVmpMd0xBd0lG?=
 =?utf-8?B?dm1hNnh4YkNqYXI4UjhhanRyaDk4azYvYlFlaG9SaGs3K0hMYWtoTWpsY2Nx?=
 =?utf-8?B?VC9DSUI3cFc4WFBBdmE0UE55bWw1eHIwckE5OWZBWFpPS3BxUlJEbzBqSmdR?=
 =?utf-8?B?R2phVWQ0OVZZM09MZCtXdWRDV1ovYzRUNWlsVW96M0wzUm9Xd2RQSFVydnBQ?=
 =?utf-8?B?SXNEYVVHNVdscGNZRG5JS2lHM1RHTHl5MUVneG9vdndZNzRoT21HMStIeTMy?=
 =?utf-8?B?b05ncnZqMTFoN1V5ZHFsTUVTTDk4bDZOVDVZTStNZnpzYjBKbWU5ZGtrdUJU?=
 =?utf-8?B?UExCZzZBWkF0L0w1VnlYam5EL283RUM3akMwWUVLMVhxU29HY3R5MXZxY0VM?=
 =?utf-8?B?Z0VvRUhZUjJ5TEZaYjVkVzNHekwvWXhUV1lvZXVFNk1ubzJqZ1V5Vit3cVpu?=
 =?utf-8?B?WnMxcXhWNk9wb2djVTY5WGRxaFU3dDEzS3BJZzJLMFk0WDR4TktCZjlHaXJR?=
 =?utf-8?B?c1BOcFhUMmd5eklyVVdFK0JOMnRja2VzZFpNbEVlQzFlYjVZODV0M0ZIUjZa?=
 =?utf-8?B?NWpzaE1COUNUd0VqUHNldzlmS05DMUduYmdkeWl0NFZyZU5mSG5sblZVVng3?=
 =?utf-8?B?VTZYYmhYN3M5amhnTk1IL2MrMUt5VnVLVVA5S2QydVFJWTFxK2k3eDhHTzE1?=
 =?utf-8?B?Si90bC9uRFZ4TEdoTEd3Z1Z3ZHNxT3hpS0lON1VaeGgvZ1BUVDhkeFJPZEJL?=
 =?utf-8?B?cmdnME5iWGVxU0RVdTBScDdrcDJoMTBEOXNzKzZHb1piaW1teWd0cWd6dC8v?=
 =?utf-8?B?MkNGZ2RsVDN2cTN2aGpkV0E1YURKclVDVnQralRUYWticGxFWXpRbTZHU0s4?=
 =?utf-8?B?bVhYMzZpRXhsaWtrQ1l3bENmaFlPTXN1eE8zdVNHblJSQjkvQUs0UENyOFlT?=
 =?utf-8?B?QTZDTE43TVVjTXd2REpVVEMrd0pTV2wvOU9lVUU4Vi91MkpwOTZycHE2NGZo?=
 =?utf-8?B?ZVllby9nc2U1ZE9YenNXTENyNGFjL09tZFBwbC9BYVpFYy8xYnI5ODdGamps?=
 =?utf-8?B?MmREYzFZT3ZUWDZTd2N0SUhZUkMyV2ZPQmtnQUk5dFNIczNBd3JWTncwd01L?=
 =?utf-8?B?OHkvQWpaRkZZQTZ2QmtnQThsNC80MWFDOXh1cFJIaEMzbC96MExleW50NE9L?=
 =?utf-8?B?RkdKaThwK2wrcmw3SDJHa1BNNzlLeFZWcVZSRkx5c3g5cnVCemgzVGJxcHZB?=
 =?utf-8?B?ZmY0M2pvaTJVUTJCa0p6WjAxZDcySzR6di9URG9wZXNKZGRWK1Y4c240UHN3?=
 =?utf-8?B?VFYxeURlL0RDQmxHZmdtMzZWSktuZTJKQ2NjNzZ0ai9uaUlWSDNDeUR6Nngx?=
 =?utf-8?B?V0lGbS9IK1dHd29YY21aWk1LK2RlRW1pcFJuNjJ4MGFmb3VBRy9iTjdDQUFp?=
 =?utf-8?B?bHRmNnZxUm90Q1dwSXVQQmRUMmVEWE5MWG14MmlMUVRuMkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2NNaUZINUlLZnVURjZrS1RCWGJtZU5sckkyQWVWVVB6UFhJdWFwdkdXWWxt?=
 =?utf-8?B?bUdRS0plbk1oWlZXU2JLaHgzZEoyeExvcGJGQ0xCam1ONnZZMHc4VFNHZUto?=
 =?utf-8?B?ejNsSUJnSlBuMDJUS0dNQkx2QzVtdEs2empMMFRVRUpjMkN6aTV2b3dLSVdv?=
 =?utf-8?B?T1dSZTg3RlY5QTc1UVdNLzQ0elJWWDdnLzRJYlp3Y056L2VGQ2VheDJjZXJS?=
 =?utf-8?B?RklXbFNZeEtNazRNRkxjUFBuRXdTWU1zQStPUzY2ZUFrZ0dwR010TGVUSmxN?=
 =?utf-8?B?VmcxUTcxem9BMFpOTXhHOWtGMytKOXVibUsvNTIzNkx1bHRNdFJvVkVPdTRl?=
 =?utf-8?B?MU1DeTlGV2w1R3Q4YnBKbHdrSjdLTFZUNUdQd2dUNW9Oeml2clZ6aUdWYTdz?=
 =?utf-8?B?TXdIMDBYRHZHZmxiTnBjOGwxTmcyVWVHN2wxYzhValZackkwdzc3QUNtemdS?=
 =?utf-8?B?a1ZNNG0rT2dDVDJuZHdIWU1qZm1ES1ErY3Flcytmd2xvaDIxUkF1QTM1RlJM?=
 =?utf-8?B?Mm0wV3I0VFlMWHpQVjBSVmhrUGhWYVVJN0RLU2V1MjkzWUZrdFo2N1Zsc0xy?=
 =?utf-8?B?R3IvaWx4VGNTdmI4bjg3V1ZzYVhnV05DM0NtdnNDTDNxazBjT0c4SHZ6ekNz?=
 =?utf-8?B?ck0zVkp2cFhNcEFobWF5OTRzQ1pqcWFRNnlUTHcyV285MlhjbHBZSkVJbFNi?=
 =?utf-8?B?UVRjSXI3MG9rZlVhVkN5WHJwSkxrZ1NjZFlhOU9OM1h5Y3FCWkNhdEEyZTI0?=
 =?utf-8?B?V3RWTGRYZHFJN2FJeVRLbGdId28rSFduQlk5OVp6RXRjZmpsZDkzKzhVaURG?=
 =?utf-8?B?d2FocllIcFRGeW16b1dkcmQ2UXU2bVdBcEpkQjJyWiszaWFteisyNHd4SXc0?=
 =?utf-8?B?dzJhc1ltTkZ0REE1b1VPTFBzc2xSeTNCUWJyOW1uRnhhd2RvRFVmTERrNzJP?=
 =?utf-8?B?MDVvK2w2VnEyTisrTG41T2pxN2NNRUJ4bWMxclp6VGdaK3FVb2tNNWdvaDJo?=
 =?utf-8?B?S1hRNVdBZ3IwalV6RTN0KzVmdmZRTnVHSDFoN21SLzB5YjE1TkV6UE1kaHB1?=
 =?utf-8?B?ZlJRTU5yemp5WGI0c0dtRThKUC90eVpKV3ZETThtSzRaUERZUmRqOW5kRjRm?=
 =?utf-8?B?dzc0dUV1MDZPQ3B4WENreXFjSm5NNEVlU0FZWkJwRFdlZmo2VG03MWRya0dX?=
 =?utf-8?B?bk1udzQ2Q3lubDNYNG1PdVV2U3F3QzRiNTMvUUl3MXM1RTJDemtYaldaSE9O?=
 =?utf-8?B?aGo2eGdlQ2JsMU5HZlFxeXBaSHE2VVNVQ2dJZWw2ODRMU1lBSldUeDhrMzlm?=
 =?utf-8?B?Q3hkd1ZzLzZZRmpsOG5UazFkb1NWUlJObGlNN00yTHYvTHM2MERnWUsrVzNP?=
 =?utf-8?B?QmpSMW9uZUNRL3hCUmEwV3N2aFB0MXludk9JOGxYQnAyZnh6ZkJYOVFyVVU2?=
 =?utf-8?B?ZHVSYWxOSGVUOEUwYWtwZ2drU1lRQWFGeXZhNC9yQ2pGM2E5cVVLVmZ6SHJz?=
 =?utf-8?B?L0hQL0NYaHI3dzh2dmZoQUErVys0MzhEbmhlTy9SSHpkeXpLajdqQTUwZ0h6?=
 =?utf-8?B?d0x2RzZ0b2ZDSVVQWmJ5VkliVkVCQlRXTkl3NmRsT3RNMW5scmZpT2FLTUFI?=
 =?utf-8?B?aWNZZmdwUS9EMTBlR0VjTkRSWFZNVTFqWXlMc3BiQkNCenRnTzZ2ZnhhMlZ3?=
 =?utf-8?B?cFRsMHl0dFNtNXU4Y3AwVjRrZzFJSUtFMGxXaTd0UWpHVVhrTUJqbVRFdjJF?=
 =?utf-8?B?VnhJc0g5NkJucVg4U0JtV0hMY3BTUFZoUDA3QllpejRXckZlclRZdmQ2QWJP?=
 =?utf-8?B?c3R2TVZ5NEtQRkU5T1BydWdKeHNUei93QndtRFpjM0p5UnR0cVcwTnpYbUcr?=
 =?utf-8?B?bytuakUyeDMzZWJ1OGRTTWFHREF1ZTJSOEVlaFhZSEQ3NDB3c2Jjd0had25l?=
 =?utf-8?B?RHNwMGpONVNGWUVYZGNUMjZMYlpLM2ZTaG5BaVVoRzhZMzFXOWFQOTBNdlQr?=
 =?utf-8?B?WnpLQTFvenhYNjEyMi9DelVKMGV5R2l0Ynp4clp1TnRjRUk1cnlyZk9qejJq?=
 =?utf-8?B?aVp0cUlaSXBmQmxnTUJsT3h3Y0M2ZjlXVmV1UWUvclJlbWd0dXozUlRHQWZM?=
 =?utf-8?B?a1J1T1JVODRZM09QT2Rsb25SaC96MFJwOTA3NnRVakFrTldzTHMvVlFqSWpq?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <513B2380330B0F42B4B8C7AD8A876FE4@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ddcd6d-4433-46d7-b3e6-08dd0dc76bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 03:07:11.4468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p97dXGaO3I+kE2RJDfO4LI+WhxZoErEwuRkrvhbhbkQWTelgtSzj1Fp4GtCkO5AP+mLSC/V4Iubh+fNvE1k2sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7798

T24gTW9uLCAyMDI0LTExLTI1IGF0IDE3OjU1ICswMTAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtz
IG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBv
ciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbCAyMi8xMS8yNCAwODoyMywgQ0sgSHUgKOiDoeS/
iuWFiSkgaGEgc2NyaXR0bzoNCj4gPiBIaSwgQW5nZWxvOg0KPiA+IA0KPiA+IE9uIFdlZCwgMjAy
NC0xMS0yMCBhdCAxMzo0NCArMDEwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6
DQo+ID4gPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3Bl
biBhdHRhY2htZW50cyB1bnRpbCB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBj
b250ZW50Lg0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgRFBJIGJs
b2NrIGZvdW5kIGluIHRoZSBNVDgxOTUgYW5kIE1UODE4OCBTb0NzLg0KPiA+ID4gSW5zaWRlIG9m
IHRoZSBTb0MsIHRoaXMgYmxvY2sgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIHRoZSBIRE1JIElQ
Lg0KPiA+IA0KPiA+IEluIE1UODE3MywgRFBJMCBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gSERN
SS4NCj4gPiBUaGUgZmlyc3QgdmVyc2lvbiBvZiB0aGlzIGRyaXZlciBpcyBqdXN0IGZvciBNVDgx
NzMgRFBJMC4NCj4gPiBEb2VzIE1UODE3MyBEUEkwIG5lZWQgdGhpcyBtb2RpZmljYXRpb24/DQo+
ID4gT3IgdGhpcyBtb2RpZmljYXRpb24gaXMganVzdCBmb3IgTVQ4MTg4IGFuZCBNVDgxOTUsIHRo
ZW4gdGhlIGRlc2NyaXB0aW9uIHNob3VsZCBiZSBtb3JlIHRoYW4gJ2RpcmVjdGx5IGNvbm5lY3Rl
ZCcuDQo+ID4gDQo+IA0KPiBUaGlzIGlzIG9ubHkgZm9yIE1UODE4OCBhbmQgTVQ4MTk1LCBhbmQg
TVQ4MTczIGRvZXMgKm5vdCogbmVlZCBhbnkgbW9kaWZpY2F0aW9uLg0KPiANCj4gUGxlYXNlLCB3
aGF0IHdvdWxkIHlvdSBsaWtlIHRvIHNlZSBpbiB0aGUgZGVzY3JpcHRpb24gb2YgdGhpcyBjb21t
aXQ/DQoNClRoaXMgcGF0Y2ggZG9lcyBmb3VyIGpvYnMuDQoNCjEuIEVuYWJsZS9kaXNhYmxlIHR2
ZF9jbGsgZm9yIE1UODE5NS9NVDgxODggRFBJLg0KMi4gRG8gbm90IHNldCBwaXhlbCBjbG9jayBm
b3IgTVQ4MTk1L01UODE4OCBEUEkuDQozLiBOZXcgRFBJX0lOUFVUX1hYWCBhbmQgRFBJX09VVFBV
VF9YWFggY29udHJvbCBmb3IgTVQ4MTk1L01UODE4OCBEUEkuDQo0LiBEbyBub3QgcG93ZXIgb24v
b2ZmIGZvciBNVDgxOTUvTVQ4MTg4IERQSS4NCg0KTWF5YmUgeW91IHNob3VsZCBicmVhayBpbnRv
IDQgcGF0Y2hlcyBhbmQgZWFjaCBvbmUgaGFzIGRpZmZlcmVudCByZWFzb24uDQoNCkZvciAjMSBh
bmQgIzIsIEkndmUgbm90IHJldmlld2VkIHRoZSBIRE1JIGRyaXZlci4gSXMgdGhlIGNsb2NrIGNv
bnRyb2wgaW5mbHVlbmNlZCBieSBuZXcgSERNSSBkcml2ZXIuDQpJZiBpdCBpcyBzb2Z0d2FyZSBy
ZWFzb24sIG1heWJlIHdlIGNhbiBtb2RpZnkgdGhlIG5ldyBIRE1JIGRyaXZlciBhbmQgbWFrZSBE
UEkgZHJpdmVyIGNvbnNpc3RlbnQgd2l0aCBNVDgxNzMuDQpJZiBpdCBpcyBoYXJkd2FyZSByZWFz
b24uIGp1c3QgZGVzY3JpYmUgdGhlIGhhcmR3YXJlIHJlYXNvbi4NCg0KRm9yICM0LCBJIGRvbid0
IGtub3cgd2h5IERQSSBkbyBub3QgY29udHJvbCBwb3dlciBieSBpdHMgc2VsZj8NCkV2ZW4gdGhv
dWdoIG90aGVyIGRyaXZlciBtYXkgY29udHJvbCB0aGUgc2FtZSBwb3dlciwgcG93ZXIgbWFuYWdl
ciBoYXMgcmVmZXJlbmNlIGNvdW50LA0Kc28gZWFjaCBkcml2ZXIgY291bGQgY29udHJvbCB0aGUg
c2FtZSBwb3dlciBieSBpdHMgc2VsZi4NCg0KUmVnYXJkcywNCkNLDQoNCg0KPiANCj4gQ2hlZXJz
LA0KPiBBbmdlbG8NCj4gDQo+ID4gUmVnYXJkcywNCj4gPiBDSw0KPiA+IA0KPiA+ID4gDQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNj
aGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPg0KPiA+ID4gLS0tDQo+IA0KPiANCg==

