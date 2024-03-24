Return-Path: <devicetree+bounces-52753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 554E9887E69
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 19:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D433B1F21465
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 18:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729ABDDA3;
	Sun, 24 Mar 2024 18:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jK7CNAoJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44550D53C
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 18:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711306244; cv=none; b=dUH2Afcjl4RGl0dxCqNB8MItagbnkTeA5A0xSu0dgMUbPS/+5rfPmRytZTsLD9ibtdg1rjRrQve7tOmSAf9j8FdJX5g7dgj30V6wAkGTfZfbTt7UOTBVvCySR+by/vzqL03+QhosSWIjaom67aBd+bwznIfSZWdLlkE1ONi81w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711306244; c=relaxed/simple;
	bh=x/sM1oxfZUCPHoOMyY6oHfzmE1AvTxeArqfwZBquDmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nxaVWGvCFCGEyl9aqQLNl+pslA5T8yKDI9oj0GO5+N3L9HRxTNULc3LUJtQqBaojEyqJQtskSc/11tdBwM7E7fmBVNXJEYoD8ieLtj69Dkj3M6W1mp3tVos2HQWiLVpcYGsFnPKhmJPK+XNPiChwlGR+eaUKxnkSMn24UHkNSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jK7CNAoJ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a468226e135so436920366b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 11:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711306239; x=1711911039; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PGRRI7sgcjcdwbFUQNyGAZlpRlxjS+UkjJwbRkuNFeY=;
        b=jK7CNAoJOp5MLAPsBc+NeZHhxMxxkppSx8M05bOJkdhYVNlWOChYGA/9oZOECsZyZo
         m1qodtpeidRxZk42fabGY4jphFVWgLlor5BkWTu/cpOMbuM7IX+wyzQj73uamyv5xLgZ
         7nBK8anGqqoTZ1lKrIXoERAHYQAjl0Oejn+IZ76FlVEQfq3G/OAD38QtAPsEG7N05bKP
         JXdRU3SKbgdKRLsckYMJ+mKKt+KNjjZ+QZiIjAMO3+CWm9EdbNfH74ayEtFY5uNWz9K6
         MNQa4FnnNVFUsQZaueigLYfGvbk3j/jjU8qHTcMX2oRXVen9Xwxl0L9egKAnmj4j1dwN
         01gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711306239; x=1711911039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PGRRI7sgcjcdwbFUQNyGAZlpRlxjS+UkjJwbRkuNFeY=;
        b=Ghymq7g8O5u7au7yqBpOtS/QVVB5ewwbCCCy66k1Th8b0hr2BZw0gic9iQC6fwmfgd
         ALR0fmv0t9lFv2py/l0q2RM5bHrnHY1MB9p72iJBJN4eQ/m1IJni7qLwP9ch8q7RS6AU
         uCXvZQZsCMGruPAOKIPHpclGCL3eljbbHaXRP0OB2LxAYtFHXnhkRH+H5LoFoYG7MdAJ
         CXDkEwjLO8t6SkfLV9G29bbAO/1A4sb7jKnLGiDkQysnILewCLY1nUKLjNT5OiD3z7nH
         n1D59mJo+PXktsp6nVC7o9vNmQvmI2/jaKdF4lRjCNracNJXcp5HV6Bs6ggtsYhj7f0O
         KQVA==
X-Forwarded-Encrypted: i=1; AJvYcCUr/6/bWsREfircSK9MjEJvpt185ZSunBuMYYpb82/sFMz10OB6q4BNHNMspZX7B+ncZGy/311WXX+cl0ijJZPGjxf+YoA43+dArw==
X-Gm-Message-State: AOJu0YyQVOxwy3Ole0X8Zh6c4Mq6VKBWi+tL5RF6o2bU2j8UZd3Tl4l3
	HDVXbI6dpfw+bwG9XXh6jFwDybq69yTqZIwuJSJU73xPyfIPps7+Wkkee++96vc=
X-Google-Smtp-Source: AGHT+IHENUP27u6sa62ZGc7R/U3q3t+RoXnS6nZuB469wkPjZZSiKMv28mYur6G6Nspvxntqm2vzww==
X-Received: by 2002:a17:906:593:b0:a46:c510:261e with SMTP id 19-20020a170906059300b00a46c510261emr3353082ejn.49.1711306239357;
        Sun, 24 Mar 2024 11:50:39 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id kn5-20020a170906aa4500b00a46524d06afsm2188136ejb.8.2024.03.24.11.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 11:50:38 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sun, 24 Mar 2024 20:50:18 +0200
Subject: [PATCH RESEND v5 2/2] phy: qcom: edp: Add set_mode op for
 configuring eDP/DP submode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240324-x1e80100-phy-edp-compatible-refactor-v5-2-a0db5f3150bc@linaro.org>
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7178; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=x/sM1oxfZUCPHoOMyY6oHfzmE1AvTxeArqfwZBquDmQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmAHX61R4tDBW5Qjfmg/uK7sPX821geyy9RlYGB
 38jOeifwlGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgB1+gAKCRAbX0TJAJUV
 VuFkD/4yic+2C+wp+RSoc2Dg5xuN6t94FcQe1zHPQ0lBPAF+rf6wrKfmRDv/0yT7IcRrfFkRN1i
 dOvNq9tso6UqYVnro+T8SGWNMIVHpXk36E+0TN7LQYkBUOINYHkmtyhadFdwMVjidWP2YLtMrht
 BPAVZJ4GPyHxjBg3Jn+lXzVWw10z87Zi+LmZtuYtfexeT0xnssbdMDCLyjPoooBtwKCTTC515aW
 GEMPIqXvgc2mpVjHFAg1eS9DZWHakRzcl9QbeygSXZWBzuFt145UZNGHQg9eBj8Kpo78WC8o4MD
 CDRCkFfX86lZAX54TV5579q9o2hHYhA4Wx5qJ2aLQOeJA3TswK3sKRuPrJU9+oB6OGMBHid5bbD
 hcZeAEPes+R77RETXxp6uLaLtR7sdX4DMZtq3TOMmIcqAdolG0emOWIznrJ7WXAelDDMKEEqV+P
 p5WmrnII6OzK+tloQ0jX/BdDkEhZ6ucQSLEAwhgi3LVjX6IGNC382BW7a8Itu516lZt4ajaP4PM
 bpZqaIwaOOjX9YRtDu8to07NmPCPsIP8LyMKYxGxs91Ae9POMk5w8zRmsplZQhJxqybgBU0kDbQ
 VtWK9o7VSy8nq2bacpl7Xbx71OD7w/vkuSyNijrlfk+pz7bshOyB6hDLruMUW1x/lWjdsMvI73N
 WVYZ4R9SKW8un9Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Future platforms should not use different compatibles to differentiate
between eDP and DP mode. Instead, they should use a single compatible as
the IP block is the same. It will be the job of the controller to set the
submode of the PHY accordingly.

The existing platforms will remain with separate compatibles for each
mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
 1 file changed, 56 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 9818d994c68b..621d0453bf76 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
+#include <linux/phy/phy-dp.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -69,19 +70,21 @@
 
 #define TXn_TRAN_DRVR_EMP_EN                    0x0078
 
-struct qcom_edp_cfg {
-	bool is_dp;
-
-	/* DP PHY swing and pre_emphasis tables */
+struct qcom_edp_swing_pre_emph_cfg {
 	const u8 (*swing_hbr_rbr)[4][4];
 	const u8 (*swing_hbr3_hbr2)[4][4];
 	const u8 (*pre_emphasis_hbr_rbr)[4][4];
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 };
 
+struct qcom_edp_phy_cfg {
+	bool is_edp;
+	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+};
+
 struct qcom_edp {
 	struct device *dev;
-	const struct qcom_edp_cfg *cfg;
+	const struct qcom_edp_phy_cfg *cfg;
 
 	struct phy *phy;
 
@@ -97,6 +100,8 @@ struct qcom_edp {
 
 	struct clk_bulk_data clks[2];
 	struct regulator_bulk_data supplies[2];
+
+	bool is_edp;
 };
 
 static const u8 dp_swing_hbr_rbr[4][4] = {
@@ -127,8 +132,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x04, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg dp_phy_cfg = {
-	.is_dp = true,
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
 	.swing_hbr_rbr = &dp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
@@ -163,18 +167,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x00, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg edp_phy_cfg = {
-	.is_dp = false,
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.swing_hbr_rbr = &edp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+};
+
+static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+};
+
+static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
+	.is_edp = true,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
 	int ret;
 	u8 cfg8;
 
@@ -201,7 +215,12 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	if (cfg && cfg->is_dp)
+	/*
+	 * TODO: Re-work the conditions around setting the cfg8 value
+	 * when more information becomes available about why this is
+	 * even needed.
+	 */
+	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
 		cfg8 = 0xb7;
 	else
 		cfg8 = 0x37;
@@ -235,7 +254,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -246,6 +265,9 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (!cfg)
 		return 0;
 
+	if (edp->is_edp)
+		cfg = &edp_phy_swing_pre_emph_cfg;
+
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -262,7 +284,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	ldo_config = edp->is_edp ? 0x0 : 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -448,10 +470,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config;
+	u8 ldo_config = 0x0;
 	int timeout;
 	int ret;
 	u32 val;
@@ -469,7 +490,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 		return timeout;
 
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
@@ -590,6 +612,18 @@ static int qcom_edp_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qcom_edp *edp = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_DP)
+		return -EINVAL;
+
+	edp->is_edp = submode == PHY_SUBMODE_EDP;
+
+	return 0;
+}
+
 static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -605,6 +639,7 @@ static const struct phy_ops qcom_edp_ops = {
 	.configure	= qcom_edp_phy_configure,
 	.power_on	= qcom_edp_phy_power_on,
 	.power_off	= qcom_edp_phy_power_off,
+	.set_mode	= qcom_edp_phy_set_mode,
 	.exit		= qcom_edp_phy_exit,
 	.owner		= THIS_MODULE,
 };
@@ -782,6 +817,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 
 	edp->dev = dev;
 	edp->cfg = of_device_get_match_data(&pdev->dev);
+	edp->is_edp = edp->cfg->is_edp;
 
 	edp->edp = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(edp->edp))
@@ -840,10 +876,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
-	{ .compatible = "qcom,sc7280-edp-phy" },
-	{ .compatible = "qcom,sc8180x-edp-phy" },
-	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
-	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
+	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.34.1


