Return-Path: <devicetree+bounces-254631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24542D1A2F3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50C9A30DE9C1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1716B2580DE;
	Tue, 13 Jan 2026 16:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NafGZAfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392212609E3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320941; cv=none; b=okqYEKocszdKmn5279YGmPyz3JhAT6lhTnvDiwfuuWRzr4QzaATLvLanMEQSZQqwEY3FgK6ypHR9NJkPP0T1HDoLC9uPO7ii+13aqiiYTP7DWoxW1UAtduGQHFg8vYfnfWOStL+O0JqQMaym05sva60V8Kg/TjbzcGfxXf6ZCXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320941; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NfW9BBIaYPjOUHyUl0UjOOt9ndaBQtqxeDR+0sroOnYBGQXgu/KDp8TWYUiq3V5MFbBjQizQ4M1Hh9fHmn73MYCQCa+xDsZyMKKP8eO4WF0TVukk/Z0EZHkIdoelpD9qSPip7w3va+OB80MTplZzOtX8q7DgasJ+nvLzbiVSIxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NafGZAfK; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso71045785e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320937; x=1768925737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=NafGZAfKVuA2KsTg26aJLVmgGp07nKC+VLjLMiZiwExvTW53tJpt6oy9z5+XLueJMS
         VPTeLQ/bKUPYmg5BW0dKd87BLG+DHQmmypb/FBDVrto4ntDn1szAEuYSFtfHBXE7yEVD
         gbBkT3TxQtuXl+IPqaTQ1t0LaHkYU6GCrfxZuM6QWY/HxYmcXDjkHJZaNw4oh6qQ3Y12
         DYY3dXznLcCP1oUah2PbouKCpW/xqmYuViyynTLgAb+RyrXxaW4lon5+w720aD3XbBkY
         kLf54e9h7kdgABav+cC/QPb73WmUpu/0yalJK5I5Ts3o1M3aGh+hBYGx5y/paM5mZ6Fa
         bCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320937; x=1768925737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=sNY1EYjaYHFE5txIhRU3NnOajqq7STExM4bDiN/pjCGDBlAB9U0/gTBDOtm+9s3Kad
         RomEe+0GN7sQFlbaxBJJN2wxYNc5L1Y3MZcnHpkrBf/Cqe4E/E+2UEz7c1gUHwCmfBLW
         yEiFtNNjvj4h6GJfMcR7alpq47IyVjdBca5+VYiN+g9Dq+G2yEAYiBJmVIQLMMo0yUM+
         WYKq3wYvnk384/OdYmYKHTu43iF4nkgIPneVn6p9dr1vtJfFvvpbdw8Xo+ZNavmJtwA/
         5eAkWt9WG1FgqVOePBs3j4AmTIh8ArkvVMHw0MZhqUs2/niLTc4BrZxLos9b1TdaMmma
         Uq1A==
X-Forwarded-Encrypted: i=1; AJvYcCVycGj/KilKv2Kma+G+QEB8Ds49yfkoBgkJznPJXJ8DZB8ErdoMYh78emQGUW5LzRPQgtOThwp8kWlD@vger.kernel.org
X-Gm-Message-State: AOJu0YzQNASTk78P94Lixe7ZOBZ2k3MDMG83NJ8QGx76pEZ74EUJXHmo
	IFrKIvLohqJeqWokKSQ+AqCihG2YfxpQBegUK+DOdE23ZU8WVDb9PuBukqwauQ==
X-Gm-Gg: AY/fxX6GW3rLCV0eEBl1TeOiHP2qfgjvijfw16Ksd8Oax9EEWMduLi2YIKQ4R48TBuY
	kDuyPe7uuHupsja7AdgGP4MA2/MVezv3l99OCsyunKCR7pSqyRG/AOIGVjFwuOPnuyFcT5Lzw1O
	Fzem/0w8r776jfiDN+rZTYsb/yPkFpfBvSY39L2QaX1ofWF0GMENTJ08jfUy4tyTjdCyQXk3vKb
	2+Bv8wnGmeGydAZUYEZuK9e/Rn3qoE5mSwBfoCmaUwypssbGOr4YqEM1aZ5rTw/q1GLwFvwZ2Mk
	AgjlPzEdDC2OVq266rK8KhQ2Qun26eJ0nxscNrOypfXGET2k2gklZrmcEP2guIqwXe4qwhVUP5G
	GtaTfdEgmTJe/Q2x9umd6QZX83cGJwZ9lQOjjT1BNiqeDCpgoOXLo/FUIsoP3l2O/v/3kUBELYV
	QEGFVpGIx6Etod4c09winLRwvQm9ON1fjX3rC1gHLZp2xxyqwe7+UJK8oCq00302SiSXMDq70Z2
	+8=
X-Google-Smtp-Source: AGHT+IEUmUYkeDP+S1h3o6VFVFRiGbNpyWnRfokREMXteE+Q59STqyI+MVlOpmbRPK5R/Plvb3OZlw==
X-Received: by 2002:a05:600c:3b15:b0:475:dd89:acb with SMTP id 5b1f17b1804b1-47d84b3472amr250733125e9.22.1768320936453;
        Tue, 13 Jan 2026 08:15:36 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47edfd5cfd5sm20913665e9.8.2026.01.13.08.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:35 -0800 (PST)
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
Subject: [PATCH v4 6/6] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Tue, 13 Jan 2026 16:11:39 +0000
Message-ID: <20260113161152.3688309-7-shorne@gmail.com>
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


