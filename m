Return-Path: <devicetree+bounces-2938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E187ACF4F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E707D1C20444
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFDC6AA9;
	Mon, 25 Sep 2023 05:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4850D63CB
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:05:52 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A63A0B3;
	Sun, 24 Sep 2023 22:05:42 -0700 (PDT)
X-UUID: 2a54645c5b6111eea33bb35ae8d461a2-20230925
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=BTNEIA7Jy3IMZAY24CLG2MnM7uup+7x39JHWZPYbcv0=;
	b=OVMy3aH12f5JtZ4s6JYIL+TkWHns5EpplEzNaURwGiaeh/kv6z5mvwyQFI2kdholIZEFyJ0Ce/W6dZU/8VfYwE4dAdLlZz8s6RsgF67+H0YDx8srhmEx7qrzn2ZH036xG9oKOCW8phyL6gDyoXg63wHs2ZjezDGlj51O/NXN3SU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:92ee16a2-19ff-458f-872d-8c09549e2a42,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:ee0f5514-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 2a54645c5b6111eea33bb35ae8d461a2-20230925
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 684041646; Mon, 25 Sep 2023 13:05:37 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 25 Sep 2023 13:05:35 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 25 Sep 2023 13:05:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/fqornIlhnXeIso/jlrwl1MFcFJLEcPWvzDlW+p0fEXTAplEk4uoR53aJnLHc1/bnOtUkXz4OXoLaQvXQG0DN2rJafvbvOBlfydOze23BoN1DWiKQOAQ8xXR30rWopvlnk8VC86daYrFfmgwcWmci0J94R2wtsvYQH+0tl3vrbfvUECUZT5GbqElDk4P+jD8BsnxCZ62Se4RUhZ3qUA/2cAX+Z9qCT5FWF/0Xh3yFT5thUX1UWEmqU9B0OVkTkQhmmVDiCOusT/MQCXeUGo9QCkOgidk/J8JClBvUaG3GhuyPC2mSEwxkIwaXbbESH/oIspuXz9vGcp8wk7ydxnGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTNEIA7Jy3IMZAY24CLG2MnM7uup+7x39JHWZPYbcv0=;
 b=VbaQRCQDu4qOt9x30i8rTpcH0m1Iw1ftbo8RY+9IoZm8qQCJzSmVOT4PY+SHGnTEiCHTSlFyjmHuaexyurMVkSCiOxfMQeU6v3SVtWNKv5NtaSFZ/qLP0PAXNrPCNgUey4WUIcga5wEmoNI5UzvLICaINwmnPVUkxeOwWi98k+4SuwtiZfM04onTbIXZb5PaYoMic/rSbxodBrCQkBVI4V0NEgpcu8Cg0n7C6vSEeR6upZmecwa1eshCnqtZcNvxfekwUUSpIHPyiWDX6jy3Ree5kNQBqPM2+KVwnlMRU62j1Wv87bmyMdKvKm/V32zC/eqe7rEm8+grNRpJb4w6Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BTNEIA7Jy3IMZAY24CLG2MnM7uup+7x39JHWZPYbcv0=;
 b=pJ9k0AciODhmCPMVVbjop7n9lFzSNSgBmbJDoFjeNKbmBZ30J9gJA06rQQTTWB0Xngtm8XwdPsUxSrLTgz4e5yxeksHFiw1VAZigwtf4j4TYSbrP2rXgVKAQ+Q7tC3YmHetonz8UDUO7VV2NBGOycUME4gpM6Wjgbp7zMuvbdRw=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by SEZPR03MB7680.apcprd03.prod.outlook.com (2603:1096:101:127::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.25; Mon, 25 Sep
 2023 05:05:33 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::1b82:a45d:e171:62e8]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::1b82:a45d:e171:62e8%4]) with mapi id 15.20.6813.027; Mon, 25 Sep 2023
 05:05:33 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	=?utf-8?B?RWx2aXMgV2FuZyAo546L5YabKQ==?= <Elvis.Wang@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: Re: [PATCH 02/15] dt-bindings: gce: mt8195: Add
 CMDQ_SYNC_TOKEN_SECURE_THR_EOF event id
Thread-Topic: [PATCH 02/15] dt-bindings: gce: mt8195: Add
 CMDQ_SYNC_TOKEN_SECURE_THR_EOF event id
Thread-Index: AQHZ6mVuaEaAeOxsw0iaYveBj8ZT1bAouz6AgAJLx4A=
Date: Mon, 25 Sep 2023 05:05:33 +0000
Message-ID: <1f324b04cbd8faa7510a3519eb718c0be25af2be.camel@mediatek.com>
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
	 <20230918192204.32263-3-jason-jh.lin@mediatek.com>
	 <20372e40-e4fc-467a-d91a-fcf8e26728bc@linaro.org>
In-Reply-To: <20372e40-e4fc-467a-d91a-fcf8e26728bc@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|SEZPR03MB7680:EE_
x-ms-office365-filtering-correlation-id: 25595b14-f611-4536-def7-08dbbd850c09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VY+L3fUxdFouStsvuR9p1hvQrO+0B6r7tNs0WcLq9NULwsZAfCUaBFMJk+7/8myCE3hCY6KGTo5KmmHUHYav4Nr1/YNqASRRjLO2Lid1o8yGrjyDMEUhMGCGOkSDdbVObbmc9KGy/2SIXVO3UeulqQQ2ARbYdugpJReFPNgIzo48nuXpwPfTFMyWlpLa8Zk51Hta4ywbqXiYq3jIgfWszEZGSfGx0PpObh8AJlkd8uDiELxCHxhQ73SUS3/CKVDD5a+ZvAXg/JfotxqYLyIbHr9OQJ1yWNt6/vp19CE0GHqhiYlhjyeVLVfTWPgd7+tp68cxeq35FXHz2YihXE6vOYo6F2MDUeSbNVXNQR6BrlPB9Y/S3jao7inoK95ElEpBF7pkSX0o8sBtIl6ADaPNx9EpiWJ3vWUiJVPiHBNA7opZF1wqexMAIGaPx3Jgs78wxqNKQmvMmUtUUoXYv2wjYSvM25/qiRfvgqXXZmcXgzEqeo9IiK+TIlAzWPIbDEoYzWb3Z2cKTq18Lkk7FuBtcpclBk8wBgcvcSJ0TZJXdB19Vf93ZKTBrL0dPX0sbX0iuHx8RKUVXvdKRajf5oCqOp8xMC3Kwbcsta/TJLHmQ/NmHIv1AFYAuhTymyVcVS+5DzD8OX6sVpA6zLTs9tfMjetusUJNrQfpD0+doVK74c4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(39860400002)(366004)(396003)(230922051799003)(1800799009)(186009)(451199024)(53546011)(6506007)(6512007)(6486002)(107886003)(71200400001)(26005)(66476007)(66446008)(66556008)(86362001)(76116006)(66946007)(91956017)(110136005)(478600001)(2616005)(38070700005)(38100700002)(122000001)(64756008)(7416002)(83380400001)(54906003)(2906002)(8936002)(8676002)(36756003)(4326008)(85182001)(316002)(5660300002)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2lRZm15WWNKb2U5MXJlKzZLV0k0WEQ0TE1BTnRsWUpIUWlYY0lSd3kxMTVZ?=
 =?utf-8?B?ZjJMSkdkWlRMKzJ4Z1psUnpBU0UvNk83ejk5dXlmUTZKMVBlS01JaSt6b1VY?=
 =?utf-8?B?UldJVnBjcTFIMnQrRHk3eUJOZkcyTjl1ODJmdG5kTHRwakk2b0VqUTRCWVdK?=
 =?utf-8?B?WGhTdkc4THZpbldBeXAyVEJZTkVDUlhEeERNeUJrYlFKRjlqQ1ZVQWNqWnRD?=
 =?utf-8?B?RjM2V0RJVUtROUU4U203aTRLeFhkbDVPOU02dHlsUXdmclkyUnp6WENTYys0?=
 =?utf-8?B?SGwraVQ1UUdHMzgwZUJuNlo2WkcrV2MxSGtDUXZCNjQ2TkhveGZuYVBHbU1G?=
 =?utf-8?B?N0hVL1hqelh2alBqMFdpMVdaS0FXL0h5SWxzRDQxREowR2NYcDVNbFdyc0xY?=
 =?utf-8?B?QzdsY0p0dDdNc2hkdGMzQzRXdmlQUDZLcW4rMjhGaFdCMkY5Y3pnK1ZWMURT?=
 =?utf-8?B?OFNkamtId2RuQWVYRDZuWm9VOVhDZkJQWXh1NEJlTzhwTi9NekFGZ05jYW5Y?=
 =?utf-8?B?SGhkbjJ6aGN2VCtIcTRCbFQrOE9SSzE5c1VYV3p6eFc1NTRqYXdhQ2J4YWdJ?=
 =?utf-8?B?c2NmSXhNVU5RdmFjUzAvTm1HMWxQdjFzaFJmVDhwQUFFclpmZlZVdkd0aVJ4?=
 =?utf-8?B?U1IwMW8wR0cxY0h1UUw2VlN1Q3ZtWUtvUWsyZm5wRXRQQUM2ZzhjdW9YRFlj?=
 =?utf-8?B?Ri92QzNsazliK2tsTENGQnFZU3NQenA2U1FKc0tJMGpDMzNSeER5K2RQMGZF?=
 =?utf-8?B?ZkxBa1dpQzk1L2hpM2VBaHpXVWlrTGFNTVVtdTlqOG1WR0d4SE45djVwZWVj?=
 =?utf-8?B?Y3FEL1lUVldTSkZ6Q2Q5bUNMY3JnVXRGNFVHaVovcXNEQ2FuYWhHc1MwOW9y?=
 =?utf-8?B?V3Vja1YxSjNNcENCNkFVd2RNVE4ydEFXaFZyMkR5UHoxMDYvMTRIUDJKWUox?=
 =?utf-8?B?akdBN29nR1h4anNkZm1yUktFajhQY2J2cUQzTHdWd0V2OWlldlZwQml1NEVz?=
 =?utf-8?B?Y2N3bU9lNDJPVjFYcVZKK0w4WWFTS2dxQ2VWbE9zYVRxc1FkSlFoMnJmV2xB?=
 =?utf-8?B?OWR2bG8wUkJXRVBuNENHTjdtVURIYjlhcDUzeHIxeGdJTHFzcFI0RktDdk1M?=
 =?utf-8?B?OEpmSTJqR3FDWmNFdWZ4T255QXh2TmMvSUlGeDFRMndvTldmSmx5YnBza3Fi?=
 =?utf-8?B?TGFyVzBiMjlXTEFPSUhuc0ZORXVBVlZUcE9iUVRHZUdtaVNCa2xocEJZc2wx?=
 =?utf-8?B?bGVhU0FuKy9zbjYzS24xTHlMQ3FRL2dFZ1ZBdWgvUEdVKzd2aHEvRmNSR3A1?=
 =?utf-8?B?RStsRzFsT0l0VWl2SXVHcm5LMURxVkJtTEZ6eE93dnB2UXJWdnE2S1VEUWlI?=
 =?utf-8?B?TnBrNzNxdG9IQ2xrVmdBNTNsUnUxcE5NUGpzeTJCNkc1VW9iQmQ3dDJpS1Uw?=
 =?utf-8?B?c2E5ejgrZVJzMGhkN2dsVFAwWXRTVXA3dTg1NjdRa1RJWUFQeXA5U2YvQ3A0?=
 =?utf-8?B?U0Y2NGpCVVMwcHZETDZzc2VRUW4xZU1naTdQRlFGUGptYXJNN3c0YjhPcEhZ?=
 =?utf-8?B?MDRMMHVjUHY3dmVoOXhxNm9VUnB2WHk3ZzdLNzJ6Q1JLVFhzcFA0S25SQm5m?=
 =?utf-8?B?OHZGNHZaZzlKRGIvN1VnRzQrZnE4VUMxOTF3d3BvL3Rlb3c3aEJtM2tJaHRa?=
 =?utf-8?B?aUZJakZpNk5ad0cvMlM3V25jcDNrQ2UxUElkRkZZSkFpT1BjVkphTDJmc3Js?=
 =?utf-8?B?c0pERE5lSnlzQ3hUcENrYzkwZmhnVmdOMnhHeHc4R3pjd3llbUpVQXpsZGFO?=
 =?utf-8?B?Z2tCdzRhbHE5dHlWZmZ0SVdrcklGVHpzZzRWdEVFRFh0QkhwMTNWZ2tjb2lN?=
 =?utf-8?B?RHdFREtKeWZZQi9PcFBncG9YRW9nMldGZjZjejM2eHIzemY1SkRVTU1MdFVX?=
 =?utf-8?B?VUZ1QVp1clZacDNLR3RwcGV2YlN2RnBna3prMlduQUoyRFJnWTdtd1FQcjh4?=
 =?utf-8?B?SHJnN3Z3K2g4cVp4ZjNOL2VSL2kvRHlKS1Z2VDQwNG5NVUNWQU5BenlnMS9u?=
 =?utf-8?B?WDM5NElGdE0rSDZWWjJnWkJ5MDNLaVN0M05YdW1oT1BxNXNRc3BGUTE0cm5N?=
 =?utf-8?B?elp1YzErQU9JQzRXMDFaWElMNHdiUk8wQkpYT0syVE9mbXNEQ0M1ZXh2eERP?=
 =?utf-8?B?aEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D9AFCB2360125247A499403AC5F14B6B@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25595b14-f611-4536-def7-08dbbd850c09
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 05:05:33.3096
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHJMsWcehFQNrGRSPnz6TxpfsgiwoNGz9L1cz4z3DLPnjv6UTYjllICf2fjBa6t26Hz1QHoXmpXyYx2HtzM66YH8BLC3UA0wLWxXtFlYkAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7680
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--17.155900-8.000000
X-TMASE-MatchedRID: oTBA/+sdKaanykMun0J1wmjZ8q/Oc1nAjLOy13Cgb4/n0eNPmPPe5KWz
	WoIRiV9DM/Se/q/gEyf5MiS7M8c1eGmXMi7Ntyo2mlaAItiONP2IrmqDVyayv/dsGrGaOKdNEr6
	t29tey/W0DbWogdy8F1WwxjTCJfTDZ3nABccg22/iNGQgiadfQwRryDXHx6oXmKInQ61iaANxty
	A5JI+wF4rtCBXG4BIYa5l5V5v91JMRkbqgJpDN9o9URkDgdlb5fS0Ip2eEHnylPA9G9KhcvZkw8
	KdMzN86KrauXd3MZDUD/dHyT/Xh7Q==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--17.155900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	06B55CD961056818535E2F1F23ECA135F8C1CDA1E37298AB7E5A84B4B16F7A7C2000:8
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,T_SPF_TEMPERROR,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGkgS3J6eXN6dG9mLA0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXdzLg0KDQpPbiBTYXQsIDIwMjMt
MDktMjMgYXQgMjA6MDEgKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+ICAJIA0K
PiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRh
Y2htZW50cyB1bnRpbA0KPiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBjb250
ZW50Lg0KPiAgT24gMTgvMDkvMjAyMyAyMToyMSwgSmFzb24tSkguTGluIHdyb3RlOg0KPiA+IENN
RFFfU1lOQ19UT0tFTl9TRUNVUkVfVEhSX0VPRiBpcyB1c2VkIGFzIHNlY3VyZSBpcnEgdG8gbm90
aWZ5IENNRFENCj4gPiBkcml2ZXIgaW4gdGhlIG5vcm1hbCB3b3JsZCB0aGF0IEdDRSBzZWN1cmUg
dGhyZWFkIGhhcyBjb21wbGV0ZWQgYQ0KPiB0YXNrDQo+ID4gaW4gdGhlZSBzZWN1cmUgd29ybGQu
DQo+IA0KPiBIb3cgY2FuICNkZWZpbmUgYmUgYWRkZWQgYWZ0ZXIgaXRzIHVzYWdlPyBEb2VzIGl0
IGV2ZW4gbWFrZSBhbnkgc2Vuc2UNCj4gb2YNCj4gYmVpbmcgc2VwYXJhdGUgcGF0Y2g/DQo+IA0K
DQpUaGlzIGRlZmluaXRpb24gaXMgdXNlZCBpbiB0aGUgbXQ4MTk1LmR0cyBhdCBbUEFUQ0ggMTUv
MTVdIGFuZCB0aGUgQ01EUQ0KZHJpdmVyIGF0IFtQQVRDSCA5LzE1XSB3aWxsIHBhcnNlIGl0IGZy
b20gZHRzLCB0aGVuIHVzaW5nIGl0IGFzIHNlY3VyZQ0KaXJxIGF0IFtQQVRDSCAxMC8xNV0uDQoN
CkRvIHlvdSBtZWFuIEkgc2hvdWxkIG1lcmdlIHRoaXMgcGF0Y2ggaW50byB0aGUgW1BBVENIIDkv
MTVdPw0KDQoNCj4gRG8geW91IGZvbGtzIGluIE1lZGlhdGVrIGhhdmUgYW55IGludGVybmFsIHJl
dmlldyBiZWZvcmUgcG9zdGluZz8NCg0KV2UnbGwgdXNlIGEgcm9ib3QgdG8gc2NhbiB0aGUgd2hv
bGUgc2VyaWVzIGZvciB0aGUgRFRfQ0hFQ0ssDQpjaGVja3BhdGNoLCBidWlsZCB3YXJuaW5nIGFu
ZCBidWlsZCBlcnJvciwgZXRjLCBiZWZvcmUgc2VuZGluZw0KcGF0Y2hlcy4gDQoNCkknbSBzb3Jy
eSBhYm91dCBib3RoZXJpbmcgeW91IHRvIHRha2UgdGltZSBvbiByZXZpZXdpbmcgdGhlc2UgcGF0
Y2hlcy4NCg0KQnV0IGl0IHNlZW1zIHRoZSByb2JvdCBjYW4ndCBzY2FuIG91dCB3aGljaCBwYXRj
aGVzIHNob3VsZCBiZSBzZXBhcmF0ZWQNCm9yIG1lcmdlZCB0b2dldGhlci4gSXQgdGhlcmUgYW55
IHJ1bGVzIG9yIHNjcmlwdHMgdGhhdCBjYW4gdHJhaW4gdGhlDQpyb2JvdCB0byBrbm93IGhvdyBp
dCBnb2VzPw0KDQpSZWdhcmRzLA0KSmFzb24tSkguTGluDQoNCj4gDQo+IEJlc3QgcmVnYXJkcywN
Cj4gS3J6eXN6dG9mDQo+IA0KPiANCg==

