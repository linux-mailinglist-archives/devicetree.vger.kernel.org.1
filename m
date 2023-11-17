Return-Path: <devicetree+bounces-16744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA4E7EF856
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E59761F249F9
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40E145949;
	Fri, 17 Nov 2023 20:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mJuBTJQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B475173E
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:02 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3b566ee5f1dso1446484b6e.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252042; x=1700856842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6P+/RJb/cpUDSZO9aZmvZcYWX64h3DCpi271jxLHolk=;
        b=mJuBTJQyYIMZXnaCfua6kd7F4fee5sTKKD/NSeXd0DEH8JMEXpWpvWeYM+UxSvPdhL
         igr9ZTk3aWYW4EKOr4jJmq74uKxBn/zMM8srLf/HJz3ldK9b2vekNqWIZJgMt+3LbZh7
         DkFozzyjukJtnZ0lw9w+YW1yas8rIYPyhPlHRujUhO4Y/o0k5GGMC260bA1fLKq6I+iD
         dXG9qfwYI5ov35igQhrlHcO7GoiKNV0otvgNcaasvQr7hk26GpRfztiet6KrD1Xm9M7s
         /emAhjdEVL2TWm0gLBpDsWQwpu3bO7B9kpYAkkIAMbb8cEkPX+Jc2XwiYRqqH5gULECB
         2A7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252042; x=1700856842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6P+/RJb/cpUDSZO9aZmvZcYWX64h3DCpi271jxLHolk=;
        b=CCOK6yoU2R6ktx/XtxeX+UgYHu5l3HGV71EmlkymYF2OKGENwVGHguimAU1KiBK6m6
         HdN6eobIE2MXe2E1iJGBd7hnKPbU2gvolWBpOVqNcXhnn4PlJMUHQ+fSy7NIaR+jIYYc
         KIcQ1qzDnBDZxV0EkKmpypdJRaBk4Yrj6HIxU7h7bIOvwh1ZHXZTxnnMqKi+WsUc+33k
         PMah3mldH8KypmbQmrBIu1cDCkUMXXS6TvUFih828bsG/ts1fMYhfsE+j9ia3DO5H8Lo
         cjZbaEQoVWtizF1lq40TVQMqxgAa4Fs6+KfQqD9L1sIRSwWIaMTSs+86qVaurhbuHEyz
         PqlQ==
X-Gm-Message-State: AOJu0YyDslTISPr5GIWamCGJxgwnFa3/OI9aXpDwaz+3JBjpxKZb8dbI
	nAIV4t7+rLjNS9ST9yly3aDelQ==
X-Google-Smtp-Source: AGHT+IFEitzBPfYZPR5lABqTFEOeHF0t8EqCeQ2/c/+BO/rZ9LzA3npUgrEGfGJe2sKopIY/JWdDoQ==
X-Received: by 2002:a05:6808:f07:b0:3b2:d8c8:7bfa with SMTP id m7-20020a0568080f0700b003b2d8c87bfamr555396oiw.8.1700252042081;
        Fri, 17 Nov 2023 12:14:02 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:14:01 -0800 (PST)
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
Subject: [PATCH 13/14] spi: axi-spi-engine: add support for cs_off
Date: Fri, 17 Nov 2023 14:13:04 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-13-cc59db999b87@baylibre.com>
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

This adds support for the spi_transfer::cs_off flag to the AXI SPI
Engine driver.

The logic is copied from the generic spi_transfer_one_message() in
spi.c.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index c39f478f34a7..1c60e6486ee2 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -216,7 +216,7 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 	struct spi_device *spi = msg->spi;
 	struct spi_transfer *xfer;
 	int clk_div, new_clk_div;
-	bool cs_change = true;
+	bool keep_cs = false;
 
 	clk_div = -1;
 
@@ -224,6 +224,9 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 		SPI_ENGINE_CMD_WRITE(SPI_ENGINE_CMD_REG_CONFIG,
 			spi_engine_get_config(spi)));
 
+	xfer = list_first_entry(&msg->transfers, struct spi_transfer, transfer_list);
+	spi_engine_gen_cs(p, dry, spi, !xfer->cs_off);
+
 	list_for_each_entry(xfer, &msg->transfers, transfer_list) {
 		new_clk_div = spi_engine_get_clk_div(spi_engine, spi, xfer);
 		if (new_clk_div != clk_div) {
@@ -233,20 +236,28 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 					clk_div));
 		}
 
-		if (cs_change)
-			spi_engine_gen_cs(p, dry, spi, true);
-
 		spi_engine_gen_xfer(p, dry, xfer);
 		spi_engine_gen_sleep(p, dry, spi_engine, clk_div, xfer);
 
-		cs_change = xfer->cs_change;
-		if (list_is_last(&xfer->transfer_list, &msg->transfers))
-			cs_change = !cs_change;
-
-		if (cs_change)
-			spi_engine_gen_cs(p, dry, spi, false);
+		if (xfer->cs_change) {
+			if (list_is_last(&xfer->transfer_list, &msg->transfers)) {
+				keep_cs = true;
+			} else {
+				if (!xfer->cs_off)
+					spi_engine_gen_cs(p, dry, spi, false);
+
+				if (!list_next_entry(xfer, transfer_list)->cs_off)
+					spi_engine_gen_cs(p, dry, spi, true);
+			}
+		} else if (!list_is_last(&xfer->transfer_list, &msg->transfers) &&
+			   xfer->cs_off != list_next_entry(xfer, transfer_list)->cs_off) {
+			spi_engine_gen_cs(p, dry, spi, xfer->cs_off);
+		}
 	}
 
+	if (!keep_cs)
+		spi_engine_gen_cs(p, dry, spi, false);
+
 	return 0;
 }
 

-- 
2.42.0


