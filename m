Return-Path: <devicetree+bounces-69306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAEC8CF82B
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:44:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 072491F21465
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 03:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E726FCB;
	Mon, 27 May 2024 03:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="CSzvGqv3";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="TDg/3ZIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5169523D;
	Mon, 27 May 2024 03:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716781469; cv=fail; b=NNLsVAkpvdjeW76z94EPhfXYBecOFKOksOIIjadIIUZCiXS04JfOVucDTJGCMKNt/qrf2rP+rqlAChPZQZuNm3tdzMgI81i37vypv/vrX/qK8T3paNnCbj9H5PQT0VFjXfgXVdAIzB/xvPYdGEFJznhJCvcBXBL9kmDZ8kSWd0I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716781469; c=relaxed/simple;
	bh=SVPc4K+dIiVmR0982FAmR3pe1e6fH8BQCtzyZLMKXm0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=OTgxoGyrYgM9/Rn4TMeegj4w4BB/rMrvQ72WIBY4RJHxnWukloH4LWAcKDduKXxNMK0/lYvtgOEnrLtNQDhI+HnQuz37CUn5sy55gr+k08QQKxxCzUxGinS8+kiEN62D8x9FkawF2sLjjARQeeLSMLykab7+LVaMGdpjhjLKzsg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=CSzvGqv3; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=TDg/3ZIG; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 627585a61bdb11efbfff99f2466cf0b4-20240527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=SVPc4K+dIiVmR0982FAmR3pe1e6fH8BQCtzyZLMKXm0=;
	b=CSzvGqv3fpIFUdSfKI9d6xcGPbB6wChVpIwkJqzfgDNdrzX6SiAkC03VfdgpBVo1PQloa/dY4IRmYjFSPzt/647G885d1s94YiyXyKfWB/SGL5znBmiIl+5wVu+HV0/jpgO8fU/kwxWx5h2iBVXAJKQoAKtZsIDWbTXfx58JpA0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:05b1fdfb-2d74-49ab-a1c0-06367ee3e827,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:acfe3f93-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 627585a61bdb11efbfff99f2466cf0b4-20240527
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 859579783; Mon, 27 May 2024 11:44:13 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 27 May 2024 11:44:12 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 27 May 2024 11:44:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrYRWgJxBiUvD3bvCTPLE+N/zrG//sdlH6eelm/axkRe+VIZNon+7Fw64hUGTyDeNLkJKbCEdW1MMLUJllm7ZTPimKQLkyjvN8XG/hJJYyK8/PS3vq3z86xG2EEf2ACuULH+8Ydy33NTin1PNkyC+kncWvzi7/7TGCN+UdXxMOC3WbTr24LqnRdoQC46Qy6tZ+MsMxhZk3241SmQLSuK7qmWvdsyS+rHf3MGGHJWDk+WzJAQlUVybjJNfrpIikSJ2DUQ5w/QHMQgj46+AvBt3/V2KG3TDtHnoKi/vYWFkmtBP5FNcvu8hMONVjxkBsIGvY45HCDBX8u1QgugM+ZF9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SVPc4K+dIiVmR0982FAmR3pe1e6fH8BQCtzyZLMKXm0=;
 b=kATTKR69MvnXTmiu9j1v1JvlluUcic8LDpk0l9UyzYLgPtq401JKaAUUFSmExbqosSY5EEr3q+FAN2FaSc547E4kypCDzvum0+21TaL2QDce2OJ7JIBzV9rorwRUrq2WG/36I0Idf7vLUSDdFIMbCNtWnZzNFpS9nljCV7R0OAwZC4NYC0dD6bq9ldKzZge6zZ/RthdnLWuB2Jc6SY2XdWEpN7WABaJERanONn+7J58YzRVsrl0UXWS4ik47u/5vXwziVvI59AZ/Dqay9sOwOj+9Aj/bzrPW+8sCSaEqzX/DhZQ1EadfqT5iKETYIA7CQoGiLHb9up5FMmSflacOPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SVPc4K+dIiVmR0982FAmR3pe1e6fH8BQCtzyZLMKXm0=;
 b=TDg/3ZIG6jIjI3O0uYMXjYvjYF/nzLz+daz9uKcKivme2PzC/zFt/QfdwOFXtvG79RdWR7hnMBTYu9H9bytjkbMnI+6jLhlgiD5TOqNaWuPpCUJAsh9VJAxf6338l5ie1eVWD5AThcY9M7PhXGNBnNexYgXzPTf8lFzGtdbOd/c=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by PUZPR03MB7253.apcprd03.prod.outlook.com (2603:1096:301:103::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.15; Mon, 27 May
 2024 03:44:10 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%4]) with mapi id 15.20.7633.001; Mon, 27 May 2024
 03:44:10 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH RESEND, v6 6/8] mailbox: mediatek: Add CMDQ secure mailbox
 driver
Thread-Topic: [PATCH RESEND, v6 6/8] mailbox: mediatek: Add CMDQ secure
 mailbox driver
Thread-Index: AQHar3t3cpLUl9xLck+PMVeju4DUbbGqcUyA
Date: Mon, 27 May 2024 03:44:10 +0000
Message-ID: <74574f799ae2fc0674301a30d42b85698cb988be.camel@mediatek.com>
References: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
	 <20240526144443.14345-7-jason-jh.lin@mediatek.com>
In-Reply-To: <20240526144443.14345-7-jason-jh.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|PUZPR03MB7253:EE_
x-ms-office365-filtering-correlation-id: b8880a7c-4ccf-4831-daca-08dc7dff44a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|7416005|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?K095c3Y0VitrcEVCRlQ3cjE3b3AxZm1aUk5qc0NFWmJuWXlmcTZnVXFKbVJU?=
 =?utf-8?B?NEZwbGFReHRyRnBsamJucWRIZFAwQWoxd2gweU0xbytlN0JMdXdmeTNjcGVh?=
 =?utf-8?B?SnQvMzR1enQ0TmJyanFxSXRkYlc2Q0RVZ1JaN2dqWUU5TlRPc0dBVjRHd2Fn?=
 =?utf-8?B?cE84N2lPclFLV3ZuVWE0a3p0SWd2dkY3aEExc3gzM1oxdE5UZnJ2YWVQWitk?=
 =?utf-8?B?RjdmMzNuWk4xOHlyVVlFL0dYV29ULzZwWEo1ck9kUi93dmIydUNLYTZpd0ln?=
 =?utf-8?B?MlhMRXZrTEREV2JRNGN0UWlEZFZHL2RSczFacGxXNHJvTXZrYjZZNjNma2pT?=
 =?utf-8?B?YUZLSW9QbmJoOEJESndXNnlBRkdpai9pTFZFTEtrU2hFK2xydTRsRUw1ekYy?=
 =?utf-8?B?RmxvSmpYQzdYUlhIZ3pUeXNzbVFTSkVtaG9UQ2ZLTUFCTWdvRnZBemFhUWN1?=
 =?utf-8?B?TGVIMHFUV2hkd0tnYUJ5QWQ4UWR6OENzeEZ3WEk1WjZpM3BodEhzQkxvV2do?=
 =?utf-8?B?SU9nb3NKM0QzelpSejBWODg2VVRoZHVrdVY0a1IzOWRYK0xyRGhYV0lFUVRh?=
 =?utf-8?B?RzJ2YUJUZmwxNk9wcm1WcG5jMXdCcXlxSmdTQlphMXFleXNkdlI1Rnk5ZXBQ?=
 =?utf-8?B?UGlFd3JONm9zYkEyTnFjVkgwalVzcldpSVQ0dDZBaWJHMTFrU3B6OVBZbXlF?=
 =?utf-8?B?WWRQUVhKWjJEV3RPTlFBcEpkRlJhTVNxK0dtcklob1F3bi9JSDlZYlpWWjU0?=
 =?utf-8?B?N0ZVNXcwS0NESzR1NmdCbmNSaEpjemx5V2h6WmF0NWtIem0xTUpBQmU5OWRz?=
 =?utf-8?B?c1VpZXh6WmRqQnloWm9VN2g1WWFxN1VuQTdxdWU1eWNvR21NLzRBblQzMnQ2?=
 =?utf-8?B?ZFBVSGdSVmo0OWd6T0hibVRzOUEzSjFHd0RKZG83Mjd5QzJLNk0zT0FWSjly?=
 =?utf-8?B?ZUdRRXhpTnU5VDNGbUZYZjJLRkZSYXpBcG12SHhVZi9yb3huRGJYVXBtS090?=
 =?utf-8?B?RjJMSXRhWFc3M293THJMWUEwRHdWRFFFT2N4SHZxWHpqN0NETkpCQSt0MjhO?=
 =?utf-8?B?YXFTUEQ0WDlqeEtxL0NKMTZqc2RKTXRUMkJYR0VYY0ZnajB1alZXVGEwKzZa?=
 =?utf-8?B?ZnE3dkpBM29HTjkzUy9mTmIwRGJSUTNYZGNoKzBBSHlvOUg0Y05aQUw2MzB3?=
 =?utf-8?B?TnRKenNoRk8zWDVUdFhHSzZSS2VuMGlQWEJYbWF2ZTJyZ0I5Q2RPNjZqbm9M?=
 =?utf-8?B?ZVZETUNPdlFCRkZtMmdKaktsWnNJc3kxL1gvbDh0dnh4ZHJWa1B6YnJ1WWQ2?=
 =?utf-8?B?SEVxcmc1YWgzWTRsQ253NjdOM2lLVTVvTFZMR2pLZk9CTzFsbzRpRzEzVVdI?=
 =?utf-8?B?dHUwSU40VlJBQWg2YlZjeGhuc3dvVEFTZEVrazVOVzVmKzE2b3I4QjdUN21O?=
 =?utf-8?B?SWtETnNlMDdTN1E0c1M1RnpYU2xoVGpGOFcwMENERVMwYzZuSFIrUnZLQWN1?=
 =?utf-8?B?cDdTeWFxc05ERm9kbTRDOEVyRWZiQlI0bVJlU3RNYk5TU3FDd0JvcnZLejd6?=
 =?utf-8?B?TTdYN0MzSDJYblFISzY1aWZ3a0xpSy9RQXJkcGY5Q1Bma1pCdnNiWElDWmdE?=
 =?utf-8?B?Q1lLbklWQUFtczVyOWFxb1RlRFJFL2F6Qkg1NUovVzVSTVJsTW1GZE5GUjFR?=
 =?utf-8?B?aW1LTFJ5bGY4WWE0MFlhSG1UTHlJVE0vbWlkMUdPZFR6ZzEwNExVSm1BcXZ0?=
 =?utf-8?B?cXIwUkxVZ0laNEp3QmE0QUVBeUYxbGlDUW51T1A0TnM2SFBibkNiNWkxbDNo?=
 =?utf-8?B?ak96WTcyN1IzSzVGeTFVQT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWN3K01TRDlmUUdKKzMyOXgxZlRzZWhYVXdkdWQ5MXJmY1BLcSs2UU9aS1Vo?=
 =?utf-8?B?RG1VQU1aQnlZSldlTkZONDV5VUU1eitHSzBPbUVPSzVGK3BWMCt4UnRYYTFa?=
 =?utf-8?B?cHBSM1lXQzUrc1NZeGxpSlJoSWdIb1NUM2pRT0x2ZUhmWHkxWENlcU40WGE3?=
 =?utf-8?B?TWtvU2ZOcGhJczV5T21JUlY4clVmczJvaGR2WG5LV3B3ZS9OQ2JqZUl0MHdR?=
 =?utf-8?B?N2xiU21uUWMvRmNjeldodDhzRjN1L3ZPQ3FHWU16UnU0RlVOYWxLdWFnSjRh?=
 =?utf-8?B?VHNYUGtpa3ZIZEJhZG9YcFJuYWRnelFJRHpIUGh4bUorMUsvV2IzU0NEaGMy?=
 =?utf-8?B?MXM3QytGelprNndrR0p0aHJSc0RCWGR1c05lYzFMSlB2S044RjRVaHFQQjlK?=
 =?utf-8?B?WHpWY29lQ3dkWVRhRHNaYzEwV08rT0YvejdFcllETkRLaHh2VmRaNVhuL0sy?=
 =?utf-8?B?SkZaMm12QWhLbFZwbHpKZDlnelQ2NGdRSGU4L2gvSEpRSzJxaSthTER5WmZz?=
 =?utf-8?B?bjN5SlNvU1l6NFhJakEzWXRyN1VmSS9HSllPSythMVp2VHBrTTgzbWRjcUY1?=
 =?utf-8?B?djF1aTljb2V4c1V4MFJsSUpyNWV2OHgwVXZpMEFUcHhxemhuZTFEWk9wK213?=
 =?utf-8?B?Y24wbkd5S3UwUUpCZzBITVBUekJ0dW0vQzNvZS9ISlNmVzRTUXBQTDlxdWVT?=
 =?utf-8?B?eldva0s5aUtSbVdxRVRESjc4Z0xNMUhrTzFwVXo5b0g5bjVQMnE2ZzlRbjNi?=
 =?utf-8?B?ajJxYXhsUDIyT3pkUzNjL2tVbEtNWk5Cczkybkl0L1dWSk1acENBb0pMZmR6?=
 =?utf-8?B?Y0JuVXFJRTNvZ2l0SWh0eEYzYVRFS2oyWHJSaDJzODZSVXlNY2l4c1VhQ2tI?=
 =?utf-8?B?S2krNE9FZWF6V0FYMDAvQjM2YTZpMzVWYm03ZDBoTXlrSndEOTJGUFVpYlVM?=
 =?utf-8?B?UVE4dDZkajdMWXU1SHNscDNURDR0alRLdkhxQm04cHg2OW8xZXhrcjdvZHhW?=
 =?utf-8?B?ZW44Z3hiQ2RPZGpwZ3NjU0ppK3htMFJnOVJxck83ZUFKWXYvZmZpSmdEVjBT?=
 =?utf-8?B?N1lEQVNpTHpGVjBONXhOMk5panNEdHlUV3lnbmtIYUM4ejFyajNRRDErejdv?=
 =?utf-8?B?bGpVNlpKc21UT2VFVzZaOElBQ05Yc2UyZUtlMi9SNzdNT25QT2xyN1VUNWpW?=
 =?utf-8?B?bmQ1eUFOTHUvQ3AyaEJVK0xqR2duMGEycjBLNk9Pa2VhUSt3VXRKU1I2cHRm?=
 =?utf-8?B?MVNyZU85M3NGWWh4U243cDRRZVMxMHFhSEZXd0F5aTZWbW43U3A1STd4V2FJ?=
 =?utf-8?B?WEV6K3BtS256TkR0VG40cUFYR2RmM0Rud211c0xJT2JSdkFKTzRKZmVsODBN?=
 =?utf-8?B?Q1JzOVlLcVNjT3Q2NWZpVjB5dzA4NXZVeDI2M3ZxOXRxdmcwTC9BSTVtcUtt?=
 =?utf-8?B?TCtBbTFjWDRuQnNReFBiWlp3anhuQThoSmlqaHdSZ3ZHTSsxZDZPeXpNSXlH?=
 =?utf-8?B?TERMWWJWekxSQnRWVDY5OHE1cm5KYmhDS09JekVYVVB4Z2VUVFZLbnJOWE1l?=
 =?utf-8?B?dFhiTGFnS2FITnNIb0hTVlBoUzFqZkJkenQycFljS3UvbXBoZUJLNzlYVy9s?=
 =?utf-8?B?WEtnQW1ueUxhNHUwL1hoZTNoN05nMXh2NjRBY3ZqS28xNUM0RGU3TU5TRHVC?=
 =?utf-8?B?UFlUQjludlRWc3QxVnE2bXZwZXp4NTVieVdlUy9mVzBab0ZGemNmSkZNSEtZ?=
 =?utf-8?B?K2lGb2hQcVhpaUdNa1VkV0ZyUnk5NzFMYnd2SUtPeXFpdHlaVi85Z0c5WStD?=
 =?utf-8?B?ZHdNdVlYN3hnbG0rY1QwSlVBbkt3bGEwT0xyODR4blRwRFdzWVZ0Tm9wL1R3?=
 =?utf-8?B?Nm9kU1pYSllGOFJ2QlhhZVF3N0hod29qTDY4WGpRa2ZhUlg0d09ldWxqS01Z?=
 =?utf-8?B?bTNNdDlXZHQ0aktSdUhBOFhyVlJ3WEZ4SjRJNUFmMUNTNFVWNVFxM3FFaXlG?=
 =?utf-8?B?aUJDQzZ6ZENLZU1wYmN1K0tEM2VJWGFpRGtlWTRtcVg1bkJFaDNnYUFUeVNn?=
 =?utf-8?B?Zy9wWk1tOTFCNzZBQnJkNW9FVGRKbHJ2Rm96SCsrb0JaaTRXV0p6a0wwV3BT?=
 =?utf-8?Q?35ABMH3RbnFQn1AKQD+Y1bPwh?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D39DD0A209A0A4594412FCAB8868BE8@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8880a7c-4ccf-4831-daca-08dc7dff44a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 03:44:10.1447
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZAk3iil+NG97BKd0CoYB4C7SjmogPYL41aKYKCTrAbVCJ47RyCYbfC6svozgQHoKMyf5S+N5VxzVMsNk0c2V6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB7253

SGksIEphc29uOg0KDQpPbiBTdW4sIDIwMjQtMDUtMjYgYXQgMjI6NDQgKzA4MDAsIEphc29uLUpI
LkxpbiB3cm90ZToNCj4gVG8gc3VwcG9ydCBzZWN1cmUgdmlkZW8gcGF0aCBmZWF0dXJlLCBHQ0Ug
aGF2ZSB0byByZWFkL3dyaXRlIHJlZ2lzdGdlcnMNCj4gaW4gdGhlIHNlY3VyZSB3b3JsZC4gR0NF
IHdpbGwgZW5hYmxlIHRoZSBzZWN1cmUgYWNjZXNzIHBlcm1pc3Npb24gdG8gdGhlDQo+IEhXIHdo
byB3YW50cyB0byBhY2Nlc3MgdGhlIHNlY3VyZSBjb250ZW50IGJ1ZmZlci4NCj4gDQo+IEFkZCBD
TURRIHNlY3VyZSBtYWlsYm94IGRyaXZlciB0byBtYWtlIENNRFEgY2xpZW50IHVzZXIgaXMgYWJs
ZSB0bw0KPiBzZW5kaW5nIHRoZWlyIEhXIHNldHRpbmdzIHRvIHRoZSBzZWN1cmUgd29ybGQuIFNv
IHRoYXQgR0NFIGNhbiBleGVjdXRlDQo+IGFsbCBpbnN0cnVjdGlvbnMgdG8gY29uZmlndXJlIEhX
IGluIHRoZSBzZWN1cmUgd29ybGQuDQo+IA0KPiBUT0RPOg0KPiAxLiBTcXVhc2ggY21kcV9zZWNf
dGFza19leGVjX3dvcmsoKSBpbnRvIGNtZHFfc2VjX21ib3hfc2VuZF9kYXRhKCkuDQo+IDIuIENh
bGwgaW50byBURUUgdG8gcXVlcnkgY29va2llIGluc3RlYWQgb2YgdXNpbmcgc2hhcmVkIG1lbW9y
eSBpbg0KPiAgICBjbWRxX3NlY19nZXRfY29va2llKCkuDQo+IDMuIFJlZ2lzdGVyIHNoYXJlZCBt
ZW1vcnkgYXMgY29tbWFuZCBidWZmZXIgaW5zdGVhZCBvZiBjb3B5aW5nIG5vcm1hbA0KPiAgICBj
b21tYW5kIGJ1ZmZlciB0byBJV0Mgc2hhcmVkIG1lbW9yeS4NCj4gNC4gVXNlIFNPRlRERVAgdG8g
bWFrZSBjbWRxX3NlY19wcm9iZSBsYXRlciB0aGFuIE9QVEVFIGxvYWRlZCBhbmQgdGhlbg0KPiAg
ICBtb3ZlIGNtZHFfc2VjX3Nlc3Npb25faW5pdCBpbnRvIGNtZHFfc2VjX3Byb2JlKCkuDQo+IDUu
IFJlbW92ZSB0aW1lb3V0IGRldGVjdGlvbiBpbiBjbWRxX3NlY19zZXNzaW9uX3NlbmQoKS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEphc29uLUpILkxpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogSHNpYW8gQ2hpZW4gU3VuZyA8c2hhd24uc3VuZ0BtZWRpYXRl
ay5jb20+DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArLyoNCj4gKyAqIGVudW0gY21kcV9zZWNfZW5n
aW5lX2VudW0gLSB0aGUgZmxhZyBmb3IgSFcgZW5naW5lcyBuZWVkIHRvIGJlIHByb3RlY2VkIGlu
IHNlY3VyZSB3b3JsZC4NCj4gKyAqIEVhY2ggZW51bSBpcyBhIGJpdCBpbiBhIHU2NCBlbmdpbmUg
ZmxhZyB2YXJpYWJsZS4NCj4gKyAqLw0KPiArZW51bSBjbWRxX3NlY19lbmdpbmVfZW51bSB7DQo+
ICsJLyogTURQICovDQo+ICsJQ01EUV9TRUNfTURQX1JETUEwCQk9IDAsDQo+ICsJQ01EUV9TRUNf
TURQX1JETUExCQk9IDEsDQo+ICsJQ01EUV9TRUNfTURQX1dETUEJCT0gMiwNCj4gKwlDTURRX1NF
Q19NRFBfUkRNQTIJCT0gMywNCj4gKwlDTURRX1NFQ19NRFBfUkRNQTMJCT0gNCwNCj4gKwlDTURR
X1NFQ19NRFBfV1JPVDAJCT0gNSwNCj4gKwlDTURRX1NFQ19NRFBfV1JPVDEJCT0gNiwNCj4gKwlD
TURRX1NFQ19NRFBfV1JPVDIJCT0gNywNCj4gKwlDTURRX1NFQ19NRFBfV1JPVDMJCT0gOCwNCj4g
KwlDTURRX1NFQ19NRFBfSERSMAkJPSA5LA0KPiArCUNNRFFfU0VDX01EUF9IRFIxCQk9IDEwLA0K
PiArCUNNRFFfU0VDX01EUF9IRFIyCQk9IDExLA0KPiArCUNNRFFfU0VDX01EUF9IRFIzCQk9IDEy
LA0KPiArCUNNRFFfU0VDX01EUF9BQUwwCQk9IDEzLA0KPiArCUNNRFFfU0VDX01EUF9BQUwxCQk9
IDE0LA0KPiArCUNNRFFfU0VDX01EUF9BQUwyCQk9IDE1LA0KPiArCUNNRFFfU0VDX01EUF9BQUwz
CQk9IDE2LA0KPiArDQo+ICsJLyogRElTUCAoVkRPU1lTMCkgKi8NCj4gKwlDTURRX1NFQ19ESVNQ
X1JETUEwCQk9IDE3LA0KPiArCUNNRFFfU0VDX0RJU1BfUkRNQTEJCT0gMTgsDQo+ICsJQ01EUV9T
RUNfRElTUF9XRE1BMAkJPSAxOSwNCj4gKwlDTURRX1NFQ19ESVNQX1dETUExCQk9IDIwLA0KPiAr
CUNNRFFfU0VDX0RJU1BfT1ZMMAkJPSAyMSwNCj4gKwlDTURRX1NFQ19ESVNQX09WTDEJCT0gMjIs
DQo+ICsJQ01EUV9TRUNfRElTUF9PVkwyCQk9IDIzLA0KPiArCUNNRFFfU0VDX0RJU1BfMkxfT1ZM
MAkJPSAyNCwNCj4gKwlDTURRX1NFQ19ESVNQXzJMX09WTDEJCT0gMjUsDQo+ICsJQ01EUV9TRUNf
RElTUF8yTF9PVkwyCQk9IDI2LA0KPiArDQo+ICsJLyogRFNJUCAoVkRPU1lTMSkgKi8NCj4gKwlD
TURRX1NFQ19WRE8xX0RJU1BfUkRNQV9MMAk9IDI3LA0KPiArCUNNRFFfU0VDX1ZETzFfRElTUF9S
RE1BX0wxCT0gMjgsDQo+ICsJQ01EUV9TRUNfVkRPMV9ESVNQX1JETUFfTDIJPSAyOSwNCj4gKwlD
TURRX1NFQ19WRE8xX0RJU1BfUkRNQV9MMwk9IDMwLA0KPiArDQo+ICsJLyogVkVOQyAqLw0KPiAr
CUNNRFFfU0VDX1ZFTkNfQlNETUEJCT0gMzEsDQo+ICsJQ01EUV9TRUNfVkVOQ19DVVJfTFVNQQkJ
PSAzMiwNCj4gKwlDTURRX1NFQ19WRU5DX0NVUl9DSFJPTUEJPSAzMywNCj4gKwlDTURRX1NFQ19W
RU5DX1JFRl9MVU1BCQk9IDM0LA0KPiArCUNNRFFfU0VDX1ZFTkNfUkVGX0NIUk9NQQk9IDM1LA0K
PiArCUNNRFFfU0VDX1ZFTkNfUkVDCQk9IDM2LA0KPiArCUNNRFFfU0VDX1ZFTkNfU1VCX1JfTFVN
QQk9IDM3LA0KPiArCUNNRFFfU0VDX1ZFTkNfU1VCX1dfTFVNQQk9IDM4LA0KPiArCUNNRFFfU0VD
X1ZFTkNfU1ZfQ09NVgkJPSAzOSwNCj4gKwlDTURRX1NFQ19WRU5DX1JEX0NPTVYJCT0gNDAsDQo+
ICsJQ01EUV9TRUNfVkVOQ19OQk1fUkRNQQkJPSA0MSwNCj4gKwlDTURRX1NFQ19WRU5DX05CTV9X
RE1BCQk9IDQyLA0KPiArCUNNRFFfU0VDX1ZFTkNfTkJNX1JETUFfTElURQk9IDQzLA0KPiArCUNN
RFFfU0VDX1ZFTkNfTkJNX1dETUFfTElURQk9IDQ0LA0KPiArCUNNRFFfU0VDX1ZFTkNfRkNTX05C
TV9SRE1BCT0gNDUsDQo+ICsJQ01EUV9TRUNfVkVOQ19GQ1NfTkJNX1dETUEJPSA0NiwNCj4gKw0K
PiArCUNNRFFfU0VDX01BWF9FTkdfQ09VTlQNCj4gK307DQoNClVzZWxlc3MsIHNvIGRyb3AgdGhl
c2UuDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsNCg==

