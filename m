Return-Path: <devicetree+bounces-28563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E8881EBA0
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 03:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6487628354D
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 02:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116EB20F4;
	Wed, 27 Dec 2023 02:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="pcw5kja6"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11olkn2031.outbound.protection.outlook.com [40.92.19.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F8520E3;
	Wed, 27 Dec 2023 02:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpSqRmIyeEvQWL+BpKfMGN1GtnKUPzLwzAe4AEzEFuRRMjlCnvkKphktGJFOnYWFyaOf6EgTMsmknpwKHCHhLHH5zlMhZFyp95bxVZosiWG/ddsOP6/mGJOEV3K0ZEPokX7fuW2lVP0aCB8dK7gtcsDI8G76B+4LOiHNsJ9BgVEe5uLQtpXOXaw65tJpZQEM+NAX9Z5/9/MzUPnUzYS1RRiIbKzosS8RZYi6DlQKwAYg1m0He9F6GfLPYCEqqmIoELKAJPT1cL9ER6rQX1rONhXPkVFE6O5mznb9KHwO0NyI0xUC2s+BQtmGyklNDNsOnvEuhC2OiGyJH+0XM8q6NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eJKDHGgf24esZ0YxIJgjJJLUQ+9jov9YFZKaJa8Gkh4=;
 b=hTTZjF2VzutJn0NKEFdLpwaECvEm1MHBdINBFzWEyJYYsUktpzQWPwpAJlrw/4RMBEVsn7o+gnSTXd7EWVqOru3buNSngrIGSkFOcnRsqJRYJuAhVYCbjQ+1dv3MIVCSyZUpJ0Fp3xo+bOCn4qjVufE2fOUYyci5umNk9/bMZZNc+73hyZZbedcok7b5oAvLwisSd/n6sz6OMZ/0WMguhNlLWYgyV4ImO7Tzyz75FwL0eVsnEPqjKB1ug4Zo/yEDzfF0c1fRRtuRIO3CLyk2EsD0WU9jGvYcn7OuBjnj7WM4Ncb0802eOqQxsGE2FoL7ISd/mSKRAcC9Qi7Ld6B7ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eJKDHGgf24esZ0YxIJgjJJLUQ+9jov9YFZKaJa8Gkh4=;
 b=pcw5kja6rT/81Pku/Qma9MA043zpKM30WjWG8piusRM8hyKdCOVd3SQZoxwnY7qvgAp90rGIfpeeEasWOowaFFTSZbRPp0VivqY59bNkcCppARQqtH28JlepAvevv1JpnrbDTH3fTzVjMyCxgvsOq60QtqGagy+wXjR0kBHyWB6b/rHxPg+RFpHa05wPfP4dEdZU2rJ4pXP9NJcFmtO6yCmWIxR8XcQ6ompSQSS7TeK3Q1fP8dMo9gtYIDfeuoAZhTEEezMBnNUWx6AY4ARQj4l181S10iPITnKtgcCMfq9KcQbFciMCM/SFoI5zQU4JR5PjkAUB+dQm/jVeFThNjw==
Received: from IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
 by CH0PR20MB3754.namprd20.prod.outlook.com (2603:10b6:610:df::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.19; Wed, 27 Dec
 2023 02:54:20 +0000
Received: from IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::406a:664b:b8bc:1e6b]) by IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::406a:664b:b8bc:1e6b%2]) with mapi id 15.20.7113.026; Wed, 27 Dec 2023
 02:54:20 +0000
From: Inochi Amaoto <inochiama@outlook.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Inochi Amaoto <inochiama@outlook.com>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	Liu Gui <kenneth.liu@sophgo.com>,
	Jingbao Qiu <qiujingbao.dlmu@gmail.com>,
	dlan@gentoo.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v5 1/3] clk: sophgo: Add CV1800 series clock controller driver
Date: Wed, 27 Dec 2023 10:54:18 +0800
Message-ID:
 <IA1PR20MB4953139C77167200594CE971BB9FA@IA1PR20MB4953.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <IA1PR20MB49539CDAD9A268CBF6CA184BBB9FA@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB49539CDAD9A268CBF6CA184BBB9FA@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [s/8vR9OVolIvXv8tvXtm72fQkJ/zIJofCvCkT+4ESv4=]
X-ClientProxiedBy: BYAPR07CA0093.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::34) To IA1PR20MB4953.namprd20.prod.outlook.com
 (2603:10b6:208:3af::19)
X-Microsoft-Original-Message-ID:
 <20231227025420.296265-1-inochiama@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR20MB4953:EE_|CH0PR20MB3754:EE_
X-MS-Office365-Filtering-Correlation-Id: d51c2694-2a80-4a7c-cf2a-08dc06871f98
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	c9myX3v6gE0Z0Wnebw7rqNihH+0ouVjVGiGz5P7logjHI1TBrLBYZ49URluUd9mF5c2zJA7vmwBLRp5DLnFSnD38zPEZqGBzLPQUEJoojWk8R0RyqPyr9Q09BMl0QSBg+y5+Z2gZopP3V5kSlx9zsJyEgZYop1svumRy1Y66IWTzEqzUyBx3VXlj6/dAoqLxZLD+P3FGr4dr11flx7E7jwFoisgEL3JoK2gDA++4SKxrild1s/odC8MUVUeM0POd+SdmhFvdzMNa39kF7z3D5sFVA2gNZz6hzz8auRYO3/PP4OS5cYAw1PSdmb/zp5HFpiDi4oJk/IPo32LPUf+sWYdUaYgptNvC5LqHiVtBWCzqZ8oy+KRPgrEfsqVlFhNKq0MBdVJwAUP4jFqFMqUqNc2iLe17k8eyy0R4I6kBPLJ3z+Iqz08ED2ulB7FVk+e0mDPv8rn2x3TwNeF/7IYLIShi+wdQaqdes2xbZkG3JrCsih6YIfcUDrvgmXQllExyiK7dtziE+ppPfbImragG9tpYN18YU2YptC0XFmg+xxo6ZOY2CRZAsRtA5NJLLSUndrav1J8vxlCNnoxhfue6HdwsRprYqX0mM+VFfhhg1YJcKL3P9luSmH69A6agu2AxT72O4H1BiK/hYMEf2Dd1UMbfX8BCzshNXjgz+OKtUUg=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?qdinyWk4XI0W58wg3s4Wp06pNR7Fw32c56OInW7pj2GxQA86gBDB3+wajyNq?=
 =?us-ascii?Q?42GRhP8CHnGFY0gJ/ZleXcVyBdhnWi9i7pNrgQCv7HMkVaae9PykxRwJhZ9M?=
 =?us-ascii?Q?1ChN9u5Pt20UrZ/WALdABaZBkJ/6GiV4LFEHCTuibuDEdd+kp5wo2hYqi+id?=
 =?us-ascii?Q?Lmfrg6ZN3jYrRKO/+6/G6Ojx1xEgNaOfTegh3k0PtNTe49ISMr1cz19CVcvH?=
 =?us-ascii?Q?Y5NpR/fI4wMQ6AihkQEjKOlP/xCSmsDbNy8nhp3AG3DddYUR+2RHUQDbhUDw?=
 =?us-ascii?Q?i9YiVGcLbX3Aqdq5Gcg4p6ZxdMjOnTqXMWhJiYjNDe/5CJ52b1Zp3e9607RX?=
 =?us-ascii?Q?TY0dznllp8R/LpAm2zU8ZsTnUZsFF/KigzU0OzSl9FkeHf8Vl/0bmSKHRYzt?=
 =?us-ascii?Q?td5SY6Yvs1VYoS+QxwCFweOtZcAVtAtjUCA8ipMtH8KboYmK0Sf6hRHm81vj?=
 =?us-ascii?Q?hgy4I+HQxFw2EDX6CDnXPguKKyhq0GgqT6So3oitx0UPwVLwUQTFrakZCKiG?=
 =?us-ascii?Q?VjN4iryCF74/x5oG3/HTshZFPYYVN82UW9/lrd09jvPB1QBtSzOksi1SZmcO?=
 =?us-ascii?Q?9nrJzyCp2ZwayP8jsXuXHr4nCZK1ieV4pdUEMWpe0EVt4L7P4btqe0zoR4jn?=
 =?us-ascii?Q?JYzd91vCO3nGnZh8lfZvHeCPAlVNTkMujjWH7y4L7/92KCcI6BvmVzodiwQ2?=
 =?us-ascii?Q?ANlxeVZuHgIWDdtJpyfbDhd0WkvzE/Ir9iUR7nM4YRDlVQNSTofJeBwwpbCu?=
 =?us-ascii?Q?PIzyYNHubA4wHH+f9jZlc5w8BuqRcy3uXPknpwQQnWykd2WtmSzrGP/MCjka?=
 =?us-ascii?Q?3TvzBhpMtvQLUmJfTkZjtrdBFytgaqpXMS7ecU5WDO6zRHilK6IVCYdislN1?=
 =?us-ascii?Q?BUZQ7rrjiOcu82Gs7x7NPMiXX0cI5dupEgj6G2ZeBUfqIjDsn6h+TDlkZFX7?=
 =?us-ascii?Q?uuDD1nH4m4kvBquDLw1YDXsCF2s0gyOD5h6DZFUAUnsmipuO+MPTiFBwzg+K?=
 =?us-ascii?Q?guRJZHfmfF7mYyn3M96fXCBfOE0H2HiTmHQrKZYou7yxOrqwGSsO9c2qUkxY?=
 =?us-ascii?Q?wJrj9ritTqaBJT8vjdTeCz/YWwaP9x2K7aMH+j/pwsomTg3LROhrVA5uKg+1?=
 =?us-ascii?Q?MMsXxGSDWanLoQ1eHGQEihfvG/BaRk/oeFk0H0BUnHmonXzNVrn90uGg7J5n?=
 =?us-ascii?Q?H+gv8zcyndCiTRQsCn76OPKqVEzUPEUaRZS4bFqHAf6Kr10WaQU46z0rcHk?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d51c2694-2a80-4a7c-cf2a-08dc06871f98
X-MS-Exchange-CrossTenant-AuthSource: IA1PR20MB4953.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Dec 2023 02:54:20.7041
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR20MB3754

Add driver for CV1800 series clock controller.

Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
Link: https://github.com/milkv-duo/duo-files/blob/main/hardware/CV1800B/CV180X-Clock-v1.xlsx
Link: https://github.com/milkv-duo/duo-files/blob/main/hardware/CV1800B/CV1800B-CV1801B-Preliminary-Datasheet-full-en.pdf
---
 drivers/clk/Kconfig                    |    1 +
 drivers/clk/Makefile                   |    1 +
 drivers/clk/sophgo/Kconfig             |   12 +
 drivers/clk/sophgo/Makefile            |    7 +
 drivers/clk/sophgo/clk-cv1800.c        | 1530 ++++++++++++++++++++++++
 drivers/clk/sophgo/clk-cv1800.h        |  123 ++
 drivers/clk/sophgo/clk-cv18xx-common.c |   66 +
 drivers/clk/sophgo/clk-cv18xx-common.h |   81 ++
 drivers/clk/sophgo/clk-cv18xx-ip.c     |  905 ++++++++++++++
 drivers/clk/sophgo/clk-cv18xx-ip.h     |  265 ++++
 drivers/clk/sophgo/clk-cv18xx-pll.c    |  425 +++++++
 drivers/clk/sophgo/clk-cv18xx-pll.h    |  119 ++
 12 files changed, 3535 insertions(+)
 create mode 100644 drivers/clk/sophgo/Kconfig
 create mode 100644 drivers/clk/sophgo/Makefile
 create mode 100644 drivers/clk/sophgo/clk-cv1800.c
 create mode 100644 drivers/clk/sophgo/clk-cv1800.h
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-common.c
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-common.h
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-ip.c
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-ip.h
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-pll.c
 create mode 100644 drivers/clk/sophgo/clk-cv18xx-pll.h

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index c30d0d396f7a..514343934fda 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -499,6 +499,7 @@ source "drivers/clk/rockchip/Kconfig"
 source "drivers/clk/samsung/Kconfig"
 source "drivers/clk/sifive/Kconfig"
 source "drivers/clk/socfpga/Kconfig"
+source "drivers/clk/sophgo/Kconfig"
 source "drivers/clk/sprd/Kconfig"
 source "drivers/clk/starfive/Kconfig"
 source "drivers/clk/sunxi/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index ed71f2e0ee36..eeae7ae93f89 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -119,6 +119,7 @@ obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
 obj-$(CONFIG_COMMON_CLK_SAMSUNG)	+= samsung/
 obj-$(CONFIG_CLK_SIFIVE)		+= sifive/
 obj-y					+= socfpga/
+obj-y					+= sophgo/
 obj-$(CONFIG_PLAT_SPEAR)		+= spear/
 obj-y					+= sprd/
 obj-$(CONFIG_ARCH_STI)			+= st/
diff --git a/drivers/clk/sophgo/Kconfig b/drivers/clk/sophgo/Kconfig
new file mode 100644
index 000000000000..d67009fa749f
--- /dev/null
+++ b/drivers/clk/sophgo/Kconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+# common clock support for SOPHGO SoC family.
+
+config CLK_SOPHGO_CV1800
+	tristate "Support for the Sophgo CV1800 series SoCs clock controller"
+	default m
+	depends on ARCH_SOPHGO || COMPILE_TEST
+	help
+	  This driver supports clock controller of Sophgo CV18XX series SoC.
+	  The driver require a 25MHz Oscillator to function generate clock.
+	  It includes PLLs, common clock function and some vendor clock for
+	  IPs of CV18XX series SoC
diff --git a/drivers/clk/sophgo/Makefile b/drivers/clk/sophgo/Makefile
new file mode 100644
index 000000000000..a50320764200
--- /dev/null
+++ b/drivers/clk/sophgo/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_CLK_SOPHGO_CV1800)	+= clk-sophgo-cv1800.o
+
+clk-sophgo-cv1800-y		+= clk-cv1800.o
+clk-sophgo-cv1800-y		+= clk-cv18xx-common.o
+clk-sophgo-cv1800-y		+= clk-cv18xx-ip.o
+clk-sophgo-cv1800-y		+= clk-cv18xx-pll.o
diff --git a/drivers/clk/sophgo/clk-cv1800.c b/drivers/clk/sophgo/clk-cv1800.c
new file mode 100644
index 000000000000..2bdfdd0b907c
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv1800.c
@@ -0,0 +1,1530 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <linux/module.h>
+#include <linux/clk-provider.h>
+#include <linux/platform_device.h>
+#include <linux/io.h>
+#include <linux/spinlock.h>
+
+#include "clk-cv1800.h"
+
+#include "clk-cv18xx-common.h"
+#include "clk-cv18xx-ip.h"
+#include "clk-cv18xx-pll.h"
+
+struct cv1800_clk_ctrl;
+
+struct cv1800_clk_desc {
+	struct clk_hw_onecell_data	*clks_data;
+
+	int (*pre_init)(struct device *dev, void __iomem *base,
+			struct cv1800_clk_ctrl *ctrl,
+			const struct cv1800_clk_desc *desc);
+};
+
+struct cv1800_clk_ctrl {
+	const struct cv1800_clk_desc	*desc;
+	spinlock_t			lock;
+};
+
+#define CV1800_DIV_FLAG	\
+	(CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ROUND_CLOSEST)
+static const struct clk_parent_data osc_parents[] = {
+	{ .index = 0 },
+};
+
+static const struct cv1800_clk_pll_limit pll_limits[] = {
+	{
+		.pre_div	= _CV1800_PLL_LIMIT(1, 127),
+		.div		= _CV1800_PLL_LIMIT(6, 127),
+		.post_div	= _CV1800_PLL_LIMIT(1, 127),
+		.ictrl		= _CV1800_PLL_LIMIT(0, 7),
+		.mode		= _CV1800_PLL_LIMIT(0, 3),
+	},
+	{
+		.pre_div	= _CV1800_PLL_LIMIT(1, 127),
+		.div		= _CV1800_PLL_LIMIT(6, 127),
+		.post_div	= _CV1800_PLL_LIMIT(1, 127),
+		.ictrl		= _CV1800_PLL_LIMIT(0, 7),
+		.mode		= _CV1800_PLL_LIMIT(0, 3),
+	},
+};
+
+static CV1800_INTEGRAL_PLL(clk_fpll, osc_parents,
+			   REG_FPLL_CSR,
+			   REG_PLL_G6_CTRL, 8,
+			   REG_PLL_G6_STATUS, 2,
+			   pll_limits,
+			   CLK_IS_CRITICAL);
+
+static CV1800_INTEGRAL_PLL(clk_mipimpll, osc_parents,
+			   REG_MIPIMPLL_CSR,
+			   REG_PLL_G2_CTRL, 0,
+			   REG_PLL_G2_STATUS, 0,
+			   pll_limits,
+			   CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_mipimpll_parents[] = {
+	{ .hw = &clk_mipimpll.common.hw },
+};
+static const struct clk_parent_data clk_bypass_mipimpll_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_mipimpll.common.hw },
+};
+static const struct clk_parent_data clk_bypass_fpll_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_fpll.common.hw },
+};
+
+struct cv1800_clk_pll_synthesizer clk_mpll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G6_SSC_SYN_CTRL, 2),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G6_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_MPLL_SSC_SYN_CTRL,
+	.set		= REG_MPLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_mpll, clk_bypass_mipimpll_parents,
+			    REG_MPLL_CSR,
+			    REG_PLL_G6_CTRL, 0,
+			    REG_PLL_G6_STATUS, 0,
+			    pll_limits,
+			    &clk_mpll_synthesizer,
+			    CLK_IS_CRITICAL);
+
+struct cv1800_clk_pll_synthesizer clk_tpll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G6_SSC_SYN_CTRL, 3),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G6_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_TPLL_SSC_SYN_CTRL,
+	.set		= REG_TPLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_tpll, clk_bypass_mipimpll_parents,
+			    REG_TPLL_CSR,
+			    REG_PLL_G6_CTRL, 4,
+			    REG_PLL_G6_STATUS, 1,
+			    pll_limits,
+			    &clk_tpll_synthesizer,
+			    CLK_IS_CRITICAL);
+
+struct cv1800_clk_pll_synthesizer clk_a0pll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 2),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_A0PLL_SSC_SYN_CTRL,
+	.set		= REG_A0PLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_a0pll, clk_bypass_mipimpll_parents,
+			    REG_A0PLL_CSR,
+			    REG_PLL_G2_CTRL, 4,
+			    REG_PLL_G2_STATUS, 1,
+			    pll_limits,
+			    &clk_a0pll_synthesizer,
+			    CLK_IS_CRITICAL);
+
+struct cv1800_clk_pll_synthesizer clk_disppll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 3),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_DISPPLL_SSC_SYN_CTRL,
+	.set		= REG_DISPPLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_disppll, clk_bypass_mipimpll_parents,
+			    REG_DISPPLL_CSR,
+			    REG_PLL_G2_CTRL, 8,
+			    REG_PLL_G2_STATUS, 2,
+			    pll_limits,
+			    &clk_disppll_synthesizer,
+			    CLK_IS_CRITICAL);
+
+struct cv1800_clk_pll_synthesizer clk_cam0pll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 4),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_CAM0PLL_SSC_SYN_CTRL,
+	.set		= REG_CAM0PLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_cam0pll, clk_bypass_mipimpll_parents,
+			    REG_CAM0PLL_CSR,
+			    REG_PLL_G2_CTRL, 12,
+			    REG_PLL_G2_STATUS, 3,
+			    pll_limits,
+			    &clk_cam0pll_synthesizer,
+			    CLK_IGNORE_UNUSED);
+
+struct cv1800_clk_pll_synthesizer clk_cam1pll_synthesizer = {
+	.en		= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 5),
+	.clk_half	= CV1800_CLK_BIT(REG_PLL_G2_SSC_SYN_CTRL, 0),
+	.ctrl		= REG_CAM1PLL_SSC_SYN_CTRL,
+	.set		= REG_CAM1PLL_SSC_SYN_SET,
+};
+static CV1800_FACTIONAL_PLL(clk_cam1pll, clk_bypass_mipimpll_parents,
+			    REG_CAM1PLL_CSR,
+			    REG_PLL_G2_CTRL, 16,
+			    REG_PLL_G2_STATUS, 4,
+			    pll_limits,
+			    &clk_cam1pll_synthesizer,
+			    CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_cam0pll_parents[] = {
+	{ .hw = &clk_cam0pll.common.hw },
+};
+
+
+/* G2D */
+static CV1800_FIXED_DIV(clk_cam0pll_d2, clk_cam0pll_parents,
+			REG_CAM0PLL_CLK_CSR, 1,
+			2,
+			CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED);
+static CV1800_FIXED_DIV(clk_cam0pll_d3, clk_cam0pll_parents,
+			REG_CAM0PLL_CLK_CSR, 2,
+			3,
+			CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED);
+static CV1800_FIXED_DIV(clk_mipimpll_d3, clk_mipimpll_parents,
+			REG_MIPIMPLL_CLK_CSR, 2,
+			3,
+			CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED);
+
+/* TPU */
+static const struct clk_parent_data clk_tpu_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_tpll.common.hw },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_tpu, clk_tpu_parents,
+			 REG_CLK_EN_0, 4,
+			 REG_DIV_CLK_TPU, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_TPU, 8, 2,
+			 REG_CLK_BYP_0, 3,
+			 0);
+static CV1800_GATE(clk_tpu_fab, clk_mipimpll_parents,
+		   REG_CLK_EN_0, 5,
+		   0);
+
+/* FABRIC_AXI6 */
+static CV1800_BYPASS_DIV(clk_axi6, clk_bypass_fpll_parents,
+			 REG_CLK_EN_2, 2,
+			 REG_DIV_CLK_AXI6, 16, 4, 15, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 20,
+			 CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_axi6_bus_parents[] = {
+	{ .hw = &clk_axi6.div.common.hw },
+};
+static const struct clk_parent_data clk_bypass_axi6_bus_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_axi6.div.common.hw },
+};
+
+/* FABRIC_AXI4 */
+static const struct clk_parent_data clk_axi4_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_fpll.common.hw },
+	{ .hw = &clk_disppll.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_axi4, clk_axi4_parents,
+			 REG_CLK_EN_2, 1,
+			 REG_DIV_CLK_AXI4, 16, 4, 5, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_AXI4, 8, 2,
+			 REG_CLK_BYP_0, 19,
+			 CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_axi4_bus_parents[] = {
+	{ .hw = &clk_axi4.mux.common.hw },
+};
+
+/* XTAL_MISC */
+static CV1800_GATE(clk_xtal_misc, osc_parents,
+		   REG_CLK_EN_0, 14,
+		   CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_timer_parents[] = {
+	{ .hw = &clk_xtal_misc.common.hw },
+};
+
+/* TOP */
+static const struct clk_parent_data clk_cam0_200_parents[] = {
+	{ .index = 0 },
+	{ .index = 0 },
+	{ .hw = &clk_disppll.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_cam0_200, clk_cam0_200_parents,
+			 REG_CLK_EN_1, 13,
+			 REG_DIV_CLK_CAM0_200, 16, 4, 1, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_CAM0_200, 8, 2,
+			 REG_CLK_BYP_0, 16,
+			 CLK_IS_CRITICAL);
+static CV1800_DIV(clk_1m, osc_parents,
+		  REG_CLK_EN_3, 5,
+		  REG_DIV_CLK_1M, 16, 6, 25, CV1800_DIV_FLAG,
+		  CLK_IS_CRITICAL);
+static CV1800_GATE(clk_pm, clk_axi6_bus_parents,
+		   REG_CLK_EN_3, 8,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer0, clk_timer_parents,
+		   REG_CLK_EN_3, 9,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer1, clk_timer_parents,
+		   REG_CLK_EN_3, 10,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer2, clk_timer_parents,
+		   REG_CLK_EN_3, 11,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer3, clk_timer_parents,
+		   REG_CLK_EN_3, 12,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer4, clk_timer_parents,
+		   REG_CLK_EN_3, 13,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer5, clk_timer_parents,
+		   REG_CLK_EN_3, 14,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer6, clk_timer_parents,
+		   REG_CLK_EN_3, 15,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_timer7, clk_timer_parents,
+		   REG_CLK_EN_3, 16,
+		   CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_parents_1m[] = {
+	{ .hw = &clk_1m.common.hw },
+};
+static const struct clk_parent_data clk_uart_parents[] = {
+	{ .hw = &clk_cam0_200.mux.common.hw },
+};
+
+/* AHB ROM */
+static CV1800_GATE(clk_ahb_rom, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 6,
+		   0);
+
+/* RTC */
+static CV1800_GATE(clk_rtc_25m, osc_parents,
+		   REG_CLK_EN_0, 8,
+		   CLK_IS_CRITICAL);
+static CV1800_BYPASS_DIV(clk_src_rtc_sys_0, clk_bypass_fpll_parents,
+			 REG_CLK_EN_4, 6,
+			 REG_DIV_CLK_RTCSYS_SRC_0, 16, 4, 5, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_1, 5,
+			 CLK_IS_CRITICAL);
+
+/* TEMPSEN */
+static CV1800_GATE(clk_tempsen, osc_parents,
+		   REG_CLK_EN_0, 9,
+		   0);
+
+/* SARADC */
+static CV1800_GATE(clk_saradc, osc_parents,
+		   REG_CLK_EN_0, 10,
+		   0);
+
+/* EFUSE */
+static CV1800_GATE(clk_efuse, osc_parents,
+		   REG_CLK_EN_0, 11,
+		   0);
+static CV1800_GATE(clk_apb_efuse, osc_parents,
+		   REG_CLK_EN_0, 12,
+		   0);
+
+/* WDT */
+static CV1800_GATE(clk_apb_wdt, osc_parents,
+		   REG_CLK_EN_1, 7,
+		   CLK_IS_CRITICAL);
+
+/* WGN */
+static CV1800_GATE(clk_wgn, osc_parents,
+		   REG_CLK_EN_3, 22,
+		   0);
+static CV1800_GATE(clk_wgn0, osc_parents,
+		   REG_CLK_EN_3, 23,
+		   0);
+static CV1800_GATE(clk_wgn1, osc_parents,
+		   REG_CLK_EN_3, 24,
+		   0);
+static CV1800_GATE(clk_wgn2, osc_parents,
+		   REG_CLK_EN_3, 25,
+		   0);
+
+/* KEYSCAN */
+static CV1800_GATE(clk_keyscan, osc_parents,
+		   REG_CLK_EN_3, 26,
+		   0);
+
+/* EMMC */
+static CV1800_GATE(clk_axi4_emmc, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 15,
+		   0);
+static CV1800_BYPASS_MUX(clk_emmc, clk_axi4_parents,
+			 REG_CLK_EN_0, 16,
+			 REG_DIV_CLK_EMMC, 16, 5, 15, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_EMMC, 8, 2,
+			 REG_CLK_BYP_0, 5,
+			 0);
+static CV1800_DIV(clk_emmc_100k, clk_parents_1m,
+		  REG_CLK_EN_0, 17,
+		  REG_DIV_CLK_EMMC_100K, 16, 8, 10, CV1800_DIV_FLAG,
+		  0);
+
+/* SD */
+static CV1800_GATE(clk_axi4_sd0, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 18,
+		   0);
+static CV1800_BYPASS_MUX(clk_sd0, clk_axi4_parents,
+			 REG_CLK_EN_0, 19,
+			 REG_DIV_CLK_SD0, 16, 5, 15, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SD0, 8, 2,
+			 REG_CLK_BYP_0, 6,
+			 0);
+static CV1800_DIV(clk_sd0_100k, clk_parents_1m,
+		  REG_CLK_EN_0, 20,
+		  REG_DIV_CLK_SD0_100K, 16, 8, 10, CV1800_DIV_FLAG,
+		  0);
+static CV1800_GATE(clk_axi4_sd1, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 21,
+		   0);
+static CV1800_BYPASS_MUX(clk_sd1, clk_axi4_parents,
+			 REG_CLK_EN_0, 22,
+			 REG_DIV_CLK_SD1, 16, 5, 15, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SD1, 8, 2,
+			 REG_CLK_BYP_0, 7,
+			 0);
+static CV1800_DIV(clk_sd1_100k, clk_parents_1m,
+		  REG_CLK_EN_0, 23,
+		  REG_DIV_CLK_SD1_100K, 16, 8, 10, CV1800_DIV_FLAG,
+		  0);
+
+/* SPI NAND */
+static CV1800_BYPASS_MUX(clk_spi_nand, clk_axi4_parents,
+			 REG_CLK_EN_0, 24,
+			 REG_DIV_CLK_SPI_NAND, 16, 5, 8, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SPI_NAND, 8, 2,
+			 REG_CLK_BYP_0, 8,
+			 0);
+
+/* GPIO */
+static CV1800_DIV(clk_gpio_db, clk_parents_1m,
+		  REG_CLK_EN_0, 31,
+		  REG_DIV_CLK_GPIO_DB, 16, 16, 10, CV1800_DIV_FLAG,
+		  CLK_IS_CRITICAL);
+static CV1800_GATE(clk_apb_gpio, clk_axi6_bus_parents,
+		   REG_CLK_EN_0, 29,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_apb_gpio_intr, clk_axi6_bus_parents,
+		   REG_CLK_EN_0, 30,
+		   CLK_IS_CRITICAL);
+
+/* ETH */
+static CV1800_BYPASS_DIV(clk_eth0_500m, clk_bypass_fpll_parents,
+			 REG_CLK_EN_0, 25,
+			 REG_DIV_CLK_GPIO_DB, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 9,
+			 0);
+static CV1800_GATE(clk_axi4_eth0, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 26,
+		   0);
+static CV1800_BYPASS_DIV(clk_eth1_500m, clk_bypass_fpll_parents,
+			 REG_CLK_EN_0, 27,
+			 REG_DIV_CLK_GPIO_DB, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 10,
+			 0);
+static CV1800_GATE(clk_axi4_eth1, clk_axi4_bus_parents,
+		   REG_CLK_EN_0, 28,
+		   0);
+
+/* SF */
+static CV1800_GATE(clk_ahb_sf, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 0,
+		   0);
+static CV1800_GATE(clk_ahb_sf1, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 27,
+		   0);
+
+/* AUDSRC */
+static CV1800_ACLK(clk_a24m, clk_mipimpll_parents,
+		   REG_APLL_FRAC_DIV_CTRL, 0,
+		   REG_APLL_FRAC_DIV_CTRL, 3,
+		   REG_APLL_FRAC_DIV_CTRL, 1,
+		   REG_APLL_FRAC_DIV_CTRL, 2,
+		   REG_APLL_FRAC_DIV_M, 0, 22, CV1800_DIV_FLAG,
+		   REG_APLL_FRAC_DIV_N, 0, 22, CV1800_DIV_FLAG,
+		   24576000,
+		   0);
+
+static const struct clk_parent_data clk_aud_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_a24m.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_audsrc, clk_aud_parents,
+			 REG_CLK_EN_4, 1,
+			 REG_DIV_CLK_AUDSRC, 16, 8, 18, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_AUDSRC, 8, 2,
+			 REG_CLK_BYP_1, 2,
+			 0);
+static CV1800_GATE(clk_apb_audsrc, clk_axi4_bus_parents,
+		   REG_CLK_EN_4, 2,
+		   0);
+
+/* SDMA */
+static CV1800_GATE(clk_sdma_axi, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 1,
+		   0);
+static CV1800_BYPASS_MUX(clk_sdma_aud0, clk_aud_parents,
+			 REG_CLK_EN_1, 2,
+			 REG_DIV_CLK_SDMA_AUD0, 16, 8, 18, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SDMA_AUD0, 8, 2,
+			 REG_CLK_BYP_0, 11,
+			 0);
+static CV1800_BYPASS_MUX(clk_sdma_aud1, clk_aud_parents,
+			 REG_CLK_EN_1, 3,
+			 REG_DIV_CLK_SDMA_AUD1, 16, 8, 18, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SDMA_AUD1, 8, 2,
+			 REG_CLK_BYP_0, 12,
+			 0);
+static CV1800_BYPASS_MUX(clk_sdma_aud2, clk_aud_parents,
+			 REG_CLK_EN_1, 3,
+			 REG_DIV_CLK_SDMA_AUD2, 16, 8, 18, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SDMA_AUD2, 8, 2,
+			 REG_CLK_BYP_0, 13,
+			 0);
+static CV1800_BYPASS_MUX(clk_sdma_aud3, clk_aud_parents,
+			 REG_CLK_EN_1, 3,
+			 REG_DIV_CLK_SDMA_AUD3, 16, 8, 18, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SDMA_AUD3, 8, 2,
+			 REG_CLK_BYP_0, 14,
+			 0);
+
+/* SPI */
+static CV1800_GATE(clk_apb_spi0, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 9,
+		   0);
+static CV1800_GATE(clk_apb_spi1, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 10,
+		   0);
+static CV1800_GATE(clk_apb_spi2, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 11,
+		   0);
+static CV1800_GATE(clk_apb_spi3, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 12,
+		   0);
+static CV1800_BYPASS_DIV(clk_spi, clk_bypass_fpll_parents,
+			 REG_CLK_EN_3, 6,
+			 REG_DIV_CLK_SPI, 16, 6, 8, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 30,
+			 0);
+
+/* UART */
+static CV1800_GATE(clk_uart0, clk_uart_parents,
+		   REG_CLK_EN_1, 14,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_apb_uart0, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 15,
+		   CLK_IS_CRITICAL);
+static CV1800_GATE(clk_uart1, clk_uart_parents,
+		   REG_CLK_EN_1, 16,
+		   0);
+static CV1800_GATE(clk_apb_uart1, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 17,
+		   0);
+static CV1800_GATE(clk_uart2, clk_uart_parents,
+		   REG_CLK_EN_1, 18,
+		   0);
+static CV1800_GATE(clk_apb_uart2, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 19,
+		   0);
+static CV1800_GATE(clk_uart3, clk_uart_parents,
+		   REG_CLK_EN_1, 20,
+		   0);
+static CV1800_GATE(clk_apb_uart3, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 21,
+		   0);
+static CV1800_GATE(clk_uart4, clk_uart_parents,
+		   REG_CLK_EN_1, 22,
+		   0);
+static CV1800_GATE(clk_apb_uart4, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 23,
+		   0);
+
+/* I2S */
+static CV1800_GATE(clk_apb_i2s0, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 24,
+		   0);
+static CV1800_GATE(clk_apb_i2s1, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 25,
+		   0);
+static CV1800_GATE(clk_apb_i2s2, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 26,
+		   0);
+static CV1800_GATE(clk_apb_i2s3, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 27,
+		   0);
+
+/* DEBUG */
+static CV1800_GATE(clk_debug, osc_parents,
+		   REG_CLK_EN_0, 13,
+		   CLK_IS_CRITICAL);
+static CV1800_BYPASS_DIV(clk_ap_debug, clk_bypass_fpll_parents,
+			 REG_CLK_EN_4, 5,
+			 REG_DIV_CLK_AP_DEBUG, 16, 4, 5, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_1, 4,
+			 CLK_IS_CRITICAL);
+
+/* DDR */
+static CV1800_GATE(clk_ddr_axi_reg, clk_axi6_bus_parents,
+		   REG_CLK_EN_0, 7,
+		   CLK_IS_CRITICAL);
+
+/* I2C */
+static CV1800_GATE(clk_apb_i2c, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 6,
+		   0);
+static CV1800_BYPASS_DIV(clk_i2c, clk_bypass_axi6_bus_parents,
+			 REG_CLK_EN_3, 7,
+			 REG_DIV_CLK_I2C, 16, 4, 1, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 31,
+			 0);
+static CV1800_GATE(clk_apb_i2c0, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 17,
+		   0);
+static CV1800_GATE(clk_apb_i2c1, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 18,
+		   0);
+static CV1800_GATE(clk_apb_i2c2, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 19,
+		   0);
+static CV1800_GATE(clk_apb_i2c3, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 20,
+		   0);
+static CV1800_GATE(clk_apb_i2c4, clk_axi4_bus_parents,
+		   REG_CLK_EN_3, 21,
+		   0);
+
+/* USB */
+static CV1800_GATE(clk_axi4_usb, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 28,
+		   0);
+static CV1800_GATE(clk_apb_usb, clk_axi4_bus_parents,
+		   REG_CLK_EN_1, 29,
+		   0);
+static CV1800_BYPASS_FIXED_DIV(clk_usb_125m, clk_bypass_fpll_parents,
+			       REG_CLK_EN_1, 30,
+			       12,
+			       REG_CLK_BYP_0, 17,
+			       CLK_SET_RATE_PARENT);
+static CV1800_FIXED_DIV(clk_usb_33k, clk_parents_1m,
+			REG_CLK_EN_1, 31,
+			3,
+			0);
+static CV1800_BYPASS_FIXED_DIV(clk_usb_12m, clk_bypass_fpll_parents,
+			       REG_CLK_EN_2, 0,
+			       125,
+			       REG_CLK_BYP_0, 18,
+			       CLK_SET_RATE_PARENT);
+
+/* VIP SYS */
+static const struct clk_parent_data clk_vip_sys_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_cam0pll.common.hw },
+	{ .hw = &clk_disppll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+static const struct clk_parent_data clk_disp_vip_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_disppll.common.hw },
+};
+
+static CV1800_BYPASS_DIV(clk_dsi_esc, clk_bypass_axi6_bus_parents,
+			 REG_CLK_EN_2, 3,
+			 REG_DIV_CLK_DSI_ESC, 16, 4, 5, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 21,
+			 0);
+static CV1800_BYPASS_MUX(clk_axi_vip, clk_vip_sys_parents,
+			 REG_CLK_EN_2, 4,
+			 REG_DIV_CLK_AXI_VIP, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_AXI_VIP, 8, 2,
+			 REG_CLK_BYP_0, 22,
+			 0);
+
+static const struct clk_parent_data clk_axi_vip_bus_parents[] = {
+	{ .hw = &clk_axi_vip.mux.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_src_vip_sys_0, clk_vip_sys_parents,
+			 REG_CLK_EN_2, 5,
+			 REG_DIV_CLK_SRC_VIP_SYS_0, 16, 4, 6, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SRC_VIP_SYS_0, 8, 2,
+			 REG_CLK_BYP_0, 23,
+			 0);
+static CV1800_BYPASS_MUX(clk_src_vip_sys_1, clk_vip_sys_parents,
+			 REG_CLK_EN_2, 6,
+			 REG_DIV_CLK_SRC_VIP_SYS_1, 16, 4, 6, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SRC_VIP_SYS_1, 8, 2,
+			 REG_CLK_BYP_0, 24,
+			 0);
+static CV1800_BYPASS_DIV(clk_disp_src_vip, clk_disp_vip_parents,
+			 REG_CLK_EN_2, 7,
+			 REG_DIV_CLK_DISP_SRC_VIP, 16, 4, 8, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 25,
+			 0);
+static CV1800_BYPASS_MUX(clk_src_vip_sys_2, clk_vip_sys_parents,
+			 REG_CLK_EN_3, 29,
+			 REG_DIV_CLK_SRC_VIP_SYS_2, 16, 4, 2, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SRC_VIP_SYS_2, 8, 2,
+			 REG_CLK_BYP_1, 1,
+			 0);
+static CV1800_GATE(clk_csi_mac0_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 18,
+		   0);
+static CV1800_GATE(clk_csi_mac1_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 19,
+		   0);
+static CV1800_GATE(clk_isp_top_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 20,
+		   0);
+static CV1800_GATE(clk_img_d_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 21,
+		   0);
+static CV1800_GATE(clk_img_v_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 22,
+		   0);
+static CV1800_GATE(clk_sc_top_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 23,
+		   0);
+static CV1800_GATE(clk_sc_d_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 24,
+		   0);
+static CV1800_GATE(clk_sc_v1_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 25,
+		   0);
+static CV1800_GATE(clk_sc_v2_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 26,
+		   0);
+static CV1800_GATE(clk_sc_v3_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 27,
+		   0);
+static CV1800_GATE(clk_dwa_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 28,
+		   0);
+static CV1800_GATE(clk_bt_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 29,
+		   0);
+static CV1800_GATE(clk_disp_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 30,
+		   0);
+static CV1800_GATE(clk_dsi_mac_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_2, 31,
+		   0);
+static CV1800_GATE(clk_lvds0_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 0,
+		   0);
+static CV1800_GATE(clk_lvds1_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 1,
+		   0);
+static CV1800_GATE(clk_csi0_rx_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 2,
+		   0);
+static CV1800_GATE(clk_csi1_rx_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 3,
+		   0);
+static CV1800_GATE(clk_pad_vi_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 4,
+		   0);
+static CV1800_GATE(clk_pad_vi1_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_3, 30,
+		   0);
+static CV1800_GATE(clk_cfg_reg_vip, clk_axi6_bus_parents,
+		   REG_CLK_EN_3, 31,
+		   0);
+static CV1800_GATE(clk_pad_vi2_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 7,
+		   0);
+static CV1800_GATE(clk_csi_be_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 8,
+		   0);
+static CV1800_GATE(clk_vip_ip0, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 9,
+		   0);
+static CV1800_GATE(clk_vip_ip1, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 10,
+		   0);
+static CV1800_GATE(clk_vip_ip2, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 11,
+		   0);
+static CV1800_GATE(clk_vip_ip3, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 12,
+		   0);
+static CV1800_BYPASS_MUX(clk_src_vip_sys_3, clk_vip_sys_parents,
+			 REG_CLK_EN_4, 15,
+			 REG_DIV_CLK_SRC_VIP_SYS_3, 16, 4, 2, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SRC_VIP_SYS_3, 8, 2,
+			 REG_CLK_BYP_1, 8,
+			 0);
+static CV1800_BYPASS_MUX(clk_src_vip_sys_4, clk_vip_sys_parents,
+			 REG_CLK_EN_4, 16,
+			 REG_DIV_CLK_SRC_VIP_SYS_4, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_SRC_VIP_SYS_4, 8, 2,
+			 REG_CLK_BYP_1, 9,
+			 0);
+static CV1800_GATE(clk_ive_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 17,
+		   0);
+static CV1800_GATE(clk_raw_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 18,
+		   0);
+static CV1800_GATE(clk_osdc_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 19,
+		   0);
+static CV1800_GATE(clk_csi_mac2_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 20,
+		   0);
+static CV1800_GATE(clk_cam0_vip, clk_axi_vip_bus_parents,
+		   REG_CLK_EN_4, 21,
+		   0);
+
+/* CAM OUT */
+static const struct clk_parent_data clk_cam_parents[] = {
+	{ .hw = &clk_cam0pll.common.hw },
+	{ .hw = &clk_cam0pll_d2.common.hw },
+	{ .hw = &clk_cam0pll_d3.common.hw },
+	{ .hw = &clk_mipimpll_d3.common.hw },
+};
+
+static CV1800_MUX(clk_cam0, clk_cam_parents,
+		  REG_CLK_EN_2, 16,
+		  REG_CLK_CAM0_SRC_DIV, 16, 6, 0, CV1800_DIV_FLAG,
+		  REG_CLK_CAM0_SRC_DIV, 8, 2,
+		  CLK_IGNORE_UNUSED);
+static CV1800_MUX(clk_cam1, clk_cam_parents,
+		  REG_CLK_EN_2, 17,
+		  REG_CLK_CAM1_SRC_DIV, 16, 6, 0, CV1800_DIV_FLAG,
+		  REG_CLK_CAM1_SRC_DIV, 8, 2,
+		  CLK_IGNORE_UNUSED);
+
+
+/* VIDEO SUBSYS */
+static const struct clk_parent_data clk_axi_video_codec_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_cam1pll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+static const struct clk_parent_data clk_vc_src0_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_disppll.common.hw },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_cam1pll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+static const struct clk_parent_data clk_vc_src1_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_cam1pll.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_axi_video_codec, clk_axi_video_codec_parents,
+			 REG_CLK_EN_2, 8,
+			 REG_DIV_CLK_AXI_VIDEO_CODEC, 16, 4, 2, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_AXI_VIDEO_CODEC, 8, 2,
+			 REG_CLK_BYP_0, 26,
+			 0);
+
+static const struct clk_parent_data clk_axi_video_codec_bus_parents[] = {
+	{ .hw = &clk_axi_video_codec.mux.common.hw },
+};
+
+static CV1800_BYPASS_MUX(clk_vc_src0, clk_vc_src0_parents,
+			 REG_CLK_EN_2, 9,
+			 REG_DIV_CLK_VC_SRC0, 16, 4, 2, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_VC_SRC0, 8, 2,
+			 REG_CLK_BYP_0, 27,
+			 0);
+
+static CV1800_GATE(clk_h264c, clk_axi_video_codec_bus_parents,
+		   REG_CLK_EN_2, 10,
+		   0);
+static CV1800_GATE(clk_h265c, clk_axi_video_codec_bus_parents,
+		   REG_CLK_EN_2, 11,
+		   0);
+static CV1800_GATE(clk_jpeg, clk_axi_video_codec_bus_parents,
+		   REG_CLK_EN_2, 12,
+		   CLK_IGNORE_UNUSED);
+static CV1800_GATE(clk_apb_jpeg, clk_axi6_bus_parents,
+		   REG_CLK_EN_2, 13,
+		   CLK_IGNORE_UNUSED);
+static CV1800_GATE(clk_apb_h264c, clk_axi6_bus_parents,
+		   REG_CLK_EN_2, 14,
+		   0);
+static CV1800_GATE(clk_apb_h265c, clk_axi6_bus_parents,
+		   REG_CLK_EN_2, 15,
+		   0);
+static CV1800_BYPASS_FIXED_DIV(clk_vc_src1, clk_vc_src1_parents,
+			       REG_CLK_EN_3, 28,
+			       2,
+			       REG_CLK_BYP_1, 0,
+			       CLK_SET_RATE_PARENT);
+static CV1800_BYPASS_FIXED_DIV(clk_vc_src2, clk_bypass_fpll_parents,
+			       REG_CLK_EN_4, 3,
+			       3,
+			       REG_CLK_BYP_1, 3,
+			       CLK_SET_RATE_PARENT);
+
+/* VC SYS */
+static CV1800_GATE(clk_cfg_reg_vc, clk_axi6_bus_parents,
+		   REG_CLK_EN_4, 0,
+		   CLK_IGNORE_UNUSED);
+
+/* PWM */
+static CV1800_BYPASS_MUX(clk_pwm_src, clk_axi4_parents,
+			 REG_CLK_EN_4, 4,
+			 REG_DIV_CLK_PWM_SRC_0, 16, 6, 10, CV1800_DIV_FLAG,
+			 REG_DIV_CLK_PWM_SRC_0, 8, 2,
+			 REG_CLK_BYP_0, 15,
+			 CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_pwm_parents[] = {
+	{ .hw = &clk_pwm_src.mux.common.hw },
+};
+
+static CV1800_GATE(clk_pwm, clk_pwm_parents,
+		   REG_CLK_EN_1, 8,
+		   CLK_IS_CRITICAL);
+
+/* C906 */
+static const struct clk_parent_data clk_c906_0_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_tpll.common.hw },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_mpll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+static const struct clk_parent_data clk_c906_1_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_tpll.common.hw },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_disppll.common.hw },
+	{ .hw = &clk_mpll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+
+static const s8 clk_c906_parent2sel[] = {
+	-1,	/* osc */
+	0,	/* mux 0: clk_tpll(c906_0), clk_tpll(c906_1) */
+	0,	/* mux 0: clk_a0pll(c906_0), clk_a0pll(c906_1) */
+	0,	/* mux 0: clk_mipimpll(c906_0), clk_disppll(c906_1) */
+	0,	/* mux 0: clk_mpll(c906_0), clk_mpll(c906_1) */
+	1	/* mux 1: clk_fpll(c906_0), clk_fpll(c906_1) */
+};
+
+static const u8 clk_c906_sel2parent[2][4] = {
+	[0] = {
+		1,
+		2,
+		3,
+		4
+	},
+	[1] = {
+		5,
+		5,
+		5,
+		5
+	},
+};
+
+static CV1800_MMUX(clk_c906_0, clk_c906_0_parents,
+		   REG_CLK_EN_4, 13,
+		   REG_DIV_CLK_C906_0_0, 16, 4, 1, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_C906_0_1, 16, 4, 2, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_C906_0_0, 8, 2,
+		   REG_DIV_CLK_C906_0_1, 8, 2,
+		   REG_CLK_BYP_1, 6,
+		   REG_CLK_SEL_0, 23,
+		   clk_c906_parent2sel,
+		   clk_c906_sel2parent[0], clk_c906_sel2parent[1],
+		   CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+static CV1800_MMUX(clk_c906_1, clk_c906_1_parents,
+		   REG_CLK_EN_4, 14,
+		   REG_DIV_CLK_C906_1_0, 16, 4, 2, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_C906_1_1, 16, 4, 3, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_C906_1_0, 8, 2,
+		   REG_DIV_CLK_C906_1_1, 8, 2,
+		   REG_CLK_BYP_1, 7,
+		   REG_CLK_SEL_0, 24,
+		   clk_c906_parent2sel,
+		   clk_c906_sel2parent[0], clk_c906_sel2parent[1],
+		   CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+
+/* A53 */
+static CV1800_BYPASS_DIV(clk_cpu_axi0, clk_axi4_parents,
+			 REG_CLK_EN_0, 1,
+			 REG_DIV_CLK_CPU_AXI0, 16, 4, 3, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 1,
+			 CLK_IS_CRITICAL);
+static CV1800_BYPASS_DIV(clk_cpu_gic, clk_bypass_fpll_parents,
+			 REG_CLK_EN_0, 2,
+			 REG_DIV_CLK_CPU_GIC, 16, 4, 5, CV1800_DIV_FLAG,
+			 REG_CLK_BYP_0, 2,
+			 CLK_IS_CRITICAL);
+static CV1800_GATE(clk_xtal_ap, osc_parents,
+		   REG_CLK_EN_0, 3,
+		   CLK_IS_CRITICAL);
+
+static const struct clk_parent_data clk_a53_parents[] = {
+	{ .index = 0 },
+	{ .hw = &clk_tpll.common.hw },
+	{ .hw = &clk_a0pll.common.hw },
+	{ .hw = &clk_mipimpll.common.hw },
+	{ .hw = &clk_mpll.common.hw },
+	{ .hw = &clk_fpll.common.hw },
+};
+
+static const s8 clk_a53_parent2sel[] = {
+	-1,	/* osc */
+	0,	/* mux 0: clk_tpll */
+	0,	/* mux 0: clk_a0pll */
+	0,	/* mux 0: clk_mipimpll */
+	0,	/* mux 0: clk_mpll */
+	1	/* mux 1: clk_fpll */
+};
+
+static const u8 clk_a53_sel2parent[2][4] = {
+	[0] = {
+		1,
+		2,
+		3,
+		4
+	},
+	[1] = {
+		5,
+		5,
+		5,
+		5
+	},
+};
+
+/*
+ * Clock for A53 cpu in the CV18XX/SG200X series.
+ * For CV180X and CV181X series, this clock is not used, but can not
+ * be set to bypass mode, or the SoC will hang.
+ */
+static CV1800_MMUX(clk_a53, clk_a53_parents,
+		   REG_CLK_EN_0, 0,
+		   REG_DIV_CLK_A53_0, 16, 4, 1, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_A53_1, 16, 4, 2, CV1800_DIV_FLAG,
+		   REG_DIV_CLK_A53_0, 8, 2,
+		   REG_DIV_CLK_A53_1, 8, 2,
+		   REG_CLK_BYP_0, 0,
+		   REG_CLK_SEL_0, 0,
+		   clk_a53_parent2sel,
+		   clk_a53_sel2parent[0], clk_a53_sel2parent[1],
+		   CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+
+
+static struct clk_hw_onecell_data cv1800_hw_clks = {
+	.num	= CV1800_CLK_MAX,
+	.hws	= {
+		[CLK_MPLL]		= &clk_mpll.common.hw,
+		[CLK_TPLL]		= &clk_tpll.common.hw,
+		[CLK_FPLL]		= &clk_fpll.common.hw,
+		[CLK_MIPIMPLL]		= &clk_mipimpll.common.hw,
+		[CLK_A0PLL]		= &clk_a0pll.common.hw,
+		[CLK_DISPPLL]		= &clk_disppll.common.hw,
+		[CLK_CAM0PLL]		= &clk_cam0pll.common.hw,
+		[CLK_CAM1PLL]		= &clk_cam1pll.common.hw,
+
+		[CLK_MIPIMPLL_D3]	= &clk_mipimpll_d3.common.hw,
+		[CLK_CAM0PLL_D2]	= &clk_cam0pll_d2.common.hw,
+		[CLK_CAM0PLL_D3]	= &clk_cam0pll_d3.common.hw,
+
+		[CLK_TPU]		= &clk_tpu.mux.common.hw,
+		[CLK_TPU_FAB]		= &clk_tpu_fab.common.hw,
+		[CLK_AHB_ROM]		= &clk_ahb_rom.common.hw,
+		[CLK_DDR_AXI_REG]	= &clk_ddr_axi_reg.common.hw,
+		[CLK_RTC_25M]		= &clk_rtc_25m.common.hw,
+		[CLK_SRC_RTC_SYS_0]	= &clk_src_rtc_sys_0.div.common.hw,
+		[CLK_TEMPSEN]		= &clk_tempsen.common.hw,
+		[CLK_SARADC]		= &clk_saradc.common.hw,
+		[CLK_EFUSE]		= &clk_efuse.common.hw,
+		[CLK_APB_EFUSE]		= &clk_apb_efuse.common.hw,
+		[CLK_DEBUG]		= &clk_debug.common.hw,
+		[CLK_AP_DEBUG]		= &clk_ap_debug.div.common.hw,
+		[CLK_XTAL_MISC]		= &clk_xtal_misc.common.hw,
+		[CLK_AXI4_EMMC]		= &clk_axi4_emmc.common.hw,
+		[CLK_EMMC]		= &clk_emmc.mux.common.hw,
+		[CLK_EMMC_100K]		= &clk_emmc_100k.common.hw,
+		[CLK_AXI4_SD0]		= &clk_axi4_sd0.common.hw,
+		[CLK_SD0]		= &clk_sd0.mux.common.hw,
+		[CLK_SD0_100K]		= &clk_sd0_100k.common.hw,
+		[CLK_AXI4_SD1]		= &clk_axi4_sd1.common.hw,
+		[CLK_SD1]		= &clk_sd1.mux.common.hw,
+		[CLK_SD1_100K]		= &clk_sd1_100k.common.hw,
+		[CLK_SPI_NAND]		= &clk_spi_nand.mux.common.hw,
+		[CLK_ETH0_500M]		= &clk_eth0_500m.div.common.hw,
+		[CLK_AXI4_ETH0]		= &clk_axi4_eth0.common.hw,
+		[CLK_ETH1_500M]		= &clk_eth1_500m.div.common.hw,
+		[CLK_AXI4_ETH1]		= &clk_axi4_eth1.common.hw,
+		[CLK_APB_GPIO]		= &clk_apb_gpio.common.hw,
+		[CLK_APB_GPIO_INTR]	= &clk_apb_gpio_intr.common.hw,
+		[CLK_GPIO_DB]		= &clk_gpio_db.common.hw,
+		[CLK_AHB_SF]		= &clk_ahb_sf.common.hw,
+		[CLK_AHB_SF1]		= &clk_ahb_sf1.common.hw,
+		[CLK_A24M]		= &clk_a24m.common.hw,
+		[CLK_AUDSRC]		= &clk_audsrc.mux.common.hw,
+		[CLK_APB_AUDSRC]	= &clk_apb_audsrc.common.hw,
+		[CLK_SDMA_AXI]		= &clk_sdma_axi.common.hw,
+		[CLK_SDMA_AUD0]		= &clk_sdma_aud0.mux.common.hw,
+		[CLK_SDMA_AUD1]		= &clk_sdma_aud1.mux.common.hw,
+		[CLK_SDMA_AUD2]		= &clk_sdma_aud2.mux.common.hw,
+		[CLK_SDMA_AUD3]		= &clk_sdma_aud3.mux.common.hw,
+		[CLK_I2C]		= &clk_i2c.div.common.hw,
+		[CLK_APB_I2C]		= &clk_apb_i2c.common.hw,
+		[CLK_APB_I2C0]		= &clk_apb_i2c0.common.hw,
+		[CLK_APB_I2C1]		= &clk_apb_i2c1.common.hw,
+		[CLK_APB_I2C2]		= &clk_apb_i2c2.common.hw,
+		[CLK_APB_I2C3]		= &clk_apb_i2c3.common.hw,
+		[CLK_APB_I2C4]		= &clk_apb_i2c4.common.hw,
+		[CLK_APB_WDT]		= &clk_apb_wdt.common.hw,
+		[CLK_PWM_SRC]		= &clk_pwm_src.mux.common.hw,
+		[CLK_PWM]		= &clk_pwm.common.hw,
+		[CLK_SPI]		= &clk_spi.div.common.hw,
+		[CLK_APB_SPI0]		= &clk_apb_spi0.common.hw,
+		[CLK_APB_SPI1]		= &clk_apb_spi1.common.hw,
+		[CLK_APB_SPI2]		= &clk_apb_spi2.common.hw,
+		[CLK_APB_SPI3]		= &clk_apb_spi3.common.hw,
+		[CLK_1M]		= &clk_1m.common.hw,
+		[CLK_CAM0_200]		= &clk_cam0_200.mux.common.hw,
+		[CLK_PM]		= &clk_pm.common.hw,
+		[CLK_TIMER0]		= &clk_timer0.common.hw,
+		[CLK_TIMER1]		= &clk_timer1.common.hw,
+		[CLK_TIMER2]		= &clk_timer2.common.hw,
+		[CLK_TIMER3]		= &clk_timer3.common.hw,
+		[CLK_TIMER4]		= &clk_timer4.common.hw,
+		[CLK_TIMER5]		= &clk_timer5.common.hw,
+		[CLK_TIMER6]		= &clk_timer6.common.hw,
+		[CLK_TIMER7]		= &clk_timer7.common.hw,
+		[CLK_UART0]		= &clk_uart0.common.hw,
+		[CLK_APB_UART0]		= &clk_apb_uart0.common.hw,
+		[CLK_UART1]		= &clk_uart1.common.hw,
+		[CLK_APB_UART1]		= &clk_apb_uart1.common.hw,
+		[CLK_UART2]		= &clk_uart2.common.hw,
+		[CLK_APB_UART2]		= &clk_apb_uart2.common.hw,
+		[CLK_UART3]		= &clk_uart3.common.hw,
+		[CLK_APB_UART3]		= &clk_apb_uart3.common.hw,
+		[CLK_UART4]		= &clk_uart4.common.hw,
+		[CLK_APB_UART4]		= &clk_apb_uart4.common.hw,
+		[CLK_APB_I2S0]		= &clk_apb_i2s0.common.hw,
+		[CLK_APB_I2S1]		= &clk_apb_i2s1.common.hw,
+		[CLK_APB_I2S2]		= &clk_apb_i2s2.common.hw,
+		[CLK_APB_I2S3]		= &clk_apb_i2s3.common.hw,
+		[CLK_AXI4_USB]		= &clk_axi4_usb.common.hw,
+		[CLK_APB_USB]		= &clk_apb_usb.common.hw,
+		[CLK_USB_125M]		= &clk_usb_125m.div.common.hw,
+		[CLK_USB_33K]		= &clk_usb_33k.common.hw,
+		[CLK_USB_12M]		= &clk_usb_12m.div.common.hw,
+		[CLK_AXI4]		= &clk_axi4.mux.common.hw,
+		[CLK_AXI6]		= &clk_axi6.div.common.hw,
+		[CLK_DSI_ESC]		= &clk_dsi_esc.div.common.hw,
+		[CLK_AXI_VIP]		= &clk_axi_vip.mux.common.hw,
+		[CLK_SRC_VIP_SYS_0]	= &clk_src_vip_sys_0.mux.common.hw,
+		[CLK_SRC_VIP_SYS_1]	= &clk_src_vip_sys_1.mux.common.hw,
+		[CLK_SRC_VIP_SYS_2]	= &clk_src_vip_sys_2.mux.common.hw,
+		[CLK_SRC_VIP_SYS_3]	= &clk_src_vip_sys_3.mux.common.hw,
+		[CLK_SRC_VIP_SYS_4]	= &clk_src_vip_sys_4.mux.common.hw,
+		[CLK_CSI_BE_VIP]	= &clk_csi_be_vip.common.hw,
+		[CLK_CSI_MAC0_VIP]	= &clk_csi_mac0_vip.common.hw,
+		[CLK_CSI_MAC1_VIP]	= &clk_csi_mac1_vip.common.hw,
+		[CLK_CSI_MAC2_VIP]	= &clk_csi_mac2_vip.common.hw,
+		[CLK_CSI0_RX_VIP]	= &clk_csi0_rx_vip.common.hw,
+		[CLK_CSI1_RX_VIP]	= &clk_csi1_rx_vip.common.hw,
+		[CLK_ISP_TOP_VIP]	= &clk_isp_top_vip.common.hw,
+		[CLK_IMG_D_VIP]		= &clk_img_d_vip.common.hw,
+		[CLK_IMG_V_VIP]		= &clk_img_v_vip.common.hw,
+		[CLK_SC_TOP_VIP]	= &clk_sc_top_vip.common.hw,
+		[CLK_SC_D_VIP]		= &clk_sc_d_vip.common.hw,
+		[CLK_SC_V1_VIP]		= &clk_sc_v1_vip.common.hw,
+		[CLK_SC_V2_VIP]		= &clk_sc_v2_vip.common.hw,
+		[CLK_SC_V3_VIP]		= &clk_sc_v3_vip.common.hw,
+		[CLK_DWA_VIP]		= &clk_dwa_vip.common.hw,
+		[CLK_BT_VIP]		= &clk_bt_vip.common.hw,
+		[CLK_DISP_VIP]		= &clk_disp_vip.common.hw,
+		[CLK_DSI_MAC_VIP]	= &clk_dsi_mac_vip.common.hw,
+		[CLK_LVDS0_VIP]		= &clk_lvds0_vip.common.hw,
+		[CLK_LVDS1_VIP]		= &clk_lvds1_vip.common.hw,
+		[CLK_PAD_VI_VIP]	= &clk_pad_vi_vip.common.hw,
+		[CLK_PAD_VI1_VIP]	= &clk_pad_vi1_vip.common.hw,
+		[CLK_PAD_VI2_VIP]	= &clk_pad_vi2_vip.common.hw,
+		[CLK_CFG_REG_VIP]	= &clk_cfg_reg_vip.common.hw,
+		[CLK_VIP_IP0]		= &clk_vip_ip0.common.hw,
+		[CLK_VIP_IP1]		= &clk_vip_ip1.common.hw,
+		[CLK_VIP_IP2]		= &clk_vip_ip2.common.hw,
+		[CLK_VIP_IP3]		= &clk_vip_ip3.common.hw,
+		[CLK_IVE_VIP]		= &clk_ive_vip.common.hw,
+		[CLK_RAW_VIP]		= &clk_raw_vip.common.hw,
+		[CLK_OSDC_VIP]		= &clk_osdc_vip.common.hw,
+		[CLK_CAM0_VIP]		= &clk_cam0_vip.common.hw,
+		[CLK_AXI_VIDEO_CODEC]	= &clk_axi_video_codec.mux.common.hw,
+		[CLK_VC_SRC0]		= &clk_vc_src0.mux.common.hw,
+		[CLK_VC_SRC1]		= &clk_vc_src1.div.common.hw,
+		[CLK_VC_SRC2]		= &clk_vc_src2.div.common.hw,
+		[CLK_H264C]		= &clk_h264c.common.hw,
+		[CLK_APB_H264C]		= &clk_apb_h264c.common.hw,
+		[CLK_H265C]		= &clk_h265c.common.hw,
+		[CLK_APB_H265C]		= &clk_apb_h265c.common.hw,
+		[CLK_JPEG]		= &clk_jpeg.common.hw,
+		[CLK_APB_JPEG]		= &clk_apb_jpeg.common.hw,
+		[CLK_CAM0]		= &clk_cam0.common.hw,
+		[CLK_CAM1]		= &clk_cam1.common.hw,
+		[CLK_WGN]		= &clk_wgn.common.hw,
+		[CLK_WGN0]		= &clk_wgn0.common.hw,
+		[CLK_WGN1]		= &clk_wgn1.common.hw,
+		[CLK_WGN2]		= &clk_wgn2.common.hw,
+		[CLK_KEYSCAN]		= &clk_keyscan.common.hw,
+		[CLK_CFG_REG_VC]	= &clk_cfg_reg_vc.common.hw,
+		[CLK_C906_0]		= &clk_c906_0.common.hw,
+		[CLK_C906_1]		= &clk_c906_1.common.hw,
+		[CLK_A53]		= &clk_a53.common.hw,
+		[CLK_CPU_AXI0]		= &clk_cpu_axi0.div.common.hw,
+		[CLK_CPU_GIC]		= &clk_cpu_gic.div.common.hw,
+		[CLK_XTAL_AP]		= &clk_xtal_ap.common.hw,
+	},
+};
+
+static void cv18xx_clk_disable_auto_pd(void __iomem *base)
+{
+	static const u16 CV1800_PD_CLK[] = {
+		REG_MIPIMPLL_CLK_CSR,
+		REG_A0PLL_CLK_CSR,
+		REG_DISPPLL_CLK_CSR,
+		REG_CAM0PLL_CLK_CSR,
+		REG_CAM1PLL_CLK_CSR,
+	};
+
+	u32 val;
+	int i;
+
+	/* disable auto power down */
+	for (i = 0; i < ARRAY_SIZE(CV1800_PD_CLK); i++) {
+		u32 reg = CV1800_PD_CLK[i];
+
+		val = readl(base + reg);
+		val |= GENMASK(12, 9);
+		val &= ~BIT(8);
+		writel(val, base + reg);
+	}
+}
+
+static void cv18xx_clk_disable_a53(void __iomem *base)
+{
+	u32 val = readl(base + REG_CLK_BYP_0);
+
+	/* Set bypass clock for clk_a53 */
+	val |= BIT(0);
+
+	/* Set bypass clock for clk_cpu_axi0 */
+	val |= BIT(1);
+
+	/* Set bypass clock for clk_cpu_gic */
+	val |= BIT(2);
+
+	writel(val, base + REG_CLK_BYP_0);
+}
+
+static int cv1800_pre_init(struct device *dev, void __iomem *base,
+			   struct cv1800_clk_ctrl *ctrl,
+			   const struct cv1800_clk_desc *desc)
+{
+	u32 val = readl(base + REG_CLK_EN_2);
+
+	/* disable unsupported clk_disp_src_vip */
+	val &= ~BIT(7);
+
+	writel(val, base + REG_CLK_EN_2);
+
+	cv18xx_clk_disable_a53(base);
+	cv18xx_clk_disable_auto_pd(base);
+
+	return 0;
+}
+
+static const struct cv1800_clk_desc cv1800_desc = {
+	.clks_data	= &cv1800_hw_clks,
+	.pre_init	= cv1800_pre_init,
+};
+
+static struct clk_hw_onecell_data cv1810_hw_clks = {
+	.num	= CV1810_CLK_MAX,
+	.hws	= {
+		[CLK_MPLL]		= &clk_mpll.common.hw,
+		[CLK_TPLL]		= &clk_tpll.common.hw,
+		[CLK_FPLL]		= &clk_fpll.common.hw,
+		[CLK_MIPIMPLL]		= &clk_mipimpll.common.hw,
+		[CLK_A0PLL]		= &clk_a0pll.common.hw,
+		[CLK_DISPPLL]		= &clk_disppll.common.hw,
+		[CLK_CAM0PLL]		= &clk_cam0pll.common.hw,
+		[CLK_CAM1PLL]		= &clk_cam1pll.common.hw,
+
+		[CLK_MIPIMPLL_D3]	= &clk_mipimpll_d3.common.hw,
+		[CLK_CAM0PLL_D2]	= &clk_cam0pll_d2.common.hw,
+		[CLK_CAM0PLL_D3]	= &clk_cam0pll_d3.common.hw,
+
+		[CLK_TPU]		= &clk_tpu.mux.common.hw,
+		[CLK_TPU_FAB]		= &clk_tpu_fab.common.hw,
+		[CLK_AHB_ROM]		= &clk_ahb_rom.common.hw,
+		[CLK_DDR_AXI_REG]	= &clk_ddr_axi_reg.common.hw,
+		[CLK_RTC_25M]		= &clk_rtc_25m.common.hw,
+		[CLK_SRC_RTC_SYS_0]	= &clk_src_rtc_sys_0.div.common.hw,
+		[CLK_TEMPSEN]		= &clk_tempsen.common.hw,
+		[CLK_SARADC]		= &clk_saradc.common.hw,
+		[CLK_EFUSE]		= &clk_efuse.common.hw,
+		[CLK_APB_EFUSE]		= &clk_apb_efuse.common.hw,
+		[CLK_DEBUG]		= &clk_debug.common.hw,
+		[CLK_AP_DEBUG]		= &clk_ap_debug.div.common.hw,
+		[CLK_XTAL_MISC]		= &clk_xtal_misc.common.hw,
+		[CLK_AXI4_EMMC]		= &clk_axi4_emmc.common.hw,
+		[CLK_EMMC]		= &clk_emmc.mux.common.hw,
+		[CLK_EMMC_100K]		= &clk_emmc_100k.common.hw,
+		[CLK_AXI4_SD0]		= &clk_axi4_sd0.common.hw,
+		[CLK_SD0]		= &clk_sd0.mux.common.hw,
+		[CLK_SD0_100K]		= &clk_sd0_100k.common.hw,
+		[CLK_AXI4_SD1]		= &clk_axi4_sd1.common.hw,
+		[CLK_SD1]		= &clk_sd1.mux.common.hw,
+		[CLK_SD1_100K]		= &clk_sd1_100k.common.hw,
+		[CLK_SPI_NAND]		= &clk_spi_nand.mux.common.hw,
+		[CLK_ETH0_500M]		= &clk_eth0_500m.div.common.hw,
+		[CLK_AXI4_ETH0]		= &clk_axi4_eth0.common.hw,
+		[CLK_ETH1_500M]		= &clk_eth1_500m.div.common.hw,
+		[CLK_AXI4_ETH1]		= &clk_axi4_eth1.common.hw,
+		[CLK_APB_GPIO]		= &clk_apb_gpio.common.hw,
+		[CLK_APB_GPIO_INTR]	= &clk_apb_gpio_intr.common.hw,
+		[CLK_GPIO_DB]		= &clk_gpio_db.common.hw,
+		[CLK_AHB_SF]		= &clk_ahb_sf.common.hw,
+		[CLK_AHB_SF1]		= &clk_ahb_sf1.common.hw,
+		[CLK_A24M]		= &clk_a24m.common.hw,
+		[CLK_AUDSRC]		= &clk_audsrc.mux.common.hw,
+		[CLK_APB_AUDSRC]	= &clk_apb_audsrc.common.hw,
+		[CLK_SDMA_AXI]		= &clk_sdma_axi.common.hw,
+		[CLK_SDMA_AUD0]		= &clk_sdma_aud0.mux.common.hw,
+		[CLK_SDMA_AUD1]		= &clk_sdma_aud1.mux.common.hw,
+		[CLK_SDMA_AUD2]		= &clk_sdma_aud2.mux.common.hw,
+		[CLK_SDMA_AUD3]		= &clk_sdma_aud3.mux.common.hw,
+		[CLK_I2C]		= &clk_i2c.div.common.hw,
+		[CLK_APB_I2C]		= &clk_apb_i2c.common.hw,
+		[CLK_APB_I2C0]		= &clk_apb_i2c0.common.hw,
+		[CLK_APB_I2C1]		= &clk_apb_i2c1.common.hw,
+		[CLK_APB_I2C2]		= &clk_apb_i2c2.common.hw,
+		[CLK_APB_I2C3]		= &clk_apb_i2c3.common.hw,
+		[CLK_APB_I2C4]		= &clk_apb_i2c4.common.hw,
+		[CLK_APB_WDT]		= &clk_apb_wdt.common.hw,
+		[CLK_PWM_SRC]		= &clk_pwm_src.mux.common.hw,
+		[CLK_PWM]		= &clk_pwm.common.hw,
+		[CLK_SPI]		= &clk_spi.div.common.hw,
+		[CLK_APB_SPI0]		= &clk_apb_spi0.common.hw,
+		[CLK_APB_SPI1]		= &clk_apb_spi1.common.hw,
+		[CLK_APB_SPI2]		= &clk_apb_spi2.common.hw,
+		[CLK_APB_SPI3]		= &clk_apb_spi3.common.hw,
+		[CLK_1M]		= &clk_1m.common.hw,
+		[CLK_CAM0_200]		= &clk_cam0_200.mux.common.hw,
+		[CLK_PM]		= &clk_pm.common.hw,
+		[CLK_TIMER0]		= &clk_timer0.common.hw,
+		[CLK_TIMER1]		= &clk_timer1.common.hw,
+		[CLK_TIMER2]		= &clk_timer2.common.hw,
+		[CLK_TIMER3]		= &clk_timer3.common.hw,
+		[CLK_TIMER4]		= &clk_timer4.common.hw,
+		[CLK_TIMER5]		= &clk_timer5.common.hw,
+		[CLK_TIMER6]		= &clk_timer6.common.hw,
+		[CLK_TIMER7]		= &clk_timer7.common.hw,
+		[CLK_UART0]		= &clk_uart0.common.hw,
+		[CLK_APB_UART0]		= &clk_apb_uart0.common.hw,
+		[CLK_UART1]		= &clk_uart1.common.hw,
+		[CLK_APB_UART1]		= &clk_apb_uart1.common.hw,
+		[CLK_UART2]		= &clk_uart2.common.hw,
+		[CLK_APB_UART2]		= &clk_apb_uart2.common.hw,
+		[CLK_UART3]		= &clk_uart3.common.hw,
+		[CLK_APB_UART3]		= &clk_apb_uart3.common.hw,
+		[CLK_UART4]		= &clk_uart4.common.hw,
+		[CLK_APB_UART4]		= &clk_apb_uart4.common.hw,
+		[CLK_APB_I2S0]		= &clk_apb_i2s0.common.hw,
+		[CLK_APB_I2S1]		= &clk_apb_i2s1.common.hw,
+		[CLK_APB_I2S2]		= &clk_apb_i2s2.common.hw,
+		[CLK_APB_I2S3]		= &clk_apb_i2s3.common.hw,
+		[CLK_AXI4_USB]		= &clk_axi4_usb.common.hw,
+		[CLK_APB_USB]		= &clk_apb_usb.common.hw,
+		[CLK_USB_125M]		= &clk_usb_125m.div.common.hw,
+		[CLK_USB_33K]		= &clk_usb_33k.common.hw,
+		[CLK_USB_12M]		= &clk_usb_12m.div.common.hw,
+		[CLK_AXI4]		= &clk_axi4.mux.common.hw,
+		[CLK_AXI6]		= &clk_axi6.div.common.hw,
+		[CLK_DSI_ESC]		= &clk_dsi_esc.div.common.hw,
+		[CLK_AXI_VIP]		= &clk_axi_vip.mux.common.hw,
+		[CLK_SRC_VIP_SYS_0]	= &clk_src_vip_sys_0.mux.common.hw,
+		[CLK_SRC_VIP_SYS_1]	= &clk_src_vip_sys_1.mux.common.hw,
+		[CLK_SRC_VIP_SYS_2]	= &clk_src_vip_sys_2.mux.common.hw,
+		[CLK_SRC_VIP_SYS_3]	= &clk_src_vip_sys_3.mux.common.hw,
+		[CLK_SRC_VIP_SYS_4]	= &clk_src_vip_sys_4.mux.common.hw,
+		[CLK_CSI_BE_VIP]	= &clk_csi_be_vip.common.hw,
+		[CLK_CSI_MAC0_VIP]	= &clk_csi_mac0_vip.common.hw,
+		[CLK_CSI_MAC1_VIP]	= &clk_csi_mac1_vip.common.hw,
+		[CLK_CSI_MAC2_VIP]	= &clk_csi_mac2_vip.common.hw,
+		[CLK_CSI0_RX_VIP]	= &clk_csi0_rx_vip.common.hw,
+		[CLK_CSI1_RX_VIP]	= &clk_csi1_rx_vip.common.hw,
+		[CLK_ISP_TOP_VIP]	= &clk_isp_top_vip.common.hw,
+		[CLK_IMG_D_VIP]		= &clk_img_d_vip.common.hw,
+		[CLK_IMG_V_VIP]		= &clk_img_v_vip.common.hw,
+		[CLK_SC_TOP_VIP]	= &clk_sc_top_vip.common.hw,
+		[CLK_SC_D_VIP]		= &clk_sc_d_vip.common.hw,
+		[CLK_SC_V1_VIP]		= &clk_sc_v1_vip.common.hw,
+		[CLK_SC_V2_VIP]		= &clk_sc_v2_vip.common.hw,
+		[CLK_SC_V3_VIP]		= &clk_sc_v3_vip.common.hw,
+		[CLK_DWA_VIP]		= &clk_dwa_vip.common.hw,
+		[CLK_BT_VIP]		= &clk_bt_vip.common.hw,
+		[CLK_DISP_VIP]		= &clk_disp_vip.common.hw,
+		[CLK_DSI_MAC_VIP]	= &clk_dsi_mac_vip.common.hw,
+		[CLK_LVDS0_VIP]		= &clk_lvds0_vip.common.hw,
+		[CLK_LVDS1_VIP]		= &clk_lvds1_vip.common.hw,
+		[CLK_PAD_VI_VIP]	= &clk_pad_vi_vip.common.hw,
+		[CLK_PAD_VI1_VIP]	= &clk_pad_vi1_vip.common.hw,
+		[CLK_PAD_VI2_VIP]	= &clk_pad_vi2_vip.common.hw,
+		[CLK_CFG_REG_VIP]	= &clk_cfg_reg_vip.common.hw,
+		[CLK_VIP_IP0]		= &clk_vip_ip0.common.hw,
+		[CLK_VIP_IP1]		= &clk_vip_ip1.common.hw,
+		[CLK_VIP_IP2]		= &clk_vip_ip2.common.hw,
+		[CLK_VIP_IP3]		= &clk_vip_ip3.common.hw,
+		[CLK_IVE_VIP]		= &clk_ive_vip.common.hw,
+		[CLK_RAW_VIP]		= &clk_raw_vip.common.hw,
+		[CLK_OSDC_VIP]		= &clk_osdc_vip.common.hw,
+		[CLK_CAM0_VIP]		= &clk_cam0_vip.common.hw,
+		[CLK_AXI_VIDEO_CODEC]	= &clk_axi_video_codec.mux.common.hw,
+		[CLK_VC_SRC0]		= &clk_vc_src0.mux.common.hw,
+		[CLK_VC_SRC1]		= &clk_vc_src1.div.common.hw,
+		[CLK_VC_SRC2]		= &clk_vc_src2.div.common.hw,
+		[CLK_H264C]		= &clk_h264c.common.hw,
+		[CLK_APB_H264C]		= &clk_apb_h264c.common.hw,
+		[CLK_H265C]		= &clk_h265c.common.hw,
+		[CLK_APB_H265C]		= &clk_apb_h265c.common.hw,
+		[CLK_JPEG]		= &clk_jpeg.common.hw,
+		[CLK_APB_JPEG]		= &clk_apb_jpeg.common.hw,
+		[CLK_CAM0]		= &clk_cam0.common.hw,
+		[CLK_CAM1]		= &clk_cam1.common.hw,
+		[CLK_WGN]		= &clk_wgn.common.hw,
+		[CLK_WGN0]		= &clk_wgn0.common.hw,
+		[CLK_WGN1]		= &clk_wgn1.common.hw,
+		[CLK_WGN2]		= &clk_wgn2.common.hw,
+		[CLK_KEYSCAN]		= &clk_keyscan.common.hw,
+		[CLK_CFG_REG_VC]	= &clk_cfg_reg_vc.common.hw,
+		[CLK_C906_0]		= &clk_c906_0.common.hw,
+		[CLK_C906_1]		= &clk_c906_1.common.hw,
+		[CLK_A53]		= &clk_a53.common.hw,
+		[CLK_CPU_AXI0]		= &clk_cpu_axi0.div.common.hw,
+		[CLK_CPU_GIC]		= &clk_cpu_gic.div.common.hw,
+		[CLK_XTAL_AP]		= &clk_xtal_ap.common.hw,
+		[CLK_DISP_SRC_VIP]	= &clk_disp_src_vip.div.common.hw,
+	},
+};
+
+
+static int cv1810_pre_init(struct device *dev, void __iomem *base,
+			   struct cv1800_clk_ctrl *ctrl,
+			   const struct cv1800_clk_desc *desc)
+{
+	cv18xx_clk_disable_a53(base);
+	cv18xx_clk_disable_auto_pd(base);
+
+	return 0;
+}
+
+static const struct cv1800_clk_desc cv1810_desc = {
+	.clks_data	= &cv1810_hw_clks,
+	.pre_init	= cv1810_pre_init,
+};
+
+static int cv1800_clk_init_ctrl(struct device *dev, void __iomem *reg,
+				struct cv1800_clk_ctrl *ctrl,
+				const struct cv1800_clk_desc *desc)
+{
+	int i, ret;
+
+	ctrl->desc = desc;
+	spin_lock_init(&ctrl->lock);
+
+	for (i = 0; i < desc->clks_data->num; i++) {
+		struct clk_hw *hw = desc->clks_data->hws[i];
+		struct cv1800_clk_common *common;
+		const char *name;
+
+		if (!hw)
+			continue;
+
+		name = hw->init->name;
+
+		common = hw_to_cv1800_clk_common(hw);
+		common->base = reg;
+		common->lock = &ctrl->lock;
+
+		ret = devm_clk_hw_register(dev, hw);
+		if (ret) {
+			dev_err(dev, "Couldn't register clock %d - %s\n",
+				i, name);
+			return ret;
+		}
+	}
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					  desc->clks_data);
+
+	return ret;
+}
+
+static int cv1800_clk_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	void __iomem *reg;
+	int ret;
+	const struct cv1800_clk_desc *desc;
+	struct cv1800_clk_ctrl *ctrl;
+
+	reg = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(reg))
+		return PTR_ERR(reg);
+
+	desc = device_get_match_data(dev);
+	if (!desc) {
+		dev_err(dev, "no match data for platform\n");
+		return -EINVAL;
+	}
+
+	ctrl = devm_kmalloc(dev, sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	if (desc->pre_init) {
+		ret = desc->pre_init(dev, reg, ctrl, desc);
+		if (ret)
+			return ret;
+	}
+
+	ret = cv1800_clk_init_ctrl(dev, reg, ctrl, desc);
+
+	return ret;
+}
+
+static const struct of_device_id cv1800_clk_ids[] = {
+	{ .compatible = "sophgo,cv1800-clk", .data = &cv1800_desc },
+	{ .compatible = "sophgo,cv1810-clk", .data = &cv1810_desc },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, cv1800_clk_ids);
+
+static struct platform_driver cv1800_clk_driver = {
+	.probe	= cv1800_clk_probe,
+	.driver	= {
+		.name			= "cv1800-clk",
+		.suppress_bind_attrs	= true,
+		.of_match_table		= cv1800_clk_ids,
+	},
+};
+module_platform_driver(cv1800_clk_driver);
+MODULE_LICENSE("GPL");
diff --git a/drivers/clk/sophgo/clk-cv1800.h b/drivers/clk/sophgo/clk-cv1800.h
new file mode 100644
index 000000000000..1e7107b5d05e
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv1800.h
@@ -0,0 +1,123 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#ifndef _CLK_SOPHGO_CV1800_H_
+#define _CLK_SOPHGO_CV1800_H_
+
+#include <dt-bindings/clock/sophgo,cv1800.h>
+
+#define CV1800_CLK_MAX			(CLK_XTAL_AP + 1)
+#define CV1810_CLK_MAX			(CLK_DISP_SRC_VIP + 1)
+
+#define REG_PLL_G2_CTRL			0x800
+#define REG_PLL_G2_STATUS		0x804
+#define REG_MIPIMPLL_CSR		0x808
+#define REG_A0PLL_CSR			0x80C
+#define REG_DISPPLL_CSR			0x810
+#define REG_CAM0PLL_CSR			0x814
+#define REG_CAM1PLL_CSR			0x818
+#define REG_PLL_G2_SSC_SYN_CTRL		0x840
+#define REG_A0PLL_SSC_SYN_CTRL		0x850
+#define REG_A0PLL_SSC_SYN_SET		0x854
+#define REG_A0PLL_SSC_SYN_SPAN		0x858
+#define REG_A0PLL_SSC_SYN_STEP		0x85C
+#define REG_DISPPLL_SSC_SYN_CTRL	0x860
+#define REG_DISPPLL_SSC_SYN_SET		0x864
+#define REG_DISPPLL_SSC_SYN_SPAN	0x868
+#define REG_DISPPLL_SSC_SYN_STEP	0x86C
+#define REG_CAM0PLL_SSC_SYN_CTRL	0x870
+#define REG_CAM0PLL_SSC_SYN_SET		0x874
+#define REG_CAM0PLL_SSC_SYN_SPAN	0x878
+#define REG_CAM0PLL_SSC_SYN_STEP	0x87C
+#define REG_CAM1PLL_SSC_SYN_CTRL	0x880
+#define REG_CAM1PLL_SSC_SYN_SET		0x884
+#define REG_CAM1PLL_SSC_SYN_SPAN	0x888
+#define REG_CAM1PLL_SSC_SYN_STEP	0x88C
+#define REG_APLL_FRAC_DIV_CTRL		0x890
+#define REG_APLL_FRAC_DIV_M		0x894
+#define REG_APLL_FRAC_DIV_N		0x898
+#define REG_MIPIMPLL_CLK_CSR		0x8A0
+#define REG_A0PLL_CLK_CSR		0x8A4
+#define REG_DISPPLL_CLK_CSR		0x8A8
+#define REG_CAM0PLL_CLK_CSR		0x8AC
+#define REG_CAM1PLL_CLK_CSR		0x8B0
+#define REG_CLK_CAM0_SRC_DIV		0x8C0
+#define REG_CLK_CAM1_SRC_DIV		0x8C4
+
+/* top_pll_g6 */
+#define REG_PLL_G6_CTRL			0x900
+#define REG_PLL_G6_STATUS		0x904
+#define REG_MPLL_CSR			0x908
+#define REG_TPLL_CSR			0x90C
+#define REG_FPLL_CSR			0x910
+#define REG_PLL_G6_SSC_SYN_CTRL		0x940
+#define REG_DPLL_SSC_SYN_CTRL		0x950
+#define REG_DPLL_SSC_SYN_SET		0x954
+#define REG_DPLL_SSC_SYN_SPAN		0x958
+#define REG_DPLL_SSC_SYN_STEP		0x95C
+#define REG_MPLL_SSC_SYN_CTRL		0x960
+#define REG_MPLL_SSC_SYN_SET		0x964
+#define REG_MPLL_SSC_SYN_SPAN		0x968
+#define REG_MPLL_SSC_SYN_STEP		0x96C
+#define REG_TPLL_SSC_SYN_CTRL		0x970
+#define REG_TPLL_SSC_SYN_SET		0x974
+#define REG_TPLL_SSC_SYN_SPAN		0x978
+#define REG_TPLL_SSC_SYN_STEP		0x97C
+
+/* clkgen */
+#define REG_CLK_EN_0			0x000
+#define REG_CLK_EN_1			0x004
+#define REG_CLK_EN_2			0x008
+#define REG_CLK_EN_3			0x00C
+#define REG_CLK_EN_4			0x010
+#define REG_CLK_SEL_0			0x020
+#define REG_CLK_BYP_0			0x030
+#define REG_CLK_BYP_1			0x034
+
+#define REG_DIV_CLK_A53_0		0x040
+#define REG_DIV_CLK_A53_1		0x044
+#define REG_DIV_CLK_CPU_AXI0		0x048
+#define REG_DIV_CLK_CPU_GIC		0x050
+#define REG_DIV_CLK_TPU			0x054
+#define REG_DIV_CLK_EMMC		0x064
+#define REG_DIV_CLK_EMMC_100K		0x06C
+#define REG_DIV_CLK_SD0			0x070
+#define REG_DIV_CLK_SD0_100K		0x078
+#define REG_DIV_CLK_SD1			0x07C
+#define REG_DIV_CLK_SD1_100K		0x084
+#define REG_DIV_CLK_SPI_NAND		0x088
+#define REG_DIV_CLK_ETH0_500M		0x08C
+#define REG_DIV_CLK_ETH1_500M		0x090
+#define REG_DIV_CLK_GPIO_DB		0x094
+#define REG_DIV_CLK_SDMA_AUD0		0x098
+#define REG_DIV_CLK_SDMA_AUD1		0x09C
+#define REG_DIV_CLK_SDMA_AUD2		0x0A0
+#define REG_DIV_CLK_SDMA_AUD3		0x0A4
+#define REG_DIV_CLK_CAM0_200		0x0A8
+#define REG_DIV_CLK_AXI4		0x0B8
+#define REG_DIV_CLK_AXI6		0x0BC
+#define REG_DIV_CLK_DSI_ESC		0x0C4
+#define REG_DIV_CLK_AXI_VIP		0x0C8
+#define REG_DIV_CLK_SRC_VIP_SYS_0	0x0D0
+#define REG_DIV_CLK_SRC_VIP_SYS_1	0x0D8
+#define REG_DIV_CLK_DISP_SRC_VIP	0x0E0
+#define REG_DIV_CLK_AXI_VIDEO_CODEC	0x0E4
+#define REG_DIV_CLK_VC_SRC0		0x0EC
+#define REG_DIV_CLK_1M			0x0FC
+#define REG_DIV_CLK_SPI			0x100
+#define REG_DIV_CLK_I2C			0x104
+#define REG_DIV_CLK_SRC_VIP_SYS_2	0x110
+#define REG_DIV_CLK_AUDSRC		0x118
+#define REG_DIV_CLK_PWM_SRC_0		0x120
+#define REG_DIV_CLK_AP_DEBUG		0x128
+#define REG_DIV_CLK_RTCSYS_SRC_0	0x12C
+#define REG_DIV_CLK_C906_0_0		0x130
+#define REG_DIV_CLK_C906_0_1		0x134
+#define REG_DIV_CLK_C906_1_0		0x138
+#define REG_DIV_CLK_C906_1_1		0x13C
+#define REG_DIV_CLK_SRC_VIP_SYS_3	0x140
+#define REG_DIV_CLK_SRC_VIP_SYS_4	0x144
+
+#endif /* _CLK_SOPHGO_CV1800_H_ */
diff --git a/drivers/clk/sophgo/clk-cv18xx-common.c b/drivers/clk/sophgo/clk-cv18xx-common.c
new file mode 100644
index 000000000000..cbcdd88f0e23
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-common.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/spinlock.h>
+#include <linux/bug.h>
+
+#include "clk-cv18xx-common.h"
+
+int cv1800_clk_setbit(struct cv1800_clk_common *common,
+		      struct cv1800_clk_regbit *field)
+{
+	u32 mask = BIT(field->shift);
+	u32 value;
+	unsigned long flags;
+
+	spin_lock_irqsave(common->lock, flags);
+
+	value = readl(common->base + field->reg);
+	writel(value | mask, common->base + field->reg);
+
+	spin_unlock_irqrestore(common->lock, flags);
+
+	return 0;
+}
+
+int cv1800_clk_clearbit(struct cv1800_clk_common *common,
+			struct cv1800_clk_regbit *field)
+{
+	u32 mask = BIT(field->shift);
+	u32 value;
+	unsigned long flags;
+
+	spin_lock_irqsave(common->lock, flags);
+
+	value = readl(common->base + field->reg);
+	writel(value & ~mask, common->base + field->reg);
+
+	spin_unlock_irqrestore(common->lock, flags);
+
+	return 0;
+}
+
+int cv1800_clk_checkbit(struct cv1800_clk_common *common,
+			struct cv1800_clk_regbit *field)
+{
+	return readl(common->base + field->reg) & BIT(field->shift);
+}
+
+#define PLL_LOCK_TIMEOUT_US	(200 * 1000)
+
+void cv1800_clk_wait_for_lock(struct cv1800_clk_common *common,
+			      u32 reg, u32 lock)
+{
+	void __iomem *addr = common->base + reg;
+	u32 regval;
+
+	if (!lock)
+		return;
+
+	WARN_ON(readl_relaxed_poll_timeout(addr, regval, regval & lock,
+					   100, PLL_LOCK_TIMEOUT_US));
+}
diff --git a/drivers/clk/sophgo/clk-cv18xx-common.h b/drivers/clk/sophgo/clk-cv18xx-common.h
new file mode 100644
index 000000000000..2bfda02b2064
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-common.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#ifndef _CLK_SOPHGO_CV18XX_IP_H_
+#define _CLK_SOPHGO_CV18XX_IP_H_
+
+#include <linux/compiler.h>
+#include <linux/clk-provider.h>
+#include <linux/bitfield.h>
+
+struct cv1800_clk_common {
+	void __iomem	*base;
+	spinlock_t	*lock;
+	struct clk_hw	hw;
+	unsigned long	features;
+};
+
+#define CV1800_CLK_COMMON(_name, _parents, _op, _flags)			\
+	{								\
+		.hw.init = CLK_HW_INIT_PARENTS_DATA(_name, _parents,	\
+						    _op, _flags),	\
+	}
+
+static inline struct cv1800_clk_common *
+hw_to_cv1800_clk_common(struct clk_hw *hw)
+{
+	return container_of(hw, struct cv1800_clk_common, hw);
+}
+
+struct cv1800_clk_regbit {
+	u16		reg;
+	s8		shift;
+};
+
+struct cv1800_clk_regfield {
+	u16		reg;
+	u8		shift;
+	u8		width;
+	s16		initval;
+	unsigned long	flags;
+};
+
+#define CV1800_CLK_BIT(_reg, _shift)	\
+	{				\
+		.reg = _reg,		\
+		.shift = _shift,	\
+	}
+
+#define CV1800_CLK_REG(_reg, _shift, _width, _initval, _flags)	\
+	{							\
+		.reg = _reg,					\
+		.shift = _shift,				\
+		.width = _width,				\
+		.initval = _initval,				\
+		.flags = _flags,				\
+	}
+
+#define cv1800_clk_regfield_genmask(_reg) \
+	GENMASK((_reg)->shift + (_reg)->width - 1, (_reg)->shift)
+#define cv1800_clk_regfield_get(_val, _reg) \
+	(((_val) >> (_reg)->shift) & GENMASK((_reg)->width - 1, 0))
+#define cv1800_clk_regfield_set(_val, _new, _reg)    \
+	(((_val) & ~cv1800_clk_regfield_genmask((_reg))) | \
+	 (((_new) & GENMASK((_reg)->width - 1, 0)) << (_reg)->shift))
+
+#define _CV1800_SET_FIELD(_reg, _val, _field) \
+	(((_reg) & ~(_field)) | FIELD_PREP((_field), (_val)))
+
+int cv1800_clk_setbit(struct cv1800_clk_common *common,
+		      struct cv1800_clk_regbit *field);
+int cv1800_clk_clearbit(struct cv1800_clk_common *common,
+			struct cv1800_clk_regbit *field);
+int cv1800_clk_checkbit(struct cv1800_clk_common *common,
+			struct cv1800_clk_regbit *field);
+
+void cv1800_clk_wait_for_lock(struct cv1800_clk_common *common,
+			      u32 reg, u32 lock);
+
+#endif // _CLK_SOPHGO_CV18XX_IP_H_
diff --git a/drivers/clk/sophgo/clk-cv18xx-ip.c b/drivers/clk/sophgo/clk-cv18xx-ip.c
new file mode 100644
index 000000000000..aede85eac4ff
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-ip.c
@@ -0,0 +1,905 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/gcd.h>
+#include <linux/spinlock.h>
+
+#include "clk-cv18xx-ip.h"
+
+/* GATE */
+static inline struct cv1800_clk_gate *hw_to_cv1800_clk_gate(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_gate, common);
+}
+
+static int gate_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_gate *gate = hw_to_cv1800_clk_gate(hw);
+
+	return cv1800_clk_setbit(&gate->common, &gate->gate);
+}
+
+static void gate_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_gate *gate = hw_to_cv1800_clk_gate(hw);
+
+	cv1800_clk_clearbit(&gate->common, &gate->gate);
+}
+
+static int gate_is_enabled(struct clk_hw *hw)
+{
+	struct cv1800_clk_gate *gate = hw_to_cv1800_clk_gate(hw);
+
+	return cv1800_clk_checkbit(&gate->common, &gate->gate);
+}
+
+static unsigned long gate_recalc_rate(struct clk_hw *hw,
+				      unsigned long parent_rate)
+{
+	return parent_rate;
+}
+
+static long gate_round_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long *parent_rate)
+{
+	return *parent_rate;
+}
+
+static int gate_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_gate_ops = {
+	.disable = gate_disable,
+	.enable = gate_enable,
+	.is_enabled = gate_is_enabled,
+
+	.recalc_rate = gate_recalc_rate,
+	.round_rate = gate_round_rate,
+	.set_rate = gate_set_rate,
+};
+
+/* DIV */
+#define _DIV_EN_CLK_DIV_FACTOR_FIELD		BIT(3)
+
+#define DIV_GET_EN_CLK_DIV_FACTOR(_reg) \
+	FIELD_GET(_DIV_EN_CLK_DIV_FACTOR_FIELD, _reg)
+
+#define DIV_SET_EN_DIV_FACTOR(_reg) \
+	_CV1800_SET_FIELD(_reg, 1, _DIV_EN_CLK_DIV_FACTOR_FIELD)
+
+static inline struct cv1800_clk_div *hw_to_cv1800_clk_div(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_div, common);
+}
+
+static int div_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+
+	return cv1800_clk_setbit(&div->common, &div->gate);
+}
+
+static void div_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+
+	cv1800_clk_clearbit(&div->common, &div->gate);
+}
+
+static int div_is_enabled(struct clk_hw *hw)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+
+	return cv1800_clk_checkbit(&div->common, &div->gate);
+}
+
+static int div_helper_set_rate(struct cv1800_clk_common *common,
+			       struct cv1800_clk_regfield *div,
+			       unsigned long val)
+{
+	unsigned long flags;
+	u32 reg;
+
+	if (div->width == 0)
+		return 0;
+
+	spin_lock_irqsave(common->lock, flags);
+
+	reg = readl(common->base + div->reg);
+	reg = cv1800_clk_regfield_set(reg, val, div);
+	if (div->initval > 0)
+		reg = DIV_SET_EN_DIV_FACTOR(reg);
+
+	writel(reg, common->base + div->reg);
+
+	spin_unlock_irqrestore(common->lock, flags);
+
+	return 0;
+}
+
+static u32 div_helper_get_clockdiv(struct cv1800_clk_common *common,
+				   struct cv1800_clk_regfield *div)
+{
+	u32 clockdiv = 1;
+	u32 reg;
+
+	if (!div || div->initval < 0 || (div->width == 0 && div->initval <= 0))
+		return 1;
+
+	if (div->width == 0 && div->initval > 0)
+		return div->initval;
+
+	reg = readl(common->base + div->reg);
+
+	if (div->initval == 0 || DIV_GET_EN_CLK_DIV_FACTOR(reg))
+		clockdiv = cv1800_clk_regfield_get(reg, div);
+	else if (div->initval > 0)
+		clockdiv = div->initval;
+
+	return clockdiv;
+}
+
+static u32 div_helper_round_rate(struct cv1800_clk_regfield *div,
+				 struct clk_hw *hw, struct clk_hw *parent,
+				 unsigned long rate, unsigned long *prate)
+{
+	if (div->width == 0) {
+		if (div->initval <= 0)
+			return DIV_ROUND_UP_ULL(*prate, 1);
+		else
+			return DIV_ROUND_UP_ULL(*prate, div->initval);
+	}
+
+	return divider_round_rate_parent(hw, parent, rate, prate, NULL,
+					 div->width, div->flags);
+}
+
+static long div_round_rate(struct clk_hw *parent, unsigned long *parent_rate,
+			   unsigned long rate, int id, void *data)
+{
+	struct cv1800_clk_div *div = data;
+
+	return div_helper_round_rate(&div->div, &div->common.hw, parent,
+				     rate, parent_rate);
+}
+
+static bool div_is_better_rate(struct cv1800_clk_common *common,
+			       unsigned long target, unsigned long now,
+			       unsigned long best)
+{
+	if (common->features & CLK_DIVIDER_ROUND_CLOSEST)
+		return abs_diff(target, now) < abs_diff(target, best);
+
+	return now <= target && now > best;
+}
+
+static int mux_helper_determine_rate(struct cv1800_clk_common *common,
+				     struct clk_rate_request *req,
+				     long (*round)(struct clk_hw *,
+						   unsigned long *,
+						   unsigned long,
+						   int,
+						   void *),
+				     void *data)
+{
+	unsigned long best_parent_rate = 0, best_rate = 0;
+	struct clk_hw *best_parent, *hw = &common->hw;
+	unsigned int i;
+
+	if (clk_hw_get_flags(hw) & CLK_SET_RATE_NO_REPARENT) {
+		unsigned long adj_parent_rate;
+
+		best_parent = clk_hw_get_parent(hw);
+		best_parent_rate = clk_hw_get_rate(best_parent);
+
+		best_rate = round(best_parent, &adj_parent_rate,
+				  req->rate, -1, data);
+
+		goto find;
+	}
+
+	for (i = 0; i < clk_hw_get_num_parents(hw); i++) {
+		unsigned long tmp_rate, parent_rate;
+		struct clk_hw *parent;
+
+		parent = clk_hw_get_parent_by_index(hw, i);
+		if (!parent)
+			continue;
+
+		parent_rate = clk_hw_get_rate(parent);
+
+		tmp_rate = round(parent, &parent_rate, req->rate, i, data);
+
+		if (tmp_rate == req->rate) {
+			best_parent = parent;
+			best_parent_rate = parent_rate;
+			best_rate = tmp_rate;
+			goto find;
+		}
+
+		if (div_is_better_rate(common, req->rate,
+				       tmp_rate, best_rate)) {
+			best_parent = parent;
+			best_parent_rate = parent_rate;
+			best_rate = tmp_rate;
+		}
+	}
+
+	if (best_rate == 0)
+		return -EINVAL;
+
+find:
+	req->best_parent_hw = best_parent;
+	req->best_parent_rate = best_parent_rate;
+	req->rate = best_rate;
+	return 0;
+}
+
+static int div_determine_rate(struct clk_hw *hw,
+			      struct clk_rate_request *req)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+
+	return mux_helper_determine_rate(&div->common, req,
+					 div_round_rate, div);
+}
+
+static unsigned long div_recalc_rate(struct clk_hw *hw,
+				     unsigned long parent_rate)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+	unsigned long val;
+
+	val = div_helper_get_clockdiv(&div->common, &div->div);
+	if (val == 0)
+		return 0;
+
+	return divider_recalc_rate(hw, parent_rate, val, NULL,
+				   div->div.flags, div->div.width);
+}
+
+static int div_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+	unsigned long val;
+
+	val = divider_get_val(rate, parent_rate, NULL,
+			      div->div.width, div->div.flags);
+
+	return div_helper_set_rate(&div->common, &div->div, val);
+}
+
+const struct clk_ops cv1800_clk_div_ops = {
+	.disable = div_disable,
+	.enable = div_enable,
+	.is_enabled = div_is_enabled,
+
+	.determine_rate = div_determine_rate,
+	.recalc_rate	= div_recalc_rate,
+	.set_rate = div_set_rate,
+};
+
+static inline struct cv1800_clk_bypass_div *
+hw_to_cv1800_clk_bypass_div(struct clk_hw *hw)
+{
+	struct cv1800_clk_div *div = hw_to_cv1800_clk_div(hw);
+
+	return container_of(div, struct cv1800_clk_bypass_div, div);
+}
+
+static long bypass_div_round_rate(struct clk_hw *parent,
+				  unsigned long *parent_rate,
+				  unsigned long rate, int id, void *data)
+{
+	struct cv1800_clk_bypass_div *div = data;
+
+	if (id == -1) {
+		if (cv1800_clk_checkbit(&div->div.common, &div->bypass))
+			return *parent_rate;
+		else
+			return div_round_rate(parent, parent_rate, rate,
+					      -1, &div->div);
+	}
+
+	if (id == 0)
+		return *parent_rate;
+
+	return div_round_rate(parent, parent_rate, rate, id - 1, &div->div);
+}
+
+static int bypass_div_determine_rate(struct clk_hw *hw,
+				     struct clk_rate_request *req)
+{
+	struct cv1800_clk_bypass_div *div = hw_to_cv1800_clk_bypass_div(hw);
+
+	return mux_helper_determine_rate(&div->div.common, req,
+					 bypass_div_round_rate, div);
+}
+
+static unsigned long bypass_div_recalc_rate(struct clk_hw *hw,
+					    unsigned long parent_rate)
+{
+	struct cv1800_clk_bypass_div *div = hw_to_cv1800_clk_bypass_div(hw);
+
+	if (cv1800_clk_checkbit(&div->div.common, &div->bypass))
+		return parent_rate;
+
+	return div_recalc_rate(hw, parent_rate);
+}
+
+static int bypass_div_set_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct cv1800_clk_bypass_div *div = hw_to_cv1800_clk_bypass_div(hw);
+
+	if (cv1800_clk_checkbit(&div->div.common, &div->bypass))
+		return 0;
+
+	return div_set_rate(hw, rate, parent_rate);
+}
+
+static u8 bypass_div_get_parent(struct clk_hw *hw)
+{
+	struct cv1800_clk_bypass_div *div = hw_to_cv1800_clk_bypass_div(hw);
+
+	if (cv1800_clk_checkbit(&div->div.common, &div->bypass))
+		return 0;
+
+	return 1;
+}
+
+static int bypass_div_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct cv1800_clk_bypass_div *div = hw_to_cv1800_clk_bypass_div(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(div->div.common.lock, flags);
+
+	if (index)
+		cv1800_clk_clearbit(&div->div.common, &div->bypass);
+	else
+		cv1800_clk_setbit(&div->div.common, &div->bypass);
+
+	spin_unlock_irqrestore(div->div.common.lock, flags);
+
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_bypass_div_ops = {
+	.disable = div_disable,
+	.enable = div_enable,
+	.is_enabled = div_is_enabled,
+
+	.determine_rate = bypass_div_determine_rate,
+	.recalc_rate = bypass_div_recalc_rate,
+	.set_rate = bypass_div_set_rate,
+
+	.set_parent = bypass_div_set_parent,
+	.get_parent = bypass_div_get_parent
+};
+
+/* MUX */
+static inline struct cv1800_clk_mux *hw_to_cv1800_clk_mux(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_mux, common);
+}
+
+static int mux_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+
+	return cv1800_clk_setbit(&mux->common, &mux->gate);
+}
+
+static void mux_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+
+	cv1800_clk_clearbit(&mux->common, &mux->gate);
+}
+
+static int mux_is_enabled(struct clk_hw *hw)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+
+	return cv1800_clk_checkbit(&mux->common, &mux->gate);
+}
+
+static long mux_round_rate(struct clk_hw *parent, unsigned long *parent_rate,
+			   unsigned long rate, int id, void *data)
+{
+	struct cv1800_clk_mux *mux = data;
+
+	return div_helper_round_rate(&mux->div, &mux->common.hw, parent,
+				     rate, parent_rate);
+}
+
+static int mux_determine_rate(struct clk_hw *hw,
+			      struct clk_rate_request *req)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+
+	return mux_helper_determine_rate(&mux->common, req,
+					 mux_round_rate, mux);
+}
+
+static unsigned long mux_recalc_rate(struct clk_hw *hw,
+				     unsigned long parent_rate)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+	unsigned long val;
+
+	val = div_helper_get_clockdiv(&mux->common, &mux->div);
+	if (val == 0)
+		return 0;
+
+	return divider_recalc_rate(hw, parent_rate, val, NULL,
+				   mux->div.flags, mux->div.width);
+}
+
+static int mux_set_rate(struct clk_hw *hw, unsigned long rate,
+			unsigned long parent_rate)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+	unsigned long val;
+
+	val = divider_get_val(rate, parent_rate, NULL,
+			      mux->div.width, mux->div.flags);
+
+	return div_helper_set_rate(&mux->common, &mux->div, val);
+}
+
+static u8 mux_get_parent(struct clk_hw *hw)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+	u32 reg = readl(mux->common.base + mux->mux.reg);
+
+	return cv1800_clk_regfield_get(reg, &mux->mux);
+}
+
+static int _mux_set_parent(struct cv1800_clk_mux *mux, u8 index)
+{
+	u32 reg;
+
+	reg = readl(mux->common.base + mux->mux.reg);
+	reg = cv1800_clk_regfield_set(reg, index, &mux->mux);
+	writel(reg, mux->common.base + mux->mux.reg);
+
+	return 0;
+}
+
+static int mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(mux->common.lock, flags);
+
+	_mux_set_parent(mux, index);
+
+	spin_unlock_irqrestore(mux->common.lock, flags);
+
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_mux_ops = {
+	.disable = mux_disable,
+	.enable = mux_enable,
+	.is_enabled = mux_is_enabled,
+
+	.determine_rate = mux_determine_rate,
+	.recalc_rate = mux_recalc_rate,
+	.set_rate = mux_set_rate,
+
+	.set_parent = mux_set_parent,
+	.get_parent = mux_get_parent,
+};
+
+static inline struct cv1800_clk_bypass_mux *
+hw_to_cv1800_clk_bypass_mux(struct clk_hw *hw)
+{
+	struct cv1800_clk_mux *mux = hw_to_cv1800_clk_mux(hw);
+
+	return container_of(mux, struct cv1800_clk_bypass_mux, mux);
+}
+
+static long bypass_mux_round_rate(struct clk_hw *parent,
+				  unsigned long *parent_rate,
+				  unsigned long rate, int id, void *data)
+{
+	struct cv1800_clk_bypass_mux *mux = data;
+
+	if (id == -1) {
+		if (cv1800_clk_checkbit(&mux->mux.common, &mux->bypass))
+			return *parent_rate;
+		else
+			return mux_round_rate(parent, parent_rate, rate,
+					      -1, &mux->mux);
+	}
+
+	if (id == 0)
+		return *parent_rate;
+
+	return mux_round_rate(parent, parent_rate, rate, id - 1, &mux->mux);
+}
+
+static int bypass_mux_determine_rate(struct clk_hw *hw,
+				     struct clk_rate_request *req)
+{
+	struct cv1800_clk_bypass_mux *mux = hw_to_cv1800_clk_bypass_mux(hw);
+
+	return mux_helper_determine_rate(&mux->mux.common, req,
+					 bypass_mux_round_rate, mux);
+}
+
+static unsigned long bypass_mux_recalc_rate(struct clk_hw *hw,
+					    unsigned long parent_rate)
+{
+	struct cv1800_clk_bypass_mux *mux = hw_to_cv1800_clk_bypass_mux(hw);
+
+	if (cv1800_clk_checkbit(&mux->mux.common, &mux->bypass))
+		return parent_rate;
+
+	return mux_recalc_rate(hw, parent_rate);
+}
+
+static int bypass_mux_set_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct cv1800_clk_bypass_mux *mux = hw_to_cv1800_clk_bypass_mux(hw);
+
+	if (cv1800_clk_checkbit(&mux->mux.common, &mux->bypass))
+		return 0;
+
+	return mux_set_rate(hw, rate, parent_rate);
+}
+
+static u8 bypass_mux_get_parent(struct clk_hw *hw)
+{
+	struct cv1800_clk_bypass_mux *mux = hw_to_cv1800_clk_bypass_mux(hw);
+
+	if (cv1800_clk_checkbit(&mux->mux.common, &mux->bypass))
+		return 0;
+
+	return mux_get_parent(hw) + 1;
+}
+
+static int bypass_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct cv1800_clk_bypass_mux *mux = hw_to_cv1800_clk_bypass_mux(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(mux->mux.common.lock, flags);
+
+	if (index == 0) {
+		cv1800_clk_setbit(&mux->mux.common, &mux->bypass);
+		goto release;
+	}
+
+	cv1800_clk_clearbit(&mux->mux.common, &mux->bypass);
+	_mux_set_parent(&mux->mux, index - 1);
+
+release:
+	spin_unlock_irqrestore(mux->mux.common.lock, flags);
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_bypass_mux_ops = {
+	.disable = mux_disable,
+	.enable = mux_enable,
+	.is_enabled = mux_is_enabled,
+
+	.determine_rate = bypass_mux_determine_rate,
+	.recalc_rate = bypass_mux_recalc_rate,
+	.set_rate = bypass_mux_set_rate,
+
+	.set_parent = bypass_mux_set_parent,
+	.get_parent = bypass_mux_get_parent,
+};
+
+/* MMUX */
+static inline struct cv1800_clk_mmux *hw_to_cv1800_clk_mmux(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_mmux, common);
+}
+
+static u8 mmux_get_parent_id(struct cv1800_clk_mmux *mmux)
+{
+	struct clk_hw *hw = &mmux->common.hw;
+	struct clk_hw *parent = clk_hw_get_parent(hw);
+	unsigned int i;
+
+	for (i = 0; i < clk_hw_get_num_parents(hw); i++) {
+		if (parent == clk_hw_get_parent_by_index(hw, i))
+			return i;
+	}
+
+	unreachable();
+}
+
+static int mmux_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+
+	return cv1800_clk_setbit(&mmux->common, &mmux->gate);
+}
+
+static void mmux_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+
+	cv1800_clk_clearbit(&mmux->common, &mmux->gate);
+}
+
+static int mmux_is_enabled(struct clk_hw *hw)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+
+	return cv1800_clk_checkbit(&mmux->common, &mmux->gate);
+}
+
+static long mmux_round_rate(struct clk_hw *parent, unsigned long *parent_rate,
+			    unsigned long rate, int id, void *data)
+{
+	struct cv1800_clk_mmux *mmux = data;
+	s8 div_id;
+
+	if (id == -1) {
+		if (cv1800_clk_checkbit(&mmux->common, &mmux->bypass))
+			return *parent_rate;
+
+		id = mmux_get_parent_id(mmux);
+	}
+
+	div_id = mmux->parent2sel[id];
+
+	if (div_id < 0)
+		return *parent_rate;
+
+	return div_helper_round_rate(&mmux->div[div_id],
+				     &mmux->common.hw, parent,
+				     rate, parent_rate);
+}
+
+static int mmux_determine_rate(struct clk_hw *hw,
+			       struct clk_rate_request *req)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+
+	return mux_helper_determine_rate(&mmux->common, req,
+					 mmux_round_rate, mmux);
+}
+
+static unsigned long mmux_recalc_rate(struct clk_hw *hw,
+				      unsigned long parent_rate)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+	unsigned long val;
+	struct cv1800_clk_regfield *div;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->bypass))
+		return parent_rate;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->clk_sel))
+		div = &mmux->div[0];
+	else
+		div = &mmux->div[1];
+
+	val = div_helper_get_clockdiv(&mmux->common, div);
+	if (val == 0)
+		return 0;
+
+	return divider_recalc_rate(hw, parent_rate, val, NULL,
+				   div->flags, div->width);
+}
+
+static int mmux_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+	struct cv1800_clk_regfield *div;
+	unsigned long val;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->bypass))
+		return parent_rate;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->clk_sel))
+		div = &mmux->div[0];
+	else
+		div = &mmux->div[1];
+
+	val = divider_get_val(rate, parent_rate, NULL,
+			      div->width, div->flags);
+
+	return div_helper_set_rate(&mmux->common, div, val);
+}
+
+static u8 mmux_get_parent(struct clk_hw *hw)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+	struct cv1800_clk_regfield *mux;
+	u32 reg;
+	s8 clk_sel;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->bypass))
+		return 0;
+
+	if (cv1800_clk_checkbit(&mmux->common, &mmux->clk_sel))
+		clk_sel = 0;
+	else
+		clk_sel = 1;
+	mux = &mmux->mux[clk_sel];
+
+	reg = readl(mmux->common.base + mux->reg);
+
+	return mmux->sel2parent[clk_sel][cv1800_clk_regfield_get(reg, mux)];
+}
+
+static int mmux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct cv1800_clk_mmux *mmux = hw_to_cv1800_clk_mmux(hw);
+	struct cv1800_clk_regfield *mux;
+	unsigned long flags;
+	u32 reg;
+	s8 clk_sel = mmux->parent2sel[index];
+
+	spin_lock_irqsave(mmux->common.lock, flags);
+
+	if (index == 0 || clk_sel == -1) {
+		cv1800_clk_setbit(&mmux->common, &mmux->bypass);
+		goto release;
+	}
+
+	cv1800_clk_clearbit(&mmux->common, &mmux->bypass);
+
+	if (clk_sel)
+		cv1800_clk_clearbit(&mmux->common, &mmux->clk_sel);
+	else
+		cv1800_clk_setbit(&mmux->common, &mmux->clk_sel);
+
+	mux = &mmux->mux[clk_sel];
+	reg = readl(mmux->common.base + mux->reg);
+	reg = cv1800_clk_regfield_set(reg, index, mux);
+
+	writel(reg, mmux->common.base + mux->reg);
+
+release:
+	spin_unlock_irqrestore(mmux->common.lock, flags);
+
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_mmux_ops = {
+	.disable = mmux_disable,
+	.enable = mmux_enable,
+	.is_enabled = mmux_is_enabled,
+
+	.determine_rate = mmux_determine_rate,
+	.recalc_rate = mmux_recalc_rate,
+	.set_rate = mmux_set_rate,
+
+	.set_parent = mmux_set_parent,
+	.get_parent = mmux_get_parent,
+};
+
+/* AUDIO CLK */
+static inline struct cv1800_clk_audio *
+hw_to_cv1800_clk_audio(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_audio, common);
+}
+
+static int aclk_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+
+	cv1800_clk_setbit(&aclk->common, &aclk->src_en);
+	return cv1800_clk_setbit(&aclk->common, &aclk->output_en);
+}
+
+static void aclk_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+
+	cv1800_clk_clearbit(&aclk->common, &aclk->output_en);
+	cv1800_clk_clearbit(&aclk->common, &aclk->src_en);
+}
+
+static int aclk_is_enabled(struct clk_hw *hw)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+
+	return cv1800_clk_checkbit(&aclk->common, &aclk->output_en);
+}
+
+static int aclk_determine_rate(struct clk_hw *hw,
+			       struct clk_rate_request *req)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+
+	req->rate = aclk->target_rate;
+
+	return 0;
+}
+
+static unsigned long aclk_recalc_rate(struct clk_hw *hw,
+				      unsigned long parent_rate)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+	u64 rate = parent_rate;
+	u64 factor = 2;
+	u32 regval;
+
+	if (!cv1800_clk_checkbit(&aclk->common, &aclk->div_en))
+		return 0;
+
+	regval = readl(aclk->common.base + aclk->m.reg);
+	factor *= cv1800_clk_regfield_get(regval, &aclk->m);
+
+	regval = readl(aclk->common.base + aclk->n.reg);
+	rate *= cv1800_clk_regfield_get(regval, &aclk->n);
+
+	return DIV64_U64_ROUND_UP(rate, factor);
+}
+
+static void aclk_determine_mn(unsigned long parent_rate, unsigned long rate,
+			      u32 *m, u32 *n)
+{
+	u32 tm = parent_rate / 2;
+	u32 tn = rate;
+	u32 tcommon = gcd(tm, tn);
+	*m = tm / tcommon;
+	*n = tn / tcommon;
+}
+
+
+static int aclk_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	struct cv1800_clk_audio *aclk = hw_to_cv1800_clk_audio(hw);
+	unsigned long flags;
+	u32 m, n;
+
+	aclk_determine_mn(parent_rate, rate,
+			  &m, &n);
+
+	spin_lock_irqsave(aclk->common.lock, flags);
+
+	writel(m, aclk->common.base + aclk->m.reg);
+	writel(n, aclk->common.base + aclk->n.reg);
+
+	cv1800_clk_setbit(&aclk->common, &aclk->div_en);
+	cv1800_clk_setbit(&aclk->common, &aclk->div_up);
+
+	spin_unlock_irqrestore(aclk->common.lock, flags);
+
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_audio_ops = {
+	.disable = aclk_disable,
+	.enable = aclk_enable,
+	.is_enabled = aclk_is_enabled,
+
+	.determine_rate = aclk_determine_rate,
+	.recalc_rate = aclk_recalc_rate,
+	.set_rate = aclk_set_rate,
+};
diff --git a/drivers/clk/sophgo/clk-cv18xx-ip.h b/drivers/clk/sophgo/clk-cv18xx-ip.h
new file mode 100644
index 000000000000..928de0146b08
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-ip.h
@@ -0,0 +1,265 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#ifndef _CLK_SOPHGO_CV1800_IP_H_
+#define _CLK_SOPHGO_CV1800_IP_H_
+
+#include "clk-cv18xx-common.h"
+
+struct cv1800_clk_gate {
+	struct cv1800_clk_common	common;
+	struct cv1800_clk_regbit	gate;
+};
+
+struct cv1800_clk_div_data {
+	u32		reg;
+	u32		mask;
+	u32		width;
+	u32		init;
+	u32		flags;
+};
+
+struct cv1800_clk_div {
+	struct cv1800_clk_common	common;
+	struct cv1800_clk_regbit	gate;
+	struct cv1800_clk_regfield	div;
+};
+
+struct cv1800_clk_bypass_div {
+	struct cv1800_clk_div		div;
+	struct cv1800_clk_regbit	bypass;
+};
+
+struct cv1800_clk_mux {
+	struct cv1800_clk_common	common;
+	struct cv1800_clk_regbit	gate;
+	struct cv1800_clk_regfield	div;
+	struct cv1800_clk_regfield	mux;
+};
+
+struct cv1800_clk_bypass_mux {
+	struct cv1800_clk_mux		mux;
+	struct cv1800_clk_regbit	bypass;
+};
+
+struct cv1800_clk_mmux {
+	struct cv1800_clk_common	common;
+	struct cv1800_clk_regbit	gate;
+	struct cv1800_clk_regfield	div[2];
+	struct cv1800_clk_regfield	mux[2];
+	struct cv1800_clk_regbit	bypass;
+	struct cv1800_clk_regbit	clk_sel;
+	const s8			*parent2sel;
+	const u8			*sel2parent[2];
+};
+
+struct cv1800_clk_audio {
+	struct cv1800_clk_common	common;
+	struct cv1800_clk_regbit	src_en;
+	struct cv1800_clk_regbit	output_en;
+	struct cv1800_clk_regbit	div_en;
+	struct cv1800_clk_regbit	div_up;
+	struct cv1800_clk_regfield	m;
+	struct cv1800_clk_regfield	n;
+	u32				target_rate;
+};
+
+#define CV1800_GATE(_name, _parent, _gate_reg, _gate_shift, _flags)	\
+	struct cv1800_clk_gate _name = {				\
+		.common	= CV1800_CLK_COMMON(#_name, _parent,		\
+					    &cv1800_clk_gate_ops,	\
+					    _flags),			\
+		.gate	= CV1800_CLK_BIT(_gate_reg, _gate_shift),	\
+	}
+
+#define _CV1800_DIV(_name, _parent, _gate_reg, _gate_shift,		\
+		    _div_reg, _div_shift, _div_width, _div_init,	\
+		    _div_flag, _ops, _flags)				\
+	{								\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    _ops, _flags),	\
+		.gate		= CV1800_CLK_BIT(_gate_reg,		\
+						 _gate_shift),		\
+		.div		= CV1800_CLK_REG(_div_reg, _div_shift,	\
+						 _div_width, _div_init,	\
+						 _div_flag),		\
+	}
+
+#define _CV1800_FIXED_DIV_FLAG	\
+	(CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ROUND_CLOSEST)
+
+#define _CV1800_FIXED_DIV(_name, _parent, _gate_reg, _gate_shift,	\
+			  _fix_div, _ops, _flags)			\
+	{								\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    _ops, _flags),	\
+		.gate		= CV1800_CLK_BIT(_gate_reg,		\
+						 _gate_shift),		\
+		.div		= CV1800_CLK_REG(0, 0, 0,		\
+						 _fix_div,		\
+						 _CV1800_FIXED_DIV_FLAG),\
+	}
+
+
+#define CV1800_DIV(_name, _parent, _gate_reg, _gate_shift,		\
+		   _div_reg, _div_shift, _div_width, _div_init,		\
+		   _div_flag, _flags)					\
+	struct cv1800_clk_div _name =					\
+		_CV1800_DIV(_name, _parent, _gate_reg, _gate_shift,	\
+			    _div_reg, _div_shift, _div_width, _div_init,\
+			    _div_flag, &cv1800_clk_div_ops, _flags)
+
+
+#define CV1800_BYPASS_DIV(_name, _parent, _gate_reg, _gate_shift,	\
+			  _div_reg, _div_shift, _div_width, _div_init,	\
+			  _div_flag, _bypass_reg, _bypass_shift, _flags)\
+	struct cv1800_clk_bypass_div _name = {				\
+		.div	= _CV1800_DIV(_name, _parent,			\
+				      _gate_reg, _gate_shift,		\
+				      _div_reg, _div_shift,		\
+				      _div_width, _div_init, _div_flag,	\
+				      &cv1800_clk_bypass_div_ops,	\
+				      _flags),				\
+		.bypass	= CV1800_CLK_BIT(_bypass_reg, _bypass_shift),	\
+	}
+
+#define CV1800_FIXED_DIV(_name, _parent, _gate_reg, _gate_shift,	\
+			 _fix_div, _flags)				\
+	struct cv1800_clk_div _name =					\
+		_CV1800_FIXED_DIV(_name, _parent,			\
+				  _gate_reg, _gate_shift,		\
+				  _fix_div,				\
+				  &cv1800_clk_div_ops, _flags)		\
+
+#define CV1800_BYPASS_FIXED_DIV(_name, _parent, _gate_reg, _gate_shift,	\
+				_fix_div, _bypass_reg, _bypass_shift,	\
+				_flags)					\
+	struct cv1800_clk_bypass_div _name = {				\
+		.div	= _CV1800_FIXED_DIV(_name, _parent,		\
+					    _gate_reg, _gate_shift,	\
+					    _fix_div,			\
+					    &cv1800_clk_bypass_div_ops,	\
+					    _flags),			\
+		.bypass	= CV1800_CLK_BIT(_bypass_reg, _bypass_shift),	\
+	}
+
+#define _CV1800_MUX(_name, _parent, _gate_reg, _gate_shift,		\
+		    _div_reg, _div_shift, _div_width, _div_init,	\
+		    _div_flag,						\
+		    _mux_reg, _mux_shift, _mux_width,			\
+		    _ops, _flags)					\
+	{								\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    _ops, _flags),	\
+		.gate		= CV1800_CLK_BIT(_gate_reg,		\
+						 _gate_shift),		\
+		.div		= CV1800_CLK_REG(_div_reg, _div_shift,	\
+						 _div_width, _div_init,	\
+						 _div_flag),		\
+		.mux		= CV1800_CLK_REG(_mux_reg, _mux_shift,	\
+						 _mux_width, 0, 0),	\
+	}
+
+#define CV1800_MUX(_name, _parent, _gate_reg, _gate_shift,		\
+		   _div_reg, _div_shift, _div_width, _div_init,		\
+		   _div_flag,						\
+		   _mux_reg, _mux_shift, _mux_width, _flags)		\
+	struct cv1800_clk_mux _name =					\
+		_CV1800_MUX(_name, _parent, _gate_reg, _gate_shift,	\
+			    _div_reg, _div_shift, _div_width, _div_init,\
+			    _div_flag, _mux_reg, _mux_shift, _mux_width,\
+			    &cv1800_clk_mux_ops, _flags)
+
+#define CV1800_BYPASS_MUX(_name, _parent, _gate_reg, _gate_shift,	\
+			  _div_reg, _div_shift, _div_width, _div_init,	\
+			  _div_flag,					\
+			  _mux_reg, _mux_shift, _mux_width,		\
+			  _bypass_reg, _bypass_shift, _flags)		\
+	struct cv1800_clk_bypass_mux _name = {				\
+		.mux	= _CV1800_MUX(_name, _parent,			\
+				      _gate_reg, _gate_shift,		\
+				      _div_reg, _div_shift, _div_width,	\
+				      _div_init, _div_flag,		\
+				      _mux_reg, _mux_shift, _mux_width,	\
+				      &cv1800_clk_bypass_mux_ops,	\
+				      _flags),				\
+		.bypass	= CV1800_CLK_BIT(_bypass_reg, _bypass_shift),	\
+	}
+
+#define CV1800_MMUX(_name, _parent, _gate_reg, _gate_shift,		\
+		    _div0_reg, _div0_shift, _div0_width, _div0_init,	\
+		    _div0_flag,						\
+		    _div1_reg, _div1_shift, _div1_width, _div1_init,	\
+		    _div1_flag,						\
+		    _mux0_reg, _mux0_shift, _mux0_width,		\
+		    _mux1_reg, _mux1_shift, _mux1_width,		\
+		    _bypass_reg, _bypass_shift,				\
+		    _clk_sel_reg, _clk_sel_shift,			\
+		    _parent2sel, _sel2parent0, _sel2parent1, _flags)	\
+	struct cv1800_clk_mmux _name = {				\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    &cv1800_clk_mmux_ops,\
+						    _flags),		\
+		.gate		= CV1800_CLK_BIT(_gate_reg, _gate_shift),\
+		.div		= {					\
+			CV1800_CLK_REG(_div0_reg, _div0_shift,		\
+				       _div0_width, _div0_init,		\
+				       _div0_flag),			\
+			CV1800_CLK_REG(_div1_reg, _div1_shift,		\
+				       _div1_width, _div1_init,		\
+				       _div1_flag),			\
+		},							\
+		.mux		= {					\
+			CV1800_CLK_REG(_mux0_reg, _mux0_shift,		\
+				       _mux0_width, 0, 0),		\
+			CV1800_CLK_REG(_mux1_reg, _mux1_shift,		\
+				       _mux1_width, 0, 0),		\
+		},							\
+		.bypass		= CV1800_CLK_BIT(_bypass_reg,		\
+						 _bypass_shift),	\
+		.clk_sel	= CV1800_CLK_BIT(_clk_sel_reg,		\
+						 _clk_sel_shift),	\
+		.parent2sel	= _parent2sel,				\
+		.sel2parent	= { _sel2parent0, _sel2parent1 },	\
+	}
+
+#define CV1800_ACLK(_name, _parent,					\
+		    _src_en_reg, _src_en_reg_shift,			\
+		    _output_en_reg, _output_en_shift,			\
+		    _div_en_reg, _div_en_reg_shift,			\
+		    _div_up_reg, _div_up_reg_shift,			\
+		    _m_reg, _m_shift, _m_width, _m_flag,		\
+		    _n_reg, _n_shift, _n_width, _n_flag,		\
+		    _target_rate, _flags)				\
+	struct cv1800_clk_audio _name = {				\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    &cv1800_clk_audio_ops,\
+						    _flags),		\
+		.src_en		= CV1800_CLK_BIT(_src_en_reg,		\
+						 _src_en_reg_shift),	\
+		.output_en	= CV1800_CLK_BIT(_output_en_reg,	\
+						 _output_en_shift),	\
+		.div_en		= CV1800_CLK_BIT(_div_en_reg,		\
+						 _div_en_reg_shift),	\
+		.div_up		= CV1800_CLK_BIT(_div_up_reg,		\
+						 _div_up_reg_shift),	\
+		.m		= CV1800_CLK_REG(_m_reg, _m_shift,	\
+						 _m_width, 0, _m_flag),	\
+		.n		= CV1800_CLK_REG(_n_reg, _n_shift,	\
+						 _n_width, 0, _n_flag),	\
+		.target_rate	= _target_rate,				\
+	}
+
+
+
+extern const struct clk_ops cv1800_clk_gate_ops;
+extern const struct clk_ops cv1800_clk_div_ops;
+extern const struct clk_ops cv1800_clk_bypass_div_ops;
+extern const struct clk_ops cv1800_clk_mux_ops;
+extern const struct clk_ops cv1800_clk_bypass_mux_ops;
+extern const struct clk_ops cv1800_clk_mmux_ops;
+extern const struct clk_ops cv1800_clk_audio_ops;
+
+#endif // _CLK_SOPHGO_CV1800_IP_H_
diff --git a/drivers/clk/sophgo/clk-cv18xx-pll.c b/drivers/clk/sophgo/clk-cv18xx-pll.c
new file mode 100644
index 000000000000..c687bde48455
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-pll.c
@@ -0,0 +1,425 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/limits.h>
+#include <linux/spinlock.h>
+
+#include "clk-cv18xx-pll.h"
+
+static inline struct cv1800_clk_pll *hw_to_cv1800_clk_pll(struct clk_hw *hw)
+{
+	struct cv1800_clk_common *common = hw_to_cv1800_clk_common(hw);
+
+	return container_of(common, struct cv1800_clk_pll, common);
+}
+
+static unsigned long ipll_calc_rate(unsigned long parent_rate,
+				    unsigned long pre_div_sel,
+				    unsigned long div_sel,
+				    unsigned long post_div_sel)
+{
+	unsigned long rate = parent_rate;
+
+	rate *= div_sel;
+	do_div(rate, pre_div_sel * post_div_sel);
+
+	return rate;
+}
+
+static unsigned long ipll_recalc_rate(struct clk_hw *hw,
+				      unsigned long parent_rate)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+	u32 value;
+
+	value = readl(pll->common.base + pll->pll_reg);
+
+	return ipll_calc_rate(parent_rate,
+			      PLL_GET_PRE_DIV_SEL(value),
+			      PLL_GET_DIV_SEL(value),
+			      PLL_GET_POST_DIV_SEL(value));
+}
+
+static int ipll_find_rate(const struct cv1800_clk_pll_limit *limit,
+			  unsigned long prate, unsigned long *rate,
+			  u32 *value)
+{
+	unsigned long best_rate = 0;
+	unsigned long trate = *rate;
+	unsigned long pre_div_sel = 0, div_sel = 0, post_div_sel = 0;
+	unsigned long pre, div, post;
+	u32 detected = *value;
+	unsigned long tmp;
+
+	for_each_pll_limit_range(pre, &limit->pre_div) {
+		for_each_pll_limit_range(div, &limit->div) {
+			for_each_pll_limit_range(post, &limit->post_div) {
+				tmp = ipll_calc_rate(prate, pre, div, post);
+
+				if (tmp > trate)
+					continue;
+
+				if ((trate - tmp) < (trate - best_rate)) {
+					best_rate = tmp;
+					pre_div_sel = pre;
+					div_sel = div;
+					post_div_sel = post;
+				}
+			}
+		}
+	}
+
+	if (best_rate) {
+		detected = PLL_SET_PRE_DIV_SEL(detected, pre_div_sel);
+		detected = PLL_SET_POST_DIV_SEL(detected, post_div_sel);
+		detected = PLL_SET_DIV_SEL(detected, div_sel);
+		*value = detected;
+		*rate = best_rate;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int ipll_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
+{
+	u32 val;
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	return ipll_find_rate(pll->pll_limit, req->best_parent_rate,
+			      &req->rate, &val);
+}
+
+static void pll_get_mode_ctrl(unsigned long div_sel,
+			      bool (*mode_ctrl_check)(unsigned long,
+						      unsigned long,
+						      unsigned long),
+			      const struct cv1800_clk_pll_limit *limit,
+			      u32 *value)
+{
+	unsigned long ictrl = 0, mode = 0;
+	u32 detected = *value;
+
+	for_each_pll_limit_range(mode, &limit->mode) {
+		for_each_pll_limit_range(ictrl, &limit->ictrl) {
+			if (mode_ctrl_check(div_sel, ictrl, mode)) {
+				detected = PLL_SET_SEL_MODE(detected, mode);
+				detected = PLL_SET_ICTRL(detected, ictrl);
+				*value = detected;
+				return;
+			}
+		}
+	}
+}
+
+static bool ipll_check_mode_ctrl_restrict(unsigned long div_sel,
+					  unsigned long ictrl,
+					  unsigned long mode)
+{
+	unsigned long left_rest = 20 * div_sel;
+	unsigned long right_rest = 35 * div_sel;
+	unsigned long test = 184 * (1 + mode) * (1 + ictrl) / 2;
+
+	return test > left_rest && test <= right_rest;
+}
+
+static int ipll_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	u32 regval, detected = 0;
+	unsigned long flags;
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	ipll_find_rate(pll->pll_limit, parent_rate, &rate, &detected);
+	pll_get_mode_ctrl(PLL_GET_DIV_SEL(detected),
+			  ipll_check_mode_ctrl_restrict,
+			  pll->pll_limit, &detected);
+
+	spin_lock_irqsave(pll->common.lock, flags);
+
+	regval = readl(pll->common.base + pll->pll_reg);
+	regval = PLL_COPY_REG(regval, detected);
+
+	writel(regval, pll->common.base + pll->pll_reg);
+
+	spin_unlock_irqrestore(pll->common.lock, flags);
+
+	cv1800_clk_wait_for_lock(&pll->common, pll->pll_status.reg,
+			      BIT(pll->pll_status.shift));
+
+	return 0;
+}
+
+static int pll_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	return cv1800_clk_clearbit(&pll->common, &pll->pll_pwd);
+}
+
+static void pll_disable(struct clk_hw *hw)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	cv1800_clk_setbit(&pll->common, &pll->pll_pwd);
+}
+
+static int pll_is_enable(struct clk_hw *hw)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	return cv1800_clk_checkbit(&pll->common, &pll->pll_pwd) == 0;
+}
+
+const struct clk_ops cv1800_clk_ipll_ops = {
+	.disable = pll_disable,
+	.enable = pll_enable,
+	.is_enabled = pll_is_enable,
+
+	.recalc_rate = ipll_recalc_rate,
+	.determine_rate = ipll_determine_rate,
+	.set_rate = ipll_set_rate,
+};
+
+#define PLL_SYN_FACTOR_DOT_POS		26
+#define PLL_SYN_FACTOR_MINIMUM		((4 << PLL_SYN_FACTOR_DOT_POS) + 1)
+
+static bool fpll_is_factional_mode(struct cv1800_clk_pll *pll)
+{
+	return cv1800_clk_checkbit(&pll->common, &pll->pll_syn->en);
+}
+
+static unsigned long fpll_calc_rate(unsigned long parent_rate,
+				    unsigned long pre_div_sel,
+				    unsigned long div_sel,
+				    unsigned long post_div_sel,
+				    unsigned long ssc_syn_set,
+				    bool is_full_parent)
+{
+	u64 dividend = parent_rate * div_sel;
+	u64 factor = ssc_syn_set * pre_div_sel * post_div_sel;
+	unsigned long rate;
+
+	dividend <<= PLL_SYN_FACTOR_DOT_POS - 1;
+	rate = dividend / factor;
+	dividend %= factor;
+
+	if (is_full_parent) {
+		dividend <<= 1;
+		rate <<= 1;
+	}
+
+	rate += DIV64_U64_ROUND_CLOSEST(dividend, factor);
+
+	return rate;
+}
+
+static unsigned long fpll_recalc_rate(struct clk_hw *hw,
+					  unsigned long parent_rate)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+	u32 value;
+	bool clk_full;
+	u32 syn_set;
+
+	if (!fpll_is_factional_mode(pll))
+		return ipll_recalc_rate(hw, parent_rate);
+
+	syn_set = readl(pll->common.base + pll->pll_syn->set);
+
+	if (syn_set == 0)
+		return 0;
+
+	clk_full = cv1800_clk_checkbit(&pll->common,
+					  &pll->pll_syn->clk_half);
+
+	value = readl(pll->common.base + pll->pll_reg);
+
+	return fpll_calc_rate(parent_rate,
+			      PLL_GET_PRE_DIV_SEL(value),
+			      PLL_GET_DIV_SEL(value),
+			      PLL_GET_POST_DIV_SEL(value),
+			      syn_set, clk_full);
+}
+
+static unsigned long fpll_find_synthesizer(unsigned long parent,
+					   unsigned long rate,
+					   unsigned long pre_div,
+					   unsigned long div,
+					   unsigned long post_div,
+					   bool is_full_parent,
+					   u32 *ssc_syn_set)
+{
+	u32 test_max = U32_MAX, test_min = PLL_SYN_FACTOR_MINIMUM;
+	unsigned long trate;
+
+	while (test_min < test_max) {
+		u32 tssc = (test_max + test_min) / 2;
+
+		trate = fpll_calc_rate(parent, pre_div, div, post_div,
+				       tssc, is_full_parent);
+
+		if (trate == rate) {
+			test_min = tssc;
+			break;
+		}
+
+		if (trate > rate)
+			test_min = tssc + 1;
+		else
+			test_max = tssc - 1;
+	}
+
+	if (trate != 0)
+		*ssc_syn_set = test_min;
+
+	return trate;
+}
+
+static int fpll_find_rate(struct cv1800_clk_pll *pll,
+			  const struct cv1800_clk_pll_limit *limit,
+			  unsigned long prate,
+			  unsigned long *rate,
+			  u32 *value, u32 *ssc_syn_set)
+{
+	unsigned long best_rate = 0;
+	unsigned long pre_div_sel = 0, div_sel = 0, post_div_sel = 0;
+	unsigned long pre, div, post;
+	unsigned long trate = *rate;
+	u32 detected = *value;
+	unsigned long tmp;
+	bool clk_full = cv1800_clk_checkbit(&pll->common,
+					       &pll->pll_syn->clk_half);
+
+	for_each_pll_limit_range(pre, &limit->pre_div) {
+		for_each_pll_limit_range(post, &limit->post_div) {
+			for_each_pll_limit_range(div, &limit->div) {
+				tmp = fpll_find_synthesizer(prate, trate,
+							    pre, div, post,
+							    clk_full,
+							    ssc_syn_set);
+
+				if ((trate - tmp) < (trate - best_rate)) {
+					best_rate = tmp;
+					pre_div_sel = pre;
+					div_sel = div;
+					post_div_sel = post;
+				}
+			}
+		}
+	}
+
+	if (best_rate) {
+		detected = PLL_SET_PRE_DIV_SEL(detected, pre_div_sel);
+		detected = PLL_SET_POST_DIV_SEL(detected, post_div_sel);
+		detected = PLL_SET_DIV_SEL(detected, div_sel);
+		*value = detected;
+		*rate = best_rate;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int fpll_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+	u32 val, ssc_syn_set;
+
+	if (!fpll_is_factional_mode(pll))
+		return ipll_determine_rate(hw, req);
+
+	fpll_find_rate(pll, &pll->pll_limit[2], req->best_parent_rate,
+		       &req->rate, &val, &ssc_syn_set);
+
+	return 0;
+}
+
+static bool fpll_check_mode_ctrl_restrict(unsigned long div_sel,
+					  unsigned long ictrl,
+					  unsigned long mode)
+{
+	unsigned long left_rest = 10 * div_sel;
+	unsigned long right_rest = 24 * div_sel;
+	unsigned long test = 184 * (1 + mode) * (1 + ictrl) / 2;
+
+	return test > left_rest && test <= right_rest;
+}
+
+static int fpll_set_rate(struct clk_hw *hw, unsigned long rate,
+			 unsigned long parent_rate)
+{
+	u32 regval;
+	u32 detected = 0, detected_ssc = 0;
+	unsigned long flags;
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	if (!fpll_is_factional_mode(pll))
+		return ipll_set_rate(hw, rate, parent_rate);
+
+	fpll_find_rate(pll, &pll->pll_limit[2], parent_rate,
+		       &rate, &detected, &detected_ssc);
+	pll_get_mode_ctrl(PLL_GET_DIV_SEL(detected),
+			  fpll_check_mode_ctrl_restrict,
+			  pll->pll_limit, &detected);
+
+	spin_lock_irqsave(pll->common.lock, flags);
+
+	writel(detected_ssc, pll->common.base + pll->pll_syn->set);
+
+	regval = readl(pll->common.base + pll->pll_reg);
+	regval = PLL_COPY_REG(regval, detected);
+
+	writel(regval, pll->common.base + pll->pll_reg);
+
+	spin_unlock_irqrestore(pll->common.lock, flags);
+
+	cv1800_clk_wait_for_lock(&pll->common, pll->pll_status.reg,
+			      BIT(pll->pll_status.shift));
+
+	return 0;
+}
+
+static u8 fpll_get_parent(struct clk_hw *hw)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+
+	if (fpll_is_factional_mode(pll))
+		return 1;
+
+	return 0;
+}
+
+static int fpll_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct cv1800_clk_pll *pll = hw_to_cv1800_clk_pll(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(pll->common.lock, flags);
+
+	if (index)
+		cv1800_clk_setbit(&pll->common, &pll->pll_syn->en);
+	else
+		cv1800_clk_clearbit(&pll->common, &pll->pll_syn->en);
+
+	spin_unlock_irqrestore(pll->common.lock, flags);
+
+	return 0;
+}
+
+const struct clk_ops cv1800_clk_fpll_ops = {
+	.disable = pll_disable,
+	.enable = pll_enable,
+	.is_enabled = pll_is_enable,
+
+	.recalc_rate = fpll_recalc_rate,
+	.determine_rate = fpll_determine_rate,
+	.set_rate = fpll_set_rate,
+
+	.set_parent = fpll_set_parent,
+	.get_parent = fpll_get_parent,
+};
diff --git a/drivers/clk/sophgo/clk-cv18xx-pll.h b/drivers/clk/sophgo/clk-cv18xx-pll.h
new file mode 100644
index 000000000000..5f876efe48d5
--- /dev/null
+++ b/drivers/clk/sophgo/clk-cv18xx-pll.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#ifndef _CLK_SOPHGO_CV1800_PLL_H_
+#define _CLK_SOPHGO_CV1800_PLL_H_
+
+#include "clk-cv18xx-common.h"
+
+struct cv1800_clk_pll_limit {
+	struct {
+		u8 min;
+		u8 max;
+	} pre_div, div, post_div, ictrl, mode;
+};
+
+#define _CV1800_PLL_LIMIT(_min, _max)	\
+	{				\
+		.min = _min,		\
+		.max = _max,		\
+	}				\
+
+#define for_each_pll_limit_range(_var, _restrict) \
+	for (_var = (_restrict)->min; _var <= (_restrict)->max; _var++)
+
+struct cv1800_clk_pll_synthesizer {
+	struct cv1800_clk_regbit	en;
+	struct cv1800_clk_regbit	clk_half;
+	u32				ctrl;
+	u32				set;
+};
+
+#define _PLL_PRE_DIV_SEL_FIELD		GENMASK(6, 0)
+#define _PLL_POST_DIV_SEL_FIELD		GENMASK(14, 8)
+#define _PLL_SEL_MODE_FIELD		GENMASK(16, 15)
+#define _PLL_DIV_SEL_FIELD		GENMASK(23, 17)
+#define _PLL_ICTRL_FIELD		GENMASK(26, 24)
+
+#define _PLL_ALL_FIELD_MASK \
+	(_PLL_PRE_DIV_SEL_FIELD | \
+	 _PLL_POST_DIV_SEL_FIELD | \
+	 _PLL_SEL_MODE_FIELD | \
+	 _PLL_DIV_SEL_FIELD | \
+	 _PLL_ICTRL_FIELD)
+
+#define PLL_COPY_REG(_dest, _src) \
+	(((_dest) & (~_PLL_ALL_FIELD_MASK)) | ((_src) & _PLL_ALL_FIELD_MASK))
+
+#define PLL_GET_PRE_DIV_SEL(_reg) \
+	FIELD_GET(_PLL_PRE_DIV_SEL_FIELD, (_reg))
+#define PLL_GET_POST_DIV_SEL(_reg) \
+	FIELD_GET(_PLL_POST_DIV_SEL_FIELD, (_reg))
+#define PLL_GET_SEL_MODE(_reg) \
+	FIELD_GET(_PLL_SEL_MODE_FIELD, (_reg))
+#define PLL_GET_DIV_SEL(_reg) \
+	FIELD_GET(_PLL_DIV_SEL_FIELD, (_reg))
+#define PLL_GET_ICTRL(_reg) \
+	FIELD_GET(_PLL_ICTRL_FIELD, (_reg))
+
+#define PLL_SET_PRE_DIV_SEL(_reg, _val) \
+	_CV1800_SET_FIELD((_reg), (_val), _PLL_PRE_DIV_SEL_FIELD)
+#define PLL_SET_POST_DIV_SEL(_reg, _val) \
+	_CV1800_SET_FIELD((_reg), (_val), _PLL_POST_DIV_SEL_FIELD)
+#define PLL_SET_SEL_MODE(_reg, _val) \
+	_CV1800_SET_FIELD((_reg), (_val), _PLL_SEL_MODE_FIELD)
+#define PLL_SET_DIV_SEL(_reg, _val) \
+	_CV1800_SET_FIELD((_reg), (_val), _PLL_DIV_SEL_FIELD)
+#define PLL_SET_ICTRL(_reg, _val) \
+	_CV1800_SET_FIELD((_reg), (_val), _PLL_ICTRL_FIELD)
+
+struct cv1800_clk_pll {
+	struct cv1800_clk_common		common;
+	u32					pll_reg;
+	struct cv1800_clk_regbit		pll_pwd;
+	struct cv1800_clk_regbit		pll_status;
+	const struct cv1800_clk_pll_limit	*pll_limit;
+	struct cv1800_clk_pll_synthesizer	*pll_syn;
+};
+
+#define CV1800_INTEGRAL_PLL(_name, _parent, _pll_reg,			\
+			     _pll_pwd_reg, _pll_pwd_shift,		\
+			     _pll_status_reg, _pll_status_shift,	\
+			     _pll_limit, _flags)			\
+	struct cv1800_clk_pll _name = {					\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    &cv1800_clk_ipll_ops,\
+						    _flags),		\
+		.pll_reg	= _pll_reg,				\
+		.pll_pwd	= CV1800_CLK_BIT(_pll_pwd_reg,		\
+					       _pll_pwd_shift),		\
+		.pll_status	= CV1800_CLK_BIT(_pll_status_reg,	\
+					       _pll_status_shift),	\
+		.pll_limit	= _pll_limit,				\
+		.pll_syn	= NULL,					\
+	}
+
+#define CV1800_FACTIONAL_PLL(_name, _parent, _pll_reg,			\
+			     _pll_pwd_reg, _pll_pwd_shift,		\
+			     _pll_status_reg, _pll_status_shift,	\
+			     _pll_limit, _pll_syn, _flags)		\
+	struct cv1800_clk_pll _name = {					\
+		.common		= CV1800_CLK_COMMON(#_name, _parent,	\
+						    &cv1800_clk_fpll_ops,\
+						    _flags),		\
+		.pll_reg	= _pll_reg,				\
+		.pll_pwd	= CV1800_CLK_BIT(_pll_pwd_reg,		\
+					       _pll_pwd_shift),		\
+		.pll_status	= CV1800_CLK_BIT(_pll_status_reg,	\
+					       _pll_status_shift),	\
+		.pll_limit	= _pll_limit,				\
+		.pll_syn	= _pll_syn,				\
+	}
+
+
+extern const struct clk_ops cv1800_clk_ipll_ops;
+extern const struct clk_ops cv1800_clk_fpll_ops;
+
+#endif // _CLK_SOPHGO_CV1800_PLL_H_
--
2.43.0


