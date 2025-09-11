Return-Path: <devicetree+bounces-215995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E5B53618
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABEA04807C9
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D3F3469E6;
	Thu, 11 Sep 2025 14:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YtChM1VT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF71345728
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601951; cv=none; b=mzj+MKEjaN2GhTMTuWVESPGs1x9gApw3CF0grvhp11izLVxBiZoNr7ufD5sSsE9mlXniu9F3L3zeIMvJ0GiHTmT5OCR4r8uYOXCHgxFXk6+bKdgdbZo7ibnRFeRAim6PGz6SazeU/kxOJlggbpSpnnLNOfj9oxv9hxn9pidKnwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601951; c=relaxed/simple;
	bh=hHQLYPrS95HhfGu/5yJz6rF+PZQQgVsSP41YzrqnMf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dFrq3c9h5ZGLjo2mSbcp2zBVpWpIxPmfrjWY9fU/2gro1jQ87QhjwTvfDcBLBgrmoNbElejjw1Dy2i3SGTVerawkXfoBPd1wGpC81+2Nr2Bu92SDVVCHlhc4ETf2ehQn4rHcJdjVpg/uWwmPtlyJkJnkXp0JFXMpK6uLPMPuXFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YtChM1VT; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b04ba58a84fso123350666b.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601947; x=1758206747; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xj8+ODxk5TPgmrm1epN9Zg+MtdZ3FT1uQ44Z3bdR4/c=;
        b=YtChM1VTajPtiKvk/rtoVflJms7mj7LudFZUXLbEOGiUSd1oa79krTcC4ub0iiGajn
         SNgPmekMh9PT6Gw6l8Mr162wRPK72CXgmPFQgPSuEBFuUmr7djjEW9RlbCT0ujfsyzyb
         l2z+dJQB5KH772cN1j7yomQZpu7+b80qsXW8kTkEoZBq2Q2Yr2s4aMZYMcbLrCuqc1Mp
         96VZk/MQBjtCK8pHgx220KjpzZU6dXCbA0L+FCeP2g2CFqI2fz+W/aemzLif5/5WkXiP
         gLYz08couAFT8x5V5gjnJ+fIwaB6pOmKdt2ciZ0dx3dlaGQnpyrBO31+AJdrXh1h4nUt
         JAhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601947; x=1758206747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xj8+ODxk5TPgmrm1epN9Zg+MtdZ3FT1uQ44Z3bdR4/c=;
        b=dn5mDwd+UkTRTvIcepG8mwC2NyxxbM7kNALqL6cg64M8vszPUgzRtyn2QW7rU1KxsJ
         RAD6ZJlXIB0GJlPWm4u5aqiH2FUf2i4ablSkM88KQDnb0CLcew/Nf6EoJpWu4es9jr/r
         elHbuCzOZi7/N4A6cl9A6UHExqXEbxRnc6z14SOwXTaLm5nc3HK+OGi7Pk7NFFprQIzo
         nKpDuqsROwRTSKZ8U9cRVn6z1VrylJhOQEFbP+PBk98ZQ5R6iVeUG41NlECvg4nO0Rhm
         jLw2WG9ZkLJaOU9Pzc2AojGAiPDcABmkvTkg50nXp7kJIEu3sMYy1puotWPOe6Ro51+R
         3B3g==
X-Forwarded-Encrypted: i=1; AJvYcCXfRrVvfMk+uOC4Gtu4vwxlqMhX/NVff7RRAATi4extH8E057j70L/HVAfRtdlRM8aef5ykH45WvNS9@vger.kernel.org
X-Gm-Message-State: AOJu0YzgTjWSvqiZjMefyegVMIF7GMGdWPGXJe7+rJBSiv0vGo3Jfcla
	3fJDK5McstcYNdCsIlZnII+Ch2sU+YG0HLQ8d5LXWJt8Hr8vcLr1tDAbf+4Qsc1C/po=
X-Gm-Gg: ASbGncuFHWmMRapGpBmCA6FFfG74+NnmgbZhroa78glQVM5tD/mkxFeGiukzMtwudJr
	ttpOiIU3jMoUIcHjCEdTCL4MGq9NM1GdFIzTubQ4jmboaY/5HWxh+dz2+I5y/trFonL+/j1C9a9
	G/tpaS+XydBbXCn3IG7hQefH0PeARfOIlmU1fRlS/RBsBbwAwX/fU/CFe/XrAkRuvEat42p6wPB
	H0RHUUTeVKxx1ZAxfyumGrZfTc1p6UIhSoFDfN0BHzwBfndLKmRzSClGOmz5oaloOTmfRZ2DoIy
	Fqjgis6FN0EQ0c8y8rdqYSgtSM5FfJcAm0lKRmm/RU8by+3Tma7N+GIGlfOM/la36lVv9z5M4mM
	s8lc0AsednO7PXZTF3DOjrng4G+cWsnvavg==
X-Google-Smtp-Source: AGHT+IGkALLpWTe3A8RNhgP0uFdtVHraWmoT4jDSLkYh5kEm44UzmREGpHh3iFHLZsyP0xNJwzIkSA==
X-Received: by 2002:a17:906:4910:b0:b07:880c:145a with SMTP id a640c23a62f3a-b07880c14c2mr560536066b.55.1757601947220;
        Thu, 11 Sep 2025 07:45:47 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:46 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 17:45:24 +0300
Subject: [PATCH v3 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-3-1c8514313a16@linaro.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3130; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=hHQLYPrS95HhfGu/5yJz6rF+PZQQgVsSP41YzrqnMf4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCRH6z1M9ZM9ZaMTneqmIBMUwkkH/Rm3J46W
 VSbWcYEXWqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgkQAKCRAbX0TJAJUV
 Vky8D/4xUcAwz/9INS6hx17pBLcIJ27QhH/9ni3u7g+9jubACJ4SDt8qnk124AGe/aEcSs14e7J
 DQtD+FMHsCRv7vRKKbbSaWTHhfULnVIRQDszqSE13G0nj44oVe+oTG3289fhcxjQxNEiVzR/bCX
 z4tEbsGo7Q3kNCkVfo4HSo249GFwuY1Vew0w8DyD0gKMm8v1JcN3/VyFy92cQ5pl+LqupWnMXN5
 pbuAAcqlrI+5OLeONR5jpdif/xGwG5kk6ttATn/isPlleo7p5fk6taCOQxWDRH0WNoMX2dEtQIw
 vBnSWlQw2iNC1gHu6kt9e1zcgUjkTxj3QV01asDJ2JwxdRz8xirzZ0iICJG4NIuI7+j/7EAYjnj
 GJ1XYlL7FtsKNy7OJrt0ne6ZHB8vXdCy62Q4qTyXnBfAmBMK+l2P+T930whYQipniv0XbB6C4Zm
 h1Z6ltjSplscLuw2h4AQ63TVvW0CEEu2JErQhoyMqzZm7XCe3NtLz2IsowgeHfKVe6+w7OF6/y3
 +KJZqQVzd6l4V5EYSSyYCF/in4pwXTm3hdazcYKiVqPXqmJ6+4gHG26W6QXzCDkwi+qCsLT2S6m
 e4O3r0KFYq9oyd8TDgmKmCd5gvoYvY4QWc9gfjHSXpuM1Jldc2M4iy272pYqw+0s5pmbfAyAr38
 IU4E8k9DdkFAGrg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.45.2


