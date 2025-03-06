Return-Path: <devicetree+bounces-154781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92401A548A7
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19E9118965E2
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B3820C497;
	Thu,  6 Mar 2025 11:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="V9K9MruY";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="Ywd9qx/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231CC20C015;
	Thu,  6 Mar 2025 11:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741258870; cv=fail; b=KdFNxk38iilikQOrtxl8ZzxgtKg+V83m/9EJB7NZ0NVBhP1xbM2Ii5PmrQvfAczwgfDZ80YpkTxCZf5jbtgmhfpV7PkzhkCakscoPJpIiK6i8ubMXORalCmkyDQrxAqseU6ni9zy7UX1A8CThCAfsxoJ4Y5e/ssrvDq5yKeWHXQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741258870; c=relaxed/simple;
	bh=MbD/ZiN77Zts+Qi291bJ/WvaBnfTRC936hsHdhroqow=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=qEhlggj9+RmknbJWSsclTei6lgzqMJYgp3pFkLFhsAoxZbtgIOF00+sAlhXXbxIJQ0etqiD9QW4qghQP7kFit3m6S1gwn07xapxZQTJeeCQXAOREZ99/55UCvdvc0rFhKttUHEPmxU89J7h9xVuP2ML9B8wxUUxY04C7oVD3/ik=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=V9K9MruY; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=Ywd9qx/3; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 49e8b8aefa7a11efaae1fd9735fae912-20250306
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=MbD/ZiN77Zts+Qi291bJ/WvaBnfTRC936hsHdhroqow=;
	b=V9K9MruY1BJabPwkHB9iyaQzaX4SKIDRm8mE9xbJgXpZEyPb7YZ9lHPdfrXWaFF+RVgRDmi3hkYLhRUHekuAAc2ozdrrLAgynoP0yK1kJ03ELlUj9fI3mMm16EYwTtfIdo8OPudY3ViCKaYDzcHNy6ytXBvJvNAvCIXbwqpshGw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:1ecf7437-b4f3-4cc0-b673-f150477a285e,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:da2cc449-a527-43d8-8af6-bc8b32d9f5e9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:-10|0
	|50,EDM:-3,IP:nil,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 49e8b8aefa7a11efaae1fd9735fae912-20250306
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 184662597; Thu, 06 Mar 2025 19:01:00 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Thu, 6 Mar 2025 19:00:59 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Thu, 6 Mar 2025 19:00:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Un3peo8DSwFQuk2lWqbFulltw2QEpXmoKOuAHkQlGXN1q7SUeW4tpv9jYMlA/UgUU/f231A5ryL1XfKaibjed6sed2yuI45VCjQd/ExUEYUn2jkxRLRsZUsuhJUPvj6KETB55g4KMsCns+S5U4iqK9GDgAH5OVIvFFF3CjFsHF1dIGhcrDnIotF8dYE3/Qpl8IBw0Nm/AhOKIP/SpcyF1uG8Uqt0mZLKVo+voENdW1sMcbH5xL/RkdUgAIclANBbnM4BWRzi6yyIxjVFsWoK+QZ5p80X21i12BGeW0VWHFHQRHO+5E+b0CYk9y27QaXz8+6t23DUCumMt4OhSpjtVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbD/ZiN77Zts+Qi291bJ/WvaBnfTRC936hsHdhroqow=;
 b=oNzp4TWB2ssE47cHBrdf4msIM3FjBaXX0GH5jiS5w3rZjCk8DyavqY+xiuD2vU+5MCiwbFYz2/oBggYcUsJeyx109RWlPa2XusIrkgyyezfEmphku55Ur6v9/y9CYVim47EzLUmvOdvDGQO176DstHPayvJh4nBdG7bdK6ehI+Bk/KdGD6QCXjdDwtu4orC5ITVD624bttjQ1fSbvw6gL0Z1jCA/vaBF9xZfd8Z4QdzT6Eykpom6frjUEQpAaKeDx0opFKBQUXwUcpWo2jKNgSu4KflEojcnw2bQ35hpJdyFDc8XmHP0tlZbMLUQNptzhG6c85+KOrOZmTOdHY30wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbD/ZiN77Zts+Qi291bJ/WvaBnfTRC936hsHdhroqow=;
 b=Ywd9qx/3WWBkwTnS5gZ6b5xVCgCWQCl8W6eECd4QsRwp1JTy9WC7HgOmDluK21k2gU0dCkarxolPG9rVrP8rQeGq6Pdg4kUrqgXR3GlEEeF4juj1V6/QU1IpD2/7mF/UEGdDW8bsYrroQvXG2gGJMkzAZ+F6XmNc7lmQ7Y7eQ6g=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by KL1PR03MB7799.apcprd03.prod.outlook.com (2603:1096:820:f6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Thu, 6 Mar
 2025 11:00:54 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6%3]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 11:00:54 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	=?utf-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?= <Moudy.Ho@mediatek.com>
CC: "conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, =?utf-8?B?U2lyaXVzIFdhbmcgKOeOi+eak+aYsSk=?=
	<Sirius.Wang@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, =?utf-8?B?WGlhbmRvbmcgV2FuZyAo546L5YWI5YasKQ==?=
	<Xiandong.Wang@mediatek.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"fshao@chromium.org" <fshao@chromium.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"mchehab@kernel.org" <mchehab@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	=?utf-8?B?WGF2aWVyIENoYW5nICjlvLXnjbvmlocp?= <Xavier.Chang@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "treapking@chromium.org"
	<treapking@chromium.org>
Subject: Re: [PATCH v4 3/8] mailbox: mtk-cmdq: Add driver data to support for
 MT8196
Thread-Topic: [PATCH v4 3/8] mailbox: mtk-cmdq: Add driver data to support for
 MT8196
Thread-Index: AQHbgcg2iEEFnb0qD02RDglBS18jJrNizUQAgAGCroCAADpRgIABgDqA
Date: Thu, 6 Mar 2025 11:00:54 +0000
Message-ID: <0efe42427be4eb619b6ea7db18687b0211d1ec9f.camel@mediatek.com>
References: <20250218054405.2017918-1-jason-jh.lin@mediatek.com>
	 <20250218054405.2017918-4-jason-jh.lin@mediatek.com>
	 <652e435c-563b-496a-a4c3-c2e2b665abcf@collabora.com>
	 <5aa04ff5fa567468f32921d4014bbae696c6470f.camel@mediatek.com>
	 <9d383fc5-8c64-478c-8aab-6c56bf5b45be@collabora.com>
In-Reply-To: <9d383fc5-8c64-478c-8aab-6c56bf5b45be@collabora.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|KL1PR03MB7799:EE_
x-ms-office365-filtering-correlation-id: 542bdfd5-5961-4168-ef5e-08dd5c9e2a7e
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZDF2OUhkRE5RUHNWbExzNytseHpzVTQxbll1Z2kxYkx5YUM1aGpkMy9wV29y?=
 =?utf-8?B?S3QvbCtpb21VVVViZkl6bm13UmN3RlloWDZnZTlrN1JBVkhPNVpRa1R1bDNY?=
 =?utf-8?B?bHBpNjZaNXFBUG1oZVE4R3JYNjFxemxFdFhUNlRWb0RGN2FBUTBrazN1alhh?=
 =?utf-8?B?K3lybWtyQlpVSFNoYzdMc1dYUXlHQ1ZhNWhNVHdZS0NDYi90R1hscnl3a3gw?=
 =?utf-8?B?SzZqUDJ4LzMrNVR4eXJHaVFYWTlVZHhSWkNpZEI5Q21jTzZKdlU0d0t1dy8v?=
 =?utf-8?B?STI2NE1vOGpOWXNjZDZCLzNOQjY5dGo5OE1iYVJZL040T2xJdEE0Mnk1YjBx?=
 =?utf-8?B?VXQxZUREaGNaZTE5SWhHelV6Snl1REgwTHVCR0I5Vnpsb3krSXFQY01lV3hC?=
 =?utf-8?B?ZlByMStkM21LdWJVVC95QWlhekFEeUcxRXhMdkV6R0hKUjF1MkRYZGUyeDM2?=
 =?utf-8?B?a3N0OGFJOUJRZUZKYnFXUG9sTDlXaFZ6VUY1TnFNSVRTOUdtQkhRWkhENXVC?=
 =?utf-8?B?YzE3Yml1N2MwVjZ5TVVUUFRJYWlOMUtaTndXNjlQMFRmVC8ydEppOXMyWklv?=
 =?utf-8?B?dGxQM3RKUmY0S09ub0VNc3dVc01DMWQ4c2o0dzhQVTdWVCtuR09xeTA1QlBv?=
 =?utf-8?B?WjZzVUZYRVFvS05xbUFaSjg3M2Q5YzhkTkorL0toU2JlS2dIamo2QmttdmZv?=
 =?utf-8?B?RUxaaGVBK2ovMWpJd1hxZXg1NXRHbzZUU1ZKRnlHa2tZczdnaXdybEpDanlZ?=
 =?utf-8?B?dVJqWTFjWmRSTTM3RVg3MFpmSVU4N095QXluVkVOMkFNbTRMcVVIVURTamYr?=
 =?utf-8?B?TFplbHRkRGFCZVc2NlVFdmFBdVRZMVNGM3pWY0xTdG1sL1FDZVNpaVVHY1hQ?=
 =?utf-8?B?QitQdjRVTklDK3Bhb05TOGU5TURKQzNiVTZ5OFlOeXl0WVUxd25CbVllS0Zz?=
 =?utf-8?B?QTVMWGhrQ0ZzRUdjT2ZIOCtaaUJyZ0VIZjU3R0gyUk9Ta1FldElHOEFJZ0cv?=
 =?utf-8?B?OU5QVDJCRFdwV01aTW1CUnRycWFKUGt4OStWNlBpNTVaMHQ3MTFtNzRydlBj?=
 =?utf-8?B?L2dNcVpGNTF3V1JPZ2FmL0JNTzNxREI3RGoxT25KQnhEbi8zODlTYWRmazBZ?=
 =?utf-8?B?Sm1Wc0xNN256WWo2anRWVWh3c001UkJIMG1qb3k4ZmZCeklZOXF2bExyVThp?=
 =?utf-8?B?Q2kyekJnS3QwaHdYQXltZm03aFZRd28rVURCRmdiUDBnaDJtajRFLzEzRU1Z?=
 =?utf-8?B?aVRxM21jRGhJWFErUVhSMW5uQVFXUTRPdlI2R21DUXJ6RjI1SDZYZFQ4cmZy?=
 =?utf-8?B?a05tdlBWTkJRN0R6T2c0TmhBQkxOWWY3RmlQTDZnNzhVRXJXR1YvR0FCRVV4?=
 =?utf-8?B?V2JQYWVDN2E4eUtxdElFZWt3ZE5xSzRKaDErMHV3d1BLTGNtQzB1WTk5OUN1?=
 =?utf-8?B?QTVpdy9aVjZDVVNTTUovQ3dYbTZ2NmdoaDRqWGdKZEp4OEhOczBVemlmSStC?=
 =?utf-8?B?M2MzZEdRVDJMa2dNZ3hZM29KTCszd2NMWjBXVzBhazd3QWdqTG5nMzlEYWlC?=
 =?utf-8?B?eVd0ekVpbjNOZ2Q2SlNzRlFKdUwzYnBRaFJwT2JIa2pieXBPWFhrVFFTUEh0?=
 =?utf-8?B?SEg1YWNoUHNNSkZhRHdNRWJuazFGY3MyWEwwTWduS1lGZlgrLzZMUWJmMndl?=
 =?utf-8?B?YjJZdXR2T3BDT3FneVpVTUpGRFJjYVo1bUVKVFR3ajFtWGFGS01BQVkzYmdL?=
 =?utf-8?B?ZGpSYS9ILzJUa2IwaWxwK2NpQjcvSzVVWmkvWS9oalk0Yk9ieGdaMURFQkZp?=
 =?utf-8?B?R3VBaGEzWEhiYks1RGV4TzJObHJHL1A4dGRaVU92SnFjY0t5dmltcStRRWhB?=
 =?utf-8?B?aURTSjU2VmpZK3A4NWM1YlhpY1ZCbmI5aVlobUFpY0ZTQTV5QVpjWS9CWjVz?=
 =?utf-8?B?N0laZ0U0Nkw0M3hkWWFhQUFQN2I5amtteVpPbGRtN1d2S2pYZUFFdlJyZnRE?=
 =?utf-8?B?RmMzWmMzR3ZRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGNMdU5hZUovQkhRRnhKdzMzQnVNa2JoVkdOMW5ZcWh0cCt4alhUUHR1NTRl?=
 =?utf-8?B?M0dVNVBySEZwYjRjNUUrL0V6SkRxTzZjS3BRbE5tdWhOdmlhbUpscC9sdU1v?=
 =?utf-8?B?UElxdUV4b3I1cnVNOXAwNlo0dHV2OGRpRFluajNPQnhqTUFnTkFCdDV6Ly9p?=
 =?utf-8?B?RmY2Z093RWNuRHlWNmx5U1F6SEVyS2pvd2kvOXpkZWZFY3hWQTFNSEJsazNR?=
 =?utf-8?B?M2FBY1RzMk5uaFdJK2lETHNlNEZ1aTJXTjgrdGU4UkxOQjdpRXBzS3o1MVl1?=
 =?utf-8?B?aTFBY0ljaElBYXNXOFZiTVVINU5kY1BDeTFiNmhUTWFwU2h3UXRYNk81VUZj?=
 =?utf-8?B?WllXTVEvWFE4VFNMQ0owdEZoVlBiUm9zWUcxWGU5NFU0bnRqU1ZGUnJ6VU15?=
 =?utf-8?B?Zm9Gdk0vSFV6cW1sS2lENGFUdU1pZktMb0E3VVFBb09NL204dEZqMkpyTVo4?=
 =?utf-8?B?S1lQZmowM1pXV280aG5WRDE1TW00b3J0QUhpdWVuYVhmSUNSTzJ3VzAwN29L?=
 =?utf-8?B?dnpRNUE1MDc5WkVydGd3N1c1eHpRUXpqbGdaeHpKNmZpdkZvWDR3NVc3Qnpa?=
 =?utf-8?B?a2d0SjRxQVRQNENoTlN1aDFHL1BLdEg5ZWthN0V4MEFFM0tJcEs0d3pvZXlE?=
 =?utf-8?B?cW1oMndDTFREQ2FsWnNPclZWaVI3c1c2RWY4VEwyZEY3bER6dHNiTlplUnNm?=
 =?utf-8?B?NkpPa2ZkMEYzaENVYUdOQ2tKTjA1MHZjN2U4VnU1Rm4xdk1jekZNMzltNmJM?=
 =?utf-8?B?NEpsc0FBTUJGQUdEVjYyL3d3QXY5d2FxcFE1TkpEcHNCbmIxQ2lxZWVhYmxZ?=
 =?utf-8?B?cDZ0Mmpja0FKTXB4Q1hTcE9wWUtla0IxamtkZXVhWkpYdlgybkY5YVVVaDh1?=
 =?utf-8?B?NW9yUi9DaHFseHNUbzlHMHpjQjRmUFIzYlkraVV3NGZwNHgrN3l0V0VaUGlC?=
 =?utf-8?B?ZFpPUlpnaitrd1BjdkFhYkJaVklHa3liZFVyR1RuamhLM1hTRlN0blpFUVQr?=
 =?utf-8?B?VVpkZG1Hb0lFRFFBLzk5Q1F5TW5jaU90cEdid091Y2pKUWRaNmEzekFVb21K?=
 =?utf-8?B?SHZDOHpBWFN2WklGZThESVNQOU1IZVVQTFU3V3pFcjNMZFY1TlExVll6SHVm?=
 =?utf-8?B?azIybzd1V2h1d25vMTNXV09DVkt3VDMwNmtub1UwaTBxbEVEYWh3KzJPb0VZ?=
 =?utf-8?B?WVdhU2pRMHN5QTZBOHlRRElsZ0g0Qm84V3NsWFdqamhSai9YL2Q4MVJWdGVw?=
 =?utf-8?B?OXM0eFRIL3ZqSzZpbGx2ZDBoRHRUd0R0QjhjUXdjM1Bxbk8vU3J3OW9Qbkhh?=
 =?utf-8?B?dFVCUU9mdkpMNTBaMjFtNGovcmNnZ1N0WmhheEN0Z0xZeGRjTUxnNXI5Q3FH?=
 =?utf-8?B?V2NpM3hiakdUSmIzWTQ5ajdaNWtwUUIvTXhqS0ZsMmVxQXZiS3RzTzN3Zkx6?=
 =?utf-8?B?eDJCVlJ2OFdjOGdxbVNuYUdYS0pOVnRvYXZpdWQrOG90OFdIMEFMWmgxVUpy?=
 =?utf-8?B?dWhiTVB5OGFoRTZjWndLMkRIanNwLzBZS3lPWFptY2t3Mi96REtlM05rdXJV?=
 =?utf-8?B?LzBKa1FMUFQ4QzdXdDJuM3JScFc1cC8xaStLSEp2bTdrK3BxYW90YUpmdFds?=
 =?utf-8?B?NDgzV2lLNnplWnRDdFZ0MzlPcEVHTVZiVGh3aHd4dFMvZVBzbXMvNHlLVjh0?=
 =?utf-8?B?K3BTem9lc2pKaTNKT2JBVTJEdXQ2bkkreU9ubWxhczA3TUw4N1YxZTVOU3Vw?=
 =?utf-8?B?cVNCMEtHdFJkRENFZitVMVhkNmE5TW1WSTVxUmlpam5QdjBKdTdjcUlPdER2?=
 =?utf-8?B?NEdVQ1JmMzduS3F2Rm0xcnoyUnRkQXdIVXNzb1NnU3ZCdjVOYnMxd2NFZndz?=
 =?utf-8?B?MkNzR2tpb04wQ0haZHBFa3FBellwcUlheXUxVkVmaUdzZGJzTS9BZ1JJNWtr?=
 =?utf-8?B?SjJHOWtoaDZ0eDNOVmVPQWRCWmt1YXp5L2FJT0MyRDR5V1BVemlHdWowZ0Vs?=
 =?utf-8?B?L1NZWUR2UUVpNFBiR0NaV1orcjN6Qlkwai9WWUVMc0JkcC9DekE3T3NEdFRV?=
 =?utf-8?B?UUYwT2llUnBOM1Voa2xjY3FnQ3hLYmQ0dUdMazdJUFFEaHdZdGVFNGtMakhW?=
 =?utf-8?B?aXBVUGRxbUhsdnB2MmM0K2hWeVZHSmhodU81ZmdsM3FqZENBbkRZVmZIWEpk?=
 =?utf-8?B?RWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <943AD9AC7188E14EB789DD432CED75C8@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 542bdfd5-5961-4168-ef5e-08dd5c9e2a7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 11:00:54.3589
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoJVn69fPyGDG9eH00n/W1sd6FD6jZ6tSFENT/2mz6HyNq2ayZkz+MlmbXtkdW0y8dEfXHdXq2VPma/5ZHFfwoDO5cpfeWhoMg3ky266Dzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7799

W3NuaXBdDQo+IA0KPiA+IENQUl9HU0laRSBpcyB0aGUgc2V0dGluZyBmb3IgYWxsb2NhdGluZyB0
aGUgQ1BSIFNSQU0gc2l6ZSB0byBlYWNoDQo+ID4gVk0uDQo+IA0KPiBXb3VsZCBiZSBhd2Vzb21l
IGlmIHlvdSBjb3VsZCB0aGVuIGNsYXJpZnkgdGhlIGNvbW1lbnQgdGhhdCB5b3UgaGF2ZQ0KPiBs
YXRlciBpbg0KPiB0aGUgY29kZSBoZXJlLCBmcm9tLi4uDQo+IA0KPiAvKiBjb25maWcgY3ByIHNp
emUgZm9yIGhvc3Qgdm0gKi8NCj4gDQo+IHRvDQo+IA0KPiAvKiBTZXQgdGhlIGFtb3VudCBvZiBD
UFIgU1JBTSB0byBhbGxvY2F0ZSB0byBlYWNoIFZNICovDQo+IA0KPiAuLi50aGF0IGNvdWxkIGJl
IGEgd2F5IG9mIG1vcmUgcHJvcGVybHkgZGVzY3JpYmluZyB3aGF0IHRoZSB3cml0ZWwNCj4gdGhl
cmUgaXMgZG9pbmcuDQo+IA0KDQpPSywgSSdsbCBjaGFuZ2UgaXQuDQoNCj4gPiANCj4gPiA+IFRo
ZSBHQ0Ugc3R1ZmYgaXNuJ3QgZXZlbiBwcm9wZXJseSBkZXNjcmliZWQgaW4gZGF0YXNoZWV0cyAt
IEkgZG8NCj4gPiA+IChwcm9iYWJseSEpDQo+ID4gPiB1bmRlcnN0YW5kIHdoYXQgdGhvc2UgYXJl
IGZvciwgYnV0IGFza2luZyBwZW9wbGUgdG8gZ2V0IHllYXJzIG9mDQo+ID4gPiBleHBlcmllbmNl
IG9uDQo+ID4gPiBNZWRpYVRlayB0byB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyBvbiB3b3VsZCBi
ZSBhIGJpdCBydWRlLA0KPiA+ID4gd291bGRuJ3QNCj4gPiA+IGl0PyA6LUQNCj4gPiA+IA0KPiA+
IA0KPiA+IEkgYWdyZWUgd2l0aCB5b3UgOi0pDQo+ID4gSSdsbCBwdXQgdGhlbSBpbiB0aGUgVk0g
cGF0Y2ggYW5kIGFkZCBzb21lIGJyaWVmIGRlc2NyaXB0aW9uIGZvcg0KPiA+IHRoZW0uDQo+ID4g
DQo+IA0KPiBUaGFua3MsIG11Y2ggYXBwcmVjaWF0ZWQhDQo+IA0KPiA+ID4gPiArDQo+ID4gPiA+
IMKgwqAgI2RlZmluZSBDTURRX1RIUl9BQ1RJVkVfU0xPVF9DWUNMRVMgMHgzMjAwDQo+ID4gPiA+
IMKgwqAgI2RlZmluZSBDTURRX1RIUl9FTkFCTEVEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDEN
Cj4gPiA+ID4gwqDCoCAjZGVmaW5lIENNRFFfVEhSX0RJU0FCTEVEwqDCoMKgwqDCoMKgwqDCoMKg
wqAgMHgwDQo+ID4gPiA+IEBAIC04NywxMSArOTgsMjQgQEAgc3RydWN0IGNtZHEgew0KPiA+ID4g
PiDCoMKgIHN0cnVjdCBnY2VfcGxhdCB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoCB1MzIgdGhyZWFk
X25yOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqAgdTggc2hpZnQ7DQo+ID4gPiA+ICvCoMKgwqDCoCBk
bWFfYWRkcl90IG1taW5mcmFfb2Zmc2V0Ow0KPiA+ID4gDQo+ID4gPiBJdCBsb29rcyBsaWtlIHRo
aXMgaXMgZXhhY3RseSB0aGUgRFJBTSdzIGlvc3RhcnQuLi4gYXQgbGVhc3QsIEkNCj4gPiA+IGNh
bg0KPiA+ID4gc2VlIHRoYXQgaW4gdGhlDQo+ID4gPiBkb3duc3RyZWFtIGRldmljZXRyZWUgdGhh
dCdzIHdoZXJlIGl0IHN0YXJ0cy4NCj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCBtZW1v
cnk6IG1lbW9yeUA4MDAwMDAwMCB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVnID0gPDAgMHg4MDAwMDAwMCAwIDB4NDAwMDAwMDA+Ow0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoCB9Ow0KPiA+ID4gDQo+ID4gPiBJdCBkb2Vzbid0IHJlYWxseSBsb29rIGxp
a2UgYmVpbmcgYSBjb2luY2lkZW5jZSwgYnV0LCBmb3IgdGhlDQo+ID4gPiBzYWtlIG9mDQo+ID4g
PiBhc2tpbmc6DQo+ID4gPiBpcyB0aGlzIGp1c3QgYSBjb2luY2lkZW5jZT8gOi0pDQo+ID4gPiAN
Cj4gPiANCj4gPiBBcyB0aGUgY29uZmlybWF0aW9uIHdpdGggdGhlIGhhcmR3YXJlIGRlc2lnbmVy
IGluIHByZXZpb3VzIHJlcGx5DQo+ID4gbWFpbA0KPiA+IGZvciBDSzoNCj4gPiBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbWVkaWF0ZWsvcGF0Y2gvMjAyNTAyMTgw
NTQ0MDUuMjAxNzkxOC00LWphc29uLWpoLmxpbkBtZWRpYXRlay5jb20vKjI2MjU4NDYzDQo+ID4g
DQo+IA0KPiBUaGF0IGV4cGxhbmF0aW9uIHdhcyBzaW1wbHkgd29uZGVyZnVsLg0KPiANCj4gPiBT
aW5jZSB0aGUgTU1JTkZSQSByZW1hcCBzdWJ0cmFjdGluZyAyRyBpcyBkb25lIGluIHRoZSBoYXJk
d2FyZQ0KPiA+IGNpcmN1aXQNCj4gPiBhbmQgY2Fubm90IGJlIGNvbmZpZ3VyZWQgYnkgc29mdHdh
cmUsIHRoZSBhZGRyZXNzICsyRyBhZGp1c3RtZW50IGlzDQo+ID4gbmVjZXNzYXJ5IHRvIGltcGxl
bWVudCBpbiB0aGUgQ01EUSBkcml2ZXIuDQo+ID4gDQo+ID4gU28gdGhhdCBtaWdodCBub3QgYmUg
YSBjb2luY2lkZW5jZS4NCj4gPiBCdXQgZXZlbiBpZiBEUkFNIHN0YXJ0IGFkZHJlc3MgY2hhbmdl
cywgdGhpcyBtbWluZnJhX29mZnNldCBpcw0KPiA+IHN0aWxsDQo+ID4gc3VidHJhY3RpbmcgMkcs
IHNvIEkgdGhpbmsgaXQgaXMgYSBiZXR0ZXIgY2hvaWNlIHRvIGRlZmluZSBpdCBhcw0KPiA+IHRo
ZQ0KPiA+IGRyaXZlciBkYXRhIGZvciBNVDgxOTYuDQo+ID4gDQo+IA0KPiAuLi4uc28sIHRoaXMg
bWFrZXMgbWUgdGhpbmsgdGhlIGZvbGxvd2luZzoNCj4gDQo+IDEuIFRoZSBEUkFNIHN0YXJ0IGFk
ZHJlc3MgY2Fubm90ICpldmVyKiBiZSBsZXNzIHRoYW4gMkcsIGJlY2F1c2UNCj4gb3RoZXJ3aXNl
IHRoZQ0KPiDCoMKgwqAgTU1JTkZSQSBIVyB3b3VsZCBoYXZlIGEgaG9sZSBpbiB0aGUgdXNhYmxl
IGFkZHJlc3MgcmFuZ2U7DQo+IMKgwqDCoCAxYS4gSWYgdGhlIHN0YXJ0IGFkZHJlc3MgY2hhbmdl
cyB0byBsZXNzIHRoYW4gMkcsIHRoZW4gYWxzbyB0aGUNCj4gSU9NTVUgd291bGQNCj4gwqDCoMKg
wqDCoMKgwqAgZ2V0IGxpbWl0YXRpb25zLCBub3Qgb25seSB0aGUgbW1pbmZyYS4uIQ0KPiDCoMKg
wqAgMmIuIFRoaXMgbWFrZXMgaXQgdmVyeSB2ZXJ5IHZlcnkgdW5saWtlbHkgZm9yIHRoZSBzdGFy
dCBhZGRyZXNzDQo+IHRvIGJlIGNoYW5nZWQNCj4gwqDCoMKgwqDCoMKgwqAgdG8gbGVzcyB0aGFu
IDB4ODAwMDAwMDANCj4gDQo+IDIuIElmIHRoZSBEUkFNIHN0YXJ0IGFkZHJlc3MgY2hhbmdlcyB0
byBiZSBBQk9WRSAyRyAoc28gbW9yZSB0aGFuDQo+IDB4ODAwMDAwMDApLA0KPiDCoMKgwqAgdGhl
cmUgd291bGQgYmUgbm8gcG9pbnQgZm9yIE1NSU5GUkEgdG8gc3RhcnQgYSAiY29uZmlnIHBhdGgi
DQo+IHdyaXRlIChvciByZWFkKQ0KPiDCoMKgwqAgaW4gdGhlIFNNTVUgRFJBTSBibG9jaywgd291
bGQgaXQ/IDstKQ0KPiANCg0KR0NFIGlzIHVzaW5nIElPTU1VIGluIE1UODE5Niwgc28gYWxsIHRo
ZSBhZGRyZXNzIHB1dCBpbnRvIHRoZSBHQ0UNCmluc3RydWN0aW9uIG9yIEdDRSByZWdpc3RlciBm
b3IgR0NFIGFjY2VzcyBzaG91bGQgYmUgSU9WQS4NCg0KVGhlIERSQU0gc3RhcnQgYWRkcmVzcyBp
cyAyRyhQQT0weDgwMDAwMDAwLCBJT1ZBPTB4MCkgY3VycmVudGx5LCBzbw0Kd2hlbiBHQ0Ugd2Fu
dCB0byBhY2Nlc3MgdGhlIElPVkE9MHgwLCBpdCB3aWxsIG5lZWQgdG8gKzJHIGludG8gdGhlDQpp
bnN0cnVjdGlvbiwgdGhlbiB0aGUgTU1JTkZSQSB3aWxsIHNlZSBpdCBhcyBkYXRhIHBhdGgoSU9W
QSA+IDJHKSBhbmQNCnN1YnRyYWN0IDJHIGZvciB0aGF0IElPVkEsIHNvIEdDRSBjYW4gZmluYWxs
eSBhY2Nlc3MgdGhlIElPVkE9MHgwLg0KDQpJJ20gbm90IHN1cmUgaWYgSSd2ZSBtaXN1bmRlcnN0
b29kIHdoYXQgeW91IG1lYW4gYnkgQUJPVkUgMkcuIDotKQ0KSWYgRFJBTSBzdGFydCBhZGRyZXNz
IGlzIGNoYW5nZWQgdG8gM0coUEE9MHhjMDAwMDAwMCkgdGhlIElPVkEgaXMgc3RpbGwNCjB4MCwg
c28gR0NFIHN0aWxsIG5lZWQgdG8gKyAyRyB0byBtYWtlIE1NSU5GUkEgZ28gdG8gdGhlIGRhdGEg
cGF0aC4NCg0KQnV0IGlmIHlvdSBtZWFuIFBBPTB4ODAwMDAwMDAgYW5kIElPVkEgc3RhcnQgYWRk
cmVzcyBpcyAzRygweGMwMDAwMDAwKSwNCnRoZW4gTU1JTkZSQSB3aWxsIGdvIHRvIHRoZSBkYXRh
IHBhdGggd2l0aG91dCBHQ0UgKzJHLg0KSG93ZXZlciwgTU1JTkZSQSB3aWxsIC0yRyB3aGVuIGdv
aW5nIHRvIHRoZSBkYXRhIHBhdGggYW5kIHRoYXQgd2lsbA0KY2F1c2UgR0NFIGFjY2VzcyB0aGUg
d3JvbmcgSU9WQS4NClNvIEdDRSBzdGlsbCBuZWVkIHRvICsyRyBubyBtYXR0ZXIgSU9WQSBzdGFy
dCBhZGRyZXNzIGlzIGFscmVhZHkgY2FuDQptYWtlIE1NSU5GUkEgZ28gdG8gdGhlIGRhdGEgcGF0
aChJT1ZBID4gMkcpLg0KDQpXZSBoYXZlIGFscmVhZHkgY29tcGxhaW5lZCB0byBvdXIgaGFyZHdh
cmUgZGVzaWduZXIgdGhhdCBNTUlORlJBIC0yRw0KY29uIG5vdCBiZSBjaGFuZ2VkLCB3aGljaCB3
aWxsIG1ha2Ugc29mdHdhcmUgb3BlcmF0aW9uIHZlcnkNCnRyb3VibGVzb21lLg0KU28gaW4gdGhl
IG5leHQgZmV3IGdlbmVyYXRpb25zIG9mIFNvQyB3aWxsIGNoYW5nZSB0aGlzIE1NSU5GUkEgLTJH
IHRvDQpzb2Z0d2FyZSBjb25maWd1cmFibGUuIFRoZW4gd2UgY2FuIGp1c3QgbWFrZSBJT1ZBIHN0
YXJ0IGFkZHJlc3MgdG8gMkcNCndpdGhvdXQgYWRkaW5nIHRoZSBtbWluZnJhX29mZnNldCB0byB0
aGUgSU9WQSBmb3IgR0NFLg0KDQo+IEkgZ2V0IGl0IC0gaWYgdGhlIERSQU0gbW92ZXMgdXAsIE1N
SU5GUkEgaXMgc3RpbGwgYXQgMkcgYmVjYXVzZQ0KPiB0aGF0J3MgaGFyZCBiYWtlZA0KPiBpbnRv
IHRoZSBoYXJkd2FyZSwgYnV0IEkgZm9yZXNlZSB0aGF0IGl0J2xsIGJlIHVubGlrZWx5IHRvIHNl
ZSBhDQo+IHBsYXRmb3JtIGNoYW5naW5nDQo+IHRoZSBEUkFNIHN0YXJ0IGFkZHJlc3MgYXJiaXRy
YXJpbHksIGdldHRpbmcgb3V0LW9mLXN5bmMgd2l0aCBNTUlORlJBLg0KPiANCj4gSSBwcm9wb3Nl
IHRvIGp1c3QgZ2V0IHRoZSBhZGRyZXNzIGZyb20gdGhlIG1lbW9yeSBub2RlIGZvciBub3csIGFu
ZA0KPiB0byBhZGQgYSBuaWNlDQo+IGNvbW1lbnQgaW4gdGhlIGNvZGUgdGhhdCBleHBsYWlucyB0
aGF0ICJJbiBhdCBsZWFzdCBNVDgxOTYsIHRoZQ0KPiBNTUlORlJBIGhhcmR3YXJlDQo+IHN1YnRy
YWN0cyB4eXogZXRjIGV0YyIgKGFuZCB0aGF0IGV4cGxhbmF0aW9uIGZyb20gdGhlIHByZXZpb3Vz
IGVtYWlsDQo+IGlzIGFnYWluDQo+IHdvbmRlcmZ1bCBhbmQgc2hhbGwgbm90IGJlIGxvc3Q6IGVp
dGhlciB1c2UgdGhhdCBpbiB0aGUgY29tbWVudCwgb3INCj4gYWRkIGl0IHRvDQo+IHRoZSBjb21t
aXQgZGVzY3JpcHRpb24sIGJlY2F1c2UgaXQncyByZWFsbHkgdGhhdCBnb29kKS4NCj4gDQo+IFNo
b3VsZCBhIG5ldyBTb0MgYXBwZWFyIGluIHRoZSBmdXR1cmUgcmVxdWlyaW5nIGFuIG9mZnNldCBm
cm9tIHRoZQ0KPiBEUkFNIHN0YXJ0DQo+IGFkZHJlc3MsIHdlIHdpbGwgdGhpbmsgYWJvdXQgaG93
IHRvIG1ha2UgdGhhdCB3b3JrIGluIHRoZSBiZXN0DQo+IHBvc3NpYmxlIHdheTogaW4NCj4gdGhh
dCBjYXNlIHdlIGNvdWxkIGVpdGhlciByZWZlcmVuY2Ugc29tZXRoaW5nIGVsc2UgdG8gZ2V0IHRo
ZSByaWdodA0KPiBhZGRyZXNzIG9yDQo+IHdlIGNhbiBqdXN0IGNoYW5nZSB0aGlzIGRyaXZlciB0
byBqdXN0IHVzZSB0aGUgMkcgb2Zmc2V0IHN0YXRpY2FsbHkNCj4gZm9yIGFsbC4NCj4gDQo+IFdo
YXQgSSdtIHRyeWluZyB0byBkbyBoZXJlIGlzIHRvIHJlZHVjZSB0aGUgYW1vdW50IG9mIGNoYW5n
ZXMgdGhhdA0KPiB3ZSdkIG5lZWQgZm9yDQo+IGFkZGluZyBuZXcgU29Dczogc2luY2UgdGhhdCAy
RyBNTUlORlJBIG9mZnNldCAtPiAyRyBEUkFNIHN0YXJ0IGlzIG5vdA0KPiBhIGNvaW5jaWRlbmNl
DQo+IEkgdGhpbmsgdGhhdCwgc2hvdWxkIHRoZSBEUkFNIHN0YXJ0IHZhcnkgb24gbmV3IFNvQ3Ms
IHRoZSBNTUlORlJBDQo+IG9mZnNldCB3aWxsDQo+IGZvbGxvdyB0aGUgdHJlbmQgYW5kIHZhcnkg
d2l0aCBpdC4NCj4gDQo+IFNvIHdoYXQgSSB0aGluayBpczoNCj4gMS4gSWYgSSdtIHJpZ2h0LCBh
ZGRpbmcgYSBuZXcgU29DICh3aXRoIGRpZmZlcmVudCBNTUlORlJBICsgRFJBTQ0KPiBvZmZzZXQp
IHdpbGwgYmUNCj4gwqDCoMKgIGFzIGVhc3kgYXMgYWRkaW5nIGEgY29tcGF0aWJsZSBzdHJpbmcg
aW4gdGhlIGJpbmRpbmdzLCBubyBlZmZvcnQNCj4gaW4gY2hhbmdpbmcNCj4gwqDCoMKgIHRoaXMg
ZHJpdmVyIHdpdGggbmV3IHBkYXRhIG9mZnNldHM7DQo+IDIuIElmIEknbSB3cm9uZywgYWRkaW5n
IGEgbmV3IFNvQyBtZWFucyBhZGRpbmcgY29tcGF0IHN0cmluZyBhbmQNCj4gYWRkaW5nIHBkYXRh
IGFuZA0KPiDCoMKgwqAgb25lIHZhcmlhYmxlIGluIHRoZSBjbWRxIHN0cnVjdC4NCj4gDQo+IFdo
ZXJlIE4uMiBpcyB3aGF0IHdlIHdvdWxkIGRvIGFueXdheSBpZiB3ZSBkb24ndCBnbyB3aXRoIG15
IHByb3Bvc2VkDQo+IHNvbHV0aW9uLi4uDQo+IA0KPiBBbGwgdGhpcyBpcyBqdXN0IHRvIGdpdmUg
eW91IG15IGNvbnNpZGVyYXRpb25zIGFib3V0IHRoaXMgdG9waWMgLQ0KPiB5b3UncmUgbGVmdA0K
PiBjb21wbGV0ZWx5IGZyZWUgdG8gZGlzYWdyZWUgd2l0aCBtZS4NCj4gSWYgeW91IGRpc2FncmVl
LCBJIHdpbGwgdHJ1c3QgeW91ciBqdWRnZW1lbnQsIG5vIHByb2JsZW0gaGVyZS4NCj4gDQoNClll
cywgSSB0aGluayB5b3VyIGFyZSByaWdodC4gTm8gbWF0dGVyIHRoZSBJT1ZBIHN0YXJ0IGFkZHJl
c3MgY2hhbmdpbmcsDQpNTUlORlJBIHdpbGwgc3RpbGwgLTJHKHRoZSBzdGFydCBhZGRyZXNzIG9m
IERSQU0gUEEpLg0KRG8geW91IG1lYW4gd2UgY2FuIGdldCB0aGUgbW1pbmZyYV9vZmZzZXQgZnJv
bSB0aGUgc3RhcnQgYWRkcmVzcyBvZg0KbWVtb3J5IGluIERUUywgcmF0aGVyIHRoYW4gZGVmaW5p
bmcgaXQgaW4gcGRhdGE/DQoNCj4gPiA+ID4gwqDCoMKgwqDCoMKgIGJvb2wgY29udHJvbF9ieV9z
dzsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgIGJvb2wgc3dfZGRyX2VuOw0KPiA+ID4gPiArwqDCoMKg
wqAgYm9vbCBnY2Vfdm07DQo+ID4gPiA+ICvCoMKgwqDCoCB1MzIgZG1hX21hc2tfYml0Ow0KPiA+
ID4gPiDCoMKgwqDCoMKgwqAgdTMyIGdjZV9udW07DQo+ID4gPiA+IMKgwqAgfTsNCj4gPiA+ID4g
DQo+ID4gPiA+ICtzdGF0aWMgaW5saW5lIHUzMiBjbWRxX3JlZ19zaGlmdF9hZGRyKGRtYV9hZGRy
X3QgYWRkciwgY29uc3QNCj4gPiA+ID4gc3RydWN0IGdjZV9wbGF0ICpwZGF0YSkNCj4gPiA+ID4g
K3sNCj4gPiA+ID4gK8KgwqDCoMKgIHJldHVybiAoKGFkZHIgKyBwZGF0YS0+bW1pbmZyYV9vZmZz
ZXQpID4+IHBkYXRhLT5zaGlmdCk7DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0
YXRpYyBpbmxpbmUgdTMyIGNtZHFfcmVnX3JldmVydF9hZGRyKGRtYV9hZGRyX3QgYWRkciwgY29u
c3QNCj4gPiA+ID4gc3RydWN0IGdjZV9wbGF0ICpwZGF0YSkNCj4gPiA+ID4gK3sNCj4gPiA+ID4g
K8KgwqDCoMKgIHJldHVybiAoKGFkZHIgPDwgcGRhdGEtPnNoaWZ0KSAtIHBkYXRhLT5tbWluZnJh
X29mZnNldCk7DQo+ID4gPiA+ICt9DQo+ID4gPiANCj4gPiA+IEknbSBub3Qgc3VyZSB0aGF0IHlv
dSByZWFsbHkgbmVlZCB0aG9zZSB0d28gZnVuY3Rpb25zLi4uIHByb2JhYmx5DQo+ID4gPiBpdCdz
IHNpbXBseQ0KPiA+ID4gY2xlYW5lciBhbmQgZWFzaWVyIHRvIGp1c3Qgd3JpdGUgdGhhdCBzaW5n
bGUgbGluZSBldmVyeSB0aW1lLi4uDQo+ID4gPiBhbmQNCj4gPiA+IEknbQ0KPiA+ID4gc2F5aW5n
IHRoYXQgZXNwZWNpYWxseSBmb3IgaG93IHlvdSdyZSB1c2luZyB0aG9zZSBmdW5jdGlvbnMsIHdp
dGgNCj4gPiA+IHNvbWUgcmVhZGwoKQ0KPiA+ID4gcGFzc2VkIGRpcmVjdGx5IGFzIHBhcmFtLCBk
ZWNyZWFzaW5nIGh1bWFuIHJlYWRhYmlsaXR5IGJ5ICJhDQo+ID4gPiB3aG9sZQ0KPiA+ID4gbG90
IiA6LSkNCj4gPiA+IA0KPiA+IA0KPiA+IFRoZSByZWFzb24gd2h5IEkgdXNlIEFQSSB3cmFwcGVy
IGluc3RlYWQgb2Ygd3JpdGluZyBpdCBkaXJlY3RseSBpbg0KPiA+IHJlYWRsKCkgaXMgdG8gYXZv
aWQgbWlzc2luZyB0aGUgc2hpZnQgb3IgbW1pbmZyYV9vZmZzZXQgY29udmVyc2lvbg0KPiA+IGlu
DQo+ID4gc29tZSBwbGFjZXMuDQo+ID4gVGhpcyBwcm9ibGVtIGlzIG5vdCBlYXN5IHRvIGRlYnVn
LCBhbmQgSSBoYXZlIGVuY291bnRlcmVkIGl0IGF0DQo+ID4gbGVhc3QNCj4gPiB0d2ljZS4uLg0K
PiA+IA0KPiA+IEkgdGhpbmsgdGhlIGFkdmFudGFnZSBvZiB1c2luZyBmdW5jdGlvbiBpcyB0aGF0
IGl0IGNhbiBiZSB1bmlmb3JtbHkNCj4gPiBtb2RpZmllZCB0byBhbGwgcGxhY2VzIHRoYXQgbmVl
ZCB0byBoYW5kbGUgRFJBTSBhZGRyZXNzIGNvbnZlcnNpb24uDQo+ID4gV2hhdCBkbyB5b3UgdGhp
bms/IDotKQ0KPiA+IA0KPiANCj4gRWgsIGlmIHlvdSBwdXQgaXQgbGlrZSB0aGF0Li4uIGl0IG1h
a2VzIHNlbnNlLCBzby4uIHllYWgsIG9rYXkgOi0pDQo+IA0KPiBTdGlsbCwgcGxlYXNlIGNsZWFu
dXAgdGhvc2UgaW5zdGFuY2VzIG9mDQo+IA0KPiBgY21kcV9yZWdfcmV2ZXJ0X2FkZHIocmVhZGwo
c29tZXRoaW5nKSwgcGRhdGEpYA0KPiANCj4gdGhvc2UgbWlnaHQgYmUgaGFyZCB0byByZWFkLCBz
byBwbGVhc2UganVzdCBkbyBzb21ldGhpbmcgbGlrZToNCj4gDQo+IHJlZ3ZhbCA9IHJlYWRsKHNv
bWV0aGluZyk7DQo+IGN1cnJfcGEgPSBjbWRxX3JldmVydF9hZGRyKHJlZ3ZhbCwgcGRhdGEpOw0K
PiANCj4gLi4ucmV3b3JkIHRvIHlvdXIgb3duIGxpa2luZywgb2YgY291cnNlLg0KPiANCg0KT0ss
IEknbGwgcmVmaW5lIHRoYXQuIFRoYW5rcy4NCg0KPiA+ID4gPiArDQo+ID4gPiA+IMKgwqAgc3Rh
dGljIHZvaWQgY21kcV9zd19kZHJfZW5hYmxlKHN0cnVjdCBjbWRxICpjbWRxLCBib29sDQo+ID4g
PiA+IGVuYWJsZSkNCj4gPiA+ID4gwqDCoCB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoCBXQVJOX09O
KGNsa19idWxrX2VuYWJsZShjbWRxLT5wZGF0YS0+Z2NlX251bSwgY21kcS0NCj4gPiA+ID4gPmNs
b2NrcykpOw0KPiA+ID4gPiBAQCAtMTEyLDYgKzEzNiwzMCBAQCB1OCBjbWRxX2dldF9zaGlmdF9w
YShzdHJ1Y3QgbWJveF9jaGFuDQo+ID4gPiA+ICpjaGFuKQ0KPiA+ID4gPiDCoMKgIH0NCj4gPiA+
ID4gwqDCoCBFWFBPUlRfU1lNQk9MKGNtZHFfZ2V0X3NoaWZ0X3BhKTsNCj4gPiA+ID4gDQo+ID4g
PiA+ICtkbWFfYWRkcl90IGNtZHFfZ2V0X29mZnNldF9wYShzdHJ1Y3QgbWJveF9jaGFuICpjaGFu
KQ0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDCoMKgwqAgc3RydWN0IGNtZHEgKmNtZHEgPSBjb250
YWluZXJfb2YoY2hhbi0+bWJveCwgc3RydWN0IGNtZHEsDQo+ID4gPiA+IG1ib3gpOw0KPiA+ID4g
PiArDQo+ID4gPiA+ICvCoMKgwqDCoCByZXR1cm4gY21kcS0+cGRhdGEtPm1taW5mcmFfb2Zmc2V0
Ow0KPiA+ID4gPiArfQ0KPiA+ID4gPiArRVhQT1JUX1NZTUJPTChjbWRxX2dldF9vZmZzZXRfcGEp
Ow0KPiA+ID4gDQo+ID4gPiBJIHRoaW5rIEkgcmVtZW1iZXIgdGhpcyBnZXRfb2Zmc2V0X3BhIGZy
b20gdGhlIG9sZCB0aW1lcywgdGhlbiBDSw0KPiA+ID4gcmVtb3ZlZCBpdCAoYW5kIEkNCj4gPiA+
IHdhcyByZWFsbHkgaGFwcHkgYWJvdXQgdGhhdCBkaXNhcHBlYXJpbmcpLCBvciBhbSBJIGNvbmZ1
c2luZyB0aGlzDQo+ID4gPiB3aXRoIHNvbWV0aGluZw0KPiA+ID4gZWxzZT8NCj4gPiA+IA0KPiA+
ID4gKG9mIGNvdXJzZSwgdGhpcyB3YXNuJ3QgdXNlZCBmb3IgbW1pbmZyYSwgYnV0IGZvciBzb21l
dGhpbmcNCj4gPiA+IGVsc2UhKQ0KPiA+ID4gDQo+ID4gDQo+ID4gSSBjYW4ndCBmaW5kIGFueSBy
ZW1vdmUgaGlzdG9yeSBpbiBtdGstY21kcS1tYWlsYm94LmMuDQo+ID4gDQo+ID4gTWF5YmUgeW91
IG1lYW4gdGhlIHBhdGNoIGluIHRoaXMgc2VyaWVzPw0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8xNzEyMTM5MzgwNDkuMTIzNjk4LjE1NTczNzc5ODM3NzAzNjAyNTkxLmI0LXR5QGNv
bGxhYm9yYS5jb20vDQo+ID4gDQo+IA0KPiBVaG0sIEkgdGhpbmsgSSBtYXkgaGF2ZSBjb25mdXNl
ZCBzb21ldGhpbmcgaGVyZSwgYnV0IHllcyBJIHdhcw0KPiByZW1lbWJlcmluZyB0aGUNCj4gcGF0
Y2ggc2VyaWVzIHRoYXQgeW91IHBvaW50ZWQgb3V0LCBkZWZpbml0ZWx5Lg0KPiANCj4gQXQgdGhl
IGVuZCwgdGhhdCBzZXJpZXMgaXMgZG9pbmcgc29tZXRoaW5nIGVsc2UsIHNvIG5ldmVybWluZCwg
d2FzDQo+IGp1c3QgY29uZnVzaW9uLg0KPiANCg0KT0ssIG5vIHByb2JsZW0uDQoNCj4gPiA+ID4g
Kw0KPiA+ID4gPiArYm9vbCBjbWRxX2FkZHJfbmVlZF9vZmZzZXQoc3RydWN0IG1ib3hfY2hhbiAq
Y2hhbiwgZG1hX2FkZHJfdA0KPiA+ID4gPiBhZGRyKQ0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDC
oMKgwqAgc3RydWN0IGNtZHEgKmNtZHEgPSBjb250YWluZXJfb2YoY2hhbi0+bWJveCwgc3RydWN0
IGNtZHEsDQo+ID4gPiA+IG1ib3gpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoCBpZiAo
Y21kcS0+cGRhdGEtPm1taW5mcmFfb2Zmc2V0ID09IDApDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoCAv
Kg0KPiA+ID4gPiArwqDCoMKgwqDCoCAqIG1taW5mcmEgd2lsbCByZWNvZ25pemUgdGhlIGFkZHIg
dGhhdCBncmVhdGVyIHRoYW4gdGhlDQo+ID4gPiA+IG1taW5mcmFfb2Zmc2V0DQo+ID4gPiA+ICvC
oMKgwqDCoMKgICogYXMgYSB0cmFuc2FjdGlvbiB0byBEUkFNLg0KPiA+ID4gPiArwqDCoMKgwqDC
oCAqIFNvIHRoZSBjYWxsZXIgbmVlZHMgdG8gYXBwZW5kIG1taW5mcmFfb2Zmc2V0IGZvciB0aGUN
Cj4gPiA+ID4gdHJ1ZQ0KPiA+ID4gPiBjYXNlLg0KPiA+ID4gPiArwqDCoMKgwqDCoCAqLw0KPiA+
ID4gPiArwqDCoMKgwqAgcmV0dXJuIChhZGRyID49IGNtZHEtPnBkYXRhLT5tbWluZnJhX29mZnNl
dCk7DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gLyoqDQo+ID4gPiDCoMKgICogY21kcV9pc19tbWlu
ZnJhX2djZSgpIC0gQnJpZWYgZGVzY3JpcHRpb24NCj4gPiA+IMKgwqAgKiBAYXJncy4uLi4uDQo+
ID4gPiDCoMKgICoNCj4gPiA+IMKgwqAgKiBUaGUgTU1JTkZSQSBHQ0Ugd2lsbCByZWNvZ25pemUg
YW4gYWRkcmVzcyBncmVhdGVyIHRoYW4gRFJBTQ0KPiA+ID4gaW9zdGFydCBhcyBhDQo+ID4gPiDC
oMKgICogRFJBTSB0cmFuc2FjdGlvbiBpbnN0ZWFkIG9mIC4uLi54eXoNCj4gPiA+IMKgwqAgKg0K
PiA+ID4gwqDCoCAqIEluIG9yZGVyIGZvciBjYWxsZXJzIHRvIHBlcmZvcm0gKHh5eikgdHJhbnNh
Y3Rpb25zIHRocm91Z2gNCj4gPiA+IHRoZQ0KPiA+ID4gQ01EUSwgdGhvc2UNCj4gPiA+IMKgwqAg
KiBuZWVkIHRvIGtub3cgaWYgdGhleSBhcmUgdXNpbmcgYSBHQ0UgbG9jYXRlZCBpbiBNTUlORlJB
Lg0KPiA+ID4gwqDCoCAqLw0KPiA+ID4gYm9vbCBjbWRxX2lzX21taW5mcmFfZ2NlKC4uLikNCj4g
PiA+IHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGNtZHEtPnBkYXRhLT5tbWluZnJh
X29mZnNldCAmJg0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChhZGRyID49
IGNtZHEtPnBkYXRhLT5tbWluZnJhX29mZnNldCkNCj4gPiA+IA0KPiA+ID4gPiArfQ0KPiA+ID4g
PiArRVhQT1JUX1NZTUJPTChjbWRxX2FkZHJfbmVlZF9vZmZzZXQpOw0KPiA+ID4gPiArDQo+ID4g
PiANCj4gPiANCj4gPiBPSywgSSdsbCBtb2RpZnkgdGhlIEFQSSBsaWtlIHRoaXMuDQo+ID4gDQo+
ID4gPiAuLi5idXQgdGhlbiwgaXMgdGhlcmUgcmVhbGx5IG5vIHdheSBvZiBqdXN0IGhhbmRsaW5n
IHRoZSBHQ0UNCj4gPiA+IGJlaW5nIGluDQo+ID4gPiBNTUlORlJBDQo+ID4gPiB0cmFuc3BhcmVu
dGx5IGZyb20gdGhlIGNhbGxlcnM/IERvIHRoZSBjYWxsZXJzIHJlYWxseSAqbmVlZCogdG8NCj4g
PiA+IGtub3cNCj4gPiA+IHRoYXQgdGhleSdyZQ0KPiA+ID4gdXNpbmcgYSBuZXcgR0NFPyENCj4g
PiA+IA0KPiA+IA0KPiA+IFNpbmNlIHRoZSBhZGRyZXNzIHN1YnRyYWN0aW5nIGlzIGRvbmUgaW4g
TU1JTkZSQSBoYXJkd2FyZSwgSSB0aGluaw0KPiA+IEdDRQ0KPiA+IHVzZXJzIHJlYWxseSBuZWVk
IHRvIGhhbmRsZSBpdCBpbiBkcml2ZXIuDQo+ID4gDQo+IA0KPiBTaW5jZSB0aGUgdXNlcnMgb2Yg
dGhpcyBpbmZyYXN0cnVjdHVyZSBhcmUgbXVsdGltZWRpYSByZWxhdGVkDQo+IChkaXNwL01EUDMp
LA0KPiBJJ2QgYWxzbyBsaWtlIHRvIGdldCBhbiBvcGluaW9uIGZyb20gTWVkaWFUZWsgZW5naW5l
ZXJzIGZhbWlsaWFyIHdpdGgNCj4gdGhhdC4NCj4gDQo+IENLLCBNb3VkeSwgYW55IG9waW5pb24g
b24gdGhhdCwgcGxlYXNlPw0KPiANCj4gPiA+IEFub3RoZXIgd2F5IG9mIHNheWluZzogY2FuJ3Qg
d2UganVzdCBoYW5kbGUgdGhlIGFkZHJlc3MNCj4gPiA+IHRyYW5zbGF0aW9uDQo+ID4gPiBpbiBo
ZXJlIGluc3RlYWQNCj4gPiA+IG9mIGluc3RydWN0aW5nIGVhY2ggYW5kIGV2ZXJ5IGRyaXZlciBh
Ym91dCBob3cgdG8gY29tbXVuaWNhdGUNCj4gPiA+IHdpdGgNCj4gPiA+IHRoZSBuZXcgR0NFPyEN
Cj4gPiA+IA0KPiA+IA0KPiA+IFRoZSBEUkFNIGFkZHJlc3MgbWF5IG5vdCBvbmx5IGJlIHRoZSBj
b21tYW5kIGJ1ZmZlciB0byBHQ0UsIGJ1dA0KPiA+IGFsc28NCj4gPiB0aGUgd29ya2luZyBidWZm
ZXIgcHJvdmlkZWQgYnkgQ01EUSB1c2VycyBhbmQgYmVpbmcgYSBwYXJ0IG9mIEdDRQ0KPiA+IGlu
c3RydWN0aW9uLCBzbyB3ZSBuZWVkIHRvIGhhbmRsZSB0aGUgYWRkcmVzcyB0cmFuc2xhdGlvbiBp
biBDTURRDQo+ID4gaGVscGVyIGRyaXZlciBmb3IgdGhlIGluc3RydWN0aW9uIGdlbmVyYXRpb24u
DQo+ID4gRS5nLiBJU1AgZHJpdmVycyBtYXkgdXNlIEdDRSB0byB3cml0ZSBhIGhhcmR3YXJlIHNl
dHRpbmdzIHRvIGEgRFJBTQ0KPiA+IGFzDQo+ID4gYmFja3VwIGJ1ZmZlci4gVGhlIEdDRSB3cml0
ZSBpbnN0cnVjdGlvbiB3aWxsIGJlOg0KPiA+IFdSSVRFIHRoZSB2YWx1ZSBvZiBJU1AgcmVnaXN0
ZXIgdG8gRFJBTSBhZGRyZXNzICsgbW1pbmZyYV9vZmZzZXQuDQo+ID4gDQo+ID4gQnV0IG1vc3Qg
b2YgdGhlIENNRFEgdXNlcnMgb25seSBuZWVkIHRvIHVzZSBHQ0UgdG8gd3JpdGUgaGFyZHdhcmUN
Cj4gPiByZWdpc3Rlciwgc28gSSBvbmx5IGtlZXAgdGhlIHRyYW5zbGF0aW9uIGluIGNtZHFfcGt0
X21lbV9tb3ZlKCksDQo+ID4gY21kcV9wa3RfcG9sbF9hZGRyKCkgYW5kIGNtZHFfcGt0X2p1bXBf
YWJzKCkgYXQgdGhlIGxhdGVzdCBzZXJpZXMuDQo+IA0KPiBZZWFoIHlvdSdyZSBjaG9vc2luZyB0
aGUgYmVzdCBvZiBib3RoIHdvcmxkcyBpbiB0aGF0IGNhc2UsIEkgZG8NCj4gYWdyZWUsIGJ1dA0K
PiBzdGlsbCAtIGlmIHRoZXJlJ3MgYSB3YXkgdG8gYXZvaWQgZHJpdmVycyB0byBoYXZlIGRpZmZl
cmVudCBoYW5kbGluZw0KPiBmb3INCj4gbW1pbmZyYSB2cyBuby1tbWluZnJhLCB0aGF0J2Qgc3Rp
bGwgYmUgcHJlZmVycmVkLg0KPiANCj4gSGF2aW5nIHRoZSBoYW5kbGluZyBmb3Igc29tZXRoaW5n
ICpjZW50cmFsaXplZCogc29tZXdoZXJlLCBpbnN0ZWFkIG9mDQo+IGl0DQo+IGJlaW5nIHNwYXJz
ZSBoZXJlIGFuZCB0aGVyZSwgd291bGQgbWFrZSBtYWludGVuYW5jZSB3YXkgZWFzaWVyLi4uDQo+
IA0KPiAuLi5hbmQgdGhhdCdzIHdoeSBJJ20gYXNraW5nIGZvciBDSyBhbmQgTW91ZHkncyBvcGlu
aW9uLCBub3RoaW5nIGVsc2UNCj4gOi0pDQo+IA0KDQpZZXMsIEkgdG90YWxseSBhZ3JlZSB3aXRo
IHlvdS4gVGhhbmtzIGZvciB0aGUgYXNraW5nIQ0KDQpSZWdhcmRzLA0KSmFzb24tSkguTGluIA0K
DQo+IENoZWVycyENCj4gQW5nZWxvDQo+IA0KDQo=

