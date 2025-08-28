Return-Path: <devicetree+bounces-210020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6C5B39E6E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96279562502
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC0B31196A;
	Thu, 28 Aug 2025 13:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="X0agNB8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805483126C4
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386935; cv=none; b=AYSGPcmC85C5Hnfx2sjNtJxmeAdpXLjAQbDcbQ4zOQZki/JxB+2pvRT9ZUONlP1QUKbxXeXBaSD0QebsDpT/UFm92Wc3kGka/JXnd/snY1jCjwj0JDNyktOMWQsQEFDGqNNvv74ALWFJWqoAuPdxG4+7UR7QJeGHFZD+Q9E8vQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386935; c=relaxed/simple;
	bh=jR61Jx/L34YpSRYWBi9qFXxWLcHX8m1CNNA0rxY9loI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jsbJrVlvxY1M+H37ZEsiHyLW6znq8edTdZwOEBcOHM1i8UNgrNWna7Eiw7k05PRaMtYvMbH3KVQRMv8y1KCJjuPB3eG7LwcJybcznzmZsXrbwwwgyLO802PTut8BchAfEBOHi1tZeFRCtE4JFg5HeVC4ADplH4fu4/bS6G4N+d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=X0agNB8g; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-61cd1046d42so1170200a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756386932; x=1756991732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDbzDzint4NdSMjZoYKjKWKdFOvKafCGzOB2IyJMsjI=;
        b=X0agNB8g5Ohhj+Z2Z+0KH53Z/TcldlKIVLf9BVGE77h/511K8TD6CVUVBLSeqR3bTO
         QnP7kfJHeii49Lb+rOrtStHGc3wkiqlQ2dbIlJEHP922JJLr41PmAViSpJyspWb8lYAv
         CHF4pT/tTsiTAZ8r2bd7E47Rb4ObEbuLU0uBjhzHtpJI911VJx/RCx9NXZHgdVv4BKBu
         0rYhJ486SHa0F28Nv9yzyK9DyP8VrFu+VLWmQexiq8QMa2KPB54jZCxaati/JvuhfeJD
         VISCGEfNo7ucTWGAWScRYv9Ra58C/XrGndQXkqSMzISz7n0giRStpZjetuFnjJkOBjjY
         54yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756386932; x=1756991732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mDbzDzint4NdSMjZoYKjKWKdFOvKafCGzOB2IyJMsjI=;
        b=iTcnbJJI60h9+sB143UUceFcQ8B0Ay1jDIdJB0XEHO/w6vPuahYC/zVvaNozwlYm6n
         aeD8gDJDzpXtNwykaaOBFyI8tHRON704S3gRnG9JkVw1sbR42a2nYVFDiBNNVv51I7Tl
         XtOD1nAHDdgVkEBfWmXTgswM7KgszUbkibxt/61ZsGxjt7Yejvu8yb9g4t+ts4PYO141
         /UJJpZSiqPniF66EySwH6zcpqK5cqHzzyNinI765mv8AxlVpJotTA4g91HFmJTnHmdPv
         k/gJzZ5L9Nb3VY5cREQCaDDLKsLbu834zRhrcO6qwgUtyOcf4AO5L2vNAcFz2Su9KJwD
         Imxw==
X-Forwarded-Encrypted: i=1; AJvYcCVt/SWsPB5nSE6k55F4E7YJe8MU6D6OjamJE8Mf6uPouQkf/LSg2BEswXjIfgSb98Kd+U/lb817OLmE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqfln7L3zPhEhDYdAN5HeIB1H3Ki3l1F5q9oox+Ia494EaD/0w
	2FeguVWJ85d1T+tQzmvp8PZcEkqr6Ek/NnCxY9mX0jzVidMWsC19/uQKsD/oF8QcU4w=
X-Gm-Gg: ASbGnctbw4woGCX8CPYktYV0AHjUYIK8CyXoB08I0JMs+TEGUrowRX23T4gNsqaeByc
	AEwd/R3IzK9MwKaqkoPz8vu5XESFVrTRusMaWbVPdASmnM2pVdFDpSE2VBpj/ysF/hXNnKYqlLo
	rsmehUhrzMdgeegZ2hYY/oiqOJFp8BhqCLfk1vIfUN5dfX5edaA62kgaFLtIfh8tkBggTk8kFVT
	dKUCTTaTQSNjx1vMjYbH1DhdWb9iEeEYQ73zVUs5sOxszQXJOnfSwB36mJZmsang8Z6xfHx/VXj
	Uho9RbYnIfmfPwPpVGFJRQySWCU+DmMCfGDB3bxxCCBmksjIl//0UVcGu7kiQ/M/VqiW8WacV2Q
	eutzFv5fmDWP8ripbLR6bgUX2QV6kRJFYRaLzmEfS+P2/zYUqobf+2OUSwl3TUzrz5hpGvA6X9A
	T62wZUKCNImlV05fi6
X-Google-Smtp-Source: AGHT+IH9+QbGR9aSDPrFBVItl1A1m4Ivh6TYBQXMoc7xdFCVadOMpEbe4v00/Pyx674AUhPZjWsNLA==
X-Received: by 2002:a05:6402:52c4:b0:607:28c9:c3c9 with SMTP id 4fb4d7f45d1cf-61c1b453182mr21153103a12.6.1756386931753;
        Thu, 28 Aug 2025 06:15:31 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cd8ce1cc9sm1302435a12.42.2025.08.28.06.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:15:31 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 5/5] arm64: dts: broadcom: bcm2712: Add UARTA controller node
Date: Thu, 28 Aug 2025 15:17:14 +0200
Message-ID: <35c0da6a741019efefc3c8e405e210a3a8156830.1756386531.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756386531.git.andrea.porta@suse.com>
References: <cover.1756386531.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

On RPi5 device Bluetooth chips is connected to UARTA
port. Add Bluetooth chips and related pin definitions.

With this and firmware already provided by distributions,
at least on openSUSE Tumbleweed, this is sufficient to make
Bluetooth operational on RPi5 \o/.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 42 +++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 18 ++++++++
 2 files changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 411b58c1dddf..04738bf281eb 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -81,6 +81,11 @@ wl_on_reg: wl-on-reg {
 };
 
 &pinctrl {
+	bt_shutdown_default: bt-shutdown-default-state {
+		function = "gpio";
+		pins = "gpio29";
+	};
+
 	emmc_sd_default: emmc-sd-default-state {
 		pins = "emmc_cmd", "emmc_dat0", "emmc_dat1", "emmc_dat2", "emmc_dat3";
 		bias-pull-up;
@@ -110,6 +115,29 @@ dat-pins {
 		};
 	};
 
+	uarta_24_default: uarta-24-default-state {
+		rts-pins {
+			function = "uart0";
+			pins = "gpio24";
+			bias-disable;
+		};
+		cts-pins {
+			function = "uart0";
+			pins = "gpio25";
+			bias-pull-up;
+		};
+		txd-pins {
+			function = "uart0";
+			pins = "gpio26";
+			bias-disable;
+		};
+		rxd-pins {
+			function = "uart0";
+			pins = "gpio27";
+			bias-pull-up;
+		};
+	};
+
 	wl_on_default: wl-on-default-state {
 		function = "gpio";
 		pins = "gpio28";
@@ -188,6 +216,20 @@ power: power {
 	};
 };
 
+/* uarta communicates with the BT module */
+&uarta {
+	uart-has-rtscts;
+	pinctrl-0 = <&uarta_24_default &bt_shutdown_default>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <3000000>;
+		shutdown-gpios = <&gio 29 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &hvs {
 	clocks = <&firmware_clocks 4>, <&firmware_clocks 16>;
 	clock-names = "core", "disp";
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 871537366e96..8ff254c35b0c 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -38,6 +38,13 @@ clk_emmc2: clk-emmc2 {
 			clock-frequency = <200000000>;
 			clock-output-names = "emmc2-clock";
 		};
+
+		clk_sw_baud: clk-sw-baud {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <96000000>;
+			clock-output-names = "sw-baud";
+		};
 	};
 
 	cpus: cpus {
@@ -260,6 +267,17 @@ gio: gpio@7d508500 {
 			brcm,gpio-bank-widths = <32 22>;
 		};
 
+		uarta: serial@7d50c000 {
+			compatible = "brcm,bcm7271-uart";
+			reg = <0x7d50c000 0x20>;
+			reg-names = "uart";
+			clocks = <&clk_sw_baud>;
+			clock-names = "sw_baud";
+			interrupts = <GIC_SPI 276 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uart";
+			status = "disabled";
+		};
+
 		pinctrl_aon: pinctrl@7d510700 {
 			compatible = "brcm,bcm2712c0-aon-pinctrl";
 			reg = <0x7d510700 0x20>;
-- 
2.35.3


