Return-Path: <devicetree+bounces-12172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C417D838D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 637D3B21002
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDEB22E3EB;
	Thu, 26 Oct 2023 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="Ldvr55T9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0922D787
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:27:32 +0000 (UTC)
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [IPv6:2a01:4f8:a0:821d::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A73F31AC;
	Thu, 26 Oct 2023 06:27:30 -0700 (PDT)
From: Stefan Hansson <newbyte@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698326849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BfILS6m93DcwzWGRvafHxT0M9Q5/KXCYt1nkz0i+PRY=;
	b=Ldvr55T9+N8kFJuqadasoYvnhjJFxVJGMEG8+3Bll0bNt0XAYUeUNfKd0673IAW/X+kMr5
	YSTzkyhLl1IEcpU6bnDKcjqu7BsMwSeAgOAOd+apF6hIl9B4RRewpxAsssjKIyXNEyvafQ
	XdEJUoTsfRHesJn7KyBor4eiIDN2J+8=
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Stefan Hansson <newbyte@postmarketos.org>
Subject: [PATCH v4 3/4] ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 10.1 LTE (SM-T535)
Date: Thu, 26 Oct 2023 15:24:08 +0200
Message-ID: <20231026132521.38575-4-newbyte@postmarketos.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231026132521.38575-1-newbyte@postmarketos.org>
References: <20231026132521.38575-1-newbyte@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add a device tree for the Samsung Galaxy Tab 4 10.1 (SM-T535) LTE tablet
based on the MSM8926 platform.

The common dtsi is also modified to describe the widest constraints,
which required modifications to the matisse-wifi dts.

Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
---
 arch/arm/boot/dts/qcom/Makefile               |  1 +
 .../qcom-apq8026-samsung-matisse-wifi.dts     |  8 ++++
 .../qcom-msm8226-samsung-matisse-common.dtsi  |  4 +-
 .../qcom/qcom-msm8926-samsung-matisselte.dts  | 42 +++++++++++++++++++
 4 files changed, 53 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts

diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
index a3d293e40820..cab35eeb30f6 100644
--- a/arch/arm/boot/dts/qcom/Makefile
+++ b/arch/arm/boot/dts/qcom/Makefile
@@ -34,6 +34,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-msm8916-samsung-serranove.dtb \
 	qcom-msm8926-microsoft-superman-lte.dtb \
 	qcom-msm8926-microsoft-tesla.dtb \
+	qcom-msm8926-samsung-matisselte.dtb \
 	qcom-msm8960-cdp.dtb \
 	qcom-msm8960-samsung-expressatt.dtb \
 	qcom-msm8974-lge-nexus5-hammerhead.dtb \
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
index b0da51f67539..3be02bdbb919 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
@@ -66,6 +66,14 @@ touchscreen@4a {
 	};
 };
 
+&pm8226_l3 {
+	regulator-max-microvolt = <1337500>;
+};
+
+&pm8226_s4 {
+	regulator-max-microvolt = <1800000>;
+};
+
 &tlmm {
 	tsp_en1_default_state: tsp-en1-default-state {
 		pins = "gpio73";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
index ef98d88927ca..28317ce79e97 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
@@ -230,7 +230,7 @@ pm8226_s3: s3 {
 
 		pm8226_s4: s4 {
 			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
+			regulator-max-microvolt = <2200000>;
 		};
 
 		pm8226_s5: s5 {
@@ -250,7 +250,7 @@ pm8226_l2: l2 {
 
 		pm8226_l3: l3 {
 			regulator-min-microvolt = <750000>;
-			regulator-max-microvolt = <1337500>;
+			regulator-max-microvolt = <1350000>;
 			regulator-always-on;
 		};
 
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
new file mode 100644
index 000000000000..3e312f95c1fe
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2022, Matti Lehtimäki <matti.lehtimaki@gmail.com>
+ * Copyright (c) 2023, Stefan Hansson <newbyte@postmarketos.org>
+ */
+
+/dts-v1/;
+
+#include "qcom-msm8226-samsung-matisse-common.dtsi"
+
+/ {
+	model = "Samsung Galaxy Tab 4 10.1 LTE";
+	compatible = "samsung,matisselte", "qcom,msm8926", "qcom,msm8226";
+	chassis-type = "tablet";
+
+	reg_tsp_3p3v: regulator-tsp-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "tsp_3p3v";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&tsp_en1_default_state>;
+	};
+};
+
+&sdhc_2 {
+	/* SD card fails to probe with error -110 */
+	status = "disabled";
+};
+
+&tlmm {
+	tsp_en1_default_state: tsp-en1-default-state {
+		pins = "gpio32";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+};
-- 
2.41.0


