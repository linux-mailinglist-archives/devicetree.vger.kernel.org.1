Return-Path: <devicetree+bounces-20225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F97FE5F1
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 02:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9906B1C20A74
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 01:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3364C9F;
	Thu, 30 Nov 2023 01:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="jxSi6qrj";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="fkBqj7fg"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8096A8E;
	Wed, 29 Nov 2023 17:19:58 -0800 (PST)
X-UUID: 91f8c4728f1e11eea33bb35ae8d461a2-20231130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=qRXK1LMXLHOsCnk1dLFX8yDlETLyApTiC/p0fRAEjQI=;
	b=jxSi6qrjOSJcwDViVEORfitX3S5NoftgXJkWyH8zbk9Y76KkiBu0+1bSXiNCPH01vAOs0BN1SzGdOmbL6s9Tg54+v1JMyFpYuY/JBRYuTNYuLMw0Gp3v5tgl8+s9jGX2b0LUXhExEwm2qJNR8SXJ2VY9hbOAXXWkK3oFeX4JRgE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.34,REQID:c331b0ba-34a9-4ad8-98db-234834c15381,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:abefa75,CLOUDID:9f713a73-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 91f8c4728f1e11eea33bb35ae8d461a2-20231130
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 43696877; Thu, 30 Nov 2023 09:19:55 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 30 Nov 2023 09:19:54 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 30 Nov 2023 09:19:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lw06UWztUuoFHCoFQNLbuJXlS4Ac6JvP/wc0zNvoxcPZM50CjnTK4tTL/05PBw64la2iAiOd5ITeWHYW7B2Ycjl4Z3vNwbvZljFekG+OC6p6m13eogFUz8YBVdcua1+Ids65poWW+To8JqKA54hQANTZrmP0GaaVQH7ZewcNu1huSF68pOUwzyLqMVtzXf2hfiLRjKKYDUJ66w1w9GMWqbaIWaorrFlaKh5HI3OXjhR3kKI179LFstALbTYlVSTTH/fAkvZxjd6etlbimnDEqLUYHfPlic1S0ODj6CkoRlvTXixWOOp6nN85Flvvs7rB9SM7Van3OwQv9Lzh1rjpsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qRXK1LMXLHOsCnk1dLFX8yDlETLyApTiC/p0fRAEjQI=;
 b=f7+UBXavb8jQPd4PIl9U16qSTR6ZxPJbY8S72ZK7WdQO2HEglJ5QRPnMnD0MRn7dFH7CrNAhq/g0o6nfZlmMss1siBtcwWPikFDjgF2FI5QlKmX1k17Qsm47pFUjChvrMaMgHxvojEPnyfnxNQb6+GWNEvj+tJHXf5TGAlvRfn/MXHgttG9KbQdWs1Seuqa3R7vejA7gQb4OO7wNySRhP9R8ugeecWkLWvZ294nseo8SRY1CuuGUq+JRy1IR8cFGj1hvI6lVfAv+GqYzAg/9CvgFnbV+fe1fJ3IMkPrNVBAMDkpjDe79bjImIwn26quu+w7pJ90GMf55gIYh8eYAiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qRXK1LMXLHOsCnk1dLFX8yDlETLyApTiC/p0fRAEjQI=;
 b=fkBqj7fgnr3UF9GcL4q6akk3VpAsUrNRFFVu7jbz774Syg2mMt11XUQczVETF6Yf2AN6A4RCwJ5tsBhIEpm0s7fqFjHxp26d1W86vMxUxuhY/aKN5V7W8GUfihkjrS8lrEu2M5yrn4izEft/o+B16AIzsV2CQR5THs4zKdPxyk4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SI2PR03MB5942.apcprd03.prod.outlook.com (2603:1096:4:146::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Thu, 30 Nov
 2023 01:19:52 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::eb43:57cb:edfd:3762]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::eb43:57cb:edfd:3762%6]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 01:19:52 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"wenst@chromium.org" <wenst@chromium.org>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "sean@poorly.run" <sean@poorly.run>
Subject: Re: [PATCH v3 10/11] drm/mediatek: Support CRC in VDOSYS0
Thread-Topic: [PATCH v3 10/11] drm/mediatek: Support CRC in VDOSYS0
Thread-Index: AQHaAMYQ2wRvgfgdZkSH+Z0saDoqZbCSVRWA
Date: Thu, 30 Nov 2023 01:19:52 +0000
Message-ID: <443389f610d4627608d0b0c0436a6375d280483e.camel@mediatek.com>
References: <20231017064717.21616-1-shawn.sung@mediatek.com>
	 <20231017064717.21616-11-shawn.sung@mediatek.com>
In-Reply-To: <20231017064717.21616-11-shawn.sung@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SI2PR03MB5942:EE_
x-ms-office365-filtering-correlation-id: d411faea-543a-481c-8c35-08dbf1427431
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fRRq26Olm6yI3qxj+zVkuNA502s3TIhyNDwLm1QHWnQzaMrcQ6yEweoCipVrGhTgBNZd6ue5rTpBiFHIiXwdizdsrJ1o/Lyk6W8KSueNtLHVs7J2ioOqD/MDat7+7LXCeh9TBPsIVFlc3QzDWTA03Zh5GD6OCa5hhax0GKJHqM0jwsm0XqSEuIx3ATuoe53e6YqhEXOEHXStswtvvqdZtTA9PtOWrH5UsvrcGoGK8qp9QHGSKIcWcrJGMD7kAxWJHcyzmszu+gHIIi9QAeqV3sjeKRl36jX1VUmHi6e9AYuSFKlbADVxmf25puN78DHXSt74xDlLFAa3IaT/Yjqsc4UoVQYMuubYtE8hQYMh1dJMK55lNECYDc5Q7vpiS7W5EJn7rwZHRaADuoEX8S3SU8HxdrxXnF31Y0uTRUiYrMquuJXpmj9kXv4lMZIiMXCiMJXb3gWdEl41qflp+t6VW/xrzHR3vx1Yw8lsUnHRK9dtkMi1puiLA+UVgiMuM2q3QaM63PhYjE28BWyNLqevvaQ82fhbQmkm2709mVy9NCcFVXU28AnBcLwSIqRfURfvS/4HwY6lW5xvCkx1sLnLl/eXO9XOwLuFF+B6kTvls8kPhpvUh9wKLdr9Z0piLgAa4vLGUU8/emqkyzflfUGRYedc5y7Le32EeVyoCgz4Z3pTkItTO5GcKXI2JHKODdrjAzeW/L8DyDIGs6U0u5yfaw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(346002)(136003)(396003)(39860400002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(316002)(110136005)(41300700001)(7416002)(202311291699003)(4001150100001)(2906002)(5660300002)(8676002)(4326008)(8936002)(478600001)(83380400001)(76116006)(66556008)(66946007)(66476007)(64756008)(54906003)(38070700009)(66446008)(38100700002)(86362001)(122000001)(6486002)(6512007)(6506007)(2616005)(36756003)(71200400001)(26005)(85182001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0o5MFk4R3RPcGhFYXFYMm5NZ3Zqa09IYi8vdVN4QXJlSlk0WkRRQ0hhZVVI?=
 =?utf-8?B?RzVHQlk2QWlyME1QaVJmZGozM2VlSFdOSGVmQlR0NUs3SWhXSytBL09Ld3M2?=
 =?utf-8?B?UzdLeE5xRmpiU3g2M2NNQkd6ZjNxWEFXYTNUcDgydVZ4MHlzWGU1NlZJejkx?=
 =?utf-8?B?dG5rTkN3THg4TkZTeUNoUnVsUkNJS25mWXJtVkhzSUJwZUZraGgvQllYNlgz?=
 =?utf-8?B?T09oU2cyYWJySFVzNGVreTIvUUZsVThHYXNOc0JsYTllMHkySFBJanNmckt6?=
 =?utf-8?B?T0RYSW1lQ2FQM2l2MW4reStVcWVUazNiNHhEeXVud0Q5Mm84djdMNjNoOFdi?=
 =?utf-8?B?TlhkN040ZHd5Mjd1a0Y0aXZYVzB1c0lFTm5La3RmWTJmOW9nOUJOUTRCb1Ra?=
 =?utf-8?B?SXhoaGdwM3g0RWt1ZC9ySHRqYW9QZzBnVk4zYmVUNE1sRXpsazV4WjNMbFRM?=
 =?utf-8?B?cEtSY01kZnYzdjBDYVdnK2gwMzI4TG8vcmdoVkc3RStyZ2RjTWovU1R1dkpH?=
 =?utf-8?B?WkY2QlI4N3NBZlUwVUxhRUdKQVNGMHdRZjg2cm90M0dNWFBIanR6ck4vNTdD?=
 =?utf-8?B?YjFaY2JKMTV0c2ZnMnRiUGcwRWhJeW9Wc0hFeUs1aEF6V084VHNCUlVkWmF4?=
 =?utf-8?B?OTlzWitrYWZ5Q0N1NzBnZGFKL1IxN29TWEZGcnY5UlZGRE5vcVFwQldoS0hP?=
 =?utf-8?B?dUxZcXZZQlZLTkNrWmExN3JsbjdYR2ZXMmtVNnozamNKOEpEVENMcjk0b0o1?=
 =?utf-8?B?S2NxbGdOZEM2K1habTRZanFXTkcvOGExSUJyak5CMzRtcUJRVklaQUtDaGxJ?=
 =?utf-8?B?VkpuS0VudkF6K1BCNEpBSmVxd2ZzNmhpV20wdzRSei9WMFBjN1JUejR0T2x0?=
 =?utf-8?B?QXNxQ0RrMXhTczBRalhoWXBYcmpsTDB6RDBpMUM1N2szNEYwalhZVWR5VGw3?=
 =?utf-8?B?MkZ0NEdyTlJYSEgwd0JKd1ZkVE1oOUJ4SDJOa25UaWk5SmhjRkRJbzM2T01v?=
 =?utf-8?B?WFRWa3R4US9LVzVBOEtzS2RvcGdya3IvVnU2ODJSV3Z3Y04ycEdCcWVVSlMx?=
 =?utf-8?B?Y3ZubnBpZGtmUjdJVW9LYmJWOS8zV1QrUFFrL2NoQ0UwN2VoTnRjWGNESW5i?=
 =?utf-8?B?RU9yalJEc1liTFZKYWRveVpzV0JaN3Y3T2hVQ3VzVTRQWWZJTml3bE1oQndC?=
 =?utf-8?B?VUEvcFZhNlhNY2N0SDJIU2hZbjVrUTRHeEpKazFVb2VOeUhlVkxISkFzR09Y?=
 =?utf-8?B?d2VVMGtKYU9qK0tJbnhMZEtVaUxRN1pmZFR0WnI4a3JlNHZINzZkUlhMMjl2?=
 =?utf-8?B?aCtoc0pBYnNvd1dsb0oxYmFWYWdXNlpFajllbWdqcVg1ZXJHNmR6d2t3SlV3?=
 =?utf-8?B?MnhLK1h0VjNiRnhWMzNhOW5IaEkxaC9HNHRqb3J4bmlvTjNsazRwT05NUTNB?=
 =?utf-8?B?RlZTa2UzNER6Q1JFbkczR1pZZHh0QVFMR0JoRWczR1VKa0czMGZpNVlGbXZB?=
 =?utf-8?B?VE8zUCtwWDk3a1dFT0tDVFBzQ1Q0UXFnczhNZHB3OTNNRHB4TG55WlNkbmpZ?=
 =?utf-8?B?bURxWmR4VjdhTkZQU0pqbktBVHcxL2o0L2c2WEFaYXlVMWhabTdFOEwzNFpT?=
 =?utf-8?B?MkN5Y2crNVVBL29oaDFVODlnSitYeHdMYmhFTk9XT01IVjRJbW9Wc0c4Tyts?=
 =?utf-8?B?clN5SkE4N0FrYVY2cU51VWdkZzZMb2ZGNUtEOWFJOTVIVUg0aFBKZlFJVFZu?=
 =?utf-8?B?Y1A3Y3VwVnlxQlQ0TjNFbW4zYm1XQ0d6Z3NzY3hsaW1vWnRTcmkwZG5jR21s?=
 =?utf-8?B?RTUrZ2hIMzNvSXRWUDBHREthaDF3RG83V0FtMkdLcGd5T0lmWVh3SThoVTBl?=
 =?utf-8?B?clVNczh1bXFkOVA5TERzQmYwVDRjK3VaMmVvY0FsbmRvbFpTVUxRTFM4NnJ6?=
 =?utf-8?B?eU45UENraDA1bk56Z2E2NFR5Vk9pd3FqQTZZbWxjT0RPRW1vTTlnd3E4OGxG?=
 =?utf-8?B?SFhvbmdDY2swYUNKQW9ncXBiRDBYdGZxTWtFM29icmxGT0NnbDYvbmp0K1lL?=
 =?utf-8?B?R0JETFlmb3Q5OVpWT3RLdHk3Vlo4bGlYaEtTNzNWbGNvSlpaeG5mZUhCOUJW?=
 =?utf-8?Q?ybB1NahPSt5bcJ0w7UzgOgftL?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E99673298868004A9FC4FFE58D30DED6@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d411faea-543a-481c-8c35-08dbf1427431
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 01:19:52.2056
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZjQJNB8e3/51aZhzyocqZWPh8WXZDuWlLMaTTAKt4fLRm/C7ixG/1mFkredDAaN6K/8HczSYE7y5zN6nnkIJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5942

SGksIEhzaWFvLWNoaWVuOg0KDQpDaGFuZ2UgdGhlIHRpdGxlIHRvIFN1cHBvcnQgQ1JDIGluIG92
bC4NCg0KT24gVHVlLCAyMDIzLTEwLTE3IGF0IDE0OjQ3ICswODAwLCBIc2lhbyBDaGllbiBTdW5n
IHdyb3RlOg0KPiBXZSBjaG9vc2UgT1ZMIGFzIENSQyBnZW5lcmF0b3IgZnJvbSBvdGhlciBoYXJk
d2FyZQ0KPiBjb21wb25lbnRzIHRoYXQgYXJlIGFsc28gY2FwYWJsZSBvZiBjYWxjdWxhdGluZyBD
UkNzLA0KPiBzaW5jZSBpdHMgZnJhbWUgZG9uZSBldmVudCB0cmlnZ2VycyB2YmxhbmtzLCBpdCBj
YW4gYmUNCj4gdXNlZCBhcyBhIHNpZ25hbCB0byBrbm93IHdoZW4gaXMgc2FmZSB0byByZXRyaWV2
ZSBDUkMgb2YNCj4gdGhlIGZyYW1lLg0KPiANCj4gUGxlYXNlIG5vdGUgdGhhdCBwb3NpdGlvbiBv
ZiB0aGUgaGFyZHdhcmUgY29tcG9uZW50DQo+IHRoYXQgaXMgY2hvc2VuIGFzIENSQyBnZW5lcmF0
b3IgaW4gdGhlIGRpc3BsYXkgcGF0aCBpcw0KPiBzaWduaWZpY2FudC4gRm9yIGV4YW1wbGUsIHdo
aWxlIE9WTCBpcyB0aGUgZmlyc3QgbW9kdWxlDQo+IGluIFZET1NZUzAsIGl0cyBDUkMgd29uJ3Qg
YmUgYWZmZWN0ZWQgYnkgdGhlIG1vZHVsZXMNCj4gYWZ0ZXIgaXQsIHdoaWNoIG1lYW5zIGVmZmVj
dHMgYXBwbGllZCBieSBQUSwgR2FtbWEsDQo+IERpdGhlciBvciBhbnkgb3RoZXIgY29tcG9uZW50
cyBhZnRlciBPVkwgd29uJ3QgYmUNCj4gY2FsY3VsYXRlZCBpbiBDUkMgZ2VuZXJhdGlvbi4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEhzaWFvIENoaWVuIFN1bmcgPHNoYXduLnN1bmdAbWVkaWF0ZWsu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9kcnYuaCAg
ICAgfCAgIDMgKw0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5jICAg
ICB8IDExMQ0KPiArKysrKysrKysrKysrKysrKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fZGRwX2NvbXAuYyB8ICAgMyArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwOSBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9kcnYuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZGlzcF9kcnYuaA0KPiBpbmRleCBjNDRmNWIzMWJhYjUuLjA4Y2MyZDJmZWY5ZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX2Rydi5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9kcnYuaA0KPiBAQCAtMTAy
LDYgKzEwMiw5IEBAIHZvaWQgbXRrX292bF9lbmFibGVfdmJsYW5rKHN0cnVjdCBkZXZpY2UgKmRl
dik7DQo+ICB2b2lkIG10a19vdmxfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRldmljZSAqZGV2KTsN
Cj4gIGNvbnN0IHUzMiAqbXRrX292bF9nZXRfZm9ybWF0cyhzdHJ1Y3QgZGV2aWNlICpkZXYpOw0K
PiAgc2l6ZV90IG10a19vdmxfZ2V0X251bV9mb3JtYXRzKHN0cnVjdCBkZXZpY2UgKmRldik7DQo+
ICtzaXplX3QgbXRrX292bF9jcmNfY250KHN0cnVjdCBkZXZpY2UgKmRldik7DQo+ICt1MzIgKm10
a19vdmxfY3JjX2VudHJ5KHN0cnVjdCBkZXZpY2UgKmRldik7DQo+ICt2b2lkIG10a19vdmxfY3Jj
X3JlYWQoc3RydWN0IGRldmljZSAqZGV2KTsNCj4gIA0KPiAgdm9pZCBtdGtfb3ZsX2FkYXB0b3Jf
YWRkX2NvbXAoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgbXRrX211dGV4DQo+ICptdXRleCk7
DQo+ICB2b2lkIG10a19vdmxfYWRhcHRvcl9yZW1vdmVfY29tcChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdA0KPiBtdGtfbXV0ZXggKm11dGV4KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZGlzcF9vdmwuYw0KPiBpbmRleCA3NWRlMTM1MGUzMzcuLmVjYzM4OTMyZmQ0NCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwuYw0KPiBAQCAtMjUsNiAr
MjUsMTMgQEANCj4gICNkZWZpbmUgT1ZMX0ZNRV9DUExfSU5UCQkJCQlCSVQoMSkNCj4gICNkZWZp
bmUgRElTUF9SRUdfT1ZMX0lOVFNUQQkJCTB4MDAwOA0KPiAgI2RlZmluZSBESVNQX1JFR19PVkxf
RU4JCQkJMHgwMDBjDQo+ICsjZGVmaW5lIE9WTF9FTgkJCQkJCUJJVCgwKQ0KPiArI2RlZmluZSBP
VkxfT1BfOEJJVF9NT0RFCQkJCUJJVCg0KQ0KPiArI2RlZmluZSBPVkxfSEdfRk9WTF9DS19PTgkJ
CQlCSVQoOCkNCj4gKyNkZWZpbmUgT1ZMX0hGX0ZPVkxfQ0tfT04JCQkJQklUKDEwKQ0KPiArI2Rl
ZmluZSBESVNQX1JFR19PVkxfVFJJRwkJCTB4MDAxMA0KPiArI2RlZmluZSBPVkxfQ1JDX0VOCQkJ
CQlCSVQoOCkNCj4gKyNkZWZpbmUgT1ZMX0NSQ19DTFIJCQkJCUJJVCg5KQ0KPiAgI2RlZmluZSBE
SVNQX1JFR19PVkxfUlNUCQkJMHgwMDE0DQo+ICAjZGVmaW5lIERJU1BfUkVHX09WTF9ST0lfU0la
RQkJCTB4MDAyMA0KPiAgI2RlZmluZSBESVNQX1JFR19PVkxfREFUQVBBVEhfQ09OCQkweDAwMjQN
Cj4gQEAgLTQ0LDYgKzUxLDggQEANCj4gICNkZWZpbmUgRElTUF9SRUdfT1ZMX1JETUFfQ1RSTChu
KQkJKDB4MDBjMCArIDB4MjAgKiAobikpDQo+ICAjZGVmaW5lIERJU1BfUkVHX09WTF9SRE1BX0dN
QyhuKQkJKDB4MDBjOCArIDB4MjAgKiAobikpDQo+ICAjZGVmaW5lIERJU1BfUkVHX09WTF9BRERS
X01UMjcwMQkJMHgwMDQwDQo+ICsjZGVmaW5lIERJU1BfUkVHX09WTF9DUkMJCQkweDAyNzANCj4g
KyNkZWZpbmUgT1ZMX0NSQ19PVVRfTUFTSwkJCQlHRU5NQVNLKDMwLCAwKQ0KPiAgI2RlZmluZSBE
SVNQX1JFR19PVkxfQ0xSRk1UX0VYVAkJCTB4MDJEMA0KPiAgI2RlZmluZSBESVNQX1JFR19PVkxf
Q0xSRk1UX0VYVDEJCTB4MDJEOA0KPiAgI2RlZmluZSBPVkxfQ0xSRk1UX0VYVDFfQ1NDX0VOKG4p
CQkJKDEgPDwgKCgobikgKg0KPiA0KSArIDEpKQ0KPiBAQCAtMTUxLDYgKzE2MCwyNCBAQCBzdGF0
aWMgY29uc3QgdTMyIG10ODE5NV9mb3JtYXRzW10gPSB7DQo+ICAJRFJNX0ZPUk1BVF9ZVVlWLA0K
PiAgfTsNCj4gIA0KPiArc3RhdGljIGNvbnN0IHUzMiBtdDgxOTVfb3ZsX2NyY19vZnNbXSA9IHsN
Cj4gKwlESVNQX1JFR19PVkxfQ1JDLA0KPiArfTsNCj4gKw0KPiArLyoqDQo+ICsgKiBzdHJ1Y3Qg
bXRrX2Rpc3Bfb3ZsX2RhdGEgLSBvdmwgZHJpdmVyIGRhdGENCj4gKyAqIEBhZGRyOiBvZmZzZXQg
b2YgdGhlIGZpcnN0IGxheWVyIChsYXllci0wKQ0KPiArICogQGdtY19iaXRzOiBnbWMgKGdhdGlu
ZyBtZW1vcnkgY2xvY2spIGJpdCBtYXNrcyBmb3IgYWRqdXN0aW5nDQo+IHBvc2l0aXZpdHkgZm9y
IG92bA0KPiArICogQGxheWVyX25yOiBsYXllciBudW1iZXJzIHRoYXQgb3ZsIHN1cHBvcnRzDQo+
ICsgKiBAZm10X3JnYjU2NV9pc18wOiB3aGV0aGVyIG9yIG5vdCByZ2I1NjUgaXMgcmVwcmVzZW50
ZWQgYXMgMA0KPiArICogQHNtaV9pZF9lbjogZGV0ZXJtaW5lIGlmIHNtaSBuZWVkcyB0byBiZSBl
bmFibGVkDQo+ICsgKiBAc3VwcG9ydHNfYWZiYzogZGV0ZXJtaW5lIGlmIG92bCBzdXBwb3J0cyBh
ZmJjDQo+ICsgKiBAZm9ybWF0czogZm9ybWF0IHRhYmxlIHRoYXQgb3ZsIHN1cHBvcnRzDQo+ICsg
KiBAbnVtX2Zvcm1hdHM6IG51bWJlciBvZiBmb3JtYXRzIHRoYXQgb3ZsIHN1cHBvcnRzDQo+ICsg
KiBAc3VwcG9ydHNfY2xyZm10X2V4dDogd2hldGhlciB0aGUgb3ZsIHN1cHBvcnRzIGNsZWFyIGZv
cm1hdCAoZm9yDQo+IGFscGhhIGJsZW5kKQ0KDQpUaGlzIGlzIG5vdCByZWxhdGVkIHRvIGNyYywg
c28gbW92ZSB0byBhbm90aGVyIHBhdGNoLg0KDQo+ICsgKiBAY3JjX29mczogY3JjIG9mZnNldCB0
YWJsZQ0KPiArICogQGNyY19jbnQ6IGNvdW50IG9mIGNyYyByZWdpc3RlcnMgKGNvdWxkIGJlIG1v
cmUgdGhhbiBvbmUgYmFuaykNCj4gKyAqLw0KPiAgc3RydWN0IG10a19kaXNwX292bF9kYXRhIHsN
Cj4gIAl1bnNpZ25lZCBpbnQgYWRkcjsNCj4gIAl1bnNpZ25lZCBpbnQgZ21jX2JpdHM7DQo+IEBA
IC0xNjEsMTIgKzE4OCwyMCBAQCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2RhdGEgew0KPiAgCWNvbnN0
IHUzMiAqZm9ybWF0czsNCj4gIAlzaXplX3QgbnVtX2Zvcm1hdHM7DQo+ICAJYm9vbCBzdXBwb3J0
c19jbHJmbXRfZXh0Ow0KPiArCWNvbnN0IHUzMiAqY3JjX29mczsNCj4gKwlzaXplX3QgY3JjX2Nu
dDsNCj4gIH07DQo+ICANCj4gLS8qDQo+ICsvKioNCj4gICAqIHN0cnVjdCBtdGtfZGlzcF9vdmwg
LSBESVNQX09WTCBkcml2ZXIgc3RydWN0dXJlDQo+ICAgKiBAY3J0YzogYXNzb2NpYXRlZCBjcnRj
IHRvIHJlcG9ydCB2YmxhbmsgZXZlbnRzIHRvDQo+ICsgKiBAY2xrOiBjbG9jayBvZiB0aGUgb3Zs
DQo+ICsgKiBAcmVnczogYmFzZSBhZGRyZXNzIG9mIHRoZSBvdmwgcmVnaXN0ZXIgdGhhdCBjYW4g
YmUgYWNjZXNzZWQgYnkNCj4gY3B1DQo+ICsgKiBAY21kcV9yZWc6IHJlZ2lzdGVyIHJlbGF0ZWQg
aW5mbyBmb3IgY21kcSAoc3Vic3lzLCBvZmZzZXQNCj4gLi4uZXRjLikNCj4gICAqIEBkYXRhOiBw
bGF0Zm9ybSBkYXRhDQo+ICsgKiBAdmJsYW5rX2NiOiBjYWxsYmFjayBmdW5jdGlvbiB3aGVuIHZi
bGFuayBpcnEgaGFwcGVuZWQNCj4gKyAqIEB2YmxhbmtfY2JfZGF0YTogZGF0YSB0byB0aGUgY2Fs
bGJhY2sgZnVuY3Rpb24NCj4gKyAqIEBjcmM6IGNyYyByZWxhdGVkIGluZm9ybWF0aW9uDQo+ICAg
Ki8NCj4gIHN0cnVjdCBtdGtfZGlzcF9vdmwgew0KPiAgCXN0cnVjdCBkcm1fY3J0YwkJCSpjcnRj
Ow0KPiBAQCAtMTc2LDggKzIxMSwzMCBAQCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsIHsNCj4gIAljb25z
dCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2RhdGEJKmRhdGE7DQo+ICAJdm9pZAkJCQkoKnZibGFua19j
Yikodm9pZCAqZGF0YSk7DQo+ICAJdm9pZAkJCQkqdmJsYW5rX2NiX2RhdGE7DQo+ICsJc3RydWN0
IG10a19kcm1fY3JjCQljcmM7DQo+ICB9Ow0KPiAgDQo+ICtzaXplX3QgbXRrX292bF9jcmNfY250
KHN0cnVjdCBkZXZpY2UgKmRldikNCj4gK3sNCj4gKwlzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsICpvdmwg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCj4gKw0KPiArCXJldHVybiBvdmwtPmNyYy5jbnQ7DQo+
ICt9DQo+ICsNCj4gK3UzMiAqbXRrX292bF9jcmNfZW50cnkoc3RydWN0IGRldmljZSAqZGV2KQ0K
PiArew0KPiArCXN0cnVjdCBtdGtfZGlzcF9vdmwgKm92bCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYp
Ow0KPiArDQo+ICsJcmV0dXJuIG92bC0+Y3JjLnZhOw0KPiArfQ0KPiArDQo+ICt2b2lkIG10a19v
dmxfY3JjX3JlYWQoc3RydWN0IGRldmljZSAqZGV2KQ0KPiArew0KPiArCXN0cnVjdCBtdGtfZGlz
cF9vdmwgKm92bCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiArDQo+ICsJbXRrX2RybV9jcmNf
cmVhZCgmb3ZsLT5jcmMsIG92bC0+cmVncyk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpcnFyZXR1
cm5fdCBtdGtfZGlzcF9vdmxfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqZGV2X2lkKQ0KPiAg
ew0KPiAgCXN0cnVjdCBtdGtfZGlzcF9vdmwgKnByaXYgPSBkZXZfaWQ7DQo+IEBAIC0yMTYsNyAr
MjczLDcgQEAgdm9pZCBtdGtfb3ZsX2VuYWJsZV92Ymxhbmsoc3RydWN0IGRldmljZSAqZGV2KQ0K
PiAgCXN0cnVjdCBtdGtfZGlzcF9vdmwgKm92bCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiAg
DQo+ICAJd3JpdGVsKDB4MCwgb3ZsLT5yZWdzICsgRElTUF9SRUdfT1ZMX0lOVFNUQSk7DQo+IC0J
d3JpdGVsX3JlbGF4ZWQoT1ZMX0ZNRV9DUExfSU5ULCBvdmwtPnJlZ3MgKw0KPiBESVNQX1JFR19P
VkxfSU5URU4pOw0KPiArCXdyaXRlbChPVkxfRk1FX0NQTF9JTlQsIG92bC0+cmVncyArIERJU1Bf
UkVHX09WTF9JTlRFTik7DQoNClRoaXMgaXMgY2hhbmdpbmcgd3JpdGVsX3JlbGF4ZWQoKSB0byB3
cml0ZWwoKSwgbm90IGNyYy4gU28gbW92ZSB0bw0KYW5vdGhlciBwYXRjaC4NCg0KPiAgfQ0KPiAg
DQo+ICB2b2lkIG10a19vdmxfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRldmljZSAqZGV2KQ0KPiBA
QCAtMjY5LDE0ICszMjYsMzAgQEAgdm9pZCBtdGtfb3ZsX3N0YXJ0KHN0cnVjdCBkZXZpY2UgKmRl
dikNCj4gIAkgKi8NCj4gIAlyZWcgfD0gT1ZMX09VVFBVVF9DTEFNUDsNCj4gIA0KPiAtCXdyaXRl
bF9yZWxheGVkKHJlZywgb3ZsLT5yZWdzICsgRElTUF9SRUdfT1ZMX0RBVEFQQVRIX0NPTik7DQo+
IC0Jd3JpdGVsX3JlbGF4ZWQoMHgxLCBvdmwtPnJlZ3MgKyBESVNQX1JFR19PVkxfRU4pOw0KPiAr
CXdyaXRlbChyZWcsIG92bC0+cmVncyArIERJU1BfUkVHX09WTF9EQVRBUEFUSF9DT04pOw0KDQpU
aGlzIGlzIGNoYW5naW5nIHdyaXRlbF9yZWxheGVkKCkgdG8gd3JpdGVsKCksIG5vdCBjcmMuIFNv
IG1vdmUgdG8NCmFub3RoZXIgcGF0Y2guDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsNCj4gKwlyZWcg
PSBPVkxfRU47DQo+ICsNCj4gKwlpZiAob3ZsLT5kYXRhLT5jcmNfY250KSB7DQo+ICsJCS8qIGVu
YWJsZSBjcmMgKi8NCj4gKwkJd3JpdGVsKE9WTF9DUkNfRU4sIG92bC0+cmVncyArIERJU1BfUkVH
X09WTF9UUklHKTsNCj4gKwkJLyogZW5hYmxlIGNyYyByZWxhdGVkIGNsb2NrcyAqLw0KPiArCQly
ZWcgfD0gT1ZMX09QXzhCSVRfTU9ERSB8IE9WTF9IR19GT1ZMX0NLX09OIHwNCj4gT1ZMX0hGX0ZP
VkxfQ0tfT047DQo+ICsJfQ0KPiArCXdyaXRlbChyZWcsIG92bC0+cmVncyArIERJU1BfUkVHX09W
TF9FTik7DQo+ICsNCj4gKyNpZiBJU19SRUFDSEFCTEUoQ09ORklHX01US19DTURRKQ0KPiArCW10
a19kcm1fY3JjX2NtZHFfc3RhcnQoJm92bC0+Y3JjKTsNCj4gKyNlbmRpZg0KPiAgfQ0KPiAgDQo+
ICB2b2lkIG10a19vdmxfc3RvcChzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICB7DQo+ICAJc3RydWN0
IG10a19kaXNwX292bCAqb3ZsID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQo+ICANCj4gKyNpZiBJ
U19SRUFDSEFCTEUoQ09ORklHX01US19DTURRKQ0KPiArCW10a19kcm1fY3JjX2NtZHFfc3RvcCgm
b3ZsLT5jcmMpOw0KPiArI2VuZGlmDQo+ICAJd3JpdGVsX3JlbGF4ZWQoMHgwLCBvdmwtPnJlZ3Mg
KyBESVNQX1JFR19PVkxfRU4pOw0KPiAgCWlmIChvdmwtPmRhdGEtPnNtaV9pZF9lbikgew0KPiAg
CQl1bnNpZ25lZCBpbnQgcmVnOw0KPiBAQCAtNjg5LDE1ICs3NjIsMzEgQEAgc3RhdGljIGludCBt
dGtfZGlzcF9vdmxfcHJvYmUoc3RydWN0DQo+IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gIAkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gaW9yZW1hcCBvdmxcbiIpOw0KPiAgCQlyZXR1cm4gUFRS
X0VSUihwcml2LT5yZWdzKTsNCj4gIAl9DQo+ICsNCj4gKwlwcml2LT5kYXRhID0gb2ZfZGV2aWNl
X2dldF9tYXRjaF9kYXRhKGRldik7DQo+ICsJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcHJp
dik7DQo+ICsNCj4gKwlpZiAocHJpdi0+ZGF0YS0+Y3JjX2NudCkgew0KPiArCQltdGtfZHJtX2Ny
Y19pbml0KCZwcml2LT5jcmMsDQo+ICsJCQkJIHByaXYtPmRhdGEtPmNyY19vZnMsIHByaXYtPmRh
dGEtDQo+ID5jcmNfY250LA0KPiArCQkJCSBESVNQX1JFR19PVkxfVFJJRywgT1ZMX0NSQ19DTFIp
Ow0KPiArCX0NCj4gKw0KPiAgI2lmIElTX1JFQUNIQUJMRShDT05GSUdfTVRLX0NNRFEpDQo+ICAJ
cmV0ID0gY21kcV9kZXZfZ2V0X2NsaWVudF9yZWcoZGV2LCAmcHJpdi0+Y21kcV9yZWcsIDApOw0K
PiAgCWlmIChyZXQpDQo+ICAJCWRldl9kYmcoZGV2LCAiZ2V0IG1lZGlhdGVrLGdjZS1jbGllbnQt
cmVnIGZhaWwhXG4iKTsNCj4gLSNlbmRpZg0KPiAtDQo+IC0JcHJpdi0+ZGF0YSA9IG9mX2Rldmlj
ZV9nZXRfbWF0Y2hfZGF0YShkZXYpOw0KPiAtCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBy
aXYpOw0KPiAgDQo+ICsJaWYgKHByaXYtPmRhdGEtPmNyY19jbnQpIHsNCj4gKwkJaWYgKG9mX3By
b3BlcnR5X3JlYWRfdTMyX2luZGV4KGRldi0+b2Zfbm9kZSwNCj4gKwkJCQkJICAgICAgICJtZWRp
YXRlayxnY2UtZXZlbnRzIiwNCj4gMCwNCj4gKwkJCQkJICAgICAgICZwcml2LT5jcmMuY21kcV9l
dmVudCkpDQo+IHsNCj4gKwkJCWRldl93YXJuKGRldiwgImZhaWxlZCB0byBnZXQgZ2NlLWV2ZW50
cyBmb3INCj4gY3JjXG4iKTsNCj4gKwkJfQ0KPiArCQlwcml2LT5jcmMuY21kcV9yZWcgPSAmcHJp
di0+Y21kcV9yZWc7DQo+ICsJCW10a19kcm1fY3JjX2NtZHFfY3JlYXRlKGRldiwgJnByaXYtPmNy
Yyk7DQo+ICsJfQ0KPiArI2VuZGlmDQo+ICAJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShkZXYsIGly
cSwgbXRrX2Rpc3Bfb3ZsX2lycV9oYW5kbGVyLA0KPiAgCQkJICAgICAgIElSUUZfVFJJR0dFUl9O
T05FLCBkZXZfbmFtZShkZXYpLCBwcml2KTsNCj4gIAlpZiAocmV0IDwgMCkgew0KPiBAQCAtNzE4
LDYgKzgwNywxMCBAQCBzdGF0aWMgaW50IG10a19kaXNwX292bF9wcm9iZShzdHJ1Y3QNCj4gcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBtdGtfZGlzcF9vdmxfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ICB7DQo+ICsJc3RydWN0IGRldmlj
ZSAqZGV2ID0gJnBkZXYtPmRldjsNCj4gKwlzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsICpvdmwgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsNCj4gKw0KPiArCW10a19kcm1fY3JjX2Rlc3Ryb3koJm92bC0+Y3Jj
KTsNCj4gIAljb21wb25lbnRfZGVsKCZwZGV2LT5kZXYsICZtdGtfZGlzcF9vdmxfY29tcG9uZW50
X29wcyk7DQo+ICAJcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOw0KPiAgfQ0KPiBAQCAt
Nzg4LDYgKzg4MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2RhdGENCj4g
bXQ4MTk1X292bF9kcml2ZXJfZGF0YSA9IHsNCj4gIAkuZm9ybWF0cyA9IG10ODE5NV9mb3JtYXRz
LA0KPiAgCS5udW1fZm9ybWF0cyA9IEFSUkFZX1NJWkUobXQ4MTk1X2Zvcm1hdHMpLA0KPiAgCS5z
dXBwb3J0c19jbHJmbXRfZXh0ID0gdHJ1ZSwNCj4gKwkuY3JjX29mcyA9IG10ODE5NV9vdmxfY3Jj
X29mcywNCj4gKwkuY3JjX2NudCA9IEFSUkFZX1NJWkUobXQ4MTk1X292bF9jcmNfb2ZzKSwNCj4g
IH07DQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG10a19kaXNwX292
bF9kcml2ZXJfZHRfbWF0Y2hbXSA9IHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9kZHBfY29tcC5jDQo+IGluZGV4IDk5NDA5MDljNzQzNS4uMTExOGVmY2RlOThhIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMNCj4g
QEAgLTM0OSw2ICszNDksOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19kZHBfY29tcF9mdW5j
cyBkZHBfb3ZsID0NCj4gew0KPiAgCS5jbGtfZW5hYmxlID0gbXRrX292bF9jbGtfZW5hYmxlLA0K
PiAgCS5jbGtfZGlzYWJsZSA9IG10a19vdmxfY2xrX2Rpc2FibGUsDQo+ICAJLmNvbmZpZyA9IG10
a19vdmxfY29uZmlnLA0KPiArCS5jcmNfY250ID0gbXRrX292bF9jcmNfY250LA0KPiArCS5jcmNf
ZW50cnkgPSBtdGtfb3ZsX2NyY19lbnRyeSwNCj4gKwkuY3JjX3JlYWQgPSBtdGtfb3ZsX2NyY19y
ZWFkLA0KPiAgCS5zdGFydCA9IG10a19vdmxfc3RhcnQsDQo+ICAJLnN0b3AgPSBtdGtfb3ZsX3N0
b3AsDQo+ICAJLnJlZ2lzdGVyX3ZibGFua19jYiA9IG10a19vdmxfcmVnaXN0ZXJfdmJsYW5rX2Ni
LA0K

