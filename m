Return-Path: <devicetree+bounces-62548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028C38B18D4
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 04:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6FF5286908
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 02:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C7B11711;
	Thu, 25 Apr 2024 02:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="IN/u5g8c";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="QVCSq9Y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3677B4C89;
	Thu, 25 Apr 2024 02:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714011848; cv=fail; b=RbCXfwlgyahlvmNuXo2CE6PcNkd4QE9FFGIle/5lj4GAICo59J+OBDKaHxnlmJAM5T3xCVtD866K2bLf8w8OpyeTAahE2Sjd+CRVpfbY81+4AFGh8PmRsEPzIItoMBOcEKThuycD1ngkSCa83rBVEGa77VWHZifkdug3Plk+rvY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714011848; c=relaxed/simple;
	bh=ZQmPrsKaKD0wBeW5eeBukY5up8LezEHILG0az69YDcU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=oZi4PlPxkXz6xBNVGU2aRWRbhEl0dxkK+9nLvCXvnIeu2b3+HpoGg9pJguo2qMuPcbgGIad8bZk2dkaeP3Su54xTPnPVSjoeuXezA+GwCKztQJzaCG5wt9H9bdywY1VcRpbyuHEMcE4cj7r2FpPM0Am664EYxe/Zlr9qDUUqvPM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=IN/u5g8c; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=QVCSq9Y3; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: e1c95be202aa11ef935d6952f98a51a9-20240425
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ZQmPrsKaKD0wBeW5eeBukY5up8LezEHILG0az69YDcU=;
	b=IN/u5g8cigLcN8MVd3hXTCGS/0dM736/SDlGA/Jyqfq2Oi/0HxSbvWNgOIOPkyBh7H71AUPdQ/s83r/64Ey1HDkahYJ1XvmDt4c9sn53bACDq/O62udpNnSoipxK9b9+WmUkkmxPphiV+E9jybWY+6KVX8X6MmLJpO6qHXyvOGw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:1469225f-fc78-488e-8c0a-b550cd48d0dd,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:065cfc91-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: e1c95be202aa11ef935d6952f98a51a9-20240425
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1337712571; Thu, 25 Apr 2024 10:24:02 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 25 Apr 2024 10:24:00 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 25 Apr 2024 10:24:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzmaJODOXrxS4sfJ//a0pVSJ1yink0RE5td8iM2Qw1CSTN7+EhvlW8/P+Y9GP5pNXXRMbzwaZLhDc2f7yBYScZ2B6pxqiAD564O5tDb0yV7G6QbcJhYJJwtUcolLgm+pUnoxTJ1LSJH8XsqW2q9yqYs3rYH1zd0TC0pPgT/4RbgzskMOxQcanY8KaXLCdoP03wNtbux7Z0qQc+NGLfNZaRU88sWhltGfUAklsbrhUL/bAD2qYFmCwCiYACYpQQev7Vdlhc1sSf+1SMwTrmqxZZwiRsmFdBtfkvhC8nJ78hYitATczzrH0mm0f9R4IqqpWCKhnCQ6anmHUVPcxvUGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQmPrsKaKD0wBeW5eeBukY5up8LezEHILG0az69YDcU=;
 b=VIgQbFXrqp8/vLr91FRKo7vDhQJkK4qh0nCTXobLb4a8nqoh2YDS8xanH+fX8Y6YC5d/uWQTynzQ9KQ6rkV3BEIfwS0l88tvNn6ZHXiUYCrKAOOs4yf0C6qdFu3mrP2CFdeJaGtom9ZkcOY9ltNNoM3nkLBSgWvRr1ALLXakQY0kk2oT5hgasDEL02d1hIxUrP8Xctn3NJLVqFYxJPohVKGElPuOiU3l72CsPRlZb+SNWqkmmNXQZ2giqvqDIEpMpGte9jv+L95ZtvWrYavk/pjmOGlAS6cMHDPMPxnWc2CzV42SOqksa4Kgk32X6O7XZJgOlywaV3WkmtPnQJ7b3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZQmPrsKaKD0wBeW5eeBukY5up8LezEHILG0az69YDcU=;
 b=QVCSq9Y3Fl145H/j451NPhqLHm8IFY4nJ19hYNJeef8ZsEwtPX5GAKiczEA5ZKap1LMSTb+rgNavKSPOlsHit02oQCVzMkDV6gH8sGFucILc9TPf2+m8mD5azq7szUGuE4vSAZFlnmxp+kAGhoSy/vnusyM0rAAnXbX64L3kowo=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TY0PR03MB8299.apcprd03.prod.outlook.com (2603:1096:405:13::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 25 Apr
 2024 02:23:58 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%4]) with mapi id 15.20.7472.044; Thu, 25 Apr 2024
 02:23:58 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"wenst@chromium.org" <wenst@chromium.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	=?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"robh@kernel.org" <robh@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "airlied@gmail.com" <airlied@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"kernel@collabora.com" <kernel@collabora.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, =?utf-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?=
	<Yu-chang.Lee@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
Thread-Topic: [PATCH v2 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
Thread-Index: AQHainXPkoeeapgKhkmHjjX1T7SS9LF4WlSA
Date: Thu, 25 Apr 2024 02:23:58 +0000
Message-ID: <aa7e3bcf70383e563a65919f924ec2e5e4cd778c.camel@mediatek.com>
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
	 <20240409120211.321153-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240409120211.321153-3-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TY0PR03MB8299:EE_
x-ms-office365-filtering-correlation-id: 27084fe4-9d8a-4eb8-188f-08dc64cec333
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?YlVZcllmQlNyR0ZpOUszS1NROE5CS3JzcDNyaWtKRFMwYno2endmL1hLRy95?=
 =?utf-8?B?bWxydVp1MUM4eUVGczVoZXZodVpjQ0owempPbWhKcDRkWlcrNzV2TVMyRCt5?=
 =?utf-8?B?ZWVPNWdVSE9PbW9ieml2TjNNcmtjSnZJaCtFMVZqcFZhSDlUTDBJNTV0ei9V?=
 =?utf-8?B?dWdHb0p0UVJoQytkcmhPbW5JZlViZmJKSGpLYk44dHhoN2VYMEs2WlAwOVpu?=
 =?utf-8?B?MGpRYlF5VlRBUnFpaFpGZEtja2o1Ymh3YjFDSlE3a1lHYzRYN3NMY1FqSkh5?=
 =?utf-8?B?MGFEaGVZKy9ab2VMejZkdm5vblBOak1weUZ6SEZWTmNiY2Ftam9GSlgxeW1Y?=
 =?utf-8?B?cHZ3OG9PeTdnVXp1M2VUbUZDaFZrR1M1M2YwcExOUkw2OGJxeTdOOUtjMEJH?=
 =?utf-8?B?Ni85REVRa0h0VnJsejBRRlJzaktNd29GUEVhK3ZxcUxjcUh1ZFljUmkvWWhU?=
 =?utf-8?B?Y3ZaeDBXeFk1ME5WQU1SOUx0QmljcXlhdGNLZ2puRlNpM2I0blNVQUhBQWpx?=
 =?utf-8?B?YmtveHJZNzEwVDd4V1hySnlmZktKSndJYUlLdGN6SExnSWFXQjJ2MjYzYVky?=
 =?utf-8?B?cUkycC9sLzJOTnd6ZDAwSmxuMWV0TEV3ODZkYW1XbTBBTE93ODFzUDlNaUhi?=
 =?utf-8?B?d0U2eXYrMjV0WXNGcFRBS2RsZlpGZ05EOHVJMzZkRVJFTjU0WTJnRUdoUDRL?=
 =?utf-8?B?OVd5akxoeVJ2ckVVam45UVp4T05Oa1ZFdGpNMFplSnp4RmNaK2FKN0V3enRp?=
 =?utf-8?B?R3JDQW54MENrMVhlcnliTDJxWVAzNUlLZENPak9nVFVRQzhoM3JDVmxUZGJQ?=
 =?utf-8?B?cXRmdWN2ZGk1Z3VvR0lPdktVY1d3VlNicTVwTmVBT0YxVkx6T1IvRmE5QXFX?=
 =?utf-8?B?NXVuT1U0YjkxK0J1Tm5iOWNDQlJURVN1NFFzRVl2Z3dJZkphamFKQlk5V1hj?=
 =?utf-8?B?blI3U09WUnZsdFhwZWdmN2NyMi8wMHF5NG9KZTdGN2VPek5xbGlWOGpMTXl3?=
 =?utf-8?B?RURJUDZia0lxU1JDalhSRzFId1Vhc1AwQmFrZ2JiSngvMVFtVS9abFB4M0ds?=
 =?utf-8?B?Mkk0SXlRVTNuZERJVlk2WDlRNDJQTEdPY29RUHJFK1NiWVJzZU52Vndtc1dI?=
 =?utf-8?B?YmRtaE5zdmw2VXZmWWw1SUpmUi9qM3hCSjllN3VYdlM1SjBXWGJUR0RHbTBU?=
 =?utf-8?B?SERDNUVQVU5pZFh0cWdoa3o3ZEVRSVR0ZFh2SW9vVG41YmVSQlN6YlJQTjhs?=
 =?utf-8?B?bm5yS3lYMENxMWlySThHVGx4U3oyYjUxVTNiQkZGdk9jZW55TjZKWlNHQUxH?=
 =?utf-8?B?ZTltekpjVEVJUjc5QVp5Q2MwWkdEYWxQdTI3SXB6djRlMkZybk5LVkpGRFlC?=
 =?utf-8?B?dWxpMldaZ3UrVlo0VHA0SFMxb1IrYzZJaUtMUlU5ZXNCK0FtaW80UVFQVEFR?=
 =?utf-8?B?NWdEMGhkeHZMSC9tUnNIbTBaRmR5Q0hVZ0JzVDgrNmhjdjIvM3JZeW43cXNh?=
 =?utf-8?B?c2VZc3hiUFpLazVCbXR4S2N2UHFLaE9NRlAyM2J6Y2VUMnVod1IweDhmalBq?=
 =?utf-8?B?ZXBLVGlvc0pTMWdKMytSRHJ2T2RWMXJJa0h6TGNac0w1cU9JY3FIU3dTbFdI?=
 =?utf-8?B?aGIrNzJTTFlzVUp1S3Y0Mm5vbmlTb3BrSEhUS01sN2FBT3ZtYjJ4RzFrVDFY?=
 =?utf-8?B?QWFabWhNWjhFR3JyajBYN0NMVjZ2SElaaGxWeWJ2SFgxNVNwUWRNeS9Bb1Bn?=
 =?utf-8?B?UjVMRWlqQmlaSHdCUUJ1R25lODJXdWpyUGZ2TE5tdDlFajB5ei9xT1pyS2RZ?=
 =?utf-8?B?YmJPeUlzZW5BdWFaMkVWUT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFkrZHV3LzZMT21Na1hvQWU5VEpJdVJqVitVVlZ6ZTk2RDVLaElxVStXNjBh?=
 =?utf-8?B?MzJlRThkYksyQ0U5NFdWUDcydHYrWEZtaUxOclJnL3ZKVXlQL3R3MUpleFdm?=
 =?utf-8?B?am0xdy9GNmtscExJN2VIdXJrRUpWcnBFUGN4Y2MySCtMUWRMNmNpUlJRckNR?=
 =?utf-8?B?ZmgzOEJtYTBMbjBNMzlNL2llYWhJb2QzakNWc0UwbCtXMUFOMmVqMTNXQ2FY?=
 =?utf-8?B?Vjk0eWVUay9YSkhmM2FGOFlreGNPMC9GZjhHbWdSYWI1R2VPa2FVSXprNDZw?=
 =?utf-8?B?WUhNanNqQllFMFZtbE90aGRMWVZlalZpRUZ1N0RFZi9EWjFSRFkvQTZDaHZQ?=
 =?utf-8?B?Q3ZxbnVWM3QxeUdnRmJ5ajF5Qkc4ZllmSUliei9WYXRJM1ZzNTBLTUpDK0Fz?=
 =?utf-8?B?bHdEOFVhemlVWkhPWWt0Y3JBMmFzY2ZVdHdFTGdxTnRYQUhQZEZzSGlkYjVZ?=
 =?utf-8?B?WWNIOGJvUlpPYVF0WXRKVVA2ZVhTbWI2ZmFUNzl3OEoxaWxXSTFkSWZNRE54?=
 =?utf-8?B?VlRKSjZrMm9xMXJPaWdCTDhxZEJMQ1dDTFdpanVKVzBMS0hrZDV0dFJjMytp?=
 =?utf-8?B?Rjh6eXlNMDd6ZXR4WndpUjBYRnNzNGh2bUwzemgzZDlRcGt2cjBySjQzSDRk?=
 =?utf-8?B?VVZSVVR3QTRnanVHVGZXZXNuWUtlQ0xRR3hneW5uUXlLWktDL24ySmVoWE4v?=
 =?utf-8?B?ZWVlVS9KSjJ1cUc5RjZSN2VyZm1aUmxORGJPL0MwQjQzbmF5ZEk3anpVZjdY?=
 =?utf-8?B?a2lsNWhkenQ3Rjd4U1c1aCsra1FaUGFKUS9PR3J2UmRyZ3NvY2JGd1BMMHpT?=
 =?utf-8?B?bFovRmJXcGJYMy9CQ0tXbHJaK2k4djZJSmczUWdzbEZvL09vNTBsMEEzWVpl?=
 =?utf-8?B?ZzJNY0hOWFJPejRwWXFkOFR0anpPYjZSbWdrL3BVNkhNc3N1MGpoUklweFRn?=
 =?utf-8?B?dDJLOU9rSUdoZ1g0ekQzS2dndTFtVDNUbXVlNFRURWs4d3pMRFVxcnBXK2JF?=
 =?utf-8?B?UTNNU2Jnc0FuK3FUYm02dUlvTXVFZTNzTnRZSU5od01CMk5RdHc4ekFrL214?=
 =?utf-8?B?MDRsWk02QzV6OVhOUnRaRWgyY3cxYXZXOTFDSGk3UmRGRkRmMEprbGUxYjFt?=
 =?utf-8?B?NEc5T21tSkRvenBHTTlvc25PV0d0MEFpTGd2clRNS2F1QTBWVVNuQ3VmMG93?=
 =?utf-8?B?b1VXNGtmcjVvUCtFUWhCSW5rNVk2Yy9iM2dpUHFzM094QnRoWVIxckY2K2RT?=
 =?utf-8?B?QW1hYTVOcUlNY3o4NEM3QW82VWpuMW9VNmhBamJxUmN2N0xwaGVhaWs2WnFJ?=
 =?utf-8?B?eTc0b201aEYyQkV5TXBrRzJQN0QyYkYwMnpBRzIrcXNqZy83NFNaZlFwS0JN?=
 =?utf-8?B?NkViRE1Fa2xhNjlGQk40MXZmSEI1WmhVbEFoODdUSTFMdXhwYlNhYVZicklI?=
 =?utf-8?B?NWZldGVTZ2xtSFQ3dEQwZjVBQlVjK0VtVHVHdU5NaVZDYmVZNEhpcTI3QjFR?=
 =?utf-8?B?QWw2V2ZvK09FWTVjK1p5QThheGxIM09FYUNSK01pZlF1YllVRzJ5cXlSVnJH?=
 =?utf-8?B?U1ZmZmgyeW1SMUQ2UWNSRVV5d3NLbENQVi9vWEF1TUFSWWN2dHlrVkZIK3o0?=
 =?utf-8?B?eW9pd05WOElUcGFnejhpNVNNY2VtTmtJYmFRQnpEUVZHUEZuS0UwdHFzd3VQ?=
 =?utf-8?B?alMrWnY5dEtwRVpzNkRqazd0NG5jNkFPY3BaNVpJRGpoR3dJNUNhUkJwVFVO?=
 =?utf-8?B?YWV4MlE1RUY5bzk4TTltR282TzQ2U3ZrVCtRRlI2N2c3TTROUGZFMXFhZkM4?=
 =?utf-8?B?QmZsOG1GbGJHTWE0aThVUEJFTlFueXJXRzNCaktGYk84RmJPeFBYNmJMOWR3?=
 =?utf-8?B?NFdMa0lMWHFFcnVuajIyMERPL3lSVlgzTC9DOHR1SitjYzIwZVhUdVNtUUxp?=
 =?utf-8?B?NU1pdG4vbzFIRWJxM1NUTzdvcTQzYU1iYlhVaGdIMEkwMFpwa3dJeGNrR2Rl?=
 =?utf-8?B?L3JXNXdzaGVsVGNpd1RJNXJIZ1hLMTB3RW9oSlJiY2NtUjJkRC9wYnpjcFlX?=
 =?utf-8?B?Q0tSRDNxZWFzNjBlUHBIeVZwTEUzcTRSbVhXQWpyeGFJL0dOY05PWU5zSlIy?=
 =?utf-8?Q?cbWTrowweVuwpx6qTJeKn3wja?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC288E18612A2D4590738C9BBEF8AE46@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27084fe4-9d8a-4eb8-188f-08dc64cec333
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 02:23:58.0206
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: huLU3ZqYNdoxA3S5+zrr0uIh8nV/S6iA2jqDYcDrE61/GiX0jthIwnEV2LNq0oFp3iStx+qJeCnOKSnziQIT4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB8299
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--10.266100-8.000000
X-TMASE-MatchedRID: VPleTT1nwdQNtKv7cnNXnSa1MaKuob8PC/ExpXrHizwVuD482edP4yzt
	lR7ZLgp2Pzin/03CLtOQgj4GwqRgEHzGpcYhTDdKbBu6+EIezdxReWnUUdhI9dvpj5+dNlQvjE7
	3FyAYPU04gC+5WfywNlbPZ6Ii5YaaroQgRZf2+t7t9z69L2QO5xC26qzoFs8nGNAPebYwJ/vdXn
	2HiBytCOLzNWBegCW2PZex/kxUIHW3sNbcHjySQd0H8LFZNFG7bkV4e2xSge4qVpCQkCwiy6CuL
	fDgp8lsrGhsD13orbUOM28xR4kINTZFEgw6u+Np
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.266100-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	CD5F4C67CFB4D249ED4790ACE477290A125DDC7A0494BFAAC3481E25E622969C2000:8

SGksIEFuZ2VsbzoNCg0KT24gVHVlLCAyMDI0LTA0LTA5IGF0IDE0OjAyICswMjAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gRG9jdW1lbnQgT0YgZ3JhcGggb24gTU1TWVMv
VkRPU1lTOiB0aGlzIHN1cHBvcnRzIHVwIHRvIHRocmVlIEREUA0KPiBwYXRocw0KPiBwZXIgSFcg
aW5zdGFuY2UgKHNvIHBvdGVudGlhbGx5IHVwIHRvIHNpeCBkaXNwbGF5cyBmb3IgbXVsdGktdmRv
DQo+IFNvQ3MpLg0KPiANCj4gVGhlIE1NU1lTIG9yIFZET1NZUyBpcyBhbHdheXMgdGhlIGZpcnN0
IGNvbXBvbmVudCBpbiB0aGUgRERQDQo+IHBpcGVsaW5lLA0KPiBzbyBpdCBvbmx5IHN1cHBvcnRz
IGFuIG91dHB1dCBwb3J0IHdpdGggbXVsdGlwbGUgZW5kcG9pbnRzIC0gd2hlcmUNCj4gZWFjaA0K
PiBlbmRwb2ludCBkZWZpbmVzIHRoZSBzdGFydGluZyBwb2ludCBmb3Igb25lIG9mIHRoZSAoY3Vy
cmVudGx5IHRocmVlKQ0KPiBwb3NzaWJsZSBoYXJkd2FyZSBwYXRocy4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDwNCj4gYW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIC4uLi9iaW5kaW5ncy9hcm0vbWVkaWF0
ZWsvbWVkaWF0ZWssbW1zeXMueWFtbCB8IDIzDQo+ICsrKysrKysrKysrKysrKysrKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0DQo+IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRpYXRlayxtbXN5
cy55YW1sDQo+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRl
ay9tZWRpYXRlayxtbXN5cy55YW1sDQo+IGluZGV4IGIzYzY4ODhjMTQ1Ny4uNGU5YWNkOTY2YWE1
IDEwMDY0NA0KPiAtLS0NCj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L21lZGlhdGVrL21lZGlhdGVrLG1tc3lzLnlhbWwNCj4gKysrDQo+IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRpYXRlayxtbXN5cy55YW1sDQo+IEBA
IC05Myw2ICs5MywyOSBAQCBwcm9wZXJ0aWVzOg0KPiAgICAnI3Jlc2V0LWNlbGxzJzoNCj4gICAg
ICBjb25zdDogMQ0KPiAgDQo+ICsgIHBvcnQ6DQo+ICsgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgu
eWFtbCMvcHJvcGVydGllcy9wb3J0DQo+ICsgICAgZGVzY3JpcHRpb246DQo+ICsgICAgICBPdXRw
dXQgcG9ydCBub2RlLiBUaGlzIHBvcnQgY29ubmVjdHMgdGhlIE1NU1lTL1ZET1NZUyBvdXRwdXQN
Cj4gdG8NCj4gKyAgICAgIHRoZSBmaXJzdCBjb21wb25lbnQgb2Ygb25lIGRpc3BsYXkgcGlwZWxp
bmUsIGZvciBleGFtcGxlIG9uZQ0KPiBvZg0KPiArICAgICAgdGhlIGF2YWlsYWJsZSBPVkwgb3Ig
UkRNQSBibG9ja3MuDQo+ICsgICAgICBTb21lIE1lZGlhVGVrIFNvQ3Mgc3VwcG9ydCB1cCB0byB0
aHJlZSBkaXNwbGF5IG91dHB1dHMgcGVyDQo+IE1NU1lTLg0KPiArICAgIHByb3BlcnRpZXM6DQo+
ICsgICAgICBlbmRwb2ludEAwOg0KPiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1s
Iy9wcm9wZXJ0aWVzL2VuZHBvaW50DQo+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBPdXRwdXQgdG8g
dGhlIHByaW1hcnkgZGlzcGxheSBwaXBlbGluZQ0KPiArDQo+ICsgICAgICBlbmRwb2ludEAxOg0K
PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL2VuZHBvaW50
DQo+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBPdXRwdXQgdG8gdGhlIHNlY29uZGFyeSBkaXNwbGF5
IHBpcGVsaW5lDQo+ICsNCj4gKyAgICAgIGVuZHBvaW50QDI6DQo+ICsgICAgICAgICRyZWY6IC9z
Y2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvZW5kcG9pbnQNCj4gKyAgICAgICAgZGVzY3Jp
cHRpb246IE91dHB1dCB0byB0aGUgdGVydGlhcnkgZGlzcGxheSBwaXBlbGluZQ0KPiArDQo+ICsg
ICAgcmVxdWlyZWQ6DQo+ICsgICAgICAtIGVuZHBvaW50QDANCj4gKw0KDQptbXN5cy92ZG9zeXMg
ZG9lcyBub3Qgb3V0cHV0IGRhdGEgdG8gdGhlIGZpcnN0IGNvbXBvbmVudCBvZiBkaXNwbGF5DQpw
aXBlbGluZSwgc28gdGhpcyBjb25uZWN0aW9uIGxvb2tzICd2aXJ0dWFsJy4gU2hhbGwgd2UgYWRk
IHNvbWV0aGluZw0KdmlydHVhbCBpbiBkZXZpY2UgdHJlZT8gWW91IGFkZCB0aGlzIGluIG9yZGVy
IHRvIGRlY2lkZSB3aGljaCBwaXBlbGluZQ0KaXMgMXN0LCAybmQsIDNyZCwgYnV0IGZvciBkZXZp
Y2UgaXQgZG9uJ3QgY2FyZSB3aGljaCBvbmUgaXMgZmlyc3QuIEluDQpjb21wdXRlciwgc29mdHdh
cmUgY291bGQgY2hhbmdlIHdoaWNoIGRpc3BsYXkgaXMgdGhlIHByaW1hcnkgZGlzcGxheS4NCkkn
bSBub3Qgc3VyZSBpdCdzIGdvb2QgdG8gZGVjaWRlIGRpc3BsYXkgb3JkZXIgaW4gZGV2aWNlIHRy
ZWU/DQoNClJlZ2FyZHMsDQpDSw0KDQoNCj4gIHJlcXVpcmVkOg0KPiAgICAtIGNvbXBhdGlibGUN
Cj4gICAgLSByZWcNCg==

