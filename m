Return-Path: <devicetree+bounces-9177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 180D57CBFD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71F52B20F42
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C87405D2;
	Tue, 17 Oct 2023 09:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="urwTabEb";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="qyfcTUAO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD88381D8
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:46:03 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7AA8E;
	Tue, 17 Oct 2023 02:46:01 -0700 (PDT)
X-UUID: f7523d226cd111eea33bb35ae8d461a2-20231017
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=WZLxdZagoORSIFNZt1NJ8RwsqkOObbeK8qNP5Q2Agqk=;
	b=urwTabEb87uV4130wWsfKP9WKed+qILt7ifwgCdwbKtJcj/CaOyEW+dBu1fNUI3pNkRIvgfpC9qCk0uv5N6M/SuZU32clePIRZ1FkdhfXL5FuTLDmsiFiWGaLgX9Aolfod2uF88SY1O3vtUuYcA9FOQcdGtXE7rnKMcT+EzsM4E=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:9ea21b09-161f-41f5-86da-60154fab92b9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:f6e107c0-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:1,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: f7523d226cd111eea33bb35ae8d461a2-20231017
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1095346219; Tue, 17 Oct 2023 17:45:54 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 17 Oct 2023 17:45:53 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 17 Oct 2023 17:45:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lwgg0dxuhrdsXPbaGWfkvkBftYjubziLU2rc+aBRcTg0UQdFioooghXHj/dB8Rlv2HxWO1UI9elCuQgcKw0WbgduMSk6lokHrAzeSKiMxma4B8eVfpJiLSELk//InMMJMaWsWG3yXf48d8dHU1CvXsugMeHD8MEJF9EbRBsqAswXeiGL3uwztai8xzp2PQH5VQb4V9WRgw2o+yao4tYslfytcNYhXSpchWG6/ST/ZAufpe2M5sb3dI9b3jYDkqD78I86dPNkLdn5LkY/QS/NmdDOiMiHkzBrVaVXjnIgDswQyFnF123oIDn0v+92f1OtLPfovlPJgtd8rneeM1vxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WZLxdZagoORSIFNZt1NJ8RwsqkOObbeK8qNP5Q2Agqk=;
 b=MK9pyTriWSvhG3U3kYAOiL2+4jm3Q4bErg840ANHGZMoEzv9qJhaYvZXQl29d0d0RhIc8WdXarqeUT7iZ5EEPgR7QUacgoYM3eHNTOQzNk8XkXyfcnq+0S5JrIO103AzWBgy2R6lcFaBZTnnIUVVakW78FEE/Ksb9CL4QPX6blczxm3s1YFrOoqPOSD1m3ecFqKfbp2CiCfgJ3zCdF3O4GLDGAUjGmADIityZpMBfoww7lpDQrbmCBY21TyCKKQhW5m+CGbPXFsBl66PSqNdcdEIVpxGlzSYeRKlLU18am8kaXDQg18//AT8+UCq+ExhlYdvAIsfbjt3VCqoKHI0kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZLxdZagoORSIFNZt1NJ8RwsqkOObbeK8qNP5Q2Agqk=;
 b=qyfcTUAOa7pHMuEKcBezih3e2T+VBUCNjWuiADEsACmIr7A0Qt4dWqpB/UdhzC1pTDnsPcUBzRpk5liTDxZ0hsXt6I5nKJKMP4L9CVMH1by1zFZm9tZW4439jgtrwKZ9hYrnMEACzD3cEKf/lqjxeDbnBBp3yHYu2HVUYwFKdDc=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYUPR03MB7206.apcprd03.prod.outlook.com (2603:1096:400:347::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Tue, 17 Oct
 2023 09:45:50 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9c2c:c08a:212f:e984]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9c2c:c08a:212f:e984%7]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 09:45:50 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: =?utf-8?B?WW9uZ3FpYW5nIE5pdSAo54mb5rC45by6KQ==?=
	<yongqiang.niu@mediatek.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?=
	<Jason-JH.Lin@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, =?utf-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?=
	<Moudy.Ho@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, =?utf-8?B?TmF0aGFuIEx1ICjlkYLmnbHpnJYp?=
	<Nathan.Lu@mediatek.com>, "airlied@gmail.com" <airlied@gmail.com>,
	"sean@poorly.run" <sean@poorly.run>, "hverkuil-cisco@xs4all.nl"
	<hverkuil-cisco@xs4all.nl>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "fshao@chromium.org"
	<fshao@chromium.org>, "johnson.wang@mediatek.corp-partner.google.com"
	<johnson.wang@mediatek.corp-partner.google.com>
Subject: Re: [PATCH v8 21/23] drm/mediatek: Fix underrun in VDO1 when switches
 off the layer
Thread-Topic: [PATCH v8 21/23] drm/mediatek: Fix underrun in VDO1 when
 switches off the layer
Thread-Index: AQHaAB1GY33b/J8FcE6COcg04V+EjrBNvTEA
Date: Tue, 17 Oct 2023 09:45:50 +0000
Message-ID: <99dc8df0f7db7dfc16949c6de073fedfce68f4ff.camel@mediatek.com>
References: <20231016104010.3270-1-shawn.sung@mediatek.com>
	 <20231016104010.3270-22-shawn.sung@mediatek.com>
In-Reply-To: <20231016104010.3270-22-shawn.sung@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYUPR03MB7206:EE_
x-ms-office365-filtering-correlation-id: 11ae5031-6788-426c-4cbd-08dbcef5d90a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qZzGkb+NHbpCZIjjJLGmJzW3YTC9xInFHjj63k6FbfZYR7b/80tuYfkXVqY+38Ol7aJBeDlEJSDtcrsbYIMtmxfsjyGekpHlm31C8dwjkocKMIRq4wJtSsoD4aMThwqVBwyX5XjcY+1shzweD/lzQc3ljdVXoaD72xxC3U7eNQW/Qlvnhjf+vAhsIUah4TBiFoIEbtdKGTm5YHpyQSXx/FMPVil3mhtDUbhvGylOg7hzWeTu8u3i7uZ351ITKOhQQQ/7iGu7bsktSJPHeyVZXwurjBdS9CzSxPJuE37BTRt9gMsZW9DiZj6heysaZZJH9M0O8LHbHlahwyi9ad5k+w0vWbrGpGTO6RjxnB/qtO1ct0aRfYPAN0Rixgip7wovjVZ9Nxr1JwkPX4y8mPg7NhvS3uJ6ii0N3/quNFQgISrdhhOvz2I/52w0Ln4FZxXXrZfMzJwD7qz1wbNiaBukGCCjon2VPBtk+APdnIauQdhzBdH2zEojvfoNiL8Hwqsn/LPChKiws2JMKHxlpEKHJ5vTOGrwTOgzw9ImVIu8jPBfs9sO7P2jDNYkEk98gBu1VKHYRUWM9qPYiwcPdjsKzKqGrqSTTyJURhs+nmhTScrXbMgemmp0zitxyWjKB8lqegWj3S2G65zhQsXxMhikYyLbGtTdVJaRGahSfe6AX4I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(38100700002)(6512007)(38070700005)(26005)(2616005)(122000001)(7416002)(478600001)(6486002)(5660300002)(8676002)(8936002)(85182001)(4326008)(86362001)(4001150100001)(2906002)(64756008)(36756003)(41300700001)(110136005)(66446008)(66476007)(66556008)(316002)(54906003)(66946007)(76116006)(71200400001)(6506007)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVNsOTQwNmlKYytUcm9rcldHTWhUTlJrRmR2TU1jYzNVVUMxWUVTb3g4bWJj?=
 =?utf-8?B?eTBwdk9DTmEvc2VUVitYWE90TXlHWEM0dEZwZDVHTWdFVzdBaDlrQUI0WVZo?=
 =?utf-8?B?dzlPWEV2SjRtMHBFejdGU3lvNGNTTWpQQ1N3UlZsWG51akNYQkV4blFPM1M0?=
 =?utf-8?B?VXhFQVRqWjVkNkNlejh1VDBxNTB3clJEcy9hZlZ0dHJPYVBBZ0EwdFpLV0Fv?=
 =?utf-8?B?czdPdldHQWdGbjNFTVI1QUV5SHNsdGoydmJibitpWU1FSEhkeVphVENhbTIw?=
 =?utf-8?B?RHo1ZTJWRGRTVVpQYXZpS2VHZWJuSldFdWdFdS8xOEo4ZDg5dkovbytNdzlQ?=
 =?utf-8?B?N1ZoaGZIZnhZMkNFNGZXSzVpOXlZSlZRb3pCLzVCSE41aTEwbFZNanN4TjEr?=
 =?utf-8?B?dVdyeDd4UmlXV1U1ei9qb0x4aW5EN3JuY1h1U21EcU1JYmFRWk9FazlCeHpF?=
 =?utf-8?B?eVZRRzJCSmxoU1dWa3BGQUZ0RTU5UXVjVU9WeUdwSkNlQ1dqc0N6dEZnU2cx?=
 =?utf-8?B?YzBjbjhNOUV6SFh6b0Vjc1ZIUGhDY2p5RUZHRE9uNHRKTmMxL0xYcUJkeWVG?=
 =?utf-8?B?QVFKU3lYUXNNeWVZMDBLNnlrYzJDTS9La2ViM0E1ZWJjZXJyT0ZNbDQ3eUVN?=
 =?utf-8?B?U3N4ZlRYOEQzSXJJZWRjOG94TzJsakgvaWc4a1pGOGpTTVIwVlpZT0poK0Ny?=
 =?utf-8?B?SHJDekMvMWdpQWhWekdoSjYvT09VQ25DaVdtRWRrMVF2NjlFUi8rditLdDJX?=
 =?utf-8?B?dnFxbDNsUnB1M2dFZzBxSy9Va3VWY3l0bTdIbGRpcXRjK1ZYNGYzSUQxZHhu?=
 =?utf-8?B?bkV2UFdZa1NLK0ZjNi9sbWlUTUc4cjFWRHN4L0c4NWtnOGxCTXFiQ2ZQVVRv?=
 =?utf-8?B?MVVDa1VtRTl6d214N2ltVjRxS3pnV3FjYlJrT0JnRGlBWjVJM2hIcEtMTUk4?=
 =?utf-8?B?bUFNUFBxSmRXV0hYUnNLcFF5TXBVU3VjZENTWlZTQ0JFVkRQZEx1UGQ2TU1V?=
 =?utf-8?B?RVV6VWdnQXBaRkVwbHhkM0JPVFFKQVFtNEtBUGdIR1VSaE1sSSt4MU1uWFRB?=
 =?utf-8?B?eUEveVROSit3M0RJSXVVSktvekNDM3lmS0JJbnYyVitxU2trRlFDUzBUODMr?=
 =?utf-8?B?d05SYmNPTEtHVStqRGZ1dzFGa2Vncm9DMkdEeS95UVVvTnpocFJYTFdQVkZn?=
 =?utf-8?B?WDVueEVhRG54RHZEUXhVTEo4Q2VodkFSR2dRRHoxUVVGaE5yeG9ieDhiWlVy?=
 =?utf-8?B?UWY1ZlozNVBLWVF3VERtWVBoVjN6MXgxcmU5cFdoQ2NLOXdWYmdtQmJ0UjBI?=
 =?utf-8?B?OHpDM1l6ZE8rWWs4QUlWbHBaWTdyQVE0cFIzN2VvUklzZWNzNlVHRlk1YlNj?=
 =?utf-8?B?Y3JUbFd1RFp4elRpRDFKYkNzU1lCSStNQ0pLOWpMUEhZWmZhOHlrRmMvanZZ?=
 =?utf-8?B?dTliQVVzOXZtV2xjSDB2UjBMcklsb2lqRE9STkw2N2pIZVRtbHRWRXB4c1ZV?=
 =?utf-8?B?V0lJbUdCRDBiaWNuYUJ5WlRkbkxuN29yL3RVMmFrUnhRcTM4WUx3bm91WlYy?=
 =?utf-8?B?Nm5oK01yNTNJdWdqd3k2Q2xLMkxxaFBGSThjR1ZiaGZCZ1k3Z2NqcHMwNXJP?=
 =?utf-8?B?SkxGUEs5Qy8yK2RYS01xamx4NDdMNXBsbVExUHU3Mi91TnZ3SzV4TkdLN2x3?=
 =?utf-8?B?RkhtWHQyWXM2QXlZWVJoZHlUMFFkanIrVk50Nmh0TjE3MEVRS0p0dDk5MWFB?=
 =?utf-8?B?cFcwNVVSYnF4dlNtUkVHSE1VcExreGtQMU1GWkZ2ZFpEZ1IvdGJ4OXZLVXBw?=
 =?utf-8?B?dGwzK0tMbnZhMytRZkNkdTJHRjAvV0JrcDQ5Zkl3SmtHa1JHMGFlYVg3MVZ1?=
 =?utf-8?B?aHZXY3N5ODRTNk90QmU3SHpzdG5rWkJwU1JwK1ZVZkxFaG9ibnlHZlltWjc2?=
 =?utf-8?B?aXYzdWE5ZXJRR1lUYU9ka2EyY3h6TkhRUFp5RlgyY1FnOGw2V05IYUY1Y1pN?=
 =?utf-8?B?Nzc2QmlMNGVLVVB4dnBLWnZRRUpxZVhYK3Ryc2MvcnJBNTJGdVJOOWcvMWxX?=
 =?utf-8?B?ZjJuZms1YzA0YVh0SVA5ZG1yU3VDNHlMcFB0cStZVE5teDgrQXB6d2FkVkFH?=
 =?utf-8?Q?KeW2TGE4UYhqnN8Dz3RnUI8Ze?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <528501CA2DF544488EFA359AE7A3608C@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ae5031-6788-426c-4cbd-08dbcef5d90a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 09:45:50.6657
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sr6LgYZIWRPTjWuQmA+/gaaLoYmAUlAhYl8Ioc1IePLhAB6/Tcc4kwWga+CWI4Q3uHK50AYhGTyhEP0+EbfZuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYUPR03MB7206
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--8.911800-8.000000
X-TMASE-MatchedRID: nVQUmLJJeyY/XHdICuW5r97SWiiWSV/1jLOy13Cgb4+qvcIF1TcLYI/i
	b8cdJDD5fV9nQBF6ZUQkAzbREWz9m3wvP2dtBRFiQpxiLlDD9FW1k3bRIdXVNJF0fXYMSXSQvFf
	PytWHA2khXi7xgp14q/OyU5djegMkKc+6Aaw3ennd+fuf9kcapn0tCKdnhB58pTwPRvSoXL2y5/
	tFZu9S3Ku6xVHLhqfxWBd6ltyXuvuOjt6kD14pe4rSvYhzASpbPbnK0G9I1VctdGXeu8i25+G0d
	5e0Ay4qHvNY96XvVeCnHZWUocssUNj5pOfLKZYMV84VwTMIPMr8DYAMxfNdesTcZRBQ3ORlx7TA
	T/418tn4dFDMTTdqtlRjIYeif4m6ftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--8.911800-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	A2733F2626A068613C7DC8B79C61A50E5051F7849B82FBBB20DB1744EE967AFA2000:8
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
	RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGksIEhzaWFvLWNoaWVuOg0KDQpPbiBNb24sIDIwMjMtMTAtMTYgYXQgMTg6NDAgKzA4MDAsIEhz
aWFvIENoaWVuIFN1bmcgd3JvdGU6DQo+IERvIG5vdCByZXNldCBNZXJnZSB3aGlsZSB1c2luZyBD
TURRIGJlY2F1c2UgcmVzZXQgQVBJIGRvZXNuJ3QNCj4gd2FpdCBmb3IgZnJhbWUgZG9uZSBldmVu
dCBhcyBDTURRIGRvZXMgYW5kIGNvdWxkIGxlYWQgdG8NCj4gdW5kZXJydW4gd2hlbiB0aGUgbGF5
ZXIgaXMgc3dpdGNoaW5nIG9mZi4NCg0KUmV2aWV3ZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRl
ay5jb20+DQoNCj4gDQo+IEZpeGVzOiBhYWY5NGY3YzNhZTYgKCJkcm0vbWVkaWF0ZWs6IEFkZCBk
aXNwbGF5IG1lcmdlIGFzeW5jIHJlc2V0DQo+IGNvbnRyb2wiKQ0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSHNpYW8gQ2hpZW4gU3VuZyA8c2hhd24uc3VuZ0BtZWRpYXRlay5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX21lcmdlLmMgfCAyICstDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3BfbWVyZ2UuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9tZXJnZS5jDQo+IGluZGV4IGZkMTRhNTliYzk1
MS4uYzE5ZmIxODM2MDM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2Rpc3BfbWVyZ2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rp
c3BfbWVyZ2UuYw0KPiBAQCAtMTA0LDcgKzEwNCw3IEBAIHZvaWQgbXRrX21lcmdlX3N0b3BfY21k
cShzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+IHN0cnVjdCBjbWRxX3BrdCAqY21kcV9wa3QpDQo+ICAJ
bXRrX2RkcF93cml0ZShjbWRxX3BrdCwgMCwgJnByaXYtPmNtZHFfcmVnLCBwcml2LT5yZWdzLA0K
PiAgCQkgICAgICBESVNQX1JFR19NRVJHRV9DVFJMKTsNCj4gIA0KPiAtCWlmIChwcml2LT5hc3lu
Y19jbGspDQo+ICsJaWYgKCFjbWRxX3BrdCAmJiBwcml2LT5hc3luY19jbGspDQo+ICAJCXJlc2V0
X2NvbnRyb2xfcmVzZXQocHJpdi0+cmVzZXRfY3RsKTsNCj4gIH0NCj4gIA0K

