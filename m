Return-Path: <devicetree+bounces-11162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 068087D4910
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:55:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF2182817F8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB75814AB3;
	Tue, 24 Oct 2023 07:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="guOARU1I";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="KZMCD3cH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0245B13FED
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:55:12 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F751DE;
	Tue, 24 Oct 2023 00:55:10 -0700 (PDT)
X-UUID: a4dd7068724211eea33bb35ae8d461a2-20231024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=IQ6ej6tiCUV5rWI4RCjHVbpeZ23sIaWioEIMzZsW570=;
	b=guOARU1I4dTTiIp8eaGkJZLdLBomFwzDGNtFQuU5Oo5V8reZBfxOct6OZ6JUMAWrGvRHBqezb81X/flOfZN6BVz8yPnbjRXKrl40wRXx2s1y4WAHPkEc7ZoipGn2/Wi7RHfsWTuQ0Y822YFF9Da5h5pGXZBPGYRbju2Ox/BSZnA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:f1e8fbf3-c7ae-488f-bd14-c6638a6966c9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:c0e43fd7-04a0-4e50-8742-3543eab8cb8e,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:1,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: a4dd7068724211eea33bb35ae8d461a2-20231024
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1578470722; Tue, 24 Oct 2023 15:55:05 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 24 Oct 2023 15:55:04 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 24 Oct 2023 15:55:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=baVKrXc4cx/6QpTCZoNHmQ84NCiuDwkZWLY8NcDsU0EPLfO4xYAyMfJtFXurSxgUbi0eqwoG1Dv1QliKecJr5pfzHPc+2vKtLVYcRR5UkV8tMIlD72fH16MBcVvMpdeqP+0bZYQUSbiBHE72ZTIBe+iXwCFvTmJViX8vRn0fp8TgFM1bf1gl7FAOYp3ykznXH4gIuChiMA70G45sNiFktShRe6EricZj3hwADkZheMJfq8apflwF5C+rVo71fIRUP8wDvYU380urdiibkTAHjL/xaLpaxKuKuCRG/m52ZCTnE6hF/oZuEzt1o7n9o7HZvmN0rSLEmyUgQBQC11d2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQ6ej6tiCUV5rWI4RCjHVbpeZ23sIaWioEIMzZsW570=;
 b=QkJS/Yk0hQe1xLlHvUkVNbNaSc07FJNnXtH5/CgI2hUG2C34vL54nhg1ap71BGzPJeMt0QorZLsdp1Q1UaCOQHKyQy3njQuadojYajJAhPURtUmxrmAbWfS+Q4+IAoslGtiPMDJ2oqYyxmuHuJEXQqgm0uMBOMDxWmTCiIcKHxa4M2HbW4YCbLX6XJV1gHhpkUeonZ2dlFH9gIvTX87fZd8jwjVBxhNkiiAqwIItTOPfjf3sYtzpgoTKRRguO0k07FmBJxyg6RBmFdxP49ciaY30SkfnTfmnInsv6c42p/yQkm0cTdlfq1sg19LUwCMu1xz3taxNDR+mNbFRbQgQdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IQ6ej6tiCUV5rWI4RCjHVbpeZ23sIaWioEIMzZsW570=;
 b=KZMCD3cHxs3puHHwKMRIbFTEHZsea96aJHeHHrm27kBi5sqCAgIoEbVUAfOBIIDaBeuhtCJPwjGtkHCu/6s4n5yG1/7uYYxNR9V/VKX8kxSGGouLyQrAn+SmuFlqFrTT6PxzGf75UlTfK2Mcv/VKYYAR5zqzwFJOf2bK+3lNka0=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by PUZPR03MB6988.apcprd03.prod.outlook.com (2603:1096:301:f7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Tue, 24 Oct
 2023 07:55:01 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::fe5a:c0e7:4b72:64f3]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::fe5a:c0e7:4b72:64f3%4]) with mapi id 15.20.6907.025; Tue, 24 Oct 2023
 07:55:01 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	=?utf-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?= <Moudy.Ho@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, =?utf-8?B?TmF0aGFuIEx1ICjlkYLmnbHpnJYp?=
	<Nathan.Lu@mediatek.com>, "airlied@gmail.com" <airlied@gmail.com>,
	"sean@poorly.run" <sean@poorly.run>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "fshao@chromium.org"
	<fshao@chromium.org>, "johnson.wang@mediatek.corp-partner.google.com"
	<johnson.wang@mediatek.corp-partner.google.com>
Subject: Re: [PATCH v10 13/24] drm/mediatek: Manage component's clock with
 function pointers
Thread-Topic: [PATCH v10 13/24] drm/mediatek: Manage component's clock with
 function pointers
Thread-Index: AQHaAlEp5of34rUyl025HvbTf63l1LBYmiWA
Date: Tue, 24 Oct 2023 07:55:01 +0000
Message-ID: <50189f79f936260944971df5ae6c253c5738e750.camel@mediatek.com>
References: <20231019055619.19358-1-shawn.sung@mediatek.com>
	 <20231019055619.19358-14-shawn.sung@mediatek.com>
In-Reply-To: <20231019055619.19358-14-shawn.sung@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|PUZPR03MB6988:EE_
x-ms-office365-filtering-correlation-id: a09beae6-7ebc-4020-2e68-08dbd46686dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TKWC5lyngwq+89K73csMUpfF5ArqoHrks6cjM1hotxMELXPhNYfIsJJQcgRPgYTxXfN5NwzOknlzbnWN6JmrBdIYi08/vvvlS7bP/DY/KXwkvZsbe5NHkxpwZ5Slci1jRltA1ns2HQ7ijejB0oDfl/A81fs/HKZvj1LgywE4qKyaiEmUmKlUoB3KJrM4p+Twi3xIgSjUFNN11qbSB7zd4i4/chcjfCffcHvX2SA4giT5imB+iP4X/2BTicF50ksuSVIB+BTKHAcIMTRfwoHS6zWamq8fOXrAMpiOVC+1lgq6oBWWR1CMXlQlh4T+tIOaJwLq5LGKK95Hh/FCS876zB9EyfEcnuvMCMr+6yEKoHjVmyWol/a2uYzHhjGRcXRR17YN/PbITLyjFXBKu4wuNWY9qXpkPUs74GDLcnMh0vhvb/HOwkNd1YpR4qpzIXnTeOteItQaVkUh2/XZoJMsdo35nxdgHynD7+ifs9+WPVaxqZr4EeDWup1UzH4uKI/pjt0+tzWdXjq5SW7ZEhAiaKRPVKbTrTdaIpXBhAnzbNdu6AVuoI473/DNeFrUmrVl4xKhf8xE5dV7t8x4pGGTpymE9DYfm4/ZtLv/bY9cMyAQv5GpE17sfIl6vZZbS71FivaOta3Ir+5aHQ3y6moiieFTJxpTzWjIkvmvDvNsxX0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(376002)(39860400002)(136003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(41300700001)(2906002)(38100700002)(64756008)(122000001)(66476007)(66946007)(316002)(66556008)(76116006)(71200400001)(478600001)(110136005)(66446008)(6506007)(2616005)(6512007)(6486002)(83380400001)(85182001)(86362001)(7416002)(36756003)(5660300002)(8676002)(4326008)(8936002)(54906003)(26005)(38070700009)(4001150100001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0NVdWc0VGFLMzExUytEaXI0b1ZwdURoWldmd1RjYVFSL21CQjM0YmoxZXBm?=
 =?utf-8?B?RlhoZ05wN3FpdzFSSGtyY2pRY3JTZUJuVW1xYmpiVUMxUXVGOVlRYjZpS3o1?=
 =?utf-8?B?TjhKaGNIZ0grOUt2THQwZ1YzOEcwajJSK0tsdW1Wam9odlpCSDVGQTM3Ykxs?=
 =?utf-8?B?S21xYVhqY0JyQ1o0RXhKeHg4UXJhekQ0NEhpdDJJNE5VSm9NdnpBNDYyTFhF?=
 =?utf-8?B?bDJIYURDQnIxN09VWkxNVzc2YWpqY3liSTdKZ042cjZGcEhyMGJFRHF3NmlS?=
 =?utf-8?B?R09Ed29MdGNIMEtmSFZST2tUWHRkZ2hTL0ptSVFzVlM5THJRd2p1Y0R6N0Zm?=
 =?utf-8?B?YTZKczc0cmc4VjIwSXpqNFQxSjhsRDM2cEhCQUJmNWdyU2I4UDllbXZxSFN5?=
 =?utf-8?B?aWtDVHZ4YXoxV2Y3bVVNRXZHMG9LN0xLR1BWbkxXaEw3OHRNMDNvYzMzWWkx?=
 =?utf-8?B?b3NIM0NmWlNFTkp1UzYzMllXQzB0eUp5cVRBVmlBWUNxenA4QnV0VUJlY3Fh?=
 =?utf-8?B?SDhLVWtIR0pBODhqMjJraldDZE1TSVFPR3lMbVJ6Mi94cTcxZDI4eUdvM1Ra?=
 =?utf-8?B?VmNtcEZPa0k0RHJ3c3I1dmd5eml6V05EbFEzeXEyNWlKczl3TTNFSFM5Zitm?=
 =?utf-8?B?N3poaFZqaUZTOU1kQU4zY0NxTTNkVzQvR0JmYXladUV4eGczeEx6cHV1Tmov?=
 =?utf-8?B?eXFCYUdEWXYyRGZMNnlkY3E4WGZJaXdicmliUW5CSWJNT2xpdnNJR3Z6Rklx?=
 =?utf-8?B?SzFndS9oQi9GcG15eVdjQmxBVU1CTzNBRTd6aURGbUowdWZMSnhLU1NqZGRu?=
 =?utf-8?B?cVAzOUJ0OWpSd0EvNmlhR1lOcU81RDEyemhLM1ZBbGFnRFJpaW1vMzhGWi9T?=
 =?utf-8?B?NXI3eDRkYkVyZzl2UlArRGMzbTd4ZWNwdWlXNTFCWW56R280d1p2SzhQVWxC?=
 =?utf-8?B?VUkwSHdwZTUwSnBLSHI2N2ZELzU4dGhNaEd6S3gxWXBJa1VDWURoV3BDQ1ZY?=
 =?utf-8?B?UTFMN1RjdFp5cCtYUVJGWWtTMTRsZkVHaDhyK1J0THk2Z2pvV3c0OUJrVkNJ?=
 =?utf-8?B?K0NmUndqb0NaRXhCb2dCRzNaNVBXK2UvZ0N5REFvVUU1b3R0amRwVDNSTHh2?=
 =?utf-8?B?Mk9scmM4RHdSRlZXMmt0RitTQVhDdDh3UWYybW1Sb2JJdnhTaG5CbFRCYUNU?=
 =?utf-8?B?M1MySGUwczk5bXJENVdNRVhBeGFKMDVkWXFZQTRWeUgrTnJhN3o0YlI5NnRu?=
 =?utf-8?B?T1BEcTZ5azM3VWU4TjZvZlEwamtBV3FxYkI3SXdoaWM1VW8zN2xQRG5oek5q?=
 =?utf-8?B?NDIrNHRjbXBCSTJGZnJDQmhoOVBYMjNlbUxFaytIUzNCdU5xL01HMS9ieE1N?=
 =?utf-8?B?bXBxRmxhdEJIbFZQOEpBSGxoTjM1VUY1SHJTQVNoY1pWL1lMZDRHSlJnYnU4?=
 =?utf-8?B?SFBLYnM1Z1ozUGJYR1N1NGpNZXZncmlZUmMvdVBpL09VVTBDWUlBckFjVCs4?=
 =?utf-8?B?YUNsaGpKVkRYeUU2MDNXaW51TFZpVjFQRFdlZXVjVmxaTkxtSWFaaEwvdTcw?=
 =?utf-8?B?RTd5QW1KVW9oVGhhMlZTamIyWnRkdDRoY21mWVUvd1JHcnY2cTFBemVHV0tW?=
 =?utf-8?B?UExoeDdFTTg0RC8xRzJ1ejNFU0lVcTVQMS8yMHNkeUtjNDFnNUlLL3lJTDJj?=
 =?utf-8?B?M2x0MmZoWEFpOHZMMllKT2lQSnZHUEVwMHRLM3RzUnpBTTBLRE9YbHhaNGtJ?=
 =?utf-8?B?N25LaUZuZHJhd3hCb2xnZGRQbXl4V051VEZQMkF2RUNEMThQREtiRUliOGY0?=
 =?utf-8?B?Zm1GNWNNbG9LMElrNzA4eEh3WDhNMnd0WWZYd2N6WVpvamFmL0RsMTFnWm9L?=
 =?utf-8?B?UXRvTTlOOFFEUFN0d0VxMkpheW1CTTAwNThScUR0M0JScUV5eWVvSXBUQjNj?=
 =?utf-8?B?U21TVGNLTFh4aURFelFPb3RNSVd4LzVWcFl6c0gxSzB1OExoZ3dmVHYrWEZu?=
 =?utf-8?B?a3FPVzNLSnZjTE9OMmZVNGw2TExUeENySXB0eVVqYlJmMFYwci9lYVh1a2dn?=
 =?utf-8?B?L1BOdHBHN3dsbGpOTm1SbkI4d1ZaQmpZc3JrY2dyeHJFSUF2K1RMbnRIV3lQ?=
 =?utf-8?Q?QnC0+3AY+92aNjugxNDACQy1d?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <906DB575F81C5243B2D926128A5C591F@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a09beae6-7ebc-4020-2e68-08dbd46686dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 07:55:01.7132
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ft2D1dywt/3ksgKh+xoXgU71Icd3p9DgLwiEwIMb/QwzC+NX+Q51/CIKflEMPd9JAe8UtIY1Pn9jGI5ezsfz3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB6988
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--10.405800-8.000000
X-TMASE-MatchedRID: nVQUmLJJeyY/XHdICuW5rya1MaKuob8PC/ExpXrHizyK1QpOXZsW6uoL
	OtzJn76Y3Fp/jOcZhxHd7PI9QvI9hcOYR/M8CPo6jQlVVwSbjyft/okBLaEo+PNhzIgXtFJV7fK
	xaM2xqkAYmDuyAkypQ6RXuaJXolrxtiC6nY+rGaB1e7Xbb6Im2n0tCKdnhB58pTwPRvSoXL2y5/
	tFZu9S3Ku6xVHLhqfxIAcCikR3vq9QCOIQsXDv8DR4m2O2OkZKMw0PYRsdas1mQbVEey/Hqhu6U
	VLGbzOK
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.405800-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	616B1ED0305081A7203FA36141E302E0FF89167251611AD3424E184E36EB972D2000:8

SGksIEhzaWFvLWNoaWVuOg0KDQpPbiBUaHUsIDIwMjMtMTAtMTkgYXQgMTM6NTYgKzA4MDAsIEhz
aWFvIENoaWVuIFN1bmcgd3JvdGU6DQo+IEJ5IHJlZ2lzdGVyaW5nIGNvbXBvbmVudCByZWxhdGVk
IGZ1bmN0aW9ucyB0byB0aGUgcG9pbnRlcnMsDQo+IHdlIGNhbiBlYXNpbHkgbWFuYWdlIHRoZW0g
d2l0aGluIGEgZm9yLWxvb3AgYW5kIHNpbXBsaWZ5IHRoZQ0KPiBsb2dpYyBvZiBjbG9jayBjb250
cm9sIHNpZ25pZmljYW50bHkuDQoNClJldmlld2VkLWJ5OiBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsu
Y29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBIc2lhbyBDaGllbiBTdW5nIDxzaGF3bi5zdW5n
QG1lZGlhdGVrLmNvbT4NCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9v
dmxfYWRhcHRvci5jICAgfCA4OSArKysrKysrKystLS0tLS0NCj4gLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmxfYWRhcHRvci5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bF9hZGFwdG9yLmMNCj4gaW5kZXgg
ZDU1ZDg5MzFhMzZmLi44MTA2N2Y0OWVhNjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZGlzcF9vdmxfYWRhcHRvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZGlzcF9vdmxfYWRhcHRvci5jDQo+IEBAIC01Myw2ICs1Myw3IEBAIHN0
cnVjdCBvdmxfYWRhcHRvcl9jb21wX21hdGNoIHsNCj4gIAllbnVtIG10a19vdmxfYWRhcHRvcl9j
b21wX3R5cGUgdHlwZTsNCj4gIAllbnVtIG10a19kZHBfY29tcF9pZCBjb21wX2lkOw0KPiAgCWlu
dCBhbGlhc19pZDsNCj4gKwljb25zdCBzdHJ1Y3QgbXRrX2RkcF9jb21wX2Z1bmNzICpmdW5jczsN
Cj4gIH07DQo+ICANCj4gIHN0cnVjdCBtdGtfZGlzcF9vdmxfYWRhcHRvciB7DQo+IEBAIC02Nywy
MCArNjgsMzUgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdA0KPiBwcml2YXRlX2NvbXBfc3Rl
bVtPVkxfQURBUFRPUl9UWVBFX05VTV0gPSB7DQo+ICAJW09WTF9BREFQVE9SX1RZUEVfRVRIRFJd
CT0gImV0aGRyIiwNCj4gIH07DQo+ICANCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2RkcF9j
b21wX2Z1bmNzIGV0aGRyID0gew0KPiArCS5jbGtfZW5hYmxlID0gbXRrX2V0aGRyX2Nsa19lbmFi
bGUsDQo+ICsJLmNsa19kaXNhYmxlID0gbXRrX2V0aGRyX2Nsa19kaXNhYmxlLA0KPiArfTsNCj4g
Kw0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfZGRwX2NvbXBfZnVuY3MgbWVyZ2UgPSB7DQo+
ICsJLmNsa19lbmFibGUgPSBtdGtfbWVyZ2VfY2xrX2VuYWJsZSwNCj4gKwkuY2xrX2Rpc2FibGUg
PSBtdGtfbWVyZ2VfY2xrX2Rpc2FibGUsDQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IG10a19kZHBfY29tcF9mdW5jcyByZG1hID0gew0KPiArCS5jbGtfZW5hYmxlID0gbXRrX21k
cF9yZG1hX2Nsa19lbmFibGUsDQo+ICsJLmNsa19kaXNhYmxlID0gbXRrX21kcF9yZG1hX2Nsa19k
aXNhYmxlLA0KPiArfTsNCj4gKw0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvdmxfYWRhcHRvcl9j
b21wX21hdGNoDQo+IGNvbXBfbWF0Y2hlc1tPVkxfQURBUFRPUl9JRF9NQVhdID0gew0KPiAtCVtP
VkxfQURBUFRPUl9NRFBfUkRNQTBdID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBE
RFBfQ09NUE9ORU5UX01EUF9SRE1BMCwgMCB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRFBfUkRNQTFd
ID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1B
MSwgMSB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRFBfUkRNQTJdID0geyBPVkxfQURBUFRPUl9UWVBF
X01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BMiwgMiB9LA0KPiAtCVtPVkxfQURB
UFRPUl9NRFBfUkRNQTNdID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09N
UE9ORU5UX01EUF9SRE1BMywgMyB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRFBfUkRNQTRdID0geyBP
VkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BNCwgNCB9
LA0KPiAtCVtPVkxfQURBUFRPUl9NRFBfUkRNQTVdID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9S
RE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BNSwgNSB9LA0KPiAtCVtPVkxfQURBUFRPUl9N
RFBfUkRNQTZdID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5U
X01EUF9SRE1BNiwgNiB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRFBfUkRNQTddID0geyBPVkxfQURB
UFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BNywgNyB9LA0KPiAt
CVtPVkxfQURBUFRPUl9NRVJHRTBdID0geyBPVkxfQURBUFRPUl9UWVBFX01FUkdFLA0KPiBERFBf
Q09NUE9ORU5UX01FUkdFMSwgMSB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRVJHRTFdID0geyBPVkxf
QURBUFRPUl9UWVBFX01FUkdFLA0KPiBERFBfQ09NUE9ORU5UX01FUkdFMiwgMiB9LA0KPiAtCVtP
VkxfQURBUFRPUl9NRVJHRTJdID0geyBPVkxfQURBUFRPUl9UWVBFX01FUkdFLA0KPiBERFBfQ09N
UE9ORU5UX01FUkdFMywgMyB9LA0KPiAtCVtPVkxfQURBUFRPUl9NRVJHRTNdID0geyBPVkxfQURB
UFRPUl9UWVBFX01FUkdFLA0KPiBERFBfQ09NUE9ORU5UX01FUkdFNCwgNCB9LA0KPiAtCVtPVkxf
QURBUFRPUl9FVEhEUjBdID0geyBPVkxfQURBUFRPUl9UWVBFX0VUSERSLA0KPiBERFBfQ09NUE9O
RU5UX0VUSERSX01JWEVSLCAwIH0sDQo+ICsJW09WTF9BREFQVE9SX01EUF9SRE1BMF0gPSB7IE9W
TF9BREFQVE9SX1RZUEVfTURQX1JETUEsDQo+IEREUF9DT01QT05FTlRfTURQX1JETUEwLCAwLCAm
cmRtYSB9LA0KPiArCVtPVkxfQURBUFRPUl9NRFBfUkRNQTFdID0geyBPVkxfQURBUFRPUl9UWVBF
X01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BMSwgMSwgJnJkbWEgfSwNCj4gKwlb
T1ZMX0FEQVBUT1JfTURQX1JETUEyXSA9IHsgT1ZMX0FEQVBUT1JfVFlQRV9NRFBfUkRNQSwNCj4g
RERQX0NPTVBPTkVOVF9NRFBfUkRNQTIsIDIsICZyZG1hIH0sDQo+ICsJW09WTF9BREFQVE9SX01E
UF9SRE1BM10gPSB7IE9WTF9BREFQVE9SX1RZUEVfTURQX1JETUEsDQo+IEREUF9DT01QT05FTlRf
TURQX1JETUEzLCAzLCAmcmRtYSB9LA0KPiArCVtPVkxfQURBUFRPUl9NRFBfUkRNQTRdID0geyBP
VkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5UX01EUF9SRE1BNCwgNCwg
JnJkbWEgfSwNCj4gKwlbT1ZMX0FEQVBUT1JfTURQX1JETUE1XSA9IHsgT1ZMX0FEQVBUT1JfVFlQ
RV9NRFBfUkRNQSwNCj4gRERQX0NPTVBPTkVOVF9NRFBfUkRNQTUsIDUsICZyZG1hIH0sDQo+ICsJ
W09WTF9BREFQVE9SX01EUF9SRE1BNl0gPSB7IE9WTF9BREFQVE9SX1RZUEVfTURQX1JETUEsDQo+
IEREUF9DT01QT05FTlRfTURQX1JETUE2LCA2LCAmcmRtYSB9LA0KPiArCVtPVkxfQURBUFRPUl9N
RFBfUkRNQTddID0geyBPVkxfQURBUFRPUl9UWVBFX01EUF9SRE1BLA0KPiBERFBfQ09NUE9ORU5U
X01EUF9SRE1BNywgNywgJnJkbWEgfSwNCj4gKwlbT1ZMX0FEQVBUT1JfTUVSR0UwXSA9IHsgT1ZM
X0FEQVBUT1JfVFlQRV9NRVJHRSwNCj4gRERQX0NPTVBPTkVOVF9NRVJHRTEsIDEsICZtZXJnZSB9
LA0KPiArCVtPVkxfQURBUFRPUl9NRVJHRTFdID0geyBPVkxfQURBUFRPUl9UWVBFX01FUkdFLA0K
PiBERFBfQ09NUE9ORU5UX01FUkdFMiwgMiwgJm1lcmdlIH0sDQo+ICsJW09WTF9BREFQVE9SX01F
UkdFMl0gPSB7IE9WTF9BREFQVE9SX1RZUEVfTUVSR0UsDQo+IEREUF9DT01QT05FTlRfTUVSR0Uz
LCAzLCAmbWVyZ2UgfSwNCj4gKwlbT1ZMX0FEQVBUT1JfTUVSR0UzXSA9IHsgT1ZMX0FEQVBUT1Jf
VFlQRV9NRVJHRSwNCj4gRERQX0NPTVBPTkVOVF9NRVJHRTQsIDQsICZtZXJnZSB9LA0KPiArCVtP
VkxfQURBUFRPUl9FVEhEUjBdID0geyBPVkxfQURBUFRPUl9UWVBFX0VUSERSLA0KPiBERFBfQ09N
UE9ORU5UX0VUSERSX01JWEVSLCAwLCAmZXRoZHIgfSwNCj4gIH07DQo+ICANCj4gIHZvaWQgbXRr
X292bF9hZGFwdG9yX2xheWVyX2NvbmZpZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGlu
dA0KPiBpZHgsDQo+IEBAIC0xOTYsNDAgKzIxMiwyNSBAQCBpbnQgbXRrX292bF9hZGFwdG9yX2Ns
a19lbmFibGUoc3RydWN0IGRldmljZQ0KPiAqZGV2KQ0KPiAgCQlyZXQgPSBwbV9ydW50aW1lX2dl
dF9zeW5jKGNvbXApOw0KPiAgCQlpZiAocmV0IDwgMCkgew0KPiAgCQkJZGV2X2VycihkZXYsICJG
YWlsZWQgdG8gZW5hYmxlIHBvd2VyIGRvbWFpbiAlZCwNCj4gZXJyICVkXG4iLCBpLCByZXQpOw0K
PiAtCQkJZ290byBwd3JfZXJyOw0KPiArCQkJZ290byBlcnJvcjsNCj4gIAkJfQ0KPiAgCX0NCj4g
IA0KPiAgCWZvciAoaSA9IDA7IGkgPCBPVkxfQURBUFRPUl9JRF9NQVg7IGkrKykgew0KPiAgCQlj
b21wID0gb3ZsX2FkYXB0b3ItPm92bF9hZGFwdG9yX2NvbXBbaV07DQo+IC0NCj4gLQkJaWYgKGkg
PCBPVkxfQURBUFRPUl9NRVJHRTApDQo+IC0JCQlyZXQgPSBtdGtfbWRwX3JkbWFfY2xrX2VuYWJs
ZShjb21wKTsNCj4gLQkJZWxzZSBpZiAoaSA8IE9WTF9BREFQVE9SX0VUSERSMCkNCj4gLQkJCXJl
dCA9IG10a19tZXJnZV9jbGtfZW5hYmxlKGNvbXApOw0KPiAtCQllbHNlDQo+IC0JCQlyZXQgPSBt
dGtfZXRoZHJfY2xrX2VuYWJsZShjb21wKTsNCj4gKwkJaWYgKCFjb21wIHx8ICFjb21wX21hdGNo
ZXNbaV0uZnVuY3MtPmNsa19lbmFibGUpDQo+ICsJCQljb250aW51ZTsNCj4gKwkJcmV0ID0gY29t
cF9tYXRjaGVzW2ldLmZ1bmNzLT5jbGtfZW5hYmxlKGNvbXApOw0KPiAgCQlpZiAocmV0KSB7DQo+
ICAJCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBlbmFibGUgY2xvY2sgJWQsIGVycg0KPiAlZFxu
IiwgaSwgcmV0KTsNCj4gLQkJCWdvdG8gY2xrX2VycjsNCj4gKwkJCXdoaWxlICgtLWkgPj0gMCkN
Cj4gKwkJCQljb21wX21hdGNoZXNbaV0uZnVuY3MtDQo+ID5jbGtfZGlzYWJsZShjb21wKTsNCj4g
KwkJCWkgPSBPVkxfQURBUFRPUl9NRVJHRTA7DQo+ICsJCQlnb3RvIGVycm9yOw0KPiAgCQl9DQo+
ICAJfQ0KPiAtDQo+IC0JcmV0dXJuIHJldDsNCj4gLQ0KPiAtY2xrX2VycjoNCj4gLQl3aGlsZSAo
LS1pID49IDApIHsNCj4gLQkJY29tcCA9IG92bF9hZGFwdG9yLT5vdmxfYWRhcHRvcl9jb21wW2ld
Ow0KPiAtCQlpZiAoaSA8IE9WTF9BREFQVE9SX01FUkdFMCkNCj4gLQkJCW10a19tZHBfcmRtYV9j
bGtfZGlzYWJsZShjb21wKTsNCj4gLQkJZWxzZSBpZiAoaSA8IE9WTF9BREFQVE9SX0VUSERSMCkN
Cj4gLQkJCW10a19tZXJnZV9jbGtfZGlzYWJsZShjb21wKTsNCj4gLQkJZWxzZQ0KPiAtCQkJbXRr
X2V0aGRyX2Nsa19kaXNhYmxlKGNvbXApOw0KPiAtCX0NCj4gLQlpID0gT1ZMX0FEQVBUT1JfTUVS
R0UwOw0KPiAtDQo+IC1wd3JfZXJyOg0KPiArCXJldHVybiAwOw0KPiArZXJyb3I6DQo+ICAJd2hp
bGUgKC0taSA+PSAwKQ0KPiAgCQlwbV9ydW50aW1lX3B1dChvdmxfYWRhcHRvci0+b3ZsX2FkYXB0
b3JfY29tcFtpXSk7DQo+ICANCj4gQEAgLTI0NCwxNSArMjQ1LDExIEBAIHZvaWQgbXRrX292bF9h
ZGFwdG9yX2Nsa19kaXNhYmxlKHN0cnVjdCBkZXZpY2UNCj4gKmRldikNCj4gIA0KPiAgCWZvciAo
aSA9IDA7IGkgPCBPVkxfQURBUFRPUl9JRF9NQVg7IGkrKykgew0KPiAgCQljb21wID0gb3ZsX2Fk
YXB0b3ItPm92bF9hZGFwdG9yX2NvbXBbaV07DQo+IC0NCj4gLQkJaWYgKGkgPCBPVkxfQURBUFRP
Ul9NRVJHRTApIHsNCj4gLQkJCW10a19tZHBfcmRtYV9jbGtfZGlzYWJsZShjb21wKTsNCj4gKwkJ
aWYgKCFjb21wIHx8ICFjb21wX21hdGNoZXNbaV0uZnVuY3MtPmNsa19kaXNhYmxlKQ0KPiArCQkJ
Y29udGludWU7DQo+ICsJCWNvbXBfbWF0Y2hlc1tpXS5mdW5jcy0+Y2xrX2Rpc2FibGUoY29tcCk7
DQo+ICsJCWlmIChpIDwgT1ZMX0FEQVBUT1JfTUVSR0UwKQ0KPiAgCQkJcG1fcnVudGltZV9wdXQo
Y29tcCk7DQo+IC0JCX0gZWxzZSBpZiAoaSA8IE9WTF9BREFQVE9SX0VUSERSMCkgew0KPiAtCQkJ
bXRrX21lcmdlX2Nsa19kaXNhYmxlKGNvbXApOw0KPiAtCQl9IGVsc2Ugew0KPiAtCQkJbXRrX2V0
aGRyX2Nsa19kaXNhYmxlKGNvbXApOw0KPiAtCQl9DQo+ICAJfQ0KPiAgfQ0KPiAgDQo=

