Return-Path: <devicetree+bounces-316525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wdBoH3V9QWpprgkAu9opvQ
	(envelope-from <devicetree+bounces-316525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:00:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EED9B6D4D2C
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:00:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lfew5TCR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316525-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316525-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16DA33031CC2
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E081D3B19DB;
	Sun, 28 Jun 2026 19:59:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217C3B14DC
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 19:59:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782676776; cv=none; b=DOrdlckMwwGq7/d2Mc1k0xL7ik5H6MAfIW9eBYRrY3JwjhtnITyHb38NzW7UZT7UVKEzZ3PvFvcmyYJWc15X1MJUeLlN/WJ1KxmN2O1oHGldgWyMX/Z1UUWOvEMjMM9D1Rt8c+tZrHSXCsdN4XHbqSYOdzN2dw7RfZhKayqO6mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782676776; c=relaxed/simple;
	bh=NUB48ndcBSC7Ql+9ErLJGKl+bUYndI+kIo+Q247H8Ac=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d1MS5dMPQkjdIn8XrEurqUoT+xlGj/SA+zSTpCFbHyhY9Pqvf4J7QbcNqspgYGYh1zAySmr7LjylLZigFbv/yJXxz9d0OeqCtDJwv73DY3EQ96xjSvqF7l/T37EZlVK2cPtafCsk7igo1dL9DmIUK7Pvunn5itjGXyW+69CpDeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lfew5TCR; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-493a5d32e8cso10150865e9.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782676774; x=1783281574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=97z+nGMjpObnX+kHQEl/mwC7gPI6pvLkyhFQtl49zRI=;
        b=lfew5TCR62gfvJk2hEPEcsEWMOs+qjrU3AhOCT7C4sS9oZdYIu2mrtHvVbbU+pDRac
         AA4TdATwTTMINHN91NhDoXi9m3WiwSfeGrCg5Qz2ULl3iLQSKh+bBenquTIqFsk552Xg
         n09BRsbLctHHKTKI+aVuzSBDvKE5ZKdgblMGOKjp+pK4R29YwpLVh6VQi3fS0gXxkw7D
         pe1yw6Q9bQRoX54sDeROKp68p7zd/tS3iaUadepqiLQNyU3fltiIclW0gi4LS8ESiJiN
         Xwz7wZ9+q5Q5NXi9Os/mF6GBAIGRBAylMf9tUSaLi2LkDNaAaDZcE956glLRMTKz9zGY
         zx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782676774; x=1783281574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=97z+nGMjpObnX+kHQEl/mwC7gPI6pvLkyhFQtl49zRI=;
        b=fF7nNujqx3hg6lnDyq4aKxK8WseK5sajsniEsmbvApUtOrz1ylqabxwera0+K7G/c2
         Zxb8cpzgPcBFIvvMM8ldJibbf3HK8WaD5IFdrCp+VfveQ3EoUDVwLMTMy+iMgmpaLAJz
         neoaK2jJ77BzLZzt+Y13LpOY49BsmnZRAdE9uLGiooE6+TTyTbXwzdEuouziNhEA135o
         LKx6ePs6nhycxkW1p/LQAyuRfNiGxR4jXYkybWneEHJwdb/bqbnEOhHbmbkdx50+/Ozk
         UF1OeecMDOM2I9A7O4xxLslFiK7e+MDX1n/cJDfrGQ4WlxO0hqOtv/Y/tfybQnK2AxDW
         v66w==
X-Forwarded-Encrypted: i=1; AFNElJ/IkD48TSUFXvqDUqSAxL8Nq+aTUorrf5JVTX767YOn9U0PYkZpgS+mx8lVVxuOPmWZprfXqQ5UlWmo@vger.kernel.org
X-Gm-Message-State: AOJu0YzD6sMYp0/41MYNmxeCNfVrRKZwilHchddUlcEaWT/56rQv0F8J
	UgNkcmrB+7zgg0q+KM2FSMymt1y+Ww0pplmVGedGy5gF8g1Oww6mEZ+wKQ+08VzeeV8=
X-Gm-Gg: AfdE7cmfjvlchcJfA5c2t57LiRs3b5WWNQR5LFzutUlDBmEh1FhRfC1vEbBsfmzMkWd
	QhOvZUuyoGxb12IjOw2qxyrBRMHrkX/mnoYFwtO8syPVjajQoM1Bge+Nsdo0VIesKQ0v2Ezj0gY
	0aNeVKU0jinwQr+m4JafjDTrNNM3jFms6xuoD3Wn0VM5R65TPSZ6nq+wO/Xg/kYJKOG2buJ0v5i
	zGqnhi0cZJJbqlxt30xj64p5L0PDabBf4YV0sho8xjDXmAzw73FoU6SDB1DqSbGGXjC3cV6sQva
	GxNx6PcjYaN3VHqiHGo+5bIYNWnRyyNwsqv7tQYILzEad53eQaRlfpJOOYd5V4pFxekuyWul0K8
	fkXIR5GE//vQa1+n4tpIGdtTlcOb59CHiT3mkDEY7JJQPoqZRT6FSbtkAJXtQBpdv+ctw4tdgzV
	rpwpRcsPSZK5H9ID01TW81EA+LQ3e1vEhJ1A==
X-Received: by 2002:a05:600c:4f8f:b0:493:a75e:cf2e with SMTP id 5b1f17b1804b1-493a75ed171mr46238335e9.25.1782676773558;
        Sun, 28 Jun 2026 12:59:33 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.51.120])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493ae96c85fsm15133505e9.5.2026.06.28.12.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 12:59:33 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Sun, 28 Jun 2026 22:58:59 +0300
Subject: [PATCH RFC v5 04/12] mfd: zx297520v3: Add a clock and reset MFD
 driver.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260628-zx29clk-v5-4-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
In-Reply-To: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5289;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=NUB48ndcBSC7Ql+9ErLJGKl+bUYndI+kIo+Q247H8Ac=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqQX0UuQcg/a4haB0tB3jD0iCDi5CETg6CWFhq8
 ijdX/m3GjWJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCakF9FBsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKvFQ/+Nv+IW2StkA6RatscGBd/vKf6OWHd5Vt
 Hq3Rzdkm0a2H00bW/NSmvPrAu97MVixe8HJR1jR8SVW4oqwzCn064HHGh0HwrofFuMo/5QXo5Lh
 rzbRaGLvui1TrRiclgs17eGWkysnAolqYs9GaXXqBuWvAHTJyK/fzCGuFlY4Mf04vrP+eA8F7ux
 CeN8Ij2ebsypJsKyZuVtaMBIcLQYSHfmJhn4Nl41Czbwn5kU4DObbGQPf4u9VZq/CdeUI9KafsZ
 EcQew9xYFEp0POiEwd4dx2dZ04sF+0VQhELx6mxTeIFIdQaZxKKxVwidi//RPaa0ApyrnnxEXjY
 WvKINXr6XUAdyB1smw2ADnlL3Au6JF+//Q6VtsAJkipoqz1L7zSDZmFRnaB5bUDqv0WK/aJs/8p
 jGN8DGCQs6LiF9xBMM3emViQbeH6rXQIMVZO1EFqZv2TE3f7Tl+ICuSgte9zsLYNvCgQdaHla+M
 LARCN0UAl9tTVtRFr06YYPV+dONXq71xfraKGJK04drYmnWCxkjxSWtaik9AtJSoAde1hHFcWFE
 m47rvGJlunRTFIf2KLjeElqb1krXzVjzDGl5G74bcnrmKMstSJy5x+Vtxv64aygFz8ulT0aPWha
 4UDRJ4mkXINFG3RH64eCAdA45htv2yW+LCxwRxnfemEsN1Sc5Gvw=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316525-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:stefandoesinger@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stefandoesinger@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefandoesinger@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EED9B6D4D2C

This driver registers child devices for the zx297520v3 clock and reset
controllers. The clk-zx297520v3 and reset-zte-zx297520v3 submitted in
the next patches will drive the respective functionalities.

Signed-off-by: Stefan Dösinger <stefandoesinger@gmail.com>

---

Changes v5: Use MFD instead of Aux bus for top and matrix crm because of
extra functionality: Reboot in top, hwlock in Matrix.

LSP clocks stay with the aux bus and are thus not handled in this
driver. The clk driver will bind directly to the lspcrm node.
---
 MAINTAINERS                      |  1 +
 drivers/soc/Kconfig              |  1 +
 drivers/soc/Makefile             |  1 +
 drivers/soc/zte/Kconfig          | 20 +++++++++++
 drivers/soc/zte/Makefile         |  3 ++
 drivers/soc/zte/zx297520v3-crm.c | 76 ++++++++++++++++++++++++++++++++++++++++
 6 files changed, 102 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ee585982b859..57af566030db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3871,6 +3871,7 @@ F:	Documentation/devicetree/bindings/clock/zte,zx297520v3-lspcrm.yaml
 F:	Documentation/devicetree/bindings/soc/zte/
 F:	arch/arm/boot/dts/zte/
 F:	arch/arm/mach-zte/
+F:	drivers/soc/zte/
 F:	include/dt-bindings/clock/zte,zx297520v3-clk.h
 F:	include/dt-bindings/reset/zte,zx297520v3-reset.h
 
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index a2d65adffb80..5cc1ade4ce52 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -31,5 +31,6 @@ source "drivers/soc/ux500/Kconfig"
 source "drivers/soc/versatile/Kconfig"
 source "drivers/soc/vt8500/Kconfig"
 source "drivers/soc/xilinx/Kconfig"
+source "drivers/soc/zte/Kconfig"
 
 endmenu
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index c9e689080ceb..63b3f340256c 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -37,3 +37,4 @@ obj-$(CONFIG_ARCH_U8500)	+= ux500/
 obj-y				+= versatile/
 obj-y				+= vt8500/
 obj-y				+= xilinx/
+obj-y				+= zte/
diff --git a/drivers/soc/zte/Kconfig b/drivers/soc/zte/Kconfig
new file mode 100644
index 000000000000..1016fb99cf73
--- /dev/null
+++ b/drivers/soc/zte/Kconfig
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_ZTE || COMPILE_TEST
+
+menu "ZTE SoC drivers"
+
+config ZTE_ZX297520V3_CRM
+	tristate "ZTE zx297520v3 Clock and Reset Manager"
+	select MFD_CORE
+	default SOC_ZX297520V3
+	help
+	  Say yes here to enable the driver for the ZTE zx297520v3 clock and
+	  reset manager MFD driver. This driver provides the host device for
+	  the clock and reset drivers and is required to boot the SoC. You
+	  will also need to enable CLK_ZTE_ZX297520V3 and RESET_ZTE_ZX297520V3
+	  to build the actual clock and reset submodule drivers.
+
+endmenu
+
+endif
diff --git a/drivers/soc/zte/Makefile b/drivers/soc/zte/Makefile
new file mode 100644
index 000000000000..090ba8aa06c1
--- /dev/null
+++ b/drivers/soc/zte/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_ZTE_ZX297520V3_CRM) += zx297520v3-crm.o
diff --git a/drivers/soc/zte/zx297520v3-crm.c b/drivers/soc/zte/zx297520v3-crm.c
new file mode 100644
index 000000000000..bf5a71bc7706
--- /dev/null
+++ b/drivers/soc/zte/zx297520v3-crm.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Stefan Dösinger
+ */
+
+#include <linux/platform_device.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+struct zx297520v3_crm_data {
+	const struct mfd_cell *cells;
+	unsigned int num_cells;
+};
+
+static const struct mfd_cell zx297520v3_topcrm_devs[] = {
+	{
+		.name = "zx297520v3-topclk",
+	},
+	{
+		.name = "zx297520v3-toprst",
+	},
+	{
+		.name = "zx297520v3-reboot",
+		.of_compatible = "syscon-reboot",
+	},
+};
+
+static const struct zx297520v3_crm_data zx297520v3_topcrm_data = {
+	zx297520v3_topcrm_devs,
+	ARRAY_SIZE(zx297520v3_topcrm_devs),
+};
+
+static const struct mfd_cell zx297520v3_matrixcrm_devs[] = {
+	{
+		.name = "zx297520v3-matrixclk",
+	},
+	{
+		.name = "zx297520v3-matrixrst",
+	},
+};
+
+static const struct zx297520v3_crm_data zx297520v3_matrixcrm_data = {
+	zx297520v3_matrixcrm_devs,
+	ARRAY_SIZE(zx297520v3_matrixcrm_devs),
+};
+
+static int zx297520v3_crm_probe(struct platform_device *pdev)
+{
+	const struct zx297520v3_crm_data *data;
+
+	data = of_device_get_match_data(&pdev->dev);
+	return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, data->cells,
+				    data->num_cells, NULL, 0, NULL);
+}
+
+static const struct of_device_id of_match_zx297520v3_crm[] = {
+	{ .compatible = "zte,zx297520v3-topcrm", .data = &zx297520v3_topcrm_data },
+	{ .compatible = "zte,zx297520v3-matrixcrm", .data = &zx297520v3_matrixcrm_data },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, of_match_zx297520v3_crm);
+
+static struct platform_driver zx297520v3_crm = {
+	.probe = zx297520v3_crm_probe,
+	.driver = {
+		.name = "zx297520v3-crm",
+		.of_match_table = of_match_zx297520v3_crm,
+	},
+};
+
+module_platform_driver(zx297520v3_crm);
+
+MODULE_AUTHOR("Stefan Dösinger <stefandoesinger@gmail.com>");
+MODULE_DESCRIPTION("ZTE zx297520v3 CRM MFD host driver");
+MODULE_LICENSE("GPL");

-- 
2.53.0


