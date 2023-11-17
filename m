Return-Path: <devicetree+bounces-16612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DDB7EF0DD
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 11:43:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 823E428126B
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A0814F7A;
	Fri, 17 Nov 2023 10:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Un1ZgGQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4E1D5B
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:43:38 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9f282203d06so263035366b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700217817; x=1700822617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ooyyIQaGZItx+Y3pw2HUlw3rSDVkRA/8pscwi3jOIoE=;
        b=Un1ZgGQ6fQ1NBqfG4wLNmW7luMF02FjNzYofSwzMGLi6t6U17iviRaz0iWq2EsDTtT
         N9Q3KPejgNj6O2Xww+Pkrn7SC55wpWxiTFYM8fWu6XbU+Ryr8kkq9vrMCg5P63w/qebG
         aaF4gF9Oi+FMO9ILKUzsb/ZBGsVamGaoyLcXl+9infrPiL5O7mzrcgl7zJmDrMv1Vyx6
         pUfM5x3WeL/elT4r/PHg1BxLQK7gu5qINrQqIb+hpBhp6g4G38KO6TXLgvXjdfxqdQ0F
         dWVjrbCEHyg0WilYmG/rCXx62f/9IYnuubwg6AUq1rXf2sqhUlS5DLvrKM/TodJtL+JU
         k4wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700217817; x=1700822617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ooyyIQaGZItx+Y3pw2HUlw3rSDVkRA/8pscwi3jOIoE=;
        b=sVTbkZJIDIEXtJdY2QjVuk8WQXoCR62BU5PRHdfTmmYrvHgRxJ2ZCkOwHio5XCh6Yk
         0B4saiJtec2U4mRAf+bR4QJytEaa27wzfz8p/WaTJ3fl1lYmlHOijfGzDjffpCkvnoAQ
         kRdY8dh2UMlBShcDSMxXKr4SaqR0wULhDE60yVTk5o8kKo6ULwJCkhCLfxO3xnvxtRVZ
         j+cy4rdhyYLo8nGxhQmSp893wInftU7FTyX7+oV3NuPmemQHuXt2+Vbu1OlRe348miHQ
         V7AE3D33wtMdbcltybCS34Fnkfhn+aageEndhU9yNtcl+DDGYCPCyN18lKCuguAowobn
         4k4w==
X-Gm-Message-State: AOJu0YybBD72eaIwgUXD8AvZ1zBYrTcYLDm1bv+vLKaOD5RjhfV9/3He
	sd5wCiVPbVf8S76919T2UHo=
X-Google-Smtp-Source: AGHT+IFHNNABckS4KZdexH6557tc1JVgzknlX/ePyIGNS7laFQlQXPkQDUkig7L5NjgSksWUF8wzKg==
X-Received: by 2002:a17:906:4c47:b0:9e5:ceb5:ada6 with SMTP id d7-20020a1709064c4700b009e5ceb5ada6mr4357932ejw.75.1700217816975;
        Fri, 17 Nov 2023 02:43:36 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id q6-20020a1709066b0600b009dd701bb916sm637388ejr.213.2023.11.17.02.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 02:43:36 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
Date: Fri, 17 Nov 2023 11:43:15 +0100
Message-Id: <20231117104315.9718-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231117104315.9718-2-zajec5@gmail.com>
References: <20231117104315.9718-2-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
It has 512 MiB of RAM, one 2.5 Gbps PoE (802.3at) Ethernet port and
on-SoC Wi-Fi.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../mediatek/mt7986a-acelink-ew-7886cax.dts   | 175 ++++++++++++++++++
 2 files changed, 176 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index e6e7592a3645..9ff2ab6c5e4d 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
new file mode 100644
index 000000000000..18d19281dfdb
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+#include "mt7986a.dtsi"
+
+/ {
+	model = "Acelink EW-7886CAX";
+	compatible = "acelink,ew-7886cax", "mediatek,mt7986a";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@40000000 {
+		reg = <0 0x40000000 0 0x20000000>;
+		device_type = "memory";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		key-restart {
+			label = "Reset";
+			gpios = <&pio 7 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&pio 18 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-1 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&pio 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&pio 20 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&watchdog {
+	status = "okay";
+};
+
+&trng {
+	status = "okay";
+};
+
+&crypto {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		spi-max-frequency = <52000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "bootloader";
+				reg = <0x0 0x100000>;
+				read-only;
+			};
+
+			partition@100000 {
+				label = "u-boot-env";
+				reg = <0x100000 0x80000>;
+			};
+
+			factory: partition@180000 {
+				label = "factory";
+				reg = <0x180000 0x200000>;
+				read-only;
+				compatible = "nvmem-cells";
+
+				nvmem-layout {
+					compatible = "fixed-layout";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					eeprom: eeprom@0 {
+						reg = <0x0 0x1000>;
+					};
+
+					macaddr: macaddr@4 {
+						reg = <0x4 0x6>;
+					};
+				};
+			};
+
+			partition@380000 {
+				label = "fip";
+				reg = <0x380000 0x200000>;
+			};
+
+			partition@580000 {
+				label = "ubi";
+				reg = <0x580000 0x4000000>;
+			};
+		};
+	};
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&eth {
+	status = "okay";
+
+	mac@1 {
+		compatible = "mediatek,eth-mac";
+		reg = <1>;
+		phy-mode = "2500base-x";
+		phy-handle = <&phy6>;
+		nvmem-cells = <&macaddr>;
+		nvmem-cell-names = "mac-address";
+	};
+
+	mdio-bus {
+		reset-gpios = <&pio 6 GPIO_ACTIVE_LOW>;
+		reset-delay-us = <50000>;
+		reset-post-delay-us = <20000>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy6: phy@6 {
+			compatible = "ethernet-phy-ieee802.3-c45";
+			reg = <6>;
+		};
+	};
+};
+
+&wifi {
+	status = "okay";
+	nvmem-cells = <&eeprom>;
+	nvmem-cell-names = "eeprom";
+};
+
-- 
2.35.3


