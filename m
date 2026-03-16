Return-Path: <devicetree+bounces-275901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBqrFS1nt2mQQwEAu9opvQ
	(envelope-from <devicetree+bounces-275901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:13:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE22293D81
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76B233013A66
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE8F2D0C9A;
	Mon, 16 Mar 2026 02:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="NiuGtbVe"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010029.outbound.protection.outlook.com [52.101.69.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B4A309EF9;
	Mon, 16 Mar 2026 02:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773627017; cv=fail; b=riT7kx2pN+VkIRIz/MvAvpt8XIsaaHoLqVC1VGIKERJP6eTkaxk6g/W1i+0MQrwvox7P9haW6bLeSH5A3rz3Ww0hS3g20gCfEvFnvs0Pi01Flx1JOcjCJfhQBQUKeN3ohv8yUm9uUV4tU10QkNbCTJoF/SnbvbXauPrD5p/IUMI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773627017; c=relaxed/simple;
	bh=MKobm6kcMWkLEYL5XN8fozYVsVPzYKu2q5IER7ZO8lY=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BvvXqN6p25f0gBSjQJlq2PEC1AQxgVXZh8cH/fdMvZflDcTbLjcCMs6UZ3a/VjfIZBgTqe7yunx5huJfD1u31wQWo6e253k4+i74uaLf3H+74ETlZ6cCa5k+He6FvFGo53rdsPv6lt+AA8+fd7r95MB3jzpK+NjHOz8KaQrJ+Yk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=NiuGtbVe; arc=fail smtp.client-ip=52.101.69.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6VPzT4SKRJX8HluYhOV7K/4uIMl8X3VSeGEiWFyq+q4oYiSa5cd5C8Nkz5sQzjT9PwYQ89P27s7RNtXhtDjSofaVXMLqqlmJHBOUQpJMToxO0e1s7TzuvzoradQdyMAQMeofAZQ2wsDCYaC79v7/rVLO5u4LWexpFTXch9BYo9KU2w+8wQNR0/Zt1gggJTs4f4zz100VHCtV9VcsCLocq7xVg4Z0wGvkZf8wNb187ndj8xNqVo9izUigWBJbg0jHSmkf+gsAmkRUAPgFduPeAQ83J1huX6P83dRPeMgJlY5mqkH3NIH+21ycPK83xaIm3N0z6ElsOW1eZRdqDJexw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qbsx1NTchGVXM26uvpF0Uq3Ty8Pfqm9H0pdUpu30wA0=;
 b=aZGTHATNwkvjDX0hZOVIUFM5LQ0bayKEUSl7o7R1Vm7TVsD9jB9lQU1UzBXwLCNJkp/m/RCqQu0z45h0EKphToONdDQuWFnD0Ie0v/qg/BkipVo+Z57sKwQO5sgfFek5P0gXDUdx9p3O5/SXcuQIXkUjASePaG39NE4YlT/eyhUhupZxT6pNu/rghXGJ721rDwlm0eFyWdB7OM8/qDLhPhvuYNQxKQxumCJzjbh/i2Oo7nYiNmaCQXeJww3gKNz7o7ntTkg4AAC0sm3y6qUJXdnLiQTqJYI1WTPqacQFNpr28pS4NLNCiG32DQns8Keg54KFfTQJrXnNOfPhoAFRNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qbsx1NTchGVXM26uvpF0Uq3Ty8Pfqm9H0pdUpu30wA0=;
 b=NiuGtbVeXmygm31PR6uFxvCkDpk9JNPUfNGxUhf2yJlc/AxwysLPQ2A7ztPRZe9uTqCEwSccmhaZPXqj0Vfi2l9qTptB7SRcepSkANb7MsUpy5tU2G6dfSRojidWe5vYsW/99erQWwSnvB3OWnPvu58ZT8Lozk6JJdl+bU3ybWi4465D/qMl7iYqRokQvvN2llmVETeG52OQgHoxNiapLoKOBEbmO85J5zKPlZuQ/Yr95aDlhoOMmykPudrvDtJ4FBgI6VUxU/kwu8W3nmQChD8FKho/+VV9HhvaUY/jg2WlvEszinels3TiC3VAaxTruJNvHfqy9Bk667HEtK5P/A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com (2603:10a6:208:191::20)
 by PA4PR04MB8047.eurprd04.prod.outlook.com (2603:10a6:102:cf::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Mon, 16 Mar
 2026 02:09:42 +0000
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b]) by AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b%4]) with mapi id 15.20.9700.022; Mon, 16 Mar 2026
 02:10:09 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: imx952-evk: Add PDM microphone sound card support
Date: Mon, 16 Mar 2026 10:14:39 +0800
Message-Id: <20260316021439.2971610-5-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316021439.2971610-1-shengjiu.wang@nxp.com>
References: <20260316021439.2971610-1-shengjiu.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5P287CA0043.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::6) To AM0PR04MB7044.eurprd04.prod.outlook.com
 (2603:10a6:208:191::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB7044:EE_|PA4PR04MB8047:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a2668a5-001e-4463-afb0-08de830125cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|19092799006|1800799024|366016|56012099003|18002099003|22082099003|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	3O/vuWtp4F/sg0lny7uyTvz6ichHY/g5OMQxWwKc6EyFhqIXe65R7Zm2kg8MFt58pQwa5kZsHQncpIiP64rp4uza/HBrMa36uUXOT7uwCxj87U6dPjeCD/pwMOF8av/nSF2J3iil97JmhJ2pBDJtOalSRDThdyEEAxy41IK76iL9we79DJBSlecUaBP2cOb7pPM1HzQ7eGtfbSrtcWZvQNC+UEgHDVdTb/D1JvG0Iw8w6xETQeSEoyWSZRj/lTjQnOYcO9xKSRTEnndxMqq9P570hBuIQbOJyth9BK29qByPSWnUiQCDwQVetk+kSCy4EQNfHwwQYTiN3F2nK2avOoCCJRhaOVTaUTMrG+AHP68v80s77fujx4MjIXEVQd1Q6hVp7sMg6klO6xZ1I8sZXirQ3ZhE9HaoHOZf30nxd0++sdWN1qDK+BLXy5Cn7Tpl6S4S9dicO3jHqFdjTiJQoHVvSNdb0NwOfQZUccdyxkDm8koDjbW2G9o6eFmwbbrz7M11mJpfRKJt66F6E4XlXDoEHL79+IzaRjfz35j2ysD5fFnXMdNok0K9mQXurvQycyBMHRb/HUrlJx6p9ncyuNCDrahZssBSC4jge5ajsmNsANRNNEMBNqHm6trx5Wr9Y3m8gerNYYUCzMHtfhCNsyyNU9DYTiL663rxg5ATAVeJaaJicK0tNky4z3GypUjMK2xjWH6ryodn/ZPZ0OcvZd//etXonpP3UkR/6lzttLyj1xI3zSPmRUAard4aR7pcIppPJXM18gdB9l/RtdOdj8UdAAJ9iVnl3Yz2IGODSro=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB7044.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(19092799006)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?7ccZYNgy+zL3nmQquJNZuxYPre8e6JKta38nWDbmiGdsXDs5AFKbAmoi0Xgs?=
 =?us-ascii?Q?PUawLEjdagp666MhfleaKGzJ4ObSGWudtzVPBql5iOC2dkbAtyPPzRX2P7gG?=
 =?us-ascii?Q?8wH4ElIBJlPb4cCHFz2s/6QxpHMGzy//IC9IvUlGVjV4/FJupqYxgKDlHKdx?=
 =?us-ascii?Q?eSPjtae1wqUFxvmWk1niiUv3wH1urimDonDvixIbLvwGtfYM7NkmAGplgef4?=
 =?us-ascii?Q?BH0tF2mXZLOuaeLP1pKZYonpg+E0X5pu3ZNIlYOQPuHMLTLxhu1dRHKykH+y?=
 =?us-ascii?Q?L8ICymBgfBY8zP109VlCN7jJCvbHkA5zFrF4rAfyafzeVP89mGf7Du50ezkv?=
 =?us-ascii?Q?Kx7mU6DHLin9NOaDGhLta3hR5ZE3u5vf7GbH4MxKdFG5FmUujvrm7UAdojCA?=
 =?us-ascii?Q?ydDQcbW4jA7iRjF13KFueI6IVvKAu6doPXK/vv+IaLaAaWWrl0jB30Fgz1in?=
 =?us-ascii?Q?1O6f+iwV2VmTNqa0kxrtrYSC3mYiplWp49xOUZFVDd2jRsxtzaqtGZBFsBcU?=
 =?us-ascii?Q?phXEt4+Cl/6sz5Dee03nOFQIzihl66KUhnwbKYZSBs6xvUjdv6IlIAxRGTqQ?=
 =?us-ascii?Q?2VKVOH8+CHY7KZu/vLE2AZg1XYpLAI9uwo0/YYN1Q+VkX9nVSI84vt7TbsPT?=
 =?us-ascii?Q?ut4EZsIJj70mQD/fIKY03Tm4YjCZtCxDZzQ8cbLy3aGOQ4S8dw4wByegj4VE?=
 =?us-ascii?Q?yS/i3CbNCe8IEvbf9O+wfaiv4lNlIoMwla3Ned76RATJriH2WVe+7PtjO/f0?=
 =?us-ascii?Q?GGT7ExNHB/Le74qPNeSCuaSfmlzElkmHe+EZ2TrMUr1+5w3qNV6eXB8yO5G/?=
 =?us-ascii?Q?GNKZ6L5YGDo68NfBjwzhX5QOzZR8oHtWRXJUdPwxuZa4gf+r9qY0So14oyhI?=
 =?us-ascii?Q?5RfEAEMmYtX2zIwPconyzwUca+oIkL7OcYsAGXf3PFkxyVHnuGic64hx1xUa?=
 =?us-ascii?Q?EH5nKoisDmvSY+hQOCaVZ8O5E3rsIFiStbzsSNoojTAO4a+5bvkW0dFjrm5s?=
 =?us-ascii?Q?lMw2ZVr90RhIq0iDVAG3b/3g8+ZUDoVg0K/VuUkdvrmdZ8BUL0+ykey+Fv00?=
 =?us-ascii?Q?eXkHBn2rajU6Y9DRW9wRQjY0htWNoM/njNUVyt5Gc4RQgBaQX0pZURSXEWPQ?=
 =?us-ascii?Q?gn7LQtRPCddtirXm4X9EOx8o/b8i2qSiGgcLRk/AAAsJXSiD1cNACHKKtQXu?=
 =?us-ascii?Q?XeFnEWaDLH5QLiCCl6vFeecot1nh8tkaFRqWzWqVx0YL+4LykG5wOA/w/xJy?=
 =?us-ascii?Q?h/Z2+ulC4bL2S/Z6P4w3dq+LoLCxo75eH4qBR8nBl9RBPe8xmPC5HDIymQPj?=
 =?us-ascii?Q?Uh6sQx3Wtxl+NU/Rqhh+s+0IGLcDR3p/fYloOgssiNrKzAK+Q5875pL2tMqQ?=
 =?us-ascii?Q?2KlLlXK8R7ocT+pNu715miLq+mlkAZ5n10nsblqGTBjf7HXvjZ5E0Mxo+O0C?=
 =?us-ascii?Q?GbLIrkymFVz7kWjLYNl0/4cxgCNmpKg5wKuFdsBRn3FQO2HUVVnO1HMTid2I?=
 =?us-ascii?Q?jgGf6Qx9IXYfHdsEAfBX46mxWs0dC6j2OjAKXU080mvvHz+hNm3XUTtezXLq?=
 =?us-ascii?Q?edXUGizCwqwPL5Dv8446C2Z0/haHMyjH1DIxEDovApUClRMIKFBlW13aSp6f?=
 =?us-ascii?Q?gwuFpAR7SnSTp/ah14pZSwkDOhnv8Y88GCodhRzB9LCfd2pgi/YM/UE8S2nE?=
 =?us-ascii?Q?lnOyUjsHjz5GoTya5d7IhSM1zWjGy1YoIsLCP71zguUTDjfjiSkGbG2Jlv+G?=
 =?us-ascii?Q?7QzaweaDMA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a2668a5-001e-4463-afb0-08de830125cc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB7044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 02:10:09.0091
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z7FQA8JGHUxXXnQguxOH/LhqQukmxVcqw5cPeWhkVtrkbwOM2+sFYclwEAbc6lQ3gsZTOZ3ZiOjrjDhfAogVPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB8047
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275901-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiu.wang@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,nxp.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4.196.180.0:email]
X-Rspamd-Queue-Id: AAE22293D81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add PDM micphone sound card support, configure the pinmux.

This sound card supports recording sound from PDM microphone
and convert the PDM format data to PCM data.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx952-evk.dts | 54 ++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx952-evk.dts b/arch/arm64/boot/dts/freescale/imx952-evk.dts
index 2615fbb63145..62d1c1c7c501 100644
--- a/arch/arm64/boot/dts/freescale/imx952-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx952-evk.dts
@@ -52,6 +52,12 @@ chosen {
 		stdout-path = &lpuart1;
 	};
 
+	dmic: dmic {
+		compatible = "dmic-codec";
+		#sound-dai-cells = <0>;
+		num-channels = <2>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0 0x80000000>;
@@ -164,6 +170,24 @@ btcpu: simple-audio-card,cpu {
 		};
 	};
 
+	sound-micfil {
+		compatible = "fsl,imx-audio-card";
+		model = "micfil-audio";
+
+		pri-dai-link {
+			format = "i2s";
+			link-name = "micfil hifi";
+
+			codec {
+				sound-dai = <&dmic>;
+			};
+
+			cpu {
+				sound-dai = <&micfil>;
+			};
+		};
+	};
+
 	sound-wm8962 {
 		compatible = "fsl,imx-audio-wm8962";
 		audio-asrc = <&asrc1>;
@@ -411,6 +435,22 @@ &lpspi7 {
 	status = "okay";
 };
 
+&micfil {
+	assigned-clocks = <&scmi_clk IMX952_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX952_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX952_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX952_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX952_CLK_PDM>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>,
+				<&scmi_clk IMX952_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>, <3612672000>,
+			       <393216000>, <361267200>, <49152000>;
+	pinctrl-0 = <&pinctrl_pdm>;
+	pinctrl-1 = <&pinctrl_pdm_sleep>;
+	pinctrl-names = "default", "sleep";
+	status = "okay";
+};
+
 &sai1 {
 	assigned-clocks = <&scmi_clk IMX952_CLK_AUDIOPLL1_VCO>,
 			  <&scmi_clk IMX952_CLK_AUDIOPLL2_VCO>,
@@ -604,6 +644,20 @@ IMX952_PAD_GPIO_IO36__WAKEUPMIX_TOP_GPIO5_IO_16		0x31e
 		>;
 	};
 
+	pinctrl_pdm: pdmgrp {
+		fsl,pins = <
+			IMX952_PAD_PDM_CLK__AONMIX_TOP_PDM_CLK				0x31e
+			IMX952_PAD_PDM_BIT_STREAM0__AONMIX_TOP_PDM_BIT_STREAM_0		0x31e
+		>;
+	};
+
+	pinctrl_pdm_sleep: pdmsleepgrp {
+		fsl,pins = <
+			IMX952_PAD_PDM_CLK__AONMIX_TOP_GPIO1_IO_8		0x31e
+			IMX952_PAD_PDM_BIT_STREAM0__AONMIX_TOP_GPIO1_IO_9	0x31e
+		>;
+	};
+
 	pinctrl_ptn5110: ptn5110grp {
 		fsl,pins = <
 			IMX952_PAD_GPIO_IO34__WAKEUPMIX_TOP_GPIO5_IO_14		     0x31e
-- 
2.34.1


