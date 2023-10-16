Return-Path: <devicetree+bounces-9059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E453B7CB6C9
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 00:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98119281427
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D51B37C93;
	Mon, 16 Oct 2023 22:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="VIR5f+QE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8333717A
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 22:59:44 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2122.outbound.protection.outlook.com [40.107.114.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EDC083
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irYBvvwGnaqHWHJ1iTdsbwT/+PYDJy+ZyGQDnZWt9qwtpbAVS9efCY2bLPpGBtKFnfZyFQsa5EyfYoblAIw0ac8X3Fs6wkuKPt5+LonI8kijJZxram8q1k6eQaXBBXfMklUnH6JylpsYCyKGGbV9NCbNyBT85UNYHX/+ImBlRoj48vhIDKBwWaMpjtiZeDYU5yGsvbLxFPwv6UIisXrKSc+tgQE3Gld2hll+mUDXeiXsrt3rJ+z+AT+BcXLsh9fsD+XEDVVs3hPiVelw9Bp+TH8LDyWSXZXg28NOGkgEK/2tpvbb/LWkWXgtXEl+VoGmPBKruf3fjUozhMS/p/nzdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSJlmk40dGbXWxTwlLHjhB3UK9egKfK4U8nrAH4wmzQ=;
 b=B9kE3i5GZKpbfB9I0h/RsEHRJDZ/4CKrhCpfdf6fXIiNcYnytMbDJPQ/ziJIL4nND7BLxAr1nS9xLXsUll6fSQdrrix3ntf8LB1hbW9O/d9qw4Ofzfeh1uwI8JOlolv1wK55+ORygaOaXWiiQx6Ip0usaF0Z6wqEAQxMetIqQ+2+Y5ErMsm+rII4I0+nye68//4ittG14rDVahvYj9H3nQYOOE8OP0EM4WxrVo1zwQK/EP02TzzduGSnGBm2RUoKKbdh6IzLLtbzy0BbzZDEkfFZMhGf5Y8q/YRQ6cXEUEdG+D1e3PNPgIafqCsHPho9NY8FIeJ9yY2/fhsdF3EXmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSJlmk40dGbXWxTwlLHjhB3UK9egKfK4U8nrAH4wmzQ=;
 b=VIR5f+QEYnRh17l9RXy8sg3UY9VK5cUs3Me6I2rgpytxCgnLFYFxjZUaP/sGJuK8ktYcJScNt3O6pDA5P2HsTmvOqUcazWE+dEsN82buqoYCGfcMhjQahwKbQV8ou1Ouoe/oAgpXQv47W208gs9NNarXAxjlxFPsjomC1k3TvVs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYCPR01MB6014.jpnprd01.prod.outlook.com (2603:1096:400:4f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Mon, 16 Oct
 2023 22:59:39 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c%6]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 22:59:36 +0000
Message-ID: <87wmvmcgxa.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Pierre-Louis
 Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown
 <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring
 <robh+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/4] ASoC: makes CPU/Codec channel connection map more generic
In-Reply-To: <1j5y37vujm.fsf@starbuckisacylon.baylibre.com>
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
	<1j5y37vujm.fsf@starbuckisacylon.baylibre.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 16 Oct 2023 22:59:35 +0000
X-ClientProxiedBy: TYXPR01CA0056.jpnprd01.prod.outlook.com
 (2603:1096:403:a::26) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYCPR01MB6014:EE_
X-MS-Office365-Filtering-Correlation-Id: 16db580a-e85b-4327-2ed5-08dbce9b917d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Ay17l8WoN5KinffSdQ+Dl+EDpIFHkhOjocG4euALCRybU35DWpciNqiRe6DcFhSAb4Or5Tz0nXsuIxIYUm3kgQQSyvmwxMpRu4N/CDjQU7TyU9gyQ7lKW6scTn2UVLjCSgAMrvlQna6AEK9cuG3G8L2IJZZ/zErNtmBWfqT+P1V+afKyT08GARusaduXFRWgmKesBdHFe8V2O1f3gb72MrcOsahGHpmHGJ7Rob2WFZWTJ5lBOs0tEmw8oXCLU2R+vDeWXacCPCwGtgz9ftqGPPDf4TeAkCej1TsZ9BGUndsHNV8WBJXrV6iYkugmd3H3ArD8FFxR4Jj1YCjRJClG3ezlcvAKjn8NeowQrw3Hhxq5eHP42ECjFF58l1wlr/tO0CARWD3jljg9ChuWOI1mBXWgSccH9iJnYq3qaqaqobjtWNk70iRHnKZGg2avDBUpzm8DqwSjiCzOCcTMC3LEg+Du7pk9q9TxyX7CFivyyPJHdpPJApal0rNqdSGaZnXTsheUi4/Hap9VXH9JjWw5HmUPRDYD53n9+vPoooCTqX3AfU2jj9zR6vduaAi9aGCmmX1VED4iUBRV8a8MAdG+YkPxukgjEaBrysLH+aU/obLItUcR0tI9oZgQ+NE+qIz/hNe/zie7Pyh1L4NJq8XZaw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(83380400001)(8936002)(8676002)(6506007)(6486002)(478600001)(6916009)(26005)(52116002)(54906003)(66556008)(6512007)(66946007)(66476007)(2616005)(38100700002)(7416002)(4744005)(2906002)(316002)(5660300002)(86362001)(36756003)(4326008)(38350700005)(41300700001)(41533002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pAhqopTocSL4flSpe+cVUVz1tPY4tKctBVH0nHtVFgYCXXQm2uobRTxiLLTz?=
 =?us-ascii?Q?MiR8X2KekYRw8qAOuM+DQMZyiLHqIWhrkf9J5QCnrqqJAeAHSbHME270ZWjr?=
 =?us-ascii?Q?4mgdBgcP5hFWZoK/qPXEkjW+Otr0kZty8ybMl61HizbLYAC2Oluh5qr7UajV?=
 =?us-ascii?Q?Mtcr/kyzuHV65RPnpG0FPuugbZYkWSgoyrj8aIet61Wry4oceSL90VsBWWZF?=
 =?us-ascii?Q?ZX6sOM4Xb7Yv+/rWUZ8TvTVO10XMUL2oG3HQjeDx9ieAm+7utBlWRGAdqt9J?=
 =?us-ascii?Q?QKyXykZG11W0ngjQuJlqsYXSshNDnEIMGTdPHae0Skg1DRSj0Sl2LwhmvI5Y?=
 =?us-ascii?Q?7o6mX90UrH9GVGgtTvVo1U1RYJBYty1T+FkY+xEUa3Kasw2dRDTSu0hq63uN?=
 =?us-ascii?Q?Vn+3FC2L5Vpcf1B59GWmS5TkY2VCoyXjhNA/2XCxSoZ489U3EWSWHUAe8TYb?=
 =?us-ascii?Q?EJI9WDaiLracjdVb7BEJqMW4m0cX7hasbwQaMe4TORsAZP5omftc01/CwH0o?=
 =?us-ascii?Q?YpicDUiIPtfVheeqoEyWFnTixrzHN7M6cyNepIhyV1xc4vAKe9zJiH4KBgdN?=
 =?us-ascii?Q?vxtErSkLVUEqG3LFvwnnio1QRQuIuh2pFWpjkQgbHxYBTtiORBBhHiiTxafW?=
 =?us-ascii?Q?p0ie+mHBGF4T/bdqDNCZPgKCarb9QSygTJUqH2JJvWEvX+L6ovTc9/V5YWo6?=
 =?us-ascii?Q?CO1/qWCmobJ7yZXM6suJPMPzIIriMQa/DUvf0Id+DnmeZI8L+yz5R6nhWjEz?=
 =?us-ascii?Q?qGGw4/JTod7SoCXCL1jJWKZQgQW/TlOr1ihguUN+HNKSEE5XKBNlHLt2ftWj?=
 =?us-ascii?Q?M8oL3C/r6KE1fminlLYYobKue90slwYz0k+nS8QwnhSWEB5iEOLysk7z2bR4?=
 =?us-ascii?Q?39wN2TIzIzgzVajEcRdnGKHKbgt6dU7qKH17x8rBflY+vObrg2lr88PkE18B?=
 =?us-ascii?Q?HQwNFuKydKQWSAH7+TpsGMISU0r8RfffFCMe8eaH2FyK6aORFKbp1waPNZsC?=
 =?us-ascii?Q?YMvY/DU32Fyd/dkb4MFMCcsYdF6uonY03GZlOpYLalpUndwuSGuieqklIvU/?=
 =?us-ascii?Q?30LO1EdSjkhSU7pu3WqMoF8G7+Y2aMDzPfUzgH2yVbjVkQItR2sMLldWW06r?=
 =?us-ascii?Q?YOdnmql+ozaT5FgEf3IK6kZjTcqd8mp2v6e8Wwxqro4mmNUmcEu0MTv+dlS5?=
 =?us-ascii?Q?ihwWrwOFVAMBgQOJEJbPfGUOz91EcfcaUZDgMKYNU+sxw9SSV+KbfqTIpKVS?=
 =?us-ascii?Q?nbzvFDiJMHCl4Z0gWQI4fiYjycA2TDg8v1+FjTtn7/mrVLSQWjnt9F+DYjWY?=
 =?us-ascii?Q?/JSKfEF/LXnXw9B/imBgJGOlJobHVTEaDWoLuNogte29gaXGycejJ5KZ5iRH?=
 =?us-ascii?Q?FBrTmBA54uuPvSzcbMFpUQkoSvOlLFwwqxzSrViTZ1lFcqTyYL214iMRnxhE?=
 =?us-ascii?Q?OaRDthNeeu9p/U/Jd/Bu4ay+W5rq3RLEm3i4dmewTcJgm0s2gh0bFNAzRNQK?=
 =?us-ascii?Q?7DdhvQVRLilFm9TOmQgA3gvo3RHlOgc2MaJfUz32ElK69YezS4hVkOb8X4qX?=
 =?us-ascii?Q?31UMyy+wUjeJ/+qzjuVLOoHmvCovVfw30xFhu9ZQp7UX1wzfUWLML099KEnd?=
 =?us-ascii?Q?wm/jMtZqoqbRw2GN7Sbpxio=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16db580a-e85b-4327-2ed5-08dbce9b917d
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 22:59:36.1039
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lxZBMEa/Fi9/bIKV5dDmfDImghR4wTFUG+9ezk8SszA+KARI2izoDmxPDt10Jcbu+WbnnhRaTzDJTBtzT9PAcOn867UMF2vAkTkH0g6+asZVPxaNbkoY4Gh0F2zcRXXc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB6014
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


Hi Jerome

> > This is v4 patch-set.
> >
> > Current ASoC is supporting CPU/Codec = N:M (N < M) connection by using
> > ch_map idea. This patch-set expands it that all connection uses this idea,
> > and no longer N < M limit [1].
(snip)
> Checked for no regression on the Amlogic axg-card with DPCM and codec-to-codec
> links. Also checked no regression for multi-codec links with codecs
> doing playback only and capture-only on the same link.

Thank you for your test !

Best regards
---
Kuninori Morimoto

