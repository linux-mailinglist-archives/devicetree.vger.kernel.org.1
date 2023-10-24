Return-Path: <devicetree+bounces-11441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C787D5CAA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 623221C20CC4
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBDFB3B2A2;
	Tue, 24 Oct 2023 20:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="Rxst1Wni"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A1A3AC05
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:55:22 +0000 (UTC)
X-Greylist: delayed 474 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Oct 2023 13:55:20 PDT
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [213.239.216.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A3E2610CE;
	Tue, 24 Oct 2023 13:55:20 -0700 (PDT)
From: Stefan Hansson <newbyte@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698180447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WftJlpZtFCnefMD8OenIbNEyH0eXljfkuOxB9Oej6aQ=;
	b=Rxst1WnimFjLSG7P0Z5cFri2f6nwirDv/8oQIEVZoZwAWmOuIOpOewTuLowKs+hYZaBX/P
	ZCkM44qUbboBg+e42niQ2x58EcVyb58TlMzLIsPs/kXKGOX3FZxGe14J5srceH5atIoyVz
	zzL+4R9DSRuTR1L8vFVCbFQyGz/A/fc=
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
Subject: [PATCH v2 3/4] ARM: dts: qcom: Add support for Samsung Galaxy Tab 4 10.1 LTE (SM-T535)
Date: Tue, 24 Oct 2023 22:33:44 +0200
Message-ID: <20231024204505.125813-4-newbyte@postmarketos.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024204505.125813-1-newbyte@postmarketos.org>
References: <20231024204505.125813-1-newbyte@postmarketos.org>
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

Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
---
 arch/arm/boot/dts/qcom/Makefile               |  1 +
 .../qcom/qcom-msm8926-samsung-matisselte.dts  | 36 +++++++++++++++++++
 2 files changed, 37 insertions(+)
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
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
new file mode 100644
index 000000000000..6e25b1a74ce5
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
@@ -0,0 +1,36 @@
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
+};
+
+&pm8226_l3 {
+	regulator-max-microvolt = <1350000>;
+};
+
+&pm8226_s4 {
+	regulator-max-microvolt = <2200000>;
+};
+
+&reg_tsp_3p3v {
+	gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
+};
+
+&sdhc_2 {
+	/* SD card fails to probe with error -110 */
+	status = "disabled";
+};
+
+&tsp_en1_default_state {
+	pins = "gpio32";
+};
-- 
2.41.0


