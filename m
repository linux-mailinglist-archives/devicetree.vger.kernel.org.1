Return-Path: <devicetree+bounces-11613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3777D63DD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00E9C281948
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76BFD11188;
	Wed, 25 Oct 2023 07:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="ZYQT3dQu";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="dgFPeOdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3716FDA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:47:37 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A0B1715;
	Wed, 25 Oct 2023 00:47:17 -0700 (PDT)
X-UUID: b3b3045e730a11ee8051498923ad61e6-20231025
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=QfVeiEf/ViJTagV7+DiP+KCJwqv0KQJrNP8wW7UyMbk=;
	b=ZYQT3dQuApiWXWtvGXnmzcTX3k+8oh+uAhQ3mhmYMZDmLsYWSscSPD/4QbGYamlZhoqyrTnfO8HEJS+NjIaJzQnEZNlGPqD7Ckye7kC7EnEftw4TYYm43jViUtozY+j1IUAA4phR7gho28Bpi75U4pJNcBN1bFwFJ9DNJJanFfA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:6b7803f6-deb1-451b-873b-71d8fff03a90,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:93a59c94-10ce-4e4b-85c2-c9b5229ff92b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: b3b3045e730a11ee8051498923ad61e6-20231025
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1947088042; Wed, 25 Oct 2023 15:47:09 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 25 Oct 2023 15:47:08 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 25 Oct 2023 15:47:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kInZfP0no9rjy2b+kCNQYCDp5GI/uhqdoc00qa1/tSJZv/Tg9Hz9UOrrHKZpOxNgptnIsuSwRHZzdTlIsh1mIDSqjJWdAUUQQnbj01CvrE1tKOkq7HGJAgxfYeiq19u2VPrZo9nuCJNfv5CEmX9fbJ51fenBYpWYuMajW2hWi4rDHWTHgzMGQY3qk+CRGlezFD6tVqOpfyMfRzSTDdxaxpglHz9UMsqD+t/tePkYlPpEHanVPEfJ+Xq0XxJvU1Y00ZopKO/rANAK3Qm+gWxiZNVo12RvU/02YLWEp7s8FC0TLQVx+SZhKlsuLDIb9pxI8QtZ/3H+Lu7SMKdPBF0lNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QfVeiEf/ViJTagV7+DiP+KCJwqv0KQJrNP8wW7UyMbk=;
 b=JZw///cUdmoxALY1laSYeqGTFZMA19F0Hl5S/cswBKGcc0+bBY4/5Bioj+VBJI5d26MFyd/DhG7k2JGyv7slWA/QcVFCWhSJ5rfiNhtCOd1AtG+293+mqAqovfJJOY9tdNXYoPYmmbG39Jyrhqr3dVX6030Mu6pVjOj6aM8HrtXftQRMsjzgN0hFhis4L2UXwyRhTJtGKfBdr3sswwEnqpZ08iMCOZr2aAxujeP9IHUbzGNXmKjJaL7V94/0hHgMi6tFjlnwqEdZGBa3CwB4idHMc/NyaIJPgBrQFqol87GtI8RO8Lgd97NgtGoFkzVoQUHlxpdXg7Jf0DPZiPsJ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QfVeiEf/ViJTagV7+DiP+KCJwqv0KQJrNP8wW7UyMbk=;
 b=dgFPeOdJdZm/zKImX/Ra77cZs/gP8qELs531x02WE+qQnA5yuyciUeoSYXSTM2/zLGh7qHi0C++CAZ4SWAX+Yf5u98sIS5oBaFUQUeESKdZJ/Og/p7YCXzgAjfz04iPvzCjOoHopOn6Il2I5NSWaOWrpcpmJJUxRmUVK/hJu8t0=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by KL1PR03MB7054.apcprd03.prod.outlook.com (2603:1096:820:dc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 07:47:05 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::8c0:a8fa:8e5:159d]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::8c0:a8fa:8e5:159d%7]) with mapi id 15.20.6907.025; Wed, 25 Oct 2023
 07:47:04 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "drinkcat@chromium.org"
	<drinkcat@chromium.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"jkardatzke@google.com" <jkardatzke@google.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	=?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 01/11] drm/mediatek: Add interface to allocate MediaTek
 GEM buffer.
Thread-Topic: [PATCH v2 01/11] drm/mediatek: Add interface to allocate
 MediaTek GEM buffer.
Thread-Index: AQHaBWvjnbkIniVMNECGcb4zvfdwWLBYn+OAgAGEKIA=
Date: Wed, 25 Oct 2023 07:47:04 +0000
Message-ID: <23c49f662f467c057914c47776f1041b3ed28a15.camel@mediatek.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
	 <20231023044549.21412-2-jason-jh.lin@mediatek.com>
	 <654f22f8-5070-4064-bcc3-5259345e4ca8@collabora.com>
In-Reply-To: <654f22f8-5070-4064-bcc3-5259345e4ca8@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|KL1PR03MB7054:EE_
x-ms-office365-filtering-correlation-id: 2a9c043d-201f-40bc-c0f4-08dbd52e94a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T5qcC2MOqgVDarF92GoqauTEro74O/zYiwFA33WBAjQHSp5/4nvN7CHGZF7MBr6HP26CirbH/AeKzG21rWLUpxvyamyXwBvmUDo/lVGDkML7/XSt+x+q2dZxLW2+1GtqvK5vM5aWLLN6iCvJev7HiWejmqGYl31wnxTiSzMyj7qP1dvP+Mw0MlAiYJ/WZWbZBfYZkx4D/Yw7udwbEA0h+9RiBVZgZgYqVEKLBY5N7lUzcPV5pPzryn577yrWNTUx3IPY3xA0QN1Xc3gArZoVLeZGnkS43FBPYm9m/zQzR6WzO3oymUnbiiiske5xrdEYLTaixhcH/YToaiVvkWhZUFghuEF5dQ7MGrkUR0PEu4T3YANtQXdYk4i1pNLE0SydgXQhDWjZyJDvf4VPQmkJnyUaTA7wa1LC+mVUw5HQIA64n7o61GdcobRklMcImsk1VEoaAY2CrgBTQBQQcYGR586RRsDFSEvDO1fhl9/4mxrlsSYcsJLtXNHss2VT1CHiKRXy6G+Nn0189tU+6r6W723+r6zyvK9CRihF2LOhNlhXfNxTF81uZWlw9iyeuLUuF7dipCZpmWvqKM4ZABe0LQQ7A4BLDQ9scK6LvC5gxoY5UV/QZlKkbLnNaC91jl3ohZEeQWqzSt5SNxIiE2bLBqMixSjFlYOfoevuH3UBVKE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(396003)(39860400002)(136003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(36756003)(85182001)(110136005)(66476007)(66446008)(2616005)(66946007)(54906003)(316002)(66556008)(122000001)(38100700002)(91956017)(38070700009)(86362001)(6512007)(64756008)(83380400001)(2906002)(76116006)(26005)(71200400001)(6506007)(4001150100001)(966005)(8936002)(6486002)(4326008)(478600001)(7416002)(8676002)(5660300002)(41300700001)(2004002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWwxRFhaUmpTdkp3ZXZkNmg2SzdWdkhGMTlRamlNbzFQUHo2Q0hrYTgzMk1U?=
 =?utf-8?B?SkhxSDdkQWxSY2hscldSdlNnRlBiMTdvQTZGNVFxY1Z5alhhZ0ZHWVBheWFz?=
 =?utf-8?B?eXlSQ3Rkejh4U3NNU2pvMjBaMmJmUHVySFdldzMzVGR6anAxaUlWb0l1L1p1?=
 =?utf-8?B?dlhxWjBwc2tOdkZibHJmdjVLZmhmUGQ0QXZ6U3Z6ZlYzS0xuRGJJV2V4bldX?=
 =?utf-8?B?WlBnT2xwRUdGbDE0QlVGeTVMZ2Z6VEJjaHdwRHRJV2pGbUlSL2JlWWxOY2FF?=
 =?utf-8?B?cXlNa2pzZmJZRysxSVZSdVArK3dVTXl3UzFLR1gyYlRXUUFRNVl5ZFNhUlhW?=
 =?utf-8?B?OFlrNW9GL0thWS95VXNJKzlhTStnV3BvK3k2K2N5MjAwTEFDQnVMZ29ZdFB1?=
 =?utf-8?B?UVJGaldFVTJLR3Z0dEYzN1JCcHhWNG95ejN6RHVnNnlBUEpHQlc5ZGpRT2sz?=
 =?utf-8?B?WUFIV2lRUDB3U01rRDUxNDF6MlRrVXZvNWJPdkR3Y0R0ZUNvN0FHdG9FdERx?=
 =?utf-8?B?R282cDU2NGVBUi9LQmF6VzhiNVhCWDZlZTRCNDk3VUF1YldoTW1sZEtocklC?=
 =?utf-8?B?RnpZNGRGL1NjeXVYWFF3MXRvSW5maFRuS1E2aEpjcWh4Z0lodU1TU2Jobjlw?=
 =?utf-8?B?cStHTHREMnRGb3FLTHMvQjRtK3NqUDVSWjRiakxMZFlPYVJFYlAzaWt4dFRE?=
 =?utf-8?B?NjkzY21Pc0R6OWJ4UmFZQ25EK3gyYU43b2V1c3Bzb2l6QzdueVpEOE1tVU4z?=
 =?utf-8?B?ZkRmUjRlM2NEaFBrM1RYc25tcm56Y1NhWkROMisyY2s5cytheTNNQkorV0Rj?=
 =?utf-8?B?L05WVDhoVlJwVnRpMFlFbDVxSUlIY1NRYWRJemIrblA0UkxzcVlGSTlDck8v?=
 =?utf-8?B?VUlXd2JYbGUxLytJL3RzaHljOVRUeTZJVEV4eWo3bENsek9aVEFJOGV5U2xp?=
 =?utf-8?B?NkZKVmJ4YlFZMDErOEZkZG9pUmRsZmphUjJQeDFlQTFHUmZvbVlaT0FQRCtz?=
 =?utf-8?B?Q1ExM2w3U2RXZUZHem1mZDdZVTNML2grQVJ2TVJmZ1YwQ0VHcWZVT1QyVkQx?=
 =?utf-8?B?eHBsVUoxdWs1QjNsRWIzV0dvTU5kN0VqQTFHd2d3ZnZMR2JYWkJtUzM1N3Yx?=
 =?utf-8?B?Um1BUkFWZVV6VWRsYTlXWFJLOGpTQ2hHcFJPL0F4Ti85ZU9VOTNKc0ZvQUJk?=
 =?utf-8?B?TW54ZS9HTnFDcjFKZVhiZnhRTlpub0dlNmljMDhyZ0VzeHMrSkxKZmxlbUx4?=
 =?utf-8?B?TmF3azd2aFV3VG1yOHRTblBRTWRwdmlXNHVCankwRllsOTk1OXZiYkt2WUFj?=
 =?utf-8?B?UlZ5eVkwb1RJUUw2YmlZK2wvOHFYRHk3NEJZbUpNdTBCNVZuKzR3Zm5USWtW?=
 =?utf-8?B?REdyY0ZESFdhRlF5bk11ZnY2SVFBTWxWN2R6WkNqNkpaWlVKamUvalhBQzhz?=
 =?utf-8?B?dGFmOVlZM1NHSzVRWm5DZzlrMDJQNVVSTmFpbkY4dFArdlY5WTlnUWJnaVYx?=
 =?utf-8?B?K1V2YnFjc1FXQjJiRG1qakFmMEsvVEl2OTJuSHdJNjU0ZHJZUklJZU1tNUZS?=
 =?utf-8?B?K3ptY2t0RFJ1ZTRCUjVqVGNLWEI3RE05S0RraVBraXRXM012clIrSkN5aitq?=
 =?utf-8?B?RjRpK0dkelVpZ3FXZFh0V1BYWC9uVnNIckpaVnFQZWY0ZVBzQ2FjQXlQczUz?=
 =?utf-8?B?Q2p4ZjNVOXNUd09KbEtvWDJHM25adDNxSTFjQUNqNVcvcDVBWmNGRG5haGhw?=
 =?utf-8?B?alU4bXJpYmtDQ2xoZ0srV3dSL3c2YVR0MGhVYnhEZlRYTVhzVmMyUy90eEVt?=
 =?utf-8?B?WnNQVU1hYis3VGNFOW9KZlNodjJEZ2l5MGYwMFFJczAwSE4zUFRFVjFkR0lr?=
 =?utf-8?B?RmEwUGNlYmI3R0RkN09BZjZQcFJYaUlVcWVyaGZUMEMzRVJnMXc2OFE3TEVM?=
 =?utf-8?B?ejQ0M041ckJMek5rbnNGNGs0V2poNm8yc1dJQnRQNGxqZmpsVWxFNy9FRCty?=
 =?utf-8?B?aU4rM2ZSY242YmF4citvZE5pQ2RIYnB3c0VaakxzZDVCQkJGdmhtRitrYzVs?=
 =?utf-8?B?ZnhvcEtJdXJYM0RlNUU3L3NYdDhYamNIUlB0ZktGb3RxellnTFowdmdBZ1dU?=
 =?utf-8?B?VmlMMGpOcTNHWTZqV3NvblJiMVZxMWpzNm8zbWNvVUwwTTR5RVJscVA4S2Fi?=
 =?utf-8?B?QWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <86DFDFF92E624B4291D5D8F643F77D71@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9c043d-201f-40bc-c0f4-08dbd52e94a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 07:47:04.1802
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VT/J0e/Y5V0JJckIMR4h/HKCmooZW7XnFAKknGj3C5t7O0J9+QHozQvflTAGvzPfA1ym1AMebPSsgzGtC0WtLAxYEKGQvqXYqmJPhzt57L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7054
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--19.152500-8.000000
X-TMASE-MatchedRID: gjZGo2H/wj8NtKv7cnNXnSa1MaKuob8PofZV/2Xa0cJauByPtDzndaSx
	VUPqsOdUc2ONnOZQCoo7lnT7GGj4zjOOxCxJsyambc297PAGtWYppGYMKZezN3fQXXfzsoI9Yrv
	BhCuvH+0ZB0R4cFpbTUzyp2gK85W+PXdZx1sZHpDil2r2x2PwtQrefVId6fzVh5Q1ArtCPlwg3w
	n1Y/Q9XNbjbddbaGl7uLDClqTzzJB1ZIBJvSVnHc5Scd0yVs+b42VVuo8awqK/wPtA9baOj8PnD
	/CT46hFp+BYFzRa/NjcG5O48QE65DrH2ssNgKW2uIwLnB3Aqp3+yhO1yCoLfGPZr2NA6vZGc9rD
	OIgOR4NMY5EyqZygDFYVJ4AHqj9GvpR6acywKCslcqT+ugT9ENMB70WyBtjHYW+sGGtOLh05lEB
	NB9cFYrJVaLhP+2nCzWB62H+OPI3lW1X3S7HG13QEQEU5OIefEtdrY/Wb3fPagsZM0qVv1xeryc
	HMRZtNay4EFy01sIPRSvo65H/LAmyeGFxbrq7lngIgpj8eDcDBa6VG2+9jFNZE3xJMmmXc+gtHj
	7OwNO0CpgETeT0ynA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--19.152500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	153DE97EDBF6CA2F9E8FBA55BD61BEED25FF67B1CA446B63696100CF0197A5B42000:8

T24gVHVlLCAyMDIzLTEwLTI0IGF0IDEwOjM3ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gSWwgMjMvMTAvMjMgMDY6NDUsIEphc29uLUpILkxpbiBoYSBzY3JpdHRv
Og0KPiA+IEZyb206IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+DQo+ID4gDQo+ID4gQWRkIGFu
IGludGVyZmFjZSB0byBhbGxvY2F0ZSBNZWRpYVRlayBHRU0gYnVmZmVycywgYWxsb3cgdGhlIElP
Q1RMcw0KPiA+IHRvIGJlIHVzZWQgYnkgcmVuZGVyIG5vZGVzLg0KPiA+IFRoaXMgcGF0Y2ggYWxz
byBzZXRzIHRoZSBSRU5ERVIgZHJpdmVyIGZlYXR1cmUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1i
eTogQ0sgSHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFz
IEJvaWNoYXQgPGRyaW5rY2F0QGNocm9taXVtLm9yZz4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQaGls
aXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEph
c29uLUpILkxpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTog
RGFuaWVsIEt1cnR6IDxkamt1cnR6QGNocm9taXVtLm9yZz4NCj4gPiBSZXZpZXdlZC1ieTogTmlj
b2xhcyBCb2ljaGF0IDxkcmlua2NhdEBjaHJvbWl1bS5vcmc+DQo+ID4gVGVzdGVkLWJ5OiBEYW5p
ZWwgS3VydHogPGRqa3VydHpAY2hyb21pdW0ub3JnPg0KPiA+IFRlc3RlZC1ieTogUGktSHN1biBT
aGloIDxwaWhzdW5AY2hyb21pdW0ub3JnPg0KPiA+IA0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMgfCAxMyArKysrKysNCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgMzkgKysrKysrKysrKysrKysrKysNCj4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5oIHwgMTIgKysrKysrDQo+
ID4gICBpbmNsdWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oICAgICAgICB8IDU4DQo+ID4gKysr
KysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgIDQgZmlsZXMgY2hhbmdlZCwgMTIyIGluc2Vy
dGlvbnMoKykNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3VhcGkvZHJtL21lZGlh
dGVrX2RybS5oDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2Rydi5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9k
cnYuYw0KPiA+IGluZGV4IDkzNTUyZDc2YjZlNy4uZTNlOWRiZGYyNjViIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMNCj4gPiBAQCAtMjQsNiArMjQsNyBA
QA0KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fb2YuaD4NCj4gPiAgICNpbmNsdWRlIDxkcm0vZHJt
X3Byb2JlX2hlbHBlci5oPg0KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fdmJsYW5rLmg+DQo+ID4g
KyNpbmNsdWRlIDxkcm0vbWVkaWF0ZWtfZHJtLmg+DQo+ID4gICANCj4gPiAgICNpbmNsdWRlICJt
dGtfZHJtX2NydGMuaCINCj4gPiAgICNpbmNsdWRlICJtdGtfZHJtX2RkcF9jb21wLmgiDQo+ID4g
QEAgLTU0MSw2ICs1NDIsMTQgQEAgc3RhdGljIHZvaWQgbXRrX2RybV9rbXNfZGVpbml0KHN0cnVj
dA0KPiA+IGRybV9kZXZpY2UgKmRybSkNCj4gPiAgIAljb21wb25lbnRfdW5iaW5kX2FsbChkcm0t
PmRldiwgZHJtKTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9pb2N0bF9kZXNjIG10a19pb2N0bHNbXSA9IHsNCj4gPiArCURSTV9JT0NUTF9ERUZfRFJWKE1U
S19HRU1fQ1JFQVRFLCBtdGtfZ2VtX2NyZWF0ZV9pb2N0bCwNCj4gPiArCQkJICBEUk1fVU5MT0NL
RUQgfCBEUk1fQVVUSCB8IERSTV9SRU5ERVJfQUxMT1cpLA0KPiA+ICsJRFJNX0lPQ1RMX0RFRl9E
UlYoTVRLX0dFTV9NQVBfT0ZGU0VULA0KPiA+ICsJCQkgIG10a19nZW1fbWFwX29mZnNldF9pb2N0
bCwNCj4gPiArCQkJICBEUk1fVU5MT0NLRUQgfCBEUk1fQVVUSCB8IERSTV9SRU5ERVJfQUxMT1cp
LA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgIERFRklORV9EUk1fR0VNX0ZPUFMobXRrX2RybV9mb3Bz
KTsNCj4gPiAgIA0KPiA+ICAgLyoNCj4gPiBAQCAtNTYyLDYgKzU3MSwxMCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9kcml2ZXIgbXRrX2RybV9kcml2ZXINCj4gPiA9IHsNCj4gPiAgIA0KPiA+
ICAgCS5nZW1fcHJpbWVfaW1wb3J0ID0gbXRrX2RybV9nZW1fcHJpbWVfaW1wb3J0LA0KPiA+ICAg
CS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gbXRrX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFi
bGUsDQo+ID4gKw0KPiA+ICsJLmlvY3RscyA9IG10a19pb2N0bHMsDQo+ID4gKwkubnVtX2lvY3Rs
cyA9IEFSUkFZX1NJWkUobXRrX2lvY3RscyksDQo+ID4gKw0KPiA+ICAgCS5mb3BzID0gJm10a19k
cm1fZm9wcywNCj4gPiAgIA0KPiA+ICAgCS5uYW1lID0gRFJJVkVSX05BTUUsDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYw0KPiA+IGluZGV4IDlmMzY0ZGY1MjQ3
OC4uYmNjZTcyM2YyNTdkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2dlbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19k
cm1fZ2VtLmMNCj4gPiBAQCAtNCw2ICs0LDcgQEANCj4gPiAgICAqLw0KPiA+ICAgDQo+ID4gICAj
aW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiA+ICsjaW5jbHVkZSA8ZHJtL21lZGlhdGVrX2Ry
bS5oPg0KPiA+ICAgDQo+ID4gICAjaW5jbHVkZSA8ZHJtL2RybS5oPg0KPiA+ICAgI2luY2x1ZGUg
PGRybS9kcm1fZGV2aWNlLmg+DQo+ID4gQEAgLTI3MiwzICsyNzMsNDEgQEAgdm9pZCBtdGtfZHJt
X2dlbV9wcmltZV92dW5tYXAoc3RydWN0DQo+ID4gZHJtX2dlbV9vYmplY3QgKm9iaiwNCj4gPiAg
IAltdGtfZ2VtLT5rdmFkZHIgPSBOVUxMOw0KPiA+ICAgCWtmcmVlKG10a19nZW0tPnBhZ2VzKTsN
Cj4gPiAgIH0NCj4gPiArDQo+ID4gK2ludCBtdGtfZ2VtX21hcF9vZmZzZXRfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRybSwgdm9pZCAqZGF0YSwNCj4gPiArCQkJICAgICBzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGVfcHJpdikNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9tdGtfZ2VtX21hcF9vZmYg
KmFyZ3MgPSBkYXRhOw0KPiA+ICsNCj4gPiArCXJldHVybiBkcm1fZ2VtX2R1bWJfbWFwX29mZnNl
dChmaWxlX3ByaXYsIGRybSwgYXJncy0+aGFuZGxlLA0KPiA+ICsJCQkJICAgICAgICZhcmdzLT5v
ZmZzZXQpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtpbnQgbXRrX2dlbV9jcmVhdGVfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gPiArCQkJIHN0cnVjdCBkcm1fZmls
ZSAqZmlsZV9wcml2KQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgbXRrX2RybV9nZW1fb2JqICptdGtf
Z2VtOw0KPiA+ICsJc3RydWN0IGRybV9tdGtfZ2VtX2NyZWF0ZSAqYXJncyA9IGRhdGE7DQo+ID4g
KwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCW10a19nZW0gPSBtdGtfZHJtX2dlbV9jcmVhdGUoZGV2
LCBhcmdzLT5zaXplLCBmYWxzZSk7DQo+ID4gKwlpZiAoSVNfRVJSKG10a19nZW0pKQ0KPiA+ICsJ
CXJldHVybiBQVFJfRVJSKG10a19nZW0pOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBhbGxv
Y2F0ZSBhIGlkIG9mIGlkciB0YWJsZSB3aGVyZSB0aGUgb2JqIGlzIHJlZ2lzdGVyZWQNCj4gPiAr
CSAqIGFuZCBoYW5kbGUgaGFzIHRoZSBpZCB3aGF0IHVzZXIgY2FuIHNlZS4NCj4gPiArCSAqLw0K
PiA+ICsJcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZpbGVfcHJpdiwgJm10a19nZW0tPmJh
c2UsICZhcmdzLQ0KPiA+ID5oYW5kbGUpOw0KPiA+ICsJaWYgKHJldCkNCj4gPiArCQlnb3RvIGVy
cl9oYW5kbGVfY3JlYXRlOw0KPiA+ICsNCj4gPiArCS8qIGRyb3AgcmVmZXJlbmNlIGZyb20gYWxs
b2NhdGUgLSBoYW5kbGUgaG9sZHMgaXQgbm93LiAqLw0KPiA+ICsJZHJtX2dlbV9vYmplY3RfcHV0
KCZtdGtfZ2VtLT5iYXNlKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArDQo+ID4gK2Vy
cl9oYW5kbGVfY3JlYXRlOg0KPiA+ICsJbXRrX2RybV9nZW1fZnJlZV9vYmplY3QoJm10a19nZW0t
PmJhc2UpOw0KPiA+ICsJcmV0dXJuIHJldDsNCj4gPiArfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kcm1fZ2VtLmgNCj4gPiBpbmRleCA3OGYyM2IwN2EwMmUuLjkwZjNkMjkx
NmVjNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9n
ZW0uaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5oDQo+
ID4gQEAgLTQ2LDQgKzQ2LDE2IEBAIGludCBtdGtfZHJtX2dlbV9wcmltZV92bWFwKHN0cnVjdCBk
cm1fZ2VtX29iamVjdA0KPiA+ICpvYmosIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+ID4gICB2
b2lkIG10a19kcm1fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwN
Cj4gPiAgIAkJCSAgICAgIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+ID4gICANCj4gPiArLyoN
Cj4gPiArICogcmVxdWVzdCBnZW0gb2JqZWN0IGNyZWF0aW9uIGFuZCBidWZmZXIgYWxsb2NhdGlv
biBhcyB0aGUgc2l6ZQ0KPiA+ICsgKiB0aGF0IGl0IGlzIGNhbGN1bGF0ZWQgd2l0aCBmcmFtZWJ1
ZmZlciBpbmZvcm1hdGlvbiBzdWNoIGFzDQo+ID4gd2lkdGgsDQo+ID4gKyAqIGhlaWdodCBhbmQg
YnBwLg0KPiA+ICsgKi8NCj4gPiAraW50IG10a19nZW1fY3JlYXRlX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ID4gKwkJCSBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVf
cHJpdik7DQo+ID4gKw0KPiA+ICsvKiBnZXQgYnVmZmVyIG9mZnNldCB0byBtYXAgdG8gdXNlciBz
cGFjZS4gKi8NCj4gPiAraW50IG10a19nZW1fbWFwX29mZnNldF9pb2N0bChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+ICsJCQkgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmls
ZV9wcml2KTsNCj4gPiArDQo+ID4gICAjZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91
YXBpL2RybS9tZWRpYXRla19kcm0uaA0KPiA+IGIvaW5jbHVkZS91YXBpL2RybS9tZWRpYXRla19k
cm0uaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5j
MDUwZGUzMjBhODQNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvaW5jbHVkZS91YXBpL2Ry
bS9tZWRpYXRla19kcm0uaA0KPiA+IEBAIC0wLDAgKzEsNTggQEANCj4gPiArLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjArIFdJVEggTGludXgtc3lzY2FsbC1ub3RlICovDQo+ID4g
Ky8qDQo+ID4gKyAqIENvcHlyaWdodCAoYykgMjAxNSBNZWRpYVRlayBJbmMuDQo+ID4gKyAqDQo+
ID4gKyAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0
ZSBpdCBhbmQvb3INCj4gPiBtb2RpZnkNCj4gPiArICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRo
ZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2ZXJzaW9uIDINCj4gPiBhcw0KPiA+ICsgKiBw
dWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbi4NCj4gPiArICoNCj4gPiAr
ICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBi
ZSB1c2VmdWwsDQo+ID4gKyAqIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mDQo+ID4gKyAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRO
RVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUNCj4gPiArICogR05VIEdlbmVy
YWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4NCj4gPiArICovDQo+ID4gKw0KPiA+
ICsjaWZuZGVmIF9VQVBJX01FRElBVEVLX0RSTV9IDQo+ID4gKyNkZWZpbmUgX1VBUElfTUVESUFU
RUtfRFJNX0gNCj4gPiArDQo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtLmg+DQo+ID4gKw0KPiA+ICsv
KioNCj4gPiArICogVXNlci1kZXNpcmVkIGJ1ZmZlciBjcmVhdGlvbiBpbmZvcm1hdGlvbiBzdHJ1
Y3R1cmUuDQo+IA0KPiBZb3UncmUgYWxtb3N0IHRoZXJlLi4uLiBSZWFkOg0KPiANCj4gDQpodHRw
czovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZG9jLWd1aWRl
L2tlcm5lbC1kb2MuaHRtbCpzdHJ1Y3R1cmUtdW5pb24tYW5kLWVudW1lcmF0aW9uLWRvY3VtZW50
YXRpb25fXztJdyEhQ1RSTktBOXdNZzBBUmJ3IWtFUmxiODZWQXo4dWRfWEhRUXd2MWhITGIyRmZq
ei1FQ2dQazc0U0U3UFV3T0l5SWJDaDhjSEtaajJ3MTJxT2VJS2t0VVFRQUlrbEJPOWFROF9XX0Ey
VmFOSzA5dHk5SEJRJA0KPiAgDQoNCk9LLCBUaGFua3MgZm9yIHlvdXIgaGVscC4NCkkgY2FuIHVz
ZSB0aGF0IGBzY3JpcHRzL2tlcm5lbC1kb2NgIHRvIHNjYW4gbXkgY29kZSBub3chDQoNCldpbGwg
Zml4IHRoZW0gaW4gdGhlIG5leHQgdmVyc2lvbi4NCg0KUmVnYXJkcywNCkphc29uLUpILkxpbg0K
DQo+IA0KPiBSZWdhcmRzLA0KPiBBbmdlbG8NCj4gDQo+IA0K

