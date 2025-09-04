Return-Path: <devicetree+bounces-212560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16441B4333E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF5DD1C2755F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647252BEFE0;
	Thu,  4 Sep 2025 06:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PHuKQ1Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62E0288C30
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756968990; cv=none; b=EVEp8XzyVt2gWTJezlHsP78vuBCbtfFhVKhWTRgcpzL9FJzEcGs+JvwivuO5lKP/OM2M2Rx9Bn48lKZgS5yJfzqMiPK1ijlSgnPCBP+bwt9PBWdnFjewkzZUnP020MxP51XgqeFm1Et1p9zqU/gss3BYVUiiIGeKDu7/mxfG4l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756968990; c=relaxed/simple;
	bh=srebaxDv3eZJ3Yn5QEdqdMvmUTaVbZloO57dCUSYXak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ef2kfZq0XrRzFgry82e3K/MIUaxoVRVei0MirqgyUCiPf4+EsNnIow2DVSqkQh6RmhuFVAAQbOyEZMrI6VhmRdHoyo57S3p7nm9VVwDPFZrNW6o7xRW9brz7j4F8DGWfyYvlUKdn1oVZ/+x7kn7L9D5iRhVl5ubG27NysQcN6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PHuKQ1Ud; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3dad6252eacso345158f8f.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968986; x=1757573786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iuWa/TU+jCKequWuceGeCu2kioVsaALaGs2DgkR7OiI=;
        b=PHuKQ1Ud/7Nf26cpdr0/i2FPotSJrTJM6AeVrArKIZSJUXENMnkKYerOLBQeASOtf2
         nrkxXDx7hJ+12fKe0QhPzV5yzTTUIuNOspS+1LNMZkM3nvRTx/6JN1UPX0WVtqIPs3jT
         hMEf6DVvBTlHmd/C9/WDTHoNoU2ChGSq+ZSHVJICGGHS2xuRBcZ4HrSo5ygjRqk2qZiR
         qGJrGgeT5YQeAXV+H9HLZN4hqJZnw7Mr/c0nRSkXh9/BeDWUXrtvd1s7VMqjT0aeVL3G
         rc3mk04NmPHUVpSJ0+MmjE5QagqoJFPBreuGMd3o5JSiE2b3mNbSdFxJT9Hlmxv1ySL/
         XyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968986; x=1757573786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iuWa/TU+jCKequWuceGeCu2kioVsaALaGs2DgkR7OiI=;
        b=Xba+YvcMmqVABRrIqhP/wFg88aTJMtWwqYqUJA9H30QeHDtWjeO67EiCZ+bLJ05X5Q
         D6pIKJkDDuuO/OvZnGICJ9T1hVF1tVP/w50KD8J5zj/JDYseIpgq9HL/qv4ffVIhh+32
         5bvyZT4tSAaEVlRJ0wvKH3r9fmjBf65l0oLTU533MxRdS9FfAEGi6ZidCm747IyYyT1o
         O5IJlPK8pxfGcbfuSynyHPXn7/GwGfDghmktK4ekXtPJD3Qy5kTL9xNpSrKqJ55rWWXl
         hbs0HMXegsH1T5/sr83JIK4lj+Ib4vJsfkQxaZsC41j5RCPBDu69XnTZXLFvIR7BTECl
         gahg==
X-Forwarded-Encrypted: i=1; AJvYcCXN2LOedg7Plm/9yeA8wrkrTZk0DFqu5/ZlUjWzigA6qP/homkpxtc/mtc/8F314l4UKSuJMCmI2XSe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+tP32v/JgDX4cG+EMCE7wfgIMqfcI41Z9RiHu/nsotErJ8fJe
	gKlGzydGUN83iLMStutGKa2mcYX30Kc7zI+YULFT1e7wCZ7T1pUyJQu6fqhH6mTDPE8=
X-Gm-Gg: ASbGncsNV1acfD+HvaR6/B9Mbj12V4EScoThFOEfdKF/eZeeGut7LtP2ZHqMntYBxJu
	H9aH2FQRLp2OzPO0333P5VTMYUE4m0HPHL3gf6vtJVkECHEH5DQdEvnKFoIL9BZY+N6si1297f+
	RMpenigRf7rAYD6UweQ4TvB/QbTTIn+a+4QmZznb3qce2cvItY5YPRbDJjhUleBzlOZGrTNrY3w
	IZplHC/I6rZkGPSQzBTSHJCVORLi11i0X18HkazTv4od1u6qzpv3bV0F4uOYlv/5Grj4XQ0dSr+
	a6TBF3ij8KOTZ7XMLkN6/80q1JN2TLyfYHOIVMk6KjvbkwzU7p+PSM7GcdMhuxUCquis/NDLBUY
	jv2vQbmqZ5Rg41a0Kvtk7cmrVVaqOqz5CzQ==
X-Google-Smtp-Source: AGHT+IGZcOQmL7QDDiQf5uiqGROnu/ur6py/GIqo6bRLjxu/5sY/Q4fqFg8GKpIxdF5jT/ziSXFakQ==
X-Received: by 2002:a05:6000:2384:b0:3cd:ac2b:7f0 with SMTP id ffacd0b85a97d-3d1def61f55mr11300684f8f.49.1756968986068;
        Wed, 03 Sep 2025 23:56:26 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Sep 2025 09:55:53 +0300
Subject: [PATCH 3/3] phy: qcom: edp: Add Glymur platform support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-3-e83c6b9a145b@linaro.org>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=13462; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=srebaxDv3eZJ3Yn5QEdqdMvmUTaVbZloO57dCUSYXak=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgRgAN4hAbV4ZOmc33+OmGfaLXBmYCk+Kvd+
 RiIB5LGl8KJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4EQAKCRAbX0TJAJUV
 VovpD/9OvHlxnwtUWXo367Losskrr81TZQxUS7pGnkp5abwlhIRkQf3B65I6ti5Y535Vyl7XWIy
 uJtOiOstGYLS4P09KbsK0cSWnsqBkT6CkkMs2LeQFnBXxWi7oqQadMxh+Bgppd7VFAT51BPwerm
 kzBGvidicXT+UpUMAD0YZpqUPFOmEwlVfayYT1y1HpdAKEfXt1VPlKLMWsnwK/vEFe7Zj4VXltE
 tAFXtClNYrChgDm5WGfmCAPozHkTrt/cVp2HFsuNdHp7Biof/WC3JwHHXqkgWltqXxcN3frgAtU
 kTk6UwORgyk/Yi9TyEEI9p+gfmLLkii6tFSTq5HhlCpntjlw6lkoco6cGgOelcSOW4RhZDqWh4U
 CNEPcP94yF+Qm7YjBOp27PtjhqniZRruhTeDI+XJxzDxQf/PmJRL+BDMBstYiSe2A9WNy/ad+8R
 dPgs01QqO/vLeFticouvsBp4/QzF9eezlaFSUla5pJD4irnPvEYqXCyuiSvr9Qi+4WqLAEzKc5V
 Km3IdwDY6nhLlQHSZVM2vG2nd8lgfxSryTCMtC9GaIfUld5RYbG9v5Sv6nz3JDjNsDqksWSPR9A
 hg+stA+UgbbPxuIomRXsLtdFim9+HuTed9+nhg/vNfskzdJtMRXiLfm4CawdbdCly9uEwI0Fz7J
 1/t9WYM6TnsmggQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Qualcomm Glymur platform has the new v8 version
of the eDP/DP PHY. So rework the driver to support this
new version and add the platform specific configuration data.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 239 ++++++++++++++++++++++++++++++++++--
 1 file changed, 232 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 116b7f7b4f8be93e5128c3cc6f382ce7576accbc..26af8d8db4d765ce35132a0fd092f8c8634e43d6 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -25,6 +25,7 @@
 #include "phy-qcom-qmp-dp-phy.h"
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-com-v6.h"
+#include "phy-qcom-qmp-qserdes-com-v8.h"
 
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
@@ -32,7 +33,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
@@ -76,6 +77,7 @@ struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
 	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 };
@@ -83,6 +85,8 @@ struct phy_ver_ops {
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
+	int aux_cfg_size;
+	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -185,6 +189,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_vco_div_cfg_v4[4] = {
+	0x1, 0x1, 0x2, 0x0,
+};
+
 static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
 	{ 0x05, 0x11, 0x17, 0x1d },
 	{ 0x05, 0x11, 0x18, 0xff },
@@ -199,6 +207,14 @@ static const u8 edp_pre_emp_hbr2_hbr3_v5[4][4] = {
 	{ 0x0d, 0xff, 0xff, 0xff }
 };
 
+static const u8 edp_phy_aux_cfg_v8[13] = {
+	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
+};
+
+static const u8 edp_phy_vco_div_cfg_v8[4] = {
+	0x1, 0x1, 0x1, 0x1,
+};
+
 static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v5 = {
 	.swing_hbr_rbr = &edp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
@@ -224,7 +240,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
-	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);
+
+	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+	if (ret)
+		return ret;
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -252,7 +272,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
+	for (int i = 0; i < edp->cfg->aux_cfg_size; i++)
 		writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
@@ -345,22 +365,22 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[0];
 		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[1];
 		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
-		vco_div = 0x2;
+		vco_div = edp->cfg->vco_div_cfg[2];
 		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
-		vco_div = 0x0;
+		vco_div = edp->cfg->vco_div_cfg[3];
 		*pixel_freq = 8100000000UL / 6;
 		break;
 
@@ -398,6 +418,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v4(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -530,6 +555,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
@@ -538,16 +564,21 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -555,10 +586,37 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
+static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V8_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
+{
+	writel(0x3f, edp->pll + QSERDES_V8_COM_CLK_FWD_CONFIG_1);
+
+	return 0;
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v8(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
 static int qcom_edp_phy_power_on_v6(const struct qcom_edp *edp)
 {
 	u32 val;
@@ -724,6 +782,139 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	case 5400:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 hsclk_sel;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x5;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x3;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 5400:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	case 8100:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V8_COM_SVS_MODE_CLK_SEL);
+	writel(0x3b, edp->pll + QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + QSERDES_V8_COM_PLL_IVCO);
+	writel(0x00, edp->pll + QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x96, edp->pll + QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + QSERDES_V8_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + QSERDES_V8_COM_BG_TIMER);
+	writel(0x0a, edp->pll + QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x00, edp->pll + QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + QSERDES_V8_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
@@ -732,12 +923,45 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
 };
 
+static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V8_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+};
+
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
+static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v8,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v8),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v8,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -1141,6 +1365,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },
+	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.45.2


