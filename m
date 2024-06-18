Return-Path: <devicetree+bounces-77255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6935790DD9E
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 22:45:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA400B22FDE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 20:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C6F178CCD;
	Tue, 18 Jun 2024 20:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+u5z204"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F161741EE
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 20:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718743529; cv=none; b=EpAfxZSe0hxBtMgAx3g142QpmqERZgKHCzjE/GXmAMNVH2J02TienDtp84ibvQrgxIbDssoH7MZJ06lhIXe08Xx/EN7ZHIyE0LooFo8fhakw+dKbcrzI66XR5n7GW8BqWl8mxFMlk9Ve7NAntg0wotwE+0Nz5w+5UNtBgQWDXAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718743529; c=relaxed/simple;
	bh=5evvsN4at6BMrRF8OVlHRN4HocF8R+R/ozNBsMGh+IY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R08R6zZtoFlgxuJ6JHgCa9Xi+L03s8kRFYAXeR33concwoM7I8+9xjgRVOEtlz/AsC+VeW1NnYdwrYUsG4n2EfEsVTVwbST8KXRQQl0LEPT0WTFnXxfTvIdsFiin7iInr62X+iyTeSLRNdA3mNJ9SHwHBYI/NH21xH6QOh3Z5CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+u5z204; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5c1acd482e4so345032eaf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718743526; x=1719348326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/1x8MC9aiceHsiOgibtWuSN+CH2pLi0RJoi6RQX0En0=;
        b=P+u5z204Qbm0CSzbkkRSSWm6QgaoJEiCADHtZd2mJpGxmAZbnuOn8GQl4y+vhV0l1M
         Rj/MC9pP0HKEWkM9KS7cl/2TVQOtMVglIb/LasirBhpglfUZSqSy5OlP5Dj1uULziVkq
         OVVygyqtxjnBwDJCOdpMb8r1WSO64izFnXGuOeQMXo1Z4OWOOHj1DmqVkjYaqydG055o
         8iGVCYECz4n2BaxdqPCtkNa49Jh7LKY9Trkpzq+7B2P47gMbCQhf71gjvd2ZWv63dwSv
         sOjtDnrl8PO2Bs32WxwY9OA0PhAo3cqxGdIWI19U1K6XubI7jthFN9YcIWMsSsmRGryR
         E0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718743526; x=1719348326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/1x8MC9aiceHsiOgibtWuSN+CH2pLi0RJoi6RQX0En0=;
        b=KGXRVB6vmJ97NbBEfUctXTpXnzmzMDrORUN82XcxN8LG2wh99Juj8zbd1nVCvuaC2g
         zvw8hzFh5EgVcGLMq0rad4e0L823g5dGGTBdqOYb8zyC+uGxdfBhOFFXVhROgo07svaR
         4ab4II9649kal8zIugYwqYiSnmFuLzwAx1NakatYj6ABji1zjgBF7FxlntRuPCDFxhPA
         w4oaVLomv5S0e9MtaAoHOXWL4L+Ti0Gt0S8s2ISH9dLLJjAyzTLBt1If94ithAVEENs4
         dcqFYObpdDefN2evHugqRCf07dKOsacoQlM7itHHqdfo4SpRyDBhYue7mbwwqgY2a/mQ
         gwEg==
X-Forwarded-Encrypted: i=1; AJvYcCX8ein6HpFZ3rygreRPe9BeL7VE28ydxGHLHMS4B4kD5g3JGvhFE6vLuCW+g0IhMK1QCwOgohH3WsS7xaERr6SutAhMfKPK+Utu6A==
X-Gm-Message-State: AOJu0YwQIXZkviSPHU9SvE4xfFOolg7KuT03t0y0bjyx7ZA7Q0HVCfR7
	E94HGFN5ushS08aRCFimNw6fsLBKXhCgRf1lUPWC4zIwKu+sWK3BjxcqLgz9r5I=
X-Google-Smtp-Source: AGHT+IHoIqS42kE6h2gsiMCU58NN0xvPF/vSFb4SrpjHZNqEyhPtxGPcglOULs7EmkuqnqSorllKtg==
X-Received: by 2002:a4a:240f:0:b0:5c1:a296:66b5 with SMTP id 006d021491bc7-5c1adc0715emr917189eaf.9.1718743525910;
        Tue, 18 Jun 2024 13:45:25 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5bd5f2a1801sm1432107eaf.37.2024.06.18.13.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 13:45:25 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] hwrng: exynos: Improve coding style
Date: Tue, 18 Jun 2024 15:45:18 -0500
Message-Id: <20240618204523.9563-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618204523.9563-1-semen.protsenko@linaro.org>
References: <20240618204523.9563-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix obvious style issues. Some of those were found with checkpatch, and
some just contradict the kernel coding style guide.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
  - Added Krzysztof's R-b tag

 drivers/char/hw_random/exynos-trng.c | 61 +++++++++++++---------------
 1 file changed, 29 insertions(+), 32 deletions(-)

diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 0ed5d22fe667..88a5088ed34d 100644
--- a/drivers/char/hw_random/exynos-trng.c
+++ b/drivers/char/hw_random/exynos-trng.c
@@ -23,45 +23,41 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
-#define EXYNOS_TRNG_CLKDIV         (0x0)
-
-#define EXYNOS_TRNG_CTRL           (0x20)
-#define EXYNOS_TRNG_CTRL_RNGEN     BIT(31)
-
-#define EXYNOS_TRNG_POST_CTRL      (0x30)
-#define EXYNOS_TRNG_ONLINE_CTRL    (0x40)
-#define EXYNOS_TRNG_ONLINE_STAT    (0x44)
-#define EXYNOS_TRNG_ONLINE_MAXCHI2 (0x48)
-#define EXYNOS_TRNG_FIFO_CTRL      (0x50)
-#define EXYNOS_TRNG_FIFO_0         (0x80)
-#define EXYNOS_TRNG_FIFO_1         (0x84)
-#define EXYNOS_TRNG_FIFO_2         (0x88)
-#define EXYNOS_TRNG_FIFO_3         (0x8c)
-#define EXYNOS_TRNG_FIFO_4         (0x90)
-#define EXYNOS_TRNG_FIFO_5         (0x94)
-#define EXYNOS_TRNG_FIFO_6         (0x98)
-#define EXYNOS_TRNG_FIFO_7         (0x9c)
-#define EXYNOS_TRNG_FIFO_LEN       (8)
-#define EXYNOS_TRNG_CLOCK_RATE     (500000)
-
+#define EXYNOS_TRNG_CLKDIV		0x0
+
+#define EXYNOS_TRNG_CTRL		0x20
+#define EXYNOS_TRNG_CTRL_RNGEN		BIT(31)
+
+#define EXYNOS_TRNG_POST_CTRL		0x30
+#define EXYNOS_TRNG_ONLINE_CTRL		0x40
+#define EXYNOS_TRNG_ONLINE_STAT		0x44
+#define EXYNOS_TRNG_ONLINE_MAXCHI2	0x48
+#define EXYNOS_TRNG_FIFO_CTRL		0x50
+#define EXYNOS_TRNG_FIFO_0		0x80
+#define EXYNOS_TRNG_FIFO_1		0x84
+#define EXYNOS_TRNG_FIFO_2		0x88
+#define EXYNOS_TRNG_FIFO_3		0x8c
+#define EXYNOS_TRNG_FIFO_4		0x90
+#define EXYNOS_TRNG_FIFO_5		0x94
+#define EXYNOS_TRNG_FIFO_6		0x98
+#define EXYNOS_TRNG_FIFO_7		0x9c
+#define EXYNOS_TRNG_FIFO_LEN		8
+#define EXYNOS_TRNG_CLOCK_RATE		500000
 
 struct exynos_trng_dev {
-	struct device    *dev;
-	void __iomem     *mem;
-	struct clk       *clk;
-	struct hwrng rng;
+	struct device	*dev;
+	void __iomem	*mem;
+	struct clk	*clk;
+	struct hwrng	rng;
 };
 
 static int exynos_trng_do_read(struct hwrng *rng, void *data, size_t max,
 			       bool wait)
 {
-	struct exynos_trng_dev *trng;
+	struct exynos_trng_dev *trng = (struct exynos_trng_dev *)rng->priv;
 	int val;
 
 	max = min_t(size_t, max, (EXYNOS_TRNG_FIFO_LEN * 4));
-
-	trng = (struct exynos_trng_dev *)rng->priv;
-
 	writel_relaxed(max * 8, trng->mem + EXYNOS_TRNG_FIFO_CTRL);
 	val = readl_poll_timeout(trng->mem + EXYNOS_TRNG_FIFO_CTRL, val,
 				 val == 0, 200, 1000000);
@@ -122,7 +118,7 @@ static int exynos_trng_probe(struct platform_device *pdev)
 
 	trng->rng.init = exynos_trng_init;
 	trng->rng.read = exynos_trng_do_read;
-	trng->rng.priv = (unsigned long) trng;
+	trng->rng.priv = (unsigned long)trng;
 
 	platform_set_drvdata(pdev, trng);
 	trng->dev = &pdev->dev;
@@ -175,7 +171,7 @@ static int exynos_trng_probe(struct platform_device *pdev)
 
 static void exynos_trng_remove(struct platform_device *pdev)
 {
-	struct exynos_trng_dev *trng =  platform_get_drvdata(pdev);
+	struct exynos_trng_dev *trng = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(trng->clk);
 
@@ -204,7 +200,7 @@ static int exynos_trng_resume(struct device *dev)
 }
 
 static DEFINE_SIMPLE_DEV_PM_OPS(exynos_trng_pm_ops, exynos_trng_suspend,
-			 exynos_trng_resume);
+				exynos_trng_resume);
 
 static const struct of_device_id exynos_trng_dt_match[] = {
 	{
@@ -225,6 +221,7 @@ static struct platform_driver exynos_trng_driver = {
 };
 
 module_platform_driver(exynos_trng_driver);
+
 MODULE_AUTHOR("Łukasz Stelmach");
 MODULE_DESCRIPTION("H/W TRNG driver for Exynos chips");
 MODULE_LICENSE("GPL v2");
-- 
2.39.2


