Return-Path: <devicetree+bounces-114848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B669AD1E9
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E20351C2576D
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E01209F3B;
	Wed, 23 Oct 2024 16:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="W53HFHGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A2205E17
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702260; cv=none; b=HIgyFN64wAKcFa7jpDi2FwpsJ7VhjUPeqGOX63Q+ww+6lC1rzGsZVrK1ukoeRtwnCC/Bbl9qeVBFzC40pPykm0x424WV/vqFSUsGtnccn0rQadr3fWeFjk/Q4cDGXDLymBuP0jpn8u6SrlRjigEojesvkcBEREKvM7uiN6VTDKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702260; c=relaxed/simple;
	bh=nMBH0rWLQkU2soF+Cg2c4yz0aba3rmak7d2lggM5H44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lvwCHaWA1MiS/MO6xeI1wxjx4Ho9f9vKvLa9cEH2s63GeUvRvM1WaXjUl8yeG6DLcF+8ZfUYMJDfCzAQM9Ml+TLT/Pl4jVF+W+lzy0I3LU0ixpW5EsDohFxqwu745TLLUvxlV86aW6drhKziP5Y4XJUxauEWAoZGtEw5NnBhegk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=W53HFHGo; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43161c0068bso56793155e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702256; x=1730307056; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZEz4/9qLe30swJeAKIBBvm5fHc5WeQ4yezYVAmOgKA=;
        b=W53HFHGofOY87JUQQ7VMG0jCiHlRc2Tq+6KriRo2SlDgojvu7zpmtA/ofdJkdPQllA
         5un2VyGZtR0Dnk8Cp38W5JOt3EnUipVIfoKC6t49LGgF+iMTVKFHq08zIO7PQlMUxNnh
         7bAAGaN5lU8WHOy0AxKZBbrbMxP+5fP5/xy9XWqY9qwgwfz57b98h9tPW+UYPumLdm7t
         KHZIX9teZnZTKnprsJVScKcBmzUW1fvL1rTbtU05VaahtpkeUCuGJtAYrskMaVdgyOro
         hVj8MFrOzkvDNTj3u3OE7ucwAloitE8WD4sIuYjxWgDFdnW0GtcJngGJb2Bvvaz+ERL9
         twog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702256; x=1730307056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZEz4/9qLe30swJeAKIBBvm5fHc5WeQ4yezYVAmOgKA=;
        b=QlxLo+93AdEYPFBD5MCdRDeIj6yXxYrcXSS1B16bS0OA4ItJ3p5I3Dcc5Syj9tcmYD
         bc8pwYDW6zMQ0CmaXYcIql8gy1v4liywVux8sPeVOAKvR5OXEROkxgvtDsV1gnXVR2sh
         NQx6rjZv8F7vEn692+xwjdkuh4xZ2TtzIHi8z5HK9R2o/4IkeAdQTjZvJOs9xSeK4fnu
         cRgqadI+8WZ7YgCmLu42HY6nRIxPcFrOJhoXfUHTmnhH+/blgbJ4ZLH4CMaBeLJ/wHMo
         HxY776VlhrDSjAvlvhjjc19dAgqWxeo+zCmx6xQ8tR6eqlLrjNXHXsh0e6wuVgUlSJPi
         K4YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW+oWedzXS8A2GZ+LZedg0q9l14R3Yt1Jofr3gBbrFwYtFZ0TR0rKzYq+qC61WO+2N6ZSyKw3EW6S+@vger.kernel.org
X-Gm-Message-State: AOJu0YwsrZ1GonOlo/uNK+Chbf3+S0cj/WqBb/VHm3IA6uElgfCYptYV
	OCjp6ECIUlSrGYtsNBUAE6Mv7crqswENqoOFzQaW7wr8Wo5vwRgvrCKu3vLw/eU=
X-Google-Smtp-Source: AGHT+IEKHk3DI5IbbI8urr1ZRpPA9f3+OxHfkXhNNfwqtfcP/WAzZ07gB+VgLne69sb39V54boK1Cw==
X-Received: by 2002:a05:600c:4e8e:b0:426:64a2:5362 with SMTP id 5b1f17b1804b1-431841fd6b6mr24505825e9.8.1729702256467;
        Wed, 23 Oct 2024 09:50:56 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:56 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:33 +0100
Subject: [PATCH 36/37] arm64: dts: broadcom: Add display pipeline support
 to BCM2712
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-36-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Adds the HVS and associated hardware blocks to support the HDMI
and writeback connectors on BCM2712 / Pi5.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts |  14 ++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi        | 188 +++++++++++++++++++++++
 2 files changed, 202 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 92a2ada037f3..fbc56309660f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -88,5 +88,19 @@ power: power {
 		firmware = <&firmware>;
 		#power-domain-cells = <1>;
 	};
+};
+
+&hvs {
+	clocks = <&firmware_clocks 4>, <&firmware_clocks 16>;
+	clock-names = "core", "disp";
+};
+
+&hdmi0 {
+	clocks = <&firmware_clocks 13>, <&firmware_clocks 14>, <&dvp 0>, <&clk_27MHz>;
+	clock-names = "hdmi", "bvb", "audio", "cec";
+};
 
+&hdmi1 {
+	clocks = <&firmware_clocks 13>, <&firmware_clocks 14>, <&dvp 1>, <&clk_27MHz>;
+	clock-names = "hdmi", "bvb", "audio", "cec";
 };
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 6e5a984c1d4e..39305e0869ec 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -265,6 +265,172 @@ gicv2: interrupt-controller@7fff9000 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 		};
+
+		aon_intr: interrupt-controller@7d510600 {
+			compatible = "brcm,bcm2711-l2-intc", "brcm,l2-intc";
+			reg = <0x7d510600 0x30>;
+			interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		pixelvalve0: pixelvalve@7c410000 {
+			compatible = "brcm,bcm2712-pixelvalve0";
+			reg = <0x7c410000 0x100>;
+			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pixelvalve1: pixelvalve@7c411000 {
+			compatible = "brcm,bcm2712-pixelvalve1";
+			reg = <0x7c411000 0x100>;
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		mop: mop@7c500000 {
+			compatible = "brcm,bcm2712-mop";
+			reg = <0x7c500000 0x28>;
+			interrupt-parent = <&disp_intr>;
+			interrupts = <1>;
+		};
+
+		moplet: moplet@7c501000 {
+			compatible = "brcm,bcm2712-moplet";
+			reg = <0x7c501000 0x20>;
+			interrupt-parent = <&disp_intr>;
+			interrupts = <0>;
+		};
+
+		disp_intr: interrupt-controller@7c502000 {
+			compatible = "brcm,bcm2711-l2-intc", "brcm,l2-intc";
+			reg = <0x7c502000 0x30>;
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		dvp: clock@7c700000 {
+			compatible = "brcm,brcm2711-dvp";
+			reg = <0x7c700000 0x10>;
+			clocks = <&clk_108MHz>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		ddc0: i2c@7d508200 {
+			compatible = "brcm,brcmstb-i2c";
+			reg = <0x7d508200 0x58>;
+			interrupt-parent = <&bsc_irq>;
+			interrupts = <1>;
+			clock-frequency = <97500>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		ddc1: i2c@7d508280 {
+			compatible = "brcm,brcmstb-i2c";
+			reg = <0x7d508280 0x58>;
+			interrupt-parent = <&bsc_irq>;
+			interrupts = <2>;
+			clock-frequency = <97500>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		bsc_irq: intc@7d508380 {
+			compatible = "brcm,bcm7271-l2-intc";
+			reg = <0x7d508380 0x10>;
+			interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		main_irq: intc@7d508400 {
+			compatible = "brcm,bcm7271-l2-intc";
+			reg = <0x7d508400 0x10>;
+			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		hdmi0: hdmi@7ef00700 {
+			compatible = "brcm,bcm2712-hdmi0";
+			reg = <0x7c701400 0x300>,
+			      <0x7c701000 0x200>,
+			      <0x7c701d00 0x300>,
+			      <0x7c702000 0x80>,
+			      <0x7c703800 0x200>,
+			      <0x7c704000 0x800>,
+			      <0x7c700100 0x80>,
+			      <0x7d510800 0x100>,
+			      <0x7c720000 0x100>;
+			reg-names = "hdmi",
+				    "dvp",
+				    "phy",
+				    "rm",
+				    "packet",
+				    "metadata",
+				    "csc",
+				    "cec",
+				    "hd";
+			resets = <&dvp 1>;
+			interrupt-parent = <&aon_intr>;
+			interrupts = <1>, <2>, <3>,
+				     <7>, <8>;
+			interrupt-names = "cec-tx", "cec-rx", "cec-low",
+					  "hpd-connected", "hpd-removed";
+			ddc = <&ddc0>;
+		};
+
+		hdmi1: hdmi@7ef05700 {
+			compatible = "brcm,bcm2712-hdmi1";
+			reg = <0x7c706400 0x300>,
+			      <0x7c706000 0x200>,
+			      <0x7c706d00 0x300>,
+			      <0x7c707000 0x80>,
+			      <0x7c708800 0x200>,
+			      <0x7c709000 0x800>,
+			      <0x7c700180 0x80>,
+			      <0x7d511000 0x100>,
+			      <0x7c720000 0x100>;
+			reg-names = "hdmi",
+				    "dvp",
+				    "phy",
+				    "rm",
+				    "packet",
+				    "metadata",
+				    "csc",
+				    "cec",
+				    "hd";
+			resets = <&dvp 2>;
+			interrupt-parent = <&aon_intr>;
+			interrupts = <11>, <12>, <13>,
+				     <14>, <15>;
+			interrupt-names = "cec-tx", "cec-rx", "cec-low",
+					  "hpd-connected", "hpd-removed";
+			ddc = <&ddc1>;
+		};
+	};
+
+	axi: axi {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		ranges = <0x00 0x00000000  0x00 0x00000000  0x10 0x00000000>,
+			 <0x10 0x00000000  0x10 0x00000000  0x01 0x00000000>,
+			 <0x14 0x00000000  0x14 0x00000000  0x04 0x00000000>,
+			 <0x18 0x00000000  0x18 0x00000000  0x04 0x00000000>,
+			 <0x1c 0x00000000  0x1c 0x00000000  0x04 0x00000000>;
+
+		dma-ranges = <0x00 0x00000000  0x00 0x00000000  0x10 0x00000000>,
+			     <0x10 0x00000000  0x10 0x00000000  0x01 0x00000000>,
+			     <0x14 0x00000000  0x14 0x00000000  0x04 0x00000000>,
+			     <0x18 0x00000000  0x18 0x00000000  0x04 0x00000000>,
+			     <0x1c 0x00000000  0x1c 0x00000000  0x04 0x00000000>;
+
+		vc4: gpu {
+			compatible = "brcm,bcm2712-vc6";
+		};
 	};
 
 	timer {
@@ -280,4 +446,26 @@ IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 12 (GIC_CPU_MASK_SIMPLE(4) |
 					  IRQ_TYPE_LEVEL_LOW)>;
 	};
+
+	clk_27MHz: clk-27M {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <27000000>;
+		clock-output-names = "27MHz-clock";
+	};
+
+	clk_108MHz: clk-108M {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <108000000>;
+		clock-output-names = "108MHz-clock";
+	};
+
+	hvs: hvs@107c580000 {
+		compatible = "brcm,bcm2712-hvs";
+		reg = <0x10 0x7c580000 0x0 0x1a000>;
+		interrupt-parent = <&disp_intr>;
+		interrupts = <2>, <9>, <16>;
+		interrupt-names = "ch0-eof", "ch1-eof", "ch2-eof";
+	};
 };

-- 
2.34.1


