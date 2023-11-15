Return-Path: <devicetree+bounces-15793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9257EBC68
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 04:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A6C11F25F39
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 03:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE4464C;
	Wed, 15 Nov 2023 03:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="LJbIHSfR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A40E23A5
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 03:51:47 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2082.outbound.protection.outlook.com [40.107.241.82])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B126C7
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 19:51:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isqXb1l8p/73fHKrBikAvZTAQbmIZ08vVk0wRzBiDg0doSYu6be0eRorBCmW3ODbemutW/ADxSOCld39vwuD/WftVS02p7nCBNFC0zqCx//nqUGEOeX1KvZK5/PRsI1xzWL6ZYjwtOH215yi4S/2j/dNskrB8GxweEzqiIu3AQs3+glx5xUNUAJg7tpPxnE2sW6xKGEzuO9EazpigN0i7DAtfBcCYz3HSPFDprEfo6JIGgjCYSTn8KbbXiOmCZfnYIEgdf+CjCqvHLinXVJwEcr2Ivt+hrPYBGynem2PpXRzdhVEgpO15x9Mbzx4ZKKKNLNMd/SxXgO8S4ecg6QD9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5xZEvubIil0vcgQ+2naCagdwerXwBzfPonV8HveKGM=;
 b=X+eZepaL7MCQqOyfIz2ikg7lMn4OQYMRva7wMh41SY1cwLcHsEEbRKSziY1sDgL4EZNEXc29tzM9Ny4pX37Ohbl9q8AHE6ieD/cU4E6R1SO0hlP7AFylIKy+BKga0QkDXNhnUtqGtPmTt976fBw0cB56tIAi6KCJevc0DQ4TFCTTM6j46E+Ao61182rRyAYlZhUQwoXUOdHz8xQoeQqQBD+E95wz9xRiS7Xy1pUUp7zZ0aHsTQiIahUvzvZY+j2mbZHzZOIluHQYhp+7ZZ7ctW55plFCXezAbgiVI30p9wUFg7Rl5iknPK8YXJ+t8+mNtkxgncMGKhiLakxSCq1RRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5xZEvubIil0vcgQ+2naCagdwerXwBzfPonV8HveKGM=;
 b=LJbIHSfRhTuuP75skquLr4avEOziMbnHW7qIUxZUGMebrTKCx3Hceu1xYqHIEruUbm8naXMa+328GTvoQz/6AVNyermbsuZNSie+iD2HyhY4ZPezCJABimLQVSGD8efzSGVgxBT32EyYuDnEISqduvPM5RroqgjBZe1EdgHKc+A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 AS1PR04MB9480.eurprd04.prod.outlook.com (2603:10a6:20b:4d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.13; Wed, 15 Nov
 2023 03:51:42 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::c09:60ad:6ac5:d57f]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::c09:60ad:6ac5:d57f%4]) with mapi id 15.20.7002.015; Wed, 15 Nov 2023
 03:51:42 +0000
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
Subject: [PATCH 1/2] arm64: dts: imx93: update gpio node name to align with register address
Date: Wed, 15 Nov 2023 11:56:20 +0800
Message-Id: <20231115035621.3834539-1-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-Office365-Filtering-Correlation-Id: bc4ae778-d550-4836-25a8-08dbe58e2dcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	+gWP+WcAyUauqa8W6oY8ckzksC/14WUH2RXJBScJv+qUJW/oPuFlmRgt66XCMtBq1eeONqAF+Ke/WLXgu9VyyhiA4ryeD4nB7H26K0B6/YmgndaT/jcb/oNYAxMxJjaDVJz07ClXpJmdk2EaARO7Y2ggTuaJxcZR0nQKgf6xJXYrBImMp4IY/fMnbyMcgjGmbaNKuGJPmvBeONkjfQ6HsNpx7Y/FowgyadvMhya6kKr/QSoCAjURUHN6LFL6/NPnm2ZmxeLO9W6YGi9D+6LRo3u5OqeFr0ftHGuCeUNk8fLVjaNDggdX2YTVlSy72LUfgBDqAoJ+N7j+KlGH7nPrfbm48oHNh+cFriM9WAioWZSniHkubGL/8M870NWGRIxSLbGFDBSArl4HWAF4QeIOK1B4HgI08e1jACfN2bfj4iT7FPradbWwPZ9xPl0/d8Ul+ket17yRoUbrUh75dudoJvRa8jxsGuM/tC1KQf73V96Pu8rZbCXImpFSarRBumBGT1jrJYyEaXvklAzuwt3tm4D4Em4ebIbBeT3wYQefybYTAS2v563Guag33GHG4g6jQdR2KXqSaVtmbb60lGYuQML0XoA37rUq2At5qSjPJxx14p0AXSUZYBrxN1kVoSUh
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6486002)(478600001)(36756003)(6666004)(6506007)(52116002)(316002)(9686003)(6512007)(66476007)(66946007)(66556008)(38100700002)(41300700001)(83380400001)(8676002)(4326008)(8936002)(5660300002)(2616005)(38350700005)(86362001)(2906002)(26005)(15650500001)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?6d1Q1sd00db5xWSwBekmGlFJrFjXWBqD8VwHyKVXGnsyn3NajF/aYNZW3bMq?=
 =?us-ascii?Q?1arWp+PoSvRDNM+AJ65QpAcqL4hCGgXp2V5BDBdNddJJ2pG2beVQCuxqBFlm?=
 =?us-ascii?Q?6uJmrhDko3eSs4dpyNUqY3/kR5OoYUGV6pwklcBYKQDltifIJyn0AYEuRQcc?=
 =?us-ascii?Q?qGFs/k+/zUTPI3R6JmntyQlCADdVlTPTdoGJSUnX04Z5bo61Lh1+l1SiCjtg?=
 =?us-ascii?Q?rbbNiYPeVFZQVrjcsyas/eUtyJ3GDwQNNVdinLlPJ9BK75nJllqTAb89jH+8?=
 =?us-ascii?Q?R4r17Z4L1w2dqAwdtkHAnQmsn3nCshHYl4rwkJW4XFpD0CQY/V7zptgXWqSZ?=
 =?us-ascii?Q?oSQ7I1cULmjsEPqDiEh+XaU1e+URJFLOSFF6Ie5eUh2ALXGOF6KImF9diM3z?=
 =?us-ascii?Q?gNsHjJN4iS1yEUqLaPChson3LVfLmUt/NAPUmfsJ1cWGUhqLUuCJryQ7V+Z1?=
 =?us-ascii?Q?5SAMaYHASJkaj8C5RLvMOid+FX+HEi3aUt34z3Idxm+nW+vvOSElrccs+9V2?=
 =?us-ascii?Q?A/s2AyfbD4tBTFfvDK/Q91D4oC7ajpdhBJ9VdmCAcEcJQGtyY5Z03rhE1B08?=
 =?us-ascii?Q?Ko6D8QARJo5wmP9gBoy33s+QOWNm8pSgHpf8rC1+9a2EGN76vMdZm6k0/tKk?=
 =?us-ascii?Q?V/p/yWwbPjJX+UZWMKbDUA01zU+QZh8+g0TEG9nbnL4Sl9EG6dO9SYwrd6BB?=
 =?us-ascii?Q?WR/PNWdmqaISjtV6kVGUxq8J02RHY/9xBRkJZhsQ7DLayTu54p6eHhlYE68f?=
 =?us-ascii?Q?2UX2CSEz1XoyaO66H5vj6OkneKb71D+NtecitWg0Sfu8KYEBOqG+GfHKnHL8?=
 =?us-ascii?Q?c98HxkEgGtsvgFxhUES6761tCXqEhzYNbD9UaOagV4c0PcM/D2IF32OgNFKx?=
 =?us-ascii?Q?noNXpg7p2wvaDTUx722U89uaGYz3jRDNvIEZK7WAGzvXDu3oUupj6PUW1nkM?=
 =?us-ascii?Q?l4M1F1nzlMDxoZw1R/EcbApQpOdzq1P9tCCVHoXU/8JrHsS03cxTs8FUXKbL?=
 =?us-ascii?Q?6pkcuKqZQq7SigaZ03lDNcES7SuJeG/It6YWAfuBOK21xhjAhcvRVerC4XVB?=
 =?us-ascii?Q?37UboBnHVHc2x9X1EV58Jz+D0OH1f9STwGiqjvcp0sPSH32pppvDh/h1p4vy?=
 =?us-ascii?Q?nvwcJzYOR4dCO8GUSaU3F45R2ESGU5azuL82kJttpSQWLVbK7t0V+C36z/nr?=
 =?us-ascii?Q?BpeM1eNCXd4SxHDdhR4RWIOZOAX08kF3yDYWHCcqkWviaEMplNW9hVPCaon5?=
 =?us-ascii?Q?KIxqkJynF0OiHmUg8+0j2fz5RrKDssyOW7k8GjrXD6UYIE/2LtB3wn5e8Zna?=
 =?us-ascii?Q?QHimBGyAXWmxQ8apyZRtFTRqUg3nP3B3Jr0R2Nijt9cnBuYgQM1rgGCVpZqC?=
 =?us-ascii?Q?zEyeCMpwhXTzgzMVfkG03COtQigYL+k178UxpR5GHidBQ+NT0gAPX3JLXjHG?=
 =?us-ascii?Q?J6+BClKU2XIg6ul6uomdB47l5IypxvzsnteBGldgZB9j92vL03pJ9tmrUvsv?=
 =?us-ascii?Q?MnQOfiTjGEo3WslFeyqy3RruWxMLa0iRkFuDYqc4qToxabf5O7Y6VDSiNChB?=
 =?us-ascii?Q?Xnn2rrqxZ+LJR+q1cwixRiFfwsuT7aDQOXHF0a2a?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc4ae778-d550-4836-25a8-08dbe58e2dcf
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 03:51:42.1488
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: urtUQMbA0UD4VVGszeDLxvxCb4puJlgLrscqFD6LDmk85rgohqGWYGmCOUMqx3nN2aDake9hi7QebjpcXZtx/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9480

From: Haibo Chen <haibo.chen@nxp.com>

Change the gpio node name to align with register address

Fixes: c1d0782b5fc3 ("arm64: dts: imx93: update gpio node")
Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index ceccf4766440..9f5d88cf2445 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -957,7 +957,7 @@ usdhc3: mmc@428b0000 {
 			};
 		};
 
-		gpio2: gpio@43810080 {
+		gpio2: gpio@43810000 {
 			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";
 			reg = <0x43810000 0x1000>;
 			gpio-controller;
@@ -972,7 +972,7 @@ gpio2: gpio@43810080 {
 			gpio-ranges = <&iomuxc 0 4 30>;
 		};
 
-		gpio3: gpio@43820080 {
+		gpio3: gpio@43820000 {
 			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";
 			reg = <0x43820000 0x1000>;
 			gpio-controller;
@@ -988,7 +988,7 @@ gpio3: gpio@43820080 {
 				      <&iomuxc 26 34 2>, <&iomuxc 28 0 4>;
 		};
 
-		gpio4: gpio@43830080 {
+		gpio4: gpio@43830000 {
 			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";
 			reg = <0x43830000 0x1000>;
 			gpio-controller;
@@ -1003,7 +1003,7 @@ gpio4: gpio@43830080 {
 			gpio-ranges = <&iomuxc 0 38 28>, <&iomuxc 28 36 2>;
 		};
 
-		gpio1: gpio@47400080 {
+		gpio1: gpio@47400000 {
 			compatible = "fsl,imx93-gpio", "fsl,imx8ulp-gpio";
 			reg = <0x47400000 0x1000>;
 			gpio-controller;
-- 
2.34.1


