Return-Path: <devicetree+bounces-76292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A363C90A194
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 03:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEB6A1C2085D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 01:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E4C23B1;
	Mon, 17 Jun 2024 01:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="QMbCDSiX"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2080.outbound.protection.outlook.com [40.107.113.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D0623A9
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 01:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.80
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718586418; cv=fail; b=YH3F3xLvBgbpEQMpvQDDGdY5Or9dejNhBp7Jx+9cQVy3QSkNDN9387s4eV9iLYuCXnyUnAKX08ZuZt7fA5tGyl0hJ5U4uhrV/N5IUIMNd4GIGLw8TSWvTTXorQGsRvgKERqZHLNVoKFJ9ZttkWtM62lzp0xq5nxi3fnRYvEIGqA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718586418; c=relaxed/simple;
	bh=pK5e2honpodLkOcYZhrvlZ+Yw0jcYwuTA+gs285Vy64=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=I/yd8aF37myYRdLp34Cdbi9b+Ws392+BgPfM2DSpvKVU1g9xPkeIdB07mhxjNnYd+mXkfMPDirA0emugfb2ll4/qhFbIo6x/YZLWeKQAjBh13wIlHdmgMBVSWl4YDdviuKNEFzxX+teRAzfVjs6bjWItbx3A2mXLfeXqRRZoc8M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=QMbCDSiX; arc=fail smtp.client-ip=40.107.113.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPlQf6/SBjopypZ1PsKTr4Blk5wrOThpnU9xNTx3PXef9r1H2lNRWkGARPh2uV06GLDfrIwsGQmA0UNVPIRhYLGFctIQh2rO/rDjChMHGRSvgEOTZJGRHGjeQxLi/lRFGjlhU5JUmiVH570xvmq1Nyl+1eNK8X4UkXGiCzgMl2+WaaZwE1ngtIY28E9fJqI4/c+3ud6mO2cQxqIHafZ9RGPIYgxjZkxlo91ET/o6M3W1YAQlyaQfo4tqlE1JLbvdKax5UGvPn+zxorsMYhnk96vHk8enhbZJsSrr9MJEP22RoxXzTgnNGf6narP/rk7FV9NVbkNbRrgmUsgDgmQhzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Ghxl4FQQlA0M7odY6cDxw9s0H2+Aloz5BBJ+3hM8bU=;
 b=oGfX5/2/4wSTeB+Cqt4x76dejymbT9e/gSm9oMdv67ViS1nOQjIXusAObhiQpoa7Fs9SDPlitBe8OF6mm2t/7rFEFn7rObDM4ml9x7tlW1hn1YMxQVt2A6boqLFUqRjMWvdTl61C7zRqpr0P8QXBfuR0cj5aTh65HIuJwDMkCPw8ACxrJ6l0jCMErTUo8d7Yl+yZ47+T5xPOjJcYnswzpIuNtd2HWg+eSWkVxXK9FaW/aoZxX3RsSvcFFt2Cpxra1WhPe1FIcH0s7HbaFsZg1b0af/v0LQYHk2o+6sMyRWGHTBPzFEXRMilipqJJDmYbLDFySKttIRxRyopjPFpg0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Ghxl4FQQlA0M7odY6cDxw9s0H2+Aloz5BBJ+3hM8bU=;
 b=QMbCDSiXfyzv8cOKETyhperg7yN5pvahV94R8joJvGxZgJb6VDmgcs2/z8bhphC65ZaRPpZBt76CDqDPDBeQYFwvWsEc8m4cTVqgeTarWXOIJ2AndjtEAgRMxMTQs+nzJKJ2XNndl53+WNk2FWj7pIqIK+XK29I59Q3183gJzV8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11912.jpnprd01.prod.outlook.com
 (2603:1096:400:38c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 01:06:53 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 01:06:53 +0000
Message-ID: <87bk40s7gz.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 4/5] ASoC: audio-graph-card: add link-trigger-order support
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87h6dss7i3.wl-kuninori.morimoto.gx@renesas.com>
References: <87h6dss7i3.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 17 Jun 2024 01:06:52 +0000
X-ClientProxiedBy: TYAPR01CA0218.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::14) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11912:EE_
X-MS-Office365-Filtering-Correlation-Id: b2fd7785-73bc-4f53-af8b-08dc8e69c655
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|366013|52116011|1800799021|376011|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3SMvdZphiD3D4FX+A6SxR9TdF9Lryw6fYWFDKaS53fIDYeYzkIZhZGtu7siQ?=
 =?us-ascii?Q?1Yn1KxcKlrO5N9w6G0eLC8ea2VWIRzd1eX5lCUkfmQIuTrw5PII0nPw5KnNc?=
 =?us-ascii?Q?cSDW+YS+qHOUQxjd4evIGHpiqEvCXiKW+hdfXEIx39/owidMEc2QjOaPnoqT?=
 =?us-ascii?Q?oEWhXS1fGrBE6AxUormh0HIWHt4zgViNkOL3B3J3pMYEjAsR6k7UMG02QQ/s?=
 =?us-ascii?Q?WJhqkIxY9vwpFh0P1gj+CJL8mOKlNcRNICOvXG0/cydQZrE1dEQ9tJdFe320?=
 =?us-ascii?Q?Hk5jiUUsBZvA1qHtc8jZZr/Gz6e8yMUKYMm8mlZPe5H7NplGoeEu9QxFrfS2?=
 =?us-ascii?Q?q526uJWQlRDM2JaTdGped38HgzVu09PQXxgCqbe2ojPU/oEcUIoK2BFgQjR1?=
 =?us-ascii?Q?SOWn6pAXA4AGgNaS1mG8+oO+2rJGofI9/IuCTTGa6lPCaGu30z2QvY2BpP4P?=
 =?us-ascii?Q?4J3CUfNh3kzp2FjYzrjeMphvCl1b77T2iI6ESaFuXbGBoKM9OLEALDt1jT0A?=
 =?us-ascii?Q?/IIb7Lw9mMTZhbwr+Sg0VVb8fUcvrRlILunQ5594qeaWaFiNDoV+hb8s0Gc+?=
 =?us-ascii?Q?EnIt6n6bY/Na7Ux1d7Qk8AqQFIXNBKLuPeqsarUKFBIZveQxKMtXNoUL97ua?=
 =?us-ascii?Q?eW7YFScAU5EEeUeKtg462R7nc6dJI+1ireKHbzhLE7UkxGgwag8fPU2lVbPA?=
 =?us-ascii?Q?SB2hIqiXzR7TuihFXdtK5CMqge+wZAy0kH3KAMJmKAvR8aRL03Had2aANO/y?=
 =?us-ascii?Q?NdkbnZQm5cM+UXnwu7uMkehXVK7GbepGGl1kCbH4sCN6vb5Bv4ZhUX9lo4lR?=
 =?us-ascii?Q?gdZCEDL6Ha+/+sEueYQLc+SvESemlyu4V3qQl/V3LrSPFqKf3wiwLOA1KBEH?=
 =?us-ascii?Q?gt1XJg3pJVMxCrjv/FAgaAbKrvb2G2MXQsO+kcOmx77PGGOd45eHLv4MciYJ?=
 =?us-ascii?Q?omQtIrQ1H6fwYPPyfG+9HFuNQ6Pd8zoTmP7zEYMIyDNuFCXmnmLXWkaz1Chk?=
 =?us-ascii?Q?cECDwKJpx0RNNOwqWUQqVn1G+zEv+mW01LTOHI148GSgiCGiHlWIbleNQFfi?=
 =?us-ascii?Q?t+yOtn79ZQdG7PpHvBuPMvpM342dLxHjgsEXn34V/kyY8q5BjDO1T8zuZiqi?=
 =?us-ascii?Q?uFwk6RyyLXcEqjqm/r8eVBQaByxWTVW54JstV+S5a7IMoFoMbcMBlPMwG35R?=
 =?us-ascii?Q?VrWeYiK/kDBTJMrVOuF1//uEoYU/P7GXaos4WC86mDjyP4fq9qjIfkM5FjwG?=
 =?us-ascii?Q?B1WZ5gr3Xoju0MW4v4D55/XfJQ57tLmzmzHhQASaZmgjUZkVMtym97LunNaV?=
 =?us-ascii?Q?3/yNZ3uQIZJuwjmmJxUyXz16XB4usp41Egzjfbf/ypJsZ3EeFh3YZRL93Bnk?=
 =?us-ascii?Q?0pt7DbI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(52116011)(1800799021)(376011)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?bqQFmNCQHG3NDLt0F14r5utJHYZ2tFqJL4ZeZaG8+b8J2wBG1c4EwAv3XIk3?=
 =?us-ascii?Q?g/mhrCKrcVsAuzd4CfCpOZGrdcEDPjcKGif19uACETPLlnYbdWMOxgxerM/E?=
 =?us-ascii?Q?e8M/88GqDhYp5Yb+dUkfoyOwZSu6tn5YXzhTBnsxSVPLQ/HqDgDLKvR3cCaU?=
 =?us-ascii?Q?ZuUKabNOxVCLVGk9JV2R7mAiGV0/R7KU5H28tO8BcmxJaZYYZz2OIyCWNknT?=
 =?us-ascii?Q?w0JVWhdR1qU0oJkPKwepQDsKns2uRl2ghhwLB2U9vgL+AiCaUNdfvN3XV95d?=
 =?us-ascii?Q?hW8ysg6a5eq9IPTw32YW1owmnlZPx8R7xMkLK8v07syVc0gV3PirirWHUoV+?=
 =?us-ascii?Q?6UevXlPbMxMVrpU1isX087sBlvww0nRg6kyiWsD+e+QG8tMNzY0NV90uvc+s?=
 =?us-ascii?Q?buhPm04MJYzm1XerPBbwrDRfMG8mzAuI0cgDJbpL4jbXwh+jXFzlFfciAa+V?=
 =?us-ascii?Q?A0WQ196BQX+1ZjPpDzvZIppDGdZf35MW52AUkiZbDJsgkT/otLe7D3g1P9g5?=
 =?us-ascii?Q?/4ibNDhJvAs7jRdALSZS0X/KoMt5jSrilMVN9RQ084K1jijKV3cNo1PmPcZW?=
 =?us-ascii?Q?eeBjXxQCvDRKuO2QcOU3VDZEW1lN9ebT4OG3g5WC4CN4XwkzsbjyTvyYTePk?=
 =?us-ascii?Q?CiDVPuZ3bQm5jOgor00+6RbcZj990YUtPwdAZaTedFCNmT7HuDd60oaIh8dd?=
 =?us-ascii?Q?fV3Y1pnWW/elsXiFVNLx9BQ0Uwdfm27d7Fpwxy1qej3952WQayCi5Ym0P07X?=
 =?us-ascii?Q?ConGb5d6OwjEJJPh7p8bf+P0AyQl31QmRJ9evMbdNJ9Jr2Yd+OTz89nfw11v?=
 =?us-ascii?Q?tT6GnxLWuoEL/3EsuKRyNTSZZ8ZUOD5S5oknkZ6KKyQuLMw3+eLrHX2RJeIj?=
 =?us-ascii?Q?srS1F6p371Pi0RvXb74gob6AV9wmwE0r4dLGi0rGbjAMYI7XW64Iw1uoJJEP?=
 =?us-ascii?Q?VmtgM0FhGoRL1OKGsqbMrpL9yjT2QQYh+Xaqj/VCuSLodh7cUcWb255ovYVQ?=
 =?us-ascii?Q?UeSsPGE6XhdX/dvO+LISA0CjSpRa6gskMW3DKsFGYpvTJug3kLMj5O+eiHc3?=
 =?us-ascii?Q?lMWxoLQVEqHnM2UDTSmQnxr9cbu1ABsb1mdCQnXVkyX4j+HMgD1Y6bzKlKVo?=
 =?us-ascii?Q?4Li5gQ4Q/brivRq74e4mBUS5rNPSSjhH/a5vp6NOJmXnO9tdnRNZ2HaJ4d9s?=
 =?us-ascii?Q?azUkmJDLXg8qgLWdZpPvolcWgpFS76JvGdzIAx6JZ5MDkpZmQx9EFf0aly01?=
 =?us-ascii?Q?6XO/47cgwHREV0A2dTtACmNxhu9SPslRDkTmPs4IWw7t5EVsK/ojzs9K5nZG?=
 =?us-ascii?Q?EHD1wp7nSmlLvWRKKePbih2mtoALVqRHsVK8hMwEsARIx11dVpdNvCriEmqF?=
 =?us-ascii?Q?SA0S/KtLYQQaVBIabyLu4hfISVG9aJAu+Iujn6VDoVNYPRCkFjfzDTX2cSg9?=
 =?us-ascii?Q?RkwvPssUTdUz7NxbKgsuMmFFvQbLOhcI+0H8e42FGnh8GgsyaLJt2EUQKfdB?=
 =?us-ascii?Q?a4aCH6415dB6g6eCDUD3QpmsSkig+kwDIVxnLD9kYWOgBdc7QCHFOg8eIu0i?=
 =?us-ascii?Q?alff1nTVW21QaoPBVyRkel3NIYNetCVJnZJ096cO1xtIp7TunvxRriUABoxE?=
 =?us-ascii?Q?PM725AasWkMbW5QecgaPY7o=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2fd7785-73bc-4f53-af8b-08dc8e69c655
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 01:06:53.0893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KF+4iojU9WQIkQj71o6u6ty2JAn91DBp/xhKQGcdUWjCmxwebYrgez8sVk4sgDvJ7xKLEE/zCp4hPb7Ls6eHUC86S/q3XwW0md8qBbWsm1i99PvOZ/GyrmEuB2B0FNLm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11912

Some Sound Card might need special trigger ordering which is based on
CPU/Codec connection. It is already supported on ASoC, but Audio Graph
Card still not yet support it. Let's support it.

Cc: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/sound/soc/generic/audio-graph-card.c b/sound/soc/generic/audio-graph-card.c
index 7b981aa8690ac..acf7d92d21e60 100644
--- a/sound/soc/generic/audio-graph-card.c
+++ b/sound/soc/generic/audio-graph-card.c
@@ -143,6 +143,8 @@ static int graph_link_init(struct simple_util_priv *priv,
 	struct device_node *port_codec = ep_to_port(ep_codec);
 	struct device_node *ports_cpu = port_to_ports(port_cpu);
 	struct device_node *ports_codec = port_to_ports(port_codec);
+	enum snd_soc_trigger_order trigger_start = SND_SOC_TRIGGER_ORDER_DEFAULT;
+	enum snd_soc_trigger_order trigger_stop  = SND_SOC_TRIGGER_ORDER_DEFAULT;
 	bool playback_only = 0, capture_only = 0;
 	int ret;
 
@@ -165,9 +167,20 @@ static int graph_link_init(struct simple_util_priv *priv,
 	of_property_read_u32(ep_cpu,		"mclk-fs", &dai_props->mclk_fs);
 	of_property_read_u32(ep_codec,		"mclk-fs", &dai_props->mclk_fs);
 
+	graph_util_parse_trigger_order(priv, top,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ports_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ports_codec,	&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, port_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, port_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ep_cpu,		&trigger_start, &trigger_stop);
+	graph_util_parse_trigger_order(priv, ep_codec,		&trigger_start, &trigger_stop);
+
 	dai_link->playback_only	= playback_only;
 	dai_link->capture_only	= capture_only;
 
+	dai_link->trigger_start	= trigger_start;
+	dai_link->trigger_stop	= trigger_stop;
+
 	dai_link->init		= simple_util_dai_init;
 	dai_link->ops		= &graph_ops;
 	if (priv->ops)
-- 
2.43.0


