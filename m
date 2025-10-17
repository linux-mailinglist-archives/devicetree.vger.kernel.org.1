Return-Path: <devicetree+bounces-228123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DC498BE8499
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5E7AB35C7F4
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981973469ED;
	Fri, 17 Oct 2025 11:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NXcvHnLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338DB34573B
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 11:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760700115; cv=none; b=PgDTK3fT+7cT2U5iyjdXtmZZWYsS8ZP99CSql/PepGAqM6PNusaCTf6EydklM6YSPf3rukIHnlGMyhe6CbKo7FHeAS/pRuNqZrzvx69O3nu0zWFYP186Wz7VdSYqgKuSXjpkYGQ33CGueoOJhmnKb9EUwspbCCEz0BqUPiOLiPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760700115; c=relaxed/simple;
	bh=QbwHtai+BJxYFudgqpSVpK+6DZzgQhT5atZHskToNH4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dn2eQuM9HG/Gg1MSYN6pc346xsJVnzzFBcHHqyoP7LQoCzHdyDLKU204ScHJiJVLbKKcnhgNkgBRFu0WaYEUP5n8qi32GPWe0RGR0kuxy6xt/imVLgSzjnFj7PMPSXRC0Uv9YmGXbUkmPhXr1dOuKJHOXVginZrKXDW6VdwaHb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NXcvHnLV; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b626a4cd9d6so372670366b.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 04:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760700111; x=1761304911; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SRcF0cyXRIrCALSbv1WyqVPHL5usg6xc8X0h6BNH44=;
        b=NXcvHnLVeRe35lgom4xnkPrL6s6snKC6qHC4QvuOOoVsB7rHWYwJE1nULw1x5pdnGR
         TmJEk61ZZoFo85lzM0jrp41xUTBHNlt/N0xTXw+Tnr6KaeqVnrZaXD6KmyL1Pji7GeMf
         GOCdMlEvpuc0P5dYenpKN1+75FYZqPrjq688t/M89oHjF27YyU/YaUuaBppheSP2Dn7b
         Do/OBFfVhnf/uelxMvUJdEqfOkojjUBbBeKpZg7uxZBv9t56sav9b3rWL/GRSTnOScSk
         3BuNRgPtfedbQbLSUwXaClge9MraHv5UpUJ6TRktAFXk2/p5TMHGfHHGAhZ0hYOaaBnh
         Ujxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760700111; x=1761304911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+SRcF0cyXRIrCALSbv1WyqVPHL5usg6xc8X0h6BNH44=;
        b=P3/ekNH78b11eiKto5zELgY7AWt8a9ir1XAG8joVQ0Zj0/f9qbetH62WqwzKjVS3yU
         1XrTtSH2r2D2ciI/RzvW7MZITqILkacJgUZCbqlRmqaj47yNU+om/eCqK6saxCzrusNa
         70pNEKFOvl4oCpv73jINfVALPuXKpDt8v+TrNLdonEMRsTZ74LcnD0vMq291iw7yMAuR
         +jl3P8NHJEViMBK/ABu5INQmTp/TbwzOBE9INC9SraynZ7XVC7VuqrXXCYATnRDUNOSK
         G17UXHG43jqlDktDDxZhp4jOMuW0KOXH6GcJpNKLuK5C27v+okfyMInZkGAS22qNJTPe
         sBsw==
X-Forwarded-Encrypted: i=1; AJvYcCU9u5RQvv6WvNhZloV7Ahk0cgEv/gRDStS2ZpuE5hVxZzp7mENh/pY4OqBN5uY1Icdt63M6b0Hn4ySw@vger.kernel.org
X-Gm-Message-State: AOJu0YzENEH5jvgdh7wYVIFGzYlJrMFaLK5g1iLX8glNJfNa5fEB22Ds
	B9eUlLHYx0rI6PTXQyJ6tLy+ebuk3XaDsH6x07wnKhLycL6tZgrZKjbM
X-Gm-Gg: ASbGncv6EY8r92oSSHr+unj/qVVXZ+CHQHh43DhP4fwT3bG4bOyZfH/Y9xsmmezlzQs
	z0S6RrTe5ABosUWmg4duGri+cmEL1TvOK07D3c28+ahy1LTlZHM/5eqMk3KVHN+Q48YA55Fuki9
	CCIUmUVw9f/ZBDtIj5RUkEHvhVkZJoA9TVMZsBNASYkUOpAECiSRoL5WBlhMEIJAq+IcaPdffIZ
	gYicqrT5MtWfzN09+hnOclJt8V5UJALYXvLfcAjQTHb4m+VzJsBkOaSEjNv7jjCMz2QAIYolCW7
	hAFRXFG9dLxeowUzCTMcd+xHbvfKzkMrjZOFTJYYM9neQ9rgtL+UySqCIcwxC+aSpgfMN6BqgAR
	02m6S4v0VTU38t5MGkfgUfY4DvNlXf7SmVp03ZW5rNaWSkym8fpnjgJl7CbjNVjfyGWAorg3JMF
	bjE4OGMqXVcG45kBSGDk/TJNLqyvg19wH+VlI5Nw==
X-Google-Smtp-Source: AGHT+IHawqhbMGg/z/t1tyezNSy1w1pPa2pT2cKM5bF1DJpICbbtH0JfsYDVp5aeJapIE5IuD8wpSQ==
X-Received: by 2002:a17:907:2dab:b0:b44:f9fe:913a with SMTP id a640c23a62f3a-b6475d04cb3mr349744166b.65.1760700111023;
        Fri, 17 Oct 2025 04:21:51 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccd1af35fsm788256166b.60.2025.10.17.04.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 04:21:50 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 3/8] clk: imx: add driver for imx8ulp's sim lpav
Date: Fri, 17 Oct 2025 04:20:20 -0700
Message-ID: <20251017112025.11997-4-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The i.MX8ULP System Integration Module (SIM) LPAV module is a block
control module found inside the LPAV subsystem, which offers some clock
gating options and reset line assertion/de-assertion capabilities.

Therefore, the clock gate management is supported by registering the
module's driver as a clock provider, while the reset capabilities are
managed via the auxiliary device API to allow the DT node to act as a
reset and clock provider.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/clk/imx/Makefile               |   1 +
 drivers/clk/imx/clk-imx8ulp-sim-lpav.c | 211 +++++++++++++++++++++++++
 2 files changed, 212 insertions(+)
 create mode 100644 drivers/clk/imx/clk-imx8ulp-sim-lpav.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 03f2b2a1ab63..208b46873a18 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -41,6 +41,7 @@ clk-imx-lpcg-scu-$(CONFIG_CLK_IMX8QXP) += clk-lpcg-scu.o clk-imx8qxp-lpcg.o
 clk-imx-acm-$(CONFIG_CLK_IMX8QXP) = clk-imx8-acm.o
 
 obj-$(CONFIG_CLK_IMX8ULP) += clk-imx8ulp.o
+obj-$(CONFIG_CLK_IMX8ULP) += clk-imx8ulp-sim-lpav.o
 
 obj-$(CONFIG_CLK_IMX1)   += clk-imx1.o
 obj-$(CONFIG_CLK_IMX25)  += clk-imx25.o
diff --git a/drivers/clk/imx/clk-imx8ulp-sim-lpav.c b/drivers/clk/imx/clk-imx8ulp-sim-lpav.c
new file mode 100644
index 000000000000..a67a0e50e1ce
--- /dev/null
+++ b/drivers/clk/imx/clk-imx8ulp-sim-lpav.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2025 NXP
+ */
+
+#include <dt-bindings/clock/imx8ulp-clock.h>
+
+#include <linux/auxiliary_bus.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define SYSCTRL0 0x8
+
+#define IMX8ULP_HIFI_CLK_GATE(gname, cname, pname, bidx)	\
+	{							\
+		.name = gname "_cg",				\
+		.id = IMX8ULP_CLK_SIM_LPAV_HIFI_##cname,	\
+		.parent = { .fw_name = pname, .name = pname },	\
+		.bit = bidx,					\
+	}
+
+struct clk_imx8ulp_sim_lpav_data {
+	void __iomem *base;
+	struct regmap *regmap;
+	spinlock_t lock; /* shared by MUX, clock gate and reset */
+	unsigned long flags; /* for spinlock usage */
+	struct clk_hw_onecell_data clk_data; /*  keep last */
+};
+
+struct clk_imx8ulp_sim_lpav_gate {
+	const char *name;
+	int id;
+	const struct clk_parent_data parent;
+	u8 bit;
+};
+
+static struct clk_imx8ulp_sim_lpav_gate gates[] = {
+	IMX8ULP_HIFI_CLK_GATE("hifi_core", CORE, "hifi_core", 17),
+	IMX8ULP_HIFI_CLK_GATE("hifi_pbclk", PBCLK, "lpav_bus", 18),
+	IMX8ULP_HIFI_CLK_GATE("hifi_plat", PLAT, "hifi_plat", 19)
+};
+
+#ifdef CONFIG_RESET_CONTROLLER
+static void clk_imx8ulp_sim_lpav_aux_reset_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	kfree(adev);
+}
+
+static void clk_imx8ulp_sim_lpav_unregister_aux_reset(void *data)
+{
+	struct auxiliary_device *adev = data;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+static int clk_imx8ulp_sim_lpav_register_aux_reset(struct platform_device *pdev)
+{
+	struct auxiliary_device *adev __free(kfree) = NULL;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	adev->name = "reset";
+	adev->dev.parent = &pdev->dev;
+	adev->dev.release = clk_imx8ulp_sim_lpav_aux_reset_release;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to initialize aux dev\n");
+		return ret;
+	}
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		dev_err(&pdev->dev, "failed to add aux dev\n");
+		return ret;
+	}
+
+	return devm_add_action_or_reset(&pdev->dev,
+					clk_imx8ulp_sim_lpav_unregister_aux_reset,
+					no_free_ptr(adev));
+}
+#else
+static int clk_imx8ulp_sim_lpav_register_aux_reset(struct platform_device *pdev)
+{
+	return 0;
+}
+#endif /* CONFIG_RESET_CONTROLLER */
+
+static void clk_imx8ulp_sim_lpav_lock(void *arg) __acquires(&data->lock)
+{
+	struct clk_imx8ulp_sim_lpav_data *data = dev_get_drvdata(arg);
+
+	spin_lock_irqsave(&data->lock, data->flags);
+}
+
+static void clk_imx8ulp_sim_lpav_unlock(void *arg) __releases(&data->lock)
+{
+	struct clk_imx8ulp_sim_lpav_data *data = dev_get_drvdata(arg);
+
+	spin_unlock_irqrestore(&data->lock, data->flags);
+}
+
+static const struct regmap_config clk_imx8ulp_sim_lpav_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.lock = clk_imx8ulp_sim_lpav_lock,
+	.unlock = clk_imx8ulp_sim_lpav_unlock,
+};
+
+static int clk_imx8ulp_sim_lpav_probe(struct platform_device *pdev)
+{
+	struct clk_imx8ulp_sim_lpav_data *data;
+	struct regmap_config regmap_config;
+	struct clk_hw *hw;
+	int i, ret;
+
+	data = devm_kzalloc(&pdev->dev,
+			    struct_size(data, clk_data.hws, ARRAY_SIZE(gates)),
+			    GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	dev_set_drvdata(&pdev->dev, data);
+
+	memcpy(&regmap_config, &clk_imx8ulp_sim_lpav_regmap_cfg, sizeof(regmap_config));
+	regmap_config.lock_arg = &pdev->dev;
+
+	/*
+	 * this lock is used directly by the clock gate and indirectly
+	 * by the reset and mux controller via the regmap API
+	 */
+	spin_lock_init(&data->lock);
+
+	data->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(data->base))
+		return dev_err_probe(&pdev->dev, PTR_ERR(data->base),
+				     "failed to ioremap base\n");
+	/*
+	 * although the clock gate doesn't use the regmap API to modify the
+	 * registers, we still need the regmap because of the reset auxiliary
+	 * driver and the MUX drivers, which use the parent device's regmap
+	 */
+	data->regmap = devm_regmap_init_mmio(&pdev->dev, data->base, &regmap_config);
+	if (IS_ERR(data->regmap))
+		return dev_err_probe(&pdev->dev, PTR_ERR(data->regmap),
+				     "failed to initialize regmap\n");
+
+	data->clk_data.num = ARRAY_SIZE(gates);
+
+	for (i = 0; i < ARRAY_SIZE(gates); i++) {
+		hw = devm_clk_hw_register_gate_parent_data(&pdev->dev,
+							   gates[i].name,
+							   &gates[i].parent,
+							   CLK_SET_RATE_PARENT,
+							   data->base + SYSCTRL0,
+							   gates[i].bit,
+							   0x0, &data->lock);
+		if (IS_ERR(hw))
+			return dev_err_probe(&pdev->dev, PTR_ERR(hw),
+					     "failed to register %s gate\n",
+					     gates[i].name);
+
+		data->clk_data.hws[i] = hw;
+	}
+
+	ret = clk_imx8ulp_sim_lpav_register_aux_reset(pdev);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register aux reset\n");
+
+	ret = devm_of_clk_add_hw_provider(&pdev->dev,
+					  of_clk_hw_onecell_get,
+					  &data->clk_data);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register clk hw provider\n");
+
+	/* used to probe MUX child device */
+	return devm_of_platform_populate(&pdev->dev);
+}
+
+static const struct of_device_id clk_imx8ulp_sim_lpav_of_match[] = {
+	{ .compatible = "fsl,imx8ulp-sim-lpav" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, clk_imx8ulp_sim_lpav_of_match);
+
+static struct platform_driver clk_imx8ulp_sim_lpav_driver = {
+	.probe = clk_imx8ulp_sim_lpav_probe,
+	.driver = {
+		.name = "clk-imx8ulp-sim-lpav",
+		.of_match_table = clk_imx8ulp_sim_lpav_of_match,
+	},
+};
+module_platform_driver(clk_imx8ulp_sim_lpav_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("i.MX8ULP LPAV System Integration Module (SIM) clock driver");
+MODULE_AUTHOR("Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>");
-- 
2.43.0


