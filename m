Return-Path: <devicetree+bounces-255654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A8D25355
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:14:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A258309FF62
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1DF93AE6E6;
	Thu, 15 Jan 2026 15:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j5FLwIX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800113ACA4A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489863; cv=none; b=B6evjOJbfG7ZwemYfFmLEgWnT2xKY42NiVMS4a8tgEp1/yKxu9AtA/Zre1MXB4EF4MCEgB+G4UQGYAeJ+eO2t+s36ddCRPW1PHhyGrCavtv745ED7m81ZBWtArGQlGMrudUZFnSfRVI6D+UePpUT4zisVKHoV1ANkXDOw1B3C20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489863; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dcarm3L6cInPm64w419VHoGNL+Zei6ytikqSS7/nRZYIho3iTdTnpcEV/FRlAeWkQMt1X3pLpyQ06LxvICJoKI5O+jduCR4Ee8YaSKv4LB7kMOXUL6iVVw4RgqmRZKDQUeNS8aP+Hjq0xHI4yG58+AZmM5K0AnSPkD6nswgZ8b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j5FLwIX+; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-432d256c2a9so1016745f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489845; x=1769094645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=j5FLwIX+8f7Jkd6qHRH5MwMeKhl7s4lafJLwGZDTufsuQLaf/HnX2FOQsBzOR15fHw
         elH8cTVDlgqyhKcaJHVeTJRiknzHIjI0NPTGu6+qogUn3pyWcDvU6n5BR3Zy4Y0BJE/f
         gNrqomtRrGK4cxTj1zMHNWCU9M7ZfWMECoJxK/2aIojW/VmjyUwQBsAYwZity224ZvkS
         P6c77ZsMnrx7mHwA1bO8mLFEYOHrmCDdyiWZn05e7pazoudTlt9g5IZM6RngEAWUbF45
         +OeUjAke/EYp6p1DxV+93k1/aaxKyagHLj6cfnNSPyQr9onREsf4YUPHyv3E27OLmdVL
         yb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489845; x=1769094645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=WvqkeqCjqVsgSxMmfdGS4AJA4qmyV2gOAvDfnVdKJTYd+MYhNefQzOgnkKe9jWKiz6
         PdFXpiwNXqJlrdXuDRJlXtx5HCQw+GYEKU2RaGmo6AfqirY/PPxTE5xGemkac5zOatZx
         U5EA8Zn7BLnhuHJCglKUzcH7hws8EZxK3oMYU5z1T+wBh1U8fTauBIH+fHLza+ksZMcn
         3Y5Rce5PaKYI9Xt4HqK0YRULiI+lmR6FKG/pikpP8lblOYBv44wBm/rW6QjTez7rUwKM
         Rv9ZD0pgDDpsgaC81QzCuShkY4C2ATEHkm04oHXaaEHTLuJX0GFRY8PJmNM8rLTOeszh
         3DLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV93fIgZEWP1ZtKcEvjLiAUEQRzZ7W+klYvyZ/7twgEnjeJV1x7Ibwej6z7E24V56nHIfNdfypo0MkV@vger.kernel.org
X-Gm-Message-State: AOJu0YxFPvKTrZU8EPiYRjkaqtfoohMi9iLN++mDqsCWVZLGMhzLiHRA
	y9ZV3R+qz7zfsOj5uHVtjz6RXUP98lropP9a1/TNJSTPGk8IahQVOJbdDjJEMw==
X-Gm-Gg: AY/fxX4yKpPmSrLnnfRBNkf8KZ7A4xYYb72Wzx5p1QvB/UcA+4rtH+TXnksmXQwfNwn
	JJVEKg47uNUVq+glqe1zKKYxVxKu5mc2IrN3z4sipD14mOnHSdmcqcj2Rff2YmJVDMIM3HVNv8q
	/H2BKVH4S+W4NpAHfLGP7zgWuEvd6xDvZpVFmTe2Cr2YCZyAClAyUTYTViudivmapsvB50MB/bX
	sLer7Fe3crGpeXYjsdWxAmTdx1baXDMMXDJGcHfNLWdFFODMFTvUfqlfg9OI0b+EYA7T6iIzSIw
	oOlx5bLg8ComrgFn9DEuBg70pHObx3xetNuYF4XTy8hbSr3xIM8YWgflAydQjpuwLyGDHNCcsED
	b8k01OEz474Qjtb66qMSCjjJos+WLrR8nWLcSYci2yB6B2lbK0OLEnFFEHAgxvyu/z0vLoZXdmY
	OPY6b2q500G9aAgwLXMbu91d+IiQPYVuhGiZ87RpZ9i4Fm61jB4dBIo63KAcYZ3GN3
X-Received: by 2002:a5d:5d0a:0:b0:432:84ef:841f with SMTP id ffacd0b85a97d-4342c548710mr8460875f8f.38.1768489845180;
        Thu, 15 Jan 2026 07:10:45 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a65bsm6446153f8f.7.2026.01.15.07.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:44 -0800 (PST)
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
Subject: [PATCH v6 6/6] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Thu, 15 Jan 2026 15:10:02 +0000
Message-ID: <20260115151014.3956805-7-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
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


