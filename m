Return-Path: <devicetree+bounces-246506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97103CBD44A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D4C530343E6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81B27315D36;
	Mon, 15 Dec 2025 09:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GjBNb5+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC29315785
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792077; cv=none; b=NkoUzBC/O7xFeo8JBmaRInJnObuHIUX8RwhbtPw7H3JVhmq9L1bptO8DNMZZ2+mUpklGkn22FQpPT0XgIq5m/0L+P6U9m1pHVj82t2g0Lz9Pmvxwpau0pCaAZkdptUEwCOKpvCVGQlc2NETXNIzVoKdfVSjCpuhcBlMLZDnIRoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792077; c=relaxed/simple;
	bh=amgEFJwnz1HaLfDD88LjSHq7xWobL4Dq1kG5tCo8neY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eZTJU3pKpwVwzPBJcXDq7AQN6kC4UMtObDwGnJbNkpQH71V1+9MtO2y8y/Wx9rEAk0UHOwwTOKsOj8GtdnHzhiOaZwhdC2JwF9rJsxDoqlgSO9uQ3+xlNmqtbKYGCZj2AD19xHHPgvT2c3TWV7SCupTYJ8qib5dg1vuiQ0K6PAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GjBNb5+b; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-595825c8eb3so3837546e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792073; x=1766396873; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lRh3hoVnVAdWoPvuzhnzUQQWZ37muBEDm12udAe6V1I=;
        b=GjBNb5+bSbhFkT9ZR7s+EAB6ulvk0u1aqL1iaRImeHtk+QF+jJVsiPaptnunrlweJf
         gfUKRrNyfAJWtuxZZjuqmpvsBDKjW/08RmNzf73ktBidUNKAc8JfMfqzqndbBDbXxoem
         v9EHaTYuCsTdHX5AUl0Iwreg5PFmPxKtEDz9fWBjS2XE8DqRXx/7bIKianzqbLLUPoid
         dcy8/If2yfYZIS7T/zZlvb8DZY+8L8/0RruMBJuN4+pQkwbLv2LrR5RUN44B5gcSC6CC
         qvk/dPkzOpAMdoZds6bkt9JHp9ed7VZufR+OJabRAmwdYteOn9c+BUBssV4J71glW3r1
         60cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792073; x=1766396873;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lRh3hoVnVAdWoPvuzhnzUQQWZ37muBEDm12udAe6V1I=;
        b=YoqytFBu8RzczhAnoP60Hb//Lh24wAQ0IwgKC2jTY7F+nQ8v72bAR+n/sZC4bfv9+P
         opREQNzJB46CwArDiPAeapyt8gGXq9j/vHatEUck0FdXTGH+lZRP/dhg7Tfrqv1Mgpzv
         OY9EEdXCYHmTuoObLojb9JYxaGdLjQwRD0X+pHRINW0NFbPQ+aaMIgOMpE5COIHr/tIk
         mKNTg/ki0Vs2Rf7qz7aA10UdGpaElVjf86f5Qj4rg9P9OW53axpaXZwGrxIHu2qn64PC
         gh5L/lhcxQAdQRXaPbfhrtTrZ9iKFeU+oOB6OqIoJ2vVGobiuBMTkWG33JyWDkUdOpo+
         zy+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6+9/twXahFuFC8VdNoo2SYfrETnaSoSe6zsvmMxZhxJWP2vpcacyly91gHik5u3nwZwPi/JpAiTNs@vger.kernel.org
X-Gm-Message-State: AOJu0YyjALe3i0wDa2tZD1Yp0YuFy6S+YxK1XNlF7HsTfPUkFUmPQkCM
	wBKWoWQH3ghxrEIbl+2HiRHydyzvWXQLpnYwuniwFkk+RPrbKS47hV9R
X-Gm-Gg: AY/fxX4kg7ll1h4Zbpl/OahTNwlc7prgAxBr0MyQAcnRtOcwrj7EIP3kP4kvqY7O7Ki
	CGpE5a1H53xHiD9GY69eMIp9bfq5vyd/S/UTDOuptUP/RCbFFBaP1mPclaPRufpLQeMuKAJ61c+
	Zf9Jhh9+0GxR/XdGpCvMyRORw5y4oNM2e5qoKmHQdPk6xTj62kCwqvitDd1Mj0GGlIBRf6afZS9
	uiHhdFLY/I7H/lf+aN7IUgVyWDD9Yr1sg8WX1hLbE2a4reWXqXLhGesol4YDDPNbfGjTIlmjY7H
	sTXJOwqampTI8R4tVFzyJ0R6iEO+PLQnKq9mf++Ug7ByGXuiqSHEdxais1Abat7d35umklb57hL
	NO/3ZnSJWLlVi1VlA5tG/gjdQvfeLdqzu7V0M/wCH9bNrW/FsKhcwGWuEYEXl3aLh8ujHhDlQ8B
	qe6tUCoWm/ZmMc8O2+gs6UrwqP9qx1fCeqRGsn9g/KkVXCOmPw2Q6zgAHU
X-Google-Smtp-Source: AGHT+IGjnTor4twzx0xNcYq+nhywvJtyH+jIfKRrI2Ee/mLPwpnph23iJhSGhc7xITSR+WpN6uIj0g==
X-Received: by 2002:a05:6512:15a9:b0:598:f98d:d725 with SMTP id 2adb3069b0e04-598faa18919mr2799726e87.8.1765792073091;
        Mon, 15 Dec 2025 01:47:53 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:52 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:48 +0100
Subject: [PATCH v3 6/7] drm/sitronix/st7571-spi: add support for SPI
 interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7571-split-v3-6-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4431;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=amgEFJwnz1HaLfDD88LjSHq7xWobL4Dq1kG5tCo8neY=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9kzx8v9lTk4bvuM/0c4ICiYaSBaKezSAcbDz
 wy9UVrwhrmJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZMwAKCRCIgE5vWV1S
 MtV8D/9L0ZnCX/dauXmH4lxkzkhgDEOiNVZWM8Zxw/hbtKvW9qyHkreeW6w0yCa/dn1EDKzmkHQ
 kybsdbiPAjYjEhGm+VzPuX98aC6Xab11Urvip8lqoDQLI8CQMWjI+8g6CA0qUULs7EVLsZ8qwoT
 s8Z6zprUFPSEQs7Lq5bxe51M44iWrvbTi+vrNILsKoodLE9d36/NfOThsRTz8wjddOPqEG+pYRZ
 PdHasZg2E3UD4ygABuEwGVZ8j4WLdSQYQUpFM/S4Dr9ZbkAWTIIp5sXA1a/1kRwiJ7MNonNv+WI
 DDvr7ZWPjkJwTLhYJR8O1c1aNG9sJdquH0UKKnYHa98VCjMeEHqH+VqDNPz8xg96Au1x0OSr1pf
 eqt5v9Lh+mhrdFh6GNOlmxGYzFbR6my9vMj9DTeLc6sLmv9sSWC/URVA9lYaImD5S+36GLndI39
 14uwKKvq/V24CxeUNYUMAJ8WHF1Eu9bskLrmmpk7IFfWKqOtYIfI985a7ISWc7h0Ey0IOwMdVRH
 yJX7Zk9IdtqhEUML1NYcpy6+gSWMmeHxTE7NqvskNGEDNAUMEXSbqwuFFW4fEfG9kLV/AHQpwKz
 M+PB2fsHYwCplOJXS36DTf6nAk7d1pk9rtw9B0kHRw48HWvLmaH5neswiDiLcZT72jlzza82wg5
 0eDft+CrI/KsqxA==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Add support for ST7561/ST7571 connected to SPI bus.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 MAINTAINERS                           |  1 +
 drivers/gpu/drm/sitronix/Kconfig      | 12 ++++++
 drivers/gpu/drm/sitronix/Makefile     |  1 +
 drivers/gpu/drm/sitronix/st7571-spi.c | 76 +++++++++++++++++++++++++++++++++++
 4 files changed, 90 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4b59960fa3a9..250251ab1a8c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8106,6 +8106,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/sitronix,st7567.yaml
 F:	Documentation/devicetree/bindings/display/sitronix,st7571.yaml
 F:	drivers/gpu/drm/sitronix/st7571-i2c.c
+F:	drivers/gpu/drm/sitronix/st7571-spi.c
 F:	drivers/gpu/drm/sitronix/st7571.c
 F:	drivers/gpu/drm/sitronix/st7571.h
 
diff --git a/drivers/gpu/drm/sitronix/Kconfig b/drivers/gpu/drm/sitronix/Kconfig
index 203c53fff402..56f257e16d1c 100644
--- a/drivers/gpu/drm/sitronix/Kconfig
+++ b/drivers/gpu/drm/sitronix/Kconfig
@@ -27,6 +27,18 @@ config DRM_ST7571_I2C
 
 	  if M is selected the module will be called st7571-i2c.
 
+config DRM_ST7571_SPI
+	tristate "DRM support for Sitronix ST7567/ST7571 display panels (SPI)"
+	depends on DRM_ST7571 && SPI
+	select REGMAP_SPI
+	help
+	  Sitronix ST7571 is a driver and controller for 4-level gray
+	  scale and monochrome dot matrix LCD panels.
+
+	  DRM driver for Sitronix ST7565/ST7571 panels connected via SPI bus.
+
+	  if M is selected the module will be called st7571-spi.
+
 config DRM_ST7586
 	tristate "DRM support for Sitronix ST7586 display panels"
 	depends on DRM && SPI
diff --git a/drivers/gpu/drm/sitronix/Makefile b/drivers/gpu/drm/sitronix/Makefile
index 8073bb776ff9..c631e3359c3d 100644
--- a/drivers/gpu/drm/sitronix/Makefile
+++ b/drivers/gpu/drm/sitronix/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_DRM_ST7571)		+= st7571.o
 obj-$(CONFIG_DRM_ST7571_I2C)		+= st7571-i2c.o
+obj-$(CONFIG_DRM_ST7571_SPI)		+= st7571-spi.o
 obj-$(CONFIG_DRM_ST7586)		+= st7586.o
 obj-$(CONFIG_DRM_ST7735R)		+= st7735r.o
diff --git a/drivers/gpu/drm/sitronix/st7571-spi.c b/drivers/gpu/drm/sitronix/st7571-spi.c
new file mode 100644
index 000000000000..0206e9162f1c
--- /dev/null
+++ b/drivers/gpu/drm/sitronix/st7571-spi.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Driver for Sitronix ST7571 connected via SPI bus.
+ *
+ * Copyright (C) 2025 Marcus Folkesson <marcus.folkesson@gmail.com>
+ */
+
+#include <linux/spi/spi.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include "st7571.h"
+
+static const struct regmap_config st7571_spi_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.can_multi_write = true,
+};
+
+static int st7571_spi_probe(struct spi_device *spi)
+{
+	struct st7571_device *st7571;
+	struct regmap *regmap;
+
+	regmap = devm_regmap_init_spi(spi, &st7571_spi_regmap_config);
+	if (IS_ERR(regmap)) {
+		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
+				     "Failed to initialize regmap\n");
+	}
+
+	st7571 = st7571_probe(&spi->dev, regmap);
+	if (IS_ERR(st7571))
+		return dev_err_probe(&spi->dev, PTR_ERR(st7571),
+				     "Failed to initialize regmap\n");
+
+	spi_set_drvdata(spi, st7571);
+	return 0;
+}
+
+static void st7571_spi_remove(struct spi_device *spi)
+{
+	struct st7571_device *st7571 = spi_get_drvdata(spi);
+
+	st7571_remove(st7571);
+}
+
+static const struct of_device_id st7571_of_match[] = {
+	{ .compatible = "sitronix,st7567", .data = &st7567_config },
+	{ .compatible = "sitronix,st7571", .data = &st7571_config },
+	{},
+};
+MODULE_DEVICE_TABLE(of, st7571_of_match);
+
+static const struct spi_device_id st7571_spi_id[] = {
+	{ "st7567", 0 },
+	{ "st7571", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, st7571_spi_id);
+
+static struct spi_driver st7571_spi_driver = {
+	.driver = {
+		.name = "st7571-spi",
+		.of_match_table = st7571_of_match,
+	},
+	.probe = st7571_spi_probe,
+	.remove = st7571_spi_remove,
+	.id_table = st7571_spi_id,
+};
+
+module_spi_driver(st7571_spi_driver);
+
+MODULE_AUTHOR("Marcus Folkesson <marcus.folkesson@gmail.com>");
+MODULE_DESCRIPTION("DRM Driver for Sitronix ST7571 LCD controller (SPI)");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("DRM_ST7571");

-- 
2.51.2


