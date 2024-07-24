Return-Path: <devicetree+bounces-87842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7361493B365
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 17:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 016761F228E4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 15:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9977015B147;
	Wed, 24 Jul 2024 15:11:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D483615ADB1;
	Wed, 24 Jul 2024 15:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721833885; cv=none; b=hfzAY1zQUJgBi2arwE/5MiPjDVs49ZIxdFA5uCT9rGzxzdCABR3fTowCEykiQcwKa3WqQ2WRvvzCCo2JQz/NKNU6OmHR6ung7tG+e1g+XCfG/CKj2FwE+688nETNhMmVFZmDg98U9YuGLWiKCuXrAwMAr9ebwi3+rTp4slH98Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721833885; c=relaxed/simple;
	bh=ehv49nSWHu5SIni58KmoErB+ElgkZDBgbbx9CuycqQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n+paT0Bko+ezvBb3LDdu4feWylHU71PPkhC9sh8T+X36VsnOzhKy0BWzYyoEsuzFLUGH0YYt+c1G3f6aJibrqA68v5tN5lMlOLG8eExqE/U2YdBRgGStKW+egKeefTGrMgepVQOn48Qq3khFrKmrTQnI9Oec3JpU3HqeuBQ4c4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 15E3B2096E;
	Wed, 24 Jul 2024 17:01:55 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 031132086C;
	Wed, 24 Jul 2024 17:01:55 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Wed, 24 Jul 2024 17:01:37 +0200
Subject: [PATCH v7 4/6] drm/msm: add msm8998 hdmi phy/pll support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240724-hdmi-tx-v7-4-e44a20553464@freebox.fr>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
In-Reply-To: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0

From: Arnaud Vrac <avrac@freebox.fr>

Add support for the HDMI PHY as present on the Qualcomm MSM8998 SoC.
This code is mostly copy & paste of the vendor code from msm-4.4
kernel.lnx.4.4.r38-rel.

Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/msm/Makefile                   |   1 +
 drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 779 +++++++++++++++++++++++++
 drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
 5 files changed, 882 insertions(+)

diff --git a/drivers/gpu/drm/msm/Makefile b/drivers/gpu/drm/msm/Makefile
index eb788921ff4fe..b9a5dc8c33ede 100644
--- a/drivers/gpu/drm/msm/Makefile
+++ b/drivers/gpu/drm/msm/Makefile
@@ -32,6 +32,7 @@ msm-display-$(CONFIG_DRM_MSM_HDMI) += \
 	hdmi/hdmi_phy.o \
 	hdmi/hdmi_phy_8960.o \
 	hdmi/hdmi_phy_8996.o \
+	hdmi/hdmi_phy_8998.o \
 	hdmi/hdmi_phy_8x60.o \
 	hdmi/hdmi_phy_8x74.o \
 	hdmi/hdmi_pll_8960.o \
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 4586baf364151..a62d2aedfbb72 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -137,6 +137,7 @@ enum hdmi_phy_type {
 	MSM_HDMI_PHY_8960,
 	MSM_HDMI_PHY_8x74,
 	MSM_HDMI_PHY_8996,
+	MSM_HDMI_PHY_8998,
 	MSM_HDMI_PHY_MAX,
 };
 
@@ -154,6 +155,7 @@ extern const struct hdmi_phy_cfg msm_hdmi_phy_8x60_cfg;
 extern const struct hdmi_phy_cfg msm_hdmi_phy_8960_cfg;
 extern const struct hdmi_phy_cfg msm_hdmi_phy_8x74_cfg;
 extern const struct hdmi_phy_cfg msm_hdmi_phy_8996_cfg;
+extern const struct hdmi_phy_cfg msm_hdmi_phy_8998_cfg;
 
 struct hdmi_phy {
 	struct platform_device *pdev;
@@ -184,6 +186,7 @@ void __exit msm_hdmi_phy_driver_unregister(void);
 #ifdef CONFIG_COMMON_CLK
 int msm_hdmi_pll_8960_init(struct platform_device *pdev);
 int msm_hdmi_pll_8996_init(struct platform_device *pdev);
+int msm_hdmi_pll_8998_init(struct platform_device *pdev);
 #else
 static inline int msm_hdmi_pll_8960_init(struct platform_device *pdev)
 {
@@ -194,6 +197,11 @@ static inline int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 {
 	return -ENODEV;
 }
+
+static inline int msm_hdmi_pll_8998_init(struct platform_device *pdev)
+{
+	return -ENODEV;
+}
 #endif
 
 /*
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
index 88a3423b7f24d..95b3f7535d840 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
@@ -118,6 +118,9 @@ static int msm_hdmi_phy_pll_init(struct platform_device *pdev,
 	case MSM_HDMI_PHY_8996:
 		ret = msm_hdmi_pll_8996_init(pdev);
 		break;
+	case MSM_HDMI_PHY_8998:
+		ret = msm_hdmi_pll_8998_init(pdev);
+		break;
 	/*
 	 * we don't have PLL support for these, don't report an error for now
 	 */
@@ -193,6 +196,8 @@ static const struct of_device_id msm_hdmi_phy_dt_match[] = {
 	  .data = &msm_hdmi_phy_8x74_cfg },
 	{ .compatible = "qcom,hdmi-phy-8996",
 	  .data = &msm_hdmi_phy_8996_cfg },
+	{ .compatible = "qcom,hdmi-phy-8998",
+	  .data = &msm_hdmi_phy_8998_cfg },
 	{}
 };
 
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
new file mode 100644
index 0000000000000..9a3b005fa391a
--- /dev/null
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
@@ -0,0 +1,779 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2016, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2024 Freebox SAS
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/delay.h>
+
+#include "hdmi.h"
+
+#define HDMI_VCO_MAX_FREQ			12000000000UL
+#define HDMI_VCO_MIN_FREQ			8000000000UL
+
+#define HDMI_PCLK_MAX_FREQ			600000000
+#define HDMI_PCLK_MIN_FREQ			25000000
+
+#define HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD	3400000000UL
+#define HDMI_DIG_FREQ_BIT_CLK_THRESHOLD		1500000000UL
+#define HDMI_MID_FREQ_BIT_CLK_THRESHOLD		750000000UL
+#define HDMI_CORECLK_DIV			5
+#define HDMI_DEFAULT_REF_CLOCK			19200000
+#define HDMI_PLL_CMP_CNT			1024
+
+#define HDMI_PLL_POLL_MAX_READS			100
+#define HDMI_PLL_POLL_TIMEOUT_US		150
+
+#define HDMI_NUM_TX_CHANNEL			4
+
+struct hdmi_pll_8998 {
+	struct platform_device *pdev;
+	struct clk_hw clk_hw;
+	unsigned long rate;
+
+	/* pll mmio base */
+	void __iomem *mmio_qserdes_com;
+	/* tx channel base */
+	void __iomem *mmio_qserdes_tx[HDMI_NUM_TX_CHANNEL];
+};
+
+#define hw_clk_to_pll(x) container_of(x, struct hdmi_pll_8998, clk_hw)
+
+struct hdmi_8998_phy_pll_reg_cfg {
+	u32 com_svs_mode_clk_sel;
+	u32 com_hsclk_sel;
+	u32 com_pll_cctrl_mode0;
+	u32 com_pll_rctrl_mode0;
+	u32 com_cp_ctrl_mode0;
+	u32 com_dec_start_mode0;
+	u32 com_div_frac_start1_mode0;
+	u32 com_div_frac_start2_mode0;
+	u32 com_div_frac_start3_mode0;
+	u32 com_integloop_gain0_mode0;
+	u32 com_integloop_gain1_mode0;
+	u32 com_lock_cmp_en;
+	u32 com_lock_cmp1_mode0;
+	u32 com_lock_cmp2_mode0;
+	u32 com_lock_cmp3_mode0;
+	u32 com_core_clk_en;
+	u32 com_coreclk_div_mode0;
+
+	u32 tx_lx_tx_band[HDMI_NUM_TX_CHANNEL];
+	u32 tx_lx_tx_drv_lvl[HDMI_NUM_TX_CHANNEL];
+	u32 tx_lx_tx_emp_post1_lvl[HDMI_NUM_TX_CHANNEL];
+	u32 tx_lx_pre_driver_1[HDMI_NUM_TX_CHANNEL];
+	u32 tx_lx_pre_driver_2[HDMI_NUM_TX_CHANNEL];
+	u32 tx_lx_res_code_offset[HDMI_NUM_TX_CHANNEL];
+
+	u32 phy_mode;
+};
+
+struct hdmi_8998_post_divider {
+	u64 vco_freq;
+	int hsclk_divsel;
+	int vco_ratio;
+	int tx_band_sel;
+	int half_rate_mode;
+};
+
+static inline struct hdmi_phy *pll_get_phy(struct hdmi_pll_8998 *pll)
+{
+	return platform_get_drvdata(pll->pdev);
+}
+
+static inline void hdmi_pll_write(struct hdmi_pll_8998 *pll, int offset,
+				  u32 data)
+{
+	writel(data, pll->mmio_qserdes_com + offset);
+}
+
+static inline u32 hdmi_pll_read(struct hdmi_pll_8998 *pll, int offset)
+{
+	return readl(pll->mmio_qserdes_com + offset);
+}
+
+static inline void hdmi_tx_chan_write(struct hdmi_pll_8998 *pll, int channel,
+				      int offset, int data)
+{
+	 writel(data, pll->mmio_qserdes_tx[channel] + offset);
+}
+
+static inline u32 pll_get_cpctrl(u64 frac_start, unsigned long ref_clk,
+				 bool gen_ssc)
+{
+	if ((frac_start != 0) || gen_ssc)
+		return 0x8;
+
+	return 0x30;
+}
+
+static inline u32 pll_get_rctrl(u64 frac_start, bool gen_ssc)
+{
+	if ((frac_start != 0) || gen_ssc)
+		return 0x16;
+
+	return 0x18;
+}
+
+static inline u32 pll_get_cctrl(u64 frac_start, bool gen_ssc)
+{
+	if ((frac_start != 0) || gen_ssc)
+		return 0x34;
+
+	return 0x2;
+}
+
+static inline u32 pll_get_integloop_gain(u64 frac_start, u64 bclk, u32 ref_clk,
+					 bool gen_ssc)
+{
+	int digclk_divsel = bclk > HDMI_DIG_FREQ_BIT_CLK_THRESHOLD ? 1 : 2;
+	u64 base;
+
+	if ((frac_start != 0) || gen_ssc)
+		base = 0x3F;
+	else
+		base = 0xC4;
+
+	base <<= (digclk_divsel == 2 ? 1 : 0);
+
+	return (base <= 2046 ? base : 2046);
+}
+
+static inline u32 pll_get_pll_cmp(u64 fdata, unsigned long ref_clk)
+{
+	u64 dividend = HDMI_PLL_CMP_CNT * fdata;
+	u32 divisor = ref_clk * 10;
+	u32 rem;
+
+	rem = do_div(dividend, divisor);
+	if (rem > (divisor >> 1))
+		dividend++;
+
+	return dividend - 1;
+}
+
+static inline u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
+{
+	u64 fdata = ((u64)pll_cmp) * ref_clk * 10;
+
+	do_div(fdata, HDMI_PLL_CMP_CNT);
+
+	return fdata;
+}
+
+#define HDMI_REF_CLOCK_HZ ((u64)19200000)
+#define HDMI_MHZ_TO_HZ ((u64)1000000)
+static int pll_get_post_div(struct hdmi_8998_post_divider *pd, u64 bclk)
+{
+	u32 const ratio_list[] = {1, 2, 3, 4, 5, 6,
+				     9, 10, 12, 15, 25};
+	u32 const band_list[] = {0, 1, 2, 3};
+	u32 const sz_ratio = ARRAY_SIZE(ratio_list);
+	u32 const sz_band = ARRAY_SIZE(band_list);
+	u32 const cmp_cnt = 1024;
+	u32 const th_min = 500, th_max = 1000;
+	u32 half_rate_mode = 0;
+	u32 list_elements;
+	int optimal_index;
+	u32 i, j, k;
+	u32 found_hsclk_divsel = 0, found_vco_ratio;
+	u32 found_tx_band_sel;
+	u64 const min_freq = HDMI_VCO_MIN_FREQ, max_freq = HDMI_VCO_MAX_FREQ;
+	u64 freq_list[ARRAY_SIZE(ratio_list) * ARRAY_SIZE(band_list)];
+	u64 found_vco_freq;
+	u64 freq_optimal;
+
+find_optimal_index:
+	freq_optimal = max_freq;
+	optimal_index = -1;
+	list_elements = 0;
+
+	for (i = 0; i < sz_ratio; i++) {
+		for (j = 0; j < sz_band; j++) {
+			u64 freq = div_u64(bclk, (1 << half_rate_mode));
+
+			freq *= (ratio_list[i] * (1 << band_list[j]));
+			freq_list[list_elements++] = freq;
+		}
+	}
+
+	for (k = 0; k < ARRAY_SIZE(freq_list); k++) {
+		u32 const clks_pll_div = 2, core_clk_div = 5;
+		u32 const rng1 = 16, rng2 = 8;
+		u32 th1, th2;
+		u64 core_clk, rvar1, rem;
+
+		core_clk = (((freq_list[k] /
+			      ratio_list[k / sz_band]) /
+			      clks_pll_div) / core_clk_div);
+
+		rvar1 = HDMI_REF_CLOCK_HZ * rng1 * HDMI_MHZ_TO_HZ;
+		rvar1 = div64_u64_rem(rvar1, (cmp_cnt * core_clk), &rem);
+		if (rem > ((cmp_cnt * core_clk) >> 1))
+			rvar1++;
+		th1 = rvar1;
+
+		rvar1 = HDMI_REF_CLOCK_HZ * rng2 * HDMI_MHZ_TO_HZ;
+		rvar1 = div64_u64_rem(rvar1, (cmp_cnt * core_clk), &rem);
+		if (rem > ((cmp_cnt * core_clk) >> 1))
+			rvar1++;
+		th2 = rvar1;
+
+		if (freq_list[k] >= min_freq &&
+				freq_list[k] <= max_freq) {
+			if ((th1 >= th_min && th1 <= th_max) ||
+					(th2 >= th_min && th2 <= th_max)) {
+				if (freq_list[k] <= freq_optimal) {
+					freq_optimal = freq_list[k];
+					optimal_index = k;
+				}
+			}
+		}
+	}
+
+	if (optimal_index == -1) {
+		if (!half_rate_mode) {
+			half_rate_mode = 1;
+			goto find_optimal_index;
+		} else {
+			return -EINVAL;
+		}
+	} else {
+		found_vco_ratio = ratio_list[optimal_index / sz_band];
+		found_tx_band_sel = band_list[optimal_index % sz_band];
+		found_vco_freq = freq_optimal;
+	}
+
+	switch (found_vco_ratio) {
+	case 1:
+		found_hsclk_divsel = 15;
+		break;
+	case 2:
+		found_hsclk_divsel = 0;
+		break;
+	case 3:
+		found_hsclk_divsel = 4;
+		break;
+	case 4:
+		found_hsclk_divsel = 8;
+		break;
+	case 5:
+		found_hsclk_divsel = 12;
+		break;
+	case 6:
+		found_hsclk_divsel = 1;
+		break;
+	case 9:
+		found_hsclk_divsel = 5;
+		break;
+	case 10:
+		found_hsclk_divsel = 2;
+		break;
+	case 12:
+		found_hsclk_divsel = 9;
+		break;
+	case 15:
+		found_hsclk_divsel = 13;
+		break;
+	case 25:
+		found_hsclk_divsel = 14;
+		break;
+	};
+
+	pd->vco_freq = found_vco_freq;
+	pd->tx_band_sel = found_tx_band_sel;
+	pd->vco_ratio = found_vco_ratio;
+	pd->hsclk_divsel = found_hsclk_divsel;
+
+	return 0;
+}
+
+static int pll_calculate(unsigned long pix_clk, unsigned long ref_clk,
+			 struct hdmi_8998_phy_pll_reg_cfg *cfg)
+{
+	struct hdmi_8998_post_divider pd;
+	u64 bclk;
+	u64 dec_start;
+	u64 frac_start;
+	u64 fdata;
+	u32 pll_divisor;
+	u32 rem;
+	u32 cpctrl;
+	u32 rctrl;
+	u32 cctrl;
+	u32 integloop_gain;
+	u32 pll_cmp;
+	int i, ret;
+
+	/* bit clk = 10 * pix_clk */
+	bclk = ((u64)pix_clk) * 10;
+
+	ret = pll_get_post_div(&pd, bclk);
+	if (ret)
+		return ret;
+
+	dec_start = pd.vco_freq;
+	pll_divisor = 4 * ref_clk;
+	do_div(dec_start, pll_divisor);
+
+	frac_start = pd.vco_freq * (1 << 20);
+
+	rem = do_div(frac_start, pll_divisor);
+	frac_start -= dec_start * (1 << 20);
+	if (rem > (pll_divisor >> 1))
+		frac_start++;
+
+	cpctrl = pll_get_cpctrl(frac_start, ref_clk, false);
+	rctrl = pll_get_rctrl(frac_start, false);
+	cctrl = pll_get_cctrl(frac_start, false);
+	integloop_gain = pll_get_integloop_gain(frac_start, bclk,
+						ref_clk, false);
+
+	fdata = pd.vco_freq;
+	do_div(fdata, pd.vco_ratio);
+
+	pll_cmp = pll_get_pll_cmp(fdata, ref_clk);
+
+	/* Convert these values to register specific values */
+	if (bclk > HDMI_DIG_FREQ_BIT_CLK_THRESHOLD)
+		cfg->com_svs_mode_clk_sel = 1;
+	else
+		cfg->com_svs_mode_clk_sel = 2;
+
+	cfg->com_hsclk_sel = (0x20 | pd.hsclk_divsel);
+	cfg->com_pll_cctrl_mode0 = cctrl;
+	cfg->com_pll_rctrl_mode0 = rctrl;
+	cfg->com_cp_ctrl_mode0 = cpctrl;
+	cfg->com_dec_start_mode0 = dec_start;
+	cfg->com_div_frac_start1_mode0 = (frac_start & 0xff);
+	cfg->com_div_frac_start2_mode0 = ((frac_start & 0xff00) >> 8);
+	cfg->com_div_frac_start3_mode0 = ((frac_start & 0xf0000) >> 16);
+	cfg->com_integloop_gain0_mode0 = (integloop_gain & 0xff);
+	cfg->com_integloop_gain1_mode0 = ((integloop_gain & 0xf00) >> 8);
+	cfg->com_lock_cmp1_mode0 = (pll_cmp & 0xff);
+	cfg->com_lock_cmp2_mode0 = ((pll_cmp & 0xff00) >> 8);
+	cfg->com_lock_cmp3_mode0 = ((pll_cmp & 0x30000) >> 16);
+	cfg->com_lock_cmp_en = 0x0;
+	cfg->com_core_clk_en = 0x2c;
+	cfg->com_coreclk_div_mode0 = HDMI_CORECLK_DIV;
+	cfg->phy_mode = (bclk > HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD) ? 0x5 : 0x4;
+
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++)
+		cfg->tx_lx_tx_band[i] = pd.tx_band_sel;
+
+	if (bclk > HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD) {
+		cfg->tx_lx_tx_drv_lvl[0] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[1] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[2] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[3] = 0x0f;
+		cfg->tx_lx_tx_emp_post1_lvl[0] = 0x03;
+		cfg->tx_lx_tx_emp_post1_lvl[1] = 0x02;
+		cfg->tx_lx_tx_emp_post1_lvl[2] = 0x03;
+		cfg->tx_lx_tx_emp_post1_lvl[3] = 0x00;
+		cfg->tx_lx_pre_driver_1[0] = 0x00;
+		cfg->tx_lx_pre_driver_1[1] = 0x00;
+		cfg->tx_lx_pre_driver_1[2] = 0x00;
+		cfg->tx_lx_pre_driver_1[3] = 0x00;
+		cfg->tx_lx_pre_driver_2[0] = 0x1C;
+		cfg->tx_lx_pre_driver_2[1] = 0x1C;
+		cfg->tx_lx_pre_driver_2[2] = 0x1C;
+		cfg->tx_lx_pre_driver_2[3] = 0x00;
+		cfg->tx_lx_res_code_offset[0] = 0x03;
+		cfg->tx_lx_res_code_offset[1] = 0x00;
+		cfg->tx_lx_res_code_offset[2] = 0x00;
+		cfg->tx_lx_res_code_offset[3] = 0x03;
+	} else if (bclk > HDMI_DIG_FREQ_BIT_CLK_THRESHOLD) {
+		cfg->tx_lx_tx_drv_lvl[0] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[1] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[2] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[3] = 0x0f;
+		cfg->tx_lx_tx_emp_post1_lvl[0] = 0x03;
+		cfg->tx_lx_tx_emp_post1_lvl[1] = 0x03;
+		cfg->tx_lx_tx_emp_post1_lvl[2] = 0x03;
+		cfg->tx_lx_tx_emp_post1_lvl[3] = 0x00;
+		cfg->tx_lx_pre_driver_1[0] = 0x00;
+		cfg->tx_lx_pre_driver_1[1] = 0x00;
+		cfg->tx_lx_pre_driver_1[2] = 0x00;
+		cfg->tx_lx_pre_driver_1[3] = 0x00;
+		cfg->tx_lx_pre_driver_2[0] = 0x16;
+		cfg->tx_lx_pre_driver_2[1] = 0x16;
+		cfg->tx_lx_pre_driver_2[2] = 0x16;
+		cfg->tx_lx_pre_driver_2[3] = 0x18;
+		cfg->tx_lx_res_code_offset[0] = 0x03;
+		cfg->tx_lx_res_code_offset[1] = 0x00;
+		cfg->tx_lx_res_code_offset[2] = 0x00;
+		cfg->tx_lx_res_code_offset[3] = 0x00;
+	} else if (bclk > HDMI_MID_FREQ_BIT_CLK_THRESHOLD) {
+		cfg->tx_lx_tx_drv_lvl[0] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[1] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[2] = 0x0f;
+		cfg->tx_lx_tx_drv_lvl[3] = 0x0f;
+		cfg->tx_lx_tx_emp_post1_lvl[0] = 0x05;
+		cfg->tx_lx_tx_emp_post1_lvl[1] = 0x05;
+		cfg->tx_lx_tx_emp_post1_lvl[2] = 0x05;
+		cfg->tx_lx_tx_emp_post1_lvl[3] = 0x00;
+		cfg->tx_lx_pre_driver_1[0] = 0x00;
+		cfg->tx_lx_pre_driver_1[1] = 0x00;
+		cfg->tx_lx_pre_driver_1[2] = 0x00;
+		cfg->tx_lx_pre_driver_1[3] = 0x00;
+		cfg->tx_lx_pre_driver_2[0] = 0x0E;
+		cfg->tx_lx_pre_driver_2[1] = 0x0E;
+		cfg->tx_lx_pre_driver_2[2] = 0x0E;
+		cfg->tx_lx_pre_driver_2[3] = 0x0E;
+		cfg->tx_lx_res_code_offset[0] = 0x00;
+		cfg->tx_lx_res_code_offset[1] = 0x00;
+		cfg->tx_lx_res_code_offset[2] = 0x00;
+		cfg->tx_lx_res_code_offset[3] = 0x00;
+	} else {
+		cfg->tx_lx_tx_drv_lvl[0] = 0x01;
+		cfg->tx_lx_tx_drv_lvl[1] = 0x01;
+		cfg->tx_lx_tx_drv_lvl[2] = 0x01;
+		cfg->tx_lx_tx_drv_lvl[3] = 0x00;
+		cfg->tx_lx_tx_emp_post1_lvl[0] = 0x00;
+		cfg->tx_lx_tx_emp_post1_lvl[1] = 0x00;
+		cfg->tx_lx_tx_emp_post1_lvl[2] = 0x00;
+		cfg->tx_lx_tx_emp_post1_lvl[3] = 0x00;
+		cfg->tx_lx_pre_driver_1[0] = 0x00;
+		cfg->tx_lx_pre_driver_1[1] = 0x00;
+		cfg->tx_lx_pre_driver_1[2] = 0x00;
+		cfg->tx_lx_pre_driver_1[3] = 0x00;
+		cfg->tx_lx_pre_driver_2[0] = 0x16;
+		cfg->tx_lx_pre_driver_2[1] = 0x16;
+		cfg->tx_lx_pre_driver_2[2] = 0x16;
+		cfg->tx_lx_pre_driver_2[3] = 0x18;
+		cfg->tx_lx_res_code_offset[0] = 0x00;
+		cfg->tx_lx_res_code_offset[1] = 0x00;
+		cfg->tx_lx_res_code_offset[2] = 0x00;
+		cfg->tx_lx_res_code_offset[3] = 0x00;
+	}
+
+	return 0;
+}
+
+static int hdmi_8998_pll_set_clk_rate(struct clk_hw *hw, unsigned long rate,
+				      unsigned long parent_rate)
+{
+	struct hdmi_pll_8998 *pll = hw_clk_to_pll(hw);
+	struct hdmi_phy *phy = pll_get_phy(pll);
+	struct hdmi_8998_phy_pll_reg_cfg cfg = {};
+	int i, ret;
+
+	ret = pll_calculate(rate, parent_rate, &cfg);
+	if (ret) {
+		DRM_ERROR("PLL calculation failed\n");
+		return ret;
+	}
+
+	/* Initially shut down PHY */
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_PD_CTL, 0x0);
+	udelay(500);
+
+	/* Power up sequence */
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_PD_CTL, 0x1);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_RESETSM_CNTRL, 0x20);
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_CMN_CTRL, 0x6);
+
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_INTERFACE_SELECT_TX_BAND,
+				   cfg.tx_lx_tx_band[i]);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_CLKBUF_TERM_ENABLE,
+				   0x1);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_LANE_MODE,
+				   0x20);
+	}
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_SYSCLK_BUF_ENABLE, 0x02);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x0B);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_SYSCLK_EN_SEL, 0x37);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_SYS_CLK_CTRL, 0x02);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_CLK_ENABLE1, 0x0E);
+
+	/* Bypass VCO calibration */
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_SVS_MODE_CLK_SEL,
+		       cfg.com_svs_mode_clk_sel);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_PLL_IVCO, 0x07);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_VCO_TUNE_CTRL, 0x00);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_CLK_SEL, 0x30);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_HSCLK_SEL,
+		       cfg.com_hsclk_sel);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_LOCK_CMP_EN,
+		       cfg.com_lock_cmp_en);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_PLL_CCTRL_MODE0,
+		       cfg.com_pll_cctrl_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_PLL_RCTRL_MODE0,
+		       cfg.com_pll_rctrl_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_CP_CTRL_MODE0,
+		       cfg.com_cp_ctrl_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_DEC_START_MODE0,
+		       cfg.com_dec_start_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_DIV_FRAC_START1_MODE0,
+		       cfg.com_div_frac_start1_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_DIV_FRAC_START2_MODE0,
+		       cfg.com_div_frac_start2_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_DIV_FRAC_START3_MODE0,
+		       cfg.com_div_frac_start3_mode0);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_INTEGLOOP_GAIN0_MODE0,
+		       cfg.com_integloop_gain0_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_INTEGLOOP_GAIN1_MODE0,
+		       cfg.com_integloop_gain1_mode0);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_LOCK_CMP1_MODE0,
+		       cfg.com_lock_cmp1_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_LOCK_CMP2_MODE0,
+		       cfg.com_lock_cmp2_mode0);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_LOCK_CMP3_MODE0,
+		       cfg.com_lock_cmp3_mode0);
+
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_VCO_TUNE_MAP, 0x00);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_CORE_CLK_EN,
+		       cfg.com_core_clk_en);
+	hdmi_pll_write(pll, REG_HDMI_8998_PHY_QSERDES_COM_CORECLK_DIV_MODE0,
+		       cfg.com_coreclk_div_mode0);
+
+	/* TX lanes setup (TX 0/1/2/3) */
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_DRV_LVL,
+				   cfg.tx_lx_tx_drv_lvl[i]);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_EMP_POST1_LVL,
+				   cfg.tx_lx_tx_emp_post1_lvl[i]);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_PRE_DRIVER_1,
+				   cfg.tx_lx_pre_driver_1[i]);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_PRE_DRIVER_2,
+				   cfg.tx_lx_pre_driver_2[i]);
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_DRV_LVL_RES_CODE_OFFSET,
+				   cfg.tx_lx_res_code_offset[i]);
+	}
+
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_MODE, cfg.phy_mode);
+
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_LANE_CONFIG,
+				   0x10);
+	}
+
+	/*
+	 * Ensure that vco configuration gets flushed to hardware before
+	 * enabling the PLL
+	 */
+	wmb();
+
+	pll->rate = rate;
+
+	return 0;
+}
+
+static int hdmi_8998_phy_ready_status(struct hdmi_phy *phy)
+{
+	u32 nb_tries = HDMI_PLL_POLL_MAX_READS;
+	unsigned long timeout = HDMI_PLL_POLL_TIMEOUT_US;
+	u32 status;
+	int phy_ready = 0;
+
+	while (nb_tries--) {
+		status = hdmi_phy_read(phy, REG_HDMI_8998_PHY_STATUS);
+		phy_ready = status & BIT(0);
+
+		if (phy_ready)
+			break;
+
+		udelay(timeout);
+	}
+
+	return phy_ready;
+}
+
+static int hdmi_8998_pll_lock_status(struct hdmi_pll_8998 *pll)
+{
+	u32 status;
+	int nb_tries = HDMI_PLL_POLL_MAX_READS;
+	unsigned long timeout = HDMI_PLL_POLL_TIMEOUT_US;
+	int pll_locked = 0;
+
+	while (nb_tries--) {
+		status = hdmi_pll_read(pll,
+				       REG_HDMI_8998_PHY_QSERDES_COM_C_READY_STATUS);
+		pll_locked = status & BIT(0);
+
+		if (pll_locked)
+			break;
+
+		udelay(timeout);
+	}
+
+	return pll_locked;
+}
+
+static int hdmi_8998_pll_prepare(struct clk_hw *hw)
+{
+	struct hdmi_pll_8998 *pll = hw_clk_to_pll(hw);
+	struct hdmi_phy *phy = pll_get_phy(pll);
+	int i, ret = 0;
+
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_CFG, 0x1);
+	udelay(100);
+
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_CFG, 0x59);
+	udelay(100);
+
+	ret = hdmi_8998_pll_lock_status(pll);
+	if (!ret)
+		return ret;
+
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
+		hdmi_tx_chan_write(pll, i,
+				   REG_HDMI_8998_PHY_TXn_LANE_CONFIG, 0x1F);
+	}
+
+	/* Ensure all registers are flushed to hardware */
+	wmb();
+
+	ret = hdmi_8998_phy_ready_status(phy);
+	if (!ret)
+		return ret;
+
+	/* Restart the retiming buffer */
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_CFG, 0x58);
+	udelay(1);
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_CFG, 0x59);
+
+	/* Ensure all registers are flushed to hardware */
+	wmb();
+
+	return 0;
+}
+
+static long hdmi_8998_pll_round_rate(struct clk_hw *hw,
+				     unsigned long rate,
+				     unsigned long *parent_rate)
+{
+	if (rate < HDMI_PCLK_MIN_FREQ)
+		return HDMI_PCLK_MIN_FREQ;
+	else if (rate > HDMI_PCLK_MAX_FREQ)
+		return HDMI_PCLK_MAX_FREQ;
+	else
+		return rate;
+}
+
+static unsigned long hdmi_8998_pll_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	struct hdmi_pll_8998 *pll = hw_clk_to_pll(hw);
+	return pll->rate;
+}
+
+static void hdmi_8998_pll_unprepare(struct clk_hw *hw)
+{
+	struct hdmi_pll_8998 *pll = hw_clk_to_pll(hw);
+	struct hdmi_phy *phy = pll_get_phy(pll);
+
+	hdmi_phy_write(phy, REG_HDMI_8998_PHY_PD_CTL, 0);
+	usleep_range(100, 150);
+}
+
+static int hdmi_8998_pll_is_enabled(struct clk_hw *hw)
+{
+	struct hdmi_pll_8998 *pll = hw_clk_to_pll(hw);
+	u32 status;
+	int pll_locked;
+
+	status = hdmi_pll_read(pll, REG_HDMI_8998_PHY_QSERDES_COM_C_READY_STATUS);
+	pll_locked = status & BIT(0);
+
+	return pll_locked;
+}
+
+static const struct clk_ops hdmi_8998_pll_ops = {
+	.set_rate = hdmi_8998_pll_set_clk_rate,
+	.round_rate = hdmi_8998_pll_round_rate,
+	.recalc_rate = hdmi_8998_pll_recalc_rate,
+	.prepare = hdmi_8998_pll_prepare,
+	.unprepare = hdmi_8998_pll_unprepare,
+	.is_enabled = hdmi_8998_pll_is_enabled,
+};
+
+static const struct clk_init_data pll_init = {
+	.name = "hdmipll",
+	.ops = &hdmi_8998_pll_ops,
+	.parent_data = (const struct clk_parent_data[]){
+		{ .fw_name = "xo", .name = "xo_board" },
+	},
+	.num_parents = 1,
+	.flags = CLK_IGNORE_UNUSED,
+};
+
+int msm_hdmi_pll_8998_init(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct hdmi_pll_8998 *pll;
+	int ret, i;
+
+	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return -ENOMEM;
+
+	pll->pdev = pdev;
+
+	pll->mmio_qserdes_com = msm_ioremap(pdev, "hdmi_pll");
+	if (IS_ERR(pll->mmio_qserdes_com)) {
+		DRM_DEV_ERROR(dev, "failed to map pll base\n");
+		return -ENOMEM;
+	}
+
+	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++) {
+		char name[32];
+
+		snprintf(name, sizeof(name), "hdmi_tx_l%d", i);
+
+		pll->mmio_qserdes_tx[i] = msm_ioremap(pdev, name);
+		if (IS_ERR(pll->mmio_qserdes_tx[i])) {
+			DRM_DEV_ERROR(dev, "failed to map pll base\n");
+			return -ENOMEM;
+		}
+	}
+	pll->clk_hw.init = &pll_init;
+
+	ret = devm_clk_hw_register(dev, &pll->clk_hw);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "failed to register pll clock\n");
+		return ret;
+	}
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get, &pll->clk_hw);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "failed to register clk provider: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static const char * const hdmi_phy_8998_reg_names[] = {
+	"vddio",
+	"vcca",
+};
+
+static const char * const hdmi_phy_8998_clk_names[] = {
+	"iface", "ref", "xo",
+};
+
+const struct hdmi_phy_cfg msm_hdmi_phy_8998_cfg = {
+	.type = MSM_HDMI_PHY_8998,
+	.reg_names = hdmi_phy_8998_reg_names,
+	.num_regs = ARRAY_SIZE(hdmi_phy_8998_reg_names),
+	.clk_names = hdmi_phy_8998_clk_names,
+	.num_clks = ARRAY_SIZE(hdmi_phy_8998_clk_names),
+};
diff --git a/drivers/gpu/drm/msm/registers/display/hdmi.xml b/drivers/gpu/drm/msm/registers/display/hdmi.xml
index 6c81581016c78..1cf1b14fbd919 100644
--- a/drivers/gpu/drm/msm/registers/display/hdmi.xml
+++ b/drivers/gpu/drm/msm/registers/display/hdmi.xml
@@ -1012,4 +1012,93 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
 		<reg32 offset="0x00110" name="TX_ALOG_INTF_OBSV"/>
 </domain>
 
+<domain name="HDMI_8998_PHY" width="32">
+	<reg32 offset="0x00000" name="CFG"/>
+	<reg32 offset="0x00004" name="PD_CTL"/>
+	<reg32 offset="0x00010" name="MODE"/>
+	<reg32 offset="0x0005C" name="CLOCK"/>
+	<reg32 offset="0x00068" name="CMN_CTRL"/>
+	<reg32 offset="0x000B4" name="STATUS"/>
+</domain>
+
+<domain name="HDMI_8998_PHY_QSERDES_COM" width="32">
+	<reg32 offset="0x0000" name="ATB_SEL1"/>
+	<reg32 offset="0x0004" name="ATB_SEL2"/>
+	<reg32 offset="0x0008" name="FREQ_UPDATE"/>
+	<reg32 offset="0x000C" name="BG_TIMER"/>
+	<reg32 offset="0x0010" name="SSC_EN_CENTER"/>
+	<reg32 offset="0x0014" name="SSC_ADJ_PER1"/>
+	<reg32 offset="0x0018" name="SSC_ADJ_PER2"/>
+	<reg32 offset="0x001C" name="SSC_PER1"/>
+	<reg32 offset="0x0020" name="SSC_PER2"/>
+	<reg32 offset="0x0024" name="SSC_STEP_SIZE1"/>
+	<reg32 offset="0x0028" name="SSC_STEP_SIZE2"/>
+	<reg32 offset="0x002C" name="POST_DIV"/>
+	<reg32 offset="0x0030" name="POST_DIV_MUX"/>
+	<reg32 offset="0x0034" name="BIAS_EN_CLKBUFLR_EN"/>
+	<reg32 offset="0x0038" name="CLK_ENABLE1"/>
+	<reg32 offset="0x003C" name="SYS_CLK_CTRL"/>
+	<reg32 offset="0x0040" name="SYSCLK_BUF_ENABLE"/>
+	<reg32 offset="0x0044" name="PLL_EN"/>
+	<reg32 offset="0x0048" name="PLL_IVCO"/>
+	<reg32 offset="0x004C" name="CMN_IETRIM"/>
+	<reg32 offset="0x0050" name="CMN_IPTRIM"/>
+	<reg32 offset="0x0060" name="CP_CTRL_MODE0"/>
+	<reg32 offset="0x0064" name="CP_CTRL_MODE1"/>
+	<reg32 offset="0x0068" name="PLL_RCTRL_MODE0"/>
+	<reg32 offset="0x006C" name="PLL_RCTRL_MODE1"/>
+	<reg32 offset="0x0070" name="PLL_CCTRL_MODE0"/>
+	<reg32 offset="0x0074" name="PLL_CCTRL_MODE1"/>
+	<reg32 offset="0x0078" name="PLL_CNTRL"/>
+	<reg32 offset="0x007C" name="BIAS_EN_CTRL_BY_PSM"/>
+	<reg32 offset="0x0080" name="SYSCLK_EN_SEL"/>
+	<reg32 offset="0x0084" name="CML_SYSCLK_SEL"/>
+	<reg32 offset="0x0088" name="RESETSM_CNTRL"/>
+	<reg32 offset="0x008C" name="RESETSM_CNTRL2"/>
+	<reg32 offset="0x0090" name="LOCK_CMP_EN"/>
+	<reg32 offset="0x0094" name="LOCK_CMP_CFG"/>
+	<reg32 offset="0x0098" name="LOCK_CMP1_MODE0"/>
+	<reg32 offset="0x009C" name="LOCK_CMP2_MODE0"/>
+	<reg32 offset="0x00A0" name="LOCK_CMP3_MODE0"/>
+	<reg32 offset="0x00B0" name="DEC_START_MODE0"/>
+	<reg32 offset="0x00B4" name="DEC_START_MODE1"/>
+	<reg32 offset="0x00B8" name="DIV_FRAC_START1_MODE0"/>
+	<reg32 offset="0x00BC" name="DIV_FRAC_START2_MODE0"/>
+	<reg32 offset="0x00C0" name="DIV_FRAC_START3_MODE0"/>
+	<reg32 offset="0x00C4" name="DIV_FRAC_START1_MODE1"/>
+	<reg32 offset="0x00C8" name="DIV_FRAC_START2_MODE1"/>
+	<reg32 offset="0x00CC" name="DIV_FRAC_START3_MODE1"/>
+	<reg32 offset="0x00D0" name="INTEGLOOP_INITVAL"/>
+	<reg32 offset="0x00D4" name="INTEGLOOP_EN"/>
+	<reg32 offset="0x00D8" name="INTEGLOOP_GAIN0_MODE0"/>
+	<reg32 offset="0x00DC" name="INTEGLOOP_GAIN1_MODE0"/>
+	<reg32 offset="0x00E0" name="INTEGLOOP_GAIN0_MODE1"/>
+	<reg32 offset="0x00E4" name="INTEGLOOP_GAIN1_MODE1"/>
+	<reg32 offset="0x00E8" name="VCOCAL_DEADMAN_CTRL"/>
+	<reg32 offset="0x00EC" name="VCO_TUNE_CTRL"/>
+	<reg32 offset="0x00F0" name="VCO_TUNE_MAP"/>
+	<reg32 offset="0x0124" name="CMN_STATUS"/>
+	<reg32 offset="0x0128" name="RESET_SM_STATUS"/>
+	<reg32 offset="0x0138" name="CLK_SEL"/>
+	<reg32 offset="0x013C" name="HSCLK_SEL"/>
+	<reg32 offset="0x0148" name="CORECLK_DIV_MODE0"/>
+	<reg32 offset="0x0150" name="SW_RESET"/>
+	<reg32 offset="0x0154" name="CORE_CLK_EN"/>
+	<reg32 offset="0x0158" name="C_READY_STATUS"/>
+	<reg32 offset="0x015C" name="CMN_CONFIG"/>
+	<reg32 offset="0x0164" name="SVS_MODE_CLK_SEL"/>
+</domain>
+
+<domain name="HDMI_8998_PHY_TXn" width="32">
+	<reg32 offset="0x0000" name="EMP_POST1_LVL"/>
+	<reg32 offset="0x0008" name="INTERFACE_SELECT_TX_BAND"/>
+	<reg32 offset="0x000C" name="CLKBUF_TERM_ENABLE"/>
+	<reg32 offset="0x0014" name="DRV_LVL_RES_CODE_OFFSET"/>
+	<reg32 offset="0x0018" name="DRV_LVL"/>
+	<reg32 offset="0x001C" name="LANE_CONFIG"/>
+	<reg32 offset="0x0024" name="PRE_DRIVER_1"/>
+	<reg32 offset="0x0028" name="PRE_DRIVER_2"/>
+	<reg32 offset="0x002C" name="LANE_MODE"/>
+</domain>
+
 </database>

-- 
2.34.1


