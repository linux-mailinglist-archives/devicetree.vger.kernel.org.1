Return-Path: <devicetree+bounces-17073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEEB7F11B7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A48E1C2175B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191C01429B;
	Mon, 20 Nov 2023 11:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gi15J+Hc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9138510F7
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:36 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40838915cecso14919665e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479115; x=1701083915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqGjAGh4CKyy6nggCnS+RNoaOYdNw7jP+033IkTDbaA=;
        b=gi15J+HcQvbepVqOCaFZsE+HwH8glyFd9oupueA1mn1Oq+vRSjqaa1uv/XdhRMrPyT
         fN0L6T034H5pcGa0mc8NVYS6fOrayE5w4h6ctbHa8CRWWICl1nAPHDOTwWT4jAKdzy5i
         1oUbXpyj1lTuQTdT2Xk2yVetjhn2Vmn09ZELJqhqMJ8lMHW0pxmDPlYYLahRyxntNtkE
         bawYDs2jLD6yju1VdiGVQK3XeHIp7qxzZa2jvz8PHagrPUZ6X0T4riIhGqNgOkS6Z0+w
         M/M7U1b1A8hhN3ii9lSvobE+CADxbbAhWabaTu3OyZL0Ms0Jc5ZJAVw0RK0fogfFQupW
         9CBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479115; x=1701083915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqGjAGh4CKyy6nggCnS+RNoaOYdNw7jP+033IkTDbaA=;
        b=oFsP0pUSG+eH5h0/QKfZaU9LPScauopdZSSI5PeZRBTx+AqNLLwMiMODHWiqHpTa7n
         9T2R0rH7uVVtJoXvxQT37X2BsxO5CVUdL4qbezxHWQKfvckXt3dR6vHhdPn8w+PTqgGe
         XIO0RwZORHA64BFwLXSIecQ+JA+GsF2cNL2qZujDIjKyI74+0A1x3fjKbXDqXqVWDlBt
         2zDeQiFWLEMDAylL+4cIvzXtsJZU80ekrezxt5K/wS6gmAguJTX9zV5+cJ8SifVmkdWp
         Z3mmhZ4Dy8/Oqek6HOi0wb7NajscaDhOliZmpcXXjQdwjnquCVwBAZfKl7EkkrF3ystM
         2aUg==
X-Gm-Message-State: AOJu0YzYeeGh4jJ2LBxcnTHkrZbaIiS/ydJ+slXCEMSvgxNsSnMix+ea
	QG8plWqRhIjgDC/ylUaG+tjBhw==
X-Google-Smtp-Source: AGHT+IFwee0RbxTWFSj/lIhD5S5cVpFwg/mR026a7EYJzWpnZC1lfGCpTao9S2IGVkR3x0ZZ2BBNHg==
X-Received: by 2002:a05:600c:3555:b0:401:b204:3b97 with SMTP id i21-20020a05600c355500b00401b2043b97mr5468250wmq.4.1700479115107;
        Mon, 20 Nov 2023 03:18:35 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:34 -0800 (PST)
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
Subject: [PATCH v3 4/9] irqchip/renesas-rzg2l: Document structure members
Date: Mon, 20 Nov 2023 13:18:15 +0200
Message-Id: <20231120111820.87398-5-claudiu.beznea.uj@bp.renesas.com>
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

Document structure members to follow the requirements specified in
maintainer-tip, section 4.3.7. Struct declarations and initializers.

Link: https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


