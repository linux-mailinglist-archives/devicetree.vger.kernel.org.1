Return-Path: <devicetree+bounces-78407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A90E1912353
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03B22B23B20
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACB517624F;
	Fri, 21 Jun 2024 11:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GeZynVUt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B69A176220
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969006; cv=none; b=tBk/SLrUBVP9bRuJIwBDmnjHEzaFB4VXC35JiqhZ0P3RBIJmcJuiD7KBFJ0U28vmpHe+OK3GnqsSAv9C0afpyhyyY6VsBhUQMMRf5kHUJ16V95YxzUp0zc7j0Gou2l3mpeIh3yi5QVlHc3aMyIrFZJqUjE6ADOKoKG8m0BFNKHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969006; c=relaxed/simple;
	bh=S1hm/Q+NuAcT9nxD/pVjadLD+I32CWUrwiArUqlGHZ4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m5/Or5rdEkkdrSs26Ni0liNpKvHNA4VicHh/NkHBOeftPG8dAJtDS6XGaCmeONZ0qTGKRvDemgAKPgDf3mu/W2UOyTNWsQE05vy17ybq35HX4ZF0H2GuijFZEXJyjWbRo8U+sgD2KAARRX9Ahf9u77gT9IUbqfbU/gCZiB4sLbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GeZynVUt; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so227399366b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718969002; x=1719573802; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Q2S7HvfURtpVg3mGnjpDhomnr+bQTG6duN65cLSQuA=;
        b=GeZynVUtyNJ7ICUa+oeTYkvg05nCPYCHKrpxNRu4oAGR1PUDDW8QksNp7RoW9xMo47
         EVz3gZiymrJhwTrnfKlyVGH2MZpCmoJ0RI45l0Kotpu88fhvliOoKIRMCEOv91KxcF5+
         BI4pSgZ5Ajtn50Aw79Sg914/BstzazII0MW03GrTQBlX9tKzVDSK7v3MASrWpl8f4T2M
         rbCTY2T0gJ0zNPi+KBTWvL0stojZ+1T6SRt9yTX1rRuY8GnI/d+Wt/8d79enhuz25WM4
         FbljAahvZX26/5fSR1nDXCwi+KXZmZMANLYoPlz2PEqwV7+KIXshqcXjph6CVjXIZh8z
         ADMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969002; x=1719573802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Q2S7HvfURtpVg3mGnjpDhomnr+bQTG6duN65cLSQuA=;
        b=q5VrZu1bs08z5E4Xz2VrAQCo7Lzu0lm8hIdkZ5FTW5gOvufLja40Hck1Z1m6DO6aBc
         FGbzpNRtk9dVt4AvYzKfS47bVJR/UmHgeN4BNjMuVG8Fq/PeoY/J/30+fT0S1lgRYyCq
         ZsnVFwAz/oVzDBqo+jNCtvJbc8A/VN2bD1lpm/dF+pucvTmee1QyOdktCwW53MjvGepN
         1eAzPqJpcH686H75HM+k+GoCxyqMFVrVctXTgl+idBsh48FBytQn0e0O0y123jBXPwHU
         q27d81lJzfR2T0lYKku01e6YG28+2tb8B6/8ZfBaA2TCAAYyOYQYnZdaudUGM0LiZM4j
         b+wg==
X-Forwarded-Encrypted: i=1; AJvYcCU/b0xxx1A/J+EFZZIW3KMQkfdEbGD1wVJ9g+zDqRv0a412ThD1zgoVwUSP3gP/bC6t1fDGg5NiaWmtNmKLWlCv5aXR5sa3gUZRWA==
X-Gm-Message-State: AOJu0Yy6shjIe5iw8xuZQS1iYtY7XYnVfGxXNvzGPuO/uoFGNMoqAPju
	URiarzP9Bq1LrOoDLw/qU9ej8do1eQk4ucP5HTvNDqXCfjKo7VlV+QBoQGNNu3M=
X-Google-Smtp-Source: AGHT+IFBywlMwo6ddeYYu3/kNuX5vO5gDzF03oKjx3N6oQ3I7NwLK+CukGLkpEtNcx6M4DcPC6fEDA==
X-Received: by 2002:a17:906:c385:b0:a6f:5fc2:fe8b with SMTP id a640c23a62f3a-a6fab62f61dmr408251266b.32.1718969002596;
        Fri, 21 Jun 2024 04:23:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:22 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 04/12] i2c: riic: Use pm_runtime_resume_and_get()
Date: Fri, 21 Jun 2024 14:22:55 +0300
Message-Id: <20240621112303.1607621-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

pm_runtime_get_sync() may return with error. In case it returns with error
dev->power.usage_count needs to be decremented. pm_runtime_resume_and_get()
takes care of this. Thus use it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/i2c/busses/i2c-riic.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 83e4d5e14ab6..6b739483ef37 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -113,6 +113,8 @@ struct riic_irq_desc {
 	char *name;
 };
 
+static const char * const riic_rpm_err_msg = "Failed to runtime resume";
+
 static inline void riic_writeb(struct riic_dev *riic, u8 val, u8 offset)
 {
 	writeb(val, riic->base + riic->info->regs[offset]);
@@ -133,10 +135,14 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	struct riic_dev *riic = i2c_get_adapdata(adap);
 	struct device *dev = adap->dev.parent;
 	unsigned long time_left;
-	int i;
+	int i, ret;
 	u8 start_bit;
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret) {
+		dev_err(dev, riic_rpm_err_msg);
+		return ret;
+	}
 
 	if (riic_readb(riic, RIIC_ICCR2) & ICCR2_BBSY) {
 		riic->err = -EBUSY;
@@ -301,6 +307,7 @@ static const struct i2c_algorithm riic_algo = {
 
 static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 {
+	int ret;
 	unsigned long rate;
 	int total_ticks, cks, brl, brh;
 	struct device *dev = riic->adapter.dev.parent;
@@ -379,7 +386,11 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 		 t->scl_fall_ns / (1000000000 / rate),
 		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret) {
+		dev_err(dev, riic_rpm_err_msg);
+		return ret;
+	}
 
 	/* Changing the order of accessing IICRST and ICE may break things! */
 	riic_writeb(riic, ICCR1_IICRST | ICCR1_SOWP, RIIC_ICCR1);
@@ -498,8 +509,14 @@ static void riic_i2c_remove(struct platform_device *pdev)
 {
 	struct riic_dev *riic = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret) {
+		dev_err(dev, riic_rpm_err_msg);
+		return;
+	}
 
-	pm_runtime_get_sync(dev);
 	riic_writeb(riic, 0, RIIC_ICIER);
 	pm_runtime_put(dev);
 	i2c_del_adapter(&riic->adapter);
-- 
2.39.2


