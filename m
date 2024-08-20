Return-Path: <devicetree+bounces-95162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1782958410
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE5C31C247CA
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D722018E748;
	Tue, 20 Aug 2024 10:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VMS5VtPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090E818E033
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149178; cv=none; b=aUY/92v/NqFOHUr4MCeaYw53ppiwgjvJC4a9yqjgAD3msEtr2BnxRg+OembwAmvfMQo1oUw8fbNVjDQMdYq1Fs0e83DYEjC1WVfItLxGNu5lKCM8AXSYwzHCtZycjjPsvHSdDnYz0yI4R+oJniYoiEgp8rHJmb3dsa7a8ZsKtM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149178; c=relaxed/simple;
	bh=vem8p96L0oMWQEyldLlJtpVhQ994QqnmR0ohREVf2Pc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HMsTubwNGvA8u7+lvkMBGpl5vlGPba/RRzCv54pebl1UB8d1e1mrNZia3RZnOHubBPZ6RBSEBZewv5nWceEylPFr81pzly/xJkL9FF+JQrFqBCQlR/lARQY8bSR/aNrZKYTx6dF5eyVH6U2ZbovIa5VTIwf7a85z+t2SF1z78BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VMS5VtPj; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f3e071eb64so27791841fa.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149175; x=1724753975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ks+2YRAyKgKRE43sjfM9QF4KPwZ0caq5YtrlIAthty4=;
        b=VMS5VtPjE70UurK+Dk/MxfZbykcsfzo5d+1YEodewel6ocBpfJa3ZqDJyNObe/v6hC
         r23YYCCNJXkBOTibds8f3Wab+0WaiGLEZtfzmoJvSv95JuB/H981G7YGH0wknim8xzje
         hO/0V5oG5OcKUlBfovnEeb2KJ6/i8LoSlMNTKNVm3ptj+F/NJ14w4cEAKtVsEsnr5xRM
         dhkOhj9nOpCsuGc8GxvFDJSbGSKJCk9ldyW5MRs3oSE6McF7X5BLKpBD3VW9mT1kZfqF
         ELlalWaFL/kySMQPGx9HFi0ZaF6NOttMxhEfKhLyYbr+CPC7tUeBuExGWu7nq2vNpj3a
         xsbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149175; x=1724753975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ks+2YRAyKgKRE43sjfM9QF4KPwZ0caq5YtrlIAthty4=;
        b=wCKkEDQl0eJUcB0gisO6V6SozFpDZuB3GZSEWrr1cYKvDPzgQvqNqjQ2nTOZQky7jU
         wIOGyqQvPqm2thnRfcwAnT45O2a4ruEUcUxWvBfvYDDzZ5bhJu1vF1deny61juXCZpqD
         ZphRdwuk4vkmXsVpUBba8K/LBjFH4Lclr8+2U+lS53HV5xiK+Ua9QodImaqJj5GernYd
         TvfRos6cwUi2AFroX9xSLPD+NN6JSXbLAXH+drVyiuHQV+FPyxKZ463XaTnyrnWddDDB
         dACFEOW0xjVxOPbPzrnfjVS/7UxQxi4/eV/n3gaOFmeie6OZW+XpLbkBkZu900/ni7ou
         Zp7A==
X-Forwarded-Encrypted: i=1; AJvYcCWcZTOR1euMqoM/OR5gcumahHdcLr9DahwwVa2nSKX1kAtiHuIKT1HHEShH7gks+3b06w9IXPnJeSow@vger.kernel.org
X-Gm-Message-State: AOJu0YwYuDDD0394lZJyE2/6qUpPU3MPUhhl35A4YZZiNXw3m1RqOftI
	rhMVunXPhdpGaPxgMYVEhxpXRr+bU0/PkXq8H7gWb0q4N9pKmjw3Tw4oGSSfiHI=
X-Google-Smtp-Source: AGHT+IFlb9J3A3Mxm0nx13hYdwklVJKspWeIpZSmdrnA+oVIdgB3VI1lpHABkqDCTT2rIQJsnXm5jw==
X-Received: by 2002:a05:651c:54f:b0:2f3:f256:aeec with SMTP id 38308e7fff4ca-2f3f2573d65mr4517381fa.19.1724149175056;
        Tue, 20 Aug 2024 03:19:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839464ebsm734550066b.155.2024.08.20.03.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 03:19:34 -0700 (PDT)
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
Subject: [PATCH v5 04/11] i2c: riic: Enable runtime PM autosuspend support
Date: Tue, 20 Aug 2024 13:19:11 +0300
Message-Id: <20240820101918.2384635-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable runtime PM autosuspend support for the RIIC driver. With this, in
case there are consecutive xfer requests the device wouldn't be runtime
enabled/disabled after each consecutive xfer but after the
the delay configured by user. With this, we can avoid touching hardware
registers involved in runtime PM suspend/resume saving in this way some
cycles. The default chosen autosuspend delay is zero to keep the
previous driver behavior.

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- collected tags
- added a comment on top of pm_runtime_set_autosuspend_delay()

Changes in v3:
- none

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 6fc41bde2ec2..ec854a525a0b 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -171,7 +171,8 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	}
 
  out:
-	pm_runtime_put(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 
 	return riic->err ?: num;
 }
@@ -399,7 +400,8 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
-	pm_runtime_put(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 	return 0;
 }
 
@@ -479,6 +481,9 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	i2c_parse_fw_timings(dev, &i2c_t, true);
 
+	/* Default 0 to save power. Can be overridden via sysfs for lower latency. */
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	pm_runtime_enable(dev);
 
 	ret = riic_init_hw(riic, &i2c_t);
@@ -496,6 +501,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 out:
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 	return ret;
 }
 
@@ -512,6 +518,7 @@ static void riic_i2c_remove(struct platform_device *pdev)
 	}
 	i2c_del_adapter(&riic->adapter);
 	pm_runtime_disable(dev);
+	pm_runtime_dont_use_autosuspend(dev);
 }
 
 static const struct riic_of_data riic_rz_a_info = {
-- 
2.39.2


