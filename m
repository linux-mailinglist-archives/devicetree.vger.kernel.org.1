Return-Path: <devicetree+bounces-170453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A417DA9AE69
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:07:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A9EE4A0178
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCD6C27CB12;
	Thu, 24 Apr 2025 13:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n+NEJmJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513F927A92A
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745499886; cv=none; b=UIInW/3EjgHGC+pG0HBXvGPLQsxMrSI15ZYo3+Zn9NuWsXnkw+8lMZwFjBk8X1t839jWsZ5mXqTxdqZ24mtGcpBMK5I/RqjtET8hYo+vXphPd8ksDLwE0MNQD/Wg1TwMtJVdEEyFyLQk5HAtbQzBEQQxO48BiaOUg7GIkeehGMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745499886; c=relaxed/simple;
	bh=7ugfQMszcHvHRUWtXIg4mzvRmiSjFZ9os0x6k4Z3O4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WV0ZaMHqTGCDNIffAw9aADpZE+kYRIevH1EhXEpkDr/skiazSIBJLWSndg1VrXhzgUgmmLAMJ9BqxjnsLmBTOW/HD73cthNiDv9lRw/WmB0b+b9eZUIVIDDYxgx9bpBcsjvQHngmmtZhjNZEWac9J1EEa7OoSKTzUs06no8GtV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n+NEJmJg; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5f37f45e819so157711a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745499882; x=1746104682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mElkFmUWzBGJzGcl61kaqkv7tziqwCuTi211jM0Qr9Y=;
        b=n+NEJmJgK4PUqRkFuGnQEdlNoygGJWuERESUqc/9B3gcpujnn1IUfxd50FUrUo+Flq
         QdlT7ATa/CvrRy2SXR6jTPq6HwcNmN1CJXrWc9yPKZrM7Sh+icG9AFVevQFaivgmV++9
         QtT/Pa/WLCpkKBK63XN/Z6Y6wOb1oAS53pYfIqv00HcLh/xZan0F6i8AT5F7w/doNf1/
         qOIf812R5kHan2c40XzKk0Z20aN+AMmxrngGiCzLeN5B0wEXdAFD8DZKz6L05Oj0k3xG
         lBk1Cs8kMwzbNjoNkVXSzMdCv7TP6HKnxRVM4rlHQ0aiPvAoIJGhiKn6acHGlmiuiRjG
         hBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745499882; x=1746104682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mElkFmUWzBGJzGcl61kaqkv7tziqwCuTi211jM0Qr9Y=;
        b=h7FgnO/A7Tsz8Pe9lma5hSXVwP3v17iPH0RIuqh6HUiudY8ndmeWayNSxBCdGJWZmp
         fJoGCtrsi81V/flOGWEiwv9wKDFg7N7kB4aE3sUox+KQLlugf1KNjaogbUXO5nZulAqy
         oGiNQ6bX+phb+eHNalWZnVgPFtu6pnL44FOyUtlt2+IKVfTKy9jcWQwBKrcDLumNGriQ
         ofakErytoJNewdsCC5BdzBknjRYhlnsrtaLM5/I5fModJYOrQC/kpljA+x5uAmDYh+X6
         swGgS+Ucgnvpqa8mAyqxNRWu+W3Q34oen8w8gApVxN36/8AS6xxSRy7x92CrTHOQjGcq
         cAoA==
X-Forwarded-Encrypted: i=1; AJvYcCWFr92aUM2RziRuWd8yX/rPtLVF5jp4A4eoJzpriTja1XSzmJkCiKp3dwTRZbNdDRTk/T/r+xmTcPq9@vger.kernel.org
X-Gm-Message-State: AOJu0YzTWCx/Cx+TWct7xu1zjxHbWC9BMMbcp3Oyh7yxswEljKurO/qh
	EROJHKWPQTx+M/J1VvmksAQy4rCbNps8APAK3X6Ro1fyD4Qxcwj/GlKVUVDXx8c=
X-Gm-Gg: ASbGnctygdWZKQq7BzmDDjIoQUL3wMcI9qBTROLChyoqsjNkX9HCuztrIGeFA3GBFfW
	3iOQ2LEVtYcEtpAxIhvs9gpCdA0d/I/QLrmEJsof8+YcUXm1ti/DvEpqCAvdB1NTln4Km3nVmSo
	Z/WYAX1HgUg4f3TrL9YaL3HfpY0vj1TcpehBpIQF0qJ/JszI8og0O1ZiJ77roryF18FJWGH1CMF
	0swr5mC+W3wcYjaOzAFb70oxiRUH+PwMyrFByvNatSW0WGpI5pkHuBAOJzaTGM4EmZjstvpzsyB
	zGdfkrSeVXr79m4S+63fThQdhI4OklKG8eUMY2epVRMF/zFxly4j7Qvhjc8=
X-Google-Smtp-Source: AGHT+IF8X2aJnI0gX005t0PUri54D3dtcnw/lw1QVpFik/ihHMWtN4i5bOiGkzFgQiAqdGEB6v6a6A==
X-Received: by 2002:a17:907:1c1d:b0:ac0:b71e:44e0 with SMTP id a640c23a62f3a-ace572a2d04mr97786466b.9.1745499882321;
        Thu, 24 Apr 2025 06:04:42 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59898006sm105101766b.46.2025.04.24.06.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 06:04:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 24 Apr 2025 15:04:25 +0200
Subject: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
In-Reply-To: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>, 
 Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=11528;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7ugfQMszcHvHRUWtXIg4mzvRmiSjFZ9os0x6k4Z3O4g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoCjbjKcAUdLmUVwY3qeJNLFj37nms00KoLQy6I
 uBru+wRVa+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaAo24wAKCRDBN2bmhouD
 11YFEACOrK4AtRKf2FXsRwDjMoeHBXPBRo8gMlDVv7TBd7fUwAJojINeN7hZgqtBGNxzTB2a1Xb
 hnKvq1UeEorY1/EpjfaJrXLaArHEFG2+a/I91PCRfUqIJrV0XVTJX4vriaNSvBxSJ4Dn/OCx+9a
 QUNHaOpuYPyu/AgW8rWSmValT8bHXB0GOcq2qkePMcTuIECF/egtBsfx92zzkeiTv6tgF1IlS3X
 cFSjv9tKUvl8qkuUvi0sSO64L2XGIyAGH4rwktc552QtW9EJMj7SX65uDtLR6hjGluZXQXlslVo
 vnSUrNgKSGw4x4DeREr6+nhq530+ymOYqg5zoqNE1RUu178HhiR9wJ2HcazDw45aQJdw/zY3EPT
 NvcujWUNbVXIAaUkHSu2SaSInI3lummVCu9bbkJ1RP+XRqJGBD5NO7DstQZq2mW7h9QhgcZ84An
 JBIVB7RW1vyOrM7LqMwr+HHaojR63SYKklMOwMLYmdpotho8HnYjFCo5gZ3ZgLsW16CgaaZm40m
 7o2nfrqjptfZeWdCNrEKeBCw2pZeBK6hKuVvE8F3qptkn1WI73oLt+zfB67xYKcj5OgUtU0kHWb
 UIyJGlkh24G/rdDmfkbidTcjykIjeQwwjuPyOU6Wgfju+yjB0yzEaWJxM43wnhPz6Ecbp/TbqTY
 hPC68DgQMZyeg3A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
DisplayPort and Display Clock Controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings (dtbs_check dependency):
https://lore.kernel.org/r/20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 415 +++++++++++++++++++++++++++++++++++
 1 file changed, 415 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 30ee98567b6078e8225142f2e13b25b5f35a3038..753b069cab1de636a3b1108747f300bec0f33980 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3,7 +3,9 @@
  * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sm8750-dispcc.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -2585,6 +2587,419 @@ data-pins {
 			};
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,sm8750-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
+			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc MDSS_GDSC>;
+
+			iommus = <&apps_smmu 0x800 0x2>;
+
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss_mdp: display-controller@ae01000 {
+				compatible = "qcom,sm8750-dpu";
+				reg = <0 0x0ae01000 0 0x93000>,
+				      <0 0x0aeb0000 0 0x2008>;
+				reg-names = "mdp",
+					    "vbif";
+
+				interrupts-extended = <&mdss 0>;
+
+				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				assigned-clock-rates = <19200000>;
+
+				operating-points-v2 = <&mdp_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dpu_intf1_out: endpoint {
+							remote-endpoint = <&mdss_dsi0_in>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						dpu_intf2_out: endpoint {
+							remote-endpoint = <&mdss_dsi1_in>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp0_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-207000000 {
+						opp-hz = /bits/ 64 <207000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-337000000 {
+						opp-hz = /bits/ 64 <337000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-417000000 {
+						opp-hz = /bits/ 64 <417000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-532000000 {
+						opp-hz = /bits/ 64 <532000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+
+					opp-575000000 {
+						opp-hz = /bits/ 64 <575000000>;
+						required-opps = <&rpmhpd_opp_nom_l1>;
+					};
+				};
+			};
+
+			mdss_dsi0: dsi@ae94000 {
+				compatible = "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0x0 0x0ae94000 0x0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupts-extended = <&mdss 4>;
+
+				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_PCLK0_CLK>,
+					 <&dispcc DISP_CC_MDSS_ESC0_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+					 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+					 <&dispcc DISP_CC_ESYNC0_CLK>,
+					 <&dispcc DISP_CC_OSC_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+					 <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus",
+					      "dsi_pll_pixel",
+					      "dsi_pll_byte",
+					      "esync",
+					      "osc",
+					      "byte_src",
+					      "pixel_src";
+
+				operating-points-v2 = <&mdss_dsi_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dsi0_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dsi0_in: endpoint {
+							remote-endpoint = <&dpu_intf1_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dsi0_out: endpoint {
+						};
+					};
+				};
+
+				mdss_dsi_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-187500000 {
+						opp-hz = /bits/ 64 <187500000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-358000000 {
+						opp-hz = /bits/ 64 <358000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+				};
+			};
+
+			mdss_dsi0_phy: phy@ae95000 {
+				compatible = "qcom,sm8750-dsi-phy-3nm";
+				reg = <0x0 0x0ae95000 0x0 0x200>,
+				      <0x0 0x0ae95200 0x0 0x280>,
+				      <0x0 0x0ae95500 0x0 0x400>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&bi_tcxo_div2>;
+				clock-names = "iface",
+					      "ref";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			mdss_dsi1: dsi@ae96000 {
+				compatible = "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+				reg = <0x0 0x0ae96000 0x0 0x400>;
+				reg-names = "dsi_ctrl";
+
+				interrupts-extended = <&mdss 5>;
+
+				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
+					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_PCLK1_CLK>,
+					 <&dispcc DISP_CC_MDSS_ESC1_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>;
+				clock-names = "byte",
+					      "byte_intf",
+					      "pixel",
+					      "core",
+					      "iface",
+					      "bus";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
+
+				operating-points-v2 = <&mdss_dsi_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dsi1_phy>;
+				phy-names = "dsi";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dsi1_in: endpoint {
+							remote-endpoint = <&dpu_intf2_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dsi1_out: endpoint {
+						};
+					};
+				};
+			};
+
+			mdss_dsi1_phy: phy@ae97000 {
+				compatible = "qcom,sm8750-dsi-phy-3nm";
+				reg = <0x0 0x0ae97000 0x0 0x200>,
+				      <0x0 0x0ae97200 0x0 0x280>,
+				      <0x0 0x0ae97500 0x0 0x400>;
+				reg-names = "dsi_phy",
+					    "dsi_phy_lane",
+					    "dsi_pll";
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&rpmhcc RPMH_CXO_CLK>;
+				clock-names = "iface",
+					      "ref";
+
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+
+				status = "disabled";
+			};
+
+			mdss_dp0: displayport-controller@af54000 {
+				compatible = "qcom,sm8750-dp", "qcom,sm8650-dp";
+				reg = <0x0 0xaf54000 0x0 0x104>,
+				      <0x0 0xaf54200 0x0 0xc0>,
+				      <0x0 0xaf55000 0x0 0x770>,
+				      <0x0 0xaf56000 0x0 0x9c>,
+				      <0x0 0xaf57000 0x0 0x9c>;
+
+				interrupts-extended = <&mdss 12>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&dp_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				dp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-192000000 {
+						opp-hz = /bits/ 64 <192000000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-540000000 {
+						opp-hz = /bits/ 64 <540000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-810000000 {
+						opp-hz = /bits/ 64 <810000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dp0_in: endpoint {
+							remote-endpoint = <&dpu_intf0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp0_out: endpoint {
+						};
+					};
+				};
+			};
+		};
+
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,sm8750-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+				 <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <0>, /* dp1 */
+				 <0>,
+				 <0>, /* dp2 */
+				 <0>,
+				 <0>, /* dp3 */
+				 <0>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		usb_1_hsphy: phy@88e3000 {
 			compatible = "qcom,sm8750-m31-eusb2-phy";
 			reg = <0x0 0x88e3000 0x0 0x29c>;

-- 
2.45.2


