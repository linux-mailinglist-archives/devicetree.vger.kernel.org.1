Return-Path: <devicetree+bounces-79140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 196139141EF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50DE31C22004
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E7918042;
	Mon, 24 Jun 2024 05:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PQ3P2j6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559EF1BC40
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206959; cv=none; b=BDcfPVxF/YVa+ZWpej/z1yL/gEKcbrSLzS+oL6b/WPYuwdNwfWu0YIg4z04nEnhAEv5P5AyPuR02SLSIpSGTS0QttqXtamjmjNnpP9BnNHxtYs2b3kOeUJjVek69113gpnml4Kw9KD5SacoCi9Sr4A01XNKfsIPqjvu/LWCdldI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206959; c=relaxed/simple;
	bh=8InZIp7y2zwsO4oF6fUGa/AKQ9soRf44nwDuYbc/fZQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=DhV0c9UnTy9dCjxyV+cumv9b5/psArKTcJ1BZGp6WrcNZ+fVr0KtCuIw/SbqXc5wBe0t5eA+Bn+yKmlgCAD25zwGSUGNNkeavz8uIYBEKI/yBFAgFnpcCqciQeR1s9dHi8gIuMSmk2KfDE64iFyA+qAXYMa8Jc8hKPZME6GEtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PQ3P2j6F; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-63c418df767so86361487b3.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719206957; x=1719811757; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=z1lDGMLBKOZjPQERPgHQ2A9MuACw0+8pMDHkdqTSITw=;
        b=PQ3P2j6FIp0z8UcrJEeANyB+43hqZROi1TVjPCGiCDykbWkrECMQZa/XNyQQVGZ44j
         LFd25UKETZLW8rUilZDBhizUUOMer+WB06a+OAeEG+qWamwbTuQSEdY4gKCKpxE+zvCX
         DBeWtWYGrsjNjx3hPTw9G7W8zzqFPG6s/GYkD+dx48qJVj9HF2lXXtvhhgLR5mlhbQHF
         TVosdzXF8TVlUUObLVO7EAWlDJfeT60n6GsGLRFzb2o6B+PtEsWVHTIonQnOOTaKVxWM
         1Hb5la7muxAemVE9Ac9vy4QcGTqftkV8JhTgTqD71Y0v3tLXRa/bjadhM+MAW2UZth8q
         iUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719206957; x=1719811757;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1lDGMLBKOZjPQERPgHQ2A9MuACw0+8pMDHkdqTSITw=;
        b=ggve5ho2D6GZRMJyt7vYwXe4yZv4lgDCJVrQzQ23MD7xcB+0Wypy4IcyTKKuWZF9QX
         uB6Sm7FCm9tCOI5uZMHd7QPEYFTqBr7inzI4O40w8SF/7CSHTuXkvO5aPj0UAQx4/Dpm
         4N2rYUQjKL5JNFEELGYcQCQZglOWcvrPSmXvo6RtXLzZYC9qRTSgQpA0a0k+nD7NSNNR
         vf67rz1CzA7JHiwEcPhJbfv1UTgAUVQBuo5/LQSB1wOnj/CjFDEkpajlV659o2p3gd0P
         XHZ/SlnHRCrAoN+YrxT47QD/tUtHOiTFfDtbcp8O6eiTrVZ3anm7QBHI4/BYVS2QAaiD
         Xecg==
X-Forwarded-Encrypted: i=1; AJvYcCU1RQ8vm8wIt9g0Gj/CwsC5LqFeh6S38WakSVTQfnFvDMReg4LeFPAClNGXyZfu3le6LoWkzxez/r9cxciUg5nSkftuFGW62qDueg==
X-Gm-Message-State: AOJu0YxqJ9QJo2FJydHl0r+StJH5gkXRW/z6EaApaj5Sd7ZKHru7N3Lp
	juWfHA6VgrceyPHbL9/kJEnDo1LmYa9iLXz8QkNsFt5GV1GcByVwO5psC774Kqwx1J4j1C/5AqH
	ZwxQFVXjva2bsQHRP3OpQf7EEgg==
X-Google-Smtp-Source: AGHT+IFg4S5f43LgnXGlfi54t9Ut10DZcSLiBehSOlBVrIz63/P6FEWtc9+rMh5c0FMT9ZFPAyecpjuZbGRYntXsAoc=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a25:c747:0:b0:e02:6dcf:e9b2 with SMTP
 id 3f1490d57ef6-e0303d64058mr25487276.0.1719206957343; Sun, 23 Jun 2024
 22:29:17 -0700 (PDT)
Date: Mon, 24 Jun 2024 05:28:50 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com> <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240624052851.1030799-3-aniketmaurya@google.com>
Subject: [PATCH v2 2/3] i3c: dw: Add optional apb clock
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Besides the core clock, IP also has an apb interface clock.
Add an optional hook for the same and appropriately enable/disable.

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
2.45.2.741.gdbec12cfda-goog


