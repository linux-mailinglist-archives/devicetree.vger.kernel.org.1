Return-Path: <devicetree+bounces-18997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A35717F965C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52B75280D7A
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC8A15E96;
	Sun, 26 Nov 2023 23:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="NnDyD/zr"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2094.outbound.protection.outlook.com [40.107.114.94])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AB1E111
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:18:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGcqd/UYCYpRwFeH2jQpPTs95/olgXSgC06eaMbxwXHhLFykz4UlXz7oJuouDN1qvoIdESCNn5WQtlbnu/wwVm53c1ZpjWLOwFZ8KCMjZH/m2HYx4qw1T6KzE2Ez9XR8JAUjTNcHP3gSVZb/7bpeIz5K5UNlHPl1QTZSGgWCmVkuSrGtNTVRFwt0+1udyQ9ANFLYF5iD0FvvVbvw38xloyC7eRps8oJPYNHuv8MSaucShmpKxN0mp9cM7CBCFwaw2b7NHqHAgfyFUqgX9+sniCoUpNz+vA/1qnis6YuTTBNqwb0SR99xMmIexF280XzyUjxsByOB0qTcdegYqUSlDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RckmT2UsYUG39vchSETBKPdKxNjetgQHcP1wYag1KAc=;
 b=cNkN70UpUzaAgvhZtG3oZxwkc8yFF+lH6SMzradVkbxyfD+7G+8mNFKHZCd2UO2iTycK6izjDZ6Gw8C/fGrZBt3LhSVcFJ7mzhehYSfIKdnSZErJEWEzsFpjLt5wlbdKTp9xckpZjs6I+dowG4EiCZH5gKe4tyGZWerPwgl7KH4lKz4VW3OdA0Yj+h0RagmbrEdWGz1yl6bLJeqzhLED4xmBY905AwCRmrxg6ijKF4EP6CwmKgsmulpQc5ZCc8Cbk0PfX9FEWeuBWQre5xrFa9bdmDkNLQVddLvbaYWhEGEiH3kSibRsYFcr926h8N0ISY/EELop7CLB6tAX+Xd1sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RckmT2UsYUG39vchSETBKPdKxNjetgQHcP1wYag1KAc=;
 b=NnDyD/zreB3741Cl6rF0Vt8F1LShrAIQgCMQe0VVZWXyhrWGD8lx8ByqcnBxQFdUfwIq6pfwiYCwGfLZM1XjGr7A6LahWUmrkyR0MoPJS0LAv/qjTRtfbqK0PM+PR2OwWn/foSl+YKCovRKS6m0c93vOQ+82KwZmraKXqa5eZYk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by OSRPR01MB11697.jpnprd01.prod.outlook.com
 (2603:1096:604:230::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Sun, 26 Nov
 2023 23:18:39 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::16b3:a84d:faa6:4846]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::16b3:a84d:faa6:4846%6]) with mapi id 15.20.7025.022; Sun, 26 Nov 2023
 23:18:39 +0000
Message-ID: <87ttp8w1bk.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, Mark Brown <broonie@kernel.org>, Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH v7 resend 0/5] ASoC: makes CPU/Codec channel connection map more generic
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Sun, 26 Nov 2023 23:18:39 +0000
X-ClientProxiedBy: TYAPR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:404:14::22) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|OSRPR01MB11697:EE_
X-MS-Office365-Filtering-Correlation-Id: 275d7001-3303-4844-b74f-08dbeed60603
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	oolEAwRlS6fOZ0XA/MU/FJD32OT4DglPezp5kp/BMluJtJqYGcKDDRGT+7Wm+VYnWtCSoj3Rax2a/k6/k75f7y9QxcPacpCar7FHdX/SFarhORI4iRVlmmTPeAkH6+v1tU+dA0uUZbysHKBjAtv75OO+so2R/xXdLbUv8/C8Os/Aq/1doKhP1CGmJeQpIZNEQ1D7SYHw797WxE0s4mnDV+uk7SgzclvdJJzEVvHXiKs8t17NNr7xfxjtXdZxbhNv+dw1RWeJMgzRdaVC/LaLXgDSObQ7orkgPYhULqx8e4wCN7C/D45JYUfSdwdvo2tfCzWsih25zBCUBnKjTA6dkRcrtKcCE3YKW+tBScmShYiCd37LLin9LHrokiy8eRGlfl5gHKovBpFdv4alxVn1zd+qLBs+ttU8CGvTvEVM2kCbOstfMqKbm+hQ6SHD8bjORm0Qv+1YJDAnGorP9hlsvA6DH08FRci2jpqje7UqAxGaf/q4URkeo3qenDHja7/1tndSsxJmebHPd5NsyyMiYjAdl/fB3tkcPS6HN7ePMPf6WTLXCEG50Kmz3Df8kC6ad6VSMBBTAwDIZVEZlpAEktaL5eBWCNzhIzTC4NlswrIgMkkeLOjnWeospfHz39JdKhtUIX3dI8uikuyC1x5d9WGd1G8X65VqBxDXYAvf01SvB4F43hOd/2E7OprIF8g1vDc5zLZgSvuArYBRe9yDQg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(136003)(366004)(346002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(451199024)(64100799003)(7416002)(4326008)(2906002)(8676002)(8936002)(41300700001)(26005)(66476007)(110136005)(316002)(66946007)(66556008)(6512007)(52116002)(5660300002)(2616005)(6506007)(83380400001)(966005)(86362001)(38100700002)(38350700005)(19627235002)(6486002)(478600001)(36756003)(41533002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?8Qy69rOB8HMYS8Sz6hBG9b5xtuqvhupi2XbeHwHfTe5inuxH4TETX8hHeahg?=
 =?us-ascii?Q?dwVbTyNZUO+s7DxfwHtaMHHuFHzYCCY30BgnlKaSR5H5oSselXCQWQcqeTKC?=
 =?us-ascii?Q?HyVMRvY4ecuC9SJMerDdrLnNBQsY1SrnfWVWtf0BpwWXQktThqIQAbZIaXNN?=
 =?us-ascii?Q?vwJZ9eyrbNQ3WymbGu8NgVrm/IULZj27zgdJpU2oS3VsAQjBMzNnVHK+E1xJ?=
 =?us-ascii?Q?koLaqzjpMwFykKyFIwgpffDAC0m854bMccGkF9LdiBiXy0ArzX1ZccU+MtFI?=
 =?us-ascii?Q?3EN1I28KJz+yk2ruQwnbwVX0bWMO7w7hskAc5uKQPf8ndd2jAhXrPDYFiPsF?=
 =?us-ascii?Q?ExMJvKQeLlyaeeyxWH1Yjmtp/R7NVosPWtPng/T+rkHU6qnbCRDjK5/SDd9o?=
 =?us-ascii?Q?ArIxaos+lFEnpP2PC9Hfr+8lmQudG9QapJ9OUGBuSNHEop+1sSJQzUzh9/0g?=
 =?us-ascii?Q?FbV9UKjniNawqRQI976bl0ZBRwcPODVWKXtJ2hBq8R4Q4sn1Ys44bTHfuAj1?=
 =?us-ascii?Q?FIaoQqKKEgzS/80Itwy39Zx46u8OK6oTK8OWp2g02HzHNQdXrylJ8Gc3Bz+L?=
 =?us-ascii?Q?9DY54cY6Lyx6XJU6JYzlLSIrTwM2YP9elTLtW2veSS6JDptWUcSrLZkwy11n?=
 =?us-ascii?Q?BUEENlBMAjj/7Mnl1YxW2TOHix8u0DDNWb/PXZ7WE5niAPNUGpP8K8X8BKXz?=
 =?us-ascii?Q?XMTaDRy3DoOfbYhuGqQH/tymmmsJDzd/8f00b7D1jH8eN6HMOufDSFSpSD2A?=
 =?us-ascii?Q?qa+qriHnvq27rgol+aSTy8T4PCpsY2/KoVcobmripDHxDgDVeBxoWtisoTze?=
 =?us-ascii?Q?JZ0QkbPehLopQ1W7FMW3cShK3JKYPcUJIm6VcfBo2JDFdeRrrpjdhQbUOhli?=
 =?us-ascii?Q?k8kWe2tC4NUhOn03CV4GDBDDO0VIe8SsoUShJMpROXAYa39PY5oS5deVsAoR?=
 =?us-ascii?Q?macRPgi/vhUUjnbJ01f5M++Jc4Cnj+MCOib7s4MXllSAGLhcPrETOFUacxeN?=
 =?us-ascii?Q?YYmJsBVHa80z7igXQX2es3E8glRRRYq8yMb/3ctcRle+5isRvETPVjHzlO8v?=
 =?us-ascii?Q?06HtsAhCy/5LsFAIyzIqOYpXXr4V7cJTnD+YRQNVsRQ7lCKTRg84iPcjVt9I?=
 =?us-ascii?Q?XRlnmi4qAKuqJNY5VowrPnBWLj7Gs6f7QRuoqLcIUVX2MkOHynB4xVrORCxJ?=
 =?us-ascii?Q?fvEy9E28+BBZcjJ7ifq4rrpuoPmxiv4nzYsWg2NaszPrDtOYZ5H1UQsi7W+v?=
 =?us-ascii?Q?q4xP/Zymdt0NT+eXdWqBv4i+dwyqcFdRwuLcCdnwbsoznAjl1rvbtvuq40Hc?=
 =?us-ascii?Q?NvPeWI8SdS7z04m2lXxOjfZYZKANj6s7eB22UZyUttFelszZ3lHbOgOlrOzE?=
 =?us-ascii?Q?eEXHmKFThrOJD8HdwPm62192SItNfkel0FviRiuKu5QdYQoOUDhxiDIZPT+p?=
 =?us-ascii?Q?vw9v1eK7g4gaFvbJhW44EeBfQjLiNoSS3uiGISr8P/T1O05XyCZgzxYkDFq3?=
 =?us-ascii?Q?6yk7yv2tIhRzSkEPvwMmkwCuooUFg3AZs6UAPQ72/tl3fewbYyNEglRkBOZv?=
 =?us-ascii?Q?tIOH/vujj58eiQO+jaz4FiM2Av1NKNpZ5DEi26BEIovSzY2t4ke6KeY3idVJ?=
 =?us-ascii?Q?40u12GDEDKIgtuv4XyDYaCg=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 275d7001-3303-4844-b74f-08dbeed60603
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2023 23:18:39.6908
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bs8ITDf6FX48CMYei3vYF235STGKh5OOT/2Dpva2/NVfxqEZZ4gW9l/0TlmLoygfx5BbtyUfF87dz89OiYH8ioJyzF1NWVKK3vlw48dN96UJef6+ky9NEAoYeQt9VDq2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11697


Hi Mark
Cc Bard, Pierre-Louis, Jerome, DT-ML

This is v7 patch-set.
2 weeks past, this is resend patch-set.

Current ASoC is supporting CPU/Codec = N:M (N < M) connection by using
ch_map idea. This patch-set expands it that all connection uses this idea,
and no longer N < M limit [1][2].

Link: https://lore.kernel.org/r/87fs6wuszr.wl-kuninori.morimoto.gx@renesas.com [1]
Link: https://lore.kernel.org/r/878r7yqeo4.wl-kuninori.morimoto.gx@renesas.com [2]

ASoC core code ([PATCH 1/5]) is same as v6 and it was tested by Pierre-Louis,
and Jerome. Big change on v7 is basically for Audio-Graph-Card2.

v6 -> v7
	- use "endpoint" for N:M connection instead of ch-map-idx on Audio-Graph-Card2

v5 -> v6
	- tidyup some warnings
	- rename "ch-map-idx" -> "channel-map-index"
	- Update "channel-map-index" description
	- add Tested-by from Pierre-Louis / Jerome

v4 -> v5
	- use cpu/codec index on ch_maps
	- separate card2 sample DT patch into prepare and new feature
	- ch-maps -> ch-map-idx on DT

v3 -> v4
	- add Jerome on To
	- add "description" on "ch-maps"

v2 -> v3
	- tidyup comment
	- use more clear connection image on DT
	- "ch_maps" -> "ch-maps" on DT
	- Add DT maintainer on "To:" for all patches

v1 -> v2
	- makes CPU/Codec connection relation clear on comment/sample
	- fixup type "connction" -> "connection"
	- makes error message clear


Kuninori Morimoto (5):
  ASoC: makes CPU/Codec channel connection map more generic
  ASoC: audio-graph-card2: use better image for Multi connection
  ASoC: audio-graph-card2: add CPU:Codec = N:M support
  ASoC: audio-graph-card2-custom-sample: Add connection image
  ASoC: audio-graph-card2-custom-sample: add CPU/Codec = N:M sample

 include/sound/soc.h                           |  56 ++-
 .../audio-graph-card2-custom-sample.dtsi      | 380 ++++++++++++++++--
 sound/soc/generic/audio-graph-card2.c         | 277 ++++++++++---
 sound/soc/intel/boards/sof_sdw.c              |  28 +-
 sound/soc/soc-core.c                          |  95 ++++-
 sound/soc/soc-dapm.c                          |  45 +--
 sound/soc/soc-pcm.c                           |  44 +-
 7 files changed, 754 insertions(+), 171 deletions(-)

-- 
2.25.1


