Return-Path: <devicetree+bounces-136000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9A6A0354A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 03:42:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07351188645D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 02:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66CE190685;
	Tue,  7 Jan 2025 02:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hWPkKT/o";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="F0aM4iID"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2461917F1;
	Tue,  7 Jan 2025 02:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736217749; cv=fail; b=nWzAEvs8xILGkZ30SFpB8JL2K92Uiebs3Nq2Lbi6zMcW2hhtBSNvpYER/cb8VjoQuQr6uoJkEtcY+51wIAYc7DRAyejt6P+zu8dykffy72FtvaItETeheDzGiayG5ME3TsYRtqNfXQHqpz5149c/dIcSKb3Sh4idtGquPtykGag=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736217749; c=relaxed/simple;
	bh=JhvFfZ7q9SmN5PoQrugLWqvuWSvTunhn/h2FthYIgew=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=R5yL8BRZcqVOaZMCuWZaYp+8h1PpSEqSzV0fQVou1cgMb6o91dnTRDPz1Js4yalFRCSyYPHpZolv/XghlqSRkfL07k0uTsG3ohF6OpNa4OiYAUUWZM68aq0K7sbSFLkgkbukXpDkKXd1TzTJYycLheCHdQF4r3igAlJ7rJ83CPs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=hWPkKT/o; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=F0aM4iID; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 03e26136cca111ef99858b75a2457dd9-20250107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=JhvFfZ7q9SmN5PoQrugLWqvuWSvTunhn/h2FthYIgew=;
	b=hWPkKT/ozFjvcr2vOJ6afnn8L6WWg4pNp8HJUZgocvkJfQ1FW/b3hQEPd36NVL5/74gXSM4OlgJTu5MSpLEZtRAfPHybAfwgYqHt4t9YF0Wnii5B/duu+poh5qUveE9Y4IRWfaQmUs2Fi+oKeoG3biMlJkU3gsjaGFv8ng94S4I=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:b9a30d65-5465-4abe-8236-5adf3162425c,IP:0,U
	RL:0,TC:0,Content:2,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:2
X-CID-META: VersionHash:60aa074,CLOUDID:2d487837-e11c-4c1a-89f7-e7a032832c40,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:4|50,
	EDM:-3,IP:nil,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OS
	A:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULS,TF_CID_SPAM_SNR
X-UUID: 03e26136cca111ef99858b75a2457dd9-20250107
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1757482671; Tue, 07 Jan 2025 10:42:19 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 7 Jan 2025 10:42:18 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 7 Jan 2025 10:42:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4V9+agggqG0kV3NT93OXxm+ayMA3qU1mzaPgSm/pBeNsURpMuaCjzw34Nim8hS1hiUt/scTA3KyjTuuYEIZmTY7+BHnxkeYi96Nlpv/y515UJxjleLJ9dzWY9gDgzB60Z/+4Ec1XgGA4ga5Y+ZpOtcab0B1mPpyAMblsAUnIIt9P5Hfk2emAcWJdF11jzwfn3frLbK7vFOVpr5PprvYrQFGjhPu3Wu/hrxIWvItYzoFRxMBexnldl8NqFn2cod9oWKxcbv3vRpUcDItLFmXBgiV6/M0pY9jVOvCxWnAT6tGbGPjkCKOcRUMmb5fM/XJIS4vHP9FwnMEayGFEAkWWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhvFfZ7q9SmN5PoQrugLWqvuWSvTunhn/h2FthYIgew=;
 b=HPtnCrWCTp2/u4Q0nhrPxVLjkjWCpFhOUpCBtwaAinL8HR67gKQ56qy/IQ6gCpx1mPwLxaPP47NTsVrsNQiBzeaCmw4NLNQTYmvgElhRKjZrtGqzJfnqWoiDFmiU9RGGPAI9qYFrYGdj/x67q35kuFacxQvHPsBu6DdzUAJCXwRN7v22AnN7v2DJ6GQLuQQ48GrCBZkbA9iGCGhMp676HXNugTubfvbZ1HrDBrySmEWqQjJnyadGFaEgm50iZAbNNbLWzjeqXZHGgUE0skKSm7gHDik5rPgdzZi9yHzSO07Tx19F/3znE42D2EZWcJPlCQ/wYO1woiKVhlygUxTJlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JhvFfZ7q9SmN5PoQrugLWqvuWSvTunhn/h2FthYIgew=;
 b=F0aM4iIDqqkSmQcvM0wTa7+7mF7lz3ZUP9myRUmSdvFs+KxD3mir/xRqqnbosgYsfe7LnAlzUWJl4uY+I21Y8oQ6u7Z1z1H1wqnprB/19tdlTPa/9QDsPjNuNBBV0Jur4HfNcIBGqTj9zLaNLZf7QftYhH7hiV45W5H5FXuOb78=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by TYSPR03MB8082.apcprd03.prod.outlook.com (2603:1096:400:479::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 02:42:16 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6%3]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 02:42:15 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: "krzk@kernel.org" <krzk@kernel.org>
CC: "robh@kernel.org" <robh@kernel.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "simona@ffwll.ch" <simona@ffwll.ch>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"mchehab@kernel.org" <mchehab@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "airlied@gmail.com"
	<airlied@gmail.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, =?utf-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?=
	<Moudy.Ho@mediatek.com>, =?utf-8?B?WGF2aWVyIENoYW5nICjlvLXnjbvmlocp?=
	<Xavier.Chang@mediatek.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: mailbox: mediatek: Add MT8196 support
 for gce-mailbox
Thread-Topic: [PATCH v3 1/7] dt-bindings: mailbox: mediatek: Add MT8196
 support for gce-mailbox
Thread-Index: AQHbUjifwIYL/sR61UKff0WQOKSFC7L5ygoAgATKiACABsoBgIAFWIAA
Date: Tue, 7 Jan 2025 02:42:15 +0000
Message-ID: <90b38dd6e093c89a7383814db786321cbd4533f6.camel@mediatek.com>
References: <20241219170800.2957-1-jason-jh.lin@mediatek.com>
	 <20241219170800.2957-2-jason-jh.lin@mediatek.com>
	 <yg7b2iaz53avd7gpvuewhi6b3myh6owls3dt2hzpqc26lnykjf@tpu2vxqqkipe>
	 <11f168c11b4cea48cf51406c0afaf8f1f53ad90f.camel@mediatek.com>
	 <6adfa5fe-7b68-4f8e-919d-7b7607fe617c@kernel.org>
In-Reply-To: <6adfa5fe-7b68-4f8e-919d-7b7607fe617c@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|TYSPR03MB8082:EE_
x-ms-office365-filtering-correlation-id: 6ac10973-6d6c-4a22-697c-08dd2ec4e5a5
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZGMwNXk5bUR4bmJzZHI0SkFIZmUzYkFwZElLRFdwNklRVmtIZldMdnBQNCtu?=
 =?utf-8?B?c2xLMFdwVXQxb0h0YTBRTGFRN0piTXl0RDhBMUQycVh5VWdSUldZcWVQNlh1?=
 =?utf-8?B?M0ZGRklHUTRTL09WZXlWYUZLYlZLTjQ5ZlF3SEd3Q3BZdWY5RTk2aS83V2FP?=
 =?utf-8?B?bEMxR3F4Y1A3bTk4ODVMNUJGZndoNGVPYkkxZE5lcVF0eGxFLzJWLzRhRDA4?=
 =?utf-8?B?TVdySjNEVmRvZzJ5bkVOaHppbzNjNmFqSGpzZGRCQ202RzZ6L0o2T3NRajE5?=
 =?utf-8?B?by9oYlRISEVEUEQzeVpCdGpvRW5VMWtsOTJZeUxVdk5RSXFIT2UxTzdCTUU1?=
 =?utf-8?B?YXBBald1bkJnRk5iTkVVbzBPRzgzZXdDZ04waTlORE5DSlAvUnNDVm9aWUE2?=
 =?utf-8?B?ZHlPbllUdjFzY1B5Uzk3c2oyaElKbUlEY2RHeEliMm9XbjFLZndwWjhHeTZY?=
 =?utf-8?B?NWE2V2JLcS8zeTlKU1UydDBUWThaZEFsOFlhUDlMUmxNaG1QeklPbWxHQ1Jw?=
 =?utf-8?B?VkZSZmxpSFM1MmpGMWxRYmZTMXJabktBUWNGUy9oeWdSdWlwK0lFa05EeE00?=
 =?utf-8?B?UFFVczd3N1FBZ05CNjc5RlhSQm1hckxPK1YzK1drMm5FcFpaZkZLZkJlL1gy?=
 =?utf-8?B?MzJuTk1NT0lqZUo5UjM3RFV4MjB2OHZFbEVsbTZJbEg0TCt6ZUFzSVpibTFZ?=
 =?utf-8?B?eUNCM2hZWjZVc0VLbU1sNmpHY1oxdGJPZXJQZVlTUnpPSDcrSVBKNFEzb2Fo?=
 =?utf-8?B?NTFNVE4ydFlqVFRCTVVublNyY2VBOGtBRmFmVlN1bTNRNDN6R1FSeG9UT1BX?=
 =?utf-8?B?bHRjTEVmZWpmZmdrTzdzY0crTUpHUzNuakpGTFJ1TVRPdG9JZVpINDIxTG8v?=
 =?utf-8?B?SEhQU2R0RGs0b3JjdzZ6ZEw5enoxTk8yQ3dNckpDWjZxMlZPeEU5YzM3VitC?=
 =?utf-8?B?dHBmTUdDdHcyTFpLd0tqb3k3dks3ZmZ5UitReTRWSytuNldOUTQ1Z1NqNktC?=
 =?utf-8?B?b2tjZk1WNjRIalJreVFrWWkyVnF3QkxaTDRXVWRDT2xvNnZDN2lxQTFNSVNX?=
 =?utf-8?B?Nitsb0UzQWdqVlI0T2M1enc2YUpPY08zVVNDa3E3dG53c3hHTnhXZzlFSjBM?=
 =?utf-8?B?YisyY3ZFdkl5Mk4zUmR6R2t0akRicUo1WkFkbHlrdm92NU5jQWN6VFpqZ21Y?=
 =?utf-8?B?MzhTSHlDUUNxbkUrUEdUYStXcjRHdzIvWndiYXRUMmRMZUQzRGJ4Y25KOWFO?=
 =?utf-8?B?MnozSmg4SWNtZDVkQng0cG9oVFhqMVgwdUNrUGt3V3huL2hXSHk5NjhBQita?=
 =?utf-8?B?YWdtZXJwcTMycGh4L0ROSlZuUVZMSXFTTWZqd0FrNXlKZkRGa3Q0cUg2cmZz?=
 =?utf-8?B?RmFtUDMrUnhXN0tic0FPZDkrWWFjWk5Nd2xCU0tZby9RamZPNFFLNUxTRDMz?=
 =?utf-8?B?Vk1DVnMwdXdXNmFGd1Q1dUlaTm9wTGRCMGhiYmxYWkZRMHg5RHNvdldFdlBw?=
 =?utf-8?B?bUUxQXRqdExoY1Vrd2xINkNvd2c4YmdBWlVMd0RvOXZxdmVxTWxETjYxRWdo?=
 =?utf-8?B?MFUwWjFybWp4N3YvVmxmS3dkNlNEck1RM0wyM2dUTzEzWElhU2o0bmhkQVJi?=
 =?utf-8?B?VGlLUDVKTXdaUnZoWVZZeVI4OTZ6SVpZbW5RYmRRTUFCSEsxMzZSdkhDY0o3?=
 =?utf-8?B?ODc5OXQ5V1VBRnlMUWt2UDR6enBKYjEzRkczbzJHV0FOVmJQeEcrSHE3TlJq?=
 =?utf-8?B?NHl1QXpEZElrUlVWbjVqZXZFU0dOQkRhaVZEWjI3WSswOEYxQTdmeFlwL0t2?=
 =?utf-8?B?Wjc4a0gyNS9KV3NTdlA2M0EzSStNTTdBUEVJYWFuTCtYZjlNWVU4U1RxWU1K?=
 =?utf-8?B?RUZuQm9xRWlIdWtlSysvY3FTcytTV1Y4a2FKYkVLaGxIMklSU2UwU2hrS0hs?=
 =?utf-8?Q?VjntNEnERUaV2gErvBp9zu9o4iYXf8br?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnpDKy9wNnBYeC9qSURXMm93UU9Pa0MxMEZPdnFmL21hK1lyYVMvUEw5d08r?=
 =?utf-8?B?RlZyZjhQVm1LOXpIWXM4Q2pJenVyLzBHV0lwT0txZ2hJbGhtRHJLODh2VEM5?=
 =?utf-8?B?OU9QdHpJSFd0bDVJNVBOOWhnNDBGdnJVUzI2SmphK1JTZ2lNMGpVaXZaZ0xz?=
 =?utf-8?B?QWRRV2N4WHhQNldCNTVXRy9QNVVqMjRBZzFYbEJKcm9EYjFZMEppMmVIcGpl?=
 =?utf-8?B?RXRmS1V3aUNEOTVOekpGbUozOUpBbkJSekxmRUpEdld3WjMrWnRENUsyTy81?=
 =?utf-8?B?Nk4rZlYwWkk5QkhZenUzNUJvbEh6K2puYTBuVVNqVnlVa2gzSWtWU0VhNGE5?=
 =?utf-8?B?VlJCWUQwVGZZeUlUVE9JOWtKaWRWc2RRTC9zNURLMjlEYnNLQklBMDBPVkJS?=
 =?utf-8?B?bVQ1Z25iYWNhTFdZRHRyOFFpeml4aEtPOTJOUWtTQzBBZG9LZmhGcmdxV1p0?=
 =?utf-8?B?QllPRlBFdU5ibmZjejNRc2RwM0Q0VlY4T0c4QTNGVGd4V0ViWGJxaWtJdG00?=
 =?utf-8?B?NWJPZWgweVZjeU92UmZuYkVLUmhLVW12bGE0eXdPeFZqc0dYWFd3cWpzV2F6?=
 =?utf-8?B?ZytMK1hxNUs4ZDV6N1AyR1Z2OTdPYVIzQmdJZWp6T1BBbnE2SnZUNTBya0pI?=
 =?utf-8?B?QzJCWndyN2c3Nk9HUnRKd1ROc1dmYUxnNWlzQ21KUDdvbVdKTUdzWWgvK3Uz?=
 =?utf-8?B?WVNjdFZQZ09TcTQ2V3g5V2xYbklReGVzNWFQTjFNOFpKYjJYK25EUE4wYVNS?=
 =?utf-8?B?bFdUSlV0MDlIdHZxWktvNXp0VWw1dW4yWlRORGlwM09rdGVuRmluTldIMTVS?=
 =?utf-8?B?aG1meXRETDJWSk93Ly9nMkk2YTFWcG1BSExJcC9Ya1RDVWhKcE45alhIYVZR?=
 =?utf-8?B?QUxpVkw2T2NGR2xwK1pYazZqYS9rTnBZbHNzQWRneGl2UktPZk5UNkdkcHVK?=
 =?utf-8?B?d2JoQTJWTlc3bmc5RmRRWjNMVVRnM1lSMGNHVC9lQUpNWG5ESHVITExFVXlp?=
 =?utf-8?B?RnlhVkVCbG9pSEd6QmQzR09HLzYvdEh5YVpqZEZLS3RpN2Z4a0xCT1AybVNm?=
 =?utf-8?B?SVE5TWtKWi96U3FrK2tMUmpSNWNqRkorZ1ZBbjh2aUFEaWkwY1l1VTR0d3JJ?=
 =?utf-8?B?elVvdjJFdW9ETHpWenJCa3BUbUJCRkhBaDgvVVF0eW81WHhKRHU3cWhYZHpS?=
 =?utf-8?B?K1ZhK3BmNWJTR0NFQW94UEIxZ1YyOTRLUDA1Umh6WUowSUFid2FQdDlaajZy?=
 =?utf-8?B?YXFKMWhQVWw1RnYyVW9aRDZjblVsSGkrRDExSXUyQkFBRjBrT0g1RU5YVVBE?=
 =?utf-8?B?NzVJSlR4bXNyZ3d5NXl2TVk5STB0bklNKy90MHZnWCtZVjhxVm45MkIzTTRm?=
 =?utf-8?B?eERXVU80eStOMHlIeDJuYUlZSUxzWVhkSHZwVFR2d01Mb3pVbll6c0JNdUgv?=
 =?utf-8?B?a1ZTbHRVSCt3Q3dxNmhqSEN1K0tMd3ZRdDBIZW1IeEZHYkxEVDBsOFkzcVZG?=
 =?utf-8?B?Rm1ZcWJnSU8xT2dvdHB1VXhjRkkzNExjVW91OXJxYTBpajZ6blpkYlpZNWlX?=
 =?utf-8?B?UUdVd0Q4ZW1USmJETHZBemlEREtueGZyODJTb3F1RWtZQjBkWmJ5OTRES2Vp?=
 =?utf-8?B?eFQyKzVKenFLeDU4U1dMZFliMmVrcGN0ZytrWEEvOXdqUTRCVVVJNHBkbDF1?=
 =?utf-8?B?Mmk3a0lZcUhsL1ZXYWk0VnBVSkhiTGFWQmJQNGZZSEIzbEFBVzhRcVQ3WnNy?=
 =?utf-8?B?RmFFV3ZOWVJRci9OdDZaK3phRFU1Y2szUy9xZkoxeFpZcU0xbjRMUUtsQmxj?=
 =?utf-8?B?bm9VdUI4bXlTWXF1dSt0eFVKN1Zpemh6QlQwQSs5QmdGWVBsd29udWdnNHE2?=
 =?utf-8?B?TXIzZ3ZBU3I1U1ZrMkpKbEdSRnJ5dkQyQ1JLR2k5bUdpNFlIbDV3eFJhNit1?=
 =?utf-8?B?OGRoY3F1SFlSWEloU0tjcm5ta3BmZFJ3VHRhQmVGVFI3NFdrdmI5M0NWeGRD?=
 =?utf-8?B?NEtiZWR0ZzhabDAzOUFZYTZjSE8xakFGSVRTdndkTDFNaWprRGVQVjkvNnFK?=
 =?utf-8?B?WmFBRTJIb3kwcVBLemhHeDN5d0ZmYVhmcEtJSHJrWW52NENxN1RDZ0d3Nys3?=
 =?utf-8?B?SFdDTTREMWkzN1lSOU43WnREUHBBWm9uVTF2bVcyYVFpV2ZucEVtWEJkdTdR?=
 =?utf-8?B?a3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E4D198AF92AF4B468BD536791DE6EA98@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac10973-6d6c-4a22-697c-08dd2ec4e5a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 02:42:15.7383
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMzYds+mAi4w+xFEE6pXuU8oG92dJRJTtgvd10EDoNDlzblXjWCKzYGJ8EYfm6ZsUammAXHhxF8Av1OgG2JDqE3jQ+XZLNFX6Zyc8GgOJvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB8082

T24gRnJpLCAyMDI1LTAxLTAzIGF0IDE4OjA0ICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KDQpbc25pcF0NCg0KPiA+IA0KPiA+IFBsZWFzZSBmb3JnaXZlIG1lIGZvciBwdXR0aW5n
IGEgbG90IG9mIHJlZHVuZGFudCBtZXNzYWdlLiBJIGp1c3QNCj4gPiB3YW50DQo+ID4gdG8gcHJv
dmlkZSBhcyBtdWNoIGRldGFpbCBhcyBwb3NzaWJsZSB0byBoZWxwIHlvdSBkZXRlcm1pbmUgaWYg
dGhleQ0KPiA+IGFyZQ0KPiA+IGJpbmRpbmdzLiBJIGFwcHJlY2lhdGUgeW91ciBndWlkYW5jZSBh
bmQgd2lsbCBtYWtlIHRoZSBuZWNlc3NhcnkNCj4gPiBhZGp1c3RtZW50cy4NCj4gPiANCj4gPiAN
Cj4gPiBJIGNoZWNrZWQgdGhlIGNsayBoZWFkZXIgeW91IGFjY2VwdGVkIGJlZm9yZToNCj4gPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNDAyYWM1YTItMzM0ZS0xODQzLTA1MTctNWVjZjYx
ZjZhOTY1QGxpbmFyby5vcmcvDQo+IA0KPiBXaXRoIGFyZ3VtZW50cyBsaWtlICJzb21lb25lLCBz
b21ld2hlcmUgYWNrZWQgdGhpcywgc28gSSBhbSBhbGxvd2VkDQo+IGFzDQo+IHdlbGwgdG8gc2Vu
ZCBpdCIgeW91IGVudGVyIHRyaWNreSBncm91bmRzLg0KDQpIbW0uLi4NCkkgZGlkbid0IG1lYW4g
dGhhdCwgSSBqdXN0IHdhbnQgdG8gZmluZCBhIGNvcnJlY3QgcmVmZXJlbmNlLg0KDQo+IA0KPiA+
IA0KPiA+IFBsZWFzZSBkb24ndCBtaW5kIG1lIHRvIG1ha2UgYSBjb25maXJtYXRpb24gaGVyZSBi
ZWNhdXNlIEkgY2FuJ3QNCj4gPiBmaW5kDQo+ID4gdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIGRl
ZmluaXRpb24gZm9yIGJpbmRpbmcgaGVhZGVyLg0KPiA+IERvIHlvdSBtZWFuIGFsbCB0aGUgaGVh
ZGVyIGRlZmluZWQgaW4gaW5jbHVkZS9kdC1iaW5kaW5ncy8qIHNob3VsZA0KPiA+IGJlDQo+ID4g
dXNlZCBpbiBhIHNwZWNpZmljIGRyaXZlciBhbmQgdGhlIERUUyBpbiB0aGUgc2FtZSB0aW1lPw0K
PiANCj4gWWVzLCBvdGhlcndpc2UgaG93IGlzIGl0IGFic3RyYWN0aW9uPw0KDQpPSywgdGhlbiBJ
IHRoaW5rIGl0J3Mgbm90IGFic3RyYWN0LCBiZWNhdXNlIHdlIGp1c3QgdXNlIGl0IGluIHRoZSBE
VFMuDQoNCj4gDQo+IFRoZXJlIGFyZSBudW1lcm91cyBleGNlcHRpb25zIG9mIGNvdXJzZSB3aGVu
IGJpbmRpbmcgYmluZHMgZGlmZmVyZW50DQo+IHBpZWNlcyBvZiBzb2Z0d2FyZS9maXJtd2FyZS4g
SXMgdGhhdCB0aGUgY2FzZT8gTm90aGluZyBpbiBjb21taXQgbXNnDQo+IGV4cGxhaW5lZCB0aGlz
Lg0KDQpObywgSSB0aGluayBpdCBpcyBub3QgdGhlIGNhc2UuIEknbGwgZHJvcCBpdC4NCg0KPiAN
Cj4gPiANCj4gPiBUYWtlIHRoZSBgI2RlZmluZSBDTEtfVE9QX0FYSWAgYW5kIGAjZGVmaW5lIENM
S19UT1BfVlBQYCBpbg0KPiA+IG1lZGlhdGVrLG10ODE4OC1jbGsuaCBmb3IgZXhhbXBsZToNCj4g
PiANCj4gPiBgQ0xLX1RPUF9BWElgIGlzIHVzZWQgaW4gdGhlIGRyaXZlcnMvY2xrL21lZGlhdGVr
L2Nsay1tdDgxODgtDQo+ID4gdG9wY2tnZW4uYw0KPiA+IGJ1dCBub3QgaW4gYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay9tdDgxODguZHRzaToNCj4gPiBgYGANCj4gPiDCoCAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvY2xvY2svbWVkaWF0ZWssbXQ4MTg4LWNsay5oPg0KPiA+IA0KPiA+IMKgIC4u
Lg0KPiA+IA0KPiA+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX211eCB0b3BfbXRrX211eGVz
W10gPSB7DQo+ID4gwqDCoMKgwqDCoCBNVVhfR0FURV9DTFJfU0VUX1VQRF9GTEFHUyhDTEtfVE9Q
X0FYSSwgInRvcF9heGkiLA0KPiA+IGF4aV9wYXJlbnRzLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwMjAsIDB4
MDI0LCAweDAyOCwgMCwgNCwgNywNCj4gPiAweDA0LA0KPiA+IMKgIC4uLg0KPiA+IA0KPiA+IMKg
wqDCoMKgwqAgTVVYX0dBVEVfQ0xSX1NFVF9VUEQoQ0xLX1RPUF9WUFAsICJ0b3BfdnBwIiwNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZw
cF9wYXJlbnRzLCAweDAyQywgMHgwMzAsIDB4MDM0LCAwLCA0LA0KPiA+IDcsDQo+ID4gwqAgLi4u
DQo+ID4gYGBgDQo+ID4gDQo+ID4gYW5kIGBDTEtfVE9QX1ZQUGAgaXMgdXNlZCBpbiB0aGUgYm90
aCBjbGstbXQ4MTg4LXRvcGNrZ2VuLmMgYW5kDQo+ID4gbXQ4MTg4LmR0c2k6DQo+ID4gYGBgDQo+
ID4gwqAgcG93ZXItZG9tYWluQE1UODE4OF9QT1dFUl9ET01BSU5fVlBQU1lTMCB7DQo+ID4gwqDC
oMKgwqDCoCByZWcgPSA8TVQ4MTg4X1BPV0VSX0RPTUFJTl9WUFBTWVMwPjsNCj4gPiDCoMKgwqDC
oMKgIGNsb2NrcyA9IDwmdG9wY2tnZW4gQ0xLX1RPUF9WUFA+LA0KPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPCZ0b3Bja2dlbiBDTEtfVE9QX0NBTT4sDQo+ID4gLi4uDQo+ID4gYGBg
DQo+ID4gDQo+ID4gQnV0IGl0IHNlZW1zIHRoYXQgYm90aCBvZiBgQ0xLX1RPUF9BWElgIGFuZCBg
Q0xLX1RPUF9WUFBgIGFyZQ0KPiA+IHJlZ2FyZGVkDQo+ID4gYXMgYmluZGluZyBoZWFkZXJzLg0K
PiANCj4gSSBkb24ndCBnZXQgdGhlIGNvbXBhcmlzb25zLiBCb3RoIGNvbnN0YW50cyByZXByZXNl
bnQgYWJzdHJhY3Rpb24sIHNvDQo+IHRoZXkgYXJlIGNvcnJlY3QuDQo+IA0KDQpPSywgSSBqdXN0
IHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQgaXQgaXMgbm90IGEgYG11c3RgIHRvIHVzZSB0aGUgYmlu
ZGluZw0KaGVhZGVyIGluIGRyaXZlciBjb2RlIGFuZCBEVFMgYXQgdGhlIHNhbWUgdGltZS4NCg0K
PiANCj4gPiANCj4gPiANCj4gPiBGcm9tIHRoZSBwcmV2aW91cyBkZXNjcmlwdGlvbiBvZiB0aGUg
ZXhhbXBsZSB5b3UgZ2F2ZSBtZToNCj4gPiBCaW5kaW5ncyBhcmUgaW1hZ2luYXJ5IG51bWJlcnMg
c3RhcnRpbmcgZnJvbSAwIG9yIDEgd2hpY2ggYXJlIHVzZWQNCj4gPiBiZXR3ZWVuIGRyaXZlcnMg
YW5kIERUUywgc2VydmluZyBhcyBhYnN0cmFjdGlvbiBsYXllciAob3INCj4gPiBhYnN0cmFjdGlv
bg0KPiA+IHZhbHVlcykgYmV0d2VlbiB0aGVzZSB0d28uDQo+IA0KPiBFeGFjdGx5LCB3aGF0IHRv
IHNheSBtb3JlPw0KPiANCg0KU28gdGhlIGtleSBwb2ludCBpcyBhYnN0cmFjdC4NCg0KPiA+IA0K
PiA+IEFzIEkgdW5kZXJzdGFuZCwgZWFjaCBjbG9jayBkZWZpbml0aW9uIGNvcnJlc3BvbmRzIHRv
IHRoZSBjbG9jayBDRw0KPiA+IHNldHRpbmdzIHByb3ZpZGVkIHRvIGRpZmZlcmVudCBoYXJkd2Fy
ZSwgYW5kIGVhY2ggaGFyZHdhcmUgZHJpdmVyDQo+ID4gY2FuDQo+ID4gY29udHJvbCBpdHMgb3du
IGNsb2NrIENHIHRocm91Z2ggdGhlIENDRiB0byBjb250cm9sIHRoZWlyIENHIGluDQo+ID4gY2xv
Y2sNCj4gPiBkcml2ZXIuIFNvIHRoZXkgY2FuIGJlIGFuIGFic3RyYWN0aW9uIHZhbHVlcyBiZXR3
ZWVuIGRyaXZlciBhbmQNCj4gPiBEVFMuDQo+ID4gDQo+ID4gU2ltaWxhcmx5LCB0aGUgR0NFIHN1
YnN5cyBJRCBhbmQgR0NFIGV2ZW50IElEIGNvcnJlc3BvbmQgdG8gc3ltYm9scw0KPiA+IHVzZWQg
YnkgR0NFIHRvIGNvbnRyb2wgdmFyaW91cyBoYXJkd2FyZSwgYW5kIGVhY2ggaGFyZHdhcmUgZHJp
dmVyDQo+ID4gY2FuDQo+ID4gdXNlIHRoZXNlIElEcyB0byBnZW5lcmF0ZSBjb21tYW5kcyBidWZm
ZXIgZm9yIEdDRSB0aHJvdWdoIHRoZSBBUEkNCj4gPiBwcm92aWRlZCBieSB0aGUgR0NFIGRyaXZl
ciBhbmQgYWNoaWV2ZSB0aGUgZGVzaXJlZCBjb250cm9sIG92ZXINCj4gPiB0aGVpcg0KPiA+IGhh
cmR3YXJlLg0KPiANCj4gU28gYXJlIHRoZXkgYWJzdHJhY3Qgb3Igbm90PyBUaGVuIHVzZSBzb21l
IGRpZmZlcmVudCB2YWx1ZXMsIHJlYWxseQ0KPiBhYnN0cmFjdC4NCj4gDQo+IEkgYnJvdWdodCB5
b3UgZGVmaW5pdGlvbjogYWJzdHJhY3QuIFlvdSBub3cgY2l0ZWQgaXQuIEJ1dCBsYXN0DQo+IHBh
cmFncmFwaA0KPiBlbnRpcmVseSBza2lwcyB0aGlzIHBvaW50Lg0KPiANCg0KT0ssIHNvIG1heWJl
IEkgc2hvdWxkIHVzZSBhIHBsYXRmb3JtLXNwZWNpZmljIGRyaXZlciBjb2RlIHRvIHVzZSBpdCBh
cw0KYW4gYWJzdHJhY3QgbnVtYmVyIGZvciB0aGUgcmVhbCBoYXJkd2FyZSBzZXR0aW5ncy4NCmUs
Zy4NCg0KbXQ4MTk1LWNtZHEtcGxhdGZvcm0uYzoNCmBgYA0KdGhyZWFkX3ByaW9bQ01EUV9USFJf
UFJJT19MT1dFU1RdID0gMCwNCnRocmVhZF9wcmlvW0NNRFFfVEhSX1BSSU9fMV0gPSAweDEsDQou
Li4NCnRocmVhZF9wcmlvW0NNRFFfVEhSX1BSSU9fSEVJR0hFU1RdID0gMHg3LA0KYGBgDQoNCmFu
ZA0KDQptdDgxODgtY21kcS1wbGF0Zm9ybS5jOg0KYGBgDQp0aHJlYWRfcHJpb1tDTURRX1RIUl9Q
UklPX0xPV0VTVF0gPSBCSVQoMCksDQp0aHJlYWRfcHJpb1tDTURRX1RIUl9QUklPXzFdID0gQklU
KDEpLA0KLi4uDQp0aHJlYWRfcHJpb1tDTURRX1RIUl9QUklPX0hJR0hFU1RdID0gQklUKDcpLA0K
YGBgDQoNCkJ1dCBJIHRoaW5rIGl0J3Mgbm90IG5lY2Vzc2FyeSBpbiBpdHMgY2FzZS4NClNvIEkn
bGwgZHJvcCB0aGlzIGR0LWJpbmRpbmdzIGhlYWRlci4NCg0KPiANCj4gPiANCj4gPiBJIGd1ZXNz
IHRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgdGhlIGNsb2NrIGRyaXZlciBoYXMgYSBwbGF0Zm9ybS0N
Cj4gPiBzcGVjaWZpYw0KPiA+IGNsb2NrIHRhYmxlIHRvIHN0b3JlIHRoZXNlIGJpbmRpbmcgaGVh
ZGVycywgd2hpbGUgdGhlIEdDRSBkcml2ZXINCj4gPiBkb2VzDQo+ID4gbm90IGhhdmUgYSBwbGF0
Zm9ybS1zcGVjaWZpYyB0aHJlYWQgcHJpb3JpdHkgdGFibGUsIHN1YnN5cyBJRA0KPiA+IHRhYmxl
LA0KPiA+IGFuZCBldmVudCBJRCB0YWJsZS4gSW5zdGVhZCwgdGhlIEdDRSBjbGllbnQgZHJpdmVy
cyBjYW4gZGlyZWN0bHkNCj4gPiBvYnRhaW4NCj4gPiB0aGVpciByZXNwZWN0aXZlIGhhcmR3YXJl
IHNldHRpbmdzIGZyb20gdGhlIERUUy4NCj4gPiANCj4gPiBPbiB0aGUgb3RoZXIgaGFuZCwgZGVm
aW5pdGlvbnMgbGlrZSBDTEtfVE9QX01BSU5QTExfRDMsDQo+ID4gQ0xLX1RPUF9NQUlOUExMX0Q0
LCBldGMuLCBjb3JyZXNwb25kIHRvIGRpZmZlcmVudCBjbG9jayBmcmVxdWVuY3kNCj4gPiBkaXZp
ZGVyIGxldmVscywgYW5kIHRoZSBDTURRX1RIUl9QUklPX1ggZm9yIEdDRSB0aHJlYWQgcHJpb3Jp
dHkNCj4gPiBhbHNvDQo+ID4gY29ycmVzcG9uZHMgdG8gZGlmZmVyZW50IHByaW9yaXR5IGxldmVs
cyBmb3IgR0NFIHRocmVhZHMuDQo+ID4gVGhlcmVmb3JlLCBJDQo+ID4gYW0gbm90IHF1aXRlIHN1
cmUgd2h5IEdDRSB0aHJlYWQgcHJpb3JpdHkgY2Fubm90IGJlIGNvbnNpZGVyZWQgYQ0KPiA+IGJp
bmRpbmcgd2hlbiBpdCBpcyBhbHNvIGEgc3ltYm9sIG51bWJlciBmb3IgYSBoYXJkd2FyZSBsZXZl
bA0KPiA+IHNldHRpbmcuDQo+IA0KPiBXZWxsLCBtYXliZSBub3RoaW5nIGhlcmUgaXMgYSBiaW5k
aW5nLiBJIHRvb2sgb25lIHRoaW5nIHRvIGluc3BlY3QuIEkNCj4gZGlkIG5vdCBpbnNwZWN0IHRo
ZSByZXN0LiBIb3cgZG9lcyBpdCBoZWxwIHlvdXIgY2FzZT8NCj4gDQoNClllcywgY29uc2lkZXJp
bmcgdGhlIGFic3RyYWN0aW9uLCB0aGVyZSBhcmUgbm8gYmluZGluZ3MgaGVyZS4NCg0KPiANCj4g
PiANCj4gPiANCj4gPiBJZiB0aGUgY29uZGl0aW9uIGZvciBiZWNvbWluZyBhIGJpbmRpbmcgaGVh
ZGVyIGlzIHRoYXQgaXQgYG11c3RgIGJlDQo+ID4gdXNlZCBieSBhIHNwZWNpZmljIGRyaXZlciwg
c3VjaCBhcyBhIHBsYXRmb3JtLXNwZWNpZmljIHRhYmxlLCB0aGVuDQo+ID4gSQ0KPiANCj4gTm8s
ICJ1c2VkIGJ5IHRoZSBkcml2ZXIiIGlzIGluZGljYXRpb24gdGhhdCB5b3UgdXNlIGl0IGFzDQo+
IGFic3RyYWN0aW9uLg0KPiANCg0KT0ssIEkgZ290IGl0Lg0KDQo+ID4gd2lsbCByZW1vdmUgdGhl
IGVudGlyZSBHQ0UgZHQtYmluZGluZyBoZWFkZXIuIEJlY2F1c2UgdGhlIGN1cnJlbnQNCj4gPiB1
c2FnZQ0KPiA+IG9mIHRoZXNlIGRlZmluaXRpb25zIGlzIHRoYXQgZWFjaCBHQ0UgY2xpZW50IGRy
aXZlcnMgY2FuIGRpcmVjdGx5DQo+ID4gc3RvcmUNCj4gPiB0aGVzZSBHQ0UgZGVmaW5pdGlvbnMg
dGhyb3VnaCB0aGUgRFRTLCBqdXN0IGxpa2UgSVJRIElEcywgYW5kDQo+ID4gd2l0aG91dA0KPiA+
IHRoZSBuZWVkIGZvciBhbiBhZGRpdGlvbmFsIHRhYmxlIGRlZmluZWQgYnkgdGhlIEdDRSBkcml2
ZXIuDQo+IA0KPiBEbyB5b3Ugc3RvcmUgSVJRIElEcyBhcyBiaW5kaW5nIGNvbnN0YW50cyBpbiBi
aW5kaW5nIGhlYWRlcnM/IE5vLg0KPiBXaHk/DQo+IA0KPiBCZWZvcmUgcHJvY2VlZGluZyB3aXRo
IHRoaXMgaGVhZGVyIGZ1cnRoZXIsIHBsZWFzZSBhbnN3ZXIgdG8gYWJvdmUgLQ0KPiB3aHkNCj4g
aW50ZXJydXB0IG51bWJlcnMsIE1NSU8gYWRkcmVzc2VzIGFuZCBzb21lIG90aGVyIHZhbHVlcyBh
cHBlYXJpbmcgaW4NCj4gRFRTDQo+IGFyZSBub3QgdXNlZCBsaWtlICJiaW5kaW5nIGhlYWRlcnMi
Lg0KDQpCZWNhdXNlIGludGVycnVwdCBudW1iZXJzIGFuZCBNTUlPIGFkZHJlc3NlcyBhcmUgdGhl
IHJlYWwgbnVtYmVycyBvZg0KaGFyZHdhcmUgc2V0dGluZ3MuIFRoZWlyIGRyaXZlciBjYW4gZ2V0
IHRoZW0gZGlyZWN0bHkgZnJvbSB0aGVpciBkZXZpY2UNCm5vZGUgaW4gRFRTLiBUaGV5IGFyZSBh
Y3R1YWwgbnVtYmVyIHRvIGJlIHNldCBpbnRvIHRoZWlyIGhhcmR3YXJlLCBzbw0KdGhleSBkb24n
dCBuZWVkIHRvIGJlIHRyYW5zbGF0ZWQgaW4gdGhlaXIgcGxhdGZvcm0gZHJpdmVycy4NCg0KU28g
SSB0aGluayBhbGwgdGhlIGRlZmluaXRpb25zIGluIHRoZSBgbWVkaWF0ZWssbXQ4MTk2LWdjZS5o
YCBhcmUgdGhlDQpzYW1lIGNhc2UuIFRoZXkgYXJlIGFjdHVhbCBoYXJkd2FyZSBudW1iZXJzIGZv
ciBHQ0UgaGFyZHdhcmUgdG8gdXNlLg0KSXQgc2hvdWxkIGJlIGRyb3AgZnJvbSB0aGUgaW5jbHVk
ZS9kdC1iaW5kaW5ncy8qLg0KDQoNCkJUVywgdG8gbWFrZSB0aGVzZSBudW1iZXJzIG1vcmUgcmVh
ZGFibGUgaW4gRFRTLCBjYW4gSSBtb3ZlDQpgaW5jbHVkZS9kdC1iaW5kaW5ncy9tYWlsYm94L21l
ZGlhdGVrLG10ODE5Ni1nY2UuaGAgaW50bw0KYGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ4MTk2LWdjZS5oYD8NCg0KSnVzdCBsaWtlIHRoZSBgYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDgxNjctcGluZnVuYy5oYC4NCg0KUmVnYXJkcywNCkphc29uLUpILkxpbg0KDQo+IA0K
PiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0K

