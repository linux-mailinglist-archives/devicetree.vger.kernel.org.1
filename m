Return-Path: <devicetree+bounces-15945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC287EC538
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1585D280E6E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2504E2E637;
	Wed, 15 Nov 2023 14:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ramrNADH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B47B2E648
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:48 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0A818E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:47 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-543c3756521so10291855a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058525; x=1700663325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ewZ9xRCba+P0eMIANOBLPqwHZjc7NQgwGPmpIitVuvg=;
        b=ramrNADHtyRQFkdp114gxzCYwEKCMLSWuntKvmc5fsXBQpLGSjSd2XKJWiHA6tEi43
         lc8xzN87POLshqDqEwuIXMcCOPuMEWuOsUmNsyBq6KxGJHcze3Z998qzpx6d03g6DICl
         /7rIs9teYJvl8cpsE6PoWPIW95bqj5CAW5mNzO5tmHv9s3i5dbnnkJUPc48bHZV1cNhe
         3LJ3Ho9wRf4iSPuunhZ6rPHJhO9Xe/IzQgVEot/HlLFpazVrxzdZaLrGSDS6xJveu2/o
         QIUNg1GvXmgqb6y75Dh1jFrsaiuiaQcQiyK1M5Em+miZSciqRI/K7tEom4Y5eUt/h8xl
         VgIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058525; x=1700663325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ewZ9xRCba+P0eMIANOBLPqwHZjc7NQgwGPmpIitVuvg=;
        b=ISfuq6mgC4aZtLmstLsgSoOLNXSqGTiREZGaiYd7EjThboIAekTHrD2eDS88soFgFq
         PnGotljoQCCMPkeb9ToPvec9e+dJ3+1sHdEK+jjo+pqgBkeswPhLe7V2lgg5Xrf38OC1
         mTwegocaasnJsoeHrOzeRWoP8jYvL/QjzJlHKt3u0K/nkltiDNUP/inw+yHE7HJlp+0r
         RB5tPJ43V3UUEURuhPhKE2Mkh7qPcrbF87GUYBDDE4Eyesu9j26lX4YG6z6WZ7Z0aO68
         uPrgIdbZLGI0CWR68jS4010q8waFdOiga4rjPTYa4EN0PlAf7lJNuWHo9YnoCJra40GP
         CtvQ==
X-Gm-Message-State: AOJu0YxuHUw62XAGYfZ1r2FcblAFosIegFzcougoC1hDpU57D19KGkl8
	vepuOfzT8FnKgc4XzE82vERtUw==
X-Google-Smtp-Source: AGHT+IFr/Hvgb/Q5rpptKwRVNx5Ia+XXFIsScjiUsfOiX96bVOTiwcLamrYFhGW1obFHCL06cwdmVQ==
X-Received: by 2002:a17:906:e8c:b0:9e5:e9ef:a322 with SMTP id p12-20020a1709060e8c00b009e5e9efa322mr9524778ejf.31.1700058525328;
        Wed, 15 Nov 2023 06:28:45 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:44 -0800 (PST)
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
Subject: [PATCH v2 6/9] irqchip/renesas-rzg2l: Implement restriction when writing ISCR register
Date: Wed, 15 Nov 2023 16:27:46 +0200
Message-Id: <20231115142749.853106-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G2L manual (chapter "IRQ Status Control Register (ISCR)") describes
the operation to clear interrupts through the ISCR register as follows:

[Write operation]
When "Falling-edge detection", "Rising-edge detection" or
"Falling/Rising-edge detection" is set in IITSR:
- In case ISTAT is 1
	0: IRQn interrupt detection status is cleared.
	1: Invalid to write.
- In case ISTAT is 0
	Invalid to write.

When “Low-level detection” is set in IITSR.:
	Invalid to write.

Take the interrupt type into account when clearing interrupts through
the ISCR register to avoid writing the ISCR when interrupt type is
level.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- adapted according to review comments
- improved commit description
- used uppercase letter after ":" in patch title

 drivers/irqchip/irq-renesas-rzg2l.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index d666912adc74..a77ac6e1606f 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -78,11 +78,17 @@ static void rzg2l_irq_eoi(struct irq_data *d)
 	unsigned int hw_irq = irqd_to_hwirq(d) - IRQC_IRQ_START;
 	struct rzg2l_irqc_priv *priv = irq_data_to_priv(d);
 	u32 bit = BIT(hw_irq);
-	u32 reg;
+	u32 iitsr, iscr;
 
-	reg = readl_relaxed(priv->base + ISCR);
-	if (reg & bit)
-		writel_relaxed(reg & ~bit, priv->base + ISCR);
+	iscr = readl_relaxed(priv->base + ISCR);
+	iitsr = readl_relaxed(priv->base + IITSR);
+
+	/*
+	 * ISCR can only be cleared if the type is falling-edge, rising-edge or
+	 * falling/rising-edge.
+	 */
+	if ((iscr & bit) && (iitsr & IITSR_IITSEL_MASK(hw_irq)))
+		writel_relaxed(iscr & ~bit, priv->base + ISCR);
 }
 
 static void rzg2l_tint_eoi(struct irq_data *d)
-- 
2.39.2


