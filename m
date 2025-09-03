Return-Path: <devicetree+bounces-212253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C5EB422A8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C0DF3A4032
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFC2730E85A;
	Wed,  3 Sep 2025 13:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I+RAaZ/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE8630E859
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907810; cv=none; b=jMQQGOeDNH48BpmtNXkSzsagcCij2olhvhkG7U2tei1o15ZfupPt78oZMZv70iAoIxc13u37hr/ybCYc5OBI0vLP3/55TY5A+TxMYIpAa5RaePsO2KbqdIraqrAVwZ0D5UfBnocX3x8KMlwGjcMltdy5eaBvj0UzQIkRYMKzUy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907810; c=relaxed/simple;
	bh=KqqXaXmMUQsdCpJZVRGT6WfJSbl5ckiI5/av635g9bs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cwylI03FRhAWi7YtUmDAr5vpiluynkngLCO1KvTZD4IjHd/ATbkiDXLz5TkcrtMA0ezV19WEFJIH8s5ebkp2fO0zi5LslMciTctbJEcsnk42ZC8hLDlB8jlZwesKJO3cm1LyoTuhrHlgYKV9Vc7XzEJJiu3Lq732CpBGucjV9UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I+RAaZ/c; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45b8b8d45b3so32077205e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756907806; x=1757512606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2DhFOFHz0h/WoJvYuWdsxmXTZqYVyhlXjR9PRjd8hmc=;
        b=I+RAaZ/cGJ2RWCoNICBRenP263SZfaEyJf8gj8oPzu+iCUoAHGhM40Kl+MqfqvVFMI
         hRCjGBMGx+2b5Ob+a0RoqXDsb2NEaTp79mOm6Y6Qoq6t/hzhV4Mt3qxUuuAtSKnLaxP3
         3n84jfB0XHmZpkj5RtdrenGJub7BLOBS5m9Mo0TPcVUhblimfpDoQs8cvoNrMJrttoIt
         98ID8iK36s+yczcTrQBvkbUOihyN35tstCsHo93+myQEQvvI6kd/8B20QH1UlpWLraHA
         n2yAnVtdWtX4K+nZD00SvaTJGnVu6XZ+EKCUhTsDNPeweqJWxkqR5+msQyNcf7Lbx284
         gXyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756907806; x=1757512606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2DhFOFHz0h/WoJvYuWdsxmXTZqYVyhlXjR9PRjd8hmc=;
        b=GwD95hGi5VDD0DupcO80v2zwHyJvR+rYvex21W09bXJMPK53Tmrho8bjCI9Ifg1ew0
         7KaEVpWDrFP1yU5PYHZO2x/Dn3FZb8lYT6oPKp24xUNb1pyufBqDki0fRzHUrpg7HraR
         P2g+alL78z0/8XjGmiyKhP6tJLJEWABWQBAv6A8nDsVr9+Sp2CcSd8uBhsoUhf0P7s+Y
         fp0sYkEiDeBJFiwyseb8tDHwM6fzzOHlaLSr15Meq9yqKfdezRmFq0DAYQmYK7oqIs57
         tXf+H1u5s97LPa0RnrnOXY0uj6Sj8xH8Tk9DNl1LIOlaA9VYC4ME5zfwmVOPzjrVy2Hy
         W6uw==
X-Forwarded-Encrypted: i=1; AJvYcCXJy1EsRQfV8GHbVIXTAELJrFJsPTLQiJ3fkvreiQF6foNvEsA5/jNkpAR7IN41/vU5zqKfdob+GeVF@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy6JJGAOA22VQrw2mFyK/t3a5YZAdxmdD4irRENn8Q2oNSbTz/
	mBLiyhVPLIEw4404rM5evkgztWVd9EHjvsOQRQ6qMauUs04fikZlXDtxVi0X+hnlhZM=
X-Gm-Gg: ASbGnctLxCKH79jY2iNOLmjjTMbj3+GoD7M2uUcn4r3g0IMs+VVWaEvLVot+fLNRF7W
	jAomDWBp00Ht0fa31qQ3x4s6zgSRTtwl6P1aQWsWXwrM3HfMkKUZQ4EPQxwJvkx3InwWnYZ+GH2
	+p2jaViziTUUiKj3n2pUxHMl7gQf9D7PsNYjFjMJq5N3W1JVE2FMToIApNErIac0eEVIbMzEy5w
	oO3xFrqFEdma27b78reHdZm5P0CTwu86Ng6umcSxAEcBG4FWauN3u1nsOF3dDC5RteLk2Sas6Ho
	LeFg0Hp86RtgfLSdVjFxt7r+wu4m5hzCm3oa+7Vkk3NtOu8zwMaD1KQnu7drrEFKSopQlLTd9pq
	aXvkXdSWp9PzvYNz9mGdCtkn+5ZWvbKTQTqK8so1f7Mr87wBbBCox3jPc53kusDGPx4oJVpJsds
	/NOw==
X-Google-Smtp-Source: AGHT+IEyhCiL5ktj6QTvi8D22BxRnvNrT0TFR8jIAtkM1Xw+jjOyOz5Fh9eZ2GFeGHUXa5FnjJ21NQ==
X-Received: by 2002:a05:600c:4f8f:b0:456:f1e:205c with SMTP id 5b1f17b1804b1-45b85550704mr128247375e9.4.1756907805637;
        Wed, 03 Sep 2025 06:56:45 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b87632365sm197257135e9.16.2025.09.03.06.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 06:56:45 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 03 Sep 2025 13:56:40 +0000
Subject: [PATCH v3 3/5] clk: samsung: add Exynos ACPM clock driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-acpm-clk-v3-3-65ecd42d88c7@linaro.org>
References: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
In-Reply-To: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756907802; l=7939;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=KqqXaXmMUQsdCpJZVRGT6WfJSbl5ckiI5/av635g9bs=;
 b=9vLkq71OeAOD3a5unJd3JpZ9FJbTx9oYJdRYUIZOTH3T3hJqpbbEK3FjNnU3NHKBBIK/QLrtM
 Rfj6Crt3udhCPC91VIy257mL7F5KRwj8tOrkizZRa86OzTnk2YJs4JT
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the Exynos ACPM clock driver. It provides support for clocks that
are controlled by firmware that implements the ACPM interface.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/clk/samsung/Kconfig    |  10 ++
 drivers/clk/samsung/Makefile   |   1 +
 drivers/clk/samsung/clk-acpm.c | 203 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 214 insertions(+)

diff --git a/drivers/clk/samsung/Kconfig b/drivers/clk/samsung/Kconfig
index 76a494e95027af26272e30876a87ac293bd56dfa..70a8b82a0136b4d0213d8ff95e029c52436e5c7f 100644
--- a/drivers/clk/samsung/Kconfig
+++ b/drivers/clk/samsung/Kconfig
@@ -95,6 +95,16 @@ config EXYNOS_CLKOUT
 	  status of the certains clocks from SoC, but it could also be tied to
 	  other devices as an input clock.
 
+config EXYNOS_ACPM_CLK
+	tristate "Clock driver controlled via ACPM interface"
+	depends on EXYNOS_ACPM_PROTOCOL || (COMPILE_TEST && !EXYNOS_ACPM_PROTOCOL)
+	help
+	  This driver provides support for clocks that are controlled by
+	  firmware that implements the ACPM interface.
+
+	  This driver uses the ACPM interface to interact with the firmware
+	  providing all the clock controlls.
+
 config TESLA_FSD_COMMON_CLK
 	bool "Tesla FSD clock controller support" if COMPILE_TEST
 	depends on COMMON_CLK_SAMSUNG
diff --git a/drivers/clk/samsung/Makefile b/drivers/clk/samsung/Makefile
index b77fe288e4bb484c68d1ff497acc0b83d132ea03..04b63436b12f6f5169575d74f54b105e97bbb052 100644
--- a/drivers/clk/samsung/Makefile
+++ b/drivers/clk/samsung/Makefile
@@ -27,6 +27,7 @@ obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos990.o
 obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynosautov9.o
 obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynosautov920.o
 obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-gs101.o
+obj-$(CONFIG_EXYNOS_ACPM_CLK)		+= clk-acpm.o
 obj-$(CONFIG_S3C64XX_COMMON_CLK)	+= clk-s3c64xx.o
 obj-$(CONFIG_S5PV210_COMMON_CLK)	+= clk-s5pv210.o clk-s5pv210-audss.o
 obj-$(CONFIG_TESLA_FSD_COMMON_CLK)	+= clk-fsd.o
diff --git a/drivers/clk/samsung/clk-acpm.c b/drivers/clk/samsung/clk-acpm.c
new file mode 100644
index 0000000000000000000000000000000000000000..fe24471c41fcaab43b62b552949c26520b98c1e3
--- /dev/null
+++ b/drivers/clk/samsung/clk-acpm.c
@@ -0,0 +1,203 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Samsung Exynos ACPM protocol based clock driver.
+ *
+ * Copyright 2025 Linaro Ltd.
+ */
+
+#include <dt-bindings/clock/google,gs101-acpm.h>
+#include <linux/array_size.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/firmware/samsung/exynos-acpm-protocol.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/types.h>
+
+enum acpm_clk_dev_type {
+	GS101_ACPM_CLK_ID,
+};
+
+struct acpm_clk {
+	u32 id;
+	struct clk_hw hw;
+	unsigned int mbox_chan_id;
+	const struct acpm_handle *handle;
+};
+
+struct acpm_clk_variant {
+	unsigned int id;
+	const char *name;
+};
+
+struct acpm_clk_driver_data {
+	const struct acpm_clk_variant *clks;
+	unsigned int nr_clks;
+	unsigned int mbox_chan_id;
+};
+
+#define to_acpm_clk(clk) container_of(clk, struct acpm_clk, hw)
+
+#define ACPM_CLK(_id, cname)					\
+	{							\
+		.id		= _id,				\
+		.name		= cname,			\
+	}
+
+static const struct acpm_clk_variant gs101_acpm_clks[] = {
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_MIF, "mif"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_INT, "int"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_CPUCL0, "cpucl0"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_CPUCL1, "cpucl1"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_CPUCL2, "cpucl2"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_G3D, "g3d"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_G3DL2, "g3dl2"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_TPU, "tpu"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_INTCAM, "intcam"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_TNR, "tnr"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_CAM, "cam"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_MFC, "mfc"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_DISP, "disp"),
+	ACPM_CLK(GS101_CLK_ACPM_DVFS_BO, "b0"),
+};
+
+static const struct acpm_clk_driver_data acpm_clk_gs101  = {
+	.clks = gs101_acpm_clks,
+	.nr_clks = ARRAY_SIZE(gs101_acpm_clks),
+	.mbox_chan_id = 0,
+};
+
+static unsigned long acpm_clk_recalc_rate(struct clk_hw *hw,
+					  unsigned long parent_rate)
+{
+	struct acpm_clk *clk = to_acpm_clk(hw);
+
+	return clk->handle->ops.dvfs_ops.get_rate(clk->handle,
+					clk->mbox_chan_id, clk->id, 0);
+}
+
+static int acpm_clk_determine_rate(struct clk_hw *hw,
+				   struct clk_rate_request *req)
+{
+	/*
+	 * We can't figure out what rate it will be, so just return the
+	 * rate back to the caller. acpm_clk_recalc_rate() will be called
+	 * after the rate is set and we'll know what rate the clock is
+	 * running at then.
+	 */
+	return 0;
+}
+
+static int acpm_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+			     unsigned long parent_rate)
+{
+	struct acpm_clk *clk = to_acpm_clk(hw);
+
+	return clk->handle->ops.dvfs_ops.set_rate(clk->handle,
+					clk->mbox_chan_id, clk->id, rate);
+}
+
+static const struct clk_ops acpm_clk_ops = {
+	.recalc_rate = acpm_clk_recalc_rate,
+	.determine_rate = acpm_clk_determine_rate,
+	.set_rate = acpm_clk_set_rate,
+};
+
+static int acpm_clk_ops_init(struct device *dev, struct acpm_clk *aclk,
+			     const char *name)
+{
+	struct clk_init_data init = {};
+
+	init.name = name;
+	init.ops = &acpm_clk_ops;
+	aclk->hw.init = &init;
+
+	return devm_clk_hw_register(dev, &aclk->hw);
+}
+
+static int acpm_clk_probe(struct platform_device *pdev)
+{
+	enum acpm_clk_dev_type type = platform_get_device_id(pdev)->driver_data;
+	const struct acpm_clk_driver_data *drv_data;
+	const struct acpm_handle *acpm_handle;
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw **hws;
+	struct device *dev = &pdev->dev;
+	struct acpm_clk *aclks;
+	unsigned int mbox_chan_id;
+	int i, err, count;
+
+	switch (type) {
+	case GS101_ACPM_CLK_ID:
+		drv_data = &acpm_clk_gs101;
+		break;
+	default:
+		return dev_err_probe(dev, -EINVAL, "Invalid device type\n");
+	}
+
+	acpm_handle = devm_acpm_get_by_node(dev, dev->parent->of_node);
+	if (IS_ERR(acpm_handle))
+		return dev_err_probe(dev, PTR_ERR(acpm_handle),
+				     "Failed to get acpm handle.\n");
+
+	count = drv_data->nr_clks;
+	mbox_chan_id = drv_data->mbox_chan_id;
+
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, count),
+				GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->num = count;
+	hws = clk_data->hws;
+
+	aclks = devm_kcalloc(dev, count, sizeof(*aclks), GFP_KERNEL);
+	if (!aclks)
+		return -ENOMEM;
+
+	for (i = 0; i < count; i++) {
+		const struct acpm_clk_variant *variant = &drv_data->clks[i];
+		unsigned int id = variant->id;
+		struct acpm_clk *aclk;
+
+		if (id >= count)
+			return dev_err_probe(dev, -EINVAL,
+					     "Invalid ACPM clock ID.\n");
+
+		aclk = &aclks[id];
+		aclk->id = id;
+		aclk->handle = acpm_handle;
+		aclk->mbox_chan_id = mbox_chan_id;
+
+		hws[id] = &aclk->hw;
+
+		err = acpm_clk_ops_init(dev, aclk, variant->name);
+		if (err)
+			return dev_err_probe(dev, err,
+					     "Failed to register clock.\n");
+	}
+
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					   clk_data);
+}
+
+static const struct platform_device_id acpm_clk_id[] = {
+	{ "gs101-acpm-clk", GS101_ACPM_CLK_ID },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, acpm_clk_id);
+
+static struct platform_driver acpm_clk_driver = {
+	.driver	= {
+		.name = "acpm-clocks",
+	},
+	.probe = acpm_clk_probe,
+	.id_table = acpm_clk_id,
+};
+module_platform_driver(acpm_clk_driver);
+
+MODULE_AUTHOR("Tudor Ambarus <tudor.ambarus@linaro.org>");
+MODULE_DESCRIPTION("Samsung Exynos ACPM clock driver");
+MODULE_LICENSE("GPL");

-- 
2.51.0.338.gd7d06c2dae-goog


