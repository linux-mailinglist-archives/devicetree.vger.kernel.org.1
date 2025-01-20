Return-Path: <devicetree+bounces-139607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257AA165B8
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 04:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EC543A5193
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 03:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13503133987;
	Mon, 20 Jan 2025 03:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YAf0d85W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527877DA67
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 03:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737344138; cv=none; b=kkOChthlG6e/d1ucY2jmSKFvKwCEsY5YrqBsD4CMdfq9e2N/Rkh7YHyYwUh4m0AGAmBrU3S2MkxRk2UTyc1xuOojdRR77fJLEmMPbleg5yuxNritgkRg4tRL8fumgOGZgUYYPdVj8WYIgrlYDReBpM+w+PGkK9QaqpAC2Ly4b7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737344138; c=relaxed/simple;
	bh=+zgJeiahRYhOewDI4lhi7m6DU4J3ga4hUeXcPfIztsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Agiwd/Wf32IVCIPj6YfIGZSwt6NZL3UiM0wl5OPdLSTHUWVXE7QJs9Wsaa6YIYdxexfA0LEbRPOK/DHuxGCvw2kCn1c2f5AjrkkJmqHX8bZhSpAYnnDvNcOgD4Rs1dZtUedBjkH5gsh+SQssIRCJSz5VI3gL7C1FaMsvkrlChbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YAf0d85W; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21c2f1b610dso64176035ad.0
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 19:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737344135; x=1737948935; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I9SAvhC/1O9xhOgEJgltjPIiKB+jL/KUsbTgQGFrTOI=;
        b=YAf0d85WvMlw5k4QWLuTLDkNXRFFcVC5zvT/UI4E0RovlByRxk1KeXQCbMOMvr44Rc
         abB5l+FJVzyeC5EKGlZOLIlwJGZ5YDvc1wGahU8x6XMUTBQLMeFYwpUOvNri8CbsHGbP
         S5cEE3XUXHLuhc2E0AL2dATWK1EM7c6el3RbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737344135; x=1737948935;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I9SAvhC/1O9xhOgEJgltjPIiKB+jL/KUsbTgQGFrTOI=;
        b=FGEsvRLI9RNO40OFqrJW4iNW+95NwTi1EP8lkGCRPBeIn8I/n35PkfAVGPAc5ITWiH
         xLRA8yUTW7l7dO0jH8c4rlTjVjTc1A3DdebvpptPenfVmKcsKNH6r4UGvAQF0FfK8Ori
         i2Wa1t38nL+Yn5GFRTbE4rQJFTcTyX0Fj9UU2Hv3yY1KjIzUZm030Gd0+/4VKDvtKNFw
         aGvdyfA2MzgPIJCZKGi/ZL7mQYLR0y+y+lWU9N5F/NUXEGd9/aRjxVkhhU0Qs5q77goJ
         2AdqptcqGbZQVgAFtj6QPS47AdHJsii/0jYZX75WFjyHUvK6Tpf+Ax1yib2v0lG8y7tx
         nYaA==
X-Gm-Message-State: AOJu0YwHrohJ6DU7q0Vw6LkTl9wYKHzrx22QRkOmAOjJYvrGQqMaw1JA
	jCSTalsxR17Mb1KC+Y4Uw0uKBAbwJASdwIinrjNCZnGeqlDmEqTPKjU7h6iXEHsr1bCUzII4HD8
	=
X-Gm-Gg: ASbGncuGn7s4FdoE93w6femfILv4EMSGuW7gOwSfFCknrgpp1BZF03H2HNZounKMdCI
	nzAt4Ue2qK/5lyw0J4FLFig7/gZETGPTPJchkZBpWNdIwE6A0VBA3+EW2BZ3787n67nMFlBF51J
	gbbil82dqISWNZ8DOyBifE5vvYSBIIqSfBfVAxQrfrBqg1fuc5tWa7qMiRB6VWmus9Pdp60xuXZ
	qogvfkWwDEW3mPO+/WqCc56E5Pxscqi0lpyF2XzDLtEJ6SQ6T9ww/SabLZHmRmCY9K7+hEr9vO0
	eMgHk6fPv6+jbPayuj0m83tWBj0AZEebcyqdwnSPuOXdHxi2cGbIFwMTWW7P
X-Google-Smtp-Source: AGHT+IHoRnpouPTg9I2Td3asAfewVxkgQF59sVedTc1vZI0Q7LF6MuUmo+EelqKGuxFWOIGciJakbg==
X-Received: by 2002:a17:902:e74c:b0:21c:fb6:7c50 with SMTP id d9443c01a7336-21c3558fc36mr180974915ad.31.1737344135597;
        Sun, 19 Jan 2025 19:35:35 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3a91cesm51473855ad.133.2025.01.19.19.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 19:35:35 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 20 Jan 2025 03:35:29 +0000
Subject: [PATCH RESEND v3] arm64: dts: mediatek: mt8183: Switch to Elan
 touchscreen driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250120-post-reset-v3-1-8f394bb25c8f@chromium.org>
X-B4-Tracking: v=1; b=H4sIAIDEjWcC/3XNPw+CMBAF8K9COlvT61n+ODnI6qCjcQB6SAcoa
 ZFoCN/dhsVocHzv8ns3MU/OkGf7aGKORuON7ULATcSqpujuxI0OmUkhdyAg5b31A3fkaeBFFce
 lQAUxIAugd1Sb5zJ2Zef8kp+O7Bb6xvjButfyY4TlujY3AhdcFYUuE6WEwORQNc625tFurbsvS
 6P8r2XQMtUKM51kBOmKxo+WgF8aOXCqUOg6KzNM4UfP8/wGs95tuisBAAA=
X-Change-ID: 20241018-post-reset-ac66b0351613
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), the i2c-hid-of driver used by some mt8183 devices resets
the touchscreen without having enough post-reset delay. This makes those
touchscreen fail to get probed.

Switch to Elan touchscreen driver, which has enough post-reset delay.

Fixes: 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to i2c-hid-of")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), i2c-hid-of driver resets the touchscreen without having
proper post-reset delay on OF platform.  From the commit message of that
commit, not to decribe poset-reset delay in device tree is intended.
Instead, describing the delay in platform data and changing to use
specialized driver is more preferable solution.
---
Changes in v3:
- Remove patches related to the race condition of pinctrl since they are
  not needed anymore.
- Link to v2: https://lore.kernel.org/r/20241018-post-reset-v2-0-28d539d79e18@chromium.org

Changes in v2:
- Add second source touchscreen patches since they should based on the
  first patch of this series.
- Link to v1: https://lore.kernel.org/r/20241018-post-reset-v1-0-5aadb7550037@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts       | 9 +++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts | 8 ++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts | 8 ++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts | 8 ++------
 4 files changed, 9 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b..b226dfee22669d596e5b45a7cc02133ee4aaa828 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -14,16 +14,13 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
+	vccio-supply = <&pp1800_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
index 72852b7600383972d98d9b0edd40b6e99e34a85b..863f3e403de8577da41b17b144cdb17c578b2027 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -27,16 +27,12 @@ &cros_ec_pwm {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
index 757d0afd14fb064fc1de4608e65eb1a561c4dfa6..e0a583ce4a0bb18095a77d23ab8409bb80898979 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
@@ -14,16 +14,12 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
index 6641b087e7c5f3a957e43ac985137dfd84ac7878..7874c9a20e124c65ace3f90e2ec5bcaf59b69c40 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
@@ -14,16 +14,12 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 

---
base-commit: eefa7a9c069908412f8f5d15833901d1b46ae1b2
change-id: 20241018-post-reset-ac66b0351613

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


