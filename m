Return-Path: <devicetree+bounces-17320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 374427F2122
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 00:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2FC0B21A19
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930023AC1E;
	Mon, 20 Nov 2023 23:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F5U6eJwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F9DFCF
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:40 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-58a03280aa7so2826233eaf.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 15:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521299; x=1701126099; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UZ2BzLEBr4XMnl4GQ3wvndvKgsZ+xuw+7Bt9mxs0HE=;
        b=F5U6eJwb8R4W2465BTWmkz/MSNxo9JRJrqpPoOJ1z7RecOcs9laPJc7xfsWLNs03G/
         A8o7/cAfpAkO7sueen+1hDfx9EkAME6Kv7P6KYP/XHMaQYFL79HAx8G4S6JJAS0ULW4X
         522/UOtZ7nvi4p2etON2b3/Fjubay60zeCWHiiUO1FIC5dk3cKlJNXkTf+OukUDFYAYC
         I0iMhca4lWav/NFk7sxIwlDaCuHIMaM+Vrt3TXM3RbFdhe2dCsMumsezgLQwrPGlqmjl
         mLDvmouVHPCR2M/z+Wa0oYOwAmUlVc+/KjPN/zE+ca3029VNNVvUYpxwTi2xPchdeh3n
         NYHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521299; x=1701126099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UZ2BzLEBr4XMnl4GQ3wvndvKgsZ+xuw+7Bt9mxs0HE=;
        b=dj7frSkd4b24H8H0yOslnP8g9/+bnZquNcIHYKoClSjsi878Vw7QLL/PJv007vglmz
         ojVPiz3+ffqawLl+RU4azOqBTdMwJY7ngoYEzRqoSQXAh0kYTU9JdWkorl8SwnIqzsxi
         hADWAaNqws5OAHmzic0s2xhw7cZJvqkhlIHnl36N/2Mky1Qf3I/3uYEi0eHwYh5kcdgV
         ecbLqUdQPGSRUcKsSHN9u3BTy7xUsfsqrT30W6EPbVqNaxmn2LpWnLY8iYP0eZH4tm+X
         a5GpH2XdhmJp1PTgAxX8MjYm0H1ZeTahc/Y7ZB43g/TubuZNU8ZjeG/jkTbveL/ByZ4F
         gh1A==
X-Gm-Message-State: AOJu0Yx/LoDo1sSuwRPA8QoC+isyfuF2MaUL1kr6Sn4TZCCRdy4+xa+6
	C71inbxf0y3kB0eJy6Uw+XaMTpbtQOM=
X-Google-Smtp-Source: AGHT+IGGBSauwh38pSiGG2+LljhqtfZuwtpVXX5eCCddIt444/FxQnmfcrUz2xYTi+OLo2TjvFXINQ==
X-Received: by 2002:a05:6820:613:b0:587:992d:48a with SMTP id e19-20020a056820061300b00587992d048amr9796217oow.1.1700521299289;
        Mon, 20 Nov 2023 15:01:39 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:31 -0600
Message-Id: <20231120230131.57705-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG351V, which is a handheld gaming console
from Anbernic with an RK3326 SoC, a 640x480 LCD display, a single
analog joystick with several face buttons, two USB C ports, and
internal WiFi over USB. All hardware has been tested as working
except for the battery, which will require further modification to the
mainline rk817 battery driver before it can be used (the device was
built without a shunt resistor, and as such the battery cannot
measure current; only voltage).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3326-anbernic-rg351v.dts   | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a18f33bf0c0e..0ac27cf782d7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351m.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts
new file mode 100644
index 000000000000..c2f9b56ca5f9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3326-anbernic-rg351m.dtsi"
+
+/ {
+	model = "Anbernic RG351V";
+	compatible = "anbernic,rg351v", "rockchip,rk3326";
+
+	gpio_keys_vol: gpio-keys-vol {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		button-vol-down {
+			label = "VOLUMEDOWN";
+			linux,code = <KEY_VOLUMEDOWN>;
+			gpios = <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
+		};
+
+		button-vol-up {
+			label = "VOLUMEUP";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&internal_display {
+	compatible = "anbernic,rg351v-panel", "newvision,nv3051d";
+	vdd-supply = <&vcc_lcd>;
+};
+
+&io_domains {
+	vccio1-supply = <&vccio_sd>;
+};
+
+&vcc_sd {
+	regulator-max-microvolt = <3000000>;
+	regulator-min-microvolt = <1800000>;
+};
+
+&vccio_sd {
+	regulator-max-microvolt = <1800000>;
+};
-- 
2.34.1


