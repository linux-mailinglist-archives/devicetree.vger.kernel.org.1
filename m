Return-Path: <devicetree+bounces-112718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FB69A3605
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17C30280E48
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 06:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433ED18E02A;
	Fri, 18 Oct 2024 06:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="YvxLUlp4"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2082.outbound.protection.outlook.com [40.107.249.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A9C18CBF7;
	Fri, 18 Oct 2024 06:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.82
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729234098; cv=fail; b=rwl0osQAbH91A/G4zaJB29yLbdMfnR7mN88UjpYF2WRbyoWnV7j/iwjj4oxoZPGgh/UClQ7zhgPXchoQqkY6V8KO8+U5OGp9wT3FE+BqagR7PhlfaP7KZv489ZcEV2r9VBIcsOZ1NYMoUDxTbxaw9LsegDWhJ+Ix4iPu3jBzU2s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729234098; c=relaxed/simple;
	bh=gPkrNMqqms+Uk+Lc9OPchoaR6AVWxCRsk0OWk8C5Va8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kyS/zm63fbLjNPLa8oOj6hB0psoSTKi209nLoNJuCoQgE9lABljwopVq66s42A+K0yBvKH61RO/mA7WJJ8Dv8gSQqBE0jZiWpd68esPeHpwBlUXpKoJ0LTStFwxyFCjmxWvBLxqTs1Io7UjhfmKYo0ZzWKyMgM7VnyBqCPq99/M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=YvxLUlp4; arc=fail smtp.client-ip=40.107.249.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQBFvPu47AZifUWKUM72qzRb79aJ/CjwHkZKjRvyOaUPQSm6ajOt89GAwrjvf61Me4LuNF8MNiQ5lBNLLT35fda3ctR38Eug/UNEy0R1kYuyzGFeFAMWlN7nuFEej9mNzDfuG49vDQlWU9tEelqKE6+wjey/7BkmDWKsOwxbJf1RfMakpokwHdUTsicb5kXHUb2xlxcNdJVsy//8bjS5HLNfHNiMfthiBfQSBn29pcMrX7CU44ZdACnFxM6wudYKhBjHCXcXg4XQFAjSxIFrH+DGsPRi5zK02qcSMtt1lTqqZu6teSs9mDZ36ADgxuCR2MwAnEUmrUZ0pJ2wsyBEiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oWnw69pJ0GDn19WSXkNgUc8LYyVFhZuLTgU+xiN5Wjg=;
 b=YkciaEG3CgvLfuuX5vXReYIg3KFM6BqHTtLts3RmnReO/LfOabzOD+1FW7n9jKsJwL5EXeW9oDXT2soTJAD5Zw4i7NKUWpVdzfwq9ZWGi53OZcchlCR8JwMTtzowKSMNtduzfPy8Wz9MlRlcaf2ti+wcKXJ9PEVWGaRMWUMKrUWC2/FE3JPHUN7cRDghhNt6Tc6Suh91KJur61nEIcj51a3Megsz0YNhlEFbT89gzEKHSEUluX3QUCZt/9BEf2lpCtn/AlB13VGznnXDdYU7ogdiyWoG0p5AOXywdFazOd/cPssOfLy1Ov3OnFF+WsxoC7qMLQB6eheqU0toENvu/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oWnw69pJ0GDn19WSXkNgUc8LYyVFhZuLTgU+xiN5Wjg=;
 b=YvxLUlp4O0qVKlXGmxMQm/pxN4xA30vhmGEi9TY/kJYMYk+Hp56ogw7ct2pv6EvsTQfdnmcoBm8s6dEz22GMLu7Ren7mxaPXHMcnKN+ekeB0+WxTNUf3IhR95p1attG/+TRbOtq+HB7iMLD2TNHn3KMDvL2t/Sxk6MzsxhDe495ibjQe/CHrtDpdYo+oE/eUzyjzI9kG1+ji644v/Y4kPeKBe53JhFhIGCpRKtU6yx/2paT0sZyiBWvl5AMUmbNoCLfy0IzegwFEIJ0rVdybjWVRatYJ3etiCea+HaZJai0M6mMGKl6JeqwQNs7Hoyx2fANPmwc02+k6FzsyJaS4JQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by VI1PR04MB9787.eurprd04.prod.outlook.com (2603:10a6:800:1d8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 18 Oct
 2024 06:48:13 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%4]) with mapi id 15.20.8069.020; Fri, 18 Oct 2024
 06:48:13 +0000
From: Liu Ying <victor.liu@nxp.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	marex@denx.de,
	stefan@agner.ch,
	dmitry.baryshkov@linaro.org
Subject: [PATCH 2/5] arm64: dts: imx8mp-kontron-smarc-eval-carrier: Add HDMI connector
Date: Fri, 18 Oct 2024 14:48:10 +0800
Message-Id: <20241018064813.2750016-3-victor.liu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241018064813.2750016-1-victor.liu@nxp.com>
References: <20241018064813.2750016-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0204.apcprd04.prod.outlook.com
 (2603:1096:4:187::16) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|VI1PR04MB9787:EE_
X-MS-Office365-Filtering-Correlation-Id: 96199735-7923-4814-00bf-08dcef40d60a
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|376014|7416014|366016|1800799024|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?XRJL2n7EAOTUUsVqfcTlEmo9QjOEDGJenojMX8Gj7mAb8TubIYdF+9p0tehg?=
 =?us-ascii?Q?E68dIC0B2RGqjW7Ya7PyUuUVtNbbmiFE5t9+6+clirNQVhi07lem3QzeGArt?=
 =?us-ascii?Q?pCytE6tJ4Pr7WFRds7ygwhLl0WFr02dZY4G8uyBb/AXkeca2mGFZgFIQZbL8?=
 =?us-ascii?Q?bgcKHz1ujMVyDhg8lXiWsoIv4kIVoCw1N8BuW/nBOuxawbw6Sd0tx3lddHIR?=
 =?us-ascii?Q?8gd0QP6vHp7Mc5WAoEUDpS1km9wJs9Elu+NQByk1wKdn71B1xv8oWRVLrKMC?=
 =?us-ascii?Q?SXYpMDKdAxfhUAHq6eh5xsiW+5o0dSd301owI0fGzffizWcJK+PMV/TGMt3G?=
 =?us-ascii?Q?ZtW0VTboPjRYSWW6bMQV610eSC6MyUoPJy8yD2vHFHgTRcDytSA3bdY7rakt?=
 =?us-ascii?Q?jF4xRwLwP81oFwF11bSvy8Zm5oM5akeOckHx1j0La8qlEQCyZ9rhu1x+nu9G?=
 =?us-ascii?Q?OmZLbEwWWC8h6TeyCPOUFWDO1W2htnGRMYA1k9fVuN+xcjJIG79dyO/UufhD?=
 =?us-ascii?Q?bfWpwffPBPHUYTqopuxbHeIhkdw/1XY6LG4mcbZQ3ZOY1SQADgCbdtmIH4Eo?=
 =?us-ascii?Q?Kt9d9mRxHIKsgY5VCw38cQADAt5YLfzYqt/aO2lc1WhAVcKkHwmGi0Rel3Lt?=
 =?us-ascii?Q?/aVhgC0O8FcrSF9CvcB03UqPtitkszLqHQ5iV7IMCNsk9JNcwFh+ELSy1Hfe?=
 =?us-ascii?Q?6VTobrcwgtZh/3AR6KkIr8B7QtKb4zHmXbYMbCLOIKvwSV3KvO57zlmMiGBG?=
 =?us-ascii?Q?35ghVSuYPbO0Q3lVqOty9IT+J/+a8+zIfXkFkxcEj3iVyEECJH1JqrxJbkho?=
 =?us-ascii?Q?ngShb5eSrsGyMFTphY/5gtRoldH1Z0ATkVrhOmUhKTEA4t98Lq0aaIjkXSxr?=
 =?us-ascii?Q?3/5r+2GVuFVPtikP7wPY3gotc1y03Zlx1F1143Tn4T6Tv17P9Jw4clgCejAk?=
 =?us-ascii?Q?GvjMvPlBJeMlJywSeApoTAdQA8vH1mvXTS6tJY8vzk6o5ijnBCbK9YGVV1a2?=
 =?us-ascii?Q?9ZCkHxX7lkTvpGMngVpTpwbRyWUo1fabOI7699SDS7W+4sbtf3SGGP3QdtJu?=
 =?us-ascii?Q?4kx5XxvHyhptBvfeeD7uWVqS9HRqp3LXdRvX4lAjws3OO5w7xR4a9GG4HCeF?=
 =?us-ascii?Q?3yY3suurp8m/Mk/nO4MhU1Mi6FcVI0i79/mgtKHCNO5akuGY0zkOzj1vIO4i?=
 =?us-ascii?Q?nxVrpv9NXtBwzWZ2JWOw4CNyLIcjApc+Tvg9s1xS8SHknCudookd/CSnf95B?=
 =?us-ascii?Q?E/8cMSwlj2HGyzPtUoqOoWCcaT2U1D3DQDYU9DzaVscSGjKV3ribf6lYRayf?=
 =?us-ascii?Q?jioZy4H+jtgQzynYRmEMdyfuEXx9x+dMBp6YGr5/bYJK3JTqN8Y+06UXJEBz?=
 =?us-ascii?Q?FvAb7Os=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?2YJh3tejL09Z/m3gIYgYh+bLQ0LrbKsPK0Gs8J45unu5YjCXk9jWc/nr0m9A?=
 =?us-ascii?Q?fF2YFI2IuTJGyM0wOZY2ac9XToXeGF2WbcRfSRZHD6FsiekeX7Ps4kvfiOQL?=
 =?us-ascii?Q?I727aDZkvfqhn9SgUgnwKFoIAHiy4TwrmXnV3iHp1yhxCo3M2bVuvFl7oDXr?=
 =?us-ascii?Q?oLXELHwfDzt6ceUaSwRciUT2kcNnucTo7jEMtT6/k96VI8xA3UKQqgcofwNt?=
 =?us-ascii?Q?jGnCqQYLk/JgslNwYFEQHBPQOU5CxkvsH67P0Anqlgm4yPH8pNtYtwuqQZeM?=
 =?us-ascii?Q?IBPwjfZlqR2K5SLz6XJvPiJULkW8a2oBXQxoWFBCmUeCJ3UbvnfFKv0+laU1?=
 =?us-ascii?Q?fpROKhkm61hN2YrYoGwJ4RlgGh6XV04whns7D9S4sgtiOJ+MsXb5iEhkswbb?=
 =?us-ascii?Q?SYONWYY9r04M3k/yhXsOhVRs85VE3SvWe6/GWsgDJ7hwU/v1l2iaU9qUdQx+?=
 =?us-ascii?Q?sjkA3Rn39InJ4egjyu2VDi0XKRvEr7aOcuO8Mxcyivx7Oqklb7DhgZD4OTZB?=
 =?us-ascii?Q?rY1FWYelSG28k8z2zf0AiA0uwm37AmQvlW9ID8blPQxRgZczRLZ4ifqe5Wsc?=
 =?us-ascii?Q?/hzdEPJ8jYkN11UYpAc3neygWkn4D4gc0Cfm7MzdjQOH0C/Gzd+gx+65Oew/?=
 =?us-ascii?Q?D4GVcu+SOM22NPiwyUQCOVyHTqcEmR8tQVy1sw1Dyhiyk6uIWZ4ANB28vMCy?=
 =?us-ascii?Q?YY6Ay6kGWM2jGl515P8NIydyo8+ezqB0OnitPrZ6owqq3cEdnacNbDG+16ZX?=
 =?us-ascii?Q?DVxTrZfJWwoReJPOXW+xxcGrW00Khd8FRbXMaJ3hbXV3vFPJl6Mq4PPyJlMz?=
 =?us-ascii?Q?VDaqtxU4jEPDfB/LqHXoYo6SdxJ3qpO4vq0pjscfGn2Y17IlMyIyFGaVgcBF?=
 =?us-ascii?Q?hVs4qYs+a+Jn1wYv7OxdE62zc4FKt41aw7KbvXV4jXYgqr5bCjTpPz7kM0JM?=
 =?us-ascii?Q?83zmzrswmWdtsivYL2w2wfVkvvfbcogFRHPjyL54svh5cRhLSYzISnrDM9bl?=
 =?us-ascii?Q?I1C/AdUtkKnZesZv/t6fVm9/iFHarwsUMpL0DPChgAWPz9zpWUnTjIjUfzM1?=
 =?us-ascii?Q?TrnI7qIr2fXSAQ2ywe+CEFzTiKzOMMfxY20X6lXkmMyyd1phuEed2V+6dKcI?=
 =?us-ascii?Q?oWzj3EpNyXSdCfIC8ViSAjujMRPdhLXNbAocXyktgUoe8i82ENeDBBCTjK8U?=
 =?us-ascii?Q?VPWAX9vEJXUz2pDO+bXT9JSWc6fCHlMge3rx38b7DL3oS0HY2xuV5TT727Wr?=
 =?us-ascii?Q?nNxlVogbDGjZI1pez68e/i3d1zby/DKDu/MK2zfxR5PLYkUQbObtukT1lHTX?=
 =?us-ascii?Q?A0B2ctlleWHtMYeYKkDIWtFjMOA/a4Tr3JKc8mR3nzUFf+5fcWIY+Egm1w8z?=
 =?us-ascii?Q?Eab8CR487EnbGq9FIBdKbMEFUizUSlS6M9sC2Eh6BLvPogFkHKpAcfELjZE9?=
 =?us-ascii?Q?nfHaMQ3ImYgcxVkJFOsLGpKFOKdTuDCzL8dKd8q2f2dw1taGS8bbNQzCcUxp?=
 =?us-ascii?Q?aulW5EBmAFEIQ5rnigUwpnSpgLQASANyFjRptKsIJ1wzNK0Vsym12MoiVDCV?=
 =?us-ascii?Q?J8cH0W0ExKXYYeHiBP6br3m7pGSyZYhH7VZySAt+?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96199735-7923-4814-00bf-08dcef40d60a
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 06:48:12.9526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0+GBaKT3B8hse/hOq0dD1Vee87uVwMw5hdbHXmJCB4cHq+Y1mL9Cml9uIoD1lyvjW85A2lKyrueKmRAvD45VAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB9787

Add a HDMI connector to connect with i.MX8MP HDMI TX output.
This is a preparation for making the i.MX8MP LCDIF driver use
drm_bridge_connector which requires the DRM_BRIDGE_ATTACH_NO_CONNECTOR
flag.  With that flag, the DW HDMI bridge core driver would
try to attach the next bridge which is the HDMI connector.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 .../imx8mp-kontron-smarc-eval-carrier.dts     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
index 2173a36ff691..815f313a2d33 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
@@ -29,6 +29,17 @@ extcon_usbc: usbc {
 		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
 	};
 
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,bitclock-master = <&codec_dai>;
@@ -108,6 +119,14 @@ &hdmi_tx {
 	pinctrl-0 = <&pinctrl_hdmi>;
 	ddc-i2c-bus = <&i2c3>;
 	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_in>;
+			};
+		};
+	};
 };
 
 &hdmi_tx_phy {
-- 
2.34.1


