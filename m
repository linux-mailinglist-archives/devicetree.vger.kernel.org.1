Return-Path: <devicetree+bounces-5960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 946707B97DA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 00:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B77A31C20933
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 22:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B4A250FC;
	Wed,  4 Oct 2023 22:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WEsIoZC5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7031250FA
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 22:22:54 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F79BEE;
	Wed,  4 Oct 2023 15:22:51 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 987BC1C0005;
	Wed,  4 Oct 2023 22:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696458170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/WtKn/Tb4sVAlce85oVAG5zntlgbWadZVDUoXswIydw=;
	b=WEsIoZC5O98yyVASIaiclGnH86JWzemScB3JQObFyalXk4oQUwgzIUIYVfh9rQsRjKKxFd
	xE0Lr7SFgWNQrsGjk5GjCegG90wryvMJzveeaLdlWKr5ZqMElhRf5NjsvuECMoin5NOd/7
	+x+DWFM2gDmUYsvR7G0Yee4ZxD7FyBU31fm/gjG8Jnjc/aaW1KBlqlE9Zi4csATt+NfQUR
	hgH9tIGd76FzE/V2w/JqyvFMjXqG9vGAa17EgM8W35sRvynO7bLyfGv0G/t0plheT9e3ky
	Tsw2CqWziksEO3iBDgFefEXuf2jyHeHGVkMJ6HodimQ5fnO5k9xRMMtBLrkuIA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Walle <michael@walle.cc>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	devicetree@vger.kernel.org,
	<linux-kernel@vger.kernel.org>,
	Robert Marko <robert.marko@sartura.hr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Randy Dunlap <rdunlap@infradead.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v11 4/7] nvmem: Create a header for internal sharing
Date: Thu,  5 Oct 2023 00:22:33 +0200
Message-Id: <20231004222236.411248-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231004222236.411248-1-miquel.raynal@bootlin.com>
References: <20231004222236.411248-1-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Before adding all the NVMEM layout bus infrastructure to the core, let's
move the main nvmem_device structure in an internal header, only
available to the core. This way all the additional code can be added in
a dedicated file in order to keep the current core file tidy.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/nvmem/core.c      | 24 +-----------------------
 drivers/nvmem/internals.h | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+), 23 deletions(-)
 create mode 100644 drivers/nvmem/internals.h

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c63057a7a3b8..073fe4a73e37 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -19,29 +19,7 @@
 #include <linux/of.h>
 #include <linux/slab.h>
 
-struct nvmem_device {
-	struct module		*owner;
-	struct device		dev;
-	int			stride;
-	int			word_size;
-	int			id;
-	struct kref		refcnt;
-	size_t			size;
-	bool			read_only;
-	bool			root_only;
-	int			flags;
-	enum nvmem_type		type;
-	struct bin_attribute	eeprom;
-	struct device		*base_dev;
-	struct list_head	cells;
-	const struct nvmem_keepout *keepout;
-	unsigned int		nkeepout;
-	nvmem_reg_read_t	reg_read;
-	nvmem_reg_write_t	reg_write;
-	struct gpio_desc	*wp_gpio;
-	struct nvmem_layout	*layout;
-	void *priv;
-};
+#include "internals.h"
 
 #define to_nvmem_device(d) container_of(d, struct nvmem_device, dev)
 
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
new file mode 100644
index 000000000000..ce353831cd65
--- /dev/null
+++ b/drivers/nvmem/internals.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_NVMEM_INTERNALS_H
+#define _LINUX_NVMEM_INTERNALS_H
+
+#include <linux/device.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/nvmem-provider.h>
+
+struct nvmem_device {
+	struct module		*owner;
+	struct device		dev;
+	struct list_head	node;
+	int			stride;
+	int			word_size;
+	int			id;
+	struct kref		refcnt;
+	size_t			size;
+	bool			read_only;
+	bool			root_only;
+	int			flags;
+	enum nvmem_type		type;
+	struct bin_attribute	eeprom;
+	struct device		*base_dev;
+	struct list_head	cells;
+	const struct nvmem_keepout *keepout;
+	unsigned int		nkeepout;
+	nvmem_reg_read_t	reg_read;
+	nvmem_reg_write_t	reg_write;
+	struct gpio_desc	*wp_gpio;
+	struct nvmem_layout	*layout;
+	void *priv;
+};
+
+#endif  /* ifndef _LINUX_NVMEM_INTERNALS_H */
-- 
2.34.1


