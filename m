Return-Path: <devicetree+bounces-84990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CEF92E780
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EAE7287270
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3297B15E5A6;
	Thu, 11 Jul 2024 11:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CRxq/L8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA4715B97A
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698747; cv=none; b=eacSGWP98n/+q6jPBpX1wk+RD2Nz68XUi1f8wU0phKiwpSSdeeL5SyxtnbYJRH/TP8HOhgazyAmW4xr2i84LskSKBoAmb4fVgKs3VJjvkj8jCyFPm+Nj0Dq+avF745NLJJ+D1M8QkAN2GytQzBLSa6pZAp3YRizvCIrpF7ZOiC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698747; c=relaxed/simple;
	bh=vXeOGQW13UHiBYndzGR+Dr9q4i6xkyO4A3nY9yFF+5g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kwpEjFjGKOWm40kqpUsHD9uGnEFePJf1nyfGnVIipv5g60ghnEd0oU6r9/ncH6v3bap9YVT7HVsBTLfkA3Fc1JVC1JR8BmCRrrieH0F1jW0tT4IW8fIoXrZm5R2Khte0nGGvozugufZ87eOFZsYeMhl24/gTFqRksXGmh+bqC3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CRxq/L8V; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-36798ea618bso427959f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720698744; x=1721303544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DIe/2wyiRMFN/ZATZgEI72awZ6C43WiVN9rWYLEAz14=;
        b=CRxq/L8VUP/PCSLwSVC3YzzCSQKVNRDSj0ff/u34haM5pqS2X317SdrrrWu1Bi2qcY
         Wru0R5PIi2/307eKGrTF087UBVaacy0Pm+9Eu0dvc9oBOeHa0NINasz3Ktl0oDA1nniI
         jUcTY9qCZpblFmg/ERCcwIg3X/4uQabvLDZUnsgEnHLznsupvRLhdsiy4k8Rs1KlU4I4
         lbXzPjuC/o1yXt/c123tlKqazMiMu/LcZLkIYftdgwoJG1ruKDObZIxQbDOErfNA4lim
         jRvj3kC6lORDVxRZRkZpzJoyH7jQdReO6Mlo8prtdGMa6TidM0fkMRrU7ED+vaN9hciw
         fdmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698744; x=1721303544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DIe/2wyiRMFN/ZATZgEI72awZ6C43WiVN9rWYLEAz14=;
        b=F/42JK7wsLa8pIsCaghJACARnZDgQdFtNl62PoPFcAZuqE9/4oNRNvg5PGhdVibvBC
         RhhOxKiUJtIa7t9ar9e0vikfIsoKzPjIw9dDeaaD3feDhVR+99+3Vk6P4BCvn09rJVkI
         Jr7fu8nXLaeZhngy1abDEPgQFlWQMX3DFkRpKuKD3NEERXOmfzuI8cabwRqehSUbNUm0
         PMpMgLNpnBCCzs5ODLXEkHeggVIFZYVVhVmztn07in5+rnG1wpYIhNgYKzGxZ0QK3XKq
         MRm1qoSkwGnyBo/8sMeWb+3OgaS+lstf/ycJ10MBLxZZd5e/gRJT/v0ovtrORt/qqmKc
         rT6w==
X-Forwarded-Encrypted: i=1; AJvYcCWSYScfYqsywy+sh3AcUI0cwv6lLCpaEetGBhNbuqkA/es+SbEpJBznKrmnQNNNNZtnPpnsy8tqjAnQlbVj9x0l4iL+NS/nAbT10A==
X-Gm-Message-State: AOJu0YwRLlr9X/1QhN0zjIAFGZ0zdx5hGCipmRhdnQkA5IluAA6FkhrH
	FHik52azaWsY31tdqc8ttKJBdrC/2c9GDA31H9u8zTM7td3Lq3PONtArREFLFmU=
X-Google-Smtp-Source: AGHT+IGsdmzSmTq3MHux9eVYyf1a0f5p8mg+09GIY32npduG7FDXmIw97IuS47QnYpZn3HCBjAS0sQ==
X-Received: by 2002:adf:fdc3:0:b0:366:ec2c:8646 with SMTP id ffacd0b85a97d-367cead10b1mr5580796f8f.43.1720698744108;
        Thu, 11 Jul 2024 04:52:24 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891cesm7615728f8f.62.2024.07.11.04.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:52:23 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 03/11] i2c: riic: Use pm_runtime_resume_and_get()
Date: Thu, 11 Jul 2024 14:51:59 +0300
Message-Id: <20240711115207.2843133-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v3:
- dropped error message on pm_runtime_resume_and_get() failures
- restored initial place of i2c_del_adapter() in riic_i2c_remove()

Changes in v2:
- delete i2c adapter all the time in remove

 drivers/i2c/busses/i2c-riic.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index af7edc26462c..068f90ecf27e 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -133,10 +133,12 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	struct riic_dev *riic = i2c_get_adapdata(adap);
 	struct device *dev = adap->dev.parent;
 	unsigned long time_left;
-	int i;
+	int i, ret;
 	u8 start_bit;
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
 
 	if (riic_readb(riic, RIIC_ICCR2) & ICCR2_BBSY) {
 		riic->err = -EBUSY;
@@ -301,6 +303,7 @@ static const struct i2c_algorithm riic_algo = {
 
 static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 {
+	int ret;
 	unsigned long rate;
 	int total_ticks, cks, brl, brh;
 	struct device *dev = riic->adapter.dev.parent;
@@ -379,7 +382,9 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 		 t->scl_fall_ns / (1000000000 / rate),
 		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
 
 	/* Changing the order of accessing IICRST and ICE may break things! */
 	riic_writeb(riic, ICCR1_IICRST | ICCR1_SOWP, RIIC_ICCR1);
@@ -498,10 +503,13 @@ static void riic_i2c_remove(struct platform_device *pdev)
 {
 	struct riic_dev *riic = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
+	int ret;
 
-	pm_runtime_get_sync(dev);
-	riic_writeb(riic, 0, RIIC_ICIER);
-	pm_runtime_put(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (!ret) {
+		riic_writeb(riic, 0, RIIC_ICIER);
+		pm_runtime_put(dev);
+	}
 	i2c_del_adapter(&riic->adapter);
 	pm_runtime_disable(dev);
 }
-- 
2.39.2


