Return-Path: <devicetree+bounces-95430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A7995979E
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D72B6B21982
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9621C4EFC;
	Wed, 21 Aug 2024 08:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSY821Bm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2161C1AC6
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724229564; cv=none; b=JXihiA3dsqlAV7R/31MUfl8WtL+argk3+hG/8mVNhnxPHQ45s6GPBjMPvJsjgNkM8H4RCv8OXcNWZrU0LxNDiDhwPlh+lYLYE0XCn4LgyDQuYvcdS51H2100Jzv4YJ7wn9KsiFvl8mJwWyWkKs24NyrakXlV4PoUL/Jaj5v9OcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724229564; c=relaxed/simple;
	bh=3v8gxfNdl+YKSE/9d8RsBuAukGiIKb0idPoI4Z8hD7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HUVesXj8fd4VGZYwJUbVnklIVYQz/aPScJnQiJc+vPRbFLC2SLFOjjMqKga5/RnPECcXPWBWDYUM44+BsLWfF1AL/XLveOvV++OBd4GAOo2qy2YmuR5x9jN1ae4TKOZWFdVTMwMSb3P5cQmWJSOf9Egcft222SJra4B4eCNjjss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSY821Bm; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5bede548f7cso4699889a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 01:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724229561; x=1724834361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p5NS54GpNoW7E+gduPASxxnL5epTS+ziclEJzzy8LVw=;
        b=GSY821BmFSg20JqWCXBoh/o1ug83PZqmai8Y8IUJv4BGB3YhtWVKs1hKQUzqIXtAVW
         SaYpzCY2bgKEg1wD6TMUthKa6Ljr21AAXKrBcMXfds5WQiWbXfkHZxBHLUjYL77R+MhE
         OQL2v3joN38PyDJ9yr7UP+Gt0ut0AisXbEWM+UNDgse1UuvIFa9S4JnJq5jaVhyo3TfW
         8FmAZgQ2/nwrfLV6aXFv0eY+ki2sGtHHua2eiaevmObzfK4wSIRYlWa5JiW4hjiDT0Zj
         dQJfsb8kiETQkL7r6wfmO9p26HttoUS2mX9KRTNMB37y+kGVx1654xhzRtiS06oYT//y
         QQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724229561; x=1724834361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p5NS54GpNoW7E+gduPASxxnL5epTS+ziclEJzzy8LVw=;
        b=sXZ9QtuWrDNcl13DYuj+Ugyyz4ASfYJ9FztyCz1a63BfYeA/DmUMsY+4RmSBboqIAe
         R6Ztbr6Rjpb47/HI/XRWOvljX2GCPEVhSXu8LhgU2/OFqqfCp4zLOSx1K3LyfpMmPaMW
         4Rct4A205BgTJxTDv6LFTHkhfyLndam39I80w/sTWraBocqQGJCo0Rbp4KgQDxZGnSbc
         67Q/seeuQN0EMsJYx1Q4CxXsZff2q6S4ojmFJUKQFF8HeigaXLTlar4hEyBEDIeJqeKI
         JskVJxzxvy0LyLfevFCmqbq80NaoEAXqcLoftQmsyGuS5niyh28C/c+LUh0Wd+0KpCE5
         yvHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCQ9DUjA8LttLgiQDCyeX8UiQlNkx5glqIL0nfPPPQr9/GsTVWu0IIKtHFDWu4b4kFCPKCXQpPEeGy@vger.kernel.org
X-Gm-Message-State: AOJu0YyA5knmFYQKjHTLzqD6OfCFA8GUKxiiZYsSsDPXHloWOgghnWUv
	bI327coOVHIlKZ8sVo+n6SZQ9vXnS41t7cckEMSwm2LsACHhp7k21+lzoHEO7oE=
X-Google-Smtp-Source: AGHT+IFL+efdYaMIvFEAHa2ZOmBrT64EwH5p2io/4VksJFJhgzFnSEbnzG8lQxW0DKq98kbZ/xH+Zw==
X-Received: by 2002:a05:6402:350d:b0:5a1:c43:82ca with SMTP id 4fb4d7f45d1cf-5bf1f239b24mr991270a12.26.1724229560915;
        Wed, 21 Aug 2024 01:39:20 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc0817a8sm7785019a12.84.2024.08.21.01.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 01:39:20 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Aug 2024 11:39:01 +0300
Subject: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240821-x1e80100-phy-add-gen4x4-v2-2-c34db42230e9@linaro.org>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3149; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3v8gxfNdl+YKSE/9d8RsBuAukGiIKb0idPoI4Z8hD7k=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmxae0SnrXkRtGRouTWjczroUzpA6suIULc1pqv
 DBSOK9OZTWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsWntAAKCRAbX0TJAJUV
 VkQCD/4utwhcNOhJjfQP0bFMjXshoUbeWfzfsuwR725n79Q/iwtu5HF8ojcyyL4Rv6aue77UHUd
 FG/Do9HLs4RFqFcgy53UhW6wzQTQMFY3a2hT+Oe/mnnBWE3lPo6buG+GaNegHUOuiz7Rp34eF41
 0D8/izt4giweLa2A7zu0HiLQjh21oMBnm56BcG0Mo/qM1wqjN2xfX9yyO3qToGnngwuBXk+p5W1
 5HKxzvUTKQHVE5Al3wzsEPlgHh6u1oc75TmV7uxDjm2GTW+78ezrxoHORmGkoYZm7tLysCQu11I
 MtZa4VR1u8/oT6HZfeHAEAKhOoZUn++sQwq/OY3j4dHdyV6SCNhEP/hc2iu0AOjIAjgIFs7bnvB
 xVuFhNGgFVbk/6IOb+d45PUIPtdNzhmjAkJAT9kvUrgduW5TUAOsRmVqc70vANDeOJ2H8WWtxgW
 KVUBdWE5hV6HXDot2Hzs3LCjQOX56IwT92Rv8Y4GO8dA5ppzaQ9aXRPnecdGJZ1YX1426DZTyWn
 xjx+Qx/YyDr1rbemSbEN9BJJ83c5Ib+USBOpG648AOlyAqcEY48JZ4e0zdsXpMT1PoY/tDWllPE
 WyvpibkwMDMVPAwETcMZJUTxr+91YkcA+BEVccMLmUikQ0qNoboUCTQa+TpMk+b5Z9jk3IvfKHx
 l2a/0h8dTKn446A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The sixth PCIe controller on X1E80100 can be used in either
4-lanes mode or 2-lanes mode. Add the configuration and compatible
for the 4-lane mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a7e2ce0c500d..df1ebc19c117 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1266,6 +1266,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE, 0x5b),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
+};
+
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX, 0x03),
@@ -3654,6 +3658,41 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
+static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= x1e80100_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= x1e80100_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= x1e80100_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= x1e80100_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+
+	.serdes_4ln_tbl		= x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl,
+	.serdes_4ln_num		= ARRAY_SIZE(x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl),
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -4436,6 +4475,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy",
+		.data = &x1e80100_qmp_gen4x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


