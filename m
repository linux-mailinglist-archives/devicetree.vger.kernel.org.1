Return-Path: <devicetree+bounces-227949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE1CBE631A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:12:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 651E419A6D05
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 03:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E0F2561D1;
	Fri, 17 Oct 2025 03:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+ZgB4Hn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FED25A357
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 03:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760670714; cv=none; b=JJ6Mt7nMBPwidxyhVcvA+ZMkQUdjSDIolbdUF1N+TV4BBgda8vHNPnj2nSavIQw1cH8tdEsVwDIvieSzEqX++YSRWlRxBhQBw+9u2nfdQydAB4Nkj+toWhsS+1UwhedQu7fXuh4T3lAF58Z1X7ta//zm4pWVWxYXgN0J+3bMz0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760670714; c=relaxed/simple;
	bh=wXZFPgYH70cmZX6EYNF3mM2sZEWe8tVseMuqUQBxWu0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nKfFevrDIWZihtSQnHkBZKSBsfSTsf7eg+uSP8AwxzyxwLB7c1HMkXy8PICmWh69jqwlCJF8G/czSJoY0Lb1cd2tzKBR76cAEVsz1yUHv4MHwN7F2vmsyU9gYp1fm2dpsQhE2qH18BodQb9zdyPLUKxli6WhPAFjC8wvxSF0ZC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+ZgB4Hn; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-57a8b00108fso292055e87.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760670710; x=1761275510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QA9hqAjwG1E9jDqSO/KlB8EGiH+7nWQhHT2HL2H+WO0=;
        b=Y+ZgB4Hn0czYixtJ+8sgnCkCxDj6SyH0RCmyivGraTNTyKL3/yYfGnQE6XActCNUWG
         d8Lt76EAVQXvyktbDmgFFFU5+yv0yBgLpqCsOQfqdZdvaBh+oE13CEtjkFj+6P5iIr7U
         Y6k9DgL9qxOCE8tTi2O4u5CYAsU0HLvwIFbkN0QDnpvR5bEYaFa+0huKog8+5IDnEGr3
         3xc2ffzBaqnVXjItOT0IapT4Jgyk3pDqANwkSZ6k18POn6HCwdEPGVOVjWnJxtqn6BUr
         FTwIXcG+2cyTwhJoVPTMvNifl94BoqlIxMOeNYp4b9TUmYF1iqAklq3UhjFx7JglECzJ
         FTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760670710; x=1761275510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QA9hqAjwG1E9jDqSO/KlB8EGiH+7nWQhHT2HL2H+WO0=;
        b=TTD3JQoP0cyhPh59FcqFbPHYOYXnnFtfuioPbtm618MeROTXWgC0lJO1q6DeJgUhae
         vQoRmqYgFr3epYiE9Bs85Y4ghAr6n2qHe968UEBl4H34xWW8O7Ne3rSFLIGKHkwEw03E
         PNJGoFhKZe/GczZfUtiJ8WibPLhwVYmgKPhkLoTa9dfV57C2OHf/qvBSv+92pBX41IQ2
         ZgtWXAi+2pFv7IYS+KWmG/KhSLbXNnQhrKh8HaxmYFoJ7aKHAFTP/uiMzTA9x5Ep69hP
         ar1op+WaScz/3eDFqO/yMV7st2rJ861F0p9XK9XvKb1NFBYBPrt5IlYD5t0LMOhDRvrg
         R+Tg==
X-Forwarded-Encrypted: i=1; AJvYcCUczrWB0mrjO/9o8mfL9i6Z9trgGeonWV0qxM2QeoHWgbFFsH+jJy5jXHrRZznlI/1AQbNlI0SWVZLa@vger.kernel.org
X-Gm-Message-State: AOJu0YyVleCqZFtpUwrAM63X4i/w1pJ9aoJA1qHqkxopzAE8+FyQOCav
	xivlBbPeawOYpUC5nWBznxe5fuxOVn5oiFLEVjCLwkEu8twEFwFKL2pfadMaONBVIuE=
X-Gm-Gg: ASbGncvBi72nj6ofejQzMKDMLc/Qr0/TaZFuFK42uV4mY0Yxa4ZhvqpfB92nS5rwkh1
	3GPh5SVTwfiP7MP+z2RdhknpD+yGs9Wwbj5YSwAznlaiLKRcOmZKnJgV/PRNLtmLQbeI0VbBZKz
	RlsmIFAPUISZWuJO2PAnPERUyjNIuh1L6M4mfyGnDVB3tkcmPE7i51j9QF6AexoMQbpJTsANTv7
	jOX0gxEPQ5FSz+GtcmwDFzEnOWrwXiNvaTxlw8+0A3xuLAA82VWrKWoY4I054XnVRu6bfO3bC/+
	t3I/NEv1XtbGyKkHEdHZuXjQZrFUdeaVc1/bj3+ch04qLpMxFO9vdXzOIsYY37uM41pQFqLACfW
	SuvrpGir+mAcvb9N9b871hyNTtHuTNugDnKPvOgcgi8v4xv95srpJ5ikJEqHyvSsaSIRA53p428
	8mZiCIoNbIQrkhc9taiumXX1hNHk1u0hpxYspMvLWxewc=
X-Google-Smtp-Source: AGHT+IECks8I3mYWx2PUIbg7ewNMlGfHX1YiKCcgj3by7xQkWiPnfR6l1obsEgPSWsZwQ8dRAVIVMQ==
X-Received: by 2002:a05:6512:2209:b0:57a:2be1:d766 with SMTP id 2adb3069b0e04-591d854a5a5mr435142e87.4.1760670710259;
        Thu, 16 Oct 2025 20:11:50 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm7496077e87.69.2025.10.16.20.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 20:11:48 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bod@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm8650: Add CAMSS device tree node
Date: Fri, 17 Oct 2025 06:11:31 +0300
Message-ID: <20251017031131.2232687-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
References: <20251017031131.2232687-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Qualcomm SM8650 CAMSS device tree node to the platform dtsi file,
the SM8650 CAMSS IP contains
* 6 x CSIPHY,
* 3 x CSID, 2 x CSID Lite,
* 3 x IFE, 2 x IFE Lite.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 180 +++++++++++++++++++++++++++
 1 file changed, 180 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ebf1971b1bfb..555305c1c70d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5343,6 +5343,186 @@ cci2_i2c1: i2c-bus@1 {
 			};
 		};
 
+		camss: isp@acb6000 {
+			compatible = "qcom,sm8650-camss";
+			reg = <0 0x0acb6000 0 0x1000>,
+			      <0 0x0acb8000 0 0x1000>,
+			      <0 0x0acba000 0 0x1000>,
+			      <0 0x0acbc000 0 0x1000>,
+			      <0 0x0accb000 0 0x1000>,
+			      <0 0x0acd0000 0 0x1000>,
+			      <0 0x0ace4000 0 0x2000>,
+			      <0 0x0ace6000 0 0x2000>,
+			      <0 0x0ace8000 0 0x2000>,
+			      <0 0x0acea000 0 0x2000>,
+			      <0 0x0acec000 0 0x2000>,
+			      <0 0x0acee000 0 0x2000>,
+			      <0 0x0ac62000 0 0xf000>,
+			      <0 0x0ac71000 0 0xf000>,
+			      <0 0x0ac80000 0 0xf000>,
+			      <0 0x0accc000 0 0x2000>,
+			      <0 0x0acd1000 0 0x2000>;
+			reg-names = "csid_wrapper",
+				    "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "csiphy3",
+				    "csiphy4",
+				    "csiphy5",
+				    "vfe0",
+				    "vfe1",
+				    "vfe2",
+				    "vfe_lite0",
+				    "vfe_lite1";
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_2_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY3_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY5_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_2_CLK>,
+				 <&camcc CAM_CC_IFE_2_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe2",
+				      "cpas_vfe_lite",
+				      "csid",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "csiphy3",
+				      "csiphy3_timer",
+				      "csiphy4",
+				      "csiphy4_timer",
+				      "csiphy5",
+				      "csiphy5_timer",
+				      "csiphy_rx",
+				      "gcc_axi_hf",
+				      "qdss_debug_xo",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe2",
+				      "vfe2_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid";
+			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 602 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 688 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING 0>,
+				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING 0>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csiphy3",
+					  "csiphy4",
+					  "csiphy5",
+					  "vfe0",
+					  "vfe1",
+					  "vfe2",
+					  "vfe_lite0",
+					  "vfe_lite1";
+			interconnects = <&gem_noc MASTER_APPSS_PROC 0
+					 &config_noc SLAVE_CAMERA_CFG 0>,
+					<&mmss_noc MASTER_CAMNOC_HF 0
+					 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "ahb",
+					     "hf_mnoc";
+			iommus = <&apps_smmu 0x800 0x20>,
+				 <&apps_smmu 0x18a0 0x40>,
+				 <&apps_smmu 0x1860 0x00>;
+			power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
+					<&camcc CAM_CC_IFE_1_GDSC>,
+					<&camcc CAM_CC_IFE_2_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0", "ife1", "ife2", "top";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+
+				port@3 {
+					reg = <3>;
+				};
+
+				port@4 {
+					reg = <4>;
+				};
+
+				port@5 {
+					reg = <5>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,sm8650-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;
-- 
2.49.0


