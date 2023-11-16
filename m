Return-Path: <devicetree+bounces-16104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 383E87ED86F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A20A1C209A7
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34341109;
	Thu, 16 Nov 2023 00:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UisrEvAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE26819E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:52 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1eb7a8e9dd0so111499fac.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093872; x=1700698672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=UisrEvAjnmFTyRIgUoQgFU334LXa8pj1DjgPAJDGSZzbiKwpxyITVhsztJWLko1mzJ
         EEYjZ5ty5HJ2xTffR62SZfGm7R8rEsn94GgoS2cROlotJ6rekvNqKtINavy0iixOVvxg
         nVQJzhoB4Qo/NDlg997LPHoCOXUrRSSzwG/I6hcFkL21shVm2ao7lEefH8ZfDERxd/yf
         C4fvFima91I91nlvDBiHcK3vrBtatjpiGOfFJnxwK6Mp6o4LkKglfJE6Uq6PGVB8/UpF
         NKdfWklBgq+KG5k+KCT1cm9WRU0decReWW7v5plh5wPd7QV/cpvAxca3J1rK0bkreqjY
         lehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093872; x=1700698672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=NCIWA8fZuCwdIaPEuX8Sr/vUme82nUYSMzfbhxyOHX48TSsjjq1KLXfHwmycCtt08A
         4queKELW1Bf6t9hfwTYjP7dqywnrAwc3Wzu9qCb1Zkkww9Cp2hJdSHLhkqjZJ+kgBbqM
         89vC9lpAIrgIQc1XRW3Wtl5khiGcmSS6xfC6f1z/+ONAr2gRFo4Yc+EyJzz9BKG576fR
         dNRk8OQCTJ4zuUuGJHEOva+qrUdNqFexW1hoVm7g4AvT2vnnZM4ZMAUctI9gopL1tpwq
         ib0sPczndHSe9QogbWGF3TDSXyJPlgIyWmE+lwFg5cJn74E67hNG0lpRIz3uX0FXkP1l
         MdXw==
X-Gm-Message-State: AOJu0YyHuJr3pNopfjazz44el98SkGlkc2za+cNL6eghLV+qfk7wKXfU
	5LPoFvpNGyqhRdApNInz4hs=
X-Google-Smtp-Source: AGHT+IFgW6c7qYUuH54nf6HOWx8QDa/CnQp5Ih8Am7cVXsTlWykB1rknOmnEGKWlpgCmzukCr7Kivw==
X-Received: by 2002:a05:6870:cd0e:b0:1e9:dae7:f58a with SMTP id qk14-20020a056870cd0e00b001e9dae7f58amr16617397oab.22.1700093871792;
        Wed, 15 Nov 2023 16:17:51 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:51 -0800 (PST)
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
Subject: [PATCH V3 6/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:42 -0600
Message-Id: <20231116001742.2340646-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
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


