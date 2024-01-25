Return-Path: <devicetree+bounces-35119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF18083C59D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF5781C24B9C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22CA1272B9;
	Thu, 25 Jan 2024 14:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvuCZLGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B817CF3C
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194230; cv=none; b=Gzv1qsflGB22+4HBBaJGC1SSt43BM8f1ZLxtAZm46jD6XpNX/F2NDp97+v2xwThi32rmoOT0Yclsb7s40sQkhNNvpz5GnE1tPu3pud7ScIAJSa0J7iUNYxH/aW3oP7+NiKzh5nEuOhNnynC7RNWFbmjw9nyffunuFSCDWE4jNCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194230; c=relaxed/simple;
	bh=cmo+MmUsz01GpSNW65Xw553FLyTVDtBzORTVJdMj4JY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=quRCkekc9SBw9TwSEzBfJ2xEG8U7GSEU1b7s86T2+7gW95c1n60NQs2q8IvhVz9a2qWbDOgrlcNrWGItnwtQ0ZBwT/c1c9FbB6etK+wZJb/iFhWTOl7uStCojV1KbRYtv735st52F/saLTnMbi1zFAbzvxLaWGMtLbVyhdoQ0uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dvuCZLGS; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40ed28f8666so5690335e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194225; x=1706799025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mb9+bEM/5blhATmtgMhoiewq5VCGJ6TCsXtGi2uVOU=;
        b=dvuCZLGSxIzTuxdjzfjM1ra4qlZHLgF0PC+FrfmO97Hj1gxXmGQJMv/uSCU2I0iLrw
         oRTdjQQ4AuMwXjrBvlRGEbV0xojGFaupz8sxJI4LHGmy0BGHsyBUDfkWNt8DSzThkwrb
         Ktcon6EZnfH6QmI6l9+MBPHTdDdXLKd4omSUWgjq6WfKCtTYxg0mK8B90i+EtZ4yq9WX
         YhY42bkGVGB78DHff3iFRLQ1GH78SjgWW8ZQSYQyfjH7YKR5wOSbjHqROX1j4MlTUm2A
         5jQ7IkZPZ1en1ACQ7AbnH4sDUhpPvZitjNdWTxLTV4KF8UtfDhQOoIXuEX7EbODjDzTY
         /K9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194225; x=1706799025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mb9+bEM/5blhATmtgMhoiewq5VCGJ6TCsXtGi2uVOU=;
        b=lcOfe/3hGnIPj8pxg4VM9EJaDgBOIHkk7bQzTOEyL7U7jlCbijekEPIfIxjEkQYcgU
         zN4j+lvhobXQq2ZPIVeF7p5CvTfnPDBayT+zFJ0QlyTEuc/5sgzv4KmRSIiab456BXW2
         jGu2H2EfQu7Ao8VMkQ+CBSlG0swvwcAaCT3+DLt86ZMeCY4QhN+oKzLiHvdL79c8AV8m
         kbx6ZX4kgy6WQqQIY9hCunCrg8oGuh1+4CIzJvIqc6B1U+OjScVO8wseJjq+VftWHPX0
         c/n5Aqpw4il/yGP5gOVgiCHUf0mpGLT9KoePpjZ5f5phe9j9nwXRYN4Vfc7VybII3PnF
         Tfpg==
X-Gm-Message-State: AOJu0YwxieEcTJR8afCUu2JjOxiCy4nvJZRaBngbZF6gyu3eJJYmsjlc
	92V45+psaaiaZ5LsMFZCJGQ6Cg6hkw9rXogRxQZYNH1sm5Y+igQbbJAjxejJfJ0=
X-Google-Smtp-Source: AGHT+IEpkD3F0Js2iaSYc1hvfcPWWEOr3Z70uQBq/1WFhCQpetg0oRQUfIM4XY7tyVLSl4yTXJPtSg==
X-Received: by 2002:a05:600c:b8d:b0:40e:d21d:571f with SMTP id fl13-20020a05600c0b8d00b0040ed21d571fmr476176wmb.51.1706194225631;
        Thu, 25 Jan 2024 06:50:25 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:24 -0800 (PST)
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
Subject: [PATCH v2 17/28] spi: s3c64xx: drop blank line between declarations
Date: Thu, 25 Jan 2024 14:49:55 +0000
Message-ID: <20240125145007.748295-18-tudor.ambarus@linaro.org>
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

Drop the blank line and move the logical operation in the body of the
function rather than in initialization list.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 00a0878aeb80..bb6d9bf390a8 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1282,8 +1282,9 @@ static int s3c64xx_spi_suspend(struct device *dev)
 {
 	struct spi_controller *host = dev_get_drvdata(dev);
 	struct s3c64xx_spi_driver_data *sdd = spi_controller_get_devdata(host);
+	int ret;
 
-	int ret = spi_controller_suspend(host);
+	ret = spi_controller_suspend(host);
 	if (ret)
 		return ret;
 
-- 
2.43.0.429.g432eaa2c6b-goog


