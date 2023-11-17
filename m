Return-Path: <devicetree+bounces-16740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C67EF84F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A98551F245BD
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FEAC43AC7;
	Fri, 17 Nov 2023 20:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CwKoOETZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E477D6C
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:00 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3b2e4107f47so1592625b6e.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252039; x=1700856839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3x/o+ZhKJLhCZxPJDvSVJn2SYXdsZyrTC3illb8aSGE=;
        b=CwKoOETZGqRe5UOqmT1L2acNwFT+sCm90z6Wce9bLIOiYNpu/NIa1HtvwKYSaZiosg
         CUxX+YsEjzHJKPMfFL/itqTlHCgyxQgMoTsEx+2ELphA+EAjxkoo7kUlquYWYRuLxlR8
         ST1uNo5tL5iLc9bBnTV6vJSF0Y1HVASK2OkTP3jMKCKupM/YLkIMNzSNrk4ZWT7v/1hz
         ssMBdM/fDX7YTxgu7Vq199CLU1bF0Y10A07bFl9/SqstvjvtTKwzkPxrJ4Oy+6YbGoci
         wXmTeMrOk/eI9tuE5MqIqQ1NTp/m2CMe7bRSUPg+F1MbGpxC8coWdqbcsYdg4t96uB/w
         IxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252039; x=1700856839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3x/o+ZhKJLhCZxPJDvSVJn2SYXdsZyrTC3illb8aSGE=;
        b=n3MD3Sh5H8xqE0FjEcX2EbsXPesFttfroDUb+b9h7bnBMvZDhORXYtXi3JhiZc7ex4
         7oGnueKjoTqq2QndXC0m0jxNNbCkLYZT6uM4698b36lK3Uj6mWg0mVk3X27TdSNzIHtO
         ja54WsjRAaS/noNTNUDGPwBrcAJmO48aFyYJa6v43fhQ0fFvroNTkk9ZsNhSCEbHpGED
         3H9/aZnIkPGgZPq45LMPzJ44XefJ5bW0/4udqji3+A6E74HpRSN9Lf6k+pccb/dbvMG8
         Lk2dX94Z6rlFsVmijDnjfcuqYU0im6NNZIabqaQL7KsAQ5phs7qbDJ0tBCTzLoduLMO0
         gIDg==
X-Gm-Message-State: AOJu0Yw4QcU9fnfr66t0fOcWg/oYo47zto0Ty5/0h5VcjKZy4/E1wP3o
	Im+NJh4pLgQKXL7FJlWOLmkRvg==
X-Google-Smtp-Source: AGHT+IEbin8UNO6r4Ykm5emy9h67aMHC8MsdLHv1PzpTun13feE0DMgvGrPV0W2CxfD98j+AiJB+qg==
X-Received: by 2002:a05:6808:15a8:b0:3b6:3d44:4d75 with SMTP id t40-20020a05680815a800b003b63d444d75mr576150oiw.22.1700252039458;
        Fri, 17 Nov 2023 12:13:59 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:59 -0800 (PST)
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
Subject: [PATCH 10/14] spi: axi-spi-engine: use message_prepare/unprepare
Date: Fri, 17 Nov 2023 14:13:01 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-10-cc59db999b87@baylibre.com>
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

This modifies the AXI SPI Engine driver to make use of the
message_prepare and message_unprepare callbacks. This separates
the concerns of allocating and freeing the message state from the
transfer_one_message callback.

The main benfit of this is so that future callers of
spi_finalize_current_message() will not have to do manual cleanup
of the state.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 46 +++++++++++++++++++++++++++++-----------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 745000a9b2c7..210bea23f433 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -412,11 +412,7 @@ static irqreturn_t spi_engine_irq(int irq, void *devid)
 
 		if (spi_engine->completed_id == st->sync_id) {
 			struct spi_message *msg = spi_engine->msg;
-			struct spi_engine_message_state *st = msg->state;
 
-			ida_free(&spi_engine->sync_ida, st->sync_id);
-			kfree(st->p);
-			kfree(st);
 			msg->status = 0;
 			msg->actual_length = msg->frame_length;
 			spi_engine->msg = NULL;
@@ -436,14 +432,12 @@ static irqreturn_t spi_engine_irq(int irq, void *devid)
 	return IRQ_HANDLED;
 }
 
-static int spi_engine_transfer_one_message(struct spi_controller *host,
-	struct spi_message *msg)
+static int spi_engine_prepare_message(struct spi_controller *host,
+				      struct spi_message *msg)
 {
 	struct spi_engine_program p_dry, *p;
 	struct spi_engine *spi_engine = spi_controller_get_devdata(host);
 	struct spi_engine_message_state *st;
-	unsigned int int_enable = 0;
-	unsigned long flags;
 	size_t size;
 	int ret;
 
@@ -472,15 +466,41 @@ static int spi_engine_transfer_one_message(struct spi_controller *host,
 
 	spi_engine_compile_message(spi_engine, msg, false, p);
 
-	spin_lock_irqsave(&spi_engine->lock, flags);
 	spi_engine_program_add_cmd(p, false, SPI_ENGINE_CMD_SYNC(st->sync_id));
 
-	msg->state = st;
-	spi_engine->msg = msg;
 	st->p = p;
-
 	st->cmd_buf = p->instructions;
 	st->cmd_length = p->length;
+	msg->state = st;
+
+	return 0;
+}
+
+static int spi_engine_unprepare_message(struct spi_controller *host,
+					struct spi_message *msg)
+{
+	struct spi_engine *spi_engine = spi_controller_get_devdata(host);
+	struct spi_engine_message_state *st = msg->state;
+
+	ida_free(&spi_engine->sync_ida, st->sync_id);
+	kfree(st->p);
+	kfree(st);
+
+	return 0;
+}
+
+static int spi_engine_transfer_one_message(struct spi_controller *host,
+	struct spi_message *msg)
+{
+	struct spi_engine *spi_engine = spi_controller_get_devdata(host);
+	struct spi_engine_message_state *st = msg->state;
+	unsigned int int_enable = 0;
+	unsigned long flags;
+
+	spin_lock_irqsave(&spi_engine->lock, flags);
+
+	spi_engine->msg = msg;
+
 	if (spi_engine_write_cmd_fifo(spi_engine))
 		int_enable |= SPI_ENGINE_INT_CMD_ALMOST_EMPTY;
 
@@ -572,6 +592,8 @@ static int spi_engine_probe(struct platform_device *pdev)
 	host->bits_per_word_mask = SPI_BPW_MASK(8);
 	host->max_speed_hz = clk_get_rate(spi_engine->ref_clk) / 2;
 	host->transfer_one_message = spi_engine_transfer_one_message;
+	host->prepare_message = spi_engine_prepare_message;
+	host->unprepare_message = spi_engine_unprepare_message;
 	host->num_chipselect = 8;
 
 	if (host->max_speed_hz == 0)

-- 
2.42.0


