Return-Path: <devicetree+bounces-81417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879791C2E2
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 17:46:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24810281E51
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 15:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E107A1BF336;
	Fri, 28 Jun 2024 15:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WuCk9LwN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8743A15749E
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589572; cv=none; b=tvua4SDQSPEwlsLA+zHzyMy6p61atrGdvRZSYe60Gqz1Ga85hsyTQtTEsY5feps9Fyqc44M/uEe408bVVG0r1EaH5If/8w59gbr46F6qsTSLFurHSjFw6x/y7RNFAE7c9dA9yr/4F0QYz3w+n+poxNMvP9o0DHx+jhnq02wEnfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589572; c=relaxed/simple;
	bh=E2ON8afLO1WrZKvKgL0DbbmyDPjigcjuWNpKuF4J1pM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=nCwK3i4EItyYnRY95q5UfcF82VJDsRQP1UPcU0+zQJR8hy0FOKkX+JCwBOqTIRSXYk3qUP2A8MiXgAA/HkegjUdIhteol/SLuUnKL7vV5Q+NMftF+CMlDFWx9iK06M7UtJzR8PLoheF6dD6jsKEWIjZuhQu1/dAXShjZKMakR/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WuCk9LwN; arc=none smtp.client-ip=209.85.210.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-70679e6722aso661817b3a.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719589571; x=1720194371; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=BWwY890+5NLFwmpl4Ncpp5MeSVkTzmaxwxuDQSu9PBk=;
        b=WuCk9LwNr3A6N6b+VuaUw78Ve6qizDWxJzIQAw0ilQaT6m5jHiat4Br1uEnPAqP667
         Oubsu5RucPUtv8V43QYnQrM2WHSGaib96DpoLYt7ZHzrAiQfp1fHW0Yc/YFQogCnqhLi
         31FML6zlwT4r9J0nXL1ts1QKI25oqQBZlB7k6aQ21hcl+s8N2gLANDWNN8MqiMIlU7/l
         18iKHXeRz8e59GrKtkBIt+yTQv7WtIpBV82+vLAFYyuvdHu4WHpX5l6s2zVsIGNlEvqU
         6zGMYmZzo8ZxJAXyd4xTM1nwxcUE5EZd06VIS2f/9mnY9x27se9h8QbQr+OQ2flFTJV4
         lTyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719589571; x=1720194371;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BWwY890+5NLFwmpl4Ncpp5MeSVkTzmaxwxuDQSu9PBk=;
        b=tHdl/YrLUGO08kKv9x25TYZ29gYqLi8qSgOOSxYQEn/UgNa2MGfcw9KtiGiUG39D/j
         CVbVjhiaUlbz2mEjkelplABFJ8D1R1kCuMt7bcgP7hXRttMGBLP4msrX3FRSMFytnB8F
         xvNky2154WK1ocE+KCZwO/uv5gsGQgDQJWntPZoNJJtScRbL1wWjVn1dgJZ3e10+ZzCb
         DpfZ0jxD3D/bsxmPmggLJQaFuhJ1CCpVxCbnMq5d7f2UvmtDE4tLTN2P0oikb3OhPuje
         4xD+jgE4ZNI6nS5yGEL6hXhN4QAT++kI0BSSF1U912+/5HeEdAfc7T10/z5HcvpHnuy7
         gsfw==
X-Forwarded-Encrypted: i=1; AJvYcCUQOkO7nZ7ukEwabSvDCebJyDgQDlita/vc2di4SZza/YEX94XAGspmL+a3JRIGPhDV8XE9sutoJqx4K5wrtbZC6QRRkU5rjNiPJw==
X-Gm-Message-State: AOJu0Yzd91d/b8DwuMmt3JCls8zJBf9Q1MvhapI5bktBdhxT00neFfEW
	mfEQQn+rY+SRaXvtVfgvhiK/HFUt4Q6ZBnhfJ8Ty2T37GmQHwM+ga36G3Kbyf8z5Q7m0fdQ01Uv
	EtEEUabeRyQCJp6rLd1dpKqbtOw==
X-Google-Smtp-Source: AGHT+IG32gMnXvaf3njbjouiPVyRu1hT0usmDZOv2jZJ7sVHWHnnRif/Y+Bn+1rnVmXX5zr8ZtJ4EL4tM4RTBaskLis=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6a00:23c7:b0:6ec:f400:95a7 with
 SMTP id d2e1a72fcca58-708536c380bmr89585b3a.3.1719589570648; Fri, 28 Jun 2024
 08:46:10 -0700 (PDT)
Date: Fri, 28 Jun 2024 15:46:03 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240628154603.326075-1-aniketmaurya@google.com>
Subject: [PATCH v3 2/3] i3c: dw: Use new *_enabled clk API
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Move to "enabled" variant of clk_get API. It takes care
of enable and disable calls during the probe and remove.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 drivers/i3c/master/dw-i3c-master.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 9aae5c8dba8d..4e3335641dcd 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1450,7 +1450,7 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 	if (IS_ERR(master->regs))
 		return PTR_ERR(master->regs);
 
-	master->core_clk = devm_clk_get(&pdev->dev, NULL);
+	master->core_clk = devm_clk_get_enabled(&pdev->dev, NULL);
 	if (IS_ERR(master->core_clk))
 		return PTR_ERR(master->core_clk);
 
@@ -1459,10 +1459,6 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 	if (IS_ERR(master->core_rst))
 		return PTR_ERR(master->core_rst);
 
-	ret = clk_prepare_enable(master->core_clk);
-	if (ret)
-		goto err_disable_core_clk;
-
 	reset_control_deassert(master->core_rst);
 
 	spin_lock_init(&master->xferqueue.lock);
@@ -1501,9 +1497,6 @@ int dw_i3c_common_probe(struct dw_i3c_master *master,
 err_assert_rst:
 	reset_control_assert(master->core_rst);
 
-err_disable_core_clk:
-	clk_disable_unprepare(master->core_clk);
-
 	return ret;
 }
 EXPORT_SYMBOL_GPL(dw_i3c_common_probe);
@@ -1513,8 +1506,6 @@ void dw_i3c_common_remove(struct dw_i3c_master *master)
 	i3c_master_unregister(&master->base);
 
 	reset_control_assert(master->core_rst);
-
-	clk_disable_unprepare(master->core_clk);
 }
 EXPORT_SYMBOL_GPL(dw_i3c_common_remove);
 
-- 
2.45.2.803.g4e1b14247a-goog


