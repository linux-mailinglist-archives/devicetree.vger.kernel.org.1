Return-Path: <devicetree+bounces-74353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA63902C81
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 01:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82DE11F2178A
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 23:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28A7481B8;
	Mon, 10 Jun 2024 23:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="YPvVhEJg"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2083.outbound.protection.outlook.com [40.107.114.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5433C0C
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 23:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718062464; cv=fail; b=AZPsiv9i2eB7ZsgOqUXgV2BqOKbJg6SD/HUoBhdl87W+1LJwC2cPQqw0baAGEAPF6dnqJqGImcxfCz+9IICcUfOSFK7SOjh5hZpaUcJtEI/vheMX4jXhH5lSHgQIxrHnt9B+RFl2KiDSuWFVSP6q43s+yEWokhZQ2AvyJ3iGCmg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718062464; c=relaxed/simple;
	bh=XqNoY+2NGT23s5/WP4i4CS3sHAXEpagBRTXIQuMJadE=;
	h=Message-ID:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=M1Q7uA3jEakpYcCbNbET59USNHXaq1rNwih5P14CZc2kl3lGkaYpJUQTFbIxypi+3hZgfd1nbHFL8I2XLqstOY2pH8Hlj2FDwLW0TkiLgL4hNvV3VmmCFIzh1umHONA5X/HQqeLLlZfuq4iFQ28+mhgXiR3w4FYYB5AB9kzGYrs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=YPvVhEJg; arc=fail smtp.client-ip=40.107.114.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxE4v6hOF1SdgW6V0p1LySUF3ORl8ffO536thRLNbjRZT2L/RHws4LQsiy/DBR5C6zJ/bsffzrQN7s51tF2JqO5d7B+BkhoRS+I8qDPE8lunhoS142nIZmzg8gG+vAUx03Cp6PzxvzN3FBxSX/UeBczvRCY7Yn1wvMQ4Ljq2jsjqi/8QwurE0hKs1gQGJJagh1ZFR84mVRALjres7Xxeqr+UrRK8ssCAS0D91VtU/KrPOLUM6roZtW5NRCf9l1fWQ2AEzEK8AJigsAZnpvBl7XtGp6XQLPiHSNi9TbVuQ2WGqIiycuNMS2SHeSwa4kEp+qQgstXZAzbYcuR4BzXeqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mS4Rc2m/lb1fE6hZofaArJeNZJ/HTKQv8HiqdK6JHI=;
 b=CFd62XFDi0wrU2yFuFe0iY6z9n5+ovfTdjDml/CxrHZ8DRNua2py0l4UueT3f4dkdMLKfVHGKcKqEsbeD2YXFf6YUAbE3CBm4LvOGRBG3eZkzct7k89sR7UP8CHjP0qYdpCj46+5IGzbpK28OZcDtVdh06DP+fQnNmij6a0I0SuN2O7OAKh7oy1I4vHvRD+a3pQXwfcj6udGuRC/qwyNIBPmZ4OIvRitXzOWOB4J7ehJymUd/Iq1lJkbcymF4D53UMbTqPxu9P83nF3EDK+S/bImoPLut8jEy145VnZUuoHe1yHk0K+dIe3A10WJehlgYri2IQuPeOcArvmm5aGzFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mS4Rc2m/lb1fE6hZofaArJeNZJ/HTKQv8HiqdK6JHI=;
 b=YPvVhEJg60IuoqRLFqvFwmy75fudCiphIcoiHUQhS9gyIw/5g2P6DuvFIETwbhRNo+ujTW7gbQwB2gCu0nipRubxnSeYmbIi5ntXO8e1fuhUHCAc/anS66KyZauOCtMgcZeUOTIbdtT4yPnKPeHbpsQhxTJU0z5ncS2wtZONFB0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TY3PR01MB11007.jpnprd01.prod.outlook.com
 (2603:1096:400:3b1::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 23:34:17 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 23:34:17 +0000
Message-ID: <875xug1ifa.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
Subject: Re: [PATCH 1/5] ASoC: audio-graph-port: add link-trigger-order
In-Reply-To: <20240610220909.GA3150939-robh@kernel.org>
References: <87v82ls82e.wl-kuninori.morimoto.gx@renesas.com>
	<87tti5s81m.wl-kuninori.morimoto.gx@renesas.com>
	<20240610220909.GA3150939-robh@kernel.org>
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 10 Jun 2024 23:34:17 +0000
X-ClientProxiedBy: TYCP286CA0162.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:383::17) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TY3PR01MB11007:EE_
X-MS-Office365-Filtering-Correlation-Id: 86b2c689-fa35-4585-a6ad-08dc89a5d875
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|52116005|376005|1800799015|366007|38350700005;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cWFoLRphyhTd7RycY0ixVc8Z5ppvYv3y5bm3l2Bi81bRF58X+X8sxCljFc5U?=
 =?us-ascii?Q?COVUfZGoHLcBK0iKCTB+rJoAJ+BPxnE7sdBsJ79vLS2q7KbBNh/FWod+7TtK?=
 =?us-ascii?Q?YYiWuVJlOqYrdsUdjauOG7GcSg7zlZwgE3XhVPQTlBeFVQPLXZ+fkI9yteAI?=
 =?us-ascii?Q?eOLSeIa+3B0cSkdakPfoPCNxA57yfQ2zvrhAoE6EMVuok4B/TDTqOAWIEai6?=
 =?us-ascii?Q?lrg2tSfWZwxhYuIE1Mj5F89RDYI1PTMlHEOmaIy956SFS6u6vbQShtJ8p2L9?=
 =?us-ascii?Q?J7tZiSMk2FpVkLmYFYvBtk10SOglPsA9lNEFVKuZhl/tH8hElBAXkwngRPoy?=
 =?us-ascii?Q?ipb06o2+dhSzDIsmd66IeeIKwvp431p4LojSzgSzKIzsVwQdcQVZOKTjVUr7?=
 =?us-ascii?Q?HWBw5SYVY7OQm3ozQHpqYFifbPTkeY9lZh6jGqZ76GbTFR8QKCpF0ugQHbW1?=
 =?us-ascii?Q?X8fIKj5tdqPuFq6ep3VRB2Pk0/cJrRald1JkHXIQIlcced8nOFnvSSQXOkKO?=
 =?us-ascii?Q?KbK4YnTKtttmhuOIe7FmSlVgBJHueqdjlOXKPbw1XFbYQ6Y4skKMmLiLuzwe?=
 =?us-ascii?Q?+8fQiBwBJSDyaLgdboOOCGSrcOP8RfRXxiTm40H0AZSHkD2MSfyPTYJtmOUl?=
 =?us-ascii?Q?nD6dQy8NcAo5RyV2Gg7s6QMFTruWGXJKF4uakMBk1mDKkI9KM4ycKwocanN+?=
 =?us-ascii?Q?8QhCSsQ+u9MXlK64z6OT7coEMDMZMVHMKaQ/4RWl6LhIs53HUPBrots9Tpd+?=
 =?us-ascii?Q?7BhiubcudYdJ4pFi+K6DI2AU6gvlxjCTdKpNGWn9SWwP14MXYEHF0co4WFGL?=
 =?us-ascii?Q?tuZbdQykhFSgLWvucsonTdZMjQs9p2pX/fW7e3GEJumgjwKZ84i0Eh8UKW48?=
 =?us-ascii?Q?BkQVYZ0tT1rpzkTvSNieIR8opy8O1k/0CE4tq3IxuJSoZwKF7QRsy6yJlpNj?=
 =?us-ascii?Q?ns2hrwc3Heqs2vlcvcs3sY8J6OlOiAcNjVhafZXi1vvnIbRmngPjv5fVdTwo?=
 =?us-ascii?Q?m1cLsJ9dKTE+B9yBhZDRnkxkfMaJyZp1QkWPBW6BCfhJXa62CcOTAK9BLZbK?=
 =?us-ascii?Q?7gLwshBgsaalHcPMMGHXLGpNJdOcABwovC4TAxNvrqpZbU/7EIIs5Tu8VC+I?=
 =?us-ascii?Q?AbU6QjhO6QdKI1y0Qp+4VVr/o8EYoVwmPU33Cd0+5J177WauDkDyjzekdkm1?=
 =?us-ascii?Q?SKg4R8RVmAtQjLjTTJ/dzqGVrFXiE4uEfE9w+a1KEteJunMGGkbLOxapdzPc?=
 =?us-ascii?Q?0VjBFMdKetKv4ia75XWZfhPzEGSfCBvSe6ptsHkNH3poxRmzBhaXM/nbMCRS?=
 =?us-ascii?Q?G1yKBRoRm0AwEOuoBY97NjEvspNyId3YK8dCKge47MIccNu6F84LmPj/LRiB?=
 =?us-ascii?Q?KoJfBro=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(376005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?STHr4vpdac6h3PQUGabCrpxnrty3o4EuvZw1vDZpaMfvZkVMplZY1GpsPDbw?=
 =?us-ascii?Q?gydhRwpLpXgoXNRXCbkqjoGkXwZNGPCPHyCqAffhgBV4n85Bf3yjNs4Tw41O?=
 =?us-ascii?Q?088RUtw5mPb6G7HGMJCbFgNG4pDYgLcCpYdY7Yhw8GBt7VWV/p4x0GDrZl9x?=
 =?us-ascii?Q?61FXwpy9kvFDwnLlVhAFDk8MIcx+NUtquE2ZPgndpQYP6/9vxHo5Bj6G2nRC?=
 =?us-ascii?Q?6gRTThUqDK+Cyck9tMvYf0DkLLQCuuHj3xBge4sYsVq75L1gpB4KgpLNq96y?=
 =?us-ascii?Q?6nbp7inXoPr58CcobjEtqoZ2iVXPjUchdSYyyssk0/S2Wait36vs6jrTYF3/?=
 =?us-ascii?Q?zB1Oep4mtC99iMdTbWFFQ80j7tbEyw0L0i6tuS+4zGHjbLbTm849zYTohxk3?=
 =?us-ascii?Q?xKcgSH/PIE0vmmNVlhzECj1V2QF8vm3tysYkoQVm7r82AjMREezbe+e2yu16?=
 =?us-ascii?Q?5PrKdpOjnHPDLG64eboydPNCYAUyOQ3BOT1DGD4DAS/Og7J0GrRQQzRSOOrE?=
 =?us-ascii?Q?W/o2K67Yehlwig3Ei6vxKCQ8md/s+GhQR+UYOSo1uiAMUmshHpyUyrOj0Tx4?=
 =?us-ascii?Q?5sj9icck1PUCuo2EiaiOy9bqaM9BlaRizQJkwZ7VOTEGi+vCFfruxSk7qfMt?=
 =?us-ascii?Q?mMWM2r77yQpNJ9mdRWA0gpCDoywwto2Mdz+/24cn54KzfHYeh7CRzek9MVbg?=
 =?us-ascii?Q?dW01JTWC+Qi/sHdzZNu03yJjNPYNkqd3f2o8imrDvqG17PyrLvAdfO/WrScU?=
 =?us-ascii?Q?1aiFc3qhiRWcIBRkDslVw7O3lkXmXkU3FP9r7tCGfy5YWgNRjaOuigGxwhC0?=
 =?us-ascii?Q?zCqZKwMr44fA13Hgkg/ZNAMBhA1TXhvhq1Crn/pjJrzXZG+qOcOIeRQUyXhL?=
 =?us-ascii?Q?MXu8qk+AIraaUgg/pIrX099d3GX4yjBccKe/wd5321uS7WieYGAt8ozSQIN2?=
 =?us-ascii?Q?Zdq698Dc3DtIyHO6CEyzQ1Kalo/UvQbRJSrjCT2WGbAbAFLZSg6NRXqaR7/v?=
 =?us-ascii?Q?DcPwPq00g1jx06ZfoVkeVDI1tdrBZd3M1+yOtDMYgIDBj0zJiZwblyPISijl?=
 =?us-ascii?Q?E5Ra5+iMm7e2dga0NEI8/w71BplH5a8LVD97KJMgRtvA4b1/3wJztOaEfJZV?=
 =?us-ascii?Q?Fd0KRkSdfA330/QeZ0V1kkvAG/xlcbGOhbGd68rxCxrNNoegF85b6E5yXGV0?=
 =?us-ascii?Q?QpqwX1JTOKni0KWVdef7rb/FIv4u4uU+1pRsQeGxFTeW1W137eH06jMr9J9D?=
 =?us-ascii?Q?+Xz788zqi+KuDGFO0FyEwhobRZCAiMFDOQrwlv/vCwvg7shMoB2zOot5ahyo?=
 =?us-ascii?Q?FG0GLTuYCoDsyqGXD+hzEnoddgM9OPhqdP5qE7CgZS7L5JF0q29CtuZqwcsW?=
 =?us-ascii?Q?iJwugwpr1SzKVyc+K7xs9AeV11tHiNMvIIQmeVs1UjzvSlXvFyG/Li7xhGTx?=
 =?us-ascii?Q?12u1fge/P7pdlltM3GMs/wIyIHzuyrJmpN1ahqtEcda5glNUPV37bKWl0zbF?=
 =?us-ascii?Q?LE3VXjMhjMQyoQtEzrX1GpkRn/Xsk4erncpY0zxJ5+N0F161RVGwq27yfBJm?=
 =?us-ascii?Q?u8hYAGSfRg77qY5wo1p6v0vnLDXVHgY9H+r/70OuGCLn5/T9Lq97qmJ/RrJ7?=
 =?us-ascii?Q?KPrlvxiyOyrIZj+zuge7tuQ=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b2c689-fa35-4585-a6ad-08dc89a5d875
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 23:34:17.4911
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JeQFnK7SP0cVkZx6T5rJZ+c5EO5199GWtapZgDDnQ7oO0NTPTKLxqawiVwbgfGREOEEcErJn0MyQkbIpJEvIxoy3MjLziKHIxZjFARHmMvo5/VM6EjB7C6+9gJiZhsR2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB11007


Hi Rob

> > Some Sound Card might need special trigger ordering which is based on
> > CPU/Codec connection. It is already supported on ASoC, but Simple Audio
> > Card / Audio Graph Card still not support it. Let's support it.
> 
> I have no idea what trigger order means reading this patch.

Sound Card need to consider/adjust HW control ordering by the combination
of CPU vs Codec. It is called as trigger in this patch.
I will update git-log to more understandable it.


Thank you for your help !!
Best regards
---
Kuninori Morimoto

