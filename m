Return-Path: <devicetree+bounces-4023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AB37B1140
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 05:39:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 99AAC2813B5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 03:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B0C6FA5;
	Thu, 28 Sep 2023 03:39:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC1146A5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 03:39:53 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34DDA94;
	Wed, 27 Sep 2023 20:39:49 -0700 (PDT)
X-UUID: a803d6485db011ee8051498923ad61e6-20230928
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=GOvA0fx9ycOMns6g0XH9D4d2k3KgSv6r1clxmacHwqw=;
	b=tQx1gBD8GH4dptldkZyiuDbHjH0Q92Z7YxdvSLxt+x2z/wVvetXk0pNkSzfuFBiT+eUEJbz+Li9MXPqO0dKlXeOiQQuJ4d174mF/ta/dXBa7l4L18NJlma0ltVkwbX2HzijD1pZFNEw8JEQnZ5e8QXhoRsD8NmMWIYwFci46BTs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:e855aebc-748c-4c3c-a8f5-28e8174d75d1,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:d98b8dc3-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: a803d6485db011ee8051498923ad61e6-20230928
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1616815144; Thu, 28 Sep 2023 11:39:40 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 28 Sep 2023 11:39:37 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 28 Sep 2023 11:39:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZAiNCNz7992oPwvjySc3z972jDpo2Pi7/TykqAgon1uKiVx8q+EqKaEuNGtbIE3gz7Hm/I3NR3FvGESVxpdPTPagsqJM5Q8/D7LBLeeFSWhP8FFHODlu6rCP6Af5MqmCW5ZWIYXFx99qFqM29qrjMcJ8Jq47DQPAzMmlNsqjeHBZqmnm2FxDAZ0h2P3CFV9M/UIIg4uEZUJYJU1gst4p5zPwZRjHuOKcKNpc2xP7p3JYbrFoOGuFOyQ1QoqXFmDNkJd/oDYDhg+y9tJDEAp1b11JcskEMvRFoT5MSasq+whI4aNHQ84ph3va/mltmJmaG0UYazLFXFfmVKpRz6H9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GOvA0fx9ycOMns6g0XH9D4d2k3KgSv6r1clxmacHwqw=;
 b=mi9eo/gdI2vI1vvvQdjYilkEwZQlb7dtcqP9o+zTEotGpKK8xgkPuAE7KvhoLESuK0hw03gIihIWeOc5WgdDj0QfnBvFG18LxfmhzIC4G0Vt0VTF/TyQ7MbK+TU8D6K+GwsvI0RYLzI5a/UjR483kja/bVjZVEUjT9f8CVDe14tTZj94//hNiW5UK3jrC+Vm4EFudEjBpQT9p72pS21RGeFR+nthFlLOj8cunHG0/HWfUAEEae9bvPCVF1CkdPGwe8lREVDvjL6AQtKslH69twyrwjRng5+dO0Wvaa/ZIon3jl+8i1zlcI6fGjmSk6U9xzSU+tDKPIgJUXLnsw8dMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOvA0fx9ycOMns6g0XH9D4d2k3KgSv6r1clxmacHwqw=;
 b=l1q1+b0XyUOGo5f5IRG9oMYeDBydsIqh8Rh7P1G7WP3r6/ehm43eXioGpOKbhO2kuY/s6Xu6eLC4Mvn6Ug/vwIXSUMnBWUb0wy61miyBDT1o45eu5kcUj6eJVwh6jVPxMtEZcLu1BteZxctGr+BpNDVxF6A+LpeA0eO/m28wZA0=
Received: from TYZPR03MB6623.apcprd03.prod.outlook.com (2603:1096:400:1f5::13)
 by TY0PR03MB8222.apcprd03.prod.outlook.com (2603:1096:405:16::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Thu, 28 Sep
 2023 03:39:34 +0000
Received: from TYZPR03MB6623.apcprd03.prod.outlook.com
 ([fe80::faa3:6316:28ab:206b]) by TYZPR03MB6623.apcprd03.prod.outlook.com
 ([fe80::faa3:6316:28ab:206b%3]) with mapi id 15.20.6792.026; Thu, 28 Sep 2023
 03:39:34 +0000
From: =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, "airlied@gmail.com"
	<airlied@gmail.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "nfraprado@collabora.com"
	<nfraprado@collabora.com>
Subject: Re: [RESEND PATCH v6 17/20] drm/mediatek: Support MT8188 Padding in
 display driver
Thread-Topic: [RESEND PATCH v6 17/20] drm/mediatek: Support MT8188 Padding in
 display driver
Thread-Index: AQHZ5IO+b14cG19tBEeUoyKVCLRvfLAvqD2AgAAJhYA=
Date: Thu, 28 Sep 2023 03:39:34 +0000
Message-ID: <f28018229a5c0c232535da929e9d27cb7f649b7e.camel@mediatek.com>
References: <20230911074233.31556-1-shawn.sung@mediatek.com>
	 <20230911074233.31556-18-shawn.sung@mediatek.com>
	 <9fc58793d90b7a984dc3d40ac44719e9869b1202.camel@mediatek.com>
In-Reply-To: <9fc58793d90b7a984dc3d40ac44719e9869b1202.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6623:EE_|TY0PR03MB8222:EE_
x-ms-office365-filtering-correlation-id: 0d906203-57a0-4623-cd70-08dbbfd4885d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ToyLcg7WsFCP2VUrXmfm2cJ3HP0ULges9JApeG5VA/xMuJLi3DgsEE0olUGKaOYGQCuJiy32+yXuMAJgaFV+RztVvm/tgl3PYlRbPF7Q5wY7Jlfl7ROrzjtgZ+/3/gSFWcM2RVEq55TDgU63fSXbQ7wvSTExKNklj0BbEJWzwE820qkLRUu7kPgZkY1BH05dDyMPH4GBMgzwh1PuDu4F5/W7lBj8GRyyJcOP3Ym5n0wQl8d0HuzAB51wGNOQu9gjRQ6u1ETE7SWlHcotJ/mQ2/66vvkGt50Knd1rDt9Rz/JGTDNp61qGKJW+j+gmKBUGe3rORYKmfEZxZx0hlEvrtM460IK6nehd6quthjTpq7IKURIbyxlgANbb6GSsOiadMWaBRzy7pns+CfL3oCOs43GkgmhoAFzQivOX20Z65JvA5vYyYvKXRab2Uo9V91Vo64j3lbM01D6Eq6DRkJWQruwT0/aoQRMoKRTvLNV7jHv4IahpBcGbgbYhz853EBFbkyN18Ctz/PPD0VUZBcxT8W5m5o9cT1c0SXuXpjpjEiGBV24iAUbL9qRn1HGyDiVS5U/OONgudg2Kxrbh3SjXwoHMolx3GkJHFyhQyEhqkCzvwkZ+vjcLCNZ69Dfvdrkja8tXKg8ktFARl+sJ9Ux6o+YuoWHbcDoqD0n0zfV8ZuA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6623.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(71200400001)(2906002)(66899024)(4744005)(6506007)(38100700002)(91956017)(26005)(64756008)(38070700005)(6512007)(76116006)(6486002)(110136005)(86362001)(66446008)(122000001)(478600001)(316002)(5660300002)(83380400001)(54906003)(36756003)(4326008)(8676002)(8936002)(66946007)(7416002)(66556008)(2616005)(41300700001)(85182001)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVU2ZlRWRktqQVJ6Q1dTWFlydWhmNEdZWUFxbTQ2WUpMRGVDREFkNFhrZVd5?=
 =?utf-8?B?S3pMVHBKT3F0VW5FdnUzN0R1K3pKZ0ovSDVnVzkxd2VUSkdiZkxZdWhlT0ts?=
 =?utf-8?B?ZzA4TEF0SnFWeWc4ZDFxZjFKbE83QkcySzg5SnNZeTdONTE5d3ZpTVRScnFm?=
 =?utf-8?B?bkF5c0tpRnlHRlkzY3Y3YysycWFWaTRZMzc0SllScXl2L294eWpFdmkxY1Jv?=
 =?utf-8?B?RnplR08veWtFdmswYVFTYUhmRFhjM3BCZFptMmsxODdXOUFBUFpOdmJ1VDAy?=
 =?utf-8?B?NmR6bUNJWkhLVFg3M1hENlVFREhrTGpjVVBRL0tkNUprVXJscHIvN0FQMWtO?=
 =?utf-8?B?Z3N6UTA1V2RSTVN0Rm1yM0MzelpXdnRjNVhza2dUQW5kSUttcjJDaUkrTkN1?=
 =?utf-8?B?U0w2ZWZuTTJyc1BKaGczSWl4a1RjR0pEQkJ0V3hOQVVmNVd5YmIvRWJBMDJS?=
 =?utf-8?B?b1hTTE1Wb0JNY1IrbUpTUmRYc1BEcGorVi9LdHRPWEpOQU5rOUZDWTJmelJP?=
 =?utf-8?B?K0RDR0dIemJWSUNWSWo5Z0Z5QXhabDlYTDN3eWRnODIyY0pWRW1mR053Nm9I?=
 =?utf-8?B?ZFNzZ1BsbTArNnVBdXFoc24wZFc2TGZQTVA2d0srNWJlZCt3VXhGeDNqTEN6?=
 =?utf-8?B?UnBiK2xkZ0NJWExoRldJWGI5RDUxcWZaUWpHT2U3Q2U1c2pwWjVzU1dpUzBr?=
 =?utf-8?B?amxFd2RvSHFVNWF3VGRBVkJuQzkxVmVXMGFzdWp1RDh3S2N3VkZVU2R6Nm1s?=
 =?utf-8?B?OURDc29LUDZQdDNFQnZ2RENtUE5JVlRJLzdpcUFnQjRLZ1lQTmVoTGlGbmhR?=
 =?utf-8?B?cHh2TFYvN0VoSlR2UFJVdW1KMlZqdDdFTnhDUkY2ZVl0VGlhZ2pZQ0J3U1U1?=
 =?utf-8?B?Y29EdjRQRXpCL2tKT0J1RXRDSGthWE5oZEdSUW52cldLSHk0SFpHWTR3VC84?=
 =?utf-8?B?WHRjVVpNSXdMS2dkYW04eGNFcEhmYjJrUEgwLzhjZGEzTlFOejM0Wk5aY2xa?=
 =?utf-8?B?dFVBaGg1RTV6YlVhMFVrdUlEbHU0Y2ZzdkZFckZLdUlmZjlYWlkxcm5nWFo4?=
 =?utf-8?B?ditHSWZyd2xxYnNrZVZ3enpVUGY5VlZueS82QmNCR1R3c1JlY2JzaDh5azVH?=
 =?utf-8?B?YTdDKzRBTWtmSXBSc2k1OStUeFVOK21lczJjTGk4S212L3VESmNJakhuUGR2?=
 =?utf-8?B?Y1Y4OVkxYWlzMW84ZnBHcXREdmZ2ZWFPZmh4YVIvS3FFZ2pBMVR2T0Y3bktU?=
 =?utf-8?B?TnkzM0xHSnFad1NsU2poSmYxQlU0VGYvdmVRVWlSdEhOeGRkK0E4VXFGWnFS?=
 =?utf-8?B?V3RMMFFjZE5xRHJOUUZXTjJpZzFVVVhjdlhsalA1WnlXRkVJb2JuTFpNdHMw?=
 =?utf-8?B?RVRjNU5GNjZ3T1RtODBVSVowMjlMK1lkbURYZG02TDk5eHNqZ0V6Z0g4aHRN?=
 =?utf-8?B?SGlRN2NscWJUVDBXWjZ6VHJ5a1oyN0k3aEJKaWh1ek9sdExVcTRuTWtEVy92?=
 =?utf-8?B?T2VJRW42NnRTUUJ6cGtxM2ppbUh0ak5rb25ubkdpTGJYNTMvc1doRFloaW13?=
 =?utf-8?B?RnZ0YkluMUV1ODVhenprcTdPOUNFa1VVNU9pTTFyS2RvN3RlWWRkQ2ZHSnl2?=
 =?utf-8?B?b2JRRm5SbmVZQVVVUzhVL1Q0TzNZU3BYbmhaM0FQdW5pSkhFRmMzbjZaTjNi?=
 =?utf-8?B?YVpzY2E1SVUrT0pFWVQ2SktpYWZCU29yamFDWURPb29VeGxkdGRRZlFCOEdO?=
 =?utf-8?B?cEpIVTVmb3pKak5OZGVjVy9idVFueHZ2ZXEwdkZVaDhLY1ZsTFVtZmtoaGVJ?=
 =?utf-8?B?UjB0OXZsUEZlNnEvSmVUeHJEM2U3SHB4dVF0UE90ajhGTDlKR1dyQ1VTN1kz?=
 =?utf-8?B?Z2VRS1lsUU1ocVBFTEZsZFhzNDU5eFBRcmNzeHdQZlBCQXNNNThzZ1F0NGRx?=
 =?utf-8?B?eDk3T1dEZlppaEZ2T0dCclIvSTBVOVFoTU1IbnVNNm5oZS9EUnN4akVPTzdq?=
 =?utf-8?B?b0xDYUxiWWs2VzJQU1NmcUdZQTY0clQxT3pGTDgveEZxWFJpcWgyMVJYUmNX?=
 =?utf-8?B?NzJTaFRlQzAybm5jT2lUZGh6VnF5a3lENWZORkJ4UzRSSzVENDRwUS9ZRThk?=
 =?utf-8?B?VU9VcHZCWjhYUTJyUkUxL0xLQ1R5MWtBOVZuZjQ5cjlza0tIQnJXQzVhd1Ur?=
 =?utf-8?B?Ymc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E291C6B7863BE4BB5A589D043A66A00@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6623.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d906203-57a0-4623-cd70-08dbbfd4885d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 03:39:34.4409
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYl652pCkye5UT66cSW4qZVdKOedr0lUuvpYofcr2g4U+T1Rtfwc8WCWWRx5Y93B//5HCP0zfmURWcmvqAuucw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB8222
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--11.887500-8.000000
X-TMASE-MatchedRID: Y6GLOewO+JjUL3YCMmnG4ia1MaKuob8PofZV/2Xa0cKSO6So6QGgypyh
	lVw/MC0H9KE7L0nJx0oY+Pr+hmY3JA9FV6kNYiPHjc2CQSoA3RFD3kXYiJVSRJp5yGjWmTix9Gb
	SSaq0f4MrBt7yhOgNhsswrEghLf6dxd9UdTicXbTuykw7cfAoIPngX/aL8PCNQmp51f2+39nUQZ
	8ANWzUiC1j8ZE4ZncKLHO58Xq+YO4hu4G5/VkGw20PWqD0pliRfS0Ip2eEHnylPA9G9KhcvZkw8
	KdMzN86KrauXd3MZDW2yXVx6y9ff7+CYOqLmMGpXXbBPoudD2eiD64FtHtiQ8yYNt6o4It7
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--11.887500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	EA1DCD734930498EF97FA74A1BFCEFF4B41246CDF3717FAE2BF351588D7FEC152000:8
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_NONE,SPF_HELO_PASS,
	SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGkgQ0ssDQoNCk9uIFRodSwgMjAyMy0wOS0yOCBhdCAwMzowNSArMDAwMCwgQ0sgSHUgKOiDoeS/
iuWFiSkgd3JvdGU6DQo+IEhpLCBIc2lhby1jaGllbjoNCj4gDQo+IE9uIE1vbiwgMjAyMy0wOS0x
MSBhdCAxNTo0MiArMDgwMCwgSHNpYW8gQ2hpZW4gU3VuZyB3cm90ZToNCj4gPiBQYWRkaW5nIGlz
IGEgbmV3IGRpc3BsYXkgbW9kdWxlIG9uIE1UODE4OCwgaXQgcHJvdmlkZXMgYWJpbGl0eQ0KPiA+
IHRvIGFkZCBwaXhlbHMgdG8gd2lkdGggYW5kIGhlaWdodCBvZiBhIGxheWVyIHdpdGggc3BlY2lm
aWVkIGNvbG9ycy4NCj4gPiANCj4gPiBEdWUgdG8gaGFyZHdhcmUgZGVzaWduLCBNaXhlciBpbiBW
RE9TWVMxIHJlcXVpcmVzIHdpZHRoIG9mIGEgbGF5ZXINCj4gPiB0byBiZSAyLXBpeGVsLWFsaWdu
LCBvciA0LXBpeGVsLWFsaWduIHdoZW4gRVRIRFIgaXMgZW5hYmxlZCwNCj4gPiB3ZSBuZWVkIFBh
ZGRpbmcgdG8gZGVhbCB3aXRoIG9kZCB3aWR0aC4NCj4gPiANCj4gPiBQbGVhc2Ugbm90aWNlIHRo
YXQgZXZlbiBpZiB0aGUgUGFkZGluZyBpcyBpbiBieXBhc3MgbW9kZSwNCj4gPiBzZXR0aW5ncyBp
biByZWdpc3RlciBtdXN0IGJlIGNsZWFyZWQgdG8gMCwNCj4gPiBvciB1bmRlZmluZWQgYmVoYXZp
b3JzIGNvdWxkIGhhcHBlbi4NCj4gDQo+IFlvdSBqdXN0IHNldCBwYWRkaW5nIHRvIGJ5cGFzcyBt
b2RlIGFuZCBub3QgY2xlYXIgc2V0dGluZ3MgdG8gMC4gQW55DQo+IHRoaW5nIHdyb25nPw0KPiAN
Cg0KU2luY2UgdGhlIGRlYWZ1bHQgdmFsdWUgb2YgYWxsIHRoZSByZWdpc3RlcnMgaW4gUGFkZGlu
ZyBpcyB6ZXJvLCBhbmQNCndlIGFyZSBub3QgdXNpbmcgUGFkZGluZyBjdXJyZW50bHksIGl0J3Mg
ZmluZSBpZiB3ZSBqdXN0IHNldCBwYWRkaW5nIHRvDQpieXBhc3MgbW9kZSB3aXRvdXQgY2xlYXJp
bmcgb3RoZXIgcmVnaXN0ZXJzLg0KDQpUaGUgY29tbWVudCBpcyBqdXN0IGEgcmVtaW5kZXIgaW4g
Y2FzZSB3ZSBmb3JnZXQgaXQgaW4gdGhlIGZ1dHVyZS4NCg0KUmVnYXJkcywNCkhzaWFvIENoaWVu
IFN1bmcNCg==

