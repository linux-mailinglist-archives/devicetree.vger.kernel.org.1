Return-Path: <devicetree+bounces-139504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 834ADA15F82
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 01:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF2FB1886156
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 00:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4F217F4F2;
	Sun, 19 Jan 2025 00:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OlHDHaHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F09A13A26F
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 00:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737248112; cv=none; b=bggES9QbbHF/qd4YpDJpIz1RIYH+D3QWFY8ECZNusolh0/+BRfE3idlwt6p3480a3vTjI+ewUkQNI+qR8VOfYZO0E4n6RHHBfAtFAwhiRBb7aGP+t+zJjd02zHfdfqv0PRNettjgvI4uwL3A4d2QWnTBbkC1s1JEiNVH+k4+KLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737248112; c=relaxed/simple;
	bh=PlOw7nF5pfLWg+XyoBfdQgQ5sbCIAVlkt+kb8yr43/s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BuGNlZrT4/Wn7OiD7WGdkQwAe8gTUNVx5+F0ZKddGtwgNMI3gFp2LxBeVSFatOqKvuDUDHqXHL0461DbI5zrMMEfRfumdAa6vtzVVKYScVQK+l/qQASfbw/XVk7qzQW9fp/X7IjZmc9fgSu/2La5hycHPxhkm9UvIZINl9Y+1yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OlHDHaHf; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso20510875e9.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 16:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737248108; x=1737852908; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/LnFqNCfdIV75tSZtVTMHBAt0g/a4qSXxUtuzXtDuHI=;
        b=OlHDHaHfP3WdbuJ3YyUaO1N2Fi80cutcjFy8h8SwEWFRN5cnQBO3L+JdOU398ljdJj
         TUxbLJZ2ivXkqQGf8hn2cvXH5U5FpjnerCCo7iXPggnbkKYbLpScBl1JQ6opagA7gio0
         Gbxmk71yGAEtdNTpMYk61oQGkxVD1GVX35f3rVaa05p532ErIHbG4pZBeVi2c4JyEdz6
         WBbUCg3fBim+iFLba0lb3gwN6it6Bwa8zczT2xKTirWBN/Cz2ZFLggIQSvLLGhuuuTsE
         gfhIhlvA6UAxrCKtEc8sLKTFzzwnlFZwQwGMj+wI0wgON4tFU7RscgHn0+BWio7tNAxG
         x+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737248108; x=1737852908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/LnFqNCfdIV75tSZtVTMHBAt0g/a4qSXxUtuzXtDuHI=;
        b=dUKlmxZJIqBYJ574SCEJn4dKvw666Wk0WtFYC7hj/EnbRNutTzPQxx78fLIioi2gsF
         vjj10kSHeht1nI7jVkj1uX20KvtsAulRzBtLBY3ubNDrjwoebJ4FzCuCXpSUse/G1lO3
         ls/JJYUWNzn5SrlmvjR+vK1yquFcmGDcNQFQSOXLPE2QlqlP1DMz0TWkWuS/JfEfkykr
         9BabaWWGdjeXUGx1jpueiyyfiyIRfU1LnH8m105BEnPqLLOrhdGHCpQ9y2tC+221sbe1
         jdSs1uPTd7FicYHir52uzCN/ND6FyyD5ZIJHWoXwT+TPNLbxIzDA5kNgJvnvbyLHVSR1
         BHvA==
X-Forwarded-Encrypted: i=1; AJvYcCU+dxG1J33W65EHEC3DRdrr6tgFwhtT5+HFBhC0j0EiYZWJlR6QTq7yrkwLaELomVJesTPgcRhLb3gQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyE0lkpNGKgc6dISTBOnbcaumyeUf6sM9/NWkgqkRyCEMI7it37
	VLROJqFaU0xXqCED+VDa7vIViwcBcyng0B8rEixrDq38ZTDKA0SUXQmg3osqXgyapyjzvkeQ935
	tT5M=
X-Gm-Gg: ASbGnctGo1m+IzjP4tLhjMTRPCSXVymiD6596UzrKVUBLv4ImhWjV8ZA8PBrOoDEutc
	oECtgV7LeHqQXmDucr36G2V1ZUWdYdCFP/ZvtTu3eD3kTWGuY3BFbPba1XOfNLsw0uxeRXFOrQm
	o1J0diW3EFczvC29lS9j2AsOWVpn9jVq69EaA8Co0NYnK6VECcLtlFHM/Wboiip5fIBzygw/VSu
	dUoIoBNJ1qj52Ke7vaTmkrgTbXkPiFTP65LTdxgsWajV/yjFF4GNRG8LJ21T639+ox/k+o+Aa7b
	/l0=
X-Google-Smtp-Source: AGHT+IHkeYyqaXBSmbz8idwxpSHDOi3+ViIcrcNe53eiDH4jcv8goNaGtkAIbymVPP/TrvOelfhkOA==
X-Received: by 2002:a05:600c:1381:b0:434:fc5d:179c with SMTP id 5b1f17b1804b1-43891905c1fmr70588025e9.13.1737248107757;
        Sat, 18 Jan 2025 16:55:07 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322aa40sm6339241f8f.45.2025.01.18.16.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 16:55:06 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 19 Jan 2025 00:54:56 +0000
Subject: [PATCH v4 4/4] arm64: dts: qcom: x1e80100: Add CAMSS block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-4-c2964504131c@linaro.org>
References: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
In-Reply-To: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-33ea6

Add dtsi to describe the xe180100 CAMSS block

4 x CSIPHY
2 x CSID
2 x CSID Lite
2 x IFE
2 x IFE Lite

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 185 +++++++++++++++++++++++++++++++++
 1 file changed, 185 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index de05916e6f295..ebfcb3d60d9fb 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5188,6 +5188,191 @@ cci1_i2c1: i2c-bus@1 {
 			};
 		};
 
+		camss: isp@acb6000 {
+			compatible = "qcom,x1e80100-camss";
+
+			reg = <0 0x0acb6000 0 0x1000>,
+			      <0 0x0acb7000 0 0x2000>,
+			      <0 0x0acb9000 0 0x2000>,
+			      <0 0x0acbb000 0 0x2000>,
+			      <0 0x0acc6000 0 0x1000>,
+			      <0 0x0acca000 0 0x1000>,
+			      <0 0x0ace4000 0 0x2000>,
+			      <0 0x0ace6000 0 0x2000>,
+			      <0 0x0ace8000 0 0x2000>,
+			      <0 0x0acec000 0 0x2000>,
+			      <0 0x0acf6000 0 0x1000>,
+			      <0 0x0acf7000 0 0x1000>,
+			      <0 0x0acf8000 0 0x1000>,
+			      <0 0x0acc7000 0 0x2000>,
+			      <0 0x0accb000 0 0x2000>,
+			      <0 0x0ac62000 0 0x4000>,
+			      <0 0x0ac71000 0 0x4000>;
+			reg-names = "csid_wrapper",
+				    "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "csiphy4",
+				    "csitpg0",
+				    "csitpg1",
+				    "csitpg2",
+				    "vfe_lite0",
+				    "vfe_lite1",
+				    "vfe0",
+				    "vfe1";
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CPHY_RX_CLK_SRC>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+			clock-names = "camnoc_rt_axi",
+				      "camnoc_nrt_axi",
+				      "core_ahb",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe_lite",
+				      "cphy_rx_clk_src",
+				      "csid",
+				      "csid_csiphy_rx",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "csiphy4",
+				      "csiphy4_timer",
+				      "gcc_axi_hf",
+				      "gcc_axi_sf",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csiphy4",
+					  "vfe0",
+					  "vfe1",
+					  "vfe_lite0",
+					  "vfe_lite1";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cam_ahb",
+					     "cam_hf_mnoc",
+					     "cam_sf_mnoc",
+					     "cam_sf_icp_mnoc";
+
+			iommus = <&apps_smmu 0x800 0x60>,
+				 <&apps_smmu 0x860 0x60>,
+				 <&apps_smmu 0x1800 0x60>,
+				 <&apps_smmu 0x1860 0x60>,
+				 <&apps_smmu 0x18e0 0x00>,
+				 <&apps_smmu 0x1900 0x00>,
+				 <&apps_smmu 0x1980 0x20>,
+				 <&apps_smmu 0x19a0 0x20>;
+
+			power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
+					<&camcc CAM_CC_IFE_1_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+
+				port@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,x1e80100-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;

-- 
2.47.1


