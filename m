Return-Path: <devicetree+bounces-16739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D43D27EF850
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74BCBB20A3D
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50EB45BF5;
	Fri, 17 Nov 2023 20:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dF4HhDH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73BA010E5
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:58 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3b5ff072fc4so1435810b6e.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252038; x=1700856838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npvMQYAJSwyILZ7IKukB/DvG7sNQ93TySYJ1U4gDkl4=;
        b=dF4HhDH2eqiJds+sz20xspLu3qG1xNOdNILpBOPIQlUyyAd/h6KZkNRbNNuCYrZuvG
         42zo54xPs/eko/hE5oub++KHHUkCnGYIbv4p+2xIgz/IPQ6e0KsOon+CTZn7MywympNu
         oYh8XdrJbK3gLKJIzbrlD3wX+DsY5Ll/opwJh9SJKt9JBpjKzhe12AWXCvlcXdkYVpxa
         GJSl4jWRDwE9c3vUto2rD5w3tFfh/g/c630723YIhpvthgo9nOo2waY3gx/BdmNOexZO
         7P2BZAidQZchZ5ouG7SqPpT64+d4u7uthtwRXC5M+KLgpoUxJasnS9SqQnHqWfXIHZw/
         Ckvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252038; x=1700856838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npvMQYAJSwyILZ7IKukB/DvG7sNQ93TySYJ1U4gDkl4=;
        b=WWMLYg9dmvmNedrSGgDaahtevUGJEjif6PAUuc991p74TmpCTb7oIxtd9JE8b5NqZN
         5OZ2OK0oTrIikPGH2NDYG37Mgd/JL7ZnsekJuYA4+H9OdpmqxTMtIojVGQ6TELVxRt3B
         1HU7obEwWhredOk6c65t0ECYrE+ej2cRUQDOLoT0dgucBo98u+yEJZ5psxNETRfgQJMB
         q98L2Kp9m8VsGwHep8ENAX8/dd1czTexBXRyMQzDflUxIMWEZpNZwYrqkEYbi7n6zrrl
         ic2+eApKbZCggteQ0WrY3K2bdZkhgcr6XPnsX/eyy/N3aul1q7RthJY4GIwCvLrYCX8o
         kKPw==
X-Gm-Message-State: AOJu0YzFLfPhOuS4j6xD2z9ME5nlGgzVFqN+ifoudwrzzA4HsxlVfOKE
	2tp8Ka6bv8G2m/tkzcXmLnZELw==
X-Google-Smtp-Source: AGHT+IG/IrKsnh7EvBouduSI/F9prrBZP+rKdeDxzs2BynwF/hXH1i+4jAjYYRswiZ4KwgtdAuPN5A==
X-Received: by 2002:a05:6808:1288:b0:3ab:84f0:b49d with SMTP id a8-20020a056808128800b003ab84f0b49dmr594399oiw.3.1700252037854;
        Fri, 17 Nov 2023 12:13:57 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:57 -0800 (PST)
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
Subject: [PATCH 08/14] spi: axi-spi-engine: check for valid clock rate
Date: Fri, 17 Nov 2023 14:12:59 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-8-cc59db999b87@baylibre.com>
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

This adds a check for a valid SCLK rate in the axi-spi-engine driver
during probe. A valid rate is required to get accurate timing for delays
and by not allowing 0 we can avoid divide by zero errors later without
additional checks.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 819744246952..8a6fbb3bb3f1 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -532,6 +532,9 @@ static int spi_engine_probe(struct platform_device *pdev)
 	host->transfer_one_message = spi_engine_transfer_one_message;
 	host->num_chipselect = 8;
 
+	if (host->max_speed_hz == 0)
+		return dev_err_probe(&pdev->dev, -EINVAL, "spi_clk rate is 0");
+
 	ret = devm_spi_register_controller(&pdev->dev, host);
 	if (ret)
 		return ret;

-- 
2.42.0


