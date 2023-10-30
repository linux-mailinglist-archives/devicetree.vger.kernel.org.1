Return-Path: <devicetree+bounces-12771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509D7DB68D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB5B2B20D60
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5978CDF69;
	Mon, 30 Oct 2023 09:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xKoRiZmw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACFCF4FC
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:34 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53A85D40
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507bd19eac8so6140506e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659307; x=1699264107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vy2QGdiySYQjPf+srvnSOBsJAozpLrCN/KmUnQp+vEU=;
        b=xKoRiZmwgJw5XRmQsFeVrNrR+XJSK5dp5dlwHZ23yxU5+5k1gf/IRYRXIvlyGrla1D
         16q96O96rVJ5f4sWhfb0vYMJEldZCGd6xfUdPTLwXzyGAYm0Yr1An1WrSvNcLGqUsdaG
         bFSrl3Sm5hmz6LVjFK8ex+QqyRixKiS05Qcuu7i/+HrfkFW17OD6O9ttu0F0B9tz0M+v
         5NuaEO2BNQlP2KUdf+s7GHYivBH8n5kM6ukz0dsTzwjza+PusBE9dtaKxqQ/DHOJFtiN
         PQpfudLYehsxG5L136qt/BYSbkdau822CZ9uo9oE/8QvU9aHlpL4lrT900mhL2hZcB7H
         bPwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659307; x=1699264107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vy2QGdiySYQjPf+srvnSOBsJAozpLrCN/KmUnQp+vEU=;
        b=McSshxraCxIJOLvKkYqfsCb9l9AXZYjFccQWZY/ONBTjZnTNNqx01aeHuOMjZL3aYs
         IWSZJ3iHpl3KS8SBcEyGSz0XQaHXR5cEPfixZx929qdLUiSOKoho8OYTo10XJ/X/3L5k
         RYRZdUAfv43DVnoSeucLutaRhzmQwK+CHTKZo1kTWueoqE50U2jdWiiCarAezeWPKAHP
         auf7MSANBmbs+YIyhVJxY7lWDHHjdbKDXr48UJD7BAHpONPgPKmijU5cdQDdj9cU75rA
         x7OKh9kYgCIaowp0zgR9zZ3aPhkI+Ps+T6z1dBH59Tc4hL+J0eO/b8sJ4IulhReu/r84
         vwTQ==
X-Gm-Message-State: AOJu0Yy8wf5fS0jZVryoYKwxBqYatw1HEQLgCiImAn2jPuUmK+eAtbyO
	EXSof6LkXuutifP2fCn4KbuxqA==
X-Google-Smtp-Source: AGHT+IHQP8ISszgl3bGs2/4yce8ERQQ1HunF+jRRQpJGkH/sc6BCEoiRjsd7mHCcESRw+gzBQIUUOg==
X-Received: by 2002:a05:6512:208e:b0:508:1f22:801 with SMTP id t14-20020a056512208e00b005081f220801mr5770711lfr.5.1698659307220;
        Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:26 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:21 +0100
Subject: [PATCH v2 5/7] phy: qcom: qmp-ufs: add QMP UFS PHY tables for
 SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-5-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7095;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Fc+B/N0X1LMyMcYdybaLZh1kghbFdIRFNFje9o/ByPA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vjy4+jDIPiccC+lWmtSfdjhrslE93NVbkqRLoy
 kkmf+eWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974wAKCRB33NvayMhJ0VBmEA
 CIDa1csPThW+88f4osSF8UUsACCIi8GWSaA0l+9n/glEQXI2xqdqyXlzGsX89R4ZxjKzJe6CaDD9dq
 8HjKOIwOAOo6cKyH8zE9c376TSyseZBqcNYhnJ/Rho7ZOGMRlrSbF98mMyIGN0Aks+rwGJ/1TN0x1L
 W13WOgyZKvpE7Vv3VFN3xQp0/RXiDYbEUWA4wUz0Bl6lCMVN0gA6Dodke0liepJMPcA3aajGo6WEgA
 ab8Sd0mMKd/qrq9/jrBDMvotiq7hMFO/mDhXGu976NcRCWC94uTGYKEER0f1Hm83n/+0gi76+savLw
 tOQkk8RNduabKQ+rSpDkEnz6HrT8tuaoTwiLAwTSxbPsCDcxrYAmnHPA3k9mV0kLF3pV3FHxmm4oxK
 vwiFf8I9r72xBR7WZbrnUrn+JmKG9J78qKkxK3q+F5cyJtRXdncML9g1rA3J3pzalZY8Ctp3i06h+y
 WQk3GS2ugxElMgkotKyvf7iNAeK8gZMp6vo6NkjwmZVbWI0rb9sRQHUbIEjIuRiS1ElAKg2XZee2pf
 QCptgLL+BouYOGzZoubzjfRxaodyqGj+9YLD+JXtU9MUESyjQZT7s9+b2MlpURBPLg0xEshk5YMLYj
 WbUH+HoNKEWMVGo5HCf8fJ04j54Wo8BZc/QlvKbP5ev/3QAMp8FqsrI8cs3Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add QMP UFS PHY support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 3 files changed, 94 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
index c23d5e41e25b..fe6c450f6123 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -12,6 +12,7 @@
 #define QPHY_V6_PCS_UFS_SW_RESET			0x008
 #define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
 #define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V6_PCS_UFS_PCS_CTRL1			0x020
 #define QPHY_V6_PCS_UFS_PLL_CNTL			0x02c
 #define QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
 #define QPHY_V6_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
index 15bcb4ba9139..ae220fd04d10 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
@@ -10,10 +10,17 @@
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
+#define QSERDES_UFS_V6_TX_LANE_MODE_1				0x7c
 
 #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2		0x08
 #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		0x10
+#define QSERDES_UFS_V6_RX_UCDR_SO_SATURATION			0x28
+#define QSERDES_UFS_V6_RX_UCDR_PI_CTRL1				0x58
+#define QSERDES_UFS_V6_RX_RX_TERM_BW_CTRL0			0xc4
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0xd4
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0xdc
 #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
+#define QSERDES_UFS_V6_RX_INTERFACE_MODE			0x1e0
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 514fa14df634..5f79d188b435 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -803,6 +803,67 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
+static const struct qmp_phy_init_tbl sm8650_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B3, 0xb9),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B6, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_SATURATION, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_TERM_BW_CTRL0, 0xfa),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+};
+
 struct qmp_ufs_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -1303,6 +1364,28 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
 	.regs			= ufsphy_v6_regs_layout,
 };
 
+static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+
+	.tbls = {
+		.serdes		= sm8650_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8650_ufsphy_serdes),
+		.tx		= sm8650_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8650_ufsphy_tx),
+		.rx		= sm8650_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8650_ufsphy_rx),
+		.pcs		= sm8650_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_pcs),
+	},
+	.clk_list		= sdm845_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static void qmp_ufs_configure_lane(void __iomem *base,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1826,6 +1909,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8550-qmp-ufs-phy",
 		.data = &sm8550_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-ufs-phy",
+		.data = &sm8650_ufsphy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


