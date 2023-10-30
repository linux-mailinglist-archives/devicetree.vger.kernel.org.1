Return-Path: <devicetree+bounces-12772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A530E7DB68B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8EF81C20A6D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35004F4FC;
	Mon, 30 Oct 2023 09:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E1YWaYGp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E93DDF60
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:34 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 000F9DB
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507a0907896so6069078e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659308; x=1699264108; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=glusSme2QQkVLJLZm8t10h7PVVgIoDbE3AU7D+I1dkM=;
        b=E1YWaYGpbXQXImoh825crfkEA7qlCgetx6nwc+M4CpxpKuByhBwzPV4VB/yUpszMPH
         ZV26KhI1EMsJ/u1Fw6YfkcPCVhfBXegokJRCdnbKD7TcvZ2twYiSKHCuH3p1DoB7fqO+
         vaGphCnJH9lN/RfbklicXK95TRi3VLpRxtEhHJ7JxWBjYfGU9WZO43LyUWHtD53E0Zr7
         sc0zGXM3Jv/t/iyvPH0QxNH6IQiApujtGzFY3OVsqL45YTW66Nn7GS2J8ETitfSbWafz
         a4bxx2EXHhCLekPQEt3MMnY7AN5OCojzUq0VFbvcbKDrHKeFsz6d6KhCWqq16LRl/Tny
         S1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659308; x=1699264108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=glusSme2QQkVLJLZm8t10h7PVVgIoDbE3AU7D+I1dkM=;
        b=Mzj6UYX1cArRE+ApHJdPosYKLkcGyuLj5wxZF1+1v7bdXgnoQqPZYfbREBJde7WO70
         x1g9IuXDMspFRg0Z1sjM9Nf81NXrF9Q8d2kRzL3wIfJJeAYXEgGYOfJEjISVHXzoioLI
         pi7ccCThjd/w/YSgtKSfn7Y87yR25RKjqHwi294mUM9XnI43KIzJ/a6Uy58rNiMdWUjz
         QNnsBLy47sxdQP8d5cIq9O7lShIXyNcluChOHJhbqA17g8etswXm9L1uZX3flVCkiF2K
         x85k7FE9uvLrXGBfLMpPs8Np2lDxrDRpjLAbyeVylzG0Nukxo5eysd+ys/Yf57vC2DwA
         jVBQ==
X-Gm-Message-State: AOJu0YyCNbuAX+oHADgEDogtzM74hXV0x9QboCdIvdO/OudbcMP7lpue
	VJlxIk/p4BkiWauRnNAotXc7Zg==
X-Google-Smtp-Source: AGHT+IFf732ZWzvZVXr+3wqMwMDfnaLPoiO76VOY7hDwCqBotV48lY1TPCeVdMt/OO41mH4FF9waKQ==
X-Received: by 2002:a05:6512:3f0b:b0:507:c507:c9b6 with SMTP id y11-20020a0565123f0b00b00507c507c9b6mr8876835lfa.41.1698659308250;
        Mon, 30 Oct 2023 02:48:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:22 +0100
Subject: [PATCH v2 6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-6-a543a4c4b491@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4407;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LO+hcrUVHXNOvdQ6DMrprTot+blAORk7xwd+5Mi5jDE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vkHwM5zd5F0Jx7L3dVqqfnrWdDvR9zpz1s/6JQ
 px5LSB+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT975AAKCRB33NvayMhJ0QXgEA
 C0Hz7DFKGNFE3NXGfHgbK5cnpuW0LZbwYlV9/qpj5bfGWJJidVFJxqgubwEu6gAWtHnLo91CsbTcI+
 L5Tnr2X/oxtodspNgdZ1i7ZcY2nvidiwYcw2x1k+Lf0Pq/QDP7QfK1NOKc6V3JFsy9k6ITxro+sUC+
 NIJw1DXQhKn8/3IGu7Gxpw5lZLY09wMC+/sGuv9up5dkv+Ne1lNu8uAEe5rV4Mfty43hRhA2HlGmS0
 Cbz1FFOXDtC0owOaS3yDIs4iqgr85z9D14RiCpOsBjJ68j+NkxUY9gioGERxytnDGDebD07efe2XsY
 KiF9NDPpLoi5nJjNopDfFvUf7WKfO8Sq06Tgh4Ub74gcPyIJyOTdWX5b/BdQiFM8H9rZI4RUJIeA+z
 CDLGaz6KIHwejJhAHh22yAhLQ66FwaB3iINfN6leinRMDPf0c7cSBVhbAJhuXwpa5OCYeZVSYbnKkL
 nykIWUE4l8hTh72WLch/am8pskcUi8Yf/4XbuL94jWe0wFyer4Jf1BYyDvTXr+NGSYdpWF7l/TVlEO
 rFQk/bpN0oJntrbPg0N1FJUqKPx+C8puFAqorpQOw39L2ntkyNRmF4NuTHnI3kWaTV015MtLQ8qP4l
 lkkwJkjd+rpcMfF+Xa15UWS5uZMb32tn+h5cBo2S0pY/RWbvXNBue1FoDLPw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add QMP PCIe PHY support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 65 ++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b64598ac59f4..2af7115ef968 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1909,6 +1909,35 @@ static const struct qmp_phy_init_tbl sm8550_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
 };
 
+static const struct qmp_phy_init_tbl sm8650_qmp_gen4x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_IVCM_CAL_CTRL2, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B0, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B1, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B3, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B5, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B6, 0xee),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B0, 0x23),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B1, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B2, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B3, 0xdf),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B4, 0x43),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B5, 0x76),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B6, 0xff),
+};
+
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
@@ -3047,6 +3076,36 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.has_nocsr_reset	= true,
 };
 
+static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= sm8550_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= sm8550_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= sm8650_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(sm8650_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= sm8550_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= sm8550_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= sm8550_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
 static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 	.offsets		= &qmp_pcie_offsets_v5_20,
@@ -3820,6 +3879,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy",
 		.data = &sm8550_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-gen3x2-pcie-phy",
+		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-gen4x2-pcie-phy",
+		.data = &sm8650_qmp_gen4x2_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


