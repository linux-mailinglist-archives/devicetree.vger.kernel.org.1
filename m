Return-Path: <devicetree+bounces-261551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LnAHvAuf2kZlQIAu9opvQ
	(envelope-from <devicetree+bounces-261551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:46:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C5DC587A
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB2BD300E49F
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 10:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1424633066A;
	Sun,  1 Feb 2026 10:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m5jbc3td"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFC032AAAB
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 10:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942663; cv=none; b=Fy6YKlSU63JIQcIjMWf+aIfzyvTXRP3vKAzvHldvum8b859txfmFNDhvMKdjZGetyygxNvI98TtYTo01ecPJSI/bIMLgCD3NkNOs3bSL5usmmalHXBOS0D6RHeN7Cb2jTmo1U/O4NfzTBbIzD07JhXIcZzETbi7DEIjSvHp3PIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942663; c=relaxed/simple;
	bh=/R8TKTdaXJ5E7nFbRFXKGFI2CoDw82xuVjg3o42YEKM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xj6YYoF0lOwoG4l6aQj0WvewU0qzQd6XmoOuS1NX9TLbixqHz85BDqcq57PdHII159gMiF69f6bx99WWLYzaE/dH+2NGah3/ii7sS1LEBA+nZGhfljEkzuz0qgBp6wcw4ybZPrvk8Pp4hqMhbnJCoA4j0PdcKDTTCQnklSbCzhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m5jbc3td; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso29422085e9.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 02:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769942659; x=1770547459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qAcF+L0Np568uJdLN21hB/SuPE8/a7buuQ9U5NhjBM=;
        b=m5jbc3tddC+UMxdR//EwDty10PcdaIs6xWscrj9W0LvVBxE3GZI/3a4PE3gQKEaGVI
         SJ9nWCXJKx7zTayzOWEswBclArRHibchXeyBglGig7Zf7bm0OJ8O5vOAFo1Td2ERMTqj
         +TnSfSnRGGkMomAkJBGIPxbgQK6TU2JT74q3xDJYkr68b2tm+lDJMQk9vXepJJPEOvFZ
         p3BHWXTWdiVbEWvi00gUgz1J4/Xnb1z8YnIwU+Q7LZt42ZwIWz+QE5M4QIV45zN0es8E
         DYN5/74woiQCWFauiSq1WjkBMuuSfy059WR7RwGdv109IRL1wTBcnI75EGwlEToIUrrh
         hRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769942659; x=1770547459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2qAcF+L0Np568uJdLN21hB/SuPE8/a7buuQ9U5NhjBM=;
        b=iyFe2elKyFPs4ROOeBRpk1eoSSzdukCauYte8dM6YZ/8YvsSpuAiUeTrcdhEHa2o4H
         Fg8yQdNAQPRulVn8Di27ROxYKEkO3bVvAdWl+UqgKrVJlLa/DKwbgaW9yQleSbltOHw6
         k5Wlsogap+cCrk+fZ1zOnmuNLgFyjL+kHVQCRfF5H6XIbb9PAM1U6sPV8I1bmVZvagTJ
         pOMVK9/Z2QiX37sUDHHOA5VnKb1MbWGbZPp07AMY1yyJ9qg+xGkzA3oPpAqJ8atsaxF2
         yrapX7jzWfUfvgElh1FgFF5EtUQBcBmSWlmn16KxVH1KsR1wohDNTDyDmRFUPRiqryrQ
         q7iw==
X-Gm-Message-State: AOJu0YxY3qUKLCJfwrea0JnhDkMn3/z+ZDRXzys3Ui3x+wON/aJESMB8
	+TTR2QoIxxG0AjDnZbUxYVHTVvIa75awh+AxRqwd9scNvGh1yQ/bgA/OcXUjYg==
X-Gm-Gg: AZuq6aKL8HREh7UeOVwB8OHwwvw3uIm27lzD/3RRMO1yDFg3s+wY9qZDmv3IUxW/LkY
	+6ptcwjO3YyKwCxAmeo70qDxHz9b4+6kTl++WSX4Y17AAtV+7HSTHFCGwWjZRon7Fw7N1iR3DPe
	EmJ1k+s3bs3yEWcrK9zwjKF+/JMQIZ+M8DO+q4ERxFogpTWXpqyt+RwN8yDxgAfrWomuRmVfOa+
	aA+0H12UyY0p459LkQbyeouInHHTBQ2zILK3k3RHYZuTWfxwdJYKAgz0JiDB9MIVTiByAwKJFni
	4JdbevD+eADzEh1txlEiplLcqzJnhNKYf905oH6tYXWwXLxCjKqZ5ApA5a1uKT44HSl1awHsZMV
	f/rP0yJppOFlaDbAFwGkhv4y+156bLmWYeD8rWzHYH5ySSj1+AgvkStPAZ4XvJjY7NkaLQs+ZXW
	3Q
X-Received: by 2002:a05:600c:3e83:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-482db45dc48mr108393835e9.15.1769942658765;
        Sun, 01 Feb 2026 02:44:18 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce56490sm308947455e9.12.2026.02.01.02.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 02:44:18 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sre@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v1 7/9] leds: Add driver for Asus Transformer LEDs
Date: Sun,  1 Feb 2026 12:43:41 +0200
Message-ID: <20260201104343.79231-8-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260201104343.79231-1-clamor95@gmail.com>
References: <20260201104343.79231-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261551-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qmqm.pl:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 76C5DC587A
X-Rspamd-Action: no action

From: Michał Mirosław <mirq-linux@rere.qmqm.pl>

Asus Transformer tablets have a green and an amber LED on both the pad
and the dock. If both LEDs are enabled simultaneously, the emitted light
will be yellow.

Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Signed-off-by: Michał Mirosław <mirq-linux@rere.qmqm.pl>
---
 drivers/leds/Kconfig        |  11 ++++
 drivers/leds/Makefile       |   1 +
 drivers/leds/leds-asus-ec.c | 106 ++++++++++++++++++++++++++++++++++++
 3 files changed, 118 insertions(+)
 create mode 100644 drivers/leds/leds-asus-ec.c

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 597d7a79c988..96dab210f6ca 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -120,6 +120,17 @@ config LEDS_OSRAM_AMS_AS3668
 	  To compile this driver as a module, choose M here: the module
 	  will be called leds-as3668.
 
+config LEDS_ASUSEC
+	tristate "LED Support for Asus Transformer charging LED"
+	depends on LEDS_CLASS
+	depends on MFD_ASUSEC
+	help
+	  This option enables support for charging indicator on
+	  Asus Transformer's Pad and it's Dock.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called leds-asus-ec.
+
 config LEDS_AW200XX
 	tristate "LED support for Awinic AW20036/AW20054/AW20072/AW20108"
 	depends on LEDS_CLASS
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index 8fdb45d5b439..1117304dfdf4 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_LEDS_AN30259A)		+= leds-an30259a.o
 obj-$(CONFIG_LEDS_APU)			+= leds-apu.o
 obj-$(CONFIG_LEDS_ARIEL)		+= leds-ariel.o
 obj-$(CONFIG_LEDS_AS3668)		+= leds-as3668.o
+obj-$(CONFIG_LEDS_ASUSEC)		+= leds-asus-ec.o
 obj-$(CONFIG_LEDS_AW200XX)		+= leds-aw200xx.o
 obj-$(CONFIG_LEDS_AW2013)		+= leds-aw2013.o
 obj-$(CONFIG_LEDS_BCM6328)		+= leds-bcm6328.o
diff --git a/drivers/leds/leds-asus-ec.c b/drivers/leds/leds-asus-ec.c
new file mode 100644
index 000000000000..2fae62ddb936
--- /dev/null
+++ b/drivers/leds/leds-asus-ec.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ASUS EC driver - battery LED
+ */
+
+#include <linux/err.h>
+#include <linux/leds.h>
+#include <linux/mfd/asus-ec.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+/*
+ * F[5] & 0x07
+ *  auto: brightness == 0
+ *  bit 0: blink / charger on
+ *  bit 1: amber on
+ *  bit 2: green on
+ */
+
+#define ASUSEC_CTL_LED_BLINK		BIT_ULL(40)
+#define ASUSEC_CTL_LED_AMBER		BIT_ULL(41)
+#define ASUSEC_CTL_LED_GREEN		BIT_ULL(42)
+
+static void asus_ec_led_set_brightness_amber(struct led_classdev *led,
+					     enum led_brightness brightness)
+{
+	const struct asusec_info *ec = dev_get_drvdata(led->dev->parent);
+
+	if (brightness)
+		asus_ec_set_ctl_bits(ec, ASUSEC_CTL_LED_AMBER);
+	else
+		asus_ec_clear_ctl_bits(ec, ASUSEC_CTL_LED_AMBER);
+}
+
+static void asus_ec_led_set_brightness_green(struct led_classdev *led,
+					     enum led_brightness brightness)
+{
+	const struct asusec_info *ec =
+				dev_get_drvdata(led->dev->parent);
+
+	if (brightness)
+		asus_ec_set_ctl_bits(ec, ASUSEC_CTL_LED_GREEN);
+	else
+		asus_ec_clear_ctl_bits(ec, ASUSEC_CTL_LED_GREEN);
+}
+
+static int asus_ec_led_probe(struct platform_device *pdev)
+{
+	struct asusec_info *ec = cell_to_ec(pdev);
+	struct led_classdev *amber_led, *green_led;
+	int ret;
+
+	platform_set_drvdata(pdev, ec);
+
+	amber_led = devm_kzalloc(&pdev->dev, sizeof(*amber_led), GFP_KERNEL);
+	if (!amber_led)
+		return -ENOMEM;
+
+	amber_led->name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s::amber", ec->name);
+	amber_led->max_brightness = 1;
+	amber_led->flags = LED_CORE_SUSPENDRESUME | LED_RETAIN_AT_SHUTDOWN;
+	amber_led->brightness_set = asus_ec_led_set_brightness_amber;
+
+	ret = devm_led_classdev_register(&pdev->dev, amber_led);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register amber LED\n");
+
+	green_led = devm_kzalloc(&pdev->dev, sizeof(*green_led), GFP_KERNEL);
+	if (!green_led)
+		return -ENOMEM;
+
+	green_led->name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s::green", ec->name);
+	green_led->max_brightness = 1;
+	green_led->flags = LED_CORE_SUSPENDRESUME | LED_RETAIN_AT_SHUTDOWN;
+	green_led->brightness_set = asus_ec_led_set_brightness_green;
+
+	ret = devm_led_classdev_register(&pdev->dev, green_led);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register green LED\n");
+
+	return 0;
+}
+
+static const struct of_device_id asus_ec_led_match[] = {
+	{ .compatible = "asus,ec-led" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, asus_ec_led_match);
+
+static struct platform_driver asus_ec_led_driver = {
+	.driver = {
+		.name = "asus-ec-led",
+		.of_match_table = asus_ec_led_match,
+	},
+	.probe = asus_ec_led_probe,
+};
+module_platform_driver(asus_ec_led_driver);
+
+MODULE_AUTHOR("Michał Mirosław <mirq-linux@rere.qmqm.pl>");
+MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
+MODULE_DESCRIPTION("ASUS Transformer's charging LED driver");
+MODULE_LICENSE("GPL");
-- 
2.51.0


