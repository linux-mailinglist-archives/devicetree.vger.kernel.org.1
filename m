Return-Path: <devicetree+bounces-254628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA46D1A235
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 11FF7300E621
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A966A255F2C;
	Tue, 13 Jan 2026 16:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YeRtFyou"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4840EED8
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320926; cv=none; b=mPR0rXP8F/734jgznJBTBG3RMki7PJYONcj9ZLiZeJbLjHoxEpxU401wy3ZwL0YLtmreQhFll9mLoDun9ZSWurzz0p9eb8j5fknhHsXv7XqeihetdtVJpsDvgtGKmwwP5FaxHWlXbcR2qCBgniXLZlN9DQM5oCZ4YC8BI941Nv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320926; c=relaxed/simple;
	bh=X+1J5PrXk/eYAdcNrlogIy51e8BwUbac79/oxhidec0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uvTR44dNqbvFCTErYf4JTWKEp6FFfqoLKkhbf6GzntJZRx61WOsQLCq+2AuuV9EcgXhlbLitCtZCfkgbkuISiBdnbZkuT9equRhiQIDvTBlxxIwJ6LFOHPyG8lufbWoncEzmtay8SCKKrV/55mwB6OHkJJec+RXnbbSBWVTkOMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YeRtFyou; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso83490135e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320921; x=1768925721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1s6pH8NPA0ipZmaojy8syPtuylZJ77gPmpuGh7ODFgg=;
        b=YeRtFyouUfzqg+g+cWScjYYYRIu5XUEGiDz45UjiE8t0guZzN9rwpxZc16yq/r2RTE
         tJqq+dxdbeurtLW8I0Reioz4dsStNV9zqGpDneIF15dYp7fot7cwSR0a4DlbvpiTQ4W+
         rLVAyplUnxX135/Ze3wOMjRq7ek5IT6RrZGyphrJNvs4YCHAhhsg7ZZoSVEC41AG7Wr+
         Iacx+kfoEktUkVDwkcdCA2xszq4Df2JQ/hNn/zF+kCDs2BBBHu4zu6eW4Ucp25ZFSTVO
         VbrAGEnEWWp0NQ3ASrVTdz331B5GTz22aPRs8XrJCVRAHyAPwUoJd/UsPednN5z6KVXg
         3WPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320921; x=1768925721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1s6pH8NPA0ipZmaojy8syPtuylZJ77gPmpuGh7ODFgg=;
        b=SgKRBj5gPGh73qCnNZ7mUdznCKPLZiovsYoX0nza/SmwtOUZ3g0psfoNZxtxFTza+v
         pnL5FgvQ8/IXFHlvJCPoU4+Wt6KjvR4/pfGf22C8Bb9hNTzsYguX8J8tfUX8cEu45Ymx
         dEgh7cjSRQoGik8yVx1khxngSGMp4oBhUmXHLaKV55ymKTiJ6NXay64D91nd2kRbpzO7
         G7mi5EtFlGxjmxcHZrp/oh1xtuXwMplIkWFU1q6Slt2rPP2RSG5WJYX4Hvt3dqU1xkEm
         Y6SGVzU6o3Rwl3+TT29KwxdHegGxw0qNwaY9fALXgu+0zRawe950PoWyTk7gjWbQnVNY
         +D4w==
X-Forwarded-Encrypted: i=1; AJvYcCUHd9temGIwJRIYoPLlpXlwxO8BolRE6FdhIXxcGwzuaCNgFkDb2W5dQS/G+CXsMObQrzrJlM3C6HJx@vger.kernel.org
X-Gm-Message-State: AOJu0YyAWQ5fvaQpq5VT5CFSW2HHcWY/B5K9wWWRcAjv9D+HT1pPuHz0
	XtTJbk4BPOHx2yDJbiZiAqyh4OObEAC3hAxORIvyXgOY7oO0OuWOCQEq
X-Gm-Gg: AY/fxX6xv6v41sPg62SFQPzl1qbE/8wHYJoqvJdaLY3CAdOblDCIRJhczw3NFtb9rSw
	FetJaq1HRyVoV0jwOGGDz2DR5hI242XCRBBBc1wMrMuXopWmPOjBPX7pXwiKgrkDcqEPBI5twwm
	ltjbcx72AdDym7fjENYImSmNGe8NQneoX6TydkUfI4MAEBvEymtUsk6NujCz7NmjA9MWNPvV2X4
	22uZrva+ijRxql8hko3sDzYmaq2W47tBBQi3Q5Kai/Iaj+fjrCsaLhtKt4D3pnfTzEBPe+zGYI1
	Dl+CjqECdqRVEnEO+KIfIFs6O13ngcgEJ7fqurH++tgFIeRQ4AksHRO07Wk0SGZQoi4F7CVHrx+
	ip7/DuqkI0IcOf5i9OLKVERJLX/+/fPtVwtSs37Rpx1kn5/fxlu/I32QJ7i5ylXqMqHRAn33CYi
	+f2Yl9dQ/kik38GbAyv14e2j8kbPQbuGjOCRNiTc5hig4H8XIRXouTOXWS3C27E+fp
X-Google-Smtp-Source: AGHT+IEBkqIo09065N0bi2TrrVj4eRHKloky1enyrZHc+sXMIs3OMC5p/IWN5EPOuPpgYYKp0+XRsg==
X-Received: by 2002:a05:600c:6303:b0:47e:d943:ec08 with SMTP id 5b1f17b1804b1-47ed943eedcmr36590545e9.28.1768320920880;
        Tue, 13 Jan 2026 08:15:20 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee28116d3sm2084275e9.12.2026.01.13.08.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:19 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
Subject: [PATCH v4 3/6] openrisc: dts: Add de0 nano config and devicetree
Date: Tue, 13 Jan 2026 16:11:36 +0000
Message-ID: <20260113161152.3688309-4-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113161152.3688309-1-shorne@gmail.com>
References: <20260113161152.3688309-1-shorne@gmail.com>
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
Since v3:
 - No changes.
Since v2:
 - Move leds block up to the top.
 - Remove unneeded "status" from gpio0.
 - Removed earlycon from de0-nano.dts.

 arch/openrisc/boot/dts/de0-nano-common.dtsi | 42 +++++++++++
 arch/openrisc/boot/dts/de0-nano.dts         | 54 ++++++++++++++
 arch/openrisc/configs/de0_nano_defconfig    | 79 +++++++++++++++++++++
 3 files changed, 175 insertions(+)
 create mode 100644 arch/openrisc/boot/dts/de0-nano-common.dtsi
 create mode 100644 arch/openrisc/boot/dts/de0-nano.dts
 create mode 100644 arch/openrisc/configs/de0_nano_defconfig

diff --git a/arch/openrisc/boot/dts/de0-nano-common.dtsi b/arch/openrisc/boot/dts/de0-nano-common.dtsi
new file mode 100644
index 000000000000..02e329e28e33
--- /dev/null
+++ b/arch/openrisc/boot/dts/de0-nano-common.dtsi
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	leds0: leds {
+		compatible = "gpio-leds";
+
+		led-heartbeat {
+			gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+			label = "heartbeat";
+		};
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x02000000>;
+	};
+
+	/* 8 Green LEDs */
+	gpio0: gpio@91000000 {
+		compatible = "opencores,gpio";
+		reg = <0x91000000 0x1>, <0x91000001 0x1>;
+		reg-names = "dat", "dirout";
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/* 4 DIP Switches */
+	gpio1: gpio@92000000 {
+		compatible = "opencores,gpio";
+		reg = <0x92000000 0x1>, <0x92000001 0x1>;
+		reg-names = "dat", "dirout";
+		gpio-controller;
+		#gpio-cells = <2>;
+		status = "disabled";
+	};
+};
diff --git a/arch/openrisc/boot/dts/de0-nano.dts b/arch/openrisc/boot/dts/de0-nano.dts
new file mode 100644
index 000000000000..b5b854e7e8b4
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
+		stdout-path = "uart0:115200";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
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


