Return-Path: <devicetree+bounces-307122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id digKHuokImpITAEAu9opvQ
	(envelope-from <devicetree+bounces-307122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 03:22:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFB16445E5
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 03:22:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=UtJde5yM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307122-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307122-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 265DA30A994A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 01:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667443CF66B;
	Fri,  5 Jun 2026 01:01:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1516384CE4
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 01:01:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780621307; cv=none; b=KG6uVYvJRuzNVS8Ah5WSvC9wMIxmN96MgNZbuQNmp/1L9n7L/qo34GrDy5NcNkKRESH52PSBtNOonhzxFj+6a3pTvoK1/neWyOTV3DbtiPqk4lCz0ScL/13Cr5mL2TprjWmu5Y8COa6Joa8cn8VUhWxg7IptNQ2HCJoimj2oJJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780621307; c=relaxed/simple;
	bh=DskkOmkT3L3PshxePtNyn75KTWZeOUxtFBYOtovIgZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IHyge+jWD6ns7NqLx4sRuOo85wzMtOcK7FTLysO+SPxEqrsc1AYEqvqrsO5m4xN3EeibcVG6A2cC//TkIvey93GSjhpgILVEBGLWsZhwOG/XwGEYPlHTn+NaJZEx8rriLijOB9LeznKJJMbMX6EBJ9eok9pY2QQ9QdQzDjIH4ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=UtJde5yM; arc=none smtp.client-ip=209.85.167.172
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-4854d5cc708so852354b6e.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 18:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1780621276; x=1781226076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQ5vHkiQeOYKz2ok7U7StyNKqN17UnhE019AHLlCqDQ=;
        b=UtJde5yM/U9J8SGCB+Pc3OmMM5vXUxvWgEK+S89M4MBgaXu/vNzD5gIywutdZ66x7j
         8nqgS895YRS5xqimWlVqEYg2bI+pqiAdJ49HdvC/nchU5MmI3ACo/xm9JqrveWhixz4f
         AkkWIdxSE+RmkuN6Ip2l5zAsMC4EOlvSie05KDm7EK7Pqob6QhkF1HU99OCe2QDJy6ur
         /sjtbjdMS3PRCSc5w3NOlq8F4VejF6OnWzPYCvNnEhp7LEQwch2n/9ZPl1gThunEQkMy
         1wHZHBnPq37NW1LUYl2zEckA+Dl7Wz2zCX4OWtZKZagKoShiNKnuZ44lzfALGruadu4C
         jerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780621276; x=1781226076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eQ5vHkiQeOYKz2ok7U7StyNKqN17UnhE019AHLlCqDQ=;
        b=q8vdOQk74KIJZ/QspGFzWl6fReyEeBZYh2OAqolIl2UlqHx1XosDnKZJB8tst8xiLQ
         +3MoA3TlJgwuoSQLxYEw0UteBuiDjMGPeHZt7KJBwXDq2d5i3PTtZuM+nJ2doFf2D/qV
         K6XTrDm2K7tLSzRdeTYE6c66Zt/nj+nRBqeQr3P7lLI/ToWeyeRWw+AiwUoBC+ZCzmEj
         z5AuPjBv9poABJpqiHqdJ8Qgc6XXx2+D5hO7+h9RW/A4BAAdtQ0z7wHUYnQRpTXWiagk
         xy09vtU6l4dukbWsY56koJgdpKJlWIUVUy1qLNWHF77dBwL7SeHI7YiYGiiPp1FQQeaL
         l0mA==
X-Forwarded-Encrypted: i=1; AFNElJ8/0MsOKVE/WrzXB2BOLie3iIC1XXdF0luQdnagM4AJdPmc2UXMoFyBZxUFP1guaSFC277JyxbwMdCt@vger.kernel.org
X-Gm-Message-State: AOJu0YzGpsEh3xnzyDD4m93ihuzWGo0AC1nzgNCNSuBemjo1GpeXQYPG
	HyUDQ3wVgzHlvQkln/N+NQqkzrCYYo3Y2y3r50iz2rUA1aBh/FuCw8tovT+gvX9VEMltsIX4Ap4
	PV07MXyU=
X-Gm-Gg: Acq92OHu7UM6/LQ39vsGRr33HgzoOwaAAoj8Rl/1LsV0QsZeN9bu79ReZ1ttCwcwZ3u
	vNToyeNw8vMkq16939Y5APPa+o0rj8IrPjHOCsPIUnt8sKZTICmzp8amctHX1+sE9JxhIEdSKNO
	98PnQ9XQjF68XOmPCJmRnvc8vlGiVpXfMcn4TdG5HUj2Ryc4e+nr4iNA0GyYsMvnO3yCIjfrMBR
	ZGutUkMrZoyuWOLE7P7PfUoV+YxvSNyYTQN4pXvHoYHqMchjoU2FCSkSZ24UgvvPrXlVFrz0s75
	GkvnjnEiDgbrQgfVk+68ZjGMNrY96RSizaL7K/+7sq9Tdl6Udr5gflR1Tu+90UzqR4Tb2o8bq4C
	GfqHslhBibFI5Rn9w87SW1YUZ0zLmckDUKgfPsSSZccvdyVlcSNWVxqQ3BHSwRN3LuAxE8esEBF
	+cIsuBwfIYqJBrdZ2I4G8ooh0Ff/5tpmOGb5KBww==
X-Received: by 2002:a05:6808:c227:b0:485:4443:dbed with SMTP id 5614622812f47-4868dbf7a46mr899700b6e.8.1780621265613;
        Thu, 04 Jun 2026 18:01:05 -0700 (PDT)
Received: from zippy.localdomain ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b6ec694sm5544631b6e.5.2026.06.04.18.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 18:01:05 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	maxime.chevallier@bootlin.com,
	rmk+kernel@armlinux.org.uk,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linusw@kernel.org,
	brgl@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org
Cc: daniel@riscstar.com,
	elder@riscstar.com,
	mohd.anwar@oss.qualcomm.com,
	a0987203069@gmail.com,
	alexandre.torgue@foss.st.com,
	ast@kernel.org,
	boon.khai.ng@altera.com,
	chenchuangyu@xiaomi.com,
	chenhuacai@kernel.org,
	daniel@iogearbox.net,
	hawk@kernel.org,
	hkallweit1@gmail.com,
	inochiama@gmail.com,
	john.fastabend@gmail.com,
	julianbraha@gmail.com,
	livelycarpet87@gmail.com,
	mcoquelin.stm32@gmail.com,
	me@ziyao.cc,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	richardcochran@gmail.com,
	rohan.g.thomas@altera.com,
	sdf@fomichev.me,
	siyanteng@cqsoftware.com.cn,
	weishangjuan@eswincomputing.com,
	wens@kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v2 12/14] gpio: tc956x: add TC956x/QPS615 support
Date: Thu,  4 Jun 2026 20:00:19 -0500
Message-ID: <20260605010022.968612-13-elder@riscstar.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260605010022.968612-1-elder@riscstar.com>
References: <20260605010022.968612-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:maxime.chevallier@bootlin.com,m:rmk+kernel@armlinux.org.uk,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:arnd@arndb.de,m:gregkh@linuxfoundation.org,m:daniel@riscstar.com,m:elder@riscstar.com,m:mohd.anwar@oss.qualcomm.com,m:a0987203069@gmail.com,m:alexandre.torgue@foss.st.com,m:ast@kernel.org,m:boon.khai.ng@altera.com,m:chenchuangyu@xiaomi.com,m:chenhuacai@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:hkallweit1@gmail.com,m:inochiama@gmail.com,m:john.fastabend@gmail.com,m:julianbraha@gmail.com,m:livelycarpet87@gmail.com,m:mcoquelin.stm32@gmail.com,m:me@ziyao.cc,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:richardcochran@gmail.com,m:rohan.g.thomas@altera.com,m:sdf@fomichev.me,m:siyanteng@cqsoftware.com.cn,m:weishangjuan@eswincomputing.com,m:wens@k
 ernel.org,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:rmk@armlinux.org.uk,m:krzk@kernel.org,m:conor@kernel.org,m:johnfastabend@gmail.com,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[riscstar.com,oss.qualcomm.com,gmail.com,foss.st.com,kernel.org,altera.com,xiaomi.com,iogearbox.net,ziyao.cc,bp.renesas.com,fomichev.me,cqsoftware.com.cn,eswincomputing.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307122-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[49];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,kernel,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,riscstar-com.20251104.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:from_mime,riscstar.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AFB16445E5

Toshiba TC956x is an Ethernet-AVB/TSN bridge and is essentially
a small and highly-specialized SoC.  TC956x includes a GPIO block that
can be accessed, alongside several other peripherals, via two PCIe
endpoint functions.  The PCIe function driver creates an auxiliary
device for the GPIO block, and that device gets bound to this auxiliary
device driver.

This driver is implemented using the generic regmap-based GPIO driver.

Co-developed-by: Daniel Thompson <daniel@riscstar.com>
Signed-off-by: Daniel Thompson <daniel@riscstar.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 MAINTAINERS                |   1 +
 drivers/gpio/Kconfig       |  12 ++++
 drivers/gpio/Makefile      |   1 +
 drivers/gpio/gpio-tc956x.c | 130 +++++++++++++++++++++++++++++++++++++
 4 files changed, 144 insertions(+)
 create mode 100644 drivers/gpio/gpio-tc956x.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 0924f7ec43cb0..0439607d1155f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -27057,6 +27057,7 @@ M:	Alex Elder <elder@kernel.org>
 M:	Daniel Thompson <danielt@kernel.org>
 S:	Maintained
 F:	Documentation/devicetree/bindings/net/toshiba,tc956x-dwmac.yaml
+F:	drivers/gpio/gpio-tc956x.c
 F:	drivers/misc/tc956x_pci.c
 
 TOSHIBA WMI HOTKEYS DRIVER
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 020e51e30317a..36631ca722fa3 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -743,6 +743,18 @@ config GPIO_TB10X
 	select GPIO_GENERIC
 	select GENERIC_IRQ_CHIP
 
+config GPIO_TC956X
+	tristate "Toshiba TC956X GPIO support"
+	depends on TOSHIBA_TC956X_PCI
+	select GPIO_REGMAP
+	default m
+	help
+	  This enables support for the GPIO controller embedded in the Toshiba
+	  TC956X (and Qualcomm QPS615).  This device connects to the host
+	  via PCIe port, which is the upstream port on an internal PCIe
+	  switch.  On some platforms, a few of the GPIO lines are used to
+	  manage external resets.
+
 config GPIO_TEGRA
 	tristate "NVIDIA Tegra GPIO support"
 	default ARCH_TEGRA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index b267598b517de..c3584e7cba9b4 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -178,6 +178,7 @@ obj-$(CONFIG_GPIO_SYSCON)		+= gpio-syscon.o
 obj-$(CONFIG_GPIO_TANGIER)		+= gpio-tangier.o
 obj-$(CONFIG_GPIO_TB10X)		+= gpio-tb10x.o
 obj-$(CONFIG_GPIO_TC3589X)		+= gpio-tc3589x.o
+obj-$(CONFIG_GPIO_TC956X)		+= gpio-tc956x.o
 obj-$(CONFIG_GPIO_TEGRA186)		+= gpio-tegra186.o
 obj-$(CONFIG_GPIO_TEGRA)		+= gpio-tegra.o
 obj-$(CONFIG_GPIO_THUNDERX)		+= gpio-thunderx.o
diff --git a/drivers/gpio/gpio-tc956x.c b/drivers/gpio/gpio-tc956x.c
new file mode 100644
index 0000000000000..0dc6b1028d970
--- /dev/null
+++ b/drivers/gpio/gpio-tc956x.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Copyright (C) 2026 by RISCstar Solutions Corporation.  All rights reserved.
+ */
+
+/*
+ * The Toshiba TC956X implements a PCIe Gen 3 switch that connects an
+ * upstream x4 port to two downstream PCIe x2 ports.  It incorporates
+ * an internal endpoint on a internal PCIe port that implements two
+ * Synopsys XGMAC Ethernet interfaces.
+ *
+ * 35 GPIOs are also implemented by an embedded GPIO controller.  Three
+ * registers control the first 32 GPIOs (other than 20 and 21, which are
+ * reserved).  Three other registers control GPIOs 32 through 36. GPIOs
+ * 22-24, 27-28, 31, and 34 are treated as "input only".
+ *
+ * There is a TC956X PCI power controller driver that accesses the
+ * direction and output value registers for GPIOs 2 and 3.  These
+ * GPIOs control the reset signal for the two downstream PCIe ports.
+ * Their values will never change during operation of this driver, and
+ * this driver reserves these two GPIOS.
+ */
+
+#include <linux/auxiliary_bus.h>
+#include <linux/gpio/driver.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/gpio/regmap.h>
+
+#define DRIVER_NAME		"tc956x-gpio"
+
+#define TC956X_GPIO_COUNT	37	/* Number of GPIOs (20-21 reserved) */
+
+/* The GPIO offsets are relative to 0x1200 in TC956X SFR space. */
+#define GPIO_IN0_OFFSET		0x00		/* Input value (0-31) */
+#define GPIO_EN0_OFFSET		0x08		/* 0: out; 1: in (0-31) */
+#define GPIO_OUT0_OFFSET	0x10		/* Output value (0-31) */
+
+/*
+ * There are two sets of registers, each representing (up to) 32 GPIOs with a
+ * stride of 4 bytes (IN1 is 4 bytes past IN0, EN1 is 4 bytes past EN0, etc.).
+ */
+#define GPIO_PER_REG		32
+#define GPIO_REG_STRIDE		4
+
+static int tc956x_gpio_init_valid_mask(struct gpio_chip *gc,
+				       unsigned long *valid_mask,
+				       unsigned int ngpios)
+{
+	/*
+	 * GPIOs 2 and 3 are used by the PCI power control driver, and
+	 * we don't allow them to be used.  GPIOs 20 and 21 are reserved
+	 * (and not usable).
+	 */
+	bitmap_fill(valid_mask, ngpios);
+	bitmap_clear(valid_mask, 2, 2);
+	bitmap_clear(valid_mask, 20, 2);
+
+	return 0;
+}
+
+static int tc956x_gpio_probe(struct auxiliary_device *adev,
+			     const struct auxiliary_device_id *id)
+{
+	DECLARE_BITMAP(zeroes, TC956X_GPIO_COUNT);
+	DECLARE_BITMAP(fixed, TC956X_GPIO_COUNT);
+	struct gpio_regmap_config config = { };
+	struct gpio_regmap *gpio_regmap;
+	struct device *dev = &adev->dev;
+
+	/* We need the regmap pointer, stored in our platform data */
+	if (!dev->platform_data)
+		return -EINVAL;
+
+	/*
+	 * Only some of our GPIOs are fixed direction:
+	 *	22, 23, 24, 27, 28, 31, and 34	(all input-only)
+	 * Set up the fixed bitmap to indicate which are fixed.
+	 */
+	bitmap_zero(fixed, TC956X_GPIO_COUNT);
+	bitmap_set(fixed, 22, 3);
+	bitmap_set(fixed, 27, 2);
+	set_bit(31, fixed);
+	set_bit(34, fixed);
+
+	/* All fixed GPIOs are input; the zeroes bitmap indicates that. */
+	bitmap_zero(zeroes, TC956X_GPIO_COUNT);
+
+	config.parent = dev;
+	config.regmap = dev->platform_data;
+	config.label = DRIVER_NAME;
+	config.ngpio = TC956X_GPIO_COUNT;
+	config.reg_dat_base = GPIO_REGMAP_ADDR(GPIO_IN0_OFFSET);
+	config.reg_set_base = GPIO_REGMAP_ADDR(GPIO_OUT0_OFFSET);
+	config.reg_dir_in_base = GPIO_REGMAP_ADDR(GPIO_EN0_OFFSET);
+	config.reg_stride = GPIO_REG_STRIDE;
+	config.ngpio_per_reg = GPIO_PER_REG;
+	config.init_valid_mask = tc956x_gpio_init_valid_mask;
+	config.fixed_direction_mask = fixed;
+	config.fixed_direction_output = zeroes;
+
+	gpio_regmap = devm_gpio_regmap_register(dev, &config);
+	if (IS_ERR(gpio_regmap))
+		return PTR_ERR(gpio_regmap);
+
+	return 0;
+}
+
+static const struct auxiliary_device_id tc956x_gpio_ids[] = {
+	{ .name = "tc956x_pci.tc9564-gpio", },
+	{ }
+};
+MODULE_DEVICE_TABLE(auxiliary, tc956x_gpio_ids);
+
+static struct auxiliary_driver tc956x_gpio_driver = {
+	.name		= DRIVER_NAME,
+	.probe          = tc956x_gpio_probe,
+	.id_table       = tc956x_gpio_ids,
+	.driver = {
+		.name		= DRIVER_NAME,
+		.owner		= THIS_MODULE,
+		.probe_type	= PROBE_PREFER_ASYNCHRONOUS,
+	},
+};
+module_auxiliary_driver(tc956x_gpio_driver);
+
+MODULE_DESCRIPTION("Toshiba TC956X PCIe GPIO Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("auxiliary:" DRIVER_NAME);
-- 
2.51.0


