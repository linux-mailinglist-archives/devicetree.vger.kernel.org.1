Return-Path: <devicetree+bounces-127227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 003099E4EA8
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE585188166A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E016C1CB31D;
	Thu,  5 Dec 2024 07:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lp4VAMYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F531BBBF1
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733384002; cv=none; b=ghbXVrq3VvQjk2kcGwlulE34lM6Ke1drLkpfuVhI7Hm8oTQsGNTNEJtTJCFIqurIbV2NJLbdh+vL9ZxHIZaLaC7g75E8UGPciDgDZ4Wt3osy2IJO9CyygSYkzuKIhGD6ALV01iuII3iAh8vFlQmHtGOQxayB6bVhqRq1Z91BBE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733384002; c=relaxed/simple;
	bh=iLGQEG0MGCOTbjiK6m9v4+91pUuN3w5VUK6OiPsuNm0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rYlpmZdAFiWkqDCH0ge7I0PKmqzgoYB1H+dSIR4MND6f0ftD6emBb0NFux2lsud7K718CLwpv0g28EoJUbmOXxBGOV4aNl9AuUEQFuammPVoHik6tGp2IoR7Dk87WR/D9HhY/hZAX3WomiEZLWoEYYx2df2oduS5rfEvleRE3Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lp4VAMYt; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa5500f7a75so82255266b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383996; x=1733988796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbUd4Bjv9Szr1aHrKy8wPCWITceO1kvCtngZZYvRJf0=;
        b=lp4VAMYtsBRIno72L++qoT2c1klfdueb24i36cH/4ws/I7OcSlCdfPYKlIe5XGRgN2
         UZ6ZiWjqNrw0IG3Ba9IbTj8TGnLVFX8T25tzs5fyKTe+EutYt/HI7wJq5Yr/WQXdORLL
         YBTM8gvkEjb2XPHee/67U1lUuF8Rwd/pC9UoFAaohNm6ZPXs0B5kgb3mB82J1Rc2R1q9
         1iVo92m9iiT1tre/88PmVtd3Zs4TyJll86hfzK3Oy5q7rtp6dAhzzqDYNqS80IH603eL
         EkH2T1JCUksigPAn+YmNedQY6/0y3uWY6vFMlyBQYSAogZdqCxtPwbwFzxN4e+oY1Mx4
         DeZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383996; x=1733988796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbUd4Bjv9Szr1aHrKy8wPCWITceO1kvCtngZZYvRJf0=;
        b=e5hp+ANs1ovZ8U4qpmaxiwHfJ5FnvW6J+bjXj2VYBVsjxLPP4VNRONh0/2aXF+Xk4j
         KdGunyyx48AAJFGQkcljTW6CvKzE3J+ovm+pUdSEYrcx+I8UAaf0QGXYc/8Nz/FJbGTk
         gHKW8eKlyUX2ci0akirjljC6MRwWLSRO6T3ITr6SgTqpr90hq95fw5Qm4Dq9R2SG+4EY
         Oi87EqqTh8IZUUItO+bIQ8Xutv8quHvjN0OliCA8S6Jlg60H+i1bD0bcF828Rcoar0g9
         IRangKRUy9mz8UMFy3cPlC2mQLpUCgzCIuRyvH+YCzNQPhGOk5xkBqevIMavnh5MaNxG
         HjWQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4zDNZX5BFOQv8fNjaQ+jNygfKnbe3RkS4A6JCPLo3cq8LbiZf7RN19sSZkD3UoojsrlMBh+Y3Lo/+@vger.kernel.org
X-Gm-Message-State: AOJu0YwL7VfS2ROsPrIKDN1rbykO2ZXoaNzI6r6EOPXsfgtbftK2UA1L
	Y4n+xkISevf+o522C4z1U/BA0XaL2HkPIlCzTMMp2yQD0ZNos0a2I7Pxw8ih5HE=
X-Gm-Gg: ASbGncvFwdWCXjrdk3MmvPeAkAh49jbLjy6ldLplnMA/RvOtn9OI3U6/gKTymiUIAy5
	jgkCZWxupqMEdpOUCT+Dx8exHkpwPjDRKKbHvJfo02465YvGbqPXkoFYC7gaJqs2/yU1/GrmwVw
	ilzaUUl47fLuenKVn1ulzM8h+qxMbaHuVRvTnUT4/6F3APz0ewFRa7Nzyi6zysi4ZZgteD0OLot
	m4VNm1HWsq5QlHQS3QO5l6aGjsHHS1QbXMG/iiCN9HHCV7BvCJon9gwl2NmVYbaOtgI+zuALgBr
	7j0pH5K8xURCfShdlSw6sfpuB8yMwD+qLw==
X-Google-Smtp-Source: AGHT+IHNHlztvnn2YKPTupPy7irtmhcD07q8bL0o5UzylQP2VhznMrbt8FYseED/HYM9kfIhmtmXwA==
X-Received: by 2002:a17:906:23ea:b0:a99:5466:2556 with SMTP id a640c23a62f3a-aa5f7f6e957mr634121766b.61.1733383996464;
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:16 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:17 +0000
Subject: [PATCH v3 6/8] phy: exynos5-usbdrd: gs101: configure SS lanes
 based on orientation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-6-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

USB SS lanes need to be configured based on the connector orientation -
at most two lanes will be in use for USB (and the remaining two for
alternate modes like DP).

For the USB link to come up in SS, the lane configuration registers
have to be programmed accordingly.

While we still need a way to be notified of the actual connector
orientation and then reprogram the registers accordingly (at the moment
the configuration happens just once during phy_init() and never again),
we can prepare the code doing the configuration to take the orientation
into account.

Do so.

Note: the mutex is needed to synchronize this with the upcoming
connector orientation callback.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* collect tags
* replace #include typec_mux.h with typec.h, and move the former into
  next patch (Peter)
* commit message typo (Peter)
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 72 ++++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index c1ce6fdeef31..206483c7ca55 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -23,6 +23,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/soc/samsung/exynos-regs-pmu.h>
+#include <linux/usb/typec.h>
 
 /* Exynos USB PHY registers */
 #define EXYNOS5_FSEL_9MHZ6		0x0
@@ -209,6 +210,10 @@
 
 #define EXYNOS9_PMA_USBDP_CMN_REG00B8		0x02e0
 #define CMN_REG00B8_LANE_MUX_SEL_DP		GENMASK(3, 0)
+#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE3	BIT(3)
+#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE2	BIT(2)
+#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE1	BIT(1)
+#define CMN_REG00B8_LANE_MUX_SEL_DP_LANE0	BIT(0)
 
 #define EXYNOS9_PMA_USBDP_CMN_REG01C0		0x0700
 #define CMN_REG01C0_ANA_LCPLL_LOCK_DONE		BIT(7)
@@ -383,11 +388,13 @@ struct exynos5_usbdrd_phy_drvdata {
  * @clks: clocks for register access
  * @core_clks: core clocks for phy (ref, pipe3, utmi+, ITP, etc. as required)
  * @drv_data: pointer to SoC level driver data structure
+ * @phy_mutex: mutex protecting phy_init/exit & TCPC callbacks
  * @phys: array for 'EXYNOS5_DRDPHYS_NUM' number of PHY
  *	    instances each with its 'phy' and 'phy_cfg'.
  * @extrefclk: frequency select settings when using 'separate
  *	       reference clocks' for SS and HS operations
  * @regulators: regulators for phy
+ * @orientation: TypeC connector orientation - normal or flipped
  */
 struct exynos5_usbdrd_phy {
 	struct device *dev;
@@ -397,6 +404,7 @@ struct exynos5_usbdrd_phy {
 	struct clk_bulk_data *clks;
 	struct clk_bulk_data *core_clks;
 	const struct exynos5_usbdrd_phy_drvdata *drv_data;
+	struct mutex phy_mutex;
 	struct phy_usb_instance {
 		struct phy *phy;
 		u32 index;
@@ -406,6 +414,8 @@ struct exynos5_usbdrd_phy {
 	} phys[EXYNOS5_DRDPHYS_NUM];
 	u32 extrefclk;
 	struct regulator_bulk_data *regulators;
+
+	enum typec_orientation orientation;
 };
 
 static inline
@@ -647,22 +657,38 @@ exynos5_usbdrd_usbdp_g2_v4_pma_lane_mux_sel(struct exynos5_usbdrd_phy *phy_drd)
 	/* lane configuration: USB on all lanes */
 	reg = readl(regs_base + EXYNOS9_PMA_USBDP_CMN_REG00B8);
 	reg &= ~CMN_REG00B8_LANE_MUX_SEL_DP;
-	writel(reg, regs_base + EXYNOS9_PMA_USBDP_CMN_REG00B8);
-
 	/*
-	 * FIXME: below code supports one connector orientation only. It needs
-	 * updating once we can receive connector events.
+	 * USB on lanes 0 & 1 in normal mode, or 2 & 3 if reversed, DP on the
+	 * other ones.
 	 */
+	reg |= FIELD_PREP(CMN_REG00B8_LANE_MUX_SEL_DP,
+			  ((phy_drd->orientation == TYPEC_ORIENTATION_NORMAL)
+			   ? (CMN_REG00B8_LANE_MUX_SEL_DP_LANE3
+			      | CMN_REG00B8_LANE_MUX_SEL_DP_LANE2)
+			   : (CMN_REG00B8_LANE_MUX_SEL_DP_LANE1
+			      | CMN_REG00B8_LANE_MUX_SEL_DP_LANE0)));
+	writel(reg, regs_base + EXYNOS9_PMA_USBDP_CMN_REG00B8);
+
 	/* override of TX receiver detector and comparator: lane 1 */
 	reg = readl(regs_base + EXYNOS9_PMA_USBDP_TRSV_REG0413);
-	reg &= ~TRSV_REG0413_OVRD_LN1_TX_RXD_COMP_EN;
-	reg &= ~TRSV_REG0413_OVRD_LN1_TX_RXD_EN;
+	if (phy_drd->orientation == TYPEC_ORIENTATION_NORMAL) {
+		reg &= ~TRSV_REG0413_OVRD_LN1_TX_RXD_COMP_EN;
+		reg &= ~TRSV_REG0413_OVRD_LN1_TX_RXD_EN;
+	} else {
+		reg |= TRSV_REG0413_OVRD_LN1_TX_RXD_COMP_EN;
+		reg |= TRSV_REG0413_OVRD_LN1_TX_RXD_EN;
+	}
 	writel(reg, regs_base + EXYNOS9_PMA_USBDP_TRSV_REG0413);
 
 	/* lane 3 */
 	reg = readl(regs_base + EXYNOS9_PMA_USBDP_TRSV_REG0813);
-	reg |= TRSV_REG0813_OVRD_LN3_TX_RXD_COMP_EN;
-	reg |= TRSV_REG0813_OVRD_LN3_TX_RXD_EN;
+	if (phy_drd->orientation == TYPEC_ORIENTATION_NORMAL) {
+		reg |= TRSV_REG0813_OVRD_LN3_TX_RXD_COMP_EN;
+		reg |= TRSV_REG0813_OVRD_LN3_TX_RXD_EN;
+	} else {
+		reg &= ~TRSV_REG0813_OVRD_LN3_TX_RXD_COMP_EN;
+		reg &= ~TRSV_REG0813_OVRD_LN3_TX_RXD_EN;
+	}
 	writel(reg, regs_base + EXYNOS9_PMA_USBDP_TRSV_REG0813);
 }
 
@@ -700,21 +726,18 @@ exynos5_usbdrd_usbdp_g2_v4_pma_check_cdr_lock(struct exynos5_usbdrd_phy *phy_drd
 	int err;
 
 	err = readl_poll_timeout(
-			phy_drd->reg_pma + EXYNOS9_PMA_USBDP_TRSV_REG03C3,
-			reg, (reg & locked) == locked, sleep_us, timeout_us);
-	if (!err)
-		return;
-
-	dev_err(phy_drd->dev,
-		"timed out waiting for CDR lock (l0): %#.8x, retrying\n", reg);
-
-	/* based on cable orientation, this might be on the other phy port */
-	err = readl_poll_timeout(
-			phy_drd->reg_pma + EXYNOS9_PMA_USBDP_TRSV_REG07C3,
+			/* lane depends on cable orientation */
+			(phy_drd->reg_pma
+			 + ((phy_drd->orientation == TYPEC_ORIENTATION_NORMAL)
+			    ? EXYNOS9_PMA_USBDP_TRSV_REG03C3
+			    : EXYNOS9_PMA_USBDP_TRSV_REG07C3)),
 			reg, (reg & locked) == locked, sleep_us, timeout_us);
 	if (err)
 		dev_err(phy_drd->dev,
-			"timed out waiting for CDR lock (l2): %#.8x\n", reg);
+			"timed out waiting for CDR(l%d) lock: %#.8x\n",
+			((phy_drd->orientation == TYPEC_ORIENTATION_NORMAL)
+			 ? 0
+			 : 2), reg);
 }
 
 static void exynos5_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
@@ -1184,7 +1207,8 @@ static int exynos850_usbdrd_phy_init(struct phy *phy)
 		return ret;
 
 	/* UTMI or PIPE3 specific init */
-	inst->phy_cfg->phy_init(phy_drd);
+	scoped_guard(mutex, &phy_drd->phy_mutex)
+		inst->phy_cfg->phy_init(phy_drd);
 
 	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
 
@@ -1203,6 +1227,8 @@ static int exynos850_usbdrd_phy_exit(struct phy *phy)
 	if (ret)
 		return ret;
 
+	guard(mutex)(&phy_drd->phy_mutex);
+
 	/* Set PHY clock and control HS PHY */
 	reg = readl(regs_base + EXYNOS850_DRD_UTMI);
 	reg &= ~(UTMI_DP_PULLDOWN | UTMI_DM_PULLDOWN);
@@ -1701,6 +1727,10 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	phy_drd->drv_data = drv_data;
 
+	ret = devm_mutex_init(dev, &phy_drd->phy_mutex);
+	if (ret)
+		return ret;
+
 	if (of_property_present(dev->of_node, "reg-names")) {
 		void __iomem *reg;
 

-- 
2.47.0.338.g60cca15819-goog


