Return-Path: <devicetree+bounces-42195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFA1856BFA
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 19:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02A1A28E9EE
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 18:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF22A139578;
	Thu, 15 Feb 2024 18:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="NfEpazB2"
X-Original-To: devicetree@vger.kernel.org
Received: from out-175.mta0.migadu.com (out-175.mta0.migadu.com [91.218.175.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7C51386BF
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 18:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708020216; cv=none; b=Y8QjAX7Nqp2nuhs68tXuCTVRvpw5ShgTPMM5WoDEGOL4Nc230q3qBZe1fxypHtBui9aolwQx/JQEdGLLVt5w+HJiggvrzT/NCFNjNelbQTsiUltme5wBU1vj6rdPtV9+FNV4IuYfq8AtvVhHT4GlFiAy1SSZynEJtaM1vEQ8Qk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708020216; c=relaxed/simple;
	bh=8sWG4bfraGGDKYB36OyZq2qLHIGfdaMP7dvZD4Qq53g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YAZCT+ZHyzSfUDbxlgw94LBLbWEp7Bo4uJ9d9yggLhEyBmFcYEN7bBnVcl8q6toRLmFDDMja5Mb3T01OA9CSKznB3tmocxmqFfDm7SuP+NuIEa0OcT0QLJ5QziT2144bDpv+HLJKbCFu+tITZV7qQQOw7DfkLDGNWm9zSoc4mqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=NfEpazB2; arc=none smtp.client-ip=91.218.175.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1708020213;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rAtam4EIfXigpEqgMeE23pOshhbAC6AmZJF6OjqvVKY=;
	b=NfEpazB2jSXUWjLXaYkE21LrtEjDJY9Pw5Fg1drCZoOFEkrb+k3C9JT+UDvM1zk2uZf0e1
	vxNyxYn+H5wV4OZbd5B4vpySG6n6lr6nG3zMRmus83N5IsN7XPSHSCcetRciABXl0luHjm
	y779t0Bv0rptyfagtVuUBPwSh67ueX0eOl5bT65R4cV1nU4yqCt9tDQLN27G5nrpuS1cEJ
	NfcBZB8pZ0Mzfn+v+wsXGTQPtrEYO83t47d2D4KMyRxzasAWjySrkG9QnitKeW+8SYtfsJ
	xwArQ6wHrAgtTyQXSrPjL6QoU2NY5BK+Nd2oW0KvLl2ndKblbFDTsNjAwILdsg==
From: Stefan Hansson <newbyte@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Stefan Hansson <newbyte@postmarketos.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 3/4] ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 10.1 LTE (SM-T535)
Date: Thu, 15 Feb 2024 19:02:01 +0100
Message-ID: <20240215180322.99089-4-newbyte@postmarketos.org>
In-Reply-To: <20240215180322.99089-1-newbyte@postmarketos.org>
References: <20240215180322.99089-1-newbyte@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add a device tree for the Samsung Galaxy Tab 4 10.1 (SM-T535) LTE tablet
based on the MSM8926 platform.

The common dtsi is also modified to describe the widest constraints,
which required modifications to the matisse-wifi dts.

Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/Makefile               |  1 +
 .../qcom-apq8026-samsung-matisse-wifi.dts     |  8 ++++
 .../qcom-msm8226-samsung-matisse-common.dtsi  |  4 +-
 .../qcom/qcom-msm8926-samsung-matisselte.dts  | 37 +++++++++++++++++++
 4 files changed, 48 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts

diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
index 9cc1e14e6cd0..6478a39b3be5 100644
--- a/arch/arm/boot/dts/qcom/Makefile
+++ b/arch/arm/boot/dts/qcom/Makefile
@@ -36,6 +36,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-msm8926-microsoft-superman-lte.dtb \
 	qcom-msm8926-microsoft-tesla.dtb \
 	qcom-msm8926-motorola-peregrine.dtb \
+	qcom-msm8926-samsung-matisselte.dtb \
 	qcom-msm8960-cdp.dtb \
 	qcom-msm8960-samsung-expressatt.dtb \
 	qcom-msm8974-lge-nexus5-hammerhead.dtb \
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
index ac8aef5f9d09..da3be658e822 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
@@ -73,6 +73,14 @@ touchscreen@4a {
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
index 6d116f9b443b..24ed2ba85d62 100644
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
index 000000000000..d0e1bc39f8ef
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
@@ -0,0 +1,37 @@
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
+&tlmm {
+	tsp_en1_default_state: tsp-en1-default-state {
+		pins = "gpio32";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+};
-- 
2.43.0


