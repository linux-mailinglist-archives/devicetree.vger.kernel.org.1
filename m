Return-Path: <devicetree+bounces-98258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B64965884
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BA9C287E13
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19F616C86B;
	Fri, 30 Aug 2024 07:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mjZ4XzIZ";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="qGNyqMKI"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E016C16BE23;
	Fri, 30 Aug 2024 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725003026; cv=fail; b=Xr1DTUJ8McthTxk93N2J8ZUu9X1LnZeXJ15qi6rxdGMtB9kJfJ2rVmPSsgwjGAR/jLVoSWLGFhqDHcbn/gWUkMH0/+JTruQZ1IJQNZqgwJUscR6v6cNbhjpE1q+DxBtrjYnbfBZUGtVNscsyD1XU9NQv+izkkMEbKpX09b3iY0k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725003026; c=relaxed/simple;
	bh=sWFIKlWaTABvUudBd3sHK6roBPhhfPqwJJBPDkFBRFU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=XJ+6pW3c2lnL2EcUEUutirH4EcynSFCp4mt2YmKAl3HrQFlYNdNH4RsjyrkQJgy4WVz4fay3l2grdnUgBIaSmoH3nZQx2RYLbXX6c9eIZBBwshCU2y7UWW4gFxOui4F6zO40LbXN1Q3uzEwGUOOHn07L2OV02m4oQY2dj+kk3Sg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=mjZ4XzIZ; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=qGNyqMKI; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: b25cac0a66a111ef8593d301e5c8a9c0-20240830
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=sWFIKlWaTABvUudBd3sHK6roBPhhfPqwJJBPDkFBRFU=;
	b=mjZ4XzIZQms+kFM3E1ArFLnDgf/1DMINHcuf8saTCxi99rEUIqgl0TPx3lDTjRL1NQgrCyxapekr+kfcNpDoIJRlDL6/LRpE9y9hMnjmvvtU5Qb406vN/zhUGDvaRJRG+RyeJjutPPZIvlCENXEjTMHBq7aOjwmxdcI3NrgMxYc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:d3a31370-4b42-4754-8a02-e2c2b1e7c8f1,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:dd572dbf-d7af-4351-93aa-42531abf0c7b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|-5,EDM:-3,IP:ni
	l,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,
	LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: b25cac0a66a111ef8593d301e5c8a9c0-20240830
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1479192199; Fri, 30 Aug 2024 15:30:13 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 30 Aug 2024 00:30:09 -0700
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 30 Aug 2024 15:30:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KMjjCtgqGVeoGqSQtPl+S/u/46laPyQBZg7LIjZkjZHPf/cNMFewdjyDJ4vdMeoDhn+xK26QG+ZOQidBUBxozVoI8/aZw2VmIsckpwrlHmpLXAXQiMNwNSocOqN0jRK9FdiMFY8VVr+nPhlSfnGIBIfTF8aRiRL7d9bRkvxcYx08gk+Qvarttz5+PW9sG9WdohqNcWWydl7J9b00qgXQyN9gfNBm69Lp96aPwTlqVsu5YKiCkJX2G00W6kQFKCLdk5Ils69dPYv8COuX3qBJ+5LFet5Ah4wZzXPaVYDc8nfvkyAd9yDUTy0BmWwOm6WDtqx1K1XMv+rzT/jQ77QhAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWFIKlWaTABvUudBd3sHK6roBPhhfPqwJJBPDkFBRFU=;
 b=Ct7SeKnjBOSvDWyE4KjYE0emrOexo/1uPnIXY625ErLTeumMXN4E/Vj48mHPY1lb7tJpsKn0qAJg1EgxqSSdMALKa5EpgwBQb8ZkAg4SEs++Xl85mOCHX16x4DAh0EuAAzMtce06rpFHVcFLr8ygCuaVBuHCOewEBO4Y+34kk37i5gGc42IZ6w1gZm4gUz2pnmlNxZOiIlihXy1wPlVEyVRGx5rFagvUoEwqsyh1S8bwLIstIWdpmpHZPMNjDYoNThSdb+GmurNdaZRztYY5nnw0qYQlDekZ8/HOwhWc8Sh1RrmR28LQknhMSChyDEqnAYoCqtycz0wgO+sLVmXQ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWFIKlWaTABvUudBd3sHK6roBPhhfPqwJJBPDkFBRFU=;
 b=qGNyqMKI9VNESHggfglVh7ewFefhWv3O2Mg4OToHdS2N8tpt1BuRDkiCMbjMIwTmbCtxTMt6f4kwZ8V82aQNm8HwerJ5H14kpi9vsglKs8US2XERQEdxeP6EOGrvqVd90kEz6Scz5zIjMkawGFBrpVl7tMGAGBsXmJWtOqyDPtM=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KL1PR03MB7260.apcprd03.prod.outlook.com (2603:1096:820:9c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Fri, 30 Aug
 2024 07:30:03 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 07:30:03 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "rohiagar@chromium.org" <rohiagar@chromium.org>,
	"mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"airlied@gmail.com" <airlied@gmail.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: display: mediatek: dpi: Add power
 domains
Thread-Topic: [PATCH v3 1/3] dt-bindings: display: mediatek: dpi: Add power
 domains
Thread-Index: AQHa9F9AeHFIEZ2D70ygviVy5QKIDLI/dBsA
Date: Fri, 30 Aug 2024 07:30:03 +0000
Message-ID: <63172d431d4f1fdb93569c8dbb46b4d8a53d1676.camel@mediatek.com>
References: <20240822064650.1473930-1-rohiagar@chromium.org>
	 <20240822064650.1473930-2-rohiagar@chromium.org>
In-Reply-To: <20240822064650.1473930-2-rohiagar@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KL1PR03MB7260:EE_
x-ms-office365-filtering-correlation-id: 381a1ddb-3c8d-43bb-244a-08dcc8c59055
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TW5nNTF5cE1JNnRtSFE0Y1lJNmhweXZKb0M3TWttL0lJOHZmcTZHVnY1eDU2?=
 =?utf-8?B?aDJZaDJiWmd0Ull6VmJzQzhEK1BCaXBwTjJZWUpXbXFYM1ZBY1MvLzYvQVI1?=
 =?utf-8?B?a2dkTFVacXBZdnFQKzhVWER1QTI1Qmlad2VsYVBjYjA3NUZ0VWhqYVlwRkQ0?=
 =?utf-8?B?VDNYZE9wNkYvVk43N3Myd1F0Y3RsWCtkdXYrOWl0alJVOVdFTDZzVEkrVlcx?=
 =?utf-8?B?TlRJZXlxMWVvQ2V2K0c4ekdSME5zdGJpYmF4UE5SbmZEOVRyOUtsemQxTHhO?=
 =?utf-8?B?czllMzFndHFDMURhUWdZdkR0UExJNFBRc1NvQkthS2w3cVlOdnBkeDdLenFr?=
 =?utf-8?B?K3F3dU50RlVkeSsxMXRhWjZMTGN0RGxjSUx1Y0l1ZVRQRDJmRklVRUFTU3BC?=
 =?utf-8?B?aXkyQW5wQmdHTjdENUZFeHlVV1BjTzRkc3RwK1pLQW9IYytvTnFhU1ZjcnFS?=
 =?utf-8?B?Z3pKVUt4YU5tckdQQ0ZxYmI3c3FxVm1Ea1FWblFMM21xbUZWSDdHd2FJQ21x?=
 =?utf-8?B?b0dpeDdsVUZlbEk5dlFQWURLRStON0xwNzhDYlRyczlnWXI5WHpGdXY2cjJK?=
 =?utf-8?B?dWFKU29IVVIwZ3cwSVljN2QxVUVZVEFYQm1sT2h6eHdLMDdOMlBLTnVFQWlz?=
 =?utf-8?B?SnhpUGNqZ1hYdDliNUZzZkEwNnMxUGtPV2krNEY1WFRVQ0JtaCsvMmFHMVRt?=
 =?utf-8?B?bGxabWhGSWNqdkJTdDkvWTZ5OVg0WVc1WmUrc3VBaWhZemd4eWxOU3B5R2NJ?=
 =?utf-8?B?aWJHejFrQlEvaDh5eDk4TzBBYXlhSmZCdjhKYXU4eW9xbjV0VXNKcldzd25l?=
 =?utf-8?B?cmNNYWJYMHJsRFBlOFV2WHR2NmtZR1ZUZFpFNUVLazVwbFJ0YXl2Tnl0ajIx?=
 =?utf-8?B?Z0w2QTFFZWsyS2MyK1VnTVpHWHJRcitvcWk4MDNyalZlM2FUa1kydDNXY2Zv?=
 =?utf-8?B?WXNldHhxSldOdlpROWc5dHB6anhadll0SCtuSGpFRkc0MDZ6Zm9DSW5LZEx2?=
 =?utf-8?B?T0QvZWJCSG5xQkorTEc5OE5mK3JpNVNoN1RROG5uU1Q0RVd4cUJ6b0NMTTJ1?=
 =?utf-8?B?cUxJZ2ZpejdaajBkNkZIRFVuNWhCQXlBT2VBdG5aNm5ScE1tS3VIOUFVUFVC?=
 =?utf-8?B?SjZTN3B1TmE2bk1OQlRJaFFTejA4VFJubXphVk05cVVXSEdRZllFUC94R0VY?=
 =?utf-8?B?VDIwR0prVjhnMVlnaVNtak1jZzlkZG5PMVduRmlsU3ZBb2RoRmNicmJFSzBG?=
 =?utf-8?B?SHlQdGVXNmtSWEIzVDZIVTVtaTBTYjVFUEp6eitBbnQ1WnR2SG9La01Dc3NG?=
 =?utf-8?B?dGcrZjdDMmptZy8zZGJpMDdqM0tza2NhZm9HNkZKSlFjd1V0L3FCUmZNZXNK?=
 =?utf-8?B?c2tUTXUyU3phT1lra1JCdmUyQ1g0NUNhOHk0aWYwZkpFakcvbVVtUmJlVTBz?=
 =?utf-8?B?YXZSWTV1d05FWDRJZ1Myam5LYkZ1M2Q2WUFZcFBGMkxkNnY1aHdnRno1cWlt?=
 =?utf-8?B?eGpVdkRWRkJJVFpVeW1RWGFIZzdzczlCSXBqUTZNTUhIdGZ1cnNvNVY2czFs?=
 =?utf-8?B?dVNPSW9sNnl6Wm53UmZrS0g4MmpaaXR2NjNad0RaMUNtUzN5Wlo0bXc4WThG?=
 =?utf-8?B?elpTWkFhdm9JR0U5LzY4cmI1U1Z0VmxyNlUxMjVjMnVpcGhlTU5Da0FKTDVs?=
 =?utf-8?B?RGl1VHV0MW1mVzhuRCtUUGJjRC9PaU9IR1RVeGJQeVo4UGpWd0RvUmViSm8v?=
 =?utf-8?B?dGFjTDFOVDh0NVVlZUJ4a1Q0Y1Z2T25MWkxxdGpUMU1ubWZ2dVRIYmtGTUxV?=
 =?utf-8?B?aDBVVmhIYkxjeTNLaXdreFYvUjJEWjlUK2EzWWVIcU9sY0ptc3pMdnZtelB6?=
 =?utf-8?B?OUVZbmZFMUNWRXRVakZmcm1sSmIrdkpGT0hXOUZpZnhncDNld3NYN3czakRi?=
 =?utf-8?Q?8haMn3ioQeE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REVOMElmR2NMWVNFSkxnUXVLQWZhRU9JdVRRMUNJMFZKZnhXa2FsWlo0UTBz?=
 =?utf-8?B?anY5OG03YnRzWnZrck5jTWxRVkZ5b2IwZWl2SlFvQWNqTHFKNVJnL1FJOEd4?=
 =?utf-8?B?TkY4SlRIc1VrZUt6SjZNMlRTWkxWOHFadGlKVEZNNVBEVTg0Wm1iQXBjZ2xQ?=
 =?utf-8?B?ZTNpRUZRVloxMTh4Z0o5cWVGbjJkV0kxaWVJeFd4VnNKdDN3cDVNeDlWTkxW?=
 =?utf-8?B?N3lvYTdYMUJJYkxVZ0FGSU1oUFhkWG0wNlpyZGFQcFFBR3F0ajFid3RacXFD?=
 =?utf-8?B?a29RV0ZMb0JmM3ZRV0FSRlZKZURCWnVPdklKajlORjNQTjFselNyU1UwVzZS?=
 =?utf-8?B?c0JZOEphSElnVk1GMzdITytYb3pHalFiRlJVMWgrcHl4U3FCa2JzeDVHYmF0?=
 =?utf-8?B?THNOUFE2TjNVUVlYd3J4L0Z1c1ZySjZoSnc3N3ozYStIV0NCbHdFQWlBcG10?=
 =?utf-8?B?Um1Ud3pETGRUNGxjOEQwcWVXOTFlM2kyYWRYZW9HeFBPTVp4YUJBTCtHbEVV?=
 =?utf-8?B?aktBaXJlZ0orQzZ4UXc2Ym4zdjk1WWdpc2hQcndXcFFwaHViSWZuMmdyWGpG?=
 =?utf-8?B?Y3E2SFMxY1JyTVBiWkZJWFVsZ2JVTnQycGZDc0U5MUd1ZGExTWtSaWIzeVds?=
 =?utf-8?B?N3hWaWJtSFJTSlFBTERYcVhJbk0vK0cwVUh4S0tzdnVya0QyTmNFR0lsL3BX?=
 =?utf-8?B?elNwRHVGSE1DOFhkWUVtZHZaaXlpdm9LTm9YWlJ4b21WMEJlbFY5UWwzY01n?=
 =?utf-8?B?Q0E1aTU4RjFNQkRFNDJBZUxzN2d4WXMzbXhnVk1tcW52dXhkYStZcWd2VDcz?=
 =?utf-8?B?NXdBczJadjFtOTZBdWUyTzVxSEsveG1FNVY2UzN2Vlg3ZlhJTGlMc1QrVE1F?=
 =?utf-8?B?V0gzVDdEaG1HUEJSeU83YlBZL2lPTjZpMVJFQ2hJNXR3UWJCTWRHak5SOEpO?=
 =?utf-8?B?bFdQbTMzYkFFTVR1UnZ6ZjZlS2wyb3N0Y3lwU1l3Y0FFSjZDY0JzczBDVHQ3?=
 =?utf-8?B?bWhwQXVMazVGdUkxbUNJZVlHWHE2R0N3WUhMdVcvZXpZdWFmWkwxaTZGQ3Nu?=
 =?utf-8?B?c0dQVm1GQXZpNzBkVVZpMHRUUER0SnI2TWxxNmJHRk93Yk5zWGYvL1NqUXdj?=
 =?utf-8?B?RFR0WEpnYzBzT3dEM0tjR0F5b1oyRzY3WWJHdmVzbHlGb1ZzNmdSNkExT1Jj?=
 =?utf-8?B?bjRDdzZSWEI2Tms4dmx3ZWtXSVI2UFg4eGpsbDVTZWFkQlFSeXUrT1ZvRnF2?=
 =?utf-8?B?dDNRMHNPVDVjYW1iTkNmTVdpa2V4M3ZHNTRLT212bjhrVW9LWmFpb2dvNXV3?=
 =?utf-8?B?bFFENTRjNjFRMDhnUjJlVXlUaUFhUUNqNHoyUDBXRVR2Zi9Xczk3SkFiSFhO?=
 =?utf-8?B?UWJFRXFkRFdFOWhaYlFxNHdpWnBUK2oyVzVVblhIZVU4d2d2cmR2OTlUZEMx?=
 =?utf-8?B?ZVhNM3Y0TUJ2U0tFdnQyRjBXcWpnZnNLNlAya29ubEZYZjVNRldGQy9DT0Jk?=
 =?utf-8?B?dnRPSkhMMEJWR3RQb2ZGczVFa3IxN3hhZXlmTDE5d0F0Nmp2TEhTQkcrcWk2?=
 =?utf-8?B?eWQyQXo4enBENVMvaFNQZkhNOWJOWXZRYk9DcForUGxKVkJVcWRIbXJjaHdp?=
 =?utf-8?B?VGs5ek9LV3NMYmZFWGowREFYVWh5K3NsR1pSVit2L2J1b1dqZUl0ZWc2SFZw?=
 =?utf-8?B?V1RENDN6ekRxWXJoR2pTU3dCTDZNS1M0MWlqQTNQaXRjQzh2QVJnRWRwdkg0?=
 =?utf-8?B?YllGc0IvTlZXUWdrREtrT28zYW5OekFaTlhOYzZBNjhQM0k4c3k0UklMMmYv?=
 =?utf-8?B?aVhzQVRrb3hzdjF6cTFlT21PTE9jaVVLdytzVmlJdi9tOEc1U3EraEdBZ0sx?=
 =?utf-8?B?VGJCOGluelhvTFlwamxPNjZ3TTI2ZGo4RWFMTTFxV1hyRVhCUUhtYmJtbVhH?=
 =?utf-8?B?YmtTVGNkdEIvMmpQNUc1b0xTT3NwelE3cnNHaDA4a1FDUVR2YnpIT201RlZi?=
 =?utf-8?B?ZDRmWkh6SnZ1TnU4bzZTVkhXdkE1WStzd0p5Q1k2OGRHSDVPdXJSRjJtZGZO?=
 =?utf-8?B?VnU0SXJUeVJqUU5RMFgvSXZBTENZdlVhMVBKSmVONkdqSEVxd1ZnbW9XV095?=
 =?utf-8?Q?csgQK28qR2p8JldRuu68Er243?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8BF353A787105D4EBA34A9253E7E73C1@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 381a1ddb-3c8d-43bb-244a-08dcc8c59055
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 07:30:03.4880
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IVJRVpvPtfdmKm/EEqXa5XNIgjz/iINMhCGgAFCZRa+YHTmbCcmdB/gSDXNCMj02sD+mcbMTHe6EfDrcUdQj6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7260

SGksIFJvaGl0Og0KDQpPbiBUaHUsIDIwMjQtMDgtMjIgYXQgMDY6NDYgKzAwMDAsIFJvaGl0IEFn
YXJ3YWwgd3JvdGU6DQo+ICAJIA0KPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xp
Y2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bnRpbCB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUg
c2VuZGVyIG9yIHRoZSBjb250ZW50Lg0KPiAgQWRkIHBvd2VyIGRvbWFpbiBiaW5kaW5nIHRvIHRo
ZSBtZWRpYXRlayBEUEkgY29udHJvbGxlcg0KPiBmb3IgTVQ4MTg2Lg0KPiBBbHNvLCBhZGQgcG93
ZXIgZG9tYWluIGJpbmRpbmcgZm9yIG90aGVyIFNvQ3MgbGlrZQ0KPiBNVDY3OTUgYW5kIE1UODE3
MyB0aGF0IGFscmVhZHkgaGFkIHBvd2VyIGRvbWFpbiBwcm9wZXJ0eS4NCg0KUmV2aWV3ZWQtYnk6
IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFJvaGl0
IEFnYXJ3YWwgPHJvaGlhZ2FyQGNocm9taXVtLm9yZz4NCj4gLS0tDQo+ICAuLi4vYmluZGluZ3Mv
ZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbCB8IDE3ICsrKysrKysrKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlh
dGVrLGRwaS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
bWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnlhbWwNCj4gaW5kZXggNWNhNzY3OWQ1NDI3Li4zYTgyYWVj
OTAyMWMgMTAwNjQ0DQo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sDQo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sDQo+
IEBAIC02Miw2ICs2Miw5IEBAIHByb3BlcnRpZXM6DQo+ICAgICAgICAtIGNvbnN0OiBkZWZhdWx0
DQo+ICAgICAgICAtIGNvbnN0OiBzbGVlcA0KPiAgDQo+ICsgIHBvd2VyLWRvbWFpbnM6DQo+ICsg
ICAgbWF4SXRlbXM6IDENCj4gKw0KPiAgICBwb3J0Og0KPiAgICAgICRyZWY6IC9zY2hlbWFzL2dy
YXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydA0KPiAgICAgIGRlc2NyaXB0aW9uOg0KPiBAQCAtNzYs
NiArNzksMjAgQEAgcmVxdWlyZWQ6DQo+ICAgIC0gY2xvY2stbmFtZXMNCj4gICAgLSBwb3J0DQo+
ICANCj4gK2FsbE9mOg0KPiArICAtIGlmOg0KPiArICAgICAgbm90Og0KPiArICAgICAgICBwcm9w
ZXJ0aWVzOg0KPiArICAgICAgICAgIGNvbXBhdGlibGU6DQo+ICsgICAgICAgICAgICBjb250YWlu
czoNCj4gKyAgICAgICAgICAgICAgZW51bToNCj4gKyAgICAgICAgICAgICAgICAtIG1lZGlhdGVr
LG10Njc5NS1kcGkNCj4gKyAgICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE3My1kcGkNCj4g
KyAgICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE4Ni1kcGkNCj4gKyAgICB0aGVuOg0KPiAr
ICAgICAgcHJvcGVydGllczoNCj4gKyAgICAgICAgcG93ZXItZG9tYWluczogZmFsc2UNCj4gKw0K
PiAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+ICANCj4gIGV4YW1wbGVzOg0KPiAtLSAN
Cj4gMi40Ni4wLjI5NS5nM2I5ZWE4YTM4YS1nb29nDQo+IA0K

