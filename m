Return-Path: <devicetree+bounces-15943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EC37EC536
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB5CAB20BBB
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF7E2E633;
	Wed, 15 Nov 2023 14:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FbMGKCdV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A6C2DF7D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:45 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD973127
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:43 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53df747cfe5so10619843a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058522; x=1700663322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pSo7A/cRaiiHr3AOQm4+M5MDktXUCdSbdXvZTsugMw=;
        b=FbMGKCdVBK/q1uEdDEwrAoWeS/lS9OowEFqLHnlvNv4Ewt4AsV/5pVZYGD4b96+0ox
         QEs3rZvw6VNRdhlAZz3sBffpCDXASzIdrrVJXk5C+7IzDN7OjEWS/r3bmCZQgVK2nkzz
         3b8JjbnsZCP5ZlGv+2QiJKIF3wIVeSJyGsJzxj/TLV2iID34QKG/nOG9p7bi05Smi9fb
         j+hxqkGvxkwpPmPp3c3hj3RhPuAcJr7fMD68oI+4i3D30+ZhWpxnzMNb+vNv9jvjd6C4
         KJM/YaegGwMUYgxDKF4eaZC0IsP31UER4WpNWfZsxHBYVFIgj8wbxwOw7mtEk3GtZqQc
         PQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058522; x=1700663322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pSo7A/cRaiiHr3AOQm4+M5MDktXUCdSbdXvZTsugMw=;
        b=TjwVhJeUvcEYWewotS/me2Il+1Ve1x+CmmFe7btC+7fVQqqVtsvishI3gojetQVtdp
         8fgWLu89Ed+44vkdu6t/s+HPI9ZMaU9TVD/PwPQvx4OvvDM/nVmrqregAsCeBk5MqYTP
         VS/i/MX5+nfIzVQnc2cm1hYleKRHu+OIQU/6frv0X+ab8B4L8egGUNLcVXUsB9v4nSkV
         I+IlRlNOwO8dmdCQHjlp/Tn2wYcsiytFts8DQkI+wFYzOAFZB/lVjWHlRsWChKKPkqQ+
         aTxptFNOOw8MLYPixh31rbBGfXeSjJp8ul+/cPuV4dGVrpKe5O7ZmeshnfnrsfOE2A30
         UVtw==
X-Gm-Message-State: AOJu0YwKFsKAkBqQ8edyOIWeJcrM84kcxX83cYf1IjvFRPAyaJH8LFKG
	nbCe5H8VptSG9kcM5B3ikEsecQ==
X-Google-Smtp-Source: AGHT+IFtuAr4bSPIlt3KKN4kkvsZkdii103x3XEI8Hp7Lij+rtSttP7xjPk9knXbTEZyrwKB08gSMw==
X-Received: by 2002:a17:906:a3c9:b0:9ae:74d1:4b45 with SMTP id ca9-20020a170906a3c900b009ae74d14b45mr9891110ejb.65.1700058522289;
        Wed, 15 Nov 2023 06:28:42 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:41 -0800 (PST)
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
Subject: [PATCH v2 4/9] irqchip/renesas-rzg2l: Align struct member names to tabs
Date: Wed, 15 Nov 2023 16:27:44 +0200
Message-Id: <20231115142749.853106-5-claudiu.beznea.uj@bp.renesas.com>
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

Align struct member names to tabs to follow the requirements from
maintainer-tip file. 3 tabs were used at the moment as the next commits
will add a new member which requires 3 tabs for a better view.

Link: https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this patch is new

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


