Return-Path: <devicetree+bounces-15946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 903147EC539
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0E2A1C208D1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40142E41F;
	Wed, 15 Nov 2023 14:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RXLyfsxc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168C12E3F1
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:50 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC848134
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:48 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9df8d0c2505so186694266b.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058527; x=1700663327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z9yO45tOqTYayZtKLR1BCN+tgvteMMBPPdveLUMBPoE=;
        b=RXLyfsxcWw4Pm1AeeIUTy7ouOQmIIbEdXR60B7qQ0+MAZj7CrcSgP7uoJVyWunxErP
         cDfEuvNClbJCtBhmqdoMIZGZ0Qb47mhtKP17ErCtrJmieU7gInXOn+En4MCdheR/d2YU
         HXNz2QVrUC/EvalaifPZxXfVTYcEC/OD23v71/HWncfFiIj9/+5dl2larhOsxEC4/lQi
         YfFXsHbMQ4j0tef5nRnGM7HZWKnmB2rsbG+At8lfxLUNoRlHJgn8VRs0WOSn6VGeGF/H
         GzpVl4eLlVFpHNHtGX49OL8NrUaJk/Nm4jWWRilaNRHZ0dA6YST9PnuEyv6kZZRXDNgF
         T01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058527; x=1700663327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z9yO45tOqTYayZtKLR1BCN+tgvteMMBPPdveLUMBPoE=;
        b=Iq2FnN+CWp4kxCFQAxVtCdcxElRWbFpb676vlHbAYAXsJi4VzMqkkkIV9ypHP030mr
         CIenm1oCZl4a/uBp/OAdW8es0aPAdGH2EXGAgGboa5dowLKPvzoqQrvnqsjmdzQ6LLBe
         hB8cx6+CABfTGf9pM3UOnk77b8eUzqp92BT3jEe9uKTcqhkqiqocF61MtjLsifcjUAdO
         8Xc4P4N38CoNZ5O9V1hYtYKPOg5t6YLPf4CnKIwZ9tYw0ljgVZP02shva4uyZDYsb2lB
         zgmio1bUy02AmtluPCXQmHRlF7WgPBCyOzn8xfs6jSw5htTp5huctB/04EcSgXNHdSzL
         HDGw==
X-Gm-Message-State: AOJu0Yx9axSTpjnlshG7j++7Z/q8DbXzrhtgovvlfJ/eXC3LnMkjimlc
	tIgHrFIA4htmnpLalQCJ9b0I1w==
X-Google-Smtp-Source: AGHT+IFBU4slTOl6jyBO4mtXPQTN97I0/D+ZxHjdUzWRNvFQAZVsgjvaoRCvC1QzA/fV3kOaRttPUw==
X-Received: by 2002:a17:906:3588:b0:9c3:97d7:2c67 with SMTP id o8-20020a170906358800b009c397d72c67mr5169418ejb.25.1700058527190;
        Wed, 15 Nov 2023 06:28:47 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:46 -0800 (PST)
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
Subject: [PATCH v2 7/9] irqchip/renesas-rzg2l: Add macro to retrieve TITSR register offset based on register's index
Date: Wed, 15 Nov 2023 16:27:47 +0200
Message-Id: <20231115142749.853106-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There are 2 TITSR registers available on IA55 interrupt controller. A
single macro could be used to access both of them. Add a macro that
retrieves TITSR register offset based on it's index. This macro is
useful in commit that adds suspend/resume support to access both TITSR
registers in a for loop.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- improved commit description
- used uppercase letter after ":" in patch title
- kept only the macro that returns the TITSR offset

 drivers/irqchip/irq-renesas-rzg2l.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index a77ac6e1606f..45b696db220f 100644
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
@@ -200,8 +199,7 @@ static int rzg2l_tint_set_edge(struct irq_data *d, unsigned int type)
 	struct rzg2l_irqc_priv *priv = irq_data_to_priv(d);
 	unsigned int hwirq = irqd_to_hwirq(d);
 	u32 titseln = hwirq - IRQC_TINT_START;
-	u32 offset;
-	u8 sense;
+	u8 index, sense;
 	u32 reg;
 
 	switch (type & IRQ_TYPE_SENSE_MASK) {
@@ -217,17 +215,17 @@ static int rzg2l_tint_set_edge(struct irq_data *d, unsigned int type)
 		return -EINVAL;
 	}
 
-	offset = TITSR0;
+	index = 0;
 	if (titseln >= TITSR0_MAX_INT) {
 		titseln -= TITSR0_MAX_INT;
-		offset = TITSR1;
+		index = 1;
 	}
 
 	raw_spin_lock(&priv->lock);
-	reg = readl_relaxed(priv->base + offset);
+	reg = readl_relaxed(priv->base + TITSR(index));
 	reg &= ~(IRQ_MASK << (titseln * TITSEL_WIDTH));
 	reg |= sense << (titseln * TITSEL_WIDTH);
-	writel_relaxed(reg, priv->base + offset);
+	writel_relaxed(reg, priv->base + TITSR(index));
 	raw_spin_unlock(&priv->lock);
 
 	return 0;
-- 
2.39.2


