Return-Path: <devicetree+bounces-18864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC25D7F8D9C
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A51D4281404
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E77B2EAFE;
	Sat, 25 Nov 2023 19:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="cCJYufkm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2EE3F1
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:59 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6c4eaa5202aso2858392b3a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939159; x=1701543959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcjLpxBgTLpZy7bjkIUQIc+N1SeHj/wmMY9+mRqYfUg=;
        b=cCJYufkm3OOjdk0MgIzhnoChFr+NwkDU/9a+wsisEOXnnTVTFHOsTma4cuewJ08TVz
         G3GfO0kLjbfBOP9A9k+epTYf9peDvzY8yUP4YKLRGQZRVBPxPnxxX3QoS0utR+LMwq97
         RA60jirCHEDcwqZLjWqD7dhEFdrWH0HDIfw8bu62jdKyTLnLCtm/TFitMmD7sBiquNLI
         07tcPj0/mt8Hoa8KS3+GLSS04HAPSBhNNOqor0nW2Fgwufi0hWumvCxju8eTntfC/ovD
         b6xaSPqgN/ryiTrqXMOcW5F+tTEWm6fpOkQuWzzYgYeffoEePFavcAF96I5GqStpTXK3
         yVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939159; x=1701543959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DcjLpxBgTLpZy7bjkIUQIc+N1SeHj/wmMY9+mRqYfUg=;
        b=IgtlFgLF6lNeD6ibeJ26ITOIGukPDhh6xJTq2Vp/kMj1XItcrYpZZa/LFr/tUK2JdC
         WbxTkvsY/inYwTs2ZT57+MGbdFIReQkeaAkYjzqHTQtWeyfH3jHcc5NmsEH1kq8Ov+wj
         FqPbq5dZwPzj1/SvEhOYxGIL/i8gYUcEj+fwmDwZO///O36xDP4lgzmc5djONXfP/FJU
         8k8aP+qjpwJefVUs6SSu3vCAUBEgBKUM/Kpg/05EVAORCnIGZjjqfSRpV1DU9HaXAJtx
         N2ap370/Yr2J27MH38E0VFaOKcZ7yNADLRDuzg8Y0iEtk5n8R49XyC/zpwSpxKxQ8yQs
         gkhQ==
X-Gm-Message-State: AOJu0YzbEHU1FoOhTnajs+k4Eic+NwfIPBT7B78f/L5R4AYVYbvqZceM
	IUnaK4WSlf6hJobIrz/oqszjZw==
X-Google-Smtp-Source: AGHT+IFm8P0G/zZxdYDbQKNcjuNb8oNZsCNX36D6fENZW7p0r4jCQKNYuLwmZGNAgPbY1dZfrhkFvw==
X-Received: by 2002:a05:6a00:e0f:b0:6cb:d2cb:5234 with SMTP id bq15-20020a056a000e0f00b006cbd2cb5234mr7997241pfb.32.1700939159304;
        Sat, 25 Nov 2023 11:05:59 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:59 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
Date: Sun, 26 Nov 2023 00:35:22 +0530
Message-Id: <20231125190522.87607-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A, NCM6B SoM has Green LED on the module.

Enable them with heartbeat function.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index 961a80014686..003887fbf996 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -3,11 +3,27 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
 / {
 	aliases {
 		mmc0 = &sdhci;
 	};
 
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_user: led-0 {
+			gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_user_en>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -110,6 +126,14 @@ regulator-state-mem {
 	};
 };
 
+&pinctrl {
+	leds {
+		led_user_en: led_user_en {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


