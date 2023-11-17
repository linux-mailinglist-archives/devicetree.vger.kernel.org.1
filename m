Return-Path: <devicetree+bounces-16735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5017EF845
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B60341F24011
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF7445960;
	Fri, 17 Nov 2023 20:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2+XdxDiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1338510CE
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:56 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3b2e72fe47fso1514016b6e.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252035; x=1700856835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Uy/nGn2rChA8c7KicPA5RLHwOBZWkxwdXoqQs+T9FI=;
        b=2+XdxDiOVAUwEHBmlFn/U/iOIbLMEN6BE1ylmm/F72DBfFvWneB9Tkwbs1kV7Iwmxa
         WKhZLCP1UztnIUpLY4l02FHU/eobad4LFjrmvcLwrBj7/3bfUQrorKrx1vWKdjHRwVlY
         KsgfhFJKSp2EJMzx56Nbc8GJpZfrV4qEhEcxmvcOl9xsOGWjjt5STQzCRDpT7uH4gBOp
         9jZVIJDO2OKaKOSFL0uvUu7e+TVErcRkMLqvdvm7f/r8mmI91rHVgv3Y1P51V8h4+jXP
         fkUsoamL9iJYFbTS1JhmEOCIgbpvfmrm8U2ht0qXHba0UcZWk84RQ/yoLFA3R37/TO8R
         5naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252035; x=1700856835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Uy/nGn2rChA8c7KicPA5RLHwOBZWkxwdXoqQs+T9FI=;
        b=odUM71qEBaRVmsPVPs2oYtfftr4NrBiI621dAeylR135ZHD8lLrQb7dAjiejQKm6pJ
         cQhMQ/YVIcoamhVhiZGbaESzOQPwWNhBog2LZRF9zSPAuRtmQ9bUk2fbJf7yYNIGaiMq
         CGqYVxME2y1uxLHMVdijzSK6mtNqtEBLWlt888v3VKAu4mOnD/n5C0t2+svOfW+dXNvf
         i1e6HASgPtq0NGGtb5s14+MnJ8wRrAZDg6kXpizTBYEseZzKaVaXyOmNA6mYalZp/8Ai
         xHceQl8OS1iFw3bfgltFuo87REX9qRmDzD7D3oRlsARkDMyEXSUNxKmTmMEPztsipozc
         58xw==
X-Gm-Message-State: AOJu0YyZL3aXWNHVHYlV6iabJYbijoyyao7LKUF8WpwDWEsHKmsLEWCJ
	NEu9qhAB94krsnGY76+zP4EHkg==
X-Google-Smtp-Source: AGHT+IEpNY443K2DTvic/4nX3g59+w/t2iGjY1+g+xvMgSfgHtSIdUiY9qzOZHhk0/Foi7Fgc7LpRw==
X-Received: by 2002:a05:6808:14cd:b0:3a4:3b56:72b2 with SMTP id f13-20020a05680814cd00b003a43b5672b2mr589101oiw.8.1700252035422;
        Fri, 17 Nov 2023 12:13:55 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:55 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 05/14] spi: axi-spi-engine: use devm action to reset hw on remove
Date: Fri, 17 Nov 2023 14:12:56 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-5-cc59db999b87@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This moves the reset of the hardware to a devm action in the AXI SPI
Engine driver. This will allow us to use devm on later calls in the
probe function while preserving the order during cleanup.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 77c1c115448d..c18a4b34777e 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -461,6 +461,15 @@ static int spi_engine_transfer_one_message(struct spi_controller *host,
 	return 0;
 }
 
+static void spi_engine_release_hw(void *p)
+{
+	struct spi_engine *spi_engine = p;
+
+	writel_relaxed(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
+	writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
+	writel_relaxed(0x01, spi_engine->base + SPI_ENGINE_REG_RESET);
+}
+
 static int spi_engine_probe(struct platform_device *pdev)
 {
 	struct spi_engine *spi_engine;
@@ -506,6 +515,11 @@ static int spi_engine_probe(struct platform_device *pdev)
 	writel_relaxed(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
 	writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
 
+	ret = devm_add_action_or_reset(&pdev->dev, spi_engine_release_hw,
+				       spi_engine);
+	if (ret)
+		return ret;
+
 	ret = request_irq(irq, spi_engine_irq, 0, pdev->name, host);
 	if (ret)
 		return ret;
@@ -532,16 +546,11 @@ static int spi_engine_probe(struct platform_device *pdev)
 static void spi_engine_remove(struct platform_device *pdev)
 {
 	struct spi_controller *host = platform_get_drvdata(pdev);
-	struct spi_engine *spi_engine = spi_controller_get_devdata(host);
 	int irq = platform_get_irq(pdev, 0);
 
 	spi_unregister_controller(host);
 
 	free_irq(irq, host);
-
-	writel_relaxed(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
-	writel_relaxed(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
-	writel_relaxed(0x01, spi_engine->base + SPI_ENGINE_REG_RESET);
 }
 
 static const struct of_device_id spi_engine_match_table[] = {

-- 
2.42.0


