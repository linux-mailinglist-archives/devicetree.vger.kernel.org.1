Return-Path: <devicetree+bounces-255093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A41FD1FAB8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CAE3C30194BB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5202731A548;
	Wed, 14 Jan 2026 15:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SSuo61Ce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49D631AA82
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403685; cv=none; b=mmbiTF8gcKAICxm/exQvlgVKIPz8RDu25Z2RdRWRDxHXO0ln6IJFG/kyddvNwj2ObYJdROR+NnguDcgXQ8kcKJglubZCK+Xc0ugBglZstL0YFv/z45yIb4Y7XDub2mYyw05NMDUQo6jmqKpnCCyyEsy37Sy5dFYPdfGHH2Q5gjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403685; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BE6LM1wERweQPuBzrkXO+sbyLjvabbZD41VmrHokQSwGANkad0PJl6V6zEpLCGnrgI/VTnRhl7loxx8iRd0l7rxvHPLIZL3XreCiuPTynl2Du5MC09DXXv9xb8axdLgD40I7iUrr9Rr4iyhQFWDF4Zh0EZUFaFyFvyVhCCU8usc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SSuo61Ce; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso81447185e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768403681; x=1769008481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=SSuo61Cee6oBBChgYprUZkmT/KuZ1emC5/Lh9ndx9V9+deLreojMGrimDcw9PHj4SG
         6NTA/vxhs3d7KeDWf40vUnwaGWGR2yLc5qSAg2V+b+r+y3NChPrOE8Qmu0+jSbkGUPZ0
         P9EM85mjKwBA+2ruTwLdAGDkbOvkLZ4l+E33B4BHHDKOryr24EAZXqK9uXBWGQheKt9P
         mup4mMEw3cXJQ28aFmw2eRSEaowPFVm6ByFHcp41IFshxxUtjgwonkldqo/sBTIxFocn
         BZhScurVIexHkaENhc4AIiy1R2per1oAKGAGfTUwZGlZbt804T0kBAPDwHZeImL7+P2g
         O/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403681; x=1769008481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=OlCzyEcV3ubkDNdUj8o8vP+BtgNszzZKnzkKJ6NjVMNNKZ4Mr+MLDm8o8uE7yzrSv5
         FXxtHKi8155dC0h3V8villDBv4vc3/eq0lXE/aGfZtJE3yBQAc5+UHpCyAlrto2kkAQW
         nRoJiRsGsZrjSJyTF7ijjoycq/ZRiKnCh2xnkPWvMfxp5vWS6KwjaKy0uiWvWbIOAsQ0
         edccFCk+z8rAJE7qvzEs8IAZ4bOskMJP1H9BpYiUKK/CLQODQQOg5zhJ9OpvvnjdI0Kj
         HY2DI2BUfoUZlSXZTX1ajFdlFzJCqV9eeXaIrcsnF9yp0b2tBcZlKpE9qxSGuvKUx98q
         kR6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWz4ttcc5Y/rbIB4fmvXxEd5VQPAt7m03A5zOZ4uybH4WLiZNFG8dBbTJx2TqUcD8A8WTE4gfYHlRW@vger.kernel.org
X-Gm-Message-State: AOJu0YxGIb1XCux5y7RT6v7icNOHu4KviDEJ99p/UqO9ggSbN6iq768T
	UTCjKxzQjYSN8iODaLvJjrERjXs90SM2NDGCPaQl3/wNeAKVqh4Zfnge
X-Gm-Gg: AY/fxX43PhjMFNBWIawUY6/mAig0fAcaptlw6BAhzbPne/GWnz/YVWz+bUm7s/Zjt5R
	VjkPRZwYnl/RouU0Tz7OxYSUn9D7OOg9rF1xtMOMDNnyGbvL7FV0hbs3sObjCMeXjfCeqy6elM7
	xEecOLCeFe96XTx1SEqbJKDea2Tzh81BMlN5tZNNQpXrSzjroyadnU+WEvE7yG7P01Qmy38gGaf
	Dbj0Qhv/kZKKPF77wgsDVgNEgcjvA4t+afhHU+wtole+FshI+tOSevb1FXM/Xh3ylyg5YEBnFNZ
	qN1TgmbSAxzHaL2nPwzizLvK2sU4nVI1d7gvzFz7KzCF5tiEX1g93j99oHyU2CXLYoZNr3MHIX6
	0Wg+dSAIasCvNv0A9BVHhH8XlJ6pZUfedJTcEBC6XlPFoacxxH6N2r8bCMdjpXVIRs/kMQovMmN
	xvwABNsFqn6p4x1l/CT9KYDSe3VJINeJUn5LaD0XT9/PrwBqBUMsw6rsjOyXkwhpgw
X-Received: by 2002:a05:600c:3510:b0:47a:9560:5944 with SMTP id 5b1f17b1804b1-47ee33a9684mr34349325e9.34.1768403681233;
        Wed, 14 Jan 2026 07:14:41 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57b0749sm36864255e9.7.2026.01.14.07.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:14:40 -0800 (PST)
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
Subject: [PATCH v5 6/6] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Wed, 14 Jan 2026 15:13:15 +0000
Message-ID: <20260114151328.3827992-7-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260114151328.3827992-1-shorne@gmail.com>
References: <20260114151328.3827992-1-shorne@gmail.com>
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


