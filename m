Return-Path: <devicetree+bounces-72186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6168FB162
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F1FE1F23729
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DE8145A06;
	Tue,  4 Jun 2024 11:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FU2LgjVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F5D131182
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 11:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717501806; cv=none; b=BHjnaQYKhipDjydO077Bk7Cf+IxEuxaA2v/P4TsranXFfM9XivUYAqLxyhSs25MsKm1H44RjTTeZ6srdW3n3p4O+5dHiAEziiU+6D5khGDgqzWBCxrBaGcMHFXd8XgYjku+MltccIXdiLbhWsER27Ex6FCKwG1/ly20j4jrKuaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717501806; c=relaxed/simple;
	bh=I7ulkF60SFZa16ex+a7CX6+egcbFvAy9jEgkyJifxeU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=atq58Sj/tZho+oc0xll72Gg6hQXUGfS49vhqLqFk/niTOikpOtxu6P6aYwtM42Zu/OVuZscXfDBU9JR/KrOQtA+KtlP12DBtpIo62cGy3+hE+huwVDktEPly/3B0lVqcPPikay1Kk+4AqUd31t6MMZ5O4t12wn7LJCdMmcVV3mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FU2LgjVw; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35dc04717a1so4050431f8f.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 04:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717501803; x=1718106603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z/X3kr6zp5onHHy+RzdXQB4N2JDza5U07SfYxCf10Fs=;
        b=FU2LgjVw+vLe+ZoPjZuv2UcUy6WLJUme9grIsGOvP1B9k+PdhQ4aWjmWEXUfnNR/Ag
         kvKjqNrRldaAaEfBXgYZMO5nEiDwnMyOT6hPqmf9UjXvleG7QqOZR/c0D1IZbbx95wXu
         /Stcb8WXtWnWTUmCvUVWAg/v5Ef+y+CRNFPOkRTUsCAtD/OBV8/Ux0fdJS/rV/NJLpv6
         DSH0xU0q+KrkBNUL5J51AJh4dnxRubDu0SOVx/2Tn84rQF8R2EisDS+VhKHWCu45wrkl
         VMA1GYjseHBdRfgjN1l4FTaLHykcUlwhl7OirLtBkuhfjiORF8xk+PtAt/tlrVkeFsZO
         WfRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717501803; x=1718106603;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/X3kr6zp5onHHy+RzdXQB4N2JDza5U07SfYxCf10Fs=;
        b=M77D/YS5MnTaEhQrNUQY+91xBjcMQFL52+glFqlC4m/cXPNxLCCDDsOOfYMxVbmE9b
         1K+8IiEzOM8E6LhG8V1ghQXgtODjON98ByBC+3I+EurHp7ErDdtWj6fejvlwhGwKe6vi
         n6SRJdyOiUgZeyc4KtyQooN15czhnqbfHyYqXJtcUWasSWe2Cc5J7hw1DD6seMGfCdRs
         bMx687WmI5tKMcg4lCKv3Ivl3xJdrt6sK2fAg5od9OIO1A/mEWvEVYYTMkCvlGwCEnQm
         f4v06M6YiPQnT40J7GL+5iWfr7MhgnXJpDJnNlm1YZ1eMU5BvjYWOY7ETrA0i2plGIf9
         0Vmg==
X-Forwarded-Encrypted: i=1; AJvYcCVu7yGWgzocd3rXAbPNIj0jEdtwI7Xp51nlYp/CEV6XGNTySZCAzc+dt8agWWMqbJXNDMI37hQ5LQ23Ev4wptIPrM/zV26CYapMcQ==
X-Gm-Message-State: AOJu0YwHBOizVqV8x7OFt6Fdiz6py99ROQ+VyiAc1q+KskgBxUbGH8LX
	SIjvtSh+aqjWVIqQ+/JD5C12EH7yTS8zfgDkdRaOI7lGgWG7iREMnOz1Xqe79Gc=
X-Google-Smtp-Source: AGHT+IHIiFlKvt34fx8Lvne6vTjuV1cmTgdNMuf6yJ2EPxDOhz1sfI2UpshRFQJplcELqwu9bOjrIw==
X-Received: by 2002:adf:fd07:0:b0:354:fd31:578d with SMTP id ffacd0b85a97d-35e0f32e306mr9014270f8f.61.1717501802700;
        Tue, 04 Jun 2024 04:50:02 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35e5bb909d1sm5107822f8f.88.2024.06.04.04.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 04:50:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Conor Dooley <conor@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: microchip: sparx5_pcb134: move non-MMIO nodes out of axi
Date: Tue,  4 Jun 2024 13:49:48 +0200
Message-ID: <20240604114949.165223-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

simple-bus nodes, so the "axi" node, should not have non-MMIO children
as pointed out by simple-bus schema dtbs_check:

  sparx5_pcb134.dtb: axi@600000000: i2c-mux-0: {'compatible': ... should not be valid under {'type': 'object'}
    from schema $id: http://devicetree.org/schemas/simple-bus.yaml#

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/CAL_Jsq+PtL3HTKkA_gwTjb_i1mFZ+wW+qwin34HMYmwW7oNDFw@mail.gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../dts/microchip/sparx5_pcb134_board.dtsi    | 372 +++++++++---------
 1 file changed, 194 insertions(+), 178 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
index 2c5574734c9e..e60acc74e822 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -13,6 +13,20 @@ gpio-restart {
 		priority = <200>;
 	};
 
+	i2c0_imux: i2c-mux-0 {
+		compatible = "i2c-mux-pinctrl";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-parent = <&i2c0>;
+	};
+
+	i2c0_emux: i2c-mux-1 {
+		compatible = "i2c-mux-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-parent = <&i2c0>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		led-0 {
@@ -248,6 +262,186 @@ led-47 {
 			default-state = "off";
 		};
 	};
+
+	sfp_eth12: sfp-eth12 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp1>;
+		tx-disable-gpios = <&sgpio_out2 11 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 11 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 11 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 12 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth13: sfp-eth13 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp2>;
+		tx-disable-gpios = <&sgpio_out2 12 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 12 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 12 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 13 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth14: sfp-eth14 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp3>;
+		tx-disable-gpios = <&sgpio_out2 13 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 13 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 13 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 14 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth15: sfp-eth15 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp4>;
+		tx-disable-gpios = <&sgpio_out2 14 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 14 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 14 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 15 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth48: sfp-eth48 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp5>;
+		tx-disable-gpios = <&sgpio_out2 15 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 15 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 15 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 16 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth49: sfp-eth49 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp6>;
+		tx-disable-gpios = <&sgpio_out2 16 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 16 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 16 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 17 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth50: sfp-eth50 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp7>;
+		tx-disable-gpios = <&sgpio_out2 17 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 17 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 17 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 18 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth51: sfp-eth51 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp8>;
+		tx-disable-gpios = <&sgpio_out2 18 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 18 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 18 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 19 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth52: sfp-eth52 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp9>;
+		tx-disable-gpios = <&sgpio_out2 19 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 19 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 19 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 20 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth53: sfp-eth53 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp10>;
+		tx-disable-gpios = <&sgpio_out2 20 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 20 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 20 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 21 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth54: sfp-eth54 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp11>;
+		tx-disable-gpios = <&sgpio_out2 21 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 21 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 21 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 22 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth55: sfp-eth55 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp12>;
+		tx-disable-gpios = <&sgpio_out2 22 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 22 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 22 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 23 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth56: sfp-eth56 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp13>;
+		tx-disable-gpios = <&sgpio_out2 23 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 23 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 23 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 24 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth57: sfp-eth57 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp14>;
+		tx-disable-gpios = <&sgpio_out2 24 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 24 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 24 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 25 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth58: sfp-eth58 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp15>;
+		tx-disable-gpios = <&sgpio_out2 25 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 25 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 25 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 26 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth59: sfp-eth59 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp16>;
+		tx-disable-gpios = <&sgpio_out2 26 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 26 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 26 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 27 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth60: sfp-eth60 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp17>;
+		tx-disable-gpios = <&sgpio_out2 27 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 27 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 27 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 28 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth61: sfp-eth61 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp18>;
+		tx-disable-gpios = <&sgpio_out2 28 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 28 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 28 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 29 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth62: sfp-eth62 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp19>;
+		tx-disable-gpios = <&sgpio_out2 29 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 29 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 29 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 30 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	sfp_eth63: sfp-eth63 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp20>;
+		tx-disable-gpios = <&sgpio_out2 30 1 GPIO_ACTIVE_LOW>;
+		los-gpios = <&sgpio_in2 30 1 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&sgpio_in2 30 2 GPIO_ACTIVE_LOW>;
+		tx-fault-gpios = <&sgpio_in2 31 0 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &sgpio0 {
@@ -385,21 +579,6 @@ i2cmux_11: i2cmux-11-pins {
 	};
 };
 
-&axi {
-	i2c0_imux: i2c-mux-0 {
-		compatible = "i2c-mux-pinctrl";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		i2c-parent = <&i2c0>;
-	};
-	i2c0_emux: i2c-mux-1 {
-		compatible = "i2c-mux-gpio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		i2c-parent = <&i2c0>;
-	};
-};
-
 &i2c0_imux {
 	pinctrl-names =
 		"i2c_sfp1", "i2c_sfp2", "i2c_sfp3", "i2c_sfp4",
@@ -535,169 +714,6 @@ phy64: ethernet-phy@64 {
 	};
 };
 
-&axi {
-	sfp_eth12: sfp-eth12 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp1>;
-		tx-disable-gpios = <&sgpio_out2 11 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 11 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 11 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 12 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth13: sfp-eth13 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp2>;
-		tx-disable-gpios = <&sgpio_out2 12 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 12 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 12 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 13 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth14: sfp-eth14 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp3>;
-		tx-disable-gpios = <&sgpio_out2 13 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 13 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 13 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 14 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth15: sfp-eth15 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp4>;
-		tx-disable-gpios = <&sgpio_out2 14 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 14 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 14 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 15 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth48: sfp-eth48 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp5>;
-		tx-disable-gpios = <&sgpio_out2 15 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 15 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 15 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 16 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth49: sfp-eth49 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp6>;
-		tx-disable-gpios = <&sgpio_out2 16 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 16 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 16 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 17 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth50: sfp-eth50 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp7>;
-		tx-disable-gpios = <&sgpio_out2 17 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 17 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 17 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 18 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth51: sfp-eth51 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp8>;
-		tx-disable-gpios = <&sgpio_out2 18 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 18 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 18 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 19 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth52: sfp-eth52 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp9>;
-		tx-disable-gpios = <&sgpio_out2 19 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 19 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 19 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 20 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth53: sfp-eth53 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp10>;
-		tx-disable-gpios = <&sgpio_out2 20 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 20 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 20 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 21 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth54: sfp-eth54 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp11>;
-		tx-disable-gpios = <&sgpio_out2 21 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 21 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 21 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 22 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth55: sfp-eth55 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp12>;
-		tx-disable-gpios = <&sgpio_out2 22 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 22 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 22 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 23 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth56: sfp-eth56 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp13>;
-		tx-disable-gpios = <&sgpio_out2 23 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 23 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 23 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 24 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth57: sfp-eth57 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp14>;
-		tx-disable-gpios = <&sgpio_out2 24 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 24 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 24 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 25 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth58: sfp-eth58 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp15>;
-		tx-disable-gpios = <&sgpio_out2 25 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 25 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 25 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 26 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth59: sfp-eth59 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp16>;
-		tx-disable-gpios = <&sgpio_out2 26 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 26 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 26 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 27 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth60: sfp-eth60 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp17>;
-		tx-disable-gpios = <&sgpio_out2 27 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 27 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 27 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 28 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth61: sfp-eth61 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp18>;
-		tx-disable-gpios = <&sgpio_out2 28 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 28 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 28 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 29 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth62: sfp-eth62 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp19>;
-		tx-disable-gpios = <&sgpio_out2 29 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 29 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 29 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 30 0 GPIO_ACTIVE_HIGH>;
-	};
-	sfp_eth63: sfp-eth63 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c_sfp20>;
-		tx-disable-gpios = <&sgpio_out2 30 1 GPIO_ACTIVE_LOW>;
-		los-gpios = <&sgpio_in2 30 1 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpios = <&sgpio_in2 30 2 GPIO_ACTIVE_LOW>;
-		tx-fault-gpios = <&sgpio_in2 31 0 GPIO_ACTIVE_HIGH>;
-	};
-};
-
 &switch {
 	ethernet-ports {
 		#address-cells = <1>;
-- 
2.43.0


