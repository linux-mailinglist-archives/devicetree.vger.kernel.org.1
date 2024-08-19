Return-Path: <devicetree+bounces-94795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5A1956A74
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 14:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2910A1F22254
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 12:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44ED216BE12;
	Mon, 19 Aug 2024 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KPrP70xN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FC216A935
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 12:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724069277; cv=none; b=FFbINUpk07FBCyrW4YAjsBYdQtAo0pHSXMSPKIFqkQJFxQ/rzlLoN8yBySfOe46UJ3ztNEcRnPp80MMgvdzXdO/nVsOUyaIPz57oOc5BHGwUe8fcQYlYKuKnn9wEGw9eVImq6CDZ7XUaXh22isUmDY5+r0mzlJDn6atQ9b6YI3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724069277; c=relaxed/simple;
	bh=8myR9YlC6dbJx2QkRRQeT8WE7n3yKsnTY255KUzFPnU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MOY6bHFbhxkW3KRCTjXVEoi7iA5kZN038/BbxbESbpI9LBFjyeQqOAtsDcGNqNi3xzoqOAH0yZjQnyVDjdV0AABg4zAd/jGCGrt+7faPt3A1NaIBP27TNtqMPuxvZ2/qLPMG6dcngSmRBR30YcVGcXPwvS13Ahhyhq95Df8rzbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KPrP70xN; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-201f7fb09f6so26512075ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 05:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724069275; x=1724674075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aeveSHt2Dhl0OrC5qhe/Wqr/CxYyS8zrYtet/bJxa3I=;
        b=KPrP70xN9QgBXNSanPY7P/0s8ywenx1OKVk9pM4Tc8lid0OrjulAJgEMqvOwTLU9pC
         nZXuZQRRLKLKv/k2DXAUIjnV1IJVfIFeBtRNuSjMS6DOyJxr9OFp1qNkqgqX63YHpump
         lwTLgHQ5n6FJFZk0XJGG8C739tiymJeSpp5qg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724069275; x=1724674075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aeveSHt2Dhl0OrC5qhe/Wqr/CxYyS8zrYtet/bJxa3I=;
        b=oX4MUornq8Unepq3jFl+Vu/ZnA2P/9uVAEQYifnOkrtlwem4xcuajVqcXNEQQkhFdM
         HuXRr4GDsBojCr81l5vHag1QYTJ/yPd0fCAYIlNmUO6yHVLg9E+rm4JemP1XE3KfFUe6
         oqY/pauC30vu2CmNZbwySI3p4SK2NXdGjocUtnA808s9WeuIeglmVIPadkp/GMrXA9nP
         CRZIojpo5icIIQEvaQFyQ2XmXFVhrZDLAxUx2O2gqRvhCMiSmnrKTRoPNOBJI9nX9ngP
         wddcC2FG0gtLvsNSjwqAwCz8dFZoa1DJxLD/CXXKOr4Vmr2TKbT5yjVAputXpYPZiGa6
         dc7A==
X-Forwarded-Encrypted: i=1; AJvYcCWzh8x8RZy95wjD/G7qNro91X1R7RQQSkF8DJ+kaH8j+gNh/4jIt2WsKBBg4CxDRs+J1i43GayqI8RZTJWw8DnA+2HEbCirw27zqA==
X-Gm-Message-State: AOJu0YxthzjW8HDSBgyHkETPseIiscBMXATQGi812gcYKh3amnbStAdi
	wK5qYgvQAy8BahicrlBLwOYOrjr9pQuccUpIt35ijl128yvFoNzsMse0ig5Cqg==
X-Google-Smtp-Source: AGHT+IF+bdj7mCBrUTJIkD7ifKIfTYDhTVpu/VvDtc8O/oxVCH4g0Le2wu0pqP/J1FsdhwQ99TPpDA==
X-Received: by 2002:a17:902:da8b:b0:201:fac8:ff67 with SMTP id d9443c01a7336-20203e9b6c1mr107454945ad.17.1724069274816;
        Mon, 19 Aug 2024 05:07:54 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:923a:77c1:913c:bcb8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f02fab02sm61802005ad.48.2024.08.19.05.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 05:07:54 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-kernel@vger.kernel.org (open list:ARM/Mediatek SoC support),
	linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC support),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC support),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	Fabien Parent <fparent@baylibre.com>,
	Pin-yen Lin <treapking@chromium.org>
Subject: [RESEND PATCH v2 2/2] arm64: dts: mediatek: mt8183-pumpkin: add HDMI support
Date: Mon, 19 Aug 2024 20:05:56 +0800
Message-ID: <20240819120735.1508789-2-treapking@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
In-Reply-To: <20240819120735.1508789-1-treapking@chromium.org>
References: <20240819120735.1508789-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabien Parent <fparent@baylibre.com>

The MT8183 Pumpkin board has a micro-HDMI connector. HDMI support is
provided by an IT66121 DPI <-> HDMI bridge.

This commit enables DPI and add the node for the IT66121 bridge.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

(no changes since v1)

 .../boot/dts/mediatek/mt8183-pumpkin.dts      | 121 ++++++++++++++++++
 1 file changed, 121 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index 1aa668c3ccf9..ecc237355b56 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -63,6 +63,18 @@ thermistor {
 		pulldown-ohm = <0>;
 		io-channels = <&auxadc 0>;
 	};
+
+	connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "d";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_connector_out>;
+			};
+		};
+	};
 };
 
 &auxadc {
@@ -120,6 +132,41 @@ &i2c6 {
 	pinctrl-0 = <&i2c6_pins>;
 	status = "okay";
 	clock-frequency = <100000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	it66121hdmitx: hdmitx@4c {
+		compatible = "ite,it66121";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ite_pins>;
+		vcn33-supply = <&mt6358_vcn33_wifi_reg>;
+		vcn18-supply = <&mt6358_vcn18_reg>;
+		vrf12-supply = <&mt6358_vrf12_reg>;
+		reset-gpios = <&pio 160 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&pio>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+		reg = <0x4c>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				it66121_in: endpoint {
+					bus-width = <12>;
+					remote-endpoint = <&dpi_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				hdmi_connector_out: endpoint {
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
 };
 
 &keyboard {
@@ -362,6 +409,67 @@ pins_clk {
 			input-enable;
 		};
 	};
+
+	ite_pins: ite-pins {
+		pins-irq {
+			pinmux = <PINMUX_GPIO4__FUNC_GPIO4>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO160__FUNC_GPIO160>;
+			output-high;
+		};
+	};
+
+	dpi_func_pins: dpi-func-pins {
+		pins-dpi {
+			pinmux = <PINMUX_GPIO12__FUNC_I2S5_BCK>,
+				 <PINMUX_GPIO46__FUNC_I2S5_LRCK>,
+				 <PINMUX_GPIO47__FUNC_I2S5_DO>,
+				 <PINMUX_GPIO13__FUNC_DBPI_D0>,
+				 <PINMUX_GPIO14__FUNC_DBPI_D1>,
+				 <PINMUX_GPIO15__FUNC_DBPI_D2>,
+				 <PINMUX_GPIO16__FUNC_DBPI_D3>,
+				 <PINMUX_GPIO17__FUNC_DBPI_D4>,
+				 <PINMUX_GPIO18__FUNC_DBPI_D5>,
+				 <PINMUX_GPIO19__FUNC_DBPI_D6>,
+				 <PINMUX_GPIO20__FUNC_DBPI_D7>,
+				 <PINMUX_GPIO21__FUNC_DBPI_D8>,
+				 <PINMUX_GPIO22__FUNC_DBPI_D9>,
+				 <PINMUX_GPIO23__FUNC_DBPI_D10>,
+				 <PINMUX_GPIO24__FUNC_DBPI_D11>,
+				 <PINMUX_GPIO25__FUNC_DBPI_HSYNC>,
+				 <PINMUX_GPIO26__FUNC_DBPI_VSYNC>,
+				 <PINMUX_GPIO27__FUNC_DBPI_DE>,
+				 <PINMUX_GPIO28__FUNC_DBPI_CK>;
+		};
+	};
+
+	dpi_idle_pins: dpi-idle-pins {
+		pins-idle {
+			pinmux = <PINMUX_GPIO12__FUNC_GPIO12>,
+				 <PINMUX_GPIO46__FUNC_GPIO46>,
+				 <PINMUX_GPIO47__FUNC_GPIO47>,
+				 <PINMUX_GPIO13__FUNC_GPIO13>,
+				 <PINMUX_GPIO14__FUNC_GPIO14>,
+				 <PINMUX_GPIO15__FUNC_GPIO15>,
+				 <PINMUX_GPIO16__FUNC_GPIO16>,
+				 <PINMUX_GPIO17__FUNC_GPIO17>,
+				 <PINMUX_GPIO18__FUNC_GPIO18>,
+				 <PINMUX_GPIO19__FUNC_GPIO19>,
+				 <PINMUX_GPIO20__FUNC_GPIO20>,
+				 <PINMUX_GPIO21__FUNC_GPIO21>,
+				 <PINMUX_GPIO22__FUNC_GPIO22>,
+				 <PINMUX_GPIO23__FUNC_GPIO23>,
+				 <PINMUX_GPIO24__FUNC_GPIO24>,
+				 <PINMUX_GPIO25__FUNC_GPIO25>,
+				 <PINMUX_GPIO26__FUNC_GPIO26>,
+				 <PINMUX_GPIO27__FUNC_GPIO27>,
+				 <PINMUX_GPIO28__FUNC_GPIO28>;
+		};
+	};
 };
 
 &pmic {
@@ -415,3 +523,16 @@ &scp {
 &dsi0 {
 	status = "disabled";
 };
+
+&dpi0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&dpi_func_pins>;
+	pinctrl-1 = <&dpi_idle_pins>;
+	status = "okay";
+
+	port {
+		dpi_out: endpoint {
+			remote-endpoint = <&it66121_in>;
+		};
+	};
+};
-- 
2.46.0.184.g6999bdac58-goog


