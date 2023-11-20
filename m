Return-Path: <devicetree+bounces-17070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E207F11B1
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 935DD1C21223
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3488F1427A;
	Mon, 20 Nov 2023 11:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FFiMjGl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D76510F1
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:35 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40853c639abso15052345e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479113; x=1701083913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqTdxNbR3DIWsz90mETj0syANj+j4DLCa1dx7/EKSLU=;
        b=FFiMjGl9DXP9ZUo53s3400ANiQ+OJGY3XLbwLiILiFV9AbFMt6wCcVYc4BoohCzbf4
         Z+60P10VHsScbMoV/s1DShDHhGQmD8rLou4CSKpJysI3/Ie7AA6H3KQaJ3V0Wk9vD9HU
         GoJ9rASMn+Sad3cl9vXzHHvW2bhSzHBP+jplDpgxFixsQKFkWv4T2Z7lthd18fdUZ0U+
         cZpMMeYHmKpXU9tM1VJ+UOwjAdRqwNKUJpOjJQcU78yAaZtxg8Cg/yjGePfalkN/lZRg
         V5P0m+rBn9WP0/etgRYPZz6sj0nFA+ibtjR9GCJNJchfIK1K2e9dGuWj8v95Mb32E36O
         ruJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479113; x=1701083913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fqTdxNbR3DIWsz90mETj0syANj+j4DLCa1dx7/EKSLU=;
        b=ZFm3PPb+a9tEldR4e/O136vn+kZomzdZ18PaBE8E3nYdrWN4vOwWlXSwemGCEWqiY3
         +lDes57ig7PnF3ncpUo+xCaRy0RmBn0rMRb0BpH1WW6MVs4l5AEXhrltTZy3JUcNRuem
         S1PuP+p5qqTKlTQZLxix88Yt6/NZnopQN/s/X3E4HLWHogHNtXunxYgz2iLXzB1iz9W0
         z4UyaGITytyBS9UFnQzQUugJtSebusN7XUfZ1KEzxEKlNhi/VwDu6Vak2pB2EOKVAwB5
         VGfj0tFavif2duJ5ovQvEFMy8YWe96j+bA+3LWU1yMqiUufl3a5uvaAZFYR5qY7mNIUW
         MeWg==
X-Gm-Message-State: AOJu0YzxxV669bmH061ZKCmE0KiIQZybJnrJMkud1DXxhkZIuIYLB+ib
	geGlWUVuXE8ztOJGLVV1cRn7sw==
X-Google-Smtp-Source: AGHT+IHgzpzdAPQRoTygB2X9zpY2EXIcjHCka24fPfFIsh88xrSV88jkI8f1ygKOgzJkWwOk1S4GeA==
X-Received: by 2002:a05:600c:4752:b0:406:52f1:7e6f with SMTP id w18-20020a05600c475200b0040652f17e6fmr5869517wmo.12.1700479113644;
        Mon, 20 Nov 2023 03:18:33 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:33 -0800 (PST)
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
Subject: [PATCH v3 3/9] irqchip/renesas-rzg2l: Align struct member names to tabs
Date: Mon, 20 Nov 2023 13:18:14 +0200
Message-Id: <20231120111820.87398-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Align struct member names to tabs to follow the requirements from
maintainer-tip file. 3 tabs were used at the moment as the next commits
will add a new member which requires 3 tabs for a better view.

Link: https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/irqchip/irq-renesas-rzg2l.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index cc42cbd05762..90971ab06f0c 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -57,9 +57,9 @@
 #define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
 
 struct rzg2l_irqc_priv {
-	void __iomem *base;
-	struct irq_fwspec fwspec[IRQC_NUM_IRQ];
-	raw_spinlock_t lock;
+	void __iomem			*base;
+	struct irq_fwspec		fwspec[IRQC_NUM_IRQ];
+	raw_spinlock_t			lock;
 };
 
 static struct rzg2l_irqc_priv *irq_data_to_priv(struct irq_data *data)
-- 
2.39.2


