Return-Path: <devicetree+bounces-193146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C79AF97AB
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE75D1CA44C1
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F15EA327195;
	Fri,  4 Jul 2025 16:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="d5Pw5HKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0054B326A7D
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645681; cv=none; b=mDFzTQPUYx2ydG7buS790Ib3aFt76UiMAiVtgpbU7dgxwq4CxFp9OcZTjyOinb87Dh8RMMqoyy5wMSPowVBHNAXa4rf/2XC7wSBlqe4FNYjwVluT4nnPh1DEh4sy725/jSeO1oyROmXHpD3olJKw3KOC+jxTK64LlmVsJ8uXgZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645681; c=relaxed/simple;
	bh=6bBYsqJZBDaFXUei7hQaZLvc2wej6cU0ty/mMwIxhps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b4stp7Y/t84OBcIvxDYrl0XAkCj+NCmy5JfMVYcmNQx/Fbi+ME33cA+hyp7UhsElFGTYi/7PRrV1cV6iV18o52t31Yp9N44a60RMxrqQYFxieFyCl8P1uwhrLUGOok7G5RvdY3VsjQHJODLtv//cBFnOMY9/r6cgvvMdn+NyMDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=d5Pw5HKw; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a16e5so1952847a12.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751645677; x=1752250477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OgCtpqqgn38oeYCLmnm2mb3AWR3Tqp2NnheWLsUnJas=;
        b=d5Pw5HKwBQ2ORmR5wASUp33TzLXEp4lqvgYQXdxRn9gU+88dC4m1L9T8rAjBE68RWC
         FogEdsGz4Ty2m5yZjVTxEee4hR1+DQSLfX3z5dZ0/wyRfpQ81wnFCcaLPjaqpG7zEIJt
         bfjxIwWaZS5YTrdL38QNG0wzHz4qAaeb75u/q5YHFIzx0jxZ+ifk5du5o142FiIkIEe8
         A+Hy6x4Zm4CtQJInxGO2IqOPJ4sZ52ZBG5B9A+nOyOE+Iqg6Dl29xX4YDzZJTTOzeILe
         7PSb1JHCfBTUPNbzIXj5fYa9tAF4dmDjA9lP5reA/3lQ6rDpP9ee7oB7ATUJmx5cThlB
         cUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751645677; x=1752250477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OgCtpqqgn38oeYCLmnm2mb3AWR3Tqp2NnheWLsUnJas=;
        b=HyXOfyxPGINxY9dfNbMtgpSf65rUNbABOPsi4GPJu51Y0/omTK/dNxa18jfe8jS7MY
         NgnalJC1EU2M92ovBG6uUOFeGepOsQzOWQUjtuf/5j+2taDDPIF5Vz8R5PKAxH3gXuj6
         XhAn5OnMi0PZFjTKQej/zDgFLvf8Q0I7v104YKBrIrerZFQv04uMojbpEnldrXnIedRk
         YbnX5UQ58dV1RoEMZ1DgTMBkgblI17u9OkENEwdwzRApoPXDT5DHs//qOn4EVQLu/27E
         eGhEnmEYxLl55BhoWBO1JCBQ8fW7ioARgSt/9rB21TRuRoo4bqj5F573i15YqPkKPaai
         uL7w==
X-Forwarded-Encrypted: i=1; AJvYcCWZIdrT81G7j6uh8l0QPYyDEYSsJ05abLyHieX/+2jcmwA0osf1kTtPrgrPqeZ+VHb1nHL7FooASkFS@vger.kernel.org
X-Gm-Message-State: AOJu0YzHI4Z6oTYxdJcc0QlG0pvhTnfl/25M2pcMrqImQDVbK4b7xMA9
	QJ1VAvOgRlk6mqkcBvayyaXG/KN+xsuII5nWN49tT+qjzBwurlqxACqUKCo2pY6R2W8=
X-Gm-Gg: ASbGnctp3qmKHlazRTVv1mmIMlFkxlTRbLjD/X7//u9fJReaegiguZE1Agnkzg4oaij
	sAdBj7s2HvoXOyJo1H1/EFpf1LtK1v8ZwjvrjMQNHQdn2NpTDTQ6PSieFiiGGUPGhDWyHk8Tnpc
	lAVfHQy0BaH2EmCA/DumiM+xwOAGx9wsGh+QxNuHFmTWv0LwgwsMD/VTXJ0hzy/yk0OGl0Fv9ql
	RfZUOjcATSjZAxE+dS/0dbhsQs4/gX33+y5URFuGLH7GBwiRZMug8WlYTdCSALORz3ZCN4dqyDJ
	9WZ4uJfM0IXB8E71IgtttMu/Bh8nWbjoyFdu3s4NUAQuBVXZ/r0+d2w0UNydpXw4b58Tp7eADKh
	6Uej5mRkgZzchDG4=
X-Google-Smtp-Source: AGHT+IEwTpH1PdXGNkun2+FZQKwc/iZhEarO6PtA/vdMrWXwR9cFeo/knhPNouC+KTYZgUm2rnSe8A==
X-Received: by 2002:a17:907:971a:b0:ae0:9363:4d5d with SMTP id a640c23a62f3a-ae3fbc405c7mr307577466b.2.1751645677173;
        Fri, 04 Jul 2025 09:14:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d9215sm194703766b.2.2025.07.04.09.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:14:36 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	lizhi.hou@amd.com
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	John Madieu <john.madieu.xa@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 1/9] soc: renesas: rz-sysc: Add syscon/regmap support
Date: Fri,  4 Jul 2025 19:14:01 +0300
Message-ID: <20250704161410.3931884-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: John Madieu <john.madieu.xa@bp.renesas.com>

The RZ/G3E system controller has various registers that control or report
some properties specific to individual IPs. The regmap is registered as a
syscon device to allow these IP drivers to access the registers through the
regmap API.

As other RZ SoCs might have custom read/write callbacks or max-offsets,
add register a custom regmap configuration.

Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
[claudiu.beznea:
 - s/rzg3e_sysc_regmap/rzv2h_sysc_regmap in RZ/V2H sysc
   file
 - do not check the match->data validity in rz_sysc_probe() as it is
   always valid
 - register the regmap if data->regmap_cfg is valid]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- picked the latest version from John after he addressed the review
  comments received at [1];
- I adjusted as specified in the SoB area

[1] https://lore.kernel.org/all/20250330214945.185725-2-john.madieu.xa@bp.renesas.com/

 drivers/soc/renesas/Kconfig          |  1 +
 drivers/soc/renesas/r9a08g045-sysc.c | 10 ++++++++++
 drivers/soc/renesas/r9a09g047-sys.c  | 10 ++++++++++
 drivers/soc/renesas/r9a09g057-sys.c  | 10 ++++++++++
 drivers/soc/renesas/rz-sysc.c        | 17 ++++++++++++++++-
 drivers/soc/renesas/rz-sysc.h        |  3 +++
 6 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 1930a12b8fa7..58a4ab2643d6 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -452,6 +452,7 @@ config RST_RCAR
 
 config SYSC_RZ
 	bool "System controller for RZ SoCs" if COMPILE_TEST
+	select MFD_SYSCON
 
 config SYSC_R9A08G045
 	bool "Renesas System controller support for R9A08G045 (RZ/G3S)" if COMPILE_TEST
diff --git a/drivers/soc/renesas/r9a08g045-sysc.c b/drivers/soc/renesas/r9a08g045-sysc.c
index f4db1431e036..0ef6df77e25f 100644
--- a/drivers/soc/renesas/r9a08g045-sysc.c
+++ b/drivers/soc/renesas/r9a08g045-sysc.c
@@ -18,6 +18,16 @@ static const struct rz_sysc_soc_id_init_data rzg3s_sysc_soc_id_init_data __initc
 	.specific_id_mask = GENMASK(27, 0),
 };
 
+static const struct regmap_config rzg3s_sysc_regmap __initconst = {
+	.name = "rzg3s_sysc_regs",
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+	.max_register = 0xe20,
+};
+
 const struct rz_sysc_init_data rzg3s_sysc_init_data __initconst = {
 	.soc_id_init_data = &rzg3s_sysc_soc_id_init_data,
+	.regmap_cfg = &rzg3s_sysc_regmap,
 };
diff --git a/drivers/soc/renesas/r9a09g047-sys.c b/drivers/soc/renesas/r9a09g047-sys.c
index cd2eb7782cfe..a3acf6dd2867 100644
--- a/drivers/soc/renesas/r9a09g047-sys.c
+++ b/drivers/soc/renesas/r9a09g047-sys.c
@@ -62,6 +62,16 @@ static const struct rz_sysc_soc_id_init_data rzg3e_sys_soc_id_init_data __initco
 	.print_id = rzg3e_sys_print_id,
 };
 
+static const struct regmap_config rzg3e_sysc_regmap __initconst = {
+	.name = "rzg3e_sysc_regs",
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+	.max_register = 0x170c,
+};
+
 const struct rz_sysc_init_data rzg3e_sys_init_data = {
 	.soc_id_init_data = &rzg3e_sys_soc_id_init_data,
+	.regmap_cfg = &rzg3e_sysc_regmap,
 };
diff --git a/drivers/soc/renesas/r9a09g057-sys.c b/drivers/soc/renesas/r9a09g057-sys.c
index 4c21cc29edbc..c26821636dce 100644
--- a/drivers/soc/renesas/r9a09g057-sys.c
+++ b/drivers/soc/renesas/r9a09g057-sys.c
@@ -62,6 +62,16 @@ static const struct rz_sysc_soc_id_init_data rzv2h_sys_soc_id_init_data __initco
 	.print_id = rzv2h_sys_print_id,
 };
 
+static const struct regmap_config rzv2h_sysc_regmap __initconst = {
+	.name = "rzv2h_sysc_regs",
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+	.max_register = 0x170c,
+};
+
 const struct rz_sysc_init_data rzv2h_sys_init_data = {
 	.soc_id_init_data = &rzv2h_sys_soc_id_init_data,
+	.regmap_cfg = &rzv2h_sysc_regmap,
 };
diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
index ffa65fb4dade..70556a2f55e6 100644
--- a/drivers/soc/renesas/rz-sysc.c
+++ b/drivers/soc/renesas/rz-sysc.c
@@ -6,8 +6,10 @@
  */
 
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/sys_soc.h>
 
 #include "rz-sysc.h"
@@ -100,14 +102,19 @@ MODULE_DEVICE_TABLE(of, rz_sysc_match);
 
 static int rz_sysc_probe(struct platform_device *pdev)
 {
+	const struct rz_sysc_init_data *data;
 	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
+	struct regmap *regmap;
 	struct rz_sysc *sysc;
+	int ret;
 
 	match = of_match_node(rz_sysc_match, dev->of_node);
 	if (!match)
 		return -ENODEV;
 
+	data = match->data;
+
 	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
 	if (!sysc)
 		return -ENOMEM;
@@ -117,7 +124,15 @@ static int rz_sysc_probe(struct platform_device *pdev)
 		return PTR_ERR(sysc->base);
 
 	sysc->dev = dev;
-	return rz_sysc_soc_init(sysc, match);
+	ret = rz_sysc_soc_init(sysc, match);
+	if (ret || !data->regmap_cfg)
+		return ret;
+
+	regmap = devm_regmap_init_mmio(dev, sysc->base, data->regmap_cfg);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return of_syscon_register_regmap(dev->of_node, regmap);
 }
 
 static struct platform_driver rz_sysc_driver = {
diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
index 56bc047a1bff..447008140634 100644
--- a/drivers/soc/renesas/rz-sysc.h
+++ b/drivers/soc/renesas/rz-sysc.h
@@ -9,6 +9,7 @@
 #define __SOC_RENESAS_RZ_SYSC_H__
 
 #include <linux/device.h>
+#include <linux/regmap.h>
 #include <linux/sys_soc.h>
 #include <linux/types.h>
 
@@ -34,9 +35,11 @@ struct rz_sysc_soc_id_init_data {
 /**
  * struct rz_sysc_init_data - RZ SYSC initialization data
  * @soc_id_init_data: RZ SYSC SoC ID initialization data
+ * @regmap_cfg: SoC-specific regmap config
  */
 struct rz_sysc_init_data {
 	const struct rz_sysc_soc_id_init_data *soc_id_init_data;
+	const struct regmap_config *regmap_cfg;
 };
 
 extern const struct rz_sysc_init_data rzg3e_sys_init_data;
-- 
2.43.0


