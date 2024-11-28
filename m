Return-Path: <devicetree+bounces-125336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9359DBA1D
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 16:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A482FB2248E
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7841BC066;
	Thu, 28 Nov 2024 15:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cYK9IhSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396A919EEB4
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 15:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732806502; cv=none; b=XXwQRgSSvf02WyBHBrlkDTH+vk8jaqFVja3tBYsNed9CxGEoDbFuI3CAswRKqKN93Cbecouashx1chAqzaF6ljKndzu5vAAFmh7aDFx9Qy/m3j7+w8rfiEIjedodzyryPaTMgOJ/n4+LCD3PiPkp4Z3eqJip/cUYytBnvmNsoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732806502; c=relaxed/simple;
	bh=NLTvKIrXbeqVLRyJFTHVStzDu6b4FyaxZBZ5DZOx4qs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nh67AyobW87yoHo4Muep1ZaaPulDx6ZV8yu6mjwqBzXj1Q+BPeepe8nnOZRwcuLp2xjd/IEXgA53C5SUzAhqgsc+LUDHCp7nK2LGaxyDJ2xklR7mI5rYBPn2IyfRhRvnk5rAE0pZUWLIgF97U8CUzXAjugOw5u1VQs32+ljAVkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cYK9IhSI; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385bbdcd901so40305f8f.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 07:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732806497; x=1733411297; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eT7Vlh8p3qIU4Gf8jpOggviT1zyfYMs1qA9um2UgMqg=;
        b=cYK9IhSIlC5evBIbJhkL7piKs43cWnEzHyZAOIltKagWzqEVSapF9pCxzIps9lAUKQ
         c97xRLHT4uVZ+xJxINO1pstcXJhNYkTm1hEgU1g9Af2c2UZwcLiX/sPdmHs/lMnUrO/w
         YtOFouJPBxjQoh6fMtLuNBjmAaRhVgJCXD31dC+VNzixnV/nXBlUBxP8RqqbDbkCA9vL
         vr5fdz3teS74F9S4Bsfw4qS+1yNdoXda+KTUMVm53nsk/vyixq/kFTUQNXRmKyosZHuM
         FyN8So9vbGcTwywU3pwvpnAd1zOokLsJKWT/TydCWDF2UVCygdiMD3TCqOEL5O0U3fYP
         8Bqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732806497; x=1733411297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eT7Vlh8p3qIU4Gf8jpOggviT1zyfYMs1qA9um2UgMqg=;
        b=YUnK3w92iCNHCackWoQyA2n2O4rYbeIln6q+OcFyUddbJzxnJlVEBxn6yXdmJuBdir
         PtUrDkL5Huf1r8DuaG8qcamcoPBHyN/3EngIqKn9SEWdjIcIXmrjlQ1tLdV/8VNpfSco
         kJ+G4hbeVBi5K7b92jOaPvGatX1UJdg7BXbWLhENfGtGpimhXYiO2WRRU6D7RzvAiIzI
         hbCo10T2dIg4IaX0UoND/90jtb2KL8P6j1APloTe1Gyd4MU68eP2Z4yRYISj4I+C8jOz
         RR+FbEHS7a6OlSJbtMHfpwtvxWKCscX2Fl9ICvfg+quVG6u3S/FI/P0NgAnKXPHWyE5B
         lYbA==
X-Forwarded-Encrypted: i=1; AJvYcCUOGQBMDqkJT3i5K68ShOejGt7Mvly8aLkcauX4dkaAmEH83+SIURRbWcoMFDFkRk1v1pOv83suVr9r@vger.kernel.org
X-Gm-Message-State: AOJu0Yz76M1e7aaD4PcYZwg2OLfK63/A8indVwFjXPUf+f00+SWoOa9k
	GQ9MY77uhemdMKeDmtCG2yiVrZgMmzK/+q1b085UVcZE86Pxx9SBCGCfoYfDeEA=
X-Gm-Gg: ASbGncvixN2m3TZSjKjPnJcz3WcCOgRNrlDagkiko3HnTrzVjLVbam7f3hRBaY1k5y2
	yOc5a7e/QFRwPWFMbLXpCWOXXgspT9RUoegprbvW4urD/2gLL80jj2mnDvW9E/bty/pY6tMw2+c
	hlW0tSAMkLn9qOIXk1zIlRPLCKezqUA2tukBew7O3Kqi+ZGig1dUQ7jZtiaMT2EqBHTMrLOcanf
	LvcMdrI2Xbvvj26qaYAj2C0QbmhC8h4BtTg9DNcauYdgW2OFB7JwPgVUeQ6rQMi
X-Google-Smtp-Source: AGHT+IH1u6HW/VJLtYQw/LhDscA8OcxHJW6kOKnBGgX2K0E/Z0MEvnVRhyLWshJqqCkYnxWvnUI+gQ==
X-Received: by 2002:a05:6000:1fa7:b0:37e:d940:a9fe with SMTP id ffacd0b85a97d-385c6ee1547mr2350174f8f.13.1732806497347;
        Thu, 28 Nov 2024 07:08:17 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd7fc33sm1828291f8f.94.2024.11.28.07.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 07:08:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 28 Nov 2024 16:07:59 +0100
Subject: [PATCH 1/3] dt-bindings: clock: qcom,sm8550-dispcc: Add SM8750
 DISPCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241128-sm8750-dispcc-v1-1-120705a4015c@linaro.org>
References: <20241128-sm8750-dispcc-v1-0-120705a4015c@linaro.org>
In-Reply-To: <20241128-sm8750-dispcc-v1-0-120705a4015c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6415;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=NLTvKIrXbeqVLRyJFTHVStzDu6b4FyaxZBZ5DZOx4qs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnSIdUCTCPeoWhcRX5+KojPuRZy/jz5f0IlA02/
 blUX4SlCVqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ0iHVAAKCRDBN2bmhouD
 1743D/4pWkgvkEm5uy7vrtXPbDl9PqGg2/C/snpS/4ld8Cfh9drcLyxe41jr/ry4kx1udcfR5JZ
 YrxseYvznukA1zfkHYqTOJy6VeNd5EJWisVS9c+nZ2txsENc0/OhxswZR8OJYLdn9ogiUHfBbpd
 q884RmXjDSVjOMDYA/gT88mPqAuubEPxgAx//4ih0LOih4PlnN9Vcsi0kxMORKVGqc+NcpJN5Hx
 taQtrq20o7HgWRheCeE4U90lDYp1cnd/nLbo9V/DM67Y8U6vhzZQNI4TKv2eyiSgDP3GtiazyzS
 G3D02qUYgb5MttIoVK2FjOUEqlXIM5JbIe7OXXF5tTeJ+MFBoLaGb9gTduqO2RJIeM9dD8xzlSW
 gh7hj47xRgwD+wqFbdLhh2ETjG5IbbEvtUNjBkZfQxtzPA1/RklUOSqYqlSLysrh7h+yB/1Xngg
 yssuKYDXtBnGRwwyXW5oRG3J2NQarGQ1/KUB3sMySqEOQOFo3+RbZq6oCzYiacYq8qXqFeFSBqa
 xRysg9p5Cx8ots4qxwKfNaWs/6F57OvMrYQCaLHM93OgittShsegZ6SuAdEPaHtlP6e+5ajZkYI
 46sgKbK75jsRdkxcYCeDM2mhR042rwk6PFxEsnLJjFwaZIXve/xlD3BpW3D7mrUwFw0SjmPZcMY
 o7iyb60F5OTwiJQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add bindings for the Qualcomm SM8750 Display Clock Controller (DISPCC).
Bindings are similar to existing SM8550 and SM8650 (same clock inputs),
but the clock hierarchy is quite different and these are not compatible
devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/qcom,sm8550-dispcc.yaml         |   4 +-
 include/dt-bindings/clock/qcom,sm8750-dispcc.h     | 112 +++++++++++++++++++++
 2 files changed, 115 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
index c57d55a9293c214c4c101902cdd9603074e2243d..30e4b46315752b93754ab2f946c684e13b06ab93 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
@@ -12,11 +12,12 @@ maintainers:
 
 description: |
   Qualcomm display clock control module provides the clocks, resets and power
-  domains on SM8550.
+  domains on SM8550, SM8650, SM8750 and few other platforms.
 
   See also:
   - include/dt-bindings/clock/qcom,sm8550-dispcc.h
   - include/dt-bindings/clock/qcom,sm8650-dispcc.h
+  - include/dt-bindings/clock/qcom,sm8750-dispcc.h
   - include/dt-bindings/clock/qcom,x1e80100-dispcc.h
 
 properties:
@@ -25,6 +26,7 @@ properties:
       - qcom,sar2130p-dispcc
       - qcom,sm8550-dispcc
       - qcom,sm8650-dispcc
+      - qcom,sm8750-dispcc
       - qcom,x1e80100-dispcc
 
   clocks:
diff --git a/include/dt-bindings/clock/qcom,sm8750-dispcc.h b/include/dt-bindings/clock/qcom,sm8750-dispcc.h
new file mode 100644
index 0000000000000000000000000000000000000000..dafb5069c96a0c3f83c15f3c61978e138baa886c
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8750-dispcc.h
@@ -0,0 +1,112 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2024, Linaro Ltd.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_SM8750_DISP_CC_H
+#define _DT_BINDINGS_CLK_QCOM_SM8750_DISP_CC_H
+
+/* DISP_CC clocks */
+#define DISP_CC_ESYNC0_CLK					0
+#define DISP_CC_ESYNC0_CLK_SRC					1
+#define DISP_CC_ESYNC1_CLK					2
+#define DISP_CC_ESYNC1_CLK_SRC					3
+#define DISP_CC_MDSS_ACCU_SHIFT_CLK				4
+#define DISP_CC_MDSS_AHB1_CLK					5
+#define DISP_CC_MDSS_AHB_CLK					6
+#define DISP_CC_MDSS_AHB_CLK_SRC				7
+#define DISP_CC_MDSS_BYTE0_CLK					8
+#define DISP_CC_MDSS_BYTE0_CLK_SRC				9
+#define DISP_CC_MDSS_BYTE0_DIV_CLK_SRC				10
+#define DISP_CC_MDSS_BYTE0_INTF_CLK				11
+#define DISP_CC_MDSS_BYTE1_CLK					12
+#define DISP_CC_MDSS_BYTE1_CLK_SRC				13
+#define DISP_CC_MDSS_BYTE1_DIV_CLK_SRC				14
+#define DISP_CC_MDSS_BYTE1_INTF_CLK				15
+#define DISP_CC_MDSS_DPTX0_AUX_CLK				16
+#define DISP_CC_MDSS_DPTX0_AUX_CLK_SRC				17
+#define DISP_CC_MDSS_DPTX0_CRYPTO_CLK				18
+#define DISP_CC_MDSS_DPTX0_LINK_CLK				19
+#define DISP_CC_MDSS_DPTX0_LINK_CLK_SRC				20
+#define DISP_CC_MDSS_DPTX0_LINK_DIV_CLK_SRC			21
+#define DISP_CC_MDSS_DPTX0_LINK_INTF_CLK			22
+#define DISP_CC_MDSS_DPTX0_PIXEL0_CLK				23
+#define DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC			24
+#define DISP_CC_MDSS_DPTX0_PIXEL1_CLK				25
+#define DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC			26
+#define DISP_CC_MDSS_DPTX0_USB_ROUTER_LINK_INTF_CLK		27
+#define DISP_CC_MDSS_DPTX1_AUX_CLK				28
+#define DISP_CC_MDSS_DPTX1_AUX_CLK_SRC				29
+#define DISP_CC_MDSS_DPTX1_CRYPTO_CLK				30
+#define DISP_CC_MDSS_DPTX1_LINK_CLK				31
+#define DISP_CC_MDSS_DPTX1_LINK_CLK_SRC				32
+#define DISP_CC_MDSS_DPTX1_LINK_DIV_CLK_SRC			33
+#define DISP_CC_MDSS_DPTX1_LINK_INTF_CLK			34
+#define DISP_CC_MDSS_DPTX1_PIXEL0_CLK				35
+#define DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC			36
+#define DISP_CC_MDSS_DPTX1_PIXEL1_CLK				37
+#define DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC			38
+#define DISP_CC_MDSS_DPTX1_USB_ROUTER_LINK_INTF_CLK		39
+#define DISP_CC_MDSS_DPTX2_AUX_CLK				40
+#define DISP_CC_MDSS_DPTX2_AUX_CLK_SRC				41
+#define DISP_CC_MDSS_DPTX2_CRYPTO_CLK				42
+#define DISP_CC_MDSS_DPTX2_LINK_CLK				43
+#define DISP_CC_MDSS_DPTX2_LINK_CLK_SRC				44
+#define DISP_CC_MDSS_DPTX2_LINK_DIV_CLK_SRC			45
+#define DISP_CC_MDSS_DPTX2_LINK_INTF_CLK			46
+#define DISP_CC_MDSS_DPTX2_PIXEL0_CLK				47
+#define DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC			48
+#define DISP_CC_MDSS_DPTX2_PIXEL1_CLK				49
+#define DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC			50
+#define DISP_CC_MDSS_DPTX3_AUX_CLK				51
+#define DISP_CC_MDSS_DPTX3_AUX_CLK_SRC				52
+#define DISP_CC_MDSS_DPTX3_CRYPTO_CLK				53
+#define DISP_CC_MDSS_DPTX3_LINK_CLK				54
+#define DISP_CC_MDSS_DPTX3_LINK_CLK_SRC				55
+#define DISP_CC_MDSS_DPTX3_LINK_DIV_CLK_SRC			56
+#define DISP_CC_MDSS_DPTX3_LINK_INTF_CLK			57
+#define DISP_CC_MDSS_DPTX3_PIXEL0_CLK				58
+#define DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC			59
+#define DISP_CC_MDSS_ESC0_CLK					60
+#define DISP_CC_MDSS_ESC0_CLK_SRC				61
+#define DISP_CC_MDSS_ESC1_CLK					62
+#define DISP_CC_MDSS_ESC1_CLK_SRC				63
+#define DISP_CC_MDSS_MDP1_CLK					64
+#define DISP_CC_MDSS_MDP_CLK					65
+#define DISP_CC_MDSS_MDP_CLK_SRC				66
+#define DISP_CC_MDSS_MDP_LUT1_CLK				67
+#define DISP_CC_MDSS_MDP_LUT_CLK				68
+#define DISP_CC_MDSS_NON_GDSC_AHB_CLK				69
+#define DISP_CC_MDSS_PCLK0_CLK					70
+#define DISP_CC_MDSS_PCLK0_CLK_SRC				71
+#define DISP_CC_MDSS_PCLK1_CLK					72
+#define DISP_CC_MDSS_PCLK1_CLK_SRC				73
+#define DISP_CC_MDSS_PCLK2_CLK					74
+#define DISP_CC_MDSS_PCLK2_CLK_SRC				75
+#define DISP_CC_MDSS_RSCC_AHB_CLK				76
+#define DISP_CC_MDSS_RSCC_VSYNC_CLK				77
+#define DISP_CC_MDSS_VSYNC1_CLK					78
+#define DISP_CC_MDSS_VSYNC_CLK					79
+#define DISP_CC_MDSS_VSYNC_CLK_SRC				80
+#define DISP_CC_OSC_CLK						81
+#define DISP_CC_OSC_CLK_SRC					82
+#define DISP_CC_PLL0						83
+#define DISP_CC_PLL1						84
+#define DISP_CC_PLL2						85
+#define DISP_CC_SLEEP_CLK					86
+#define DISP_CC_SLEEP_CLK_SRC					87
+#define DISP_CC_XO_CLK						88
+#define DISP_CC_XO_CLK_SRC					89
+
+/* DISP_CC resets */
+#define DISP_CC_MDSS_CORE_BCR					0
+#define DISP_CC_MDSS_CORE_INT2_BCR				1
+#define DISP_CC_MDSS_RSCC_BCR					2
+
+/* DISP_CC GDSCR */
+#define MDSS_GDSC						0
+#define MDSS_INT2_GDSC						1
+
+#endif

-- 
2.43.0


