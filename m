Return-Path: <devicetree+bounces-6460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A487BB729
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:02:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7221E2822A4
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B414C1CAB8;
	Fri,  6 Oct 2023 12:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtuCwRf1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AFC1BDCC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:02:13 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA89FFE
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:02:09 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-307d58b3efbso1811145f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696593728; x=1697198528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mI3EfqlZL7K97337ctJJOuS4cYd3hi4ym6IT0b8ZdA=;
        b=TtuCwRf1cZZdYk/q4upzCn9jY0sw428SRuUnXhryUGy4gGyClA5PgUzEOdw907Rb0D
         MAboM6pExJnxPTLqP/09S2QuYZuJyMmAwKNAnU6XY67wC1qOLLmSVyFSyMevgMw5SzU0
         H7kleBzQhGCUdbXlWZy43idXR94+A4gZ38Xt+lgIMl/emAOUNpPoM8RhJBb2EXRNT5XN
         ImS20XUE7umz5zNFsG0AAKs8D3r3U86KIAmmec0m6J+J4F2rOrd0xucg8amJfNau6+lA
         3VHNFpPIRoQInOBgx95+BBN/C9F+E6td7v0pV7wYd8u9dqTvKXa3Wu7pGDa54HyjRoEk
         7xsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696593728; x=1697198528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mI3EfqlZL7K97337ctJJOuS4cYd3hi4ym6IT0b8ZdA=;
        b=D+oiub7Gk+OrvoCjd8HiCneFeW0WOivUq2h9hG3OK5wp00dfA8Dxavj8MYW3m8vL4S
         O07+JbvaxlU8yNIIi2NayyuH7fj6UKtp5rmyTtHa5quOfGDRku6WE+lScfhOcdNl27jc
         fxQQRkfX2SQZFx5n7t7/QVAoDbxOtJ39SI05Jq1p4k3aO1xVYZDDTaadiMHOmyAUJdR+
         p2zujxSe6DsYl5cSmBG1zzoQGvcFdNz5jErISjXymNIx03BpOKIRQTTvwVWD/9DYk8wF
         yzg4Wdf+nIYGDeGH2yK2WgKpkLZK6gFjgw/gOESdDi5tCiW+5GYE00HjpJ7O08RXUyjO
         rNEQ==
X-Gm-Message-State: AOJu0Yzt/vNaiTmj692pb8lddmdeyLXEYycCwDLaw2bI4aJ4ahUYwWlH
	6jnj1ujXI1AdbCi6lwrtd2ArPw==
X-Google-Smtp-Source: AGHT+IHpiVSaIUyx77n4wwkhm7yEiqzYfesrmw90Gcl7356+tpaf8/6+jUhH+16UzSaoeqFc4fgXnQ==
X-Received: by 2002:adf:ce0d:0:b0:320:932:80a0 with SMTP id p13-20020adfce0d000000b00320093280a0mr6560475wrn.54.1696593728066;
        Fri, 06 Oct 2023 05:02:08 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m8-20020a056000180800b00321773bb933sm1491061wrh.77.2023.10.06.05.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:02:07 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	loic.poulain@linaro.org,
	rfoss@kernel.org,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	todor.too@gmail.com,
	mchehab@kernel.org,
	bryan.odonoghue@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: qcom: sc8280xp: camss: Add CCI definitions
Date: Fri,  6 Oct 2023 13:01:57 +0100
Message-Id: <20231006120159.3413789-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
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
index fafea0f34fd9..199b112da295 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3451,6 +3451,170 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		cci0: cci@ac4a000 {
+			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
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
+			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
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
+			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
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
+			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
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


