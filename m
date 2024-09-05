Return-Path: <devicetree+bounces-100325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0423A96D2CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7730E1F244BA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48E3197A88;
	Thu,  5 Sep 2024 09:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ehYo8Sv2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BD1197A76
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 09:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725527275; cv=none; b=MlKm4x2/znpHayDrG5ZveGW+PDU7XcspPhPwGG1xeL1pdwqJhsObTLyD1QROxUBJ5pYbv0FEL2yUH56jXk+uYgXsNcrMiM+mfOnMAJg9jcRN4E6aX06uZQtr4Ceu/9oy1fj6CF6ZxDsVYYBoHtktgkiHJUeUio7ikVcDOc/3QYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725527275; c=relaxed/simple;
	bh=FIwNsi2/7C6h+hTUlPdOVAIygtslJZRWw1saG4r7H9A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RfxMa/Pj03FDi1K/k9o/caEwc/4qEJIn8GTHtLWQ3fYvw3h4z90HYwj1UZQlshvh6onUaZ+6hm4eSXBZQVb9oxQhlc2ZvyewQnxjdc9BgI+Jb4V+aC549COM+CSQ2Ada5QaGYRGFj8UaH466/sNR0Xrux9r/JgD/203yPpnjLOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ehYo8Sv2; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-533521cd1c3so621714e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 02:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725527272; x=1726132072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=amEp3d9dA2kLes/bKsPMBk46Liy76YOCyltVKKQIsdk=;
        b=ehYo8Sv2BVLutATb1ZBjrSEXJWUH3Sa4RKLvDvf790xWGiKtjwcMBAC2SSCXyoWlxa
         4Bbd6CitUk9gXfp3UmHlOMiZBbJFcz5ASNE8eTgNY6ig+vQLAiQjG6nmpJyQp/5wvYgM
         Fx+OmD681sKFlFaxhGGINJDK229Y1HKTexe0PNcqBoTG0pLnfEwA4N6pSZegHRcrMwcM
         bNZ1nkhq9VBrOHLoT8ZzymPvS8bHWYdsHx8m74SQI1++Bh3s+ZG6C85HBVZF3xcKVsTY
         O4d8gEjJWk0bVbL5kflnn28ygZYisGRysKWu9Mwfh/8SZUMkPQMkd0IOrmw+TWN5bEzl
         QbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725527272; x=1726132072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=amEp3d9dA2kLes/bKsPMBk46Liy76YOCyltVKKQIsdk=;
        b=MZ5Qqe9KJdwZ8n1VPCG6VWcFzAeCy/0xzgzBYbVkhgCRJeIpfsqFc8sB4sbIDl7XI4
         RHOuz1T1CK+FYMXdDqQIGhdP37uOqfsDlDMGsTAJzal6+40fnX/rV9m89dXsIYy/K1vJ
         MiMiPLJn2fywR820KZSguRLNIk/Xx0o+l+a9Wd1XcM5NRgmkK5EL4B/8yJO4p16Rc2r6
         u+yL0UmTohuqbLrndWmuiHcPVTamnfeQfSKKRBaqKmQSVw+zCX0ToqY42iwoYiTGepRF
         J9uGLwT3oDZWZON3V01R9UJNLD8rXIM8m1+s7C2jVZ1nr7zt6K7r7biDjlLNgc3x3575
         wnVw==
X-Forwarded-Encrypted: i=1; AJvYcCUphju/Kzagoa4BgLFUkuBiAue4ugdMHpYj3Gx0UOI4upiqY0vyZ9IwNHo4vVPuWwNMlibWa8/YtDCA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw00c+iEM8A1cyXtYrC3bGUkAM5PfUVK5IMXYDxcDk/HBS8taep
	ubg92aV428AnJ1e44jqMjLXIlaKtbe0LajAeeCyjhdkIKg/d08espS/MKzkXS+JV9wJDbOqlxDT
	mais=
X-Google-Smtp-Source: AGHT+IEXxv3v/7gChECZyOGuQolflyMIMwnjLiTaBnwFPxxgLEbat0KiTCUHf92EE0SVtscCFlRltg==
X-Received: by 2002:a05:6512:1593:b0:536:53e3:feae with SMTP id 2adb3069b0e04-53653e400aamr788908e87.11.1725527259850;
        Thu, 05 Sep 2024 02:07:39 -0700 (PDT)
Received: from [127.0.1.1] (88-127-185-239.subs.proxad.net. [88.127.185.239])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-535406e5549sm2554188e87.0.2024.09.05.02.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 02:07:39 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 05 Sep 2024 11:07:02 +0200
Subject: [PATCH v8 5/5] arm64: dts: mediatek: add audio support for
 mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240226-audio-i350-v8-5-e80a57d026ce@baylibre.com>
References: <20240226-audio-i350-v8-0-e80a57d026ce@baylibre.com>
In-Reply-To: <20240226-audio-i350-v8-0-e80a57d026ce@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3691; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=FIwNsi2/7C6h+hTUlPdOVAIygtslJZRWw1saG4r7H9A=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBm2XTORpSVxJ3WbTSdgdCVCYCnTzKrNLC1U02Hx9yO
 uJ38TEmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZtl0zgAKCRArRkmdfjHURdtGD/
 9QPgfVxIgAgeB4+Wq1OA6v2H1AeKw1PS2HUIJjwj/wYkXZehlBvs+xePlZPiQN4/TRR/CVjAhWCkoF
 zf51VPxBZ/lp90Dlugv+8vp32PrpJfmS9WD6aB2RYg5jbnUbOWEa8KsDi47EXIP4Y27TFLQvFzTY0Y
 h12/eeBEo2b8MyIt3ILEv+HCALp5gKledvonGxIt+6fmZETN6LrhyW0SPp2Bq5hvO2TvoDUz18ZfG9
 2KPqWUU8fwjIYzJF+Jg/23G/lZwab/DXH7rXBMbq6dP4GW7gFNd9tyMrButbSQc2FqKiFuzJoaZw53
 MV92eRMwEItx4bC3iF2lNyOO0vvYyuNIfQM2+RFZ1X9kS+pKt8YsX7bnFmFn8YBibxBomvFh3EP0PK
 BpDDxSwd8W8SjrqfTqwpZh/97bbv0GzRXLTGPKvthkIenQraunMIjpU6Vx8WRODrliBlqdANnw7xT+
 YLvteJ2EOAkVtcJIAnOis3y7NhfCDtnngmHCksnkzcnywYKKjPJdOx0lzfL/o8w7OsSwT1vYlP8MUo
 xeDkui005HYUMjGbc+pT9IujVhpu555SYHNYKx+w1A4RISxic4hSUcmu7p+/3MNpBGt1H6LjmZCAqH
 2ux5hGjZYZBJcaBojKfPHEMr3myzjvFPFynmx2GmmKXusBFk9GzAOOCndFrw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add the sound node which is linked to the MT8365 SoC AFE and
the MT6357 audio codec.

Update the file header.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 86 +++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 4211a992dd9d..7d90112a7e27 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -4,6 +4,7 @@
  * Authors:
  * Fabien Parent <fparent@baylibre.com>
  * Bernhard Rosenkränzer <bero@baylibre.com>
+ * Alexandre Mergnat <amergnat@baylibre.com>
  */
 
 /dts-v1/;
@@ -86,6 +87,28 @@ optee_reserved: optee@43200000 {
 			reg = <0 0x43200000 0 0x00c00000>;
 		};
 	};
+
+	sound: sound {
+		compatible = "mediatek,mt8365-mt6357";
+		pinctrl-names = "default",
+				"dmic",
+				"miso_off",
+				"miso_on",
+				"mosi_off",
+				"mosi_on";
+		pinctrl-0 = <&aud_default_pins>;
+		pinctrl-1 = <&aud_dmic_pins>;
+		pinctrl-2 = <&aud_miso_off_pins>;
+		pinctrl-3 = <&aud_miso_on_pins>;
+		pinctrl-4 = <&aud_mosi_off_pins>;
+		pinctrl-5 = <&aud_mosi_on_pins>;
+		mediatek,platform = <&afe>;
+	};
+};
+
+&afe {
+	mediatek,dmic-mode = <1>;
+	status = "okay";
 };
 
 &cpu0 {
@@ -178,9 +201,72 @@ &mt6357_pmic {
 	interrupts-extended = <&pio 145 IRQ_TYPE_LEVEL_HIGH>;
 	interrupt-controller;
 	#interrupt-cells = <2>;
+	mediatek,micbias0-microvolt = <1900000>;
+	mediatek,micbias1-microvolt = <1700000>;
 };
 
 &pio {
+	aud_default_pins: audiodefault-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_72_CMDAT4__FUNC_I2S3_BCK>,
+				 <MT8365_PIN_73_CMDAT5__FUNC_I2S3_LRCK>,
+				 <MT8365_PIN_74_CMDAT6__FUNC_I2S3_MCK>,
+				 <MT8365_PIN_75_CMDAT7__FUNC_I2S3_DO>;
+		};
+	};
+
+	aud_dmic_pins: audiodmic-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_117_DMIC0_CLK__FUNC_DMIC0_CLK>,
+				 <MT8365_PIN_118_DMIC0_DAT0__FUNC_DMIC0_DAT0>,
+				 <MT8365_PIN_119_DMIC0_DAT1__FUNC_DMIC0_DAT1>;
+		};
+	};
+
+	aud_miso_off_pins: misooff-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_53_AUD_CLK_MISO__FUNC_GPIO53>,
+				 <MT8365_PIN_54_AUD_SYNC_MISO__FUNC_GPIO54>,
+				 <MT8365_PIN_55_AUD_DAT_MISO0__FUNC_GPIO55>,
+				 <MT8365_PIN_56_AUD_DAT_MISO1__FUNC_GPIO56>;
+			input-enable;
+			bias-pull-down;
+			drive-strength = <2>;
+		};
+	};
+
+	aud_miso_on_pins: misoon-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_53_AUD_CLK_MISO__FUNC_AUD_CLK_MISO>,
+				 <MT8365_PIN_54_AUD_SYNC_MISO__FUNC_AUD_SYNC_MISO>,
+				 <MT8365_PIN_55_AUD_DAT_MISO0__FUNC_AUD_DAT_MISO0>,
+				 <MT8365_PIN_56_AUD_DAT_MISO1__FUNC_AUD_DAT_MISO1>;
+			drive-strength = <6>;
+		};
+	};
+
+	aud_mosi_off_pins: mosioff-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_49_AUD_CLK_MOSI__FUNC_GPIO49>,
+				 <MT8365_PIN_50_AUD_SYNC_MOSI__FUNC_GPIO50>,
+				 <MT8365_PIN_51_AUD_DAT_MOSI0__FUNC_GPIO51>,
+				 <MT8365_PIN_52_AUD_DAT_MOSI1__FUNC_GPIO52>;
+			input-enable;
+			bias-pull-down;
+			drive-strength = <2>;
+		};
+	};
+
+	aud_mosi_on_pins: mosion-pins {
+		clk-dat-pins {
+			pinmux = <MT8365_PIN_49_AUD_CLK_MOSI__FUNC_AUD_CLK_MOSI>,
+				 <MT8365_PIN_50_AUD_SYNC_MOSI__FUNC_AUD_SYNC_MOSI>,
+				 <MT8365_PIN_51_AUD_DAT_MOSI0__FUNC_AUD_DAT_MOSI0>,
+				 <MT8365_PIN_52_AUD_DAT_MOSI1__FUNC_AUD_DAT_MOSI1>;
+			drive-strength = <6>;
+		};
+	};
+
 	ethernet_pins: ethernet-pins {
 		phy_reset_pins {
 			pinmux = <MT8365_PIN_133_TDM_TX_DATA1__FUNC_GPIO133>;

-- 
2.25.1


