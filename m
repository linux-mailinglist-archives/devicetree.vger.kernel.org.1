Return-Path: <devicetree+bounces-74813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63177904B27
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:03:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDB22283243
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 06:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E63A13699F;
	Wed, 12 Jun 2024 06:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="Bz/uNI3w"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2053.outbound.protection.outlook.com [40.107.113.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96451136997
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 06:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718172176; cv=fail; b=Qn7y6q/uf6RBZf/eCj27LmKDAU8c5qzRvrQgWN8HAFKdUXlAYPGOCoEfDob+nLWn+7BXiRqQcnnuAM9lxpHdk8NJrQZg+q7r/GUWT6iKY+2bWaVjpYC4rVR8TVasDB1aP5nF5Y9+/zQA8l0uK+xUlKjaR5/aGaynzaxWdqt9ETw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718172176; c=relaxed/simple;
	bh=CG5rkXwSml2V7XW4YbD8DjDUSkwUwpblteGsQVI1Mvg=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=XQIr9SMjkfRehkK4ApK3WIrorVhDMcab9uVdCZ+d1Y+lbytNgT2Vv/8CNFq1adCJObHki8ijw+eUHWU1nthrgut0gC1NU09LZ4ZyUaLEfHGL5hpNvcxNcV0nqEjQrTLMcpflwkfMaliBWDG2O7vCnjMqzWQ04nar6d1Ejt9bDnE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=Bz/uNI3w; arc=fail smtp.client-ip=40.107.113.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjIv5GmNiNYb/BZYrf8ciROGGnmOvqSP1g3OcH10v5Zq3gkZqMngbrlzHxMoC7xDnIGyiUX9aXl3GDLeLy8HiQFPF67APgv91T7jJjIiuuqTXMn2gMbuXYUr6glwMLFu+DZmL6PUS/jEMSIWcDYg92y0EX6JpCGQzoqzwCL5r8LAMgu/V8LDYfdO3lCAC/0Pdyn01kUwJYIgOp4sTQcOP/YZly1kePENIK31+NfpSsmM7RoYbMpXlDR9ya+PAwkCBmWZJKdzh8dLKnxgJWXsbr88znv6G4y37GXk+AdalJd+Ak3LUs40TB6PqF3MVcny3oYQAfX+8k4DnGU3KA1qUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1b7P5PleKYRpayNOEiYp3U7P9vb+s9/6lWLV1YpAKY0=;
 b=Y5ztQnMSt7fN0mSppbsJ5XCYTOnU2jN+3u0RBx/sWb0YwUmO/rA7t+tQzEtJKg0brOTypkc8ihwIVXuozp8RiLN8IYzX/E6MpFeRoEBgvVfkcayf55AsVK9Xv4vLfVAW2JNIDqmCvuBnNKmDrgSYEaACs5B6h2DiOtCxTtsK9Jpk2vx4GJvYcDt2C03vxjJQ0fYeNTlGCmOhQfOCgT+2gZj5jsgzKZIbVmljcZf9uLnLSI+arVQcd8CGIaSYhw+mmtZy221MTj33J3/+yQph3sMaJW4x3HoU8F8LzcaXQsEijQ/c4kAYEykvyhbQOkkpzmPffVLo9GabOOj1YmBIQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1b7P5PleKYRpayNOEiYp3U7P9vb+s9/6lWLV1YpAKY0=;
 b=Bz/uNI3wF9nkhBBuwRPb3b65SaiCHjpZ+7lCZIViNgAPKPdxuZK93UQ1YY+Jt8OtwpSW6h9UN/5yUx8u4FKqb78K325RUpwUyp9iX/UZ1D/tBPYQ/kenLXtU2Tw5jdXlGzo0zNVoqRtFZfa4cw+oJVUAQK3QDGjGYHp2VPQdkMM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYWPR01MB8904.jpnprd01.prod.outlook.com
 (2603:1096:400:16c::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.39; Wed, 12 Jun
 2024 06:02:52 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 06:02:52 +0000
Message-ID: <87msnqzoj8.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 5/5] ASoC: audio-graph-card2: add link-trigger-order support
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
References: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 12 Jun 2024 06:02:52 +0000
X-ClientProxiedBy: TYAPR01CA0222.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::18) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYWPR01MB8904:EE_
X-MS-Office365-Filtering-Correlation-Id: c61a6b22-616e-48a4-f99a-08dc8aa54ba0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230032|1800799016|52116006|376006|366008|38350700006;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?zfs7Mj/6hGrNfXgXr4xUwQEtzoPBJvLAb6IXZZwwmIlOFMgNlOu/qnZshP+6?=
 =?us-ascii?Q?fieBiEToYBpRZK/L75hCvFUkC6CFvdEyma/BSnktrnxTFIY3ZWKsgUvUfKs3?=
 =?us-ascii?Q?7ufN2DBy1S06ecHH+sr8Sq5V2bVXfw30B8vMY4yhxVwVw+Lrfz1+6v4dCQgx?=
 =?us-ascii?Q?oxwzCE7qY1fxiKWlBYb2b5w+IXlNE+50DZ9N8q7gnb4B1SvQzQBEY147MNAc?=
 =?us-ascii?Q?XKXN8SBt1ibBDqViI1A2Szdtth/W05XMsLDYw0W73lh9zaLnoJKn1SWAQ++Y?=
 =?us-ascii?Q?oXuTWOrIOukp/WoeOF50K05SzlKLTFGnRUILVp46Zb9NvQEW+GjiBu/rDjPx?=
 =?us-ascii?Q?3vT8zBPIyEdbmJkiWpRuwAK9Q2ZicFSaySyxcqx/PN6dEicOnL5XqtCrFDf0?=
 =?us-ascii?Q?9Uo/rNvI31J8bdfdJ7EscRkv2gtRZEqVnU+0F9QdSBnjADZ1Mto7HjWija6i?=
 =?us-ascii?Q?HXCIXsPwXBJWi2fIe3iQxUvBY09pXTMXf1kotCYDksLtDHDFVxzp8IaHWgJz?=
 =?us-ascii?Q?ELQ8oBU+M3j7sWFpxGvLKhvm9auEIxS2BvA25357Ip2IROtfCfhSw/Kb8BHf?=
 =?us-ascii?Q?Lp1cBZtli9QOaItqW6I01pOYF/V+svB1FXgome2hDbeAXn55TKe2qjbVPxwU?=
 =?us-ascii?Q?gEn07X3A3wi+u6P1Ec/4a0nRqsFfHFqWjdpgyB62hSNfkvVW7wdntNZlH/Tu?=
 =?us-ascii?Q?Cqy48eR+mH7J4qitp+s/KxqbNuKthpwP2HgxNl+6r5yBFllXSGa84x03rVBM?=
 =?us-ascii?Q?fwLvp5zQqBfKxvaIzsHqdtwqbab+S6DLTuEzZCBEGPnb28RptfiNGvWqLJem?=
 =?us-ascii?Q?p9G3ka0x7yZqaEP4nDDowV3T4Dvu5wc7pZVe9/kVrgeXLcCLZPBvhCGtSCHd?=
 =?us-ascii?Q?GG/f0pV9cn0koaArrFfP8MQxSxHeaEhyPd83JrKTAfKMHLnv0XOfu/4ef4z3?=
 =?us-ascii?Q?GjZJtu9yc2I815L3HSrCVfgJr5hdB0KNPvX1IVPKFzI9j+YmomRjFOYPK6Jw?=
 =?us-ascii?Q?9+OdUcwhfgSqIaEqRXkGfIrewOYTnE62fG9vXqPUwaoFtFxVUHwuRwFMojZV?=
 =?us-ascii?Q?U3IXDuatquBK8fc15azcfVF5gyFka4IepPshzP+J3E9ODSgYJf7m8cDddqFv?=
 =?us-ascii?Q?d10vcbYMozRMBmdQckYJ27Rm/Uy7W6UZwJcJnhN2I5vahLRDEEzKtnt0Dn0d?=
 =?us-ascii?Q?TG3wY629S7RHXkJHxDu/MsvHGg5IeR5yyiVN1Eal6Rz9D4zA9+jnp+PHtqzw?=
 =?us-ascii?Q?n+wyMayJ0q/1SknompSaY/JYP3zDUdM8+dKBAzuzeoN8NaZV1WeZiABOCrwS?=
 =?us-ascii?Q?t9v9wT4qIDVTJfBdQBouG7GdJNO+8ZUTpQXHmON/LKT/37N2YRymsLedcVZy?=
 =?us-ascii?Q?OzLUQcM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(1800799016)(52116006)(376006)(366008)(38350700006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?RU3yjsm1u2VunMLI+X/2eNSSnvkKznimAqD6MxwibDSzBkNnmQ2gxPE8sXB4?=
 =?us-ascii?Q?BVyZuiJK9IkrpDh8mQ968DgEYQx7UEdSCDpL3h/eySJhni8VWGvCZiNsMfwk?=
 =?us-ascii?Q?wJvCsOdo4YGWiPrE1RywiyDQLc5BaQMi1SVVEfqo0+GafsovndJV0KHDCFk1?=
 =?us-ascii?Q?vqotv+GDl8qNida7xI1NCKCFfz2dAPXjExw84ZefzpIcr9vupdL8tDUDjasY?=
 =?us-ascii?Q?QCfrSxjTyQ2Iz5bivswycLrFLA2QT6jJwAodvDEMweC2Y1gUc1smRDRicu6X?=
 =?us-ascii?Q?6VF2aZaWiHoY2W9CKLxqk1bAI/9hYDJvPlUTNs5ueJEfnxLFXJxigcivoZJn?=
 =?us-ascii?Q?/Yp/6pWyS2DxmKV+eYnxPytTmdBEKWIny9seg1WDXvwTokOroL1R7/ESSViy?=
 =?us-ascii?Q?Ui5G/18kRTfAludjLDRHFeVaT4FoBNKWA+hgEZXxHbtclEYME1KmAcqvMyYW?=
 =?us-ascii?Q?nBz8dxKQzgHZCBZB4po34Xjl53dbQvkeA2O+RC6KxI0VL33W+U2gCrwljROn?=
 =?us-ascii?Q?gIvvXqAYsI0DKcgMiMvLO8M9bhnF/kr3sBixdnYvv2wTyET0wrUZvhBDFyhG?=
 =?us-ascii?Q?9jtXaCXheZqo+9uMBaMbNfXMJXQQQoAe6Ur1xrtJUMsQWyVYH2Zl7f/nyrPP?=
 =?us-ascii?Q?wPH2j0RLGwW6fPY6nVq5/S6O5/EAevhDObuNanwnMTPSuWG3XHfj239yPUT5?=
 =?us-ascii?Q?ay/NRGNWJAcm5HcCke1Vh02/F8aKmKa06q8aJyoivM13lcOR1RmQG+Tn5H5u?=
 =?us-ascii?Q?pkRtdA15DO9hi32o7McHaerI+f7xDQKqzjkwTk49wNMbkkQ3PuHsIHgrsAl1?=
 =?us-ascii?Q?WoBnqm2nuIwJM6jgonS/Q8RjVhLjwz9jP7bYmrwmqzNnV1jWnGh7hD4iAA8D?=
 =?us-ascii?Q?KXARtYbUUtJ6f5UrWQ+mhAqI4kA9R+D8iB0qa6s2jWya04fKa8+2eprSZvPJ?=
 =?us-ascii?Q?GO1OntQoK2TpV5WeRzLHxY/caC/8yCmRk7vZvjXzbv2TGObWGnG5p2Ki7h1e?=
 =?us-ascii?Q?AV3//CUeutsZ6JNMMVn4p3VZvXwmIYnP2Fo0l9OCEbpCIy980NTizXv/QpaQ?=
 =?us-ascii?Q?xCT6mx2S1SF7/6xR2IU1DZdvtZ4xR0ICehcosjFOYUUtzx4jqoxkgeGzAjG1?=
 =?us-ascii?Q?+q4WbuX9gsKm8AFx6VfPhMscjCYTtvX5L2KeStIj6x0yTcxFOMv1m1+uPaeX?=
 =?us-ascii?Q?SGqcUN/LLf6dq4Y7uYdx7n3j58kEVFoWBO7/MiACFe2Om5NYV04VaxBceFJZ?=
 =?us-ascii?Q?/OvoEYwZqA2lS95yidKAuG/3YfW/jGP0vxmWzr6cDwmq2/SH6DABItXBGmxt?=
 =?us-ascii?Q?0zRDrISrVDz2ah+MkyrAYZ1BX3Dgutx7oWw/WWPVFwlOJBSLlYHK4gu6+7+r?=
 =?us-ascii?Q?Djq1jbl7G0SKQXtAuEaOiTUJiui5ZsCngHiD/2bDdG+hjtb6EjaViRsk+d56?=
 =?us-ascii?Q?J8w8e9W0IrssyIAWaLO77RDjePqnsQbuZ5aWgc2gjZlrepPAfGPXi/Wm8m/G?=
 =?us-ascii?Q?7NtSlYlN24XRhm4rTYxABYOoJjvntLbLzUJ08LTqWe/qS/ol08cxvv8AOobN?=
 =?us-ascii?Q?WAOyw0sRD/DsoZWGvk4IH465SaxE+q+XLQBduFd06FALxUggw+0I90n9+7dW?=
 =?us-ascii?Q?b7XK+I1d8fTe/WoLH+LdjBk=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c61a6b22-616e-48a4-f99a-08dc8aa54ba0
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 06:02:52.3786
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SeWPdOtTc2aEiaOen5vWNmZvYrk+8mDaqIZIrusZmBGJcl+oqyOXZ3O5hGR0Ko0sUuB3YAAJ0NXuLbbc7CSbWysGFwt1PpbkzB49mKOY6x5dHvGj3RURQFD37qUMA67X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8904

Some Sound Card might need special trigger ordering which is based on
CPU/Codec connection. It is already supported on ASoC, but Audio Graph
Card2 still not yet support it. Let's support it.

Cc: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/generic/audio-graph-card2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 8eea81888758..abaf3c1719f3 100644
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


