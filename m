Return-Path: <devicetree+bounces-124682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5F9D995A
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 15:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58BA2282958
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 14:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661C01D86F6;
	Tue, 26 Nov 2024 14:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="gAoyIY7a"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11013039.outbound.protection.outlook.com [52.101.67.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8EA1D6DA1;
	Tue, 26 Nov 2024 14:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.67.39
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732630438; cv=fail; b=mbyli51Gb8Pm1+FIkKRTK1jKQWVZpbRX4uFhHQ/qNl5O5/TFKtWmHrdDcWqcCjsZ30qv3NwA4BTUoDUvLLSeGyoUy3j0ziyYDEnMtj0NhJEXHGSACJwJCDg9kOcnxDWJ1iHA67HmgHYFYNoC1T2AEJ7yyj773mLJIpARsIG7sdo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732630438; c=relaxed/simple;
	bh=bQkLLDYBmLcdcm/A4ww3+pqxoc7w9UZgnMNIIFgKAwM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gML+NOlLL13zlG2kSYqSpaHpWcYHJ3RD9H9fmkr64ZVJ1jLt+LRG4mlnFdOzQSklFbw0+Oc3lyCckg0glWTOSqyBjczH5A9Wk/koKzWqjmAcqYLJeZqx1oA4grmdC5c471LswegEKTKzc4R6K9E1doms5ZlNVdcLoVv9RCc6X70=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=gAoyIY7a; arc=fail smtp.client-ip=52.101.67.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oIDhVMetJipGX5S5LKJSM/2W8SPv45rHAXdPX/q2m3n/Zb+2SkVEjH86JUc27H4/K1xZa9DKddN8Cs48zMtqU3DkJXsGgEPkrkgccCTTjDwe2gsBspnnyh5HcQ+KDR+zlCVwXJ2t7bwJL4wBXpfsfJKMgIgZY4O3iOhvPOwRhKw8Blhj6bxxe0F8feEb4bsVMOzKPbwxvOCniMzpv5XUtmZcr+p6wqop2qFnioyWmSvbu5uPMDM+8xhzpJY+Ji6rG4zjFRsfKyHDpX742iRr3tjrOy/CGLhwosmT53bxOQi+THOndwpL/ID7LN8K/Yg7/4ltU+x32nSUjfcFcqVX3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VQmpgc/8g2UbP3WGIMiYla/AgJxoEzi68vYSXSpb2ME=;
 b=fX1nPTu3+MB3L95H5S4YeDoUfdDKyE1419GO8kUMTvU6oF0NahvmfL6YtpX9bcFG0LeusCfpNo2889aKELsrWPNhcd2JcBuzX+868hfIoz6XM/YSR9drw+Mv9jqiMcegp4q2xkCDwzwqmTovalTQUKV8Ox1gtO5O++OEUXfTmumX05/gBDVM2Zex6OksK/i+y4vkYATXNqlVHStCEOsh0KCVqp0YyIBSS2L+NRXORIoHUvkpdcEk/F1APdhUZ5EVuOR6nhpQwvzpu7kwJ6PqpKSEwFxw1MnQ4iJLkzQ/noJZbXAlvYjpG2oRyK6dHO4HMceV6EIvTDKPT+SOeLUQTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQmpgc/8g2UbP3WGIMiYla/AgJxoEzi68vYSXSpb2ME=;
 b=gAoyIY7aCz+5lRgOqAKiNdONMuLQ54wI1+YfsXH8ZgeHWt8yU3hyqsDy6GRefQB8V2LotWLaJJdFKwcQzd1BpIEdOKTl1Yf8RGLIYNppT+EpNXhf5g9CZnMyoFlJbo+KZ1pKYICWM+WTcOHc7RY6S7uSxf3hM+8MQJevQ3Y2w7dC4JreWWY9coaHuRetHzxiExt948PTR6Pl60M4EAWv175MCGfZzpWrI0jhwZ5xbdAzzhO7xGCyIg1q1eZrKEHoHLBpvi7UV44UwYdNW24/FQxshhcLfXaSsOMwuu+CGAwzo5lj5hNKygyUlYaQDUSkgrEYUvUm+Hzh7BgUXs1k+w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by PAXPR04MB8894.eurprd04.prod.outlook.com (2603:10a6:102:20d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Tue, 26 Nov
 2024 14:13:54 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::51ae:5f12:9744:1abc%2]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 14:13:54 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dmitry.baryshkov@linaro.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	mripard@kernel.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org
Subject: [PATCH v19 7/8] arm64: dts: imx8mq: Add DCSS + HDMI/DP display pipeline
Date: Tue, 26 Nov 2024 22:11:52 +0800
Message-Id: <d5fe3953ce13aa7e068190291d94c213302f8109.1732627815.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1732627815.git.Sandor.yu@nxp.com>
References: <cover.1732627815.git.Sandor.yu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:195::16) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|PAXPR04MB8894:EE_
X-MS-Office365-Filtering-Correlation-Id: dc63cc62-080c-46ee-2ebc-08dd0e248f51
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|7416014|52116014|376014|1800799024|366016|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?dfJ4EbmwInjE0/PSW/J6rWtj63eLiCl75YFOWx0ndThrewFKgUd0FyYKeeqt?=
 =?us-ascii?Q?J0J0SSDbsjjVbzzpwThpPp36HGjKhRFj9Nn7ByXXu4L3oxifSNib6HA7Vd7S?=
 =?us-ascii?Q?lFnrVqW+LueQ4iOKtYonr/2M1QqVWK1CYCgp6DbZUYeFJHZIA5vJs71b1fTK?=
 =?us-ascii?Q?g0sEI0QnYcF1x4NuMLSIguYepFGfOO5++SHpZZ7c2OQ+RBDrFI6WcQ+32emZ?=
 =?us-ascii?Q?BxOF1vuu2hw978dAgxOccB3ST6Lw3XIa5j0deOM0zjqgwYBTPw81PzI4JY27?=
 =?us-ascii?Q?Ry6kVHEAjXMeOGfwRKNVV4GzzxhFGop5PESo8x2/qfd08b4SiNlzkYE99Hzb?=
 =?us-ascii?Q?mjSeMQq6Lq8NxL0rAuAJOUZ7rhmF+9zep9KJGmMAKXxNxxTXWCcIEI8pRgNB?=
 =?us-ascii?Q?mgeAi502u/C+IK2kFe5YbNKtBgOxA6z+d1rwA/2XGOkJiKUJjyiz93oQtWEn?=
 =?us-ascii?Q?54HF+yrUirLgfpAQz2GaKnjQUsFsaK2bwMRKa2RMcEDn8FzMyjx8QvOFU7w6?=
 =?us-ascii?Q?am6yU/IEJmd1v6rbI58enICj3NZ6Pb5EuKDYF+X775jPJHslOOxwcJdrBN3E?=
 =?us-ascii?Q?yLB265raUKtmYAV442U0g4daULRxbJ5isASjTs6FyRj+Z6aEExn5OsvaC6aZ?=
 =?us-ascii?Q?C9Q+3pieaW9zThbf0mcSFhvINqpLrIL1eUegNkvYlJfHnh0ccrTaXOcPsyp9?=
 =?us-ascii?Q?1kC750wnsXoBdnIfQFCjRSxK8/X8sCsRWVdC4tTapxsTAhR9XYoNY4TA0HTs?=
 =?us-ascii?Q?u5L3N9UIiV/M66H6i01AERBC8qsewOJPkkAdbp1ynNCeop4aWIZqjN4xhhIh?=
 =?us-ascii?Q?OPqqs8iQMeV3fekKA4rZ9Gpx7Kwr8AuUz0YIfJHrC0UZg9xOIKA7Dkszb5mJ?=
 =?us-ascii?Q?kVCEdSe5HZDyD5MBSIbZIfqbxWQxa2BYjYHhC3v0Ms5JHAsD4o3RePIAkIP6?=
 =?us-ascii?Q?zSkKv9pRjFGQIasqqblynsLql1uDbcx9zkrhLQG5QvCKsbJj1euu6RUudg2y?=
 =?us-ascii?Q?XPdrrW8mzmfSF+3QKoyMuBD6v9pX0CSPIbnRdqZzLMQxJ3ZbKWULlxl2EJR4?=
 =?us-ascii?Q?51a/gdkE5dZjxJrNnbdANc13rbD3pS2EXc2HYyvD7wyIIeJQ/eSsL5jpUO/A?=
 =?us-ascii?Q?tJj/GOUNBeW5z0CgMyL16Bv3vUdFEULxs9GfkJ+R+t8avRLG+E+7KB0R3a2q?=
 =?us-ascii?Q?0EoIiyMzVhFF+KX0/owM5uERKSbQBIHnqmHM3yy+qt/TaWAdVHUEZ+t90i5Q?=
 =?us-ascii?Q?7vgyYoHIRpa30OS8rwDSpFEl6K3LN61d7zxAYrg60M4MLkemeq5h2lU0GQUn?=
 =?us-ascii?Q?Y9Ny/FY6kwLQTgAJ1gC/HY2Ef7EJLrfFXFWtfb5ju0tJeD6T9ysVQZCSa7nP?=
 =?us-ascii?Q?e/bxSEenu8eY/13Dl+P5z7tIQgBEolAKxzUekqnvLxkO96ZSqsurqpifNcKi?=
 =?us-ascii?Q?BZNjAxuk3v0=3D?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(376014)(1800799024)(366016)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?tZdzVQWcGagXZKGc9VllKxLbBQ/MBPIdqc0WTD6b8PeU2UFqrXbmU0tNk5ae?=
 =?us-ascii?Q?IAHy6octfPudo8nzt9NNEj+lvtBsJ+l3FTSg3x71jELtze1oIP6MWKKWQHCd?=
 =?us-ascii?Q?k3w4ahpp1e57umrXF6z283Eu1g3+FLE/qpStxUvu7+oltAAZ6sVr8Eu7/7hZ?=
 =?us-ascii?Q?Hcj9iZEE2AQWlqhBXCLixxeSNhytN/gNXyauYl823tF2Y4tArPnukZDN4vkx?=
 =?us-ascii?Q?tyO+yu8dleao9qotVkO2QZSBCBdi8IpQfUVWBxv7xWYr3t1qN3X7Cx8KMwlM?=
 =?us-ascii?Q?On3NkWdWgxQN8tNmW7hPN5Zno5jo0YJCW4KikDScyZToNqskpiagjfRFUtcd?=
 =?us-ascii?Q?2Nfq/gfxhHOcffNZzNjH39KhS4mMewS8jwTo4kFzOeTdv+3flmAngVMFF9+V?=
 =?us-ascii?Q?iU4WRyremz3guWNNhrZ4mOiIEyf9rxz8ABEZ/+oj+D7lk9aBPf837zeyQg6Q?=
 =?us-ascii?Q?artcHZB/NQ8Mjs6eHQnrYViM85QkTsPz6+X2hVIjOU2Z1i1PWFq3P1Uyf29H?=
 =?us-ascii?Q?oFOoWsH+IkilvTrkQpagxOmVc0uaLiTVJ0xeirvG0WS+RL0ejfQVZ1rv4JTV?=
 =?us-ascii?Q?Aixu+PR8f+0dP5VmqxLkh/lFvawAJIuakn+v81PsEiv5+RCZw6fxsH4Yyne+?=
 =?us-ascii?Q?blr0AErkvSZaTVXdiexr6C7DBBvm2GUHJS75Pn0iMb3owiHnDGYSl5ZZ55+x?=
 =?us-ascii?Q?1Xknj1adDCV4owwVjFxN64+a+hNanDY49EiCI4FcKbrNDQHBo1/hm9h/8UAQ?=
 =?us-ascii?Q?b15k9sPhNh8WYxc9wt1riHzLq2Q06X6VUvWZ0kIflbWGNdHZOkZqY/4PIXik?=
 =?us-ascii?Q?2W6zMAW/9IbwYY4PpBukL+Za4wCMHwinRM/LgIc1NOztWLbAZMwoii8do0YM?=
 =?us-ascii?Q?DjtZyPiE4Delz2ddKCdDwQGaTaljUeEuMSsH7KPz8F5kuV+wSP3ue63LUQX5?=
 =?us-ascii?Q?Nx819rs3td9yuxHNC5swEuQsJrUXxzDYg77dDR0Bf/mNeReVmZ45FnmSg6Wq?=
 =?us-ascii?Q?9BomQFM5Yi6qDpVIZD+uJIVytUg7/FmwW735wbkWJtGqFvWEnzULTMpaisqv?=
 =?us-ascii?Q?HIEOgiepLovhHsrfJk5BHcbdz5mBt7lvUCaTDGwfsnpq2b5xncn6dydsPz1M?=
 =?us-ascii?Q?61tgadbOJYPkjRMOBETEMktveS3rd345AxwGh+8zy0PauF0GvInmL/MoGeKy?=
 =?us-ascii?Q?q+7UneUIFECe2gKt3Tky7ME8xjyS+RhfdG6mh57p3L1iZ83fHqwtK+cmicKy?=
 =?us-ascii?Q?cJqNsV/bQpm4xNna4jxHKVLnhYYIYN0gAem+r7RsGsKEL1Su4446kYPiWlWm?=
 =?us-ascii?Q?oB9IfsJHhicHMGNZALQr34NgF0RQ7vgFy3lYXJaQDxn3s63X69hWikfvJl7f?=
 =?us-ascii?Q?7jdqlL7J9RIpNjgvHn94xRnNxsI6lmZLUmwap5LMC2/0HlQTXfSRp5Bzi9JS?=
 =?us-ascii?Q?YXyxb0ea7IK/G8tjwRlIjGo99Pho+4U0crC//za1GXzKG+4CJDEWdBeJtuOw?=
 =?us-ascii?Q?nwO+RR2dtHwjV1UF9vHxiveIsGCjqq2rMm9yrwGAu6P0wYGJUPUDRwEacFzj?=
 =?us-ascii?Q?Lwu3H8bcmTOuv3sBj7uQ03Gv2gdAFNgdOGVwkIyH?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc63cc62-080c-46ee-2ebc-08dd0e248f51
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2024 14:13:54.4836
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2vek6YG/LSQeUTDUsMcGrN5/Zz/Nshek8bsRvTkfsc/HxpFKPK4K5ctNX3SYL/dsyEEUZWETXRIqNgfIj8IoUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8894

From: Alexander Stein <alexander.stein@ew.tq-group.com>

This adds DCSS + MHDP + MHDP PHY nodes. PHY mode (DP/HDMI) is selected
by the connector type connected to mhdp port@1 endpoint.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
v17->v19:
 *No change

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 68 +++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2b..df8ba1d5391ae 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1602,6 +1602,74 @@ aips4: bus@32c00000 { /* AIPS4 */
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
 
+			mdhp_phy: phy@32c00000 {
+				compatible = "fsl,imx8mq-hdptx-phy";
+				reg = <0x32c00000 0x100000>;
+				#phy-cells = <0>;
+				clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+				clock-names = "ref", "apb";
+			};
+
+			mhdp: bridge@32c00000 {
+				compatible = "fsl,imx8mq-mhdp8501";
+				reg = <0x32c00000 0x100000>;
+				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "plug_in", "plug_out";
+				clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+				phys = <&mdhp_phy>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mhdp_in: endpoint {
+							remote-endpoint = <&dcss_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mhdp_out: endpoint {
+						};
+					};
+				};
+			};
+
+			dcss: display-controller@32e00000 {
+				compatible = "nxp,imx8mq-dcss";
+				reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
+				interrupt-parent = <&irqsteer>;
+				interrupts = <6>, <8>, <9>;
+				interrupt-names = "ctxld", "ctxld_kick", "vblank";
+				clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
+					 <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
+					 <&clk IMX8MQ_VIDEO2_PLL_OUT>,
+					 <&clk IMX8MQ_CLK_DISP_DTRC>;
+				clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
+				assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
+						  <&clk IMX8MQ_CLK_DISP_RTRM>,
+						  <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
+				assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
+							 <&clk IMX8MQ_SYS1_PLL_800M>,
+							 <&clk IMX8MQ_CLK_27M>;
+				assigned-clock-rates = <800000000>,
+						       <400000000>;
+				status = "disabled";
+
+				port {
+					dcss_out: endpoint {
+						remote-endpoint = <&mhdp_in>;
+					};
+				};
+			};
+
 			irqsteer: interrupt-controller@32e2d000 {
 				compatible = "fsl,imx8m-irqsteer", "fsl,imx-irqsteer";
 				reg = <0x32e2d000 0x1000>;
-- 
2.34.1


