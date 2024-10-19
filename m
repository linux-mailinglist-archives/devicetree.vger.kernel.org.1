Return-Path: <devicetree+bounces-113136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEFD9A4C40
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 10:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B072B22ECE
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 08:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963441E0494;
	Sat, 19 Oct 2024 08:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jrt7mYpK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1869F1DFDB6
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 08:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729327683; cv=none; b=rYWMUCWFGx2LKEtQZ+QV1B/AiI69sqi35j87Uhf/Ne3y3RGLewAlM7dv/7sWnoICw32s177f39xiYD1gvC3slvCqfQZlHpkcSzxQEa8nntgNa+JFIKQTfcZ679NIlIob2k4HVVkzZPAO6vCUlpt0LIsTob+301qet33Sgm0zhe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729327683; c=relaxed/simple;
	bh=sWK+ki1eGLA6Z7iuQPsg1FSKmbo/pJZhnDiXQ8LIIZ8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LDUj+VGbgTjpV7APput32vIH/U8ECXAkEOiksAz6phM6iGFL4hIY36XteU/hKlfzPNr2FmKCGFkwn5KUG6Gay+ISTRJyfO0ilbhKY8hO7ocXd4kj+5RoUJEAhWKowhqS4FwaiwCQ7RY1BO+zLtpco8U9QNRXAsZhTGtqBnY90nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jrt7mYpK; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d4a5ecc44so2221127f8f.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 01:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729327678; x=1729932478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mM+9a5UHpHzZ5XkpgxLVFRbQ9UPAWVAZYvVtZoUoXg=;
        b=jrt7mYpKWrJ2v6si/11Gskueq74R6C6+j6DjRYdqSEESRd9LlaZu88GYfHDj4XppH/
         nItgYwlp2LnpORFk1xFLmIPiGWamNXAECnFELXWcBSuO1U/NsCj3LsI8m2OUmZLt0YZ4
         DmFoYdXXUmXh+Gk6A0CQ8Z3zmm0v7cn02pd5LaNUjRVTij4uYTTTw4wAse16FBnDIRnU
         HxJha8r2ozzKE5Y1Or4wmaDXnvlpSaFdywwVjFBWQEt3do4sSFcUj5Wuv9y2pXGlSmsj
         QdqiwHrU4FQsuYTzU5SNaJ2DU4hEduKBsajvJy2jZD6mhNN2JqvOpf4UAMbU8ZVY1Fro
         q5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729327678; x=1729932478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0mM+9a5UHpHzZ5XkpgxLVFRbQ9UPAWVAZYvVtZoUoXg=;
        b=Q8Q2p4fekNp9fpA2JTntahWKTT/hUV1mUzO9CSUoEbbMuG5A+So6O0ik0vGFXv3uLg
         RI838orso3YUmTWfhQGwkGIRCo/2NROTgBqQkXiDtD+bSQ0RIuWYWIzK7kOaaPgxWbki
         8TuIaQXeWRGqREGyxg/S9OxRAO3eoxKX4FZtaiLKr3QAzX2u1M6ZgLMN2zpnhyJsSuIZ
         KCzNVUX5MJXZ80p4FVc8s+hI1p6mmkwzAM0aBmycM9GlCA+xwgA3EtPJ2tng1NJNP6Az
         NIcvtM8234tn9CZ6GPmHwgW364o/4WE3jxNW9LYUcl/F/7juvNE8Thz7YM39u5NfiLRz
         1iNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPxazVB/sSgVqsJfMSg5Mw2xfM0eSzT9vGhUZq1trmXkvcyZsa6oafDAZbEXK0EDpbsc7CZEU9Mxyb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9blcD4ITPhvSc0WFH2fHqd3fdzoHEzo0FRSBm79g1qO+iEEvI
	8NwKNhRdsrkvht03QuLwpnMzq2B3Zqrf6m1wYgKE3cbp+Rr0XTS9ScWTCdJ5cqQ=
X-Google-Smtp-Source: AGHT+IEhJwgsCfTUHMXyiKhHw0RHznMrwOyHsbM3H05Wyi2oUcN/N+kNNF+xWO97DeB0yqVd2FSl0A==
X-Received: by 2002:a5d:5083:0:b0:37d:4647:154e with SMTP id ffacd0b85a97d-37eab727617mr3469155f8f.9.1729327678327;
        Sat, 19 Oct 2024 01:47:58 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf0eccbasm3898731f8f.81.2024.10.19.01.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 01:47:57 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 05/12] clk: renesas: clk-vbattb: Add VBATTB clock driver
Date: Sat, 19 Oct 2024 11:47:31 +0300
Message-Id: <20241019084738.3370489-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The VBATTB IP of the Renesas RZ/G3S SoC controls the clock that is used
by the RTC. The input to the VBATTB could be a 32KHz crystal
or an external clock device.

The HW block diagram for the clock generator is as follows:

           +----------+ XC   `\
RTXIN  --->|          |----->| \       +----+  VBATTCLK
           | 32K clock|      |  |----->|gate|----------->
           | osc      | XBYP |  |      +----+
RTXOUT --->|          |----->| /
           +----------+      ,

After discussions w/ Stephen Boyd the clock tree associated with this
hardware block was exported in Linux as:

vbattb-xtal
   xbyp
   xc
      mux
         vbattbclk

where:
- input-xtal is the input clock (connected to RTXIN, RTXOUT pins)
- xc, xbyp are mux inputs
- mux is the internal mux
- vbattclk is the gate clock that feeds in the end the RTC

to allow selecting the input of the MUX though assigned-clock DT
properties, using the already existing clock drivers and avoid adding
other DT properties. If the crystal is connected on RTXIN,
RTXOUT pins the XC will be selected as mux input. If an external clock
device is connected on RTXIN, RTXOUT pins the XBYP will be selected as
mux input.

The load capacitance of the internal crystal can be configured
with renesas,vbattb-load-nanofarads DT property.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- dropped oscillator from patch description
- s/on-board/internal in patch description
- updated dt-binding included file name in the driver as it has been
  renamed to include/dt-bindings/clock/renesas,r9a08g045-vbattb.h
- dropped the "_BIT" from driver macros
- used "quartz-load-femtofarads" dt property instead of adding a new one
- register the "vbattclk" as critical clock as this feeds the RTC counter
  logic and it needs to stay on from the moment the RTC is configured;
  along with it, added a comment to express this.

Changes in v3:
- updated patch description
- dropped dependency on MFD_RENESAS_VBATTB as now there is no
  driver built under this flag
- dropped include/clk.h
- added pm_runtime and reset control support
- updated register offsets
- registered 4 clocks: xc, xbyp, mux, vbattclk using generic
  clock drivers
- added MODULE_DEVICE_TABLE()

Changes in v2:
- updated patch description
- added vendor name in Kconfig flag
- used cleanup.h lock helpers
- dropped the MFD code
- updated registers offsets
- added vbattb_clk_update_bits() and used it where possible
- added vbattb_clk_need_bypass() to detect the bypass setup necessity
- changed the compatible and driver names


 drivers/clk/renesas/Kconfig      |   4 +
 drivers/clk/renesas/Makefile     |   1 +
 drivers/clk/renesas/clk-vbattb.c | 205 +++++++++++++++++++++++++++++++
 3 files changed, 210 insertions(+)
 create mode 100644 drivers/clk/renesas/clk-vbattb.c

diff --git a/drivers/clk/renesas/Kconfig b/drivers/clk/renesas/Kconfig
index 76791a1c50ac..4e835a3f1ab4 100644
--- a/drivers/clk/renesas/Kconfig
+++ b/drivers/clk/renesas/Kconfig
@@ -237,6 +237,10 @@ config CLK_RZV2H
 	bool "RZ/V2H(P) family clock support" if COMPILE_TEST
 	select RESET_CONTROLLER
 
+config CLK_RENESAS_VBATTB
+	bool "Renesas VBATTB clock controller"
+	select RESET_CONTROLLER
+
 # Generic
 config CLK_RENESAS_CPG_MSSR
 	bool "CPG/MSSR clock support" if COMPILE_TEST
diff --git a/drivers/clk/renesas/Makefile b/drivers/clk/renesas/Makefile
index 23d2e26051c8..82efaa835ac7 100644
--- a/drivers/clk/renesas/Makefile
+++ b/drivers/clk/renesas/Makefile
@@ -53,3 +53,4 @@ obj-$(CONFIG_CLK_RZV2H)			+= rzv2h-cpg.o
 obj-$(CONFIG_CLK_RENESAS_CPG_MSSR)	+= renesas-cpg-mssr.o
 obj-$(CONFIG_CLK_RENESAS_CPG_MSTP)	+= clk-mstp.o
 obj-$(CONFIG_CLK_RENESAS_DIV6)		+= clk-div6.o
+obj-$(CONFIG_CLK_RENESAS_VBATTB)	+= clk-vbattb.o
diff --git a/drivers/clk/renesas/clk-vbattb.c b/drivers/clk/renesas/clk-vbattb.c
new file mode 100644
index 000000000000..ff9d1ead455c
--- /dev/null
+++ b/drivers/clk/renesas/clk-vbattb.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * VBATTB clock driver
+ *
+ * Copyright (C) 2024 Renesas Electronics Corp.
+ */
+
+#include <linux/cleanup.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/mod_devicetable.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+
+#include <dt-bindings/clock/renesas,r9a08g045-vbattb.h>
+
+#define VBATTB_BKSCCR			0x1c
+#define VBATTB_BKSCCR_SOSEL		6
+#define VBATTB_SOSCCR2			0x24
+#define VBATTB_SOSCCR2_SOSTP2		0
+#define VBATTB_XOSCCR			0x30
+#define VBATTB_XOSCCR_OUTEN		16
+#define VBATTB_XOSCCR_XSEL		GENMASK(1, 0)
+#define VBATTB_XOSCCR_XSEL_4_PF		0x0
+#define VBATTB_XOSCCR_XSEL_7_PF		0x1
+#define VBATTB_XOSCCR_XSEL_9_PF		0x2
+#define VBATTB_XOSCCR_XSEL_12_5_PF	0x3
+
+/**
+ * struct vbattb_clk - VBATTB clock data structure
+ * @base: base address
+ * @lock: lock
+ */
+struct vbattb_clk {
+	void __iomem *base;
+	spinlock_t lock;
+};
+
+static int vbattb_clk_validate_load_capacitance(u32 *reg_lc, u32 of_lc)
+{
+	switch (of_lc) {
+	case 4000:
+		*reg_lc = VBATTB_XOSCCR_XSEL_4_PF;
+		break;
+	case 7000:
+		*reg_lc = VBATTB_XOSCCR_XSEL_7_PF;
+		break;
+	case 9000:
+		*reg_lc = VBATTB_XOSCCR_XSEL_9_PF;
+		break;
+	case 12500:
+		*reg_lc = VBATTB_XOSCCR_XSEL_12_5_PF;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void vbattb_clk_action(void *data)
+{
+	struct device *dev = data;
+	struct reset_control *rstc = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_assert(rstc);
+	if (ret)
+		dev_err(dev, "Failed to de-assert reset!");
+
+	ret = pm_runtime_put_sync(dev);
+	if (ret < 0)
+		dev_err(dev, "Failed to runtime suspend!");
+
+	of_clk_del_provider(dev->of_node);
+}
+
+static int vbattb_clk_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct clk_parent_data parent_data = {};
+	struct clk_hw_onecell_data *clk_data;
+	const struct clk_hw *parent_hws[2];
+	struct device *dev = &pdev->dev;
+	struct reset_control *rstc;
+	struct vbattb_clk *vbclk;
+	u32 of_lc, reg_lc;
+	struct clk_hw *hw;
+	/* 4 clocks are exported: VBATTB_XC, VBATTB_XBYP, VBATTB_MUX, VBATTB_VBATTCLK. */
+	u8 num_clks = 4;
+	int ret;
+
+	/* Default to 4pF as this is not needed if external clock device is connected. */
+	of_lc = 4000;
+	of_property_read_u32(np, "quartz-load-femtofarads", &of_lc);
+
+	ret = vbattb_clk_validate_load_capacitance(&reg_lc, of_lc);
+	if (ret)
+		return ret;
+
+	vbclk = devm_kzalloc(dev, sizeof(*vbclk), GFP_KERNEL);
+	if (!vbclk)
+		return -ENOMEM;
+
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, num_clks), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+	clk_data->num = num_clks;
+
+	vbclk->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(vbclk->base))
+		return PTR_ERR(vbclk->base);
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	rstc = devm_reset_control_get_shared(dev, NULL);
+	if (IS_ERR(rstc))
+		return PTR_ERR(rstc);
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
+
+	ret = reset_control_deassert(rstc);
+	if (ret) {
+		pm_runtime_put_sync(dev);
+		return ret;
+	}
+
+	dev_set_drvdata(dev, rstc);
+	ret = devm_add_action_or_reset(dev, vbattb_clk_action, dev);
+	if (ret)
+		return ret;
+
+	spin_lock_init(&vbclk->lock);
+
+	parent_data.fw_name = "rtx";
+	hw = devm_clk_hw_register_gate_parent_data(dev, "xc", &parent_data, 0,
+						   vbclk->base + VBATTB_SOSCCR2,
+						   VBATTB_SOSCCR2_SOSTP2,
+						   CLK_GATE_SET_TO_DISABLE, &vbclk->lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	clk_data->hws[VBATTB_XC] = hw;
+
+	hw = devm_clk_hw_register_fixed_factor_fwname(dev, np, "xbyp", "rtx", 0, 1, 1);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	clk_data->hws[VBATTB_XBYP] = hw;
+
+	parent_hws[0] = clk_data->hws[VBATTB_XC];
+	parent_hws[1] = clk_data->hws[VBATTB_XBYP];
+	hw = devm_clk_hw_register_mux_parent_hws(dev, "mux", parent_hws, 2, 0,
+						 vbclk->base + VBATTB_BKSCCR,
+						 VBATTB_BKSCCR_SOSEL,
+						 1, 0, &vbclk->lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	clk_data->hws[VBATTB_MUX] = hw;
+
+	/* Set load capacitance before registering the VBATTCLK clock. */
+	scoped_guard(spinlock, &vbclk->lock) {
+		u32 val = readl_relaxed(vbclk->base + VBATTB_XOSCCR);
+
+		val &= ~VBATTB_XOSCCR_XSEL;
+		val |= reg_lc;
+		writel_relaxed(val, vbclk->base + VBATTB_XOSCCR);
+	}
+
+	/* This feeds the RTC counter clock and it needs to stay on. */
+	hw = devm_clk_hw_register_gate_parent_hw(dev, "vbattclk", hw, CLK_IS_CRITICAL,
+						 vbclk->base + VBATTB_XOSCCR,
+						 VBATTB_XOSCCR_OUTEN, 0,
+						 &vbclk->lock);
+
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	clk_data->hws[VBATTB_VBATTCLK] = hw;
+
+	return of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
+}
+
+static const struct of_device_id vbattb_clk_match[] = {
+	{ .compatible = "renesas,r9a08g045-vbattb" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, vbattb_clk_match);
+
+static struct platform_driver vbattb_clk_driver = {
+	.driver		= {
+		.name	= "renesas-vbattb-clk",
+		.of_match_table = vbattb_clk_match,
+	},
+	.probe = vbattb_clk_probe,
+};
+module_platform_driver(vbattb_clk_driver);
+
+MODULE_DESCRIPTION("Renesas VBATTB Clock Driver");
+MODULE_AUTHOR("Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>");
+MODULE_LICENSE("GPL");
-- 
2.39.2


