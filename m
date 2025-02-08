Return-Path: <devicetree+bounces-144188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 502F3A2D3C1
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 05:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB03D16AC28
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 04:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24B218756A;
	Sat,  8 Feb 2025 04:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="fR4k0Bqd";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="kSupGarx"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA027157E6B;
	Sat,  8 Feb 2025 04:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738988528; cv=fail; b=V1wFvf/0c72xhdh9IEcuezR0W1TMtlI3fbQarbAqqAHySYa5xR/mJvfowxpSczo2a6QheOJ75hfbfTK/KFloZSEfnmLTVXHvQxqq5YRqIQN2f8Jjn77Dv5auTmK8pkQgYXayhheqTnHC6yOvcVUMDu+Qtxyz15TsI7DmJp6k7FU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738988528; c=relaxed/simple;
	bh=4SftNoTgEJf5erAfF+tO91n7dMJY4BPHOJ+XlGCrLwU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=UGttye6aBuSNIZC5Qyyo1jj9sLmvTRC5TJjcAkzgqxc+jqBqN7N+i1+iMAInZZXBSrWaA12Cmzwty2DyEoF+lfm0rmb7cjVCS7iww7Rj+at8/mE6hKoPeJjRPtj6BNxWgqka9nNNy8nOz/aZmP1ZmqZEzpwnB/CjRcFSPK21kTo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=fR4k0Bqd; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=kSupGarx; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3bdf2af0e5d411efb8f9918b5fc74e19-20250208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=4SftNoTgEJf5erAfF+tO91n7dMJY4BPHOJ+XlGCrLwU=;
	b=fR4k0Bqdie82PyDNDJXa/XLHpOpnw2qA2j9v1euaXuTIhrR/I2dUTECeA5Do8fnOuez+JaW9JLJjq+pFHcvn3jGijnPp1fSm0Ud+mT89MD5CpCHXydybbEpFhTKduwyBohwyLt7EPYi0hjaSPuM+HsazG42u89Eh20tikXxk0Cw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:7d1a7262-cc8d-4add-93da-d8b45659ebc0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:589155ff-c190-4cfe-938d-595d7f10e0dc,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OS
	A:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 3bdf2af0e5d411efb8f9918b5fc74e19-20250208
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <crystal.guo@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1679898585; Sat, 08 Feb 2025 12:21:57 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Sat, 8 Feb 2025 12:21:55 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Sat, 8 Feb 2025 12:21:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kwfx8TIHcN9lzttLttga5u+v5BREOGMNAcMFWeEgTh79NNWSTctNBXPa51Xe0/bCpgho+Y8bJ6SyXLSQrP7v72yNbMbQqNXcxi5vTtS3QsMD59P9Oui6uocqN2YLHzTB6qQ1ajlk5zEB5n6oTUKAxXZD+OvEQ6Y4//iOh1CdKgoiLcIeBbTumWYXXXq+v+iqypcG1e1XL+M7YtjL5SMMTa63Ss45Ed1qzmuEgSsbY9bFiH0mTA0+dLdNtDCnPmWWOBqkO9V7X0+pFhhMItJcXW4geZLv5ZQ030wCGLH4gnybGmn6gQyqXyEnmOGGcRskja+9AVwj6LrMk+p3JOCyIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SftNoTgEJf5erAfF+tO91n7dMJY4BPHOJ+XlGCrLwU=;
 b=UG0dzxPoPL9VwRDtUC7TPG4GBUDYt5q0vENmuUAE+fAvfi5GcrYzaPoA35yLhduP7n3MHEF1ijRwnmpj/RXT7Vq4gRAStmEjbsNjX1u2EHBR/2B6EpAKSq2CfPS/0gJRNNmCUfBjBWOTv2G6HFpGkVtbFQs0Oyn8TkKDzRbEDP3Gs/I0mPDz29kyj/TLZCu2cWGlXlsJojnA5h5TpNUyQZm83zam1fUvgEUgB4QtN8E8h2GTFqrYkKNofrKLrIP7578U7wZdGIiwybMGv/TSVBpzs2UbE4KVtXvWQiziXsIKtQSJs6Z/tmVKwOAdScgc7KC1E7XqzNMS/OSsBw8XYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4SftNoTgEJf5erAfF+tO91n7dMJY4BPHOJ+XlGCrLwU=;
 b=kSupGarx+8VMOhzr9Eu4DnT7MIEwbpAats3nMI+s3APnrc/ReFxAZ/RMFcqkmJ66M27CLDorwiPIOyrk+yC5Zppn7tGaG9r4bF099MF1pev0eswwp2DU1Ceb95ESXzpETL4GpVaxIeqiS5N2MqfhFQqK1kO/Ktr951W9Lb0C7Dc=
Received: from SI2PR03MB5468.apcprd03.prod.outlook.com (2603:1096:4:104::5) by
 SEYPR03MB6816.apcprd03.prod.outlook.com (2603:1096:101:8d::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.15; Sat, 8 Feb 2025 04:21:51 +0000
Received: from SI2PR03MB5468.apcprd03.prod.outlook.com
 ([fe80::28b5:41ba:aefd:a96f]) by SI2PR03MB5468.apcprd03.prod.outlook.com
 ([fe80::28b5:41ba:aefd:a96f%7]) with mapi id 15.20.8422.012; Sat, 8 Feb 2025
 04:21:50 +0000
From: =?utf-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <Crystal.Guo@mediatek.com>
To: "robh@kernel.org" <robh@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"krzk@kernel.org" <krzk@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: Re: [PATCH 1/2] memory/mediatek: Add an interface to get current DDR
 data rate
Thread-Topic: [PATCH 1/2] memory/mediatek: Add an interface to get current DDR
 data rate
Thread-Index: AQHbTHReQ4aD8qLJ/0KwgRI53WA5M7LicdQAgFq3NIA=
Date: Sat, 8 Feb 2025 04:21:50 +0000
Message-ID: <526d42c40349831b75ebd370b46def666e897357.camel@mediatek.com>
References: <20241212090029.13692-1-crystal.guo@mediatek.com>
	 <20241212090029.13692-2-crystal.guo@mediatek.com>
	 <a2288f77-0178-4769-8bf3-662c82b8b4e3@kernel.org>
In-Reply-To: <a2288f77-0178-4769-8bf3-662c82b8b4e3@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5468:EE_|SEYPR03MB6816:EE_
x-ms-office365-filtering-correlation-id: 85646f81-aa41-4cc9-db70-08dd47f81bf0
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OW92RGd4R0k5UWxzOEJrRHNOOVR6ekRDdHM5ekljZWFRYUlpZURiK00wUXN0?=
 =?utf-8?B?UWo5L0ZOQnRvZzlGQXZ3WUptRDJRUDdmL2FOOUk3MXNKZEh3Yi9EL2JqSFo2?=
 =?utf-8?B?dVgrRWJEaS8wSEJIVFZJU1FibXZFZjlONkJnUzF3VC9ya0F6dllNRUtWR1Rn?=
 =?utf-8?B?WDVHUmxzcGVWVDRuQ3B0aDBCR1RSQnFUNi9POWlxa2xZWEZ4WHAxRW1XOHd0?=
 =?utf-8?B?YmVoejVDdVN5eVcxNjAzb1hYUm5BSlI1azd4WjQxSHEwM290QjBJeTVUY2lJ?=
 =?utf-8?B?cXlQZ05yOVJwdlpBRGtBWGhGVzFpSEVIZ0ZXWnh5WERtdGtyTVE5K090Z3c5?=
 =?utf-8?B?TjJvVERjbVRyS1RsZEVmL2R4ci9wM21INGhwbm5NWnNSTDFjaVltVkl4dVh6?=
 =?utf-8?B?cVVXSk1kTlJCclh6SVJlSjQ4MWdSRHovTElaaGdQRGpxcVVoQU1hbUFmRTJ0?=
 =?utf-8?B?czF3OGR1b2NiS2lsMzNhMkdOZTNESk9PN2hpdkR4dDNCMUl0L3ZEQVJYL1BE?=
 =?utf-8?B?alBvNmZpOTNFNVpqaG96cUpiMStFMDdNUmZrcDRHaTVFQlZoVUlLN2JUb3Ft?=
 =?utf-8?B?MXdMeDR0VmVRRk1XM3VvU2pvOG0rYzU1dkxVanZud3FOaFFyTE4rVGsxcko5?=
 =?utf-8?B?SW9DdkJOSzdvU2Vicy83MzJqK2prSDVKblBCb0JBY1FLYUYzTkV5MkQweG1a?=
 =?utf-8?B?UW9IRFRudFVmMStvbkJHdGVkZ2tocnJOcXpqRmhVMFFsWjBlUVFXQTVpalNL?=
 =?utf-8?B?ZVJVWUxBd1FhWktJWlY2N0FlUE1KUkphVWZ1WDFUQmI4RllybzdxK3c0dGdm?=
 =?utf-8?B?cmN1TEtsNjdPNG9UNjhuRTBBdXFkbWk3S05IMzhKejVIQzA4SzVnaVBReGd5?=
 =?utf-8?B?V2lTZEkwMTRHYnhWNFJtcDNreS9pekhXLzgrcmdkK0dPYTF5Rk5FR20zcmxx?=
 =?utf-8?B?YkR3UmZ6UnJsd1lCbHRCSEdOaWtJTWN4QmtrcDgyT0NTUnZNa0c0enZqazM3?=
 =?utf-8?B?VFovSnBOdEZyaUIxdWZETWRDM1JuN2hCTGkvRlNscnQ5SzhrOFVOVFhYeWl5?=
 =?utf-8?B?SFNSNmdseU14K1o5SlMvNSs5YmRFSGhIek9RVkNuZ1llQ2p1Q3FjWmFZNk1Z?=
 =?utf-8?B?VE9LcGN2WSs3QlpDZkRpNUlUenF3NTZ3b21vY054VmMzQnVWNVdJSVlUTnov?=
 =?utf-8?B?K1h6N25GVGVRT3lzOUJTOGpLVitrdzRLTXhNSW0wV3NXeGJjUDRIZ01hZGhs?=
 =?utf-8?B?MTNpekdVY2gzdlVBaXU1SklzbzF5QWg4NTFmSnNPV3REVm96dGJzNzNZejM0?=
 =?utf-8?B?NXh0YzVJRWxPa0p0TmlOc3Rya1V3VHhyL3NhcDdXdy9qWjFFcjlGN0RQR0xw?=
 =?utf-8?B?MEF2K3ZwZlYwa253aDhxbUw0ZTNPdDhrWU5EQzMwcnBVNVUzaTFDK3p2cERj?=
 =?utf-8?B?ZnFEeDJNbnhPY3RON2xrdU9jNXVmeXZVSjhsRnVKczZIQkdEV25Ld3p2c3R6?=
 =?utf-8?B?VkdETEtKYktyYXpxcnQ3L3hKNDZUK3RuTmQxc1FRWm5EVXRQZWplZ1EyLzNP?=
 =?utf-8?B?RW1zWExWVVVTNk0wVENuU2FKdmhDMjlyS3lSUnI0NjVhamc4K2J6NzY0Umg5?=
 =?utf-8?B?Z21mdENFdjhTV2tCUGMzTjc3RWNWaVZqSjdQejJwNG0wNmRVcGR1QTM2ZGpB?=
 =?utf-8?B?bkczWDlTaDkyRnloV3BXUXdNWncycE9Nd2ttbncwSEtqRUtWcWJRMTBpNmtk?=
 =?utf-8?B?L0d3RnhhdUxzUVh0K3ZHT01MMExSOUNhY3k2Vmk3NFh0TlBWU0lvYTZrZjNr?=
 =?utf-8?B?OFg2d2h4TGZkQTBiQTJNakk5STFhM3g1aEtHeWFXOTJCdjkzbDVSb1JNTFNT?=
 =?utf-8?Q?lbFnm6D5NoLVV?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5468.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2pMbGNWeUtvU011a2pKeXUrbmUrQ1NhZjNoM1VWQVNHMlhYMEc1M3hONXZy?=
 =?utf-8?B?S3M5OHVlVEVKMHMvdmpoM2xUcFpvZFUzbmVxNTlhYTlGdjVzUWp0bXFxU1o0?=
 =?utf-8?B?eXRSZGpYTTFzc1ViY3dnZytXMGpQakxvQzJ5RzltS1d3OVA3SnAwdDU5bVZq?=
 =?utf-8?B?UmxPOUFPc0pBT1BlRGI1OC8xbmN2SlBMS2NiRExRVnhNQVVuSFkwZmoxei9B?=
 =?utf-8?B?SFNjOENmUTh6eVdGQ1Jwd0RKQXhEbWRGSHBaRDhBdFE4UURzL2xmWHJnMVQx?=
 =?utf-8?B?c2p6empBT3JJU09ubUhTMk9UWE9OUXlXa2w3dWl3UmQ2N0pweldoSWlJVEU0?=
 =?utf-8?B?NnowcVY2WWlSeGNSSS91R0U4THBNVUU0T3hXTkV6b3dkN21sRGljVFIvNTRn?=
 =?utf-8?B?NUFiKzBaMkNKV0xvUzQ3eGdnekIxZEV0NnFOSGJ4QmVaOVFaQ1MxMzFRWmdi?=
 =?utf-8?B?UjlMaWNna0lVOVZndnV6K0t4ZXF2SWpCdVk0L21TZXhia01YU1NCaGxGNFpY?=
 =?utf-8?B?L2w2V2FwOG96M256bEN2L2RNbWFYUTdPL1lxY0pybExvNi9KWUR3MC9xVWJE?=
 =?utf-8?B?MWx5NWV6d0FFM0hYNWNjb2d1RTQxaStsYmdTYkZ4VGxHQ3VUVGtzS3NQQzhW?=
 =?utf-8?B?bWUvTzZQenpnWElpdFpMRVFXc2tYT015WEx1RUNPNEt1NkpsVFRNT0Ryc3hG?=
 =?utf-8?B?TGNmNGNITjhuSmdNUnYwNHlrNkhnTFlKZkp0WWxJUGRGcWVEU0xZa3QyZkEw?=
 =?utf-8?B?SDVLRGppcEcvUHIvLytvdnhZbUFIK0h3YlQycHk5d1MxUHIzUUVXdUdxdkk3?=
 =?utf-8?B?cWlVTTZXMnNLWmRvNk83SHdzcW5wOW5Ic3JVeHlINGZxYXo2NkFjMTZEMk9Q?=
 =?utf-8?B?VHBKenIrQ2hlMmY3NE8xSWtTWU9QOVRNaERaNFYyMzVZcHRiWFM3Y29oMEh4?=
 =?utf-8?B?MUlLT09zeFZpajdsdk9uUkIxQnVBZVZFVXNieFlFYU00d3VTTTlQNWZQRkp4?=
 =?utf-8?B?NUl6U3V6bCtYb1JsOXdmc1Z4dzFHclJpNVlMZWdaS2FLbG1CaHZZaTE5Y2FB?=
 =?utf-8?B?L2lhRTRtaGNKWmF3Nm5sYzBnTGZhcnMyWWJMQ2dYWFV2MzVzMFhkc1dnL3dQ?=
 =?utf-8?B?MkxESFg5L2x2QUdOK1VYcXJ0cGVvNWh3bnRZdEVzcnVUQmsyQXFaeUprSHgz?=
 =?utf-8?B?b1I0aVJEZm10SmY5SUZkSjBiZkZBVlBRMnV1MFF4SkM5T3BKZ2owWi9HdHgy?=
 =?utf-8?B?MjhIQ05IS3M2NmpYVlE0eXBsajNtM0ZSN1dWR3pQWkRQaUxIeUtXZmlpNEs2?=
 =?utf-8?B?Ti9xSW8yV1docVNlZUgzZFNqQVkyVDVkQndFaWF5bGFiQmZPc2dKMndrWkkr?=
 =?utf-8?B?QUZZRHVkb3htYzlKSHpEZUZTSm1XUi9GOVhTYWJFYkdiVDIxZHNxVFlEbUxp?=
 =?utf-8?B?RkJ6aUswMU14U3NYbWRiMkxROUlHbkN3cmE3ZXRMdFhHZW5PTlNPSnRNZVdu?=
 =?utf-8?B?a243bmxLd1psd0dFR3RFRVJnT3ZXUXNzNTJ1aldzKzR3ekVtK3lNY2FsSDNz?=
 =?utf-8?B?Rms0VEtIbFZaejhnK04rUzdLbmw3OTFrcUdodlN3dEZqR0hSYXlyZE91Zk1D?=
 =?utf-8?B?VTJTYXB5KzNuZk5qVzZ5c0ZjLzY1WTBYTHVESjgyZGszbkk0UHlQYWVyMW9I?=
 =?utf-8?B?NFlQYkQ3QUErY25tVkI1UzJ0RGFUTEhNZmlTUWdqYis4V3ZCOHkvOUFUSVRi?=
 =?utf-8?B?ZEtoQi9RRnBEWXJ6R2M4cUJtYThCeHlpZTZiWDRYSkt6T3ZTam13MFpjdEcx?=
 =?utf-8?B?T2dCSE1admx2RUp3anVpaytPY2ttWkp4MndOeW5XMmY5b1JzcU12cVNzVlZG?=
 =?utf-8?B?Rmh6aEdXVnhMa0Juam5NenNmNnlCMXZDc2k4RWNEODQ5K2ZzdjRhWGpXM2J1?=
 =?utf-8?B?clVxeUFScTRNMkcxT1JVTmh0Skdud096NmZXUllGTEUyeHBvN2FsbFZmbXg0?=
 =?utf-8?B?TjVVOGUvS204djdoUnM2YXErQkJUditseFhVcHFuL05DSVpMTytCZEZkMGxW?=
 =?utf-8?B?L0t0bEw0L01aSUphYWdQeE42QTJEKzg5djhNL282VEJRU1FxMUgyUHJSdHNQ?=
 =?utf-8?B?VWZ2cTZIL1E4R2Rxb1RhRHdVcjgzM2lhOGhFVjZocVdMa2hFZHhTSFNPbDQ4?=
 =?utf-8?B?cHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0F33DBD490B1C4D96919C133F8D17E4@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5468.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85646f81-aa41-4cc9-db70-08dd47f81bf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2025 04:21:50.2462
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t56VtBAEDR7jNja5qTYce0yGKLIjeDV71FIyx6Bbh3vQixbmBqxRYTJYjqurOvCW3cB5xz6wRnoH0VKeEgNzIgUhAhRZQUnWlTru/Ogt5Q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6816

T24gVGh1LCAyMDI0LTEyLTEyIGF0IDEyOjAyICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3Bl
biBhdHRhY2htZW50cyB1bnRpbA0KPiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRo
ZSBjb250ZW50Lg0KPiANCj4gDQo+IE9uIDEyLzEyLzIwMjQgMDk6NTksIENyeXN0YWwgR3VvIHdy
b3RlOg0KPiA+IEFkZCBNZWRpYVRlayBEUkFNQyBkcml2ZXIgdG8gcHJvdmlkZSBhbiBpbnRlcmZh
Y2UgdGhhdCBjYW4NCj4gPiBvYnRhaW4gY3VycmVudCBERFIgZGF0YSByYXRlLg0KPiA+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IENyeXN0YWwgR3VvIDxjcnlzdGFsLmd1b0BtZWRpYXRlay5jb20+DQo+
ID4gLS0tDQo+ID4gIGRyaXZlcnMvbWVtb3J5L0tjb25maWcgICAgICAgICAgICAgICAgIHwgICAx
ICsNCj4gPiAgZHJpdmVycy9tZW1vcnkvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEgKw0K
PiA+ICBkcml2ZXJzL21lbW9yeS9tZWRpYXRlay9LY29uZmlnICAgICAgICB8ICAyMSArKw0KPiA+
ICBkcml2ZXJzL21lbW9yeS9tZWRpYXRlay9NYWtlZmlsZSAgICAgICB8ICAgMiArDQo+ID4gIGRy
aXZlcnMvbWVtb3J5L21lZGlhdGVrL210ay1kcmFtYy5jICAgIHwgMzI1DQo+ID4gKysrKysrKysr
KysrKysrKysrKysrKysrKw0KPiA+ICBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRlay9tdGstZHJh
bWMuaCB8ICA0MSArKysrDQo+ID4gIDYgZmlsZXMgY2hhbmdlZCwgMzkxIGluc2VydGlvbnMoKykN
Cj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVtb3J5L21lZGlhdGVrL0tjb25maWcN
Cj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVtb3J5L21lZGlhdGVrL01ha2VmaWxl
DQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lbW9yeS9tZWRpYXRlay9tdGstZHJh
bWMuYw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9zb2MvbWVkaWF0ZWsv
bXRrLWRyYW1jLmgNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvS2NvbmZp
ZyBiL2RyaXZlcnMvbWVtb3J5L0tjb25maWcNCj4gPiBpbmRleCBjODJkOGQ4YTE2ZWEuLmIxNjk4
NTQ5ZmY4MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL21lbW9yeS9LY29uZmlnDQo+ID4gKysr
IGIvZHJpdmVycy9tZW1vcnkvS2NvbmZpZw0KPiA+IEBAIC0yMjcsNSArMjI3LDYgQEAgY29uZmln
IFNUTTMyX0ZNQzJfRUJJDQo+ID4gDQo+ID4gIHNvdXJjZSAiZHJpdmVycy9tZW1vcnkvc2Ftc3Vu
Zy9LY29uZmlnIg0KPiA+ICBzb3VyY2UgImRyaXZlcnMvbWVtb3J5L3RlZ3JhL0tjb25maWciDQo+
ID4gK3NvdXJjZSAiZHJpdmVycy9tZW1vcnkvbWVkaWF0ZWsvS2NvbmZpZyINCj4gPiANCj4gPiAg
ZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvTWFrZWZpbGUgYi9kcml2ZXJz
L21lbW9yeS9NYWtlZmlsZQ0KPiA+IGluZGV4IGQyZTZjYTlhYmJlMC4uY2YxMDkxNDQ5ZDJlIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbWVtb3J5L01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVy
cy9tZW1vcnkvTWFrZWZpbGUNCj4gPiBAQCAtMjcsNiArMjcsNyBAQCBvYmotJChDT05GSUdfU1RN
MzJfRk1DMl9FQkkpICAgICAgICArPSBzdG0zMi0NCj4gPiBmbWMyLWViaS5vDQo+ID4gDQo+ID4g
IG9iai0kKENPTkZJR19TQU1TVU5HX01DKSAgICAgKz0gc2Ftc3VuZy8NCj4gPiAgb2JqLSQoQ09O
RklHX1RFR1JBX01DKSAgICAgICAgICAgICAgICs9IHRlZ3JhLw0KPiA+ICtvYmotJChDT05GSUdf
SEFWRV9NVEtfTUMpICAgICs9IG1lZGlhdGVrLw0KPiANCj4gV2hhdCBpcyBIQVZFPyBXaHkgdGhp
cyBpcyBub3QganVzdCBNVEtfTUMgb3IgQVJDSF9NRURJQVRFSz8NCj4gDQo+ID4gIG9iai0kKENP
TkZJR19USV9FTUlGX1NSQU0pICAgKz0gdGktZW1pZi1zcmFtLm8NCj4gPiAgb2JqLSQoQ09ORklH
X0ZQR0FfREZMX0VNSUYpICArPSBkZmwtZW1pZi5vDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVtb3J5L21lZGlhdGVrL0tjb25maWcNCj4gPiBiL2RyaXZlcnMvbWVtb3J5L21lZGlh
dGVrL0tjb25maWcNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uMDA3NjRjZGIxNTdlDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMv
bWVtb3J5L21lZGlhdGVrL0tjb25maWcNCj4gPiBAQCAtMCwwICsxLDIxIEBADQo+ID4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPiA+ICtjb25maWcgSEFWRV9NVEtf
TUMNCj4gPiArICAgICBib29sICJNZWRpYVRlayBNZW1vcnkgQ29udHJvbGxlciBzdXBwb3J0Ig0K
PiA+ICsgICAgIGhlbHANCj4gPiArICAgICAgIFRoaXMgb3B0aW9uIGFsbG93cyB0byBlbmFibGUg
TWVkaWFUZWsgbWVtb3J5IGNvbnRyb2xsZXINCj4gPiBkcml2ZXJzLA0KPiA+ICsgICAgICAgd2hp
Y2ggbWF5IGluY2x1ZGUgY29udHJvbGxlcnMgZm9yIERSQU0gb3Igb3RoZXJzLg0KPiA+ICsgICAg
ICAgU2VsZWN0IFkgaGVyZSBpZiB5b3UgbmVlZCBzdXBwb3J0IGZvciBNZWRpYVRlayBtZW1vcnkN
Cj4gPiBjb250cm9sbGVyLg0KPiA+ICsgICAgICAgSWYgeW91IGRvbid0IG5lZWQsIHNlbGVjdCBO
Lg0KPiA+ICsNCj4gPiAraWYgSEFWRV9NVEtfTUMNCj4gPiArDQo+ID4gK2NvbmZpZyBNVEtfRFJB
TUMNCj4gPiArICAgICB0cmlzdGF0ZSAiTWVkaWFUZWsgRFJBTUMgZHJpdmVyIg0KPiA+ICsgICAg
IGRlcGVuZHMgb24gSEFWRV9NVEtfTUMNCj4gDQo+IEZlZWxzIHVzZWxlc3MsIGlzbid0IGl0IHBh
cnQgb2YgaWY/DQo+IA0KPiA+ICsgICAgIGhlbHANCj4gPiArICAgICAgIFRoaXMgb3B0aW9uIHNl
bGVjdHMgdGhlIE1lZGlhVGVrIERSQU1DIGRyaXZlciwgd2hpY2gNCj4gPiBwcm92aWRlcw0KPiA+
ICsgICAgICAgYW4gaW50ZXJmYWNlIGZvciByZXBvcnRpbmcgdGhlIGN1cnJlbnQgZGF0YSByYXRl
IG9mIERSQU0uDQo+ID4gKyAgICAgICBTZWxlY3QgWSBoZXJlIGlmIHlvdSBuZWVkIHN1cHBvcnQg
Zm9yIHRoZSBNZWRpYVRlayBEUkFNQw0KPiA+IGRyaXZlci4NCj4gPiArICAgICAgIElmIHlvdSBk
b24ndCBuZWVkLCBzZWxlY3QgTi4NCj4gPiArDQo+ID4gK2VuZGlmDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVtb3J5L21lZGlhdGVrL01ha2VmaWxlDQo+ID4gYi9kcml2ZXJzL21lbW9yeS9t
ZWRpYXRlay9NYWtlZmlsZQ0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAw
MDAwMDAwMDAwLi5hMTM5NWZjNTViNDENCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJp
dmVycy9tZW1vcnkvbWVkaWF0ZWsvTWFrZWZpbGUNCj4gPiBAQCAtMCwwICsxLDIgQEANCj4gPiAr
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ICtvYmotJChDT05GSUdfTVRL
X0RSQU1DKSAgICAgICAgICAgICAgKz0gbXRrLWRyYW1jLm8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZW1vcnkvbWVkaWF0ZWsvbXRrLWRyYW1jLmMNCj4gPiBiL2RyaXZlcnMvbWVtb3J5L21l
ZGlhdGVrL210ay1kcmFtYy5jDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLjljMmM4ZTE4N2E0YQ0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9k
cml2ZXJzL21lbW9yeS9tZWRpYXRlay9tdGstZHJhbWMuYw0KPiA+IEBAIC0wLDAgKzEsMzI1IEBA
DQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gKy8qDQo+ID4g
KyAqIENvcHlyaWdodCAoYykgMjAyNCBNZWRpYVRlayBJbmMuDQo+ID4gKyAqLw0KPiA+ICsNCj4g
PiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4
L3BsYXRmb3JtX2RldmljZS5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4NCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5o
Pg0KPiA+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3NvYy9t
ZWRpYXRlay9tdGstZHJhbWMuaD4NCj4gPiArDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpkcmFtY19wZGV2Ow0KPiA+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBk
cmFtY19kcnY7DQo+IA0KPiBEcm9wIGJvdGguIERvbid0IHdyaXRlIHNpbmdsZXRvbiBjb2RlLg0K
PiANCj4gLi4uDQo+IA0KPiA+ICsgICAgICAgICAgICAgaWYgKCEoZHJhbWNfZGV2X3B0ci0+Zm1l
dGVyX2Rldl9wdHIpKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHByX2luZm8oIiVzOiBt
ZW1vcnkgIGFsbG9jIGZhaWxcbiIsDQo+ID4gX19mdW5jX18pOw0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gPiArICAgICAgICAgICAgIH0NCj4gPiArICAgICAg
ICAgICAgIHJldCA9IGZtZXRlcl9pbml0KHBkZXYsIGRyYW1jX2Rldl9wdHItDQo+ID4gPmZtZXRl
cl9kZXZfcHRyLCBmbWV0ZXJfdmVyc2lvbik7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmV0KSB7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHByX2luZm8oIiVzOiBmbWV0ZXJfaW5pdCBmYWls
XG4iLCBfX2Z1bmNfXyk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFM
Ow0KPiA+ICsgICAgICAgICAgICAgfQ0KPiA+ICsgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAg
ICAgICBkcmFtY19kZXZfcHRyLT5mbWV0ZXJfZGV2X3B0ciA9IE5VTEw7DQo+ID4gKyAgICAgfQ0K
PiA+ICsgICAgIHJldCA9IGRyaXZlcl9jcmVhdGVfZmlsZShwZGV2LT5kZXYuZHJpdmVyLA0KPiA+
ICZkcml2ZXJfYXR0cl9kcmFtX2RhdGFfcmF0ZSk7DQo+ID4gKyAgICAgaWYgKHJldCkgew0KPiA+
ICsgICAgICAgICAgICAgcHJfaW5mbygiJXM6IGZhaWwgdG8gY3JlYXRlIGRyYW1fZGF0YV9yYXRl
IHN5c2ZzXG4iLA0KPiA+IF9fZnVuY19fKTsNCj4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7
DQo+ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiArICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2
LCBkcmFtY19kZXZfcHRyKTsNCj4gPiArICAgICBwcl9pbmZvKCIlczogRFJBTSBkYXRhIHJhdGUg
PSAlZFxuIiwgX19mdW5jX18sDQo+ID4gKyAgICAgICAgICAgICBtdGtfZHJhbWNfZ2V0X2RhdGFf
cmF0ZSgpKTsNCj4gDQo+IA0KPiBUaGlzIGlzIHRlcmlibGUgY29kaW5nIHN0eWxlLiBEcml2ZXIg
aXMgaW4gdmVyeSBwb29yIHNoYXBlLg0KPiANCj4gUGxlYXNlIHBlcmZvcm0gZXh0ZW5zaXZlIGlu
dGVybmFsIHJldmlldyBpbiBNZWRpYXRlayB0byBhdm9pZCBzZW5kaW5nDQo+IHZlcnkgcG9vciBx
dWFsaXR5IGNvbnRyaWJ1dGlvbnMuIFRoaXMgdXNlcyBjb21tdW5pdHkgcmVzb3VyY2VzIGluDQo+
IHVuZmFpcg0KPiB3YXkuIEZldyBtb3JlIGNvbW1lbnRzLCBidXQgYWxsIHRoaXMgY29kZSBuZWVk
cyBleHRlbnNpdmUgcmV3b3JrIGFuZA0KPiBJDQo+IGFtIG5vdCBnb2luZyB0byBleHBsYWluIHlv
dSBiYXNpY3Mgb2YgTGludXggQ29kaW5nIHN0eWxlLCBpZiB5b3UgZG8NCj4gbm90DQo+IHdhbnQg
dG8gdGFrZSBleGlzdGluZyBjb2RlIGFzIGxlYXJuaW5nIGV4YW1wbGVzLiBXb3JrIHdpdGggeW91
cg0KPiBjb2xsZWdhZ3VlcyBvbiB0aGF0Lg0KPiANCj4gDQo+ID4gKw0KPiA+ICsgICAgIHJldHVy
biByZXQ7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgZm1ldGVyX3Yx
KHN0cnVjdCBkcmFtY19kZXZfdCAqZHJhbWNfZGV2X3B0cikNCj4gPiArew0KPiA+ICsgICAgIHN0
cnVjdCBmbWV0ZXJfZGV2X3QgKmZtZXRlcl9kZXZfcHRyID0NCj4gPiArICAgICAgICAgICAgIChz
dHJ1Y3QgZm1ldGVyX2Rldl90ICopZHJhbWNfZGV2X3B0ci0+Zm1ldGVyX2Rldl9wdHI7DQo+ID4g
KyAgICAgdW5zaWduZWQgaW50IHNodV9sdl92YWw7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IHBs
bF9pZF92YWw7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IHNkbXBjd192YWw7DQo+ID4gKyAgICAg
dW5zaWduZWQgaW50IHBvc2Rpdl92YWw7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IGNrZGl2NF92
YWw7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IG9mZnNldDsNCj4gPiArICAgICB1bnNpZ25lZCBp
bnQgdmNvX2ZyZXE7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IGZia3NlbDsNCj4gPiArICAgICB1
bnNpZ25lZCBpbnQgZHFzb3BlbjsNCj4gPiArICAgICB1bnNpZ25lZCBpbnQgYXN5bmNfY2E7DQo+
ID4gKyAgICAgdW5zaWduZWQgaW50IGRxX3Nlcl9tb2RlOw0KPiA+ICsNCj4gPiArICAgICBzaHVf
bHZfdmFsID0gKHJlYWRsKGRyYW1jX2Rldl9wdHItPmRkcnBoeV9jaG5fYmFzZV9hb1swXSArDQo+
ID4gKyAgICAgICAgICAgICBmbWV0ZXJfZGV2X3B0ci0+c2h1X2x2Lm9mZnNldCkgJg0KPiA+ICsg
ICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPnNodV9sdi5tYXNrKSA+Pg0KPiA+ICsgICAgICAg
ICAgICAgZm1ldGVyX2Rldl9wdHItPnNodV9sdi5zaGlmdDsNCj4gPiArDQo+ID4gKyAgICAgcGxs
X2lkX3ZhbCA9IChyZWFkbChkcmFtY19kZXZfcHRyLT5kZHJwaHlfY2huX2Jhc2VfYW9bMF0gKw0K
PiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPnBsbF9pZC5vZmZzZXQpICYNCj4gPiAr
ICAgICAgICAgICAgIGZtZXRlcl9kZXZfcHRyLT5wbGxfaWQubWFzaykgPj4NCj4gPiArICAgICAg
ICAgICAgIGZtZXRlcl9kZXZfcHRyLT5wbGxfaWQuc2hpZnQ7DQo+ID4gKw0KPiA+ICsgICAgIG9m
ZnNldCA9IGZtZXRlcl9kZXZfcHRyLT5zZG1wY3dbcGxsX2lkX3ZhbF0ub2Zmc2V0ICsNCj4gPiAr
ICAgICAgICAgICAgIGZtZXRlcl9kZXZfcHRyLT5zaHVfb2YgKiBzaHVfbHZfdmFsOw0KPiA+ICsg
ICAgIHNkbXBjd192YWwgPSAocmVhZGwoZHJhbWNfZGV2X3B0ci0+ZGRycGh5X2Nobl9iYXNlX25h
b1swXSArDQo+ID4gb2Zmc2V0KSAmDQo+ID4gKyAgICAgICAgICAgICBmbWV0ZXJfZGV2X3B0ci0+
c2RtcGN3W3BsbF9pZF92YWxdLm1hc2spID4+DQo+ID4gKyAgICAgICAgICAgICBmbWV0ZXJfZGV2
X3B0ci0+c2RtcGN3W3BsbF9pZF92YWxdLnNoaWZ0Ow0KPiA+ICsNCj4gPiArICAgICBvZmZzZXQg
PSBmbWV0ZXJfZGV2X3B0ci0+cG9zZGl2W3BsbF9pZF92YWxdLm9mZnNldCArDQo+ID4gKyAgICAg
ICAgICAgICBmbWV0ZXJfZGV2X3B0ci0+c2h1X29mICogc2h1X2x2X3ZhbDsNCj4gPiArICAgICBw
b3NkaXZfdmFsID0gKHJlYWRsKGRyYW1jX2Rldl9wdHItPmRkcnBoeV9jaG5fYmFzZV9uYW9bMF0g
Kw0KPiA+IG9mZnNldCkgJg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPnBvc2Rp
dltwbGxfaWRfdmFsXS5tYXNrKSA+Pg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHIt
PnBvc2RpdltwbGxfaWRfdmFsXS5zaGlmdDsNCj4gPiArDQo+ID4gKyAgICAgb2Zmc2V0ID0gZm1l
dGVyX2Rldl9wdHItPmZia3NlbFtwbGxfaWRfdmFsXS5vZmZzZXQgKw0KPiA+ICsgICAgICAgICAg
ICAgZm1ldGVyX2Rldl9wdHItPnNodV9vZiAqIHNodV9sdl92YWw7DQo+ID4gKyAgICAgZmJrc2Vs
ID0gKHJlYWRsKGRyYW1jX2Rldl9wdHItPmRkcnBoeV9jaG5fYmFzZV9uYW9bMF0gKw0KPiA+IG9m
ZnNldCkgJg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPmZia3NlbFtwbGxfaWRf
dmFsXS5tYXNrKSA+Pg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPmZia3NlbFtw
bGxfaWRfdmFsXS5zaGlmdDsNCj4gPiArDQo+ID4gKyAgICAgb2Zmc2V0ID0gZm1ldGVyX2Rldl9w
dHItPmRxc29wZW5bcGxsX2lkX3ZhbF0ub2Zmc2V0ICsNCj4gPiArICAgICAgICAgICAgIGZtZXRl
cl9kZXZfcHRyLT5zaHVfb2YgKiBzaHVfbHZfdmFsOw0KPiA+ICsgICAgIGRxc29wZW4gPSAocmVh
ZGwoZHJhbWNfZGV2X3B0ci0+ZGRycGh5X2Nobl9iYXNlX25hb1swXSArDQo+ID4gb2Zmc2V0KSAm
DQo+ID4gKyAgICAgICAgICAgICBmbWV0ZXJfZGV2X3B0ci0+ZHFzb3BlbltwbGxfaWRfdmFsXS5t
YXNrKSA+Pg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPmRxc29wZW5bcGxsX2lk
X3ZhbF0uc2hpZnQ7DQo+ID4gKw0KPiA+ICsgICAgIG9mZnNldCA9IGZtZXRlcl9kZXZfcHRyLT5h
c3luY19jYVtwbGxfaWRfdmFsXS5vZmZzZXQgKw0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rl
dl9wdHItPnNodV9vZiAqIHNodV9sdl92YWw7DQo+ID4gKyAgICAgYXN5bmNfY2EgPSAocmVhZGwo
ZHJhbWNfZGV2X3B0ci0+ZGRycGh5X2Nobl9iYXNlX25hb1swXSArDQo+ID4gb2Zmc2V0KSAmDQo+
ID4gKyAgICAgICAgICAgICBmbWV0ZXJfZGV2X3B0ci0+YXN5bmNfY2FbcGxsX2lkX3ZhbF0ubWFz
aykgPj4NCj4gPiArICAgICAgICAgICAgIGZtZXRlcl9kZXZfcHRyLT5hc3luY19jYVtwbGxfaWRf
dmFsXS5zaGlmdDsNCj4gPiArDQo+ID4gKyAgICAgb2Zmc2V0ID0gZm1ldGVyX2Rldl9wdHItPmRx
X3Nlcl9tb2RlW3BsbF9pZF92YWxdLm9mZnNldCArDQo+ID4gKyAgICAgICAgICAgICBmbWV0ZXJf
ZGV2X3B0ci0+c2h1X29mICogc2h1X2x2X3ZhbDsNCj4gPiArICAgICBkcV9zZXJfbW9kZSA9IChy
ZWFkbChkcmFtY19kZXZfcHRyLT5kZHJwaHlfY2huX2Jhc2VfbmFvWzBdICsNCj4gPiBvZmZzZXQp
ICYNCj4gPiArICAgICAgICAgICAgIGZtZXRlcl9kZXZfcHRyLT5kcV9zZXJfbW9kZVtwbGxfaWRf
dmFsXS5tYXNrKSA+Pg0KPiA+ICsgICAgICAgICAgICAgZm1ldGVyX2Rldl9wdHItPmRxX3Nlcl9t
b2RlW3BsbF9pZF92YWxdLnNoaWZ0Ow0KPiA+ICsgICAgIGNrZGl2NF92YWwgPSAoZHFfc2VyX21v
ZGUgPT0gMSk7IC8vIDE6IERJVjQsIDI6IERJVjgsIDM6DQo+ID4gRElWMTYNCj4gPiArDQo+ID4g
KyAgICAgcG9zZGl2X3ZhbCAmPSB+KDB4NCk7DQo+ID4gKw0KPiA+ICsgICAgIHZjb19mcmVxID0g
KChmbWV0ZXJfZGV2X3B0ci0+Y3J5c3RhbF9mcmVxKSAqDQo+ID4gKyAgICAgICAgICAgICAoc2Rt
cGN3X3ZhbCA+PiA3KSkgPj4gcG9zZGl2X3ZhbCA+PiAxID4+IGNrZGl2NF92YWwNCj4gPiArICAg
ICAgICAgICAgIDw8IGZia3NlbDsNCj4gPiArDQo+ID4gKyAgICAgaWYgKChkcXNvcGVuID09IDEp
ICYmIChhc3luY19jYSA9PSAxKSkNCj4gPiArICAgICAgICAgICAgIHZjb19mcmVxID4+PSAxOw0K
PiA+ICsNCj4gPiArICAgICByZXR1cm4gdmNvX2ZyZXE7DQo+ID4gK30NCj4gPiArDQo+ID4gKy8q
DQo+ID4gKyAqIG10a19kcmFtY19nZXRfZGF0YV9yYXRlIC0gY2FsY3VsYXRlIERSQU0gZGF0YSBy
YXRlDQo+ID4gKyAqDQo+ID4gKyAqIFJldHVybnMgRFJBTSBkYXRhIHJhdGUgKE1CL3MpDQo+ID4g
KyAqLw0KPiA+ICt1bnNpZ25lZCBpbnQgbXRrX2RyYW1jX2dldF9kYXRhX3JhdGUodm9pZCkNCj4g
PiArew0KPiA+ICsgICAgIHN0cnVjdCBkcmFtY19kZXZfdCAqZHJhbWNfZGV2X3B0cjsNCj4gPiAr
ICAgICBzdHJ1Y3QgZm1ldGVyX2Rldl90ICpmbWV0ZXJfZGV2X3B0cjsNCj4gPiArDQo+ID4gKyAg
ICAgaWYgKCFkcmFtY19wZGV2KQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7DQo+ID4gKw0K
PiA+ICsgICAgIGRyYW1jX2Rldl9wdHIgPQ0KPiA+ICsgICAgICAgICAgICAgKHN0cnVjdCBkcmFt
Y19kZXZfdA0KPiA+ICopcGxhdGZvcm1fZ2V0X2RydmRhdGEoZHJhbWNfcGRldik7DQo+ID4gKw0K
PiA+ICsgICAgIGZtZXRlcl9kZXZfcHRyID0gKHN0cnVjdCBmbWV0ZXJfZGV2X3QgKilkcmFtY19k
ZXZfcHRyLQ0KPiA+ID5mbWV0ZXJfZGV2X3B0cjsNCj4gPiArICAgICBpZiAoIWZtZXRlcl9kZXZf
cHRyKQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7DQo+ID4gKw0KPiA+ICsgICAgIGlmIChm
bWV0ZXJfZGV2X3B0ci0+dmVyc2lvbiA9PSAxKQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZt
ZXRlcl92MShkcmFtY19kZXZfcHRyKTsNCj4gPiArICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+
ICtFWFBPUlRfU1lNQk9MKG10a19kcmFtY19nZXRfZGF0YV9yYXRlKTsNCj4gDQo+IE5BSywgbm90
IHVzZWQuDQo+IA0KPiA+ICsNCj4gPiArc3RhdGljIGludCBkcmFtY19yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikNCj4gPiArew0KPiA+ICsgICAgIGRyYW1jX3BkZXYgPSBOVUxM
Ow0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZHJhbWNfb2ZfaWRzW10gPSB7DQo+ID4gKyAgICAg
ey5jb21wYXRpYmxlID0gIm1lZGlhdGVrLGNvbW1vbi1kcmFtYyIsfSwNCj4gPiArICAgICB7fQ0K
PiA+ICt9Ow0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZHJhbWNf
ZHJ2ID0gew0KPiA+ICsgICAgIC5wcm9iZSA9IGRyYW1jX3Byb2JlLA0KPiA+ICsgICAgIC5yZW1v
dmUgPSBkcmFtY19yZW1vdmUsDQo+ID4gKyAgICAgLmRyaXZlciA9IHsNCj4gPiArICAgICAgICAg
ICAgIC5uYW1lID0gImRyYW1jX2RydiIsDQo+ID4gKyAgICAgICAgICAgICAub3duZXIgPSBUSElT
X01PRFVMRSwNCj4gDQo+IE5BSy4gWW91IHNlbnQgdXMgMTAgeWVhciBvbGQgY29kZSwgd2hpY2gg
bWVhbnMgeW91IHJlcGxpY2F0ZWQgYWxsIHRoZQ0KPiBidWdzLCBpc3N1ZXMgYW5kIG9sZC1jb2Rp
bmcgc3R5bGVzIGV4aXN0aW5nIDEwIHllYXJzIGFnby4NCj4gDQo+IFN0YXJ0ICpGUk9NIFNDUkFU
Q0gqIGZyb20gdGhlIG5ld2VzdCBkcml2ZXIsIHNvIHlvdSB3b24ndCBzZW5kIHVzDQo+IHNhbWUN
Cj4ganVuayB3ZSBhbHJlYWR5IGZpeGVkIGR1cmluZyBsYXN0IDEwIHllYXJzLg0KPiANCj4gDQo+
ID4gKyAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSBkcmFtY19vZl9pZHMsDQo+ID4gKyAg
ICAgfSwNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX19pbml0IGRyYW1jX2Rydl9p
bml0KHZvaWQpDQo+ID4gK3sNCj4gPiArICAgICBpbnQgcmV0Ow0KPiA+ICsNCj4gPiArICAgICBy
ZXQgPSBwbGF0Zm9ybV9kcml2ZXJfcmVnaXN0ZXIoJmRyYW1jX2Rydik7DQo+ID4gKyAgICAgaWYg
KHJldCkgew0KPiA+ICsgICAgICAgICAgICAgcHJfaW5mbygiJXM6IGluaXQgZmFpbCwgcmV0IDB4
JXhcbiIsIF9fZnVuY19fLCByZXQpOw0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4g
PiArICAgICB9DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiByZXQ7DQo+ID4gK30NCj4gPiArDQo+
ID4gK21vZHVsZV9pbml0KGRyYW1jX2Rydl9pbml0KTsNCj4gDQo+IE5vLCBqdXN0IG1vZHVsZV9w
bGF0Zm9ybV9kcml2ZXINCj4gDQo+ID4gKw0KPiA+ICtNT0RVTEVfQVVUSE9SKCJNZWRpYXRlayBD
b3Jwb3JhdGlvbiIpOw0KPiA+ICtNT0RVTEVfREVTQ1JJUFRJT04oIk1lZGlhVGVrIERSQU1DIERy
aXZlciIpOw0KPiA+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7DQo+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvc29jL21lZGlhdGVrL210ay1kcmFtYy5oDQo+ID4gYi9pbmNsdWRlL2xpbnV4
L3NvYy9tZWRpYXRlay9tdGstZHJhbWMuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi45NWU3ZGJmZTdkMGUNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4g
KysrIGIvaW5jbHVkZS9saW51eC9zb2MvbWVkaWF0ZWsvbXRrLWRyYW1jLmgNCj4gDQo+IE1vdmUg
ZXZlcnl0aGluZyBpbnRvIGRyaXZlci4NCj4gDQo+ID4gQEAgLTAsMCArMSw0MSBAQA0KPiA+ICsv
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTkgTWVkaWFUZWsgSW5jLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNp
Zm5kZWYgX19NVEtfRFJBTUNfSF9fDQo+ID4gKyNkZWZpbmUgX19NVEtfRFJBTUNfSF9fDQo+ID4g
Kw0KPiA+ICtzdHJ1Y3QgcmVnX2N0cmxfdCB7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IG9mZnNl
dDsNCj4gPiArICAgICB1bnNpZ25lZCBpbnQgbWFzazsNCj4gPiArICAgICB1bnNpZ25lZCBpbnQg
c2hpZnQ7DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgZm1ldGVyX2Rldl90IHsNCj4gPiAr
ICAgICB1bnNpZ25lZCBpbnQgdmVyc2lvbjsNCj4gPiArICAgICB1bnNpZ25lZCBpbnQgY3J5c3Rh
bF9mcmVxOw0KPiA+ICsgICAgIHVuc2lnbmVkIGludCBzaHVfb2Y7DQo+ID4gKyAgICAgc3RydWN0
IHJlZ19jdHJsX3Qgc2h1X2x2Ow0KPiA+ICsgICAgIHN0cnVjdCByZWdfY3RybF90IHBsbF9pZDsN
Cj4gPiArICAgICBzdHJ1Y3QgcmVnX2N0cmxfdCBzZG1wY3dbMl07DQo+ID4gKyAgICAgc3RydWN0
IHJlZ19jdHJsX3QgcG9zZGl2WzJdOw0KPiA+ICsgICAgIHN0cnVjdCByZWdfY3RybF90IGZia3Nl
bFsyXTsNCj4gPiArICAgICBzdHJ1Y3QgcmVnX2N0cmxfdCBkcXNvcGVuWzJdOw0KPiA+ICsgICAg
IHN0cnVjdCByZWdfY3RybF90IGFzeW5jX2NhWzJdOw0KPiA+ICsgICAgIHN0cnVjdCByZWdfY3Ry
bF90IGRxX3Nlcl9tb2RlWzJdOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArc3RydWN0IGRyYW1jX2Rl
dl90IHsNCj4gPiArICAgICB1bnNpZ25lZCBpbnQgc3VwcG9ydF9jaF9jbnQ7DQo+ID4gKyAgICAg
dm9pZCBfX2lvbWVtICoqZHJhbWNfY2huX2Jhc2VfYW87DQo+ID4gKyAgICAgdm9pZCBfX2lvbWVt
ICoqZHJhbWNfY2huX2Jhc2VfbmFvOw0KPiA+ICsgICAgIHZvaWQgX19pb21lbSAqKmRkcnBoeV9j
aG5fYmFzZV9hbzsNCj4gPiArICAgICB2b2lkIF9faW9tZW0gKipkZHJwaHlfY2huX2Jhc2VfbmFv
Ow0KPiA+ICsgICAgIHZvaWQgX19pb21lbSAqc2xlZXBfYmFzZTsNCj4gPiArICAgICB2b2lkICpm
bWV0ZXJfZGV2X3B0cjsNCj4gPiArfTsNCj4gPiArDQo+ID4gK3Vuc2lnbmVkIGludCBtdGtfZHJh
bWNfZ2V0X2RhdGFfcmF0ZSh2b2lkKTsNCj4gDQo+IA0KPiBEcm9wLCB1bnVzZWQuDQo+IA0KPiA+
ICsNCj4gPiArI2VuZGlmIC8qIF9fTVRLX0RSQU1DX0hfXyAqLw0KPiANCj4gDQo+IEJlc3QgcmVn
YXJkcywNCj4gS3J6eXN6dG9mDQoNClNvcnJ5IGZvciB0aGUgaW5jb252ZW5pZW5jZSBjYXVzZWQg
dG8geW91Lg0KQW5kIHRoYW5rcyBmb3IgeW91ciBzdWdnZXN0aW9uLCBJIGhhdmUgcmVmZXJyZWQg
dG8gdGhlIGFib3ZlDQpzdWdnZXN0aW9ucyBhbmQgcHVzaGVkIHRoZSB2MiBwYXRjaCBhZ2FpbjoN
Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTM5NjQyMDgNCg0KVGhhbmtzDQpD
cnlzdGFsDQo=

