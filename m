Return-Path: <devicetree+bounces-200512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3FFB14FDB
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 17:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 550393B0B24
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 14:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192FB28DF0C;
	Tue, 29 Jul 2025 14:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ywFvilFI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79C252F66
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 14:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753801106; cv=none; b=azFIHk+ev0msunSP7uaxmDcZcS7XUxqxgnaLiKTMPYh+qEyd95WgRtr2AD6ttSEkvw0db5MApyp3a5kgQH5nuS0sajDV2e3+BG81gNigxVE+1b/JyD4dd585/Bd0JzmpvoRxWMkiatkQnz/S3qAlzjv0l5hILGJO7ryuwkCPUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753801106; c=relaxed/simple;
	bh=G1mNuBpA7HbauYoTqR/3ft2D5iQv7PrC1A9qoCeBmnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GyyRAZ6dHH1D6x4SPxKbssRdtg59xyUvJkvpNLNqwNFSDo83MjutL93BOsL10PzBBvoP5GAqjWxe/g8KRmau5znu9KAw8EOGQZBq9YmVYswbauXDEL21gE/sCLj5ZbrmOTP2lF1Yn9WJfLpX5HRvJi40w2wewDsuW4OioWh5/lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ywFvilFI; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-455b00283a5so33408785e9.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 07:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753801102; x=1754405902; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHsvigqSpw00u1mtcnaLxdNNr9s9Oed6sd1X0ydEhkE=;
        b=ywFvilFI/YG5ftYG3pfPsO2xcaCDGyDiB3bCKIEmjGtC5VEwH5TRkZqUZQO03IuNpK
         5trW82yeBtVTs1EGVRhZETCYKPmjXXizS0AoSVdA0wVOGG3QqR1AWVFip2MFSjMX0Jo0
         g2CoE+H/h0cVBqS2F+9B1IYb6QP/OAZlvtVrJ2c/vL4iZVBWcHd+OqbDAkNcQiRKXmb0
         rBDb+W/mj1UWsreikHX1m57bu0KOsscFHQtIsormQAEFL4lLJNxp15OJmzT6+vdAmT6L
         MNMNNyRZLdmbSFPTNw5GRCGNMTiTNKDGAmUmVkwHxNdB1EJfB+aWF330j1ILA3SpRK6P
         tkwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753801102; x=1754405902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHsvigqSpw00u1mtcnaLxdNNr9s9Oed6sd1X0ydEhkE=;
        b=oV5kVcK9F83DbdgbWfJtiIAuzFNcZ4poPOr4cOLkeN0TjaGTWZq9OOQTl5368p9VAI
         3P8XZL1B75VOGw0I4VmVzzVrdKf2noVQuiMBBz/UvMaKcWSMugT5QM0UMWyq1VqYHKK3
         1d74r7NgcRGMJlTaNxytO6Pn2TZT2te/VBH46p69QRTo/zw0DVyewF5Yn4aeswtql42h
         FIZAKzyfG96vJHmtRQRrQhh1GY/a12w7y5aLp0pr7e7TUc7xUk1Kg9pgTG6HqV9mjFpV
         QnGJ1+O+xxLr/8KOB9LEmRUPMq4TekkkDAwV5ntKEws/brkwFsZ1GHrAOIahufC67xCH
         6wJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnSmgpnHxYE/43LVLcBTWu0jzpnQF6l7ha5uF0dhik3aSVYwn+oziLhr2UhehvOE+9s8clbxJw0Y8B@vger.kernel.org
X-Gm-Message-State: AOJu0YxlxmeOIJeDaJOKjxtIfFvH6SNq57VeQHFRDqgg8O7cVX5fj9xx
	sJIvc1Sr2IbEgKEUx16lAX0jmyh5C6goN0a5lNj+pe/nHvLSOXBLfX2HS3ZryG457vM=
X-Gm-Gg: ASbGnct/AcQq9Q+Qn7NugFyy9gP4FjMRUqrc38h6mOhuUiwgew+STzIgUcXkG05onYl
	s/cKWw2qJfnUgcQONcvB5ZlR+6QSJKZ4y3xNZbqdNRQNmn74FqBA87/nFsFrX227E3XoSynPjSJ
	bXNaNtjA6EmtBThJ/SGLRMktWPLrtRvzicH8f5wQ2K0neY0ztCQH/tiRa4W80eOHraISPeUf8N5
	Qsz2fuzFJXoQrArU1K8ehn86A2OYjQyPzL/BTyxWb8U4ub/ZE7zaGwfUjsrj11uV5MwiOGWuedB
	ECtbE7vhEKrViqoiLVFpDbLwYiofO4CRaGAwOXxB/xD+8wmmgXu7SAaERtq/CxpPRn8yYN+JEFg
	Lnf+skaIKGDC8Lcvxmxb0Z7gJW9Mb1DtYd5vv+wIqUx4=
X-Google-Smtp-Source: AGHT+IErc4AESaBFczNyM97DPfV/SppVmdg8l4MS3ZHOXD1p0g7Pk6+WmXwiG6iRAAUfgH2rgywKGQ==
X-Received: by 2002:a05:600c:19c6:b0:456:2020:165d with SMTP id 5b1f17b1804b1-45892bdf4femr728825e9.31.1753801102129;
        Tue, 29 Jul 2025 07:58:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705bcbb7sm210294075e9.18.2025.07.29.07.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 07:58:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 29 Jul 2025 16:58:18 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sm8650: Flatten the USB nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-topic-sm8x50-usb-flatten-v1-2-4be74a629136@linaro.org>
References: <20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org>
In-Reply-To: <20250729-topic-sm8x50-usb-flatten-v1-0-4be74a629136@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5785;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=G1mNuBpA7HbauYoTqR/3ft2D5iQv7PrC1A9qoCeBmnI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoiOGL5vRSKPAoLrk3+YfDrsEa5OpAg8IuYfVUKDrF
 7pcZDcKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaIjhiwAKCRB33NvayMhJ0QV1EA
 CcKSE+dBtILpL00HPJDYm5W8ZzLGTaAi1Tqd5pztY6nMAAPn/oZ43QPDRjWg1sQoyMnNIVMm2VdKDl
 XiYRp6NJ4CRiOqfGFVYEvxWfvbv7VQ/+fAbb2zwet9Q5ktM8HDYRsyYG2mkkoIrke3+yUA3OAdtEdy
 wXSdJNlLS0ltVGN0nL6FDSbEnWG8ptZpncrJb2LdXJ30tAKo5nksY2ueWigYPO9wMoM/aeLGGEI0TZ
 Cvq9LfyWVxy9fsrEECouowYyp1sk9Z+em2b6zFaA1CBdMCv6NWD7YnQsk6RfNKvImwQt+XtQyJhcsL
 hR0dllrRlTtThycBntW+j+Wocqv+dahNbj7zyOz45tdyJB0pcw4xPG8ut79nE0Xwwv2QExS9jDIaqQ
 7N7L9CcAGHAJfcz56KCsjD/lkD4mJJBAGzFBN5vL603FmnZf/rl4ZtRz5H/GBwzp6Yk/MsYgxFUbHV
 c3JN+3MrQDZQUzLRtaHBtzvswqMMe3hxm3OczbH8mbhr4buaT3x36UM2ClTBbGgLckaqlo/Gwi/y8Z
 EXDUz+roxS4B3uJ1Iv+2U7edp1Mx5uGN9ErB8qfom//A/nXokQGoRuvdDiBdVdLOmpxEf5XiEqi/dx
 w6/wAHYPJsM0MHQ3oBRgKRIYvyqM1B/zj1VeWd3ow/uFmywpHi/v6J8ttrHA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Transition the USB controllers found in the SM8650 SoC to the newly
introduced, flattened representation of the Qualcomm USB block, i.e.
qcom,snps-dwc3, to show the end result.

The reg and interrupts properties from the usb child node are merged
with their counterpart in the outer node, remaining properties and child
nodes are simply moved.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  6 +--
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 86 +++++++++++++++------------------
 4 files changed, 46 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 259649d7dcd768ecf93c9473adc1738e7d715b6c..a00da76a60620b998973cab189f12eeaa0a448fa 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -1310,12 +1310,10 @@ &ufs_mem_phy {
  */
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 8a957adbfb383411153506e46d4c9acfb02e3114..c67bbace27439ad67cfb247a88aec633f93f5a6d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -857,12 +857,10 @@ &ufs_mem_phy {
  */
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 7552d5d3fb4020e61d47242b447c9ecbec5f8d55..081b7e40f5742120a611cbfa57a59dfb1dc19b9f 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1293,12 +1293,10 @@ &ufs_mem_phy {
  */
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+
+	status = "okay";
 };
 
 &usb_1_dwc3_hs {
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index e14d3d778b71bbbd0c8fcc851eebc9df9ac09c31..0120b9c7432a945a204ed76a461a6d0f13875537 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5651,16 +5651,18 @@ usb_dp_qmpphy_dp_in: endpoint {
 			};
 		};
 
-		usb_1: usb@a6f8800 {
-			compatible = "qcom,sm8650-dwc3", "qcom,dwc3";
-			reg = <0 0x0a6f8800 0 0x400>;
+		usb_1: usb@a600000 {
+			compatible = "qcom,sm8650-dwc3", "qcom,snps-dwc3";
+			reg = <0 0x0a600000 0 0x10000>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
+			interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 14 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
 					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
@@ -5685,6 +5687,11 @@ usb_1: usb@a6f8800 {
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
+			phys = <&usb_1_hsphy>,
+			       <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
 			interconnects = <&aggre1_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -5692,59 +5699,46 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
+			iommus = <&apps_smmu 0x40 0>;
+
 			power-domains = <&gcc USB30_PRIM_GDSC>;
 			required-opps = <&rpmhpd_opp_nom>;
 
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-
-			status = "disabled";
-
-			usb_1_dwc3: usb@a600000 {
-				compatible = "snps,dwc3";
-				reg = <0 0x0a600000 0 0xcd00>;
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,usb2-gadget-lpm-disable;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,usb2-lpm-disable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
 
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>;
-
-				iommus = <&apps_smmu 0x40 0>;
-
-				phys = <&usb_1_hsphy>,
-				       <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
-				phy-names = "usb2-phy",
-					    "usb3-phy";
+			dma-coherent;
 
-				snps,hird-threshold = /bits/ 8 <0x0>;
-				snps,usb2-gadget-lpm-disable;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				snps,is-utmi-l1-suspend;
-				snps,usb3_lpm_capable;
-				snps,usb2-lpm-disable;
-				snps,has-lpm-erratum;
-				tx-fifo-resize;
+			#address-cells = <1>;
+			#size-cells = <0>;
 
-				dma-coherent;
+			status = "disabled";
 
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
 
-					port@0 {
-						reg = <0>;
+				port@0 {
+					reg = <0>;
 
-						usb_1_dwc3_hs: endpoint {
-						};
+					usb_1_dwc3_hs: endpoint {
 					};
+				};
 
-					port@1 {
-						reg = <1>;
+				port@1 {
+					reg = <1>;
 
-						usb_1_dwc3_ss: endpoint {
-							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
-						};
+					usb_1_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
 					};
 				};
 			};

-- 
2.34.1


