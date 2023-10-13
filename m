Return-Path: <devicetree+bounces-8459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE387C8404
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E137B1C20ABF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487E012B99;
	Fri, 13 Oct 2023 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I4yh/ItL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E6E125A0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:05:52 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B926BB7;
	Fri, 13 Oct 2023 04:05:49 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-538e8eca9c1so3380165a12.3;
        Fri, 13 Oct 2023 04:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697195148; x=1697799948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a7L8MMvBwWWMkmtOWzuzh7LjBvyg7mEIleh0lWEV/ZQ=;
        b=I4yh/ItL2K9wUsVYFaRiUXuEI6WV8osmJuQ43cttsap+2wlHeXnOP24enX+hPqp5YE
         fc0isGniDN/hZrHFvhdow16SVtKPwCtJoKbKBt2+dyG81u+EjV3i9M6FodK71Q0/vAIW
         JrLFjWx3dEirWJndIgTqko+CE9GzS0svg04NltAKdOUVBf7dMdTCd3Vk1rVhGGG13LR+
         kC23ClGRpHl7Gv155v6+7VMcElB+bBqdlUnv8WlaraCoEPHHqBuYhgO/fhjlKl2m7NYj
         kM8Dijw2CDfJJzwiY5FfcY+xCvCCJUxKyJymAAi1VjSBerednI139xQLHOamfdRjNzpg
         BTgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697195148; x=1697799948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a7L8MMvBwWWMkmtOWzuzh7LjBvyg7mEIleh0lWEV/ZQ=;
        b=XHWIcm7kjhTOVBnDtgyPrFyvZ4hDSPGf2z03p2c5RsCO8+wR4x/M6ROSdcRLdCbGFr
         eYHu8O4A7Rr1Kr76PDkkg6tynock/WzS6UW4Up4obrFT5N7/Vbm/J8azzwXwMjchtZk2
         SQpb3bMl2XiO/wxrf69cudGULDJ3N2THe0V8597ol2mz7ocJRs5AHZtr4kVSQTiZ2eWd
         OVOvXoVEqvSn+aWqDeZfHz3QxWVzDrrXLDU75sBXHaPJuqs8p27i4kOXZAfNnK/eMUlS
         NQKDPK8Ey9OehLRw1HHHeq21jLUwwrfkqU5nskzTHmxT8QU1oxDN1jQYaaJfUKUQhE9t
         Er3Q==
X-Gm-Message-State: AOJu0YzY/+EaUyiFUaW+05HEO/xKzIzelG+gr3UrijJrmYDDPe0ZAwSZ
	en6wJw247VbRJ0lFXlv5FC64L6TsL3nGsQLU
X-Google-Smtp-Source: AGHT+IHwESd3l/McN4iPb389kXzHruwSvPA8HvNROND749BipMU3/E/9clSdEVl6bvdo4P6a/9jgrw==
X-Received: by 2002:aa7:cfd2:0:b0:534:6668:605b with SMTP id r18-20020aa7cfd2000000b005346668605bmr22340713edy.22.1697195147884;
        Fri, 13 Oct 2023 04:05:47 -0700 (PDT)
Received: from arch-laptop.tail46804.ts.net (net-93-65-126-31.cust.vodafonedsl.it. [93.65.126.31])
        by smtp.googlemail.com with ESMTPSA id i34-20020a0564020f2200b0053dec545c8fsm2884566eda.3.2023.10.13.04.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 04:05:47 -0700 (PDT)
From: Gianluca Boiano <morf3089@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: morf3089@gmail.com
Subject: [PATCH] arm64: dts: qcom: msm8953: add SPI interfaces
Date: Fri, 13 Oct 2023 13:05:31 +0200
Message-ID: <20231013110531.84140-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This change add spi_3, spi_5 and spi_6 interfaces to
MSM8953 devices.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 102 ++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index e7de7632669a..cdfc38e562b6 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -726,6 +726,48 @@ i2c_8_sleep: i2c-8-sleep-state {
 				bias-disable;
 			};
 
+			spi_3_default: spi-3-default-state {
+				pins = "gpio10", "gpio11";
+				function = "blsp_spi3";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			spi_3_sleep: spi-3-sleep-state {
+				pins = "gpio10", "gpio11";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			spi_5_default: spi-5-default-state {
+				pins = "gpio18", "gpio19";
+				function = "blsp_spi5";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			spi_5_sleep: spi-5-sleep-state {
+				pins = "gpio18", "gpio19";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			spi_6_default: spi-6-default-state {
+				pins = "gpio22", "gpio23";
+				function = "blsp_spi6";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			spi_6_sleep: spi-6-sleep-state {
+				pins = "gpio22", "gpio23";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			wcnss_pin_a: wcnss-active-state {
 
 				wcss-wlan2-pins {
@@ -1360,6 +1402,26 @@ i2c_3: i2c@78b7000 {
 			status = "disabled";
 		};
 
+		spi_3: spi@78b7000 {
+			compatible = "qcom,spi-qup-v2.2.1";
+			reg = <0x078b7000 0x600>;
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "iface";
+			clocks = <&gcc GCC_BLSP1_QUP3_I2C_APPS_CLK>,
+				 <&gcc GCC_BLSP1_AHB_CLK>;
+			dmas = <&blsp1_dma 8>, <&blsp1_dma 9>;
+			dma-names = "tx", "rx";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&spi_3_default>;
+			pinctrl-1 = <&spi_3_sleep>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		i2c_4: i2c@78b8000 {
 			compatible = "qcom,i2c-qup-v2.2.1";
 			reg = <0x078b8000 0x600>;
@@ -1413,6 +1475,26 @@ i2c_5: i2c@7af5000 {
 			status = "disabled";
 		};
 
+		spi_5: spi@7af5000 {
+			compatible = "qcom,spi-qup-v2.2.1";
+			reg = <0x07af5000 0x600>;
+			interrupts = <GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "iface";
+			clocks = <&gcc GCC_BLSP2_QUP1_I2C_APPS_CLK>,
+				<&gcc GCC_BLSP2_AHB_CLK>;
+			dmas = <&blsp2_dma 4>, <&blsp2_dma 5>;
+			dma-names = "tx", "rx";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&spi_5_default>;
+			pinctrl-1 = <&spi_5_sleep>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		i2c_6: i2c@7af6000 {
 			compatible = "qcom,i2c-qup-v2.2.1";
 			reg = <0x07af6000 0x600>;
@@ -1433,6 +1515,26 @@ i2c_6: i2c@7af6000 {
 			status = "disabled";
 		};
 
+		spi_6: spi@7af6000 {
+			compatible = "qcom,spi-qup-v2.2.1";
+			reg = <0x07af6000 0x600>;
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "core", "iface";
+			clocks = <&gcc GCC_BLSP2_QUP2_I2C_APPS_CLK>,
+				 <&gcc GCC_BLSP2_AHB_CLK>;
+			dmas = <&blsp2_dma 6>, <&blsp2_dma 7>;
+			dma-names = "tx", "rx";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&spi_6_default>;
+			pinctrl-1 = <&spi_6_sleep>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		i2c_7: i2c@7af7000 {
 			compatible = "qcom,i2c-qup-v2.2.1";
 			reg = <0x07af7000 0x600>;
-- 
2.42.0


