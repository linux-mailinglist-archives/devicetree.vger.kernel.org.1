Return-Path: <devicetree+bounces-5013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B81647B4BD9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6B87E281485
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 06:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348F89CA4A;
	Mon,  2 Oct 2023 06:55:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C5617C7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 06:55:46 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBE7A136
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 23:55:38 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-533df112914so16894526a12.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 23:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696229737; x=1696834537; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLUF0/a7PdgNt6u9Pw5UnwojPsRQiGDOxDcNhly3Luw=;
        b=QWjeYU1Of290RGkt5rXqZrsegGBEwMXrs1wsqAMDq8fMDKbhsJ2bX46PdlTH3fsMUi
         H86NLXevjPr5vIoPMbXDBK25TaCAJ1tN164lRdgs3U43/D42udyv7Mtxo6ClTLWviifT
         rFvCP7CEoj9I4v07jYg93YfMumdu8aaMSU22/Ubd3vJ5vYxS8hYf+oaCuNid9B5LZcPu
         YE8y0RglHgxfQUOztnMXg4G01uAEytz4P77UoA7EDVqfH5WiIs32U40O4sUy9mqk7vg9
         I15HnVHhs5dh9tPeRmYHAfAFT2tHKrgACLUTTkeVIFuZV0ZLNQ8/Djz/iz/6xx0lBy2F
         tpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696229737; x=1696834537;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CLUF0/a7PdgNt6u9Pw5UnwojPsRQiGDOxDcNhly3Luw=;
        b=f5Y0L47S/vmachQffkAafOkJ7qthlSkSyu+D3jRlPZ1kgXevphwwMLj8YobTsLQG+J
         9YVri4jJ9fUbz/YxVBtUr5vOrNzTx+kAol6gBJ55RNrPqS0gUij+XC+wogFZBWcwe5Pa
         pxDi3G3wgfHUVgey5sJ3UAsfDK3RhL050vHwiJho3bfNfhLQRaPjI92twpRBxo4PgErd
         sI22vUVjWjaMlklgmmL0Ro8zwSjp9tHyQguKX7TrmJiAaY+zxgWeF9D2AJjpitqLOx3b
         UWZdwhWFw1TLRBl7i8otMLSCTsrqr0Ihu7kcKVvBmCxly6yfO0iX30wOnJBauiyNjDII
         G9dA==
X-Gm-Message-State: AOJu0YzbwSH7XDX3w/iQl985wBYwbURYr8kLMm4FDFdLbW9kYNEfZFVm
	/8uv49B+GOkYd3Wd4UyYeqU4Cw==
X-Google-Smtp-Source: AGHT+IEvPypp8fZTob08fjR9qOqeRPvfVW8GbTB3iOc2doKjnm7+JLd5MoVpJ/Ej47EE5oKwpDVpaA==
X-Received: by 2002:a05:6402:2694:b0:530:dd97:fe78 with SMTP id w20-20020a056402269400b00530dd97fe78mr12220249edd.7.1696229737219;
        Sun, 01 Oct 2023 23:55:37 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m7-20020a056402050700b00537f44827a8sm4095557edv.64.2023.10.01.23.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 23:55:37 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 08:55:31 +0200
Subject: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Add Camera Control
 Interface busses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-sc7280-cci-v2-2-9333fda4612a@fairphone.com>
References: <20231002-sc7280-cci-v2-0-9333fda4612a@fairphone.com>
In-Reply-To: <20231002-sc7280-cci-v2-0-9333fda4612a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the CCI busses found on sc7280 and their pinctrl states.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 136 +++++++++++++++++++++++++++++++++++
 1 file changed, 136 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 66f1eb83cca7..65550de2e4ff 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3793,6 +3793,86 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		cci0: cci@ac4a000 {
+			compatible = "qcom,sc7280-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac4a000 0 0x1000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
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
+		cci1: cci@ac4b000 {
+			compatible = "qcom,sc7280-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac4b000 0 0x1000>;
+			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+			pinctrl-0 = <&cci2_default &cci3_default>;
+			pinctrl-1 = <&cci2_sleep &cci3_sleep>;
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
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,sc7280-camcc";
 			reg = <0 0x0ad00000 0 0x10000>;
@@ -4298,6 +4378,62 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 175>;
 			wakeup-parent = <&pdc>;
 
+			cci0_default: cci0-default-state {
+				pins = "gpio69", "gpio70";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci0_sleep: cci0-sleep-state {
+				pins = "gpio69", "gpio70";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cci1_default: cci1-default-state {
+				pins = "gpio71", "gpio72";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci1_sleep: cci1-sleep-state {
+				pins = "gpio71", "gpio72";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cci2_default: cci2-default-state {
+				pins = "gpio73", "gpio74";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci2_sleep: cci2-sleep-state {
+				pins = "gpio73", "gpio74";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
+			cci3_default: cci3-default-state {
+				pins = "gpio75", "gpio76";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			cci3_sleep: cci3-sleep-state {
+				pins = "gpio75", "gpio76";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
 			dp_hot_plug_det: dp-hot-plug-det-state {
 				pins = "gpio47";
 				function = "dp_hot";

-- 
2.42.0


