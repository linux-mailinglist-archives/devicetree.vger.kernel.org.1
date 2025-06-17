Return-Path: <devicetree+bounces-186534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE84ADC48D
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C4916B5D2
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366862957CE;
	Tue, 17 Jun 2025 08:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iqH7AOxL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9633529552A
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148421; cv=none; b=TQo5LgMMO3qvzMZRnc5lCb02VZH5SNtRgpQSIIGdJKZ8OfiQRhz3RG69K5TKlhNb4poL9DSVdVIs0e+7YCXPdx5yJmqtIoLxNnz9h9IgJUEgjLk5xEnpT8p3d9ZcaVE0S4Jk+G1nCDXba/FfUieHgPcffqvbC4LtNxxXmxlfrNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148421; c=relaxed/simple;
	bh=oBHXVLfPUMNfuLYLhWWLUgYUX4yzCGGF3ElVjcq/IvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tb68xLb0e/Vm5l8ZJN/Z0ob2UoK8Y3iN6iuCmyedTM6Q5yfALHpwUMUgLV9g2nJ9UkWixjHlrZ8yPbQtTGcf2sP20AqICbgRH+B8kx994+RwvuakhJImwXOODVw2SYEjiAZze1MamALTQvynzGjr7+/snNv4qkraFstXJ4yboSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iqH7AOxL; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-236192f8770so37433895ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750148419; x=1750753219; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLfwvnKqf7flG1w1FJwQLt+8yXkZ/9IUG75s/1+ddU0=;
        b=iqH7AOxL7rK9x2UR5zCInQMw8iDB9vPxWOHkjgqvZ5EQmEC5bsr5V87wRSaENmpvXA
         kN2sBl5wNb313noKZKTtFPTVmzdmLoY+xRUS3/3NIxBTbqa3qhB3Efte7Vv6hbLNW8O+
         VZi12NS5YGlKwMXnW3j/koBJ0wEJIuIeARJ6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148419; x=1750753219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLfwvnKqf7flG1w1FJwQLt+8yXkZ/9IUG75s/1+ddU0=;
        b=WASiPP3NbWFkvMHG8uBELDECrB/kNaNa0z5d496qTIQDq+LV9IqOZTpYfF8S5o6Knv
         i8znsfyA8zWzWinMFZknI6yJOWy1gqPqmXYP6io83yHVhK0qfNc2rM2F28P3KZd3z0wi
         QD+Ya8ZCzbpLox+lAcR/s0zUfky9gHUPAUGxCQ/hdGKJZIQkqTYplJQuzS4cTNVqzEQN
         wPDO8Dy1jPX0GhMWAkF2h03zhEcIYBKPmEQQNoZKAMWMVxeDW8ojppkM+E3KjCOLCEyp
         c2Ft9gwIDZdc6Ad1a4FzAs3QA9gQpHnIdaD1ZRfLq8EFjTZzPOxaTwSn7ucCY+ChsrY/
         nbLw==
X-Forwarded-Encrypted: i=1; AJvYcCUEd1ufBBaBCnQCMCWNtXoOOtJAEjX/7KTT4NXy0v1Lg3dwDqpAw+2fkanwhn2FeYB3pBRgwjrgZ4p7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd1c6ghSPG4vEwGSDz449evbEA8rJly1uRaL228cBt4A32R4Qw
	9FEcTtGp5Pdh3/tyQEo/6gKZsT8NJ2b1pZIBg5SpS0JHZoiRnuFIjjLcyhUPG+lLoQ==
X-Gm-Gg: ASbGnct/MYzO8XzsLrgCzHNXNwXq2oCl4is9u2sO8Wg6iGOHzFDO1949YfotgyqVzAc
	X0tsQpUVIax4TKLYpbXzvC0X5A3/u0W2RSbmZwgHIxKb0IQzdklLnIlvdqfts/7iY+pb0lvKlFd
	cemFzptlzvT4B0LKgyXOHylHwVaABxf5tYYU89aLFAePIaFUhScq7gCcjqozoGE5eBgKLhKC1Xd
	5K+gK/ZZQTroMSg7aYG6QOR+A4Un8t+3yxr+Y9aRbT4F1/bfTtENh+ngCywOpW5JWvO3AdN99/P
	unRupHqyqeYb6K2rap7DjWnMwfIMrXbqpS0tE9RUu86ZzKXh4mvA7tdbeoodyprMC5/CAPdy3Ad
	gF9/E
X-Google-Smtp-Source: AGHT+IEdEae9jR3M9Ile50GhlK5a+mZddJwAjCXfQi04qoA/3oENN3QsRc5nWKd11gVEcOZh5+alGQ==
X-Received: by 2002:a17:902:d4d0:b0:236:15b7:62e3 with SMTP id d9443c01a7336-2366ae00e3fmr181507135ad.9.1750148418807;
        Tue, 17 Jun 2025 01:20:18 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:24a1:2596:1651:13d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781f7sm74598885ad.110.2025.06.17.01.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:20:18 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-input@vger.kernel.org,
	stable+noautosel@kernel.org
Subject: [PATCH v3 4/6] arm64: dts: mediatek: mt8186-steelix: Mark second source components for probing
Date: Tue, 17 Jun 2025 16:20:01 +0800
Message-ID: <20250617082004.1653492-5-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.692.g299adb8693-goog
In-Reply-To: <20250617082004.1653492-1-wenst@chromium.org>
References: <20250617082004.1653492-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Steelix design has two possible trackpad component sources. Currently
they are all marked as available, along with having workarounds for
shared pinctrl muxing and GPIOs.

Instead, mark them all as "fail-needs-probe" and have the implementation
try to probe which one is present.

Also remove the shared resource workaround by moving the pinctrl entry
for the trackpad interrupt line back into the individual trackpad nodes.

Cc: stable+noautosel@kernel.org # Needs accompanying new driver to work
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8186-corsola-steelix.dtsi      |  7 +++++++
 .../mediatek/mt8186-corsola-tentacool-sku327683.dts    |  2 ++
 .../mediatek/mt8186-corsola-tentacruel-sku262148.dts   |  2 ++
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi       | 10 ++++------
 4 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
index e74e886a00cb..822a177e7c19 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
@@ -123,8 +123,11 @@ trackpad@2c {
 		reg = <0x2c>;
 		hid-descr-addr = <0x20>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
+		status = "fail-needs-probe";
 	};
 };
 
@@ -197,3 +200,7 @@ pins-vreg-en {
 		};
 	};
 };
+
+&trackpad {
+	status = "fail-needs-probe";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
index c3ae6f9616c8..4dbf2cb73a81 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
@@ -17,6 +17,8 @@ trackpad@15 {
 		compatible = "hid-over-i2c";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		hid-descr-addr = <0x0001>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
index 447b57b12b41..ee5bc2cd9e9f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
@@ -19,6 +19,8 @@ trackpad@15 {
 		compatible = "hid-over-i2c";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		hid-descr-addr = <0x0001>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index 18cfc99cfa3c..ff20376a44d7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -398,19 +398,17 @@ &i2c1 {
 
 &i2c2 {
 	pinctrl-names = "default";
-	/*
-	 * Trackpad pin put here to work around second source components
-	 * sharing the pinmux in steelix designs.
-	 */
-	pinctrl-0 = <&i2c2_pins>, <&trackpad_pin>;
+	pinctrl-0 = <&i2c2_pins>;
 	clock-frequency = <400000>;
 	i2c-scl-internal-delay-ns = <10000>;
 	status = "okay";
 
-	trackpad@15 {
+	trackpad: trackpad@15 {
 		compatible = "elan,ekth3000";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		vcc-supply = <&pp3300_s3>;
 		wakeup-source;
 	};
-- 
2.50.0.rc2.692.g299adb8693-goog


