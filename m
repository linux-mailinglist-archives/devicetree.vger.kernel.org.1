Return-Path: <devicetree+bounces-90581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90827945F38
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 16:17:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C89031F23643
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 14:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7591E4F17;
	Fri,  2 Aug 2024 14:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="uHwbvg2u"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1AC1E2894;
	Fri,  2 Aug 2024 14:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722608246; cv=none; b=Vp2idE5HN9TUjO/F+SURaPJ9u0roeSZACzBrUKXoDFjjHYBJfb5NHMol6v4+oiPuPvwCN34Zr4G8/bOiEAh4MZPPWn2wcw77FRF37CrbgdbN9OL+J2jqYfQPjxvlEYfsXESgTXmszOJcJkbx3gX2YyZeobL4ougu+/1LzLkbsGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722608246; c=relaxed/simple;
	bh=O/8LQagk1XOrmPYMiiJcq/KKJN3OU5sEgcpBzYxouPU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yg/RTTYlBool7cLl6S8XlYrzmXZBHBveG3KT7RLmO3U3lZXdT41Hj0f4EuGgOMvgA1NDtLwAFy0qswSJRB+QsEprCJ9L00T8f0asme4X78pif16GvFmtUBnTGJGaCODqHVwhP/84q8xfx3zSj/3D+iGHOHshPj6vLnArGfeUZAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=uHwbvg2u; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722608240;
	bh=O/8LQagk1XOrmPYMiiJcq/KKJN3OU5sEgcpBzYxouPU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uHwbvg2uFen5TF9xVy61shJf1XcVKxF1PpeyjE+jdCN9V6SEphJAXp4T/0xVJXEZX
	 gfVRLTVDUAoO0SXXnyZBuausBUcLPgACRmeZOOiA/Ptzr8QDLga9PULiD+sLcJgN4S
	 9zSHF6rlg/by6G4mpbQ5WPnp0HFfsPhZIDcp57Xhkztpj0Ga++SHNF2qmqA4neX7un
	 PP6QxdRxBWOkE8FRNRhCVz9QuFUGv9SUN/yQ3m74S+4ZRBcPjPpBtvyRYJhybxn8MF
	 XiEo/MZOozPekk9hUUvVQhfxn/7eCcetWiWcz2yybuztmLvXEP6CQm98tVzsMROerO
	 3l4kVnycvTRIA==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7D15E378221B;
	Fri,  2 Aug 2024 14:17:17 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	YouMin Chen <cym@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 3/3] clk: rockchip: Add clock controller for the RK3576
Date: Fri,  2 Aug 2024 10:12:50 -0400
Message-ID: <20240802141816.288337-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802141816.288337-1-detlev.casanova@collabora.com>
References: <20240802141816.288337-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Elaine Zhang <zhangqing@rock-chips.com>

Add the clock tree definition for the new RK3576 SoC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
Signed-off-by: Liang Chen <cl@rock-chips.com>
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
[rebase and squash]
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/clk/rockchip/Kconfig      |    7 +
 drivers/clk/rockchip/Makefile     |    1 +
 drivers/clk/rockchip/clk-rk3576.c | 1818 +++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk.h        |   52 +
 4 files changed, 1878 insertions(+)
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 9aad86925cd28..f8eb16f170d48 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -100,6 +100,13 @@ config CLK_RK3568
 	help
 	  Build the driver for RK3568 Clock Driver.
 
+config CLK_RK3576
+	tristate "Rockchip RK3576 clock controller support"
+	depends on ARM64 || COMPILE_TEST
+	default y
+	help
+	  Build the driver for RK3576 Clock Driver.
+
 config CLK_RK3588
 	bool "Rockchip RK3588 clock controller support"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 36894f6a7022d..53f77fc288f99 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -28,4 +28,5 @@ obj-$(CONFIG_CLK_RK3328)        += clk-rk3328.o
 obj-$(CONFIG_CLK_RK3368)        += clk-rk3368.o
 obj-$(CONFIG_CLK_RK3399)        += clk-rk3399.o
 obj-$(CONFIG_CLK_RK3568)	+= clk-rk3568.o
+obj-$(CONFIG_CLK_RK3576)	+= clk-rk3576.o
 obj-$(CONFIG_CLK_RK3588)	+= clk-rk3588.o rst-rk3588.o
diff --git a/drivers/clk/rockchip/clk-rk3576.c b/drivers/clk/rockchip/clk-rk3576.c
new file mode 100644
index 0000000000000..f0b5943f1cf26
--- /dev/null
+++ b/drivers/clk/rockchip/clk-rk3576.c
@@ -0,0 +1,1818 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Rockchip Electronics Co. Ltd.
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/syscore_ops.h>
+#include <dt-bindings/clock/rockchip,rk3576-cru.h>
+#include "clk.h"
+
+#define RK3576_GRF_SOC_STATUS0		0x600
+#define RK3576_PMU0_GRF_OSC_CON6	0x18
+
+enum rk3576_plls {
+	bpll, lpll, vpll, aupll, cpll, gpll, ppll,
+};
+
+static struct rockchip_pll_rate_table rk3576_pll_rates[] = {
+	/* _mhz, _p, _m, _s, _k */
+	RK3588_PLL_RATE(2520000000, 2, 210, 0, 0),
+	RK3588_PLL_RATE(2496000000, 2, 208, 0, 0),
+	RK3588_PLL_RATE(2472000000, 2, 206, 0, 0),
+	RK3588_PLL_RATE(2448000000, 2, 204, 0, 0),
+	RK3588_PLL_RATE(2424000000, 2, 202, 0, 0),
+	RK3588_PLL_RATE(2400000000, 2, 200, 0, 0),
+	RK3588_PLL_RATE(2376000000, 2, 198, 0, 0),
+	RK3588_PLL_RATE(2352000000, 2, 196, 0, 0),
+	RK3588_PLL_RATE(2328000000, 2, 194, 0, 0),
+	RK3588_PLL_RATE(2304000000, 2, 192, 0, 0),
+	RK3588_PLL_RATE(2280000000, 2, 190, 0, 0),
+	RK3588_PLL_RATE(2256000000, 2, 376, 1, 0),
+	RK3588_PLL_RATE(2232000000, 2, 372, 1, 0),
+	RK3588_PLL_RATE(2208000000, 2, 368, 1, 0),
+	RK3588_PLL_RATE(2184000000, 2, 364, 1, 0),
+	RK3588_PLL_RATE(2160000000, 2, 360, 1, 0),
+	RK3588_PLL_RATE(2136000000, 2, 356, 1, 0),
+	RK3588_PLL_RATE(2112000000, 2, 352, 1, 0),
+	RK3588_PLL_RATE(2088000000, 2, 348, 1, 0),
+	RK3588_PLL_RATE(2064000000, 2, 344, 1, 0),
+	RK3588_PLL_RATE(2040000000, 2, 340, 1, 0),
+	RK3588_PLL_RATE(2016000000, 2, 336, 1, 0),
+	RK3588_PLL_RATE(1992000000, 2, 332, 1, 0),
+	RK3588_PLL_RATE(1968000000, 2, 328, 1, 0),
+	RK3588_PLL_RATE(1944000000, 2, 324, 1, 0),
+	RK3588_PLL_RATE(1920000000, 2, 320, 1, 0),
+	RK3588_PLL_RATE(1896000000, 2, 316, 1, 0),
+	RK3588_PLL_RATE(1872000000, 2, 312, 1, 0),
+	RK3588_PLL_RATE(1848000000, 2, 308, 1, 0),
+	RK3588_PLL_RATE(1824000000, 2, 304, 1, 0),
+	RK3588_PLL_RATE(1800000000, 2, 300, 1, 0),
+	RK3588_PLL_RATE(1776000000, 2, 296, 1, 0),
+	RK3588_PLL_RATE(1752000000, 2, 292, 1, 0),
+	RK3588_PLL_RATE(1728000000, 2, 288, 1, 0),
+	RK3588_PLL_RATE(1704000000, 2, 284, 1, 0),
+	RK3588_PLL_RATE(1680000000, 2, 280, 1, 0),
+	RK3588_PLL_RATE(1656000000, 2, 276, 1, 0),
+	RK3588_PLL_RATE(1632000000, 2, 272, 1, 0),
+	RK3588_PLL_RATE(1608000000, 2, 268, 1, 0),
+	RK3588_PLL_RATE(1584000000, 2, 264, 1, 0),
+	RK3588_PLL_RATE(1560000000, 2, 260, 1, 0),
+	RK3588_PLL_RATE(1536000000, 2, 256, 1, 0),
+	RK3588_PLL_RATE(1512000000, 2, 252, 1, 0),
+	RK3588_PLL_RATE(1488000000, 2, 248, 1, 0),
+	RK3588_PLL_RATE(1464000000, 2, 244, 1, 0),
+	RK3588_PLL_RATE(1440000000, 2, 240, 1, 0),
+	RK3588_PLL_RATE(1416000000, 2, 236, 1, 0),
+	RK3588_PLL_RATE(1392000000, 2, 232, 1, 0),
+	RK3588_PLL_RATE(1320000000, 2, 220, 1, 0),
+	RK3588_PLL_RATE(1200000000, 2, 200, 1, 0),
+	RK3588_PLL_RATE(1188000000, 2, 198, 1, 0),
+	RK3588_PLL_RATE(1100000000, 3, 550, 2, 0),
+	RK3588_PLL_RATE(1008000000, 2, 336, 2, 0),
+	RK3588_PLL_RATE(1000000000, 3, 500, 2, 0),
+	RK3588_PLL_RATE(983040000, 4, 655, 2, 23592),
+	RK3588_PLL_RATE(955520000, 3, 477, 2, 49806),
+	RK3588_PLL_RATE(903168000, 6, 903, 2, 11009),
+	RK3588_PLL_RATE(900000000, 2, 300, 2, 0),
+	RK3588_PLL_RATE(816000000, 2, 272, 2, 0),
+	RK3588_PLL_RATE(786432000, 2, 262, 2, 9437),
+	RK3588_PLL_RATE(786000000, 1, 131, 2, 0),
+	RK3588_PLL_RATE(785560000, 3, 392, 2, 51117),
+	RK3588_PLL_RATE(722534400, 8, 963, 2, 24850),
+	RK3588_PLL_RATE(600000000, 2, 200, 2, 0),
+	RK3588_PLL_RATE(594000000, 2, 198, 2, 0),
+	RK3588_PLL_RATE(408000000, 2, 272, 3, 0),
+	RK3588_PLL_RATE(312000000, 2, 208, 3, 0),
+	RK3588_PLL_RATE(216000000, 2, 288, 4, 0),
+	RK3588_PLL_RATE(96000000, 2, 256, 5, 0),
+	{ /* sentinel */ },
+};
+
+static struct rockchip_pll_rate_table rk3576_ppll_rates[] = {
+	/* _mhz, _p, _m, _s, _k */
+	RK3588_PLL_RATE(1300000000, 3, 325, 2, 0),
+	{ /* sentinel */ },
+};
+
+#define RK3576_ACLK_M_BIGCORE_DIV_MASK		0x1f
+#define RK3576_ACLK_M_BIGCORE_DIV_SHIFT		0
+#define RK3576_ACLK_M_LITCORE_DIV_MASK		0x1f
+#define RK3576_ACLK_M_LITCORE_DIV_SHIFT		8
+#define RK3576_PCLK_DBG_LITCORE_DIV_MASK	0x1f
+#define RK3576_PCLK_DBG_LITCORE_DIV_SHIFT	0
+#define RK3576_ACLK_CCI_DIV_MASK		0x1f
+#define RK3576_ACLK_CCI_DIV_SHIFT		7
+#define RK3576_ACLK_CCI_MUX_MASK		0x3
+#define RK3576_ACLK_CCI_MUX_SHIFT		12
+
+#define RK3576_BIGCORE_CLKSEL2(_amcore)						\
+{										\
+	.reg = RK3576_BIGCORE_CLKSEL_CON(2),					\
+	.val = HIWORD_UPDATE(_amcore - 1, RK3576_ACLK_M_BIGCORE_DIV_MASK,	\
+			RK3576_ACLK_M_BIGCORE_DIV_SHIFT),			\
+}
+
+#define RK3576_LITCORE_CLKSEL1(_amcore)						\
+{										\
+	.reg = RK3576_LITCORE_CLKSEL_CON(1),					\
+	.val = HIWORD_UPDATE(_amcore - 1, RK3576_ACLK_M_LITCORE_DIV_MASK,	\
+			RK3576_ACLK_M_LITCORE_DIV_SHIFT),			\
+}
+
+#define RK3576_LITCORE_CLKSEL2(_pclkdbg)					\
+{										\
+	.reg = RK3576_LITCORE_CLKSEL_CON(2),					\
+	.val = HIWORD_UPDATE(_pclkdbg - 1, RK3576_PCLK_DBG_LITCORE_DIV_MASK,	\
+			RK3576_PCLK_DBG_LITCORE_DIV_SHIFT),			\
+}
+
+#define RK3576_CCI_CLKSEL4(_ccisel, _div)					\
+{										\
+	.reg = RK3576_CCI_CLKSEL_CON(4),					\
+	.val = HIWORD_UPDATE(_ccisel, RK3576_ACLK_CCI_MUX_MASK,			\
+			RK3576_ACLK_CCI_MUX_SHIFT) |				\
+	       HIWORD_UPDATE(_div - 1, RK3576_ACLK_CCI_DIV_MASK,		\
+			RK3576_ACLK_CCI_DIV_SHIFT),				\
+}
+
+#define RK3576_CPUBCLK_RATE(_prate, _amcore)					\
+{										\
+	.prate = _prate##U,							\
+	.divs = {								\
+		RK3576_BIGCORE_CLKSEL2(_amcore),				\
+	},									\
+}
+
+#define RK3576_CPULCLK_RATE(_prate, _amcore, _pclkdbg, _ccisel)			\
+{										\
+	.prate = _prate##U,							\
+	.divs = {								\
+		RK3576_LITCORE_CLKSEL1(_amcore),				\
+		RK3576_LITCORE_CLKSEL2(_pclkdbg),				\
+	},									\
+	.pre_muxs = {								\
+		RK3576_CCI_CLKSEL4(2, 2),					\
+	},									\
+	.post_muxs = {								\
+		RK3576_CCI_CLKSEL4(_ccisel, 2),					\
+	},									\
+}
+
+static struct rockchip_cpuclk_rate_table rk3576_cpubclk_rates[] __initdata = {
+	RK3576_CPUBCLK_RATE(2496000000, 2),
+	RK3576_CPUBCLK_RATE(2400000000, 2),
+	RK3576_CPUBCLK_RATE(2304000000, 2),
+	RK3576_CPUBCLK_RATE(2208000000, 2),
+	RK3576_CPUBCLK_RATE(2184000000, 2),
+	RK3576_CPUBCLK_RATE(2088000000, 2),
+	RK3576_CPUBCLK_RATE(2040000000, 2),
+	RK3576_CPUBCLK_RATE(2016000000, 2),
+	RK3576_CPUBCLK_RATE(1992000000, 2),
+	RK3576_CPUBCLK_RATE(1896000000, 2),
+	RK3576_CPUBCLK_RATE(1800000000, 2),
+	RK3576_CPUBCLK_RATE(1704000000, 2),
+	RK3576_CPUBCLK_RATE(1608000000, 2),
+	RK3576_CPUBCLK_RATE(1584000000, 2),
+	RK3576_CPUBCLK_RATE(1560000000, 2),
+	RK3576_CPUBCLK_RATE(1536000000, 2),
+	RK3576_CPUBCLK_RATE(1512000000, 2),
+	RK3576_CPUBCLK_RATE(1488000000, 2),
+	RK3576_CPUBCLK_RATE(1464000000, 2),
+	RK3576_CPUBCLK_RATE(1440000000, 2),
+	RK3576_CPUBCLK_RATE(1416000000, 2),
+	RK3576_CPUBCLK_RATE(1392000000, 2),
+	RK3576_CPUBCLK_RATE(1368000000, 2),
+	RK3576_CPUBCLK_RATE(1344000000, 2),
+	RK3576_CPUBCLK_RATE(1320000000, 2),
+	RK3576_CPUBCLK_RATE(1296000000, 2),
+	RK3576_CPUBCLK_RATE(1272000000, 2),
+	RK3576_CPUBCLK_RATE(1248000000, 2),
+	RK3576_CPUBCLK_RATE(1224000000, 2),
+	RK3576_CPUBCLK_RATE(1200000000, 2),
+	RK3576_CPUBCLK_RATE(1104000000, 2),
+	RK3576_CPUBCLK_RATE(1008000000, 2),
+	RK3576_CPUBCLK_RATE(912000000, 2),
+	RK3576_CPUBCLK_RATE(816000000, 2),
+	RK3576_CPUBCLK_RATE(696000000, 2),
+	RK3576_CPUBCLK_RATE(600000000, 2),
+	RK3576_CPUBCLK_RATE(408000000, 2),
+	RK3576_CPUBCLK_RATE(312000000, 2),
+	RK3576_CPUBCLK_RATE(216000000, 2),
+	RK3576_CPUBCLK_RATE(96000000, 2),
+};
+
+static const struct rockchip_cpuclk_reg_data rk3576_cpubclk_data = {
+	.core_reg[0] = RK3576_BIGCORE_CLKSEL_CON(1),
+	.div_core_shift[0] = 7,
+	.div_core_mask[0] = 0x1f,
+	.num_cores = 1,
+	.mux_core_alt = 1,
+	.mux_core_main = 0,
+	.mux_core_shift = 12,
+	.mux_core_mask = 0x3,
+};
+
+static struct rockchip_cpuclk_rate_table rk3576_cpulclk_rates[] __initdata = {
+	RK3576_CPULCLK_RATE(2400000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2304000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2208000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2184000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2088000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2040000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(2016000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1992000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1896000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1800000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1704000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1608000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1584000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1560000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1536000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1512000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1488000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1464000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1440000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1416000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1392000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1368000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1344000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1320000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1296000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1272000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1248000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1224000000, 2, 6, 3),
+	RK3576_CPULCLK_RATE(1200000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(1104000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(1008000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(912000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(816000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(696000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(600000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(408000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(312000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(216000000, 2, 6, 2),
+	RK3576_CPULCLK_RATE(96000000, 2, 6, 2),
+};
+
+static const struct rockchip_cpuclk_reg_data rk3576_cpulclk_data = {
+	.core_reg[0] = RK3576_LITCORE_CLKSEL_CON(0),
+	.div_core_shift[0] = 7,
+	.div_core_mask[0] = 0x1f,
+	.num_cores = 1,
+	.mux_core_alt = 1,
+	.mux_core_main = 0,
+	.mux_core_shift = 12,
+	.mux_core_mask = 0x3,
+};
+
+#define MFLAGS CLK_MUX_HIWORD_MASK
+#define DFLAGS CLK_DIVIDER_HIWORD_MASK
+#define GFLAGS (CLK_GATE_HIWORD_MASK | CLK_GATE_SET_TO_DISABLE)
+
+PNAME(mux_pll_p)			= { "xin24m", "xin32k" };
+PNAME(mux_24m_32k_p)			= { "xin24m", "xin_osc0_div" };
+PNAME(mux_armclkl_p)			= { "xin24m", "pll_lpll", "lpll" };
+PNAME(mux_armclkb_p)			= { "xin24m", "pll_bpll", "bpll" };
+PNAME(gpll_24m_p)			= { "gpll", "xin24m" };
+PNAME(cpll_24m_p)			= { "cpll", "xin24m" };
+PNAME(gpll_cpll_p)			= { "gpll", "cpll" };
+PNAME(gpll_spll_p)			= { "gpll", "spll" };
+PNAME(gpll_cpll_aupll_p)		= { "gpll", "cpll", "aupll" };
+PNAME(gpll_cpll_24m_p)			= { "gpll", "cpll", "xin24m" };
+PNAME(gpll_cpll_24m_spll_p)		= { "gpll", "cpll", "xin24m", "spll" };
+PNAME(gpll_cpll_aupll_24m_p)		= { "gpll", "cpll", "aupll", "xin24m" };
+PNAME(gpll_cpll_aupll_spll_p)		= { "gpll", "cpll", "aupll", "spll" };
+PNAME(gpll_cpll_aupll_spll_lpll_p)	= { "gpll", "cpll", "aupll", "spll", "lpll_dummy" };
+PNAME(gpll_cpll_spll_bpll_p)		= { "gpll", "cpll", "spll", "bpll_dummy" };
+PNAME(gpll_cpll_lpll_bpll_p)		= { "gpll", "cpll", "lpll_dummy", "bpll_dummy" };
+PNAME(gpll_spll_cpll_bpll_lpll_p)	= { "gpll", "spll",  "cpll", "bpll_dummy", "lpll_dummy" };
+PNAME(gpll_cpll_vpll_aupll_24m_p)	= { "gpll", "cpll", "vpll", "aupll", "xin24m" };
+PNAME(gpll_cpll_spll_aupll_bpll_p)	= { "gpll", "cpll", "spll", "aupll", "bpll_dummy" };
+PNAME(gpll_cpll_spll_bpll_lpll_p)	= { "gpll", "cpll", "spll", "bpll_dummy", "lpll_dummy" };
+PNAME(gpll_cpll_spll_lpll_bpll_p)	= { "gpll", "cpll", "spll", "lpll_dummy", "bpll_dummy" };
+PNAME(gpll_cpll_vpll_bpll_lpll_p)	= { "gpll", "cpll", "vpll", "bpll_dummy", "lpll_dummy" };
+PNAME(gpll_spll_aupll_bpll_lpll_p)	= { "gpll", "spll", "aupll", "bpll_dummy", "lpll_dummy" };
+PNAME(gpll_spll_isppvtpll_bpll_lpll_p)	= { "gpll", "spll", "isp_pvtpll", "bpll_dummy", "lpll_dummy" };
+PNAME(gpll_cpll_spll_aupll_lpll_24m_p)	= { "gpll", "cpll", "spll", "aupll", "lpll_dummy", "xin24m" };
+PNAME(gpll_cpll_spll_vpll_bpll_lpll_p)	= { "gpll", "cpll", "spll", "vpll", "bpll_dummy", "lpll_dummy" };
+PNAME(cpll_vpll_lpll_bpll_p)		= { "cpll", "vpll", "lpll_dummy", "bpll_dummy" };
+PNAME(mux_24m_ccipvtpll_gpll_lpll_p)	= { "xin24m", "cci_pvtpll", "gpll", "lpll" };
+PNAME(mux_24m_spll_gpll_cpll_p)		= {"xin24m", "spll", "gpll", "cpll" };
+PNAME(audio_frac_int_p)			= { "xin24m", "clk_audio_frac_0", "clk_audio_frac_1", "clk_audio_frac_2",
+					    "clk_audio_frac_3", "clk_audio_int_0", "clk_audio_int_1", "clk_audio_int_2" };
+PNAME(audio_frac_p)			= { "clk_audio_frac_0", "clk_audio_frac_1", "clk_audio_frac_2", "clk_audio_frac_3" };
+PNAME(mux_100m_24m_p)			= { "clk_cpll_div10", "xin24m" };
+PNAME(mux_100m_50m_24m_p)		= { "clk_cpll_div10", "clk_cpll_div20", "xin24m" };
+PNAME(mux_100m_24m_lclk0_p)		= { "clk_cpll_div10", "xin24m", "lclk_asrc_src_0" };
+PNAME(mux_100m_24m_lclk1_p)		= { "clk_cpll_div10", "xin24m", "lclk_asrc_src_1" };
+PNAME(mux_150m_100m_50m_24m_p)		= { "clk_gpll_div8", "clk_cpll_div10", "clk_cpll_div20", "xin24m" };
+PNAME(mux_200m_100m_50m_24m_p)		= { "clk_gpll_div6", "clk_cpll_div10", "clk_cpll_div20", "xin24m" };
+PNAME(mux_400m_200m_100m_24m_p)		= { "clk_gpll_div3", "clk_gpll_div6", "clk_cpll_div10", "xin24m" };
+PNAME(mux_500m_250m_100m_24m_p)		= { "clk_cpll_div2", "clk_cpll_div4", "clk_cpll_div10", "xin24m" };
+PNAME(mux_600m_400m_300m_24m_p)		= { "clk_gpll_div2", "clk_gpll_div3", "clk_gpll_div4", "xin24m" };
+PNAME(mux_350m_175m_116m_24m_p)		= { "clk_spll_div2", "clk_spll_div4", "clk_spll_div6", "xin24m" };
+PNAME(mux_175m_116m_58m_24m_p)		= { "clk_spll_div4", "clk_spll_div6", "clk_spll_div12", "xin24m" };
+PNAME(mux_116m_58m_24m_p)		= { "clk_spll_div6", "clk_spll_div12", "xin24m" };
+PNAME(mclk_sai0_8ch_p)			= { "mclk_sai0_8ch_src", "sai0_mclkin", "sai1_mclkin" };
+PNAME(mclk_sai1_8ch_p)			= { "mclk_sai1_8ch_src", "sai1_mclkin" };
+PNAME(mclk_sai2_2ch_p)			= { "mclk_sai2_2ch_src", "sai2_mclkin", "sai1_mclkin" };
+PNAME(mclk_sai3_2ch_p)			= { "mclk_sai3_2ch_src", "sai3_mclkin", "sai1_mclkin" };
+PNAME(mclk_sai4_2ch_p)			= { "mclk_sai4_2ch_src", "sai4_mclkin", "sai1_mclkin" };
+PNAME(mclk_sai5_8ch_p)			= { "mclk_sai5_8ch_src", "sai1_mclkin" };
+PNAME(mclk_sai6_8ch_p)			= { "mclk_sai6_8ch_src", "sai1_mclkin" };
+PNAME(mclk_sai7_8ch_p)			= { "mclk_sai7_8ch_src", "sai1_mclkin" };
+PNAME(mclk_sai8_8ch_p)			= { "mclk_sai8_8ch_src", "sai1_mclkin" };
+PNAME(mclk_sai9_8ch_p)			= { "mclk_sai9_8ch_src", "sai1_mclkin" };
+PNAME(uart1_p)				= { "clk_uart1_src_top", "xin24m" };
+PNAME(pdm0_p)				= { "clk_pdm0_src_top", "xin24m" };
+PNAME(mclk_pdm0_p)			= { "mclk_pdm0_src_top", "xin24m" };
+PNAME(clk_gmac1_ptp_ref_src_p)		= { "gpll", "cpll", "gmac1_ptp_refclk_in" };
+PNAME(clk_gmac0_ptp_ref_src_p)		= { "gpll", "cpll", "gmac0_ptp_refclk_in" };
+PNAME(dclk_ebc_p)			= { "gpll", "cpll", "vpll", "aupll", "lpll_dummy",
+					    "dclk_ebc_frac", "xin24m" };
+PNAME(dclk_vp0_p)			= { "dclk_vp0_src", "clk_hdmiphy_pixel0" };
+PNAME(dclk_vp1_p)			= { "dclk_vp1_src", "clk_hdmiphy_pixel0" };
+PNAME(dclk_vp2_p)			= { "dclk_vp2_src", "clk_hdmiphy_pixel0" };
+PNAME(clk_uart_p)			= { "gpll", "cpll", "aupll", "xin24m", "clk_uart_frac_0",
+					    "clk_uart_frac_1", "clk_uart_frac_2"};
+PNAME(clk_freq_pwm1_p)			= { "sai0_mclkin", "sai1_mclkin", "sai2_mclkin",
+					    "sai3_mclkin", "sai4_mclkin", "sai_sclkin_freq"};
+PNAME(clk_counter_pwm1_p)		= { "sai0_mclkin", "sai1_mclkin", "sai2_mclkin",
+					    "sai3_mclkin", "sai4_mclkin", "sai_sclkin_counter"};
+PNAME(sai_sclkin_freq_p)		= { "sai0_sclk_in", "sai1_sclk_in", "sai2_sclk_in",
+					    "sai3_sclk_in", "sai4_sclk_in"};
+PNAME(clk_ref_pcie0_phy_p)		= { "clk_pcie_100m_src", "clk_pcie_100m_nduty_src",
+					    "xin24m"};
+PNAME(hclk_vi_root_p)			= { "clk_gpll_div6", "clk_cpll_div10",
+					    "aclk_vi_root_inter", "xin24m"};
+PNAME(clk_ref_osc_mphy_p)		= { "xin24m", "clk_gpio_mphy_i", "clk_ref_mphy_26m"};
+PNAME(mux_pmu200m_pmu100m_pmu50m_24m_p)	= { "clk_200m_pmu_src", "clk_100m_pmu_src",
+					    "clk_50m_pmu_src", "xin24m" };
+PNAME(mux_pmu100m_pmu50m_24m_p)		= { "clk_100m_pmu_src", "clk_50m_pmu_src", "xin24m" };
+PNAME(mux_pmu100m_24m_32k_p)		= { "clk_100m_pmu_src", "xin24m", "xin_osc0_div" };
+PNAME(clk_phy_ref_src_p)		= { "xin24m", "clk_pmuphy_ref_src" };
+PNAME(clk_usbphy_ref_src_p)		= { "usbphy0_24m", "usbphy1_24m" };
+PNAME(clk_cpll_ref_src_p)		= { "xin24m", "clk_usbphy_ref_src" };
+PNAME(clk_aupll_ref_src_p)		= { "xin24m", "clk_aupll_ref_io" };
+
+static struct rockchip_pll_clock rk3576_pll_clks[] __initdata = {
+	[bpll] = PLL(pll_rk3588_core, PLL_BPLL, "bpll", mux_pll_p,
+		     0, RK3576_PLL_CON(0),
+		     RK3576_BPLL_MODE_CON0, 0, 15, 0, rk3576_pll_rates),
+	[lpll] = PLL(pll_rk3588_core, PLL_LPLL, "lpll", mux_pll_p,
+		     0, RK3576_LPLL_CON(16),
+		     RK3576_LPLL_MODE_CON0, 0, 15, 0, rk3576_pll_rates),
+	[vpll] = PLL(pll_rk3588, PLL_VPLL, "vpll", mux_pll_p,
+		     0, RK3576_PLL_CON(88),
+		     RK3576_MODE_CON0, 4, 15, 0, rk3576_pll_rates),
+	[aupll] = PLL(pll_rk3588, PLL_AUPLL, "aupll", mux_pll_p,
+		     0, RK3576_PLL_CON(96),
+		     RK3576_MODE_CON0, 6, 15, 0, rk3576_pll_rates),
+	[cpll] = PLL(pll_rk3588, PLL_CPLL, "cpll", mux_pll_p,
+		     CLK_IGNORE_UNUSED, RK3576_PLL_CON(104),
+		     RK3576_MODE_CON0, 8, 15, 0, rk3576_pll_rates),
+	[gpll] = PLL(pll_rk3588, PLL_GPLL, "gpll", mux_pll_p,
+		     CLK_IGNORE_UNUSED, RK3576_PLL_CON(112),
+		     RK3576_MODE_CON0, 2, 15, 0, rk3576_pll_rates),
+	[ppll] = PLL(pll_rk3588_core, PLL_PPLL, "ppll", mux_pll_p,
+		     CLK_IGNORE_UNUSED, RK3576_PMU_PLL_CON(128),
+		     RK3576_MODE_CON0, 10, 15, 0, rk3576_ppll_rates),
+};
+
+static struct rockchip_clk_branch rk3576_clk_branches[] __initdata = {
+	/*
+	 * CRU Clock-Architecture
+	 */
+	/* fixed */
+	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
+
+	COMPOSITE_FRAC(XIN_OSC0_DIV, "xin_osc0_div", "xin24m", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKSEL_CON(21), 0,
+			RK3576_PMU_CLKGATE_CON(7), 11, GFLAGS),
+
+	FACTOR(0, "clk_spll_div12", "spll", 0, 1, 12),
+	FACTOR(0, "clk_spll_div6", "spll", 0, 1, 6),
+	FACTOR(0, "clk_spll_div4", "spll", 0, 1, 4),
+	FACTOR(0, "lpll_div2", "lpll", 0, 1, 2),
+	FACTOR(0, "bpll_div4", "bpll", 0, 1, 4),
+
+	/* top */
+	COMPOSITE(CLK_CPLL_DIV20, "clk_cpll_div20", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(0), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 0, GFLAGS),
+	COMPOSITE(CLK_CPLL_DIV10, "clk_cpll_div10", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(0), 11, 1, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 1, GFLAGS),
+	COMPOSITE(CLK_GPLL_DIV8, "clk_gpll_div8", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(1), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 2, GFLAGS),
+	COMPOSITE(CLK_GPLL_DIV6, "clk_gpll_div6", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(1), 11, 1, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 3, GFLAGS),
+	COMPOSITE(CLK_CPLL_DIV4, "clk_cpll_div4", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(2), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 4, GFLAGS),
+	COMPOSITE(CLK_GPLL_DIV4, "clk_gpll_div4", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(2), 11, 1, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 5, GFLAGS),
+	COMPOSITE(CLK_SPLL_DIV2, "clk_spll_div2", gpll_cpll_spll_bpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(3), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 6, GFLAGS),
+	COMPOSITE(CLK_GPLL_DIV3, "clk_gpll_div3", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(3), 12, 1, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 7, GFLAGS),
+	COMPOSITE(CLK_CPLL_DIV2, "clk_cpll_div2", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(4), 11, 1, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 9, GFLAGS),
+	COMPOSITE(CLK_GPLL_DIV2, "clk_gpll_div2", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(5), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 10, GFLAGS),
+	COMPOSITE(CLK_SPLL_DIV1, "clk_spll_div1", gpll_cpll_spll_bpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(6), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(0), 12, GFLAGS),
+	COMPOSITE_NODIV(PCLK_TOP_ROOT, "pclk_top_root", mux_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(8), 7, 2, MFLAGS,
+			RK3576_CLKGATE_CON(1), 1, GFLAGS),
+	COMPOSITE(ACLK_TOP, "aclk_top", gpll_cpll_aupll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(9), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(1), 3, GFLAGS),
+	COMPOSITE(ACLK_TOP_MID, "aclk_top_mid", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(10), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(1), 6, GFLAGS),
+	COMPOSITE(ACLK_SECURE_HIGH, "aclk_secure_high", gpll_spll_aupll_bpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(10), 11, 3, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(1), 7, GFLAGS),
+	COMPOSITE_NODIV(HCLK_TOP, "hclk_top", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(19), 2, 2, MFLAGS,
+			RK3576_CLKGATE_CON(1), 14, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VO0VOP_CHANNEL, "hclk_vo0vop_channel", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(19), 6, 2, MFLAGS,
+			RK3576_CLKGATE_CON(2), 0, GFLAGS),
+	COMPOSITE(ACLK_VO0VOP_CHANNEL, "aclk_vo0vop_channel", gpll_cpll_lpll_bpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(19), 12, 2, MFLAGS, 8, 4, DFLAGS,
+			RK3576_CLKGATE_CON(2), 1, GFLAGS),
+	MUX(CLK_AUDIO_FRAC_0_SRC, "clk_audio_frac_0_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(13), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_AUDIO_FRAC_0, "clk_audio_frac_0", "clk_audio_frac_0_src", 0,
+			RK3576_CLKSEL_CON(12), 0,
+			RK3576_CLKGATE_CON(1), 10, GFLAGS),
+	MUX(CLK_AUDIO_FRAC_1_SRC, "clk_audio_frac_1_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(15), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_AUDIO_FRAC_1, "clk_audio_frac_1", "clk_audio_frac_1_src", 0,
+			RK3576_CLKSEL_CON(14), 0,
+			RK3576_CLKGATE_CON(1), 11, GFLAGS),
+	MUX(CLK_AUDIO_FRAC_2_SRC, "clk_audio_frac_2_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(17), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_AUDIO_FRAC_2, "clk_audio_frac_2", "clk_audio_frac_2_src", 0,
+			RK3576_CLKSEL_CON(16), 0,
+			RK3576_CLKGATE_CON(1), 12, GFLAGS),
+	MUX(CLK_AUDIO_FRAC_3_SRC, "clk_audio_frac_3_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(19), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_AUDIO_FRAC_3, "clk_audio_frac_3", "clk_audio_frac_3_src", 0,
+			RK3576_CLKSEL_CON(18), 0,
+			RK3576_CLKGATE_CON(1), 13, GFLAGS),
+	MUX(0, "clk_uart_frac_0_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(22), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_UART_FRAC_0, "clk_uart_frac_0", "clk_uart_frac_0_src", 0,
+			RK3576_CLKSEL_CON(21), 0,
+			RK3576_CLKGATE_CON(2), 5, GFLAGS),
+	MUX(0, "clk_uart_frac_1_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(24), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_UART_FRAC_1, "clk_uart_frac_1", "clk_uart_frac_1_src", 0,
+			RK3576_CLKSEL_CON(23), 0,
+			RK3576_CLKGATE_CON(2), 6, GFLAGS),
+	MUX(0, "clk_uart_frac_2_src", gpll_cpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(26), 0, 2, MFLAGS),
+	COMPOSITE_FRAC(CLK_UART_FRAC_2, "clk_uart_frac_2", "clk_uart_frac_2_src", 0,
+			RK3576_CLKSEL_CON(25), 0,
+			RK3576_CLKGATE_CON(2), 7, GFLAGS),
+	COMPOSITE(CLK_UART1_SRC_TOP, "clk_uart1_src_top", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(27), 13, 3, MFLAGS, 5, 8, DFLAGS,
+			RK3576_CLKGATE_CON(2), 13, GFLAGS),
+	COMPOSITE_NOMUX(CLK_AUDIO_INT_0, "clk_audio_int_0", "gpll", 0,
+			RK3576_CLKSEL_CON(28), 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(2), 14, GFLAGS),
+	COMPOSITE_NOMUX(CLK_AUDIO_INT_1, "clk_audio_int_1", "cpll", 0,
+			RK3576_CLKSEL_CON(28), 5, 5, DFLAGS,
+			RK3576_CLKGATE_CON(2), 15, GFLAGS),
+	COMPOSITE_NOMUX(CLK_AUDIO_INT_2, "clk_audio_int_2", "aupll", 0,
+			RK3576_CLKSEL_CON(28), 10, 5, DFLAGS,
+			RK3576_CLKGATE_CON(3), 0, GFLAGS),
+	COMPOSITE(CLK_PDM0_SRC_TOP, "clk_pdm0_src_top", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(29), 9, 3, MFLAGS, 0, 9, DFLAGS,
+			RK3576_CLKGATE_CON(3), 2, GFLAGS),
+	COMPOSITE_NOMUX(CLK_GMAC0_125M_SRC, "clk_gmac0_125m_src", "cpll", 0,
+			RK3576_CLKSEL_CON(30), 10, 5, DFLAGS,
+			RK3576_CLKGATE_CON(3), 6, GFLAGS),
+	COMPOSITE_NOMUX(CLK_GMAC1_125M_SRC, "clk_gmac1_125m_src", "cpll", 0,
+			RK3576_CLKSEL_CON(31), 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(3), 7, GFLAGS),
+	COMPOSITE(LCLK_ASRC_SRC_0, "lclk_asrc_src_0", audio_frac_p, 0,
+			RK3576_CLKSEL_CON(31), 10, 2, MFLAGS, 5, 5, DFLAGS,
+			RK3576_CLKGATE_CON(3), 10, GFLAGS),
+	COMPOSITE(LCLK_ASRC_SRC_1, "lclk_asrc_src_1", audio_frac_p, 0,
+			RK3576_CLKSEL_CON(32), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(3), 11, GFLAGS),
+	COMPOSITE(REF_CLK0_OUT_PLL, "ref_clk0_out_pll", gpll_cpll_spll_aupll_lpll_24m_p, 0,
+			RK3576_CLKSEL_CON(33), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(4), 1, GFLAGS),
+	COMPOSITE(REF_CLK1_OUT_PLL, "ref_clk1_out_pll", gpll_cpll_spll_aupll_lpll_24m_p, 0,
+			RK3576_CLKSEL_CON(34), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(4), 2, GFLAGS),
+	COMPOSITE(REF_CLK2_OUT_PLL, "ref_clk2_out_pll", gpll_cpll_spll_aupll_lpll_24m_p, 0,
+			RK3576_CLKSEL_CON(35), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(4), 3, GFLAGS),
+	COMPOSITE(REFCLKO25M_GMAC0_OUT, "refclko25m_gmac0_out", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(36), 7, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3576_CLKGATE_CON(5), 10, GFLAGS),
+	COMPOSITE(REFCLKO25M_GMAC1_OUT, "refclko25m_gmac1_out", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(36), 15, 1, MFLAGS, 8, 7, DFLAGS,
+			RK3576_CLKGATE_CON(5), 11, GFLAGS),
+	COMPOSITE(CLK_CIFOUT_OUT, "clk_cifout_out", gpll_cpll_24m_spll_p, 0,
+			RK3576_CLKSEL_CON(37), 8, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(5), 12, GFLAGS),
+	GATE(CLK_GMAC0_RMII_CRU, "clk_gmac0_rmii_cru", "clk_cpll_div20", 0,
+			RK3576_CLKGATE_CON(5), 13, GFLAGS),
+	GATE(CLK_GMAC1_RMII_CRU, "clk_gmac1_rmii_cru", "clk_cpll_div20", 0,
+			RK3576_CLKGATE_CON(5), 14, GFLAGS),
+	GATE(CLK_OTPC_AUTO_RD_G, "clk_otpc_auto_rd_g", "xin24m", 0,
+			RK3576_CLKGATE_CON(5), 15, GFLAGS),
+	COMPOSITE(CLK_MIPI_CAMERAOUT_M0, "clk_mipi_cameraout_m0", mux_24m_spll_gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(38), 8, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(6), 3, GFLAGS),
+	COMPOSITE(CLK_MIPI_CAMERAOUT_M1, "clk_mipi_cameraout_m1", mux_24m_spll_gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(39), 8, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(6), 4, GFLAGS),
+	COMPOSITE(CLK_MIPI_CAMERAOUT_M2, "clk_mipi_cameraout_m2", mux_24m_spll_gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(40), 8, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(6), 5, GFLAGS),
+	COMPOSITE(MCLK_PDM0_SRC_TOP, "mclk_pdm0_src_top", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(41), 7, 3, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(6), 8, GFLAGS),
+
+	/* bus */
+	COMPOSITE_NODIV(HCLK_BUS_ROOT, "hclk_bus_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(55), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(11), 0, GFLAGS),
+	COMPOSITE_NODIV(PCLK_BUS_ROOT, "pclk_bus_root", mux_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(55), 2, 2, MFLAGS,
+			RK3576_CLKGATE_CON(11), 1, GFLAGS),
+	COMPOSITE(ACLK_BUS_ROOT, "aclk_bus_root", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(55), 9, 1, MFLAGS, 4, 5, DFLAGS,
+			RK3576_CLKGATE_CON(11), 2, GFLAGS),
+	GATE(HCLK_CAN0, "hclk_can0", "hclk_bus_root", 0,
+			RK3576_CLKGATE_CON(11), 6, GFLAGS),
+	COMPOSITE(CLK_CAN0, "clk_can0", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(56), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(11), 7, GFLAGS),
+	GATE(HCLK_CAN1, "hclk_can1", "hclk_bus_root", 0,
+			RK3576_CLKGATE_CON(11), 8, GFLAGS),
+	COMPOSITE(CLK_CAN1, "clk_can1", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(56), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(11), 9, GFLAGS),
+	GATE(CLK_KEY_SHIFT, "clk_key_shift", "xin24m", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(11), 15, GFLAGS),
+	GATE(PCLK_I2C1, "pclk_i2c1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 0, GFLAGS),
+	GATE(PCLK_I2C2, "pclk_i2c2", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 1, GFLAGS),
+	GATE(PCLK_I2C3, "pclk_i2c3", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 2, GFLAGS),
+	GATE(PCLK_I2C4, "pclk_i2c4", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 3, GFLAGS),
+	GATE(PCLK_I2C5, "pclk_i2c5", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 4, GFLAGS),
+	GATE(PCLK_I2C6, "pclk_i2c6", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 5, GFLAGS),
+	GATE(PCLK_I2C7, "pclk_i2c7", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 6, GFLAGS),
+	GATE(PCLK_I2C8, "pclk_i2c8", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 7, GFLAGS),
+	GATE(PCLK_I2C9, "pclk_i2c9", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 8, GFLAGS),
+	GATE(PCLK_WDT_BUSMCU, "pclk_wdt_busmcu", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(12), 9, GFLAGS),
+	GATE(TCLK_WDT_BUSMCU, "tclk_wdt_busmcu", "xin24m", 0,
+			RK3576_CLKGATE_CON(12), 10, GFLAGS),
+	GATE(ACLK_GIC, "aclk_gic", "aclk_bus_root", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(12), 11, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C1, "clk_i2c1", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(12), 12, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C2, "clk_i2c2", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 2, 2, MFLAGS,
+			RK3576_CLKGATE_CON(12), 13, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C3, "clk_i2c3", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 4, 2, MFLAGS,
+			RK3576_CLKGATE_CON(12), 14, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C4, "clk_i2c4", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 6, 2, MFLAGS,
+			RK3576_CLKGATE_CON(12), 15, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C5, "clk_i2c5", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(13), 0, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C6, "clk_i2c6", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(13), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C7, "clk_i2c7", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 12, 2, MFLAGS,
+			RK3576_CLKGATE_CON(13), 2, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C8, "clk_i2c8", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(57), 14, 2, MFLAGS,
+			RK3576_CLKGATE_CON(13), 3, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C9, "clk_i2c9", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(58), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(13), 4, GFLAGS),
+	GATE(PCLK_SARADC, "pclk_saradc", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 6, GFLAGS),
+	COMPOSITE(CLK_SARADC, "clk_saradc", gpll_24m_p, 0,
+			RK3576_CLKSEL_CON(58), 12, 1, MFLAGS, 4, 8, DFLAGS,
+			RK3576_CLKGATE_CON(13), 7, GFLAGS),
+	GATE(PCLK_TSADC, "pclk_tsadc", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 8, GFLAGS),
+	COMPOSITE_NOMUX(CLK_TSADC, "clk_tsadc", "xin24m", 0,
+			RK3576_CLKSEL_CON(59), 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(13), 9, GFLAGS),
+	GATE(PCLK_UART0, "pclk_uart0", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 10, GFLAGS),
+	GATE(PCLK_UART2, "pclk_uart2", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 11, GFLAGS),
+	GATE(PCLK_UART3, "pclk_uart3", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 12, GFLAGS),
+	GATE(PCLK_UART4, "pclk_uart4", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 13, GFLAGS),
+	GATE(PCLK_UART5, "pclk_uart5", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 14, GFLAGS),
+	GATE(PCLK_UART6, "pclk_uart6", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(13), 15, GFLAGS),
+	GATE(PCLK_UART7, "pclk_uart7", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(14), 0, GFLAGS),
+	GATE(PCLK_UART8, "pclk_uart8", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(14), 1, GFLAGS),
+	GATE(PCLK_UART9, "pclk_uart9", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(14), 2, GFLAGS),
+	GATE(PCLK_UART10, "pclk_uart10", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(14), 3, GFLAGS),
+	GATE(PCLK_UART11, "pclk_uart11", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(14), 4, GFLAGS),
+	COMPOSITE(SCLK_UART0, "sclk_uart0", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(60), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(14), 5, GFLAGS),
+	COMPOSITE(SCLK_UART2, "sclk_uart2", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(61), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(14), 6, GFLAGS),
+	COMPOSITE(SCLK_UART3, "sclk_uart3", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(62), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(14), 9, GFLAGS),
+	COMPOSITE(SCLK_UART4, "sclk_uart4", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(63), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(14), 12, GFLAGS),
+	COMPOSITE(SCLK_UART5, "sclk_uart5", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(64), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(14), 15, GFLAGS),
+	COMPOSITE(SCLK_UART6, "sclk_uart6", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(65), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 2, GFLAGS),
+	COMPOSITE(SCLK_UART7, "sclk_uart7", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(66), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 5, GFLAGS),
+	COMPOSITE(SCLK_UART8, "sclk_uart8", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(67), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 8, GFLAGS),
+	COMPOSITE(SCLK_UART9, "sclk_uart9", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(68), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 9, GFLAGS),
+	COMPOSITE(SCLK_UART10, "sclk_uart10", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(69), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 10, GFLAGS),
+	COMPOSITE(SCLK_UART11, "sclk_uart11", clk_uart_p, 0,
+			RK3576_CLKSEL_CON(70), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(15), 11, GFLAGS),
+	GATE(PCLK_SPI0, "pclk_spi0", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(15), 13, GFLAGS),
+	GATE(PCLK_SPI1, "pclk_spi1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(15), 14, GFLAGS),
+	GATE(PCLK_SPI2, "pclk_spi2", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(15), 15, GFLAGS),
+	GATE(PCLK_SPI3, "pclk_spi3", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(16), 0, GFLAGS),
+	GATE(PCLK_SPI4, "pclk_spi4", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(16), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI0, "clk_spi0", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(70), 13, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 2, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI1, "clk_spi1", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 3, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI2, "clk_spi2", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 2, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI3, "clk_spi3", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 4, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 5, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI4, "clk_spi4", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 6, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 6, GFLAGS),
+	GATE(PCLK_WDT0, "pclk_wdt0", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(16), 7, GFLAGS),
+	GATE(TCLK_WDT0, "tclk_wdt0", "xin24m", 0,
+			RK3576_CLKGATE_CON(16), 8, GFLAGS),
+	GATE(PCLK_PWM1, "pclk_pwm1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(16), 10, GFLAGS),
+	COMPOSITE_NODIV(CLK_PWM1, "clk_pwm1", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(16), 11, GFLAGS),
+	GATE(CLK_OSC_PWM1, "clk_osc_pwm1", "xin24m", 0,
+			RK3576_CLKGATE_CON(16), 13, GFLAGS),
+	GATE(CLK_RC_PWM1, "clk_rc_pwm1", "clk_pvtm_clkout", 0,
+			RK3576_CLKGATE_CON(16), 15, GFLAGS),
+	GATE(PCLK_BUSTIMER0, "pclk_bustimer0", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(17), 3, GFLAGS),
+	GATE(PCLK_BUSTIMER1, "pclk_bustimer1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(17), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_TIMER0_ROOT, "clk_timer0_root", mux_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(71), 14, 1, MFLAGS,
+			RK3576_CLKGATE_CON(17), 5, GFLAGS),
+	GATE(CLK_TIMER0, "clk_timer0", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 6, GFLAGS),
+	GATE(CLK_TIMER1, "clk_timer1", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 7, GFLAGS),
+	GATE(CLK_TIMER2, "clk_timer2", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 8, GFLAGS),
+	GATE(CLK_TIMER3, "clk_timer3", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 9, GFLAGS),
+	GATE(CLK_TIMER4, "clk_timer4", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 10, GFLAGS),
+	GATE(CLK_TIMER5, "clk_timer5", "clk_timer0_root", 0,
+			RK3576_CLKGATE_CON(17), 11, GFLAGS),
+	GATE(PCLK_MAILBOX0, "pclk_mailbox0", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(17), 13, GFLAGS),
+	GATE(PCLK_GPIO1, "pclk_gpio1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(17), 15, GFLAGS),
+	GATE(DBCLK_GPIO1, "dbclk_gpio1", "xin24m", 0,
+			RK3576_CLKGATE_CON(18), 0, GFLAGS),
+	GATE(PCLK_GPIO2, "pclk_gpio2", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(18), 1, GFLAGS),
+	GATE(DBCLK_GPIO2, "dbclk_gpio2", "xin24m", 0,
+			RK3576_CLKGATE_CON(18), 2, GFLAGS),
+	GATE(PCLK_GPIO3, "pclk_gpio3", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(18), 3, GFLAGS),
+	GATE(DBCLK_GPIO3, "dbclk_gpio3", "xin24m", 0,
+			RK3576_CLKGATE_CON(18), 4, GFLAGS),
+	GATE(PCLK_GPIO4, "pclk_gpio4", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(18), 5, GFLAGS),
+	GATE(DBCLK_GPIO4, "dbclk_gpio4", "xin24m", 0,
+			RK3576_CLKGATE_CON(18), 6, GFLAGS),
+	GATE(ACLK_DECOM, "aclk_decom", "aclk_bus_root", 0,
+			RK3576_CLKGATE_CON(18), 7, GFLAGS),
+	GATE(PCLK_DECOM, "pclk_decom", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(18), 8, GFLAGS),
+	COMPOSITE(DCLK_DECOM, "dclk_decom", gpll_spll_p, 0,
+			RK3576_CLKSEL_CON(72), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(18), 9, GFLAGS),
+	COMPOSITE_NODIV(CLK_TIMER1_ROOT, "clk_timer1_root", mux_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(72), 6, 1, MFLAGS,
+			RK3576_CLKGATE_CON(18), 10, GFLAGS),
+	GATE(CLK_TIMER6, "clk_timer6", "clk_timer1_root", 0,
+			RK3576_CLKGATE_CON(18), 11, GFLAGS),
+	COMPOSITE(CLK_TIMER7, "clk_timer7", mux_100m_24m_lclk0_p, 0,
+			RK3576_CLKSEL_CON(72), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(18), 12, GFLAGS),
+	COMPOSITE(CLK_TIMER8, "clk_timer8", mux_100m_24m_lclk1_p, 0,
+			RK3576_CLKSEL_CON(73), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(18), 13, GFLAGS),
+	GATE(CLK_TIMER9, "clk_timer9", "clk_timer1_root", 0,
+			RK3576_CLKGATE_CON(18), 14, GFLAGS),
+	GATE(CLK_TIMER10, "clk_timer10", "clk_timer1_root", 0,
+			RK3576_CLKGATE_CON(18), 15, GFLAGS),
+	GATE(CLK_TIMER11, "clk_timer11", "clk_timer1_root", 0,
+			RK3576_CLKGATE_CON(19), 0, GFLAGS),
+	GATE(ACLK_DMAC0, "aclk_dmac0", "aclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 1, GFLAGS),
+	GATE(ACLK_DMAC1, "aclk_dmac1", "aclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 2, GFLAGS),
+	GATE(ACLK_DMAC2, "aclk_dmac2", "aclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 3, GFLAGS),
+	GATE(ACLK_SPINLOCK, "aclk_spinlock", "aclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 4, GFLAGS),
+	GATE(HCLK_I3C0, "hclk_i3c0", "hclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 7, GFLAGS),
+	GATE(HCLK_I3C1, "hclk_i3c1", "hclk_bus_root", 0,
+			RK3576_CLKGATE_CON(19), 9, GFLAGS),
+	COMPOSITE_NODIV(HCLK_BUS_CM0_ROOT, "hclk_bus_cm0_root", mux_400m_200m_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(73), 13, 2, MFLAGS,
+			RK3576_CLKGATE_CON(19), 10, GFLAGS),
+	GATE(FCLK_BUS_CM0_CORE, "fclk_bus_cm0_core", "hclk_bus_cm0_root", 0,
+			RK3576_CLKGATE_CON(19), 12, GFLAGS),
+	COMPOSITE(CLK_BUS_CM0_RTC, "clk_bus_cm0_rtc", mux_24m_32k_p, 0,
+			RK3576_CLKSEL_CON(74), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(19), 14, GFLAGS),
+	GATE(PCLK_PMU2, "pclk_pmu2", "pclk_bus_root", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(19), 15, GFLAGS),
+	GATE(PCLK_PWM2, "pclk_pwm2", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(20), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_PWM2, "clk_pwm2", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(74), 6, 2, MFLAGS,
+			RK3576_CLKGATE_CON(20), 5, GFLAGS),
+	GATE(CLK_OSC_PWM2, "clk_osc_pwm2", "xin24m", 0,
+			RK3576_CLKGATE_CON(20), 7, GFLAGS),
+	GATE(CLK_RC_PWM2, "clk_rc_pwm2", "clk_pvtm_clkout", 0,
+			RK3576_CLKGATE_CON(20), 6, GFLAGS),
+	COMPOSITE_NODIV(CLK_FREQ_PWM1, "clk_freq_pwm1", clk_freq_pwm1_p, 0,
+			RK3576_CLKSEL_CON(74), 8, 3, MFLAGS,
+			RK3576_CLKGATE_CON(20), 8, GFLAGS),
+	COMPOSITE_NODIV(CLK_COUNTER_PWM1, "clk_counter_pwm1", clk_counter_pwm1_p, 0,
+			RK3576_CLKSEL_CON(74), 11, 3, MFLAGS,
+			RK3576_CLKGATE_CON(20), 9, GFLAGS),
+	COMPOSITE_NODIV(SAI_SCLKIN_FREQ, "sai_sclkin_freq", sai_sclkin_freq_p, 0,
+			RK3576_CLKSEL_CON(75), 0, 3, MFLAGS,
+			RK3576_CLKGATE_CON(20), 10, GFLAGS),
+	COMPOSITE_NODIV(SAI_SCLKIN_COUNTER, "sai_sclkin_counter", sai_sclkin_freq_p, 0,
+			RK3576_CLKSEL_CON(75), 3, 3, MFLAGS,
+			RK3576_CLKGATE_CON(20), 11, GFLAGS),
+	COMPOSITE(CLK_I3C0, "clk_i3c0", gpll_cpll_aupll_spll_p, 0,
+			RK3576_CLKSEL_CON(78), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(20), 12, GFLAGS),
+	COMPOSITE(CLK_I3C1, "clk_i3c1", gpll_cpll_aupll_spll_p, 0,
+			RK3576_CLKSEL_CON(78), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(20), 13, GFLAGS),
+	GATE(PCLK_CSIDPHY1, "pclk_csidphy1", "pclk_bus_root", 0,
+			RK3576_CLKGATE_CON(40), 2, GFLAGS),
+
+	/* cci */
+	COMPOSITE(PCLK_CCI_ROOT, "pclk_cci_root", mux_24m_ccipvtpll_gpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CCI_CLKSEL_CON(4), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CCI_CLKGATE_CON(1), 10, GFLAGS),
+	COMPOSITE(ACLK_CCI_ROOT, "aclk_cci_root", mux_24m_ccipvtpll_gpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CCI_CLKSEL_CON(4), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CCI_CLKGATE_CON(1), 11, GFLAGS),
+
+	/* center */
+	COMPOSITE_DIV_OFFSET(ACLK_CENTER_ROOT, "aclk_center_root", gpll_cpll_spll_aupll_bpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(168), 5, 3, MFLAGS,
+			RK3576_CLKSEL_CON(167), 9, 5, DFLAGS,
+			RK3576_CLKGATE_CON(72), 0, GFLAGS),
+	COMPOSITE_NODIV(ACLK_CENTER_LOW_ROOT, "aclk_center_low_root", mux_500m_250m_100m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(168), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(72), 1, GFLAGS),
+	COMPOSITE_NODIV(HCLK_CENTER_ROOT, "hclk_center_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(168), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(72), 2, GFLAGS),
+	COMPOSITE_NODIV(PCLK_CENTER_ROOT, "pclk_center_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(168), 12, 2, MFLAGS,
+			RK3576_CLKGATE_CON(72), 3, GFLAGS),
+	GATE(ACLK_DMA2DDR, "aclk_dma2ddr", "aclk_center_root", CLK_IGNORE_UNUSED,
+			RK3576_CLKGATE_CON(72), 5, GFLAGS),
+	GATE(ACLK_DDR_SHAREMEM, "aclk_ddr_sharemem", "aclk_center_low_root", CLK_IGNORE_UNUSED,
+			RK3576_CLKGATE_CON(72), 6, GFLAGS),
+	GATE(PCLK_DMA2DDR, "pclk_dma2ddr", "pclk_center_root", CLK_IGNORE_UNUSED,
+			RK3576_CLKGATE_CON(72), 10, GFLAGS),
+	GATE(PCLK_SHAREMEM, "pclk_sharemem", "pclk_center_root", CLK_IGNORE_UNUSED,
+			RK3576_CLKGATE_CON(72), 11, GFLAGS),
+
+	/* ddr */
+	COMPOSITE(PCLK_DDR_ROOT, "pclk_ddr_root", gpll_cpll_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(76), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(21), 0, GFLAGS),
+	GATE(PCLK_DDR_MON_CH0, "pclk_ddr_mon_ch0", "pclk_ddr_root", CLK_IGNORE_UNUSED,
+			RK3576_CLKGATE_CON(21), 1, GFLAGS),
+	COMPOSITE(HCLK_DDR_ROOT, "hclk_ddr_root", gpll_cpll_p, CLK_IGNORE_UNUSED,
+			RK3576_CLKSEL_CON(77), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(22), 11, GFLAGS),
+	GATE(FCLK_DDR_CM0_CORE, "fclk_ddr_cm0_core", "hclk_ddr_root", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(22), 15, GFLAGS),
+	COMPOSITE_NODIV(CLK_DDR_TIMER_ROOT, "clk_ddr_timer_root", mux_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(77), 6, 1, MFLAGS,
+			RK3576_CLKGATE_CON(23), 3, GFLAGS),
+	GATE(CLK_DDR_TIMER0, "clk_ddr_timer0", "clk_ddr_timer_root", 0,
+			RK3576_CLKGATE_CON(23), 4, GFLAGS),
+	GATE(CLK_DDR_TIMER1, "clk_ddr_timer1", "clk_ddr_timer_root", 0,
+			RK3576_CLKGATE_CON(23), 5, GFLAGS),
+	GATE(TCLK_WDT_DDR, "tclk_wdt_ddr", "xin24m", 0,
+			RK3576_CLKGATE_CON(23), 6, GFLAGS),
+	GATE(PCLK_WDT, "pclk_wdt", "pclk_ddr_root", 0,
+			RK3576_CLKGATE_CON(23), 7, GFLAGS),
+	GATE(PCLK_TIMER, "pclk_timer", "pclk_ddr_root", 0,
+			RK3576_CLKGATE_CON(23), 8, GFLAGS),
+	COMPOSITE(CLK_DDR_CM0_RTC, "clk_ddr_cm0_rtc", mux_24m_32k_p, 0,
+			RK3576_CLKSEL_CON(77), 12, 1, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(23), 10, GFLAGS),
+
+	/* gpu */
+	COMPOSITE(CLK_GPU_SRC_PRE, "clk_gpu_src_pre", gpll_cpll_aupll_spll_lpll_p, 0,
+			RK3576_CLKSEL_CON(165), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(69), 1, GFLAGS),
+	GATE(CLK_GPU, "clk_gpu", "clk_gpu_src_pre", 0,
+			RK3576_CLKGATE_CON(69), 3, GFLAGS),
+	COMPOSITE_NODIV(PCLK_GPU_ROOT, "pclk_gpu_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(166), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(69), 8, GFLAGS),
+
+	/* npu */
+	COMPOSITE_NODIV(HCLK_RKNN_ROOT, "hclk_rknn_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(86), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(31), 4, GFLAGS),
+	COMPOSITE(CLK_RKNN_DSU0, "clk_rknn_dsu0", gpll_cpll_aupll_spll_p, 0,
+			RK3576_CLKSEL_CON(86), 7, 2, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(31), 5, GFLAGS),
+	GATE(ACLK_RKNN0, "aclk_rknn0", "clk_rknn_dsu0", 0,
+			RK3576_CLKGATE_CON(28), 9, GFLAGS),
+	GATE(ACLK_RKNN1, "aclk_rknn1", "clk_rknn_dsu0", 0,
+			RK3576_CLKGATE_CON(29), 0, GFLAGS),
+	COMPOSITE_NODIV(PCLK_NPUTOP_ROOT, "pclk_nputop_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(87), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(31), 8, GFLAGS),
+	GATE(PCLK_NPU_TIMER, "pclk_npu_timer", "pclk_nputop_root", 0,
+			RK3576_CLKGATE_CON(31), 10, GFLAGS),
+	COMPOSITE_NODIV(CLK_NPUTIMER_ROOT, "clk_nputimer_root", mux_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(87), 2, 1, MFLAGS,
+			RK3576_CLKGATE_CON(31), 11, GFLAGS),
+	GATE(CLK_NPUTIMER0, "clk_nputimer0", "clk_nputimer_root", 0,
+			RK3576_CLKGATE_CON(31), 12, GFLAGS),
+	GATE(CLK_NPUTIMER1, "clk_nputimer1", "clk_nputimer_root", 0,
+			RK3576_CLKGATE_CON(31), 13, GFLAGS),
+	GATE(PCLK_NPU_WDT, "pclk_npu_wdt", "pclk_nputop_root", 0,
+			RK3576_CLKGATE_CON(31), 14, GFLAGS),
+	GATE(TCLK_NPU_WDT, "tclk_npu_wdt", "xin24m", 0,
+			RK3576_CLKGATE_CON(31), 15, GFLAGS),
+	GATE(ACLK_RKNN_CBUF, "aclk_rknn_cbuf", "clk_rknn_dsu0", 0,
+			RK3576_CLKGATE_CON(32), 0, GFLAGS),
+	COMPOSITE_NODIV(HCLK_NPU_CM0_ROOT, "hclk_npu_cm0_root", mux_400m_200m_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(87), 3, 2, MFLAGS,
+			RK3576_CLKGATE_CON(32), 5, GFLAGS),
+	GATE(FCLK_NPU_CM0_CORE, "fclk_npu_cm0_core", "hclk_npu_cm0_root", 0,
+			RK3576_CLKGATE_CON(32), 7, GFLAGS),
+	COMPOSITE(CLK_NPU_CM0_RTC, "clk_npu_cm0_rtc", mux_24m_32k_p, 0,
+			RK3576_CLKSEL_CON(87), 10, 1, MFLAGS, 5, 5, DFLAGS,
+			RK3576_CLKGATE_CON(32), 9, GFLAGS),
+	GATE(HCLK_RKNN_CBUF, "hclk_rknn_cbuf", "hclk_rknn_root", 0,
+			RK3576_CLKGATE_CON(32), 12, GFLAGS),
+
+	/* nvm */
+	COMPOSITE_NODIV(HCLK_NVM_ROOT, "hclk_nvm_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(88), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(33), 0, GFLAGS),
+	COMPOSITE(ACLK_NVM_ROOT, "aclk_nvm_root", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(88), 7, 1, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(33), 1, GFLAGS),
+	COMPOSITE(SCLK_FSPI_X2, "sclk_fspi_x2", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(89), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3576_CLKGATE_CON(33), 6, GFLAGS),
+	GATE(HCLK_FSPI, "hclk_fspi", "hclk_nvm_root", 0,
+			RK3576_CLKGATE_CON(33), 7, GFLAGS),
+	COMPOSITE(CCLK_SRC_EMMC, "cclk_src_emmc", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(89), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3576_CLKGATE_CON(33), 8, GFLAGS),
+	GATE(HCLK_EMMC, "hclk_emmc", "hclk_nvm_root", 0,
+			RK3576_CLKGATE_CON(33), 9, GFLAGS),
+	GATE(ACLK_EMMC, "aclk_emmc", "aclk_nvm_root", 0,
+			RK3576_CLKGATE_CON(33), 10, GFLAGS),
+	COMPOSITE_NODIV(BCLK_EMMC, "bclk_emmc", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(90), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(33), 11, GFLAGS),
+	GATE(TCLK_EMMC, "tclk_emmc", "xin24m", 0,
+			RK3576_CLKGATE_CON(33), 12, GFLAGS),
+
+	/* usb */
+	COMPOSITE(ACLK_UFS_ROOT, "aclk_ufs_root", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(115), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(47), 0, GFLAGS),
+	COMPOSITE(ACLK_USB_ROOT, "aclk_usb_root", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(115), 11, 1, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(47), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_USB_ROOT, "pclk_usb_root", mux_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(115), 12, 2, MFLAGS,
+			RK3576_CLKGATE_CON(47), 2, GFLAGS),
+	GATE(ACLK_USB3OTG0, "aclk_usb3otg0", "aclk_usb_root", 0,
+			RK3576_CLKGATE_CON(47), 5, GFLAGS),
+	GATE(CLK_REF_USB3OTG0, "clk_ref_usb3otg0", "xin24m", 0,
+			RK3576_CLKGATE_CON(47), 6, GFLAGS),
+	GATE(CLK_SUSPEND_USB3OTG0, "clk_suspend_usb3otg0", "xin24m", 0,
+			RK3576_CLKGATE_CON(47), 7, GFLAGS),
+	GATE(ACLK_MMU2, "aclk_mmu2", "aclk_usb_root", 0,
+			RK3576_CLKGATE_CON(47), 12, GFLAGS),
+	GATE(ACLK_SLV_MMU2, "aclk_slv_mmu2", "aclk_usb_root", 0,
+			RK3576_CLKGATE_CON(47), 13, GFLAGS),
+	GATE(ACLK_UFS_SYS, "aclk_ufs_sys", "aclk_ufs_root", 0,
+			RK3576_CLKGATE_CON(47), 15, GFLAGS),
+
+	/* vdec */
+	COMPOSITE_NODIV(HCLK_RKVDEC_ROOT, "hclk_rkvdec_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(110), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(45), 0, GFLAGS),
+	COMPOSITE(ACLK_RKVDEC_ROOT, "aclk_rkvdec_root", gpll_cpll_aupll_spll_p, 0,
+			RK3576_CLKSEL_CON(110), 7, 2, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(45), 1, GFLAGS),
+	COMPOSITE(ACLK_RKVDEC_ROOT_BAK, "aclk_rkvdec_root_bak", cpll_vpll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(110), 14, 2, MFLAGS, 9, 5, DFLAGS,
+			RK3576_CLKGATE_CON(45), 2, GFLAGS),
+	GATE(HCLK_RKVDEC, "hclk_rkvdec", "hclk_rkvdec_root", 0,
+			RK3576_CLKGATE_CON(45), 3, GFLAGS),
+	COMPOSITE(CLK_RKVDEC_HEVC_CA, "clk_rkvdec_hevc_ca", gpll_cpll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(111), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(45), 8, GFLAGS),
+	GATE(CLK_RKVDEC_CORE, "clk_rkvdec_core", "aclk_rkvdec_root", 0,
+			RK3576_CLKGATE_CON(45), 9, GFLAGS),
+
+	/* venc */
+	COMPOSITE_NODIV(HCLK_VEPU0_ROOT, "hclk_vepu0_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(124), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(51), 0, GFLAGS),
+	COMPOSITE(ACLK_VEPU0_ROOT, "aclk_vepu0_root", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(124), 7, 1, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(51), 1, GFLAGS),
+	COMPOSITE(CLK_VEPU0_CORE, "clk_vepu0_core", gpll_cpll_spll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(124), 13, 3, MFLAGS, 8, 5, DFLAGS,
+			RK3576_CLKGATE_CON(51), 6, GFLAGS),
+	GATE(HCLK_VEPU0, "hclk_vepu0", "hclk_vepu0_root", 0,
+			RK3576_CLKGATE_CON(51), 4, GFLAGS),
+	GATE(ACLK_VEPU0, "aclk_vepu0", "aclk_vepu0_root", 0,
+			RK3576_CLKGATE_CON(51), 5, GFLAGS),
+
+	/* vi */
+	COMPOSITE(ACLK_VI_ROOT, "aclk_vi_root", gpll_spll_isppvtpll_bpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(128), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(53), 0, GFLAGS),
+	COMPOSITE_NOMUX(ACLK_VI_ROOT_INTER, "aclk_vi_root_inter", "aclk_vi_root", 0,
+			RK3576_CLKSEL_CON(130), 10, 3, DFLAGS,
+			RK3576_CLKGATE_CON(54), 13, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VI_ROOT, "hclk_vi_root", hclk_vi_root_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(128), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(53), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_VI_ROOT, "pclk_vi_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(128), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(53), 2, GFLAGS),
+	COMPOSITE(DCLK_VICAP, "dclk_vicap", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(129), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(53), 6, GFLAGS),
+	GATE(ACLK_VICAP, "aclk_vicap", "aclk_vi_root", 0,
+			RK3576_CLKGATE_CON(53), 7, GFLAGS),
+	GATE(HCLK_VICAP, "hclk_vicap", "hclk_vi_root", 0,
+			RK3576_CLKGATE_CON(53), 8, GFLAGS),
+	COMPOSITE(CLK_ISP_CORE, "clk_isp_core", gpll_spll_isppvtpll_bpll_lpll_p, 0,
+			RK3576_CLKSEL_CON(129), 11, 3, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(53), 9, GFLAGS),
+	GATE(CLK_ISP_CORE_MARVIN, "clk_isp_core_marvin", "clk_isp_core", 0,
+			RK3576_CLKGATE_CON(53), 10, GFLAGS),
+	GATE(CLK_ISP_CORE_VICAP, "clk_isp_core_vicap", "clk_isp_core", 0,
+			RK3576_CLKGATE_CON(53), 11, GFLAGS),
+	GATE(ACLK_ISP, "aclk_isp", "aclk_vi_root", 0,
+			RK3576_CLKGATE_CON(53), 12, GFLAGS),
+	GATE(HCLK_ISP, "hclk_isp", "hclk_vi_root", 0,
+			RK3576_CLKGATE_CON(53), 13, GFLAGS),
+	GATE(ACLK_VPSS, "aclk_vpss", "aclk_vi_root", 0,
+			RK3576_CLKGATE_CON(53), 15, GFLAGS),
+	GATE(HCLK_VPSS, "hclk_vpss", "hclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 0, GFLAGS),
+	GATE(CLK_CORE_VPSS, "clk_core_vpss", "clk_isp_core", 0,
+			RK3576_CLKGATE_CON(54), 1, GFLAGS),
+	GATE(PCLK_CSI_HOST_0, "pclk_csi_host_0", "pclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 4, GFLAGS),
+	GATE(PCLK_CSI_HOST_1, "pclk_csi_host_1", "pclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 5, GFLAGS),
+	GATE(PCLK_CSI_HOST_2, "pclk_csi_host_2", "pclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 6, GFLAGS),
+	GATE(PCLK_CSI_HOST_3, "pclk_csi_host_3", "pclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 7, GFLAGS),
+	GATE(PCLK_CSI_HOST_4, "pclk_csi_host_4", "pclk_vi_root", 0,
+			RK3576_CLKGATE_CON(54), 8, GFLAGS),
+	COMPOSITE_NODIV(ICLK_CSIHOST01, "iclk_csihost01", mux_400m_200m_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(130), 7, 2, MFLAGS,
+			RK3576_CLKGATE_CON(54), 10, GFLAGS),
+	GATE(ICLK_CSIHOST0, "iclk_csihost0", "iclk_csihost01", 0,
+			RK3576_CLKGATE_CON(54), 11, GFLAGS),
+	COMPOSITE(ACLK_VOP_ROOT, "aclk_vop_root", gpll_cpll_aupll_spll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(144), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(61), 0, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VOP_ROOT, "hclk_vop_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(144), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(61), 2, GFLAGS),
+	COMPOSITE_NODIV(PCLK_VOP_ROOT, "pclk_vop_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(144), 12, 2, MFLAGS,
+			RK3576_CLKGATE_CON(61), 3, GFLAGS),
+	GATE(HCLK_VOP, "hclk_vop", "hclk_vop_root", 0,
+			RK3576_CLKGATE_CON(61), 8, GFLAGS),
+	GATE(ACLK_VOP, "aclk_vop", "aclk_vop_root", 0,
+			RK3576_CLKGATE_CON(61), 9, GFLAGS),
+	COMPOSITE(DCLK_VP0_SRC, "dclk_vp0_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(145), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(61), 10, GFLAGS),
+	COMPOSITE(DCLK_VP1_SRC, "dclk_vp1_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(146), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(61), 11, GFLAGS),
+	COMPOSITE(DCLK_VP2_SRC, "dclk_vp2_src", gpll_cpll_vpll_bpll_lpll_p, CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(147), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(61), 12, GFLAGS),
+	COMPOSITE_NODIV(DCLK_VP0, "dclk_vp0", dclk_vp0_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(147), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(61), 13, GFLAGS),
+	COMPOSITE_NODIV(DCLK_VP1, "dclk_vp1", dclk_vp1_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(147), 12, 1, MFLAGS,
+			RK3576_CLKGATE_CON(62), 0, GFLAGS),
+	COMPOSITE_NODIV(DCLK_VP2, "dclk_vp2", dclk_vp2_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(147), 13, 1, MFLAGS,
+			RK3576_CLKGATE_CON(62), 1, GFLAGS),
+
+	/* vo0 */
+	COMPOSITE(ACLK_VO0_ROOT, "aclk_vo0_root", gpll_cpll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(149), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(63), 0, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VO0_ROOT, "hclk_vo0_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(149), 7, 2, MFLAGS,
+			RK3576_CLKGATE_CON(63), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_VO0_ROOT, "pclk_vo0_root", mux_150m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(149), 11, 2, MFLAGS,
+			RK3576_CLKGATE_CON(63), 3, GFLAGS),
+	GATE(ACLK_HDCP0, "aclk_hdcp0", "aclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(63), 12, GFLAGS),
+	GATE(HCLK_HDCP0, "hclk_hdcp0", "hclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(63), 13, GFLAGS),
+	GATE(PCLK_HDCP0, "pclk_hdcp0", "pclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(63), 14, GFLAGS),
+	GATE(CLK_TRNG0_SKP, "clk_trng0_skp", "aclk_hdcp0", 0,
+			RK3576_CLKGATE_CON(64), 4, GFLAGS),
+	GATE(PCLK_DSIHOST0, "pclk_dsihost0", "pclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(64), 5, GFLAGS),
+	COMPOSITE(CLK_DSIHOST0, "clk_dsihost0", gpll_cpll_spll_vpll_bpll_lpll_p, 0,
+			RK3576_CLKSEL_CON(151), 7, 3, MFLAGS, 0, 7, DFLAGS,
+			RK3576_CLKGATE_CON(64), 6, GFLAGS),
+	GATE(PCLK_HDMITX0, "pclk_hdmitx0", "pclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(64), 7, GFLAGS),
+	COMPOSITE(CLK_HDMITX0_EARC, "clk_hdmitx0_earc", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(151), 15, 1, MFLAGS, 10, 5, DFLAGS,
+			RK3576_CLKGATE_CON(64), 8, GFLAGS),
+	GATE(CLK_HDMITX0_REF, "clk_hdmitx0_ref", "aclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(64), 9, GFLAGS),
+	GATE(PCLK_EDP0, "pclk_edp0", "pclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(64), 13, GFLAGS),
+	GATE(CLK_EDP0_24M, "clk_edp0_24m", "xin24m", 0,
+			RK3576_CLKGATE_CON(64), 14, GFLAGS),
+	COMPOSITE_NODIV(CLK_EDP0_200M, "clk_edp0_200m", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(152), 1, 2, MFLAGS,
+			RK3576_CLKGATE_CON(64), 15, GFLAGS),
+	COMPOSITE(MCLK_SAI5_8CH_SRC, "mclk_sai5_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(154), 10, 3, MFLAGS, 2, 8, DFLAGS,
+			RK3576_CLKGATE_CON(65), 3, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI5_8CH, "mclk_sai5_8ch", mclk_sai5_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(154), 13, 1, MFLAGS,
+			RK3576_CLKGATE_CON(65), 4, GFLAGS),
+	GATE(HCLK_SAI5_8CH, "hclk_sai5_8ch", "hclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(65), 5, GFLAGS),
+	COMPOSITE(MCLK_SAI6_8CH_SRC, "mclk_sai6_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(155), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(65), 7, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI6_8CH, "mclk_sai6_8ch", mclk_sai6_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(155), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(65), 8, GFLAGS),
+	GATE(HCLK_SAI6_8CH, "hclk_sai6_8ch", "hclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(65), 9, GFLAGS),
+	GATE(HCLK_SPDIF_TX2, "hclk_spdif_tx2", "hclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(65), 10, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX2, "mclk_spdif_tx2", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(156), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(65), 13, GFLAGS),
+	GATE(HCLK_SPDIF_RX2, "hclk_spdif_rx2", "hclk_vo0_root", 0,
+			RK3576_CLKGATE_CON(65), 14, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_RX2, "mclk_spdif_rx2", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(156), 13, 2, MFLAGS, 8, 5, DFLAGS,
+			RK3576_CLKGATE_CON(65), 15, GFLAGS),
+
+	/* vo1 */
+	COMPOSITE(ACLK_VO1_ROOT, "aclk_vo1_root", gpll_cpll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(158), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(67), 1, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VO1_ROOT, "hclk_vo1_root", mux_200m_100m_50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(158), 7, 2, MFLAGS,
+			RK3576_CLKGATE_CON(67), 2, GFLAGS),
+	COMPOSITE_NODIV(PCLK_VO1_ROOT, "pclk_vo1_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(158), 9, 2, MFLAGS,
+			RK3576_CLKGATE_CON(67), 3, GFLAGS),
+	COMPOSITE(MCLK_SAI8_8CH_SRC, "mclk_sai8_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(157), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(66), 1, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI8_8CH, "mclk_sai8_8ch", mclk_sai8_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(157), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(66), 2, GFLAGS),
+	GATE(HCLK_SAI8_8CH, "hclk_sai8_8ch", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(66), 0, GFLAGS),
+	COMPOSITE(MCLK_SAI7_8CH_SRC, "mclk_sai7_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(159), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(67), 8, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI7_8CH, "mclk_sai7_8ch", mclk_sai7_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(159), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(67), 9, GFLAGS),
+	GATE(HCLK_SAI7_8CH, "hclk_sai7_8ch", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(67), 10, GFLAGS),
+	GATE(HCLK_SPDIF_TX3, "hclk_spdif_tx3", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(67), 11, GFLAGS),
+	GATE(HCLK_SPDIF_TX4, "hclk_spdif_tx4", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(67), 12, GFLAGS),
+	GATE(HCLK_SPDIF_TX5, "hclk_spdif_tx5", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(67), 13, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX3, "mclk_spdif_tx3", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(160), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(67), 14, GFLAGS),
+	COMPOSITE_NOMUX(CLK_AUX16MHZ_0, "clk_aux16mhz_0", "gpll", 0,
+			RK3576_CLKSEL_CON(161), 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(67), 15, GFLAGS),
+	GATE(ACLK_DP0, "aclk_dp0", "aclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 0, GFLAGS),
+	GATE(PCLK_DP0, "pclk_dp0", "pclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 1, GFLAGS),
+	GATE(ACLK_HDCP1, "aclk_hdcp1", "aclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 4, GFLAGS),
+	GATE(HCLK_HDCP1, "hclk_hdcp1", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 5, GFLAGS),
+	GATE(PCLK_HDCP1, "pclk_hdcp1", "pclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 6, GFLAGS),
+	GATE(CLK_TRNG1_SKP, "clk_trng1_skp", "aclk_hdcp1", 0,
+			RK3576_CLKGATE_CON(68), 7, GFLAGS),
+	GATE(HCLK_SAI9_8CH, "hclk_sai9_8ch", "hclk_vo1_root", 0,
+			RK3576_CLKGATE_CON(68), 9, GFLAGS),
+	COMPOSITE(MCLK_SAI9_8CH_SRC, "mclk_sai9_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(162), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(68), 10, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI9_8CH, "mclk_sai9_8ch", mclk_sai9_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(162), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(68), 11, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX4, "mclk_spdif_tx4", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(163), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(68), 12, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX5, "mclk_spdif_tx5", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(164), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(68), 13, GFLAGS),
+
+	/* vpu */
+	COMPOSITE(ACLK_VPU_ROOT, "aclk_vpu_root", gpll_spll_cpll_bpll_lpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(118), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(49), 0, GFLAGS),
+	COMPOSITE_NODIV(ACLK_VPU_MID_ROOT, "aclk_vpu_mid_root", mux_600m_400m_300m_24m_p, 0,
+			RK3576_CLKSEL_CON(118), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(49), 1, GFLAGS),
+	COMPOSITE_NODIV(HCLK_VPU_ROOT, "hclk_vpu_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(118), 10, 2, MFLAGS,
+			RK3576_CLKGATE_CON(49), 2, GFLAGS),
+	COMPOSITE(ACLK_JPEG_ROOT, "aclk_jpeg_root", gpll_cpll_aupll_spll_p, 0,
+			RK3576_CLKSEL_CON(119), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(49), 3, GFLAGS),
+	COMPOSITE_NODIV(ACLK_VPU_LOW_ROOT, "aclk_vpu_low_root", mux_400m_200m_100m_24m_p, 0,
+			RK3576_CLKSEL_CON(119), 7, 2, MFLAGS,
+			RK3576_CLKGATE_CON(49), 4, GFLAGS),
+	GATE(HCLK_RGA2E_0, "hclk_rga2e_0", "hclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(49), 13, GFLAGS),
+	GATE(ACLK_RGA2E_0, "aclk_rga2e_0", "aclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(49), 14, GFLAGS),
+	COMPOSITE(CLK_CORE_RGA2E_0, "clk_core_rga2e_0", gpll_spll_cpll_bpll_lpll_p, 0,
+			RK3576_CLKSEL_CON(120), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(49), 15, GFLAGS),
+	GATE(ACLK_JPEG, "aclk_jpeg", "aclk_jpeg_root", 0,
+			RK3576_CLKGATE_CON(50), 0, GFLAGS),
+	GATE(HCLK_JPEG, "hclk_jpeg", "hclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(50), 1, GFLAGS),
+	GATE(HCLK_VDPP, "hclk_vdpp", "hclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(50), 2, GFLAGS),
+	GATE(ACLK_VDPP, "aclk_vdpp", "aclk_vpu_mid_root", 0,
+			RK3576_CLKGATE_CON(50), 3, GFLAGS),
+	COMPOSITE(CLK_CORE_VDPP, "clk_core_vdpp", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(120), 13, 1, MFLAGS, 8, 5, DFLAGS,
+			RK3576_CLKGATE_CON(50), 4, GFLAGS),
+	GATE(HCLK_RGA2E_1, "hclk_rga2e_1", "hclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(50), 5, GFLAGS),
+	GATE(ACLK_RGA2E_1, "aclk_rga2e_1", "aclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(50), 6, GFLAGS),
+	COMPOSITE(CLK_CORE_RGA2E_1, "clk_core_rga2e_1", gpll_spll_cpll_bpll_lpll_p, 0,
+			RK3576_CLKSEL_CON(121), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(50), 7, GFLAGS),
+	MUX(0, "dclk_ebc_frac_src_p", gpll_cpll_vpll_aupll_24m_p, 0,
+			RK3576_CLKSEL_CON(123), 0, 3, MFLAGS),
+	COMPOSITE_FRAC(DCLK_EBC_FRAC_SRC, "dclk_ebc_frac_src", "dclk_ebc_frac_src_p", 0,
+			RK3576_CLKSEL_CON(122), 0,
+			RK3576_CLKGATE_CON(50), 9, GFLAGS),
+	GATE(ACLK_EBC, "aclk_ebc", "aclk_vpu_low_root", 0,
+			RK3576_CLKGATE_CON(50), 11, GFLAGS),
+	GATE(HCLK_EBC, "hclk_ebc", "hclk_vpu_root", 0,
+			RK3576_CLKGATE_CON(50), 10, GFLAGS),
+	COMPOSITE(DCLK_EBC, "dclk_ebc", dclk_ebc_p, CLK_SET_RATE_NO_REPARENT,
+			RK3576_CLKSEL_CON(123), 12, 3, MFLAGS, 3, 9, DFLAGS,
+			RK3576_CLKGATE_CON(50), 12, GFLAGS),
+
+	/* vepu */
+	COMPOSITE_NODIV(HCLK_VEPU1_ROOT, "hclk_vepu1_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(178), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(78), 0, GFLAGS),
+	COMPOSITE(ACLK_VEPU1_ROOT, "aclk_vepu1_root", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(180), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(79), 0, GFLAGS),
+	GATE(HCLK_VEPU1, "hclk_vepu1", "hclk_vepu1_root", 0,
+			RK3576_CLKGATE_CON(79), 3, GFLAGS),
+	GATE(ACLK_VEPU1, "aclk_vepu1", "aclk_vepu1_root", 0,
+			RK3576_CLKGATE_CON(79), 4, GFLAGS),
+	COMPOSITE(CLK_VEPU1_CORE, "clk_vepu1_core", gpll_cpll_spll_lpll_bpll_p, 0,
+			RK3576_CLKSEL_CON(180), 11, 3, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(79), 5, GFLAGS),
+
+	/* php */
+	COMPOSITE_NODIV(PCLK_PHP_ROOT, "pclk_php_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(92), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(34), 0, GFLAGS),
+	COMPOSITE(ACLK_PHP_ROOT, "aclk_php_root", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(92), 9, 1, MFLAGS, 4, 5, DFLAGS,
+			RK3576_CLKGATE_CON(34), 7, GFLAGS),
+	GATE(PCLK_PCIE0, "pclk_pcie0", "pclk_php_root", 0,
+			RK3576_CLKGATE_CON(34), 13, GFLAGS),
+	GATE(CLK_PCIE0_AUX, "clk_pcie0_aux", "xin24m", 0,
+			RK3576_CLKGATE_CON(34), 14, GFLAGS),
+	GATE(ACLK_PCIE0_MST, "aclk_pcie0_mst", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(34), 15, GFLAGS),
+	GATE(ACLK_PCIE0_SLV, "aclk_pcie0_slv", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 0, GFLAGS),
+	GATE(ACLK_PCIE0_DBI, "aclk_pcie0_dbi", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 1, GFLAGS),
+	GATE(ACLK_USB3OTG1, "aclk_usb3otg1", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 3, GFLAGS),
+	GATE(CLK_REF_USB3OTG1, "clk_ref_usb3otg1", "xin24m", 0,
+			RK3576_CLKGATE_CON(35), 4, GFLAGS),
+	GATE(CLK_SUSPEND_USB3OTG1, "clk_suspend_usb3otg1", "xin24m", 0,
+			RK3576_CLKGATE_CON(35), 5, GFLAGS),
+	GATE(ACLK_MMU0, "aclk_mmu0", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 11, GFLAGS),
+	GATE(ACLK_SLV_MMU0, "aclk_slv_mmu0", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 13, GFLAGS),
+	GATE(ACLK_MMU1, "aclk_mmu1", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(35), 14, GFLAGS),
+	GATE(ACLK_SLV_MMU1, "aclk_slv_mmu1", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(36), 0, GFLAGS),
+	GATE(PCLK_PCIE1, "pclk_pcie1", "pclk_php_root", 0,
+			RK3576_CLKGATE_CON(36), 7, GFLAGS),
+	GATE(CLK_PCIE1_AUX, "clk_pcie1_aux", "xin24m", 0,
+			RK3576_CLKGATE_CON(36), 8, GFLAGS),
+	GATE(ACLK_PCIE1_MST, "aclk_pcie1_mst", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(36), 9, GFLAGS),
+	GATE(ACLK_PCIE1_SLV, "aclk_pcie1_slv", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(36), 10, GFLAGS),
+	GATE(ACLK_PCIE1_DBI, "aclk_pcie1_dbi", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(36), 11, GFLAGS),
+	COMPOSITE(CLK_RXOOB0, "clk_rxoob0", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(93), 7, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3576_CLKGATE_CON(37), 0, GFLAGS),
+	COMPOSITE(CLK_RXOOB1, "clk_rxoob1", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(93), 15, 1, MFLAGS, 8, 7, DFLAGS,
+			RK3576_CLKGATE_CON(37), 1, GFLAGS),
+	GATE(CLK_PMALIVE0, "clk_pmalive0", "xin24m", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(37), 2, GFLAGS),
+	GATE(CLK_PMALIVE1, "clk_pmalive1", "xin24m", CLK_IS_CRITICAL,
+			RK3576_CLKGATE_CON(37), 3, GFLAGS),
+	GATE(ACLK_SATA0, "aclk_sata0", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(37), 4, GFLAGS),
+	GATE(ACLK_SATA1, "aclk_sata1", "aclk_php_root", 0,
+			RK3576_CLKGATE_CON(37), 5, GFLAGS),
+
+	/* audio */
+	COMPOSITE_NODIV(HCLK_AUDIO_ROOT, "hclk_audio_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(42), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(7), 1, GFLAGS),
+	GATE(HCLK_ASRC_2CH_0, "hclk_asrc_2ch_0", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(HCLK_ASRC_2CH_1, "hclk_asrc_2ch_1", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(HCLK_ASRC_4CH_0, "hclk_asrc_4ch_0", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 5, GFLAGS),
+	GATE(HCLK_ASRC_4CH_1, "hclk_asrc_4ch_1", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 6, GFLAGS),
+	COMPOSITE(CLK_ASRC_2CH_0, "clk_asrc_2ch_0", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(42), 7, 2, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(7), 7, GFLAGS),
+	COMPOSITE(CLK_ASRC_2CH_1, "clk_asrc_2ch_1", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(42), 14, 2, MFLAGS, 9, 5, DFLAGS,
+			RK3576_CLKGATE_CON(7), 8, GFLAGS),
+	COMPOSITE(CLK_ASRC_4CH_0, "clk_asrc_4ch_0", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(43), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(7), 9, GFLAGS),
+	COMPOSITE(CLK_ASRC_4CH_1, "clk_asrc_4ch_1", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(43), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(7), 10, GFLAGS),
+	COMPOSITE(MCLK_SAI0_8CH_SRC, "mclk_sai0_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(44), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(7), 11, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI0_8CH, "mclk_sai0_8ch", mclk_sai0_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(44), 11, 2, MFLAGS,
+			RK3576_CLKGATE_CON(7), 12, GFLAGS),
+	GATE(HCLK_SAI0_8CH, "hclk_sai0_8ch", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 13, GFLAGS),
+	GATE(HCLK_SPDIF_RX0, "hclk_spdif_rx0", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(7), 14, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_RX0, "mclk_spdif_rx0", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(45), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(7), 15, GFLAGS),
+	GATE(HCLK_SPDIF_RX1, "hclk_spdif_rx1", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(8), 0, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_RX1, "mclk_spdif_rx1", gpll_cpll_aupll_p, 0,
+			RK3576_CLKSEL_CON(45), 12, 2, MFLAGS, 7, 5, DFLAGS,
+			RK3576_CLKGATE_CON(8), 1, GFLAGS),
+	COMPOSITE(MCLK_SAI1_8CH_SRC, "mclk_sai1_8ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(46), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(8), 4, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI1_8CH, "mclk_sai1_8ch", mclk_sai1_8ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(46), 11, 1, MFLAGS,
+			RK3576_CLKGATE_CON(8), 5, GFLAGS),
+	GATE(HCLK_SAI1_8CH, "hclk_sai1_8ch", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(8), 6, GFLAGS),
+	COMPOSITE(MCLK_SAI2_2CH_SRC, "mclk_sai2_2ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(47), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(8), 7, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI2_2CH, "mclk_sai2_2ch", mclk_sai2_2ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(47), 11, 2, MFLAGS,
+			RK3576_CLKGATE_CON(8), 8, GFLAGS),
+	GATE(HCLK_SAI2_2CH, "hclk_sai2_2ch", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(8), 10, GFLAGS),
+	COMPOSITE(MCLK_SAI3_2CH_SRC, "mclk_sai3_2ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(48), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(8), 11, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI3_2CH, "mclk_sai3_2ch", mclk_sai3_2ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(48), 11, 2, MFLAGS,
+			RK3576_CLKGATE_CON(8), 12, GFLAGS),
+	GATE(HCLK_SAI3_2CH, "hclk_sai3_2ch", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(8), 14, GFLAGS),
+	COMPOSITE(MCLK_SAI4_2CH_SRC, "mclk_sai4_2ch_src", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(49), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(8), 15, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI4_2CH, "mclk_sai4_2ch", mclk_sai4_2ch_p, CLK_SET_RATE_PARENT,
+			RK3576_CLKSEL_CON(49), 11, 2, MFLAGS,
+			RK3576_CLKGATE_CON(9), 0, GFLAGS),
+	GATE(HCLK_SAI4_2CH, "hclk_sai4_2ch", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(9), 2, GFLAGS),
+	GATE(HCLK_ACDCDIG_DSM, "hclk_acdcdig_dsm", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(9), 3, GFLAGS),
+	GATE(MCLK_ACDCDIG_DSM, "mclk_acdcdig_dsm", "mclk_sai4_2ch", 0,
+			RK3576_CLKGATE_CON(9), 4, GFLAGS),
+	COMPOSITE(CLK_PDM1, "clk_pdm1", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(50), 9, 3, MFLAGS, 0, 9, DFLAGS,
+			RK3576_CLKGATE_CON(9), 5, GFLAGS),
+	GATE(HCLK_PDM1, "hclk_pdm1", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(9), 7, GFLAGS),
+	GATE(CLK_PDM1_OUT, "clk_pdm1_out", "clk_pdm1", 0,
+			RK3576_CLKGATE_CON(3), 5, GFLAGS),
+	COMPOSITE(MCLK_PDM1, "mclk_pdm1", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(51), 5, 3, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(9), 8, GFLAGS),
+	GATE(HCLK_SPDIF_TX0, "hclk_spdif_tx0", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(9), 9, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX0, "mclk_spdif_tx0", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(52), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(9), 10, GFLAGS),
+	GATE(HCLK_SPDIF_TX1, "hclk_spdif_tx1", "hclk_audio_root", 0,
+			RK3576_CLKGATE_CON(9), 11, GFLAGS),
+	COMPOSITE(MCLK_SPDIF_TX1, "mclk_spdif_tx1", audio_frac_int_p, 0,
+			RK3576_CLKSEL_CON(53), 8, 3, MFLAGS, 0, 8, DFLAGS,
+			RK3576_CLKGATE_CON(9), 12, GFLAGS),
+	GATE(CLK_SAI1_MCLKOUT, "clk_sai1_mclkout", "mclk_sai1_8ch", 0,
+			RK3576_CLKGATE_CON(9), 13, GFLAGS),
+	GATE(CLK_SAI2_MCLKOUT, "clk_sai2_mclkout", "mclk_sai2_2ch", 0,
+			RK3576_CLKGATE_CON(9), 14, GFLAGS),
+	GATE(CLK_SAI3_MCLKOUT, "clk_sai3_mclkout", "mclk_sai3_2ch", 0,
+			RK3576_CLKGATE_CON(9), 15, GFLAGS),
+	GATE(CLK_SAI4_MCLKOUT, "clk_sai4_mclkout", "mclk_sai4_2ch", 0,
+			RK3576_CLKGATE_CON(10), 0, GFLAGS),
+	GATE(CLK_SAI0_MCLKOUT, "clk_sai0_mclkout", "mclk_sai0_8ch", 0,
+			RK3576_CLKGATE_CON(10), 1, GFLAGS),
+
+	/* sdgmac */
+	COMPOSITE_NODIV(HCLK_SDGMAC_ROOT, "hclk_sdgmac_root", mux_200m_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(103), 0, 2, MFLAGS,
+			RK3576_CLKGATE_CON(42), 0, GFLAGS),
+	COMPOSITE(ACLK_SDGMAC_ROOT, "aclk_sdgmac_root", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(103), 7, 1, MFLAGS, 2, 5, DFLAGS,
+			RK3576_CLKGATE_CON(42), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_SDGMAC_ROOT, "pclk_sdgmac_root", mux_100m_50m_24m_p, 0,
+			RK3576_CLKSEL_CON(103), 8, 2, MFLAGS,
+			RK3576_CLKGATE_CON(42), 2, GFLAGS),
+	GATE(ACLK_GMAC0, "aclk_gmac0", "aclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(42), 7, GFLAGS),
+	GATE(ACLK_GMAC1, "aclk_gmac1", "aclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(42), 8, GFLAGS),
+	GATE(PCLK_GMAC0, "pclk_gmac0", "pclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(42), 9, GFLAGS),
+	GATE(PCLK_GMAC1, "pclk_gmac1", "pclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(42), 10, GFLAGS),
+	COMPOSITE(CCLK_SRC_SDIO, "cclk_src_sdio", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(104), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3576_CLKGATE_CON(42), 11, GFLAGS),
+	GATE(HCLK_SDIO, "hclk_sdio", "hclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(42), 12, GFLAGS),
+	COMPOSITE(CLK_GMAC1_PTP_REF_SRC, "clk_gmac1_ptp_ref_src", clk_gmac1_ptp_ref_src_p, 0,
+			RK3576_CLKSEL_CON(104), 13, 2, MFLAGS, 8, 5, DFLAGS,
+			RK3576_CLKGATE_CON(42), 15, GFLAGS),
+	COMPOSITE(CLK_GMAC0_PTP_REF_SRC, "clk_gmac0_ptp_ref_src", clk_gmac0_ptp_ref_src_p, 0,
+			RK3576_CLKSEL_CON(105), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(43), 0, GFLAGS),
+	GATE(CLK_GMAC1_PTP_REF, "clk_gmac1_ptp_ref", "clk_gmac1_ptp_ref_src", 0,
+			RK3576_CLKGATE_CON(42), 13, GFLAGS),
+	GATE(CLK_GMAC0_PTP_REF, "clk_gmac0_ptp_ref", "clk_gmac0_ptp_ref_src", 0,
+			RK3576_CLKGATE_CON(42), 14, GFLAGS),
+	COMPOSITE(CCLK_SRC_SDMMC0, "cclk_src_sdmmc0", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(105), 13, 2, MFLAGS, 7, 6, DFLAGS,
+			RK3576_CLKGATE_CON(43), 1, GFLAGS),
+	GATE(HCLK_SDMMC0, "hclk_sdmmc0", "hclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(43), 2, GFLAGS),
+	COMPOSITE(SCLK_FSPI1_X2, "sclk_fspi1_x2", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(106), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3576_CLKGATE_CON(43), 3, GFLAGS),
+	GATE(HCLK_FSPI1, "hclk_fspi1", "hclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(43), 4, GFLAGS),
+	COMPOSITE(ACLK_DSMC_ROOT, "aclk_dsmc_root", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3576_CLKSEL_CON(106), 13, 1, MFLAGS, 8, 5, DFLAGS,
+			RK3576_CLKGATE_CON(43), 5, GFLAGS),
+	GATE(ACLK_DSMC, "aclk_dsmc", "aclk_dsmc_root", 0,
+			RK3576_CLKGATE_CON(43), 7, GFLAGS),
+	GATE(PCLK_DSMC, "pclk_dsmc", "pclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(43), 8, GFLAGS),
+	COMPOSITE(CLK_DSMC_SYS, "clk_dsmc_sys", gpll_cpll_p, 0,
+			RK3576_CLKSEL_CON(107), 5, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(43), 9, GFLAGS),
+	GATE(HCLK_HSGPIO, "hclk_hsgpio", "hclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(43), 10, GFLAGS),
+	COMPOSITE(CLK_HSGPIO_TX, "clk_hsgpio_tx", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(107), 11, 2, MFLAGS, 6, 5, DFLAGS,
+			RK3576_CLKGATE_CON(43), 11, GFLAGS),
+	COMPOSITE(CLK_HSGPIO_RX, "clk_hsgpio_rx", gpll_cpll_24m_p, 0,
+			RK3576_CLKSEL_CON(108), 5, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3576_CLKGATE_CON(43), 12, GFLAGS),
+	GATE(ACLK_HSGPIO, "aclk_hsgpio", "aclk_sdgmac_root", 0,
+			RK3576_CLKGATE_CON(43), 13, GFLAGS),
+
+	/* phpphy */
+	GATE(PCLK_PHPPHY_ROOT, "pclk_phpphy_root", "pclk_bus_root", CLK_IS_CRITICAL,
+			RK3576_PHP_CLKGATE_CON(0), 2, GFLAGS),
+	GATE(PCLK_PCIE2_COMBOPHY0, "pclk_pcie2_combophy0", "pclk_phpphy_root", 0,
+			RK3576_PHP_CLKGATE_CON(0), 5, GFLAGS),
+	GATE(PCLK_PCIE2_COMBOPHY1, "pclk_pcie2_combophy1", "pclk_phpphy_root", 0,
+			RK3576_PHP_CLKGATE_CON(0), 7, GFLAGS),
+	COMPOSITE_NOMUX(CLK_PCIE_100M_SRC, "clk_pcie_100m_src", "ppll", 0,
+			RK3576_PHP_CLKSEL_CON(0), 2, 5, DFLAGS,
+			RK3576_PHP_CLKGATE_CON(1), 1, GFLAGS),
+	COMPOSITE_NOMUX(CLK_PCIE_100M_NDUTY_SRC, "clk_pcie_100m_nduty_src", "ppll", 0,
+			RK3576_PHP_CLKSEL_CON(0), 7, 5, DFLAGS,
+			RK3576_PHP_CLKGATE_CON(1), 2, GFLAGS),
+	COMPOSITE_NODIV(CLK_REF_PCIE0_PHY, "clk_ref_pcie0_phy", clk_ref_pcie0_phy_p, 0,
+			RK3576_PHP_CLKSEL_CON(0), 12, 2, MFLAGS,
+			RK3576_PHP_CLKGATE_CON(1), 5, GFLAGS),
+	COMPOSITE_NODIV(CLK_REF_PCIE1_PHY, "clk_ref_pcie1_phy", clk_ref_pcie0_phy_p, 0,
+			RK3576_PHP_CLKSEL_CON(0), 14, 2, MFLAGS,
+			RK3576_PHP_CLKGATE_CON(1), 8, GFLAGS),
+	COMPOSITE_NOMUX(CLK_REF_MPHY_26M, "clk_ref_mphy_26m", "ppll", CLK_IS_CRITICAL,
+			RK3576_PHP_CLKSEL_CON(1), 0, 8, DFLAGS,
+			RK3576_PHP_CLKGATE_CON(1), 9, GFLAGS),
+
+	/* pmu */
+	GATE(CLK_200M_PMU_SRC, "clk_200m_pmu_src", "clk_gpll_div6", 0,
+			RK3576_PMU_CLKGATE_CON(3), 2, GFLAGS),
+	COMPOSITE_NOMUX(CLK_100M_PMU_SRC, "clk_100m_pmu_src", "cpll", 0,
+			RK3576_PMU_CLKSEL_CON(4), 4, 5, DFLAGS,
+			RK3576_PMU_CLKGATE_CON(3), 3, GFLAGS),
+	FACTOR_GATE(CLK_50M_PMU_SRC, "clk_50m_pmu_src", "clk_100m_pmu_src", 0, 1, 2,
+			RK3576_PMU_CLKGATE_CON(3), 4, GFLAGS),
+	COMPOSITE_NODIV(HCLK_PMU1_ROOT, "hclk_pmu1_root", mux_pmu200m_pmu100m_pmu50m_24m_p, CLK_IS_CRITICAL,
+			RK3576_PMU_CLKSEL_CON(4), 0, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(3), 0, GFLAGS),
+	COMPOSITE_NODIV(HCLK_PMU_CM0_ROOT, "hclk_pmu_cm0_root", mux_pmu200m_pmu100m_pmu50m_24m_p, 0,
+			RK3576_PMU_CLKSEL_CON(4), 2, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(3), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_PMU0_ROOT, "pclk_pmu0_root", mux_pmu100m_pmu50m_24m_p, 0,
+			RK3576_PMU_CLKSEL_CON(20), 0, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(7), 0, GFLAGS),
+	GATE(PCLK_PMU0, "pclk_pmu0", "pclk_pmu0_root", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(PCLK_PMU1_ROOT, "pclk_pmu1_root", "pclk_pmu0_root", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(7), 9, GFLAGS),
+	GATE(PCLK_PMU1, "pclk_pmu1", "pclk_pmu1_root", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(3), 15, GFLAGS),
+	GATE(CLK_PMU1, "clk_pmu1", "xin24m", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(4), 2, GFLAGS),
+	GATE(PCLK_PMUPHY_ROOT, "pclk_pmuphy_root", "pclk_pmu1_root", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(PCLK_HDPTX_APB, "pclk_hdptx_apb", "pclk_pmuphy_root", 0,
+			RK3576_PMU_CLKGATE_CON(0), 1, GFLAGS),
+	GATE(PCLK_MIPI_DCPHY, "pclk_mipi_dcphy", "pclk_pmuphy_root", 0,
+			RK3576_PMU_CLKGATE_CON(0), 2, GFLAGS),
+	GATE(PCLK_CSIDPHY, "pclk_csidphy", "pclk_pmuphy_root", 0,
+			RK3576_PMU_CLKGATE_CON(0), 8, GFLAGS),
+	GATE(PCLK_USBDPPHY, "pclk_usbdpphy", "pclk_pmuphy_root", 0,
+			RK3576_PMU_CLKGATE_CON(0), 12, GFLAGS),
+	COMPOSITE_NOMUX(CLK_PMUPHY_REF_SRC, "clk_pmuphy_ref_src", "cpll", 0,
+			RK3576_PMU_CLKSEL_CON(0), 0, 5, DFLAGS,
+			RK3576_PMU_CLKGATE_CON(0), 13, GFLAGS),
+	GATE(CLK_USBDP_COMBO_PHY_IMMORTAL, "clk_usbdp_combo_phy_immortal", "xin24m", 0,
+			RK3576_PMU_CLKGATE_CON(0), 15, GFLAGS),
+	GATE(CLK_HDMITXHPD, "clk_hdmitxhpd", "xin24m", 0,
+			RK3576_PMU_CLKGATE_CON(1), 13, GFLAGS),
+	GATE(PCLK_MPHY, "pclk_mphy", "pclk_pmuphy_root", 0,
+			RK3576_PMU_CLKGATE_CON(2), 0, GFLAGS),
+	MUX(CLK_REF_OSC_MPHY, "clk_ref_osc_mphy", clk_ref_osc_mphy_p, 0,
+			RK3576_PMU_CLKSEL_CON(3), 0, 2, MFLAGS),
+	GATE(CLK_REF_UFS_CLKOUT, "clk_ref_ufs_clkout", "clk_ref_osc_mphy", 0,
+			RK3576_PMU_CLKGATE_CON(2), 5, GFLAGS),
+	GATE(FCLK_PMU_CM0_CORE, "fclk_pmu_cm0_core", "hclk_pmu_cm0_root", 0,
+			RK3576_PMU_CLKGATE_CON(3), 12, GFLAGS),
+	COMPOSITE(CLK_PMU_CM0_RTC, "clk_pmu_cm0_rtc", mux_24m_32k_p, 0,
+			RK3576_PMU_CLKSEL_CON(4), 14, 1, MFLAGS, 9, 5, DFLAGS,
+			RK3576_PMU_CLKGATE_CON(3), 14, GFLAGS),
+	GATE(PCLK_PMU1WDT, "pclk_pmu1wdt", "pclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(4), 5, GFLAGS),
+	COMPOSITE_NODIV(TCLK_PMU1WDT, "tclk_pmu1wdt", mux_24m_32k_p, 0,
+			RK3576_PMU_CLKSEL_CON(4), 15, 1, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(4), 6, GFLAGS),
+	GATE(PCLK_PMUTIMER, "pclk_pmutimer", "pclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(4), 7, GFLAGS),
+	COMPOSITE_NODIV(CLK_PMUTIMER_ROOT, "clk_pmutimer_root", mux_pmu100m_24m_32k_p, 0,
+			RK3576_PMU_CLKSEL_CON(5), 0, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(4), 8, GFLAGS),
+	GATE(CLK_PMUTIMER0, "clk_pmutimer0", "clk_pmutimer_root", 0,
+			RK3576_PMU_CLKGATE_CON(4), 9, GFLAGS),
+	GATE(CLK_PMUTIMER1, "clk_pmutimer1", "clk_pmutimer_root", 0,
+			RK3576_PMU_CLKGATE_CON(4), 10, GFLAGS),
+	GATE(PCLK_PMU1PWM, "pclk_pmu1pwm", "pclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(4), 11, GFLAGS),
+	COMPOSITE_NODIV(CLK_PMU1PWM, "clk_pmu1pwm", mux_pmu100m_pmu50m_24m_p, 0,
+			RK3576_PMU_CLKSEL_CON(5), 2, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(4), 12, GFLAGS),
+	GATE(CLK_PMU1PWM_OSC, "clk_pmu1pwm_osc", "xin24m", 0,
+			RK3576_PMU_CLKGATE_CON(4), 13, GFLAGS),
+	GATE(PCLK_I2C0, "pclk_i2c0", "pclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(5), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C0, "clk_i2c0", mux_pmu200m_pmu100m_pmu50m_24m_p, 0,
+			RK3576_PMU_CLKSEL_CON(6), 7, 2, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(5), 2, GFLAGS),
+	COMPOSITE_NODIV(SCLK_UART1, "sclk_uart1", uart1_p, 0,
+			RK3576_PMU_CLKSEL_CON(8), 0, 1, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(5), 5, GFLAGS),
+	GATE(PCLK_UART1, "pclk_uart1", "pclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(5), 6, GFLAGS),
+	GATE(CLK_PDM0, "clk_pdm0", "clk_pdm0_src_top", 0,
+			RK3576_PMU_CLKGATE_CON(5), 13, GFLAGS),
+	GATE(HCLK_PDM0, "hclk_pdm0", "hclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(5), 15, GFLAGS),
+	GATE(MCLK_PDM0, "mclk_pdm0", "mclk_pdm0_src_top", 0,
+			RK3576_PMU_CLKGATE_CON(6), 0, GFLAGS),
+	GATE(HCLK_VAD, "hclk_vad", "hclk_pmu1_root", 0,
+			RK3576_PMU_CLKGATE_CON(6), 1, GFLAGS),
+	GATE(CLK_PDM0_OUT, "clk_pdm0_out", "clk_pdm0", 0,
+			RK3576_PMU_CLKGATE_CON(6), 8, GFLAGS),
+	COMPOSITE(CLK_HPTIMER_SRC, "clk_hptimer_src", cpll_24m_p, CLK_IS_CRITICAL,
+			RK3576_PMU_CLKSEL_CON(11), 6, 1, MFLAGS, 1, 5, DFLAGS,
+			RK3576_PMU_CLKGATE_CON(6), 10, GFLAGS),
+	GATE(PCLK_GPIO0, "pclk_gpio0", "pclk_pmu0_root", 0,
+			RK3576_PMU_CLKGATE_CON(7), 6, GFLAGS),
+	COMPOSITE_NODIV(DBCLK_GPIO0, "dbclk_gpio0", mux_24m_32k_p, 0,
+			RK3576_PMU_CLKSEL_CON(20), 2, 1, MFLAGS,
+			RK3576_PMU_CLKGATE_CON(7), 7, GFLAGS),
+	GATE(CLK_OSC0_PMU1, "clk_osc0_pmu1", "xin24m", CLK_IS_CRITICAL,
+			RK3576_PMU_CLKGATE_CON(7), 8, GFLAGS),
+	GATE(CLK_PMU1PWM_RC, "clk_pmu1pwm_rc", "clk_pvtm_clkout", 0,
+			RK3576_PMU_CLKGATE_CON(5), 7, GFLAGS),
+
+	/* phy ref */
+	MUXGRF(CLK_PHY_REF_SRC, "clk_phy_ref_src", clk_phy_ref_src_p,  0,
+			RK3576_PMU0_GRF_OSC_CON6, 4, 1, MFLAGS),
+	MUXGRF(CLK_USBPHY_REF_SRC, "clk_usbphy_ref_src", clk_usbphy_ref_src_p,  0,
+			RK3576_PMU0_GRF_OSC_CON6, 2, 1, MFLAGS),
+	MUXGRF(CLK_CPLL_REF_SRC, "clk_cpll_ref_src", clk_cpll_ref_src_p,  0,
+			RK3576_PMU0_GRF_OSC_CON6, 1, 1, MFLAGS),
+	MUXGRF(CLK_AUPLL_REF_SRC, "clk_aupll_ref_src", clk_aupll_ref_src_p,  0,
+			RK3576_PMU0_GRF_OSC_CON6, 0, 1, MFLAGS),
+
+	/* secure ns */
+	COMPOSITE_NODIV(ACLK_SECURE_NS, "aclk_secure_ns", mux_350m_175m_116m_24m_p, CLK_IS_CRITICAL,
+			RK3576_SECURE_NS_CLKSEL_CON(0), 0, 2, MFLAGS,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 0, GFLAGS),
+	COMPOSITE_NODIV(HCLK_SECURE_NS, "hclk_secure_ns", mux_175m_116m_58m_24m_p, CLK_IS_CRITICAL,
+			RK3576_SECURE_NS_CLKSEL_CON(0), 2, 2, MFLAGS,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 1, GFLAGS),
+	COMPOSITE_NODIV(PCLK_SECURE_NS, "pclk_secure_ns", mux_116m_58m_24m_p, CLK_IS_CRITICAL,
+			RK3576_SECURE_NS_CLKSEL_CON(0), 4, 2, MFLAGS,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 2, GFLAGS),
+	GATE(HCLK_CRYPTO_NS, "hclk_crypto_ns", "hclk_secure_ns", 0,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 3, GFLAGS),
+	GATE(PCLK_OTPC_NS, "pclk_otpc_ns", "pclk_secure_ns", 0,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 8, GFLAGS),
+	GATE(CLK_OTPC_NS, "clk_otpc_ns", "xin24m", 0,
+			RK3576_SECURE_NS_CLKGATE_CON(0), 9, GFLAGS),
+	GATE(ACLK_CRYPTO_NS, "aclk_crypto_ns", "aclk_secure_s", 0,
+			RK3576_NON_SECURE_GATING_CON00, 14, GFLAGS),
+	GATE(HCLK_TRNG_NS, "hclk_trng_ns", "hclk_secure_s", 0,
+			RK3576_NON_SECURE_GATING_CON00, 13, GFLAGS),
+	GATE(CLK_PKA_CRYPTO_NS, "clk_pka_crypto_ns", "clk_pka_crypto_s", 0,
+			RK3576_NON_SECURE_GATING_CON00, 1, GFLAGS),
+
+	/* io */
+	GATE(CLK_VICAP_I0CLK, "clk_vicap_i0clk", "clk_csihost0_clkdata_i", 0,
+			RK3576_CLKGATE_CON(59), 1, GFLAGS),
+	GATE(CLK_VICAP_I1CLK, "clk_vicap_i1clk", "clk_csihost1_clkdata_i", 0,
+			RK3576_CLKGATE_CON(59), 2, GFLAGS),
+	GATE(CLK_VICAP_I2CLK, "clk_vicap_i2clk", "clk_csihost2_clkdata_i", 0,
+			RK3576_CLKGATE_CON(59), 3, GFLAGS),
+	GATE(CLK_VICAP_I3CLK, "clk_vicap_i3clk", "clk_csihost3_clkdata_i", 0,
+			RK3576_CLKGATE_CON(59), 4, GFLAGS),
+	GATE(CLK_VICAP_I4CLK, "clk_vicap_i4clk", "clk_csihost4_clkdata_i", 0,
+			RK3576_CLKGATE_CON(59), 5, GFLAGS),
+};
+
+static void __init rk3576_clk_init(struct device_node *np)
+{
+	struct rockchip_clk_provider *ctx;
+	void __iomem *reg_base;
+	struct clk **clks;
+
+	reg_base = of_iomap(np, 0);
+	if (!reg_base) {
+		pr_err("%s: could not map cru region\n", __func__);
+		return;
+	}
+
+	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	if (IS_ERR(ctx)) {
+		pr_err("%s: rockchip clk init failed\n", __func__);
+		iounmap(reg_base);
+		return;
+	}
+	clks = ctx->clk_data.clks;
+
+	rockchip_clk_register_plls(ctx, rk3576_pll_clks,
+				   ARRAY_SIZE(rk3576_pll_clks),
+				   RK3576_GRF_SOC_STATUS0);
+
+	rockchip_clk_register_armclk(ctx, ARMCLK_L, "armclk_l",
+			mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
+			&rk3576_cpulclk_data, rk3576_cpulclk_rates,
+			ARRAY_SIZE(rk3576_cpulclk_rates));
+	rockchip_clk_register_armclk(ctx, ARMCLK_B, "armclk_b",
+			mux_armclkb_p, ARRAY_SIZE(mux_armclkb_p),
+			&rk3576_cpubclk_data, rk3576_cpubclk_rates,
+			ARRAY_SIZE(rk3576_cpubclk_rates));
+
+	rockchip_clk_register_branches(ctx, rk3576_clk_branches,
+				       ARRAY_SIZE(rk3576_clk_branches));
+
+	rockchip_register_softrst(np, SRST_NR_RSTS, reg_base + RK3576_SOFTRST_CON(0),
+				  ROCKCHIP_SOFTRST_HIWORD_MASK);
+
+	rockchip_register_restart_notifier(ctx, RK3576_GLB_SRST_FST, NULL);
+
+	rockchip_clk_of_add_provider(np, ctx);
+}
+
+CLK_OF_DECLARE(rk3576_cru, "rockchip,rk3576-cru", rk3576_clk_init);
+
+#ifdef MODULE
+struct clk_rk3576_inits {
+	void (*inits)(struct device_node *np);
+};
+
+static const struct clk_rk3576_inits clk_rk3576_cru_init = {
+	.inits = rk3576_clk_init,
+};
+
+static const struct of_device_id clk_rk3576_match_table[] = {
+	{
+		.compatible = "rockchip,rk3576-cru",
+		.data = &clk_rk3576_cru_init,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, clk_rk3576_match_table);
+
+static int clk_rk3576_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	const struct of_device_id *match;
+	const struct clk_rk3576_inits *init_data;
+
+	match = of_match_device(clk_rk3576_match_table, &pdev->dev);
+	if (!match || !match->data)
+		return -EINVAL;
+
+	init_data = match->data;
+	if (init_data->inits)
+		init_data->inits(np);
+
+	return 0;
+}
+
+static struct platform_driver clk_rk3576_driver = {
+	.probe		= clk_rk3576_probe,
+	.driver		= {
+		.name	= "clk-rk3576",
+		.of_match_table = clk_rk3576_match_table,
+		.suppress_bind_attrs = true,
+	},
+};
+module_platform_driver(clk_rk3576_driver);
+
+MODULE_DESCRIPTION("Rockchip RK3576 Clock Driver");
+MODULE_LICENSE("GPL");
+#endif /* MODULE */
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index fd3b476dedda9..420d9960e8cd0 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -235,6 +235,58 @@ struct clk;
 #define RK3568_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x180)
 #define RK3568_PMU_SOFTRST_CON(x)	((x) * 0x4 + 0x200)
 
+#define RK3576_PHP_CRU_BASE		0x8000
+#define RK3576_SECURE_NS_CRU_BASE	0x10000
+#define RK3576_PMU_CRU_BASE		0x20000
+#define RK3576_BIGCORE_CRU_BASE		0x38000
+#define RK3576_LITCORE_CRU_BASE		0x40000
+#define RK3576_CCI_CRU_BASE		0x48000
+
+#define RK3576_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3576_MODE_CON0		0x280
+#define RK3576_BPLL_MODE_CON0		(RK3576_BIGCORE_CRU_BASE + 0x280)
+#define RK3576_LPLL_MODE_CON0		(RK3576_LITCORE_CRU_BASE + 0x280)
+#define RK3576_PPLL_MODE_CON0		(RK3576_PHP_CRU_BASE + 0x280)
+#define RK3576_CLKSEL_CON(x)		((x) * 0x4 + 0x300)
+#define RK3576_CLKGATE_CON(x)		((x) * 0x4 + 0x800)
+#define RK3576_SOFTRST_CON(x)		((x) * 0x4 + 0xa00)
+#define RK3576_GLB_CNT_TH		0xc00
+#define RK3576_GLB_SRST_FST		0xc08
+#define RK3576_GLB_SRST_SND		0xc0c
+#define RK3576_GLB_RST_CON		0xc10
+#define RK3576_GLB_RST_ST		0xc04
+#define RK3576_SDIO_CON0		0xC24
+#define RK3576_SDIO_CON1		0xC28
+#define RK3576_SDMMC_CON0		0xC30
+#define RK3576_SDMMC_CON1		0xC34
+
+#define RK3576_PHP_CLKSEL_CON(x)	((x) * 0x4 + RK3576_PHP_CRU_BASE + 0x300)
+#define RK3576_PHP_CLKGATE_CON(x)	((x) * 0x4 + RK3576_PHP_CRU_BASE + 0x800)
+#define RK3576_PHP_SOFTRST_CON(x)	((x) * 0x4 + RK3576_PHP_CRU_BASE + 0xa00)
+
+#define RK3576_PMU_PLL_CON(x)		((x) * 0x4 + RK3576_PHP_CRU_BASE)
+#define RK3576_PMU_CLKSEL_CON(x)	((x) * 0x4 + RK3576_PMU_CRU_BASE + 0x300)
+#define RK3576_PMU_CLKGATE_CON(x)	((x) * 0x4 + RK3576_PMU_CRU_BASE + 0x800)
+#define RK3576_PMU_SOFTRST_CON(x)	((x) * 0x4 + RK3576_PMU_CRU_BASE + 0xa00)
+
+#define RK3576_SECURE_NS_CLKSEL_CON(x)	((x) * 0x4 + RK3576_SECURE_NS_CRU_BASE + 0x300)
+#define RK3576_SECURE_NS_CLKGATE_CON(x)	((x) * 0x4 + RK3576_SECURE_NS_CRU_BASE + 0x800)
+#define RK3576_SECURE_NS_SOFTRST_CON(x)	((x) * 0x4 + RK3576_SECURE_NS_CRU_BASE + 0xa00)
+
+#define RK3576_CCI_CLKSEL_CON(x)	((x) * 0x4 + RK3576_CCI_CRU_BASE + 0x300)
+#define RK3576_CCI_CLKGATE_CON(x)	((x) * 0x4 + RK3576_CCI_CRU_BASE + 0x800)
+#define RK3576_CCI_SOFTRST_CON(x)	((x) * 0x4 + RK3576_CCI_CRU_BASE + 0xa00)
+
+#define RK3576_BPLL_CON(x)		((x) * 0x4 + RK3576_BIGCORE_CRU_BASE)
+#define RK3576_BIGCORE_CLKSEL_CON(x)	((x) * 0x4 + RK3576_BIGCORE_CRU_BASE + 0x300)
+#define RK3576_BIGCORE_CLKGATE_CON(x)	((x) * 0x4 + RK3576_BIGCORE_CRU_BASE + 0x800)
+#define RK3576_BIGCORE_SOFTRST_CON(x)	((x) * 0x4 + RK3576_BIGCORE_CRU_BASE + 0xa00)
+#define RK3576_LPLL_CON(x)		((x) * 0x4 + RK3576_CCI_CRU_BASE)
+#define RK3576_LITCORE_CLKSEL_CON(x)	((x) * 0x4 + RK3576_LITCORE_CRU_BASE + 0x300)
+#define RK3576_LITCORE_CLKGATE_CON(x)	((x) * 0x4 + RK3576_LITCORE_CRU_BASE + 0x800)
+#define RK3576_LITCORE_SOFTRST_CON(x)	((x) * 0x4 + RK3576_LITCORE_CRU_BASE + 0xa00)
+#define RK3576_NON_SECURE_GATING_CON00	0xc48
+
 #define RK3588_PHP_CRU_BASE		0x8000
 #define RK3588_PMU_CRU_BASE		0x30000
 #define RK3588_BIGCORE0_CRU_BASE	0x50000
-- 
2.46.0


