Return-Path: <devicetree+bounces-272572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FMdJal1rWn/3AEAu9opvQ
	(envelope-from <devicetree+bounces-272572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 14:12:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE61230552
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 14:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8A30E3006917
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 13:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8DBE36212B;
	Sun,  8 Mar 2026 13:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JjrqfJmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A3D24A05D
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 13:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772975523; cv=none; b=m8xjiPu0lG1kx2w//nrTCBJU2Lj04x91ax3gxWF9E3apZJsJJNFmoyivDXfjqPWjSNsFaPgCXBewxPotXe0Y/WkRuIvoTjxtwWk7dEPtKlMahi9Q2skmDQe0qjPJqeneFxXkj0dyDbvSbxXIYj+5F9XkcUwuZrR4nkfdnKd7hy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772975523; c=relaxed/simple;
	bh=ayV0mPSWTYq40kHYXVY6l1WJRrs219j6nJPh+Ai6wFA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tQ14436ml2MQuN53hd3RklVZnjipsvdX7yiFXEUoIQ3vITO1q1Nuj5T34UFFMhlicrayCbATLYIiezo8e5Yrju0HnZuMk05Dly5mlPh6qXFm/Ra+eYX6IUsx7mAGg2sMnOU34RDPbPNADkr1MrCKZem368sV4ePjrW0Is1HH67A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JjrqfJmR; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b96e579c0fcso72793866b.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 06:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772975520; x=1773580320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YZmjSe2f6AmZLKDK24gip2MTz9bDyoXie7g+0s0Xf3Y=;
        b=JjrqfJmRDh0jrlAEmSVT3U7Igjq11cFgXbGMJhGAC3Q2OFCLdXt5xKOJYA6XK96Kyv
         BnNIbFwM0dvgbfs+0at6XTfvGwrWuBACLB4q2Xl4kOIOAD9qBfFpWNkROSYjKj1hxWNI
         a9dZh4oTYf1/Evu2SJnEdw8sNJHYBIuLr/JMk8r0xPoO634Z9t2A4MYn4sG5UwT1BnLE
         Q+eo9Npj+vRI9kHkt+3GL0Rauun8NwUjDBPnJMql8QAnc1r4QqFhZr7AhLaKhIZ8ViCK
         bB1OoaQDhXZ5B2T6cv71BvLWqtj9nQ/kAcKEJKA4pr77WX0upBdWnJEZ2IKCNhHAYAcf
         PnoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772975520; x=1773580320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZmjSe2f6AmZLKDK24gip2MTz9bDyoXie7g+0s0Xf3Y=;
        b=PNDu3XC044lGOdOvCqrPzakLZfL/gfK+3q7onwwQU4G2Leq1RRUCPBq/ipwfeO9OO2
         uQpKbXPjOhS/eIg0ilKSDaxNVXQDMi9Y1SzFRVVzP4qvJc8+BeQQ4UVgLXs19eVZVMwd
         vo0Ic8TJj68lL9m0uO/s7YkcGtDGwG5CSrlpo+ODg+yuXURETQO+rUNllA/Rcv50rjAr
         +u+MJZo6v7qQIJ+vd8sZ2L01sKNXE2vDCUSTy3Jovcsg8sJZalHhx7Jzo9c2dnlkA5wC
         +sCoUvDdc3i9TPnFem1PUl2sXzJYh+4W4uwgQLPNUSHanIcGOz5etiiIxmlr+h4uSOVZ
         eHfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzadiWG9vCh4yrAeqDbXxA/VxUosKEN1AD/taCP7xSfpWtYZt0kjioBZzZ6FEtoBOVGVBykV01MHJH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3fNNq3BzYP3PlRXcgXneoipO1biJSc1DCGGENJ47H/zw5Kdf4
	1GjWGqYwn+xs58ji2XvPWG703jiFSzrce9PsH2bcY240ZBwunyK9pyzI
X-Gm-Gg: ATEYQzzQjqWC/gALDzlTd2Dslz3b1vjGhHpvqC/3AmgiK30Zoou9+qwqBSTFk+4no1i
	rmTek/tVDiGZZNK2YPiucNJ95wAimSHNFD0HiSjph5E9BesQkjx77GOavlRfkLMPT27FTXXTd3I
	e+CQKFMA67GFGGmXsU7yYQuK0FCVrUlMsYok9HER7FLNeuKS4wakPZH5oh7lv2UvkuRuN8eujjw
	+PWlxyqX8X2WdMXprAiuL1Mk0GHWtEQxbJ6SU17s+54jJ1HkNgYoA9tPB6XhNTIDDZCRK9WSRxy
	5Ghe6IriyoIh9S4nLOhnmLdU/l2vD+znuA5vwREBi0hrUMf3VCzwjQYTf7kV7ZJpPVz4VOoSVxF
	dISo2NcLWOY5P0sMic4cX/LEbKU4Fo1wUJh+QyLqjeywm9u1Q5ohkNiDO+MBmML7IDn2sgJBBDj
	LeYe4FCn0X8d0T5ZlzDWQMKDj0fQTwmfaEePfzRnIm37CHq5jDjsxqZuNvCUb10Iq399WrTw==
X-Received: by 2002:a17:907:3faa:b0:b8a:f2cb:8088 with SMTP id a640c23a62f3a-b942df7e851mr378460266b.33.1772975520183;
        Sun, 08 Mar 2026 06:12:00 -0700 (PDT)
Received: from nixos-office (98.206.213.193.static.cust.telenor.net. [193.213.206.98])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f18bb43sm240592066b.66.2026.03.08.06.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 06:11:59 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
From: Julian Braha <julianbraha@gmail.com>
To: gregkg@linuxfoundation.org,
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
Date: Sun,  8 Mar 2026 13:11:56 +0000
Message-ID: <20260308131156.1102166-1-julianbraha@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7AE61230552
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[infradead.org,linux.intel.com,kernel.org,linaro.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272572-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
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


