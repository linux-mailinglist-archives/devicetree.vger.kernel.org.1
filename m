Return-Path: <devicetree+bounces-15794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04E7EBC69
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 04:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A90DB20B54
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 03:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED70680C;
	Wed, 15 Nov 2023 03:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="Zv4iYvp8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4DA23AE
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 03:51:48 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2082.outbound.protection.outlook.com [40.107.241.82])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5825CC4
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 19:51:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcpbKR8JqA/Z82np8e2T4nfeIJGjL6UKvnWnbv3ybZrPlSVN3kl6glKl9mzPZiHzIzVuUxRXjq/nzb+h8S9eBEFKoZdyfOY0WdPbe5oE8GRwl+Xp2Bi36/vb8crQyGhVki6pdYUgteX0W5IwK6D80BnDokood/yYNfJMT1vkOk8og0EoY0SShnkJJ18BWTq33t43Qq1w1eglFESbbRRtG5WltErwtbfUV2E+u4iZcr3QtEn0+o3V/bZ0f3YXA4guiPnwe5i80Xg1GfLgyCx9XBHPqXG//LkX8iCq524CQBNAepZUaUUD/c8Wt5hV/VwbSqJS9xwoU0jW1P2MpmTNRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XobQILw4B8AQw81l+m+/MEZ2+5y3teynWMXG3CfSYJY=;
 b=clHoVsb1MBfyBZv8OMx/Hy2TJwA4kQAHCUkDLGcNc3HwoYsaPqs5lngPBxOzoR/tLUFkyvVSWyQn3t9I8SxPvNFerzApdyoOwviVdvD6MxQoaWgnnmAWjN2vco0+RzwWEZc63qg8fMam5StAUb+vPvf8NqUBYBGeN/MOtiUP1+MNIP0lVMubRtiirZyDDsl55d6ocnYOIccKTxfW12KXs/lkUvqdXXpNGRmkBhG8oHE3yR5CoKjVUi1URiHblbpWX1zFiYrLlbeke2uTneVFm7YFLSlpk3xJZvjVdPfgDFWEysub9BVr73wYzzh2ZXyLowTGWRc9LA2t5ZPOmAl1xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XobQILw4B8AQw81l+m+/MEZ2+5y3teynWMXG3CfSYJY=;
 b=Zv4iYvp8c1LQJbaZY6E5SPoEd/6IsqaYvPqTEYAfWzNRtahSSHZ7iJobTglonk1OokZGLYwBGTwmTBI5kV2RkXv2XlskIkj/3MsZjerZunECmj4dtRRe2acZOl/Dh9Jbxh0SLwAxqlsLrWZrs989urEXL0YfpdtYWufuay0Rdyg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 AS1PR04MB9480.eurprd04.prod.outlook.com (2603:10a6:20b:4d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.13; Wed, 15 Nov
 2023 03:51:45 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::c09:60ad:6ac5:d57f]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::c09:60ad:6ac5:d57f%4]) with mapi id 15.20.7002.015; Wed, 15 Nov 2023
 03:51:45 +0000
From: haibo.chen@nxp.com
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	peng.fan@nxp.com,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8ulp: update gpio node name to align with register address
Date: Wed, 15 Nov 2023 11:56:21 +0800
Message-Id: <20231115035621.3834539-2-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231115035621.3834539-1-haibo.chen@nxp.com>
References: <20231115035621.3834539-1-haibo.chen@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR06CA0004.apcprd06.prod.outlook.com
 (2603:1096:4:186::20) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|AS1PR04MB9480:EE_
X-MS-Office365-Filtering-Correlation-Id: 303f6674-e426-4a06-0c09-08dbe58e2fde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	KoTgmg3CET2pxdfPZxRJvovXS9GNbI2ZTrkL1ym6wWM7FGgZBU5+9S9whcU5h+UoWq5+tLkghxdAjaq7y6XPXK1+7dGv+4kODPdaIAwAnxR47nLcM9RhdTmaMGECXLdEkSdMMf2iVig4OWKs1val0LI3qeWk98QZRSwfJ/WrMayspyvPT7qFz07aRqeFQNngdEwzyH13hU6EqnRIXRjoGyvSQwfRPgjiyndJzxtG9lxHcSpovHPxI8CBccYT2cKzFGBmDAiItPvJkfvtOnkdqyCB3SWPKpNeN8zQGgOLrMQj04WGi/hluG1odpvpx7E+2ymgISN82xDrUqlFyZurm9sT4PfWfdGpN2IlBd1KSU4LkOd/eOXRqJj1DxVCV3106Oi8FFxY5plRhMjg5LSuZ5U2QallBmMVAyqS/+b6C1MCSXLPIGiMsDEVpQ6Y0DPmE0sYUJKLGI8MVAc/gVXYD58rjF/d13E/GucqMbkY23AzmoQhwDmJEz7pqc8zyWP/SEejPs6ZtTuRmKSgMwIGY6YcDmfuf1MwNtahmQZGiB6DIX2kIVIxTcrC3tpGZj2Ds8ZLT64tml6jmP+nN2otdNcSFFrfQxYOIr39Qmkb8vKJr/piZmECL0U5FvDA5UkN+5FU4L0sh0eMDcgrZgWAfA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6486002)(478600001)(36756003)(6666004)(6506007)(52116002)(316002)(9686003)(6512007)(66476007)(66946007)(66556008)(38100700002)(41300700001)(83380400001)(8676002)(4326008)(8936002)(5660300002)(2616005)(38350700005)(86362001)(2906002)(26005)(15650500001)(1076003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ymBNElCWu5y3j9qUiKha01c9n6lku2eVTlARoazKeXwi7kSMFxfIYhD6yf5c?=
 =?us-ascii?Q?2wggFN3tUtB7pv2fVki+AjILSK6etRSVislVDaVVVyn+V8RnJSGLo7iyvy7t?=
 =?us-ascii?Q?P+WqST02afTDpbOOOzC4aktlRE/M4oQ6fzcSfo4d7qMJvPhF4f7nAYtBoQ6N?=
 =?us-ascii?Q?nzCefM+vSAzIVj0d9kOMLYmessImk6VqsmM4uLN4qGp7mjffmym6rXVI3aWr?=
 =?us-ascii?Q?DOCi2jyQsgtMeZp/1l8WEAsqQ2o4wpQ+IOnT/LNln2eryIPBVok1IUIbhYpF?=
 =?us-ascii?Q?NK/8TNERGRhE1qvhZhYmIwLIOQKLIvo/ZlQu9RAyuSL3FGTwCwWtxpfQAQq9?=
 =?us-ascii?Q?CmU1HQ7Ofn/f1Er2+b82KjI23+HOK1/Lok1rHkxwrDseWEHeVYkBqCLyIu8p?=
 =?us-ascii?Q?wdnvNy8iLHq/9sEneZTXc41S2tLVwb70Wu+BsmvK6ftETuk+aGiVa3indN3W?=
 =?us-ascii?Q?HKMw+Euo2ylUIRZuQ98PFsdthMSPgXMwK25cWa62nuYy05ZHw4i929A/pQoi?=
 =?us-ascii?Q?GrOyp0CyRg3dvNDuEMw6P1QmqUT1cI2/tfLKzdrqU6+IWQZtVCPK7G1zeR4E?=
 =?us-ascii?Q?cULg14UTPuHHMPVamjZiKbheCMGivztkMaM4rWEA1JF1rVC6cZSYTUUl4qCx?=
 =?us-ascii?Q?c9cMfBAuYAFqTYH0pV5RKdLsc364+eafamDn6Smq5IcIcv/asAYysRTFs8Bg?=
 =?us-ascii?Q?iFYTVXTSsCkWzGqRafMJFXPi7398m9LXVxWqgoMaTWP0UnWb3T+TwzPsEArB?=
 =?us-ascii?Q?w6jsTBFBa1Ks2d6cB2X5K5S56rqsFV1Oz6adj7ZGj5YA1oxTSPn3PtnF9L30?=
 =?us-ascii?Q?yVDUisC4RvmIbf3CL7t5xHYesqviEP5uac/E1psTeHuJ72A/y5GanQgpqP+T?=
 =?us-ascii?Q?Ov5Sj3d63tY29lKt5Oe6pCryHDVbv7HzYbz/0a6W0U7ri/1E2RJkchxiVQcn?=
 =?us-ascii?Q?XL7ebAzGfyCqOUsXfnPG+IzCRrvuWm+SbbuNYS/1wyHN21M/j+fXKBWny0Bb?=
 =?us-ascii?Q?u+xQ2LjEuQW+Ix7r3a0v03DKOPdbi1vAHVUVKms3cJLlfSs44S3G0WcmWwhM?=
 =?us-ascii?Q?b7gLK9YE3JllJOhuw+5TY1YX+wgWk4B0O4Akn9n9rjC8f5s49fG1LlR/tx+r?=
 =?us-ascii?Q?47S1PlRPk4NR0AiattnBCEr6H6CT5JoiMJPNYBPCspgBaDfQ7T0kmNZ3STW3?=
 =?us-ascii?Q?PLYGNTl6SnqvD6NiWuxTifGqvrSyYS1h6WIUxiG+hqQwC2geaLZ6I16kyqSJ?=
 =?us-ascii?Q?NKcLLK3WkEUB1X5Wm8Bii1uVLS+ZANoI8KLhvxrZSO1s87VtmRDFZNSzSWI8?=
 =?us-ascii?Q?mwASPR6jRKTxKtTvPnY8ojSB4FqKF7qbpXOaNYnRIAS/YWKEtXjKTBMXHUnT?=
 =?us-ascii?Q?AJse5hEXy90uGYn9F+mDfCFnU520fU8UC14Ow99AZCWmkjX9a9KNM9L1/uqy?=
 =?us-ascii?Q?d8ugxeeBX54GWmpuwEARsq3Cy46dG0WR8OyLozXcrv3C8cFMnn07x0RlT8Hw?=
 =?us-ascii?Q?uuPSXg49XuhfA/9UJLaETtoyjdnqGUGAAIWSo2N7bnLReqyfqikLdXW/64QT?=
 =?us-ascii?Q?PK3VWa9jpa96FRulFKbFukMtXYG0PeTa7CQKfv22?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 303f6674-e426-4a06-0c09-08dbe58e2fde
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 03:51:45.7478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KflPS8ajTbOUcYPj9YUnT0islQdvaaCzy5EAHZhGtiUe6ksE30qzr9wmBJFe0MBt1WOEIifXBC5FgdF/7DM+ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9480

From: Haibo Chen <haibo.chen@nxp.com>

Change the gpio node name to align with register address.

Fixes: ac7bcf48ddba ("arm64: dts: imx8ulp: update gpio node")
Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index f22c1ac391c9..c4a0082f30d3 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
@@ -483,7 +483,7 @@ fec: ethernet@29950000 {
 			};
 		};
 
-		gpioe: gpio@2d000080 {
+		gpioe: gpio@2d000000 {
 				compatible = "fsl,imx8ulp-gpio";
 				reg = <0x2d000000 0x1000>;
 				gpio-controller;
@@ -498,7 +498,7 @@ gpioe: gpio@2d000080 {
 				gpio-ranges = <&iomuxc1 0 32 24>;
 		};
 
-		gpiof: gpio@2d010080 {
+		gpiof: gpio@2d010000 {
 				compatible = "fsl,imx8ulp-gpio";
 				reg = <0x2d010000 0x1000>;
 				gpio-controller;
@@ -534,7 +534,7 @@ pcc5: clock-controller@2da70000 {
 			};
 		};
 
-		gpiod: gpio@2e200080 {
+		gpiod: gpio@2e200000 {
 			compatible = "fsl,imx8ulp-gpio";
 			reg = <0x2e200000 0x1000>;
 			gpio-controller;
-- 
2.34.1


