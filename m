Return-Path: <devicetree+bounces-135857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A1AA0281B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A75D7A1236
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D528B1DD526;
	Mon,  6 Jan 2025 14:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="QHguU8AS";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="KgYNOZVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664A31DE4F6;
	Mon,  6 Jan 2025 14:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736174082; cv=fail; b=ALpk5t05fl8oG5H781Pp7/nSOOgZT2oEY/mzKV1LOsr9AKLMlq4UzKmTDce+k04Ixngj5+5wDdFkdGhjruKaoKXkt2CJ4wqjiOEJ97muvyeBuFjRPFHvb4tic7E3akN5Podmfa/OPpcOzc7Cyd6sFgOEh7nY2nHa1fjuk0tUdHY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736174082; c=relaxed/simple;
	bh=8sXsptbPLaoJCIKLvXN3hdwK7O9DTMopRTH+X+UKdYI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=nEcESTYdqWFw2fs9YNYzxl3e6UapxuRFY4TYfBYYXXGJr1c3ufZNWATI9l3neBPn8eSPZ+aBqCYHX5hU6WItyNKozM09qXbzNCgOypAMiwI8NjQzHgWFUPbT1NvC+rDE/kOJVsvOdxTfZlNoz3hJ2MqQQ0RVwRv+louud3unUwQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=QHguU8AS; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=KgYNOZVn; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 58dace50cc3b11efbd192953cf12861f-20250106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=8sXsptbPLaoJCIKLvXN3hdwK7O9DTMopRTH+X+UKdYI=;
	b=QHguU8ASKIddUNfNFDgc1lUSeicZDxRCvjCr1RE2yyA/HG1Ov7Nxdo+3dWp9z7Z23AHASC3Ec8eJuSepYt+o+MXxwzUbFBFz5PNe/36LIjraQis8FYty9GvxIyNY7NGYYczUu3Z3Wq1Xs120MC4inZ8Ebk0nk9M4+mOxNa6aJGE=;
X-CID-CACHE: Type:Local,Time:202501062234+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:22a636fc-baf0-4451-baf1-8f7c1f35eb42,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:1ca97137-e11c-4c1a-89f7-e7a032832c40,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 58dace50cc3b11efbd192953cf12861f-20250106
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1149328939; Mon, 06 Jan 2025 22:34:33 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 6 Jan 2025 22:34:32 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 6 Jan 2025 22:34:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/9qskJibc1ISy4sNL333JRXodRZT7hg9T/pxhzJgiBBQPkIBg7dvFr7EkjnSbOK6jM5aBJmtlSN1Ca+hYGvib7bTXXiYo4mdfxPsowwy5ClURCLT92+l+1uN/mhUqtUbpBS/r4vOg9ujpNdAHXRO2iVWqWlWVOrInlltr3KUOf4pZ1uMG2Ztjqe0fFJOHrmW6nkip/OGVlfhsXnJqd+afUOFG66aMdzca+bGscciOSqHmnajJtZQkD2lQ2VnsA6Se1vlFnUEVee4xJeZOz6AF3z+kTCyOSWfgEELLzNag7IxPGzZHsQ14goM7Wqt3BFjITTP0RbH3en8przTFUNIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8sXsptbPLaoJCIKLvXN3hdwK7O9DTMopRTH+X+UKdYI=;
 b=J7fFz5Xn69vT/ghrKufZ5rGcdCtjxPRxf3wjf17ti7yP/36C0Agwok5HHAgoeG8fBSUjdJR+cXqLmj6zcH+TmFLLUa5Rmjgqb/Czw6yankff6Fie1eScTW9tOKPZXpXdbv04+/29WFnZwme6lZIPikME077rSrh+e5ia0lAVd+iASgBz9y3onDcPskVQglLMMLp5Xz5AWj4z+dTAXgoIgWPdDl9D2/e1RaP4mWkl5giuKwC/25lD/fEgRazwGRxsmJX+sXJqAXIqf7pX8V7h5UJmuSP+pP0EQDqa7bORgBws8588qT8b9Fv+hZ08b64QHobCL/Zk55VyyBUsUEtTHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8sXsptbPLaoJCIKLvXN3hdwK7O9DTMopRTH+X+UKdYI=;
 b=KgYNOZVn6IUcniHnG6pVCX7xMCmFTYqjEgvd/BjaVIcOxeaoeYUEdzbEKHLYdTAnIeDHKgmyoEJbbD/vPlqKPz8VA8ijjhNHyI1QWRJA++6o28iJQULhYhA6HbUXSZyPXUormYP8Pk8TDm2tPshbj0KaALD1BcN8aDY+ERMBQKk=
Received: from PSAPR03MB6236.apcprd03.prod.outlook.com (2603:1096:301:9d::13)
 by SEYPR03MB7725.apcprd03.prod.outlook.com (2603:1096:101:13d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Mon, 6 Jan
 2025 14:34:30 +0000
Received: from PSAPR03MB6236.apcprd03.prod.outlook.com
 ([fe80::2b28:30c4:61a8:20f6]) by PSAPR03MB6236.apcprd03.prod.outlook.com
 ([fe80::2b28:30c4:61a8:20f6%4]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 14:34:30 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "robh@kernel.org" <robh@kernel.org>, "vkoul@kernel.org"
	<vkoul@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property to set
 disconnect threshold
Thread-Topic: [PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property to
 set disconnect threshold
Thread-Index: AQHbP68py1rCfJL+MkWe9w25qfqE7bLJQYmAgEDPUYA=
Date: Mon, 6 Jan 2025 14:34:30 +0000
Message-ID: <fb40e000d31c3c809a73f62e3e8dd36ca2b6de7a.camel@mediatek.com>
References: <20241126025859.29923-1-chunfeng.yun@mediatek.com>
	 <4901ecf5-8cd1-4d82-a240-f56794f46429@collabora.com>
In-Reply-To: <4901ecf5-8cd1-4d82-a240-f56794f46429@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR03MB6236:EE_|SEYPR03MB7725:EE_
x-ms-office365-filtering-correlation-id: 01089905-d8f4-4872-7094-08dd2e5f3b0b
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ejMyQnhyVlAvTEo1SFVSMHJuZG9FNWk3KzdWdzBydnpJcmdEWExZRkY5L053?=
 =?utf-8?B?VjE4dXdzN1FxdW1NWU9KNEMwa09FejlqZHVENll2UC81Z2IzR0daMkZBejA1?=
 =?utf-8?B?NVVpNzZqY2FnazhuT2dEZmdSZTZyYzJxUUVOcVRmUmRZc0VCY25iUUJna3E1?=
 =?utf-8?B?WFM1VFZycjEzKzRBZXM4ay8vNVJRT1pCZ1J1K2FWMUx3SzdFNUJaVEg5WUsw?=
 =?utf-8?B?TlBaUWd1TXdOMDhTSi9UMGhQRVNJY3MzYWtsaFh6RW04WDR6WjVxV0c0NFJY?=
 =?utf-8?B?QVh5TXhJWTNacW5RaUFVOXRON21JcGc5TFhISEdaY0dPeUYvY1ZZMlFHYXFM?=
 =?utf-8?B?a2JBOHVmNEZIVk1GVEFZbEhsUlp1ZlhaTlU2cjk3a0RpS09yK2VZUDZFcWVy?=
 =?utf-8?B?WVZNYVV4YzZ5MWs1UFBWNnJ6bnloRHFpQWcwKzlPQitFNm95aTM2ankvVVFh?=
 =?utf-8?B?Qm8vYWxLNWtqTlV0TkFMTkJtTXZyMzFsK0hGZnF2d01OaW9NZ1owaUFMcitS?=
 =?utf-8?B?Mmw3bmo2VDYveFExTFA3WHV3Yzl6bW9Nb3lPYlNSSUVra3BFVGltZ0R4eHA4?=
 =?utf-8?B?N3gvYVZTRE4vS3RoR2NJZHVaRElPZmwxZzJoNEdZaVp6TVpUQ0VQcWhBU21o?=
 =?utf-8?B?THJ0SjZHdU44TDhjQTY1R0hWUFY4eFg1M3loWTA0bzB6SjhMaHJteUFtc2dm?=
 =?utf-8?B?eUlUdE5oOExCL2lxR3dMcTNjakk4TkE1RGppeGZ6Q1BNcVJsOThIWG15N1lB?=
 =?utf-8?B?TStEOUxSUFNGVTRybWtzeU5IZXhGTVg3ejRoZG1LZGpaN3U5UzM1clpBNHVY?=
 =?utf-8?B?QUF1WjV0UytaQm5FcktwMzdnUVNSeHNMU2g3Z2NDcWwxV0JkVHVuQlhuaFVU?=
 =?utf-8?B?emlNQWkyZEg3Q3psdDlTRTltcFd6aVBHSzE0elBKci81OVU1QUpDelZ6TE84?=
 =?utf-8?B?Sldya0UwemdQazNmamUreUdiZmlETCtvT21ySDJSWHhuY3U1U2FZbnZNb2Y4?=
 =?utf-8?B?ZCtLZGMwK3orUGxHK1pMd2EvZ2dQMkN2U1FPTm54UUVXbE5VUjAzeDd4WTNj?=
 =?utf-8?B?dDVGK2tpaWw1cnJpalByTW5vWnA5RE9zQ0hNdTN5clN0cEVyTWlFUG5SZDlT?=
 =?utf-8?B?Rmg4MENSNTRZOU05M2dTR0RJOUVFYVo0cmljRzZvTndmWHhCWUVPOTRmb005?=
 =?utf-8?B?U1RnbE5SR0poTkhtdmV1OG9zSktXait5eG9vZFhnZE1LRTE0WDNQZWNrMFJQ?=
 =?utf-8?B?SmY2REN4NVhuc1ByamR6L0tybWpFWjEyRkNocTNVMXN0REVlck5Td0Zidld4?=
 =?utf-8?B?UC96UlFEU1FMVGFPQ3VCbXhpaFVGcGJtQ0lCNTJYZHc5eVByVzNpNzVnTjBX?=
 =?utf-8?B?NlZIcnhWQ3lnZk5reEErR1llSGt1NkZ1QUdrdUE0R1RFZm1NWnpYU2hRQ0Mv?=
 =?utf-8?B?YTlrRTQzL2t6MkFIOEtPcXlrVVhxSHFNQmxkLzByZXNZODlxeWVxaFh6dkVJ?=
 =?utf-8?B?eHdsZTdZTzRXUUhmdEMwZ1hIaTZrM3B3RmMvckJISURzT01UVmhqS25ic2RQ?=
 =?utf-8?B?QUtPU0lObHhwSDY1cUh1Sk1aUHF4am1xRHY1OVBScmlpMU9rWUJodkcvd2l0?=
 =?utf-8?B?R0x6THloNTZlU0RFeEQ1UGFwVjM5RVdwMVI5UGgrRTZ3NlRPK3BBcnFjN2xK?=
 =?utf-8?B?R3Y5LzhWRG5PNlExRmFhRUV1MWZmaTVCTU1QYmYzb2ovRHJLYnpZaXZUYVdH?=
 =?utf-8?B?ZENtMGN1ZEN0YTBmUlB1ZWlGL3M2MCtHMEM4UHlzdlVqZGpTelhLa1ZpUHN1?=
 =?utf-8?B?UTJUSWZLcTIrSjhSbGNpL0pjOWxQL0RwN0JXKytzdlBIc0FSa0RMVWxoQXFD?=
 =?utf-8?B?ZlVtSkhnN3BySmxNaUtMMWkyQ3JrdFp0b0wxZlRiK3ovcFNnRkxVM3dNbGhz?=
 =?utf-8?Q?I80q22Ts2VTW+YLYPje2TI2C3V7f+dZs?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR03MB6236.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnhoOVROeHhValNqMnc3cXBsano4S1ZiNFJwUWdaZnA3WkQ1UTlMSWh6NUMy?=
 =?utf-8?B?dDZOUU0vVEhDb1lEbmZGQkd5b3Fsa3ZSbFdDQ0lSa3g0OHQ4eU5TbXNrYVd3?=
 =?utf-8?B?MytaLzlwQXo2RDZaNzIvdGdsOE1nVVZsejY3eXllVE1UTWhsdEtvamNoUkor?=
 =?utf-8?B?Q0ovSTRINVphQXBlVmc3NnlYNzFJbmRQWktkemNnVmt2cjlXN0taOHFKelAw?=
 =?utf-8?B?bzFNVkxwUUo5S00rREFYUWt0dXB2WnZXMGMzNGw3bUdhNC9ZU09xTFhZOWNH?=
 =?utf-8?B?am1Eb0RtWGhhdVlWcjJwSGlrT0ZXZDRqMTMvNWhrdDYwOUFkaFpmcnU5dTdt?=
 =?utf-8?B?c1BLQUttK1VFSHVMVHZERVhOT0wzV2pIRWp5ZW0yYURtNXJ4eDBxZCtqeWh1?=
 =?utf-8?B?SFpnM0NiNGUzNVcxOFRselhBUmRKSERTN2JYMDJ2YUgySGtHbXpxVXNiUWxN?=
 =?utf-8?B?WkJjZVlzQnB4VGxhRGNlMEVqOHhoZlExL0lMMjR1Q2Rlc3VCaGF2dlRzYVRU?=
 =?utf-8?B?OFM0MmNUQThYTFJQK1VpTVN0VkxEVllqbUV2TXhYSlJOeFBOdXFRVnkvMTNV?=
 =?utf-8?B?Uyt3bmRNMUdNT29jMTZuVzBiV0hCK2dtZEUyY21STEtYMDVZWVUrRUl5bFNk?=
 =?utf-8?B?R09VUWNuQjNFVWFnSWZBdUtpajhWTVlpWnluUXlPSUJXWSs5K1BDK3dFLy9E?=
 =?utf-8?B?OWVBREVQYmdtVHplNzVxamV2MENpTDFWRjd0MDZBM0xEMXpOeklnRzBTb0sx?=
 =?utf-8?B?TnAvSk1qdlRmQzdVbDFKTXVQMFFhdDMvak4zMFJmNG9OeUJ4ZTQwb2tmWXk4?=
 =?utf-8?B?SDE1NmQzK1dsR25oeTlBV1hjVjYzRmk3eDhmcWNmYUF5S2JPcmlqS0drVS9y?=
 =?utf-8?B?eW0wbzRkSXZNa3MvTHBncWZnVUJOdkRweEFKUXM3LzJoM1lSTUFOckhzbmFE?=
 =?utf-8?B?NTE4WVZuM3ErbE5IRmJhQVFrSytVTUpRSE1sM3pPMkN4L2VjT2M5RzlhU3ZN?=
 =?utf-8?B?cXVIQ0h0UktOaURBdVpGcnZyeFpkZjFZc29wOGI3RSt5SWxDQ0xvU3FTWXpl?=
 =?utf-8?B?ZW5LUWwvUk5VZEtNbHA1S3ZYR00zOHh5SnAzUGR1eHRiVnhUUXh0Uk1ZRTJD?=
 =?utf-8?B?dnlnVGhZcFN2cUhHZUV5Q3FrVExFU2FLbXlYSFRZQjY3L2NlNC92YjlFbHhX?=
 =?utf-8?B?Nm1paXFqTjd6SS93K2o5VlJIVTRNbUtJU3UxbUlIVDU4ZGxobTh3cVNSNjVQ?=
 =?utf-8?B?WWVaYjRVY28vNkNKWFoxTUt2WE9wREdVQWxFY1NWUFB0VCsxN0xsWDhtUFAr?=
 =?utf-8?B?L0JHdFFFTm02d1g1VmVsam9FZ2F1bDloci9qYWt2L0FyOFJSbUNtT3NQMkU1?=
 =?utf-8?B?NzJDQ1dCNVFKb2J4cVFvV2ZaWEh5WFVOUVRHTXZnNEdNTEN1QnFNdlNvamZ6?=
 =?utf-8?B?T3FISkp1TC9lbEpWcU5wazhxTjdlaFRUdEtnOVMrNUxXb1lWaGZ0WXVocWsy?=
 =?utf-8?B?eklBeGNlRzlXYktoUGVaYUlKN0VkMnlxVkhFNUx6WGoxcHNUMkd1eDlzTW83?=
 =?utf-8?B?M3hHSVFBUEp5Y29lUEY4Rk1ockwzV3V0ZitJN2tsbjRVRTNTY3IyWHVXakxK?=
 =?utf-8?B?WlBvOHo5WDBwS3NzRWxDV1kzQ3VENmZUV1VkemVON29CQkZTV01hTjNiVjNY?=
 =?utf-8?B?SGF1U2Nqa2RhenJYNTZsOThRdTdRY1MyRm9Eb3gvQndETXV5U1lFK1dTQkk5?=
 =?utf-8?B?Z29scEFqWm1lejRlRStsaFIvTWRzZndYQktDVk4zbVIvdFpTanJYckdxcDFV?=
 =?utf-8?B?VVBsc1IzaUx0WlhQOURoSUJzMXF1WWNwckV6TmR6RXlSNkkvMnpWak5Femla?=
 =?utf-8?B?eDJqdHpNYVVYMFI5bzNtSHRtZEw5SU9rVndQNlNUdEwrSHNLNTJneHZhUTZr?=
 =?utf-8?B?VmhhSjVON1l4eUR1bWEwK29IUjF2a25DeTA5cnFuR2haNWQrbzQzeGZWUG5Z?=
 =?utf-8?B?d2prYmV0OUVkckRzVWlCRFNjRndLOTBpQ05vYkpGMkt6ZGh3VTkra2paMlJS?=
 =?utf-8?B?cHNMcm5UN0hDVW9pTitoVUJrZ2xLdURkU1VOMHByMFI3SVR3TFNEUFVNQUZI?=
 =?utf-8?B?NmNQWklNUEtuM3V6bFpKTHZpRTFsbE51OHk0TkdnY1NTOWxES3hMcHlOU2hJ?=
 =?utf-8?B?U2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <77A55F56178E664DA8F28D061CE6F71F@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR03MB6236.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01089905-d8f4-4872-7094-08dd2e5f3b0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2025 14:34:30.3521
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8MaMseCeNfRuDePaQCqaq796bzrqRAUQTIHPZhYTmfqBGp/KT/CV4MuMmt+JBiVxbNzZIUSD85MABTyGfBKP00+XoM1WlvDRVDfwARRH9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7725
X-MTK: N

T24gVHVlLCAyMDI0LTExLTI2IGF0IDA5OjUxICswMTAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtz
IG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwNCj4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRl
ciBvciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbCAyNi8xMS8yNCAwMzo1OCwgQ2h1bmZlbmcg
WXVuIGhhIHNjcml0dG86DQo+ID4gQWRkIGEgcHJvcGVydHkgdG8gdHVuZSB1c2IyIHBoeSdzIGRp
c2Nvbm5lY3QgdGhyZXNob2xkLg0KPiA+IEFuZCBhZGQgYSBjb21wYXRpYmxlIGZvciBtdDgxOTYu
DQo+ID4gDQo+IA0KPiBJcyB0aGlzIGEgYm9hcmQtc3BlY2lmaWMgcHJvcGVydHk/IElmIHNvLCBj
YW4geW91IHBsZWFzZSBkZXNjcmliZSB0aGUNCj4gcmVhc29uPw0KTm8sIGl0J3MgYSBjb21tb24g
cHJvcGVydHksIGFsbCBTb0Mgd2l0aCB4c3BoeSBjb250cm9sbGVyIGNhbiB1c2UgaXQuDQoNClRo
YW5rcw0KDQo+IA0KPiBUaGFua3MsDQo+IEFuZ2Vsbw0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHVuZmVuZyBZdW4gPGNodW5mZW5nLnl1bkBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4gICBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLHhzcGh5LnlhbWwg
fCA4DQo+ID4gKysrKysrKysNCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0DQo+ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L21lZGlhdGVrLHhzcGh5LnlhbWwNCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWsseHNwaHkueWFtbA0KPiA+IGluZGV4IGE5ZTMxMzlm
ZDQyMS4uMmUwMTJkNWUxZGExIDEwMDY0NA0KPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWsseHNwaHkueWFtbA0KPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWsseHNwaHkueWFtbA0KPiA+IEBA
IC00OSw2ICs0OSw3IEBAIHByb3BlcnRpZXM6DQo+ID4gICAgICAgICAtIGVudW06DQo+ID4gICAg
ICAgICAgICAgLSBtZWRpYXRlayxtdDM2MTEteHNwaHkNCj4gPiAgICAgICAgICAgICAtIG1lZGlh
dGVrLG10MzYxMi14c3BoeQ0KPiA+ICsgICAgICAgICAgLSBtZWRpYXRlayxtdDgxOTYteHNwaHkN
Cj4gPiAgICAgICAgIC0gY29uc3Q6IG1lZGlhdGVrLHhzcGh5DQo+ID4gDQo+ID4gICAgIHJlZzoN
Cj4gPiBAQCAtMTI5LDYgKzEzMCwxMyBAQCBwYXR0ZXJuUHJvcGVydGllczoNCj4gPiAgICAgICAg
ICAgbWluaW11bTogMQ0KPiA+ICAgICAgICAgICBtYXhpbXVtOiA3DQo+ID4gDQo+ID4gKyAgICAg
IG1lZGlhdGVrLGRpc2N0aDoNCj4gPiArICAgICAgICBkZXNjcmlwdGlvbjoNCj4gPiArICAgICAg
ICAgIFRoZSBzZWxlY3Rpb24gb2YgZGlzY29ubmVjdCB0aHJlc2hvbGQgKFUyIHBoeSkNCj4gPiAr
ICAgICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzINCj4g
PiArICAgICAgICBtaW5pbXVtOiAxDQo+ID4gKyAgICAgICAgbWF4aW11bTogMTUNCj4gPiArDQo+
ID4gICAgICAgICBtZWRpYXRlayxlZnVzZS1pbnRyOg0KPiA+ICAgICAgICAgICBkZXNjcmlwdGlv
bjoNCj4gPiAgICAgICAgICAgICBUaGUgc2VsZWN0aW9uIG9mIEludGVybmFsIFJlc2lzdG9yIChV
Mi9VMyBwaHkpDQo+IA0KPiANCj4gDQo=

