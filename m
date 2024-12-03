Return-Path: <devicetree+bounces-126570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C8C9E1BC4
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCD3A166878
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DEAF1E7669;
	Tue,  3 Dec 2024 12:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d007IGac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263531E5728
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228038; cv=none; b=tQ2WgnEkInMUyK3tcvdDKpqn+iUS6AGTDlt+I19EzrZwtvrbH67x68ePMCPXDEZmkskghlfBbGowORmmGA1Ova9B4Z/Rk0b8oZqIsTgXGUGFz3y78qObypfsl9VmGXNTe0eW/VS9EA7PdiMT2pWFid7nmxnLF9Rg/vnLE3x+Um8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228038; c=relaxed/simple;
	bh=iLGQEG0MGCOTbjiK6m9v4+91pUuN3w5VUK6OiPsuNm0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n2FDCLHPFLuCC1tfsSvIEkAvogGncptE+4fo8iTXstVabGZZnP9QsQmcJV1T31dc6ZT6zxmQhgnh2WCDE6ndZ+VPehkX1yAHTxGdRIy1YvzoR+YBltsNxypKbgK9fZHcL+qCgqHVz/8WVHOjtZwShMGK3OVoNbg8awMI8wKPCeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d007IGac; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa520699becso880237266b.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228034; x=1733832834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbUd4Bjv9Szr1aHrKy8wPCWITceO1kvCtngZZYvRJf0=;
        b=d007IGacKpW8sdPxPY7XGHxAbitg3RR+sUr3CmgZUBCbzY0hfb4gYYh5CmyHXY09Mk
         lKXLUixbHe3sLSZ092nw243XzO6P6Q7/v0XCjeK196+vhm56ebOI5xIe+jE/r1b/pMxT
         ci9NgeBtA2y+XLhFxS1z57tbCKUumBdm/UDo6MrYgg7zjyv79MNKrC1n5BMx4LqPExpu
         iOjm0DDSiF7iepVcQAioQfBkzrFxeHIAABD0LASBUWbG6FbTI2YXQQnxa1W5ntz0J+ln
         8K+XASIwoS7ULn7ho8sSVjqa6pu4HGmyp1o8rVgzJIwMceGubPes1yAR22KkXKOcqnlt
         QVqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228034; x=1733832834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbUd4Bjv9Szr1aHrKy8wPCWITceO1kvCtngZZYvRJf0=;
        b=eMb2YWSbFaFemSUJ4Y6ftjE4hTw78Tfx4NdDfqBrOhC/NeW3XFH0w8zJ9zEjbFTHAE
         iw1IR/TFlLFkWai+d5vvEY24hgppNkmwAU4Yy74bZNq0UH3SWFPxrExGHXO67d3Dh4Ov
         9HWD214BllWA0lt2L7+ajExhsXOyoUHuQ/vvY1hfaEycUHhoeVTv7aFyg5rShHkYjH9Z
         fQUJmiDmZL/MIAuIN+/SFbW3kuk79Bi4UhR7bRpsjdJTMFLnyZQnNIae1uPWWL3l1kjE
         XYAgcsZ+SFmYoUubWd2dM+0vC8eH0BNmsWSUI0OxAHFINFm0GkRzJiGsM9ZjPAxJlSfN
         RDtA==
X-Forwarded-Encrypted: i=1; AJvYcCVW5+7cjh0SCeiykYSzwrC6UOf/lLDGTcpW9e54jqpaEdvNq1+zQiKVB+M2b50/Hny7du86QRJyv5CK@vger.kernel.org
X-Gm-Message-State: AOJu0YxW6Ams95uZ2KeVFeytU9o+hkez331pzwr4AIQsD/yXabl9oxiz
	j+xWr8xXb68WX2dqMJN8DO7uo8ZHY9DZVADgPI/Bv/wlbV9vuMFnh6FqYLq5psHF74n9FMX70JT
	eQLw=
X-Gm-Gg: ASbGncsJ5dXmtRjF3MZ1FDE4WtlnUagyD6u7/6//W9uepAqkPBaM15/Kn5funZm2YP5
	dmSyT33o/77sCej7r/vp4vIXOjFhQn5LXNyLwO8it1mclemAZbN7x5JPumhw1beunq5gGDlgjKl
	0bUAAtNNFWOqE5EI/REph1+ohF3qhBhrLGv4BgCyq4sDqS0w9h+74vfzCChWXZ1qG+GyK239gdc
	/bdapTBE03F3Bu47b/5TFK/w8H5v5Bz/EQ2VY7UDfCBXhAKRIuNbK+lkf0ZBeihPBEDGkXrrYM8
	rxKCjznQMCF8fYmvplSXZ9UQ7RLEFV5CsA==
X-Google-Smtp-Source: AGHT+IGLKa18ejdUf1Tw7sL45vCS/g/CfIaxb9LtOrFRmJNocgVBAascJ/N0VvxB4+rEL/yLQUTPQg==
X-Received: by 2002:a17:906:fd84:b0:aa5:45f3:cbda with SMTP id a640c23a62f3a-aa5f7f2bacamr232510066b.56.1733228034234;
        Tue, 03 Dec 2024 04:13:54 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:54 +0000
Subject: [PATCH v2 6/8] phy: exynos5-usbdrd: gs101: configure SS lanes
 based on orientation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-6-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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


