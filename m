Return-Path: <devicetree+bounces-246326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D41CBBE68
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 19:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA2FE3003FE9
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 18:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB112E764C;
	Sun, 14 Dec 2025 18:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QZrB4sAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8273B30C617
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735356; cv=none; b=JGd0xYqH6PU9e+s4i960x7ZVmiQZBHK1LI6CJVRdg/IQYA3hjJXuSTllU7AWkhCmQOToMijBakf4NeCM0i0J+64iehGag/2AP02zYTaqg8T1fFydcCfx7a0rDDqjdE1N7YKfkTSqiv/p/yQmEcwY9amR1wkwuNRuE01SHK1IRSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735356; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ts5paFtgfstisiAInEU1d8gp4pXcaN83bDIB3M/tW+jE9wx9dTV8Blt1lvIrpew8Hk2q0q7CnkTrQxakeg9VVTsRfrAT8qs811UgjtbritLDLjD+pu9Rml5P1GdK1v6IdHmmlxlxcL2c+RM2WX05TXG3IcIR2DWyfGAykfXb7+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QZrB4sAT; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42e2d5e119fso1212048f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 10:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765735353; x=1766340153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=QZrB4sATIG51nznQz0V+7AoCp+3nbc2iQvR9xKi9D5ZfEe4g5lt679adz+dAQB01EM
         m8/8rXX0uOjQ7WWGTJem12l95rsQPtjUFDXVIepetVFt6qx+S8rdzM9IlQImSGBdnLIE
         d/LoklqnmoKGBRDF3dA1q0fVKMTDjUfKagS2QmRH+wVwhnhgjlm23dohZxv6Ea8yFwww
         SmG9ipxNiRqhSMpCKv3iI6gHtKE6M5VVb1wA6oRx4dYMCDPMVcxdtG4gZayahyDLjY1B
         OgQYEO6ALCNDgKI0zNuMlqefjtb9nfvEr3fPZlhTGPBYMN4IMbvg+N5eX5x8B1AImqPb
         LMEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765735353; x=1766340153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=w6HEr0VtoHOroiMxFwY4VtM7pf5WjyVGrmqHijkC7vNfHgJUeflp8a3roJWwUTx+oq
         oC9ivP28itCzymgeba+rSWjsFkpwr1eaGU74A6fq7vjd/dfvlFr0F4c77umIJaSGpP5D
         wNdLa7kAWCTINmEKVujN4R+Wn+ygRaSzo03YAwheAE49AiADvVFKyQjjt2R1gukJ1wDu
         +dw8NYfRjJmgxduHmINeK6QrocLAaFYGEo41/QI/ikzZDCtjc0ndTxwhYZzgNfrXXVlE
         JGMlW4uvAdjYoHgEszEOqTUYkWphGSt8tE5Llb4NV/+D7lAjS90cy0UbjIr3Hhs1+y1P
         XViw==
X-Forwarded-Encrypted: i=1; AJvYcCW96ITZJ5z3wiwh8C8Xgmbh9VSjmyINMLLmoOrHI2fJ371hlDBxmyo8cjOoajZFmjkguZwyD4uScpJ5@vger.kernel.org
X-Gm-Message-State: AOJu0YzolSC9Egw63ckljefKJq9ZvMwrGx6KQeSSL+V7uIdqLhXC9tGU
	2yGl04+mLarHmxpTFdYQmdPIsMyDkGHe2b/11LlDVYQkOcNnf+B3MLXZ
X-Gm-Gg: AY/fxX58EbjFwpj9rozRMqBjkAsV9BEd/ll0BHjL+DqFIfVbg8u81LD6pHuXBSlF91g
	VQIky5//p6sCG+lLdVS4IPjPETmcBAxwqF08at+z72HBbPFF73KvNIj78r2G6A1ad8UlSKdLYLT
	KZxLhRwWMZ14AYmtzcYIOBeo0sUwDxqTYrNl5+AYvQYrzCXBmga2jpRMVyWUhaM48ZwRgrlXvUZ
	njLLwMWwD1/uaOoZqpiiY8le7nZ832f2PRGktKW4wbDKTJBhZzhgf7JFflXqvojdrmTVhrl32EO
	pAAWe0Nf/62d62SijwDrU3ZKNy4S9eso5Rj2uYOK17A/Ti6HOxJ8JC2xDgIRlcvFwUbtXgDs3y3
	LgRAykFU0oNfo+qduqT+zJ+7CC6wdhjluli6fW96PQTJL2ndmhNtz4T1Y5IqomX2glQvCn5hP41
	e5lGlx+Ej7obPt5UxqnOKfcB7DRHhgp1vtMS/oc4n8xRYbjE4AX2Qfy4Df+QfzFXWE
X-Google-Smtp-Source: AGHT+IFi543Ah7qQJNoCZbbCool8FzH32tRpHvz50asOQj9hEJOf4Qlc8YfJy804WxMQDWXmPYlFfA==
X-Received: by 2002:adf:9b19:0:b0:42f:bb9b:9a82 with SMTP id ffacd0b85a97d-42fbb9b9ccamr4669909f8f.60.1765735352513;
        Sun, 14 Dec 2025 10:02:32 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f280cf05sm9817368f8f.7.2025.12.14.10.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 10:02:31 -0800 (PST)
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
Subject: [PATCH 5/5] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Sun, 14 Dec 2025 18:01:45 +0000
Message-ID: <20251214180158.3955285-6-shorne@gmail.com>
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

Add a multicore configuration for the Terasic de0 nano FPGA development
board.  This SoC runs 2 OpenRISC CPUs at 50Mhz with 32MB ram, UART for
console and GPIOs for LEDs.

This FPGA SoC is based on the simple-smp reference board and brings in
devices from the de0 nano common DTSI file.

A default config is added that brings together the device tree and
driver setup.

Link: https://github.com/stffrdhrn/de0_nano-multicore

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/boot/dts/de0-nano-multicore.dts | 25 +++++
 .../configs/de0_nano_multicore_defconfig      | 92 +++++++++++++++++++
 2 files changed, 117 insertions(+)
 create mode 100644 arch/openrisc/boot/dts/de0-nano-multicore.dts
 create mode 100644 arch/openrisc/configs/de0_nano_multicore_defconfig

diff --git a/arch/openrisc/boot/dts/de0-nano-multicore.dts b/arch/openrisc/boot/dts/de0-nano-multicore.dts
new file mode 100644
index 000000000000..b6cf286afaa4
--- /dev/null
+++ b/arch/openrisc/boot/dts/de0-nano-multicore.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/dts-v1/;
+
+#include "simple-smp.dtsi"
+#include "de0-nano-common.dtsi"
+
+/ {
+	model = "Terasic DE0 Nano - Multicore";
+};
+
+&cpu0 {
+	clock-frequency = <50000000>;
+};
+
+&cpu1 {
+	clock-frequency = <50000000>;
+};
+
+&serial0 {
+	clock-frequency = <50000000>;
+};
diff --git a/arch/openrisc/configs/de0_nano_multicore_defconfig b/arch/openrisc/configs/de0_nano_multicore_defconfig
new file mode 100644
index 000000000000..d33b1226e09c
--- /dev/null
+++ b/arch/openrisc/configs/de0_nano_multicore_defconfig
@@ -0,0 +1,92 @@
+CONFIG_LOCALVERSION="-de0nano-smp"
+CONFIG_SYSVIPC=y
+CONFIG_POSIX_MQUEUE=y
+CONFIG_NO_HZ=y
+CONFIG_LOG_BUF_SHIFT=14
+CONFIG_BLK_DEV_INITRD=y
+# CONFIG_RD_GZIP is not set
+# CONFIG_RD_BZIP2 is not set
+# CONFIG_RD_LZMA is not set
+# CONFIG_RD_XZ is not set
+# CONFIG_RD_LZO is not set
+# CONFIG_RD_LZ4 is not set
+CONFIG_EXPERT=y
+# CONFIG_EPOLL is not set
+# CONFIG_TIMERFD is not set
+# CONFIG_EVENTFD is not set
+# CONFIG_AIO is not set
+CONFIG_KALLSYMS_ALL=y
+CONFIG_DCACHE_WRITETHROUGH=y
+CONFIG_BUILTIN_DTB_NAME="de0-nano-multicore"
+CONFIG_OPENRISC_HAVE_INST_CMOV=y
+CONFIG_SMP=y
+CONFIG_HZ_100=y
+CONFIG_JUMP_LABEL=y
+# CONFIG_BLOCK is not set
+CONFIG_SLUB_TINY=y
+# CONFIG_COMPAT_BRK is not set
+# CONFIG_VM_EVENT_COUNTERS is not set
+CONFIG_NET=y
+CONFIG_PACKET=y
+CONFIG_UNIX=y
+CONFIG_UNIX_DIAG=y
+CONFIG_INET=y
+CONFIG_IP_MULTICAST=y
+CONFIG_TCP_CONG_ADVANCED=y
+# CONFIG_TCP_CONG_BIC is not set
+# CONFIG_TCP_CONG_CUBIC is not set
+# CONFIG_TCP_CONG_WESTWOOD is not set
+# CONFIG_TCP_CONG_HTCP is not set
+# CONFIG_IPV6 is not set
+# CONFIG_WIRELESS is not set
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+# CONFIG_PREVENT_FIRMWARE_BUILD is not set
+# CONFIG_FW_LOADER is not set
+CONFIG_NETDEVICES=y
+CONFIG_ETHOC=y
+CONFIG_MICREL_PHY=y
+# CONFIG_WLAN is not set
+# CONFIG_INPUT is not set
+# CONFIG_SERIO is not set
+# CONFIG_VT is not set
+# CONFIG_LEGACY_PTYS is not set
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_OF_PLATFORM=y
+# CONFIG_HW_RANDOM is not set
+CONFIG_GPIO_SYSFS=y
+# CONFIG_GPIO_CDEV_V1 is not set
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
+# CONFIG_DNOTIFY is not set
+CONFIG_TMPFS=y
+CONFIG_NFS_FS=y
+CONFIG_XZ_DEC=y
+CONFIG_PRINTK_TIME=y
+CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=y
+CONFIG_GDB_SCRIPTS=y
+CONFIG_VMLINUX_MAP=y
+CONFIG_HARDLOCKUP_DETECTOR=y
+CONFIG_WQ_WATCHDOG=y
+CONFIG_WQ_CPU_INTENSIVE_REPORT=y
+CONFIG_STACKTRACE=y
+CONFIG_RCU_CPU_STALL_CPUTIME=y
+# CONFIG_RCU_TRACE is not set
-- 
2.51.0


