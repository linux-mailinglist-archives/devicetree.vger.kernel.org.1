Return-Path: <devicetree+bounces-199228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0154CB10003
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 07:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A35E17AD66A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 05:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C284B1FBE9E;
	Thu, 24 Jul 2025 05:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Pp5G5tWl";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="L4vwWONW"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CC817332C
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753335669; cv=fail; b=j9Lo3hNLq++sCvv5jNlTpmU3oQt8iv7yPm4G2p0j0Kv0aYc4aM4P9JbnP0NW1DgjXoAMxsd3EAecCmypjR+biQfKelpg9sLEkzzalkd/HDX4ouCJ5qCHmPH85u/ZfolY/9/AQKM5B7sYKzh75suCpurZyyVFNK2phXPkcrvVVDM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753335669; c=relaxed/simple;
	bh=RCS0m2X6L/fUWpNoAWrHIhEpZmf/f4oU7D5NgvGzA40=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=UH4QJOjrjSA2BzPWIdZetNlrZDp06423bzuZeEGqHv423PnX706Kpr3ZDJdsOWrxBSTsmdeW6kTyEVfiZBA9YUwg4qRR+6+BPg+RHfq7HT9fzY9schDpsLmb4dMZcCNJcst+5JtHcwWL9DLfkx05+OlL0Q+y4m8gWagSmyL9gIM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Pp5G5tWl; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=L4vwWONW; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: c7832198685011f0b33aeb1e7f16c2b6-20250724
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=RCS0m2X6L/fUWpNoAWrHIhEpZmf/f4oU7D5NgvGzA40=;
	b=Pp5G5tWl/+6mJBGTasuqHawUkq6xUKdJpZ6kaccoY94jAaR7JbpdxVWB2oXqKB3c2pDQV1BUrhtWclbM+Qfyp6DO96ZHQ9frSVbi8M598fJN6oHGYN3b+OZSy4osMSbAqHk527EeWGsmZ90u3yr0aos3b38nSz+OrXD9nzoRDjw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.2,REQID:ab795dae-20f2-4ca2-8538-3a9681249585,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:9eb4ff7,CLOUDID:87ad1e0f-6968-429c-a74d-a1cce2b698bd,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111,TC:nil,Conte
	nt:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: c7832198685011f0b33aeb1e7f16c2b6-20250724
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 78999933; Thu, 24 Jul 2025 13:41:00 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Thu, 24 Jul 2025 13:40:57 +0800
Received: from TYDPR03CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Thu, 24 Jul 2025 13:40:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WciuUMz7bFxsPY/i4vEdkIawyiZfl0C2WoEAHXkVfJFuy2wfjsciZl7BvkSOmq5GTy0hvK0FOChL9yu/73ctfbpjeBm/IZxpRmkUPEfWfecVdOtUG3MjqB6ciJfu0PAkvJwPOvWYeTCHpZ7cUHMHgPmUdAZJLKzgilkhuhajNZYOyLq/JwosU4G+/60QfZWspUX4VaPV4KYwZeMudcOqyU5PO/tvszmchAap548S44pNg3yjVQ8pIX7hTyX+ZC4QHr+vlqW9wohgZIcAnALuMbK4g3Y3H1s5XOmJEqcFzCk5UKLNrmsWN3MQkZ9iR4VL4qlHkhnEGiO5XTZkkjCy4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCS0m2X6L/fUWpNoAWrHIhEpZmf/f4oU7D5NgvGzA40=;
 b=MOzpRiB1GlG55lsP1XLqXf4PuLr6sWYeUmIkuRrHxcGQ/o+Ln7LLIatj2KIRk0JQ4hpkylKCAIWgyhCWk0X/QtUrbLp3NTXpijKf1OkUX2jvDeTk/dFeEq/A7wcB75VLIsjUmSik858B4MYlfzLMVodn53CEyIrFYgCdaID0bkLeDQKIhvZ5GEMw6fqLOMATfK8mWl7Jm3L965uTWsrdb45syx9isSxY6SJ1QnZq5VzL1TAMNK/mLThIsgaL0lpkR1YD2B3Z6k+SYiEBTqJpg4B/LKlMDeqJfo08U2n33WnEv5rY1r1AgGSm7UqHCV/E7my/P0YwK9FXghw99NH5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RCS0m2X6L/fUWpNoAWrHIhEpZmf/f4oU7D5NgvGzA40=;
 b=L4vwWONWc9P0sVFg7HrxEQGlL16IwCCMBiSbiKe9Ev8D9nXIHi5roK9okAsVsP/vF6wlomPiwHfLY1bOYp5oCMtiUT4feQQwxxf45B7DPbNeFzaV3KwIaOJ7FNeWCtTM7bjISHuhMdPRH4Kr304NwJHPoKT4EqWRS5RU4oAEzBs=
Received: from SEZPR03MB7810.apcprd03.prod.outlook.com (2603:1096:101:184::13)
 by KL1PR03MB7367.apcprd03.prod.outlook.com (2603:1096:820:eb::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 05:40:56 +0000
Received: from SEZPR03MB7810.apcprd03.prod.outlook.com
 ([fe80::2557:de4d:a3c7:41e8]) by SEZPR03MB7810.apcprd03.prod.outlook.com
 ([fe80::2557:de4d:a3c7:41e8%4]) with mapi id 15.20.8964.021; Thu, 24 Jul 2025
 05:40:55 +0000
From: =?utf-8?B?TWFjcGF1bCBMaW4gKOael+aZuuaWjCk=?= <Macpaul.Lin@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?Smlhbmp1biBXYW5nICjnjovlu7rlhpsp?= <Jianjun.Wang@mediatek.com>,
	Guoqing Jiang <guoqing.jiang@canonical.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "robh@kernel.org"
	<robh@kernel.org>, =?utf-8?B?VGluZ0hhbiBTaGVuICjmsojlu7fnv7Ap?=
	<TingHan.Shen@mediatek.com>, "joying.guo@mediatek.com"
	<joying.guo@mediatek.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	=?utf-8?B?SmlleXkgWWFuZyAo5p2o5rSBKQ==?= <Jieyy.Yang@mediatek.com>,
	=?utf-8?B?Q2h1YW5qaWEgTGl1ICjmn7PkvKDlmIkp?= <Chuanjia.Liu@mediatek.com>,
	=?utf-8?B?Smlhbmd1byBaaGFuZyAo5byg5bu65Zu9KQ==?=
	<Jianguo.Zhang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	=?utf-8?B?SmluZ21pbmcgSmlhbmcgKOaxn+e7j+aYjik=?=
	<ot_jingming.jiang@mediatek.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>,
	=?utf-8?B?TWFjcGF1bCBMaW4gKOael+aZuuaWjCk=?= <Macpaul.Lin@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"macpaul@gmail.com" <macpaul@gmail.com>,
	=?utf-8?B?UmFtYXggTG8gKOe+heaYjumBoCk=?= <Ramax.Lo@mediatek.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie0
Thread-Topic: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie0
Thread-Index: AQHb+iZWCG0KxKyzi0y0YhAzFhw1VbQ8fXgAgARJMAA=
Date: Thu, 24 Jul 2025 05:40:55 +0000
Message-ID: <7b730a61b45702b01dcef6ca4519906fbe8488c9.camel@mediatek.com>
References: <20250721095959.57703-1-guoqing.jiang@canonical.com>
	 <e2a58394-356f-4c23-bb98-198439cfbce1@collabora.com>
In-Reply-To: <e2a58394-356f-4c23-bb98-198439cfbce1@collabora.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEZPR03MB7810:EE_|KL1PR03MB7367:EE_
x-ms-office365-filtering-correlation-id: 02da1197-8298-480a-f2c0-08ddca74a8d7
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?VnE4QWQ2MU9BL2RWMCtSQjk0UVNodkVxRmpMQkc3ek8yajBtMWNVdUtqeEV2?=
 =?utf-8?B?MXJpc1VBNkk2YnBVSG9FSEV6T2ZyYitrUFNKeU50Q2JKMXdLNEIycXFzTnhx?=
 =?utf-8?B?MnpIM1lyYzRhNGZVMmJWODZ1RHMrOHI5NlJBd2s5YitmV3Mva21NdytvVjdq?=
 =?utf-8?B?ZUhUUmFuYW1VL2l5S0VldTU0Y090R01ZNTdHSlNsQVQzTUNFNExhb3E5MzdU?=
 =?utf-8?B?MjBraHRBMEQ3RHM1YW1ObUZrOVl0K3dma0ppdUJZWlRYQi9XRWxRWWNqQUJq?=
 =?utf-8?B?RDlSMG1rM25QRExpMVZLcThERFpJNnJFVzRlQzFQSDNDWU1aSnVoM2FacjBF?=
 =?utf-8?B?TEFEMHROQ3YrRWZIWGsxc2k5MVF0QjgxWGZ5NG5xaU1tTjExZlg5LzcvYlYy?=
 =?utf-8?B?UU0vREtrZnUwQ1Q5c3VUS3dtejJOUzFJL2l5OHlLdUxlSFdlMzBNOTVpZDdZ?=
 =?utf-8?B?RzlxclhZM1BrQ0dxblFvcHJJUUZ5Q1dXOG5TbTFVR25ER0Zqd3NuS3QzRG1F?=
 =?utf-8?B?SklSRUt4NitzVjQyU3Q4b090WVU5cGw3amM0VWNMUGxONlhtVVFXdmV6NlNx?=
 =?utf-8?B?VlFNa3Y4dUpja3FydGZQZ1dQWHpBYUp4Z1FIdzVSc1Uyejh1Y29ZbEgyQmdo?=
 =?utf-8?B?U29ObkJTZWhXN2gvaVJRY0RiWE9NM1lkL29CcktoL0xXLzRPWVcrWVg5cnFv?=
 =?utf-8?B?U1c4OGxsSENDUGVWcG50V1c0MzlVM3JVVE0reXdJaHhZaFFCdjVEQm5ZRWZ3?=
 =?utf-8?B?ZXl6eVJiL1VDVHRyYURFUCsrd29DdUtKWVdFSlVZRUVCZUlES0F3UXU2dUtq?=
 =?utf-8?B?SzV0bHhVSURKMld5SFZoalFxSVdMZ3ZYVXU2Z1YrbHpvaEl0VGgrdm5YWXB5?=
 =?utf-8?B?T3lycWR5aGd2M0VRU1ZjNlB5eGVuMFVibDllYi9Cazlmc1E1WWZidUFtYnlC?=
 =?utf-8?B?U2MvcWZ5eGJJVkRxbWxUa2lWVG5MRDB1TzAyNjFnZ0NpU2FWd0FNMmVmaDAx?=
 =?utf-8?B?OUk1NUVMR1gyZEVXQVlHQjhBOVd5V1VuYlVBZllwM3A5ejZCKzV0VkpZRWht?=
 =?utf-8?B?RUtoSUhMOEg4dENDMWs2ZnlSMENRNmVmd0dCanc2R0lKY3VyU2tmcTJ0VWtN?=
 =?utf-8?B?a29UU1FUZFFaTVdJTUhvM3FRcTkrUC94cHQ3dmxKZWhRVjJiTFBtd0lTNFpl?=
 =?utf-8?B?clE1WWpoOG91QnJFOUpCNzZZNGprMkgyUWZnNnh0NCsxZWI2WUpYaXJlRSs4?=
 =?utf-8?B?QzZzblo1aEtPVzNNOUFoanRjVUJmR2lldGZQbFBHQm5nS0E5czlyYk1yeW5q?=
 =?utf-8?B?bVlqNTg0ZUFRWlVzaDZwNUd6bXEycjdvYXFaVEQrdGlocmlvYmRFTmZVVHk2?=
 =?utf-8?B?M0JFRzJUc3hIeHdnMitJa0grZmMyeUorNkRKMWlWVFRkWUkxN0RROEIzRjdE?=
 =?utf-8?B?bUt4amRLeTRWdWlndnpCM09ycWFPaDJTeXBuWFYxZ21GZGZoQ1NaKzBIcUJW?=
 =?utf-8?B?Z3g1enpLbWFQNWdxMjJrU1p1NytrMS8wQWVpSU15dnFRYmd4TGZhajg5Vi93?=
 =?utf-8?B?Sm00eUZ6ZzYxNVlmV0U2WlRNWVZBWXo0YlRCZklZSkIwTWtwa0N1ZXoyOXFt?=
 =?utf-8?B?NHFMUkNaK0czcVJYR2RzdW5aRjlpdGNFeGdROCsrVSsrd25yTzdLZVRxWVFZ?=
 =?utf-8?B?cHQ5QkdoRTZEdmFPc0hSYUIva0FwOXlNYTNxcXA2UUNFKy9LVXl5Rm9VNjhR?=
 =?utf-8?B?T0h2amo1RU5DUmlTZXBVeUU5VkhMVjVCNE9aQTFNVlk1VFZScGpCQVkreUQ3?=
 =?utf-8?B?UVlRbWFMYWFQUUtGNVlKNENrY3hVNFh0a0V1S3VwWm1nNlRzdVRxR3FUaWEx?=
 =?utf-8?B?OHdaK2dFeCs1R1ZWNFl6cnlqWDgyQy9aYjRPRjdRdWJic2JrK21HdGFlMnVV?=
 =?utf-8?B?RW5YeXNicWloMU94VkdnRGx3RWx3ek5NR21nc1I3dU5QcWdjUzBwL2h6V05O?=
 =?utf-8?Q?gK8BTg7Zcmi2NlJ/Nug8UFXEPjAPSs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR03MB7810.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXJnTTFsYWEyWVBhOXNJeXFyemlsNU9pOGVoOVd0RzFPVE4xMTd4RXZLYWRZ?=
 =?utf-8?B?ZUhRY3hKeWRjcGxNbmxTVlozcFIzNXBNQm1zZktJYlp6US9qUW1lV3RFSjgr?=
 =?utf-8?B?ejlpVks1TlZtNGJnV2tJckRIVFp2ZXpsTGlqelpsc29hcm9Odi84d1g0ZXo2?=
 =?utf-8?B?aWFJN095WmorS0k3TXF4Rm01V05oUUN2cFp0UjR3VFo4VDBUd1did1ZlbTZz?=
 =?utf-8?B?RmprSnJmTE96NkNoZ3ozTjEvTHB6MnVwR2prUURRckd6QVdXakoyQnJqZGdr?=
 =?utf-8?B?Wk9kWEZ5QnpmR1lIazVVSE50NVI5QW9TaVRPdFFnRnNpdGNRNXg3MVhjc3d2?=
 =?utf-8?B?elIzNitnU29TbVNYRFkxNnQ5SU5DQ2R5YVlhWllRdDhvRGNyc1I5dFNCRzFF?=
 =?utf-8?B?alROSU82OXlFNll5akRVenN1cDhmYVdNWjdXa3Z1bDZxc1A1RXVJSTMwSTdk?=
 =?utf-8?B?OGFGSXc5S1c3eGtyNy8zZUVDak0rZE9jYzBXS2lsMlkrOE0wUVU4ZENYamNW?=
 =?utf-8?B?REFJNm1SeUkwSWp3eWdlRGh6NkhRQnFSa0VqQWhTRnpCWkIrdEhpTVUxT01l?=
 =?utf-8?B?TTR5ZVY4bytkaUxNTFFoVmpMaWRtUHhkb3lnNXdJWTViWFNUVTBHVkJWR3J1?=
 =?utf-8?B?N2dVZDkxN1I2SkYyZFJKM0UvQ3BWTzc3UHVRaVlpT0w1Qk9LVXd6ZjlINllF?=
 =?utf-8?B?WjhYY25wczlQWHhlNXYwSlVVRDV6TDBWSXJmOEVOcXhkRjZnV1lyaDNLNkc2?=
 =?utf-8?B?WkRIdzVIcWJqVmU2ZDJyNTVNakRsdDN6VENoZnYveHgrVytiSGZocEp4SW1l?=
 =?utf-8?B?NVpUYjNUUmExNjNuODV4WlM4WW1kZGQwRXdUbDlqZzVleDNZMStVR2c2dEpM?=
 =?utf-8?B?NHF1RE1NL0VOTkRSZi9KREV2ZmUzMlE0aWg2SkNEb25KYU1FK2QyYzhrZHdh?=
 =?utf-8?B?NFlyNTBRblQxTkRVVDNnMkpuV1FNdW9rdkRpSCs4Z3FQR0REUmtIaVFLRFhq?=
 =?utf-8?B?OVZNRnhEZzJSeVhIMGNOMng4MGhMNzhTTGdWcCtEWCtzdnI5ek0zMTVZc24w?=
 =?utf-8?B?WEI5QU5McFlSNWx4N0hTZklRY1lBMldEWlhMSFc3cWVNRHIrOWQzM3NtOGFF?=
 =?utf-8?B?YjFzN2FIMGUxUCtTaG9rODhTMXprdzJIN3pBQ3N4SnlacjJiUlpDQXNocU1r?=
 =?utf-8?B?QkpYL2N5UkdWM1VRdDBQWFFmTW9Hcy84UmxLU3FyMkplVGpvL1NLaG1vb2FC?=
 =?utf-8?B?OTdyZWljSUJmekdzTzBoNVZOM2lNWmxUV0ZoenNVeUNjcnRWRGErV1JjdWVk?=
 =?utf-8?B?ekd6NFRxMUlBMWdjcENQWTJTTlhIUHU4S3MvQi9zcWl4Tk5pOU9FbnMwSnU5?=
 =?utf-8?B?aWM2ZTNyc3cyZ2NaU3Ntb0JtclZQaUo3T1dUb2pQaWRESW56T01nSUt6dkpn?=
 =?utf-8?B?ZnJUb0pwV1lxWG9CUFRDQ2hKaStuVmIvR2pBeVRGQmt6Q0E4ZldWbTl2TjhT?=
 =?utf-8?B?NGtNQW1YV1dKeU5PRGNzU2w3MFpxdEtWQThrVEtwanNDYW1KRHpSVDEyRG9u?=
 =?utf-8?B?V20ydytPMUVoLzBnTjRuL3d0T1pyRC9HV2szbk1Da2pkYWdaK2VvRENjMEU4?=
 =?utf-8?B?MDErcit3RWNWVTMrODJ4cDRlcG12M3lrWGMvNmhnWjh1bEVFY01JbytDV21r?=
 =?utf-8?B?d0t4U3pCUHJQVXU3NWs1bXVObFhsemJ2TXVtcDZOYUk4SUppbERMcTQ3b2p4?=
 =?utf-8?B?VnVNSCtqeU9BUSt2dGV5cW9ZcUNwTElGODU0ek5UOWUxNGtHVk8wTC9BcFVT?=
 =?utf-8?B?a3dqWjVBSFVHeHJtdno3eElDNWNnNHpBZkZ5bFp0b3d4dmlXZHNhSVU2blNQ?=
 =?utf-8?B?RlhmeDNFcnVvbUdQaTVCLzZSN3U3Q2RTWWNEN3RqSUdTTUlOSklUMEthckRT?=
 =?utf-8?B?VnFaUmhHMnFlaitRb3E5S2RKOHZ1MzlFMHpuK1NnNm1XRlp4M2VQM0c4bCtx?=
 =?utf-8?B?WU96WU5yYzVEcnN3SHZlYlFRcDhUc0J6am1aZk9JWW95ejVZb2R2ZVYxVklp?=
 =?utf-8?B?cWpVNEQ3cWFkU1dxa05tUDdkamFXd2RxQmVYVUxBOUovT3ZGT21FUDZ6NWJQ?=
 =?utf-8?B?RW5kSGpXY2lxakFRNmlCblNza0duS2d6TDR3Yytoby9xMlRKWFVienFLMzYr?=
 =?utf-8?B?b3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <63C34FC39338774789F1438D8BA5CA84@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEZPR03MB7810.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02da1197-8298-480a-f2c0-08ddca74a8d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 05:40:55.3792
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: acyKOeXNahewwIEICUOinIehJ+vdMl58syeIfth9vo02DG/PdqQRUUPFG9utJoGt8hZ7almJkD1f24Oiui0Nq2Eh8R6m4fIyZdjzpeIdWJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7367

T24gTW9uLCAyMDI1LTA3LTIxIGF0IDE0OjEzICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gDQo+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBs
aW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsDQo+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBz
ZW5kZXIgb3IgdGhlIGNvbnRlbnQuDQo+IA0KPiANCj4gSWwgMjEvMDcvMjUgMTE6NTksIEd1b3Fp
bmcgSmlhbmcgaGEgc2NyaXR0bzoNCj4gPiBXaGVuIHRlc3Qgc3VzcGVuZCByZXN1bWUgd2l0aCA2
LjggYmFzZWQga2VybmVsLCBzeXN0ZW0gY2FuJ3QgcmVzdW1lDQo+ID4gYW5kIEkgZ290IGJlbG93
IGVycm9yIHdoaWNoIGNhbiBiZSBhbHNvIHJlcHJvZHVjZWQgd2l0aCA2LjE2IHJjNisNCj4gPiBr
ZXJuZWwuDQo+ID4gDQo+ID4gbXRrLXBjaWUtZ2VuMyAxMTJmMDAwMC5wY2llOiBQQ0llIGxpbmsg
ZG93biwgY3VycmVudCBMVFNTTSBzdGF0ZToNCj4gPiBkZXRlY3QucXVpZXQgKDB4MCkNCj4gPiBt
dGstcGNpZS1nZW4zIDExMmYwMDAwLnBjaWU6IFBNOiBkcG1fcnVuX2NhbGxiYWNrKCk6DQo+ID4g
Z2VucGRfcmVzdW1lX25vaXJxIHJldHVybnMgLTExMA0KPiA+IG10ay1wY2llLWdlbjMgMTEyZjAw
MDAucGNpZTogUE06IGZhaWxlZCB0byByZXN1bWUgbm9pcnE6IGVycm9yIC0xMTANCj4gPiANCj4g
PiBBZnRlciBpbnZlc3RpZ2F0aW9uLCBsb29rcyBwY2llMCBoYXMgdGhlIHNhbWUgcHJvYmxlbSBh
cyBwY2llMSBhcw0KPiA+IGRlY3JpYmVkIGluIGNvbW1pdCAzZDdmZGQ4ZTM4YWEgKCJhcm02NDog
ZHRzOiBtZWRpYXRlazogbXQ4MTk1Og0KPiA+IFJlbW92ZSBzdXNwZW5kLWJyZWFraW5nIHJlc2V0
IGZyb20gcGNpZTEiKS4NCj4gPiANCj4gPiBGaXhlczogZWNjMGFmNmEzZmU2ICgiYXJtNjQ6IGR0
czogbXQ4MTk1OiBBZGQgcGNpZSBhbmQgcGNpZSBwaHkNCj4gPiBub2RlcyIpDQo+ID4gU2lnbmVk
LW9mZi1ieTogR3VvcWluZyBKaWFuZyA8Z3VvcWluZy5qaWFuZ0BjYW5vbmljYWwuY29tPg0KPiAN
Cj4gUmV2aWV3ZWQtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vDQo+IDxhbmdlbG9naW9h
Y2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+DQo+IA0KPiANClJldmlld2VkLWJ5OiBNYWNw
YXVsIExpbiA8bWFjcGF1bC5saW5AbWVkaWF0ZWsuY29tPg0KDQpEZWFyIEd1b3FpbmcsIHBsZWFz
ZSBoZWxwIHRvIGFkZCBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyBuZXh0IHRpbWUuDQo6KQ0K
DQpUaGFua3MNCk1hY3BhdWwgTGluDQo=

