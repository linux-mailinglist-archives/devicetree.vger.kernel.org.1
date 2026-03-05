Return-Path: <devicetree+bounces-271726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCjLG8TvqWlGIQEAu9opvQ
	(envelope-from <devicetree+bounces-271726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6532185E0
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDF99306CEF5
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 21:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0CF34AAFB;
	Thu,  5 Mar 2026 21:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XJz35j82"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD7E34A78C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 21:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744631; cv=none; b=mqlaA6gbNT+0hVJmFn30Jic+XfAWNB2+eJP+dyJQHfYLhL1+IjQ+s+StknvJgYInb4AwAS4QAfeQnB/fDgyXmTNc+fNdy1wF9k/zbP2ydpuQxxbmzn8NYyPmw2rY9Qvp7utm2dP4vG5lv2/H1fUphkvtANuooJL8gGQEjRB2A1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744631; c=relaxed/simple;
	bh=bGcKPNGpFeozhudmOX3FNcg6vxKf4h+qA1CKaUdGf+U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K/3rRUtMyx57hg+Ou/Nmmq49tvkP5p2vzqpvwXJ49YuMZ7HTjtpZoMXJX1lszRhkY0sLINjPX01vYgb7kOFSQW3JI0QA8dEnSkgJNkA4Ap3Wl/OoV3/3CKdC9xad0YuGu7f3JXlroxqiTa5K/kLMQ2qdz9lT/n1GaCVDqdZi45c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XJz35j82; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-46391f4c1f9so5341201b6e.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772744629; x=1773349429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z+oK1HC6mjzut6Jep3O4wnFAo1gcFVDix5BbI9g78wE=;
        b=XJz35j82xQP+ksCQtDADw+8vygSKAqE5RbjxiVRo5o7v39o+sKA2cVfDh/E/hEYxDl
         uPPj8UTIzz7e9b7p5nv/Ovkb61gw772G9SIl6UIHA+R7yusaIQAsA1j+aoPCm8Bmgg+b
         jHpqJ/e39PFdhCuGskxdbBR0YJ+zkp6fCT1J640yX08ibJyOimy51aTIrop9AZm95/Yx
         z50gKYgIt893fPaX36V9c4zPjEF48o9hsRKd+bs3RoOyiCGBIDmtjgwGYHHW65tZS6Kh
         KEnXU99VR9GbTOux3rbdcewCZVrz+EE7egfa7jGoSdFFTGu6xMaAVuj2VgHABzxdQMjv
         slpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772744629; x=1773349429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z+oK1HC6mjzut6Jep3O4wnFAo1gcFVDix5BbI9g78wE=;
        b=Ns4y/1j0tg+4qyb/KdBcYNlnI58/Mb3Evu3jGY4A4lRhqah/5TrimswDR/OlXTBPxo
         S6OnbxvvSA3PbtXsNR/D1gaMiZ2PszApO9tDThIeDSY6ju5Y4dmndHcBK5djmj6qwS6d
         GXOhHWz1r+3VQdbn/dFKduYOXCWCSWGoAKO5eR8Y5TbdiLp6ARpEnhx3qBXlMP07T2F9
         CYBfeJzix7fSr5q+s1CFHQk0wX6nqQFJmtTQP1a8ID6a33WYr3W+4RTyXCm+VSKenNHp
         mgQPP5qxVsk6080WqTzkrPuVWafGT5aZuILRhBWcCZ51OlJO9/mTMWbiizBw4UoUZmva
         OJbA==
X-Gm-Message-State: AOJu0YxSG2vq1PB9HOxP/JTqgOZPsh0BoyTFEeCUrGShofh07vm7PrLu
	7piyvIvuBTJXlsMfpTmzeO8VB5fLLNfOp1T3WhOTB/huwIDB3EDRjDQk+1A68KvyZbE=
X-Gm-Gg: ATEYQzzVCBxZZHIs9QHJW4wy3HBybJgBPKqVDoxXxGseMXpH5OyFmvu+tv3fhxxX/UI
	KI0GOTmIXV4ZVnyemSNUBQouFF26cM+P62WrWk5nRuotEl1Xg8cmuzv54uwFmjWR7KWT+ROhPKy
	/2Sg9cO5Ctn5Jx87ZWHZCBVSAOu53RPT8Wr80rI9RHK7P9TKyIoOyO2rIeAmpTartufJ/LH/ZXT
	BdPwkul5/SLmTjP0/U1ygLi4fVKrBYM5NBq+QEMs2Vweigs/vBk50gQToqT+iOoaprpKkdrO2pK
	QqiGzR2zE8NUHKZU0tSILrBxGFIZ+Q21+zGf55tfcVU/3F+kFPgBiD8edIP98lcLg4J1UdpV6su
	51AaFubwu23BoJuHIhY7Y4B3Wz769KQmM2BmlzQ94a+N7y3PzDKW9ayDMt6Br0Wd2jV69nFDZak
	1UC8Dfb5pV8zZlFPck6u2+shyyltFO
X-Received: by 2002:a05:6808:1245:b0:45c:83dc:fab with SMTP id 5614622812f47-4651ac9d13emr3575899b6e.40.1772744629200;
        Thu, 05 Mar 2026 13:03:49 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:874e:e775:4f67:b3a5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-464bb5d0a8csm13729227b6e.14.2026.03.05.13.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 13:03:48 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 05 Mar 2026 15:03:16 -0600
Subject: [PATCH v2 1/3] arm: dts: mediatek: mt7623: fix pinctrl child node
 names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-mtk-fix-mt7623-pinctl-name-v2-1-a68854a51065@baylibre.com>
References: <20260305-mtk-fix-mt7623-pinctl-name-v2-0-a68854a51065@baylibre.com>
In-Reply-To: <20260305-mtk-fix-mt7623-pinctl-name-v2-0-a68854a51065@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6122; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=bGcKPNGpFeozhudmOX3FNcg6vxKf4h+qA1CKaUdGf+U=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpqe+d7EE4rhdk4vjfQsOiPJGSMVnkLsNCSHlEp
 YFUaYvHIxKJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaanvnQAKCRDCzCAB/wGP
 wASKB/4h28IF0/kyGOSl3y9PbwIuXm2RmgroWH8anCAiU7ebKlnD1eqDy+CS39rt05DKxbvePe8
 0h4Of+toERsemkKi0uzfMg60PnsXSIoN0WTRmcnreybKsPbX/STQXxoP2Zk2xYo/otY95qxiUsQ
 UtMs94iw/pbyPS2cr9RggZY2JUzi/notP92My0Z9R6zvBdGvhJhRpGAkbWMvSvvNhKpjJtTqxYU
 sC8xpeqoXShPsA4MLADbNZASU7O20B/WZL2lnF7i7mfhFvW1V3XWf0kxCv6h8vnCaMSroWJECkG
 bk39848EWFzcJGOZmtjFB0a5EKTzTA/iTfSe6GofdQD6s9bv
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Queue-Id: 0F6532185E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271726-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,1c000000:email]
X-Rspamd-Action: no action

Fix the pinctrl child node names to adhere to the bindings. The main pin
node is supposed to be named like "something-pins" and the pinmux node
named like "pins-something".

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 62 +++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index 71ac2b94c6ba..f34f60cde594 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -1017,14 +1017,14 @@ bdpsys: syscon@1c000000 {
 };
 
 &pio {
-	cir_pins_a:cir-default {
+	cir_pins_a: cir-default-pins {
 		pins-cir {
 			pinmux = <MT7623_PIN_46_IR_FUNC_IR>;
 			bias-disable;
 		};
 	};
 
-	i2c0_pins_a: i2c0-default {
+	i2c0_pins_a: i2c0-default-pins {
 		pins-i2c0 {
 			pinmux = <MT7623_PIN_75_SDA0_FUNC_SDA0>,
 				 <MT7623_PIN_76_SCL0_FUNC_SCL0>;
@@ -1032,40 +1032,40 @@ pins-i2c0 {
 		};
 	};
 
-	i2c1_pins_a: i2c1-default {
-		pin-i2c1 {
+	i2c1_pins_a: i2c1-default-pins {
+		pins-i2c1 {
 			pinmux = <MT7623_PIN_57_SDA1_FUNC_SDA1>,
 				 <MT7623_PIN_58_SCL1_FUNC_SCL1>;
 			bias-disable;
 		};
 	};
 
-	i2c1_pins_b: i2c1-alt {
-		pin-i2c1 {
+	i2c1_pins_b: i2c1-alt-pins {
+		pins-i2c1 {
 			pinmux = <MT7623_PIN_242_URTS2_FUNC_SCL1>,
 				 <MT7623_PIN_243_UCTS2_FUNC_SDA1>;
 			bias-disable;
 		};
 	};
 
-	i2c2_pins_a: i2c2-default {
-		pin-i2c2 {
+	i2c2_pins_a: i2c2-default-pins {
+		pins-i2c2 {
 			pinmux = <MT7623_PIN_77_SDA2_FUNC_SDA2>,
 				 <MT7623_PIN_78_SCL2_FUNC_SCL2>;
 			bias-disable;
 		};
 	};
 
-	i2c2_pins_b: i2c2-alt {
-		pin-i2c2 {
+	i2c2_pins_b: i2c2-alt-pins {
+		pins-i2c2 {
 			pinmux = <MT7623_PIN_122_GPIO122_FUNC_SDA2>,
 				 <MT7623_PIN_123_HTPLG_FUNC_SCL2>;
 			bias-disable;
 		};
 	};
 
-	i2s0_pins_a: i2s0-default {
-		pin-i2s0 {
+	i2s0_pins_a: i2s0-default-pins {
+		pins-i2s0 {
 			pinmux = <MT7623_PIN_49_I2S0_DATA_FUNC_I2S0_DATA>,
 				 <MT7623_PIN_72_I2S0_DATA_IN_FUNC_I2S0_DATA_IN>,
 				 <MT7623_PIN_73_I2S0_LRCK_FUNC_I2S0_LRCK>,
@@ -1076,8 +1076,8 @@ pin-i2s0 {
 		};
 	};
 
-	i2s1_pins_a: i2s1-default {
-		pin-i2s1 {
+	i2s1_pins_a: i2s1-default-pins {
+		pins-i2s1 {
 			pinmux = <MT7623_PIN_33_I2S1_DATA_FUNC_I2S1_DATA>,
 				 <MT7623_PIN_34_I2S1_DATA_IN_FUNC_I2S1_DATA_IN>,
 				 <MT7623_PIN_35_I2S1_BCK_FUNC_I2S1_BCK>,
@@ -1088,7 +1088,7 @@ pin-i2s1 {
 		};
 	};
 
-	key_pins_a: keys-alt {
+	key_pins_a: keys-alt-pins {
 		pins-keys {
 			pinmux = <MT7623_PIN_256_GPIO256_FUNC_GPIO256>,
 				 <MT7623_PIN_257_GPIO257_FUNC_GPIO257> ;
@@ -1096,7 +1096,7 @@ pins-keys {
 		};
 	};
 
-	led_pins_a: leds-alt {
+	led_pins_a: leds-alt-pins {
 		pins-leds {
 			pinmux = <MT7623_PIN_239_EXT_SDIO0_FUNC_GPIO239>,
 				 <MT7623_PIN_240_EXT_XCS_FUNC_GPIO240>,
@@ -1104,7 +1104,7 @@ pins-leds {
 		};
 	};
 
-	mmc0_pins_default: mmc0default {
+	mmc0_pins_default: mmc0-default-pins {
 		pins-cmd-dat {
 			pinmux = <MT7623_PIN_111_MSDC0_DAT7_FUNC_MSDC0_DAT7>,
 				 <MT7623_PIN_112_MSDC0_DAT6_FUNC_MSDC0_DAT6>,
@@ -1130,7 +1130,7 @@ pins-rst {
 		};
 	};
 
-	mmc0_pins_uhs: mmc0 {
+	mmc0_pins_uhs: mmc0-uhs-pins {
 		pins-cmd-dat {
 			pinmux = <MT7623_PIN_111_MSDC0_DAT7_FUNC_MSDC0_DAT7>,
 				 <MT7623_PIN_112_MSDC0_DAT6_FUNC_MSDC0_DAT6>,
@@ -1158,7 +1158,7 @@ pins-rst {
 		};
 	};
 
-	mmc1_pins_default: mmc1default {
+	mmc1_pins_default: mmc1-default-pins {
 		pins-cmd-dat {
 			pinmux = <MT7623_PIN_107_MSDC1_DAT0_FUNC_MSDC1_DAT0>,
 				 <MT7623_PIN_108_MSDC1_DAT1_FUNC_MSDC1_DAT1>,
@@ -1188,7 +1188,7 @@ pins-insert {
 		};
 	};
 
-	mmc1_pins_uhs: mmc1 {
+	mmc1_pins_uhs: mmc1-uhs-pins {
 		pins-cmd-dat {
 			pinmux = <MT7623_PIN_107_MSDC1_DAT0_FUNC_MSDC1_DAT0>,
 				 <MT7623_PIN_108_MSDC1_DAT1_FUNC_MSDC1_DAT1>,
@@ -1207,7 +1207,7 @@ pins-clk {
 		};
 	};
 
-	nand_pins_default: nanddefault {
+	nand_pins_default: nand-default-pins {
 		pins-ale {
 			pinmux = <MT7623_PIN_116_MSDC0_CMD_FUNC_NALE>;
 			drive-strength = <8>;
@@ -1236,15 +1236,15 @@ pins-we {
 		};
 	};
 
-	pcie_default: pcie_pin_default {
-		pins_cmd_dat {
+	pcie_default: pcie-default-pins {
+		pins-cmd-dat {
 			pinmux = <MT7623_PIN_208_AUD_EXT_CK1_FUNC_PCIE0_PERST_N>,
 				 <MT7623_PIN_209_AUD_EXT_CK2_FUNC_PCIE1_PERST_N>;
 			bias-disable;
 		};
 	};
 
-	pwm_pins_a: pwm-default {
+	pwm_pins_a: pwm-default-pins {
 		pins-pwm {
 			pinmux = <MT7623_PIN_203_PWM0_FUNC_PWM0>,
 				 <MT7623_PIN_204_PWM1_FUNC_PWM1>,
@@ -1254,7 +1254,7 @@ pins-pwm {
 		};
 	};
 
-	spi0_pins_a: spi0-default {
+	spi0_pins_a: spi0-default-pins {
 		pins-spi {
 			pinmux = <MT7623_PIN_53_SPI0_CSN_FUNC_SPI0_CS>,
 				<MT7623_PIN_54_SPI0_CK_FUNC_SPI0_CK>,
@@ -1264,7 +1264,7 @@ pins-spi {
 		};
 	};
 
-	spi1_pins_a: spi1-default {
+	spi1_pins_a: spi1-default-pins {
 		pins-spi {
 			pinmux = <MT7623_PIN_7_SPI1_CSN_FUNC_SPI1_CS>,
 				<MT7623_PIN_199_SPI1_CK_FUNC_SPI1_CK>,
@@ -1273,7 +1273,7 @@ pins-spi {
 		};
 	};
 
-	spi2_pins_a: spi2-default {
+	spi2_pins_a: spi2-default-pins {
 		pins-spi {
 			pinmux = <MT7623_PIN_101_SPI2_CSN_FUNC_SPI2_CS>,
 				 <MT7623_PIN_104_SPI2_CK_FUNC_SPI2_CK>,
@@ -1282,28 +1282,28 @@ pins-spi {
 		};
 	};
 
-	uart0_pins_a: uart0-default {
+	uart0_pins_a: uart0-default-pins {
 		pins-dat {
 			pinmux = <MT7623_PIN_79_URXD0_FUNC_URXD0>,
 				 <MT7623_PIN_80_UTXD0_FUNC_UTXD0>;
 		};
 	};
 
-	uart1_pins_a: uart1-default {
+	uart1_pins_a: uart1-default-pins {
 		pins-dat {
 			pinmux = <MT7623_PIN_81_URXD1_FUNC_URXD1>,
 				 <MT7623_PIN_82_UTXD1_FUNC_UTXD1>;
 		};
 	};
 
-	uart2_pins_a: uart2-default {
+	uart2_pins_a: uart2-default-pins {
 		pins-dat {
 			pinmux = <MT7623_PIN_14_GPIO14_FUNC_URXD2>,
 				 <MT7623_PIN_15_GPIO15_FUNC_UTXD2>;
 		};
 	};
 
-	uart2_pins_b: uart2-alt {
+	uart2_pins_b: uart2-alt-pins {
 		pins-dat {
 			pinmux = <MT7623_PIN_200_URXD2_FUNC_URXD2>,
 				 <MT7623_PIN_201_UTXD2_FUNC_UTXD2>;

-- 
2.43.0


