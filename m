Return-Path: <devicetree+bounces-9425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E807CD030
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 01:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DE19281375
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54362E407;
	Tue, 17 Oct 2023 23:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="ISreJdvq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2892F50D
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:03:35 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2137.outbound.protection.outlook.com [40.107.114.137])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F221A4
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eqx0pjmc/GTCZOfWPH2wGRi7VfJ8OODr2LIT/1XRWUyjHciCPHh85n/bKeALptkY0I3WQoSvpZHgkFnkrDCG9lH6GmRr53P2uBVjZYzLqoauSNMCFMMfa9CLMXdaRQnv+c6emOC5MFrBNkoWeM33kbeNXLgDyPP5S3DbHwM2PKm8hk/J1eR0kXx09LB7fm3WzgFYwDqx4JiTgkPhsZXEk0vJ5BDVHLHNopXScPkHGyEq0yQe0hGzEJ8emp1T6TAHpFhHIco8zRWgMmfovvtbxHN1UG2lH8qPeqdJBPhMzZIFnZneNjfl3SEc5YSzCCszVfJKbw7HvAodqUhVYd5bGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fE8W4ZhsLtJb4/tLg1EH3YzP9MJVDMrWDJp6n33d7HY=;
 b=DGWhsOefv/a+lZcGh0gdJqLoj04PHSCFPecUt5mEle5J+9ygVe9Br2Tj5d+HI9jSy4krLw5Ev3796KIV3ZVhI3WBN1vP9Dlnb782mlO+/LDo3nJUUwk5gvTv9Yrw6NNf9KtV3tA90OLRA/RKg2LsNfPNWioFwNm14Wiwq66NTsvQ4fV1cFI4dMAznchm1qIDxweUKew/rWS1kadnkvuF20psVYKhsCQ7eu4zV4z38tVnItfrafnUwq155lL+yJrvGa0euMgub8vxW2ObgFM3TjvQu+67wELOcqRJ7mCyoRKsLulUQ352tfMIV+FRNyWfDW1FSp2uXDeoIxBlu60cnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fE8W4ZhsLtJb4/tLg1EH3YzP9MJVDMrWDJp6n33d7HY=;
 b=ISreJdvqhp2luxxP6p2pqDm8dL6S053yKvgKhcfTAtIJSMznO3f22EGX1NPf1GZYrbvrRmDOx9UqHuFI7rCnto6iMYc0GsTPsERjmhWcARIIJz3f8aFv7a8+uKrR4/ysw/hZYAm6IQwE2lGp2kYlEorzcP/2Ss1XfoFGYndxmIg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB8440.jpnprd01.prod.outlook.com (2603:1096:400:15d::5)
 by TYCPR01MB8883.jpnprd01.prod.outlook.com (2603:1096:400:189::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Tue, 17 Oct
 2023 23:03:29 +0000
Received: from TYCPR01MB8440.jpnprd01.prod.outlook.com
 ([fe80::57c3:5ce0:db60:1b78]) by TYCPR01MB8440.jpnprd01.prod.outlook.com
 ([fe80::57c3:5ce0:db60:1b78%7]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 23:03:29 +0000
Message-ID: <874jiokg1r.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Mark Brown <broonie@kernel.org>,
	Bard Liao
 <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/4] ASoC: makes CPU/Codec channel connection map more generic
In-Reply-To: <d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
	<87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
	<d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Tue, 17 Oct 2023 23:03:29 +0000
X-ClientProxiedBy: TYXPR01CA0048.jpnprd01.prod.outlook.com
 (2603:1096:403:a::18) To TYCPR01MB8440.jpnprd01.prod.outlook.com
 (2603:1096:400:15d::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB8440:EE_|TYCPR01MB8883:EE_
X-MS-Office365-Filtering-Correlation-Id: bbd1e54b-b2a4-4350-1341-08dbcf6546f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	k10L1q+UM61QKkwzJXrgNHNkXHp8zGB2f2oefZ1bub17c94CD2QhZrf1odGSyHCVtdOUiquRlWls8Bdet9fJPpC2E0xkFz7myuELVpcsfrhN4tjYnxJAtsTV3j4UCh8UjTbjyWrP34kR0Wsj+28ytddyzXTZvj/4CJS4t3oZFdv/FF65t0+4h8vHVOkpmrkpyv2hsnbN/Q9MbpbFSkezVT5I/hejSBDGnBoqvbj9PTIe6oV/Hn2F1GibXST/SMB8RlTf4cxarG0c4CrY62/qpgvLE6i9yYZ1OsChQ4m33ouBP8W/y+cHTvZx3rCWxKfYjMCTIzUy5G9gFFYPVy3TS1AIcUqs3iuugJvgw3YLjP1KeqHqrASX8kqyHnlcb2dB9YA0lTcrVoygKutYaDsN516XcpgDvjiFRYI4BstjJdPWHhbST0gEs35ikVOWwu8dlOCU3UjNrN7TCVkbYaViyHkTf/MdH9sJYc4Gg9WcScp/wH1/InMlgaFJXqIB9zbAv4iuUGQuAVkftN9KjyxFZf6rCTQiYG2KzF1FzVh6RMQn6wC9DUwIvrOP30vwWN5189+mI48QqUOJyRL0JC0bX8Un1sPKwoUnagkvWraZXuBXq+JUoTZQoaDVOv8o9vAWTPVi8FFXIDpHUxT3emRoLA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB8440.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(366004)(376002)(39860400002)(346002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(38100700002)(66556008)(66946007)(6916009)(54906003)(66476007)(7416002)(41300700001)(8936002)(4326008)(8676002)(316002)(5660300002)(478600001)(2906002)(52116002)(6486002)(86362001)(6506007)(36756003)(38350700005)(26005)(2616005)(6512007)(41533002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?FIeNLHUPkkfZftWrWRatSi8XTaANz6ailkmlR4YwPPJTBKnd19h1X6xEE3uE?=
 =?us-ascii?Q?Fy/VHgHPaghjwtFtuBlbjOL1DdGlXcaVVFfPz47XIJNeK6KfUo26EFk114t6?=
 =?us-ascii?Q?gbxS9nnwpvyVr/PUtIXgGGPtE0ojhJM3JBYSagdbW+ngF3fx+UW9L4zGbQY3?=
 =?us-ascii?Q?zdzWYR+8pbknzUQ7pDnYJOxjd44uJJbYXXY5LdjG53n8tCw0tH0/8ko8p7Gq?=
 =?us-ascii?Q?/6zzkRrV9ED0jONQvjY/PFpD3Q/lIbLZWMFVF5s1gXTufqd64m1b0tRAD6Mc?=
 =?us-ascii?Q?GRijcEITzBE7FcjD30hY/Sl3/8GOx4wYMuOCTBCxIdHa/PiNZfD+G/TRGEji?=
 =?us-ascii?Q?1WbCkjuupTkz5tP0c/AKN3r2Gruud3DKIP4vyy2DctxSQdK+CuMBh4DE/kG/?=
 =?us-ascii?Q?dbsjBTxB8OvdCTNs3uON4TaibDdyUetpCkaMT+QY3FuGFgshYYeEGvQP+imU?=
 =?us-ascii?Q?PX4xE4eCCLI3C6zPxFj0suqSIzzEsUvAsM3CH45+PUHzo8gUljoNWIaWhlzi?=
 =?us-ascii?Q?0i2QzqYQAIiSpcQht+aSIpbVbCShJoYFbvv9f9XV1UpjBfS7X/sHl1+2oCSU?=
 =?us-ascii?Q?tvGMbTUgG+ZKBKuaeApQ7pZ9DvJGxROg9/C6jGZdwB1L3h0ZX8KXWJy65Cs6?=
 =?us-ascii?Q?RUM7TlNz/PmuprMAA77j0P9WyGR5uqFkrnLlPxOq/TYRVlX+3tyhRXsOvFUl?=
 =?us-ascii?Q?EvZhc993goLMuGrRuDjXoLi0afdeWsjw1D5pDG97U8QdbLRoltuodH4DCPaQ?=
 =?us-ascii?Q?viuRHAvC8B4kW1MlzGAgz+SrDU4TYOZU0kRWrtQa2MrzaMBiBKClDi38SCe0?=
 =?us-ascii?Q?gLz34W2g5pei9djWLv6bbyA1DMX3kCpFM+rgmKiBVBeevGxIxR3cdbSquSc7?=
 =?us-ascii?Q?vqREj/xHt1FvPEAXtc4tTuX1ONSUoom1tpgXjDS6+a+iSCt41V2w0q9/ozAZ?=
 =?us-ascii?Q?cj1FETErqG2HjUdpKYc+uXrATM3ZDgYY6/CsZ1pqDyVzgov364grphKiTYRh?=
 =?us-ascii?Q?RuGCpB7otalrUCT5YkFghqkrZQYyuAhub0RY7IpFF8hVs49dDsw/5FjjDmZb?=
 =?us-ascii?Q?yEWFwGuQMNoWJoCzF/chUC2rLOM26cfIKLt86eGO4Iv2x72MFWB+qap7Vx6I?=
 =?us-ascii?Q?RYpIxhr5Rj138Y6lEQwDZehGY4NQ+D5dQdwUmzq40Psy1GMTDTbTJ6a26c+Y?=
 =?us-ascii?Q?aNOrDWO1HLB0HuzEU+fobVlNA7B6fba7xfsv0BBH1YUqePAweggZA7lg27lM?=
 =?us-ascii?Q?UlyqqAfJh92hLpxBh1gY7pOVFA3vxg3nhWK6VRFVOvSNCXAgJGINppTIi9tR?=
 =?us-ascii?Q?B4piN1G7bdpZb377Kapthp0+gQPx+RActf2KvXnzc2u1CxSzq37ndpHWxcio?=
 =?us-ascii?Q?zhCfJIBcCintWnvNBEcXGX71dBM2fQWhNsJw9oLVIWAhNcpu9Adci3rVCIMw?=
 =?us-ascii?Q?KuDsAh+VA9fp2O+aSR1RQNNhim2dHT3b6Ue4mN3v+0bkvT2eSjKWoqLsLqXn?=
 =?us-ascii?Q?ip4zpVOsdP0bTl3EUruz5DONrG1GGS8tBYm8jCQk/ajdorR7YuLCb53KvLzl?=
 =?us-ascii?Q?y7r+D8dv4i924klT9WW+cIBzC4V8rAAG1asw3f43aNICn5MjE+lSvZ0RNVio?=
 =?us-ascii?Q?KbBoQ2J1xjc6s7Z8+ydHc48=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd1e54b-b2a4-4350-1341-08dbcf6546f7
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB8440.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 23:03:29.3385
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l8VovubFUQf0MHBviMPUK49jF7FqCExZbVpb26wQjLiXB3IY3XB1ti+ODhVVPfSlVo1qlixg7/A5zzRjj1ZymtQVJEqKfH09mnji269zWmSNLh1AfKZ63I8HelHbI7uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB8883
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


Hi Pierre-Louis

Thank you for your test.

> >  		/*
> >  		 * construct cpu channel mask by combining ch_mask of each
> >  		 * codec which maps to the cpu.
> > +		 * see
> > +		 *	soc.h :: [dai_link->ch_maps Image sample]
> >  		 */
> > -		for_each_rtd_codec_dais(rtd, j, codec_dai) {
> > -			if (rtd->dai_link->codec_ch_maps[j].connected_cpu_id == i)
> > -				ch_mask |= rtd->dai_link->codec_ch_maps[j].ch_mask;
> > +		if (rtd->dai_link->num_cpus >= rtd->dai_link->num_codecs) {
> > +			/* .ch_map is from CPU */
> > +			ch_mask = rtd->dai_link->ch_maps[i].ch_mask;
> 
> ... and for a FE dailink there's no ch_maps so this results in a kernel
> oops.

Hmm... this is strange...

New snd_soc_compensate_connection_map() will add default ch_maps for all
dai_link...

Oh, is it using topology or something which doesn't call
snd_soc_bind_card() ? If so could you please try to call
snd_soc_compensate_connection_map() ?
(I guess it is using soc_tplg_fe_link_create() ?)

If it could solve your issue, v5 will handle it.


Thank you for your help !!

Best regards
---
Kuninori Morimoto

