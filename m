Return-Path: <devicetree+bounces-73481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B183C8FFA5D
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 06:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B448E1C234B3
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 04:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C45E552;
	Fri,  7 Jun 2024 04:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="WwTCjxFk"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2042.outbound.protection.outlook.com [40.107.113.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EFD1847
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 04:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717733729; cv=fail; b=HaOdphjRS/ogWxroCvh9bU6WD2uJi5oG4pOIdla+J2jC1E5Exix7Q2JTn73rUd7mfOvRR8tQ6gUExM/KNuhvuPHxars2e+JMnnLtmF1u8evoz8X+XD5D3zpMF6gCSy6XLuGvu1xZP0Prmg0Xr2O5XPPHn6GXIoxXZJtAm7RqKy8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717733729; c=relaxed/simple;
	bh=PYLjg4Rn9Bh7IeYqQUSM3JfEsrZr2AR86fI3O/cyWWI=;
	h=Message-ID:To:Cc:In-Reply-To:References:From:Subject:Content-Type:
	 Date:MIME-Version; b=OjoIEoRgp3yfyR5O3DYK4eYh938uVk+P+XeehiVljpY3BMrsRK04ugBmzD/1CMZr9X6IAKihuVjMpwG4hEl0JbclJsNARJ6chTlI8wp0itlOHxgdWu/GrkCdgaQIByon+f5/QcOM7fCQUeE4nWoMahb3zW4WVvlZChW5C4D8/Fk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=WwTCjxFk; arc=fail smtp.client-ip=40.107.113.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkYrNbxiYOPJ9t5bhXfmiRk2NI1tzjRS+vJ+f5qi/BYouJ6TmaLBXmUlkppB788wDIXF67lsRwvopczM5XQ5kamHLk9zU6eSptpV12ZYvjCyIwvJwGRSZlXiknKDRJAdKe8AloLHxD/aM4Hl5P+x5Tu57Rj2fD5iSAln3NNrhBMdg9WEAamY9AWq/ku1p9sbowTnkhBy1a/lKCG6gbvRPt75QoEvUklAaqHFtkBBJ3voabIEof9ZFl7WAwV1as9ORhbNdYRrnfOm0Ef1ivgUbVvfXBd3APRWxuePZvb35r3eixHnth/VGbYMJozigrNEIbedYIDfVwBU7angpaz/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YO4A8lsP7ma7Kmz5TkZdLhQzYk8gkkJJXXTmWh7m9sU=;
 b=EnG7LwGPSrpr5yQCRzVKfGTGEFyALk3gpvCljN2TKyDLbXpt0a4uhoksu4+dqjhfsoAV53cJzJnbtCePNWAiP71KE9g6m0DhbT6Q5x+JmLfEECI38sffFHF9rhmX5DqY1kd7nkkKoCX/jA4wfuq0AF7JavB4dJPoe0Jd2/Z4cI7OOUOqJEw4Bnbzfco05NfYrPvWuIj15wzrc0NFsXVuLgI20iI23Zv7mgcL0WGyu4S6cDQVuZzY2jd20DPwTQlqzIYQEUfPHSAlIxcpYjS2H0AoULFhuKcJZ0yhFJuPvdZbsJI49aP40s9azGZNj41QdU0sZ+zpGHfw/rgBeTlTIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YO4A8lsP7ma7Kmz5TkZdLhQzYk8gkkJJXXTmWh7m9sU=;
 b=WwTCjxFk9YvG093aVc1Y4gadHlgOSAxvRM3oEcjdoptGAdaxP+Wg4VtLWoCGw9ScauyaV7w/AIu14RWFStHeBybdbiuU5nt25PgZozrzY6eRApmKISlg87fXS7SLSWAdZTNXCH8fbyO1JGIos5Iow9p99ySyjKgB0Vq2hqYhots=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB8206.jpnprd01.prod.outlook.com
 (2603:1096:400:103::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Fri, 7 Jun
 2024 04:15:25 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7633.033; Fri, 7 Jun 2024
 04:15:25 +0000
Message-ID: <87o78ds80y.wl-kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87v82ls82e.wl-kuninori.morimoto.gx@renesas.com>
References: <87v82ls82e.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 5/5] ASoC: audio-graph-card2: add link-trigger-order support
Content-Type: text/plain; charset=US-ASCII
Date: Fri, 7 Jun 2024 04:15:25 +0000
X-ClientProxiedBy: TY2PR04CA0007.apcprd04.prod.outlook.com
 (2603:1096:404:f6::19) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB8206:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cea75a3-f906-4003-6167-08dc86a87509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|366007|52116005|1800799015|376005|38350700005;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?d4i3YJRZJOJXzm8P00Y+wuYTEvnjPLBzG+AxsI0o127cfEslgtmIUNP8rk6f?=
 =?us-ascii?Q?rgeSglSE2BNOz5qw2bR6KwvdmKp3QHh5HQHm+9IzRsH+4mPNj73TOI1tKlst?=
 =?us-ascii?Q?sUbiX/Ith8855JFwED3hDo3vssigP1ScqQF+ANQ2R6dBQyP456q9PPBlT0sc?=
 =?us-ascii?Q?D/wHgwWhe6uO6iRY/hSWogOTjiu5Ww/VuH8KRHf2MDnfqhHLZNilg3Z+TGQo?=
 =?us-ascii?Q?xX6rHbtfCff8VIASFuxN2QNmPEjqs4LboFpwoZbHTHF7dKv/hBnLjLjj9+o9?=
 =?us-ascii?Q?YTf3bFSi4QpOcsK7HV+KPMfBZhAP89IGp3V/QAkEGlb15XCegnKbbbvOyUZw?=
 =?us-ascii?Q?h4DT+x7fa/gkEhMsAEJ9hgGx+NwuAR0WnPknMYPyPW78mseXB+EeEMXg8cDC?=
 =?us-ascii?Q?55/CnzR0ssazqcOBVRItIbb7MuFOByPCJj+glx/gfE8LO9mDjEXs0FF95fYR?=
 =?us-ascii?Q?oo6tZ25Cmz3dW4he0pfOkvIw2hx3cLsS7pzI+NdzrzZ8lwo0arCwFnXccDFc?=
 =?us-ascii?Q?yGhMIigwmP0x+erGitvgemTXm4hY0LeqpiS9kif751fTkZhiJjdu5/X4IWNZ?=
 =?us-ascii?Q?TcyT96F/87BXjdTEqeWG59AbPlVFaTmC+zovWhnjUoE0/SR0goYSiXvc0jUq?=
 =?us-ascii?Q?ro8JNXsh+Sl/c94BlTE7+utpq6vcGJv7YgrabJ4V3HOkY47+wOqB/nS4Bhy5?=
 =?us-ascii?Q?hDEAFGpffKCdo/+jv8ZsIgGYucVhfZMSIfAjZhkbJiDJ05gmGC+ZxWBq2GjX?=
 =?us-ascii?Q?KnKCYP8zank5gBtHs6dRCoTfbTsL1NWU5tHK8BROb1SXWflchs9D6NdlgN9K?=
 =?us-ascii?Q?eOhJ6FapR7kdeU7FZtI+LeM8u+p21jLyOXMTfnMW+n4vYX7EeoKhIgTQfCcw?=
 =?us-ascii?Q?zJWnSc6L3u43+goBdc5qh4bFJ+u3F8GtQp9NgR2JeybrfKeLZoDBCJxF44qW?=
 =?us-ascii?Q?ZhdnP59Zd6xtVedoJ3Ixj7wnVVveEg1pjLnXR8SHOk5ypBcnwGON226aWw9Z?=
 =?us-ascii?Q?8WHeogv9hxDTqRum+m48o2uGAU2B7uuywdSEuYWhdh3vOP1B8c+p9iaeoIBJ?=
 =?us-ascii?Q?LnG6ARc/ZT2I6UGI1te1UiXYIw1lrPJ3vKcgwlaeB9mHiOMArHIq13P/SdsZ?=
 =?us-ascii?Q?6EWOpPy3EuEeMBzSvH6q1oFoFiIjVpev4UAYng+gKUWfG3OBlCXwaUGCh4C7?=
 =?us-ascii?Q?z2xfha/bFJ2qq7M4oHmv0Xw7Au2gp93nbu1OrcZ7MmNZwDFqr+EmHRgN+aFs?=
 =?us-ascii?Q?/wqIt/AuftGTUPJ16DQgNV1yf3G8iwqjr5AKocQb8pBQpp1bFTpwp9fWHM/j?=
 =?us-ascii?Q?BSh8Qor+YIH2bpQL1/YgmNsh08fSKM6LxhPcrZANDTFLMfPpPH3dZbbxTgH9?=
 =?us-ascii?Q?rtqSoyQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?stx+57zNWKs6eVSc9Q5qkRCOfoLV4i/8tsRDJCHRSO6BUig2M2ba4i4Pse1b?=
 =?us-ascii?Q?98frIQ7ZZu6eqlzYW9wGmGjSnIKOk8X7d9k1/OKhc9xYHxcqw5OfC+YLE+D1?=
 =?us-ascii?Q?UDFrMvWKfCgZbht5RmIbTCJop4D9R5tzePyLeHVbpy3rXEZEIFcVNl4c6QPY?=
 =?us-ascii?Q?TgYAVP0X7Tsy9JRORnHbEMjIm/lYM5v2gHFj6Cv39PCuDn5yZvvm5wUaU4B7?=
 =?us-ascii?Q?VPjyFdBTjHAX+ZQVeuIOc9W78fqi7GYBc2BqgLYmy2mZy7J4t+F98ZPuJyyL?=
 =?us-ascii?Q?jAHe1g1TVxIK596PSwNGNleEQv3ZZIbbHcVWAuo3wXnTF4z2nCZ3N4onxcYW?=
 =?us-ascii?Q?7uXAY7lswxtwkjKakA8j6SOwdMUCkAXoMi9uu58wwNVKEfZz/eGxOedoajJQ?=
 =?us-ascii?Q?1QZ8049B6xsgKm0CdmyFpgTzuQTDZE3GYVpqF+WYalLeNIiTb3lo1XxGXG4G?=
 =?us-ascii?Q?DDEuKbv1Xg3K4MVMF3gUO9TBk8W4zzFEyJeZuKJavi8EY2VPGiXK+VjdejFt?=
 =?us-ascii?Q?iYZWdOlrv8DVU5l5Hlkit2dWVtKMvLnJZ5hCHc2P9JuKc7112eGwS95Qb6ZB?=
 =?us-ascii?Q?HqjwQtcpSluOZwDIsXowY0dtFwoOhWklIOgNqiOaIzB0W/95KzDO62et6IK+?=
 =?us-ascii?Q?onk+EKwxv3KVvrYhLTR45XW+gZtITa74gWWZIgmUOwf2qgVwgC8Fq0gFoQCs?=
 =?us-ascii?Q?YZA85FhpVWq6QhyAXZ1lxY32QczAQuO+QFKa5C7fPjrvyZRx5/aaEzGxkOAl?=
 =?us-ascii?Q?De3vdC9wDEPknGivsuJRL1wiks6Uk2F+2aL1hTN2mhPqEL+nxsJ/sVPiwfWd?=
 =?us-ascii?Q?Je0EbcvlZbC4I3YJu+RFMBYSxr0l2oTmoic5T1wspzFALj9uZoTfY6JVCsJE?=
 =?us-ascii?Q?xF3zFC4NJqclfCEvPvlQRYe7A9UTFY9/9rYDka/zAoZHnGvSi9QpLubyr/es?=
 =?us-ascii?Q?Gy0W5yQCFZn78y7ag7a5CgEjAJUbVi0u/rr6ztyQG1MzXrqKcGCbHBkT9SQ3?=
 =?us-ascii?Q?gTUvu4IHxZ/lx2jWK7BD2MD/6c5hI7JIU+UnSTs813B08mLXzd1y+qnyxSuu?=
 =?us-ascii?Q?rkPKVBq1WHJgfi4TZiQ9MmwfegLiD3JPPEscX+KTLtu3e6NlRn0IoT7XTAjN?=
 =?us-ascii?Q?TIct5koSTK30wbxF3HkASPAjJ+USb5q5wMt++OPjCd6mkam48BTsCnhLqBEm?=
 =?us-ascii?Q?6DobWMbdhwekJ1/9Lsgt2YpPNVP+LUaLtaGFqjGc1ag5WA09s/DoIsgs3cf8?=
 =?us-ascii?Q?64OmTKz2sD07Qi3YD/BjIN9yS6BwlJyILsfTTRzlKCQjgZqm7pNyhkcUID3i?=
 =?us-ascii?Q?Re5u4qC47v38P3SrtFTmwzaZD2nG2J4Uf1xsF8BPU1Fhgr9+oamFdZ0Eloh9?=
 =?us-ascii?Q?268tYq8TwaOk5qEOQJ8pj5qvvXf5KxCr2aL/UmStB49iO+yOu4JXj1Y5D9i2?=
 =?us-ascii?Q?OAE7/zam8yMW7OvK8MgXLBxQ1JDqK94WF/IhDCgm0Ex4KB0bsa6OpXSoHpVK?=
 =?us-ascii?Q?GCrft3j/w+PL+vDwSH4L1OHhCFBrN6pfoQfN2fQBHsLii/gBX8pND0yY5uHe?=
 =?us-ascii?Q?9ZC9f9FtlUzY8b5KRIl6yU6nICVVJlJquJLdyOWEXlQk0PYH3sIfUTTrweqe?=
 =?us-ascii?Q?aM0ef4yDaPetHicMapXfVpE=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cea75a3-f906-4003-6167-08dc86a87509
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2024 04:15:25.6621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WvFq0mWoqLE3Pnm0E1SyT+Av9ztKVgp4I5QNm9RjJqrIbY+QuzatvVu+hQm6663CifpIL7ivwolRIvpDCOmRy8w3MDvBCWdHeueUWlSe5N3zoyu23N/jq/2k1VxY+pIG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB8206

Some Sound Card might need special trigger ordering which is based on
CPU/Codec connection. It is already supported on ASoC, but Audio Graph
Card2 still not yet support it. Let's support it.

Cc: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 8eea818887580..abaf3c1719f31 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -759,6 +759,8 @@ static void graph_link_init(struct simple_util_priv *priv,
 	struct device_node *ports_cpu, *ports_codec;
 	unsigned int daifmt = 0, daiclk = 0;
 	bool playback_only = 0, capture_only = 0;
+	enum snd_soc_trigger_order trigger_start = SND_SOC_TRIGGER_ORDER_DEFAULT;
+	enum snd_soc_trigger_order trigger_stop  = SND_SOC_TRIGGER_ORDER_DEFAULT;
 	unsigned int bit_frame = 0;
 
 	of_node_get(port_cpu);
@@ -806,6 +808,14 @@ static void graph_link_init(struct simple_util_priv *priv,
 	of_property_read_u32(ep_cpu,		"mclk-fs", &dai_props->mclk_fs);
 	of_property_read_u32(ep_codec,		"mclk-fs", &dai_props->mclk_fs);
 
+	graph_util_parse_trigger_order(priv, lnk,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ports_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ports_codec,	&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, port_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, port_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ep_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ep_codec,		&trigger_start, &trigger_stop);
+
 	/*
 	 * convert bit_frame
 	 * We need to flip clock_provider if it was CPU node,
@@ -818,6 +828,9 @@ static void graph_link_init(struct simple_util_priv *priv,
 	dai_link->playback_only	= playback_only;
 	dai_link->capture_only	= capture_only;
 
+	dai_link->trigger_start	= trigger_start;
+	dai_link->trigger_stop	= trigger_stop;
+
 	dai_link->dai_fmt	= daifmt | daiclk;
 	dai_link->init		= simple_util_dai_init;
 	dai_link->ops		= &graph_ops;
-- 
2.43.0


