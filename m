Return-Path: <devicetree+bounces-256353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18543D38C04
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 05:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30E1D302A973
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 04:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4975521ABB9;
	Sat, 17 Jan 2026 04:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPf53Vx+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2438D52F88;
	Sat, 17 Jan 2026 04:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622577; cv=none; b=ebZ5rxg/S3R/uH/w5TxYFxxFJNdoXIsNwLnrVNmVfeeOuyKBNGGtQbZitrdHy5g16jWdxaSPpNqa51umAr/YUwLvgReYeGMWHbcoNxP16pCaulU9rJNGnTRIWWqAaWLw47KGzBvoWx9yIvkFNBCji5+Ksf/YHe+OkxXxWEfy3L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622577; c=relaxed/simple;
	bh=50TUX+3d5K0vnVqShqXZBJO+XBBciVmNK+6gK3etOaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BcuHXKsTabRvZqLOC6V92nmM3xB6bAST7H+ZkWkWryXOpIUYFfOUIJ3PwgsFsXi0/sann+KBT92Ll4KZVM41+v85BubVid1UC1vtJi1IaEQlwRhmEaR3QE+bbM8ov6luWXVLdXlau553LHo0VZWShD3a53RhRRHNtrX50RqwMQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPf53Vx+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B207EC4CEF7;
	Sat, 17 Jan 2026 04:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768622576;
	bh=50TUX+3d5K0vnVqShqXZBJO+XBBciVmNK+6gK3etOaQ=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=aPf53Vx+dHa60p3bH0ImYYM5dOUMCHI5w4g3rIEzFiA/9M27/KlveqvQX3WYd6yT6
	 /2H53PSK/+lMRGjHSiYtkGgBj1Tf4TXWAZy2jYHL0GeT/ft5SbfsOcC/Zgr62UX3dW
	 gfZXQiCX/lohMdnS4nvf4YWZbk81oEsQNOj/XMod1wzV1HTmBtnNPagxsuFcziHqye
	 5dwWjW+X8kWs31tmY6KfUeZrwwIX3/2EOqv84eVSD7BEokjjof2x0zC6St3F9F4RGj
	 8yjt/53yVyZxNj8cjV1nKfqWS2jG9yhYiUCWrvVY0PYBOTOAdCAe6GVy3jzWVXtcUW
	 VBGw34tLy48fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3A5C982C5;
	Sat, 17 Jan 2026 04:02:56 +0000 (UTC)
From: Eric Neulight via B4 Relay <devnull+Eric.Neulight.linuxdev.slmail.me@kernel.org>
Date: Fri, 16 Jan 2026 23:02:20 -0500
Subject: [PATCH] Eliminate Odroid HC4 power glitches during boot.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
X-B4-Tracking: v=1; b=H4sIAMsJa2kC/x3MMQqAMAxA0atIZgNtSUW8ijhIk2qWVloRQby7x
 fEN/z9QpahUmLoHilxaNacG23cQ9jVtgsrN4IwbjLUDZi5ZGfdAyGdFT5GcJx69J2jRUSTq/Q/
 n5X0/vDgxLGAAAAA=
X-Change-ID: 20260116-odroid-hc4-dts-54f4254d8554
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4323;
 i=Eric.Neulight@linuxdev.slmail.me; h=from:subject:message-id;
 bh=D6GTcwhfX7GFqFVPwCE7THDsRVZibUMqyLB6SBdfMzo=;
 b=owGbwMvMwCX22yMi/F2X5g7G02pJDJnZnB8enpnGXpJYs7jxUr1Do5TgrreOtnuYrpx221HuN
 VXAb/HfjlIWBjEuBlkxRZaPK29Nn6k9Ta3o5frVMHNYmUCGMHBxCsBEMqcy/OHf9XHK1h/+L0r0
 b7JEbVJ8ffiJZs7ChQ5GLzak/j50r3IKw1/hswYaNlEiNcxbN0ibTuCw2i7Zl3JRq9XkRlZihHH
 gCx4A
X-Developer-Key: i=Eric.Neulight@linuxdev.slmail.me; a=openpgp;
 fpr=F1A9DA97992B962672E9AFABFB485857EE8A29B8
X-Endpoint-Received: by B4 Relay for
 Eric.Neulight@linuxdev.slmail.me/default with auth_id=606
X-Original-From: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
Reply-To: Eric.Neulight@linuxdev.slmail.me

From: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>

Fix issue with Odroid HC4 (and all meson-sm1-odroid) DTS that causes
regulator power to momentarily glitch OFF-ON during boot.  Add
regulator-boot-on to all regulator-fixed and regulator-gpio entries
that (1) define a gpio AND (2) define regulator-always-on.

U-boot powers on devices necessary for boot then hands off the DTB to
the kernel.  During probe, linux drivers/regulator/fixed.c and
gpio-regulator.c both first set the regulator control gpio (that U-boot
already turned ON) to default OFF before then setting it to the defined
(ON) state. This glitches the power to the affected devices, unless
regulator-boot-on is specified with it.  In fact, U-boot has the same
behavior.  So, during reboot, a power glitch can actually happen twice:
once when U-boot reads the DTB and probes the gpio and again when the
kernel reads the DTB and probes the gpio.

Problem this fixes: On the Odroid HC4, power to the SATA ports glitches
during boot and causes some HDDs to do emergency head retract, which
should be avoided.  On the HC4, power glitches to the SD card, USB,
SATA, and HDMI interfaces during boot.  These are all boot devices.
A power glitch can potentially cause a problem for any sensitive devices
during boot.

NOTE: This is not limited to just the HC4, likely an issue with ALL DTS
with regulator-fixed or regulator-gpio entries that (1) define a gpio
AND (2) define regulator-always-on.  All such entries should also
include regulator-boot-on in order to avoid potential power glitches.
At worst, adding regulator-boot-on in such cases is harmless because of
regulator-always-on, and, at best, it eliminates detrimental power
glitches during boot.  So, this is best-practice.

Fixes: 164147f094ec5d0fc2c2098a888f4b50cf3096a7 ("arm64: dts: meson-sm1-odroid-hc4: add regulators controlled by GPIOH_8")
Fixes: 45d736ab17b44257e15e75e0dba364139fdb0983 ("arm64: dts: meson-sm1-odroid: add 5v regulator gpio")
Fixes: 1f80a5cf74a60997b92d2cde772edec093bec4d9 ("arm64: dts: meson-sm1-odroid: add missing enable gpio and supply for tf_io regulator")
Fixes: 88d537bc92ca035e2a9920b0abc750dd62146520 ("arm64: dts: meson: convert meson-sm1-odroid-c4 to dtsi")

Signed-off-by: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts | 2 ++
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi    | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
index 0170139b8d32f4274ad991b0f3d9a0f6c67969ce..3ece30a0a1fff736c544cf89ed0a8cca0890f128 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
@@ -52,6 +52,7 @@ p12v_0: regulator-p12v-0 {
 
 		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
 		enable-active-high;
+		regulator-boot-on;
 		regulator-always-on;
 	};
 
@@ -65,6 +66,7 @@ p12v_1: regulator-p12v-1 {
 
 		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
 		enable-active-high;
+		regulator-boot-on;
 		regulator-always-on;
 	};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index c4524eb4f0996dfbccec16ca5b936a5c3b2663a5..0bce4e8d965f2c83e6ba677fef2ede2726de6ed1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -37,6 +37,7 @@ tflash_vdd: regulator-tflash-vdd {
 
 		gpio = <&gpio_ao GPIOAO_3 GPIO_OPEN_DRAIN>;
 		enable-active-high;
+		regulator-boot-on;
 		regulator-always-on;
 	};
 
@@ -50,6 +51,7 @@ tf_io: gpio-regulator-tf-io {
 
 		enable-gpios = <&gpio_ao GPIOE_2 GPIO_OPEN_DRAIN>;
 		enable-active-high;
+		regulator-boot-on;
 		regulator-always-on;
 
 		gpios = <&gpio_ao GPIOAO_6 GPIO_OPEN_SOURCE>;
@@ -81,6 +83,7 @@ vcc_5v: regulator-vcc-5v {
 		regulator-name = "5V";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
 		regulator-always-on;
 		vin-supply = <&main_12v>;
 		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;

---
base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
change-id: 20260116-odroid-hc4-dts-54f4254d8554

Best regards,
-- 
Eric Neulight <Eric.Neulight@linuxdev.slmail.me>



