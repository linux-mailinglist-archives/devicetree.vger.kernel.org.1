Return-Path: <devicetree+bounces-31509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8F82BA0E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 04:41:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C3511F25AC3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 03:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F3C1A738;
	Fri, 12 Jan 2024 03:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="OINiaibr";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="mbdeP/XD"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D991A733;
	Fri, 12 Jan 2024 03:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 816e1788b0fc11eea2298b7352fd921d-20240112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=QeqvAGji8Xbs+xfb5sUMw/Wt/hHERMBjDTDNs9qq4eg=;
	b=OINiaibrmxbIypoALRzBOHot2SNFj38KxdvwXYRECiCee23f6655ChBXGrc4/BIdNpZo2tKevIzbcQaLzAACQljhtX9YcgM81R1RBsuVfZt3ilEEyU8M6cE+tLkltCFLDlVdtIciZjAhUFnP2ENLP3EHjK7jPImyO/liDC24C18=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:96e579af-5d9c-44e2-995c-8e1d06bbbb4c,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:13dbc382-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 816e1788b0fc11eea2298b7352fd921d-20240112
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1050444048; Fri, 12 Jan 2024 11:41:44 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 12 Jan 2024 11:41:43 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 12 Jan 2024 11:41:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlqlmNJuRZxPJJIsFBoRGoBJwrZ/rltKOOoPxbp0sp/KjExeSayZOxYrGVssxvAguLSnnMgiFtJwlIoeOz6pucgClXZwnuD9qeaCKAkLKwno8nETpM+xEdKJ6vTXh1MpmwP5JQdefbtQwu4OH2c0WAcR4YRN0T68rJ3HitBR8/aHF0UperMmpa+ZTWjAijWSNB92fDc2aCfJJLUYvYBm1hacKqX7Pda5TnEIj6m1gpCAiOKeJPox4cJrHmKZ4vVxf++UXs2tHRhPjhrVpKNuk04AF0ZuMvoo3tQaZLGa00VdJoLnyzd7N4Jggv2X1xurlfJ+fjN6OqVGjO1KgPkfdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QeqvAGji8Xbs+xfb5sUMw/Wt/hHERMBjDTDNs9qq4eg=;
 b=m+/AnCkePKp7m3rZaZYRl2nmWKKu0407q0bR7R3RNHbMT2BZGjHEkl55eXQioQcdQ/e2u60wWm0bDyYHs7JQtW5MAzF0mS6LoTpW5kx1xZ1SrLIHnKF+NnQRHfK8GdpLqxvWQvLsXULhuTOi0RX4mLLrM2wxfK4BHj72d/1aQIlPBiggdqmN3pJbv7Y3eA7Ojaep/nOimJxFg9dSJGpsi0ST7gmcDXjmkwT9jJN2FwdNJA+5VZQFT2Aq6bww2ShCLbSBUZL1o+SA8H9Wsn9WOxnyKQCG/xzvCaxxEw9wBpS1EIIehbGt2ov50o3Gmn3xL53NSKYkpDAAY5g3r7XtOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QeqvAGji8Xbs+xfb5sUMw/Wt/hHERMBjDTDNs9qq4eg=;
 b=mbdeP/XDgj+GJskfiDwsC5UaMNj3FcL6wZCogq0xKToq3bP/xdeeSVKFd2ZuttGanGrnk0zWqERR841eAw5bt8VpMezz23cGgydmS99vN1OI93AcAe5xqacjFYUY1P/RWagGWVbk8ImbPhKnE2ysp+kLxRca+lWOgZvMoBex9WM=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by SEZPR03MB6960.apcprd03.prod.outlook.com (2603:1096:101:9d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.21; Fri, 12 Jan
 2024 03:41:38 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60%5]) with mapi id 15.20.7181.015; Fri, 12 Jan 2024
 03:41:37 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "jkardatzke@google.com" <jkardatzke@google.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 07/11] drm/mediatek: Add secure layer config support
 for ovl
Thread-Topic: [PATCH v3 07/11] drm/mediatek: Add secure layer config support
 for ovl
Thread-Index: AQHaNc3/JznM6vCxlUiudiIR7oAm1rC7CUSAgAG0WQCAGOlDAA==
Date: Fri, 12 Jan 2024 03:41:37 +0000
Message-ID: <7553d7c046d32744536df524686e38898bb470cc.camel@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
	 <20231223182932.27683-8-jason-jh.lin@mediatek.com>
	 <eb8fa56d4dfa78f84d32fd7c9e271186d13f4ade.camel@mediatek.com>
	 <47c5d0e4e74fb0be651035227f0067e6b308b591.camel@mediatek.com>
In-Reply-To: <47c5d0e4e74fb0be651035227f0067e6b308b591.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|SEZPR03MB6960:EE_
x-ms-office365-filtering-correlation-id: 6e77eba9-d4ba-45b5-ded2-08dc132061a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cx8fTQl+FbJ6UTuWnhPgweSu6V/Om775NSylHhjdT3CucaWGOqx+rR+1fSNMysO2CyX386lbv0/V9JNNRWQ71K2pWlKfjMx/uXQ35ZVM1FWwtjTXbbPsADh/1K0vcuWFO9xNdItbPSr5+6OEWjNgquljv89bTwcUx7clKuRpTv3jwvokK3NqSY8mVlexQ0B0oOJNal1Llm/331hwmbnX8ZIMpoj12CqQ2jBPSqSh6kX0pBJCXDokZEzLfKYZjd3NoqrTmGL+y56gSfDTcy/CmsDJEj3lNy5RHT1OAh2Hr+qO5jLJIspHXk8RtvLyOZGbjGUCLiCyJ9we7/jVkokF3oGUG3snJr4kbFqI/j1Kt9y9nQDXcSr8pCrhY88VrTnGTY/SgbSGtgUDerfAXelpIw9sbBjMpuVD3PDXi0xtoirf79bxrNf+PXbDk3QNXQjhXOxQn0mKcAD9IrXhvvy7W0fbNOqovzLZem7vPOp5YYyluIhXAl9CddrOqEutvN0n5ZpFJZ2xChqp39e6B1Edt1KBkegnS/rluwVIJdPA361DfskHXnVTCm1NxE2tminGZlgLUJelGRR18jEKXiyjUbz7lTYcPHyCRG0/RK1gsByCxBlb+6+0ejf2byydwLNT
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(366004)(346002)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(83380400001)(26005)(5660300002)(6512007)(2616005)(122000001)(38100700002)(8676002)(4326008)(7416002)(4001150100001)(8936002)(2906002)(6506007)(6486002)(66556008)(71200400001)(54906003)(478600001)(110136005)(66946007)(64756008)(66446008)(66476007)(316002)(76116006)(41300700001)(91956017)(38070700009)(85182001)(36756003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VnRkTU5ZMGJLb3V1djJwcVJ0RHU0RnZNVFllcjlIcDRwT25QWmVrWW1YelBa?=
 =?utf-8?B?L1JLS1k3eVVpY25BekY2aVdHbUJXWXdUMFZaZzkvdi9WNE5hUXFheHVURWIr?=
 =?utf-8?B?VXZNVEJPbzNVRlViOXkxZUREWDVSVVJoVkZaOXA5eEJ6c3NkSU5hczBRcGlk?=
 =?utf-8?B?aDZ6VVdneE1LQXpBZ01kMTZLMTd4Wk5EbDdkWHNxckRXWjhGVWwzSHFqaDVI?=
 =?utf-8?B?RVBoWUlZdW1XbmhDcW43MThLTW9NRVI3aTV1aEpvRENOM1UrOVdxYmdrOVpE?=
 =?utf-8?B?UWJjc2t6RzA4cnVhR3NBYjJoOXE4ckdvRE9oMVdvT0x2VjA3K1hJLzFBNTZy?=
 =?utf-8?B?bjIrODJVdnZMaHorZmZvSXMyOFI4ZVI4UXpPNG1RS2QvazhWanVBNlhSSERM?=
 =?utf-8?B?OWVjaThFbGFYR3NsMVF0eFNvL2o4bXl1M3JGMTBBZlU4QkQ1R1U0dUt3OWJG?=
 =?utf-8?B?K0NaR3RjWkNWd25kL1FYWmVWWVR2RVpDWnF4NEJWdEI5NnMvNzJiVVpYQzU3?=
 =?utf-8?B?NXk5emk1MHI1ZjFzVTIvZTE4ZmFqNm1LMzBIdUsyczl3NzVMbWlDa3JuWTJ1?=
 =?utf-8?B?MEZBZTVMVmQxN1kwRE1OS2p6Zm83WnlyOCtDdkx6WE5KcVZqTE5SdWdmL1Jm?=
 =?utf-8?B?djVLQkdVQXorUFJYUG9HRWc0MkVlbGcyVlhVb25BUExxWTgydmJqYmRNVTFr?=
 =?utf-8?B?K1dyYmhyRktlMnBJNC9vZzc4MS93NzRjQVFTSnljTVVZbHlpMUcyWmlyRXNH?=
 =?utf-8?B?VjRlcW0rWklTaldBeXZ6OWVNeHRrZVR5MEo5NnFHK1ZYRndUT1pZN1hwSWdw?=
 =?utf-8?B?N1BoMUE2cGNWNE1UcUtudEh6dVhiUXMvbUdoVFdRaXN5M1ZuRXF0MHlZSXJ4?=
 =?utf-8?B?MnRaT1JFVnp0NUNmM1lFaXk1azhQR05aTTN2UjJsUUZ0OXBvZ1d3OHN1Zk1E?=
 =?utf-8?B?czIrN2hKVjJoQnhqMk9MelRjM1EybXpPbmZ0ZFBPZi9Pbjl1bFRXNEMzTWNr?=
 =?utf-8?B?aTVSV29jVEtGVzhXQnVlSlYrV21hNEJ4RXVTKzdSWWtjblZyZUR1S0hpZUJS?=
 =?utf-8?B?cDZzMC8yWHkrNTI4ZUZvVGYweW9uVC9lQlRSQkRwUWZtZHNIYzlzZm8wUkE3?=
 =?utf-8?B?M0M5akRkcW1Mc1pVd1lrMFVkWGNCY2cvSFdjREpoYXFvWU9hci8vV004Qk9s?=
 =?utf-8?B?UVp3bDkwUVdIeFlNdkZtZU1sMVBTaGdjNHk2U0VsaTl3ck9tOSs4UGJUUGYz?=
 =?utf-8?B?YjhpeTJxV09aeGprVCtpYjRpVVBPSFA3TEpWbE0wZXJiL1IzVTNvSXpVN2N2?=
 =?utf-8?B?ZmR5Z3FSb1M1YWZZL1RHZFR6QnpxUVo3b2hBSUdpUnlRVnlyUkoyTzMxaE9R?=
 =?utf-8?B?WEJFa2pNKzBZYVAzLzRYZWRocEpxTFRlZ1VjejBQcUlxOGwwcFNreWw5NnVs?=
 =?utf-8?B?MTYwZGJYYlVtRTFiTGZlQkhTdGc4M1BwMlpGYmpSNHp6V2NhanlRWm9vaXI3?=
 =?utf-8?B?cm5JUUxOVmc4VThtRm5DWU83aWVXS2RMR0duTXRIK3BIZDNVVGcxN3pmWG9Z?=
 =?utf-8?B?ckF4Y0cvWms4V3k5Rlcwa3Q4eVMyWXJyV1I1MTN6VTVha0Z0N0hlSi9OZjRx?=
 =?utf-8?B?djR0cUFaOEtmS25DK3c2OW5vQVlnUEEwdGRsQitFVStMb25UckhRYUhhb3Bz?=
 =?utf-8?B?dlh2UHlPN3ZXdHhLdkhVV2trc0FRV0FVRVkzOHFEODFCeGZLcmJIRXJkMm1r?=
 =?utf-8?B?alU4dVdNSzdsYWtYTmhhVTdoeW5idkVEREZFNm9Idm5NV0F5aG5TQUNKaDJR?=
 =?utf-8?B?cTNtdGdpbmMzVzd3Q2ZNME4yN1Jid3RCYVpxWktSSE9MeHA2S2JkaTRXSEZ2?=
 =?utf-8?B?bEZFdGhFeTNpYThiUEt2QzVickdGWXlUMk1oTllVKzc1WVJudnhHVHlQZjdu?=
 =?utf-8?B?OEVhWnJaMFlNSjdnaisyYW8zMTl1OFkxdVdpU1ZXNTJrdjN6SFkreWRkdGt3?=
 =?utf-8?B?VXg5N2I1c2NyOHdIMzZZNkUyLzNyRWFtNzVsWnFCSnJRczN4bExKT0xoNFpl?=
 =?utf-8?B?MS9sNUdBMHhlSytzNmIwSVBJdm9JZCttaWJhclVUWGhRV3d3d1ZpVGRJOHBs?=
 =?utf-8?B?Qnl6TzcxUCs3MHlPSXQvSFowY2I4cXhhWjRhaGcrWFhucTRJQ0VIRS9QMnA0?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8027D0647BBA0E4D9794A5E29CF00067@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e77eba9-d4ba-45b5-ded2-08dc132061a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 03:41:37.7691
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ftlmRWzSxRMWBqfA2zWVv8a+YnvDnTVxfT9+ICR/xGqxFZNKpEJSgTR7T2Z/mS7zWt3SV1lcuz5hdwupRtVwXx9U9FrBEfXI04NZclYxghc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6960

T24gV2VkLCAyMDIzLTEyLTI3IGF0IDE1OjE2ICswODAwLCBKYXNvbi1KSC5MaW4gd3JvdGU6DQo+
IEhpIENLLA0KPiANCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KPiANCj4gT24gVHVlLCAyMDIz
LTEyLTI2IGF0IDA1OjE0ICswMDAwLCBDSyBIdSAo6IOh5L+K5YWJKSB3cm90ZToNCj4gPiBIaSwg
SmFzb246DQo+ID4gDQo+ID4gT24gU3VuLCAyMDIzLTEyLTI0IGF0IDAyOjI5ICswODAwLCBKYXNv
bi1KSC5MaW4gd3JvdGU6DQo+ID4gPiBBZGQgc2VjdXJlIGxheWVyIGNvbmZpZyBzdXBwb3J0IGZv
ciBvdmwuDQo+ID4gPiANCj4gPiA+IFRPRE86DQo+ID4gPiAxLiBNb3ZlIERJU1BfUkVHX09WTF9T
RUNVUkUgc2V0dGluZyB0byBzZWN1cmUgd29ybGQuDQo+ID4gPiAyLiBDaGFuZ2UgdGhlIHBhcmFt
ZXRlciByZWdpc3RlciBhZGRyZXNzIGluIG10a19kZHBfc2VjX3dyaXRlKCkNCj4gPiA+ICAgIGZy
b20gInUzMiBhZGRyIiB0byAic3RydWN0IGNtZHFfY2xpZW50X3JlZyAqY21kcV9yZWciLg0KPiA+
ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbi1KSC5MaW4gPGphc29uLWpoLmxpbkBtZWRp
YXRlay5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2Rpc3BfZHJ2LmggICAgIHwgIDIgKysNCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2Rpc3Bfb3ZsLmMgICAgIHwgMzENCj4gPiA+ICsrKysrKysrKysrKysrKysrKystLQ0KPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMgfCAyOQ0KPiA+
ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9kcnYuaA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2Rpc3BfZHJ2LmgNCj4gPiA+IGluZGV4IDEzMTE1NjJkMjVjYy4uNzcw
NTRhZGNkOWNmIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kaXNwX2Rydi5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rp
c3BfZHJ2LmgNCj4gPiA+IEBAIC05LDYgKzksNyBAQA0KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9z
b2MvbWVkaWF0ZWsvbXRrLWNtZHEuaD4NCj4gPiA+ICAjaW5jbHVkZSA8bGludXgvc29jL21lZGlh
dGVrL210ay1tbXN5cy5oPg0KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9zb2MvbWVkaWF0ZWsvbXRr
LW11dGV4Lmg+DQo+ID4gPiArI2luY2x1ZGUgIm10a19kcm1fZGRwX2NvbXAuaCINCj4gPiA+ICAj
aW5jbHVkZSAibXRrX2RybV9wbGFuZS5oIg0KPiA+ID4gICNpbmNsdWRlICJtdGtfbWRwX3JkbWEu
aCINCj4gPiA+ICANCj4gPiA+IEBAIC04Miw2ICs4Myw3IEBAIHZvaWQgbXRrX292bF9jbGtfZGlz
YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYpOw0KPiA+ID4gIHZvaWQgbXRrX292bF9jb25maWcoc3Ry
dWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgdywNCj4gPiA+ICAJCSAgICB1bnNpZ25lZCBp
bnQgaCwgdW5zaWduZWQgaW50IHZyZWZyZXNoLA0KPiA+ID4gIAkJICAgIHVuc2lnbmVkIGludCBi
cGMsIHN0cnVjdCBjbWRxX3BrdCAqY21kcV9wa3QpOw0KPiA+ID4gK3U2NCBtdGtfb3ZsX2dldF9z
ZWNfcG9ydChzdHJ1Y3QgbXRrX2RkcF9jb21wICpjb21wLCB1bnNpZ25lZCBpbnQNCj4gPiA+IGlk
eCk7DQo+ID4gPiAgaW50IG10a19vdmxfbGF5ZXJfY2hlY2soc3RydWN0IGRldmljZSAqZGV2LCB1
bnNpZ25lZCBpbnQgaWR4LA0KPiA+ID4gIAkJCXN0cnVjdCBtdGtfcGxhbmVfc3RhdGUgKm10a19z
dGF0ZSk7DQo+ID4gPiAgdm9pZCBtdGtfb3ZsX2xheWVyX2NvbmZpZyhzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHVuc2lnbmVkIGludCBpZHgsDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kaXNwX292bC5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZGlzcF9vdmwuYw0KPiA+ID4gaW5kZXggMmJmZmU0MjQ1NDY2Li5jMThmNzY0MTJhMmUg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3Bfb3Zs
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9vdmwuYw0K
PiA+ID4gQEAgLTQ2LDYgKzQ2LDcgQEANCj4gPiA+ICAjZGVmaW5lIERJU1BfUkVHX09WTF9BRERS
KG92bCwgbikJCSgob3ZsKS0+ZGF0YS0NCj4gPiA+ID5hZGRyICsNCj4gPiA+IDB4MjAgKiAobikp
DQo+ID4gPiAgI2RlZmluZSBESVNQX1JFR19PVkxfSERSX0FERFIob3ZsLCBuKQkJKChvdmwpLT5k
YXRhLQ0KPiA+ID4gPiBhZGRyICsgMHgyMCAqIChuKSArIDB4MDQpDQo+ID4gPiANCj4gPiA+ICAj
ZGVmaW5lIERJU1BfUkVHX09WTF9IRFJfUElUQ0gob3ZsLCBuKQkJKChvdmwpLT5kYXRhLQ0KPiA+
ID4gPiBhZGRyICsgMHgyMCAqIChuKSArIDB4MDgpDQo+ID4gPiANCj4gPiA+ICsjZGVmaW5lIERJ
U1BfUkVHX09WTF9TRUNVUkUJCQkweDBmYzANCj4gPiA+ICANCj4gPiA+ICAjZGVmaW5lIEdNQ19U
SFJFU0hPTERfQklUUwkxNg0KPiA+ID4gICNkZWZpbmUgR01DX1RIUkVTSE9MRF9ISUdICSgoMSA8
PCBHTUNfVEhSRVNIT0xEX0JJVFMpIC8gNCkNCj4gPiA+IEBAIC0xMjYsOCArMTI3LDE5IEBAIHN0
cnVjdCBtdGtfZGlzcF9vdmwgew0KPiA+ID4gIAljb25zdCBzdHJ1Y3QgbXRrX2Rpc3Bfb3ZsX2Rh
dGEJKmRhdGE7DQo+ID4gPiAgCXZvaWQJCQkJKCp2YmxhbmtfY2IpKHZvaWQgKmRhdGEpOw0KPiA+
ID4gIAl2b2lkCQkJCSp2YmxhbmtfY2JfZGF0YTsNCj4gPiA+ICsJcmVzb3VyY2Vfc2l6ZV90CQkJ
cmVnc19wYTsNCj4gPiA+ICB9Ow0KPiA+ID4gIA0KPiA+ID4gK3U2NCBtdGtfb3ZsX2dldF9zZWNf
cG9ydChzdHJ1Y3QgbXRrX2RkcF9jb21wICpjb21wLCB1bnNpZ25lZCBpbnQNCj4gPiA+IGlkeCkN
Cj4gPiA+ICt7DQo+ID4gPiArCWlmIChjb21wLT5pZCA9PSBERFBfQ09NUE9ORU5UX09WTDApDQo+
ID4gPiArCQlyZXR1cm4gQklUX1VMTChDTURRX1NFQ19ESVNQX09WTDApOw0KPiA+ID4gKwllbHNl
IGlmIChjb21wLT5pZCA9PSBERFBfQ09NUE9ORU5UX09WTDEpDQo+ID4gPiArCQlyZXR1cm4gQklU
X1VMTChDTURRX1NFQ19ESVNQX09WTDEpOw0KPiA+ID4gKw0KPiA+ID4gKwlyZXR1cm4gMDsNCj4g
PiA+ICt9DQo+ID4gPiArDQo+ID4gPiAgc3RhdGljIGlycXJldHVybl90IG10a19kaXNwX292bF9p
cnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkDQo+ID4gPiAqZGV2X2lkKQ0KPiA+ID4gIHsNCj4gPiA+
ICAJc3RydWN0IG10a19kaXNwX292bCAqcHJpdiA9IGRldl9pZDsNCj4gPiA+IEBAIC00NDksOCAr
NDYxLDIyIEBAIHZvaWQgbXRrX292bF9sYXllcl9jb25maWcoc3RydWN0IGRldmljZQ0KPiA+ID4g
KmRldiwNCj4gPiA+IHVuc2lnbmVkIGludCBpZHgsDQo+ID4gPiAgCQkJICAgICAgRElTUF9SRUdf
T1ZMX1NSQ19TSVpFKGlkeCkpOw0KPiA+ID4gIAltdGtfZGRwX3dyaXRlX3JlbGF4ZWQoY21kcV9w
a3QsIG9mZnNldCwgJm92bC0+Y21kcV9yZWcsIG92bC0NCj4gPiA+ID4gcmVncywNCj4gPiA+IA0K
PiA+ID4gIAkJCSAgICAgIERJU1BfUkVHX09WTF9PRkZTRVQoaWR4KSk7DQo+ID4gPiAtCW10a19k
ZHBfd3JpdGVfcmVsYXhlZChjbWRxX3BrdCwgYWRkciwgJm92bC0+Y21kcV9yZWcsIG92bC0NCj4g
PiA+ID4gcmVncywNCj4gPiA+IA0KPiA+ID4gLQkJCSAgICAgIERJU1BfUkVHX09WTF9BRERSKG92
bCwgaWR4KSk7DQo+ID4gPiArDQo+ID4gPiArCWlmIChzdGF0ZS0+cGVuZGluZy5pc19zZWN1cmUp
IHsNCj4gPiA+ICsJCWNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKmZtdF9pbmZvID0NCj4g
PiA+IGRybV9mb3JtYXRfaW5mbyhmbXQpOw0KPiA+ID4gKwkJdW5zaWduZWQgaW50IGJ1Zl9zaXpl
ID0gKHBlbmRpbmctPmhlaWdodCAtIDEpICoNCj4gPiA+IHBlbmRpbmctPnBpdGNoICsNCj4gPiA+
ICsJCQkJCXBlbmRpbmctPndpZHRoICogZm10X2luZm8tDQo+ID4gPiA+IGNwcFswXTsNCj4gPiA+
IA0KPiA+ID4gKw0KPiA+ID4gKwkJbXRrX2RkcF93cml0ZV9tYXNrKGNtZHFfcGt0LCBCSVQoaWR4
KSwgJm92bC0+Y21kcV9yZWcsDQo+ID4gPiBvdmwtPnJlZ3MsDQo+ID4gPiArCQkJCSAgIERJU1Bf
UkVHX09WTF9TRUNVUkUsIEJJVChpZHgpKTsNCj4gPiA+ICsJCW10a19kZHBfc2VjX3dyaXRlKGNt
ZHFfcGt0LCBvdmwtPnJlZ3NfcGEgKw0KPiA+ID4gRElTUF9SRUdfT1ZMX0FERFIob3ZsLCBpZHgp
LA0KPiA+ID4gKwkJCQkgIHBlbmRpbmctPmFkZHIsIENNRFFfSVdDX0hfMl9NVkEsIDAsDQo+ID4g
PiBidWZfc2l6ZSwgMCk7DQo+ID4gDQo+ID4gTWFwcGluZyBpb3ZhIHNob3VsZCBiZSBkb25lIHdo
ZW4gYnVmZmVyIGFsbG9jYXRpb24gb3Igc29tZSBvdGhlcg0KPiA+IG1hcHBpbmcgZnVuY3Rpb24s
IGluc3RlYWQgb2YgZXZlcnkgT1ZMIGZyYW1lIGNvbmZpZ3VyYXRpb24uIFNvIHRoZQ0KPiA+IHNp
emUNCj4gPiBzaG91bGQgbm90IGJlIHNldCBoZXJlLg0KPiA+IA0KPiA+IFJlZ2FyZHMsDQo+ID4g
Q0sNCj4gPiANCj4gDQo+IFNpbmNlIHdlIGNhbiBvbmx5IGdldCB0aGUgc2VjdXJlIGhhbmRsZSB3
aGVuIHRoZSBwbGFuZSB1cGRhdGVzLCB0aGUNCj4gYnVmZmVyIGhhdmUgdG8gYmUgbWFwcGVkIGhl
cmUgZXZlcnkgdGltZS4NCj4gU28gSSdsbCBhc2sgSU9NTVUgb3duZXIgdG8gbW92ZSB0aGlzIG1h
cHBpbmcgcHJvY2VzcyBpbnRvIGFsbG9jYXRpb24NCj4gc3RlcCwgdGhlbiB3ZSBjYW4gcmVtb3Zl
IHRoZSBzaXplIGhlcmUuDQo+IA0KDQpBZnRlciBkaXNjdXNzIHdpdGggSU9NTVUgb3duZXIsIHdl
IGNhbiByZW1vdmUgdGhlIHNpemUgcGFyYW1ldGVyLg0KSSdsbCByZW1vdmUgaXQgaW4gdGhlIG5l
eHQgdmVyc2lvbi4NCg0KUmVnYXJkcywNCkphc29uLUpILkxpbg0KDQo+IFJlZ2FyZHMsDQo+IEph
c29uLUpILkxpbg0K

