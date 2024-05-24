Return-Path: <devicetree+bounces-69001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 643BD8CE49F
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 13:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AADC1C20B6D
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316AC85C6C;
	Fri, 24 May 2024 10:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="M4o8wtYP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF03886270
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 10:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716548395; cv=none; b=Ng42gzBo97mAg1zcB406BvdIJ0yaflDTuJ5Bu4uOiL7dG6W1U7bOaHrlE1ReXpXbdukHgRf9ulc96GLaCjibLjJaiKSWGKI6NEydxmW3Ce6+sGlljTUPREzN8cjKwDpuVoOgkidAHbJoKBBB6cxu9f+noETZsE+KYFwa7ljpT/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716548395; c=relaxed/simple;
	bh=LBA8a2XrFTAE2QUqnaAH801BnJI3r5S9pPJY+7ndyS4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UAphboKij3nsJ40vws6u/aB5F6HBPwqqh6Gv907FXm7ki430i9yVLLNM7EyC9rIMDuMi/rR8woiyGDThdBWnm4jqNMF+PHtZttOh2tUJiktUkZyu7eWZxTFqJkMNurFCw9hq9foVYbEIwHBoXNfI8L0IeylxnJC8i5Htlj31R5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=M4o8wtYP; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-354e0d4db6cso1788316f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 03:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1716548387; x=1717153187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZVZIhDc2uGD9l+5lN8WgrlXjvVSCZ50G9cEi7s6UCs=;
        b=M4o8wtYPNOvo7SKuvZ+5gOJec+JriRdGWQmdPsSMZrGeLfG6ePn9Lji9DNnNvcO+TX
         uRPfN63PyMPnsrEWXPPPZ1Z+WJQW0NawceAG1tc+QmU8L46dMP5zgXg7gmjMjkGPZZMa
         AhBVsGskIJt30cLqUOHPdw8Q8IrUk+dtrwCdNf1lkAsk98Zl5GhukFTaHo3DXmswNbPz
         mhXPMiK5aM2Q1Px8kJq4/rHSKbIsw7l9lv4NrzE+vF5Q9KX5y7ZPSP99vfVvUougPgPm
         h7XIhXc6erSsofiqs0jnjrrWQ6pT2ZYEwG13zJ9DFkTRoLaYU08r3d5d7Od+LMCnYYSX
         OY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716548387; x=1717153187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZZVZIhDc2uGD9l+5lN8WgrlXjvVSCZ50G9cEi7s6UCs=;
        b=bHEPpKILv76g8JtGihqveOGIdrnT9HRRMkINE2qnY5WLZoW1EvHliG+SfRttXknucF
         KH/Qlhyjnr/1KyLzBH4CElsKbQCeODTZNg5/QMeoSdnU4AZXMHSIaLb97dgzcp9/wAu6
         U55izhZQsbRABn1H+5jnUrqjKjHVhZSjxSKjwfho5UsGsj+Uonr3M/Uy/RMrdPMrJ0X/
         gnR5RamX7yhG0Oewo+zhtehH954NQGroGDHREFnvDtCGhtmQ9H2Q9rxj2fxBVwAjjs5T
         8r7mnGcOJHJTl0pJtmGf0CWq8DJGYwznlNqc9XBq6CVR9LojzwQunRwQ1WAippo3PyOK
         d5ww==
X-Forwarded-Encrypted: i=1; AJvYcCVOO4DNRH1dN60/bD1caUrHVWobB3L0vQrr1g9tqgoUY7nE2mp6zHCQUaMW5BN7ohbizz3DyH6AiW7Cc6UbhqayIuDA/Y/kZ+nNUw==
X-Gm-Message-State: AOJu0YwC7g6Um5o4mt2MsLBd9zXjMc3nhVn3dh2TJEpLDEiMj7wEj3GX
	ZmdqXL98lLe5spSIc7vppuLEr9KF2qFg/A7WoUXq9JhCv61k/qsDO7F3x5pS6/8=
X-Google-Smtp-Source: AGHT+IErj7q6hYZQzYeaE0ffKezkb1h1Ephz9TcE2OZyToA6Jh/i/tKmcKFGEKRsFbT9DTjmSvwbTQ==
X-Received: by 2002:a5d:58ec:0:b0:34d:8206:e76b with SMTP id ffacd0b85a97d-354f750f8e9mr4092613f8f.9.1716548386521;
        Fri, 24 May 2024 03:59:46 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108971393sm17396985e9.19.2024.05.24.03.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 03:59:45 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Patrick Rudolph <patrick.rudolph@9elements.com>,
	Naresh Solanki <Naresh.Solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: aspeed: sbp1: IBM sbp1 BMC board
Date: Fri, 24 May 2024 16:29:24 +0530
Message-ID: <20240524105929.557129-2-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240524105929.557129-1-naresh.solanki@9elements.com>
References: <20240524105929.557129-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Add a device tree for IBM sbp1 BMC board which is based on AST2600 SOC.

sbp1 baseboard has:
- support for up to four Sapphire Rapids sockets having 16 DIMMS each.
  - 240 core/480 threads at maximum
- 32x CPU PCIe slots
- 2x M.2 PCH PCIe slots
- Dual 200Gbit/s NIC
- SPI TPM

Added the following:
- Indication LEDs
- I2C mux & GPIO controller, pin assignments,
- Thermister,
- Voltage regulator
- EEPROM/VPD

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts   | 6124 +++++++++++++++++
 2 files changed, 6125 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index d3ac20e316d0..5fc9ed3f5150 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-ibm-rainier.dtb \
 	aspeed-bmc-ibm-rainier-1s4u.dtb \
 	aspeed-bmc-ibm-rainier-4u.dtb \
+	aspeed-bmc-ibm-sbp1.dtb \
 	aspeed-bmc-intel-s2600wf.dtb \
 	aspeed-bmc-inspur-fp5280g2.dtb \
 	aspeed-bmc-inspur-nf5280m6.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
new file mode 100644
index 000000000000..44c87de4aa6f
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
@@ -0,0 +1,6124 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright 2024 IBM Corp.
+/dts-v1/;
+#include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/i2c/i2c.h>
+#include "aspeed-g6.dtsi"
+
+/ {
+	model = "IBM SBP1";
+	compatible = "ibm,sbp1-bmc", "aspeed,ast2600";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory@80000000 {
+		reg = <0x80000000 0x20000000>;
+		device_type = "memory";
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gfx_memory: framebuffer {
+			size = <0x01000000>;
+			alignment = <0x01000000>;
+			compatible = "shared-dma-pool";
+			reusable;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-power {
+			label = "LED_BMC_READY";
+			gpios = <&gpio0 ASPEED_GPIO(H, 1) GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			retain-state-suspended;
+			panic-indicator;
+		};
+
+		led-id-tpm {
+			label = "LED_ID_TPM";
+			gpios = <&smb_pex_vr_ctrl 12 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-bat {
+			label = "LED_ID_BAT";
+			gpios = <&smb_pex_vr_ctrl 16 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-mgmt-port2 {
+			label = "LED_ID_MGMT_PORT2";
+			gpios = <&smb_pex_vr_ctrl 17 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-mgmt-port1 {
+			label = "LED_ID_MGMT_PORT1";
+			gpios = <&smb_pex_vr_ctrl 18 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-nic1-port1 {
+			label = "LED_ID_NIC1_PORT1";
+			gpios = <&smb_pex_vr_ctrl 22 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-nic1-port2 {
+			label = "LED_ID_NIC1_PORT2";
+			gpios = <&smb_pex_vr_ctrl 23 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-nic2-port1 {
+			label = "LED_ID_NIC2_PORT1";
+			gpios = <&smb_pex_vr_ctrl 24 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-nic2-port2 {
+			label = "LED_ID_NIC2_PORT2";
+			gpios = <&smb_pex_vr_ctrl 25 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-m2-ssd2 {
+			label = "LED_ID_M2_SSD2";
+			gpios = <&smb_pex_vr_ctrl 36 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-m2-ssd1 {
+			label = "LED_ID_M2_SSD1";
+			gpios = <&smb_pex_vr_ctrl 37 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dwr-frnt-p {
+			label = "LED_ID_DWR_FRNT_P";
+			gpios = <&smb_svc_pex_cpu3_led 37 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_BLUE>;
+
+			default-state = "on";
+			retain-state-suspended;
+			retain-state-shutdown;
+		};
+
+		led-pwr-dwr-frnt {
+			label = "LED_PWR_DWR_FRNT";
+			gpios = <&smb_svc_pex_cpu3_led 36 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_GREEN>;
+
+			retain-state-suspended;
+			retain-state-shutdown;
+		};
+
+		led-pwr-dwr-back {
+			label = "LED_PWR_DWR_BACK";
+			gpios = <&smb_pex_vr_ctrl 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_GREEN>;
+
+			retain-state-suspended;
+			retain-state-shutdown;
+		};
+
+		led-id-dwr-back-p {
+			label = "LED_ID_DWR_BACK_P";
+			gpios = <&smb_pex_vr_ctrl 35 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_BLUE>;
+
+			default-state = "on";
+			retain-state-suspended;
+			retain-state-shutdown;
+		};
+
+		led-id-cpu0 {
+			label = "LED_ID_CPU0";
+			gpios = <&smb_svc_pex_cpu0_led 39 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-cpu1 {
+			label = "LED_ID_CPU1";
+			gpios = <&smb_svc_pex_cpu1_led 39 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-cpu2 {
+			label = "LED_ID_CPU2";
+			gpios = <&smb_svc_pex_cpu2_led 39 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-cpu3 {
+			label = "LED_ID_CPU3";
+			gpios = <&smb_svc_pex_cpu3_led 39 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0e2 {
+			label = "LED_ID_DIMM_C0E2";
+			gpios = <&smb_svc_pex_cpu0_led 20 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0e1 {
+			label = "LED_ID_DIMM_C0E1";
+			gpios = <&smb_svc_pex_cpu0_led 21 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0f2 {
+			label = "LED_ID_DIMM_C0F2";
+			gpios = <&smb_svc_pex_cpu0_led 22 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0f1 {
+			label = "LED_ID_DIMM_C0F1";
+			gpios = <&smb_svc_pex_cpu0_led 23 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0g2 {
+			label = "LED_ID_DIMM_C0G2";
+			gpios = <&smb_svc_pex_cpu0_led 24 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0g1 {
+			label = "LED_ID_DIMM_C0G1";
+			gpios = <&smb_svc_pex_cpu0_led 25 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0h2 {
+			label = "LED_ID_DIMM_C0H2";
+			gpios = <&smb_svc_pex_cpu0_led 26 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0h1 {
+			label = "LED_ID_DIMM_C0H1";
+			gpios = <&smb_svc_pex_cpu0_led 27 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0a2 {
+			label = "LED_ID_DIMM_C0A2";
+			gpios = <&smb_svc_pex_cpu0_led 28 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0a1 {
+			label = "LED_ID_DIMM_C0A1";
+			gpios = <&smb_svc_pex_cpu0_led 29 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0b2 {
+			label = "LED_ID_DIMM_C0B2";
+			gpios = <&smb_svc_pex_cpu0_led 30 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0b1 {
+			label = "LED_ID_DIMM_C0B1";
+			gpios = <&smb_svc_pex_cpu0_led 31 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0c2 {
+			label = "LED_ID_DIMM_C0C2";
+			gpios = <&smb_svc_pex_cpu0_led 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0c1 {
+			label = "LED_ID_DIMM_C0C1";
+			gpios = <&smb_svc_pex_cpu0_led 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0d2 {
+			label = "LED_ID_DIMM_C0D2";
+			gpios = <&smb_svc_pex_cpu0_led 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c0d1 {
+			label = "LED_ID_DIMM_C0D1";
+			gpios = <&smb_svc_pex_cpu0_led 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1e2 {
+			label = "LED_ID_DIMM_C1E2";
+			gpios = <&smb_svc_pex_cpu1_led 20 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1e1 {
+			label = "LED_ID_DIMM_C1E1";
+			gpios = <&smb_svc_pex_cpu1_led 21 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1f2 {
+			label = "LED_ID_DIMM_C1F2";
+			gpios = <&smb_svc_pex_cpu1_led 22 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1f1 {
+			label = "LED_ID_DIMM_C1F1";
+			gpios = <&smb_svc_pex_cpu1_led 23 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1g2 {
+			label = "LED_ID_DIMM_C1G2";
+			gpios = <&smb_svc_pex_cpu1_led 24 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1g1 {
+			label = "LED_ID_DIMM_C1G1";
+			gpios = <&smb_svc_pex_cpu1_led 25 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1h2 {
+			label = "LED_ID_DIMM_C1H2";
+			gpios = <&smb_svc_pex_cpu1_led 26 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1h1 {
+			label = "LED_ID_DIMM_C1H1";
+			gpios = <&smb_svc_pex_cpu1_led 27 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1a2 {
+			label = "LED_ID_DIMM_C1A2";
+			gpios = <&smb_svc_pex_cpu1_led 28 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1a1 {
+			label = "LED_ID_DIMM_C1A1";
+			gpios = <&smb_svc_pex_cpu1_led 29 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1b2 {
+			label = "LED_ID_DIMM_C1B2";
+			gpios = <&smb_svc_pex_cpu1_led 30 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1b1 {
+			label = "LED_ID_DIMM_C1B1";
+			gpios = <&smb_svc_pex_cpu1_led 31 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1c2 {
+			label = "LED_ID_DIMM_C1C2";
+			gpios = <&smb_svc_pex_cpu1_led 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1c1 {
+			label = "LED_ID_DIMM_C1C1";
+			gpios = <&smb_svc_pex_cpu1_led 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1d2 {
+			label = "LED_ID_DIMM_C1D2";
+			gpios = <&smb_svc_pex_cpu1_led 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c1d1 {
+			label = "LED_ID_DIMM_C1D1";
+			gpios = <&smb_svc_pex_cpu1_led 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2e2 {
+			label = "LED_ID_DIMM_C2E2";
+			gpios = <&smb_svc_pex_cpu2_led 20 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2e1 {
+			label = "LED_ID_DIMM_C2E1";
+			gpios = <&smb_svc_pex_cpu2_led 21 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2f2 {
+			label = "LED_ID_DIMM_C2F2";
+			gpios = <&smb_svc_pex_cpu2_led 22 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2f1 {
+			label = "LED_ID_DIMM_C2F1";
+			gpios = <&smb_svc_pex_cpu2_led 23 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2g2 {
+			label = "LED_ID_DIMM_C2G2";
+			gpios = <&smb_svc_pex_cpu2_led 24 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2g1 {
+			label = "LED_ID_DIMM_C2G1";
+			gpios = <&smb_svc_pex_cpu2_led 25 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2h2 {
+			label = "LED_ID_DIMM_C2H2";
+			gpios = <&smb_svc_pex_cpu2_led 26 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2h1 {
+			label = "LED_ID_DIMM_C2H1";
+			gpios = <&smb_svc_pex_cpu2_led 27 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2a2 {
+			label = "LED_ID_DIMM_C2A2";
+			gpios = <&smb_svc_pex_cpu2_led 28 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2a1 {
+			label = "LED_ID_DIMM_C2A1";
+			gpios = <&smb_svc_pex_cpu2_led 29 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2b2 {
+			label = "LED_ID_DIMM_C2B2";
+			gpios = <&smb_svc_pex_cpu2_led 30 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2b1 {
+			label = "LED_ID_DIMM_C2B1";
+			gpios = <&smb_svc_pex_cpu2_led 31 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2c2 {
+			label = "LED_ID_DIMM_C2C2";
+			gpios = <&smb_svc_pex_cpu2_led 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2c1 {
+			label = "LED_ID_DIMM_C2C1";
+			gpios = <&smb_svc_pex_cpu2_led 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2d2 {
+			label = "LED_ID_DIMM_C2D2";
+			gpios = <&smb_svc_pex_cpu2_led 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c2d1 {
+			label = "LED_ID_DIMM_C2D1";
+			gpios = <&smb_svc_pex_cpu2_led 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3e2 {
+			label = "LED_ID_DIMM_C3E2";
+			gpios = <&smb_svc_pex_cpu3_led 20 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3e1 {
+			label = "LED_ID_DIMM_C3E1";
+			gpios = <&smb_svc_pex_cpu3_led 21 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3f2 {
+			label = "LED_ID_DIMM_C3F2";
+			gpios = <&smb_svc_pex_cpu3_led 22 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3f1 {
+			label = "LED_ID_DIMM_C3F1";
+			gpios = <&smb_svc_pex_cpu3_led 23 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3g2 {
+			label = "LED_ID_DIMM_C3G2";
+			gpios = <&smb_svc_pex_cpu3_led 24 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3g1 {
+			label = "LED_ID_DIMM_C3G1";
+			gpios = <&smb_svc_pex_cpu3_led 25 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3h2 {
+			label = "LED_ID_DIMM_C3H2";
+			gpios = <&smb_svc_pex_cpu3_led 26 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3h1 {
+			label = "LED_ID_DIMM_C3H1";
+			gpios = <&smb_svc_pex_cpu3_led 27 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3a2 {
+			label = "LED_ID_DIMM_C3A2";
+			gpios = <&smb_svc_pex_cpu3_led 28 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3a1 {
+			label = "LED_ID_DIMM_C3A1";
+			gpios = <&smb_svc_pex_cpu3_led 29 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3b2 {
+			label = "LED_ID_DIMM_C3B2";
+			gpios = <&smb_svc_pex_cpu3_led 30 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3b1 {
+			label = "LED_ID_DIMM_C3B1";
+			gpios = <&smb_svc_pex_cpu3_led 31 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3c2 {
+			label = "LED_ID_DIMM_C3C2";
+			gpios = <&smb_svc_pex_cpu3_led 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3c1 {
+			label = "LED_ID_DIMM_C3C1";
+			gpios = <&smb_svc_pex_cpu3_led 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3d2 {
+			label = "LED_ID_DIMM_C3D2";
+			gpios = <&smb_svc_pex_cpu3_led 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-c3d1 {
+			label = "LED_ID_DIMM_C3D1";
+			gpios = <&smb_svc_pex_cpu3_led 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd01 {
+			label = "LED_ID_RSSD01";
+			gpios = <&smb_svc_pex_rssd01_16 0 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd02 {
+			label = "LED_ID_RSSD02";
+			gpios = <&smb_svc_pex_rssd01_16 1 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd03 {
+			label = "LED_ID_RSSD03";
+			gpios = <&smb_svc_pex_rssd01_16 2 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd04 {
+			label = "LED_ID_RSSD04";
+			gpios = <&smb_svc_pex_rssd01_16 3 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd05 {
+			label = "LED_ID_RSSD05";
+			gpios = <&smb_svc_pex_rssd01_16 4 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd06 {
+			label = "LED_ID_RSSD06";
+			gpios = <&smb_svc_pex_rssd01_16 5 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd07 {
+			label = "LED_ID_RSSD07";
+			gpios = <&smb_svc_pex_rssd01_16 6 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd08 {
+			label = "LED_ID_RSSD08";
+			gpios = <&smb_svc_pex_rssd01_16 7 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd09 {
+			label = "LED_ID_RSSD09";
+			gpios = <&smb_svc_pex_rssd01_16 8 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd10 {
+			label = "LED_ID_RSSD10";
+			gpios = <&smb_svc_pex_rssd01_16 9 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd11 {
+			label = "LED_ID_RSSD11";
+			gpios = <&smb_svc_pex_rssd01_16 10 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd12 {
+			label = "LED_ID_RSSD12";
+			gpios = <&smb_svc_pex_rssd01_16 11 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd13 {
+			label = "LED_ID_RSSD13";
+			gpios = <&smb_svc_pex_rssd01_16 12 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd14 {
+			label = "LED_ID_RSSD14";
+			gpios = <&smb_svc_pex_rssd01_16 13 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd15 {
+			label = "LED_ID_RSSD15";
+			gpios = <&smb_svc_pex_rssd01_16 14 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd16 {
+			label = "LED_ID_RSSD16";
+			gpios = <&smb_svc_pex_rssd01_16 15 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd17 {
+			label = "LED_ID_RSSD17";
+			gpios = <&smb_svc_pex_rssd17_32 0 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd18 {
+			label = "LED_ID_RSSD18";
+			gpios = <&smb_svc_pex_rssd17_32 1 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd19 {
+			label = "LED_ID_RSSD19";
+			gpios = <&smb_svc_pex_rssd17_32 2 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd20 {
+			label = "LED_ID_RSSD20";
+			gpios = <&smb_svc_pex_rssd17_32 3 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd21 {
+			label = "LED_ID_RSSD21";
+			gpios = <&smb_svc_pex_rssd17_32 4 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd22 {
+			label = "LED_ID_RSSD22";
+			gpios = <&smb_svc_pex_rssd17_32 5 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd23 {
+			label = "LED_ID_RSSD23";
+			gpios = <&smb_svc_pex_rssd17_32 6 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd24 {
+			label = "LED_ID_RSSD24";
+			gpios = <&smb_svc_pex_rssd17_32 7 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd25 {
+			label = "LED_ID_RSSD25";
+			gpios = <&smb_svc_pex_rssd17_32 8 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd26 {
+			label = "LED_ID_RSSD26";
+			gpios = <&smb_svc_pex_rssd17_32 9 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd27 {
+			label = "LED_ID_RSSD27";
+			gpios = <&smb_svc_pex_rssd17_32 10 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd28 {
+			label = "LED_ID_RSSD28";
+			gpios = <&smb_svc_pex_rssd17_32 11 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd29 {
+			label = "LED_ID_RSSD29";
+			gpios = <&smb_svc_pex_rssd17_32 12 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd30 {
+			label = "LED_ID_RSSD30";
+			gpios = <&smb_svc_pex_rssd17_32 13 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd31 {
+			label = "LED_ID_RSSD31";
+			gpios = <&smb_svc_pex_rssd17_32 14 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-dimm-rssd32 {
+			label = "LED_ID_RSSD32";
+			gpios = <&smb_svc_pex_rssd17_32 15 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm01 {
+			label = "LED_ID_FAN_ASM01";
+			gpios = <&smb_svc_pex_rssd01_16 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm02 {
+			label = "LED_ID_FAN_ASM02";
+			gpios = <&smb_svc_pex_rssd01_16 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm03 {
+			label = "LED_ID_FAN_ASM03";
+			gpios = <&smb_svc_pex_rssd01_16 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm04 {
+			label = "LED_ID_FAN_ASM04";
+			gpios = <&smb_svc_pex_rssd01_16 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm05 {
+			label = "LED_ID_FAN_ASM05";
+			gpios = <&smb_svc_pex_rssd01_16 36 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm06 {
+			label = "LED_ID_FAN_ASM06";
+			gpios = <&smb_svc_pex_rssd01_16 37 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm07 {
+			label = "LED_ID_FAN_ASM07";
+			gpios = <&smb_svc_pex_rssd17_32 32 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm08 {
+			label = "LED_ID_FAN_ASM08";
+			gpios = <&smb_svc_pex_rssd17_32 33 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm09 {
+			label = "LED_ID_FAN_ASM09";
+			gpios = <&smb_svc_pex_rssd17_32 34 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm10 {
+			label = "LED_ID_FAN_ASM10";
+			gpios = <&smb_svc_pex_rssd17_32 35 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm11 {
+			label = "LED_ID_FAN_ASM11";
+			gpios = <&smb_svc_pex_rssd17_32 36 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+
+		led-id-fan-asm12 {
+			label = "LED_ID_FAN_ASM12";
+			gpios = <&smb_svc_pex_rssd17_32 37 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_YELLOW>;
+		};
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&p12v_vd 0>, <&p5v_aux_vd 0>, <&p5v_bmc_aux_vd 0>, <&p3v3_aux_vd 0>,
+			<&p3v3_bmc_aux_vd 0>, <&p1v8_bmc_aux_vd 0>, <&adc1 4>, <&adc0 2>, <&adc1 0>,
+			<&p2V5_aux_vd 0>, <&p3v3_rtc_vd 0>;
+	};
+
+	p12v_vd: voltage-divider1 {
+		compatible = "voltage-divider";
+		io-channels = <&adc1 3>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 1127/127 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <15>;
+		full-ohms = <133>;
+	};
+
+	p5v_aux_vd: voltage-divider2 {
+		compatible = "voltage-divider";
+		io-channels = <&adc1 5>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 1365/365 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <50>;
+		full-ohms = <187>;
+	};
+
+	p5v_bmc_aux_vd: voltage-divider3 {
+		compatible = "voltage-divider";
+		io-channels = <&adc0 3>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 1365/365 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <50>;
+		full-ohms = <187>;
+	};
+
+	p3v3_aux_vd: voltage-divider4 {
+		compatible = "voltage-divider";
+		io-channels = <&adc1 2>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 1698/698 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <14>;
+		full-ohms = <34>;
+	};
+
+	p3v3_bmc_aux_vd: voltage-divider5 {
+		compatible = "voltage-divider";
+		io-channels = <&adc0 7>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 1698/698 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <14>;
+		full-ohms = <34>;
+	};
+
+	p1v8_bmc_aux_vd: voltage-divider6 {
+		compatible = "voltage-divider";
+		io-channels = <&adc0 6>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 4000/3000 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <3>;
+		full-ohms = <4>;
+	};
+
+	p2V5_aux_vd: voltage-divider7 {
+		compatible = "voltage-divider";
+		io-channels = <&adc1 1>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 2100/1100 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <11>;
+		full-ohms = <21>;
+	};
+
+	p3v3_rtc_vd: voltage-divider8 {
+		compatible = "voltage-divider";
+		io-channels = <&adc1 7>;
+		#io-channel-cells = <1>;
+
+		/*
+		 * Scale the system voltage by 231000/100000 to fit the ADC range.
+		 * Use small nominator to prevent integer overflow.
+		 */
+		output-ohms = <100>;
+		full-ohms = <231>;
+	};
+
+	thermistor0: thermistor-0 {
+		compatible = "epcos,b57891s0103";
+		pullup-uv = <3300000>;
+		pullup-ohm = <10000>;
+		pulldown-ohm = <0>;
+		io-channels = <&adc0 0>;
+		#thermal-sensor-cells = <0>;
+	};
+
+	thermistor1: thermistor-1 {
+		compatible = "epcos,b57891s0103";
+		pullup-uv = <3300000>;
+		pullup-ohm = <10000>;
+		pulldown-ohm = <0>;
+		io-channels = <&adc0 1>;
+		#thermal-sensor-cells = <0>;
+	};
+
+	thermistor2: thermistor-2 {
+		compatible = "epcos,b57891s0103";
+		pullup-uv = <3300000>;
+		pullup-ohm = <10000>;
+		pulldown-ohm = <0>;
+		io-channels = <&adc0 4>;
+		#thermal-sensor-cells = <0>;
+	};
+
+	thermistor3: thermistor-3 {
+		compatible = "epcos,b57891s0103";
+		pullup-uv = <3300000>;
+		pullup-ohm = <10000>;
+		pulldown-ohm = <0>;
+		io-channels = <&adc0 5>;
+		#thermal-sensor-cells = <0>;
+	};
+
+	p3v3_bmc_aux: fixedregulator-p3v3-bmc-aux {
+		compatible = "regulator-fixed";
+		regulator-name = "p3v3_bmc_aux";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	p1v8_bmc_aux: fixedregulator-p1v8-bmc-aux {
+		compatible = "regulator-fixed";
+		regulator-name = "p1v8_bmc_aux";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	p1v2_bmc_aux: fixedregulator-p1v2-bmc-aux {
+		compatible = "regulator-fixed";
+		regulator-name = "p1v2_bmc_aux";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		vin-supply = <&p5v_aux>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	p12v-b-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p12v_b>;
+	};
+
+	p12v-c-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p12v_c>;
+	};
+
+	p12v-d-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p12v_d>;
+	};
+
+	pvccinfaon-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccinfaon_cpu0>;
+	};
+
+	pvccfa-ehv-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_cpu0>;
+	};
+
+	pvnn-main-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvnn_main_cpu0>;
+	};
+
+	pvccin-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccin_cpu0>;
+	};
+
+	pvccfa-ehv-fivra-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_fivra_cpu0>;
+	};
+
+	pvccd-hv-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccd_hv_cpu0>;
+	};
+
+	pvpp-hbm-cpu0-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvpp_hbm_cpu0>;
+	};
+
+	pvccinfaon-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccinfaon_cpu1>;
+	};
+
+	pvccfa-ehv-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_cpu1>;
+	};
+
+	pvnn-main-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvnn_main_cpu1>;
+	};
+
+	pvccin-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccin_cpu1>;
+	};
+
+	pvccfa-ehv-fivra-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_fivra_cpu1>;
+	};
+
+	pvccd-hv-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccd_hv_cpu1>;
+	};
+
+	pvpp-hbm-cpu1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvpp_hbm_cpu1>;
+	};
+
+	pvccinfaon-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccinfaon_cpu2>;
+	};
+
+	pvccfa-ehv-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_cpu2>;
+	};
+
+	pvnn-main-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvnn_main_cpu2>;
+	};
+
+	pvccin-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccin_cpu2>;
+	};
+
+	pvccfa-ehv-fivra-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_fivra_cpu2>;
+	};
+
+	pvccd-hv-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccd_hv_cpu2>;
+	};
+
+	pvpp-hbm-cpu2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvpp_hbm_cpu2>;
+	};
+
+	pvccinfaon-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccinfaon_cpu3>;
+	};
+
+	pvccfa-ehv-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_cpu3>;
+	};
+
+	pvnn-main-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvnn_main_cpu3>;
+	};
+
+	pvccin-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccin_cpu3>;
+	};
+
+	pvccfa-ehv-fivra-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccfa_ehv_fivra_cpu3>;
+	};
+
+	pvccd-hv-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvccd_hv_cpu3>;
+	};
+
+	pvpp-hbm-cpu3-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvpp_hbm_cpu3>;
+	};
+
+	p1v05-pch-aux-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p1v05_pch_aux>;
+	};
+
+	p1v8-pch-aux-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p1v8_pch_aux>;
+	};
+
+	p3v3-pch-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p3v3_pch>;
+	};
+
+	p5v-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p5v>;
+	};
+
+	smb-m2-ssb-ssd2 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_smb_m2_ssb_ssd2>;
+	};
+
+	smb-m2-ssb-ssd1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_smb_m2_ssb_ssd1>;
+	};
+
+	ssb-rssd01-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd01>;
+	};
+
+	ssb-rssd01-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd01>;
+	};
+
+	ssb-rssd02-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd02>;
+	};
+
+	ssb-rssd02-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd02>;
+	};
+
+	ssb-rssd03-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd03>;
+	};
+
+	ssb-rssd03-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd03>;
+	};
+
+	ssb-rssd04-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd04>;
+	};
+
+	ssb-rssd04-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd04>;
+	};
+
+	ssb-rssd05-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd05>;
+	};
+
+	ssb-rssd05-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd05>;
+	};
+
+	ssb-rssd06-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd06>;
+	};
+
+	ssb-rssd06-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd06>;
+	};
+
+	ssb-rssd07-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd07>;
+	};
+
+	ssb-rssd07-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd07>;
+	};
+
+	ssb-rssd08-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd08>;
+	};
+
+	ssb-rssd08-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd08>;
+	};
+
+	ssb-rssd09-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd09>;
+	};
+
+	ssb-rssd09-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd09>;
+	};
+
+	ssb-rssd10-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd10>;
+	};
+
+	ssb-rssd10-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd10>;
+	};
+
+	ssb-rssd11-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd11>;
+	};
+
+	ssb-rssd11-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd11>;
+	};
+
+	ssb-rssd12-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd12>;
+	};
+
+	ssb-rssd12-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd12>;
+	};
+
+	ssb-rssd13-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd13>;
+	};
+
+	ssb-rssd13-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd13>;
+	};
+
+	ssb-rssd14-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd14>;
+	};
+
+	ssb-rssd14-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd14>;
+	};
+
+	ssb-rssd15-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd15>;
+	};
+
+	ssb-rssd15-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd15>;
+	};
+
+	ssb-rssd16-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd16>;
+	};
+
+	ssb-rssd16-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd16>;
+	};
+
+	ssb-rssd17-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd17>;
+	};
+
+	ssb-rssd17-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd17>;
+	};
+
+	ssb-rssd18-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd18>;
+	};
+
+	ssb-rssd18-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd18>;
+	};
+
+	ssb-rssd19-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd19>;
+	};
+
+	ssb-rssd19-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd19>;
+	};
+
+	ssb-rssd20-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd20>;
+	};
+
+	ssb-rssd20-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd20>;
+	};
+
+	ssb-rssd21-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd21>;
+	};
+
+	ssb-rssd21-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd21>;
+	};
+
+	ssb-rssd22-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd22>;
+	};
+
+	ssb-rssd22-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd22>;
+	};
+
+	ssb-rssd23-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd23>;
+	};
+
+	ssb-rssd23-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd23>;
+	};
+
+	ssb-rssd24-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd24>;
+	};
+
+	ssb-rssd24-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd24>;
+	};
+
+	ssb-rssd25-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd25>;
+	};
+
+	ssb-rssd25-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd25>;
+	};
+
+	ssb-rssd26-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd26>;
+	};
+
+	ssb-rssd26-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd26>;
+	};
+
+	ssb-rssd27-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd27>;
+	};
+
+	ssb-rssd27-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd27>;
+	};
+
+	ssb-rssd28-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd28>;
+	};
+
+	ssb-rssd28-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd28>;
+	};
+
+	ssb-rssd29-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd29>;
+	};
+
+	ssb-rssd29-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd29>;
+	};
+
+	ssb-rssd30-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd30>;
+	};
+
+	ssb-rssd30-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd30>;
+	};
+
+	ssb-rssd31-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd31>;
+	};
+
+	ssb-rssd31-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd31>;
+	};
+
+	ssb-rssd32-sw0 {
+		compatible = "regulator-output";
+		vout-supply = <&sw0_ssb_rssd32>;
+	};
+
+	ssb-rssd32-sw1 {
+		compatible = "regulator-output";
+		vout-supply = <&sw1_ssb_rssd32>;
+	};
+
+	p3v3-nic-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p3v3_nic>;
+	};
+
+	p1v8-nic-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p1v8_nic>;
+	};
+
+	p1v2-nic-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&p1v2_nic>;
+	};
+
+	pvcore-nic1-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvcore_nic1>;
+	};
+
+	pvcore-nic2-consumer {
+		compatible = "regulator-output";
+		vout-supply = <&pvcore_nic2>;
+	};
+};
+
+&peci0 {
+	status = "okay";
+};
+
+&vuart1 {
+	status = "okay";
+};
+
+&lpc_snoop {
+	status = "okay";
+	snoop-ports = <0x80>, <0x81>;
+};
+
+&fmc {
+	status = "okay";
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+#include "openbmc-flash-layout-64.dtsi"
+	};
+
+	flash@1 {
+		status = "okay";
+		m25p,fast-read;
+		label = "alt-bmc";
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+#include "openbmc-flash-layout-64-alt.dtsi"
+	};
+};
+
+&uart1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_txd1_default
+			&pinctrl_rxd1_default
+			&pinctrl_nrts1_default
+			&pinctrl_ndtr1_default
+			&pinctrl_ndsr1_default
+			&pinctrl_ncts1_default
+			&pinctrl_ndcd1_default
+			&pinctrl_nri1_default>;
+};
+
+&uart5 {
+	status = "disabled";
+};
+
+&gpio1 {
+	status = "disabled";
+};
+
+&video {
+	status = "okay";
+};
+
+&vhub {
+	status = "okay";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_vgahs_default &pinctrl_vgavs_default>;
+};
+
+&mdio2 {
+	status = "okay";
+
+	reset-gpios = <&gpio0 ASPEED_GPIO(V, 7) GPIO_ACTIVE_LOW>;
+	reset-assert-us = <10000>;
+	reset-deassert-us = <300>;
+
+	ethphy2: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mdio3 {
+	status = "okay";
+
+	reset-gpios = <&gpio0 ASPEED_GPIO(G, 2) GPIO_ACTIVE_LOW>;
+	reset-assert-us = <10000>;
+	reset-deassert-us = <300>;
+
+	ethphy3: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mac2 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy2>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii3_default>;
+};
+
+&mac3 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy3>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii4_default>;
+};
+
+&adc0 {
+	status = "okay";
+	vref-supply = <&p1v8_bmc_aux>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc0_default
+		     &pinctrl_adc1_default
+		     &pinctrl_adc2_default
+		     &pinctrl_adc3_default
+		     &pinctrl_adc4_default
+		     &pinctrl_adc5_default
+		     &pinctrl_adc6_default
+		     &pinctrl_adc7_default>;
+};
+
+&adc1 {
+	status = "okay";
+	vref-supply = <&p1v8_bmc_aux>;
+	aspeed,battery-sensing;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc8_default
+		     &pinctrl_adc9_default
+		     &pinctrl_adc10_default
+		     &pinctrl_adc11_default
+		     &pinctrl_adc12_default
+		     &pinctrl_adc13_default
+		     &pinctrl_adc15_default>;
+};
+
+&kcs3 {
+	status = "okay";
+	aspeed,lpc-io-reg = <0xca2>;
+};
+
+&gpio0 {
+	status = "okay";
+	gpio-line-names =
+	/* A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* B0 - B7 */
+	"", "", "FM_ADR_TRIGGER_R_N", "RST_PLTRST_BUF_N", "BMC_TPM_RESET_N", "BMC_TPM_IRQ_N",
+	"PCH_TPM_RESET_N", "PCH_TPM_IRQ_N",
+	/* C0 - C7 */
+	"", "", "", "", "", "", "", "",
+	/* D0 - D7 */
+	"", "", "", "", "", "", "", "",
+	/* E0 - E7 */
+	"", "", "", "", "", "", "", "",
+	/* F0 - F7 */
+	"", "", "", "BMC_MUX_CPU1_RST_INT_N", "BMC_MUX_CPU2_RST_INT_N", "", "", "",
+	/* G0 - G7 */
+	"FM_SSD_CLK_DRVR1_EN", "FM_CK440Q_DEV_EN", "BMC_MAC1_RESET_N", "FM_DB2000_DEV_EN",
+	"FM_CPU_RMCA_LVT3_N", "FM_CPU_CATERR_LVT3_N", "FM_DBP_PRESENT_N", "",
+	/* H0 - H7 */
+	"SMB_SVC_PEX_RSSD17_32_INT", "LED_BMC_RDY", "RST_DBP_N", "", "", "", "", "",
+	/* I0 - I7 */
+	"JTAG_MUX_MODE_SEL", "JTAG_MUX_TRANS_ENBL", "JTAG_MUX_LSP_SEL5", "JTAG_MUX_MSTR_SEL",
+	"JTAG_MUX_LSP_SEL3", "", "JTAG_MUX_ENBL_N", "JTAG_MUX_RST_N",
+	/* J0 - J7 */
+	"", "", "", "", "", "", "", "",
+	/* K0 - K7 */
+	"", "", "", "", "", "", "", "",
+	/* L0 - L7 */
+	"", "", "", "", "RST_RTCRST_N", "RST_SRTCRST_N", "", "",
+	/* M0 - M7 */
+	"BMC_UART1_CTS_N", "BMC_UART1_DCD_N", "BMC_UART1_DSR_N", "BMC_UART1_RI_N",
+	"BMC_UART1_DTR_N", "BMC_UART1_RTS_N", "", "",
+	/* N0 - N7 */
+	"IRQ_BMC_PCH_NMI", "", "FM_PCH_BMC_THERMTRIP_N", "FM_BIOS_POST_CMPLT_N", "RST_PLTRST_N",
+	"FM_FLASH_SEC_OVRD", "FM_SMI_ACTIVE_N", "PWRGD_DBP",
+	/* O0 - O7 */
+	"CATERR_CPU2_EN", "H_LVT1_THERMTRIP_N", "CATERR_CPU3_EN", "SMB_SVC_PEX_CPU0_LED_INT",
+	"H_LVT1_MEMTRIP_N", "", "CATERR_CPU1_EN", "FM_PCH_ADR_COMPLETE_N",
+	/* P0 - P7 */
+	"PWRGD_SYS_PWROK", "PWRGD_PCH_PWROK", "BMC_MUX_CPU3_RST_INT_N", "BMC_MUX_SVC_RSSD_INT",
+	"FM_SLPS4_N", "IRQ_SML0_ALERT_N", "FM_SLPS3_N", "LED_BMC_HB",
+	/* Q0 - Q7 */
+	"", "PEX_BMC_RST", "PEX_VR_CTRL_RST", "PEX_NIC_RST", "PEX_CPU0_LED_RST", "PEX_CPU1_LED_RST",
+	"PEX_CPU2_LED_RST", "PEX_CPU3_LED_RST",
+	/* R0 - R7 */
+	"BMC_MUX_FANSSB_RSSD17_32_RST_INT_N", "BMC_MUX_FANPWM_RSSD01_16_RST_INT_N",
+	"BMC_MUX_SVC_VR_RST_INT_N", "BMC_MUX_NIC_RST_INT_N", "BMC_MUX_SVC_EXP_RST_INT_N",
+	"FM_CPU_ERR2_LVT3_N", "BMC_MUX_CPU0_RST_INT_N", "BMC_MUX_M2_RST_INT_N",
+	/* S0 - S7 */
+	"SMB_SVC_PEX_RSSD01_16_INT", "RST_PCH_RSMRST_R_N", "", "", "BMC_ROT_FPGA_RESET_N",
+	"FM_SSD_CLK_DRVR0_EN", "", "",
+	/* T0 - T7 */
+	"", "", "", "", "", "", "", "",
+	/* U0 - U7 */
+	"", "", "", "", "", "", "", "",
+	/* V0 - V7 */
+	"BMC_PEX_IRQ_INT", "RTC_BATT_TEST", "SMB_PEX_VR_CTRL_INT", "SMB_SVC_PEX_CPU3_LED_INT",
+	"PWRGD_CPUPWRGD", "SMB_SVC_PEX_CPU2_LED_INT", "SMB_SVC_PEX_CPU1_LED_INT",
+	"BMC_MAC0_RESET_N",
+	/* W0 - W7 */
+	"", "", "", "", "", "", "", "",
+	/* X0 - X7 */
+	"", "", "", "", "", "", "", "",
+	/* Y0 - Y7 */
+	"FM_THROTTLE_N", "FM_PASSWORD_CLEAR_N", "H_LVT3_CATERR_DLY_N", "FM_CPU_OL_INT_R_N", "", "",
+	"", "",
+	/* Z0 - Z7 */
+	"FM_CPU_ERR0_LVT3_N", "FM_CPU_ERR1_LVT3_N", "BMC_MUX_VR_PCH_CPU_RST_INT_N",
+	"JTAG_MUX_LSP_SEL1", "", "JTAG_MUX_LSP_SEL4", "JTAG_MUX_LSP_SEL2", "";
+
+	gpio-reserved-ranges = <0 10>, <16 27>, <45 3>, <55 1>, <59 5>, <69 1>, <72 20>, <94 2>,
+	<102 2>, <105 1>, <117 1>, <128 1>, <146 2>, <150 18>, <176 16>, <196 4>, <204 1>, <207 1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio0_unbiased_default>;
+};
+
+&pinctrl {
+	pinctrl_gpio0_unbiased_default: gpio_default {
+		pins = "AB15", "AD14", "R23", "A18", "AD24", "AD15", "AE14", "AC15", "U25", "AA24",
+		       "V24", "W26", "AA23", "V26", "U24", "V25", "AE15", "C15", "F15";
+		bias-disable;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	bmc_mux_nic: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 3) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_nic: pinctrl@20 {
+				compatible = "cypress,cy8c9540";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&gpio0 ASPEED_GPIO(Q, 3) GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <19 1>, <22 6>, <30 6>, <38 2>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"IRQ_NIC2_OVT_WRNG", "FM_NIC2_ALLSTANDBY_N", "IRQ_NIC2_OVT_SHTDN",
+				"SMB_VR_PVCORE_NIC2_ALERT_N", "FM_NIC2_PERST1_N",
+				"SMB_NIC2_ALERT_N", "FM_NIC2_PERST3_N", "FM_NIC2_PERST2_N",
+				/* GPORT1 */
+				"FM_NIC1_RST_N", "FM_NIC1_PERST0_N", "FM_NIC1_PERST2_N",
+				"FM_NIC1_PERST3_N", "SMB_NIC1_ALERT_N", "FM_NIC1_PERST1_N",
+				"SMB_VR_PVCORE_NIC1_ALERT_N", "IRQ_NIC1_OVT_SHTDN",
+				/* GPORT2 */
+				"SMB_VR_P3V3_NIC_ALERT_N", "FM_NIC2_FLASH_PRSNT",
+				"FM_NIC1_FLASH_PRSNT", "",
+				/* GPORT3 */
+				"FM_NIC2_PERST0_N", "FM_NIC2_RST_N", "", "", "", "", "", "",
+				/* GPORT4 */
+				"FM_NIC1_ALLSTANDBY_N", "IRQ_NIC1_OVT_WRNG", "", "", "", "", "", "",
+				/* GPORT5 */
+				"SMB_VR_P1V8_NIC_ALERT_N", "SMB_VR_P1V2_NIC_ALERT_N", "", "";
+
+				pinctrl-0 = <&U62160_pins>;
+				pinctrl-names = "default";
+				U62160_pins: cfg-pins {
+					pins = "gp03", "gp16", "gp20", "gp50", "gp51";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38263-pvcore-nic2@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				regulators {
+					pvcore_nic2: vout {
+						regulator-name = "pvcore_nic2";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+					};
+				};
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38263-pvcore-nic1@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				regulators {
+					pvcore_nic1: vout {
+						regulator-name = "pvcore_nic1";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38263-p3v3-nic@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				regulators {
+					p3v3_nic: vout {
+						regulator-name = "p3v3_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+						vbus-supply = <&p3v3_aux>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38263-p1v2-nic@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				regulators {
+					p1v2_nic: vout {
+						regulator-name = "p1v2_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+						vbus-supply = <&p3v3_aux>;
+					};
+				};
+			};
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38263-p1v8-nic@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				regulators {
+					p1v8_nic: vout {
+						regulator-name = "p1v8_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+						vbus-supply = <&p3v3_aux>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+
+	i2cmux1: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 7) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_m2_ssb_ssd1: regulator@3a {
+				compatible = "maxim,max5978";
+				reg = <0x3a>;
+				vss1-supply = <&p3v3_aux>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						label = "m2_ssb_ssd1:green:power";
+						default-state = "off";
+					};
+				};
+
+				regulators {
+					sw0_smb_m2_ssb_ssd1: sw0 {
+						shunt-resistor-micro-ohms = <12000>;
+						regulator-over-current-protection;
+						regulator-oc-protection-microamp = <2800000>;
+						regulator-name = "p3v3_m2_ssd1";
+						regulator-enable-ramp-delay = <10000>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_m2_ssb_ssd2: regulator@3a {
+				compatible = "maxim,max5978";
+				reg = <0x3a>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <39 IRQ_TYPE_LEVEL_LOW>;
+				vss1-supply = <&p3v3_aux>;
+				leds {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					led@0 {
+						reg = <0>;
+						label = "m2_ssb_ssd2:green:power";
+						default-state = "off";
+					};
+				};
+
+				regulators {
+					sw0_smb_m2_ssb_ssd2: sw0 {
+						shunt-resistor-micro-ohms = <12000>;
+						regulator-over-current-protection;
+						regulator-oc-protection-microamp = <2800000>;
+						regulator-name = "p3v3_m2_ssd2";
+						regulator-enable-ramp-delay = <10000>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c4 {
+	status = "okay";
+	multi-master;
+	bus-frequency = <1000000>;
+
+	bmc-slave@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+
+		i2c-protocol;
+	};
+};
+
+&i2c5 {
+	status = "okay";
+
+	i2cmux2: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(Z, 2) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			r38263-p1v05-pch-aux@40 {
+				compatible = "infineon,ir38263";
+				reg = <0x40>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					p1v05_pch_aux: vout {
+						regulator-name = "p1v05_pch_aux";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+					};
+				};
+			};
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ir38060-p1v8-pch-aux@40 {
+				compatible = "infineon,ir38060";
+				reg = <0x40>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <32 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					p1v8_pch_aux: vout {
+						regulator-name = "p1v8_pch_aux";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v_a>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c14 {
+	status = "okay";
+
+	i2cmux13: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 6) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_cpu0_event: pinctrl@20 {
+				compatible = "cypress,cy8c9540";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&smb_svc_pex_cpu0_led 16 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <14 2>, <21 1>, <25 3>, <33 1>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"PWRGD_CHD_CPU0", "PWRGD_CHC_CPU0",
+				"PWRGD_CHB_CPU0", "PWRGD_CHA_CPU0",
+				"PWRGD_CHE_CPU0", "PWRGD_CHF_CPU0",
+				"PWRGD_CHG_CPU0", "PWRGD_CHH_CPU0",
+				/* GPORT1 */
+				"SMB_VR_PVPP_HBM_CPU0_ALERT_N", "SMB_VR_PVCCINFAON_CPU0_ALERT_N",
+				"SMB_VR_PVNN_MAIN_CPU0_ALERT_N", "SMB_VR_PVCCD_HV_CPU0_ALERT_N",
+				"SMB_VR_PVCCIN_CPU0_ALERT_N", "SEL_SMB_DIMM_CPU0",
+				"", "",
+				/* GPORT2 */
+				"PWRGD_LVC3_CPU0_AB_DRAM_G", "PWRGD_LVC3_CPU0_CD_DRAM_G",
+				"PWRGD_LVC3_CPU0_EF_DRAM_G", "PWRGD_LVC3_CPU0_GH_DRAM_G",
+				/* GPORT3 */
+				"FM_CPU0_DISABLE_COD_N", "",
+				"RST_LVC3_CPU0_RESET_N", "PWRGD_LVC3_CPU0_PWRGOOD",
+				"PWRGD_PLT_AUX_CPU0_LVT3", "",
+				"", "",
+				/* GPORT4 */
+				"H_LVT3_CPU0_PROCHOT_N", "H_LVT3_CPU0_MEMHOT_IN_N",
+				"H_LVT3_CPU0_MEMHOT_OUT_N", "H_LVT3_CPU0_MEMTRIP_OUT_N",
+				"H_LVT3_CPU0_THERMTRIP_OUT_N", "",
+				"H_LVT3_CPU0_NMI", "FM_S3M_CPU0_CD_INIT_ERROR",
+				/* GPORT5 */
+				"FM_CPU0_PKG_ID0", "FM_CPU0_PKG_ID1",
+				"FM_CPU0_PROC_ID0", "FM_CPU0_PROC_ID1";
+
+				pinctrl-0 = <&U62080_pins>;
+				pinctrl-names = "default";
+				U62080_pins: cfg-pins {
+					pins = "gp10", "gp11", "gp12", "gp13", "gp14";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pvccinfaon-pvccfa-cpu0@58 {
+				compatible = "mps,mp2971";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu0_event>;
+				interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccinfaon_cpu0: vout0 {
+						regulator-name = "pvccinfaon_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_cpu0: vout1 {
+						regulator-name = "pvccfa_ehv_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+			tda38640-pvnn-main-cpu0@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu0_event>;
+				interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvnn_main_cpu0: vout {
+						regulator-name = "pvnn_main_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mp2973-pvccin-pvccfa-cpu0@58 {
+				compatible = "mps,mp2973";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu0_event>;
+				interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccin_cpu0: vout0 {
+						regulator-name = "pvccin_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_fivra_cpu0: vout1 {
+						regulator-name = "pvccfa_ehv_fivra_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvccd-hv-cpu0@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu0_event>;
+				interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+				infineon,en-pin-fixed-level;
+
+				regulators {
+					pvccd_hv_cpu0: vout {
+						regulator-name = "pvccd_hv_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvpp-hbm-cpu0@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu0_event>;
+				interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvpp_hbm_cpu0: vout {
+						regulator-name = "pvpp_hbm_cpu0";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	i2cmux4: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(F, 3) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_cpu1_event: pinctrl@20 {
+				compatible = "cypress,cy8c9540";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&smb_svc_pex_cpu1_led 16 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <14 2>, <21 1>, <25 3>, <33 1>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"PWRGD_CHD_CPU1", "PWRGD_CHC_CPU1",
+				"PWRGD_CHB_CPU1", "PWRGD_CHA_CPU1",
+				"PWRGD_CHE_CPU1", "PWRGD_CHF_CPU1",
+				"PWRGD_CHG_CPU1", "PWRGD_CHH_CPU1",
+				/* GPORT1 */
+				"SMB_VR_PVPP_HBM_CPU1_ALERT_N", "SMB_VR_PVCCINFAON_CPU1_ALERT_N",
+				"SMB_VR_PVNN_MAIN_CPU1_ALERT_N", "SMB_VR_PVCCD_HV_CPU1_ALERT_N",
+				"SMB_VR_PVCCIN_CPU1_ALERT_N", "SEL_SMB_DIMM_CPU1",
+				"", "",
+				/* GPORT2 */
+				"PWRGD_LVC3_CPU1_AB_DRAM_G", "PWRGD_LVC3_CPU1_CD_DRAM_G",
+				"PWRGD_LVC3_CPU1_EF_DRAM_G", "PWRGD_LVC3_CPU1_GH_DRAM_G",
+				/* GPORT3 */
+				"FM_CPU1_DISABLE_COD_N", "",
+				"RST_LVC3_CPU1_RESET_N", "PWRGD_LVC3_CPU1_PWRGOOD",
+				"PWRGD_PLT_AUX_CPU1_LVT3", "",
+				"", "",
+				/* GPORT4 */
+				"H_LVT3_CPU1_PROCHOT_N", "H_LVT3_CPU1_MEMHOT_IN_N",
+				"H_LVT3_CPU1_MEMHOT_OUT_N", "H_LVT3_CPU1_MEMTRIP_OUT_N",
+				"H_LVT3_CPU1_THERMTRIP_OUT_N", "",
+				"H_LVT3_CPU1_NMI", "FM_S3M_CPU1_CD_INIT_ERROR",
+				/* GPORT5 */
+				"FM_CPU1_PKG_ID0", "FM_CPU1_PKG_ID1",
+				"FM_CPU1_PROC_ID0", "FM_CPU1_PROC_ID1";
+
+				pinctrl-0 = <&U62090_pins>;
+				pinctrl-names = "default";
+				U62090_pins: cfg-pins {
+					pins = "gp10", "gp11", "gp12", "gp13", "gp14";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pvccinfaon-pvccfa-cpu1@58 {
+				compatible = "mps,mp2971";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu1_event>;
+				interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccinfaon_cpu1: vout0 {
+						regulator-name = "pvccinfaon_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_cpu1: vout1 {
+						regulator-name = "pvccfa_ehv_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+			tda38640-pvnn-main-cpu1@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu1_event>;
+				interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvnn_main_cpu1: vout {
+						regulator-name = "pvnn_main_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mp2973-pvccin-pvccfa-cpu1@58 {
+				compatible = "mps,mp2973";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu1_event>;
+				interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccin_cpu1: vout0 {
+						regulator-name = "pvccin_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_fivra_cpu1: vout1 {
+						regulator-name = "pvccfa_ehv_fivra_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvccd-hv-cpu1@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu1_event>;
+				interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+				infineon,en-pin-fixed-level;
+
+				regulators {
+					pvccd_hv_cpu1: vout {
+						regulator-name = "pvccd_hv_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvpp-hbm-cpu1@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu1_event>;
+				interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvpp_hbm_cpu1: vout {
+						regulator-name = "pvpp_hbm_cpu1";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c6 {
+	status = "okay";
+
+	i2cmux3: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		interrupt-parent = <&gpio0>;
+		interrupts = <ASPEED_GPIO(F, 4) IRQ_TYPE_LEVEL_HIGH>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_cpu2_event: pinctrl@20 {
+				compatible = "cypress,cy8c9540";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <3 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&smb_svc_pex_cpu2_led 16 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <14 2>, <21 1>, <25 3>, <33 1>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"PWRGD_CHD_CPU2", "PWRGD_CHC_CPU2",
+				"PWRGD_CHB_CPU2", "PWRGD_CHA_CPU2",
+				"PWRGD_CHE_CPU2", "PWRGD_CHF_CPU2",
+				"PWRGD_CHG_CPU2", "PWRGD_CHH_CPU2",
+				/* GPORT1 */
+				"SMB_VR_PVPP_HBM_CPU2_ALERT_N", "SMB_VR_PVCCINFAON_CPU2_ALERT_N",
+				"SMB_VR_PVNN_MAIN_CPU2_ALERT_N", "SMB_VR_PVCCD_HV_CPU2_ALERT_N",
+				"SMB_VR_PVCCIN_CPU2_ALERT_N", "SEL_SMB_DIMM_CPU2",
+				"", "",
+				/* GPORT2 */
+				"PWRGD_LVC3_CPU2_AB_DRAM_G", "PWRGD_LVC3_CPU2_CD_DRAM_G",
+				"PWRGD_LVC3_CPU2_EF_DRAM_G", "PWRGD_LVC3_CPU2_GH_DRAM_G",
+				/* GPORT3 */
+				"FM_CPU2_DISABLE_COD_N", "",
+				"RST_LVC3_CPU2_RESET_N", "PWRGD_LVC3_CPU2_PWRGOOD",
+				"PWRGD_PLT_AUX_CPU2_LVT3", "",
+				"", "",
+				/* GPORT4 */
+				"H_LVT3_CPU2_PROCHOT_N", "H_LVT3_CPU2_MEMHOT_IN_N",
+				"H_LVT3_CPU2_MEMHOT_OUT_N", "H_LVT3_CPU2_MEMTRIP_OUT_N",
+				"H_LVT3_CPU2_THERMTRIP_OUT_N", "",
+				"H_LVT3_CPU2_NMI", "FM_S3M_CPU2_CD_INIT_ERROR",
+				/* GPORT5 */
+				"FM_CPU2_PKG_ID0", "FM_CPU2_PKG_ID1",
+				"FM_CPU2_PROC_ID0", "FM_CPU2_PROC_ID1";
+
+				pinctrl-0 = <&U62100_pins>;
+				pinctrl-names = "default";
+				U62100_pins: cfg-pins {
+					pins = "gp10", "gp11", "gp12", "gp13", "gp14";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pvccinfaon-pvccfa-cpu2@58 {
+				compatible = "mps,mp2971";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu2_event>;
+				interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccinfaon_cpu2: vout0 {
+						regulator-name = "pvccinfaon_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_cpu2: vout1 {
+						regulator-name = "pvccfa_ehv_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+			tda38640-pvnn-main-cpu2@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu2_event>;
+				interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvnn_main_cpu2: vout {
+						regulator-name = "pvnn_main_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mp2973-pvccin-pvccfa-cpu2@58 {
+				compatible = "mps,mp2973";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu2_event>;
+				interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccin_cpu2: vout0 {
+						regulator-name = "pvccin_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_fivra_cpu2: vout1 {
+						regulator-name = "pvccfa_ehv_fivra_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvccd-hv-cpu2@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu2_event>;
+				interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+				infineon,en-pin-fixed-level;
+
+				regulators {
+					pvccd_hv_cpu2: vout {
+						regulator-name = "pvccd_hv_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvpp-hbm-cpu2@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu2_event>;
+				interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvpp_hbm_cpu2: vout {
+						regulator-name = "pvpp_hbm_cpu2";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c12 {
+	status = "okay";
+
+	i2cmux22: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(P, 2) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_cpu3_event: pinctrl@20 {
+				compatible = "cypress,cy8c9540";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&smb_pex_vr_ctrl>;
+				interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&smb_svc_pex_cpu3_led 16 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <14 2>, <21 1>, <25 3>, <33 1>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"PWRGD_CHD_CPU3", "PWRGD_CHC_CPU3",
+				"PWRGD_CHB_CPU3", "PWRGD_CHA_CPU3",
+				"PWRGD_CHE_CPU3", "PWRGD_CHF_CPU3",
+				"PWRGD_CHG_CPU3", "PWRGD_CHH_CPU3",
+				/* GPORT1 */
+				"SMB_VR_PVPP_HBM_CPU3_ALERT_N", "SMB_VR_PVCCINFAON_CPU3_ALERT_N",
+				"SMB_VR_PVNN_MAIN_CPU3_ALERT_N", "SMB_VR_PVCCD_HV_CPU3_ALERT_N",
+				"SMB_VR_PVCCIN_CPU3_ALERT_N", "SEL_SMB_DIMM_CPU3",
+				"", "",
+				/* GPORT2 */
+				"PWRGD_LVC3_CPU3_AB_DRAM_G", "PWRGD_LVC3_CPU3_CD_DRAM_G",
+				"PWRGD_LVC3_CPU3_EF_DRAM_G", "PWRGD_LVC3_CPU3_GH_DRAM_G",
+				/* GPORT3 */
+				"FM_CPU3_DISABLE_COD_N", "",
+				"RST_LVC3_CPU3_RESET_N", "PWRGD_LVC3_CPU3_PWRGOOD",
+				"PWRGD_PLT_AUX_CPU3_LVT3", "",
+				"", "",
+				/* GPORT4 */
+				"H_LVT3_CPU3_PROCHOT_N", "H_LVT3_CPU3_MEMHOT_IN_N",
+				"H_LVT3_CPU3_MEMHOT_OUT_N", "H_LVT3_CPU3_MEMTRIP_OUT_N",
+				"H_LVT3_CPU3_THERMTRIP_OUT_N", "",
+				"H_LVT3_CPU3_NMI", "FM_S3M_CPU3_CD_INIT_ERROR",
+				/* GPORT5 */
+				"FM_CPU3_PKG_ID0", "FM_CPU3_PKG_ID1",
+				"FM_CPU3_PROC_ID0", "FM_CPU3_PROC_ID1";
+
+				pinctrl-0 = <&U62110_pins>;
+				pinctrl-names = "default";
+				U62110_pins: cfg-pins {
+					pins = "gp10", "gp11", "gp12", "gp13", "gp14";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pvccinfaon-pvccfa-cpu3@58 {
+				compatible = "mps,mp2971";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu3_event>;
+				interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccinfaon_cpu3: vout0 {
+						regulator-name = "pvccinfaon_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_cpu3: vout1 {
+						regulator-name = "pvccfa_ehv_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+			tda38640-pvnn-main-cpu3@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu3_event>;
+				interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvnn_main_cpu3: vout {
+						regulator-name = "pvnn_main_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mp2973-pvccin-pvccfa-cpu3@58 {
+				compatible = "mps,mp2973";
+				reg = <0x58>;
+				interrupt-parent = <&smb_pex_cpu3_event>;
+				interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvccin_cpu3: vout0 {
+						regulator-name = "pvccin_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+					pvccfa_ehv_fivra_cpu3: vout1 {
+						regulator-name = "pvccfa_ehv_fivra_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvccd-hv-cpu3@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu3_event>;
+				interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+				infineon,en-pin-fixed-level;
+
+				regulators {
+					pvccd_hv_cpu3: vout {
+						regulator-name = "pvccd_hv_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			tda38640-pvpp-hbm-cpu3@40 {
+				compatible = "infineon,tda38640";
+				reg = <0x40>;
+				interrupt-parent = <&smb_pex_cpu3_event>;
+				interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+				regulators {
+					pvpp_hbm_cpu3: vout {
+						regulator-name = "pvpp_hbm_cpu3";
+						regulator-enable-ramp-delay = <200>;
+					};
+				};
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c15 {
+	status = "okay";
+
+	i2cmux14: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 1) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux15: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 11 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux16: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 2 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux17: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 0 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux18: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 3 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux19: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 9 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_rssd17_32: pinctrl@20 {
+				compatible = "cypress,cy8c9560";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&bmc_pex_irq>;
+				interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&bmc_pex_irq 19 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <48 12>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"RSSD17_SMBRST_N", "RSSD18_SMBRST_N",
+				"RSSD19_SMBRST_N", "RSSD20_SMBRST_N",
+				"RSSD21_SMBRST_N", "RSSD22_SMBRST_N",
+				"RSSD23_SMBRST_N", "RSSD24_SMBRST_N",
+				/* GPORT1 */
+				"RSSD25_SMBRST_N", "RSSD26_SMBRST_N",
+				"RSSD27_SMBRST_N", "RSSD28_SMBRST_N",
+				"RSSD29_SMBRST_N", "RSSD30_SMBRST_N",
+				"RSSD31_SMBRST_N", "RSSD32_SMBRST_N",
+				/* GPORT2 */
+				"RSSD17_PWRDIS", "RSSD18_PWRDIS",
+				"RSSD19_PWRDIS", "RSSD20_PWRDIS",
+				/* GPORT3 */
+				"RSSD21_PWRDIS", "RSSD22_PWRDIS",
+				"RSSD23_PWRDIS", "RSSD24_PWRDIS",
+				"RSSD25_PWRDIS", "RSSD26_PWRDIS",
+				"RSSD27_PWRDIS", "RSSD28_PWRDIS",
+				/* GPORT4 */
+				"RSSD29_PWRDIS", "RSSD30_PWRDIS",
+				"RSSD31_PWRDIS", "RSSD32_PWRDIS",
+				"RSSD17_RESET_N", "RSSD18_RESET_N",
+				"RSSD19_RESET_N", "RSSD20_RESET_N",
+				/* GPORT5 */
+				"RSSD21_RESET_N", "RSSD22_RESET_N",
+				"RSSD23_RESET_N", "RSSD24_RESET_N",
+				"RSSD25_RESET_N", "RSSD26_RESET_N",
+				"RSSD27_RESET_N", "RSSD28_RESET_N",
+				/* GPORT6 */
+				"RSSD29_RESET_N", "RSSD30_RESET_N",
+				"RSSD31_RESET_N", "RSSD32_RESET_N",
+				"", "",
+				"", "",
+				/* GPORT7 */
+				"", "",
+				"", "",
+				"", "",
+				"", "";
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux20: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 4 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+
+				i2c@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@4 {
+					reg = <4>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@5 {
+					reg = <5>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@6 {
+					reg = <6>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@7 {
+					reg = <7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux21: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 5 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+
+				i2c@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@4 {
+					reg = <4>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@5 {
+					reg = <5>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@6 {
+					reg = <6>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@7 {
+					reg = <7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+	};
+};
+
+&i2c8 {
+	status = "okay";
+
+	i2cmux5: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 0) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_aux>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux6: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 16 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux7: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 7 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux8: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 1 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux9: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 10 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@4 {
+			reg = <4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux10: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+			};
+		};
+
+		i2c@5 {
+			reg = <5>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			smb_pex_rssd_01_16: pinctrl@20 {
+				compatible = "cypress,cy8c9560";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-parent = <&bmc_pex_irq>;
+				interrupts = <6 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+
+				vdd-supply = <&p3v3_aux>;
+				reset-gpios = <&bmc_pex_irq 18 GPIO_ACTIVE_HIGH>;
+
+				gpio-reserved-ranges = <48 12>;
+
+				gpio-line-names =
+				/* GPORT0 */
+				"RSSD01_SMBRST_N", "RSSD02_SMBRST_N",
+				"RSSD03_SMBRST_N", "RSSD04_SMBRST_N",
+				"RSSD05_SMBRST_N", "RSSD06_SMBRST_N",
+				"RSSD07_SMBRST_N", "RSSD08_SMBRST_N",
+				/* GPORT1 */
+				"RSSD09_SMBRST_N", "RSSD10_SMBRST_N",
+				"RSSD11_SMBRST_N", "RSSD12_SMBRST_N",
+				"RSSD13_SMBRST_N", "RSSD14_SMBRST_N",
+				"RSSD15_SMBRST_N", "RSSD16_SMBRST_N",
+				/* GPORT2 */
+				"RSSD01_PWRDIS", "RSSD02_PWRDIS",
+				"RSSD03_PWRDIS", "RSSD04_PWRDIS",
+				/* GPORT3 */
+				"RSSD05_PWRDIS", "RSSD06_PWRDIS",
+				"RSSD07_PWRDIS", "RSSD08_PWRDIS",
+				"RSSD09_PWRDIS", "RSSD10_PWRDIS",
+				"RSSD11_PWRDIS", "RSSD12_PWRDIS",
+				/* GPORT4 */
+				"RSSD13_PWRDIS", "RSSD14_PWRDIS",
+				"RSSD15_PWRDIS", "RSSD16_PWRDIS",
+				"RSSD01_RESET_N", "RSSD02_RESET_N",
+				"RSSD03_RESET_N", "RSSD04_RESET_N",
+				/* GPORT5 */
+				"RSSD05_RESET_N", "RSSD06_RESET_N",
+				"RSSD07_RESET_N", "RSSD08_RESET_N",
+				"RSSD09_RESET_N", "RSSD10_RESET_N",
+				"RSSD11_RESET_N", "RSSD12_RESET_N",
+				/* GPORT6 */
+				"RSSD13_RESET_N", "RSSD14_RESET_N",
+				"RSSD15_RESET_N", "RSSD16_RESET_N",
+				"", "",
+				"", "",
+				/* GPORT7 */
+				"", "",
+				"", "",
+				"", "",
+				"", "";
+			};
+		};
+
+		i2c@6 {
+			reg = <6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux11: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 12 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+
+				i2c@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@4 {
+					reg = <4>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@5 {
+					reg = <5>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@6 {
+					reg = <6>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@7 {
+					reg = <7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
+		i2c@7 {
+			reg = <7>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2cmux12: mux@70 {
+				compatible = "maxim,max7357";
+				reg = <0x70>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				reset-gpios = <&bmc_pex_irq 14 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+				vdd-supply = <&p3v3_aux>;
+
+				i2c@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@4 {
+					reg = <4>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@5 {
+					reg = <5>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@6 {
+					reg = <6>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+				i2c@7 {
+					reg = <7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+	};
+};
+
+&i2c13 {
+	status = "okay";
+
+	i2cmux23: mux@77 {
+		compatible = "maxim,max7357";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reset-gpios = <&gpio0 ASPEED_GPIO(R, 4) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&p3v3_bmc_aux>;
+	};
+};
+
+&i2cmux23 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_pex_vr_ctrl: pinctrl@20 {
+			compatible = "cypress,cy8c9540";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(V, 2) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 2) GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <21 1>;
+			gpio-line-names =
+			/* GPORT0 */
+			"BCM0_INPUT_DISABLE_N", "SMB_VR_P3V3_AUX_ALERT_N",
+			"SMB_PEX_CPU1_EVENT_INT", "SMB_PEX_CPU2_EVENT_INT",
+			"DPIC0_VOLTAGE_DETECTB_N", "DPIC0_VOLTAGE_DETECTA_N",
+			"DPIC1_VOLTAGE_DETECTA_N", "DPIC1_VOLTAGE_DETECTB_N",
+			/* GPORT1 */
+			"SMB_PEX_NIC_INT", "SMB_VR_P1V05_PCH_AUX_ALERT_N",
+			"SMB_PEX_CPU0_EVENT_INT", "SMB_PEX_CPU3_EVENT_INT",
+			"LED_ID_TPM", "PLUG_DETECT_TPM",
+			"PLUG_DETECT_M2_SSD_CARRIER1", "RST_M2_SSD1_PERST_N",
+			/* GPORT2 */
+			"LED_ID_BAT", "LED_ID_MGMT_PORT2",
+			"LED_ID_MGMT_PORT1", "SMB_VR_P5V_AUX_ALERT_N",
+			/* GPORT3 */
+			"SMB_VR_AUX_SSB_ALERT_N", "BCM1_INPUT_DISABLE_N",
+			"LED_ID_NIC1_PORT1", "LED_ID_NIC1_PORT2",
+			"LED_ID_NIC2_PORT1", "LED_ID_NIC2_PORT2",
+			"RST_M2_SSD2_PERST_N", "PLUG_DETECT_M2_SSD2",
+			/* GPORT4 */
+			"PLUG_DETECT_BAT", "PLUG_DETECT_M2_SSD1",
+			"M2_SSD1_SSB_ALERT_N", "BCM2_INPUT_DISABLE_N",
+			"SMB_VR_P1V8_PCH_AUX_ALERT_N", "BCM3_INPUT_DISABLE_N",
+			"LED_PWR_DWR_BACK", "LED_ID_DWR_BACK_P",
+			/* GPORT5 */
+			"LED_ID_M2_SSD2", "LED_ID_M2_SSD1",
+			"PLUG_DETECT_M2_SSD_CARRIER2", "M2_SSD2_SSB_ALERT_N";
+
+			pinctrl-0 = <&U62120_input &U62120_input_pullup>;
+			pinctrl-names = "default";
+			U62120_input: input-pins {
+				pins = "gp04", "gp05", "gp06", "gp07", "gp10";
+				function = "gpio";
+				input-enable;
+				bias-disable;
+			};
+			U62120_input_pullup: input-pullup-pins {
+				pins = "gp01", "gp02", "gp03", "gp11", "gp12", "gp13",
+				"gp23", "gp30", "gp40", "gp42", "gp44", "gp53";
+				function = "gpio";
+				input-enable;
+				bias-pull-up;
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		bmc_pex_irq: pinctrl@20 {
+			compatible = "cypress,cy8c9520";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(V, 0) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 1) GPIO_ACTIVE_HIGH>;
+			gpio-line-names =
+			/* GPORT0 */
+			"SMB_MUX_PWM_FANGRP2_RST_INT_N", "SMB_MUX_SSB_FANGRP2_RST_INT_N",
+			"SMB_MUX_PWM_FANGRP1_RST_INT_N", "SMB_MUX_SSB_RSSD01_08_RST_INT_N",
+			"SMB_MUX_RSSD01_08_RST_INT_N", "SMB_MUX_RSSD09_16_RST_INT_N",
+			"SMB_PEX_RSSD01_16_INT", "SMB_MUX_SSB_FANGRP1_RST_INT_N",
+			/* GPORT1 */
+			"SMB_SVC_PEX_FAN_ALERT_INT", "SMB_MUX_SSB_RSSD09_16_RST_INT_N",
+			"SMB_MUX_SSB_RSSD17_24_RST_INT_N", "SMB_MUX_PWM_FANGRP0_RST_INT_N",
+			"SMB_MUX_RSSD17_24_RST_INT_N", "SMB_PEX_RSSD17_32_INT",
+			"SMB_MUX_RSSD25_32_RST_INT_N", "SMB_MUX_SSB_RSSD25_32_RST_INT_N",
+			/* GPORT2 */
+			"SMB_MUX_SSB_FANGRP0_RST_INT_N", "PEX_FAN_ALERT_RST",
+			"PEX_RSSD01_16_RST", "PEX_RSSD17_32_RST";
+			pinctrl-0 = <&U60000_pins>;
+			pinctrl-names = "default";
+			U60000_pins: cfg-pins {
+				pins = "gp06", "gp10", "gp15";
+				function = "gpio";
+				input-enable;
+				bias-disable;
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2cmux24: mux@70 {
+			compatible = "maxim,max7357";
+			reg = <0x70>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vdd-supply = <&p3v3_bmc_aux>;
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		eeprom@51 {
+			compatible = "atmel,24c32";
+			reg = <0x51>;
+			pagesize = <32>;
+			vcc-supply = <&p3v3_bmc_aux>;
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2cmux25: mux@70 {
+			compatible = "maxim,max7357";
+			reg = <0x70>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2cmux25 {
+	reset-gpios = <&gpio0 ASPEED_GPIO(R, 2) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+	vdd-supply = <&p3v3_bmc_aux>;
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		ir38263-p5v-aux@40 {
+			compatible = "infineon,ir38263";
+			reg = <0x40>;
+			regulators {
+				p5v_aux: vout {
+					regulator-name = "p5v_aux";
+					regulator-enable-ramp-delay = <2000>;
+					vin-supply = <&p12v_a>;
+					vbus-supply = <&p3v3_bmc_aux>;
+					regulator-always-on;
+					regulator-boot-on;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		ir38263-p3v3-aux@40 {
+			compatible = "infineon,ir38263";
+			reg = <0x40>;
+			regulators {
+				p3v3_aux: vout {
+					vin-supply = <&p12v_a>;
+					regulator-name = "p3v3_aux";
+					/*
+					 * 2msec for regulator + 18msec for board capacitance
+					 * Note: Every IC has a PTC which slowly charges the bypass
+					 * cap.
+					 */
+					regulator-enable-ramp-delay = <200000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		aux_ssb: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_pex_vr_ctrl>;
+			interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+			vss1-supply = <&p5v_aux>;
+			vss2-supply = <&p3v3_aux>;
+			regulators {
+				p5v: sw0 {
+					regulator-name = "p5v";
+					shunt-resistor-micro-ohms = <12000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <100000>;
+				};
+				p3v3_pch: sw1 {
+					regulator-name = "p3v3_pch";
+					shunt-resistor-micro-ohms = <12000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <100000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pli1209bc_p12v_a: regulator@5f {
+			compatible = "vicor,pli1209bc";
+			reg = <0x5f>;
+			regulators {
+				p12v_a: vout2 {
+					regulator-name = "bcm0";
+					regulator-always-on;
+					regulator-boot-on;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pli1209bc_p12v_b: regulator@5f {
+			compatible = "vicor,pli1209bc";
+			reg = <0x5f>;
+			regulators {
+				p12v_b: vout2 {
+					regulator-name = "bcm1";
+					regulator-boot-on;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pli1209bc_p12v_c: regulator@5f {
+			compatible = "vicor,pli1209bc";
+			reg = <0x5f>;
+			regulators {
+				p12v_c: vout2 {
+					regulator-name = "bcm2";
+					regulator-boot-on;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pli1209bc_p12v_d: regulator@5f {
+			compatible = "vicor,pli1209bc";
+			reg = <0x5f>;
+			regulators {
+				p12v_d: vout2 {
+					regulator-name = "bcm3";
+					regulator-boot-on;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux24 {
+
+	reset-gpios = <&gpio0 ASPEED_GPIO(P, 3) (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+
+	i2c@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0>;
+		smb_svc_pex_rssd01_16: pinctrl@20 {
+			compatible = "cypress,cy8c9560";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(S, 0) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&smb_svc_pex_cpu0_led 17 GPIO_ACTIVE_HIGH>;
+			gpio-line-names =
+			/* GPORT0 */
+			"LED_ID_RSSD01", "LED_ID_RSSD02",
+			"LED_ID_RSSD03", "LED_ID_RSSD04",
+			"LED_ID_RSSD05", "LED_ID_RSSD06",
+			"LED_ID_RSSD07", "LED_ID_RSSD08",
+			/* GPORT1 */
+			"LED_ID_RSSD09", "LED_ID_RSSD10",
+			"LED_ID_RSSD11", "LED_ID_RSSD12",
+			"LED_ID_RSSD13", "LED_ID_RSSD14",
+			"LED_ID_RSSD15", "LED_ID_RSSD16",
+			/* GPORT2 */
+			"RSSD01_PRESENT_N", "RSSD02_PRESENT_N",
+			"RSSD03_PRESENT_N", "RSSD04_PRESENT_N",
+			/* GPORT3 */
+			"RSSD05_PRESENT_N", "RSSD06_PRESENT_N",
+			"RSSD07_PRESENT_N", "RSSD08_PRESENT_N",
+			"RSSD09_PRESENT_N", "RSSD10_PRESENT_N",
+			"RSSD11_PRESENT_N", "RSSD12_PRESENT_N",
+			/* GPORT4 */
+			"RSSD13_PRESENT_N", "RSSD14_PRESENT_N",
+			"RSSD15_PRESENT_N", "RSSD16_PRESENT_N",
+			"LED_ID_FAN_ASM01", "LED_ID_FAN_ASM02",
+			"LED_ID_FAN_ASM03", "LED_ID_FAN_ASM04",
+			/* GPORT5 */
+			"LED_ID_FAN_ASM05", "LED_ID_FAN_ASM06",
+			"PLUG_DETECT_FAN_ASM01", "PLUG_DETECT_FAN_ASM02",
+			"PLUG_DETECT_FAN_ASM03", "PLUG_DETECT_FAN_ASM04",
+			"PLUG_DETECT_FAN_ASM05", "PLUG_DETECT_FAN_ASM06",
+			/* GPORT6 */
+			"SSB_RSSD01_ALERT_N", "SSB_RSSD02_ALERT_N",
+			"SSB_RSSD03_ALERT_N", "SSB_RSSD04_ALERT_N",
+			"SSB_RSSD05_ALERT_N", "SSB_RSSD06_ALERT_N",
+			"SSB_RSSD07_ALERT_N", "SSB_RSSD08_ALERT_N",
+			/* GPORT7 */
+			"SSB_RSSD09_ALERT_N", "SSB_RSSD10_ALERT_N",
+			"SSB_RSSD11_ALERT_N", "SSB_RSSD12_ALERT_N",
+			"SSB_RSSD13_ALERT_N", "SSB_RSSD14_ALERT_N",
+			"SSB_RSSD15_ALERT_N", "SSB_RSSD16_ALERT_N";
+			pinctrl-0 = <&U65200_pins>;
+			pinctrl-names = "default";
+			U65200_pins: cfg-pins {
+				pins =  "gp60", "gp61", "gp62",
+				"gp63", "gp64", "gp65", "gp66",
+				"gp67", "gp70", "gp71", "gp72",
+				"gp73", "gp74", "gp75", "gp76", "gp77";
+				function = "gpio";
+				input-enable;
+				bias-pull-up;
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_svc_pex_rssd17_32: pinctrl@20 {
+			compatible = "cypress,cy8c9560";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(H, 0) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&smb_svc_pex_cpu1_led 17 GPIO_ACTIVE_HIGH>;
+			gpio-line-names =
+			/* GPORT0 */
+			"LED_ID_RSSD17", "LED_ID_RSSD18",
+			"LED_ID_RSSD19", "LED_ID_RSSD20",
+			"LED_ID_RSSD21", "LED_ID_RSSD22",
+			"LED_ID_RSSD23", "LED_ID_RSSD24",
+			/* GPORT1 */
+			"LED_ID_RSSD25", "LED_ID_RSSD26",
+			"LED_ID_RSSD27", "LED_ID_RSSD28",
+			"LED_ID_RSSD29", "LED_ID_RSSD30",
+			"LED_ID_RSSD31", "LED_ID_RSSD32",
+			/* GPORT2 */
+			"RSSD17_PRESENT_N", "RSSD18_PRESENT_N",
+			"RSSD19_PRESENT_N", "RSSD20_PRESENT_N",
+			/* GPORT3 */
+			"RSSD21_PRESENT_N", "RSSD22_PRESENT_N",
+			"RSSD23_PRESENT_N", "RSSD24_PRESENT_N",
+			"RSSD25_PRESENT_N", "RSSD26_PRESENT_N",
+			"RSSD27_PRESENT_N", "RSSD28_PRESENT_N",
+			/* GPORT4 */
+			"RSSD29_PRESENT_N", "RSSD30_PRESENT_N",
+			"RSSD31_PRESENT_N", "RSSD32_PRESENT_N",
+			"LED_ID_FAN_ASM07", "LED_ID_FAN_ASM08",
+			"LED_ID_FAN_ASM09", "LED_ID_FAN_ASM10",
+			/* GPORT5 */
+			"LED_ID_FAN_ASM11", "LED_ID_FAN_ASM12",
+			"PLUG_DETECT_FAN_ASM07", "PLUG_DETECT_FAN_ASM08",
+			"PLUG_DETECT_FAN_ASM09", "PLUG_DETECT_FAN_ASM10",
+			"PLUG_DETECT_FAN_ASM11", "PLUG_DETECT_FAN_ASM12",
+			/* GPORT6 */
+			"SSB_RSSD17_ALERT_N", "SSB_RSSD18_ALERT_N",
+			"SSB_RSSD19_ALERT_N", "SSB_RSSD20_ALERT_N",
+			"SSB_RSSD21_ALERT_N", "SSB_RSSD22_ALERT_N",
+			"SSB_RSSD23_ALERT_N", "SSB_RSSD24_ALERT_N",
+			/* GPORT7 */
+			"SSB_RSSD25_ALERT_N", "SSB_RSSD26_ALERT_N",
+			"SSB_RSSD27_ALERT_N", "SSB_RSSD28_ALERT_N",
+			"SSB_RSSD29_ALERT_N", "SSB_RSSD30_ALERT_N",
+			"SSB_RSSD31_ALERT_N", "SSB_RSSD32_ALERT_N";
+			pinctrl-0 = <&U65300_pins>;
+			pinctrl-names = "default";
+			U65300_pins: cfg-pins {
+				pins = "gp60", "gp61", "gp62",
+				"gp63", "gp64", "gp65", "gp66",
+				"gp67", "gp70", "gp71", "gp72",
+				"gp73", "gp74", "gp75", "gp76",
+				"gp77";
+				function = "gpio";
+				input-enable;
+				bias-pull-up;
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_svc_pex_cpu1_led: pinctrl@20 {
+			compatible = "cypress,cy8c9540";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(V, 6) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 5) GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <18 2>, <36 2>;
+			gpio-line-names =
+			/* GPORT0 */
+			"PLUG_DETECT_DIMM_C1E2", "PLUG_DETECT_DIMM_C1E1",
+			"PLUG_DETECT_DIMM_C1F2", "PLUG_DETECT_DIMM_C1F1",
+			"PLUG_DETECT_DIMM_C1G2", "PLUG_DETECT_DIMM_C1G1",
+			"PLUG_DETECT_DIMM_C1H2", "PLUG_DETECT_DIMM_C1H1",
+			/* GPORT1 */
+			"PLUG_DETECT_DIMM_C1D1", "PLUG_DETECT_DIMM_C1D2",
+			"PLUG_DETECT_DIMM_C1C1", "PLUG_DETECT_DIMM_C1C2",
+			"PLUG_DETECT_DIMM_C1B1", "PLUG_DETECT_DIMM_C1B2",
+			"PLUG_DETECT_DIMM_C1A1", "PLUG_DETECT_DIMM_C1A2",
+			/* GPORT2 */
+			"PEX_CPU1_EVENT_RST", "SVC_PEX_RSSD17_32_RST",
+			"", "",
+			/* GPORT3 */
+			"LED_ID_DIMM_C1E2", "LED_ID_DIMM_C1E1",
+			"LED_ID_DIMM_C1F2", "LED_ID_DIMM_C1F1",
+			"LED_ID_DIMM_C1G2", "LED_ID_DIMM_C1G1",
+			"LED_ID_DIMM_C1H2", "LED_ID_DIMM_C1H1",
+			/* GPORT4 */
+			"LED_ID_DIMM_C1A2", "LED_ID_DIMM_C1A1",
+			"LED_ID_DIMM_C1B2", "LED_ID_DIMM_C1B1",
+			"LED_ID_DIMM_C1C2", "LED_ID_DIMM_C1C1",
+			"LED_ID_DIMM_C1D2", "LED_ID_DIMM_C1D1",
+			/* GPORT5 */
+			"", "",
+			"FM_CPU1_SKTOCC_N", "LED_ID_CPU1";
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_svc_pex_fan_alert: pinctrl@20 {
+			compatible = "cypress,cy8c9560";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&bmc_pex_irq>;
+			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_aux>;
+			reset-gpios = <&bmc_pex_irq 17 GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <24 3>, <51 9>;
+			gpio-line-names =
+			/* GPORT0 */
+			"FAN01_SSB_ALERT_N", "FAN02_SSB_ALERT_N",
+			"FAN03_SSB_ALERT_N", "FAN04_SSB_ALERT_N",
+			"FAN05_SSB_ALERT_N", "FAN06_SSB_ALERT_N",
+			"FAN07_SSB_ALERT_N", "FAN08_SSB_ALERT_N",
+			/* GPORT1 */
+			"FAN09_SSB_ALERT_N", "FAN10_SSB_ALERT_N",
+			"FAN11_SSB_ALERT_N", "FAN12_SSB_ALERT_N",
+			"FAN13_SSB_ALERT_N", "FAN14_SSB_ALERT_N",
+			"FAN15_SSB_ALERT_N", "FAN16_SSB_ALERT_N",
+			/* GPORT2 */
+			"FAN17_SSB_ALERT_N", "FAN18_SSB_ALERT_N",
+			"FAN19_SSB_ALERT_N", "FAN20_SSB_ALERT_N",
+			/* GPORT3 */
+			"FAN21_SSB_ALERT_N", "FAN22_SSB_ALERT_N",
+			"FAN23_SSB_ALERT_N", "FAN24_SSB_ALERT_N",
+			"", "",
+			"", "FAN01_PWM_ALERT_N",
+			/* GPORT4 */
+			"FAN02_PWM_ALERT_N", "FAN03_PWM_ALERT_N",
+			"FAN04_PWM_ALERT_N", "FAN05_PWM_ALERT_N",
+			"FAN06_PWM_ALERT_N", "FAN07_PWM_ALERT_N",
+			"FAN08_PWM_ALERT_N", "FAN09_PWM_ALERT_N",
+			/* GPORT5 */
+			"FAN10_PWM_ALERT_N", "FAN11_PWM_ALERT_N",
+			"FAN12_PWM_ALERT_N", "FAN13_PWM_ALERT_N",
+			"FAN14_PWM_ALERT_N", "FAN15_PWM_ALERT_N",
+			"FAN16_PWM_ALERT_N", "FAN17_PWM_ALERT_N",
+			/* GPORT6 */
+			"FAN18_PWM_ALERT_N", "FAN19_PWM_ALERT_N",
+			"FAN20_PWM_ALERT_N", "FAN21_PWM_ALERT_N",
+			"FAN22_PWM_ALERT_N", "FAN23_PWM_ALERT_N",
+			"FAN24_PWM_ALERT_N", "",
+			/* GPORT7 */
+			"", "",
+			"", "",
+			"", "",
+			"", "";
+			pinctrl-0 = <&U65600_pins>;
+			pinctrl-names = "default";
+			U65600_pins: cfg-pins {
+				pins = "gp00", "gp01", "gp02",
+				"gp03", "gp04", "gp05", "gp06",
+				"gp07", "gp10", "gp11", "gp12",
+				"gp13", "gp14", "gp15", "gp16",
+				"gp17", "gp20", "gp21", "gp22",
+				"gp23", "gp30", "gp31", "gp32",
+				"gp33", "gp37", "gp40", "gp41",
+				"gp42", "gp43", "gp44", "gp45",
+				"gp46", "gp47", "gp50", "gp51",
+				"gp52", "gp53", "gp54", "gp55",
+				"gp56", "gp57", "gp60", "gp61",
+				"gp62", "gp63", "gp64", "gp65",
+				"gp66";
+				function = "gpio";
+				input-enable;
+				bias-pull-up;
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_svc_pex_cpu2_led: pinctrl@20 {
+			compatible = "cypress,cy8c9540";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(V, 5) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 6) GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <17 3>, <36 2>;
+			gpio-line-names =
+			/* GPORT0 */
+			"PLUG_DETECT_DIMM_C2E2", "PLUG_DETECT_DIMM_C2E1",
+			"PLUG_DETECT_DIMM_C2F2", "PLUG_DETECT_DIMM_C2F1",
+			"PLUG_DETECT_DIMM_C2G2", "PLUG_DETECT_DIMM_C2G1",
+			"PLUG_DETECT_DIMM_C2H2", "PLUG_DETECT_DIMM_C2H1",
+			/* GPORT1 */
+			"PLUG_DETECT_DIMM_C2D1", "PLUG_DETECT_DIMM_C2D2",
+			"PLUG_DETECT_DIMM_C2C1", "PLUG_DETECT_DIMM_C2C2",
+			"PLUG_DETECT_DIMM_C2B1", "PLUG_DETECT_DIMM_C2B2",
+			"PLUG_DETECT_DIMM_C2A1", "PLUG_DETECT_DIMM_C2A2",
+			/* GPORT2 */
+			"PEX_CPU2_EVENT_RST", "",
+			"", "",
+			/* GPORT3 */
+			"LED_ID_DIMM_C2E2", "LED_ID_DIMM_C2E1",
+			"LED_ID_DIMM_C2F2", "LED_ID_DIMM_C2F1",
+			"LED_ID_DIMM_C2G2", "LED_ID_DIMM_C2G1",
+			"LED_ID_DIMM_C2H2", "LED_ID_DIMM_C2H1",
+			/* GPORT4 */
+			"LED_ID_DIMM_C2A2", "LED_ID_DIMM_C2A1",
+			"LED_ID_DIMM_C2B2", "LED_ID_DIMM_C2B1",
+			"LED_ID_DIMM_C2C2", "LED_ID_DIMM_C2C1",
+			"LED_ID_DIMM_C2D2", "LED_ID_DIMM_C2D1",
+			/* GPORT5 */
+			"", "",
+			"FM_CPU2_SKTOCC_N", "LED_ID_CPU2";
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb_svc_pex_cpu3_led: pinctrl@20 {
+			compatible = "cypress,cy8c9540";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(V, 3) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 7) GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <17 3>;
+			gpio-line-names =
+			/* GPORT0 */
+			"PLUG_DETECT_DIMM_C3E2", "PLUG_DETECT_DIMM_C3E1",
+			"PLUG_DETECT_DIMM_C3F2", "PLUG_DETECT_DIMM_C3F1",
+			"PLUG_DETECT_DIMM_C3G2", "PLUG_DETECT_DIMM_C3G1",
+			"PLUG_DETECT_DIMM_C3H2", "PLUG_DETECT_DIMM_C3H1",
+			/* GPORT1 */
+			"PLUG_DETECT_DIMM_C3D1", "PLUG_DETECT_DIMM_C3D2",
+			"PLUG_DETECT_DIMM_C3C1", "PLUG_DETECT_DIMM_C3C2",
+			"PLUG_DETECT_DIMM_C3B1", "PLUG_DETECT_DIMM_C3B2",
+			"PLUG_DETECT_DIMM_C3A1", "PLUG_DETECT_DIMM_C3A2",
+			/* GPORT2 */
+			"PEX_CPU3_EVENT_RST", "",
+			"", "",
+			/* GPORT3 */
+			"LED_ID_DIMM_C3E2", "LED_ID_DIMM_C3E1",
+			"LED_ID_DIMM_C3F2", "LED_ID_DIMM_C3F1",
+			"LED_ID_DIMM_C3G2", "LED_ID_DIMM_C3G1",
+			"LED_ID_DIMM_C3H2", "LED_ID_DIMM_C3H1",
+			/* GPORT4 */
+			"LED_ID_DIMM_C3A2", "LED_ID_DIMM_C3A1",
+			"LED_ID_DIMM_C3B2", "LED_ID_DIMM_C3B1",
+			"LED_ID_DIMM_C3C2", "LED_ID_DIMM_C3C1",
+			"LED_ID_DIMM_C3D2", "LED_ID_DIMM_C3D1",
+			/* GPORT5 */
+			"LED_PWR_DWR_FRNT", "LED_ID_DWR_FRNT_P",
+			"FM_CPU3_SKTOCC_N", "LED_ID_CPU3";
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		smb_svc_pex_cpu0_led: pinctrl@20 {
+			compatible = "cypress,cy8c9540";
+			reg = <0x20>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-parent = <&gpio0>;
+			interrupts = <ASPEED_GPIO(O, 3) IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			vdd-supply = <&p3v3_bmc_aux>;
+			reset-gpios = <&gpio0 ASPEED_GPIO(Q, 4) GPIO_ACTIVE_HIGH>;
+			gpio-reserved-ranges = <18 2>, <36 2>;
+			gpio-line-names =
+			/* GPORT0 */
+			"PLUG_DETECT_DIMM_C0E2", "PLUG_DETECT_DIMM_C0E1",
+			"PLUG_DETECT_DIMM_C0F2", "PLUG_DETECT_DIMM_C0F1",
+			"PLUG_DETECT_DIMM_C0G2", "PLUG_DETECT_DIMM_C0G1",
+			"PLUG_DETECT_DIMM_C0H2", "PLUG_DETECT_DIMM_C0H1",
+			/* GPORT1 */
+			"PLUG_DETECT_DIMM_C0D1", "PLUG_DETECT_DIMM_C0D2",
+			"PLUG_DETECT_DIMM_C0C1", "PLUG_DETECT_DIMM_C0C2",
+			"PLUG_DETECT_DIMM_C0B1", "PLUG_DETECT_DIMM_C0B2",
+			"PLUG_DETECT_DIMM_C0A1", "PLUG_DETECT_DIMM_C0A2",
+			/* GPORT2 */
+			"PEX_CPU0_EVENT_RST", "SVC_PEX_RSSD01_16_RST",
+			"", "",
+			/* GPORT3 */
+			"LED_ID_DIMM_C0E2", "LED_ID_DIMM_C0E1",
+			"LED_ID_DIMM_C0F2", "LED_ID_DIMM_C0F1",
+			"LED_ID_DIMM_C0G2", "LED_ID_DIMM_C0G1",
+			"LED_ID_DIMM_C0H2", "LED_ID_DIMM_C0H1",
+			/* GPORT4 */
+			"LED_ID_DIMM_C0A2", "LED_ID_DIMM_C0A1",
+			"LED_ID_DIMM_C0B2", "LED_ID_DIMM_C0B1",
+			"LED_ID_DIMM_C0C2", "LED_ID_DIMM_C0C1",
+			"LED_ID_DIMM_C0D2", "LED_ID_DIMM_C0D1",
+			/* GPORT5 */
+			"", "",
+			"FM_CPU0_SKTOCC_N", "LED_ID_CPU0";
+		};
+	};
+};
+
+&i2c9 {
+	status = "okay";
+
+	p1v2_bmc_aux_mon: pmic@60 {
+		compatible = "maxim,max8952";
+		reg = <0x60>;
+		max8952,default-mode = <3>;
+		max8952,dvs-mode-microvolt = <1100000>, <1100000>,
+					     <1100000>, <1100000>;
+		max8952,sync-freq = <0>;
+		max8952,ramp-speed = <0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&i2cmux8 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan10_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan10_ssb: sw0 {
+					regulator-name = "fan10_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan12_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan12_ssb: sw0 {
+					regulator-name = "fan12_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan14_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan14_ssb: sw0 {
+					regulator-name = "fan14_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan16_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan16_ssb: sw0 {
+					regulator-name = "fan16_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan18_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan18_ssb: sw0 {
+					regulator-name = "fan18_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan20_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan20_ssb: sw0 {
+					regulator-name = "fan20_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan22_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan22_ssb: sw0 {
+					regulator-name = "fan22_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan24_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <23 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan24_ssb: sw0 {
+					regulator-name = "fan24_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux7 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan17_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan17_ssb: sw0 {
+					regulator-name = "fan17_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan19_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan19_ssb: sw0 {
+					regulator-name = "fan19_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan21_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan21_ssb: sw0 {
+					regulator-name = "fan21_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan23_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <22 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan23_ssb: sw0 {
+					regulator-name = "fan23_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan02_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan02_ssb: sw0 {
+					regulator-name = "fan02_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan04_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan04_ssb: sw0 {
+					regulator-name = "fan04_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan06_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan06_ssb: sw0 {
+					regulator-name = "fan06_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan08_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan08_ssb: sw0 {
+					regulator-name = "fan08_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux6 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan01_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan01_ssb: sw0 {
+					regulator-name = "fan01_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan03_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan03_ssb: sw0 {
+					regulator-name = "fan03_supply";
+
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan05_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan05_ssb: sw0 {
+					regulator-name = "fan05_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan07_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan07_ssb: sw0 {
+					regulator-name = "fan07_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan09_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan09_ssb: sw0 {
+					regulator-name = "fan09_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan11_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan11_ssb: sw0 {
+					regulator-name = "fan11_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan13_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan13_ssb: sw0 {
+					regulator-name = "fan13_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan15_ssb: regulator@3a {
+			compatible = "maxim,max5978";
+			reg = <0x3a>;
+			vss1-supply = <&p12v_a>;
+			interrupt-parent = <&smb_svc_pex_fan_alert>;
+			interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
+
+			regulators {
+				sw0_fan15_ssb: sw0 {
+					regulator-name = "fan15_supply";
+					shunt-resistor-micro-ohms = <10000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <3400000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+
+	};
+};
+
+&i2cmux9 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd19: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <46 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd19:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd19: sw0 {
+					regulator-name = "rssd19_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd19: sw1 {
+					regulator-name = "rssd19_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd18: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <45 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd18:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd18: sw0 {
+					regulator-name = "rssd18_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd18: sw1 {
+					regulator-name = "rssd18_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd17: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <44 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd17:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd17: sw0 {
+					regulator-name = "rssd17_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd17: sw1 {
+					regulator-name = "rssd17_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd20: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <47 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd20:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd20: sw0 {
+					regulator-name = "rssd20_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd20: sw1 {
+					regulator-name = "rssd20_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd21: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <48 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd21:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd21: sw0 {
+					regulator-name = "rssd21_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd21: sw1 {
+					regulator-name = "rssd21_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd22: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <49 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd22:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd22: sw0 {
+					regulator-name = "rssd22_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd22: sw1 {
+					regulator-name = "rssd22_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd24: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <51 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd24:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd24: sw0 {
+					regulator-name = "rssd24_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd24: sw1 {
+					regulator-name = "rssd24_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd23: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <50 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd23:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd23: sw0 {
+					regulator-name = "rssd23_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd23: sw1 {
+					regulator-name = "rssd23_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux10 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd25: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <52 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd25:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd25: sw0 {
+					regulator-name = "rssd25_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd25: sw1 {
+					regulator-name = "rssd25_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd26: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <53 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd26:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd26: sw0 {
+					regulator-name = "rssd26_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd26: sw1 {
+					regulator-name = "rssd26_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd27: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <54 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd27:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd27: sw0 {
+					regulator-name = "rssd27_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd27: sw1 {
+					regulator-name = "rssd27_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd32: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <59 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd32:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd32: sw0 {
+					regulator-name = "rssd32_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd32: sw1 {
+					regulator-name = "rssd32_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd31: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <58 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd31:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd31: sw0 {
+					regulator-name = "rssd31_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd31: sw1 {
+					regulator-name = "rssd31_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd30: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <57 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd30:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd30: sw0 {
+					regulator-name = "rssd30_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd30: sw1 {
+					regulator-name = "rssd30_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd29: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <56 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd29:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd29: sw0 {
+					regulator-name = "rssd29_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd29: sw1 {
+					regulator-name = "rssd29_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd28: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd17_32>;
+			interrupts = <55 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd28:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd28: sw0 {
+					regulator-name = "rssd28_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd28: sw1 {
+					regulator-name = "rssd28_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux18 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd03: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <46 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd03:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd03: sw0 {
+					regulator-name = "rssd03_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd03: sw1 {
+					regulator-name = "rssd03_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd02: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <45 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd02:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd02: sw0 {
+					regulator-name = "rssd02_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd02: sw1 {
+					regulator-name = "rssd02_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd01: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <44 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd01:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd01: sw0 {
+					regulator-name = "rssd01_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd01: sw1 {
+					regulator-name = "rssd01_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd04: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <47 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd04:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd04: sw0 {
+					regulator-name = "rssd04_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd04: sw1 {
+					regulator-name = "rssd04_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd05: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <48 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd05:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd05: sw0 {
+					regulator-name = "rssd05_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd05: sw1 {
+					regulator-name = "rssd05_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd08: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <51 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd08:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd08: sw0 {
+					regulator-name = "rssd08_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd08: sw1 {
+					regulator-name = "rssd08_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd07: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <50 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd07:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd07: sw0 {
+					regulator-name = "rssd07_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd07: sw1 {
+					regulator-name = "rssd07_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd06: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <49 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd06:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd06: sw0 {
+					regulator-name = "rssd06_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd06: sw1 {
+					regulator-name = "rssd06_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
+
+&i2cmux19 {
+	i2c@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd14: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <57 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd14:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd14: sw0 {
+					regulator-name = "rssd14_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd14: sw1 {
+					regulator-name = "rssd14_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@1 {
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd13: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <56 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd13:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd13: sw0 {
+					regulator-name = "rssd13_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd13: sw1 {
+					regulator-name = "rssd13_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@2 {
+		reg = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd12: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <55 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd12:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd12: sw0 {
+					regulator-name = "rssd12_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd12: sw1 {
+					regulator-name = "rssd12_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@3 {
+		reg = <3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd11: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <54 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd11:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd11: sw0 {
+					regulator-name = "rssd11_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd11: sw1 {
+					regulator-name = "rssd11_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@4 {
+		reg = <4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd10: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <53 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd10:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd10: sw0 {
+					regulator-name = "rssd10_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd10: sw1 {
+					regulator-name = "rssd10_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@5 {
+		reg = <5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd09: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <52 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd09:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd09: sw0 {
+					regulator-name = "rssd09_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd09: sw1 {
+					regulator-name = "rssd09_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@6 {
+		reg = <6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd15: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <58 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd15:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd15: sw0 {
+					regulator-name = "rssd15_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd15: sw1 {
+					regulator-name = "rssd15_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+	i2c@7 {
+		reg = <7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ssb_rssd16: regulator@3a {
+			compatible = "maxim,max5970";
+			reg = <0x3a>;
+			interrupt-parent = <&smb_svc_pex_rssd01_16>;
+			interrupts = <59 IRQ_TYPE_LEVEL_LOW>;
+
+			vss1-supply = <&p3v3_aux>;
+			vss2-supply = <&p12v_a>;
+
+			leds {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				led@0 {
+					reg = <0>;
+					label = "rssd16:green:power";
+					default-state = "off";
+				};
+			};
+
+			regulators {
+				sw0_ssb_rssd16: sw0 {
+					regulator-name = "rssd16_12v";
+					shunt-resistor-micro-ohms = <9000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <4500000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+				sw1_ssb_rssd16: sw1 {
+					regulator-name = "rssd16_3v3";
+					shunt-resistor-micro-ohms = <100000>;
+					regulator-over-current-protection;
+					regulator-oc-protection-microamp = <410000>;
+					regulator-enable-ramp-delay = <1000>;
+				};
+			};
+		};
+	};
+};
-- 
2.42.0


