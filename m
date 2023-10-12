Return-Path: <devicetree+bounces-8135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3B57C6C54
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EDA51C21186
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F21241FB;
	Thu, 12 Oct 2023 11:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yimFPGgi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28843249EB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:31:13 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E677BDC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:08 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4064867903cso10158135e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697110267; x=1697715067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UMxsI9C892QB/5ypNg5ydobV/DCT9EPGb6aR0NOzTJE=;
        b=yimFPGgiQtI4wYna1+L395UCH+sKm2dyJGqp6A0k/2CShnYd/x2xBeDxQlJqNznE6J
         e/H+K7Yi35TVDcqEXvrYZjEi71ILnr5lx+3skiZ16fhVRgTV2kZHxIir5WHXHqmC0vcF
         NC1N88ZlY7N7JVyETEjM8ox6F8v7VH4/5G5QVVaEOKp0COGJA13QtLsC/bj1uwliwxbK
         w0B3S4M7DR4GPfe8yjLj4sd1KIaBjkbQWOx4wjmtlFS/Aqf3yMBf5HTAKSedVXjiYIE/
         ohdvr2YACdjYO1WZIhTiM/UN9TBJzNqREw7OnQWhWPoFyXiwglMgxtKVwbvHiNoF35a8
         oLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697110267; x=1697715067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UMxsI9C892QB/5ypNg5ydobV/DCT9EPGb6aR0NOzTJE=;
        b=KI0U/qEWYuco3SpXMMpTxbyJDxOHrJhHGtmOHcHqWHuL9UCImi6yRbnZwnTN/Rig0r
         EpZ6KFFchlSAIOK6wqcc5PVHw6ozuLp0BRGWwJp7f7S/YeWrANSZ1tT9pUfynA/8b2sw
         kDcRpNtaDAUSBdZ90hmCgf4MuScTuVywAUWkogjKB/yxhXWuf3QtLSN01hn6C9Gutg7U
         M7pEXgO9mGJKCOLBTCv72XQhJ/nelJEG+BfgMkSSW41Tv4gHlzWs7vM79ZS6l10tqKxb
         3tPvYrn9y8KmTy3dbZKzxP9qms4Pi0Vhr1dSa5TnNUWsGrs/VxfUmmFJWy58EWhcfiaI
         IIQQ==
X-Gm-Message-State: AOJu0YwyIXBguoy8lDC4X01pNKf7aHBm5xttulIodxi0KvWAAKmYtBl/
	H7o7VWMrA0X/RrEsFYOCWehzpA==
X-Google-Smtp-Source: AGHT+IHlNiWcy47P4Ro9FtJSsrYwVX525yKq9IABdt5CbdGqZVue8rTtcSzDxq9u5PuZVEcqqEnu9Q==
X-Received: by 2002:a05:6000:1b02:b0:31a:dd55:e69c with SMTP id f2-20020a0560001b0200b0031add55e69cmr20163944wrz.60.1697110267319;
        Thu, 12 Oct 2023 04:31:07 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id l14-20020a5d480e000000b0031c5e9c2ed7sm18244891wrq.92.2023.10.12.04.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 04:31:06 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v4 2/4] arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
Date: Thu, 12 Oct 2023 12:30:58 +0100
Message-Id: <20231012113100.3656480-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
References: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

sc8280xp has four Camera Control Interface (CCI) blocks which pinout to
two I2C master controllers for each CCI.

The CCI I2C pins are not muxed so we define them in the dtsi.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 324 +++++++++++++++++++++++++
 1 file changed, 324 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index fafea0f34fd9..22e9671af0e9 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3451,6 +3451,170 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		cci0: cci@ac4a000 {
+			compatible = "qcom,sm8250-cci", "qcom,msm8996-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0x0ac4a000 0 0x1000>;
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CCI_0_CLK>,
+				 <&camcc CAMCC_CCI_0_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+
+			pinctrl-0 = <&cci0_default>;
+			pinctrl-1 = <&cci0_sleep>;
+			pinctrl-names = "default", "sleep";
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
+			compatible = "qcom,sm8250-cci", "qcom,msm8996-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0x0ac4b000 0 0x1000>;
+			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CCI_1_CLK>,
+				 <&camcc CAMCC_CCI_1_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+
+			pinctrl-0 = <&cci1_default>;
+			pinctrl-1 = <&cci1_sleep>;
+			pinctrl-names = "default", "sleep";
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
+		cci2: cci@ac4c000 {
+			compatible = "qcom,sm8250-cci", "qcom,msm8996-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0x0ac4c000 0 0x1000>;
+			interrupts = <GIC_SPI 651 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CCI_2_CLK>,
+				 <&camcc CAMCC_CCI_2_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+
+			pinctrl-0 = <&cci2_default>;
+			pinctrl-1 = <&cci2_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			status = "disabled";
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
+		cci3: cci@ac4d000 {
+			compatible = "qcom,sm8250-cci", "qcom,msm8996-cci";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			reg = <0 0x0ac4d000 0 0x1000>;
+			interrupts = <GIC_SPI 650 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&camcc TITAN_TOP_GDSC>;
+
+			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
+				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
+				 <&camcc CAMCC_CPAS_AHB_CLK>,
+				 <&camcc CAMCC_CCI_3_CLK>,
+				 <&camcc CAMCC_CCI_3_CLK_SRC>;
+			clock-names = "camnoc_axi",
+				      "slow_ahb_src",
+				      "cpas_ahb",
+				      "cci",
+				      "cci_src";
+
+			pinctrl-0 = <&cci3_default>;
+			pinctrl-1 = <&cci3_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			status = "disabled";
+
+			cci3_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci3_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,sc8280xp-camcc";
 			reg = <0 0x0ad00000 0 0x20000>;
@@ -4075,6 +4239,166 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			gpio-ranges = <&tlmm 0 0 230>;
 			wakeup-parent = <&pdc>;
+
+			cci0_default: cci0-default-state {
+				cci0_i2c0_default: cci0-i2c0-default-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio113", "gpio114";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci0_i2c1_default: cci0-i2c1-default-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio115", "gpio116";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci0_sleep: cci0-sleep-state {
+				cci0_i2c0_sleep: cci0-i2c0-sleep-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio113", "gpio114";
+					function = "cci_i2c";
+
+					drive-strength = <2>; /* 2 mA */
+					bias-pull-down;
+				};
+
+				cci0_i2c1_sleep: cci0-i2c1-sleep-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio115", "gpio116";
+					function = "cci_i2c";
+
+					drive-strength = <2>; /* 2 mA */
+					bias-pull-down;
+				};
+			};
+
+			cci1_default: cci1-default-state {
+				cci1_i2c0_default: cci1-i2c0-default-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio10","gpio11";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci1_i2c1_default: cci1-i2c1-default-pins {
+					/* cci_i2c_sda3, cci_i2c_scl3 */
+					pins = "gpio123","gpio124";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci1_sleep: cci1-sleep-state {
+				cci1_i2c0_sleep: cci1-i2c0-sleep-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio10","gpio11";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci1_i2c1_sleep: cci1-i2c1-sleep-pins {
+					/* cci_i2c_sda3, cci_i2c_scl3 */
+					pins = "gpio123","gpio124";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci2_default: cci2-default-state {
+				cci2_i2c0_default: cci2-i2c0-default-pins {
+					/* cci_i2c_sda4, cci_i2c_scl4 */
+					pins = "gpio117","gpio118";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci2_i2c1_default: cci2-i2c1-default-pins {
+					/* cci_i2c_sda5, cci_i2c_scl5 */
+					pins = "gpio12","gpio13";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci2_sleep: cci2-sleep-state {
+				cci2_i2c0_sleep: cci2-i2c0-sleep-pins {
+					/* cci_i2c_sda4, cci_i2c_scl4 */
+					pins = "gpio117","gpio118";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci2_i2c1_sleep: cci2-i2c1-sleep-pins {
+					/* cci_i2c_sda5, cci_i2c_scl5 */
+					pins = "gpio12","gpio13";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci3_default: cci3-default-state {
+				cci3_i2c0_default: cci3-i2c0-default-pins {
+					/* cci_i2c_sda6, cci_i2c_scl6 */
+					pins = "gpio145","gpio146";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci3_i2c1_default: cci3-i2c1-default-pins {
+					/* cci_i2c_sda7, cci_i2c_scl7 */
+					pins = "gpio164","gpio165";
+					function = "cci_i2c";
+
+					bias-pull-up;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
+
+			cci3_sleep: cci3-sleep-state {
+				cci3_i2c0_sleep: cci3-i2c0-sleep-pins {
+					/* cci_i2c_sda6, cci_i2c_scl6 */
+					pins = "gpio145","gpio146";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+
+				cci3_i2c1_sleep: cci3-i2c1-sleep-pins {
+					/* cci_i2c_sda7, cci_i2c_scl7 */
+					pins = "gpio164","gpio165";
+					function = "cci_i2c";
+
+					bias-pull-down;
+					drive-strength = <2>; /* 2 mA */
+				};
+			};
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.40.1


