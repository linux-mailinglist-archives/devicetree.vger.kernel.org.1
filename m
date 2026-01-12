Return-Path: <devicetree+bounces-253946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FB0D12EFA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:54:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 667DE301CB6B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AE035E52E;
	Mon, 12 Jan 2026 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jmIAR//3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAB135CB69
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226006; cv=none; b=ooY6xAkxLezb6lQTnBb1uqd48UBnUrwCB9rK+zgPO5c1wooqgvY9bJACLkKbgtE8Y7AZparNROgATBbFGfziH/c43UjK1uOuwxfv6yypV+ZRgi8PKFq9UAeVbfcYTfUKGMVmgKoOy/vCLQ36OUwRPYKf06nTWoCQ0oeI6CRdemA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226006; c=relaxed/simple;
	bh=JQ+Xav1WgiSg4TeVufpYQlYO8+Wa2XeAmvUJ98gRRoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sG319PMQQATVqkaJ4a9L+PMnUUc4l76L9W4BBy3tLQeS0xEvnGfX7OkjswVmFoGzjcVp1PIkGqJ2StF0SqeIwe/y6tvMUTSld5H3Hh8aKj0G6Oae1zbGHXZRRBVf7i6gtWN9AyD5/x0764U2buRkSTctjuT7TlKEZKgMbAyuE8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jmIAR//3; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so10302861a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768226000; x=1768830800; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKl8VFa3Ka3PXOsDL6wBQeU/owbrQtnhkMdPY++AJFQ=;
        b=jmIAR//3qOiykDKGAiZ28qOk6/TWKZDDcH0oQPCp1fslfeE0EVcryPjfKcF5ZFvJRV
         Ewa56j5SwY8BTChpmhg4FWR0t+nfsAOHDykj93ZP8sOU0lNNQrgfm7mrUiwKi3xlSXT2
         CMoQBBXOhk37775p29tt3+DpSGHr9PDfLM2PRoTeQgCREEPZYqoEozFFOUN6axhCAshO
         enhALAie+EY1I2PdJEFD1A8+srKG1Lgfth97gu548gwnveY4twdnZQUqyjs5QEu+guf/
         xcyOaVlUN0Mpvpbl58oT6J9iro6pQqj3r1g2qjcpy0ms9h3HXb7nhZ6HbFjRneN0kxl+
         Dtxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768226000; x=1768830800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oKl8VFa3Ka3PXOsDL6wBQeU/owbrQtnhkMdPY++AJFQ=;
        b=XwAgSY+vwv0bMQ9IPlcnZ+wuIehtM4uwULT77iPhYFDJQt3gYUGjwY/3MGu6er05iz
         yo7KKsD47yUPEfG1sXuBnuVcw6AxPY5fURUuSP+ORBKiePOPR609/6V2HisMSk4CkFvx
         6eOw0cgTHGxBGvTC9RGjyQl6EVaznPQ1CAOuwSJNK7hiQnuFuKpnIE3Kqkb61QbZpPPy
         hOH46Zo2dgPYUtwxoua0nCAX3dzK1cvsDEAQfr3RpsgaYRm+gBxRtXExOWfIaEUOp/D+
         CeCNOZopNB4m97x6abN4KDTLB+LZdRyaHXfRsNDVfOmW/8NGov2xnvrc0Chn+WMUUZDz
         jOdA==
X-Forwarded-Encrypted: i=1; AJvYcCXOvniMSdR76rlqTjAH/xVjMaGDlt44TPRUB0FzOBb7VzYIOGI+gPZObldgQn/0sXFTCtDDY1ll9/yU@vger.kernel.org
X-Gm-Message-State: AOJu0YwrTi256uVc9B6C+GcY8Uq4o0nT+XAbBuehhwhkk+bxSAua3HVR
	TQKFO2NPI9N1EgE0KrLPHPRH0l4UcJ0PvLtqwT2xrszn2JrJybLsKIAL9VQRPLfec6o=
X-Gm-Gg: AY/fxX5Eye/QCasODMvkIE1WZoqs38OCNHkneCvvVYc1+BoUu/rDSp3HIXSve7qW2Tt
	nM6NUvpv2Zh2JBLY+iZP4iUDSc6Dth29tLvadx274WTz+XtDmTEBchN3iEetKTQOJxCLeKOvtmu
	Oq8tFu6DRP87zbCQHhInk6utsAsbFmZkPUDxNDprfUQ6tr5uKvaOH/0R1ZHk7zQvPBL0IQTG00/
	GIIyLOvZDOfm0HOkRNcBjqLrFZj25pxl+zhdYsOZcWavUDWqnGjHutyCMeks8o1jNMhhsc2QCTH
	tsJd/daRNwVfKJ7VPqTt0UEXJHQwPEnjGPT/Pu9A40sPXlu5dpAdIcY9lN7ECl8rwgWLq/6a2hi
	IRtAMh3oIqioEMRoAgqUAxEZxgX68jGYJih0mK0aysHolqOvVcIkimaJJ4Vy6xVwCjpBz3QYeLA
	thDikaOkTHBLPXl55BF5ae4S8IxcW8fnM9SpgGPAqlKLaTRwbmATvF1Aax95hstzYu
X-Google-Smtp-Source: AGHT+IHaSjITLy2O7eu+G75J8lc4nWqpMQgQnwyAHzrISAncBykPJu9r1/tP3EKhmacNiqfMcUpAiA==
X-Received: by 2002:a17:906:4fc9:b0:b73:6d78:9b79 with SMTP id a640c23a62f3a-b8444c6c6e0mr1903327266b.20.1768226000413;
        Mon, 12 Jan 2026 05:53:20 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:19 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:17 +0100
Subject: [PATCH v2 4/6] phy: qcom-qmp-ufs: Add Milos support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-milos-ufs-v2-4-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=6087;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=JQ+Xav1WgiSg4TeVufpYQlYO8+Wa2XeAmvUJ98gRRoI=;
 b=MapvbhI3/OvU9Q1cCN3ulhWmrFrec/l9+WAzBT9Mg3KpPSwgz+fJdYaujXxhks3HHy34ddd2w
 BJBCrxzKU+XChTfKIIDO0wFG6Y2WBip6fv6WUk/LLBYk30ViYPm+aec
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the init sequence tables and config for the UFS QMP phy found in the
Milos SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8a280433a42b..df138a5442eb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -84,6 +84,68 @@ static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x0f),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0xcc),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x3e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
+};
+
 static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
@@ -1165,6 +1227,11 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* Regulator bulk data with load values for specific configurations */
+static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 140120 },
+	{ .supply = "vdda-pll", .init_load_uA = 18340 },
+};
+
 static const struct regulator_bulk_data msm8996_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 51400 },
 	{ .supply = "vdda-pll", .init_load_uA = 14600 },
@@ -1258,6 +1325,32 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 	.rx2		= 0x1a00,
 };
 
+static const struct qmp_phy_cfg milos_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+	.max_supported_gear	= UFS_HS_G4,
+
+	.tbls = {
+		.serdes		= milos_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(milos_ufsphy_serdes),
+		.tx		= milos_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(milos_ufsphy_tx),
+		.rx		= milos_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(milos_ufsphy_rx),
+		.pcs		= milos_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(milos_ufsphy_pcs),
+	},
+	.tbls_hs_b = {
+		.serdes		= sm8550_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
+	},
+
+	.vreg_list		= milos_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(milos_ufsphy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
@@ -2166,6 +2259,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
+		.compatible = "qcom,milos-qmp-ufs-phy",
+		.data = &milos_ufsphy_cfg,
+	}, {
 		.compatible = "qcom,msm8996-qmp-ufs-phy",
 		.data = &msm8996_ufsphy_cfg,
 	}, {

-- 
2.52.0


