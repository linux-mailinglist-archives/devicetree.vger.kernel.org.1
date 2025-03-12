Return-Path: <devicetree+bounces-156846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2276FA5DAC3
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911E81899F0E
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A8C243376;
	Wed, 12 Mar 2025 10:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b6LqZD8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E02D24292E
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776246; cv=none; b=JBzKyeuh9I+MzB2546Eq9L6dEW+F8IHvWDWQJu2CdXce/YaI3yHTD17QJ6f3wDhIj6FahYgAJVmz60+ypnmgyP4ri/YfkZE6S8RNqRlfQ7aDeD2PpvCo1+IBvnBvRegyQAcO3Mm83MZBImTJImhFvStG/p29GDoY3TP3FYOwvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776246; c=relaxed/simple;
	bh=005DS8QRrzpQdoXyb+W7Av4A9bD2sm0mlAHOBLREaMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rPgEGydRmIf6k2fqDq+Jj9uL5WXwQ5X68F5yEFKPQjekwusmPpUsxpKkiRX8H6wNzw9inwG5P+scX+W0j8RAKxBB/jKLDWB+M3fEen/kleAIWI3jfBhETK3Wy3GxS+p9cz2Ymf436/OfsdAZ5NqHJ4CWU6LZgZuGvfdSe2LCHJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b6LqZD8D; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-300fefb8e06so3697165a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776244; x=1742381044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9Hi6z01W79t89Yzzjz+Av4u/k4zBkYFE5hgZtEL7TA=;
        b=b6LqZD8DvadWFUJlOWAOej3+1XbCeMGfUyE5AsPIR2S7QAXi4tPz8aC4CpDCkAc9Xp
         miVYZdP7xjh/QD806xK37FO5bP77Ur+tepOuv/wX0R7YaqZMxOPBFauf1Kaoy+uNeqqg
         x+z/vOf2joRXDzhMP0yHyyfAbaUe2BREKEyJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776244; x=1742381044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9Hi6z01W79t89Yzzjz+Av4u/k4zBkYFE5hgZtEL7TA=;
        b=hS3/1PZ+FGVnXGz9j8iJKpX5R0LrxmWk+QZnTTokPA2ixQVKXP/0XOC2/p8c+/zY15
         iH5x1aF+Dhw/y+J65xP58TcIg2oA/r+A+EQRT7A/AFrCdnoR0mIOU86PLiMi5GUp5V9q
         QTBlJWpowVBGPpYkf5pMvgeQTupofl6AFbTMqGI5PO7cer/YTMJQTkG2jaCVfHQjg7nf
         /bbn/SXctWt+LTj32nF5iPbBPe5vE1zsxSMQWFtvtdCKb28OZMb56LChG+IF2YsbeAxb
         p8+k1pnpyvovBgttaKsJH9OJEgYSgA4kjfgRF/+dVPt3Mz6mWcYUTzljLhANisfCFMGx
         4NZw==
X-Forwarded-Encrypted: i=1; AJvYcCX+tDtVJUApiT15s0TJ5frot+HuwsTMQv9sXyyrgPeEEyBlCmjvRUPIzSIVzM+3TFo2/SoKvELYBRss@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi5pzOCpDl7LZDb9TvbHv+d8M82yHylwAYFXrDGFhG6zW5srnU
	5nZrhVyFWNtNUGMXdKRnvnCyqhI7diCL2i4cKD3FlTlVKJ+xTwEcziFl/47tkA==
X-Gm-Gg: ASbGncu6TBagNa/tyltMdwPoR6fqCK6KZ9x0BlhDQzf2mxb1GJXC0WxmKeH32Rfa7a/
	IZ/bDlFLe0QgKYnKdIcKJk52wh8vsmyQ6yKSzXtd7uWIrDk6dhm8SqXh2qEXf/2nTxO7TI3usjg
	XRddB/ppPZvDhZ8GMGKSfKx+r0sa9Mm1Fmqfd6AAYDzbQIMPKhSF3ydw+ShXfWrgkVXKwbeTg1K
	WdiHdRR3El1kujkwLTzIDmdB5FbTNunW4waMto4Q3GBOrsnzJqeCF6AG2ccHf7lfaSdqOzwqtKi
	HfjdO7dTRrppopR13z5aQ81aKbkgZcCodXxLdgEvFpRjcmz6ENmk0Uy73Tj8Wzs=
X-Google-Smtp-Source: AGHT+IHJj3ClCl0G4w7uRfbh34yNw6y58jNADTnvGcCG6MJZbH+QLxVptAl9mfKjSGMGz6TiuUUEtA==
X-Received: by 2002:a17:90a:d88d:b0:2ff:6788:cc67 with SMTP id 98e67ed59e1d1-300ff368043mr8303305a91.34.1741776244552;
        Wed, 12 Mar 2025 03:44:04 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:44:04 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	stable+noautosel@kernel.org
Subject: [PATCH 4/8] arm64: dts: mediatek: mt8186-steelix: Mark second source components for probing
Date: Wed, 12 Mar 2025 18:43:38 +0800
Message-ID: <20250312104344.3084425-5-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
In-Reply-To: <20250312104344.3084425-1-wenst@chromium.org>
References: <20250312104344.3084425-1-wenst@chromium.org>
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

Cc: <stable+noautosel@kernel.org> # Needs accompanying new driver to work
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
index cebb134331fb..918f17385ba5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -390,19 +390,17 @@ &i2c1 {
 
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
2.49.0.rc0.332.g42c0ae87b1-goog


