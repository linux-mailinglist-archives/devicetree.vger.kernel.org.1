Return-Path: <devicetree+bounces-247275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B30FACC6891
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B846E301929B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8923343D74;
	Wed, 17 Dec 2025 08:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DEwHWepE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5577343D69
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958961; cv=none; b=Vf1UuYHRtRPzNUUpPXjI7ciDENtq57Xnmv5eBIqCpOBcHSmyDkVm9chkd29eIRVBbwR5BmU9OxNZxdgpzxCutGEqrx1TJ8IY/+IKBOPXpRRuvLm185PctamFs2FFVoAyzc4Ma7s/kNfBZbzy4y8a6wGZ01bSejzd5MpfxNoP470=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958961; c=relaxed/simple;
	bh=un/mmc47M7TzaiskJcRDfyxuLNhftyXJQ1e6SZgvuK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=trWS7Jwd5WdO9nEJAeIfKy4gYP1NmJXN4TKpn9RSlNjKA0Mz8Gn0rWQHJ45cLtwa5Il5nknZEx06GBbjK7WHP/l8HMJni/CnXyK4TB21VjNxy+EF8QFjvf5xG58+wTLM0UwBTT5yNDlf88+X8r70Wl8aU9XSdPULuY9IIjBv8zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DEwHWepE; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47a8195e515so44109535e9.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 00:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765958958; x=1766563758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=DEwHWepE71HisTp0qbr8iIajJP13x39e3eOz3qEcL32bKLhP3YWBcCxcUy0dMidAko
         lTWktOS/BZdGKF5LJceEz74IrMWt4t5fuoX0QoR05IB75I1dvixxUyPP3RJG3XEWjHRm
         MKmgG8nyCqyLbC2rJXQZ8xLzIHGFYN/oPudXvXcKYtDY/N8XIMK6+GVzTH7Q7z8M2cJD
         S5vyvEN6FmnQFSqbIr8v6tRfI5R33Fi2FmOBkiAwEY6SulhHkNGmO0+XuatCrgJcSfIy
         P4lIlsW0SY3g7W6Qzcc1VOW5DozklZrdtCPmqyEg/F8kdfb7R1oHGzwvwOfhZifHI3QR
         d8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765958958; x=1766563758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3suL/FJnULndAdzhv6eYWlf/ToXJG1zAeBlGIDXgmts=;
        b=EihnliV+e5V6G7y6/7je41Am2tjb2mjQkXeCF425BA3V7EoL13tWPxRZrP7A1nyFak
         E+mO4aFyjUQIVJMxsUJT88Ch2g95MH+bjxjNWm7Z2TvtrA/FSPSXsu6AQBnMO7ZZYcy1
         s743iDZQhjMd4knTawA8zdL8Bc5iNJQrj+XMFkMsMQhD6/grU1JPEwCwAaBRyAc7BRMA
         Iz5AqNc26GGaFVqdNDOoNcwS0WFPawpUD3luVn9LbVtPEAEx19mnR6rwMS9dcqv/c1pK
         6IdlPSdzby/ZI+eL/nltvKg9hSfNsxb6q9lBQGcp1kFsvPcRIJVTZiQEciWVGgLp63A9
         JWSg==
X-Forwarded-Encrypted: i=1; AJvYcCXNH8AZiFLyvpgsUB1DO7y5JPrk7IIuJ39HYueNltXjqjY8YIuYy14Ko/bdqIqALaXuFEQNRPCQIbt1@vger.kernel.org
X-Gm-Message-State: AOJu0YyMGWqRr8+9M7qqyXevQRIiN0VcpUKrsvZ/uxMyIKL6xY2BvR23
	gqDI3IFN/jmEsRKnQ4aIO8FzAHHDHE/udX7X5VPShgP9SwNqALb5XroQH2ChTw==
X-Gm-Gg: AY/fxX7o7immbYDXiu61KU2hEPBDb9aRfqHNDxs0cP/A1ClHFn1vgGa11n/JJs3Onfg
	ZPdP/pImH7iPtAknK2Zmj3RtoogvQIJkX21NpSEJAlkQLzq6l3uLpXGkakFRIyoatmeJmueuloA
	LXmnqoIcBQ+Jdwq3Cn91/yJIphIP8tek/AFAtnFR7KZLmHxGHvbW6scJ806MJUaO22r6f+ybKvV
	dh/q5dAi75ukpbUMHP+ajdmJ2uAO855lUpj5WLSZ035JIT1IAu9+iBkUs65zrO7HfKR2+a/ZNkR
	3xC3aVcFMoS2nT/tOKZyxhO6sH+lQdzOJEazjq1biZxRHfaiFzQZEI59iaCtsQQyr6UaBwwq3AM
	QidVTTueec0yE0bk/mjqfx+hwT2v+w7U0sz943UBQbKQ9NH7MICvrSD7tUZlGQz/kJxNjZ1WGmI
	rpY4yOY7o4qUCZRSetfTAtDNPJBJ5phkS/JT+XqKC5wEkfWyzqBDMON+FSkLVu9G54xLD5NdHSu
	1k=
X-Google-Smtp-Source: AGHT+IHM0Ub87vjuqv+zwJR2PykqY9IAsIuRCl4dDP2w4RgPOiEKqUDQHDu8ILCEtmP4lXn1S2sa6g==
X-Received: by 2002:a05:600c:818f:b0:477:8a2a:1244 with SMTP id 5b1f17b1804b1-47a8f8bd357mr145868925e9.11.1765958957879;
        Wed, 17 Dec 2025 00:09:17 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bd9154168sm25369625e9.7.2025.12.17.00.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 00:09:17 -0800 (PST)
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
Subject: [PATCH v2 5/5] openrisc: dts: Add de0 nano multicore config and devicetree
Date: Wed, 17 Dec 2025 08:08:31 +0000
Message-ID: <20251217080843.70621-6-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251217080843.70621-1-shorne@gmail.com>
References: <20251217080843.70621-1-shorne@gmail.com>
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


