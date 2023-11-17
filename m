Return-Path: <devicetree+bounces-16760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB17EF8A5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C76F01F24CF3
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707BB45C14;
	Fri, 17 Nov 2023 20:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fLCCWBSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60C69D6D
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:45 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6ce2ee17cb5so1248749a34.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252744; x=1700857544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=fLCCWBSUtSeUZZ1gAFuPbxWUCGSbgRKvKlzHAZEPFbyQxQEZbPkL6Cic/egWREJgGf
         MFtTwwVtGkR+aYDNGPe/vZuGH9a6CcOWwCex0+yjWcVNC83GO4IZRbCvcMNhIU7e2e+6
         A3sZS43WyYqIuRJegA6mmxnVqb3y2jUEfI/jbhqBzj3MBrhuWKoN1gKGDSsRvg2nUZDB
         XYPJG0Lo4iDJ2dcEZUFMvm89DHaocha0G4fLiEPmTV1r0yJzPywxK2CNADazXx582Uo2
         mfAlte0uma/0qYMXvrhT/qEAV9L438GlknAdjZL1Cu7w/127Envd6zDPPwcUv2F/LyU9
         36Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252744; x=1700857544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=UwUofXR1g1OcqYu6Nac6tvq63l2ypXRuzr3HFu33Ii/YWGIqhfpyvJYPU82Yp0EJO5
         ZWiO18bxCzR6aE5KheuXZ1DVUkd89l69xofn8xLuN8nugYIyzHZa3MwwMPoC22lwnHxg
         Dl+wIDLo1TUrD+QDNEgEaMAPheEJYSYz6gdJGd9hrQBHiwi0HeWBEtsN4R8hYPfHT8EN
         9w3Idyi+YdSsyZuVnkn6RIgs3q9ftY1hm9Ff8yGi9fExETWIal7JCObDpBUcR9Auvnl7
         5mzjqRCDbUdeD2jXtptnCxI5NzovPjM1euXQKsWkwYlA2MTlo35DGSTvqo+WNIZGpkDl
         GuVg==
X-Gm-Message-State: AOJu0YyK3ojhohWlCglrWKANfOFfqFfzA5BnTk1CoDe7YxgYM3iyoIBU
	YdSLfysR4nE1MI+bA1jchBk=
X-Google-Smtp-Source: AGHT+IG/WiIIxATDLVZjBpAsRyrTJfq/2AtdbHUrOBdWEejgEZ06vPYVj78BAeiC1A59NcitExnJXw==
X-Received: by 2002:a05:6870:64aa:b0:1f5:acc6:3a5c with SMTP id cz42-20020a05687064aa00b001f5acc63a5cmr323436oab.44.1700252744646;
        Fri, 17 Nov 2023 12:25:44 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 6/6] arm64: dts: rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:36 -0600
Message-Id: <20231117202536.1387815-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
gaming device with a 3.5 inch screen powered by the Rockchip RK3566
SoC. The device looks physically different from the Powkiddy RGB30,
but is functionally identical except for the panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a18f33bf0c0e..f969618da352 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
new file mode 100644
index 000000000000..ba32d0793dca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "RK2023";
+	compatible = "powkiddy,rk2023", "rockchip,rk3566";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			  <200000000>, <115200000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rk2023-panel", "newvision,nv3051d";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
-- 
2.34.1


