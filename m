Return-Path: <devicetree+bounces-12805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967CA7DB712
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6182B20CA9
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6F4101C8;
	Mon, 30 Oct 2023 10:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="WuOUcBEN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B927FC17
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:00:29 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2089.outbound.protection.outlook.com [40.107.15.89])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89BE11BF9;
	Mon, 30 Oct 2023 03:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBFQsBHK6ojYarZctqK1u2quUbOIALz5DIhlkAbWcXvEuV/ZQhBD1zQjp5ZHLuF69AgJKHrONxo8ZGf5v7GO0wGHas9LiT6T3gKMKC/vZuU+k7ajbAnugRMZMyDBi5U7oZwiM7Cf4MpKricNOfWRm2okPnPhkmUPw27Hi88B6UZgY1PX0HhQLHrHFvftsZUdbXmb/sl6HSaBmb3lP/JaTp6BMQsw+ttc3rcH46NML5n+Rl7lcca/7Hg1u1Hv8Z8u5dsxHz0OLYptvR3nIt4NHypWheXIyN3T0rGTBCk4it/NrQ5KawqxGRRZYTfi6IzfU6cy1RxAvSNBxAARRKuxSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Gklodh0vkB7vwDw9W5uxt3dyUvkdL1vVF0c17lTVEQ=;
 b=Vibiddq4yDyJ1/nFj5a16TKdjeO/vz7YEHDiUyQG8HRipSCAS9WTNWka5NJZG+ik4jhXaoqfg345sFvHRB+pOzqNR5cErbMU/iAiB3a/CXIsBVWU2aiXsaTcMihRPzEhN+g6g9cPLg1KQ3SqUGcJLSFBNpe5xU/OE6ohrww6C18bLv2vaIpHIeEy/A00EBNSQghI1HIAbkTDQAcQlt//Mj5U1+n25j2TIs9wibfzSlIIjt+foMvW88Dne7LR+4WRoHvzfvSvjqo6fFysqG5IvuJPGZGCot9TJnJTM+xHpDd2/p8uVPNI35pd8wgG1xCDLoRboz88FDMF9cHG8EEfNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Gklodh0vkB7vwDw9W5uxt3dyUvkdL1vVF0c17lTVEQ=;
 b=WuOUcBENxz4lu4xl9+CKJzIWvUKOBT1FnT0ohxHqDylTWApOpZVmRM23hf/Q6jFJKWY5VmBLQSwakBVuSR5BipFC8RoiBd3X0ckFVRsDky82BYC4M41Un+U+AT5r98OjEFzwRQXZkWPqmAikGuk3/Ue1PAUxZzWfObuLuO8Wa4c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8630.eurprd04.prod.outlook.com (2603:10a6:10:2dd::15)
 by AS8PR04MB8513.eurprd04.prod.outlook.com (2603:10a6:20b:340::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.16; Mon, 30 Oct
 2023 09:59:56 +0000
Received: from DU2PR04MB8630.eurprd04.prod.outlook.com
 ([fe80::9ba:8e4f:1465:9351]) by DU2PR04MB8630.eurprd04.prod.outlook.com
 ([fe80::9ba:8e4f:1465:9351%4]) with mapi id 15.20.6954.016; Mon, 30 Oct 2023
 09:59:56 +0000
From: Pankaj Gupta <pankaj.gupta@nxp.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	clin@suse.com,
	conor+dt@kernel.org,
	pierre.gondois@arm.com,
	festevam@gmail.com,
	linux-imx@nxp.com,
	davem@davemloft.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gaurav.jain@nxp.com,
	alexander.stein@ew.tq-group.com,
	V.Sethi@nxp.com
Cc: Pankaj Gupta <pankaj.gupta@nxp.com>
Subject: [PATCH v7 05/11] arm64: dts: imx93-11x11-evk: added nxp secure enclave fw
Date: Mon, 30 Oct 2023 15:28:43 +0530
Message-Id: <20231030095849.3456820-6-pankaj.gupta@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
References: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0100.apcprd03.prod.outlook.com
 (2603:1096:4:7c::28) To DU2PR04MB8630.eurprd04.prod.outlook.com
 (2603:10a6:10:2dd::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8630:EE_|AS8PR04MB8513:EE_
X-MS-Office365-Filtering-Correlation-Id: ad1db519-5fef-4b32-eebe-08dbd92ef830
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	I8VR1FHQCYZG6CIsVv7dwludIJKVihc9WQrKtlZderZD6IhSOtoySCpacEFQVGxw0/IGKHTGSA+AgiUChWSh7Z3/UCBSgz3Ymso5mCeSNOSp3UMIOfDjp5nIt3PdNWyuKnrolw2OEnMft/zNceVbUJpb+xACE33EHckwcbdFqmgn68nORmntX/zczAN0aCRYieG+xvG3Cbgo3Hn0/PGaNTdLxarCcfszz+HzSGoFaGc8uD6zl5KITgUkIC5/VAhPzY3wqobCH3H95YgQUSWNMy1UcUKLIKyw3ERufLdfs1JX/s1T3RBatN7C9qaAxEZdjnWZ2VyKQNYzMiSSk+XSfnmon0/+1ZtKXUT6nLGFq+pQRcbTkLrtwqnmgAoww95pD1T5MRaMvoKj5BwJ1dscYtHZFKy6P6KUj2blVYi9O0xHyRC4jCbq4pRw47bG/7mJSivwIHLMxNhEdKddyqtaWe278CvFqLnf8G1bX5giYs0mxn8co2oDv9gFmmAH4O6tlfEIHEIg45xJvOLER0f+RqRdfXQrFC2gyv5V6VJB00qa91WySgljGlF4e+6nwHPZwkvZtK1lP6fNj7ixHM4drpQWtrqlql3U5lcX0Y/UW0wvG5f/h32VxbeCYo+FZVMrH4QT/PbTtPbtKnkpQ1pNSA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8630.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(478600001)(6666004)(66946007)(6486002)(6506007)(83380400001)(36756003)(38100700002)(66556008)(1076003)(2616005)(66476007)(2906002)(41300700001)(26005)(52116002)(6512007)(44832011)(86362001)(38350700005)(921008)(4744005)(6636002)(8676002)(4326008)(5660300002)(8936002)(316002)(7416002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?6IyaLI1mtZMGnUfLiupGzAYcN7JrKBqzRa/dUZIxaaGlOxj0Ap7ApT2dSDr/?=
 =?us-ascii?Q?d+vCmejW+byRoytJZ5JMEg+Ck6Bo4oFVNBaXTnzMniFgam8jUM6et5/svZCB?=
 =?us-ascii?Q?fufBgVoy6CJoxbDBch5z5+7l8xsNc5a2M97Q7JXxHlGM9J/q3W85hDu/UMQa?=
 =?us-ascii?Q?kSOQowJxt77F6mh3okXwM/0Id0cHLElg1rS0qcKD4VMuPwgEMEZcCz0U95Xd?=
 =?us-ascii?Q?iEKqqa3F9KBbUXlLvZZJrH3yGFBxzp0uqRApmnKOLFtMvJEa/wus9nO0rpUb?=
 =?us-ascii?Q?ioeimLKGSdHv9GY4m8zw34+MF7IgTtn6nBmRDOm/Is09jSrKB7cfknJocPUT?=
 =?us-ascii?Q?ANoVXujRjLrMSfv1GGf2CJdLmHI1gkLsxEx7qL1nD1Ww+iwgiU93h2zJiLMQ?=
 =?us-ascii?Q?uNxlJ44wy2JX65zvSF6K7AkOo8w9olg/sld2sG8AXEnYdiRrhAHFqJN42leI?=
 =?us-ascii?Q?pfVnl/SBEsyp1bKytz7lfeMVivXHekzGGICaDdic8m+MNCY9jqH/YUoGJ9pF?=
 =?us-ascii?Q?ZYGyh13h4jyWvPj6QQ3lQiUwCSoXVFz0jtqllreudBsIxQSPETGlYe1BT8cw?=
 =?us-ascii?Q?XfhsxlPHa4RJydGgFWez2yk78yzCQPlkBUhONumeNr6bonciXdy5pSfdoNQ3?=
 =?us-ascii?Q?Xmi/jAfRpDs+CuxUc0vHOYh7+p5vEcgBUpT1FLnTHDCg4H7rn2tSl2i0IirA?=
 =?us-ascii?Q?r/FoOoWVzdp6fatR8WU3SffnZiFc9XVOk2JJn63KdTtcmljIJNaVPL5Fo1/3?=
 =?us-ascii?Q?VZtxdJtE0UeWp/VczA+cEwPwCUgKLUhZeU1qIOjn4/hZBpHOWsjomOt1Psdx?=
 =?us-ascii?Q?u+Fv1kBj7EM29Yf5xT6x48AM4ctjEToKpYF+8mypbnoRCh4kO41cTAaNIpTs?=
 =?us-ascii?Q?D0p/4N1ppADhHIahxNnYxl5zN1CED19/tRw3stuzL+n8oHMDucRMkGQp8ChU?=
 =?us-ascii?Q?IalA2LPHo9F3vAl6Ye/rxoj4X+KruSeXeIk3PDOCr4TORirl4HbKDIuT0eAX?=
 =?us-ascii?Q?HDKJ/h0B2+oDq0jIz+2z3kpNddsQjMeaIzbVR6MtiZQmjgIGYFr7SYTH+Avb?=
 =?us-ascii?Q?gnp4dyGoXg7rwEqD3LNS6PYOisiTSjgQR9O3XHB2Pzr+6YM2v8cnOR0gKa/B?=
 =?us-ascii?Q?uMkhVHTFbGCeqxxrSSmbA900iznDwGzC44zRP4uY5x8wq2l86SMy4Fb6+biP?=
 =?us-ascii?Q?ej1paQcHLMRAbUpJ+Y8MNhnw2zH0EgAc8QqB9sxwU6zHSKvAqQI5B69pAYCC?=
 =?us-ascii?Q?2TxZVP20k8YtFNCMlfX7dA+AgELu3gGYnigkOZDt/qNC0vQvVCsRI/B7eoyk?=
 =?us-ascii?Q?2xIyrPx/6YhJFCe6B90r+ic81Ag6pj3WnTRbzEhbusl8FVSiwYHt1bYCBH4W?=
 =?us-ascii?Q?kcma7Mir6btbJQIKHQJUQdTZwoxpkVBJVy6up23wGzoQOOwMaAMdgQ0OZC2P?=
 =?us-ascii?Q?pJcjWQOsLYvxVTyxgYCgnpj83ahM5Bxa+Cskt8hy7n/auahc9f9ssiNbR47E?=
 =?us-ascii?Q?BVEwW8Rlckc9Lf6v1hNSZ5b2uLmIkAL5YlNUSTa7gEyFagmXdkVGkGtPrlnU?=
 =?us-ascii?Q?sKusdGk/yHZF8qor6JdZZMpMLqMWn4gsfYOCCzcj?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1db519-5fef-4b32-eebe-08dbd92ef830
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8630.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2023 09:59:56.1913
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ul3hK0tM/trBPRb8RV/F45q8PXWcQ9Q2Z8uCOZ7G3w8LSkEsRpe4avQndtcWnb8virXqGHvftJ4dD6ElqON5+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8513

Added support for NXP secure enclave called EdgeLock Enclave
firmware (se-fw) for imx93-11x11-evk.

Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index dcf6e4846ac9..197de680fd27 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * Copyright 2022 NXP
+ * Copyright 2022-2023 NXP
  */
 
 #include <dt-bindings/clock/imx93-clock.h>
@@ -925,4 +925,10 @@ ddr-pmu@4e300dc0 {
 			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
 		};
 	};
+
+	ele_fw2: se-fw2 {
+		compatible = "fsl,imx93-se-fw";
+		mbox-names = "tx", "rx";
+		mboxes = <&s4muap 0 0>, <&s4muap 1 0>;
+	};
 };
-- 
2.34.1


