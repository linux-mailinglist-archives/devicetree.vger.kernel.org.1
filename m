Return-Path: <devicetree+bounces-94006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9072953A3D
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 20:37:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0741E1C24A2B
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 18:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7907857CBC;
	Thu, 15 Aug 2024 18:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nuvoton.onmicrosoft.com header.i=@nuvoton.onmicrosoft.com header.b="QYcNb1ov"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01rlnn2088.outbound.protection.outlook.com [40.95.110.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6946E9476;
	Thu, 15 Aug 2024 18:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.95.110.88
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723747069; cv=fail; b=HQR66wHOqc/OA3t/LQG7ifHmVUXu9SHfBDE5HkugmPVWHCYipgxj9u7ArhX7JVQ3yvGgPTsbz+5Zc/T1fksI915da9ji6YZFc8csiOoO5P88sriGW2SdtOaHkT6KQviMAeB+hgrUR6Lx5n0Q0a0X/rB848MKfWOf8AOI76J97WQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723747069; c=relaxed/simple;
	bh=CZ5NtDlBlJsCpMSvLma9PyVZxIWO/7Rg9cVWW/82I8M=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IL1gLt+BNh5LLyhoUCB0tZtpk2Ea039GXZIfAkzq/6nK7jy5mG7HtalJ9cQiqjgxEeRMwBRfx77iylZ6qv8raMl/yuN7P/da22k4KjRhL/ENwCZ9GkogfqHswHjh7DIXHZauZEBlmiyFCRW6OrOm9i4jQDV+pK8zvCR/0aH9Zws=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=none smtp.mailfrom=taln60.nuvoton.co.il; dkim=pass (1024-bit key) header.d=nuvoton.onmicrosoft.com header.i=@nuvoton.onmicrosoft.com header.b=QYcNb1ov; arc=fail smtp.client-ip=40.95.110.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=taln60.nuvoton.co.il
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e1TtIW6Q7YZ4DzC8Gm+YKyhMgQMqCa+DEI2uAFU0Kk1mxKV3p0tE+YoXgxp9DEeZZAlZXOC3BRldDt/Q8RDpVUT6GZZAhWJB5m2T3Ja67FHxzW/SK1l3Al6ZJVIm5j74RbXwULWpxot0h2QbEmJy7TfNWmfkfzKnQRKKXHg0tWzXfRrN7poN+51HqbFYY8TMgTpfg/jKuk2vSezY0I4Yi1i0JWRESqV4N4f6mri4l+ethQrivvO4U+URyo/C8c5/48hL0mJ+iRgqXyyGmd6crqa6je8VZwm7rb+Uby2FuR4cod8GuIRK+oV7/eCOXhXO1mZGSTlRZIoJiyfAAJyiRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+wky2QSYKu+ZMzmKpxGrb+7UB7xliSkIhxnD7zMWgE=;
 b=RCIsVfF6YIdqUhHyK78i6UyujIwN3Dmc92JA7owzhtk+FGPEcafmUOLo0SGj1IyZEzkpW7pwmMoFjV/yp8IboEWoUtg1VCCX9DB7sRyrNtlelzHl72OnmPs8cSItPj0tM0QNpmJhXqnIUr5an791Sb4lwp2xVbM/YxCbCxzwaus/FWLOncU8VzJp4fPRM52W2iGXmKL3l5kS02QPuqpRtkOt8oPNWcxuIf6IrvmwNkUAMxKH0UOC4OxC/kOHBi8aSY7/EgZkTVOKJMNRICEzG5jJOUpCPhguLnYfsrTjcA8LP/v3arWZ2/hvjjAgFFcmq5Sgx+iCFBAJP3c1+Bi7Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 211.75.126.7) smtp.rcpttodomain=baylibre.com
 smtp.mailfrom=taln60.nuvoton.co.il; dmarc=fail (p=none sp=quarantine pct=100)
 action=none header.from=gmail.com; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q+wky2QSYKu+ZMzmKpxGrb+7UB7xliSkIhxnD7zMWgE=;
 b=QYcNb1ovhWX/KLB+kluw16XlTyc75poBZclPggyrSNGI/i3PSnBIzqW+DZk1nEPpF5uq4MuOHq2YLoyV7vo/XQRq5ZuzXknfOsOQgiBma172iv1VwXH0uyoni/pZcUvyDgr6gqY1uu7Eu93nStG20qmRmlJkIL2AXU0+Qt0Hnh0=
Received: from SG2PR02CA0062.apcprd02.prod.outlook.com (2603:1096:4:54::26) by
 SEZPR03MB8207.apcprd03.prod.outlook.com (2603:1096:101:196::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7875.18; Thu, 15 Aug 2024 15:03:03 +0000
Received: from HK2PEPF00006FB3.apcprd02.prod.outlook.com
 (2603:1096:4:54:cafe::e4) by SG2PR02CA0062.outlook.office365.com
 (2603:1096:4:54::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.24 via Frontend
 Transport; Thu, 15 Aug 2024 15:03:02 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 211.75.126.7)
 smtp.mailfrom=taln60.nuvoton.co.il; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=gmail.com;
Received-SPF: None (protection.outlook.com: taln60.nuvoton.co.il does not
 designate permitted sender hosts)
Received: from NTHCCAS01.nuvoton.com (211.75.126.7) by
 HK2PEPF00006FB3.mail.protection.outlook.com (10.167.8.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7849.8 via Frontend Transport; Thu, 15 Aug 2024 15:03:02 +0000
Received: from NTHCML01B.nuvoton.com (10.1.8.178) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 15 Aug
 2024 23:02:58 +0800
Received: from NTHCCAS01.nuvoton.com (10.1.8.28) by NTHCML01B.nuvoton.com
 (10.1.8.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 15 Aug
 2024 23:02:58 +0800
Received: from taln58.nuvoton.co.il (10.191.1.178) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Thu, 15 Aug 2024 23:02:58 +0800
Received: from taln60.nuvoton.co.il (taln60 [10.191.1.180])
	by taln58.nuvoton.co.il (Postfix) with ESMTP id 4D4155F603;
	Thu, 15 Aug 2024 18:02:57 +0300 (IDT)
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
	id 48EDCDC0ACC; Thu, 15 Aug 2024 18:02:57 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <p.zabel@pengutronix.de>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<tali.perry1@gmail.com>, <joel@jms.id.au>, <venture@google.com>,
	<yuenn@google.com>, <benjaminfair@google.com>
CC: <openbmc@lists.ozlabs.org>, <linux-clk@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Tomer Maimon
	<tmaimon77@gmail.com>
Subject: [PATCH RESEND v27 3/3] clk: npcm8xx: add clock controller
Date: Thu, 15 Aug 2024 18:02:55 +0300
Message-ID: <20240815150255.3996258-4-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240815150255.3996258-1-tmaimon77@gmail.com>
References: <20240815150255.3996258-1-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NotSetDelaration: True
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HK2PEPF00006FB3:EE_|SEZPR03MB8207:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e5439d3-ae27-443d-c130-08dcbd3b5c00
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|82310400026|48200799018|7093399012|35950700016|61400799027|921020|35450700002;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?dagAo6piuWS3bHBge6IUFELkglDNSpWoI8Jrqc93aR4qg3ZsWwaW8jlF+mHB?=
 =?us-ascii?Q?567QP9hTbwaKVQxP3W2y7aE+b7gvh/a8jPDKT547LcHD32uVoaAIa7u34gsT?=
 =?us-ascii?Q?RqAcjartD9K13EtdpL5+pJzDuKvQZqhFY3Ocm+L/5HhXKz2pnz/39gfOfdyz?=
 =?us-ascii?Q?dF5k7RxrWBW/u6lOUhEpXGUqUD/z9JkDLuE4DWSBUkgyQFuzyOwyY2gn6AgJ?=
 =?us-ascii?Q?quRL4KSgUq6iY4w41IqVQpi26IohybitlNvldQgN/DnWBVNQdOuQsXqK/KgG?=
 =?us-ascii?Q?/LIN7+kfZbelzmwFYayvhVco5zL+JHeLW2xNfOrKGXaxl2bpZrjdBHrTk9NN?=
 =?us-ascii?Q?H3rfnf5/X2Se4k9rME5ngk4hRdYitCNGg4YK62ziHSU16Dl3VAAv9OU9Itgb?=
 =?us-ascii?Q?r7j1s2JAsTgkrU6AIvOmxwSwCHFyhY3WvdRGQZRLp/SL9qcOMukETcefx0Ta?=
 =?us-ascii?Q?m+Y0KvGhlcXi7jGJ1txNP3kTn6h1YvJwtEP4ZWLy461136ApdEnMrc7vxNU4?=
 =?us-ascii?Q?u3NFlBuANJmyRUlryu2gBwqXUJ5laO7t09csMydyHngOl/OQ9DHS5ojxBJa9?=
 =?us-ascii?Q?QMMmOkRu4TtvfO59n8HrvmgfqlScPpPy1qe+fsd4c9UlVrc9CehI8aaUVhWw?=
 =?us-ascii?Q?BjceeRKwn0b66PFC8iLOvZgiDYIoNele1JOPMQBF5r6WX5wntaklIRrqqDGY?=
 =?us-ascii?Q?iqaHOWq8f1tlXj6aPJcnie9E1uqg71Rwc8KcZ4dlpHMJEX4Pmp9VwmgG7vx7?=
 =?us-ascii?Q?VnlIRqSdwu4Yxb3XOpihCWV9qtKDDWv0DoOXZM4zx/A/BIrI+jiE0uOny8PS?=
 =?us-ascii?Q?Xl9MjDBTWlJKBOvwcko+elzd+3rFyRBKEaC1B5uyewE672BmzYfjCs/i0Io0?=
 =?us-ascii?Q?kMxovGAtbl1NJpFAjlEWAsXDQQ6vnhMnHClU3MfvtEYgOPqidcv45rijBQXQ?=
 =?us-ascii?Q?vl9YYf79Cf+9JM4keKE15dd3kdt9AZ2C0iefV2ii50dfB0hqitA30cvwI+zo?=
 =?us-ascii?Q?S6ul3GnQ7/1J8FMd2fNzUITzb6ImgmpSSkwLNwbPFmUm9TvEWzxhjqnDIcp+?=
 =?us-ascii?Q?GSXjnizcb/MxB7U/SEIUgAElnaHQAT2McUwne+vJqipsltvWOzeeQACmyDKx?=
 =?us-ascii?Q?FOA9T0yLkbqWWmkr9qQfZNKyS1nLTNxuriEsvgydt/OSy60CmEVsmhXhDATv?=
 =?us-ascii?Q?XYjyJ80hwDGqkNWIF8UUbCNm83eH+kBjSGS5eWxF4I0Fxuib/UlU0hvEC1PT?=
 =?us-ascii?Q?C3yKJAFsDMzG5d2p5i2qtHFnzY+t7F9GW6aQc1tj5+Xg5pXs+ANGEtA4KTxb?=
 =?us-ascii?Q?A95eUXWDKlWctvmfhb++udMKWo1GKafdBXBq9akTT+UL+7isfw10Hr6E4IWp?=
 =?us-ascii?Q?7YIXEAdReQxOndQr2lgxK70PuG/kxp5UxcV/5h30Rfir2nDjgTLwe/9rPBhl?=
 =?us-ascii?Q?EIc25CFl5EXPgziNm8rU+wM5BI6Ql1CkvTxen8Ikpxm83+2okMF8/f/Pp1oE?=
 =?us-ascii?Q?2HPnrQyQafLsQV0=3D?=
X-Forefront-Antispam-Report:
	CIP:211.75.126.7;CTRY:TW;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:NTHCCAS01.nuvoton.com;PTR:211-75-126-7.hinet-ip.hinet.net;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(48200799018)(7093399012)(35950700016)(61400799027)(921020)(35450700002);DIR:OUT;SFP:1022;
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 15:03:02.3572
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5439d3-ae27-443d-c130-08dcbd3b5c00
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a3f24931-d403-4b4a-94f1-7d83ac638e07;Ip=[211.75.126.7];Helo=[NTHCCAS01.nuvoton.com]
X-MS-Exchange-CrossTenant-AuthSource:
	HK2PEPF00006FB3.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8207

Add auxiliary driver to support Nuvoton Arbel BMC NPCM8XX contains an
integrated clock controller which generates and supplies clocks to all
modules within the BMC.

The NPCM8xx clock controller is created using the auxiliary device
framework and set up in the npcm reset driver since the NPCM8xx clock is
using the same register region.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
Tested-by: Benjamin Fair <benjaminfair@google.com>
---
 drivers/clk/Kconfig       |   8 +
 drivers/clk/Makefile      |   1 +
 drivers/clk/clk-npcm8xx.c | 430 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 439 insertions(+)
 create mode 100644 drivers/clk/clk-npcm8xx.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 983ef4f36d8c..335cd2ede139 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -334,6 +334,14 @@ config COMMON_CLK_LOCHNAGAR
 	  This driver supports the clocking features of the Cirrus Logic
 	  Lochnagar audio development board.
 
+config COMMON_CLK_NPCM8XX
+	tristate "Clock driver for the NPCM8XX SoC Family"
+	depends on ARCH_NPCM || COMPILE_TEST
+	help
+	  This driver supports the clocks on the Nuvoton BMC NPCM8XX SoC Family,
+	  all the clocks are initialized by the bootloader, so this driver
+	  allows only reading of current settings directly from the hardware.
+
 config COMMON_CLK_LOONGSON2
 	bool "Clock driver for Loongson-2 SoC"
 	depends on LOONGARCH || COMPILE_TEST
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f793a16cad40..b8367b47d2b8 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_ARCH_MILBEAUT_M10V)	+= clk-milbeaut.o
 obj-$(CONFIG_ARCH_MOXART)		+= clk-moxart.o
 obj-$(CONFIG_ARCH_NOMADIK)		+= clk-nomadik.o
 obj-$(CONFIG_ARCH_NPCM7XX)	    	+= clk-npcm7xx.o
+obj-$(CONFIG_COMMON_CLK_NPCM8XX)	+= clk-npcm8xx.o
 obj-$(CONFIG_ARCH_NSPIRE)		+= clk-nspire.o
 obj-$(CONFIG_COMMON_CLK_PALMAS)		+= clk-palmas.o
 obj-$(CONFIG_CLK_LS1028A_PLLDIG)	+= clk-plldig.o
diff --git a/drivers/clk/clk-npcm8xx.c b/drivers/clk/clk-npcm8xx.c
new file mode 100644
index 000000000000..2138c011411d
--- /dev/null
+++ b/drivers/clk/clk-npcm8xx.c
@@ -0,0 +1,430 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Nuvoton NPCM8xx Clock Generator
+ * All the clocks are initialized by the bootloader, so this driver allows only
+ * reading of current settings directly from the hardware.
+ *
+ * Copyright (C) 2020 Nuvoton Technologies
+ * Author: Tomer Maimon <tomer.maimon@nuvoton.com>
+ */
+
+#define pr_fmt(fmt) "npcm8xx_clk: " fmt
+
+#include <linux/auxiliary_bus.h>
+#include <linux/bitfield.h>
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#include <dt-bindings/clock/nuvoton,npcm845-clk.h>
+#include <soc/nuvoton/clock-npcm8xx.h>
+
+/* npcm8xx clock registers*/
+#define NPCM8XX_CLKSEL		0x04
+#define NPCM8XX_CLKDIV1		0x08
+#define NPCM8XX_CLKDIV2		0x2C
+#define NPCM8XX_CLKDIV3		0x58
+#define NPCM8XX_CLKDIV4		0x7C
+#define NPCM8XX_PLLCON0		0x0C
+#define NPCM8XX_PLLCON1		0x10
+#define NPCM8XX_PLLCON2		0x54
+#define NPCM8XX_PLLCONG		0x60
+#define NPCM8XX_THRTL_CNT	0xC0
+
+#define PLLCON_LOKI	BIT(31)
+#define PLLCON_LOKS	BIT(30)
+#define PLLCON_FBDV	GENMASK(27, 16)
+#define PLLCON_OTDV2	GENMASK(15, 13)
+#define PLLCON_PWDEN	BIT(12)
+#define PLLCON_OTDV1	GENMASK(10, 8)
+#define PLLCON_INDV	GENMASK(5, 0)
+
+static void __iomem *clk_base;
+
+struct npcm8xx_clk_pll {
+	void __iomem	*pllcon;
+	unsigned int	id;
+	const char	*name;
+	unsigned long	flags;
+	struct clk_hw	hw;
+};
+
+#define to_npcm8xx_clk_pll(_hw) container_of(_hw, struct npcm8xx_clk_pll, hw)
+
+struct npcm8xx_clk_pll_data {
+	const char *name;
+	struct clk_parent_data parent;
+	unsigned int reg;
+	unsigned long flags;
+	struct clk_hw hw;
+};
+
+struct npcm8xx_clk_div_data {
+	u32 reg;
+	u8 shift;
+	u8 width;
+	const char *name;
+	const struct clk_hw *parent_hw;
+	unsigned long clk_divider_flags;
+	unsigned long flags;
+	int onecell_idx;
+	struct clk_hw hw;
+};
+
+struct npcm8xx_clk_mux_data {
+	u8 shift;
+	u32 mask;
+	const u32 *table;
+	const char *name;
+	const struct clk_parent_data *parent_data;
+	u8 num_parents;
+	unsigned long flags;
+	struct clk_hw hw;
+};
+
+static struct clk_hw hw_pll1_div2, hw_pll2_div2, hw_gfx_div2, hw_pre_clk;
+static struct npcm8xx_clk_pll_data npcm8xx_pll_clks[] = {
+	{ "pll0", { .index = 0 }, NPCM8XX_PLLCON0, 0 },
+	{ "pll1", { .index = 0 }, NPCM8XX_PLLCON1, 0 },
+	{ "pll2", { .index = 0 }, NPCM8XX_PLLCON2, 0 },
+	{ "pll_gfx", { .index = 0 }, NPCM8XX_PLLCONG, 0 },
+};
+
+static const u32 cpuck_mux_table[] = { 0, 1, 2, 7 };
+static const struct clk_parent_data cpuck_mux_parents[] = {
+	{ .hw = &npcm8xx_pll_clks[0].hw },
+	{ .hw = &npcm8xx_pll_clks[1].hw },
+	{ .index = 0 },
+	{ .hw = &npcm8xx_pll_clks[2].hw }
+};
+
+static const u32 pixcksel_mux_table[] = { 0, 2 };
+static const struct clk_parent_data pixcksel_mux_parents[] = {
+	{ .hw = &npcm8xx_pll_clks[3].hw },
+	{ .index = 0 }
+};
+
+static const u32 default_mux_table[] = { 0, 1, 2, 3 };
+static const struct clk_parent_data default_mux_parents[] = {
+	{ .hw = &npcm8xx_pll_clks[0].hw },
+	{ .hw = &npcm8xx_pll_clks[1].hw },
+	{ .index = 0 },
+	{ .hw = &hw_pll2_div2 }
+};
+
+static const u32 sucksel_mux_table[] = { 2, 3 };
+static const struct clk_parent_data sucksel_mux_parents[] = {
+	{ .index = 0 },
+	{ .hw = &hw_pll2_div2 }
+};
+
+static const u32 mccksel_mux_table[] = { 0, 2 };
+static const struct clk_parent_data mccksel_mux_parents[] = {
+	{ .hw = &hw_pll1_div2 },
+	{ .index = 0 }
+};
+
+static const u32 clkoutsel_mux_table[] = { 0, 1, 2, 3, 4 };
+static const struct clk_parent_data clkoutsel_mux_parents[] = {
+	{ .hw = &npcm8xx_pll_clks[0].hw },
+	{ .hw = &npcm8xx_pll_clks[1].hw },
+	{ .index = 0 },
+	{ .hw = &hw_gfx_div2 },
+	{ .hw = &hw_pll2_div2 }
+};
+
+static const u32 gfxmsel_mux_table[] = { 2, 3 };
+static const struct clk_parent_data gfxmsel_mux_parents[] = {
+	{ .index = 0 },
+	{ .hw = &npcm8xx_pll_clks[2].hw }
+};
+
+static const u32 dvcssel_mux_table[] = { 2, 3 };
+static const struct clk_parent_data dvcssel_mux_parents[] = {
+	{ .index = 0 },
+	{ .hw = &npcm8xx_pll_clks[2].hw }
+};
+
+static const u32 default3_mux_table[] = { 0, 1, 2 };
+static const struct clk_parent_data default3_mux_parents[] = {
+	{ .hw = &npcm8xx_pll_clks[0].hw },
+	{ .hw = &npcm8xx_pll_clks[1].hw },
+	{ .index = 0 }
+};
+
+static struct npcm8xx_clk_mux_data npcm8xx_muxes[] = {
+	{ 0, 3, cpuck_mux_table, "cpu_mux", cpuck_mux_parents,
+		ARRAY_SIZE(cpuck_mux_parents), CLK_IS_CRITICAL },
+	{ 4, 2, pixcksel_mux_table, "gfx_pixel_mux", pixcksel_mux_parents,
+		ARRAY_SIZE(pixcksel_mux_parents), 0 },
+	{ 6, 2, default_mux_table, "sd_mux", default_mux_parents,
+		ARRAY_SIZE(default_mux_parents), 0 },
+	{ 8, 2, default_mux_table, "uart_mux", default_mux_parents,
+		ARRAY_SIZE(default_mux_parents), 0 },
+	{ 10, 2, sucksel_mux_table, "serial_usb_mux", sucksel_mux_parents,
+		ARRAY_SIZE(sucksel_mux_parents), 0 },
+	{ 12, 2, mccksel_mux_table, "mc_mux", mccksel_mux_parents,
+		ARRAY_SIZE(mccksel_mux_parents), 0 },
+	{ 14, 2, default_mux_table, "adc_mux", default_mux_parents,
+		ARRAY_SIZE(default_mux_parents), 0 },
+	{ 16, 2, default_mux_table, "gfx_mux", default_mux_parents,
+		ARRAY_SIZE(default_mux_parents), 0 },
+	{ 18, 3, clkoutsel_mux_table, "clkout_mux", clkoutsel_mux_parents,
+		ARRAY_SIZE(clkoutsel_mux_parents), 0 },
+	{ 21, 2, gfxmsel_mux_table, "gfxm_mux", gfxmsel_mux_parents,
+		ARRAY_SIZE(gfxmsel_mux_parents), 0 },
+	{ 23, 2, dvcssel_mux_table, "dvc_mux", dvcssel_mux_parents,
+		ARRAY_SIZE(dvcssel_mux_parents), 0 },
+	{ 25, 2, default3_mux_table, "rg_mux", default3_mux_parents,
+		ARRAY_SIZE(default3_mux_parents), 0 },
+	{ 27, 2, default3_mux_table, "rcp_mux", default3_mux_parents,
+		ARRAY_SIZE(default3_mux_parents), 0 },
+};
+
+/* configurable pre dividers: */
+static struct npcm8xx_clk_div_data npcm8xx_pre_divs[] = {
+	{ NPCM8XX_CLKDIV1, 21, 5, "pre_adc", &npcm8xx_muxes[6].hw, CLK_DIVIDER_READ_ONLY, 0, -1 },
+	{ NPCM8XX_CLKDIV1, 26, 2, "ahb", &hw_pre_clk, CLK_DIVIDER_READ_ONLY, CLK_IS_CRITICAL, NPCM8XX_CLK_AHB },
+};
+
+/* configurable dividers: */
+static struct npcm8xx_clk_div_data npcm8xx_divs[] = {
+	{ NPCM8XX_CLKDIV1, 28, 3, "adc", &npcm8xx_pre_divs[0].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_ADC },
+	{ NPCM8XX_CLKDIV1, 16, 5, "uart", &npcm8xx_muxes[3].hw, 0, 0, NPCM8XX_CLK_UART },
+	{ NPCM8XX_CLKDIV1, 11, 5, "mmc", &npcm8xx_muxes[2].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_MMC },
+	{ NPCM8XX_CLKDIV1, 6, 5, "spi3", &npcm8xx_pre_divs[1].hw, 0, 0, NPCM8XX_CLK_SPI3 },
+	{ NPCM8XX_CLKDIV1, 2, 4, "pci", &npcm8xx_muxes[7].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_PCI },
+
+	{ NPCM8XX_CLKDIV2, 30, 2, "apb4", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_APB4 },
+	{ NPCM8XX_CLKDIV2, 28, 2, "apb3", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_APB3 },
+	{ NPCM8XX_CLKDIV2, 26, 2, "apb2", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_APB2 },
+	{ NPCM8XX_CLKDIV2, 24, 2, "apb1", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_APB1 },
+	{ NPCM8XX_CLKDIV2, 22, 2, "apb5", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_APB5 },
+	{ NPCM8XX_CLKDIV2, 16, 5, "clkout", &npcm8xx_muxes[8].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_CLKOUT },
+	{ NPCM8XX_CLKDIV2, 13, 3, "gfx", &npcm8xx_muxes[7].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_GFX },
+	{ NPCM8XX_CLKDIV2, 8, 5, "usb_bridge", &npcm8xx_muxes[4].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SU },
+	{ NPCM8XX_CLKDIV2, 4, 4, "usb_host", &npcm8xx_muxes[4].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SU48 },
+	{ NPCM8XX_CLKDIV2, 0, 4, "sdhc", &npcm8xx_muxes[2].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SDHC },
+
+	{ NPCM8XX_CLKDIV3, 16, 8, "spi1", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SPI1 },
+	{ NPCM8XX_CLKDIV3, 11, 5, "uart2", &npcm8xx_muxes[3].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_UART2 },
+	{ NPCM8XX_CLKDIV3, 6, 5, "spi0", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SPI0 },
+	{ NPCM8XX_CLKDIV3, 1, 5, "spix", &npcm8xx_pre_divs[1].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_SPIX },
+
+	{ NPCM8XX_CLKDIV4, 28, 4, "rg", &npcm8xx_muxes[11].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_RG },
+	{ NPCM8XX_CLKDIV4, 12, 4, "rcp", &npcm8xx_muxes[12].hw, CLK_DIVIDER_READ_ONLY, 0, NPCM8XX_CLK_RCP },
+
+	{ NPCM8XX_THRTL_CNT, 0, 2, "th", &npcm8xx_muxes[0].hw, CLK_DIVIDER_READ_ONLY | CLK_DIVIDER_POWER_OF_TWO, 0, NPCM8XX_CLK_TH },
+};
+
+static unsigned long npcm8xx_clk_pll_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	struct npcm8xx_clk_pll *pll = to_npcm8xx_clk_pll(hw);
+	unsigned long fbdv, indv, otdv1, otdv2;
+	unsigned int val;
+	u64 ret;
+
+	if (parent_rate == 0) {
+		pr_debug("%s: parent rate is zero\n", __func__);
+		return 0;
+	}
+
+	val = readl_relaxed(pll->pllcon);
+
+	indv = FIELD_GET(PLLCON_INDV, val);
+	fbdv = FIELD_GET(PLLCON_FBDV, val);
+	otdv1 = FIELD_GET(PLLCON_OTDV1, val);
+	otdv2 = FIELD_GET(PLLCON_OTDV2, val);
+
+	ret = (u64)parent_rate * fbdv;
+	do_div(ret, indv * otdv1 * otdv2);
+
+	return ret;
+}
+
+static const struct clk_ops npcm8xx_clk_pll_ops = {
+	.recalc_rate = npcm8xx_clk_pll_recalc_rate,
+};
+
+static struct clk_hw *
+npcm8xx_clk_register_pll(struct device *dev, void __iomem *pllcon,
+			 const char *name, const struct clk_parent_data *parent,
+			 unsigned long flags)
+{
+	struct npcm8xx_clk_pll *pll;
+	struct clk_init_data init = {};
+	int ret;
+
+	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &npcm8xx_clk_pll_ops;
+	init.parent_data = parent;
+	init.num_parents = 1;
+	init.flags = flags;
+
+	pll->pllcon = pllcon;
+	pll->hw.init = &init;
+
+	ret = devm_clk_hw_register(dev, &pll->hw);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &pll->hw;
+}
+
+static DEFINE_SPINLOCK(npcm8xx_clk_lock);
+
+static int npcm8xx_clk_probe(struct auxiliary_device *adev,
+			     const struct auxiliary_device_id *id)
+{
+	struct npcm_clock_adev *rdev = to_npcm_clock_adev(adev);
+	struct clk_hw_onecell_data *npcm8xx_clk_data;
+	struct device *dev = &adev->dev;
+	struct clk_hw *hw;
+	unsigned int i;
+
+	npcm8xx_clk_data = devm_kzalloc(dev, struct_size(npcm8xx_clk_data, hws,
+							 NPCM8XX_NUM_CLOCKS),
+					GFP_KERNEL);
+	if (!npcm8xx_clk_data)
+		return -ENOMEM;
+
+	clk_base = rdev->base;
+
+	npcm8xx_clk_data->num = NPCM8XX_NUM_CLOCKS;
+
+	for (i = 0; i < NPCM8XX_NUM_CLOCKS; i++)
+		npcm8xx_clk_data->hws[i] = ERR_PTR(-EPROBE_DEFER);
+
+	/* Register plls */
+	for (i = 0; i < ARRAY_SIZE(npcm8xx_pll_clks); i++) {
+		struct npcm8xx_clk_pll_data *pll_clk = &npcm8xx_pll_clks[i];
+
+		hw = npcm8xx_clk_register_pll(dev, clk_base + pll_clk->reg,
+					      pll_clk->name, &pll_clk->parent,
+					      pll_clk->flags);
+		if (IS_ERR(hw))
+			return dev_err_probe(dev, PTR_ERR(hw), "Can't register pll\n");
+		pll_clk->hw = *hw;
+	}
+
+	/* Register fixed dividers */
+	hw = devm_clk_hw_register_fixed_factor(dev, "pll1_div2", "pll1", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register fixed div\n");
+	hw_pll1_div2 = *hw;
+
+	hw = devm_clk_hw_register_fixed_factor(dev, "pll2_div2", "pll2", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register pll2 div2\n");
+	hw_pll2_div2 = *hw;
+
+	hw = devm_clk_hw_register_fixed_factor(dev, "pll_gfx_div2", "pll_gfx", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register gfx div2\n");
+	hw_gfx_div2 = *hw;
+
+	/* Register muxes */
+	for (i = 0; i < ARRAY_SIZE(npcm8xx_muxes); i++) {
+		struct npcm8xx_clk_mux_data *mux_data = &npcm8xx_muxes[i];
+
+		hw = devm_clk_hw_register_mux_parent_data_table(dev,
+								mux_data->name,
+								mux_data->parent_data,
+								mux_data->num_parents,
+								mux_data->flags,
+								clk_base + NPCM8XX_CLKSEL,
+								mux_data->shift,
+								mux_data->mask,
+								0,
+								mux_data->table,
+								&npcm8xx_clk_lock);
+		if (IS_ERR(hw))
+			return dev_err_probe(dev, PTR_ERR(hw), "Can't register mux\n");
+		mux_data->hw = *hw;
+	}
+
+	hw = devm_clk_hw_register_fixed_factor(dev, "pre_clk", "cpu_mux", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register pre clk div2\n");
+	hw_pre_clk = *hw;
+
+	hw = devm_clk_hw_register_fixed_factor(dev, "axi", "th", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register axi div2\n");
+	npcm8xx_clk_data->hws[NPCM8XX_CLK_AXI] = hw;
+
+	hw = devm_clk_hw_register_fixed_factor(dev, "atb", "axi", 0, 1, 2);
+	if (IS_ERR(hw))
+		return dev_err_probe(dev, PTR_ERR(hw), "Can't register atb div2\n");
+	npcm8xx_clk_data->hws[NPCM8XX_CLK_ATB] = hw;
+
+	/* Register pre dividers */
+	for (i = 0; i < ARRAY_SIZE(npcm8xx_pre_divs); i++) {
+		struct npcm8xx_clk_div_data *div_data = &npcm8xx_pre_divs[i];
+
+		hw = devm_clk_hw_register_divider_parent_hw(dev, div_data->name,
+							    div_data->parent_hw,
+							    div_data->flags,
+							    clk_base + div_data->reg,
+							    div_data->shift,
+							    div_data->width,
+							    div_data->clk_divider_flags,
+							    &npcm8xx_clk_lock);
+		if (IS_ERR(hw))
+			return dev_err_probe(dev, PTR_ERR(hw), "Can't register pre div\n");
+		div_data->hw = *hw;
+
+		if (div_data->onecell_idx >= 0)
+			npcm8xx_clk_data->hws[div_data->onecell_idx] = hw;
+	}
+
+	/* Register dividers */
+	for (i = 0; i < ARRAY_SIZE(npcm8xx_divs); i++) {
+		struct npcm8xx_clk_div_data *div_data = &npcm8xx_divs[i];
+
+		hw = devm_clk_hw_register_divider_parent_hw(dev, div_data->name,
+							    div_data->parent_hw,
+							    div_data->flags,
+							    clk_base + div_data->reg,
+							    div_data->shift,
+							    div_data->width,
+							    div_data->clk_divider_flags,
+							    &npcm8xx_clk_lock);
+		if (IS_ERR(hw))
+			return dev_err_probe(dev, PTR_ERR(hw), "Can't register div\n");
+
+		if (div_data->onecell_idx >= 0)
+			npcm8xx_clk_data->hws[div_data->onecell_idx] = hw;
+	}
+
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					  npcm8xx_clk_data);
+}
+
+static const struct auxiliary_device_id npcm8xx_clock_ids[] = {
+	{
+		.name = "reset_npcm.clk-npcm8xx",
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(auxiliary, npcm8xx_clock_ids);
+
+static struct auxiliary_driver npcm8xx_clock_driver = {
+	.probe		= npcm8xx_clk_probe,
+	.id_table	= npcm8xx_clock_ids,
+};
+module_auxiliary_driver(npcm8xx_clock_driver);
+
+MODULE_DESCRIPTION("Clock driver for Nuvoton NPCM8XX BMC SoC");
+MODULE_AUTHOR("Tomer Maimon <tomer.maimon@nuvoton.com>");
+MODULE_LICENSE("GPL v2");
+
-- 
2.34.1


