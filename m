Return-Path: <devicetree+bounces-9482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF197CD34D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE5D71C208D9
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 04:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C79043119;
	Wed, 18 Oct 2023 04:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="vAE17D/Q";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="CceTSGnS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9DB17C4
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:54:42 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A349293;
	Tue, 17 Oct 2023 21:54:40 -0700 (PDT)
X-UUID: 6f48b8886d7211ee8051498923ad61e6-20231018
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=kDKgjHgfY4zWdJBUz3cAoGPG72qCj6zht4rklnnhK/k=;
	b=vAE17D/QK7m+uDRMvix+QDRLdjZcY767gcSsUSqLSmZVqVUeeZjDm3WmJ2BnjTrfOm1KXtxwWM2hqmdSOueHSZ3dLmKyXvqO6Qad3jJHCbvXzRKu9KNYf7W6BvrnEopEGpAbkIxFPrZXlRkEzZsjwelOijjJZT2pyOpV3qm6nag=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:6257010f-053f-4629-97e0-4bbc324e3b29,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:820910c0-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 6f48b8886d7211ee8051498923ad61e6-20231018
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 189139400; Wed, 18 Oct 2023 12:54:35 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 18 Oct 2023 12:54:34 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 18 Oct 2023 12:54:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5FEndQooTaIFbd5e+bbEpmhFndczakar9cSP0y90A3Qb+9AAMYhffDqxav+9zieEmnjFR6SbHmpYPAZdXIgLZN5U6cuA2KD12jCQOz95vaVT+a2P8tFEAOD6Ll98P51Wm0IJT3Noi7h0kopWqfLE3oMo76LP3iTq4bJ8KbQZXUP+vsqX7/eJhdH2CrZsa3NMUiDInACdhPVgeiy8FHf8eKCOdyXUCaJ7BYxN5fLnSNvp+oA3DhBLXVJoPSJaPEf2oM7AMrw1vErh8det5zvDtCw9Wb2trsxZox8yzijgaRbUnyRSaMYodSq7eRnhz2x6Gb1OMIx1nNecWysuwcGjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDKgjHgfY4zWdJBUz3cAoGPG72qCj6zht4rklnnhK/k=;
 b=R6GSDnxd42fPIb/49/2BiWlLauocvEqQa8kboxdw30yJShqBmeMcSZOLgNEQqvngb3rSJWENCg//F4Z8H7O8Wq8EPLDOjqiHlqx5uyn9fEa3+ATyuQkzR0tLJssg+2Akgg7wNjYX3kVbu6jlQ/ydecrFPVt9oXZZ0IuYg9slDnDK1AV2wzlDy7oj3hwQOvsgsvNRiLYLy+jv3zNF6DAB+Y+O+ufAd9FFQIRqdWmDbuXJZQps2MHYuuN9UBCYBFOI5yIvf6xIvw6yoExGrcbUqsP+qQoF6oszcZ9+OtXejV8dRf5m/fhDUOrqBjZ7+IKj5Ae+3iM7h3JSMtpYgGJ3xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDKgjHgfY4zWdJBUz3cAoGPG72qCj6zht4rklnnhK/k=;
 b=CceTSGnSs99Q8uutxChIyMJxejrImr4XYxoJkzPTdX28JSjvsFISfrStv/LX1oLr8bJ5jx/iiQsMlin9euUunzO9eKxGBg0ZQjeqOxQQvrTDs5VXRdrOqzYI2GLEo5HLf46czpTmSZib+6SthM+eoUXQz74yzyvztaCfIR1KDNo=
Received: from TYZPR03MB6623.apcprd03.prod.outlook.com (2603:1096:400:1f5::13)
 by JH0PR03MB7925.apcprd03.prod.outlook.com (2603:1096:990:32::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Wed, 18 Oct
 2023 04:54:31 +0000
Received: from TYZPR03MB6623.apcprd03.prod.outlook.com
 ([fe80::faa3:6316:28ab:206b]) by TYZPR03MB6623.apcprd03.prod.outlook.com
 ([fe80::faa3:6316:28ab:206b%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 04:54:31 +0000
From: =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?WW9uZ3FpYW5nIE5pdSAo54mb5rC45by6KQ==?=
	<yongqiang.niu@mediatek.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?=
	<Jason-JH.Lin@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?=
	<Moudy.Ho@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, =?utf-8?B?TmF0aGFuIEx1ICjlkYLmnbHpnJYp?=
	<Nathan.Lu@mediatek.com>, "airlied@gmail.com" <airlied@gmail.com>,
	"sean@poorly.run" <sean@poorly.run>, "hverkuil-cisco@xs4all.nl"
	<hverkuil-cisco@xs4all.nl>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "fshao@chromium.org"
	<fshao@chromium.org>, "johnson.wang@mediatek.corp-partner.google.com"
	<johnson.wang@mediatek.corp-partner.google.com>
Subject: Re: [PATCH v8 22/23] drm/mediatek: Power on devices in OVL adaptor
 when atomic enable
Thread-Topic: [PATCH v8 22/23] drm/mediatek: Power on devices in OVL adaptor
 when atomic enable
Thread-Index: AQHaAB1HEdFfDejVNEqf1UEj5S+jd7BOzhiAgAAwCAA=
Date: Wed, 18 Oct 2023 04:54:31 +0000
Message-ID: <691c1458eb5e45d8c14f24e78f47b2840f589ea7.camel@mediatek.com>
References: <20231016104010.3270-1-shawn.sung@mediatek.com>
	 <20231016104010.3270-23-shawn.sung@mediatek.com>
	 <c8e94835fcba4692d34eb002ef4c14f554c50b0b.camel@mediatek.com>
In-Reply-To: <c8e94835fcba4692d34eb002ef4c14f554c50b0b.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6623:EE_|JH0PR03MB7925:EE_
x-ms-office365-filtering-correlation-id: 981654db-4d64-4efd-5ab4-08dbcf965121
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S5Vw8HWocNJDTVa9Wo4Bib9moG4tBMFLMI2jj1Sh8D2OuuEFrTlo2/pLBmzVY/es13pu+Z1yyEBmvzxGixL3B1BiPE0/tJ3kr0IerGGCB8tbdzIJzDlK4ONpExxBTXD28QfhhVSO+KXL5v5qi2f2puuTQBATIrTh+3VgjLiTC10gVItxJXe49wy414BC7a4783zEH8B7urfUWfMfzlUvir4wS2g17scxVQ4xwxyUZKIw0glYLBKyP+3Z6IhviZEun+g+/hKe+GieXSgWksKwhxNjg5e6gzfO+hIXP30QLRYvw+bJJihX/np/EAbOeUZmzt7cv6hqvit8yYqivV4wtY7wU9yb3irNkRGMHR/83sSuceS9WgYR4ya5MVwkQOCZmijKdLlfNC14q/BUG+IR4D+sZBghfdW+U58TkEia+50AhWfYanH+E04muwMADxd3yAI38e/4AR/+G/oEER1/ey5rll/mD9JcPmywMgkCGqtrci9Yw8AqM6cfPnQDGVIJenDCMh/UBz2QoMRy0gKK3zW30J6GiAcdaznDQ/ytHp0TnCO9xxdwB3B+T9UiXdDGppcpDnaV0/8337IbAZ9+SozgS8Whdaz+0VQKucOt+6Ha7T18yuYXf739AL82mS5DK5fKUxksEjWisy2qBZSVmp2dJy7eUHEu3q3XjW7MYtA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6623.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(366004)(136003)(376002)(396003)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(64756008)(54906003)(86362001)(316002)(76116006)(66476007)(110136005)(66946007)(122000001)(66556008)(5660300002)(66446008)(38100700002)(38070700005)(7416002)(4001150100001)(36756003)(85182001)(2906002)(41300700001)(4326008)(8676002)(8936002)(6512007)(2616005)(71200400001)(6506007)(26005)(508600001)(6486002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXAzRFNaenVyZ2xYUWFZcTljNDZHVmx5dVN0Vnl4UmNTMkJMamVqdWlMSXZO?=
 =?utf-8?B?Rnpsemt0ZElFY2EzZjFreDNqNVpaUnFjVy9zb3lSb3Q2bnBlSWs3N2RVZCtn?=
 =?utf-8?B?c2NVZUZyQXpKM0IwQkN0aERKQVNnMUgrV3NxK29yWFhrTkVmRHJmcEVGc0RB?=
 =?utf-8?B?QXNUZHVHUDhjWjBvWW03OHRtWUlyVzZrMSttclg5bldBWGpFQkxYQjdzVjdT?=
 =?utf-8?B?akxMMkQyY29oTHN3ejFpemZqa3FUSlRQNkN4Z1hDSUxOcDlvdFpkazBuVTk1?=
 =?utf-8?B?V052ZzZNQ2hmRDRlaGVNbnMvTXBMcGpnaTRlZ2p4NXhDQ1dScTBsNTNWWkp3?=
 =?utf-8?B?WG9GZ2xCcmU3enBwTldtKzB1ZmhqUTU3UzFhRFNrMlVjOGpvVEt2QTh5SVlh?=
 =?utf-8?B?SjZldEVrSkx5QnZ5ZlVkMDdnYzNXSUp1dGc1M2tiSDQwREFVN0s2bTIySDVp?=
 =?utf-8?B?VUlDWlJncU9BRFpFdXhqaGhyN2lNVTdCVG9XK1ZVbDV3OVB2MFVmSkdpMmFG?=
 =?utf-8?B?UFhkazFySzFoMWhQQWx6M2owdnNyN0U4aFNOWlREZ2dhSC9HMEtxN1pDbGFT?=
 =?utf-8?B?a0dacGY2bkdsRWg3SVpJRUVZMHh2dXpEbDNGSXBUbzZjTzhjN3p2WlBvNmlR?=
 =?utf-8?B?UE5LZWlZdCtONEF1Wk9Wa3RyUVY5U2N1N3NsUHZCcDZyK290YTl5dDFad2lr?=
 =?utf-8?B?YWw1Mmp0bHNyTEd4NmtkOEdvQlI2cVhqeitYWWN3VmRKMldMdDlKdlBUUU9Z?=
 =?utf-8?B?U2NBcEVmNUwweGdlVTVwcnVDZVVIL0V0RHdyQlFoVmxSWG1rZEFlZVRNNXB5?=
 =?utf-8?B?eEVNTnd4aWxLRkNWcGEvdnJncVJKeTB4VUlxK3hsRksyTXU5ak1NK1VQeUc1?=
 =?utf-8?B?blBkY1V4U09ITVRINThicW9VQ2c0U3pzeWJEYkUvMTFKMXlhQmlPNHlOMkV2?=
 =?utf-8?B?TTRDYko2bS8xbHZwaC9pNkF4c2JtRzlUMEx1WmI1S011bmZSUHNwRlYzelJi?=
 =?utf-8?B?UktoUU1VeUxyU3hCZG5xelVEbnNmeEl0NHFqWWpmbFFTajNOUVk2ckEvdXZL?=
 =?utf-8?B?Y3lTU2tqNTBrUDZ1T3JoZFBwU2RlVm5RZXRqVnZWUkZaWWQrZzNSWHNaUytD?=
 =?utf-8?B?OXM0NHNwdlRNbklNdXYwejFDOGdMc3NEbXpXTjdSUUNzTG5GR0tFZ0FpQit5?=
 =?utf-8?B?RHQrVFRrQXBtcHNRbTlPWk4wWitmcThLY3ZxKzBmMmhDQzVMckMwdFRUVFBO?=
 =?utf-8?B?YXBpbFhDaGdveXVkS0ExZCtiTFNXTmxxNjdaUStkblRrMVpuSHlsYlZnaGty?=
 =?utf-8?B?SjdWUzB2OEN6Vzkwa2ZmZFlxQVlzd09lczJUN0ZzaTlzUHE1UFhRQnNZYm1L?=
 =?utf-8?B?dEdBNjYyV2ZKTGs3VmVDUVlTSG9ReVNJZVJlbVdLcnJRZXZRbVBSLzYvL25D?=
 =?utf-8?B?ajJXNEFCdzBLYStBTStUV0NvTzcrcmxIMzN6NWd3N0RUdDA1aGpIejM3WkZz?=
 =?utf-8?B?ZThnUmdzclFJcFhwOU1rcEIvK2g2VHIybE1iblhQcWhTV3Z6UkY3MGZnWVB3?=
 =?utf-8?B?NkdOV3BlRmx4eGFLR1VqYWZsbnByMlNYamtJYWVLLzk0WVpBWngvaE4xdGdS?=
 =?utf-8?B?UXdGM2Y2WER5U2N1UFJwZG5tRHFVRVdCcFJoNUlYaWlFZDJCNFE5bVNLN2U5?=
 =?utf-8?B?ZWtPVWlHeVpLN2JxK3M0SkkyZG1iVjloTll3bkRJWHhCRjN3UUg2OWcyNVZG?=
 =?utf-8?B?T2RsSWw1WTJQc0FpM2JuM2I2NFlpZnNTRTVYZGIzME5NRStmQ2dIdjhKNDBq?=
 =?utf-8?B?c0NYZDV2ZTh1L0JtZ2p6TVI1emdVVG5zK29Bemo4S2pyaDNNTUExRzd5c0Ro?=
 =?utf-8?B?Z05LL0NLei9rbjkybWZiWUNGRVlBcjRwdWxveHJlNkRGYXBUTW5KNW9NVGxO?=
 =?utf-8?B?TUMyRThmT0RueG5HdFNPQXFjN3hVSjdqZVc3anBlaDdCWGhGNzhld2x0dVBK?=
 =?utf-8?B?ZzRLT3UzU1dGV3I5WFZGMkkrcXU3WWl0aURUZXJrYmpoNGpNYWt0UzY5eXg5?=
 =?utf-8?B?alh4UGttS3phVkZxeGhVRjE2Tks2WGJVMC9EWFN1NWRlSGxad3VYdG5ocklm?=
 =?utf-8?B?T0Z4YWVweWkzTEV2NHFmWjBuWmgvS0VSSXFlSlprSWs0MzA5QVpqdmpEMElD?=
 =?utf-8?B?aWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <40749170C3BEDA499E02FCE5A3BE8B6B@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6623.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 981654db-4d64-4efd-5ab4-08dbcf965121
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 04:54:31.6202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bf13DJHK8cn5ERnyFyF9ZZ3L6FbS92LDMwVN0XsCkJInK7qA6vKjOnOO9oemeH35W0TIIBJYfzdeX9K8Jf9tzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7925
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--13.691400-8.000000
X-TMASE-MatchedRID: ge9e+QLSeazUL3YCMmnG4ia1MaKuob8PofZV/2Xa0cKSO6So6QGgypyh
	lVw/MC0HcQCr6vrjZa/pntG9lpI2o4dB3EMW8FvfQsSgfTKe5lU2nLo2hN48Id9RlPzeVuQQWcH
	UyLOsRe/v5TZdm2T2Kv0h3e0v6EXCoFbZmsVVg1H0hv/rD7WVZMMdI0UcXEHzCqIJhrrDy2/tlo
	NHczQ4GoMmUcN/l8E7kZOl7WKIImrS77Co4bNJXQtuKBGekqUpI/NGWt0UYPCx0h6L5nkJUgR2o
	7kP2GAbEG5XboevhAQOhFfihbRvvMOGPq33mlSu
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--13.691400-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	0AA055BF39B2E4CF54C1F1DEBEEF330032F8710158041F3AA7EFFA73FA265BB02000:8
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGkgQ0ssDQoNCk9uIFdlZCwgMjAyMy0xMC0xOCBhdCAwMjowMiArMDAwMCwgQ0sgSHUgKOiDoeS/
iuWFiSkgd3JvdGU6DQo+IEhpLCBIc2lhby1jaGllbjoNCj4gDQo+IE9uIE1vbiwgMjAyMy0xMC0x
NiBhdCAxODo0MCArMDgwMCwgSHNpYW8gQ2hpZW4gU3VuZyB3cm90ZToNCj4gPiBEaWZmZXJlbnQg
ZnJvbSBPVkwsIE9WTCBhZGFwdG9yIGlzIGEgcHNldWRvIGRldmljZSBzbyB3ZSBkaWRuJ3QNCj4g
PiBkZWZpbmUgaXQgaW4gdGhlIGRldmljZSB0cmVlLCBjb25zZXF1ZW50bHksDQo+ID4gcG1fcnVu
dGltZV9yZXN1bWVfYW5kX2dldCgpDQo+ID4gY2FsbGVkIGJ5IC5hdG9taWNfZW5hYmxlKCkgcG93
ZXJzIG9uIG5vIGRldmljZSBpbiBPVkwgYWRhcHRvciBhbmQNCj4gPiBsZWFkcyB0byBwb3dlciBv
dXRhZ2UgaW4gdGhlIGNvcnJlc3BvbmRpbmcgSU9NTVUuDQo+ID4gDQouLi4gc25pcCAuLi4NCj4g
PiAraW50IG10a19vdmxfYWRhcHRvcl9wb3dlcl9vbihzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ID4g
K3sNCj4gPiArCWludCBpLCByZXQ7DQo+ID4gKwlzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2FkYXB0b3Ig
Km92bF9hZGFwdG9yID0NCj4gPiBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCj4gPiArDQo+ID4gKwlm
b3IgKGkgPSAwOyBpIDwgT1ZMX0FEQVBUT1JfSURfTUFYOyBpKyspIHsNCj4gPiArCQlpZiAoIW92
bF9hZGFwdG9yLT5vdmxfYWRhcHRvcl9jb21wW2ldIHx8DQo+ID4gKwkJICAgICFjb21wX21hdGNo
ZXNbaV0uZnVuY3MtPnBvd2VyX29uKQ0KPiA+ICsJCQljb250aW51ZTsNCj4gDQo+IFRvIHNpbXBs
aWZ5IHRoZSBjb2RlLCB5b3UgY291bGQgY2FsbCBtdGtfZGRwX2NvbXBfcG93ZXJfb24oKSBmb3Ig
YWxsDQo+IHN1YiBkZXZpY2UsIGFuZCBkcm9wIHBvd2VyX29uKCkvcG93ZXJfb2ZmKCkgb2YgbWRw
X3JkbWEuDQo+IA0KPiBSZWdhcmRzLA0KPiBDSw0KPiANCg0KU2luY2Ugb3ZsX2FkYXB0b3JfY29t
cCBpcyBhIGBzdHJ1Y3QgZGV2aWNlYCwgd2UgY2FuJ3QgcmV1c2UNCm10a19kZHBfY29tcF9wb3dl
cl9vbigpIGhlcmUuIEhhZCBzdWJtaXRlZCBhIG5ldyB2ZXJzaW9uICh2OSkgYW5kIHdyYXANCnRo
ZSBwb3dlciBvZmYgcHJvY2VkdXJlIGFzIGEgc3RhdGljIGlubGluZSBmdW5jdGlvbiB0byByZXVz
ZSBpdC4NCg0KUmVnYXJkcywNClNoYXduDQoNCg0K

