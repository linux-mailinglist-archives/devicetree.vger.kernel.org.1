Return-Path: <devicetree+bounces-91230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C40A59488F3
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 07:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 013AE1C225C3
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 05:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A2A1BC081;
	Tue,  6 Aug 2024 05:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRlvMaMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF0E15B10F
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 05:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722922224; cv=none; b=Bp4xuxojSYYUWM2CTXaZ/SzlDnqKkWPYy+ZfPLlZM0mV8eyifwKzNh2+/QKJJM+Mb74uw8/zkk5EsGmxw+4VrZJc4b0S9Jb3uWMUp5xMAPC1ipKKAZx+rHhCBsISWvD7cW8Lr8IwRO99jd0X3khZkAW1HPWki9U5sIDr4ywrFPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722922224; c=relaxed/simple;
	bh=bUFGGq/1DCIlvcu9miL4N4gpi5KrC90KGwmsarXOo+w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Sd2yoPg1d2ct3BmPTmay9LKK3q+S7s3Cl90I0JFiudfHyteQM5DP2SbaWdQXNvHY86DrSClVkDKECxbZFJTkqIX1ynqVci1uh6HJqkZ3mePR55SD05s345vAtMvQbDgZxV5vL//lG1rZtLrXPjxpiiyBOe+tg1rSLEHLQV2704E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRlvMaMy; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3685a5e7d3cso182828f8f.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 22:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722922221; x=1723527021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4hXRkH8MOQ2XqrQSvvILuQ7ZzSNv5CD9tjzXSNfLBuc=;
        b=NRlvMaMyOyj/CPziGKYLZgbvm2Y8no0FiY+aabovGLGX6KVDk2bcGrsgArkM2Bzy0d
         qbOSYOSYFY1XrnWtwq03UlnY+huctAZD7gsBidbNTX1o+3SIwdlhHsEh0HU2GdxvVM76
         aakH7I2llcn4qU0rO49MczvnuH4kcUSqQHK45a1DxWG0nHF9GfcwgtOf3Xyv4IgaTfOF
         S+564jy7/R1038NMx+ONHD5nOJg0Av7moAW8FkDnCdSgEr5+5KkdEQkxyrs8sKYv8h/7
         G2+nlHCBtAex7BzwKtGSzGxYK0CjmbWaOGLIAW0x2/3/TVXtzhZV+2yyU/IgtroDn0Rf
         SIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722922221; x=1723527021;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4hXRkH8MOQ2XqrQSvvILuQ7ZzSNv5CD9tjzXSNfLBuc=;
        b=vXuIlUzj0VX8J4srtqQzNEn8dAZxdszLAI5N7JDl75gDgygfi10gKRm7j6gHVNpm6u
         8/ib5gLoDSM/YkVACkPqyyoFookF/BI0GldyBcR/JkhR1ng3igQmX0JUNbTQBhDrQUo+
         7o50NNhC/xAotaL0F11XcdtFdNzky/xRLDlcE6qu6w0brIl44awbc3uwAcxKtvXx1zHa
         vv2Izwkrx7DO198+z9GimVu+oOFgO/uIHxQ1I1DkZ8OagONJV7K9qPo5oqGlMio3uis4
         MZrZG1E9IQXhiT1ieU/CEMu3YYTIQbvFhdQy4GYDhSO8h76F34BziRke4GGAKBmqN6Tq
         etAA==
X-Forwarded-Encrypted: i=1; AJvYcCXnFODV3R09pZj83YA3CyfeAmJE2/kBVA0YmccbwRj4aQWj27nXz5M/b4I87G75eQCGVUxDNspoa6Hlttg3UtKPvcxLHSt06pPOww==
X-Gm-Message-State: AOJu0YwJvRXnmfyjMrKorIzyXnoG7sgY4UfyJKVcqCEQjsH9V/pkSPti
	ICExkE1IiUqYe38wzixB/X5i0YIp36kTIJhbx1KbSK6vGQfAnGlktM7O2N+oeWI=
X-Google-Smtp-Source: AGHT+IHmcljSiLouZVq9w4i35uhAxtfDDK+1A6gTsRoyWE0glDBTIUkscLYoEcP6z9Kj9uh21N+7XQ==
X-Received: by 2002:a5d:5e12:0:b0:36b:bd38:c724 with SMTP id ffacd0b85a97d-36bbd38c869mr9085055f8f.47.1722922220553;
        Mon, 05 Aug 2024 22:30:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbcf0cc8esm11685000f8f.19.2024.08.05.22.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 22:30:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Albrieux <jonathan.albrieux@gmail.com>,
	Matt Ranostay <matt@ranostay.sg>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] iio: magnetometer: ak8975: drop incorrect AK09116 compatible
Date: Tue,  6 Aug 2024 07:30:15 +0200
Message-ID: <20240806053016.6401-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All compatibles in this binding without prefixes were deprecated, so
adding a new deprecated one after some time is not allowed, because it
defies the core logic of deprecating things.

Drop the AK09916 vendorless compatible.

Fixes: 76e28aa97fa0 ("iio: magnetometer: ak8975: add AK09116 support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/iio/magnetometer/ak8975.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/iio/magnetometer/ak8975.c b/drivers/iio/magnetometer/ak8975.c
index dd466c5fa621..ccbebe5b66cd 100644
--- a/drivers/iio/magnetometer/ak8975.c
+++ b/drivers/iio/magnetometer/ak8975.c
@@ -1081,7 +1081,6 @@ static const struct of_device_id ak8975_of_match[] = {
 	{ .compatible = "asahi-kasei,ak09912", .data = &ak_def_array[AK09912] },
 	{ .compatible = "ak09912", .data = &ak_def_array[AK09912] },
 	{ .compatible = "asahi-kasei,ak09916", .data = &ak_def_array[AK09916] },
-	{ .compatible = "ak09916", .data = &ak_def_array[AK09916] },
 	{}
 };
 MODULE_DEVICE_TABLE(of, ak8975_of_match);
-- 
2.43.0


