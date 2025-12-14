Return-Path: <devicetree+bounces-246324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB717CBBE6B
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 19:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 369963012756
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 18:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3242530B536;
	Sun, 14 Dec 2025 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="avVwJRnb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4328330CDB6
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 18:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735343; cv=none; b=E9DNppex0RVExSFd5jR4kpGVtZKKKxk4Zq4jMC4ZDGVtOVMfaG7aS/cjigHeVP9WJKPQQv111ICYYnk4mW/Y1otPNhTeSCQ3QttM47PqtTkGPuMR4SWerSzdKcpTgq0A4b6AzjPqCPhkZgRJisKDNFl0VJ/jRFC98GBV/r7Zb6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735343; c=relaxed/simple;
	bh=teGjSeO2//jxel7lgj4m4mlRBfXDz8ZUiXqvHEVM9SM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MadndVwC3gUSRfYlHWUDvL2UQdSbmy4OTf5QRZmy5r+evLLsUY8XhkZQdJoBJEE9b/0yu+Qm6DhtScNc/DovNPuX+1AeKf6eNRJFufq9cemhlAhy8e5n8LLtQ2o4/aGHXfHve3Uo2hyWOb9VZGiDtwCdnIrigcOp3Wn57+FeLvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=avVwJRnb; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso20984985e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 10:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765735340; x=1766340140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/LVF5aHC+kNGWsjnPASPozbIVCRyZHBLtnFy/MbPGkI=;
        b=avVwJRnb6XImjUAVukQA4cjT2wA1uTS2nX2WimwCfIkrl2VmyAcUkOFXk/yBNFxz46
         uDvlQ0TfwSexYm2cjqQYLVd1f/hzGL0lgfH8bjMWtDczSucZhWYSXbC5IQ6u0C7my5U7
         ++S5b6NqPZTkQoj0POkU8z/6SYUpgep11VyDO5ye4Le+/YziUHm477u7Xh3EU88slHGR
         YmmXSMCFLb3OQgTN7nc4gKlXIGtfmXADtLrNzsqoGvE5XHz1CWfug3J1Xjktsqbxj09o
         Ej7aGezwy7kbYHNiGCvfKRMu9WLg885WO1bGND52ReL4xM2tfcNSfvIIbwlAmS7yRsFD
         4c2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765735340; x=1766340140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/LVF5aHC+kNGWsjnPASPozbIVCRyZHBLtnFy/MbPGkI=;
        b=E3SKn2HgzqNgI3dBGpjwyfLY74FRcHA1NEiWS/msPGaaCMEPa1rOwTHNKmqXgcXgun
         z7KsyQEJ30qow9mfksNKcL/NB1jySsXChV2r4U3TYTCWWKu1YSquG6ap5U+42Rb4ZUSz
         TJElVczDFwfJ1ZaIf3D5iTUHylrde7SsyY/nXDCM0CylPd0tOgIQggv2IhTomKmxphS2
         Irt9wVUjbtiecUwD4hHiU4gMXJ+bA5ch90N/easuCqyUHX1k93ILg1/USnE8xGm3iCB5
         e9IgkYYv52ojbRKoHU0e8lHDPZu9fnu5kue/N38CXoevrsuZ0cs2+pI2Gx/1mPSwIJ7E
         /7nA==
X-Forwarded-Encrypted: i=1; AJvYcCVR3igXpUMXbhzRGPEGV1UeWZa8Gn2m28XvlBZoDvFIVx6eEMA8uLxEnu5Rg1QdAAYG02KP+eplo0RO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw0B81Cf9UC2AkELVQAKCU6i3NaZVLpXpqPZW/MBm6p8JHAIUp
	QkI9Uv3qEu3R/244APn5tQQsvGs0bLzK1fBGWq/U2wYoJtkLMS3P4J6t
X-Gm-Gg: AY/fxX4qdHlfGLbFPTWjr/lY33cvMXmxZTqUkHlfHYmO71IgbMx3aBzOZHp47PHGDVX
	HBzxWNAZaymPuN/Usi+tO1IzRHwWvGLe/R2ojbbyogsqkBPOQszArV5CzflZNxLRNOCAaAB+qkY
	99L5SZ6Yl3D6KLOdLLjbRN1bbwX9iK+iw98HWGd2KV2dRKHMOroDX+BWOwfKH0WwVB7Quek/EXe
	/GbuG5DvfM+y8yepVo7MHHgwuQCGCanK4tdUkWdGx/Gw1fPhHFcpwmnR855bWfizBP/wCqrBzYj
	JytcVTmAdpAL83KZx1rWNdSikbRM/Qp2EcKL92k4CxdZmVEpyQqkROMF9aMKcUiIWxwWlR8c8Gb
	YYnBrAn5xhj7l3ZEgn73KB+8sTRDWCjgpDgSjXKypn6RppmFV9impk/YwY09Fn0HBTSuRyT6lYO
	HazsQMyJnqAqe8r+NFjXqsey2Rx+JZIN8blHLR2FacySbJ8T77LMk3feW84sRzlXzf
X-Google-Smtp-Source: AGHT+IGD6ll8wYebIDXtLq3Riq8kBsl6EOrp39HuuzqQac/8fI0+WQSs/FZ1Y3RSdfag36oxxpmDmg==
X-Received: by 2002:a05:600c:3e06:b0:471:786:94d3 with SMTP id 5b1f17b1804b1-47a8f907f13mr64478215e9.22.1765735339273;
        Sun, 14 Dec 2025 10:02:19 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b17bsm146120235e9.2.2025.12.14.10.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 10:02:18 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] openrisc: dts: Add de0 nano config and devicetree
Date: Sun, 14 Dec 2025 18:01:42 +0000
Message-ID: <20251214180158.3955285-3-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251214180158.3955285-1-shorne@gmail.com>
References: <20251214180158.3955285-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The de0 nano from Terasic is an FPGA board that we use in the OpenRISC
community to test OpenRISC configurations.  Add a base configuration for
the board that runs an OpenRISC CPU at 50Mhz with 32MB ram, UART for
console and some GPIOs for LEDs and switches.

There is an older version of this floating around that defines all of
the hardware on the board including SPI's, flash devices, sram, ADCs
etc.  Eventually it would be good to get the full version upstream
but for now I think a minimal board is good to start with.

Link: https://openrisc.io/tutorials/de0_nano/
Link: https://github.com/olofk/de0_nano

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/boot/dts/de0-nano-common.dtsi | 41 +++++++++++
 arch/openrisc/boot/dts/de0-nano.dts         | 54 ++++++++++++++
 arch/openrisc/configs/de0_nano_defconfig    | 79 +++++++++++++++++++++
 3 files changed, 174 insertions(+)
 create mode 100644 arch/openrisc/boot/dts/de0-nano-common.dtsi
 create mode 100644 arch/openrisc/boot/dts/de0-nano.dts
 create mode 100644 arch/openrisc/configs/de0_nano_defconfig

diff --git a/arch/openrisc/boot/dts/de0-nano-common.dtsi b/arch/openrisc/boot/dts/de0-nano-common.dtsi
new file mode 100644
index 000000000000..421c366d120e
--- /dev/null
+++ b/arch/openrisc/boot/dts/de0-nano-common.dtsi
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x02000000>;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+		status = "okay";
+		led-heartbeat {
+			gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+			label = "heartbeat";
+		};
+	};
+
+	gpio0: gpio@91000000 {
+		compatible = "opencores,gpio", "brcm,bcm6345-gpio";
+		reg = <0x91000000 0x1>, <0x91000001 0x1>;
+		reg-names = "dat", "dirout";
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "okay";
+	};
+
+	gpio1: gpio@92000000 {
+		compatible = "opencores,gpio", "brcm,bcm6345-gpio";
+		reg = <0x92000000 0x1>, <0x92000001 0x1>;
+		reg-names = "dat", "dirout";
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "disabled";
+	};
+};
diff --git a/arch/openrisc/boot/dts/de0-nano.dts b/arch/openrisc/boot/dts/de0-nano.dts
new file mode 100644
index 000000000000..06c9b0b2406e
--- /dev/null
+++ b/arch/openrisc/boot/dts/de0-nano.dts
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/dts-v1/;
+
+#include "de0-nano-common.dtsi"
+
+/ {
+	model = "Terasic DE0 Nano";
+	compatible = "opencores,or1ksim";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	interrupt-parent = <&pic>;
+
+	aliases {
+		uart0 = &serial0;
+	};
+
+	chosen {
+		bootargs = "earlycon";
+		stdout-path = "uart0:115200";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		cpu@0 {
+			compatible = "opencores,or1200-rtlsvn481";
+			reg = <0>;
+			clock-frequency = <50000000>;
+		};
+	};
+
+	/*
+	 * OR1K PIC is built into CPU and accessed via special purpose
+	 * registers.  It is not addressable and, hence, has no 'reg'
+	 * property.
+	 */
+	pic: pic {
+		compatible = "opencores,or1k-pic";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	serial0: serial@90000000 {
+		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
+		reg = <0x90000000 0x100>;
+		interrupts = <2>;
+		clock-frequency = <50000000>;
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
diff --git a/arch/openrisc/configs/de0_nano_defconfig b/arch/openrisc/configs/de0_nano_defconfig
new file mode 100644
index 000000000000..bc63905f9cd8
--- /dev/null
+++ b/arch/openrisc/configs/de0_nano_defconfig
@@ -0,0 +1,79 @@
+CONFIG_SYSVIPC=y
+CONFIG_NO_HZ=y
+CONFIG_LOG_BUF_SHIFT=14
+CONFIG_BLK_DEV_INITRD=y
+# CONFIG_RD_GZIP is not set
+# CONFIG_RD_LZMA is not set
+# CONFIG_RD_LZO is not set
+# CONFIG_RD_LZ4 is not set
+# CONFIG_RD_ZSTD is not set
+CONFIG_EXPERT=y
+# CONFIG_EPOLL is not set
+# CONFIG_TIMERFD is not set
+# CONFIG_EVENTFD is not set
+# CONFIG_AIO is not set
+CONFIG_BUILTIN_DTB_NAME="de0-nano"
+# CONFIG_FPU is not set
+CONFIG_HZ_100=y
+# CONFIG_BLOCK is not set
+CONFIG_SLUB_TINY=y
+# CONFIG_COMPAT_BRK is not set
+# CONFIG_VM_EVENT_COUNTERS is not set
+CONFIG_NET=y
+CONFIG_UNIX=y
+CONFIG_UNIX_DIAG=y
+CONFIG_INET=y
+CONFIG_IP_MULTICAST=y
+CONFIG_INET_UDP_DIAG=y
+CONFIG_INET_RAW_DIAG=y
+CONFIG_INET_DIAG_DESTROY=y
+# CONFIG_IPV6 is not set
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+# CONFIG_PREVENT_FIRMWARE_BUILD is not set
+# CONFIG_FW_LOADER is not set
+# CONFIG_INPUT is not set
+# CONFIG_SERIO is not set
+# CONFIG_VT is not set
+# CONFIG_LEGACY_PTYS is not set
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_OF_PLATFORM=y
+# CONFIG_HW_RANDOM is not set
+CONFIG_PPS=y
+CONFIG_GPIO_SYSFS=y
+# CONFIG_GPIO_SYSFS_LEGACY is not set
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_HWMON is not set
+# CONFIG_USB_SUPPORT is not set
+CONFIG_NEW_LEDS=y
+CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_GPIO=y
+CONFIG_LEDS_TRIGGERS=y
+CONFIG_LEDS_TRIGGER_TIMER=y
+CONFIG_LEDS_TRIGGER_ONESHOT=y
+CONFIG_LEDS_TRIGGER_HEARTBEAT=y
+CONFIG_LEDS_TRIGGER_CPU=y
+CONFIG_LEDS_TRIGGER_ACTIVITY=y
+CONFIG_LEDS_TRIGGER_GPIO=y
+CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
+CONFIG_LEDS_TRIGGER_TRANSIENT=y
+CONFIG_LEDS_TRIGGER_PANIC=y
+CONFIG_LEDS_TRIGGER_NETDEV=y
+CONFIG_LEDS_TRIGGER_PATTERN=y
+CONFIG_LEDS_TRIGGER_TTY=y
+# CONFIG_VIRTIO_MENU is not set
+# CONFIG_VHOST_MENU is not set
+# CONFIG_DNOTIFY is not set
+CONFIG_TMPFS=y
+# CONFIG_XZ_DEC_X86 is not set
+# CONFIG_XZ_DEC_POWERPC is not set
+# CONFIG_XZ_DEC_ARM is not set
+# CONFIG_XZ_DEC_ARMTHUMB is not set
+# CONFIG_XZ_DEC_ARM64 is not set
+# CONFIG_XZ_DEC_SPARC is not set
+# CONFIG_XZ_DEC_RISCV is not set
+CONFIG_PRINTK_TIME=y
+# CONFIG_DEBUG_MISC is not set
+# CONFIG_FTRACE is not set
+# CONFIG_RUNTIME_TESTING_MENU is not set
-- 
2.51.0


