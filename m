Return-Path: <devicetree+bounces-74718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1EE904244
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 19:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3ABDD1C247EB
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 17:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8654A4D8BB;
	Tue, 11 Jun 2024 17:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="slrw+cMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044384D8AB
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 17:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126203; cv=none; b=hkDaAO3g1wqOEL4h3Kxw4KaU8QUjgbSPp1y6QQkRfVHCXIg3aRbWyIsLWtGvg3Po+JSlN0+7HzzBiO+U0zyTxdKiCF1SvNVcUYRiZlrQaziwWKgySI7MarxrH1gggfLqYyEZSIwkMWBKIDvRfGloLx9OOrfwYDfvVv24c0D2fOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126203; c=relaxed/simple;
	bh=1oz7gki1JBAUNilIN2nJWm3wkdsH+gB30VbNTMLX0iA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=MXaV2tb/kolKGvNEBqFK8m3TSEvrEmEBDpdZgw3bQVlLo6d72n69uAciTUeImv8r55CxuGKjCw77ZJf+EMxWJaQziSIb1zBvN6lXSM9IRtdXiDwaO1gBYpKeYFhk/EnZ4tjGyXzHAndz+jJ/2YytfKp5gEWf/JPDx39woXioK48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=slrw+cMz; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-62a083e617aso26463317b3.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 10:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718126201; x=1718731001; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=x32GJJg0AlSw6J5DmY/hNwb8LZyaDbs+mRkSRyx7dxM=;
        b=slrw+cMzaam7oFGE7q2ka4lbuntMgEAvdSFZfRJsV/ZBd3igUTgvSXiLsx8B3XRNt8
         M2YV9qnXBQwC/pU5huWwFWnm9bt4v4svGq7b1WsbGLtrBXK8adPxfL+Te0y2Uk+RR4Md
         T5PyPyMoNX4HcBiGuD0ZRZxoYLoO2naUbWcBDMUgAr6abFLFpMyyLcoSjIos6+6id+mh
         i3l4KBeHjlDE+9rmIEArrSix6curI5jTVn3lwKsHR8MsSpazBH8nVvMjZRwoXu+vka1z
         o4tj87FOEpThB8+UX/3ePI2SL0YuexGTyoQdoNI/cIUAA3UJsmL6IVjs+vkz+3UXJ4dE
         4ewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718126201; x=1718731001;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x32GJJg0AlSw6J5DmY/hNwb8LZyaDbs+mRkSRyx7dxM=;
        b=attCKMXCiqKVi2+2cDPizNU3S7qB7+pOo9EqbiU0LevHo+QcnqS1PJwrhyAclfird5
         d195quQAjMEW8ARW5bl05xh70mEj/f0eYvwiBtJeFFeK6uuqrQmkUoZNZTMlwWaagvDn
         DW3UirlIICi3qIov+4w6IaEcvjf54UqTFb4+Lw+l6nv8gK+WpopF34TFS2y6Sh3eHSD4
         ltwL2DXshvX4OsAOmuSy0Js5t9+zY90t9Vo6ExDM297AG2HuwJ5kGyJLuWmkmm3bVPe3
         IZAaFqfPeO+eorJMi039dwJIhiai6nnOGRZAMMOgZdpj1xpdGcIK5JWtvogW9N0Odk+9
         34tg==
X-Forwarded-Encrypted: i=1; AJvYcCWDAklF+EnY8WDv/s/6FrV13j2Kb/Swr13gLj5suWkmqTKvOMWk/H5mRWCQ+XHNaif/t59dsxtvwI1BNZRE5rqK1KM2MKHmkhrmFA==
X-Gm-Message-State: AOJu0YxKCM3Q8J4PAPdrs22jCMybRJwDSdZAGgufw7uU8633GteAnXm4
	hfT1UyNxNgDu3ZCB/FfhsiHJb2eB1zIqKV5lbx4S9c9gyrgI2AdZexR6RqpYm6lwAWcHdFOA0t1
	tQIWyVbQX8IQrPI9bLOTzIT3Ltg==
X-Google-Smtp-Source: AGHT+IFZGNAg9puiuuskmC+xjdohP7kvB0J4VVKVnjwy0UefCG8+X6DP4ehy6KYfVSkTF9cqPe0yp7vlXGzijUCB35k=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:690c:dcf:b0:61b:791a:9850 with
 SMTP id 00721157ae682-62cd568d31cmr39052507b3.9.1718126200989; Tue, 11 Jun
 2024 10:16:40 -0700 (PDT)
Date: Tue, 11 Jun 2024 17:16:00 +0000
In-Reply-To: <20240611171600.1105124-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240611171600.1105124-3-aniketmaurya@google.com>
Subject: [PATCH 2/2] i3c: dw: Add optional apb clock
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Besides the core clock, IP also has an apb
interface clock. Add an optional hook for
the same and appropriately enable and disable.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 drivers/i3c/master/dw-i3c-master.c | 12 ++++++++++++
 drivers/i3c/master/dw-i3c-master.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 77a2a1c3fd1d..41cdfd6741e3 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1470,12 +1470,20 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 	if (IS_ERR(master->core_clk))
 		return PTR_ERR(master->core_clk);
 
+	master->pclk = devm_clk_get_optional(&pdev->dev, "pclk");
+	if (IS_ERR(master->pclk))
+		return PTR_ERR(master->pclk);
+
 	master->core_rst = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								    "core_rst");
 	if (IS_ERR(master->core_rst))
 		return PTR_ERR(master->core_rst);
 
 	ret = clk_prepare_enable(master->core_clk);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(master->pclk);
 	if (ret)
 		goto err_disable_core_clk;
 
@@ -1520,6 +1528,8 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 err_assert_rst:
 	reset_control_assert(master->core_rst);
 
+	clk_disable_unprepare(master->pclk);
+
 err_disable_core_clk:
 	clk_disable_unprepare(master->core_clk);
 
@@ -1533,6 +1543,8 @@ void dw_i3c_common_remove(struct dw_i3c_master *master)
 
 	reset_control_assert(master->core_rst);
 
+	clk_disable_unprepare(master->pclk);
+
 	clk_disable_unprepare(master->core_clk);
 }
 EXPORT_SYMBOL_GPL(dw_i3c_common_remove);
diff --git a/drivers/i3c/master/dw-i3c-master.h b/drivers/i3c/master/dw-i3c-master.h
index 8cb617b8147e..50c38e790c0e 100644
--- a/drivers/i3c/master/dw-i3c-master.h
+++ b/drivers/i3c/master/dw-i3c-master.h
@@ -36,6 +36,7 @@ struct dw_i3c_master {
 	void __iomem *regs;
 	struct reset_control *core_rst;
 	struct clk *core_clk;
+	struct clk *pclk;
 	char version[5];
 	char type[5];
 	bool ibi_capable;
-- 
2.45.2.505.gda0bf45e8d-goog


