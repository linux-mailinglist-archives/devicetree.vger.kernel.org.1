Return-Path: <devicetree+bounces-241931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 625ABC847CE
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 572263A261A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4A9302150;
	Tue, 25 Nov 2025 10:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oIW8VZef"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD582DF137;
	Tue, 25 Nov 2025 10:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764066570; cv=none; b=k2Wehr2MRsRsbTn74WqB/MAgZ72AKUHNv7TnHJgcJJiJyfACLzw9HvbTS79M3hUxsevYu30WcjcKtpnqi2vSCDf59qL8nwEBA7s5e7M9YpmpycAVzFX/tFvZSqGWZRVhumS5ggDIA6EYGt/uit/payPYs2MbdNjvPalFg9QLFrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764066570; c=relaxed/simple;
	bh=7uW/PXDiLv9bv4bENX8rg44XZjAgahdiMX0JiQRX2I0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=JBFuWcqL2ZiIQZRuD9AL+Q3d5lJx8L+UbKjFna0/iiIDCaQG7GgoCE5nmZKLff0gMo1aJSE7LNPWk0osJ4RgbEGg4ftav5qqsds//h6EiOLgp4iHI4FqewSHr/gWA+9iyPCRWicvZhaHRHZ7EDg2jZ6DNr0yS2DjEwFr1/x1JMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oIW8VZef; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764066565;
	bh=7uW/PXDiLv9bv4bENX8rg44XZjAgahdiMX0JiQRX2I0=;
	h=From:Date:Subject:To:Cc:From;
	b=oIW8VZef+01U2T24JyiygW+GD4PPXZypkwTThVtJSJ/6SqqSF0PaErqhm4ZXIJjva
	 oPNfpvmrzHkkFOopuTqz3rPiAgSpl/XkWUtNRS73oSI7CHeRlDclqzHaJOgRaXpOV0
	 BDOYDGw7zw7iy74+kGvwhzNqlrOjSzOU/rzUdxKUtk66wuLUWfHG4UkG2SMrdyrcbn
	 HnUI9QSbcWuTXmuqU/RX0MgoKeSx4+ULmZnHWY1sB2/7Bk3A6xbe0T3K7v7qdkRU2k
	 G6spX8ulidlkVrxn9jCzw9S5TczAypVrs3OwEg5WPL7mQMIiMnTIbhUmetiQ1NckbD
	 WmGppMOAhDDZA==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1AD6217E10E9;
	Tue, 25 Nov 2025 11:29:25 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 25 Nov 2025 11:28:27 +0100
Subject: [PATCH] arm64: dts: mediatek: mt8365-evk: Fix touchscreen reset
 line polarity
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-mtk8365-evk-touchscreen-rst-pin-v1-1-316facb96d63@collabora.com>
X-B4-Tracking: v=1; b=H4sIAMuEJWkC/zXNQQqDMBCF4auEWXfAJCSIVykuNB3rIElsEkUQ7
 95Q6fJ/i/edkCkxZejECYl2zhxDDfkQ4OYhvAn5VRtUo4yUyqAvS6utQdoXLHFzc3aJKGDKBVc
 O6OykG6ulaRVBfVkTTXz8hGd/d6LPVqFyjzAOmdBF77l0ItBR8I9Bf11f5+jMdKIAAAA=
X-Change-ID: 20251125-mtk8365-evk-touchscreen-rst-pin-c6f30631582e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hans de Goede <hansg@kernel.org>, Martyn Welch <martyn.welch@collabora.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764066565; l=2133;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=7uW/PXDiLv9bv4bENX8rg44XZjAgahdiMX0JiQRX2I0=;
 b=d2MA9BX2I4lYvmutC7pNGGQXPbS/4HScsFXrKxJQPCLNAMvPk5obmdysja2thJM7k1Z+KHI+R
 +dL9j6hq2wBATRVuQttcio/vinEvWhMaa2Ob8g8DPmNe3pgGdbm8RzV
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Commit 7363096a5a08 ("Input: goodix - remove setting of RST pin to input")
modified the Goodix driver so it no longer tries to set reset pin as
input.

It led the driver to fail to probe during boot time on the Mediatek
Genio 350-EVK board because the reset pin polarity is incorrectly
declared in the board devicetree:
```
[    6.253819] Goodix-TS 1-005d: Error reading 1 bytes from 0x8140: -6
[    6.277884] Goodix-TS 1-005d: Error reading 1 bytes from 0x8140: -6
[    6.305503] Goodix-TS 1-005d: I2C communication failure: -6
```

so fix in the mt8365-evk.dts the reset-gpios property and pinctrl
configuration of the touchscreen node to use the proper polarity value.

Fixes: 7363096a5a08 ("Input: goodix - remove setting of RST pin to input")
Fixes: b28c4af8e44b ("arm64: dts: mt8365-evk: Add goodix touchscreen support")
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Patch tested on Mediatek Genio 350-EVK board with kernels based on
linux-next (tag: 20251125) and v6.18-rc7.
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index b5dd5ef9fa11ae1d54aa754325bac2e184b90dd3..4aa802ba85ce541f57ffed439262c15e1d7bcfe3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -352,7 +352,7 @@ touchscreen@5d {
 		pinctrl-names = "default";
 		pinctrl-0 = <&touch_pins>;
 		irq-gpios = <&pio 78 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&pio 79 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&pio 79 GPIO_ACTIVE_HIGH>;
 		AVDD28-supply = <&touch0_fixed_3v3>;
 		VDDIO-supply = <&mt6357_vrf12_reg>;
 	};
@@ -695,7 +695,7 @@ ctp-int1-pins {
 
 		rst-pins {
 			pinmux = <MT8365_PIN_79_CMVSYNC__FUNC_GPIO79>;
-			output-low;
+			output-high;
 		};
 	};
 

---
base-commit: acb2ca6959161544908b4ad1537b0b70c80f052f
change-id: 20251125-mtk8365-evk-touchscreen-rst-pin-c6f30631582e

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


