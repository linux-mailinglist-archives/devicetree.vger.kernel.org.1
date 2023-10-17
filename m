Return-Path: <devicetree+bounces-9112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF2C7CBB8B
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 741242814FA
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 06:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443541170E;
	Tue, 17 Oct 2023 06:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="T6DduUfm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBC38F5C
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:45:55 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2088.outbound.protection.outlook.com [40.107.8.88])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F8E6B0
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 23:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m1Dtx2dZS6o9FKnvLL/R/5hrSR0UxlZNjpKnlVuWTqUTxQ62fxl0K8t1c4Qz3rZMok1S/VmoOHPgWJ54ZafI4jaVHyiedkFGL0l4AX4GslfWxzS7iN+HQGGZhkBu2nlrTdYs9ak7fvwNEn+en1OUGsb3wpLqs0pcHTbHJOdpvISYeUapjPMeRgg8UGRawe4N2pXq0gxSdkDCyTTSV4hMySnfCsXQAlA/R+uA/9phYQPHUs8sh6N4QQkCUFVG5cSkMVT9YPX1EX0QLHDj03ntm5hOcdFZa9tk1VzJ1vwDnBv1GrnzGqyimAXvSilyOyhtMvHFy39523VTwskVT68lug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+Wr3ECrQKOSDp3r5rXXMgrba8C7ZHirtx180HGYRm4=;
 b=FezckS3uxtBp3LtraQK9enn2gGHGLeIOvOWADCLFWu3rcFKZNgSz1AOPitRjJ6BlqcgL3ThsciR9a9Dm73BYxLTsu9cyAoAXvkEQIj/ZcDiV5GOGp89XudFftFbU+rdTGbPEnkT44BElB0RrXX/Pf9mZtxiXW+Nch/Hw/YIG5OneylwyzeJvB0+JDHnaz4P8iNaU0e3JLvi00VHnwfO126/I2MnnndHRy3bu8fZo1SEbquhYyhIsgYkFwGQ7dkkSAPQpb3kN+DvCl01hisV01souVCDGbMBmBztz0H5uJt0fbiELdEKB1Hl8qiJAZ8uPyuM91znJoWhI83BbE7U8BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+Wr3ECrQKOSDp3r5rXXMgrba8C7ZHirtx180HGYRm4=;
 b=T6DduUfmOu5AZniNkTcHIx7OFtgipEz3WtrdmhYllLKg7I+c8Wyzn0KKZHpXkIaHC1FAr8h4pYqU6qMii2Kwmyl0qcujhSoFuV3goEOGsxVPUJmLb7YAhnM3mjQS8bvs+KTcZmjbiURi+oitfBr0ChV+6V6BLLOVUUu5nh/EuT8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 DBAPR04MB7336.eurprd04.prod.outlook.com (2603:10a6:10:1a9::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.36; Tue, 17 Oct 2023 06:45:52 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 06:45:52 +0000
From: haibo.chen@nxp.com
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	haibo.chen@nxp.com
Subject: [PATCH 2/3] arm64: dts: imx93: change tuning start to get a large scan range for standard tuning
Date: Tue, 17 Oct 2023 14:50:47 +0800
Message-Id: <20231017065048.1304294-2-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017065048.1304294-1-haibo.chen@nxp.com>
References: <20231017065048.1304294-1-haibo.chen@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0129.apcprd02.prod.outlook.com
 (2603:1096:4:188::19) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|DBAPR04MB7336:EE_
X-MS-Office365-Filtering-Correlation-Id: a2a06163-808c-4002-559b-08dbcedcb459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	UpD5uJRKsGs2cLtZV/IXou4AhyBvRZ+1NIdn5I9Y8ggRZxzBvdoIKMZakNitbxc3HsPFYjCpiObDgGgmkcRolTRuHRnSuQKjlg20cB4WNghHAkEoUr94uga/DexZS6w2BNb/R8mIgcW4rGOtQqBCamec4qO3kem9w8bAuVe7Ys+ZUKyU334Bhr1J2WJNkL3a63rmblz7dUCnP4i9z+0aYSoj2auSwjJcrjf7L04GmKWk6fcPDMjvpoKAWkpmxX2S40xErcT0WOiuuOIi08a5s/Jxp6/5JHUmfkUqWfVUdbuGZBi59jo4SqTFAbS5k+jMR6FSM38vb75eo5hONrf9Cm9Nrj+bYTv94TRgwW54mfhWCL6Ju5gMiBl9Yh1ieN0PfbIj2yeqhSoA7ye4OcJDpzZf8Qpj3K5J4+FpgMCOpSwWS83iYqNiqeO/ctg4DBZyFAbp1QqhZ51mvRNFtaUdnfEKYnUf+PUfZkeygH+FZYxsdBkcPXobsQolQ3cNmCgwBtS16E/jAPFhSLInggMAAFoqmToK+RpucxSqF8NdyVDAlskcJax8Scf6b8V5plNOWj12bg/V8aU0pYt9mMfllqLln1I48MmYegLLIgGiLuOLZu/wAjoso8LQH3aU0Mij
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38350700005)(6506007)(6512007)(6666004)(2906002)(5660300002)(4326008)(8676002)(8936002)(41300700001)(66476007)(66946007)(66556008)(316002)(6486002)(478600001)(9686003)(52116002)(1076003)(2616005)(26005)(83380400001)(38100700002)(36756003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Q5S/T/IwkBuVEkixjT+D0JULk5fVGg8lFQ53fcgcxs+jloTfX6D7t5mFzqkA?=
 =?us-ascii?Q?8Bcpkkv4qNZXj/mew6eSlRSa1AnNmEipI6hbDAyGj0CY+zs9d0NZTJm+Kd+N?=
 =?us-ascii?Q?rTLsLJUfVot1/aKQDAt+KkH2n+MOwClNTi/DmWW2Ql4rl1BeGpaan1N0e6I9?=
 =?us-ascii?Q?SdQkRs6EPpE4butxClPN1P62fD7dQvos/xxai6Zj/bXsoqKdxUvjj/o35L+Y?=
 =?us-ascii?Q?AlzSVu7BW8+ZGaZClOUe/M1SSjbV/wtlNnPSawXk20AlfobrrOKrnosNMn5o?=
 =?us-ascii?Q?ZPqqyatW9cUUK7H8Vf3rBqqy3s0vD+FHsIs964iKRz8X2ZpzHW9ZvmChs/aX?=
 =?us-ascii?Q?dzPx+Nig55kc+b+ugBEHRCKBN+B/3AdRieug4m1Q1HdxN+kyQhPbtj4sixWm?=
 =?us-ascii?Q?OQw9F0mdIHC5xi84/buDxogB2LUkIs6EXagkzKGIeXv0tWn7561OtDjD3kFE?=
 =?us-ascii?Q?iITVgAetQ3LLid2i29Tsddk9XP7+UUsHXIPU3OdbGX4LO6ICZHv5CLY5V/1S?=
 =?us-ascii?Q?2RZFsNiJujNhqlLQUSUAVrKU+b3pgJQ4KmP7wtwdk8ySvkp3bL6kjrLWzbRO?=
 =?us-ascii?Q?Hm3/2WbNPCjM015z0xdK3XXVWBwoVisEWxLWBnJZp6ZNEV0fwdP1njmrMLZz?=
 =?us-ascii?Q?sjUkEH+hQLUzwjW2QqvBENDvQmyJiWSp8bXcmQbpmzPNeaMVEaBo0quGQKDC?=
 =?us-ascii?Q?JP+5OJzsDNYBMChFOYidKZhvdQE4bVz1AThYTFpb6A9xKVhZCVZILTFsc5HH?=
 =?us-ascii?Q?6O6qhfGKdLY2gVSxdPv4g+HW8ccUY71ZbdeJeiCTTDecha3MIYlxB9g/OG1j?=
 =?us-ascii?Q?spQUunwIzRcfk18ZAIjgGg7zyPkIZ3VdOSVUTN/myAzvraVJPfsgeShSAhbh?=
 =?us-ascii?Q?8DrVKHMKIj0J28zqskd43OoQC8B/mmLlA70dt5rhM0MxhQifAo/v54JEvs9E?=
 =?us-ascii?Q?WZ69N8Spapeaw+eekre5X15g3Ve61WGn2DV/ABSFUAbkOBexrjYea+gp4Vfo?=
 =?us-ascii?Q?hXwnmFX3G7cfhCpE4/OvCH+TdBbaez6L+XC1mlRq+TyDb2BYiNf5iIhUenDK?=
 =?us-ascii?Q?hkoEkvxovAvxWbx7oSjt9fo/SnbX47Mt9yDkqIDzNGI8SrktcGWc++6ioBLV?=
 =?us-ascii?Q?cmT1sZr2yIkwXB6ObSg/BfFbpyOc5fouUzwKefOG9wS4TllbnRlMc0ZHtl0s?=
 =?us-ascii?Q?hn+52WxqVmLM2DucvehpgCignEmeYIoux8y25oSY/K8JzT01ZNVjbCIRaXJz?=
 =?us-ascii?Q?buRixfccSYvxtvbrYTuLhcqA+d3RNVV8HvNiztsgfUF0CVzFs6SYVvnrZs0Q?=
 =?us-ascii?Q?UtUO4knSKSs8wWqpRuWWh55hEJTgbHK3ZRaDe9giEx/+tCdyTzfpX4keD2p2?=
 =?us-ascii?Q?CWqOdtPNbDi1b1UPvlJS/o9UYzI6otZELX44mrpVR4kq+4aUc9J190kQlj1V?=
 =?us-ascii?Q?bgQ/GNXgOiUPDUF9u/px8ADF0+gjBnWpes3PrzcAWM3G02hffVGfJzb5tN6g?=
 =?us-ascii?Q?hRuK4DvPQPm3xizSZmZ4GYDSjzaMm+4Pte23Uik3uBSidi5h/srvLcOwZgM2?=
 =?us-ascii?Q?nPPO2rb6XujHh5CYmlctrpZzV8Kjeio9ts63Jmq0?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a06163-808c-4002-559b-08dbcedcb459
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 06:45:51.9530
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S7lmzVwRCWT14JqTb8Qm8qwW1JInnnkwiwQ4wBPcgNnZl8MH2VgfYYgCJq+49cJs/gW3bF8qa+uia9wuyAWMVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7336
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Haibo Chen <haibo.chen@nxp.com>

For original setting, the start point is 20, after the SION setting,
ERR052021 can be workaround, but start point from 20 is too large,
especially for the LD 133MHz case.

Set the tuning start point as 1, tuning step as 2, so that, for the
40 times tuning logic, it can cover 1~81, its large and safe enough
for all different devices like eMMC/SD/SDIO.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index ceccf4766440..ce76ae9e1856 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -874,7 +874,7 @@ usdhc1: mmc@42850000 {
 					 <&clk IMX93_CLK_USDHC1_GATE>;
 				clock-names = "ipg", "ahb", "per";
 				bus-width = <8>;
-				fsl,tuning-start-tap = <20>;
+				fsl,tuning-start-tap = <1>;
 				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
@@ -888,7 +888,7 @@ usdhc2: mmc@42860000 {
 					 <&clk IMX93_CLK_USDHC2_GATE>;
 				clock-names = "ipg", "ahb", "per";
 				bus-width = <4>;
-				fsl,tuning-start-tap = <20>;
+				fsl,tuning-start-tap = <1>;
 				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
@@ -951,7 +951,7 @@ usdhc3: mmc@428b0000 {
 					 <&clk IMX93_CLK_USDHC3_GATE>;
 				clock-names = "ipg", "ahb", "per";
 				bus-width = <4>;
-				fsl,tuning-start-tap = <20>;
+				fsl,tuning-start-tap = <1>;
 				fsl,tuning-step = <2>;
 				status = "disabled";
 			};
-- 
2.34.1


