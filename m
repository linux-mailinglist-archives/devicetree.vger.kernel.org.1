Return-Path: <devicetree+bounces-16738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BCE7EF84D
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 191CE1F24840
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B104845BEF;
	Fri, 17 Nov 2023 20:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zs/TE/2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC25B10D0
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:57 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3b2ec9a79bdso1596262b6e.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252037; x=1700856837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M1wQ6CLb/dDh5KiZFFpLs1bmPNGn2Z5vlnYTp1713SY=;
        b=zs/TE/2dzcTIHUUgBQPW21glYKrUWr6e4lez1HsM2FETRIb0q8ttXaWHDhMMvtxAvz
         PAhB3Tm0uoj1B5VYSmFBymiCNJ0qscRwXnixBcesVok1F1NthOM3gCQJ55ulb6TnQ81w
         QoE73k5cJYhWxylpLelYJJ9WOz/68NEgZf77Zx0lX97Ju/Mu1kuYqoQmdP9/AZnwdQKa
         tTR0PXgA2IwZFFujByP9vR/f06oghFv9yczgJDjOQWmB2ZuW3pJugDhDIl+vje0E7HCk
         PZ6+/txXyoTmm2d67EzqcMSCnYEhdm1ANSv96YH/3FiQaCQyBA+EZ7MB4QuoamUFPEdh
         9RIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252037; x=1700856837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M1wQ6CLb/dDh5KiZFFpLs1bmPNGn2Z5vlnYTp1713SY=;
        b=LGrFc3/JpNJ9IBr9rcjHv+7OqhG0aA4HR/PIgy8IqqNdGHjEnI0DTrr2l/IjWMkWSr
         aVmE0+BX5FsIY+75MHlpXm+hCDIAuPsPBFrcjZ8BSOpd5tu7noRZg/6xVF7R83ig7BQO
         IVNUcEtp/T6RhI0RePrWIKKkhiCCnrMl7xStyreglXaLGvoUGtzS3FLzf8b10tSdTlmX
         xB0vKjav7W5MA2kpnsFk2J8fWDz3rOl6NmwhH3kLiCYNyZBWYwnHC/AFlq5oTt7VzesY
         F0BYW3wvQIK9oMR/jQcWRJylee775wGIvC+lVBQBbOwVbe6gzQpxsFrlkFBoFJ1GpgJE
         ltPw==
X-Gm-Message-State: AOJu0YxS+MmimlfhqxpAJBBgW2ZhuJfrWZ/rpfAaBsPfzk9BZ3DXaOy1
	ZpTPHZN9zHtola3AZFFRQWhmzQ==
X-Google-Smtp-Source: AGHT+IGtzh7e1k7njF++1U+zMaywWCDh65jE1df5WPD+UmMUdAI4bHvmiDb/8jACwIXkHFTXypjZ/g==
X-Received: by 2002:a05:6808:1922:b0:3b2:e70e:b448 with SMTP id bf34-20020a056808192200b003b2e70eb448mr531624oib.8.1700252037075;
        Fri, 17 Nov 2023 12:13:57 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:56 -0800 (PST)
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
Subject: [PATCH 07/14] spi: axi-spi-engine: use devm_spi_register_controller()
Date: Fri, 17 Nov 2023 14:12:58 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-7-cc59db999b87@baylibre.com>
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

This replaces spi_register_controller() with
devm_spi_register_controller() in the AXI SPI Engine driver. This
saves us from having to call spi_unregister_controller() in the
remove function.

The remove function is also removed since it is no longer needed.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 81d7352d2b8b..819744246952 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -532,7 +532,7 @@ static int spi_engine_probe(struct platform_device *pdev)
 	host->transfer_one_message = spi_engine_transfer_one_message;
 	host->num_chipselect = 8;
 
-	ret = spi_register_controller(host);
+	ret = devm_spi_register_controller(&pdev->dev, host);
 	if (ret)
 		return ret;
 
@@ -541,13 +541,6 @@ static int spi_engine_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static void spi_engine_remove(struct platform_device *pdev)
-{
-	struct spi_controller *host = platform_get_drvdata(pdev);
-
-	spi_unregister_controller(host);
-}
-
 static const struct of_device_id spi_engine_match_table[] = {
 	{ .compatible = "adi,axi-spi-engine-1.00.a" },
 	{ },
@@ -556,7 +549,6 @@ MODULE_DEVICE_TABLE(of, spi_engine_match_table);
 
 static struct platform_driver spi_engine_driver = {
 	.probe = spi_engine_probe,
-	.remove_new = spi_engine_remove,
 	.driver = {
 		.name = "spi-engine",
 		.of_match_table = spi_engine_match_table,

-- 
2.42.0


