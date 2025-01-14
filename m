Return-Path: <devicetree+bounces-138338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B54AA10090
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 06:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 226F43A5AB3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 05:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B9C1C5D5C;
	Tue, 14 Jan 2025 05:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="rPNhbSl3";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="g8tNy17v"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09A1D555;
	Tue, 14 Jan 2025 05:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736833803; cv=fail; b=pY2VQquImQwNjexN5yOgVrmD7b6bSmhnp0dnQwTFlquI0VZD8UkrZ2KA135Gs2OBxNrqez3N/wuJzWfShtBklJv9jqva5kc6Y4bNOM1HsFrO8gdMJVcliA36gtxK6IfmGkztiS5QJG+v8M8gYrMMFlXFSsxdap5teu4ckZpkoJ4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736833803; c=relaxed/simple;
	bh=h0v42geHnut0hWPtMzcth8M2d15MLLuthn+I65JHUiU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=Sp57zYFFUBpXxQuh7qFOQyAfOZjc67NI5uI/4WKTmKb7dhurf6B/FbWWvyighJs2dzYII7a5vyMied6SQoXNgAmjL9C+ZBjf02v0UHRD3SUwj/wh4Wrv/2bObkUjOnydH0XSJ5tIwWNsz6aoau/PdVWSUFvQo3v2V5P2ujfTaT4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=rPNhbSl3; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=g8tNy17v; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 6164c8a4d23b11ef99858b75a2457dd9-20250114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=h0v42geHnut0hWPtMzcth8M2d15MLLuthn+I65JHUiU=;
	b=rPNhbSl3gcdKAoxTTCp+98LKCGzH75RDegXq+erm8Ux4u/fps8YuB28NKqR8aOZYdQh7vgMN5QvHGb59D1au9gCVDONy/vBiJ3mdqg0IJwXlh7mfgiRnTxiS3lcpMTDSkBE0G1mU3ZHQOG4n39d71FDjf+lWtG6G583UPQjMpOg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:60bd9e78-858b-47df-a5b2-403e49e5d3bc,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:6ae17613-8831-4185-8e40-f83b1917e828,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 6164c8a4d23b11ef99858b75a2457dd9-20250114
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1115680253; Tue, 14 Jan 2025 13:49:55 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Tue, 14 Jan 2025 13:49:53 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Tue, 14 Jan 2025 13:49:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Haj+aDoADEZytYsaKRMJ7WN+g6CkLufWgEh+2iSMzxzV/whzpJyHtfD4e4YFWWvW3blmUsmEBSBCup9d7sDwMB9J6OOC0RP4+w3e+agrQKV0CvAc1goGNhdyuVZJJXgkjqWNsQt2UB/MKiHj0XUPxglwJuOUlg83xnsT15XIf6FDgKcDJUveoC4K1OfdVGfiE6dUsiuMTwHqswGVV4rwQZY8c5edg21PQGIiVEalb8CmB9nVjjJeV2OVkhgxbp1xJoJmaDJ8oqKY0Kqg0JMD42LjbvucYAh7HxCFiC0rY00EKvEAG5W4O8lvcaeNKCEOPHUlTd+A7p+aJob98wL9XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0v42geHnut0hWPtMzcth8M2d15MLLuthn+I65JHUiU=;
 b=ShOeRYQnm/L3wDugQgXiTjp43gpcnQ1dJwmjA8ZWI3dSPSfMCCLbm1JqdYfe0BIKcU2SWMV/rCi0fQhjKwEPj+Wx0giFGRdMyuEhQteNQcGzGnw/My9MnC5FoopTm2DLTEzShwBFryHWLzd8UzUam4J7T0xymCcjSpmLIg2wPW9YyVWkUZsDMm/vzFJFNF9Uif1BkeanikHzgxF7Jcp8QCxWdld62c5eWnoZnhHkaRrSDeiACmV7Zv0DBAhtegRNglEr1Jc4y5HoeMU5IRGqrsBo4UOpplLj9JtdTaErbR+QpGi+Z2U15r3NwtlZGb1e5lY2BXSkx0PVpIJRNV80tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0v42geHnut0hWPtMzcth8M2d15MLLuthn+I65JHUiU=;
 b=g8tNy17vdbUlI51qKtQ0xBTdCxg2mL57WldKMRe48uRJhXPsuNcnaPTi6XMbxrfq/z+7gbFDKp6H/gzUxy95Kv8ka8E9XSxyBqPnG54JNcVOTNDXJXxFkjpwqjGo9BoUWMUeLwcuEWkjIzKYn7hMIZZAglX6amvjI407YzeONdk=
Received: from SG2PR03MB6636.apcprd03.prod.outlook.com (2603:1096:4:1b8::6) by
 JH0PR03MB7493.apcprd03.prod.outlook.com (2603:1096:990:a::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Tue, 14 Jan 2025 05:49:50 +0000
Received: from SG2PR03MB6636.apcprd03.prod.outlook.com
 ([fe80::98e8:d61:f404:4052]) by SG2PR03MB6636.apcprd03.prod.outlook.com
 ([fe80::98e8:d61:f404:4052%3]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 05:49:50 +0000
From: =?utf-8?B?UGF1bC1wbCBDaGVuICjpmbPmn4/pnJYp?= <Paul-pl.Chen@mediatek.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
CC: "conor+dt@kernel.org" <conor+dt@kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?U3VubnkgU2hlbiAo5rKI5aeN5aeNKQ==?= <Sunny.Shen@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, "fshao@chromium.org"
	<fshao@chromium.org>, =?utf-8?B?U2lyaXVzIFdhbmcgKOeOi+eak+aYsSk=?=
	<Sirius.Wang@mediatek.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
	=?utf-8?B?WGlhbmRvbmcgV2FuZyAo546L5YWI5YasKQ==?=
	<Xiandong.Wang@mediatek.com>, "treapking@chromium.org"
	<treapking@chromium.org>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?=
	<Jason-JH.Lin@mediatek.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>
Subject: RE: [PATCH 03/12] dt-bindings: display: mediatek: add EXDMA yaml for
 MT8196
Thread-Topic: [PATCH 03/12] dt-bindings: display: mediatek: add EXDMA yaml for
 MT8196
Thread-Index: AQHbY1yrDUiFOy83+0KImka1ZzUdabMQB4wAgAXBksA=
Date: Tue, 14 Jan 2025 05:49:50 +0000
Message-ID: <SG2PR03MB66367B4A9DBCC971F55DB326BC182@SG2PR03MB6636.apcprd03.prod.outlook.com>
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
 <20250110123835.2719824-5-paul-pl.chen@mediatek.com>
 <173651725269.2671643.2891127782637834272.robh@kernel.org>
In-Reply-To: <173651725269.2671643.2891127782637834272.robh@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcbXRrMjczNjJcYXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRiYTI5ZTM1Ylxtc2dzXG1zZy01Y2Q3YzYwYi1kMjNiLTExZWYtYjc2My1lYzYzZDc5NzIzMDhcYW1lLXRlc3RcNWNkN2M2MGQtZDIzYi0xMWVmLWI3NjMtZWM2M2Q3OTcyMzA4Ym9keS50eHQiIHN6PSI3MjQ4IiB0PSIxMzM4MTMwNzM4ODYzMzAwMzciIGg9IlV4MzkyRVBMbFBEL3BIMTFITU1tUlRYSVVZRT0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR03MB6636:EE_|JH0PR03MB7493:EE_
x-ms-office365-filtering-correlation-id: b9c1d278-f044-4812-1dc6-08dd345f42de
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WjR3eHdmcnNEMGxrY1lXVmhoTllSQVNidXdienI4dlRBcFdxSVhGR0k5SzVF?=
 =?utf-8?B?dnR5aUxiU0M4UU1Gdkc0c3dtV1FPUVdTbkZHTnZtQ3loaXdrUDBLeWxGWmtW?=
 =?utf-8?B?NTBUbmU5UnRhd0ViQmdMU1FMQzZFeGNoVlgzd1VSbDlBbFBQVWQxMVlqWFJ0?=
 =?utf-8?B?Z3pObW1zYVlnc2FyQWQrSDVGL0E2UXgxVm5jQUhQL1RMWGRWSytNSzJ6SHFH?=
 =?utf-8?B?Wkp0WVVNNzlVSFlXcys1cmpGdmw1YmxJTjdXcmpJUlNiV1Vmdkx5Y0ZFTXpr?=
 =?utf-8?B?b2FISzM0L3N5b2lZTUdxZThacmQ0VlY4Qi9VeHo1Y0czWS9wSlhUYjdENUpi?=
 =?utf-8?B?aWc3eDR6QzJ4VXF0K2dieHBXbDIvWkVuUnpzSVBBNmZDekZyS1p5ek1uMEUw?=
 =?utf-8?B?djVSc005cWRuSHFqYUJVRklGMlBEMDhrRDZVWEpjUjZOZzMxOU1lRG55TUll?=
 =?utf-8?B?cHM2WSt4bzFmeFQ3L1Bma0FEbXY1L3lNRzh1MUpUK3BvU1grL0FYUk5rMjB0?=
 =?utf-8?B?clZqMjgwNnltM2dKUmRISi81SURiMjd0UGFzbWlITmJtUnFBWHRqcjFsOGlH?=
 =?utf-8?B?aE1UYlhOeDYxNElHRmZFYXVtQkQ4OG9tYTFLRG93TmJWay9zazNyc2VmdEJz?=
 =?utf-8?B?T2hJdVRDNVZ4Mzkvekg2cHBEZmJyYU1UcDhUaDRKbzR0dWdyV1JuZXZzNG8r?=
 =?utf-8?B?NmZ4NUE1UVNNRjU5L2gwMHVya1BUTDR4TS9vVmFkZVlXUmRmK3VLU0lFOG9H?=
 =?utf-8?B?YWpCaXhheXZFKzRKQmxBb2RzbUU2cWFFZG1MQ1NhVXQ5WTl0UnJzRDc0bUYr?=
 =?utf-8?B?aDQ0VEdCMVJUUEIvWUthYmVMcDRYNkJxcnE4Q2ZYY0NkaE05N3R4MjBROFgr?=
 =?utf-8?B?b0svTGcvM3NzRjdDc0l4U3J5UGQ4ZTNxYWhmV3JEQWtWTkRtWEsxY2hoZURq?=
 =?utf-8?B?bno5MklHNlg1cUd3WU13NEsxM2ZNQlJxb2xxS2xiTFNucTJSaWw0MTYvYUY1?=
 =?utf-8?B?SVdFRmJqdkpUYmgyRnRhRXJoUFBwYzkzWHNyUjVEc3Jab1ZZNklPNU5pWmdO?=
 =?utf-8?B?TVR5Vnp4UlB0WjhpNjdoVTBBSTI3UTRVeVZobVhHZFdlckZMaUpvbVpBUCts?=
 =?utf-8?B?cC9XZ250NVE0U1Q1ejVianVLMGRDOFJmcC9iM3JIQnBtZVBldDNkYlB6Z3l1?=
 =?utf-8?B?ZEgyR1BnSS9RY2ZFN1FxV0tzYVpsWmxYdFdCYmlEVDdLTHUxWlR4aS9HNzRy?=
 =?utf-8?B?R2pla0Zjam1SWUJTNHF0ODVCVjMrM2FVcjZIMDJpT0Yya1A4UHE4MEJOcCtC?=
 =?utf-8?B?Tm0zTTlMQ0tnSzFlVTAzU2pNeVVGaE8rUzllbVRIcEx5MWhYamZGUTEweWVQ?=
 =?utf-8?B?eFl0dVJYMldhZmMyWmE2TzJWVlA3WnBhc01tMkZTWTRoZDcxbjdyQWdIbnNR?=
 =?utf-8?B?a1FXUEQwNzlnSjJYLzBpQ0xBUm4zT04xdlRvclRhOXJBQ05YWUxrekxGcVYx?=
 =?utf-8?B?by9FckFXUGpHRWlub2VldnVjbW9sZzB3eEFzbTVwK2FhanlIempNN0NKb0xj?=
 =?utf-8?B?eDM4Qm8wcE14VEF2T3lWMHZMc0dHS3dteDZUNjRMZWNXQTZKb0ZTOHJYaE14?=
 =?utf-8?B?TVRLTnhXSEVQanVLSDZuaHdiQlZHclRPNFFLWTVERDFmSWVBb0doa0UvcjhX?=
 =?utf-8?B?eWtiL1pnVVNJOWtuWkJ4MHFsRkszMXVZK0xaejNqaExWQ0RFdk9STklUclYz?=
 =?utf-8?B?TnBXQit2WXRoUXJnOFVyZEp1UTdIakJnL2l5TVlFL1l1eHlXOTJQaHgvKzZ3?=
 =?utf-8?B?Y0Zic2NrRFIrTklaN0llQklZS1g1NVhIOGJEcVg3U1V5R1EyTU5mU2JvWjlt?=
 =?utf-8?B?V0t6UzVmbmlIdm90b0puRDREUlBiTjFIMmNMZXhNNzRFL1lJdVlGNFl5STEw?=
 =?utf-8?Q?HXRF2RRhMsQnOyvwRzQGQZPa8cWOQEco?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR03MB6636.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHcxYWw1SlN4MlJOV3JVSmJ3VUlnd2M3Zy9rZDRlTk04QUZFRnQ4Y21PTWF3?=
 =?utf-8?B?SVVYWEgrRFRvelBvbEszaGFlU3lVb2RIY3IvNlNHK0VDQ0d2OEdBN2VwT2lM?=
 =?utf-8?B?YXMrQmFJOXdzM1FCellWQ0ZqMTR1NjF5Wlg2TERWUkRmY1V2aW5LN1h3RW9j?=
 =?utf-8?B?WC9DNEx2M0IwbmNyaXNGRHdrbW00ekRkT2kvK1VHN0RWdENOclhXcXFsYXBx?=
 =?utf-8?B?ZjR3eC9MN3lQUDQ0aS9uS1pTbEx6YTZiWllVU2xwRXptVjFGajdsQXVZcU1N?=
 =?utf-8?B?RkJYamNyOHNxa0RjN0QwOHJDSEtNKzRGRzNYQmhjNi9sclI3T3NrNG1uMjNn?=
 =?utf-8?B?YW9iNXh0WnpLV2F6TXZBLzRFSGpBcDNoZ0t3bkJ1b0krVS9IU2dsL0dUWG0y?=
 =?utf-8?B?K0pIOS9PYVFPMUlXUzBSNTdrOTl4eFJrKzN5V0VkYTg3WkZ6ZzNYb0xVbWky?=
 =?utf-8?B?cVZIcGtkWEJ3UWNQUVV1TjZENDZjaGZRNFFpWnRaMFgxKzVIV1d2WGZBNUlI?=
 =?utf-8?B?M1pvSWIvVWV5V0V1ZEpXUXRpMmdGczk0c3ZXQVNNNFBPeUphRHNQd1hHZS9Q?=
 =?utf-8?B?OFY4MnZSQUxoMytzUnZwVWEvNUFEaWlXZEJtMDBxSEIyemlWb3llN2gwN0F2?=
 =?utf-8?B?RW9nOGlndlhtbk5RVUJKdTgvN1FhNDhRK0xCcnFUZWdsNmJaWjNGc2JuRGpN?=
 =?utf-8?B?MXNBckVYazhUY2d5bUdON1R6SHpZdFgrZlAyS2s0eGtPbHhienBuVlJNY1dh?=
 =?utf-8?B?UkFjcEYwd1hXS3NUZFVIUmxSb0pUZlNVTjErQUwvcTBLR2x3S2lEK3JtOXRH?=
 =?utf-8?B?dFNvb3lsWHJldVU4TGN4RlI4ZnJyN3l1TFo2eGk1S1RXak5YeHVOTUpTYnp2?=
 =?utf-8?B?OFUyblZ1TGJtbG5GdVdxQU93RnNBVGh6ZGljR2FWaTM0MGhwN2FQcEo0bzlL?=
 =?utf-8?B?R1k0a1g5QVpZWFdSaHV3ZmI0QWJXWmprY3M1V0RNa0dFMzlvbkhUNXk3UWwr?=
 =?utf-8?B?UGdVV1FTWXRSNC9GbTRHOGtqRGNVVTZDSUpTOE94OENkSW9rRDhJLzE5eGs2?=
 =?utf-8?B?SmtlbUNXRERGbitrdTFCMHo0NVpSUHpDb0lmT1BWNXZzRGtvdmRQVzV0ZWFX?=
 =?utf-8?B?NmV2eVl1K0ZlL0VrazNZVkxJYnZZbk9NQVFNcFlqTFBJZTdDb216bEI4aEEz?=
 =?utf-8?B?eGpPa2FlL2hvUEpXbWdFUGNqRmJsMWVIZWJhS3NadlE5WU9OSy9MWEw4Vmpp?=
 =?utf-8?B?eTRFY3FxMzJRSVd6eHROQklmVDlDM3AvZ1c3U1hNeWpOTnFHd2Z6SnBjK1Ny?=
 =?utf-8?B?bG1xK1kxMWprTzJtdVJlL1dPUkkwbk5IMmNzNU9qR3Fhci9oZzZqcGtLTnpz?=
 =?utf-8?B?T3NreFlWM0cxWXEzMXJwL2M0Q0hqWnd5Ri82MXNneTZrbnFVYUU2R3Z1QUhW?=
 =?utf-8?B?U2E0N1VpcHNRV0lZdnBGTEF5VTFjRVU5UDhXY1NBaEFkUGJHQk9hVzJSZjJ5?=
 =?utf-8?B?VEVXZjZLRi9nbEVkM3YrMitJNW92cmQyanBVZnZWUk8rSGJiV2w4M2lvR0NR?=
 =?utf-8?B?b1l4TGJDZVFwRTRkRS9yY2l2eGlEVmNEQ2RHdFlobWVyUGVISUFmalk1RHVG?=
 =?utf-8?B?MFFid1Y2bjVGUVhZdytHZUg5SkgvR08xWDdTN3BaZW1GZWhzUjl0VTA3c1hz?=
 =?utf-8?B?Um1XempDUkZEV2dBbzVRdG9icFlJNy9JMmxaaE5reDQ2aEJCUWJ6dVlrZm1B?=
 =?utf-8?B?b0ZEWlBSanV2cGF4VVQ3UDFTd1owNEpzNUpPR1Judkl5Wmd1aUNIYTZmSktF?=
 =?utf-8?B?NVFVSEZENEhZRlplZ09DWDMzYUpUeTg4NWJVaTY1RUtTbFpwVFB5WjVoemxO?=
 =?utf-8?B?K1V6amRjc01MSHFyTzhJa1lTcFA4T0V0VW9RYnVjdDFIclVSQmN0b0wySytY?=
 =?utf-8?B?V1d6UWszUkk3eHZqUm5rVXNhM0kvK3FySFJlZGpLc3B3K0g5VHVpU2FzWXlp?=
 =?utf-8?B?QWRzbmFjQVMrbVVQa29yUVZFV1g4cnVGTUtyVzJPOFAyRzUwTEhGWlhmU0hU?=
 =?utf-8?B?Z21EMEkyOUJ5Um1nV2JieXAyajJpOUdYZllkUGtwVmhTZW1MZk44ejluSHFZ?=
 =?utf-8?Q?BY3txu/sz9mYJj+OI5SL6sRXk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR03MB6636.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9c1d278-f044-4812-1dc6-08dd345f42de
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 05:49:50.4820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IMxWhG8ZlQowQ1eLbH2WcQ8FzckhCXsCvGq9B8aInpoDPGeDIs3p9oSd+YZ25UMiwgZ9gA35UYTo5x6gqE20ocxaB8MELdhA5LNWx49fHRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7493

SGkgUm9iDQpUaGFua3MgZm9yIHRoZSBhZHZpY2UuDQpUaGUgcm9vdCBjYXVzZSBvZiB0aGUgZXJy
b25lb3VzIGxvZyBtZXNzYWdlIGlzIGR1ZSB0byBtaXNzaW5nIHBvd2VyL2Nsb2NrIGRlcGVuZGVu
Y2llcy4NCk9uY2UgdGhlIE1USyBjbG9jay9wb3dlciBoZWFkZXIgZmlsZSBpcyB1cHN0cmVhbWVk
LCANCndlIHdpbGwgaW5jbHVkZSBhIHJlZmVyZW5jZSBsaW5rIGluIHRoZSBuZXh0IHZlcnNpb24g
b2YgdGhlIHVwc3RyZWFtIHNlcmllcyBzdWJtaXNzaW9uLg0KIA0KQmVzdCwgUGF1bC1wbCBDaGVu
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSb2IgSGVycmluZyAoQXJtKSA8
cm9iaEBrZXJuZWwub3JnPiANClNlbnQ6IEZyaWRheSwgSmFudWFyeSAxMCwgMjAyNSA5OjU0IFBN
DQpUbzogUGF1bC1wbCBDaGVuICjpmbPmn4/pnJYpIDxQYXVsLXBsLkNoZW5AbWVkaWF0ZWsuY29t
Pg0KQ2M6IGNvbm9yK2R0QGtlcm5lbC5vcmc7IFNpbmdvIENoYW5nICjlvLXoiIjlnIspIDxTaW5n
by5DaGFuZ0BtZWRpYXRlay5jb20+OyBTdW5ueSBTaGVuICjmsojlp43lp40pIDxTdW5ueS5TaGVu
QG1lZGlhdGVrLmNvbT47IGNodW5rdWFuZy5odUBrZXJuZWwub3JnOyBQcm9qZWN0X0dsb2JhbF9D
aHJvbWVfVXBzdHJlYW1fR3JvdXAgPFByb2plY3RfR2xvYmFsX0Nocm9tZV9VcHN0cmVhbV9Hcm91
cEBtZWRpYXRlay5jb20+OyBmc2hhb0BjaHJvbWl1bS5vcmc7IFNpcml1cyBXYW5nICjnjovnmpPm
mLEpIDxTaXJpdXMuV2FuZ0BtZWRpYXRlay5jb20+OyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBtYXR0aGlhcy5iZ2dAZ21haWwuY29tOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgWGlhbmRvbmcgV2FuZyAo546L5YWI5Yas
KSA8WGlhbmRvbmcuV2FuZ0BtZWRpYXRlay5jb20+OyB0cmVhcGtpbmdAY2hyb21pdW0ub3JnOyBO
YW5jeSBMaW4gKOael+aso+ieoikgPE5hbmN5LkxpbkBtZWRpYXRlay5jb20+OyBsaW51eC1tZWRp
YXRla0BsaXN0cy5pbmZyYWRlYWQub3JnOyBwLnphYmVsQHBlbmd1dHJvbml4LmRlOyBKYXNvbi1K
SCBMaW4gKOael+edv+elpSkgPEphc29uLUpILkxpbkBtZWRpYXRlay5jb20+OyBBbmdlbG9HaW9h
Y2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
PjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBrcnprK2R0QGtlcm5lbC5v
cmcNClN1YmplY3Q6IFJlOiBbUEFUQ0ggMDMvMTJdIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBtZWRp
YXRlazogYWRkIEVYRE1BIHlhbWwgZm9yIE1UODE5Ng0KDQoNCkV4dGVybmFsIGVtYWlsIDogUGxl
YXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsIHlvdSBoYXZl
IHZlcmlmaWVkIHRoZSBzZW5kZXIgb3IgdGhlIGNvbnRlbnQuDQoNCg0KT24gRnJpLCAxMCBKYW4g
MjAyNSAyMDozMzo1OSArMDgwMCwgcGF1bC1wbC5jaGVuIHdyb3RlOg0KPiBGcm9tOiAiUGF1bC1w
bC5DaGVuIiA8cGF1bC1wbC5jaGVuQG1lZGlhdGVrLmNvbT4NCj4NCj4gQWRkIG1lZGlhdGVrLGV4
ZG1hLnlhbWwgdG8gc3VwcG9ydCBFWERNQSBmb3IgTVQ4MTk2Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5
OiBQYXVsLXBsLkNoZW4gPHBhdWwtcGwuY2hlbkBtZWRpYXRlay5jb20+DQo+IC0tLQ0KPiBUaGUg
aGVhZGVyIHVzZWQgaW4gZXhhbXBsZXM6DQo+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9t
dDgxOTYtY2xrLmg+ICNpbmNsdWRlIA0KPiA8ZHQtYmluZGluZ3MvcG93ZXIvbXQ4MTk2LXBvd2Vy
Lmg+DQo+IGFyZSBub3QgdXBzdHJlYW1lZCB5ZXQuDQo+IEl0IHdpbGwgYmUgc2VudCBieSByZWxh
dGVkIG93bmVyIHNvb24uDQo+IC0tLQ0KPiAgLi4uL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWss
ZXhkbWEueWFtbCAgICAgIHwgNzcgKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDc3IGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCANCj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZXhkbWEu
eWFtbA0KPg0KDQpNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19j
aGVjaycgb24geW91ciBwYXRjaDoNCg0KeWFtbGxpbnQgd2FybmluZ3MvZXJyb3JzOg0KDQpkdHNj
aGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOg0KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZXhkbWEuZXhhbXBsZS5kdHM6MTg6MTg6IGZh
dGFsIGVycm9yOiBkdC1iaW5kaW5ncy9jbG9jay9tdDgxOTYtY2xrLmg6IE5vIHN1Y2ggZmlsZSBv
ciBkaXJlY3RvcnkNCiAgIDE4IHwgICAgICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2sv
bXQ4MTk2LWNsay5oPg0KICAgICAgfCAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+DQpjb21waWxhdGlvbiB0ZXJtaW5hdGVkLg0KbWFrZVsyXTogKioqIFtz
Y3JpcHRzL01ha2VmaWxlLmR0YnM6MTMxOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxleGRtYS5leGFtcGxlLmR0Yl0gRXJyb3IgMQ0K
bWFrZVsyXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4NCm1ha2VbMV06ICoq
KiBbL2J1aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51eC9NYWtlZmlsZToxNTA2OiBk
dF9iaW5kaW5nX2NoZWNrXSBFcnJvciAyDQptYWtlOiAqKiogW01ha2VmaWxlOjI1MTogX19zdWIt
bWFrZV0gRXJyb3IgMg0KDQpkb2MgcmVmZXJlbmNlIGVycm9ycyAobWFrZSByZWZjaGVja2RvY3Mp
Og0KDQpTZWUgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2RldmljZXRyZWUt
YmluZGluZ3MvcGF0Y2gvMjAyNTAxMTAxMjM4MzUuMjcxOTgyNC01LXBhdWwtcGwuY2hlbkBtZWRp
YXRlay5jb20NCg0KVGhlIGJhc2UgZm9yIHRoZSBzZXJpZXMgaXMgZ2VuZXJhbGx5IHRoZSBsYXRl
c3QgcmMxLiBBIGRpZmZlcmVudCBkZXBlbmRlbmN5IHNob3VsZCBiZSBub3RlZCBpbiAqdGhpcyog
cGF0Y2guDQoNCklmIHlvdSBhbHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBhbmQg
ZGlkbid0IHNlZSB0aGUgYWJvdmUgZXJyb3IocyksIHRoZW4gbWFrZSBzdXJlICd5YW1sbGludCcg
aXMgaW5zdGFsbGVkIGFuZCBkdC1zY2hlbWEgaXMgdXAgdG8NCmRhdGU6DQoNCnBpcDMgaW5zdGFs
bCBkdHNjaGVtYSAtLXVwZ3JhZGUNCg0KUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQgYWZ0ZXIg
cnVubmluZyB0aGUgYWJvdmUgY29tbWFuZCB5b3Vyc2VsZi4gTm90ZSB0aGF0IERUX1NDSEVNQV9G
SUxFUyBjYW4gYmUgc2V0IHRvIHlvdXIgc2NoZW1hIGZpbGUgdG8gc3BlZWQgdXAgY2hlY2tpbmcg
eW91ciBzY2hlbWEuIEhvd2V2ZXIsIGl0IG11c3QgYmUgdW5zZXQgdG8gdGVzdCBhbGwgZXhhbXBs
ZXMgd2l0aCB5b3VyIHNjaGVtYS4NCg0K

