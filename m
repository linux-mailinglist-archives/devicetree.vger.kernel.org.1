Return-Path: <devicetree+bounces-68643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F35518CCE89
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A09F9282DE3
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6AC14E2E8;
	Thu, 23 May 2024 08:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jXQ8JlEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAA614D280
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716453790; cv=none; b=UWE7QkqGBzFc4+RLwXAOgq86LxnLbTgNv4CmRuQqcbADU8fwGNeH8ro8n/SWNVe8aapXFZsW5jMu7azr7kKAyLFDrufn6DcxQcE5V0stht+AVYwuy3sCOuxpOav7z7GZHWgmYPPC/ut+27eXMIxeJKwhIhfCK5+dTCgc6aS6Kos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716453790; c=relaxed/simple;
	bh=UuxD5pLm61p5B/k8KPZWLUQ0/L/5Kc/UQPpFC3tu7EE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RoSkLhIdixfb2+jjGptb/GGDUsJHQZR20KKxiupV7ahgWWrWPBqSen/dAPpRWeOQNHpUBdVcFQVQoRO4sy2CTrTg4qzFDHZZua1JjWsrnS49Pjsk3wgI54HEoU6ZIGM9dFrWyldeFBr61ZT4aMoonf3pK61sKVzRCjsBv7uPrH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jXQ8JlEa; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4202ca70270so20853705e9.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 01:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716453786; x=1717058586; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qj6N1XCYi9OkzD42tPPAcjKt9khuBDH5NgwwQe/Q8Ps=;
        b=jXQ8JlEaIBQiS6iBjKCAEKCZbmxV/D6Ocj4YzNLz8QZGdAh+txxCulsfh2JiGz5rb7
         riPfQHmzbQH0K9MzkSly5/gSFouFR8aVPKRwGt/l0aI6XXLVGbUo16TZ/tHyuBDKaPXc
         PGS8NQa0tktrXwDp3KSgSo7ipCidohejuVP7s0qkAxiMJu+LB5O93NExOefvboNjEMrY
         VA43P1Ititaa+ruBfX3sH1w/pEQ0+UM4nvFMQU2lNcZ59fWzJQBduEqtsQTfhPt7umZy
         qEhU/BPSsws0TGOlaFB3xXamjI1a4dkzQLv4EyAkw+emCWRnCavhu1IxX0pFbvC5OEql
         GFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716453786; x=1717058586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qj6N1XCYi9OkzD42tPPAcjKt9khuBDH5NgwwQe/Q8Ps=;
        b=Cy3pKw12VfJbVJWPFhbeQewktqyYxFSV9XDkgvS7ddRFam/MaAR3IcXOhkuH+By+Sc
         MYeumXlOXeJghGYUQLLTDwPeSoxVdQGJM0H7Kjt+saei6JE28xm7JxzD6nBMpMYxmD2E
         xeFW67XtrQmm7CLvkNQaJi/6YvzkXKetJLH3sA0GmvExidVa2EwtEwMYa0lM+gh3X6HM
         i+zROkWsHmQYfAaYNg2JOSF3hzI0JWiFBd+lX68woGoZkVTgtQO3L10ju4YxKnCSlxwO
         JiPs6uLWqBC50JuYJmwUm3rTdGn7uVsrU9bOQ2JbVY4p9WiDAYkeOGiwdaF+ljl6fsrk
         cyCg==
X-Forwarded-Encrypted: i=1; AJvYcCXKLw7qRDRoSuv3uiPQIUxNXLrlhtrAiPaFiD+gUrgWxQv9i1cWEpNS7qWmnfCh5V2i8CrDWs1jCNvHd+JB0ONM+4NYqKRjeJ4fSQ==
X-Gm-Message-State: AOJu0YwARFmOBRjahYXe5rQBivKXgrQszHkZqrwFpx/wo/Lp6rccs3qI
	ih7pFhGAi9b2gcyW162vhnaVnTKYg5KkaVNfovsskhrlDphQhwPIgwXnOKWAWOM=
X-Google-Smtp-Source: AGHT+IFMxan85JMvlhZzNK1inKnN/olhsGGF3fE8oyneffHwEACsul7Buo/M9+QQDSM/sWz6EKTdlQ==
X-Received: by 2002:a05:600c:21d5:b0:420:2cbe:7f16 with SMTP id 5b1f17b1804b1-420fd3726d5mr44037415e9.34.1716453786677;
        Thu, 23 May 2024 01:43:06 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42100f3e03asm18556645e9.17.2024.05.23.01.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 01:43:06 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 10:42:45 +0200
Subject: [PATCH v5 16/16] arm64: dts: mediatek: add audio support for
 mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240226-audio-i350-v5-16-e7e2569df481@baylibre.com>
References: <20240226-audio-i350-v5-0-e7e2569df481@baylibre.com>
In-Reply-To: <20240226-audio-i350-v5-0-e7e2569df481@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3674; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=UuxD5pLm61p5B/k8KPZWLUQ0/L/5Kc/UQPpFC3tu7EE=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTwGAyKEOwovbtoYcOuUP+1kNqMlqBHxH+fBJIpyW
 ZwNDuz2JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk8BgAAKCRArRkmdfjHURegwD/
 9pP2p6C/mj0ZjZa0DuLTwTiFr0fCqnc53uXDOszeVilSx9V0w78yKnj0jmYLzMIeD795tuMlag5dwI
 aXHddglxL1jl8eZLslBYLDB60NEsBTzaw1ZCoMwEyAQ/Jjjs+QROVQL5KkoxNGRRWvx/D+fifhpwKy
 A26wfqqJroPS22VzW5IExhKlbtzWhXaXqABt5RWDQTc7OiQ9W/97F6gtGrxbK1sjD+4j3PPiTnpdIA
 WQL0k7JUDhG6TqbY8HUwhbQRMas1bl0nCAA3mwc0RtGtQxdVTDEg6T6zpMogA2JxsKTdOaT/B+QkzH
 YBbmE1/gcL/ptpvG9Hsma1Im7JoEPDpWjAJ/6jaiPvNp0ANU01fsbxz9hwlvKTPcQeug5bSp+8qxcL
 k2M88IiQiGAraDEAcATnArTpe+FHHhGJJ4O8BBda+jbmdvbTDcbYsBBViTvppuN+FTuUIal7XNHH+O
 RmfW6a4PLQEDwwNa5OjD+yRh9win0SJeCVmQ1uSqtRrhc8JeJ4WE8OPDzEQPOtTbcHzUjA3oXTBx/G
 0tthCBA0/+lwhPVFXrq/MIHOBYNJVnPRiprUBiBjBvnrjzhrmDvU5qllQ1gneBokm+MDse+e/G9q40
 jGbeydbNzcr4b9XzMzt1sO8g8zZ8o9AS7/7Sn7jE6DcHgNByoAaIN4jTayag==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add the sound node which is linked to the MT8365 SoC AFE and
the MT6357 audio codec.

Update the file header.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 89 +++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index 50cbaefa1a99..1d5457f9a4c2 100644
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
@@ -178,9 +201,75 @@ &mt6357_pmic {
 	interrupts-extended = <&pio 145 IRQ_TYPE_LEVEL_HIGH>;
 	interrupt-controller;
 	#interrupt-cells = <2>;
+	vaud28-supply = <&mt6357_vaud28_reg>;
+	audio-codec {
+		mediatek,micbias0-microvolt = <1900000>;
+		mediatek,micbias1-microvolt = <1700000>;
+	};
 };
 
 &pio {
+	aud_default_pins: audiodefault-pins {
+		pins {
+			pinmux = <MT8365_PIN_72_CMDAT4__FUNC_I2S3_BCK>,
+				 <MT8365_PIN_73_CMDAT5__FUNC_I2S3_LRCK>,
+				 <MT8365_PIN_74_CMDAT6__FUNC_I2S3_MCK>,
+				 <MT8365_PIN_75_CMDAT7__FUNC_I2S3_DO>;
+		};
+	};
+
+	aud_dmic_pins: audiodmic-pins {
+		pins {
+			pinmux = <MT8365_PIN_117_DMIC0_CLK__FUNC_DMIC0_CLK>,
+				 <MT8365_PIN_118_DMIC0_DAT0__FUNC_DMIC0_DAT0>,
+				 <MT8365_PIN_119_DMIC0_DAT1__FUNC_DMIC0_DAT1>;
+		};
+	};
+
+	aud_miso_off_pins: misooff-pins {
+		pins {
+			pinmux = <MT8365_PIN_53_AUD_CLK_MISO__FUNC_GPIO53>,
+				 <MT8365_PIN_54_AUD_SYNC_MISO__FUNC_GPIO54>,
+				 <MT8365_PIN_55_AUD_DAT_MISO0__FUNC_GPIO55>,
+				 <MT8365_PIN_56_AUD_DAT_MISO1__FUNC_GPIO56>;
+			input-enable;
+			bias-pull-down;
+			drive-strength = <MTK_DRIVE_2mA>;
+		};
+	};
+
+	aud_miso_on_pins: misoon-pins {
+		pins {
+			pinmux = <MT8365_PIN_53_AUD_CLK_MISO__FUNC_AUD_CLK_MISO>,
+				 <MT8365_PIN_54_AUD_SYNC_MISO__FUNC_AUD_SYNC_MISO>,
+				 <MT8365_PIN_55_AUD_DAT_MISO0__FUNC_AUD_DAT_MISO0>,
+				 <MT8365_PIN_56_AUD_DAT_MISO1__FUNC_AUD_DAT_MISO1>;
+			drive-strength = <MTK_DRIVE_6mA>;
+		};
+	};
+
+	aud_mosi_off_pins: mosioff-pins {
+		pins {
+			pinmux = <MT8365_PIN_49_AUD_CLK_MOSI__FUNC_GPIO49>,
+				 <MT8365_PIN_50_AUD_SYNC_MOSI__FUNC_GPIO50>,
+				 <MT8365_PIN_51_AUD_DAT_MOSI0__FUNC_GPIO51>,
+				 <MT8365_PIN_52_AUD_DAT_MOSI1__FUNC_GPIO52>;
+			input-enable;
+			bias-pull-down;
+			drive-strength = <MTK_DRIVE_2mA>;
+		};
+	};
+
+	aud_mosi_on_pins: mosion-pins {
+		pins {
+			pinmux = <MT8365_PIN_49_AUD_CLK_MOSI__FUNC_AUD_CLK_MOSI>,
+				 <MT8365_PIN_50_AUD_SYNC_MOSI__FUNC_AUD_SYNC_MOSI>,
+				 <MT8365_PIN_51_AUD_DAT_MOSI0__FUNC_AUD_DAT_MOSI0>,
+				 <MT8365_PIN_52_AUD_DAT_MOSI1__FUNC_AUD_DAT_MOSI1>;
+			drive-strength = <MTK_DRIVE_6mA>;
+		};
+	};
+
 	ethernet_pins: ethernet-pins {
 		phy_reset_pins {
 			pinmux = <MT8365_PIN_133_TDM_TX_DATA1__FUNC_GPIO133>;

-- 
2.25.1


