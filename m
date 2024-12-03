Return-Path: <devicetree+bounces-126375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCF99E148E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 08:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EE4D1646D3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 07:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159931AB6CC;
	Tue,  3 Dec 2024 07:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="fPDa07HY";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="mcdxwdKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CEA18BC0F;
	Tue,  3 Dec 2024 07:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733211879; cv=fail; b=lA84mxqPYmesZSCpZeUalGgLleAcaJiIle4zlvOnbxTMcvAixUzAfL78WLTWqgStcGNnjYzoQhujDvqNlUJs+TfeLNmx55URXPx8tWj+ci5vBX2St6o/mkgjap+Cr43Yf80K0lur3UIM5m/31h0mmLB4CkJqSuXlOlNZ8UoJySU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733211879; c=relaxed/simple;
	bh=/zOr6E2WxZzwvZh/qpLfE+KsgyB5nqtIiy7H7vbBkTI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MEVMcPdCedUfJK5jyhEwF7otTtDKYumYbuMcYSGl4zlljRIsklGXxAZcUCQg6S056aV52FEiR9iPnr+FYegJEfkjkwXPeGuU2IgUN4aUWGYhY3I4MK12/PKAIq/yIU5RSMxpDaMpW3K4shQIRBrP5FFKgd7q3/sqMO8vZdufyIU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=fPDa07HY; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=mcdxwdKj; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 6aa974e4b14a11efbd192953cf12861f-20241203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=/zOr6E2WxZzwvZh/qpLfE+KsgyB5nqtIiy7H7vbBkTI=;
	b=fPDa07HY0kY/QFidh/B8fKeQ2NY0ppbxK0dvfxAQJeo6cSyzPXfzlCxkxcEjkTo4rCwgOctRnNlvVsrHY8YkrbX5gMTYOjAQZKHKd9CjatEp55KvE7tsVWgpZ7LuMhjMBufY7oj3tLoNLVX0pmneianrQUAvjQqlU8NC1Hchxoo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:4e62755d-67aa-49f5-ac73-c22e926d097a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:d0a7a8e0-1fe5-4c4a-bdf3-d07f9790da32,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0,EDM
	:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 6aa974e4b14a11efbd192953cf12861f-20241203
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2036012750; Tue, 03 Dec 2024 15:44:24 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 3 Dec 2024 15:44:23 +0800
Received: from HK3PR03CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 3 Dec 2024 15:44:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fGlRGQQ+ViklntOmxsjziJSeFSyVDROk5q9/qJ0/kwnkLMJwr0LmcIWgcdiqE242Q24gVigFQm7h8Gx3bUDmsbzQzGx4owZQv3javaT7MtYl266aqSrL7O2ktt7hlnmLuPYsnyqCQ8ZPAmZk5mAxnDC9eFaHy07ZT1NhHpwz8DpH//DLJdKu8oAPSxq8BIuDo242Py0G417dL8GpL4Et1A7ez/NjJtCpXYEUn+R0qhweNIwiUF0eXu6/81eXfxYp/4Rhw82N/F0GnVpcd2edJZtJJ+OHz7DZAORUSjgw/wbEo3VGkFPg6lD2khDKJIsZCIH+P7tylZY063IQBk1h5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zOr6E2WxZzwvZh/qpLfE+KsgyB5nqtIiy7H7vbBkTI=;
 b=PwCLfCaFqfL7C/GkSoxfq0aQ7N8UFAf69XsPmXHcWGcvCyVXNYTTVFEuKcbYBpGMmYcR+sYXZPe65rtwVsjB8i94Xwu/BZ7FmeFC5AQGCur6t23CMC8cIba+evJDir1wmtj0EvfXrqhfVpe9V91HgWYgdxvUD4zVQYdIuTfmj87J9cxp7PhTknnW5d2T7Z6dhPEBXDVMn3qvgkrgS1+ELN+0seOa24BiiKt6n2W12OvPsJ/XN5zWhqqd/V7V/d5++q/wc6XEse/6tCTRy6mFyTujfoHl/pDhbo8N7DcjJhKMP44DhfuWxFrsXU2q0wcpyR3kkQwIwBBR2+1Oh3MCuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zOr6E2WxZzwvZh/qpLfE+KsgyB5nqtIiy7H7vbBkTI=;
 b=mcdxwdKjjmIK0opB/exO3X6buQ0PM4yBEgcjcNtxMnkxGvMLnc7dQKXZnjVMBrUEKifO3Cbv2zLXtZWwqBvKcWSqognLwiwy22f2HBj7O3FpCAJ8frKsC5wT9IIXwOpnBBTI0MsKJJHvYq5lfj+m2R5QzgBZXi5v7IObQlZc7Dc=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEYPR03MB8792.apcprd03.prod.outlook.com (2603:1096:101:206::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Tue, 3 Dec
 2024 07:44:20 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8207.014; Tue, 3 Dec 2024
 07:44:20 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "simona@ffwll.ch"
	<simona@ffwll.ch>, "mripard@kernel.org" <mripard@kernel.org>,
	"kernel@collabora.com" <kernel@collabora.com>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>
Subject: Re: [PATCH v1 7/7] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Thread-Topic: [PATCH v1 7/7] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Thread-Index: AQHbO0pF3Zp6UXdpSEmkHbI6wNkmT7LUN7kA
Date: Tue, 3 Dec 2024 07:44:20 +0000
Message-ID: <1b8da37e09c60778c876d163f34c54c4d15839fe.camel@mediatek.com>
References: <20241120124512.134278-1-angelogioacchino.delregno@collabora.com>
	 <20241120124512.134278-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20241120124512.134278-8-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEYPR03MB8792:EE_
x-ms-office365-filtering-correlation-id: c0c1fded-bb99-45b9-d94b-08dd136e4c66
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L05zTGs4NnhpT3pRVTNtU0x6RmZ6Rm1lMldtV2xQSUFxeVM1UDNqQlFKY0t5?=
 =?utf-8?B?cWFqcHFaVGNsVG80OTNWaFR0b2tsd0QvRTBha09TYU5aSTdFUTh0akY0Ynd5?=
 =?utf-8?B?ZWZSdzBaYXlJaVV4TkthMlBQQlU2YjZ2VWNnZHVRRkp5enR6SUVuNElSWHdL?=
 =?utf-8?B?KzBPMHgxM0h1YXdOUmRuWmZIWjB1M1N0alpVdkdadXlRWW5EZ01sS1JxTkpY?=
 =?utf-8?B?YzZVK0JYaG1LQWJJWG5xbWdEUjhTRndpdUpaWXBRdXBqZ0EzNHZReTg3Zks5?=
 =?utf-8?B?ZURaT2VvT2M1QVlIRTJzcG5wOTV6M2ZEYis2UlNObUl5cVQ2YzZXQndkN0hw?=
 =?utf-8?B?bHNLeUNyUndHSWMwYms3dndEaVp5bkR2UDU2UGdvMUg0UnQrYUF6NU4rc20y?=
 =?utf-8?B?SlBWSU9RNFhzWFRJLzRZYWFubEJXVkY0bkd1SzdHa2dQZmdicFdTYmdtd2Ir?=
 =?utf-8?B?eEk4bjhVdUQ4Y2h6Q01CUjkrb3RtZkprRldhU3dpMjhFNEJqZFZYMWFWYlFB?=
 =?utf-8?B?NTllb1AzK0F2WDYrZE9EZ2tTNjZKUHh6QjZ1amgvSncxSjFRUG96dkVwRnNp?=
 =?utf-8?B?SXdnb1A3RTZOWDJ2TzdDeHorKzhxV2NPSlZGQWRxdFFsS2xzVDhDTEV0cHRD?=
 =?utf-8?B?cTNkeHh0NzU3MWJGY0hkeHd4cmVLb1VtR0J6OFFNeGNJYkxCa3VyZDloWURH?=
 =?utf-8?B?eUUrUThldWxyL3I4UStQSllOR2c0dU5GUTJtMVNpdFkrNzRDM0NuQk1qWDlE?=
 =?utf-8?B?cTd4SVc4SG0rUFo2eWtXeklCK0ZMNGFCRUNZWWxRNnZqMDBDMFM3VWg3MmxX?=
 =?utf-8?B?R3Y3MWlyN3ZJU3ltam83VVVXaGd4L2NBZEtsU08zVzhJeEtZRjZVYkV1M1BJ?=
 =?utf-8?B?R0Y5MDliTjlXbGRjOTZ1bU94QUk0bjNlUmxxbjJRd1VxZXlyNDRvb2lyRFNS?=
 =?utf-8?B?UElZNWxNR3J5eFk2b2VEZlZZTXlpYVNEdWpIaXNKbmx3VjVFZWRWeVNOMkdx?=
 =?utf-8?B?dmI3NU9VOGlVUVIxaXBmb0J0eEUrUTVpSTBmNFVEa3lWYWJJUGp1SUI4UCs1?=
 =?utf-8?B?UG5CcjAwV1ZYTzFqL2Q0NjF6TXhQQm5iYzhkek5rWmRRWWtpM0I3K2FmSkw1?=
 =?utf-8?B?Uk5DelZ0eVc1a1hNUUNwRzJxQmZBWFJ0VnBuVFE5bGo2YTIwaWlNbXRLZ3lk?=
 =?utf-8?B?VGdEbitDR2xhMkVTbUhja0VCWGZnVGxuSTF1c09taUlvT2lVL1NJZWN1djll?=
 =?utf-8?B?c3B3QmtQc09OTnptaysrc1RLemg2R1JobE9Nc0d1YkZ0N1VRNjZ1N1NTMWV5?=
 =?utf-8?B?QVpUZWxJT2VCRnV1YkJsOHdMeWFMaWR4R2UyZ3ZRU1haQ2xrZll0TDY5UWRR?=
 =?utf-8?B?YWxMSEFpeWoxQXgxQm43cER0OW9xNVhFbWs1dFlWMjU2b3RWVWcvOW1zd3Fm?=
 =?utf-8?B?SklkdFdHUkw1L1ZnMnZNaWMzaFM2YmNnY2loK1lwalhXaS9lSVhaNk9hM1Jo?=
 =?utf-8?B?d2JKR293c2dZSG9BODF1Rk9hL2hmWWZueHRKdVkzKzBqK3ZYM3hRTDBQWEZn?=
 =?utf-8?B?c2JReEJ4eVhiQklhSUlUVjZGcW5lenlpSjZmU3I2UzlKMjRtKzFNaUdaSEhJ?=
 =?utf-8?B?bzdvclkrb3lCVnBteHI3WDAwSXk1Vmt1K2JTRTVpeHBuM0xsTlRvSElhT3JK?=
 =?utf-8?B?SkE4OHVxUnVZRER6VDNBb0R5ZkwyY2xhM1dYY0ZUUk5qSTN6bloyZFY2aXZE?=
 =?utf-8?B?dTJPODYwdDU4UXVqcHVEenNIQ0N0aE52cEZvSzZwUUVISm41WmtMekZtY25o?=
 =?utf-8?B?R0ZvVjZhYy9adjcwZVV2ZGlZd012V0RsQWdVeFVVcFhFbStNSjVMNFhITWF1?=
 =?utf-8?B?SDF3Szl5dUlFczVtSEpQTFdEMTZGRDhnSGNvZ3dBeTRnTlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXVjeUltdG1COXM4UmRZdFdmWVBZV00xTnhtVTRoUVZ1VW1iSHc3ZzFsa3hL?=
 =?utf-8?B?NnYxQk1yYnRZcmdBeTlubldUeCtZVmtuaC9HTUVPSDFCTHVlYnhDa0tNMFVG?=
 =?utf-8?B?ZzJWU2VzQ2RaUDBVblErYmZYWmYwM2kxS0VDb2c5OEl4NkQ3NVVSK2ttd0Ny?=
 =?utf-8?B?QzJLaHRJdXZPb0ZZY2lrZURnRzUxblpFVTVPaldjdXRzM2RpVm44Y25qUFU4?=
 =?utf-8?B?OTBOTlZ0bmZ0dkFzN2RhdTgrMjRGUGZkVlVFSHlSL0IyTzZVUG9UeDE2bXl1?=
 =?utf-8?B?WkdYQUUveHp2QndEc0U1Z0puTmVTZWU4d2VFd0VkcmNYWVV1eW1rNTNqVlcw?=
 =?utf-8?B?SjMwOVVpdmQ4UWVhMFBkaWQ5dzVLSyt4REFhQWs1VUFIZjFlRmNvVlArdkZu?=
 =?utf-8?B?L1RoTHhLSDlMUE5EZjQyNFJtdUMwSnNXekUyYytzWjJ2cUhzYlI0M1FGUzNQ?=
 =?utf-8?B?dXVacDArWFNTZUtPY2lUY2FYRXNYcWQwNE1NVnFmRUdoYnRNUW9uKzhpWGdJ?=
 =?utf-8?B?MTdZeGtoRXNLMmllQTFMZTRJMWdQM2NpUlpMd2QxMXl0N0pPV1dSaXFhd2p4?=
 =?utf-8?B?KzA1ZlhEYWVUNCtWc3R4T0U5MDRXaG1LM1dBeENibkpmVGNmUllNUmlHK3JM?=
 =?utf-8?B?YlZuaWNYbjMvRHA3MFJiQldmQnVQWkcwdG9FSWxlY2dheWlVOVRQaEk1YXUz?=
 =?utf-8?B?NERqT2VtRzMwa1NFa0VNQkczQUUvR2x5QzhXN0twS0E0VldpWWdoT2ZNQTJC?=
 =?utf-8?B?aGVDeFhtaUhIMHRmOTFmcUhrbFlkRlpOZzBVNzNLN1hjUFpmUkNDWXd0cVZl?=
 =?utf-8?B?MzdrVDFwV3lSU0dxRnRNVzE4bHEzQnpxL3RxcWhMZzFrem5ULzhqQkhKdjI4?=
 =?utf-8?B?cC9VWEJsams5L29BWVVIbGZYSUpaZVVzYjBrcEdDVXpDNGJLcjFuVEtzZzV3?=
 =?utf-8?B?b0QwZUxqTmNlWFdoV052WFl6RWtlb1VqL25ETFU3cGtZNUhGS2RKM0ZBN1Zn?=
 =?utf-8?B?d3NraTBrek1RWkhDenYyUTB4bzcydXg1MU5VNDBpY1YxdDBMUUNyRzRjd0No?=
 =?utf-8?B?a0o3S2NGZ3RxMnJ1OTNjQTVjYm5rV3d2cmp4ODV1VTJFbTB0aVVkSWZPc21h?=
 =?utf-8?B?Ukc5ZTlUSkZqZHp5L2hvSnc4V0Z5RG1BRmZ0Y295andCNXBoMWlQMzRTbWNC?=
 =?utf-8?B?UFdSempLYUtOb3Z3R2RRODNrbkFMVUFOOWxCSGVuMWRaWWpVYWsvUHFBT2ls?=
 =?utf-8?B?bVJlMHhtOElyRlVkcHlGUDliU01rVlVFR2NDVG5vUDlYZDF4SEE4K2xFRkZF?=
 =?utf-8?B?MCtpbTl3UjBrYWVMbHEvMFdGUjY3QUdIQ3BWQVNXVlRQWjAzRU0yNEgvZE94?=
 =?utf-8?B?ekRZUndud01KUi9SVGUvRGw2RXBGcHcxS3VYRUFiN3NrQjhoM2hEWWlRdE9p?=
 =?utf-8?B?QTVPK3V5SmdhTERLRmwxN1pveHVjTCtuOFlMMUkwSTZIQzBzSmd0bzFwdXkw?=
 =?utf-8?B?ayttSHJuZTVTWFQ0U1RzM0F3bjJESWJyRFVkNkVybWE0RzFPSU1mSFhmY1Z5?=
 =?utf-8?B?ZUFFeUk4MVFVSXYzam52ZmRvLy9jay9qWHUvYnRQYTgxb2xsckMxTlIzUUt3?=
 =?utf-8?B?UVBHRHIyc2VFU2QzQ3JVY2piWlVZUEtrbnlnUW1Ic2laZmorSWE1d1JOUjlV?=
 =?utf-8?B?RnlER1EzTWEzalMzSi94QXp6MkZXSS8vWTZTVlQxZVF0c3lta0xxaUc1MURm?=
 =?utf-8?B?TXdPSUVaMkZVYnZYYWZ6WDJLeW5RTlcrTHl1YVRtWlI3dTgrWFhyYnVjRDYr?=
 =?utf-8?B?b3BYVUhldTY3RlNNMUlCSEc2NHp1Qk1MSnpJQlZjaEE3YlZzS3lIdkx3dFFm?=
 =?utf-8?B?MnhjcGdBL3VaUTM4d1FIbUVoVTltMXBLWithaVB2NFgyTkFXT3B1OUM0cWhL?=
 =?utf-8?B?Tk1IRy9vbDdzUTdXSVF5YWZGZUdrU0xWTGZ5NUJyRm1XYnBzTVA1eExnUHh5?=
 =?utf-8?B?Q2MwbFZPcUZtTkVWRGtadVBxY1Y2aHRsdnNtcHVRMFZuaGhwUGlUL1V6NzdN?=
 =?utf-8?B?U2tuaU5IeUZITXUrL3dGWjcvTmJ5eC9UR0xtM3g1RkY4UklTNGdQQUhGRVMy?=
 =?utf-8?Q?UD4HS6NxanpGG+k/rgI3bl4IU?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AEA0C66C483A8146AC870EDD8842B9AE@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0c1fded-bb99-45b9-d94b-08dd136e4c66
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 07:44:20.5174
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L3memvDSCWRB54oS8YXk/JsdT23cwhcCipPT+DWa9zsfJet52Wv4wk5t39bYF5r3hdHvo4S5ztgLLqgTxsIArA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8792
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--21.126700-8.000000
X-TMASE-MatchedRID: QW5G6BKkLToNtKv7cnNXnSa1MaKuob8PCJpCCsn6HCHBnyal/eRn3gzR
	CsGHURLuwpcJm2NYlPAF6GY0Fb6yCsME2BsoiKJMBfVY7O+c8KbAuWcdTSiQDXvsbfoZixUTS0e
	iOsrXcTgkamIfJgNRTgPWoj/mrDhSYWj7cx6xmDqO0rt0LpQGeSseSAhqf1rRXsXIPrsc8kXQGF
	lKOB0iJJ0msyvrDYliVgn5oFXqBB+RuOvEu8nosPyAR9DgC/hHXru95hSuhjRn8skCD2KVgaPFj
	JEFr+olFUew0Fl/1pGWc/0wwBlx2lZ0V5tYhzdWxEHRux+uk8jpP8tMOyYmaA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--21.126700-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	E2BF0B4BA5F60A1422BDA4A9DC3E7AD846800AC400AFE45D389DB3DE981E98DF2000:8

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
QGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArc3RhdGljIHZvaWQgbXRrX2hk
bWlfdjJfYnJpZGdlX2VuYWJsZShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLA0KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlX3N0YXRlICpv
bGRfc3RhdGUpDQo+ICt7DQo+ICsgICAgICAgc3RydWN0IG10a19oZG1pICpoZG1pID0gaGRtaV9j
dHhfZnJvbV9icmlkZ2UoYnJpZGdlKTsNCj4gKyAgICAgICB1OCBidWZmZXJfc3BkW01US19IRE1J
X1YyX1NQRF9CVUZGRVJfU0laRV07DQo+ICsgICAgICAgdTggYnVmZmVyX2F2aVtIRE1JX0lORk9G
UkFNRV9TSVpFKEFWSSldOw0KPiArDQo+ICsgICAgICAgbXRrX2hkbWlfc2VuZF9pbmZvZnJhbWUo
aGRtaSwgYnVmZmVyX3NwZCwgc2l6ZW9mKGJ1ZmZlcl9zcGQpLA0KPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJ1ZmZlcl9hdmksIHNpemVvZihidWZmZXJfYXZpKSwgJmhkbWktPm1v
ZGUpOw0KPiArICAgICAgIG10a19oZG1pX2h3X3NwZF9pbmZvZnJhbWUoaGRtaSwgYnVmZmVyX3Nw
ZCwgc2l6ZW9mKGJ1ZmZlcl9zcGQpKTsNCj4gKyAgICAgICBtdGtfaGRtaV9od19hdmlfaW5mb2Zy
YW1lKGhkbWksIGJ1ZmZlcl9hdmksIHNpemVvZihidWZmZXJfYXZpKSk7DQo+ICsNCj4gKyAgICAg
ICBtdGtfaGRtaV9od192aWRfbXV0ZShoZG1pLCBmYWxzZSk7DQo+ICsgICAgICAgbXRrX2hkbWlf
aHdfYXVkX211dGUoaGRtaSwgZmFsc2UpOw0KDQpJbiB2MSwgaXQgZG9lcyBub3QgdW5tdXRlIHdo
ZW4gYnJpZGdlIGVuYWJsZS4NCkkgd291bGQgbGlrZSB2MSBhbmQgdjIgaGFzIHRoZSBzYW1lIGJl
aGF2aW9yLg0KSWYgcG9zc2libGUsIHJlbW92ZSB0aGVzZSBjb2RlLg0KSWYgcmVtb3ZlIHRoZWUg
Y29kZSB3b3VsZCByZXN1bHQgaW4gc29tZSBwcm9ibGVtLA0KYWRkIGNvbW1lbnQgdG8gZGVzY3Jp
YmUgd2h5IG5lZWQgdGhlc2UgY29kZS4NCg0KUmVnYXJkcywNCkNLDQoNCj4gKw0KPiArICAgICAg
IC8qIHNpZ25hbCB0aGUgY29ubmVjdCBldmVudCB0byBhdWRpbyBjb2RlYyAqLw0KPiArICAgICAg
IG10a19oZG1pX2hhbmRsZV9wbHVnZ2VkX2NoYW5nZShoZG1pLCB0cnVlKTsNCj4gKw0KPiArICAg
ICAgIGhkbWktPmVuYWJsZWQgPSB0cnVlOw0KPiArfQ0KPiArDQo=

