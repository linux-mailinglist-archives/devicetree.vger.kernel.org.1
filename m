Return-Path: <devicetree+bounces-165569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 21ADDA849E8
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E799D18885FB
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F06B28EA69;
	Thu, 10 Apr 2025 16:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DPNGujKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91C31E991C
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744302620; cv=none; b=WERqN9VCM+bISoUZcza9W1kCGb3Fsmvtk5cdd3nH37Ez5w963Bg5RZv5hqbocpCeEVtSSIHFrESPPKf+LeRMzL1JnNvgPqAtgu/aBtZI1oA6fUiPMCjuFy9RE6s8icPLKUkl9w6r/GHN7rzsuDWOzrDlpalklyb3v3wo5xQWRpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744302620; c=relaxed/simple;
	bh=fdVB/WDnUbOKrbnaFpC+5KLneXfwe1Hbvq+oQZ56p8Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I7UP8hyB/z5ShSK7W1RO3FV00sMvmFq1v7iXXpzAfXxArVyttj0W5/pjrj+2bpgleyiGN/9ITEELvYtvHfGOKCvVK27zgGSioApT+2sMPKfSy+pZhLusrOg584ZW/WzE4HJAb0X/IKpox8rOK5DJ/mL66Vu2PEMsR5UGn2ftoec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DPNGujKJ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf848528aso8052265e9.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744302614; x=1744907414; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CjNA/3yEeV6k5zGB03XZkp0NfQT5RQXMDZFss0yeJfc=;
        b=DPNGujKJm9+lOg8gxkF9EOdXkLJlt2evMF0we3gXbeMKoLTIqst/v1KATULdZf2/NE
         0jXFLKRT95iQyjjMm4JpByD5t61Ls6mfvIDyKC4yRanXWUc4+T94L/dSb3uMOyAtnPN0
         qrYo7WlgntrnEa3hzExCeNbYP4EYxCcvEgHladlQ1MwxBI0yuhT4onsvR92KM3qyqPqg
         C7+4abFirYv/lDndfPIdoYlISyAEdm99VEVbanZpjkdD9pkYrIhTnITi+eDLmlsnS8B+
         B6Gmdz+y3+Fx6cgjWasqygfacRN6IAhO8+Sv8GFbhsrFzpy4w4Zda6kWLX9tglKtOqLQ
         tc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744302614; x=1744907414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CjNA/3yEeV6k5zGB03XZkp0NfQT5RQXMDZFss0yeJfc=;
        b=UpYkqQhZ29UYKwqXSCmolEYg8Gw9HsCSZoIxqdhThaLXcVhYzhc/7YWq3yCLcHfjX0
         TyktZwc0E+rSV7io+Z6J8G3ubOinMWOR8lO/Ymu4v2OHMVp356ct8ZoOae7COTPd8EaH
         MXtdjIyKoH4n6UJUTbdi3F4YMKWrl4wVA0G4ITsKQixKdPD8f4G5ITbaHXzIOWtaLJN9
         5Vv/ylGXyGXO5FDZKyL/hOJbiTT+SJomw3K37uwEWSVzYJCU8lxHpxbG8bQlpYQTQptL
         JN/EsNcddhAJm3mopNPgA5waio8GaFjHJ6dUvNJMhtoEwnHsCVmyqQo2lISCn1KN8Yke
         s7Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXJQxqTYLCRuTOqdzKJN/lDybykmRbY4BKVGyLxqb7LJi97xC2AdQwfbyMxDXLK3xkc97GuX/LVf3um@vger.kernel.org
X-Gm-Message-State: AOJu0Ywac4wHxJra+hTz+HrB8/k+lIIgH/49p3pBHwTeJbh6zBvC+Iek
	0mZHMhlK/JeKOTverfbps6zwKxGu77Zn3f5y3N9KIW7mTAxB/0OUzlNSGzcmuIR8/1r3cix7VKq
	a
X-Gm-Gg: ASbGncsGmPBoj+i42VKIW8CFiH90DW8M3vtlUek1Bi0yJGki4bVzBGscqNL7OExr9GD
	CbcfxeTvh6Ns7bzJ3gDPZUrCAOt055YuqM/3a3LzBoVRvShb3NSKvD6nsqzNHMCjacGAG2eOk7r
	yse6rITfLQanjx9DH0Eo1eHBuUQwk09IP86TQ3/DQSy2JmfMs8An26xACPjYgruJVN8zQjTkB5f
	WliTbvofkePACGeg5quctc548qvTp1eZPg4n9MjEBgw60xky5zfBLEtSSkjC9wi411ziouaDXus
	tcjEJU62D8/yyVGFUwyqSd2y2YKPQkQt3zaf+eae4qUvFagF2yH+5vekxhXixPx2RDaxH1N3
X-Google-Smtp-Source: AGHT+IEc2hRHPm90L8+bOMpn1K90rBl2QhK08WG2zHjVONTwafd6NWiy8ImXJhSkHuRLK5Eescw2og==
X-Received: by 2002:a05:6000:18a2:b0:39c:d05:3779 with SMTP id ffacd0b85a97d-39d8f4f1184mr2774000f8f.49.1744302614144;
        Thu, 10 Apr 2025 09:30:14 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8936129dsm5350663f8f.18.2025.04.10.09.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 09:30:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 10 Apr 2025 18:30:06 +0200
Subject: [PATCH RFC v5 7/8] media: platform: qcom/iris: add support for
 vpu33
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250410-topic-sm8x50-upstream-iris-catalog-v5-7-44a431574c25@linaro.org>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8847;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fdVB/WDnUbOKrbnaFpC+5KLneXfwe1Hbvq+oQZ56p8Q=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn9/IPczInuSLZwVja3d3jiyoxiTXla2evIzirY8rq
 4Ngc6WSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/fyDwAKCRB33NvayMhJ0TeuEA
 Cwdk+n+IOTjMtCq2V6cOsu7UVBlt7LGqqv4VD8yK6AiJOIBE4n9FElR/RZaAROYEujkKnKmLBb/68d
 4Nmusmo7B1C0ou77BKQ2B9+lPPdjIGqOaLZjPWfAAgSId9B31wpLnPTFI2AJuo5z/CV5oLLUbobGLS
 OWz0VpPPnfdEeTM3DavkEBXDgRBEkukYgIQGuTBm1R+lGpzg2fbGIkG6a3rZAVwuVLkx/kj+Ornmdr
 ytwH4AfDkyFkZynSdhVgIS8oXFamzm55hVfjzg1WV2i7Ow5tgAAPaPWbH4qBMexzPxuCCQgARMr6lv
 lrmakXgcmluKm4vtypnkqLMTADcef5MHiU3ulaeLLizpj51fJdcVKgL3RABsIJyawu/VWTYRMJNJWl
 6DVTiBfALCQoBZ1st7Qf6ypGJ6w6W+d0w8bHA9HkHbFflAIImydvmGIGe2CD+WQbZinT0Jj4Wsux/n
 js8Tdd6ufawTk7stFlioC8Cd3xmkiZQNaGROo2iavIrAdHjJrWQzBvOxMl1W6qDOTrXCXN8MQSp224
 cj2nyYjTD0u1m4uWRM2FG5pHsALkXRgiZaG9CD22xPp5HIZPKV8ukcTk0WkniH6QxX3QdsjmmlwMZX
 EEKwfxr2d+JGYmXe1kCiGyzYwpjuT/UyPlVgBAJsh1WqzZ838Kbsk3LB2c6w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The IRIS acceleration found in the SM8650 platforms uses the vpu33
hardware version, and requires a slighly different reset and power off
sequences in order to properly get out of runtime suspend.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/iris_vpu3x.c      | 160 ++++++++++++++++++++-
 drivers/media/platform/qcom/iris/iris_vpu_common.h |   1 +
 2 files changed, 157 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
index 13dab61427b8bd0491b69a9bc5f5144d27d17362..9b7c9a1495ee2f51c60b1142b2ed4680ff798f0a 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
@@ -4,20 +4,39 @@
  */
 
 #include <linux/iopoll.h>
+#include <linux/reset.h>
 
 #include "iris_instance.h"
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
+#define WRAPPER_TZ_BASE_OFFS			0x000C0000
+#define AON_BASE_OFFS				0x000E0000
 #define AON_MVP_NOC_RESET			0x0001F000
 
+#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
+#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
+#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
+#define REQ_POWER_DOWN_PREP			BIT(0)
+#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
 #define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
 #define CORE_CLK_RUN				0x0
 
+#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
+#define CTL_AXI_CLK_HALT			BIT(0)
+#define CTL_CLK_HALT				BIT(1)
+
+#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
+#define RESET_HIGH				BIT(0)
+
 #define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
 #define CORE_BRIDGE_SW_RESET			BIT(0)
 #define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
 
+#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
+#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
+#define MSK_CORE_POWER_ON			BIT(1)
+
 #define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
 #define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
 
@@ -25,7 +44,16 @@
 
 #define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
 
-static bool iris_vpu3_hw_power_collapsed(struct iris_core *core)
+#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
+#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
+
+#define AON_WRAPPER_MVP_NOC_CORE_SW_RESET	(AON_BASE_OFFS + 0x18)
+#define SW_RESET				BIT(0)
+#define AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL	(AON_BASE_OFFS + 0x20)
+#define NOC_HALT				BIT(0)
+#define AON_WRAPPER_SPARE			(AON_BASE_OFFS + 0x28)
+
+static bool iris_vpu3x_hw_power_collapsed(struct iris_core *core)
 {
 	u32 value, pwr_status;
 
@@ -40,7 +68,7 @@ static void iris_vpu3_power_off_hardware(struct iris_core *core)
 	u32 reg_val = 0, value, i;
 	int ret;
 
-	if (iris_vpu3_hw_power_collapsed(core))
+	if (iris_vpu3x_hw_power_collapsed(core))
 		goto disable_power;
 
 	dev_err(core->dev, "video hw is power on\n");
@@ -79,7 +107,125 @@ static void iris_vpu3_power_off_hardware(struct iris_core *core)
 	iris_vpu_power_off_hw(core);
 }
 
-static u64 iris_vpu3_calculate_frequency(struct iris_inst *inst, size_t data_size)
+static void iris_vpu33_power_off_hardware(struct iris_core *core)
+{
+	u32 reg_val = 0, value, i;
+	int ret;
+
+	if (iris_vpu3x_hw_power_collapsed(core))
+		goto disable_power;
+
+	dev_err(core->dev, "video hw is power on\n");
+
+	value = readl(core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+	if (value)
+		writel(CORE_CLK_RUN, core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+
+	for (i = 0; i < core->iris_platform_data->num_vpp_pipe; i++) {
+		ret = readl_poll_timeout(core->reg_base + VCODEC_SS_IDLE_STATUSN + 4 * i,
+					 reg_val, reg_val & 0x400000, 2000, 20000);
+		if (ret)
+			goto disable_power;
+	}
+
+	ret = readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_LPI_STATUS,
+				 reg_val, reg_val & BIT(0), 200, 2000);
+	if (ret)
+		goto disable_power;
+
+	/* set MNoC to low power, set PD_NOC_QREQ (bit 0) */
+	writel(BIT(0), core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
+
+	writel(CORE_BRIDGE_SW_RESET | CORE_BRIDGE_HW_RESET_DISABLE,
+	       core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(0x0, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+
+disable_power:
+	iris_vpu_power_off_hw(core);
+}
+
+static int iris_vpu33_power_off_controller(struct iris_core *core)
+{
+	u32 xo_rst_tbl_size = core->iris_platform_data->controller_rst_tbl_size;
+	u32 clk_rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
+	u32 val = 0;
+	int ret;
+
+	writel(MSK_SIGNAL_FROM_TENSILICA | MSK_CORE_POWER_ON, core->reg_base + CPU_CS_X2RPMH);
+
+	writel(REQ_POWER_DOWN_PREP, core->reg_base + WRAPPER_IRIS_CPU_NOC_LPI_CONTROL);
+
+	ret = readl_poll_timeout(core->reg_base + WRAPPER_IRIS_CPU_NOC_LPI_STATUS,
+				 val, val & BIT(0), 200, 2000);
+	if (ret)
+		goto disable_power;
+
+	writel(0x0, core->reg_base + WRAPPER_DEBUG_BRIDGE_LPI_CONTROL);
+
+	ret = readl_poll_timeout(core->reg_base + WRAPPER_DEBUG_BRIDGE_LPI_STATUS,
+				 val, val == 0, 200, 2000);
+	if (ret)
+		goto disable_power;
+
+	writel(CTL_AXI_CLK_HALT | CTL_CLK_HALT,
+	       core->reg_base + WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG);
+	writel(RESET_HIGH, core->reg_base + WRAPPER_TZ_QNS4PDXFIFO_RESET);
+	writel(0x0, core->reg_base + WRAPPER_TZ_QNS4PDXFIFO_RESET);
+	writel(0x0, core->reg_base + WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG);
+
+	reset_control_bulk_reset(clk_rst_tbl_size, core->resets);
+
+	/* Disable MVP NoC clock */
+	val = readl(core->reg_base + AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL);
+	val |= NOC_HALT;
+	writel(val, core->reg_base + AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL);
+
+	/* enable MVP NoC reset */
+	val = readl(core->reg_base + AON_WRAPPER_MVP_NOC_CORE_SW_RESET);
+	val |= SW_RESET;
+	writel(val, core->reg_base + AON_WRAPPER_MVP_NOC_CORE_SW_RESET);
+
+	/* poll AON spare register bit0 to become zero with 50ms timeout */
+	ret = readl_poll_timeout(core->reg_base + AON_WRAPPER_SPARE,
+				 val, (val & BIT(0)) == 0, 1000, 50000);
+	if (ret)
+		goto disable_power;
+
+	/* enable bit(1) to avoid cvp noc xo reset */
+	val = readl(core->reg_base + AON_WRAPPER_SPARE);
+	val |= BIT(1);
+	writel(val, core->reg_base + AON_WRAPPER_SPARE);
+
+	reset_control_bulk_assert(xo_rst_tbl_size, core->controller_resets);
+
+	/* De-assert MVP NoC reset */
+	val = readl(core->reg_base + AON_WRAPPER_MVP_NOC_CORE_SW_RESET);
+	val &= ~SW_RESET;
+	writel(val, core->reg_base + AON_WRAPPER_MVP_NOC_CORE_SW_RESET);
+
+	usleep_range(80, 100);
+
+	reset_control_bulk_deassert(xo_rst_tbl_size, core->controller_resets);
+
+	/* reset AON spare register */
+	writel(0, core->reg_base + AON_WRAPPER_SPARE);
+
+	/* Enable MVP NoC clock */
+	val = readl(core->reg_base + AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL);
+	val &= ~NOC_HALT;
+	writel(val, core->reg_base + AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL);
+
+	iris_disable_unprepare_clock(core, IRIS_CTRL_CLK);
+
+disable_power:
+	iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_CTRL_POWER_DOMAIN]);
+	iris_disable_unprepare_clock(core, IRIS_AXI_CLK);
+
+	return 0;
+}
+
+static u64 iris_vpu3x_calculate_frequency(struct iris_inst *inst, size_t data_size)
 {
 	struct platform_inst_caps *caps = inst->core->iris_platform_data->inst_caps;
 	struct v4l2_format *inp_f = inst->fmt_src;
@@ -119,5 +265,11 @@ static u64 iris_vpu3_calculate_frequency(struct iris_inst *inst, size_t data_siz
 const struct vpu_ops iris_vpu3_ops = {
 	.power_off_hw = iris_vpu3_power_off_hardware,
 	.power_off_controller = iris_vpu_power_off_controller,
-	.calc_freq = iris_vpu3_calculate_frequency,
+	.calc_freq = iris_vpu3x_calculate_frequency,
+};
+
+const struct vpu_ops iris_vpu33_ops = {
+	.power_off_hw = iris_vpu33_power_off_hardware,
+	.power_off_controller = iris_vpu33_power_off_controller,
+	.calc_freq = iris_vpu3x_calculate_frequency,
 };
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers/media/platform/qcom/iris/iris_vpu_common.h
index f8965661c602f990d5a7057565f79df4112d097e..93b7fa27be3bfa1cf6a3e83cc192cdb89d63575f 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
@@ -10,6 +10,7 @@ struct iris_core;
 
 extern const struct vpu_ops iris_vpu2_ops;
 extern const struct vpu_ops iris_vpu3_ops;
+extern const struct vpu_ops iris_vpu33_ops;
 
 struct vpu_ops {
 	void (*power_off_hw)(struct iris_core *core);

-- 
2.34.1


