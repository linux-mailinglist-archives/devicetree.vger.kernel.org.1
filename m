Return-Path: <devicetree+bounces-34142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AA0838CCF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4522D1C24121
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2685F567;
	Tue, 23 Jan 2024 11:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v9A81Q9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5035EE99
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007726; cv=none; b=kzi59e+fJAskGB/s8I02IMcBe5gFReJQBI2X8w9Akzc4gT9S2FJI9SBj3yM/O6PX9bKRM8bD+FZKJeEwbStEop/fEcrVd6ZN3Tc9i+LreajmbImXkw7w7iSDjkdPuT8YfsAUpUcxKfiFGexj82wmMK2sr5iOalQSmYPmYXJ0YWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007726; c=relaxed/simple;
	bh=UmrR1QM+oTp3sfUZqHEs/5csrTyF2fQoxRBuZHcAZs0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q/ksOwVHaU1GDCGqTMkjw7nolyVRCBXOkdi5/zxLVeiKsjX9CBZmoHnS/BHITWvME1lDg7T5IyMW+PIPB/rK3uzRqAD+4hcsPp+lwCIHBL6zhSIZL2AC3MEKcRTY4IuT9w2xj14Wp5OGwB2BOGpDFia74e05/YlgdrcRLl6848w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v9A81Q9Y; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-554fe147ddeso5595061a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706007722; x=1706612522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PVNvRBL7go2CSjmPDMeVbusb4MxAe78wmBjdD5hGnE8=;
        b=v9A81Q9Y2ncqOpj6vjbOvgQCGgT7sVj+8U6GbU/rfIp/8u5pz3XGkjFW6dIwmXSSLa
         4NN+F8guzJk+FrScQi5s2L32HL/vALRgCZuqSLk6afuQMfZFeNNtxnquMZZzNG6385aG
         xj4Qu1iAh3r06JqCfmZCEojrRFOxXPtAbtkGThSHM9aHIOXOwJ6IjETJK19Fjquyq7k0
         pIKX9PHpl6JKDlVpOBN5PNZ6D3mQdBVNzRufjnipnNx5UZckQu1zq/IMFHTS0HYno8uz
         +b1oesUiYXMjGIjmEO7eBxVl//1Tcllqgml3uP/YOeI6SuTliiFDHgUPvnTNfT5y2wXW
         WOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706007722; x=1706612522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PVNvRBL7go2CSjmPDMeVbusb4MxAe78wmBjdD5hGnE8=;
        b=HZ6zPDQ91hsg79Az1XkbwSapwL18FLVUP9crd2uDclLQJFxk9Q5iHGScv3pSFqp0yZ
         u2ePzB5dkTaipFazCidbZEinIhKWVNOTpkUxJU6hRKyWUETacQbR/f4WuZMLLuogt2HK
         8rmh3xv4Zfcyj32jxCi9rysFCZeGNszdzdUi6ILcu8VOyiSXS8Qo+KTkZWZfDzTOaks0
         CVUljdJeNhiZaVQ73pO21kR4e1G8+i2aBEe0mTkGzfPmBeHb3BjBAnJ7qU/LJbDnHkAV
         fxt1PUBHe+Xh0NaWtI3aRm6nM8ktEaUgFuabrll88dw1R1eoIIzrGmcsU5lM5i0hXj1f
         GITQ==
X-Gm-Message-State: AOJu0YymSJwTvp6kmj2YKcsV3niKv4osgKDjswueZfryDLeHRwA30ygp
	MkxiBap00xFE/qJs2HMaHCaRpuvD4jafHAZEfmZceZlMT+Ik17UeQf9kvGkGWTo8Kqhpg8gSZDr
	2
X-Google-Smtp-Source: AGHT+IFiEvFCW9Lz5cEfqkyw3eY037J3kpWmYzwA/+NqOKkbVtw4T4r3hYQvtg/ERIJxrAztmRFLGg==
X-Received: by 2002:a50:99c1:0:b0:559:b955:c9bc with SMTP id n1-20020a5099c1000000b00559b955c9bcmr377434edb.75.1706007722538;
        Tue, 23 Jan 2024 03:02:02 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm11430074edb.45.2024.01.23.03.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:02:02 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 23 Jan 2024 13:01:22 +0200
Subject: [PATCH v4 08/11] arm64: dts: qcom: x1e80100: Add display nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240123-x1e80100-dts-missing-nodes-v4-8-072dc2f5c153@linaro.org>
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=14260; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UmrR1QM+oTp3sfUZqHEs/5csrTyF2fQoxRBuZHcAZs0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlr5yZJjnt5kcvPGobFudObsN9Bzr1dMiCRoFYM
 p3VSiy/yWSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZa+cmQAKCRAbX0TJAJUV
 Vm+3EACqlXs5rbsKqoGj+fQdi82YsG7HjhSkcHXjErLccqWUYPs/FvAffDlrRmc189IzlzjZbzd
 eb43SK17ETqXyzJAqo0tiQ7uNZ/c0fhYJbi+Vx/knGmX5O0EXZCfFnEYOABwFOxHu4xA9ej+6s4
 WzanNCnq28PhFdcKgta0p8YiaSaRoObAU0lgdmr5CuSWFn8b6AXLvsx1Zngu47VU2jr4PR20RNd
 m63S2VMfFJERIwmd33Mxh/8m7hMKbX+jPMSpLqgom/w1288EYMbS5CrLwMOF4SKrDzdcmMUZEG/
 a4DRRBNmr7HYqeMjh+epn4A0Eb4LQbBXpvyURQacqP28G1reLYKKSFLM7iPVHoR4JsVMqu80EHE
 3iKA0Dus9a7YOOv4/s9Fvn+d+aQo7dNTdggescxbAxQkM0s2n8YaMmQTqEGYryARnasmlbDekP2
 OtUCWgmMd7o7l71ZpZTg+466xl+vSY5F4rp3Sh/x9CjIh9+afXKhX2NbbucZWB++BNplzkwSUpE
 uzAkQw4Tr91Tqpp8a7eZFYKVrkMQBA3r4EKDtc+U6wr85sPJtwBRMyPG3xxuOAj0QbN9i7H4rOd
 skdF/lO6fFo49D7Ghq7LYerwpDn1bdAgCR9jgYTk2qVCcd1Vuyh8JN+cukonsm5tAwaJE94YYGi
 N1E6nXKP0PWf9pg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the required nodes to support display on X1E80100.

Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 518 +++++++++++++++++++++++++++++++++
 1 file changed, 518 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index e8d2ea2b26ed..247ff7a9e405 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-tcsr.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -3298,6 +3299,523 @@ usb_1_ss1_role_switch: endpoint {
 			};
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,x1e80100-mdss";
+			reg = <0 0x0ae00000 0 0x1000>;
+			reg-names = "mdss";
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
+			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+					<&mc_virt MASTER_LLCC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "mdp0-mem",
+					     "mdp1-mem";
+
+			power-domains = <&dispcc DISP_CC_MDSS_CORE_GDSC>;
+
+			iommus = <&apps_smmu 0x1c00 0x2>;
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
+				compatible = "qcom,x1e80100-dpu";
+				reg = <0 0x0ae01000 0 0x8f000>,
+				      <0 0x0aeb0000 0 0x2008>;
+				reg-names = "mdp",
+					    "vbif";
+
+				interrupts-extended = <&mdss 0>;
+
+				clocks = <&gcc GCC_DISP_AHB_CLK>,
+					 <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "bus",
+					      "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
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
+						mdss_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp0_in>;
+						};
+					};
+
+					port@4 {
+						reg = <4>;
+
+						mdss_intf4_out: endpoint {
+							remote-endpoint = <&mdss_dp1_in>;
+						};
+					};
+
+					port@5 {
+						reg = <5>;
+
+						mdss_intf5_out: endpoint {
+							remote-endpoint = <&mdss_dp3_in>;
+						};
+					};
+
+					port@6 {
+						reg = <6>;
+
+						mdss_intf6_out: endpoint {
+							remote-endpoint = <&mdss_dp2_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-200000000 {
+						opp-hz = /bits/ 64 <200000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-325000000 {
+						opp-hz = /bits/ 64 <325000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-375000000 {
+						opp-hz = /bits/ 64 <375000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-514000000 {
+						opp-hz = /bits/ 64 <514000000>;
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
+			mdss_dp0: displayport-controller@ae90000 {
+				compatible = "qcom,x1e80100-dp", "qcom,sm8350-dp";
+				reg = <0 0xae90000 0 0x200>,
+				      <0 0xae90200 0 0x200>,
+				      <0 0xae90400 0 0x600>,
+				      <0 0xae91000 0 0x400>,
+				      <0 0xae91400 0 0x400>;
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
+				assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
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
+						mdss_dp0_in: endpoint {
+							remote-endpoint = <&mdss_intf0_out>;
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
+
+				mdss_dp0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
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
+			};
+
+			mdss_dp1: displayport-controller@ae98000 {
+				compatible = "qcom,x1e80100-dp", "qcom,sm8350-dp";
+				reg = <0 0xae98000 0 0x200>,
+				      <0 0xae98200 0 0x200>,
+				      <0 0xae98400 0 0x600>,
+				      <0 0xae99000 0 0x400>,
+				      <0 0xae99400 0 0x400>;
+
+				interrupts-extended = <&mdss 13>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&usb_1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp1_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_1_ss1_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
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
+						mdss_dp1_in: endpoint {
+							remote-endpoint = <&mdss_intf4_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp1_out: endpoint {
+						};
+					};
+				};
+
+				mdss_dp1_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
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
+			};
+
+			mdss_dp2: displayport-controller@ae9a000 {
+				compatible = "qcom,x1e80100-dp", "qcom,sm8350-dp";
+				reg = <0 0xae9a000 0 0x200>,
+				      <0 0xae9a200 0 0x200>,
+				      <0 0xae9a400 0 0x600>,
+				      <0 0xae9b000 0 0x400>,
+				      <0 0xae9b400 0 0x400>;
+
+				interrupts-extended = <&mdss 14>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dp2_phy 0>,
+							 <&mdss_dp2_phy 1>;
+
+				operating-points-v2 = <&mdss_dp2_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dp2_phy>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss_dp2_in: endpoint {
+							remote-endpoint = <&mdss_intf6_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+
+				mdss_dp2_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
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
+			};
+
+			mdss_dp3: displayport-controller@aea0000 {
+				compatible = "qcom,x1e80100-dp", "qcom,sm8350-dp";
+				reg = <0 0xaea0000 0 0x200>,
+				      <0 0xaea0200 0 0x200>,
+				      <0 0xaea0400 0 0x600>,
+				      <0 0xaea1000 0 0x400>,
+				      <0 0xaea1400 0 0x400>;
+
+				interrupts-extended = <&mdss 15>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dp3_phy 0>,
+							 <&mdss_dp3_phy 1>;
+
+				operating-points-v2 = <&mdss_dp3_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dp3_phy>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
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
+						mdss_dp3_in: endpoint {
+							remote-endpoint = <&mdss_intf5_out>;
+
+							link-frequencies = /bits/ 64 <8100000000>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+
+				mdss_dp3_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
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
+			};
+
+		};
+
+		mdss_dp2_phy: phy@aec2a00 {
+			compatible = "qcom,x1e80100-dp-phy";
+			reg = <0 0x0aec2a00 0 0x19c>,
+			      <0 0x0aec2200 0 0xec>,
+			      <0 0x0aec2600 0 0xec>,
+			      <0 0x0aec2000 0 0x1c8>;
+
+			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb";
+
+			power-domains = <&rpmhpd RPMHPD_MX>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		mdss_dp3_phy: phy@aec5a00 {
+			compatible = "qcom,x1e80100-dp-phy";
+			reg = <0 0x0aec5a00 0 0x19c>,
+			      <0 0x0aec5200 0 0xec>,
+			      <0 0x0aec5600 0 0xec>,
+			      <0 0x0aec5000 0 0x1c8>;
+
+			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb";
+
+			power-domains = <&rpmhpd RPMHPD_MX>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,x1e80100-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <0>, /* dsi0 */
+				 <0>,
+				 <0>, /* dsi1 */
+				 <0>,
+				 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp0 */
+				 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp1 */
+				 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&mdss_dp2_phy 0>, /* dp2 */
+				 <&mdss_dp2_phy 1>,
+				 <&mdss_dp3_phy 0>, /* dp3 */
+				 <&mdss_dp3_phy 1>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,x1e80100-pdc", "qcom,pdc";
 			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;

-- 
2.34.1


