Return-Path: <devicetree+bounces-21523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A54803F04
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B3041C20BA4
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100B333CD7;
	Mon,  4 Dec 2023 20:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jsYhY56S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0136EC4
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 12:09:43 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33330a5617fso2922877f8f.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 12:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701720581; x=1702325381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SBEk+SrEniPMiMBs48OQrG0D9r0+OwZwJA5qxwpLKpk=;
        b=jsYhY56StNJ5L1VpOvJdWD+ERF+pAMG/2YO0q5t7+n4BNLQiy4gU6T2spEhXkANdOT
         uZnFwaUO5reo7B8ZeiirNU0zH+Ej+1L1JwHniCKi4Wpe4hSM9atY9gtbzP+LcdRpq5Yd
         hCjHh6qxLfKvKpE1tFknL+/7U7ItoOQX0Q4onv6fpadoa1lyrMQ7aLSMC4oiyPiucUXl
         alpeBrP+dot7CoDC2uRlnEBrAkEAYd1wGaSA7fkjzEn/h8NzGSol6XiicdHUqUko9Ev7
         1Dygi5+a891BWrkMLWMXjPyj9PMEFtfVUBLyu1H/FTwjUOwyx8fz1oaI3cJsc94cUXB+
         NwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701720581; x=1702325381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBEk+SrEniPMiMBs48OQrG0D9r0+OwZwJA5qxwpLKpk=;
        b=Qddr8Wnq9noDwggf/A0Kn8UWzY/ts7eac2wsggV/ZzGRkNp3/nzzElzhJbDWX0MH3l
         NmWwWZNf9ay8oNg+gA2crJGvDsBqa304QWqu4oLuORdZdLPI+jOHby0rkGcVXQoo0HQU
         rq2oJQ+l95eT5mAxGPPiFPKi2pg0G+SUxy0RB+5jZcwPXuk/enffnGJ72nlqllHkrhd5
         lR2pwffUjazMGCEag80tPM0jKOq5HXPceVmm14/7SqVB4glQIo1hfnteibXmV+ekMnc0
         UkIrAWoWkLqbyXW4PLAyzfNTXGv2CjR5Qotj0QhVlRFFA4MnStg3M1Vz9jLrbKcX8jLC
         yXPw==
X-Gm-Message-State: AOJu0YwaUw/ZVckjXRy7MoCghn6aprE1JZvirQVvjGS8rpnI0o3epGP4
	RInE5That+nxafYbibpa5xPQxRuE6NU=
X-Google-Smtp-Source: AGHT+IFQZiRyXeVUFQs2wW3mcbwymak5WY3aZwJzl0a6NwdhjrsYeU/Rz4kpEcLT1rWGrBsGgb6zjQ==
X-Received: by 2002:a5d:4291:0:b0:332:f910:50c1 with SMTP id k17-20020a5d4291000000b00332f91050c1mr4229457wrq.62.1701720581226;
        Mon, 04 Dec 2023 12:09:41 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lt12-20020a170906fa8c00b00a0290da4a50sm5620666ejb.186.2023.12.04.12.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 12:09:40 -0800 (PST)
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
Subject: [PATCH V2 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
Date: Mon,  4 Dec 2023 21:09:07 +0100
Message-Id: <20231204200907.5687-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231204200907.5687-1-zajec5@gmail.com>
References: <20231204200907.5687-1-zajec5@gmail.com>
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
V2: Update coding style to follow:
    [PATCH v4] docs: dt-bindings: add DTS Coding Style document

 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../mediatek/mt7986a-acelink-ew-7886cax.dts   | 173 ++++++++++++++++++
 2 files changed, 174 insertions(+)
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
index 000000000000..93b71465bbdf
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
@@ -0,0 +1,173 @@
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
+	compatible = "acelink,ew-7886cax", "mediatek,mt7986a";
+	model = "Acelink EW-7886CAX";
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
+&crypto {
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
+&pcie_phy {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>
+		spi-max-frequency = <52000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+
+		partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				reg = <0x0 0x100000>;
+				label = "bootloader";
+				read-only;
+			};
+
+			partition@100000 {
+				reg = <0x100000 0x80000>;
+				label = "u-boot-env";
+			};
+
+			partition@180000 {
+				compatible = "nvmem-cells";
+				reg = <0x180000 0x200000>;
+				label = "factory";
+				read-only;
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
+				reg = <0x380000 0x200000>;
+				label = "fip";
+			};
+
+			partition@580000 {
+				reg = <0x580000 0x4000000>;
+				label = "ubi";
+			};
+		};
+	};
+};
+
+&trng {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&watchdog {
+	status = "okay";
+};
+
+&wifi {
+	nvmem-cells = <&eeprom>;
+	nvmem-cell-names = "eeprom";
+	status = "okay";
+};
-- 
2.35.3


