Return-Path: <devicetree+bounces-272573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yImDB3F2rWkC3QEAu9opvQ
	(envelope-from <devicetree+bounces-272573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 14:15:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B83FB2305CB
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 14:15:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E4B830107EE
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 13:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA0A3783AB;
	Sun,  8 Mar 2026 13:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ljd0Ebvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861CA2F8BD3
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 13:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772975662; cv=none; b=oaGyAVwdqR7M3M0QR2yYg3UXOA+5mQ2cjljR9wbU3Vbcdz7cNuXcRR56zrs6Snz5PUleoj2sdFcCj/IWyLnbsd0kX6tO3HeuICva/fkW5xQJOR6xWccXzv8kOVCemuvEo/M24Gp6bP8XlVFZAQEbvzAntt/dx3dEuddxm+9XNwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772975662; c=relaxed/simple;
	bh=ayV0mPSWTYq40kHYXVY6l1WJRrs219j6nJPh+Ai6wFA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZzXm7GXPCFt9Uh7s0QQ5ZWoIE/yQwcQAbEc7JHVg61c7pdk4JE8aNVRrBGPSkKIcg+CvH3riKfQl684oReCz8UbH7knd3JNnkME7Jvpe40FZCNjspCviPe8fWvcnYytJ6ynn4CZEZCBpLyxf4x6fTP9O3qlesZUhUTViBIVUHGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ljd0Ebvb; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-66174cf4549so3572278a12.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 06:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772975659; x=1773580459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YZmjSe2f6AmZLKDK24gip2MTz9bDyoXie7g+0s0Xf3Y=;
        b=ljd0EbvbDBeL3Q3PeSDXYZwywEju23W5YocAoW4/W1c5bm7pDwwuYjEuVGNTTGkiAO
         F/6Cp2mRVAYcbVz67/7+Au+bF2MpaXbHth+wplb6DJvjrqYIebR2sarnCvT2OTkCeiiA
         GKq7Hrywl7zo8948KWlrUxxHfRebkZxnqO6g2P03oS3MUNwXyY6SwLoZYUpsjOCnNPYB
         RA8OGFSIUjnNgfvH06fO06jysKD7+9ITGbLCJ1zSXMkGoluit8qjRrusA8QIBxWKe+YC
         I0yv6AZ5KMGp/5rVBBQnO4DFoOSZx5eajUjWuqN0xNTg07Vwh8D3doxNMVR88TwAb184
         LqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772975659; x=1773580459;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZmjSe2f6AmZLKDK24gip2MTz9bDyoXie7g+0s0Xf3Y=;
        b=Pv2cEi4xZfHd6Mt1LqGnR/rOaCHl4rUugpMoe5G+5hzY++XJn3EYvVX9W4ytoGhu4c
         RpOnmuYsPEQ5yO5BdeuUL/ZPKPnDGLOUEluCGeAQk/N/x4Z7TlSRgbd3m0Uhr+TYDAwQ
         FJgTzEELtPG4rqxpgW0jWXjek4Gyo2y8ClU88fTxh8TOMtM0FzS2IuKdFDtIpYMH2MSw
         +y5KFgbZy2IsF80pr1icF6G+RfNY7BAsRZo4TynY2LWl3qJ9i3NUl96yRxg0maLkuPWO
         xHCl9ch7UZZ3pVkZeOtgzpoZhW9fbEiW4oUIfUCWhRLeoaDqo4nyBBpaxU0brNgFBAxn
         cdJA==
X-Forwarded-Encrypted: i=1; AJvYcCXYPHJ7WsUwoJALub3m+/aw5Ecpxn3MMDDuZ9bWuKagaSXfgjRTuCs86DU2AWaXRu1XjHlze5mUF/ce@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy6EYiLadgc/CK5+mVFv5T8wrLaeR7DLdczIazlR5g1B19TLLG
	3mS+4FkF8miZoI3oRaYO38cS5DAC+VP7JwNTC5jD7nO+j3LBAZ304ZOI
X-Gm-Gg: ATEYQzwiK6wvWNKg5bc/FB1MXHlUzacV/Hcxt0tSmHvLcdB0jqb4raX0FvR5GlUN3Yv
	hXOwP/5pI3Ma9hLcn0dZEHqs1Mk//3I+iyAvNM2TO+0i6PGYq3qZ0C4JZN8NNhVGgAHoDXqpuMr
	lZWRz2YwtWnVvBpXmMMk85r3BmTVsAY+g9UwuxvnefkdL+F6suyUeOXTzZ41ykgGEafAAjOaptY
	7pcQqU7Z+VY1UrxaleylGzBaTPwXFSTSKTR5WPgi+SeltJ1VJcSOXX8iuhuiZ3+SffeKKKqgKJb
	3Ko8w7OkgoFc/5Mbx1YwLJ0LLBhiDQGekQolnlJEbMfz/13ob3wvcAuk5sZeQfJVGpT0rmmxhMH
	0R7SCVDJFFlGy91ly8+Ijt2AfCK5ynI2Iaqe2G90NTKZ8gthlCGad/EoTJXecpCqj9REpUha+Ga
	ON/aolHs5Y1Clxv8n1gLbPNxmS4Hy79njvwR4hfd/rg7ejg8ymOmcIne5Ak3OcsivJgCUCDw==
X-Received: by 2002:a05:6402:40c2:b0:65c:3383:927c with SMTP id 4fb4d7f45d1cf-6619d41eb63mr4525068a12.5.1772975658536;
        Sun, 08 Mar 2026 06:14:18 -0700 (PDT)
Received: from nixos-office (98.206.213.193.static.cust.telenor.net. [193.213.206.98])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3e61eb6sm2154649a12.8.2026.03.08.06.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 06:14:17 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
From: Julian Braha <julianbraha@gmail.com>
To: gregkh@linuxfoundation.org,
	jcmvbkbc@gmail.com
Cc: rdunlap@infradead.org,
	ilpo.jarvinen@linux.intel.com,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	jirislaby@kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Julian Braha <julianbraha@gmail.com>
Subject: [PATCH] drivers/tty/serial: move ESP32 UART drivers into staging
Date: Sun,  8 Mar 2026 13:14:12 +0000
Message-ID: <20260308131412.1102749-1-julianbraha@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B83FB2305CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[infradead.org,linux.intel.com,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linuxfoundation.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

These drivers were added about 3 years ago, and depend on the
XTENSA_PLATFORM_ESP32 config option which has never existed,
so no device can actually use them.
They can only be compiled with COMPILE_TEST.

As you can see, this config option is still undefined
in the downstream tree:
https://github.com/search?q=repo%3Ajcmvbkbc%2Flinux-xtensa%20XTENSA_PLATFORM_ESP32&type=code

I propose moving these drivers into staging
until there is a device that can boot the mainline kernel and use them.

Signed-off-by: Julian Braha <julianbraha@gmail.com>
---
 drivers/staging/Kconfig                       |  2 ++
 drivers/staging/Makefile                      |  1 +
 drivers/staging/serial_esp32/Kconfig          | 28 +++++++++++++++++++
 drivers/staging/serial_esp32/Makefile         |  4 +++
 .../serial_esp32}/esp32_acm.c                 |  0
 .../serial_esp32}/esp32_uart.c                |  0
 drivers/tty/serial/Kconfig                    | 26 -----------------
 drivers/tty/serial/Makefile                   |  2 --
 8 files changed, 35 insertions(+), 28 deletions(-)
 create mode 100644 drivers/staging/serial_esp32/Kconfig
 create mode 100644 drivers/staging/serial_esp32/Makefile
 rename drivers/{tty/serial => staging/serial_esp32}/esp32_acm.c (100%)
 rename drivers/{tty/serial => staging/serial_esp32}/esp32_uart.c (100%)

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 2f92cd698bef..97593e31ca47 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -48,4 +48,6 @@ source "drivers/staging/axis-fifo/Kconfig"
 
 source "drivers/staging/vme_user/Kconfig"
 
+source "drivers/staging/serial_esp32/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index f5b8876aa536..78c2e4f49fe5 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -2,6 +2,7 @@
 # Makefile for staging directory
 
 obj-y				+= media/
+obj-y				+= serial_esp32/
 obj-$(CONFIG_RTL8723BS)		+= rtl8723bs/
 obj-$(CONFIG_OCTEON_ETHERNET)	+= octeon/
 obj-$(CONFIG_VME_BUS)		+= vme_user/
diff --git a/drivers/staging/serial_esp32/Kconfig b/drivers/staging/serial_esp32/Kconfig
new file mode 100644
index 000000000000..61c56bfe7764
--- /dev/null
+++ b/drivers/staging/serial_esp32/Kconfig
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0
+config SERIAL_ESP32
+	tristate "Espressif ESP32 UART support"
+	depends on HAS_IOMEM
+	depends on XTENSA_PLATFORM_ESP32 || (COMPILE_TEST && OF)
+	select SERIAL_CORE
+	select SERIAL_CORE_CONSOLE
+	select SERIAL_EARLYCON
+	help
+	  Driver for the UART controllers of the Espressif ESP32xx SoCs.
+	  When earlycon option is enabled the following kernel command line
+	  snippets may be used:
+	    earlycon=esp32s3uart,mmio32,0x60000000,115200n8,40000000
+	    earlycon=esp32uart,mmio32,0x3ff40000,115200n8
+
+config SERIAL_ESP32_ACM
+	tristate "Espressif ESP32 USB ACM gadget support"
+	depends on HAS_IOMEM
+	depends on XTENSA_PLATFORM_ESP32 || (COMPILE_TEST && OF)
+	select SERIAL_CORE
+	select SERIAL_CORE_CONSOLE
+	select SERIAL_EARLYCON
+	help
+	  Driver for the CDC ACM gadget controller of the Espressif ESP32S3
+	  SoCs that share separate USB controller with the JTAG adapter.
+	  When earlycon option is enabled the following kernel command line
+	  snippet may be used:
+	    earlycon=esp32s3acm,mmio32,0x60038000
diff --git a/drivers/staging/serial_esp32/Makefile b/drivers/staging/serial_esp32/Makefile
new file mode 100644
index 000000000000..3c23321944e2
--- /dev/null
+++ b/drivers/staging/serial_esp32/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_SERIAL_ESP32)		+= esp32_uart.o
+obj-$(CONFIG_SERIAL_ESP32_ACM)		+= esp32_acm.o
diff --git a/drivers/tty/serial/esp32_acm.c b/drivers/staging/serial_esp32/esp32_acm.c
similarity index 100%
rename from drivers/tty/serial/esp32_acm.c
rename to drivers/staging/serial_esp32/esp32_acm.c
diff --git a/drivers/tty/serial/esp32_uart.c b/drivers/staging/serial_esp32/esp32_uart.c
similarity index 100%
rename from drivers/tty/serial/esp32_uart.c
rename to drivers/staging/serial_esp32/esp32_uart.c
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index f86775cfdcc9..686e7fb073b8 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1593,32 +1593,6 @@ config SERIAL_NUVOTON_MA35D1_CONSOLE
 	  but you can alter that using a kernel command line option such as
 	  "console=ttyNVTx".
 
-config SERIAL_ESP32
-	tristate "Espressif ESP32 UART support"
-	depends on XTENSA_PLATFORM_ESP32 || (COMPILE_TEST && OF)
-	select SERIAL_CORE
-	select SERIAL_CORE_CONSOLE
-	select SERIAL_EARLYCON
-	help
-	  Driver for the UART controllers of the Espressif ESP32xx SoCs.
-	  When earlycon option is enabled the following kernel command line
-	  snippets may be used:
-	    earlycon=esp32s3uart,mmio32,0x60000000,115200n8,40000000
-	    earlycon=esp32uart,mmio32,0x3ff40000,115200n8
-
-config SERIAL_ESP32_ACM
-	tristate "Espressif ESP32 USB ACM gadget support"
-	depends on XTENSA_PLATFORM_ESP32 || (COMPILE_TEST && OF)
-	select SERIAL_CORE
-	select SERIAL_CORE_CONSOLE
-	select SERIAL_EARLYCON
-	help
-	  Driver for the CDC ACM gadget controller of the Espressif ESP32S3
-	  SoCs that share separate USB controller with the JTAG adapter.
-	  When earlycon option is enabled the following kernel command line
-	  snippet may be used:
-	    earlycon=esp32s3acm,mmio32,0x60038000
-
 endmenu
 
 config SERIAL_MCTRL_GPIO
diff --git a/drivers/tty/serial/Makefile b/drivers/tty/serial/Makefile
index a2ccbc508ec5..bba7b21a4a1d 100644
--- a/drivers/tty/serial/Makefile
+++ b/drivers/tty/serial/Makefile
@@ -37,8 +37,6 @@ obj-$(CONFIG_SERIAL_CLPS711X)		+= clps711x.o
 obj-$(CONFIG_SERIAL_CPM)		+= cpm_uart.o
 obj-$(CONFIG_SERIAL_CONEXANT_DIGICOLOR)	+= digicolor-usart.o
 obj-$(CONFIG_SERIAL_DZ)			+= dz.o
-obj-$(CONFIG_SERIAL_ESP32)		+= esp32_uart.o
-obj-$(CONFIG_SERIAL_ESP32_ACM)		+= esp32_acm.o
 obj-$(CONFIG_SERIAL_FSL_LINFLEXUART)	+= fsl_linflexuart.o
 obj-$(CONFIG_SERIAL_FSL_LPUART)		+= fsl_lpuart.o
 obj-$(CONFIG_SERIAL_ICOM)		+= icom.o
-- 
2.51.2


