Return-Path: <devicetree+bounces-253306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB378D0A789
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 082FB3015592
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 13:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09C235CB93;
	Fri,  9 Jan 2026 13:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BNbkOVHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD6E35C1B0
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 13:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767966294; cv=none; b=nwznyQhq+HetzPafQSfIczl5cZEpkd2FFACLHOrGHJXgMvLHay4NVJA2JXgyAxLnRaEYSE38iu9WgoeLUjWMwGCPKOM8PW+IjeDdLe3X4YXeikB6VGReeAta0BlYcRP2p+H9tFSCS166pyJeVc/jxhFcHEFLAxyu7V1Kn1uIvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767966294; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DZ3Sta8OsTj3D1Of+ZQ/fy4xYhwatizujqYe/DaMUKA9PsEAAvoyRwoA+eUiuiXNRYcyWql1DFfWjoeHfnxUav7Tlaqy6YCu1uVuMJn6JqnsjcQAScj7cg5SLZjZ+Yb8LrN9M2+z/ZkvVaG3SpgfJCzz9fOaD/K7qhlH+t++e/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BNbkOVHJ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so30072745e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767966287; x=1768571087; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=BNbkOVHJuM61hroXQEUf4tD48fdrMj44dVqg4T6q4U9EvvVQRlOkdE8wzTCpnJaNL8
         Gu6npJEFb293fzL/xFAxCJ+kzX0X2TznpGaMsdZar5PN+u8/xx1fDi5xZpFbLKNli/i8
         A1mb20iL/2wfKuQU+2rLEAH5R58pIrqGIyUtM8ZtNUIi7GDkTgP08XTzxU8wh0HxFgmD
         0efbJUCAsnB2P+DaGvrgwfRr9DOgD4Lcgn+cKlig3+Lqtkqjfyv87dhMwirOQKBdL/vy
         IyKCi9oqm73Pk3onII2w7JOnKlHIeRuLpmyPq7sHtj6d3NUiz1mduzq3+XPCS4Lhwcbx
         EuRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767966287; x=1768571087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=OlXchQHKdFgu38AwDU3u0tKIAtpGogiw2xFE+uGWAP4/SnaDmND1Df2MSF3oBcJkGq
         ZDn/c0w9zN5UtkSlWSC1IYArHwZff5BJLAlzUsRfaj8E5I6bksOnEWJsZ8Qh3OAjJocl
         QbmnMs7c4yQ6Df3dK2UjqalNN5rWa2+SKw9U+ZFkTS65LqqZOeBEkwZBmDPPdAHwoK0F
         GX+rUf4nrcq+w67WnLUh2RdHbwmo/rMCSSiHG69gu4vPdXJXV2go3Jy9g9vrmz1XXG08
         vgq+ohCPy4NW5vB8fUjiniC0pzjG+39nn0cCLRyHrwC+64d85EJHAoI4vlFcGLttcrEd
         Vr9Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+g94m0XRUChSKgoW2Lo3kk2CeR7eVfOqS2eTO7rVQIUsXZona4CPG7nkaCZinNvBrsmMwLhNFM6Hd@vger.kernel.org
X-Gm-Message-State: AOJu0YwV7GI3KbBlapW5AiWZLCmGNZ5CuS6pmWsXMkapubAlG/e1B4qA
	DMsLZUc4boNySeDrpdn/uLQaPzB/T1hnUxUA8w4kt7ZVrz/u3MeIlJ1t
X-Gm-Gg: AY/fxX5vkf6sqDMpewuqVibJakhTrNCvr93M9Lc/pZ8OLUhHoBdeCgCSn8Dp7UTMju9
	LXM947xpWIfZBYHXIyRn51kHPJeOMtTp0k8zJa2fTKK/EAklylkqabRIXeXZX4Hbia4IfoDN95p
	T3lKka9Do2NwTzeB+8A/Eaki8kp5dEWkpHSaBMtniOKFrWhfaA1xNgofLIP2Y9tNl5z4Z3kC0So
	NOR3PCHm5EpyssmatsLFXfBuUcbHZTXeiTlV7MKxlc1YL81ZoN8uTTaZly9F1z5tlMVzQzFIC4c
	cXxXfqHPzFn+v49UQu9GJHj+Tp6PBEg7xRqAXXZPDwvCL22HtxcCwpkjPrEbGLwolGasaCuvbCL
	IGz8OgMVy3Aaevi+6HeXWFVsSl56iWIEAwR98oPfJvwd8bYTBYmgjXlOMmuS9dPcd6M9HzqjgUn
	W3YSsyElnGL8F1+ZVzDKYpC2fEE7RKvzlINUNZ6jtjGu/vj8jzI08lmYhPlUJ3VpTG
X-Google-Smtp-Source: AGHT+IE99p/CLtv5Zj8y/txZ2Wbbjq0dZuLvZFBHO9UfljnaNFb8iqcEoGGSdqeGjdp54IRzV0pUjw==
X-Received: by 2002:a05:600c:83c7:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-47d84b52e31mr108307525e9.36.1767966286873;
        Fri, 09 Jan 2026 05:44:46 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8636cb0dsm73838105e9.0.2026.01.09.05.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:44:45 -0800 (PST)
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
Subject: [PATCH v3 6/6] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Fri,  9 Jan 2026 13:43:57 +0000
Message-ID: <20260109134409.2153333-7-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260109134409.2153333-1-shorne@gmail.com>
References: <20260109134409.2153333-1-shorne@gmail.com>
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


