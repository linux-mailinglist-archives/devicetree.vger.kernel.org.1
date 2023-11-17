Return-Path: <devicetree+bounces-16734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122C7EF847
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19974B209A7
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6B845949;
	Fri, 17 Nov 2023 20:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a3T6+vYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61D0B10EC
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:54 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3b6cb515917so1486768b6e.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252033; x=1700856833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ldjfSGznOnPblU5dGC3l3g5toq9lO7sGMGu6CgtS3M=;
        b=a3T6+vYCIGb5Q//Z/lesLocw+DyzyxQIQXdyrbzc9cNj/QahPUsj2yjDirdjsw7FV7
         1Bm5vbLuiu2/pdkN5ZUyBl2QSygMoYWBTozG4IUYwR8xuGC7Z1sjn37OCM1/SjTZAPMB
         vxg2HXd3+TRGSAS+OpW5Y1YaX44jGZqmN9Mo+tZcQppikM73mmcIPNfJH22THUSMCiqr
         mwHQ1SqlyYfs6GTzGW9VdW4f7qdrWr4wKTSfXih/vgf6Fc6SprgzX9wFRvlJr1yb2CVN
         bKf0jBCcvcz3kJb3H+bGQBBUrv/fahRmCyB9RvY+0umlhAJD+lSDStQRixSGDiDrd8eY
         fD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252033; x=1700856833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ldjfSGznOnPblU5dGC3l3g5toq9lO7sGMGu6CgtS3M=;
        b=Jmm199PXm5Au3Zwj9EIAUHyOVKZZND7y7r9iYh7Rdj/AldGAcKXWH9x1ecdSf1m0B0
         X9ELlXOnnTVbfwuymtWMxjduBFZKuYh59LA+Z8++j+5TG83ZquQUq22dQ9+FgTBqCcvF
         a60Wg5eJ0oeQTTrRQJFK2Uf4iz15a9XkPbNp2PTfbLk28yQo3uWLDE9rPTyNdZWFeQ4N
         5Ha3rkv+owGp76tzifAZyYL5YcS+Yki7eDdVUhILDzSTWNVnMYIBf4ye0bP7c5pnB/d8
         BeWoT04LzCW4gDnyv16JjuOQbC3XYGUPh3m+Ztf+RJXb32Ssrf9WaXkonuwQZ532lIZE
         Ri8Q==
X-Gm-Message-State: AOJu0YzQ6F9oxUa4tNVQtX2Iz8JhQZ7zWk3G/4ycYHk46bN2CbV8HOw8
	eh4m3zROxPkqSeciSJwkO12w+Q==
X-Google-Smtp-Source: AGHT+IFkdcnKGb/veAHN78+zN7NC2qdGgVsEjtKNCmABZd6JhCDDXzUcWb6I51Glk8WhVK/eRrCtYw==
X-Received: by 2002:a05:6808:1718:b0:3b6:da98:437c with SMTP id bc24-20020a056808171800b003b6da98437cmr544507oib.0.1700252033671;
        Fri, 17 Nov 2023 12:13:53 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:53 -0800 (PST)
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
Subject: [PATCH 03/14] spi: axi-spi-engine: simplify driver data allocation
Date: Fri, 17 Nov 2023 14:12:54 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-3-cc59db999b87@baylibre.com>
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

This simplifies the private data allocation in the AXI SPI Engine driver
by making use of the feature built into the spi_alloc_host() function
instead of doing it manually.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index b96e55f59d1a..bdf0aa4ceb1d 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -473,15 +473,11 @@ static int spi_engine_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	spi_engine = devm_kzalloc(&pdev->dev, sizeof(*spi_engine), GFP_KERNEL);
-	if (!spi_engine)
-		return -ENOMEM;
-
-	host = spi_alloc_host(&pdev->dev, 0);
+	host = spi_alloc_host(&pdev->dev, sizeof(*spi_engine));
 	if (!host)
 		return -ENOMEM;
 
-	spi_controller_set_devdata(host, spi_engine);
+	spi_engine = spi_controller_get_devdata(host);
 
 	spin_lock_init(&spi_engine->lock);
 

-- 
2.42.0


