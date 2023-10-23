Return-Path: <devicetree+bounces-10874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C61A7D2FA0
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 25A1FB20CF2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4458214A84;
	Mon, 23 Oct 2023 10:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZRHh/8fT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B4F1427F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:22:57 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C70EC188
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:22:55 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso26937345e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1698056574; x=1698661374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Z3b5R3aVTqODhp8NQxqeuw9pHs0voRMGZXxgXHi6Uc=;
        b=ZRHh/8fTc+bG5lyErmfv3eNjCjr5VDO8Xod1FwiHOqr8/YDJYHg8+dvRmfSY2CSrud
         UzJ4ElchPZ87xGsoOZfr31KL1QOKvcFejmj/cydrg0hrKMNgVz8qepwb4x7M1W+oZ5sI
         ynqzVVTiUeP2hqeBKfO8DlY/K9r3MZtZyDP3R721G6E+Ub433CMOioLI5pDPOvd3vCvw
         QCJg1bJ/OLBG5vqgZbuwFbkWuD5/vcH4FbGf8SmhwhdYf0RMGa916RJVy9WPbIQVvmF1
         1pp8bvtZieM3HGma12E5EiBOeNFQmJEt9F3uPCG7H1AArM+3g8huU7+gOtLiBv/ADhPC
         pL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698056574; x=1698661374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Z3b5R3aVTqODhp8NQxqeuw9pHs0voRMGZXxgXHi6Uc=;
        b=VVjZe6VGZSz9uyuFTQP6L3lPB7aMh1sGdu6VjrWqJIpH1gXS7Py30lxe3l/PkgOmrl
         C6vRib8U+MAftj5LZUWwDJ1C3ik6e0xPM8pBG4rZUf8AAmfsilTpj6v1MT4Qb73XxQfr
         QzjUNQNutYrW+em9y7yICytokLS9gn70joMCfNMy0c+71J0parRUNgCkc7KIqg3ZQ47X
         Afi634x9vPwbBgzgv5b/EQPPq8lfAipDyHPR4YPAQAzKZDwNEQL+d6l2dmc2h1glQ+3S
         6f4vc1E+PH9RZMx+h7+tKIFTDxwKaKf/hTCDp12c/A9IKxBY9aiJw6HPCgLge03m8t9r
         36xQ==
X-Gm-Message-State: AOJu0YwalWnFUMov8ECihr7FWWc2rhUjJ+sCm7GECLnD0+m4G+9wC/ky
	IFrpr6t40mAD6iXIVDcVeTSPvQ==
X-Google-Smtp-Source: AGHT+IFPNP9wFXpWAeNUc8oSbtz4KZ3/HL1DkO3btuCTk2wBwJPnDj961HvE0OE5JIunNgsa235u5w==
X-Received: by 2002:a05:600c:a47:b0:408:3e7a:82ea with SMTP id c7-20020a05600c0a4700b004083e7a82eamr7010065wmq.1.1698056574124;
        Mon, 23 Oct 2023 03:22:54 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.185])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b0040596352951sm13593275wmf.5.2023.10.23.03.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 03:22:53 -0700 (PDT)
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
Subject: [PATCH 3/7] irqchip/renesas-rzg2l: add macros to retrieve TITSR index and associated selector
Date: Mon, 23 Oct 2023 13:22:19 +0300
Message-Id: <20231023102223.1309614-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add macros to retrieve TITSR register index and associated selector.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/irqchip/irq-renesas-rzg2l.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index fe8d516f3614..9ce0d6d67486 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -28,8 +28,7 @@
 #define ISCR				0x10
 #define IITSR				0x14
 #define TSCR				0x20
-#define TITSR0				0x24
-#define TITSR1				0x28
+#define TITSR(n)			(0x24 + (n) * 4)
 #define TITSR0_MAX_INT			16
 #define TITSEL_WIDTH			0x2
 #define TSSR(n)				(0x30 + ((n) * 4))
@@ -45,6 +44,8 @@
 #define TITSR_TITSEL_EDGE_FALLING	1
 #define TITSR_TITSEL_LEVEL_HIGH		2
 #define TITSR_TITSEL_LEVEL_LOW		3
+#define TITSR_HWIRQ_TO_INDEX(hwirq)	((hwirq) >> TITSR0_MAX_INT)
+#define TITSR_HWIRQ_TO_SEL(hwirq)	((hwirq) & 0xF)		/* 0xF = TITSR0_MAX_INT - 1*/
 
 #define IITSR_IITSEL(n, sense)		((sense) << ((n) * 2))
 #define IITSR_IITSEL_LEVEL_LOW		0
@@ -185,12 +186,10 @@ static int rzg2l_irq_set_type(struct irq_data *d, unsigned int type)
 
 static int rzg2l_tint_set_edge(struct irq_data *d, unsigned int type)
 {
+	unsigned int hwirq = irqd_to_hwirq(d) - IRQC_TINT_START;
 	struct rzg2l_irqc_priv *priv = irq_data_to_priv(d);
-	unsigned int hwirq = irqd_to_hwirq(d);
-	u32 titseln = hwirq - IRQC_TINT_START;
-	u32 offset;
+	u32 index, sel, reg;
 	u8 sense;
-	u32 reg;
 
 	switch (type & IRQ_TYPE_SENSE_MASK) {
 	case IRQ_TYPE_EDGE_RISING:
@@ -205,17 +204,14 @@ static int rzg2l_tint_set_edge(struct irq_data *d, unsigned int type)
 		return -EINVAL;
 	}
 
-	offset = TITSR0;
-	if (titseln >= TITSR0_MAX_INT) {
-		titseln -= TITSR0_MAX_INT;
-		offset = TITSR1;
-	}
+	index = TITSR_HWIRQ_TO_INDEX(hwirq);
+	sel = TITSR_HWIRQ_TO_SEL(hwirq);
 
 	raw_spin_lock(&priv->lock);
-	reg = readl_relaxed(priv->base + offset);
-	reg &= ~(IRQ_MASK << (titseln * TITSEL_WIDTH));
-	reg |= sense << (titseln * TITSEL_WIDTH);
-	writel_relaxed(reg, priv->base + offset);
+	reg = readl_relaxed(priv->base + TITSR(index));
+	reg &= ~(IRQ_MASK << (sel * TITSEL_WIDTH));
+	reg |= sense << (sel * TITSEL_WIDTH);
+	writel_relaxed(reg, priv->base + TITSR(index));
 	raw_spin_unlock(&priv->lock);
 
 	return 0;
-- 
2.39.2


