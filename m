Return-Path: <devicetree+bounces-18857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9637F8D95
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17430B20FE6
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A402EAE4;
	Sat, 25 Nov 2023 19:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="a+wJPk9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71180F7
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:40 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6cbc8199a2aso2365287b3a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939140; x=1701543940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdVkvthdIVkScPCk6uaNxp5t0aMH4kHMdH7v/R/c8rw=;
        b=a+wJPk9QX08tEsC0ELpIzn1rLWzu+uEfkB1+ARq01cF349A9nxBWMvlwSl8POKnNg0
         Nn2C/3D7BumDM5qCx3+E0pgr5tP84jjVPz3nVw7YNad7UgGC33VrAq9MuBqHuPOZ/YSg
         EZ1QDFLb5KicN/BICjyzB/Om2PV6JcuHxPTUpkIQHZKTIwv39+S1+dQVXTgydw9Vl+5T
         Z6ec7ZnZ0J22UG6dq+Moq89w640+cpQ1zeIsM9MwKPDJwO2IZZi/2DFoEa+FiLt7Vojb
         uSpNvUeBQTkQYj6sa9E0w9Bnl9dj1Zkil/ebH5eXZQlagz92PthfOe9+J7vRTZaQr+EI
         4uqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939140; x=1701543940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdVkvthdIVkScPCk6uaNxp5t0aMH4kHMdH7v/R/c8rw=;
        b=TocKVVk7Buln+mnF2BXrCbkga8A7rzJ3guevS6I8ZtlR+cAupBCoy7dUxFBvWWXFPw
         7/6ivSKhxks+k6zbfC4sWlqqHIG4mtSrvdVZGdc3vyDd/8j9NuRX5K3zwpFj4doSnulb
         4asm5AJFHuh5gqv5GFZcXGE4O4mr9sC/zpOEWCfyb5mFIdTKWFK5+sqU3zl4DtfuTZ61
         5CcpzfxyoZ3/QP3oOAephswTDp9gkDytbz1ViCFNBkQmxhQG0HG1x4zR66zSPWgytQfd
         qn1GuEq/tw0TwzWwox12hMV6/cZrUFCTLk7+GejNDOv+mPeJTYDFIeJHUzojxGSRGZiI
         Meyw==
X-Gm-Message-State: AOJu0YxtK4960UFNaQbXEv9paXKwIJ9vcDabD2kUbMERlRq/PwrTMp2Q
	6HOFyP41ZOIzQYyndhePP4MtTA==
X-Google-Smtp-Source: AGHT+IEqmebTveiQ1F0ELuQfY6eKJuPtFrs3P14fMstb/KKBUIKc3rD/orZfkNMBCLPcqRpv/P1JEQ==
X-Received: by 2002:a05:6a00:2196:b0:6c6:9b11:f718 with SMTP id h22-20020a056a00219600b006c69b11f718mr7138624pfi.4.1700939138428;
        Sat, 25 Nov 2023 11:05:38 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:38 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
Date: Sun, 26 Nov 2023 00:35:15 +0530
Message-Id: <20231125190522.87607-4-jagan@edgeble.ai>
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

Edgeble Neu6a and Neu6b are compatible with common IO board.

So, maintain the IO board in rk3588-edgeble-neu6a-io.dtsi.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  | 14 +--
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 85 +++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 80 +----------------
 3 files changed, 87 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
index b51543892078..46d5e21d4d27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -6,22 +6,10 @@
 /dts-v1/;
 #include "rk3588.dtsi"
 #include "rk3588-edgeble-neu6a.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6A IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
new file mode 100644
index 000000000000..845f90c302ca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+/* FAN */
+&pwm2 {
+	pinctrl-0 = <&pwm2m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+/* RS232 */
+&uart6 {
+	pinctrl-0 = <&uart6m0_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+/* RS485 */
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 861067b5d707..0d6f1be69ac8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -6,88 +6,10 @@
 /dts-v1/;
 #include "rk3588j.dtsi"
 #include "rk3588-edgeble-neu6b.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6B IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&combphy0_ps {
-	status = "okay";
-};
-
-&i2c6 {
-	status = "okay";
-
-	hym8563: rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <0>;
-		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		wakeup-source;
-	};
-};
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-/* FAN */
-&pwm2 {
-	pinctrl-0 = <&pwm2m1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&sata0 {
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	no-sdio;
-	no-mmc;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-/* RS232 */
-&uart6 {
-	pinctrl-0 = <&uart6m0_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-/* RS485 */
-&uart7 {
-	pinctrl-0 = <&uart7m2_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
 };
-- 
2.25.1


