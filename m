Return-Path: <devicetree+bounces-143914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BC1A2C193
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 12:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B9123A33B1
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E7A1E5B97;
	Fri,  7 Feb 2025 11:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="llNSSlQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1FE1E5B6A
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 11:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738927863; cv=none; b=Qp2ALJLgo4k/unCKFjzen7OE7fSy4P/6lwRiRBiwy7is2H7zKMW992jnCuNMQuUSvAlb+az6o9rEhuQbOG6DX+R/MSxF8day5JnPI86T6L0yqm8sUK9zjb2bmrWoSYgb0K3Y6pIQcoYSPdBjhVHwu+NZeKdkKEVzi/rSgQ6dpxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738927863; c=relaxed/simple;
	bh=tVdOnKU51B2x4WqhOEirUsHUGpi24fZC4xipg7NMb4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=X4zZBEHMIWttiOk85L3SigURBoI9d5H7LowFLoSjFWmv30+YYqSJCI7IxMipKCmjJ0TpyL0Eg+ogkiln8kQraiZ0X4FOFCEx2BqHP42BoC+WEosM642OtnPItaknG2wcmJiX8vihnUtMYRx0SLvw/oBHa7t+dAoWD8VwOyoHHWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=llNSSlQw; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38dd011ff8bso61901f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 03:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738927859; x=1739532659; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JR3Vjat4//MGEukixFZKwpNgnByay/aE/Yu8JW2MD0s=;
        b=llNSSlQwxqmN9N0RnmN/huPzC8mhxXm1/8lNfiEfK56ncSJbsEOEj8rdaIzp4kVKCo
         y+8hxQU7e6o6Cqnu9l7i6DnyAILj1tUBqFvTIUc6PMQnUPPy4b+jrIccBIVBMKNSUblS
         iXlYrlM87xTlyikfeJR+7p2oEbzon7B/NsiMrstUN4/n35228D1sI8C4faNRjRwKC9zJ
         Ma9yWGRNpUj9a7LQxouVZwZFJueecIrjkEPM3ZWQ3KEnrpUiHNnYccEbTZZTeYCOOARf
         d/j/wEOoxxPdurQuJ9qggnDOSkgymTz3r+eTOghfGgofkVZ6fTLc1GiJe+jqhmOLAD8P
         rvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738927859; x=1739532659;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JR3Vjat4//MGEukixFZKwpNgnByay/aE/Yu8JW2MD0s=;
        b=TM7lSFXC/RrgEHgjG5DIcG9ksvIYtbPHOm0lKFrTqdP4xjPfHfHcqoeO50tMEVAJct
         Pbj/eFR13mSTAmHckE/NdpAGtrOWG2ZapPJtXWfsUZvbj6k+CFSyhAL6KTLQvQ8pnoa0
         /F0mS7VBch1rjXaQhxYTWhfsfCc4JWC+MvJUkPT4pJvQ0AHnyAuRTlL3h3TKqd0iEVTx
         Dg5EEqZtDcFshiX7wRmmOKYgHFVxUQp4/4yzQlL3rCUnd6ruXu2k5dnVzpgLs7vVfRlD
         m0+2c5cJ7x6LmMWK7vVSwESkOHSOBk/o9JNVQwH8JlzWt4evMJoBH+p1YauMOzJ1z85l
         Wk6g==
X-Forwarded-Encrypted: i=1; AJvYcCXmIfqYNNWfLUlj/l963kamcVZyxLoTSEIw6GWsRULe/2uqvCe4SehYPwgXZngho2wOl6cAu8yNLLew@vger.kernel.org
X-Gm-Message-State: AOJu0YyatMX8ypWfZ1cDG2tHqBbD6FnrnPyt7za+Zv1QnhZTxp3Q5rEj
	YmJ5zuxsCh2/vuWS1nP8WnC+AEvEACeQjtNYEqB3woXPdiGeUZ2yyPfSYbkouU4=
X-Gm-Gg: ASbGncv02+h73LFRSioRDJXKNhPtRv9BzX/7Luzcsfgu8S4Kl/ss45rXVJASUJdyRri
	j+RxwTvfnI3tiRfrzOBisW90is8uVQVJCi28jJPg0w0eTjbLhOz952fNfe5rXKtT/ExOclxIzg+
	wYF+F1DQxD+ws9XgHOx+Cd6kKUaPIaFunTf4zpnrsS5pRx0guEk0OlwIKjLs1G6Bj8YAYl4bHdM
	ntZAKhozWUxer+CvCNHf9oSswOCJoonrUP1+FYNqtO4VZiKLoH/wOuMn4j7THjZzquQDAsYWzXn
	jkTgU58Sof8KXdDI04E=
X-Google-Smtp-Source: AGHT+IHLVbDAU0ivPxRDdiP+UpyYF00dtw+lzFrRq9UIR/rXFPesGkRa2kTN8/QLK8uHm5CRvnYQnw==
X-Received: by 2002:a5d:5f83:0:b0:38d:b448:8ffc with SMTP id ffacd0b85a97d-38dc90eec01mr1724667f8f.27.1738927858852;
        Fri, 07 Feb 2025 03:30:58 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a437:fa6a:2619:f5d8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43907f19247sm73323765e9.1.2025.02.07.03.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 03:30:58 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 07 Feb 2025 12:30:45 +0100
Subject: [PATCH v2] arm64: dts: mediatek: add mmc2 support for mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-mmc2-support-v2-1-8347af6d1a66@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAOTupWcC/3WNQQqDMBBFryJZd4oTUZqueo/iIhOnNaCJTFQq4
 t2buu/yPfj/7SqxeE7qXuxKePXJx5BBXwrlehveDL7LrHSp6xJLA+PoNKRlmqLMYBqq2NbY4K1
 ReUI2MZDY4Po8CsswZDkJv/znbDzbzL1Pc5TtTK74s3/eVwQEQ6ZDQstV3T3IboMn4auLo2qP4
 /gCe0BNrsAAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6037; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=tVdOnKU51B2x4WqhOEirUsHUGpi24fZC4xipg7NMb4A=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnpe7xjVViz2dCkEp3rvXIrJpgQ7FrMDhLnOD1i90q
 /WBT5JiJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ6Xu8QAKCRArRkmdfjHURTksD/
 99nqDzp7HEBqvTVrbRBbDejfxW/0bhbEEIvuvQDXXg4IZI6gUXbIGTrTxRAolX4HVRO/DR5ny4dyLn
 Q/MrDQn63P16JYKbuR+PuddQinpvC6eTOyCSZYEfhdFPvB2aJw07HaSgyGiApC8YWAhBf24yhAN2sj
 iX83KxU0irHTkBX3yz8BxmYhrQREMoG15VlpMv7xtXZ9qEhlIWaHtAf+ycclleO/U/RF4GU+/4Uid7
 TYvNumN6JMRWA592DStPnKU1oQ3AKh/aXjZHeas6C1ASQkR19vFSaLBeMsAeuNyPJHSU0vA6fVnZcz
 lXekivU50HHu8JMoj5twpNlZUGcfNzRADEG6VnkUWSN3fXHzx0VBLPKQoqWiP2bUUm2Xam7HrmAb+B
 1wGh60XHuygjXmXYt9mlu/0nXuH3SN68VAPRU0rA7BdKhsBX/sP++9pkNHxA6kUKxUrxjV6fBQ1aRk
 nNSWSVlgBucDM4vazVBiGIj74ns4mUvTizCZ6TZ0m9IzIhEB3xehW+ebTXdSuPXi4yhv3/cpOG6TwA
 Eg1pPc3jENIfFcJb0RbbCmoEF4Oelbxy+LThNtUJhxdeINjofpqvQiLuRvswj1KF+D2Wpa4ey7Oly0
 rq2IJ4QgSQuAkD8clsP6k22P3a88accBjHPRgr7XHMucouZtZAxmMglGg73A==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Adds support for the MMC2 interface on the MT8365 EVK board.
It introduces a fixed regulator for the MMC2 VDD33 supply and configures
the MMC2 node with a 4-bit bus width, high-speed capabilities, UHS
modes, and appropriate power supplies. Enabled SDIO IRQ, wakeup source,
and kept power during suspend (to save firmware module) for wireless
chip functionality.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
Changes in v2:
- Apply alphabetical order to pinctrl property items.
- Improve commit message
- Link to v1: https://lore.kernel.org/r/20250109-mmc2-support-v1-1-9b9d1b1ae35d@baylibre.com
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 103 +++++++++++++++++++++++++---
 1 file changed, 94 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 7d90112a7e274..a87f1b3ed6500 100644
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
@@ -324,8 +355,8 @@ cmd-dat-pins {
 				 <MT8365_PIN_94_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
 				 <MT8365_PIN_93_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
 				 <MT8365_PIN_98_MSDC0_CMD__FUNC_MSDC0_CMD>;
-			input-enable;
 			bias-pull-up;
+			input-enable;
 		};
 
 		rst-pins {
@@ -337,8 +368,8 @@ rst-pins {
 	mmc0_uhs_pins: mmc0-uhs-pins {
 		clk-pins {
 			pinmux = <MT8365_PIN_99_MSDC0_CLK__FUNC_MSDC0_CLK>;
-			drive-strength = <MTK_DRIVE_10mA>;
 			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <MTK_DRIVE_10mA>;
 		};
 
 		cmd-dat-pins {
@@ -351,21 +382,21 @@ cmd-dat-pins {
 				 <MT8365_PIN_94_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
 				 <MT8365_PIN_93_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
 				 <MT8365_PIN_98_MSDC0_CMD__FUNC_MSDC0_CMD>;
-			input-enable;
-			drive-strength = <MTK_DRIVE_10mA>;
 			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <MTK_DRIVE_10mA>;
+			input-enable;
 		};
 
 		ds-pins {
 			pinmux = <MT8365_PIN_104_MSDC0_DSL__FUNC_MSDC0_DSL>;
-			drive-strength = <MTK_DRIVE_10mA>;
 			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <MTK_DRIVE_10mA>;
 		};
 
 		rst-pins {
 			pinmux = <MT8365_PIN_97_MSDC0_RSTB__FUNC_MSDC0_RSTB>;
-			drive-strength = <MTK_DRIVE_10mA>;
 			bias-pull-up;
+			drive-strength = <MTK_DRIVE_10mA>;
 		};
 	};
 
@@ -386,16 +417,16 @@ cmd-dat-pins {
 				 <MT8365_PIN_91_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
 				 <MT8365_PIN_92_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
 				 <MT8365_PIN_87_MSDC1_CMD__FUNC_MSDC1_CMD>;
-			input-enable;
 			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			input-enable;
 		};
 	};
 
 	mmc1_uhs_pins: mmc1-uhs-pins {
 		clk-pins {
 			pinmux = <MT8365_PIN_88_MSDC1_CLK__FUNC_MSDC1_CLK>;
-			drive-strength = <8>;
 			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
 		};
 
 		cmd-dat-pins {
@@ -404,9 +435,63 @@ cmd-dat-pins {
 				 <MT8365_PIN_91_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
 				 <MT8365_PIN_92_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
 				 <MT8365_PIN_87_MSDC1_CMD__FUNC_MSDC1_CMD>;
-			input-enable;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
 			drive-strength = <6>;
+			input-enable;
+		};
+	};
+
+	mmc2_default_pins: mmc2-default-pins {
+		clk-pins {
+			pinmux = <MT8365_PIN_81_MSDC2_CLK__FUNC_MSDC2_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <4>;
+		};
+
+		cmd-dat-pins {
+			pinmux = <MT8365_PIN_82_MSDC2_DAT0__FUNC_MSDC2_DAT0>,
+				 <MT8365_PIN_83_MSDC2_DAT1__FUNC_MSDC2_DAT1>,
+				 <MT8365_PIN_84_MSDC2_DAT2__FUNC_MSDC2_DAT2>,
+				 <MT8365_PIN_85_MSDC2_DAT3__FUNC_MSDC2_DAT3>,
+				 <MT8365_PIN_80_MSDC2_CMD__FUNC_MSDC2_CMD>;
 			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <4>;
+			input-enable;
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
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
+		};
+
+		cmd-dat-pins {
+			pinmux = <MT8365_PIN_82_MSDC2_DAT0__FUNC_MSDC2_DAT0>,
+				 <MT8365_PIN_83_MSDC2_DAT1__FUNC_MSDC2_DAT1>,
+				 <MT8365_PIN_84_MSDC2_DAT2__FUNC_MSDC2_DAT2>,
+				 <MT8365_PIN_85_MSDC2_DAT3__FUNC_MSDC2_DAT3>,
+				 <MT8365_PIN_80_MSDC2_CMD__FUNC_MSDC2_CMD>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <8>;
+			input-enable;
+		};
+
+		ds-pins {
+			pinmux = <MT8365_PIN_86_MSDC2_DSL__FUNC_MSDC2_DSL>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
+		};
+
+		sys-en-pins {
+			pinmux = <MT8365_PIN_120_DMIC1_CLK__FUNC_GPIO120>;
+			output-high;
 		};
 	};
 

---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20250109-mmc2-support-96b3ea516186

Best regards,
-- 
Alexandre Mergnat <amergnat@baylibre.com>


