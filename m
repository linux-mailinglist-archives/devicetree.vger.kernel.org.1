Return-Path: <devicetree+bounces-240886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E95C77255
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 04:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 68D7D4E34CC
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 03:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147F723D7EC;
	Fri, 21 Nov 2025 03:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="ZzbUe5Jl";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="AZ2gZxI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4E82D8776;
	Fri, 21 Nov 2025 03:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763695239; cv=fail; b=DBgFDrOYA986dzT7dRFSYBh9neS9Feowl9SeI4O6/Tz+LPUW4UFMCnRstpU+RRCR3EGqXJBjgCdVSPfLpNx2Kz7QZE7eTsCUaOpMkYTeIeCxkIA9MTAGVY7CLnZdWlX8b+Zzrjc5x1ZMi/nU46sDMLQTlARSBoUFzeEP9IWsMtY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763695239; c=relaxed/simple;
	bh=TTm7unDhHvJCDyL7cSV20CSYqByWfKhqC/UM+eNS3N8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MXcxCZoZqwq32S8V4YkQvU0uOipHQsNLeWC6+wF4AramIoK447kgvsU6Snwnf3F00hZeKLMMlJ3hDHsr4Yw8B/ckdEXV+cJFR22D0wLKE6hmmSAHegVyyYlzRBoYk6u5qTveVdJFgmfUurTXIvZEotCb1i5AbchP0NSD5BG76nY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=ZzbUe5Jl; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=AZ2gZxI0; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 0a0d7202c68911f0b33aeb1e7f16c2b6-20251121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=TTm7unDhHvJCDyL7cSV20CSYqByWfKhqC/UM+eNS3N8=;
	b=ZzbUe5Jlim2W5eeziRQmhYdjKi9+Ec0AW3Q3v9oDNkUNJi0ctrcMEPgwoyUMyLX3KJzAjt6CwGs3MiZdDfNr02oGH+Y448FbUvRUHa2wjtOKEU7avJRQvsKt/p134I6DkafDn/3xjR1KJ867ATIr00MIGriJu3VJpEoPcOA39y0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:af705cd3-153c-4ab8-b392-b6379df5b207,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:c5150abb-0c02-41a0-92a3-94dc7dc7eeca,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 0a0d7202c68911f0b33aeb1e7f16c2b6-20251121
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw02.mediatek.com
	(envelope-from <ot_shunxi.zhang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 211640839; Fri, 21 Nov 2025 11:20:32 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 21 Nov 2025 11:20:31 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 21 Nov 2025 11:20:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=enzL3q4wIGrS+sX6VNs2b6/0/LWJnLnp2MyQxkIeg2sGbbM90OjouR8lCJqrAwdMd9tRSgr6/UDkRKuVTxgB8rAQVdf4PVYDsgJ9LaRTscIDpkvZhsekJSUUpUhXDqFe9zmUPdaUll5cljgco2VVvW64GzBHQ+gPi85HcMPNqkBM66LFjVE52rpOS1AvhKOkDhYm98RYXxYv4zgLa8fO0l9MSI/VqqW8KAO24v2k3Bf9tG9hXZavKvGO8qmKizOzgau9N8f7bGQf6ZdtM68dhtOtBKK8szTzHX2NRpTcX6x4wbXdjitTDimJIZQxoPCLepOutIuGFucZP/5SVwCZzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TTm7unDhHvJCDyL7cSV20CSYqByWfKhqC/UM+eNS3N8=;
 b=YLwVqQUdbedfWFkMKHb6pKJcyA9wZcCiJjoR9zgUCcQEwD8SXn41bLj8epYfcDw5iKALTj5YK0QujE+feXGAIG4zQBmaQUXtoXEZe/E0klc59KBWceuwAlln6MCuPLteNRZfaI5eN31+LkOgxWUnMAevszKMroKFSPYE+Qr6lw6JmwAvwr+SEqOGoXyXzjDBpsCSZIdEoRUyRaDq4bkVdoMS6xsZ2dzFQVS6mOEXe84ehxaWHXJ/wluspp4wb7n0dVtpHKn3Q0vWjzOj2ZOofv7vg3fD20Wb8NN2sOUJzXBAJv2OmGjfeyUAUXXtmPpvoZ8U0ppOReZw5OllSLco+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TTm7unDhHvJCDyL7cSV20CSYqByWfKhqC/UM+eNS3N8=;
 b=AZ2gZxI0qvQm1NqgpZscSL2OAhU/gDt5bnVUOt8YJzFdPJ0k05Gk6Cl9cHdj8sqb1mEt3exJc0TZunFXJKIoVYKRIim6gIzymTStLZhQq9xSQF2pxcXstrJeSbcUFKBgcwZse1+i8GKCvdyd9tBkPueYOAg7zxCp2eGCmvGThMo=
Received: from KL1PR03MB5974.apcprd03.prod.outlook.com (2603:1096:820:88::11)
 by PS1PPF948F3CF10.apcprd03.prod.outlook.com (2603:1096:308::2e1) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 03:20:28 +0000
Received: from KL1PR03MB5974.apcprd03.prod.outlook.com
 ([fe80::35d:48c9:580e:b5fc]) by KL1PR03MB5974.apcprd03.prod.outlook.com
 ([fe80::35d:48c9:580e:b5fc%2]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 03:20:28 +0000
From: =?utf-8?B?U2h1bnhpIFpoYW5nICjnq6Dpobrllpwp?=
	<ot_shunxi.zhang@mediatek.com>
To: =?utf-8?B?RWRkaWUgSHVhbmcgKOm7g+aZuuWCkSk=?= <eddie.huang@mediatek.com>,
	"alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	=?utf-8?B?VmluY2UtV0wgTGl1ICjlionmlofpvo0p?= <Vince-WL.Liu@mediatek.com>,
	"krzk@kernel.org" <krzk@kernel.org>, =?utf-8?B?SmggSHN1ICjoqLHluIzlrZwp?=
	<Jh.Hsu@mediatek.com>, Sean Wang <Sean.Wang@mediatek.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "lee@kernel.org" <lee@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?U2lyaXVzIFdhbmcgKOeOi+eak+aYsSk=?= <Sirius.Wang@mediatek.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/5] rtc: mt6397: Add BBPU alarm status reset and
 shutdown handling
Thread-Topic: [PATCH v2 4/5] rtc: mt6397: Add BBPU alarm status reset and
 shutdown handling
Thread-Index: AQHcWhfeXN3jsfD5PUyb6nAJ/nhsIrT7kjeAgADlKYA=
Date: Fri, 21 Nov 2025 03:20:27 +0000
Message-ID: <37dc95982cc37fbd78b8fee6c11b709d3171bd7a.camel@mediatek.com>
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
	 <20251120121805.6775-5-ot_shunxi.zhang@mediatek.com>
	 <44783f62-c8da-4c5c-a927-f9ce80df8e37@kernel.org>
In-Reply-To: <44783f62-c8da-4c5c-a927-f9ce80df8e37@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5974:EE_|PS1PPF948F3CF10:EE_
x-ms-office365-filtering-correlation-id: 8de0d91c-62d4-4663-c0e4-08de28aceb40
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016|38070700021|921020;
x-microsoft-antispam-message-info: =?utf-8?B?UUFETFRxVFRvWnhVZzdRN0NwRWRSdkpmZ1NjSnRhSmtZak9va2M3UzlYcUQ0?=
 =?utf-8?B?dDNGaFJoaW9KclBmRmNpL2Q3QzdEdkYwdDgxb2hlNUQ5SzBjNm90QmRqVUFR?=
 =?utf-8?B?VmNqN2tnTDc1MC9PRmxGMzlyekUvYXNOYkY1Y3ZrSDdEekZNRmVCUUZkV2gz?=
 =?utf-8?B?VWJrM3E1QjdzemROWGFDZ0hMd3VzQnIvSk8vK1ViMk9LMFNUUEdQK0tKcCt5?=
 =?utf-8?B?d3B1UDBtVlhNU2xkUllXWTZKRVcrNUZ2UEU0eHczZmhvUkozQitTOGUyVyt1?=
 =?utf-8?B?MzNac2RBNlY5VHU4TkhtNmRncStDakpxblg1YVh4TUVLQ1RHTDVsQzRXZzhV?=
 =?utf-8?B?aXJvV2NURDJYTGtuUWpLNnk0dnRnc2d3OGRHU29ObzVFeGRWODhiZkE5TEpB?=
 =?utf-8?B?SXgwcE5nQ0ZpSEJWMU91QzBuRkluUzlXeWhQeTJsOWIxbHlrVVROak80cGM2?=
 =?utf-8?B?RXRnN3hyTDV2a0ZYYldVNXVRdTZlemdteTdCRWdFVFcvR1dBUE4rSmlIRERK?=
 =?utf-8?B?NzNERlBzY0ptTzk5QjVyYWlpMFFXR3E1WWZFUlE2KzR2YTRDRE84dUc5ZUNW?=
 =?utf-8?B?ZzBkOVl0YmljT0ZVWFZ2Sk10RWtiRlhDdXJtZjdTOExGNU9NQzNRR0E0V0ls?=
 =?utf-8?B?SDdqdWs2VTE3enh4aCsrTXVEem42dG92N0FVQmF3NXFWU29BTWs1dzB3eUN5?=
 =?utf-8?B?STQ4QTZTRk5KZ25YUHR3ZitWd1JxQ3RieGt0bjVaNGcvV1J0MEo2Nm1DdHQw?=
 =?utf-8?B?TG5GQTd4THhIYnFiRGpsQmFsdjJBN2Yyd0JsMUZ4eEVKbnRBVTVaQ2NiNFZO?=
 =?utf-8?B?TEs5bDNoNnQxTEdWM0Zneng2OFBiWnpZVENkczNIV29GSjliZ1Uyb0ZQSVB4?=
 =?utf-8?B?SFFsR3ZsamE0MDRCaFI1em9NT0tKbTkxRHlVQnZTN0JvNEpvOVYyWXlwS3RO?=
 =?utf-8?B?N0JNeUxWRUVFZ2NTNEdkak85TUxkKzRIQlhKMWMzd3U2YmpoVkZWcVFYZzM1?=
 =?utf-8?B?bUF6bXlsY0J5UVhZVzRGZ1YwZUJRL09rcHVIVFN6RWE1ek8wZ0hyVkpZN2tL?=
 =?utf-8?B?MHNvdjdURUFwcDRKSnZSOHJ0ZEtaRU1VUlJpeHdMWno5RTFLazh3ekt4V2JN?=
 =?utf-8?B?STJvOUhHSCtCODUzUkRqMHdwaDlQVytuRFM2aUpzT1RMTkpWWWJhZENyMGg0?=
 =?utf-8?B?Vm5GRXlycXNHOFkzNTBRUnhDZWFvbCtURGU2TEpTWkx5ODNWVnhNaFF1K3JE?=
 =?utf-8?B?cE1FWm8zZ28xZzNWSU1zVXRGNW1LUWtnT0hOcS9UWGJ6eVBaK3ViOGI3ek5M?=
 =?utf-8?B?Rzl2SUZjRHhOOGtLU3FDVWVJUGNIcGFTMFBFNkFadXJqaEgzM25VVVl5aHov?=
 =?utf-8?B?Rm1saEpINlFCOFlnWmhvRmpKN3FrVHNiR2xjdS9VK3dkYzBuYTNwTWZ5RVlM?=
 =?utf-8?B?dWV5UFBQZkJoTjR3K2VhYWl3RWhPbTZvb3JDOFdIeGExNk1LR2c3eS9kY1Jt?=
 =?utf-8?B?K3hEQ3ZLZS9vWHltSFFkV2UvNVM0eEtpWkRQTFUwdjVraWtGWVI4SExQc2R1?=
 =?utf-8?B?SWE2YkVXV3N3cTJUdVI5cVlsQnViWVUwdVhMczNOQldJcUNQblMwTUVTWnVO?=
 =?utf-8?B?TUxwdFZ2aTdPeXJwekxKemhYMGFrMm5ROE4rOUFOWlhIQk93SGUwMXFkVldP?=
 =?utf-8?B?T3I4bDdXYkVzTGRiZGJFZ2lkTVVUNUpJOHpud1QzSVNVeVZ5SzRMQmxDR1FS?=
 =?utf-8?B?STNmaGl5a3ZzVWNnQkdFUlRLOU54Z1RUK1hDdTNYUzBMMkJySC83bS9seWNj?=
 =?utf-8?B?aDQ4NXFLSjVmRmZXNHQyMmsyNzh1QUc0OW1XUC8rK3pUSitVU09KdU1wdm5L?=
 =?utf-8?B?UkZERlZIU2twOGNqT2ZGcUtFUzI2WnBMVFFqaXNBVHU5ZmJoVGRXVnZaT0Ru?=
 =?utf-8?B?ZVpXS3pQTVZ1NW1zaFJpc3BpN0pabUhBdForWTNwTFBZVEEyeWNxMFFNQjJj?=
 =?utf-8?B?QVgrb3RUeVhzcVRraDF1V3dqQlB2WHArTVg5WnlzQ2J0ZHRneUJ2Ri9VNDdH?=
 =?utf-8?B?OExsVll0RUtzMSszWW1rKzhzYmpUcmhMbmUrZz09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5974.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OXcrU1AxSDRGSVJaY3U5NnE0MVp1RjZDT1NNclpVSUNVM2tHRW4wdDRTVU5O?=
 =?utf-8?B?RzIyeEZpN2x6Vm9mQWliM3UrNFRPdW5XNXNLL1hCRnM1elFyVWR6aEVFRHdw?=
 =?utf-8?B?Q2QxOWIzOXVrMTlYN2YxMVJvb0dtbDdsQy9LS3llc0plTExjRGFLWS9QdEx5?=
 =?utf-8?B?V0dncUp5Szc3cXZDeFh2UVhFM0dGSjdGTktzT2YxWVk1TTVQcERvdWw5clpP?=
 =?utf-8?B?UHpickFKaEhsOXREOTduZXpYNUtiR0JjOGVKeEVKSXVYNjIvMzBzY3dUSmM2?=
 =?utf-8?B?RGRCTVpOQWN2SDRKUCt3ZWFiQXk2NTdqRFhMS2xTSjA4SGNZY0RBSkViQWhE?=
 =?utf-8?B?Zll3MWlrZ2QyUDQ2aUV1VVdzRkFHWGRvaEhla3Z6ZG80YkdxdHhMQjdCeGdZ?=
 =?utf-8?B?Z3hUSWxPU2hxcHl3RXRVZU5HbkdvZnh0UHN0NTVJU1pPYW5nd01sMC9lQjF5?=
 =?utf-8?B?Vjd1OTJKcmpUZEhpaVh1K09RTSt2byt2Q0wwVnlyaGQzOHB2MmhBQ2ludkJ4?=
 =?utf-8?B?Z2hTMHNrU0V6bURqWlByTkZ2U0Z4L1VTZnRIRnRFRlJqMFRsSEsvTm83Sndh?=
 =?utf-8?B?UzVXWEN2ZU1SUXl4dSt6Y1FSK1FJY1h0dklLdUN5TDQ3MFFRS1RUT3JBeHdT?=
 =?utf-8?B?cXJJRldOSGxhTjhSVkd6MFZwY1JEcGZNdWFjYW5USGp1NFZuYy9oSjR3TjZ1?=
 =?utf-8?B?Ym5oU0Y5RFFCSWE5eDRpMTFNS21jdy9mQ0pESXlJZ0tkQzR6cHExRXRvUXZM?=
 =?utf-8?B?czh5QXVCOThjYmRndFBxOVk2MXh5NjI2VldvNUZjUTBIWHZYMlRBb01kTWVS?=
 =?utf-8?B?MUdDZzBjaGd3cjhiMHVOdGVJVkcrVVFKUHFkSUJoQU9SU20zZWhQdDhsSU9w?=
 =?utf-8?B?V3ZYb2tqV0trOUd2VmorSDRQV3NJNTVNR0ZhMHRHc3pLZ0VBeDdBQk5HNFI3?=
 =?utf-8?B?bkozYytlNWZkSStvRVZjYUJCTEIvWFZKNGs4bG1yU09qYjJDQUROYmV4Wjdu?=
 =?utf-8?B?SGVEWU9vd2l1SFA0ajBiOW1SL0N4MnR5QW5UYTRMK3FyUm5lNk1MRWZoRDh2?=
 =?utf-8?B?dXJkRXdVZStET1lSYzA0cS9oUXhkcEgvUHo0Sk13dFlSVlNhL1dKcU5abHE5?=
 =?utf-8?B?aWNPdXVKb3cyMThHaStZZzd3TllqT2FQWlZ0TXpaTE5EdnpRNys1OU5IVUNp?=
 =?utf-8?B?SVBMNjVoSlA1dzRXWERocnUrVVVnM2J4VXlMTWpwQ0ZMZkVaRVRvMzRPWjlx?=
 =?utf-8?B?WGJPVkVrZ0tCWGZKNU1rNHRPMXh2Y1RwZWlNUUUzVko1ZEFUL0ltTDRWSVRz?=
 =?utf-8?B?alZTYzQzcXB3UmhuSW1oMGR3OHcrTjZVT3EwMVE0Z09GcSt4NGw3a1FSbHFz?=
 =?utf-8?B?K3ZMeXYrdS9ITVJkNFJOamRocUNybnY3OEZaZXJ3T2NhREo0elFPYUc0c01o?=
 =?utf-8?B?MjZqaWhZcjdpOWFaR1Z0UjZ2ZG9pSkJJQjd5VEFmNWdsd3RDT3VwTWJUY1px?=
 =?utf-8?B?aFY4bUNTVVNrbmtGV1hzN1JiMWY0NXZ2Wm5NQ2Q2Vk16elQyelh6cmZKdTBW?=
 =?utf-8?B?ZUxMOEtMT1EzMG9qcXJ2S0d2Z2RHSUdFTDU0Z0NuaUtSdGpqN25zd1g5NWVt?=
 =?utf-8?B?VlN2Rm1Tak0wbEttRWRlUUFJYWdXQkQ2ZmxTUW9FbjRqU0JxZjdFemVRb2tS?=
 =?utf-8?B?N3M3UVF5N3VZSHFDOTdwV1RQdEZwcjFwam5FOHcrUDhJdlp1aXFwNjBNbE4v?=
 =?utf-8?B?bThMVlMvbGF1UVl4ZG81MUtXOUJDSHdISy9VTlRUK2RCNFZObXZJaGNBYzRr?=
 =?utf-8?B?VGtZL0pCbUpEczUvaDVxeWp1VjNzUStHdDVzQWxEOWp6cFNjYzZjZE1UUnZ2?=
 =?utf-8?B?MFNEK1I5dGdaMlRTeFB6eXJub1B4Z1JBRWRQQ3VZemRDS1BtcmpkTWh0ZXFl?=
 =?utf-8?B?b3YwZzJWWmVwMGs0M2ZLQ01IakpZTUpmSm90dy82MTg0MUdvc2VtL3p3VXRN?=
 =?utf-8?B?SDZlcmtwZ2xKSitVNVRoczYvWHB6bEVneTRHd1I0OTRRRkd3N003SWFhUnV6?=
 =?utf-8?B?cHljU0RKbEM3WDc3ZE1HKzVZTXc2R0ZRbHA0aU5FM3BTNGhKQ2ZrbjFsS2Yx?=
 =?utf-8?B?bVF6NXhrQTVLWk1XKzdpSG1tQTUxWWZ6ZWtjS3hmR0c1QnJROFBSUHdLVXVr?=
 =?utf-8?B?M0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DC16354D0B493B41B603E82D01413087@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5974.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8de0d91c-62d4-4663-c0e4-08de28aceb40
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 03:20:27.9336
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FgYJQShNx43OpGz8MDIMFwuJyVgrbMGl3UW6XujAYJO7ON1boLwA9WHwEYxtjJ0StXsqLWuNpU2Qz1kAtI2Bmr4isETAppFlp8nsJjMTpLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PPF948F3CF10

T24gVGh1LCAyMDI1LTExLTIwIGF0IDE0OjQwICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3Bl
biBhdHRhY2htZW50cyB1bnRpbA0KPiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRo
ZSBjb250ZW50Lg0KPiANCj4gDQo+IE9uIDIwLzExLzIwMjUgMTM6MTgsIG90X3NodW54aS56aGFu
Z0BtZWRpYXRlay5jb20gd3JvdGU6DQo+ID4gDQo+ID4gICAgICAgcnRjID0gZGV2bV9remFsbG9j
KCZwZGV2LT5kZXYsIHNpemVvZihzdHJ1Y3QgbXQ2Mzk3X3J0YyksDQo+ID4gR0ZQX0tFUk5FTCk7
DQo+ID4gQEAgLTI3NSw2ICsyOTQsOCBAQCBzdGF0aWMgaW50IG10a19ydGNfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZQ0KPiA+ICpwZGV2KQ0KPiA+ICAgICAgIGlmIChJU19FUlIocnRjLT5y
dGNfZGV2KSkNCj4gPiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHJ0Yy0+cnRjX2Rldik7
DQo+ID4gDQo+ID4gKyAgICAgcnRjLT5hbGFybV9zdGFfc3VwcG9ydGVkID0gb2ZfcHJvcGVydHlf
cmVhZF9ib29sKG5wLA0KPiA+ICJtZWRpYXRlayxhbGFybS1zdGEtc3VwcG9ydGVkIik7DQo+IA0K
PiBZb3UgY2Fubm90IGFkZCB1bmRvY3VtZW50ZWQgQUJJLiBSZWFkIGNhcmVmdWxseSBMaW51eCBk
b2N1bWVudGF0aW9uLg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KRGVhciBz
aXIsDQogIFRoYW5rcyBmb3IgeW91ciBjb21tZW50LCBJIHdpbGwgcmVhZCAmIGNoZWNrIGxpbnV4
IGRvY3VtZW50YXRpb24uDQpJdCB3aWxsIGJlIHJldmlzZWQgaW4gdGhlIG5leHQgdmVyc2lvbi4N
Cg0KQmVzdCBSZWdhcmRzDQpTaHVueGkgWmhhbmcNCg==

