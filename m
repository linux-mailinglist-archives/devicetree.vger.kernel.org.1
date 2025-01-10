Return-Path: <devicetree+bounces-137417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57043A08EDE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 530B616420D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1A3205AC3;
	Fri, 10 Jan 2025 11:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sksXLEWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86C320550A
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 11:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736507461; cv=none; b=AqvcVdVjEBJOeF7gYHHXfFoUIkUmS2CjHYN+8qDLh5wVyYsc3gk4tJKl8qJDduh7fanifnO4zppw1PtQR0n/QfbEpuxdjLOFYwN4qIcn/ems76K+JgkN7rFP8DOYckuRlmP99R+dnZ3yVm8/NkGDcyvzF4JBvmuTalXB3P80HbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736507461; c=relaxed/simple;
	bh=nu1CaLU4FwPi8KmGxZNKa3FBcBUfFSrg7ePK7lPL20s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=MD0YCnR+/w6VHVKcW5BgTe4EBgwirg+p+UFtJ+ap11ATSZN1U8OTjMAT3OVRke6vO8QMi/tIHtTe65h+/p2o+kCeOFJ2C5Yhs7oPIqScWxM+GIUjwGRdRv2/Le+CYhjCxACWaNHRHU+sK6kUzH8OxMHwh1c+amoUJklbxheynV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sksXLEWa; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43618283d48so14451825e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 03:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736507457; x=1737112257; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lsaqDGLgq3FpBwdxK7jjD5A86PMJqRlSRSiGJFRnRYk=;
        b=sksXLEWa56T9ovfVz+cmzJJHRBaw/0sZH/w+jZpWNv6WMG4l57YN54TVa47kcca1CT
         QMKccE8w6yjNIMllRpjGMjmo8MlqoaX3o2UlqJetz9KBGUjB2rjrTWZsyV88p0QJ+0b0
         Vj+8p9dXCPxymEnoKniD3XjqgZ/4NzjAUWuS9NFAd7O9zFYRTexYQQRhLPSlaELvX/wd
         rzk73GFaXtH9JVaHctTonTVLkWuDtEAMv4rknuVJjDUyudFjvvSTVRTZrZjCapfosTnD
         uVJhwWrysf++n8fJ5yP/Gy5f+U/r6nR1OGufeaHD3jHimIQgVJ4i+Uq4Jf0NORB5kjmS
         De9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736507457; x=1737112257;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lsaqDGLgq3FpBwdxK7jjD5A86PMJqRlSRSiGJFRnRYk=;
        b=quRkN884skJDSkmGc9o2mQTGo3h7apHHkHQ1kqUW8EdLjEKUqdOAX8NsG0uHaTajxt
         Si2TirSUYJWPASz8YZzhtqctlV8u4pSio9QfjUTH0B2DidPbmGY86dmqkyU19UpL2l3C
         D9W2OUbLG47y4t81r+y1SVgCJH4Z5JJidZ2zVnEkD9MP0UTTxQJ+XDmWjmmftu8C9jIh
         jKpQ1w6YRDycGio5RHJ8zSSaOhLEGk5XHl2y5/cjjk8Ni+cM8QbMOLRjrdgGImSia8Tc
         gc+ei3j2ht69WMCYay0V9Im3w7uTMDRaWvXxRF4jmVVaqz7jWnnFyUdB6a/aN91Ik0nQ
         ozjQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7AuBgA5/7SGasxkGwxrB8BuuSGCQ32rCz7Lff12TXbnHBgH/DIzkPHrhyUX9kWoZCU5DhLf8gvpDl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+Bzfwaq+VNpNYvmF1OwmSQJcRRaUSMD4Hkt+EEpqFizvPxtOu
	bkoUVYtlxJxgRwkEtJ//+P3PhV5MsSaPRDOXUS0hfXzvkpMaDPrf4rtlbRoUbu8=
X-Gm-Gg: ASbGnctRrIxd/uS2IHuhFoPiwP/+PZlNLSItYqRrGehOBktwCrG9RggfrZX1bAtPZPB
	u9H0+JUkygxt4GpNbFkJnQcScUrx2pwQp2mKEOFWDFQHIlsbiYEUc/tOoDEYfcMKBqCrsaw0nCq
	Wj7TTGNWKuQBkVwA54/WkpKmB1noTK1cCeKSvTw8+7qOAqNi9iOF4EpthdrbJYD71YrX6JBBFJs
	2YiJp2gElst2GpMai++2N5+Ownipi0ZDr7YPULPEdpRJUbnxIdw0zD400am
X-Google-Smtp-Source: AGHT+IF0mB+wjHcXUCtZvjAkIwwZ+lCuWna5//dGlNJreuZoiAf3DMNyafyopVYrRkuOu/Fi+TNmGg==
X-Received: by 2002:a05:600c:1d07:b0:434:9934:575 with SMTP id 5b1f17b1804b1-436e26a8f4dmr108353855e9.16.1736507457222;
        Fri, 10 Jan 2025 03:10:57 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38ef6asm4363463f8f.60.2025.01.10.03.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 03:10:56 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 10 Jan 2025 12:10:46 +0100
Subject: [PATCH] arm64: dts: mediatek: add mmc2 support for mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-mmc2-support-v1-1-9b9d1b1ae35d@baylibre.com>
X-B4-Tracking: v=1; b=H4sIADYAgWcC/x2N0QrCMAwAf2Xk2UBbWXH+ivjQ1swFtq4kToSxf
 zfs8Q6O20FJmBTu3Q5CX1Zeq4G/dFCmVN+E/DKG4ELvvBtwWUpA3Vpb5YNDzFdKvY/+FsGSnJQ
 wS6plsqhu82yyCY38Ox+P53H8AY2Xdz9zAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 macpaul.Lin@mediatek.com
Cc: vsatoes@baylibre.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3770; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=nu1CaLU4FwPi8KmGxZNKa3FBcBUfFSrg7ePK7lPL20s=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngQBAWEL2uuWIHepsCFdpenZ0Y9BCJFm8n1x6SK+d
 WNkXNr2JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EAQAAKCRArRkmdfjHURUXAD/
 9xCQfkKXbv4ITr507PfOZMAzOBPIFU+1EKpaA6yOT0uYG5y9eHqMJwoJiGUNrKFO15FcuXk0hmh1lh
 93djOEDHM77SqfksLf5TvEGs8XRcrhnocO9DwHLHPpiDpkq2rGeTozAN0XlHN1TpH7fgfjypXrQTVa
 fFmOa+irEKsQoGVyELew3nHgKYqtdIxPQWcqk3PhFnQRONXhES/4dbOJd3Ki3/Au/4ZZsy71MNkU+Z
 KL/iKAgMNPb/9jQeGXG8+c1UP5eAyI64cdmPPSw2KZEIEWUkdRB2Hilhjwluf/DCfgeKV4lNIuyvf6
 dAyZCXlZUyERSbsasGZ26HPnagcEovwi9lvSkrhkp3eehmQInIyCp21hIoqbaiPBP9L4Qmylofpgp6
 4PaI2hOY0oFANeIOes8cLDHt0UOJdpwBjtm5UFxA/tTTdURKHl3Blc9WHj4WgfidfsBKU4RbC3E3Z5
 hYvtrBJAFJ1Y6x/s8aO2kfqc56BB83dDlgsx8kPh3MXu6OFvhCImXnBy8gzz9syRKDqN72l3Zg7Ehj
 yTLcUrzNHJ6pAVhzzJREg5x1M3d4aMWYBqx7rP/XzLd3k3l4mSgNuPeE0+ZHj5qZcxPp966zKbYEoc
 s/hasqA/hzMDaeliPgoYTH3fywZDVOSe3ug5m69360z7u7i73rsPg331qp8w==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Adds support for the MMC2 interface on the MT8365 EVK board.
It introduces a fixed regulator for the MMC2 VDD33 supply and configures
the MMC2 node with a 4-bit bus width, high-speed capabilities, UHS
modes, and appropriate power supplies. Enabled SDIO IRQ, wakeup source,
and kept power during suspend for wireless chip functionality.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 85 +++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 7d90112a7e27..309dc76322d4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -53,6 +53,15 @@ memory@40000000 {
 		reg = <0 0x40000000 0 0xc0000000>;
 	};
 
+	mmc2_vdd33: mmc2_vdd33-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "mmc2_vdd33";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 121 0>;
+		enable-active-high;
+	};
+
 	usb_otg_vbus: regulator-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "otg_vbus";
@@ -197,6 +206,28 @@ &mmc1 {
 	status = "okay";
 };
 
+&mmc2 {
+	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL>;
+	assigned-clocks = <&topckgen CLK_TOP_MSDC50_2_SEL>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	hs400-ds-delay = <0x12012>;
+	keep-power-in-suspend;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-0 = <&mmc2_default_pins>;
+	pinctrl-1 = <&mmc2_uhs_pins>;
+	pinctrl-names = "default", "state_uhs";
+	sd-uhs-sdr104;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	vmmc-supply = <&mmc2_vdd33>;
+	vqmmc-supply = <&mt6357_vcn18_reg>;
+	wakeup-source;
+	status = "okay";
+};
+
 &mt6357_pmic {
 	interrupts-extended = <&pio 145 IRQ_TYPE_LEVEL_HIGH>;
 	interrupt-controller;
@@ -410,6 +441,60 @@ cmd-dat-pins {
 		};
 	};
 
+	mmc2_default_pins: mmc2-default-pins {
+		clk-pins {
+			pinmux = <MT8365_PIN_81_MSDC2_CLK__FUNC_MSDC2_CLK>;
+			drive-strength = <4>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		cmd-dat-pins {
+			pinmux = <MT8365_PIN_82_MSDC2_DAT0__FUNC_MSDC2_DAT0>,
+				 <MT8365_PIN_83_MSDC2_DAT1__FUNC_MSDC2_DAT1>,
+				 <MT8365_PIN_84_MSDC2_DAT2__FUNC_MSDC2_DAT2>,
+				 <MT8365_PIN_85_MSDC2_DAT3__FUNC_MSDC2_DAT3>,
+				 <MT8365_PIN_80_MSDC2_CMD__FUNC_MSDC2_CMD>;
+			input-enable;
+			drive-strength = <4>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		sys-en-pins {
+			pinmux = <MT8365_PIN_120_DMIC1_CLK__FUNC_GPIO120>;
+			output-low;
+		};
+	};
+
+	mmc2_uhs_pins: mmc2-uhs-pins {
+		clk-pins {
+			pinmux = <MT8365_PIN_81_MSDC2_CLK__FUNC_MSDC2_CLK>;
+			drive-strength = <8>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		cmd-dat-pins {
+			pinmux = <MT8365_PIN_82_MSDC2_DAT0__FUNC_MSDC2_DAT0>,
+				 <MT8365_PIN_83_MSDC2_DAT1__FUNC_MSDC2_DAT1>,
+				 <MT8365_PIN_84_MSDC2_DAT2__FUNC_MSDC2_DAT2>,
+				 <MT8365_PIN_85_MSDC2_DAT3__FUNC_MSDC2_DAT3>,
+				 <MT8365_PIN_80_MSDC2_CMD__FUNC_MSDC2_CMD>;
+			input-enable;
+			drive-strength = <8>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		ds-pins {
+			pinmux = <MT8365_PIN_86_MSDC2_DSL__FUNC_MSDC2_DSL>;
+			drive-strength = <8>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		sys-en-pins {
+			pinmux = <MT8365_PIN_120_DMIC1_CLK__FUNC_GPIO120>;
+			output-high;
+		};
+	};
+
 	uart0_pins: uart0-pins {
 		pins {
 			pinmux = <MT8365_PIN_35_URXD0__FUNC_URXD0>,

---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20250109-mmc2-support-96b3ea516186

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


