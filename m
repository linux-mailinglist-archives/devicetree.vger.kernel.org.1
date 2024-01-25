Return-Path: <devicetree+bounces-35126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8818883C5B8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB0C01C221AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8A212AAEC;
	Thu, 25 Jan 2024 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VtSOmR6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F221292DF
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194235; cv=none; b=NUxzabhfkq4m1fayS41ydGIIxUsSQk8aXJN6eMilWjcR5dKso9Lpgsp8LGL+yYEsT9eXb7Aih8Z8BWimn6XQfG+r9/rhjLjdrhZH3CJAAj48aTTN4meSNOZUmjVX09ONHrAJ0bcv3jYzyEhnFRNapmV9s4Y8vwBsuhTF3vUAgks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194235; c=relaxed/simple;
	bh=YK7CI4nDuPciHv9GXS1oQ3uH/9jR2Lt4ExN1jBo4lQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oPevVPyOLKj9Ok0UwuKftXFDL3YEWJACzHP/9feamwwKL2bTswogxlB8uhj01wO36ldYqQWYNAEpjrrjQsBf4LNiMg9SYF1QvmacK0JgiTnBclHJL4pD2/yDKxenFEPfy5Iuj1LDh0raVbmIuQycSwcVuqLAk3GwpW6tyYIpEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VtSOmR6S; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40e9ef9853bso5111245e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194231; x=1706799031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ctbl026rEaxCXBh6UNhTj+BYRrS9dWFgcVUWrGAOSk=;
        b=VtSOmR6SK/lbSoCJJ1UE4iV1prt6C66wIs0CrGaac6nyXGstYpcBuGiy1y4Wu9imdn
         r5/4j2prvu9JXaACCAyEwc34I5HaEV8TKibIMtfWSUZHJGp7UqCy/w3rvLPM540O08oq
         PSsMIm0mxQ0CIwGLFVeH0dmn25yWGd22UC/FYVU+wvFgnhCtB2l4W5v6hKK1+18jMAvh
         JKbG+iJ3rYA1KD7aEe2YlGwZGrQp+53SUco7l+Wd1p1H5arRKCTArD7x/HrVUJI7faun
         HqlF2hEHIInPiE9I+dbfHWHdlc97nhjZV06mCn5yNO3SYW9gh1m5yW+uTPv68lNzHWi1
         ySow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194231; x=1706799031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ctbl026rEaxCXBh6UNhTj+BYRrS9dWFgcVUWrGAOSk=;
        b=aTJ6ZnHQGdr4Fs/V34HIPcgIInVT0i9Wd8X1OrG61VR9jYurgUUjC7UHl/fKSqXWX6
         8Lkh+vIOxHBHz0F8y/moxceC6Wy2EtN218CKR2+cMzzHfZNEzaCrt8llRu7qNqyRte86
         N32Q9D6PV+LfY9Zg09OiyF3k4a620CPpa6wZfezHFyVAH2UfI7Yg2fUG4lHpD/DN90l6
         NVtihBNgn6u6TWW6Ld4p7AT8Y0fkW9unUOdI4C83RkeEY01SX25iDUpCpzPNG3JdqFIR
         yWoB3kWDH/uHSqEPpbaSvT48Fmalegzq6/VCQVnTY0nZ6k7pTsD/eIJ46JQvA4H3O7Ca
         BduA==
X-Gm-Message-State: AOJu0Yyr/RkEt3sWFL8fJCvCeSJCu8BIHVORm6UQBxFCeHpc7fVcl3DN
	nWflU/F0X416QWgHrnpx+F4znxJ5b3DjRwnpW48s+WOUJiQI9iVDi2Rk+rxT494=
X-Google-Smtp-Source: AGHT+IHn/vvZP7VTE8gLvRJTbIrhs+lai/+3E8kxtC0AH0lm9QMKCYePRA6TuhvSm1o24YFRjyjFqA==
X-Received: by 2002:a05:600c:1c25:b0:40e:a5d8:6a93 with SMTP id j37-20020a05600c1c2500b0040ea5d86a93mr739037wms.32.1706194231407;
        Thu, 25 Jan 2024 06:50:31 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:30 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 23/28] spi: s3c64xx: retrieve the FIFO size from the device tree
Date: Thu, 25 Jan 2024 14:50:01 +0000
Message-ID: <20240125145007.748295-24-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow SoCs that have multiple instances of the SPI IP with different
FIFO sizes to specify their FIFO size via the "samsung,spi-fifosize"
device tree property. With this we can break the dependency between the
SPI alias, the fifo_lvl_mask and the FIFO size.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 7a99f6b02319..3e7797d915c5 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1114,7 +1114,7 @@ static int s3c64xx_spi_get_fifosize(const struct platform_device *pdev,
 	const struct s3c64xx_spi_port_config *port = sdd->port_conf;
 	const int *fifo_lvl_mask = port->fifo_lvl_mask;
 	struct device_node *np = pdev->dev.of_node;
-	int id;
+	int id, ret;
 
 	if (!np) {
 		if (pdev->id < 0)
@@ -1130,6 +1130,10 @@ static int s3c64xx_spi_get_fifosize(const struct platform_device *pdev,
 		return 0;
 	}
 
+	ret = of_property_read_u32(np, "samsung,spi-fifosize", &sdd->fifosize);
+	if (ret == 0)
+		return 0;
+
 	id = of_alias_get_id(np, "spi");
 	if (id < 0)
 		return dev_err_probe(&pdev->dev, id,
-- 
2.43.0.429.g432eaa2c6b-goog


