Return-Path: <devicetree+bounces-47136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B160086C4A5
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4B751C212A7
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F0058208;
	Thu, 29 Feb 2024 09:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mouq4jot";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="iM6viFl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A302958212;
	Thu, 29 Feb 2024 09:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198001; cv=fail; b=DPDRT+R9A05J+JPsLVWoaPLlBMLj06OBt+ZwR29o8VPAO2y7lQSeQGHxlsqCBEyNW1JuuRSanvtr+twf/LGAwLDeG+/rmXklpEf+wvL5axZWi+hCT7Y5kEltUzPMP2hcw67+HqdLletfOpLvdnrf1skZEiVu8uH57kPOu7HhjMM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198001; c=relaxed/simple;
	bh=hxgXRnHuwUeOun8InhZwq0gK45FxQLB3euTXWq49UXY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=DD0sXnE0EpnJPcAYZ6rfFrNPTBo8r1DmRCQxbkACaLuX/wB0dtrswKjhX2QmdhutgOTsklnV+nFG6UKS9eo+YVLCNqcd0JUEIbzmgrpsjP1tqrkYsm563/324E6c55pcqUXtWAsE+KP1XTM7zVCsvlHf9tpph0sjias57kGSqV4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=mouq4jot; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=iM6viFl9; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: c2e74714d6e211eeb8927bc1f75efef4-20240229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=hxgXRnHuwUeOun8InhZwq0gK45FxQLB3euTXWq49UXY=;
	b=mouq4jotKNICW81ZlLpekoYJpoI4/cGNIo2jIfHTF3TlFtxAOZ6yDPo4qYpU/CtHf2Wr8RwoAfvx/mtOK3gKh6dSbbrPsbbWGG1lWlYceWQV5Yu6/wEUO8gPukGRpKxIR+8Alyine2em+YH2Xku1Bzfy6FSmoOtt0xdF9ivkSHU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:7a358c14-6749-4668-b5ea-efe2bd02d068,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6f543d0,CLOUDID:73cc7284-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c2e74714d6e211eeb8927bc1f75efef4-20240229
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1919533330; Thu, 29 Feb 2024 17:13:11 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 29 Feb 2024 17:13:10 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 29 Feb 2024 17:13:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAnsCNBWUiHqMxNiTVeovl3mWOO5YQ4qfmScnXJ28GPTAtr9foZoJlBs0dBRzQvFRyhzE3lLS9UMAD7AXMpxhm0vYH51T6A6E0p6M2aAbJ9FycB/BcO8VCW6bCeGvEhS/MmyFkioSWd+sJML/D8JkCo6pYfmECh8NRS1jxmaVbzkyEIiVL61YfjgKNeJ+Y6pDryaUDNyK/OSKmSjwgzFV8Z284U0Z8dwaADmyIJ67PxslJoMxT40kdD4FaC45BZlRRXmLBqxoY9YICOxxwMQVIh4xTkmuhpZxRLWBTDxBmX52+4Kc56So3btNrYS2bzfEcE26rN8xpaDSu7mbuhgoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hxgXRnHuwUeOun8InhZwq0gK45FxQLB3euTXWq49UXY=;
 b=LbKLe0KfSolwS02i9JawrwLwD/uMaYkw3VFXbYHOI5zOuygK29mBEm0OHuvlQTR/o9kn6nRw7nZA15vujQGCjbau3OOP6vBIAQGNkLU5slwUl7MXj89bT5b8DOtCmiFi3/iXHgdjhrinUBZP4KLGbWdnBKAKUd25NR47v9rrb07ZcxecDS25qA6t574Liy5RDK69BHvc2HEZujbp+wIu/XDdpp1JLlhlFVw4NMwp9m+Kbr2R7ni9oXYO2PZgjheuC50LfDs2E/0AtR54dfgb3fL7TlS3sbw0fpGpltYBkuHyR11u1kajzi4ujQ0Ab5hW6fY2z/SnlTiNC6VOYltLkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hxgXRnHuwUeOun8InhZwq0gK45FxQLB3euTXWq49UXY=;
 b=iM6viFl9ruY+sZYDWRFowpFfjKj6qfR2dx2cr2046Lw4lUgu2UmrCRWMzcOZU8ibYLP57/Qbw2lZoeolIBh83UaJQDH6tUAtAGulzaEcGrHdQh623uO/EFZrxaBelgE1WhrmXjDo9YiH2In5OMU3FScH6gidONDZEO4jCmIPsF0=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by SEZPR03MB8406.apcprd03.prod.outlook.com (2603:1096:101:21e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.39; Thu, 29 Feb
 2024 09:13:07 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60%5]) with mapi id 15.20.7316.039; Thu, 29 Feb 2024
 09:13:07 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "fshao@chromium.org"
	<fshao@chromium.org>
Subject: Re: [PATCH 2/3] dt-bindings: display: mediatek: gamma: Add support
 for MT8188
Thread-Topic: [PATCH 2/3] dt-bindings: display: mediatek: gamma: Add support
 for MT8188
Thread-Index: AQHaargGxtJLRmr4kk+Jg/QX1onGt7Eg/MkAgAAMyQA=
Date: Thu, 29 Feb 2024 09:13:07 +0000
Message-ID: <762fb2f38177b7a1cc14eb94a3dc400d837b32e6.camel@mediatek.com>
References: <20240229023522.15870-1-jason-jh.lin@mediatek.com>
	 <20240229023522.15870-3-jason-jh.lin@mediatek.com>
	 <23a99e13-fe45-4cb7-8e1c-f6c85d70becc@linaro.org>
In-Reply-To: <23a99e13-fe45-4cb7-8e1c-f6c85d70becc@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|SEZPR03MB8406:EE_
x-ms-office365-filtering-correlation-id: 0ccc3896-c05f-42fc-a6f7-08dc3906a49c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CRk1tvdL60CNNjBV6rCaXY+hPen0BMQV0sS5CqhYySciPej5lBdeP+YPNm3iR+A4m1G6ponsJ+idwUcYcV5X483HYpKrsrp5JwzMbo/FxfpxkwYH6aPNvLVvN0OE0xKkD3rD3DZcNXy2jEBPcLxxByStGWn+L6+8MZSbaPetUSZAK6A9KlvJMkY0gOmBNY7T4jjpQgDOlm0IUDc6lHRllI2cmkky07i+z8Clbv8b45bRzXgeaas5JbTxDB4FYmdGR6kjir/36PEGPqok4IwtEPWtGTp3YRML35CZBgk2GMpPq7k8dYZ9bvDDKMW09p+VmAb13UQ8DrSs8uIobZQrk0oSDJoJWMUD4QaRrJTP/4OVr29ucclobe7rmlxVMKkBZxVvIryia90AIAen1q2ybd9Lmz8EjJCoQb/MGPvBDTsqMqPp/U2Jf3eWDy+7B1xofqgJtxaH0lcmPYbmz3GuCGFpyURKKrZvNWaBzvVc2kYd31hkmeV3/H2EkCmfO0447JAlhbS4dkY2JjINEtb66sR5KTC04MJfZc2IYrzKi0oqxu6p+2xNAq508vb5q9nPxzE2heG6mqVNQlL+LtmdycwzwBQiKu+1t0sNIpNHVQfY4OVBeIdNBd0/ReP3hGoeKC94em5Ry28MKlfsrT7IpU4JCB5TXscvQ/7TkRDFfqGi9V+xFqKvduJfBf6Tvvj+eoBNzF689sE0Ta3/cWtM+NORALhe1PVUZi0Q7VCxqSU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlVaZ05JUjJGaWxyNE9PYWg3R01YM2p0TlVyeGh1ZmNUR3QwN2xaMXI2RDNH?=
 =?utf-8?B?NVVhNTZERWg2TktVSTdYblFaSU9wNkZIYUphZHpXYzFCS0ptMXdWcCtwMFVS?=
 =?utf-8?B?VWRaMWVmUkFrRzlRRzJCNVFMclpqUE5maGJlMWFVT09lZXdHRUQra0c3QW1n?=
 =?utf-8?B?NzQrQ2xMeXI4T214WmJnTXNTTm9ZMUo2L1NnbktoUGZYQTZBTUlhREt0OVBO?=
 =?utf-8?B?SVVjVHdQSWV1VVhSWU5XZ3ZEdFp0NmdhVGRzVnpxMERMR042SDFKeElNbVBQ?=
 =?utf-8?B?TitzZEl6eUhzU2w2QnhsR1JjTzM4cEpFSFZNaVVUZWxjSFAxK2lXQm1oS1Q1?=
 =?utf-8?B?YndNVFhWcDFzV29nZnpacVFFWkJadnhWaGdpWWpVMmhjT3RKRlNXYzhucVlu?=
 =?utf-8?B?Vzl2aWx4bmpvUk9OUjAvdmZvcGNEelNNQ3NLanBFNlVSSkY5Z2RJS3hONXlX?=
 =?utf-8?B?R3cxUytnbTJsV0haVER3OFdLQmVkaVRHTUx2cmNoVnh1ck1GZmwzaU1qQUwv?=
 =?utf-8?B?clB0eWt4aXJLaURrdERxUmtCZURtWXpaVFlPOUc3T0xOUjJUWXIvQTlEK3NK?=
 =?utf-8?B?Zk8vdWFUSXlDYXRSTlpNT0lLUXhyT01ZT05kTS93YkhEUlhmT092dW5zMXN1?=
 =?utf-8?B?UVZqeXRHbEZKUHFWcnhiNnNSTDdyVGlVY0F2eEJ2dHVOOTd6T3dOSjRMd2hw?=
 =?utf-8?B?enU3NEQ2bForeVJwMXNMdUxvWjFKaTU1eHFKSWVkbEZyRDd1eGtxRmRaR3Rz?=
 =?utf-8?B?UUp6OVNLTUl6QjkwUi9zVEwwbWVZRU5LTVRiZlRMMHNOOVE4dFlSQTcrZUYz?=
 =?utf-8?B?c0oxMXRXakYvRVJzcE92UjYycEx1SE1NT2NMNTZQZU1GS1pYR2NIbDNMMHg2?=
 =?utf-8?B?T2ZIdUFwd0xlTDR4U0k3MGlKdkpIVTdoeXdFTHh6UCtDR3lhd3BGYlZnQWRa?=
 =?utf-8?B?SlZtdTNvNlNKbTBxZDhCNjNaM1pOUlVnbzZjalNYN0d3QmZGblVZWmY2dVpQ?=
 =?utf-8?B?RG82T0tpYlNFWWVmaXZZK0l2NElXNFc4Y2Q1a1RVbTRkV3VDNk1YazJCbHpa?=
 =?utf-8?B?ZGpEbVBlNVljODh2TzcyUFJML25JNW53eGpuVjhJdU1JbUNYR2xIWFdpWlI5?=
 =?utf-8?B?cTBKL1lZSW5VV2dOZVZIUXNQV2lKdXlsWEtrS0NnUm5YU3lMNDQrU2UvbjJS?=
 =?utf-8?B?dndTTGxYNDRSKzR4TDVOZjcyNnllVzVxQ0Q4emQ4WkVPWWQ2aFVzNjd4ZVRE?=
 =?utf-8?B?Zk44eVFZZE5Vb0hNd0xvNzRMRFRCeFlZRTlHYkVaa3BGeUFlQjJJWHdYVjZw?=
 =?utf-8?B?eUo2S3NOaWpwa3Q3LzlIR1dUVFBCRE50OU93UG01OXRUQ0ZBNDZtOGVOcnFh?=
 =?utf-8?B?L2JJZjVhaUhxajVnTjdNUDRzeTlxM2wxQ2NRWVk4VVB1QVRheXdVNE1TYjV3?=
 =?utf-8?B?WHB4bnJTT1lnemdIQUFRNWdQWGw5c0ZxNnZ2R2tHcCtJejByS0FIREpoN3Vj?=
 =?utf-8?B?YnJpcGlEN0dpWlE2d2N0c3h5WWVNMUplcEdMYXRheGhRWTdYb0I5RHIrdVVu?=
 =?utf-8?B?RkdvM3hYaTliZ3AxdzZFRkZSTStuN29JOVluTm5BQ1QxVGFmUUZNL1ExL0J1?=
 =?utf-8?B?bXdDMngvYThVRTdSZGJnOGRXY0hEak1QMXJPd3p3NWR6M01SOXpzUWlJbXdk?=
 =?utf-8?B?WXRZNk51K3RlNzZuTHpUai9JNXlsZjNXUHhSdUd0K3BtbGdjR2hBWjg1L3ZL?=
 =?utf-8?B?dS96QmY3bUNZNThVYnEzd2FMODhnakNSOFBnRXQ4UU8xdk80dVorckt1Rlpr?=
 =?utf-8?B?U1V3cGo4eUNCRDlPVEM4V1BNNmEwRkZUNWFFdVpka3RjWjlVTUk3Y3FacnlJ?=
 =?utf-8?B?Y0o2bm5VUFhHOUx3VVYvNFlZTGFmalNyUXFQTytpaVB1c0NoaVloNHZNdjdq?=
 =?utf-8?B?aGlmSlhGajlnNFhwbzdlQW1qRW1UUGN6RFBIaUNFOFo3aW1WeERTbS9iSkhD?=
 =?utf-8?B?KzByUVBZczhTRVRCd1JqUkRJZXVTcEp0QWxiMjlNcUVDQkRhbGkvVkNyeEV3?=
 =?utf-8?B?UzNzTlNmMy9OdkxIK3FoSm0vWXl1eXdOT0doRHFWR1RCNUdNVDEyUTBWcW1a?=
 =?utf-8?B?WDJUcDVoK3hwUGxSQ2Q1MWs2ajFBRGd3WTl1UndKbGtTbWg1dUtwbDB0eXJz?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E92385C0B1B637408B7390073A815A52@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ccc3896-c05f-42fc-a6f7-08dc3906a49c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2024 09:13:07.4026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: psRC8dc3iaigp5pGg3eEgdHvkAY86zciC4D86OM6ylkDgyQKhDxFrKZjrbctc3Tfrj92MqQ1TDuELKS5CZqUWM6bOQv9L0FAgrvTrboZfdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8406
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--20.626900-8.000000
X-TMASE-MatchedRID: O/y65JfDwwunykMun0J1wmjZ8q/Oc1nAjLOy13Cgb4/n0eNPmPPe5KWz
	WoIRiV9DM/Se/q/gEyf5MiS7M8c1eGmXMi7Ntyo2mlaAItiONP1MjQ19j30wyd9RlPzeVuQQi3N
	TyIt6V8quBO/LdDafPOb80UbzlYdSGAdnzrnkM4/SBVVc2BozSlkMvWAuahr8+gD2vYtOFhgqtq
	5d3cxkNT3zSp73HMHc
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--20.626900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	135A229A0BD287DD8C4BD9E45D19D9F7CBADA99389B3729692C12C25995BDAFB2000:8

SGkgS3J6eXN6dG9mLA0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXdzLg0KDQpPbiBUaHUsIDIwMjQt
MDItMjkgYXQgMDk6MjcgKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+ICAJIA0K
PiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRh
Y2htZW50cyB1bnRpbA0KPiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBjb250
ZW50Lg0KPiAgT24gMjkvMDIvMjAyNCAwMzozNSwgSmFzb24tSkguTGluIHdyb3RlOg0KPiA+IFRo
ZSBnYW1tYSBMVVQgc2V0dGluZyBvZiBNVDgxODggYW5kIE1UODE5NSBhcmUgdGhlIHNhbWUsIHNv
IHdlDQo+IGNyZWF0ZQ0KPiA+IGEgb25lIG9mIGl0ZW1zIGZvciBNVDgxODggdG8gcmV1c2UgdGhl
IGRyaXZlciBkYXRhIHNldHRpbmdzIG9mDQo+IE1UODE5NS4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKYXNvbi1KSC5MaW4gPGphc29uLWpoLmxpbkBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+
ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZ2Ft
bWEueWFtbCAgfCA0DQo+ICsrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQNCj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxnYW1tYS55DQo+IGFtbA0KPiBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGdh
bW1hLnkNCj4gYW1sDQo+ID4gaW5kZXggM2U2Y2I4ZjQ4YmNjLi45MGM0NTRlZWEwNmYgMTAwNjQ0
DQo+ID4gLS0tDQo+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
bWVkaWF0ZWsvbWVkaWF0ZWssZ2FtbWEueQ0KPiBhbWwNCj4gPiArKysNCj4gYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxnYW1tYS55
DQo+IGFtbA0KPiA+IEBAIC0yOSw2ICsyOSwxMCBAQCBwcm9wZXJ0aWVzOg0KPiA+ICAgICAgICAg
ICAgLSBlbnVtOg0KPiA+ICAgICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ2Nzk1LWRpc3AtZ2Ft
bWENCj4gPiAgICAgICAgICAgIC0gY29uc3Q6IG1lZGlhdGVrLG10ODE3My1kaXNwLWdhbW1hDQo+
ID4gKyAgICAgIC0gaXRlbXM6DQo+ID4gKyAgICAgICAgICAtIGVudW06DQo+ID4gKyAgICAgICAg
ICAgICAgLSBtZWRpYXRlayxtdDgxODgtZGlzcC1nYW1tYQ0KPiA+ICsgICAgICAgICAgLSBjb25z
dDogbWVkaWF0ZWssbXQ4MTk1LWRpc3AtZ2FtbWENCj4gPiAgICAgICAgLSBpdGVtczoNCj4gPiAg
ICAgICAgICAgIC0gZW51bToNCj4gPiAgICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE4Ni1k
aXNwLWdhbW1hDQo+IA0KPiBQbGVhc2Uga2VlcCB0aGlzIG9yZGVyZWQgYnkgZmFsbGJhY2sgY29t
cGF0aWJsZSwgc28geW91ciBsaXN0IHdpdGgNCj4gODE5NQ0KPiBmYWxsYmFjayBzaG91bGQgZ28g
YmVsb3cgdGhlIGxpc3QgaGVyZS4NCj4gDQpPSywgSSdsbCBtb3ZlIGl0IGhlcmUuDQoNClJlZ2Fy
ZHMsDQpKYXNvbi1KSC5MaW4NCg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KPiANCg==

