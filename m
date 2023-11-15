Return-Path: <devicetree+bounces-15944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 818287EC535
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B29C91C208DF
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF262D7B1;
	Wed, 15 Nov 2023 14:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="S6HvP1hg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51172E637
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:46 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 222F3132
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:45 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9d216597f64so1033705166b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058523; x=1700663323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7Hw9o7TS/Xej42E1buaGJPREqe+QW0GFOlVV5jy/SE=;
        b=S6HvP1hgCb0W42VuaJSX4AnA3o0X065CLpwzFxlfTLf0Otyl98ieMSGnaxAgr6oQwT
         EuYE3LKhLEt/v+kWYgmeidwuyAkkoRdrWteUmEn7vD36lf9BiKHRZKGGoI8oxyp4esgB
         w+4O8YOdpYQbgr5A+Zi4bt9PUGmITsNnwJ0xJWWUIbzYOrE3A+jXiVTTxx58CCO5DD8g
         YndBVIhRtAPsbKA7ODTbdGCbzA//wDU6gH0N2iyX7CKEzW2WGLwKMOYoRlS7kDZgq2Lv
         a7j9gVuij6IkbvgLAEANUnazwE8gdjahdryeBQnkfy9uDejMWyhvjWgfBqw62dXq8+Cg
         C2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058523; x=1700663323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r7Hw9o7TS/Xej42E1buaGJPREqe+QW0GFOlVV5jy/SE=;
        b=WGqTHZxwFeIWkfrNhr/hjMSm+mU6D61Zm+6aFiAlKexur2usGt/3kfkZchyny+utcj
         beNqPNf6Aov74QGIWYrSuF/qSB7UaY2IJptWMcy9tFbuNzknOF+QYYDf1zm/2vS0E7WP
         1ZQvmZwQlMf0dj70A6n6//vYW/LFSxxA9M8f3Gztx6TBQeBaWzgV8uTRufPKLnIKmeaY
         C/b6ZGo8nnmasQXsO/PE76w8A4GOQbKWKgLdYf6EdQ4FalBUIwa+mzU3w3kLaoR09BG3
         qDk6MbBMGve+TLVlisACI/YfFjWfeR4D/kpSsOefnX3QIxTk0SkunUrSKY9Nw1ulnMdd
         vxkg==
X-Gm-Message-State: AOJu0YzMnAIs8w69F9PzBQzyNaaXk462uNpve6yx34m2p4klHWDWVHfn
	fLHoCvH27HwEt1qoSC5asSfkEQ==
X-Google-Smtp-Source: AGHT+IE4l9dM5Czih/3QK37kv9B6Zex7R+xmjQUgr3pcKqtHma3uatRNTil9z6jZ7X6iHucmqLcfPQ==
X-Received: by 2002:a17:907:6d15:b0:994:555a:e49f with SMTP id sa21-20020a1709076d1500b00994555ae49fmr13465601ejc.31.1700058523675;
        Wed, 15 Nov 2023 06:28:43 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:43 -0800 (PST)
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
Subject: [PATCH v2 5/9] irqchip/renesas-rzg2l: Document structure members
Date: Wed, 15 Nov 2023 16:27:45 +0200
Message-Id: <20231115142749.853106-6-claudiu.beznea.uj@bp.renesas.com>
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

Document structure members to follow the requirements specified in
maintainer-tip, section 4.3.7. Struct declarations and initializers.

Link: https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this patch is new

 drivers/irqchip/irq-renesas-rzg2l.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index 90971ab06f0c..d666912adc74 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -56,6 +56,12 @@
 #define TINT_EXTRACT_HWIRQ(x)		FIELD_GET(GENMASK(15, 0), (x))
 #define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
 
+/**
+ * struct rzg2l_irqc_priv - IRQ controller private data structure
+ * @base: controller's base address
+ * @fwspec: IRQ firmware specific data
+ * @lock: lock to protect concurrent access to hardware registers
+ */
 struct rzg2l_irqc_priv {
 	void __iomem			*base;
 	struct irq_fwspec		fwspec[IRQC_NUM_IRQ];
-- 
2.39.2


