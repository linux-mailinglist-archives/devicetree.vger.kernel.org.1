Return-Path: <devicetree+bounces-74809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE79904B21
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D5651C22E6F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 06:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B5812FF70;
	Wed, 12 Jun 2024 06:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="I/4Ge35N"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2042.outbound.protection.outlook.com [40.107.113.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ABA12F37B
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 06:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718172151; cv=fail; b=JOo/kaP08qBC5m5wqmJbTo0HIQB95F143YY1LbEUXNKSfvsPg32a+FrBWuzhl93EI8jbxbeTtFOxEgQIIWq4yDAMgghuApqR+2p0eZTbhJEyEcByTxD4wdvV1vznLb69kW/WQof+xppL9J9w9QswZsBIweVz2D4c3qVxW24DdTA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718172151; c=relaxed/simple;
	bh=Jkvxk5qGQTgtDT6+nbHaEAV+YldxBfCT9a8QCPLghAg=;
	h=Message-ID:From:Subject:To:Cc:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=REVhYP1VX5LjBoGOo5qi6eWHEqPvqjgAxAX2KTAxIIT7yWxLGSbbwTY6dZNNL0Nzm4ye6OlCklvGopEOdiJVkw8COQcrlzarIotJttHhORTcq8oFF/Qqtw8hSg5UBTqQsmZyWJLRwcj26WUEGyLe3ZbVGT1QnfPVGgucDOpW1Bw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=I/4Ge35N; arc=fail smtp.client-ip=40.107.113.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mga25p0j+4qmbQvXQYIgpPtOW6b5F12XPiu63IG9MOgjymy8m4U4hIOjElnSSrzQAVlKGd65JCxKsy9i5fYD4nwWZ+OlE5Xa4pfH47v0dMX1Cv0iOAW9B2axyNPYns8cis1aggRy9mBvD9s1cG52Gn85FtjLLnidY5SxU5XbmieOJjREmC8rmgYpKHSaisGSqp9y2qVO1aTxtDqV/GaJW7RwPRxvPDEzllAcsnr2rMLq3ou+DRdY7rbXvyhZ8wEUc1UWmBihYny3p3CrD5+bJLsYjEFhYlcl79F0yZsDgBsDxjIwX+eAvj6g3knRDexCP0ca0x19/2ln4lctsSr9oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xZeNIf5GSuaRxxSoIIiPp7r0gMrRMEz9oNiV239Enww=;
 b=iQsxlz5W4mWcvdh1uOPhUoaY4hzcjn5PlF9r1Wa8yiO6TNhO+3osARR1ugLtdbvEbr6xFFLmrznJttG50Ni21jkbr9jyRtqaN1dbzulmENn+kfc9ZPQlRaUFYOUPksH4mKtfkS5PEDQnzSow5X83jMAWMrO/aHwitqNKoGucMV6dHyqeNUCVp5wqmSSi/HWPYS230IqK86E6hkYt1SqLcfvbfDlJOwPrqA+l/hW6D8AMeEPLqDV7CDqvzS/7c4rwlWAuHyJ2z4F1Q8LwuIx12T4izkMh55C3V9B/OWfA5N2K2Ib9v/SGACIH1TmzRV+dwq56vSzX1Wde0d6seX8gHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xZeNIf5GSuaRxxSoIIiPp7r0gMrRMEz9oNiV239Enww=;
 b=I/4Ge35N9scgXD49OuVxxU5cUqRWGwI3pe554zyDppQ4/duIIjWNIeiMURphr8qi//QL00dbKfVFrpIckYbeVscAZFyHiH//WPL48Jbu6rumFWUx91zBbeQQDTXgp6fmccob39VQgEE2P/e5hwVtOc05E/24HZlreeURIKkMftQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYWPR01MB8904.jpnprd01.prod.outlook.com
 (2603:1096:400:16c::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.39; Wed, 12 Jun
 2024 06:02:26 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 06:02:26 +0000
Message-ID: <87sexizojx.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2 1/5] ASoC: audio-graph-port: add link-trigger-order
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org,
	Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
References: <87tthyzokk.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 12 Jun 2024 06:02:26 +0000
X-ClientProxiedBy: TYCP286CA0235.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::13) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYWPR01MB8904:EE_
X-MS-Office365-Filtering-Correlation-Id: ba11f17d-41e6-4b24-3833-08dc8aa53c4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230032|1800799016|52116006|376006|366008|38350700006;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Cb5LeZ/HBws/MC3Gjq9hEVAjkoJNfg/HdmLIubd8AQhP2DNM1QTLMIhlb+E/?=
 =?us-ascii?Q?Spfr1cpxwjad+aTdIRAn0934/pFTtD8/PxstqjeT/ObyUtkmPjqVxsL2GSto?=
 =?us-ascii?Q?RHwcYIbTOT7j08/72MNBL+EkIvI7Q8oIdHIT64riWW8hKnge/6D0TTV1kp2p?=
 =?us-ascii?Q?Ehe3eg3ONmu4Aoc8FPEROVWY8ea26dsbzwZ5BETTMvTeiYS2jGFS00hJF7hG?=
 =?us-ascii?Q?jaKJBD0wPeuVLdHaSSROqRMhLPC2oeFqXAq6/u+J13hMSzss4Y+4hcSOGW0v?=
 =?us-ascii?Q?0/Lr3CUvaEZAjzC/j0kulu+MdLJS4o/PwrPnpwIrcfILvQstqBwVMqqSIuW8?=
 =?us-ascii?Q?Cqt/v3AeScvpoTIH5nlBMGSyJ//VcNV+jiXuW+IdxfoOUOm3GzNHjLg1jx9R?=
 =?us-ascii?Q?XHg8CROox9AoPje/3xm4DD/soQww0eqsUIJtCe01iBatx0UqRCDvmsm7LM5X?=
 =?us-ascii?Q?+A4NSZVnEs00o08dmmJADHmPHqZkHrm4QbbHS5w4nsvVx7JmNTXgl0Zy+U9z?=
 =?us-ascii?Q?no4djZMDkM2f0mG2ZSPzGbpk9mKfwcj5pqBOnRYOttULdjEC3uuRLELubkQd?=
 =?us-ascii?Q?utIzJUZTBAzfwC2oAqpXHj179E5Xfs/dUyrvFwEpXsnFLvYujtlPnli4e8bC?=
 =?us-ascii?Q?WUaJrCg56KRWDRnSxAScvjE4aLQa7GtNDhodi3Ce/+dsw48Qtcr+2IwEPgyb?=
 =?us-ascii?Q?22eWIfxQk5OK+IRnXjpHe4BIx/hesij6WMXmLVDCfbpNaEm6boN//o/6B5xA?=
 =?us-ascii?Q?3Gl/Uq/kafBsu+D8/Qa5fRUPjlbXBDLeRRlHS2Jmw3onCXzMSRPIhnrblk0p?=
 =?us-ascii?Q?s/SzrquOM+e1Mrgea4m2Zh//Uh2ZoLZoPwdHY3WjzMEhl6wmpclE60hotGO4?=
 =?us-ascii?Q?W8fzvimtIclFBZ2bsZ+BEigZdP6J4Om/5RzVMZL2FzkXpsJuRw0wQvN3vriz?=
 =?us-ascii?Q?OJ+xWAEsIRNbK8MpOXBCNZewzQqsCpsiretdeVvhTMmtkJDB/wKn//07EtYF?=
 =?us-ascii?Q?SiDvRgOelU4HhE2LJ94+UNFfUN36qaZsSclM34DCtLv7njuTAH0PH22yHe8Q?=
 =?us-ascii?Q?NAAJupK4+N6qeFT7PynbTeEa39I89MTCcyrH+21BfPS0UoXKn/zn2/MuYPBM?=
 =?us-ascii?Q?vEtLz8tKgVFLJi8VQNgqCA1WIo1KJ+RNQLo/ACPQ0rezBrWDEw3alnSK/R+d?=
 =?us-ascii?Q?/CoVK52BlmF/kCqnotMnzUjOZ3QoWFP+kc/xcBGqAfwAvWAiSC20NFZLaGqK?=
 =?us-ascii?Q?JaINRkBBy5IphW6VqPVLanuNKf23lgItNwgsGjkyAqWpt94SbStCpNIzXXYx?=
 =?us-ascii?Q?MMtAWGHCtLQjAs/BEC3/TO3wgvKkHjzzlBqZSCjs8ZYgwbenQXHvKkA0th8A?=
 =?us-ascii?Q?w1vD1CI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(1800799016)(52116006)(376006)(366008)(38350700006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Gf1Rkdrzl/mCZfRyu6rHoRcbcx+b6rZKMlP4oVHT9YKw1eZ9aGkTvOyMkn7t?=
 =?us-ascii?Q?CupIaxVEf8b82uoP1Pg0nTTRyt13ez8wyk9XVLURQ+3ucQUmeiMGiklM1eAm?=
 =?us-ascii?Q?dKmcs3p5xyuEqSFke0Zgl18h0Hd3fFyUFHZU6ZjGecOsLjKsMkmxL+nLWNvD?=
 =?us-ascii?Q?NlaOAf1V1yD65fzkHs0A4qTNSE8vVfjVwzht+zOSKRU3EpCQggVGph0PwLe9?=
 =?us-ascii?Q?7X/iFjYr9wUQnEbY6QVRUetGGHULO05TZZsKAKSyeJnuetVZpfiBh2SEbmOq?=
 =?us-ascii?Q?B/8p43OPU+xWYO7PEWiCJBg72aOxQX41zbku4B3yXRxwwbK+twe0lV0hnXCU?=
 =?us-ascii?Q?Ez5snphYqFoN5Po+1FWAdN5wQuwPDplcFAV6tbLAm9McvSUBvro8x8XB/S0f?=
 =?us-ascii?Q?nG8F/I6qPWHj9+A8oi1MwwZ1beK7+tSxYp0GkHNntDM5v2XnuRq6Z/XtAdTw?=
 =?us-ascii?Q?qYJEzhWfAv0kP2l/WSz+D/PVirqoLXnonzBtW9k1ID6HazeJ+eOe3ovD0Yny?=
 =?us-ascii?Q?qM1yBEcCvwWBVsqFqk4vHHIcrimA0gFr5fSlaZ4M/6B2mU4synsnmxsxp60X?=
 =?us-ascii?Q?d4owKH3a97BCEgGwN6uH4NvUXWBd5H2qaSom4tl8jvlVKhbCUMNuG9oYYKDN?=
 =?us-ascii?Q?+Smx659S6X+achxuKgOy2EZhgFu5WeirDA7jLRDIbM+b0px8laDY/CY5Vh1f?=
 =?us-ascii?Q?KqELt/kz0en1JlJe4G1vB86nazhoDtY78lB4G+nZaym0rbov/WH0DiAm19EC?=
 =?us-ascii?Q?/d40xX+xXI349jcFTFks3juPLQlJEsgzfRftskiDNLFrERPXdAKgXOM0CJBv?=
 =?us-ascii?Q?BuCPO0FdrEr6heFsLn9EDTJunCK9SDDheG2kninM0euzl4mMQpJab2xd3jvN?=
 =?us-ascii?Q?9a96Nc5B9LiA7cDh+G+SPZtwIsXtR5hDXaY0tBO0OlA7WlCuuit2Grp/x1gd?=
 =?us-ascii?Q?f0yaper3dU+oquToTIBeUlOh42XDqDu+h5J+81zBIjfsvP2DS/SuzKxTThvr?=
 =?us-ascii?Q?XPjkj14w0EaW+YR5x/U4aPMaZBkhQ6agqlQlRXCsJNjmBUMzIvlLH0YI0rkJ?=
 =?us-ascii?Q?905cnMrXid+8jiP2qaoqQmkViuj6YlqWDntpFuuRx39Q2PnJ7978vjyxNzEy?=
 =?us-ascii?Q?I5TSfXypeJ4ydE5xbST6OOoWxxMdQwLTnfGcffGt7wyKqbUQuWcTCFuUeDHd?=
 =?us-ascii?Q?VyllI7uPpiuqp3panX4hZkPGz5UbCBAFm3E5ndQsh57JDOB9qDUCa859a7Jk?=
 =?us-ascii?Q?WYgmiWY7mlOLkosn23oEgADmJJZND1cjDaS1a8UL0tg87sxhBNbdxUfJsksH?=
 =?us-ascii?Q?HvQUemkvQMz5BMm5kswCVCgU4DQiKD92XRReMpZVe4/wb3w9bQZKjoekBUTZ?=
 =?us-ascii?Q?+9bhaNb7I2/oRTvnTs05mH7HMyox6mqgFc9WdxKPufy/tiM880UOv+r/t15F?=
 =?us-ascii?Q?BYP84CxplIUZHbQIGexXKiGzQYAxdzkhw6/nwG7FF8MvEy3qTuNbkIl5yQfM?=
 =?us-ascii?Q?sQZQ5ky/f9e2kBF0k71AUcPZ5ZtNFtyQW5Cr4j61L8118mkWD9bYQV4yZ+QB?=
 =?us-ascii?Q?cPppEQ7JJeNPGV3oQ3nRcX1oAdnSF7Z/wgTFN9gbsCppWhWESzWfza9f1HpO?=
 =?us-ascii?Q?EqRP+j44ucVA/aN/W43uMcA=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba11f17d-41e6-4b24-3833-08dc8aa53c4e
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 06:02:26.6541
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxSGJnF+ta4dfjCD4ILk0nqUTFRkky8SujT4po3GWI7kWJH/H6S0grdukQYP+XWoWAjKYcG+0Ez9Nit7C+jfemaeu+LasWmbw3yRnIVHB0imSM/E2wjAdsko+xY2gvBl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8904

Sound Card need to consider/adjust HW control ordering based on the
combination of CPU/Codec. The controlling feature is already supported
on ASoC, but Simple Audio Card / Audio Graph Card still not support it.
Let's support it.

Cc: Maxim Kochetkov <fido_max@inbox.ru>
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/audio-graph-port.yaml      |  9 +++++++
 include/dt-bindings/sound/audio-graph.h       | 26 +++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/sound/audio-graph.h

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 28b27e7e45de..d1cbfc5edd3a 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -25,6 +25,15 @@ definitions:
       capture-only:
         description: port connection used only for capture
         $ref: /schemas/types.yaml#/definitions/flag
+      link-trigger-order:
+        description: trigger order for both start/stop
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+      link-trigger-order-start:
+        description: trigger order for start
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+      link-trigger-order-stop:
+        description: trigger order for stop
+        $ref: /schemas/types.yaml#/definitions/uint32-array
 
   endpoint-base:
     allOf:
diff --git a/include/dt-bindings/sound/audio-graph.h b/include/dt-bindings/sound/audio-graph.h
new file mode 100644
index 000000000000..bdb70c6b7332
--- /dev/null
+++ b/include/dt-bindings/sound/audio-graph.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * audio-graph.h
+ *
+ * Copyright (c) 2024 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
+ */
+#ifndef __AUDIO_GRAPH_H
+#define __AUDIO_GRAPH_H
+
+/*
+ * used in
+ *	link-trigger-order
+ *	link-trigger-order-start
+ *	link-trigger-order-stop
+ *
+ * default is
+ *	link-trigger-order = <SND_SOC_TRIGGER_LINK
+ *			      SND_SOC_TRIGGER_COMPONENT
+ *			      SND_SOC_TRIGGER_DAI>;
+ */
+#define SND_SOC_TRIGGER_LINK		0
+#define SND_SOC_TRIGGER_COMPONENT	1
+#define SND_SOC_TRIGGER_DAI		2
+#define SND_SOC_TRIGGER_SIZE		3	/* shoud be last */
+
+#endif /* __AUDIO_GRAPH_H */
-- 
2.43.0


