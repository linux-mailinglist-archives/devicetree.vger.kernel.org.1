Return-Path: <devicetree+bounces-72473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDCA8FBE35
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69EA72841B3
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 21:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9EDB14D6F5;
	Tue,  4 Jun 2024 21:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CGO2u1dw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E30914D28F
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 21:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717537362; cv=none; b=irIj11uSq9Pb0YjvNGwCrFb8GZ/YSqcqdKLsObHeWnWiskCF7dzNFGLNL1ya8oONovd0FKJaUpWWtJyt3gSbMcxiL7OLMV40dwlmbbdCEGGiiVDI3fJfvcog9cBoWNiP6Yi7/PgpOhercKL2ipI36n5Fvc2yanrfkE0spS2VWmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717537362; c=relaxed/simple;
	bh=xAp5WZlsM/Hkn85zeDB+4PP5CKeQf8054xAI8p5QoAA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VYiyZGUgovMHqjKQV0/A5z1W/Ew2TfawNrpep7qTALmftpsWEWw3Pz+LYWrm0Mr8SVyn9LCEE0dn7sdgQRIjBY3QjRMdvuDGGOMu7mbLhNzUR/ji0BJjr0wZTX007PlEWluwPYwY1z6/teib1fHD1QnDgi4fB+PQnDckmPE+f4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CGO2u1dw; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1f4a52b9413so47935995ad.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 14:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717537359; x=1718142159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdCQAM7e5bMqyS7h48dH9IJa2aicn6jIduH8LQ8/gwo=;
        b=CGO2u1dwmaZUGko3ucGmc0K7ubTApQaDL0g2vTPPGgiHuYDtvWKBB3KURl6oWY+em8
         6hUkCKK5sxNczqvoui43bqougXZuec9UBuQmZiAc9sVDj2Fiz7+R+KEJke96vwLC/vMs
         hsWdXuFI/uAPtk3bGUKtjvGRkqXJTGB2XjKfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717537359; x=1718142159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UdCQAM7e5bMqyS7h48dH9IJa2aicn6jIduH8LQ8/gwo=;
        b=LbseyJeOqkWOY3AazEVRkokXqAwEQMk6G/PEQcdjPHNzcAoESY6Cp8RVdQPL7XMpUx
         G+b1bT9ahq6AwLCykZrXwfDt5wq8wkfpJDO1VHeD5ISmr/zK/7S4q6sIGa1N2wbQgu5G
         bgFzmxncBcQOeQIurjNDOtiK7PkKAVuqkVingIMQGep0jnR4jfDMvotDSEDo4aBx16Ng
         g1mkzDdg+OrG8kKc7UBHsqtL/yhwdh2pOore1jO5MMjWbHhSE+DnAs2gC3gBjKOVkfm+
         Q/Oydck8XRnF15CzmknyNBxniX5mT7Wse6/c8lBeFfZi4Ojjt0lMl+sWCPuqjH9Crk49
         32bw==
X-Forwarded-Encrypted: i=1; AJvYcCWgvagzEWv8VB9/MZFTs5PM07n2nV96hF2GG/b9RmqGgQKU5XiEWuQPvr1QlYDiFgUp7DbCOX25i0mo3lMOxAJcB3jCFRNibf4jfQ==
X-Gm-Message-State: AOJu0Yy6dvtHsIndyYR94is8g3z2V4sUqmSPNJjMvEiZP1KyFkejc5T5
	Mai1IWmrqEyRHznwVvXVa2XW5JYcH58SIKWBKwgDaHuH4F55qeDViDgKqKtubQ==
X-Google-Smtp-Source: AGHT+IHACVwMOBPFrf+eB5iYX0aACOfsfuqCORLFufTgaSTpclbakbGsz+yHvN2MJs5N4qePFzU54w==
X-Received: by 2002:a17:902:ec91:b0:1f6:8290:175a with SMTP id d9443c01a7336-1f6a5a1a254mr8417235ad.40.1717537359406;
        Tue, 04 Jun 2024 14:42:39 -0700 (PDT)
Received: from localhost (132.197.125.34.bc.googleusercontent.com. [34.125.197.132])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f63240134fsm88399035ad.243.2024.06.04.14.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 14:42:39 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	patches@lists.linux.dev,
	cros-qcom-dts-watchers@chromium.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sc7180-trogdor: Make clamshell/detachable fragments
Date: Tue,  4 Jun 2024 14:42:32 -0700
Message-ID: <20240604214233.3551692-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
In-Reply-To: <20240604214233.3551692-1-swboyd@chromium.org>
References: <20240604214233.3551692-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At a high-level, detachable Trogdors (sometimes known as Strongbads)
don't have a cros_ec keyboard, while all clamshell Trogdors (only known
as Trogdors) always have a cros_ec keyboard. Looking closer though, all
clamshells have a USB type-A connector and a hardwired USB camera. And
all detachables replace the USB camera with a MIPI based one and swap
the USB type-a connector for the detachable keyboard pogo pins.

Split the detachable and clamshell bits into different files so we can
describe these differences in one place instead of in each board that
includes sc7180-trogdor.dtsi. For now this is just the keyboard part,
but eventually this will include the type-a port and the pogo pins.

Cc: <cros-qcom-dts-watchers@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../boot/dts/qcom/sc7180-trogdor-clamshell.dtsi     |  9 +++++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi |  5 +----
 .../boot/dts/qcom/sc7180-trogdor-detachable.dtsi    | 13 +++++++++++++
 .../boot/dts/qcom/sc7180-trogdor-homestar.dtsi      |  9 +--------
 .../boot/dts/qcom/sc7180-trogdor-kingoftown.dts     |  2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi  |  3 +--
 .../arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  3 +--
 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi |  3 +--
 .../boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi |  7 +------
 arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts      |  3 +--
 .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi   |  5 +----
 11 files changed, 31 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
new file mode 100644
index 000000000000..d91533b80e76
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Trogdor dts fragment for clamshells
+ *
+ * Copyright 2024 Google LLC.
+ */
+
+/* This file must be included after sc7180-trogdor.dtsi to modify cros_ec */
+#include <arm/cros-ec-keyboard.dtsi>
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
index 7765c8f64905..6e6a4643c4dd 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
@@ -7,6 +7,7 @@
 
 #include "sc7180-trogdor.dtsi"
 #include "sc7180-trogdor-ti-sn65dsi86.dtsi"
+#include "sc7180-trogdor-detachable.dtsi"
 
 /* Deleted nodes from sc7180-trogdor.dtsi */
 
@@ -80,10 +81,6 @@ &camcc {
 };
 
 &cros_ec {
-	keyboard-controller {
-		compatible = "google,cros-ec-keyb-switches";
-	};
-
 	cros_ec_proximity: proximity {
 		compatible = "google,cros-ec-mkbp-proximity";
 		label = "proximity-wifi";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi
new file mode 100644
index 000000000000..7c5d8a57ef7f
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Trogdor dts fragment for detachables
+ *
+ * Copyright 2024 Google LLC.
+ */
+
+/* This file must be included after sc7180-trogdor.dtsi to modify cros_ec */
+&cros_ec {
+	keyboard-controller {
+		compatible = "google,cros-ec-keyb-switches";
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
index 2ba3bbf3b9ad..8846a7c4e636 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
@@ -5,9 +5,8 @@
  * Copyright 2021 Google LLC.
  */
 
-/* This file must be included after sc7180-trogdor.dtsi */
-
 #include "sc7180-trogdor-rt5682i-sku.dtsi"
+#include "sc7180-trogdor-detachable.dtsi"
 
 / {
 	/* BOARD-SPECIFIC TOP LEVEL NODES */
@@ -135,12 +134,6 @@ &camcc {
 	status = "okay";
 };
 
-&cros_ec {
-	keyboard-controller {
-		compatible = "google,cros-ec-keyb-switches";
-	};
-};
-
 &panel {
 	compatible = "samsung,atna33xc20";
 	enable-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dts
index d6db7d83adcf..655bea928e52 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dts
@@ -9,7 +9,7 @@
 
 #include "sc7180-trogdor.dtsi"
 #include "sc7180-trogdor-parade-ps8640.dtsi"
-#include <arm/cros-ec-keyboard.dtsi>
+#include "sc7180-trogdor-clamshell.dtsi"
 #include "sc7180-trogdor-lte-sku.dtsi"
 #include "sc7180-trogdor-rt5682s-sku.dtsi"
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
index e9f213d27711..c3fd6760de7a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
@@ -5,8 +5,7 @@
  * Copyright 2020 Google LLC.
  */
 
-/* This file must be included after sc7180-trogdor.dtsi */
-#include <arm/cros-ec-keyboard.dtsi>
+#include "sc7180-trogdor-clamshell.dtsi"
 
 &ap_sar_sensor {
 	semtech,cs0-ground;
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
index 73aa75621721..cc2c5610a279 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
@@ -5,8 +5,7 @@
  * Copyright 2021 Google LLC.
  */
 
-/* This file must be included after sc7180-trogdor.dtsi */
-#include <arm/cros-ec-keyboard.dtsi>
+#include "sc7180-trogdor-clamshell.dtsi"
 
 &ap_sar_sensor {
 	compatible = "semtech,sx9324";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
index 067813f5f437..8214a61276fe 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
@@ -6,8 +6,7 @@
  */
 
 #include "sc7180-trogdor.dtsi"
-/* Must come after sc7180-trogdor.dtsi to modify cros_ec */
-#include <arm/cros-ec-keyboard.dtsi>
+#include "sc7180-trogdor-clamshell.dtsi"
 #include "sc7180-trogdor-rt5682i-sku.dtsi"
 #include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
index b7de9fd3fa20..00229b1515e6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
@@ -9,6 +9,7 @@
 
 #include "sc7180-trogdor.dtsi"
 #include "sc7180-trogdor-rt5682i-sku.dtsi"
+#include "sc7180-trogdor-detachable.dtsi"
 
 / {
 	ppvar_lcd: ppvar-lcd-regulator {
@@ -44,12 +45,6 @@ &camcc {
 	status = "okay";
 };
 
-&cros_ec {
-	keyboard-controller {
-		compatible = "google,cros-ec-keyb-switches";
-	};
-};
-
 &gpio_keys {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
index c9667751a990..d393a2712ce6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
@@ -8,8 +8,7 @@
 /dts-v1/;
 
 #include "sc7180-trogdor.dtsi"
-/* Must come after sc7180-trogdor.dtsi to modify cros_ec */
-#include <arm/cros-ec-keyboard.dtsi>
+#include "sc7180-trogdor-clamshell.dtsi"
 #include "sc7180-trogdor-rt5682i-sku.dtsi"
 #include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
index 305ad127246e..1d9fc61b6550 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7180-trogdor.dtsi"
+#include "sc7180-trogdor-detachable.dtsi"
 
 / {
 	avdd_lcd: avdd-lcd-regulator {
@@ -104,10 +105,6 @@ &cros_ec {
 	base_detection: cbas {
 		compatible = "google,cros-cbas";
 	};
-
-	keyboard-controller {
-		compatible = "google,cros-ec-keyb-switches";
-	};
 };
 
 &i2c4 {
-- 
https://chromeos.dev


