Return-Path: <devicetree+bounces-57781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E325789ECA8
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29D3228409B
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3894813D27E;
	Wed, 10 Apr 2024 07:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qyaf5Rl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF08BE8
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712735400; cv=none; b=IBHpSkXr2A4pIp6nnuLQYLyIPfYFjZijxYy1hSXuDI+4FEHl/5P3Xt3el1DiXNlLtwhJXnyUPGqr5Ieww+MWf5HEk7/a6YL9loF50NO3QkqpCSl0JSSHRkrb1CE4/DLCz+dhJc7vJghE3DBHcRDLdlbyySANgDy0Q/YgI3mxzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712735400; c=relaxed/simple;
	bh=v2oa07ECR0gbmUU2Nl2uaqi5z8vnyMAbdUZPaOvorZg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CgWr/gGlkIRyedfw5GI8orm13Vs+FvDh/2Ac5uLymC9huaKFzou+QtniXilu+G+8NYb/IgkbwV53OFyjrgApVvrAL8ADDTgVv/7BVy+eNZG+CoTmSB4RpI8gBgC3pMY4VoFpJYhnir2ek+wOTXqxHFYk8jrpcQrzlQtuWkyjPis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qyaf5Rl9; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d71f9e07a9so10900241fa.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 00:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712735396; x=1713340196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TFSfVq5/F5pBMLFljeWWoXZXk84ibShEp/y6zW9ytzM=;
        b=qyaf5Rl9oNk0M02Z1jQZ4elef6n4znXOMlj03JVdkvc6Ag4eXvhOIfC5MHgsXpI6qX
         9f0jzV4B4tmCRpge9qWBA0vmf/o24TVweYpHOTgA5q6JmgUJHfiWIxe0zdmUBpugi8NL
         YdqrlE2Q2ptpTaDYZuQHaApv/VsM81r7WgtQjTGNlG0pJ/nEVTv9ZVge5AJuctvUy4jd
         5a/2oRfGWsMJpyDWdCWVxYVqdgePkFhUp6TzlsEaG8Jv/CsLUV9FTrmNV8RICtBe7GD3
         +Z3lHHpMgd2AThxhlZmAxkcTc87ntvPbxRro38GgMzLRKOq1VXC8fJ8hTxTLS9twgnD5
         Os5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712735396; x=1713340196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TFSfVq5/F5pBMLFljeWWoXZXk84ibShEp/y6zW9ytzM=;
        b=Qsuj+jXm6y4Nwf2jPERJMgTlIFsLOS5va8NGSngFmfw7dgzBohOoNMbx5HXTY20odr
         MhG5udHJ5Rwy38Ar2nKHaxpzpt8YUzlOIiYd2glmqYOcKank5voel/qHJEpGmDNumHad
         hxXc/HELQel3zFWr+yIV6KzZYSTourLBWBCZZa7oVxKj8dqeJvqd9a5RJgKuot59FcVr
         BJGWOp4ssgmFXVxap488MfRVdYOwgV8rfRCNG2f+ZzR1e6+2ZUhqF3/kzav4V1Bg8vY5
         Ay6npLSMh9xf8xMWGhj6Y4SZjPz3xYt1SsY2ldproKRRuzhFXOt/dxxKWcm2zuUtjHAp
         IhYg==
X-Forwarded-Encrypted: i=1; AJvYcCXMsJqcLcarvZv2V4FDG5Bmcq908O3zuP6hZIs3TrQsmj3sS5IPuqtqo7E7Ys68QXAISriAb0zvZUfEPphk1MmJulWGuKxbtwGAGg==
X-Gm-Message-State: AOJu0Yx0hbj/j7a0Rz7opTfSjJKJuXZMYVy7PcqyXN0jPyYBkRXQIChT
	GAcLTWFgwEApP7g/BqIYem6BhDjcE1A5EH9Vx0BQNxgbLfTjYx/urZ9I5AdEFjs=
X-Google-Smtp-Source: AGHT+IEwqUiUdfy1QPEJt7W0KTn176RoZQZye4jRXSHM/CVl9epPKCJLOdLSDzOelnyfUp5XBFr6Ag==
X-Received: by 2002:a2e:8750:0:b0:2d7:136e:2564 with SMTP id q16-20020a2e8750000000b002d7136e2564mr1127402ljj.5.1712735396082;
        Wed, 10 Apr 2024 00:49:56 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id l24-20020a2ea318000000b002d87b220facsm1412025lje.14.2024.04.10.00.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 00:49:55 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8650: add description of CCI controllers
Date: Wed, 10 Apr 2024 10:49:51 +0300
Message-Id: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm SM8650 SoC has three CCI controllers with two I2C busses
connected to each of them.

The CCI controllers on SM8650 are compatible with the ones found on
many other older generations of Qualcomm SoCs.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
The change is based and depends on a patch series from Jagadeesh Kona:

  https://lore.kernel.org/linux-arm-msm/20240321092529.13362-1-quic_jkona@quicinc.com/

It might be an option to add this change right to the series,
since it anyway requires a respin.

A new compatible value "qcom,sm8650-cci" is NOT added to
Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml , because
the controller IP description and selection is covered by a generic
compatible value "qcom,msm8996-cci".

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 315 +++++++++++++++++++++++++++
 1 file changed, 315 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index b406835b2e71..160b618dff9c 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3122,6 +3122,114 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		cci0: cci@ac15000 {
+			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac15000 0 0x1000>;
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci";
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			assigned-clocks = <&camcc CAM_CC_CCI_0_CLK_SRC>;
+			assigned-clock-rates = <37500000>;
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@ac16000 {
+			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac16000 0 0x1000>;
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci";
+			pinctrl-0 = <&cci2_default &cci3_default>;
+			pinctrl-1 = <&cci2_sleep &cci3_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
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
+		cci2: cci@ac17000 {
+			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac17000 0 0x1000>;
+			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_2_CLK>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci";
+			pinctrl-0 = <&cci4_default &cci5_default>;
+			pinctrl-1 = <&cci4_sleep &cci5_sleep>;
+			pinctrl-names = "default", "sleep";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cci2_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci2_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,sm8650-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;
@@ -3815,6 +3923,213 @@ tlmm: pinctrl@f100000 {
 
 			wakeup-parent = <&pdc>;
 
+			cci0_default: cci0-default-state {
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+			};
+
+			cci0_sleep: cci0-sleep-state {
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_default: cci1-default-state {
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				rst-pins {
+					pins = "gpio15";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+					output-low;
+				};
+			};
+
+			cci1_sleep: cci1-sleep-state {
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci2_default: cci2-default-state {
+				sda-pins {
+					pins = "gpio117";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio118";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+			};
+
+			cci2_sleep: cci2-sleep-state {
+				sda-pins {
+					pins = "gpio117";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio118";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci3_default: cci3-default-state {
+				sda-pins {
+					pins = "gpio12";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio13";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+			};
+
+			cci3_sleep: cci3-sleep-state {
+				sda-pins {
+					pins = "gpio12";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio13";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci4_default: cci4-default-state {
+				sda-pins {
+					pins = "gpio112";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio153";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+			};
+
+			cci4_sleep: cci4-sleep-state {
+				sda-pins {
+					pins = "gpio112";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio153";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci5_default: cci5-default-state {
+				sda-pins {
+					pins = "gpio119";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+
+				scl-pins {
+					pins = "gpio120";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-up = <2200>;
+				};
+			};
+
+			cci5_sleep: cci5-sleep-state {
+				sda-pins {
+					pins = "gpio119";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				scl-pins {
+					pins = "gpio120";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			hub_i2c0_data_clk: hub-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio64", "gpio65";
-- 
2.33.0


