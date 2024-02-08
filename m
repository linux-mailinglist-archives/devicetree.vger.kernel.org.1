Return-Path: <devicetree+bounces-39808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EC884E281
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E9CA28296A
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D17A823C9;
	Thu,  8 Feb 2024 13:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MfDQL3PU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF2C7EF10
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707400270; cv=none; b=YH7Wd8FWBWLeKl60lXRwrad74aot10/2doAO7bbSDdB8pzJr6+Vq1iseBL6TiFlzXxgqGzWJYl1W9SHM24spScYPoiyGU9n0gVRBwP+hwNVlXlvHQ8FuiJquFrKCMrVcGveoHrYwn3fP8v9Kzqm02khEr3LclfUDsvCOJaD+mE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707400270; c=relaxed/simple;
	bh=QDMQ1KkcYtiV6MjOl7LHm4vYVsmfWSXZLbn40VwBYc8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cnG7YA/EBfu06SDKVUbmQHncDi9cB3odQUh+KZrQ3jEGVeQBLkgmKVj6AI31rZwLSeqg4Px9pXwc8gNX16Wl+vQBFoiDbkiJKQj5CLBnXYbrMvqTPRY2cEDIK3+24sSHumISxPencFQDViNgmlrvP8F0078DHnzaTcOsjWOANe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MfDQL3PU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33929364bdaso1195542f8f.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707400265; x=1708005065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzqxKaIV5lycuIt7a1okhuIIh6nU9oeZCJpLQ+HKFAg=;
        b=MfDQL3PUQaKxfMJmVH5Lu7nQMEdxejTo9BdsdN0SGShXXgCtgCk8RpNeO/C7PeSkAR
         hdo3mfmUdNY+HRbQU3+Sr+Fmolc9dN9gnKbJuOopFyHksLUBYh1ytrOI3P/ZOXcN5Cm6
         gptbT43sdpVXufKe51qwZwCADuvyiM/6yuc1m+30/G+VfUll4TOljgKUuFB/nvCE15xD
         aoUwxyXsiSXu2GS/C1A5tljTIrVZFLGCus9KVt4cmV0q8iMHgPGyhWc+CAIpu8xX/8Dl
         FhvpGfqqqKKQMU1Oex2cSLstzDrtvNk47LacbwLWEmf70JlZz3N2RScpKsjzHVwBNeUV
         rENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707400265; x=1708005065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzqxKaIV5lycuIt7a1okhuIIh6nU9oeZCJpLQ+HKFAg=;
        b=RIdN29G42olnVTzec6dWfB2qTGwnI6Ca/wN6HbzYAKOyWQLB+P4ANSnVA1wLz0H/HH
         V14Wy2swJKUe4bXsBasSmOHWc1SA8KU5YkQjaLkJY/yrc4wKk+kr0v9ObnJo1IzqWoiy
         i99wSvXrUFRtThFS8UqZKsBr0r/VfRSR1LnT7YqTZjh+14YosvHkkkIMzAwRy9TIU/D+
         Fw093QF428R/aJo4Nga1jUNpO9KwYyaydURaol2XlN6hD+egzWLp9PUZ2fa9tMa1cT12
         vHX74US9Sw5u1ljLRf1/qJUuYM/3Rc74YkzVb/mMO38EXKGhFL+WAF10oLaCz2rklaZH
         2ujw==
X-Gm-Message-State: AOJu0YzUZcqM+2NHW49OcCds17F6KNVUWGwq7YL2n34uO1/YYjcYulT0
	ELEOVk71CFOyC+U9wTKc8tF6I3wYdAexeeiIWrsWSkjDbPMyYYjKW8T+fZtTiak=
X-Google-Smtp-Source: AGHT+IHWIjXxPYN55agE12/MHmkqXhHPtF1gnuJNIC45a25qfLfhPZOuIq3uWHUK5ZgGJZLOtFpkJA==
X-Received: by 2002:a5d:5915:0:b0:33b:5955:80f0 with SMTP id v21-20020a5d5915000000b0033b595580f0mr1256423wrd.21.1707400265049;
        Thu, 08 Feb 2024 05:51:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV0g5/QpwgVtEE+r/3+XY/sOhedUizACmG5fdHi6VpzcVaBsZdi6cByCvkvZEIO3ZlW0QNef4727PNWVfQtjQwvDhW1c7sA99vH/Z4wwTJfAGNmblZzzuSb5q1yC1jSXHQrao9emy/77l6oVWMPbvObQWFw5cIycpm/owUy/H/OLpkobNFWm1Tdp2UGNHkPIKuUfDBsyzu1q+V+h2Po6cxe5dQg6Ey9ZfwkbiPLWeGHwq790T9/hORNfXtVSgPg7xruKOfADvxxggItqPiohmyoRw2tD+at0PCxH3cDmNPoNFdtNVIztl6r6NNnfrPF9Y92iyFO45RpqCJnP29SiuJpMeDHDKEAbSvSS4AU3KpJIgxSXAJh1Tr+JElVQPaoy6dOKTzOK4pxZ4GVRbY8TZw/DGqD2AwryQvg03FXsJ/JJEvGj6gjeubnozOKzfLoMLQkMQyIg+pb6LKH1p8oOu8MqhFOj4OdBhwIrU9arwKijcC+edxb7O/eeQSqi4JZOXhe00lwMdT1ff2sGKJeafo8ZB7xqb87ZyxkBCNjSrnQj2qLYnNbWnlUQ+6Qn4R09EPNXTrnFq0pwZaYpt4WSS6DvZBxu/ey/S2MWvhLuQ==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id m20-20020a056000181400b0033b43a5f53csm3618820wrh.103.2024.02.08.05.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:51:04 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 12/12] spi: s3c64xx: switch exynos850 to new port config data
Date: Thu,  8 Feb 2024 13:50:45 +0000
Message-ID: <20240208135045.3728927-13-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
References: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Exynos850 has the same version of USI SPI (v2.1) as GS101.
Drop the fifo_lvl_mask and rx_lvl_offset and switch to the new port
config data.

Backward compatibility with DT is not broken because when alises are
set:
- the SPI core will set the bus number according to the alias ID
- the FIFO depth is always the same size for exynos850 (64 bytes) no
  matter the alias ID number.

Advantages of the change:
- drop dependency on the OF alias ID.
- FIFO depth is inferred from the compatible. Exynos850 integrates 3 SPI
  IPs, all with 64 bytes FIFO depths.
- use full mask for SPI_STATUS.{RX, TX}_FIFO_LVL fields. Using partial
  masks is misleading and can hide problems of the driver logic.

Just compiled tested.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 784786407d2e..9fcbe040cb2f 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1576,10 +1576,9 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynos850_spi_port_config = {
-	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
-	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f },
-	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
-	.rx_lvl_offset	= 15,
+	.fifo_depth	= 64,
+	.rx_fifomask	= S3C64XX_SPI_ST_RX_FIFO_RDY_V2,
+	.tx_fifomask	= S3C64XX_SPI_ST_TX_FIFO_RDY_V2,
 	.tx_st_done	= 25,
 	.clk_div	= 4,
 	.high_speed	= true,
-- 
2.43.0.687.g38aa6559b0-goog


