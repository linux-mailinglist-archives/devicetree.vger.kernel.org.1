Return-Path: <devicetree+bounces-139503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 816B8A15F7C
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 01:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA6401886CA2
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 00:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1265F7DA88;
	Sun, 19 Jan 2025 00:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZiVzVkpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC523B7A8
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 00:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737248109; cv=none; b=Ay4Z6npfMtNnfc6o5osr6d/ChUv70kK//4Fu0njsxEXSANahchO4GjAXC/RvYEdK0cdv/Vxm8eMBSnddlu0fNwvHiY57vrLiruMHa1ISsUQE3fXO6/K5xvsfoFRSs0xfqajpMitVPmj8PgbYj7YSNEaKPDoFD0jvXJOlIM7N03k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737248109; c=relaxed/simple;
	bh=Jt7iU9R/14awdjNK9JMo4MwrlaoC+0oxLw4O0ywlGWM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RhCDGSZ1Ch6V+asLZbY2v8PVole2KIOiesyHFMbaQXoteE9//Y3WeUW7mCfDXIpgPo41jlENpnhuVkdQ46fr7h96CyPjLYVOBcTO3Ud3hMHPuaW8ZzNclMcUO3oXD4X9Vd32fzWL7IXftpP3YtV727LjwVJezDQCGwQVDTWIM3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZiVzVkpe; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38632b8ae71so2612590f8f.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 16:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737248105; x=1737852905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cw/Wz7StcVhxVlxFDNy4PKSt/7FBnuzUywBL8DaaXQQ=;
        b=ZiVzVkpem6R72yPGgXwI8I2He3X2Joi7+xApSgpR63F20ppIP+8fo4oxJtzcUSIrWh
         txleYPl0g1cqI7VOAJfm1H7W9LpXrRocL5+taAlfTLFR1NO34iuIJooi7pHClzae3edf
         9jFq2c/gd3wWqmWaAW33PRGicDRaLXxwCDEZq1qm6NgU49FRZiyeDjS4gPc2hGe/iDOL
         eQwKgvcPHK8l0ljgUWErYkR3FkMiTDTaAs/FgQfxtFaDG69HkNFMGPLM26r6/rhkKj20
         trv/rDRaVkQtBMTDq/xZs6YU+uyTHLfDHzEivaMmT9JP6pLGB27/PF50Rs4Vm5BRzpTd
         1H8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737248105; x=1737852905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cw/Wz7StcVhxVlxFDNy4PKSt/7FBnuzUywBL8DaaXQQ=;
        b=H8a9MV3+m9yDY/ZH14QmHGo1sAxPe1lxRvACXINWcCOWE16Udxk61HpCS0lFSI096k
         wIa4z/d+0JC4Gi4qSl6+Wm+h1aZVa9J9w7/kxAmDXPTxKmK5qtJ2rX8oiaOkRnFM+uiq
         EmSE10MtllELHr8Z67nHqxwzaPX97ZA+CUTz7R5vWmp5kie2vg1aJfI+GyfnXstsj7Nb
         mtGaFTgxwmbtIwJND7/YSfmwY3ZSNBbo4naXbYt//HWi/45Y4efWSS6sOwv3og+cvcFz
         B7NGRGXPkC2rCbrUc/s/N4DaRVGpVyrVxEqxAUTKFwEaTh34vgMCUskXezRxsWogupHd
         XCbg==
X-Forwarded-Encrypted: i=1; AJvYcCVKJjDknT1I/hGSaXwoW7OXAENEyVXu5iIpDZDkRh1H2bpj+piNcukJU3lcjtsIHZ0UGB9QyTjQReoE@vger.kernel.org
X-Gm-Message-State: AOJu0YxQhpLFyVXB0zDXsctk0Z3GLgfTjZ37o5XkVLwsh7ZBKjcy8cAf
	HNTg5N8gtqZa2opwsLwSvphqXStWZnv/mXqPwqnEU4QVTsk6KRwR0U3c5uMXdE5eoT9jDc3khtL
	ztrc=
X-Gm-Gg: ASbGncs6sUgTIfnUYotkaptNjE9+gO5zBwQq2IM2o+zR8/qP46LC0jug5j6GDz/tDnL
	CdSc662yuPD7NMB4M1TbhgIWI0ycDmmKxgTr3p3N71SOfrTcAYt5Fs7U36zgnRFd4pEf7r2Bki3
	pptV/0SVSmWNJBFsE3A43CUL8I5M4UsH45mbnqq+nNbtJ0ftsxZiARbJr53l/RbWhEuwbTdtWzs
	QLnqea42r5ya9Vd3fgMXcuDf6XLAomZlkX1qJYenle9IlFdH5S6jMA68jtfOnuIbFQyFOIp8ERK
	pMw=
X-Google-Smtp-Source: AGHT+IHKmONsm3SlRRcGVXVT9gNit/w6OCBM8BV9iVHiDtkCuyzo8seH5y3X+tYi5hTFHFQLR/zFmQ==
X-Received: by 2002:a05:6000:1947:b0:386:3835:9fec with SMTP id ffacd0b85a97d-38bf58e8b7fmr6208274f8f.44.1737248105098;
        Sat, 18 Jan 2025 16:55:05 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322aa40sm6339241f8f.45.2025.01.18.16.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 16:55:04 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 19 Jan 2025 00:54:55 +0000
Subject: [PATCH v4 3/4] arm64: dts: qcom: x1e80100: Add CCI definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-3-c2964504131c@linaro.org>
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

Add in two CCI busses.

One bus has two CCI bus master pinouts:
cci_i2c_scl0 = gpio102
cci_i2c_sda0 = gpio101
cci_i2c_scl1 = gpio104
cci_i2c_sda1 = gpio103

The second bus has two CCI bus master pinouts:
cci_i2c_scl2 = gpio106
cci_i2c_sda2 = gpio105
aon_cci_i2c_scl3 = gpio236
aon_cci_i2c_sda3 = gpio235

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 150 +++++++++++++++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 10035bcfa89bb..de05916e6f295 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5110,6 +5110,84 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		cci0: cci@ac15000 {
+			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac15000 0 0x1000>;
+
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_default>;
+			pinctrl-1 = <&cci0_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@ac16000 {
+			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac16000 0 0x1000>;
+
+			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci1_default>;
+			pinctrl-1 = <&cci1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci1_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci1_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,x1e80100-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;
@@ -5733,6 +5811,78 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 239>;
 			wakeup-parent = <&pdc>;
 
+			cci0_default: cci0-default-state {
+				cci0_i2c0_default: cci0-i2c0-default-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio101", "gpio102";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				cci0_i2c1_default: cci0-i2c1-default-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio103", "gpio104";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_sleep: cci0-sleep-state {
+				cci0_i2c0_sleep: cci0-i2c0-sleep-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio101", "gpio102";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				cci0_i2c1_sleep: cci0-i2c1-sleep-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio103", "gpio104";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_default: cci1-default-state {
+				cci1_i2c0_default: cci1-i2c0-default-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio105","gpio106";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				cci1_i2c1_default: cci1-i2c1-default-pins {
+					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
+					pins = "gpio235","gpio236";
+					function = "aon_cci";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_sleep: cci1-sleep-state {
+				cci1_i2c0_sleep: cci1-i2c0-sleep-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio105","gpio106";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				cci1_i2c1_sleep: cci1-i2c1-sleep-pins {
+					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
+					pins = "gpio235","gpio236";
+					function = "aon_cci";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio0", "gpio1";

-- 
2.47.1


