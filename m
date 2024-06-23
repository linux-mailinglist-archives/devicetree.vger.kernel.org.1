Return-Path: <devicetree+bounces-78974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB569913CE8
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 18:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 935BB1F228A9
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D2018306F;
	Sun, 23 Jun 2024 16:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R5iuvs7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1DA8BFA
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 16:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719161612; cv=none; b=HO52vibw+d/sMSweVEK8z7wmN6ECPq+298caaAooOi1/WXXr8PveRX7EFEhX3DDrZJgpllrKHLJ9oobJIyjFZqAEVpdlSGHT9rF8H+4rrvQzORVwcSmJbK6o7EFiX3yNjQ59GyNOR+VGpXm4VQaT8FYCN6GkMtCm7r5CJjFT48g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719161612; c=relaxed/simple;
	bh=OwOyCpfQJ4+nSGXTiVE1LRFnhruhYGN7ngMRJ9kXiGE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AysaHx+z64c47ztv8V65d3ZAxdMQiyoQOdLN/Myx/tj6DYLAQWgYBvsJUOyBANO+TK8qqCoZ5Cqc6NHOTdGuByVMmDkD5kU0yISDOu53OIAR/QnEgk9UuElGrCYhSV/TDDffCOcLb6xSTE5W9+6riw9ia99uxN8ucjQL4LADCUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R5iuvs7h; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421757d217aso39246905e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161610; x=1719766410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2cf9yk09EjNDZwtAyhAEgmGAGgN/zlHlu+rRdJR22d0=;
        b=R5iuvs7hE8pP4BbL9/rFk+sT2JnsLPvWoZf6Lc70oy96YC2YcPicmaFb9xeGTa2+1M
         NsgVVFYNpsG/tapSIm7CnkYWBnp4n7l+VGLhLK0QnUQurGBEVf6AU4/xJ7sU/GRgeQ2i
         bQWf+ZlolMIOehAG45BeyX5p3nwnqjUct8BflJvsclomPz9JN3eKl9Oo86R44HMy/DOw
         wQHXPQ/ZL1ODsa0h6FBSCpIcLqkI4mUE7eY7AWaS/1j+zrdA6wLeK5LA7kaeinRpt9rm
         47z/19X1FK+oT6S0pU7b33o+JVDogGA1Z0fjTEv33oQu4vlWaHliFVPSs9VRvvH1AUZr
         UChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161610; x=1719766410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2cf9yk09EjNDZwtAyhAEgmGAGgN/zlHlu+rRdJR22d0=;
        b=jwblnqpOqey1AV5x5AmET5GssrFFDelpT3WFGuaEa6PTwZQDJV9PBmYen8ARidx20w
         /4oaBd8sQ8o4svNmxrOznDTwWPajc0bGkTlPXsfGqBn60O510Nuf033W8BRvLoNn/Ucv
         E5CJnomPIiw4hcHnFzcdsOqo1stKByYMJSKl6/YwvBFzdjiykfeSgCsN1EW7GlMNYo/X
         w5aae+Ec3nYlH9afpwpMibT9K/gfZv6+cHQ1CMA/Z/MZwT6ISEefBzEadcIxP5etT5cV
         st+p+2OJXQ9RdewIPt0rOv1UHcd0qwnf1oqkljbmTRGvGHuvuBkrtBGEf9LErWMlTMJh
         6Smw==
X-Forwarded-Encrypted: i=1; AJvYcCV7DqJrS4cjFPgKG9mR4PhpxpSVCmXqh9n7mgi8N3Rs6oseh/POBrkNpwZfUpdiWX5pV2HZVZBDKLjz2s+czsvk6bqioStfYio45Q==
X-Gm-Message-State: AOJu0YyjiyzUKOYcvhvbc3LTt3LZANsrjM4VWGHR1zxgVWCHUcEb6vtE
	+jtO8v+pZYcJHV7EyYOt+PaF74TIXbfRkfonzVgIYiQvq6XhNXFQ
X-Google-Smtp-Source: AGHT+IG2txdcv0fg+r/Nqnq3RkWX9Zad/0/2DTzCjUiOnF3LoNRJPz/AmHG+E+UEuJDw/pDFb/tL0A==
X-Received: by 2002:a05:600c:2146:b0:422:7a16:6986 with SMTP id 5b1f17b1804b1-4248cc27178mr18457725e9.9.1719161609436;
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
Date: Sun, 23 Jun 2024 17:53:20 +0100
Message-ID: <20240623165326.1273944-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PinePhone Pro has a cluster of 3 single RGB GPIO LEDs.
Add the GPIO entries for the 3 red/green/blue LEDs and an
entry for the multi-color group to allow them to be used
as a combined RGB LED.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index e5709c7ee06aa..5e46f682f0f0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -12,6 +12,7 @@
 /dts-v1/;
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -69,6 +70,34 @@ key-power {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&red_led_pin &green_led_pin &blue_led_pin>;
+
+		led_red: led-0 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_green: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_blue: led-2 {
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	multi-led {
+		compatible = "leds-group-multicolor";
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_INDICATOR;
+		leds = <&led_red>, <&led_green>, <&led_blue>;
+	};
+
 	vcc_sys: vcc-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -481,6 +510,20 @@ pwrbtn_pin: pwrbtn-pin {
 		};
 	};
 
+	leds {
+		red_led_pin: red-led-pin {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		green_led_pin: green-led-pin {
+			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		blue_led_pin: blue-led-pin {
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.45.2


