Return-Path: <devicetree+bounces-23503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C421A80B6A7
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 22:57:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D96C81C208E0
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 21:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A681D691;
	Sat,  9 Dec 2023 21:56:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45AED10F1;
	Sat,  9 Dec 2023 13:56:44 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rC5J9-0000B2-14;
	Sat, 09 Dec 2023 21:56:24 +0000
Date: Sat, 9 Dec 2023 21:56:20 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Sabrina Dubroca <sd@queasysnail.net>,
	Daniel Golle <daniel@makrotopia.org>,
	Jianhui Zhao <zhaojh329@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	"Garmin.Chang" <Garmin.Chang@mediatek.com>,
	Sam Shih <sam.shih@mediatek.com>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	James Liao <jamesjj.liao@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org
Subject: [PATCH v4 4/4] clk: mediatek: add drivers for MT7988 SoC
Message-ID: <879b5bbcb165aa3f059a41218142b27e5f64597f.1702158423.git.daniel@makrotopia.org>
References: <097e82b0d66570763d64be1715517d8b032fcf95.1702158423.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <097e82b0d66570763d64be1715517d8b032fcf95.1702158423.git.daniel@makrotopia.org>

From: Sam Shih <sam.shih@mediatek.com>

Add APMIXED, ETH, INFRACFG and TOPCKGEN clock drivers which are
typical MediaTek designs.

Also add driver for XFIPLL clock generating the 156.25MHz clock for
the XFI SerDes. It needs an undocumented software workaround and has
an unknown internal design.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v4:
 * make use of existing GATE_MTK_FLAGS macro
 * reformat to max. 100 columns
 * cosmetics

v3: use git --from ...
v2: no changes


 drivers/clk/mediatek/Kconfig               |   9 +
 drivers/clk/mediatek/Makefile              |   5 +
 drivers/clk/mediatek/clk-mt7988-apmixed.c  | 102 +++++++
 drivers/clk/mediatek/clk-mt7988-eth.c      | 133 +++++++++
 drivers/clk/mediatek/clk-mt7988-infracfg.c | 274 +++++++++++++++++
 drivers/clk/mediatek/clk-mt7988-topckgen.c | 325 +++++++++++++++++++++
 drivers/clk/mediatek/clk-mt7988-xfipll.c   |  78 +++++
 7 files changed, 926 insertions(+)
 create mode 100644 drivers/clk/mediatek/clk-mt7988-apmixed.c
 create mode 100644 drivers/clk/mediatek/clk-mt7988-eth.c
 create mode 100644 drivers/clk/mediatek/clk-mt7988-infracfg.c
 create mode 100644 drivers/clk/mediatek/clk-mt7988-topckgen.c
 create mode 100644 drivers/clk/mediatek/clk-mt7988-xfipll.c

diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
index 48b42d11111cd..70a005e7e1b18 100644
--- a/drivers/clk/mediatek/Kconfig
+++ b/drivers/clk/mediatek/Kconfig
@@ -423,6 +423,15 @@ config COMMON_CLK_MT7986_ETHSYS
 	  This driver adds support for clocks for Ethernet and SGMII
 	  required on MediaTek MT7986 SoC.
 
+config COMMON_CLK_MT7988
+	tristate "Clock driver for MediaTek MT7988"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	select COMMON_CLK_MEDIATEK
+	default ARCH_MEDIATEK
+	help
+	  This driver supports MediaTek MT7988 basic clocks and clocks
+	  required for various periperals found on this SoC.
+
 config COMMON_CLK_MT8135
 	tristate "Clock driver for MediaTek MT8135"
 	depends on (ARCH_MEDIATEK && ARM) || COMPILE_TEST
diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
index dbeaa5b41177d..eeccfa039896f 100644
--- a/drivers/clk/mediatek/Makefile
+++ b/drivers/clk/mediatek/Makefile
@@ -62,6 +62,11 @@ obj-$(CONFIG_COMMON_CLK_MT7986) += clk-mt7986-apmixed.o
 obj-$(CONFIG_COMMON_CLK_MT7986) += clk-mt7986-topckgen.o
 obj-$(CONFIG_COMMON_CLK_MT7986) += clk-mt7986-infracfg.o
 obj-$(CONFIG_COMMON_CLK_MT7986_ETHSYS) += clk-mt7986-eth.o
+obj-$(CONFIG_COMMON_CLK_MT7988) += clk-mt7988-apmixed.o
+obj-$(CONFIG_COMMON_CLK_MT7988) += clk-mt7988-topckgen.o
+obj-$(CONFIG_COMMON_CLK_MT7988) += clk-mt7988-infracfg.o
+obj-$(CONFIG_COMMON_CLK_MT7988) += clk-mt7988-eth.o
+obj-$(CONFIG_COMMON_CLK_MT7988) += clk-mt7988-xfipll.o
 obj-$(CONFIG_COMMON_CLK_MT8135) += clk-mt8135-apmixedsys.o clk-mt8135.o
 obj-$(CONFIG_COMMON_CLK_MT8167) += clk-mt8167-apmixedsys.o clk-mt8167.o
 obj-$(CONFIG_COMMON_CLK_MT8167_AUDSYS) += clk-mt8167-aud.o
diff --git a/drivers/clk/mediatek/clk-mt7988-apmixed.c b/drivers/clk/mediatek/clk-mt7988-apmixed.c
new file mode 100644
index 0000000000000..02eb6354b01a8
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt7988-apmixed.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ * Author: Sam Shih <sam.shih@mediatek.com>
+ * Author: Xiufeng Li <Xiufeng.Li@mediatek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "clk-mtk.h"
+#include "clk-gate.h"
+#include "clk-mux.h"
+#include "clk-pll.h"
+#include <dt-bindings/clock/mediatek,mt7988-clk.h>
+
+#define MT7988_PLL_FMAX (2500UL * MHZ)
+#define MT7988_PCW_CHG_SHIFT 2
+
+#define PLL(_id, _name, _reg, _pwr_reg, _en_mask, _flags, _rst_bar_mask, _pcwbits, _pd_reg,      \
+	    _pd_shift, _tuner_reg, _tuner_en_reg, _tuner_en_bit, _pcw_reg, _pcw_shift,           \
+	    _pcw_chg_reg)                                                                        \
+	{                                                                                        \
+		.id = _id, .name = _name, .reg = _reg, .pwr_reg = _pwr_reg, .en_mask = _en_mask, \
+		.flags = _flags, .rst_bar_mask = BIT(_rst_bar_mask), .fmax = MT7988_PLL_FMAX,    \
+		.pcwbits = _pcwbits, .pd_reg = _pd_reg, .pd_shift = _pd_shift,                   \
+		.tuner_reg = _tuner_reg, .tuner_en_reg = _tuner_en_reg,                          \
+		.tuner_en_bit = _tuner_en_bit, .pcw_reg = _pcw_reg, .pcw_shift = _pcw_shift,     \
+		.pcw_chg_reg = _pcw_chg_reg, .pcw_chg_shift = MT7988_PCW_CHG_SHIFT,              \
+		.parent_name = "clkxtal",                                                        \
+	}
+
+static const struct mtk_pll_data plls[] = {
+	PLL(CLK_APMIXED_NETSYSPLL, "netsyspll", 0x0104, 0x0110, 0x00000001, 0, 0, 32, 0x0104, 4, 0,
+	    0, 0, 0x0108, 0, 0x0104),
+	PLL(CLK_APMIXED_MPLL, "mpll", 0x0114, 0x0120, 0xff000001, HAVE_RST_BAR, 23, 32, 0x0114, 4,
+	    0, 0, 0, 0x0118, 0, 0x0114),
+	PLL(CLK_APMIXED_MMPLL, "mmpll", 0x0124, 0x0130, 0xff000001, HAVE_RST_BAR, 23, 32, 0x0124, 4,
+	    0, 0, 0, 0x0128, 0, 0x0124),
+	PLL(CLK_APMIXED_APLL2, "apll2", 0x0134, 0x0140, 0x00000001, 0, 0, 32, 0x0134, 4, 0x0704,
+	    0x0700, 1, 0x0138, 0, 0x0134),
+	PLL(CLK_APMIXED_NET1PLL, "net1pll", 0x0144, 0x0150, 0xff000001, HAVE_RST_BAR, 23, 32,
+	    0x0144, 4, 0, 0, 0, 0x0148, 0, 0x0144),
+	PLL(CLK_APMIXED_NET2PLL, "net2pll", 0x0154, 0x0160, 0xff000001, (HAVE_RST_BAR | PLL_AO), 23,
+	    32, 0x0154, 4, 0, 0, 0, 0x0158, 0, 0x0154),
+	PLL(CLK_APMIXED_WEDMCUPLL, "wedmcupll", 0x0164, 0x0170, 0x00000001, 0, 0, 32, 0x0164, 4, 0,
+	    0, 0, 0x0168, 0, 0x0164),
+	PLL(CLK_APMIXED_SGMPLL, "sgmpll", 0x0174, 0x0180, 0x00000001, 0, 0, 32, 0x0174, 4, 0, 0, 0,
+	    0x0178, 0, 0x0174),
+	PLL(CLK_APMIXED_ARM_B, "arm_b", 0x0204, 0x0210, 0xff000001, (HAVE_RST_BAR | PLL_AO), 23, 32,
+	    0x0204, 4, 0, 0, 0, 0x0208, 0, 0x0204),
+	PLL(CLK_APMIXED_CCIPLL2_B, "ccipll2_b", 0x0214, 0x0220, 0xff000001, HAVE_RST_BAR, 23, 32,
+	    0x0214, 4, 0, 0, 0, 0x0218, 0, 0x0214),
+	PLL(CLK_APMIXED_USXGMIIPLL, "usxgmiipll", 0x0304, 0x0310, 0xff000001, HAVE_RST_BAR, 23, 32,
+	    0x0304, 4, 0, 0, 0, 0x0308, 0, 0x0304),
+	PLL(CLK_APMIXED_MSDCPLL, "msdcpll", 0x0314, 0x0320, 0x00000001, 0, 0, 32, 0x0314, 4, 0, 0,
+	    0, 0x0318, 0, 0x0314),
+};
+
+static const struct of_device_id of_match_clk_mt7988_apmixed[] = {
+	{ .compatible = "mediatek,mt7988-apmixedsys" },
+	{ /* sentinel */ }
+};
+
+static int clk_mt7988_apmixed_probe(struct platform_device *pdev)
+{
+	struct clk_hw_onecell_data *clk_data;
+	struct device_node *node = pdev->dev.of_node;
+	int r;
+
+	clk_data = mtk_alloc_clk_data(ARRAY_SIZE(plls));
+	if (!clk_data)
+		return -ENOMEM;
+
+	r = mtk_clk_register_plls(node, plls, ARRAY_SIZE(plls), clk_data);
+	if (r)
+		goto free_apmixed_data;
+
+	r = of_clk_add_hw_provider(node, of_clk_hw_onecell_get, clk_data);
+	if (r)
+		goto unregister_plls;
+
+	return r;
+
+unregister_plls:
+	mtk_clk_unregister_plls(plls, ARRAY_SIZE(plls), clk_data);
+free_apmixed_data:
+	mtk_free_clk_data(clk_data);
+	return r;
+}
+
+static struct platform_driver clk_mt7988_apmixed_drv = {
+	.probe = clk_mt7988_apmixed_probe,
+	.driver = {
+		.name = "clk-mt7988-apmixed",
+		.of_match_table = of_match_clk_mt7988_apmixed,
+	},
+};
+builtin_platform_driver(clk_mt7988_apmixed_drv);
+MODULE_LICENSE("GPL");
diff --git a/drivers/clk/mediatek/clk-mt7988-eth.c b/drivers/clk/mediatek/clk-mt7988-eth.c
new file mode 100644
index 0000000000000..49bfaba2827a3
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt7988-eth.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ * Author: Sam Shih <sam.shih@mediatek.com>
+ * Author: Xiufeng Li <Xiufeng.Li@mediatek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "clk-mtk.h"
+#include "clk-gate.h"
+#include <dt-bindings/clock/mediatek,mt7988-clk.h>
+
+static const struct mtk_gate_regs ethdma_cg_regs = {
+	.set_ofs = 0x30,
+	.clr_ofs = 0x30,
+	.sta_ofs = 0x30,
+};
+
+#define GATE_ETHDMA(_id, _name, _parent, _shift)                                           \
+	{                                                                                  \
+		.id = _id, .name = _name, .parent_name = _parent, .regs = &ethdma_cg_regs, \
+		.shift = _shift, .ops = &mtk_clk_gate_ops_no_setclr_inv,                   \
+	}
+
+static const struct mtk_gate ethdma_clks[] = {
+	GATE_ETHDMA(CLK_ETHDMA_XGP1_EN, "ethdma_xgp1_en", "top_xtal", 0),
+	GATE_ETHDMA(CLK_ETHDMA_XGP2_EN, "ethdma_xgp2_en", "top_xtal", 1),
+	GATE_ETHDMA(CLK_ETHDMA_XGP3_EN, "ethdma_xgp3_en", "top_xtal", 2),
+	GATE_ETHDMA(CLK_ETHDMA_FE_EN, "ethdma_fe_en", "netsys_2x_sel", 6),
+	GATE_ETHDMA(CLK_ETHDMA_GP2_EN, "ethdma_gp2_en", "top_xtal", 7),
+	GATE_ETHDMA(CLK_ETHDMA_GP1_EN, "ethdma_gp1_en", "top_xtal", 8),
+	GATE_ETHDMA(CLK_ETHDMA_GP3_EN, "ethdma_gp3_en", "top_xtal", 10),
+	GATE_ETHDMA(CLK_ETHDMA_ESW_EN, "ethdma_esw_en", "netsys_gsw_sel", 16),
+	GATE_ETHDMA(CLK_ETHDMA_CRYPT0_EN, "ethdma_crypt0_en", "eip197_sel", 29),
+};
+
+static const struct mtk_clk_desc ethdma_desc = {
+	.clks = ethdma_clks,
+	.num_clks = ARRAY_SIZE(ethdma_clks),
+};
+
+static const struct mtk_gate_regs sgmii0_cg_regs = {
+	.set_ofs = 0xe4,
+	.clr_ofs = 0xe4,
+	.sta_ofs = 0xe4,
+};
+
+#define GATE_SGMII0(_id, _name, _parent, _shift)                                           \
+	{                                                                                  \
+		.id = _id, .name = _name, .parent_name = _parent, .regs = &sgmii0_cg_regs, \
+		.shift = _shift, .ops = &mtk_clk_gate_ops_no_setclr_inv,                   \
+	}
+
+static const struct mtk_gate sgmii0_clks[] = {
+	GATE_SGMII0(CLK_SGM0_TX_EN, "sgm0_tx_en", "top_xtal", 2),
+	GATE_SGMII0(CLK_SGM0_RX_EN, "sgm0_rx_en", "top_xtal", 3),
+};
+
+static const struct mtk_clk_desc sgmii0_desc = {
+	.clks = sgmii0_clks,
+	.num_clks = ARRAY_SIZE(sgmii0_clks),
+};
+
+static const struct mtk_gate_regs sgmii1_cg_regs = {
+	.set_ofs = 0xe4,
+	.clr_ofs = 0xe4,
+	.sta_ofs = 0xe4,
+};
+
+#define GATE_SGMII1(_id, _name, _parent, _shift)                                           \
+	{                                                                                  \
+		.id = _id, .name = _name, .parent_name = _parent, .regs = &sgmii1_cg_regs, \
+		.shift = _shift, .ops = &mtk_clk_gate_ops_no_setclr_inv,                   \
+	}
+
+static const struct mtk_gate sgmii1_clks[] = {
+	GATE_SGMII1(CLK_SGM1_TX_EN, "sgm1_tx_en", "top_xtal", 2),
+	GATE_SGMII1(CLK_SGM1_RX_EN, "sgm1_rx_en", "top_xtal", 3),
+};
+
+static const struct mtk_clk_desc sgmii1_desc = {
+	.clks = sgmii1_clks,
+	.num_clks = ARRAY_SIZE(sgmii1_clks),
+};
+
+static const struct mtk_gate_regs ethwarp_cg_regs = {
+	.set_ofs = 0x14,
+	.clr_ofs = 0x14,
+	.sta_ofs = 0x14,
+};
+
+#define GATE_ETHWARP(_id, _name, _parent, _shift)                                           \
+	{                                                                                   \
+		.id = _id, .name = _name, .parent_name = _parent, .regs = &ethwarp_cg_regs, \
+		.shift = _shift, .ops = &mtk_clk_gate_ops_no_setclr_inv,                    \
+	}
+
+static const struct mtk_gate ethwarp_clks[] = {
+	GATE_ETHWARP(CLK_ETHWARP_WOCPU2_EN, "ethwarp_wocpu2_en", "netsys_mcu_sel", 13),
+	GATE_ETHWARP(CLK_ETHWARP_WOCPU1_EN, "ethwarp_wocpu1_en", "netsys_mcu_sel", 14),
+	GATE_ETHWARP(CLK_ETHWARP_WOCPU0_EN, "ethwarp_wocpu0_en", "netsys_mcu_sel", 15),
+};
+
+static const struct mtk_clk_desc ethwarp_desc = {
+	.clks = ethwarp_clks,
+	.num_clks = ARRAY_SIZE(ethwarp_clks),
+};
+
+static const struct of_device_id of_match_clk_mt7988_eth[] = {
+	{ .compatible = "mediatek,mt7988-ethsys", .data = &ethdma_desc },
+	{ .compatible = "mediatek,mt7988-sgmiisys_0", .data = &sgmii0_desc },
+	{ .compatible = "mediatek,mt7988-sgmiisys_1", .data = &sgmii1_desc },
+	{ .compatible = "mediatek,mt7988-ethwarp", .data = &ethwarp_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_match_clk_mt7988_eth);
+
+static struct platform_driver clk_mt7988_eth_drv = {
+	.driver = {
+		.name = "clk-mt7988-eth",
+		.of_match_table = of_match_clk_mt7988_eth,
+	},
+	.probe = mtk_clk_simple_probe,
+	.remove_new = mtk_clk_simple_remove,
+};
+module_platform_driver(clk_mt7988_eth_drv);
+
+MODULE_DESCRIPTION("MediaTek MT7988 Ethernet clocks driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/clk/mediatek/clk-mt7988-infracfg.c b/drivers/clk/mediatek/clk-mt7988-infracfg.c
new file mode 100644
index 0000000000000..b7b4f7626d3d6
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt7988-infracfg.c
@@ -0,0 +1,274 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ * Author: Sam Shih <sam.shih@mediatek.com>
+ * Author: Xiufeng Li <Xiufeng.Li@mediatek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "clk-mtk.h"
+#include "clk-gate.h"
+#include "clk-mux.h"
+#include <dt-bindings/clock/mediatek,mt7988-clk.h>
+
+static DEFINE_SPINLOCK(mt7988_clk_lock);
+
+static const char *const infra_mux_uart0_parents[] __initconst = { "csw_infra_f26m_sel",
+								   "uart_sel" };
+
+static const char *const infra_mux_uart1_parents[] __initconst = { "csw_infra_f26m_sel",
+								   "uart_sel" };
+
+static const char *const infra_mux_uart2_parents[] __initconst = { "csw_infra_f26m_sel",
+								   "uart_sel" };
+
+static const char *const infra_mux_spi0_parents[] __initconst = { "i2c_sel", "spi_sel" };
+
+static const char *const infra_mux_spi1_parents[] __initconst = { "i2c_sel", "spim_mst_sel" };
+
+static const char *const infra_pwm_bck_parents[] __initconst = { "top_rtc_32p7k",
+								 "csw_infra_f26m_sel", "sysaxi_sel",
+								 "pwm_sel" };
+
+static const char *const infra_pcie_gfmux_tl_ck_o_p0_parents[] __initconst = {
+	"top_rtc_32p7k", "csw_infra_f26m_sel", "csw_infra_f26m_sel", "pextp_tl_sel"
+};
+
+static const char *const infra_pcie_gfmux_tl_ck_o_p1_parents[] __initconst = {
+	"top_rtc_32p7k", "csw_infra_f26m_sel", "csw_infra_f26m_sel", "pextp_tl_p1_sel"
+};
+
+static const char *const infra_pcie_gfmux_tl_ck_o_p2_parents[] __initconst = {
+	"top_rtc_32p7k", "csw_infra_f26m_sel", "csw_infra_f26m_sel", "pextp_tl_p2_sel"
+};
+
+static const char *const infra_pcie_gfmux_tl_ck_o_p3_parents[] __initconst = {
+	"top_rtc_32p7k", "csw_infra_f26m_sel", "csw_infra_f26m_sel", "pextp_tl_p3_sel"
+};
+
+static const struct mtk_mux infra_muxes[] = {
+	/* MODULE_CLK_SEL_0 */
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_UART0_SEL, "infra_mux_uart0_sel",
+			     infra_mux_uart0_parents, 0x0018, 0x0010, 0x0014, 0, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_UART1_SEL, "infra_mux_uart1_sel",
+			     infra_mux_uart1_parents, 0x0018, 0x0010, 0x0014, 1, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_UART2_SEL, "infra_mux_uart2_sel",
+			     infra_mux_uart2_parents, 0x0018, 0x0010, 0x0014, 2, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_SPI0_SEL, "infra_mux_spi0_sel", infra_mux_spi0_parents,
+			     0x0018, 0x0010, 0x0014, 4, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_SPI1_SEL, "infra_mux_spi1_sel", infra_mux_spi1_parents,
+			     0x0018, 0x0010, 0x0014, 5, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_MUX_SPI2_SEL, "infra_mux_spi2_sel", infra_mux_spi0_parents,
+			     0x0018, 0x0010, 0x0014, 6, 1, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_SEL, "infra_pwm_sel", infra_pwm_bck_parents, 0x0018,
+			     0x0010, 0x0014, 14, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK1_SEL, "infra_pwm_ck1_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 16, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK2_SEL, "infra_pwm_ck2_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 18, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK3_SEL, "infra_pwm_ck3_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 20, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK4_SEL, "infra_pwm_ck4_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 22, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK5_SEL, "infra_pwm_ck5_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 24, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK6_SEL, "infra_pwm_ck6_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 26, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK7_SEL, "infra_pwm_ck7_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 28, 2, -1, -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PWM_CK8_SEL, "infra_pwm_ck8_sel", infra_pwm_bck_parents,
+			     0x0018, 0x0010, 0x0014, 30, 2, -1, -1, -1),
+	/* MODULE_CLK_SEL_1 */
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PCIE_GFMUX_TL_O_P0_SEL, "infra_pcie_gfmux_tl_o_p0_sel",
+			     infra_pcie_gfmux_tl_ck_o_p0_parents, 0x0028, 0x0020, 0x0024, 0, 2, -1,
+			     -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PCIE_GFMUX_TL_O_P1_SEL, "infra_pcie_gfmux_tl_o_p1_sel",
+			     infra_pcie_gfmux_tl_ck_o_p1_parents, 0x0028, 0x0020, 0x0024, 2, 2, -1,
+			     -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PCIE_GFMUX_TL_O_P2_SEL, "infra_pcie_gfmux_tl_o_p2_sel",
+			     infra_pcie_gfmux_tl_ck_o_p2_parents, 0x0028, 0x0020, 0x0024, 4, 2, -1,
+			     -1, -1),
+	MUX_GATE_CLR_SET_UPD(CLK_INFRA_PCIE_GFMUX_TL_O_P3_SEL, "infra_pcie_gfmux_tl_o_p3_sel",
+			     infra_pcie_gfmux_tl_ck_o_p3_parents, 0x0028, 0x0020, 0x0024, 6, 2, -1,
+			     -1, -1),
+};
+
+static const struct mtk_gate_regs infra0_cg_regs = {
+	.set_ofs = 0x10,
+	.clr_ofs = 0x14,
+	.sta_ofs = 0x18,
+};
+
+static const struct mtk_gate_regs infra1_cg_regs = {
+	.set_ofs = 0x40,
+	.clr_ofs = 0x44,
+	.sta_ofs = 0x48,
+};
+
+static const struct mtk_gate_regs infra2_cg_regs = {
+	.set_ofs = 0x50,
+	.clr_ofs = 0x54,
+	.sta_ofs = 0x58,
+};
+
+static const struct mtk_gate_regs infra3_cg_regs = {
+	.set_ofs = 0x60,
+	.clr_ofs = 0x64,
+	.sta_ofs = 0x68,
+};
+
+#define GATE_INFRA0_FLAGS(_id, _name, _parent, _shift, _flags)                                 \
+	GATE_MTK_FLAGS(_id, _name, _parent, &infra0_cg_regs, _shift, &mtk_clk_gate_ops_setclr, \
+		       _flags)
+
+#define GATE_INFRA1_FLAGS(_id, _name, _parent, _shift, _flags)                                 \
+	GATE_MTK_FLAGS(_id, _name, _parent, &infra1_cg_regs, _shift, &mtk_clk_gate_ops_setclr, \
+		       _flags)
+
+#define GATE_INFRA2_FLAGS(_id, _name, _parent, _shift, _flags)                                 \
+	GATE_MTK_FLAGS(_id, _name, _parent, &infra2_cg_regs, _shift, &mtk_clk_gate_ops_setclr, \
+		       _flags)
+
+#define GATE_INFRA3_FLAGS(_id, _name, _parent, _shift, _flags)                                 \
+	GATE_MTK_FLAGS(_id, _name, _parent, &infra3_cg_regs, _shift, &mtk_clk_gate_ops_setclr, \
+		       _flags)
+
+#define GATE_INFRA0(_id, _name, _parent, _shift) GATE_INFRA0_FLAGS(_id, _name, _parent, _shift, 0)
+
+#define GATE_INFRA1(_id, _name, _parent, _shift) GATE_INFRA1_FLAGS(_id, _name, _parent, _shift, 0)
+
+#define GATE_INFRA2(_id, _name, _parent, _shift) GATE_INFRA2_FLAGS(_id, _name, _parent, _shift, 0)
+
+#define GATE_INFRA3(_id, _name, _parent, _shift) GATE_INFRA3_FLAGS(_id, _name, _parent, _shift, 0)
+
+static const struct mtk_gate infra_clks[] = {
+	/* INFRA0 */
+	GATE_INFRA0(CLK_INFRA_PCIE_PERI_26M_CK_P0, "infra_pcie_peri_ck_26m_ck_p0",
+		    "csw_infra_f26m_sel", 7),
+	GATE_INFRA0(CLK_INFRA_PCIE_PERI_26M_CK_P1, "infra_pcie_peri_ck_26m_ck_p1",
+		    "csw_infra_f26m_sel", 8),
+	GATE_INFRA0(CLK_INFRA_PCIE_PERI_26M_CK_P2, "infra_pcie_peri_ck_26m_ck_p2",
+		    "csw_infra_f26m_sel", 9),
+	GATE_INFRA0(CLK_INFRA_PCIE_PERI_26M_CK_P3, "infra_pcie_peri_ck_26m_ck_p3",
+		    "csw_infra_f26m_sel", 10),
+	/* INFRA1 */
+	GATE_INFRA1(CLK_INFRA_66M_GPT_BCK, "infra_hf_66m_gpt_bck", "sysaxi_sel", 0),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_HCK, "infra_hf_66m_pwm_hck", "sysaxi_sel", 1),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_BCK, "infra_hf_66m_pwm_bck", "infra_pwm_sel", 2),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK1, "infra_hf_66m_pwm_ck1", "infra_pwm_ck1_sel", 3),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK2, "infra_hf_66m_pwm_ck2", "infra_pwm_ck2_sel", 4),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK3, "infra_hf_66m_pwm_ck3", "infra_pwm_ck3_sel", 5),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK4, "infra_hf_66m_pwm_ck4", "infra_pwm_ck4_sel", 6),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK5, "infra_hf_66m_pwm_ck5", "infra_pwm_ck5_sel", 7),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK6, "infra_hf_66m_pwm_ck6", "infra_pwm_ck6_sel", 8),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK7, "infra_hf_66m_pwm_ck7", "infra_pwm_ck7_sel", 9),
+	GATE_INFRA1(CLK_INFRA_66M_PWM_CK8, "infra_hf_66m_pwm_ck8", "infra_pwm_ck8_sel", 10),
+	GATE_INFRA1(CLK_INFRA_133M_CQDMA_BCK, "infra_hf_133m_cqdma_bck", "sysaxi_sel", 12),
+	GATE_INFRA1(CLK_INFRA_66M_AUD_SLV_BCK, "infra_66m_aud_slv_bck", "sysaxi_sel", 13),
+	GATE_INFRA1(CLK_INFRA_AUD_26M, "infra_f_faud_26m", "csw_infra_f26m_sel", 14),
+	GATE_INFRA1(CLK_INFRA_AUD_L, "infra_f_faud_l", "aud_l_sel", 15),
+	GATE_INFRA1(CLK_INFRA_AUD_AUD, "infra_f_aud_aud", "a1sys_sel", 16),
+	GATE_INFRA1(CLK_INFRA_AUD_EG2, "infra_f_faud_eg2", "a_tuner_sel", 18),
+	GATE_INFRA1_FLAGS(CLK_INFRA_DRAMC_F26M, "infra_dramc_f26m", "csw_infra_f26m_sel", 19,
+			  CLK_IS_CRITICAL),
+	/* JTAG */
+	GATE_INFRA1_FLAGS(CLK_INFRA_133M_DBG_ACKM, "infra_hf_133m_dbg_ackm", "sysaxi_sel", 20,
+			  CLK_IS_CRITICAL),
+	GATE_INFRA1(CLK_INFRA_66M_AP_DMA_BCK, "infra_66m_ap_dma_bck", "sysaxi_sel", 21),
+	GATE_INFRA1(CLK_INFRA_66M_SEJ_BCK, "infra_hf_66m_sej_bck", "sysaxi_sel", 29),
+	GATE_INFRA1(CLK_INFRA_PRE_CK_SEJ_F13M, "infra_pre_ck_sej_f13m", "csw_infra_f26m_sel", 30),
+	/* INFRA2 */
+	GATE_INFRA2(CLK_INFRA_26M_THERM_SYSTEM, "infra_hf_26m_therm_system", "csw_infra_f26m_sel",
+		    0),
+	GATE_INFRA2(CLK_INFRA_I2C_BCK, "infra_i2c_bck", "i2c_sel", 1),
+	GATE_INFRA2(CLK_INFRA_52M_UART0_CK, "infra_f_52m_uart0", "infra_mux_uart0_sel", 3),
+	GATE_INFRA2(CLK_INFRA_52M_UART1_CK, "infra_f_52m_uart1", "infra_mux_uart1_sel", 4),
+	GATE_INFRA2(CLK_INFRA_52M_UART2_CK, "infra_f_52m_uart2", "infra_mux_uart2_sel", 5),
+	GATE_INFRA2(CLK_INFRA_NFI, "infra_f_fnfi", "nfi1x_sel", 9),
+	GATE_INFRA2(CLK_INFRA_SPINFI, "infra_f_fspinfi", "spinfi_sel", 10),
+	GATE_INFRA2_FLAGS(CLK_INFRA_66M_NFI_HCK, "infra_hf_66m_nfi_hck", "sysaxi_sel", 11,
+			  CLK_IS_CRITICAL),
+	GATE_INFRA2_FLAGS(CLK_INFRA_104M_SPI0, "infra_hf_104m_spi0", "infra_mux_spi0_sel", 12,
+			  CLK_IS_CRITICAL),
+	GATE_INFRA2(CLK_INFRA_104M_SPI1, "infra_hf_104m_spi1", "infra_mux_spi1_sel", 13),
+	GATE_INFRA2(CLK_INFRA_104M_SPI2_BCK, "infra_hf_104m_spi2_bck", "infra_mux_spi2_sel", 14),
+	GATE_INFRA2_FLAGS(CLK_INFRA_66M_SPI0_HCK, "infra_hf_66m_spi0_hck", "sysaxi_sel", 15,
+			  CLK_IS_CRITICAL),
+	GATE_INFRA2(CLK_INFRA_66M_SPI1_HCK, "infra_hf_66m_spi1_hck", "sysaxi_sel", 16),
+	GATE_INFRA2(CLK_INFRA_66M_SPI2_HCK, "infra_hf_66m_spi2_hck", "sysaxi_sel", 17),
+	GATE_INFRA2(CLK_INFRA_66M_FLASHIF_AXI, "infra_hf_66m_flashif_axi", "sysaxi_sel", 18),
+	GATE_INFRA2_FLAGS(CLK_INFRA_RTC, "infra_f_frtc", "top_rtc_32k", 19, CLK_IS_CRITICAL),
+	GATE_INFRA2(CLK_INFRA_26M_ADC_BCK, "infra_f_26m_adc_bck", "csw_infra_f26m_sel", 20),
+	GATE_INFRA2(CLK_INFRA_RC_ADC, "infra_f_frc_adc", "infra_f_26m_adc_bck", 21),
+	GATE_INFRA2(CLK_INFRA_MSDC400, "infra_f_fmsdc400", "emmc_400m_sel", 22),
+	GATE_INFRA2(CLK_INFRA_MSDC2_HCK, "infra_f_fmsdc2_hck", "emmc_250m_sel", 23),
+	GATE_INFRA2(CLK_INFRA_133M_MSDC_0_HCK, "infra_hf_133m_msdc_0_hck", "sysaxi_sel", 24),
+	GATE_INFRA2(CLK_INFRA_66M_MSDC_0_HCK, "infra_66m_msdc_0_hck", "sysaxi_sel", 25),
+	GATE_INFRA2(CLK_INFRA_133M_CPUM_BCK, "infra_hf_133m_cpum_bck", "sysaxi_sel", 26),
+	GATE_INFRA2(CLK_INFRA_BIST2FPC, "infra_hf_fbist2fpc", "nfi1x_sel", 27),
+	GATE_INFRA2(CLK_INFRA_I2C_X16W_MCK_CK_P1, "infra_hf_i2c_x16w_mck_ck_p1", "sysaxi_sel", 29),
+	GATE_INFRA2(CLK_INFRA_I2C_X16W_PCK_CK_P1, "infra_hf_i2c_x16w_pck_ck_p1", "sysaxi_sel", 31),
+	/* INFRA3 */
+	GATE_INFRA3(CLK_INFRA_133M_USB_HCK, "infra_133m_usb_hck", "sysaxi_sel", 0),
+	GATE_INFRA3(CLK_INFRA_133M_USB_HCK_CK_P1, "infra_133m_usb_hck_ck_p1", "sysaxi_sel", 1),
+	GATE_INFRA3(CLK_INFRA_66M_USB_HCK, "infra_66m_usb_hck", "sysaxi_sel", 2),
+	GATE_INFRA3(CLK_INFRA_66M_USB_HCK_CK_P1, "infra_66m_usb_hck_ck_p1", "sysaxi_sel", 3),
+	GATE_INFRA3(CLK_INFRA_USB_SYS, "infra_usb_sys", "usb_sys_sel", 4),
+	GATE_INFRA3(CLK_INFRA_USB_SYS_CK_P1, "infra_usb_sys_ck_p1", "usb_sys_p1_sel", 5),
+	GATE_INFRA3(CLK_INFRA_USB_REF, "infra_usb_ref", "top_xtal", 6),
+	GATE_INFRA3(CLK_INFRA_USB_CK_P1, "infra_usb_ck_p1", "top_xtal", 7),
+	GATE_INFRA3_FLAGS(CLK_INFRA_USB_FRMCNT, "infra_usb_frmcnt", "usb_frmcnt_sel", 8,
+			  CLK_IS_CRITICAL),
+	GATE_INFRA3_FLAGS(CLK_INFRA_USB_FRMCNT_CK_P1, "infra_usb_frmcnt_ck_p1", "usb_frmcnt_p1_sel",
+			  9, CLK_IS_CRITICAL),
+	GATE_INFRA3(CLK_INFRA_USB_PIPE, "infra_usb_pipe", "sspxtp_sel", 10),
+	GATE_INFRA3(CLK_INFRA_USB_PIPE_CK_P1, "infra_usb_pipe_ck_p1", "usb_phy_sel", 11),
+	GATE_INFRA3(CLK_INFRA_USB_UTMI, "infra_usb_utmi", "top_xtal", 12),
+	GATE_INFRA3(CLK_INFRA_USB_UTMI_CK_P1, "infra_usb_utmi_ck_p1", "top_xtal", 13),
+	GATE_INFRA3(CLK_INFRA_USB_XHCI, "infra_usb_xhci", "usb_xhci_sel", 14),
+	GATE_INFRA3(CLK_INFRA_USB_XHCI_CK_P1, "infra_usb_xhci_ck_p1", "usb_xhci_p1_sel", 15),
+	GATE_INFRA3(CLK_INFRA_PCIE_GFMUX_TL_P0, "infra_pcie_gfmux_tl_ck_p0",
+		    "infra_pcie_gfmux_tl_o_p0_sel", 20),
+	GATE_INFRA3(CLK_INFRA_PCIE_GFMUX_TL_P1, "infra_pcie_gfmux_tl_ck_p1",
+		    "infra_pcie_gfmux_tl_o_p1_sel", 21),
+	GATE_INFRA3(CLK_INFRA_PCIE_GFMUX_TL_P2, "infra_pcie_gfmux_tl_ck_p2",
+		    "infra_pcie_gfmux_tl_o_p2_sel", 22),
+	GATE_INFRA3(CLK_INFRA_PCIE_GFMUX_TL_P3, "infra_pcie_gfmux_tl_ck_p3",
+		    "infra_pcie_gfmux_tl_o_p3_sel", 23),
+	GATE_INFRA3(CLK_INFRA_PCIE_PIPE_P0, "infra_pcie_pipe_ck_p0", "top_xtal", 24),
+	GATE_INFRA3(CLK_INFRA_PCIE_PIPE_P1, "infra_pcie_pipe_ck_p1", "top_xtal", 25),
+	GATE_INFRA3(CLK_INFRA_PCIE_PIPE_P2, "infra_pcie_pipe_ck_p2", "top_xtal", 26),
+	GATE_INFRA3(CLK_INFRA_PCIE_PIPE_P3, "infra_pcie_pipe_ck_p3", "top_xtal", 27),
+	GATE_INFRA3(CLK_INFRA_133M_PCIE_CK_P0, "infra_133m_pcie_ck_p0", "sysaxi_sel", 28),
+	GATE_INFRA3(CLK_INFRA_133M_PCIE_CK_P1, "infra_133m_pcie_ck_p1", "sysaxi_sel", 29),
+	GATE_INFRA3(CLK_INFRA_133M_PCIE_CK_P2, "infra_133m_pcie_ck_p2", "sysaxi_sel", 30),
+	GATE_INFRA3(CLK_INFRA_133M_PCIE_CK_P3, "infra_133m_pcie_ck_p3", "sysaxi_sel", 31),
+};
+
+static const struct mtk_clk_desc infra_desc = {
+	.clks = infra_clks,
+	.num_clks = ARRAY_SIZE(infra_clks),
+	.mux_clks = infra_muxes,
+	.num_mux_clks = ARRAY_SIZE(infra_muxes),
+	.clk_lock = &mt7988_clk_lock,
+};
+
+static const struct of_device_id of_match_clk_mt7988_infracfg[] = {
+	{ .compatible = "mediatek,mt7988-infracfg", .data = &infra_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_match_clk_mt7988_infracfg);
+
+static struct platform_driver clk_mt7988_infracfg_drv = {
+	.driver = {
+		.name = "clk-mt7988-infracfg",
+		.of_match_table = of_match_clk_mt7988_infracfg,
+	},
+	.probe = mtk_clk_simple_probe,
+	.remove_new = mtk_clk_simple_remove,
+};
+module_platform_driver(clk_mt7988_infracfg_drv);
diff --git a/drivers/clk/mediatek/clk-mt7988-topckgen.c b/drivers/clk/mediatek/clk-mt7988-topckgen.c
new file mode 100644
index 0000000000000..760f8e0d2f26a
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt7988-topckgen.c
@@ -0,0 +1,325 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ * Author: Sam Shih <sam.shih@mediatek.com>
+ * Author: Xiufeng Li <Xiufeng.Li@mediatek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "clk-mtk.h"
+#include "clk-gate.h"
+#include "clk-mux.h"
+#include <dt-bindings/clock/mediatek,mt7988-clk.h>
+
+static DEFINE_SPINLOCK(mt7988_clk_lock);
+
+static const struct mtk_fixed_clk top_fixed_clks[] = {
+	FIXED_CLK(CLK_TOP_XTAL, "top_xtal", "clkxtal", 40000000),
+};
+
+static const struct mtk_fixed_factor top_divs[] = {
+	FACTOR(CLK_TOP_XTAL_D2, "top_xtal_d2", "top_xtal", 1, 2),
+	FACTOR(CLK_TOP_RTC_32K, "top_rtc_32k", "top_xtal", 1, 1250),
+	FACTOR(CLK_TOP_RTC_32P7K, "top_rtc_32p7k", "top_xtal", 1, 1220),
+	FACTOR(CLK_TOP_MPLL_D2, "mpll_d2", "mpll", 1, 2),
+	FACTOR(CLK_TOP_MPLL_D3_D2, "mpll_d3_d2", "mpll", 1, 2),
+	FACTOR(CLK_TOP_MPLL_D4, "mpll_d4", "mpll", 1, 4),
+	FACTOR(CLK_TOP_MPLL_D8, "mpll_d8", "mpll", 1, 8),
+	FACTOR(CLK_TOP_MPLL_D8_D2, "mpll_d8_d2", "mpll", 1, 16),
+	FACTOR(CLK_TOP_MMPLL_D2, "mmpll_d2", "mmpll", 1, 2),
+	FACTOR(CLK_TOP_MMPLL_D3_D5, "mmpll_d3_d5", "mmpll", 1, 15),
+	FACTOR(CLK_TOP_MMPLL_D4, "mmpll_d4", "mmpll", 1, 4),
+	FACTOR(CLK_TOP_MMPLL_D6_D2, "mmpll_d6_d2", "mmpll", 1, 12),
+	FACTOR(CLK_TOP_MMPLL_D8, "mmpll_d8", "mmpll", 1, 8),
+	FACTOR(CLK_TOP_APLL2_D4, "apll2_d4", "apll2", 1, 4),
+	FACTOR(CLK_TOP_NET1PLL_D4, "net1pll_d4", "net1pll", 1, 4),
+	FACTOR(CLK_TOP_NET1PLL_D5, "net1pll_d5", "net1pll", 1, 5),
+	FACTOR(CLK_TOP_NET1PLL_D5_D2, "net1pll_d5_d2", "net1pll", 1, 10),
+	FACTOR(CLK_TOP_NET1PLL_D5_D4, "net1pll_d5_d4", "net1pll", 1, 20),
+	FACTOR(CLK_TOP_NET1PLL_D8, "net1pll_d8", "net1pll", 1, 8),
+	FACTOR(CLK_TOP_NET1PLL_D8_D2, "net1pll_d8_d2", "net1pll", 1, 16),
+	FACTOR(CLK_TOP_NET1PLL_D8_D4, "net1pll_d8_d4", "net1pll", 1, 32),
+	FACTOR(CLK_TOP_NET1PLL_D8_D8, "net1pll_d8_d8", "net1pll", 1, 64),
+	FACTOR(CLK_TOP_NET1PLL_D8_D16, "net1pll_d8_d16", "net1pll", 1, 128),
+	FACTOR(CLK_TOP_NET2PLL_D2, "net2pll_d2", "net2pll", 1, 2),
+	FACTOR(CLK_TOP_NET2PLL_D4, "net2pll_d4", "net2pll", 1, 4),
+	FACTOR(CLK_TOP_NET2PLL_D4_D4, "net2pll_d4_d4", "net2pll", 1, 16),
+	FACTOR(CLK_TOP_NET2PLL_D4_D8, "net2pll_d4_d8", "net2pll", 1, 32),
+	FACTOR(CLK_TOP_NET2PLL_D6, "net2pll_d6", "net2pll", 1, 6),
+	FACTOR(CLK_TOP_NET2PLL_D8, "net2pll_d8", "net2pll", 1, 8),
+};
+
+static const char *const netsys_parents[] = { "top_xtal", "net2pll_d2", "mmpll_d2" };
+static const char *const netsys_500m_parents[] = { "top_xtal", "net1pll_d5", "net1pll_d5_d2" };
+static const char *const netsys_2x_parents[] = { "top_xtal", "net2pll", "mmpll" };
+static const char *const netsys_gsw_parents[] = { "top_xtal", "net1pll_d4", "net1pll_d5" };
+static const char *const eth_gmii_parents[] = { "top_xtal", "net1pll_d5_d4" };
+static const char *const netsys_mcu_parents[] = { "top_xtal",	"net2pll",    "mmpll",
+						  "net1pll_d4", "net1pll_d5", "mpll" };
+static const char *const eip197_parents[] = { "top_xtal", "netsyspll",	"net2pll",
+					      "mmpll",	  "net1pll_d4", "net1pll_d5" };
+static const char *const axi_infra_parents[] = { "top_xtal", "net1pll_d8_d2" };
+static const char *const uart_parents[] = { "top_xtal", "mpll_d8", "mpll_d8_d2" };
+static const char *const emmc_250m_parents[] = { "top_xtal", "net1pll_d5_d2", "mmpll_d4" };
+static const char *const emmc_400m_parents[] = { "top_xtal", "msdcpll",	 "mmpll_d2",
+						 "mpll_d2",  "mmpll_d4", "net1pll_d8_d2" };
+static const char *const spi_parents[] = { "top_xtal",	    "mpll_d2",	    "mmpll_d4",
+					   "net1pll_d8_d2", "net2pll_d6",   "net1pll_d5_d4",
+					   "mpll_d4",	    "net1pll_d8_d4" };
+static const char *const nfi1x_parents[] = { "top_xtal", "mmpll_d4", "net1pll_d8_d2", "net2pll_d6",
+					     "mpll_d4",	 "mmpll_d8", "net1pll_d8_d4", "mpll_d8" };
+static const char *const spinfi_parents[] = { "top_xtal_d2", "top_xtal", "net1pll_d5_d4",
+					      "mpll_d4",     "mmpll_d8", "net1pll_d8_d4",
+					      "mmpll_d6_d2", "mpll_d8" };
+static const char *const pwm_parents[] = { "top_xtal", "net1pll_d8_d2", "net1pll_d5_d4",
+					   "mpll_d4",  "mpll_d8_d2",	"top_rtc_32k" };
+static const char *const i2c_parents[] = { "top_xtal", "net1pll_d5_d4", "mpll_d4",
+					   "net1pll_d8_d4" };
+static const char *const pcie_mbist_250m_parents[] = { "top_xtal", "net1pll_d5_d2" };
+static const char *const pextp_tl_ck_parents[] = { "top_xtal", "net2pll_d6", "mmpll_d8",
+						   "mpll_d8_d2", "top_rtc_32k" };
+static const char *const usb_frmcnt_parents[] = { "top_xtal", "mmpll_d3_d5" };
+static const char *const aud_parents[] = { "top_xtal", "apll2" };
+static const char *const a1sys_parents[] = { "top_xtal", "apll2_d4" };
+static const char *const aud_l_parents[] = { "top_xtal", "apll2", "mpll_d8_d2" };
+static const char *const sspxtp_parents[] = { "top_xtal_d2", "mpll_d8_d2" };
+static const char *const usxgmii_sbus_0_parents[] = { "top_xtal", "net1pll_d8_d4" };
+static const char *const sgm_0_parents[] = { "top_xtal", "sgmpll" };
+static const char *const sysapb_parents[] = { "top_xtal", "mpll_d3_d2" };
+static const char *const eth_refck_50m_parents[] = { "top_xtal", "net2pll_d4_d4" };
+static const char *const eth_sys_200m_parents[] = { "top_xtal", "net2pll_d4" };
+static const char *const eth_xgmii_parents[] = { "top_xtal_d2", "net1pll_d8_d8", "net1pll_d8_d16" };
+static const char *const bus_tops_parents[] = { "top_xtal", "net1pll_d5", "net2pll_d2" };
+static const char *const npu_tops_parents[] = { "top_xtal", "net2pll" };
+static const char *const dramc_md32_parents[] = { "top_xtal", "mpll_d2", "wedmcupll" };
+static const char *const da_xtp_glb_p0_parents[] = { "top_xtal", "net2pll_d8" };
+static const char *const mcusys_backup_625m_parents[] = { "top_xtal", "net1pll_d4" };
+static const char *const macsec_parents[] = { "top_xtal", "sgmpll", "net1pll_d8" };
+static const char *const netsys_tops_400m_parents[] = { "top_xtal", "net2pll_d2" };
+static const char *const eth_mii_parents[] = { "top_xtal_d2", "net2pll_d4_d8" };
+
+static const struct mtk_mux top_muxes[] = {
+	/* CLK_CFG_0 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_SEL, "netsys_sel", netsys_parents, 0x000, 0x004, 0x008,
+			     0, 2, 7, 0x1c0, 0),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_500M_SEL, "netsys_500m_sel", netsys_500m_parents, 0x000,
+			     0x004, 0x008, 8, 2, 15, 0x1C0, 1),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_2X_SEL, "netsys_2x_sel", netsys_2x_parents, 0x000,
+			     0x004, 0x008, 16, 2, 23, 0x1C0, 2),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_GSW_SEL, "netsys_gsw_sel", netsys_gsw_parents, 0x000,
+			     0x004, 0x008, 24, 2, 31, 0x1C0, 3),
+	/* CLK_CFG_1 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_GMII_SEL, "eth_gmii_sel", eth_gmii_parents, 0x010, 0x014,
+			     0x018, 0, 1, 7, 0x1C0, 4),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_MCU_SEL, "netsys_mcu_sel", netsys_mcu_parents, 0x010,
+			     0x014, 0x018, 8, 3, 15, 0x1C0, 5),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_PAO_2X_SEL, "netsys_pao_2x_sel", netsys_mcu_parents,
+			     0x010, 0x014, 0x018, 16, 3, 23, 0x1C0, 6),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_EIP197_SEL, "eip197_sel", eip197_parents, 0x010, 0x014, 0x018,
+			     24, 3, 31, 0x1c0, 7),
+	/* CLK_CFG_2 */
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_AXI_INFRA_SEL, "axi_infra_sel", axi_infra_parents, 0x020,
+				   0x024, 0x028, 0, 1, 7, 0x1C0, 8, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_UART_SEL, "uart_sel", uart_parents, 0x020, 0x024, 0x028, 8, 2,
+			     15, 0x1c0, 9),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_EMMC_250M_SEL, "emmc_250m_sel", emmc_250m_parents, 0x020,
+			     0x024, 0x028, 16, 2, 23, 0x1C0, 10),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_EMMC_400M_SEL, "emmc_400m_sel", emmc_400m_parents, 0x020,
+			     0x024, 0x028, 24, 3, 31, 0x1C0, 11),
+	/* CLK_CFG_3 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SPI_SEL, "spi_sel", spi_parents, 0x030, 0x034, 0x038, 0, 3, 7,
+			     0x1c0, 12),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SPIM_MST_SEL, "spim_mst_sel", spi_parents, 0x030, 0x034, 0x038,
+			     8, 3, 15, 0x1c0, 13),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NFI1X_SEL, "nfi1x_sel", nfi1x_parents, 0x030, 0x034, 0x038, 16,
+			     3, 23, 0x1c0, 14),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SPINFI_SEL, "spinfi_sel", spinfi_parents, 0x030, 0x034, 0x038,
+			     24, 3, 31, 0x1c0, 15),
+	/* CLK_CFG_4 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PWM_SEL, "pwm_sel", pwm_parents, 0x040, 0x044, 0x048, 0, 3, 7,
+			     0x1c0, 16),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_I2C_SEL, "i2c_sel", i2c_parents, 0x040, 0x044, 0x048, 8, 2, 15,
+			     0x1c0, 17),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PCIE_MBIST_250M_SEL, "pcie_mbist_250m_sel",
+			     pcie_mbist_250m_parents, 0x040, 0x044, 0x048, 16, 1, 23, 0x1C0, 18),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_TL_SEL, "pextp_tl_sel", pextp_tl_ck_parents, 0x040,
+			     0x044, 0x048, 24, 3, 31, 0x1C0, 19),
+	/* CLK_CFG_5 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_TL_P1_SEL, "pextp_tl_p1_sel", pextp_tl_ck_parents, 0x050,
+			     0x054, 0x058, 0, 3, 7, 0x1C0, 20),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_TL_P2_SEL, "pextp_tl_p2_sel", pextp_tl_ck_parents, 0x050,
+			     0x054, 0x058, 8, 3, 15, 0x1C0, 21),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_TL_P3_SEL, "pextp_tl_p3_sel", pextp_tl_ck_parents, 0x050,
+			     0x054, 0x058, 16, 3, 23, 0x1C0, 22),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_SYS_SEL, "usb_sys_sel", eth_gmii_parents, 0x050, 0x054,
+			     0x058, 24, 1, 31, 0x1C0, 23),
+	/* CLK_CFG_6 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_SYS_P1_SEL, "usb_sys_p1_sel", eth_gmii_parents, 0x060,
+			     0x064, 0x068, 0, 1, 7, 0x1C0, 24),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_XHCI_SEL, "usb_xhci_sel", eth_gmii_parents, 0x060, 0x064,
+			     0x068, 8, 1, 15, 0x1C0, 25),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_XHCI_P1_SEL, "usb_xhci_p1_sel", eth_gmii_parents, 0x060,
+			     0x064, 0x068, 16, 1, 23, 0x1C0, 26),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_FRMCNT_SEL, "usb_frmcnt_sel", usb_frmcnt_parents, 0x060,
+			     0x064, 0x068, 24, 1, 31, 0x1C0, 27),
+	/* CLK_CFG_7 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_FRMCNT_P1_SEL, "usb_frmcnt_p1_sel", usb_frmcnt_parents,
+			     0x070, 0x074, 0x078, 0, 1, 7, 0x1C0, 28),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_AUD_SEL, "aud_sel", aud_parents, 0x070, 0x074, 0x078, 8, 1, 15,
+			     0x1c0, 29),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_A1SYS_SEL, "a1sys_sel", a1sys_parents, 0x070, 0x074, 0x078, 16,
+			     1, 23, 0x1c0, 30),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_AUD_L_SEL, "aud_l_sel", aud_l_parents, 0x070, 0x074, 0x078, 24,
+			     2, 31, 0x1c4, 0),
+	/* CLK_CFG_8 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_A_TUNER_SEL, "a_tuner_sel", a1sys_parents, 0x080, 0x084, 0x088,
+			     0, 1, 7, 0x1c4, 1),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SSPXTP_SEL, "sspxtp_sel", sspxtp_parents, 0x080, 0x084, 0x088,
+			     8, 1, 15, 0x1c4, 2),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USB_PHY_SEL, "usb_phy_sel", sspxtp_parents, 0x080, 0x084,
+			     0x088, 16, 1, 23, 0x1c4, 3),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USXGMII_SBUS_0_SEL, "usxgmii_sbus_0_sel",
+			     usxgmii_sbus_0_parents, 0x080, 0x084, 0x088, 24, 1, 31, 0x1C4, 4),
+	/* CLK_CFG_9 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_USXGMII_SBUS_1_SEL, "usxgmii_sbus_1_sel",
+			     usxgmii_sbus_0_parents, 0x090, 0x094, 0x098, 0, 1, 7, 0x1C4, 5),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SGM_0_SEL, "sgm_0_sel", sgm_0_parents, 0x090, 0x094, 0x098, 8,
+			     1, 15, 0x1c4, 6),
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_SGM_SBUS_0_SEL, "sgm_sbus_0_sel", usxgmii_sbus_0_parents,
+				   0x090, 0x094, 0x098, 16, 1, 23, 0x1C4, 7, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_SGM_1_SEL, "sgm_1_sel", sgm_0_parents, 0x090, 0x094, 0x098, 24,
+			     1, 31, 0x1c4, 8),
+	/* CLK_CFG_10 */
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_SGM_SBUS_1_SEL, "sgm_sbus_1_sel", usxgmii_sbus_0_parents,
+				   0x0a0, 0x0a4, 0x0a8, 0, 1, 7, 0x1C4, 9, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_XFI_PHY_0_XTAL_SEL, "xfi_phy_0_xtal_sel", sspxtp_parents,
+			     0x0a0, 0x0a4, 0x0a8, 8, 1, 15, 0x1C4, 10),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_XFI_PHY_1_XTAL_SEL, "xfi_phy_1_xtal_sel", sspxtp_parents,
+			     0x0a0, 0x0a4, 0x0a8, 16, 1, 23, 0x1C4, 11),
+	/* CLK_CFG_11 */
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_SYSAXI_SEL, "sysaxi_sel", axi_infra_parents, 0x0a0,
+				   0x0a4, 0x0a8, 24, 1, 31, 0x1C4, 12, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_SYSAPB_SEL, "sysapb_sel", sysapb_parents, 0x0b0, 0x0b4,
+				   0x0b8, 0, 1, 7, 0x1c4, 13, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_REFCK_50M_SEL, "eth_refck_50m_sel", eth_refck_50m_parents,
+			     0x0b0, 0x0b4, 0x0b8, 8, 1, 15, 0x1C4, 14),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_SYS_200M_SEL, "eth_sys_200m_sel", eth_sys_200m_parents,
+			     0x0b0, 0x0b4, 0x0b8, 16, 1, 23, 0x1C4, 15),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_SYS_SEL, "eth_sys_sel", pcie_mbist_250m_parents, 0x0b0,
+			     0x0b4, 0x0b8, 24, 1, 31, 0x1C4, 16),
+	/* CLK_CFG_12 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_XGMII_SEL, "eth_xgmii_sel", eth_xgmii_parents, 0x0c0,
+			     0x0c4, 0x0c8, 0, 2, 7, 0x1C4, 17),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_BUS_TOPS_SEL, "bus_tops_sel", bus_tops_parents, 0x0c0, 0x0c4,
+			     0x0c8, 8, 2, 15, 0x1C4, 18),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NPU_TOPS_SEL, "npu_tops_sel", npu_tops_parents, 0x0c0, 0x0c4,
+			     0x0c8, 16, 1, 23, 0x1C4, 19),
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_DRAMC_SEL, "dramc_sel", sspxtp_parents, 0x0c0, 0x0c4,
+				   0x0c8, 24, 1, 31, 0x1C4, 20, CLK_IS_CRITICAL),
+	/* CLK_CFG_13 */
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_DRAMC_MD32_SEL, "dramc_md32_sel", dramc_md32_parents,
+				   0x0d0, 0x0d4, 0x0d8, 0, 2, 7, 0x1C4, 21, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD_FLAGS(CLK_TOP_INFRA_F26M_SEL, "csw_infra_f26m_sel", sspxtp_parents,
+				   0x0d0, 0x0d4, 0x0d8, 8, 1, 15, 0x1C4, 22, CLK_IS_CRITICAL),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_P0_SEL, "pextp_p0_sel", sspxtp_parents, 0x0d0, 0x0d4,
+			     0x0d8, 16, 1, 23, 0x1C4, 23),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_P1_SEL, "pextp_p1_sel", sspxtp_parents, 0x0d0, 0x0d4,
+			     0x0d8, 24, 1, 31, 0x1C4, 24),
+	/* CLK_CFG_14 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_P2_SEL, "pextp_p2_sel", sspxtp_parents, 0x0e0, 0x0e4,
+			     0x0e8, 0, 1, 7, 0x1C4, 25),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_P3_SEL, "pextp_p3_sel", sspxtp_parents, 0x0e0, 0x0e4,
+			     0x0e8, 8, 1, 15, 0x1C4, 26),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_DA_XTP_GLB_P0_SEL, "da_xtp_glb_p0_sel", da_xtp_glb_p0_parents,
+			     0x0e0, 0x0e4, 0x0e8, 16, 1, 23, 0x1C4, 27),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_DA_XTP_GLB_P1_SEL, "da_xtp_glb_p1_sel", da_xtp_glb_p0_parents,
+			     0x0e0, 0x0e4, 0x0e8, 24, 1, 31, 0x1C4, 28),
+	/* CLK_CFG_15 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_DA_XTP_GLB_P2_SEL, "da_xtp_glb_p2_sel", da_xtp_glb_p0_parents,
+			     0x0f0, 0x0f4, 0x0f8, 0, 1, 7, 0x1C4, 29),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_DA_XTP_GLB_P3_SEL, "da_xtp_glb_p3_sel", da_xtp_glb_p0_parents,
+			     0x0f0, 0x0f4, 0x0f8, 8, 1, 15, 0x1C4, 30),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_CKM_SEL, "ckm_sel", sspxtp_parents, 0x0F0, 0x0f4, 0x0f8, 16, 1,
+			     23, 0x1c8, 0),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_DA_SEL, "da_sel", sspxtp_parents, 0x0f0, 0x0f4, 0x0f8, 24, 1,
+			     31, 0x1C8, 1),
+	/* CLK_CFG_16 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_PEXTP_SEL, "pextp_sel", sspxtp_parents, 0x0100, 0x104, 0x108,
+			     0, 1, 7, 0x1c8, 2),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_TOPS_P2_26M_SEL, "tops_p2_26m_sel", sspxtp_parents, 0x0100,
+			     0x104, 0x108, 8, 1, 15, 0x1C8, 3),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_MCUSYS_BACKUP_625M_SEL, "mcusys_backup_625m_sel",
+			     mcusys_backup_625m_parents, 0x0100, 0x104, 0x108, 16, 1, 23, 0x1C8, 4),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_SYNC_250M_SEL, "netsys_sync_250m_sel",
+			     pcie_mbist_250m_parents, 0x0100, 0x104, 0x108, 24, 1, 31, 0x1c8, 5),
+	/* CLK_CFG_17 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_MACSEC_SEL, "macsec_sel", macsec_parents, 0x0110, 0x114, 0x118,
+			     0, 2, 7, 0x1c8, 6),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_TOPS_400M_SEL, "netsys_tops_400m_sel",
+			     netsys_tops_400m_parents, 0x0110, 0x114, 0x118, 8, 1, 15, 0x1c8, 7),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_PPEFB_250M_SEL, "netsys_ppefb_250m_sel",
+			     pcie_mbist_250m_parents, 0x0110, 0x114, 0x118, 16, 1, 23, 0x1c8, 8),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NETSYS_WARP_SEL, "netsys_warp_sel", netsys_parents, 0x0110,
+			     0x114, 0x118, 24, 2, 31, 0x1C8, 9),
+	/* CLK_CFG_18 */
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_ETH_MII_SEL, "eth_mii_sel", eth_mii_parents, 0x0120, 0x124,
+			     0x128, 0, 1, 7, 0x1c8, 10),
+	MUX_GATE_CLR_SET_UPD(CLK_TOP_NPU_SEL, "ck_npu_sel", netsys_2x_parents, 0x0120, 0x124, 0x128,
+			     8, 2, 15, 0x1c8, 11),
+};
+
+static const struct mtk_composite top_aud_divs[] = {
+	DIV_GATE(CLK_TOP_AUD_I2S_M, "aud_i2s_m", "aud_sel", 0x0420, 0, 0x0420, 8, 8),
+};
+
+static const struct mtk_clk_desc topck_desc = {
+	.fixed_clks = top_fixed_clks,
+	.num_fixed_clks = ARRAY_SIZE(top_fixed_clks),
+	.factor_clks = top_divs,
+	.num_factor_clks = ARRAY_SIZE(top_divs),
+	.mux_clks = top_muxes,
+	.num_mux_clks = ARRAY_SIZE(top_muxes),
+	.composite_clks = top_aud_divs,
+	.num_composite_clks = ARRAY_SIZE(top_aud_divs),
+	.clk_lock = &mt7988_clk_lock,
+};
+
+static const char *const mcu_bus_div_parents[] = { "top_xtal", "ccipll2_b", "net1pll_d4" };
+
+static const char *const mcu_arm_div_parents[] = { "top_xtal", "arm_b", "net1pll_d4" };
+
+static struct mtk_composite mcu_muxes[] = {
+	/* bus_pll_divider_cfg */
+	MUX_GATE_FLAGS(CLK_MCU_BUS_DIV_SEL, "mcu_bus_div_sel", mcu_bus_div_parents, 0x7C0, 9, 2, -1,
+		       CLK_IS_CRITICAL),
+	/* mp2_pll_divider_cfg */
+	MUX_GATE_FLAGS(CLK_MCU_ARM_DIV_SEL, "mcu_arm_div_sel", mcu_arm_div_parents, 0x7A8, 9, 2, -1,
+		       CLK_IS_CRITICAL),
+};
+
+static const struct mtk_clk_desc mcusys_desc = {
+	.composite_clks = mcu_muxes,
+	.num_composite_clks = ARRAY_SIZE(mcu_muxes),
+};
+
+static const struct of_device_id of_match_clk_mt7988_topckgen[] = {
+	{ .compatible = "mediatek,mt7988-topckgen", .data = &topck_desc },
+	{ .compatible = "mediatek,mt7988-mcusys", .data = &mcusys_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_match_clk_mt7988_topckgen);
+
+static struct platform_driver clk_mt7988_topckgen_drv = {
+	.probe = mtk_clk_simple_probe,
+	.remove_new = mtk_clk_simple_remove,
+	.driver = {
+		.name = "clk-mt7988-topckgen",
+		.of_match_table = of_match_clk_mt7988_topckgen,
+	},
+};
+module_platform_driver(clk_mt7988_topckgen_drv);
+MODULE_LICENSE("GPL");
diff --git a/drivers/clk/mediatek/clk-mt7988-xfipll.c b/drivers/clk/mediatek/clk-mt7988-xfipll.c
new file mode 100644
index 0000000000000..1404d1f17fc8b
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt7988-xfipll.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Daniel Golle <daniel@makrotopia.org>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "clk-mtk.h"
+#include "clk-gate.h"
+#include <dt-bindings/clock/mediatek,mt7988-clk.h>
+
+/* Register to control USXGMII XFI PLL analog */
+#define XFI_PLL_ANA_GLB8		0x108
+#define RG_XFI_PLL_ANA_SWWA		0x02283248
+
+static const struct mtk_gate_regs xfipll_cg_regs = {
+	.set_ofs = 0x8,
+	.clr_ofs = 0x8,
+	.sta_ofs = 0x8,
+};
+
+#define GATE_XFIPLL(_id, _name, _parent, _shift)                                           \
+	{                                                                                  \
+		.id = _id, .name = _name, .parent_name = _parent, .regs = &xfipll_cg_regs, \
+		.shift = _shift, .ops = &mtk_clk_gate_ops_no_setclr_inv,                   \
+	}
+
+static const struct mtk_fixed_factor xfipll_divs[] = {
+	FACTOR(CLK_XFIPLL_PLL, "xfipll_pll", "top_xtal", 125, 32),
+};
+
+static const struct mtk_gate xfipll_clks[] = {
+	GATE_XFIPLL(CLK_XFIPLL_PLL_EN, "xfipll_pll_en", "xfipll_pll", 31),
+};
+
+static const struct mtk_clk_desc xfipll_desc = {
+	.clks = xfipll_clks,
+	.num_clks = ARRAY_SIZE(xfipll_clks),
+	.factor_clks = xfipll_divs,
+	.num_factor_clks = ARRAY_SIZE(xfipll_divs),
+};
+
+static int clk_mt7988_xfipll_probe(struct platform_device *pdev)
+{
+	struct device_node *node = pdev->dev.of_node;
+	void __iomem *base = of_iomap(node, 0);
+
+	if (!base)
+		return -ENOMEM;
+
+	/* Apply software workaround for USXGMII PLL TCL issue */
+	writel(RG_XFI_PLL_ANA_SWWA, base + XFI_PLL_ANA_GLB8);
+	iounmap(base);
+
+	return mtk_clk_simple_probe(pdev);
+};
+
+static const struct of_device_id of_match_clk_mt7988_xfipll[] = {
+	{ .compatible = "mediatek,mt7988-xfi-pll", .data = &xfipll_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_match_clk_mt7988_xfipll);
+
+static struct platform_driver clk_mt7988_xfipll_drv = {
+	.driver = {
+		.name = "clk-mt7988-xfipll",
+		.of_match_table = of_match_clk_mt7988_xfipll,
+	},
+	.probe = clk_mt7988_xfipll_probe,
+	.remove_new = mtk_clk_simple_remove,
+};
+module_platform_driver(clk_mt7988_xfipll_drv);
+
+MODULE_DESCRIPTION("MediaTek MT7988 XFI PLL clock driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0

