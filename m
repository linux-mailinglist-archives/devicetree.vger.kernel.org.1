Return-Path: <devicetree+bounces-17075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4857F11BB
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 754941F23C78
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C877C1427E;
	Mon, 20 Nov 2023 11:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eN/7mUF9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4843A1990
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:41 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40b23aeb9d9so4776765e9.3
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479119; x=1701083919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zt28BEamGK9GJg+uoPutTMJWsmRnLkQhTTMvCGxCklI=;
        b=eN/7mUF9Z1s5Bj2gQFa6OUrgXsBXuEikuqF/3Uidrppv5vLTgr/ghaTslm395EchUr
         mZceJve9uDRMP7atFMZhlMXBZp6LX3nBrhs0+RwWOT3OAsTPiCwLk8neHE2Y6wboImnp
         dombQrcLIU0PVMyVM6LDWfzYJ4Nxw89Pr04n8Rh9g0mGLrObSYqUfSnjFK4LgJV1fhZs
         IbvKgX6YUqtQiUQDh8WCWs3Hhiy5+jpR9et8+R4C1zsWBo+2sRSzUPcT2OYOvOA8YHH1
         TYfcnSXxNvJTLc/smeW4NidiQk6agpc+2F9omDvFCEQ+EMFK7vQ/KYwEH+zxSVKFI1aN
         SFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479119; x=1701083919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zt28BEamGK9GJg+uoPutTMJWsmRnLkQhTTMvCGxCklI=;
        b=QnzmM9ROf639Zi5+9MSNJ8MHVAMoE21APXgdWsLNVg672iP5jf9hpRXvywiBCratk3
         yEHAT3P8nHSRzmcr01UHeF/aTjYPowDe7WGTGA849CGs8AR6/rX/nzV/2Vkue+LOjC4u
         7bgKVq64xX2dEOSv6NOH+/dzgds7elNF3LHg+w9+QhhJGXjnoXGsI/huGz6ci6zr72vM
         Jf5KouqGtE2Vix1aIKKbrcq/5xDGxO52jaZu435X9tUN+bc/zYNGJqE7juB9HZcNftCS
         spxJzQU1fgFxgvq0KqF4f5htuBK3+8l5WzCyL3GcVlxPHb0Ap8MAu+yGv4E5uOtwBqCF
         Rq7A==
X-Gm-Message-State: AOJu0YyJRqegBba/z3HxvJMSdKo3HbdeW75GZed4xllyWfFmQ+Y5kYu1
	y0pl/mZYSbiOigg8n5OJsWG/Rw==
X-Google-Smtp-Source: AGHT+IFULmbUM8eR4HVE5mvSY9mHpDxkW8t2l5mdI05BAFDfMEVwZdiXch6T49nMwu1EITfl3yaVyw==
X-Received: by 2002:a05:600c:5102:b0:40a:206a:578d with SMTP id o2-20020a05600c510200b0040a206a578dmr5673551wms.31.1700479119621;
        Mon, 20 Nov 2023 03:18:39 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:39 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 7/9] irqchip/renesas-rzg2l: Add support for suspend to RAM
Date: Mon, 20 Nov 2023 13:18:18 +0200
Message-Id: <20231120111820.87398-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

irqchip-renesas-rzg2l driver is used on RZ/G3S SoC. RZ/G3S could go to deep
sleep states where power to different SoC's parts are cut off and RAM is
switched to self-refresh. The resume from these states is done with the
help of bootloader.

IA55 IRQ controller needs to be reconfigured when resuming from deep sleep
state. For this the IA55 registers are cached in suspend and restored in
resume.

The IA55 IRQ controller is connected to GPIO controller and GIC as follows:

                                      ┌──────────┐          ┌──────────┐
                                      │          │ SPIX     │          │
                                      │          ├─────────►│          │
                                      │          │          │          │
                                      │          │          │          │
              ┌────────┐IRQ0-7        │  IA55    │          │  GIC     │
 Pin0 ───────►│        ├─────────────►│          │          │          │
              │        │              │          │ PPIY     │          │
 ...          │  GPIO  │              │          ├─────────►│          │
              │        │GPIOINT0-127  │          │          │          │
 PinN ───────►│        ├─────────────►│          │          │          │
              └────────┘              └──────────┘          └──────────┘

where:
- Pin0 is the first GPIO controller pin
- PinN is the last GPIO controller pin
- SPIX is the SPI interrupt with identifier X
- PPIY is the PPI interrupt with identifier Y

Suspend/resume functionality was implemented with syscore_ops to be able
to cache/restore the registers after/before GPIO controller suspend/resume
was called. As suspend/resume function members of syscore_ops doesn't take
any argument, to be able to access the cache data structure and
controller's base address from within suspend/resume functions, the driver
private data structure was declared as static in file, named
rzg2l_irqc_data and driver has been adjusted accordingly for this.

Because IA55 IRQC is resumed before GPIO controller and different GPIO
pins could be in unwanted state for IA55 IRQC (e.g. HiZ) when IA55
reconfiguration is done on resume path, to avoid spurious interrupts
the IA55 resume configures only interrupt type on resume. The interrupt
enable operation will be done at the end of GPIO controller resume.
The interrupt type reconfiguration was kept in IA55 driver to minimize
the number of subsystems interactions on suspend/resume b/w GPIO and
IA55 drivers (as the IRQ reconfiguration from GPIO driver is done with
IRQ specific APIs).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/irqchip/irq-renesas-rzg2l.c | 68 ++++++++++++++++++++++++-----
 1 file changed, 57 insertions(+), 11 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index 45b696db220f..3c179ff0b2f0 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -18,6 +18,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/spinlock.h>
+#include <linux/syscore_ops.h>
 
 #define IRQC_IRQ_START			1
 #define IRQC_IRQ_COUNT			8
@@ -55,17 +56,29 @@
 #define TINT_EXTRACT_HWIRQ(x)		FIELD_GET(GENMASK(15, 0), (x))
 #define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
 
+/**
+ * struct rzg2l_irqc_reg_cache - registers cache (necessary for suspend/resume)
+ * @iitsr: IITSR register
+ * @titsr: TITSR registers
+ */
+struct rzg2l_irqc_reg_cache {
+	u32	iitsr;
+	u32	titsr[2];
+};
+
 /**
  * struct rzg2l_irqc_priv - IRQ controller private data structure
  * @base: controller's base address
  * @fwspec: IRQ firmware specific data
  * @lock: lock to protect concurrent access to hardware registers
+ * @cache: registers cache (necessary for suspend/resume)
  */
-struct rzg2l_irqc_priv {
+static struct rzg2l_irqc_priv {
 	void __iomem			*base;
 	struct irq_fwspec		fwspec[IRQC_NUM_IRQ];
 	raw_spinlock_t			lock;
-};
+	struct rzg2l_irqc_reg_cache	cache;
+} *rzg2l_irqc_data;
 
 static struct rzg2l_irqc_priv *irq_data_to_priv(struct irq_data *data)
 {
@@ -246,6 +259,38 @@ static int rzg2l_irqc_set_type(struct irq_data *d, unsigned int type)
 	return irq_chip_set_type_parent(d, IRQ_TYPE_LEVEL_HIGH);
 }
 
+static int rzg2l_irqc_irq_suspend(void)
+{
+	struct rzg2l_irqc_reg_cache *cache = &rzg2l_irqc_data->cache;
+	void __iomem *base = rzg2l_irqc_data->base;
+
+	cache->iitsr = readl_relaxed(base + IITSR);
+	for (u8 i = 0; i < 2; i++)
+		cache->titsr[i] = readl_relaxed(base + TITSR(i));
+
+	return 0;
+}
+
+static void rzg2l_irqc_irq_resume(void)
+{
+	struct rzg2l_irqc_reg_cache *cache = &rzg2l_irqc_data->cache;
+	void __iomem *base = rzg2l_irqc_data->base;
+
+	/*
+	 * Restore only interrupt type. TSSRx will be restored at the
+	 * request of pin controller to avoid spurious interrupts due
+	 * to invalid PIN states.
+	 */
+	for (u8 i = 0; i < 2; i++)
+		writel_relaxed(cache->titsr[i], base + TITSR(i));
+	writel_relaxed(cache->iitsr, base + IITSR);
+}
+
+static struct syscore_ops rzg2l_irqc_syscore_ops = {
+	.suspend	= rzg2l_irqc_irq_suspend,
+	.resume		= rzg2l_irqc_irq_resume,
+};
+
 static const struct irq_chip irqc_chip = {
 	.name			= "rzg2l-irqc",
 	.irq_eoi		= rzg2l_irqc_eoi,
@@ -331,7 +376,6 @@ static int rzg2l_irqc_init(struct device_node *node, struct device_node *parent)
 	struct irq_domain *irq_domain, *parent_domain;
 	struct platform_device *pdev;
 	struct reset_control *resetn;
-	struct rzg2l_irqc_priv *priv;
 	int ret;
 
 	pdev = of_find_device_by_node(node);
@@ -344,15 +388,15 @@ static int rzg2l_irqc_init(struct device_node *node, struct device_node *parent)
 		return -ENODEV;
 	}
 
-	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
+	rzg2l_irqc_data = devm_kzalloc(&pdev->dev, sizeof(*rzg2l_irqc_data), GFP_KERNEL);
+	if (!rzg2l_irqc_data)
 		return -ENOMEM;
 
-	priv->base = devm_of_iomap(&pdev->dev, pdev->dev.of_node, 0, NULL);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
+	rzg2l_irqc_data->base = devm_of_iomap(&pdev->dev, pdev->dev.of_node, 0, NULL);
+	if (IS_ERR(rzg2l_irqc_data->base))
+		return PTR_ERR(rzg2l_irqc_data->base);
 
-	ret = rzg2l_irqc_parse_interrupts(priv, node);
+	ret = rzg2l_irqc_parse_interrupts(rzg2l_irqc_data, node);
 	if (ret) {
 		dev_err(&pdev->dev, "cannot parse interrupts: %d\n", ret);
 		return ret;
@@ -375,17 +419,19 @@ static int rzg2l_irqc_init(struct device_node *node, struct device_node *parent)
 		goto pm_disable;
 	}
 
-	raw_spin_lock_init(&priv->lock);
+	raw_spin_lock_init(&rzg2l_irqc_data->lock);
 
 	irq_domain = irq_domain_add_hierarchy(parent_domain, 0, IRQC_NUM_IRQ,
 					      node, &rzg2l_irqc_domain_ops,
-					      priv);
+					      rzg2l_irqc_data);
 	if (!irq_domain) {
 		dev_err(&pdev->dev, "failed to add irq domain\n");
 		ret = -ENOMEM;
 		goto pm_put;
 	}
 
+	register_syscore_ops(&rzg2l_irqc_syscore_ops);
+
 	return 0;
 
 pm_put:
-- 
2.39.2


