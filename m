Return-Path: <devicetree+bounces-165034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A615A83298
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48502466821
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65557227EBE;
	Wed,  9 Apr 2025 20:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qWvQaglg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BC821ABDE
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231077; cv=none; b=r2wgfz6B4d8uUCJ52wkdB3VJQ1wxKRU0C9JIb604EEhFLLHoD4yAiTEPm+86GpaCUFU0lShPnvIfib54bdTdhxrGOZFp7ZQZO+OByQTIHzgJvtOA1NTRn+OXSyYQVgcQcLMOv8WdJ2YM16Oo1SW890oVWNhxW6bzMl4OO/22DZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231077; c=relaxed/simple;
	bh=AQOh1SAmTjWO6vzJ8CZkmZ+2uws48CsZYe/GOw/fK5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KoIAZmcCMWzZaYQXJIgebNrycTSaNQxJ4jDR8CTjl0GxQI0hiNmPHSzF3ZnAkDjLBeT/13UJiXfcvDcyunkBGH3kw/CncgmQmrJccguGMUp1gi8nR6Va5jTzT6+tQmU27aUuwV8J4KkG6B+tj9wBNVgLZafQDHHY5/mvEuV6pZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qWvQaglg; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso198689a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231064; x=1744835864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+zcRydoPq0e3uOYwLlj7ABnDIgPKatAxdb7+TG8s1Ss=;
        b=qWvQaglgLv2lTaKwxS+lfEzU8PLEEPSwpZhB8yOV5+a4qJvgRYG4O37f5tzZWZPqla
         OLTr20EO3qW96L7iGj2qKI9Z9Q5MmG15dYUtsP5VwoWnpbv2X5ruOon3QunQk7ETp/OA
         F1ZmsA7OcDzf89HOaPwm5sTZqgClRg/869lniWKsBIRbOtHwpxCoYq2IcvUZTYHZfg4Z
         Tq+4WppFDucsk2p9QNhttj8dx1ft47D7ul0UJYq6yRtWis3rI8DGw7QcTrm3wZkAm3yr
         Sd/jKbmTmBUHGH0ui3/QIMCs1chenKUEb/PUVwr2lQwLlVCMW+cY7U31W2TlImumNmGm
         v5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231064; x=1744835864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zcRydoPq0e3uOYwLlj7ABnDIgPKatAxdb7+TG8s1Ss=;
        b=Js6HquBimV/+lHDx2g/QIe2NUzm4ECp4D7mwCXr2oR8u2uAtZV5Cco7Jz1075B5zkZ
         CX9D65T6RXbHt51QYoJQhwQjKLvxH7Lo5jHILi4B11DBerBJBOVTEB7vV+LxcC1YrM8U
         WR3J8CFXyZkd3zw9VIw8r3hQmsCmbwfgxPAXP/z+v5eWi9r7iiTxfbnFtfKoi67HqZU/
         38Cz+zKCGmGo8b/caNOFuSNGF/0JLw/Y8ki3tofbqZsTShiVvQNkAWDXHkRa2BGv5+Ra
         9tir2gglq5PdyzpQxNKcaqtVvI3iywj0iiGdu+QIARqDeKwEuUffrZ3rvXOXKSKJ4m0t
         Ofuw==
X-Forwarded-Encrypted: i=1; AJvYcCV82VrmKOCuErqGKMjigJzcFyyJ0A4Q+zQjY2Aq60mzutSfibS3oSz3mB2ompGMmjbdD7FWLzryapWD@vger.kernel.org
X-Gm-Message-State: AOJu0YxVTYP7fbMZRy9NacwM1DWBHbiF/HZusnbicQ2nX5Ni/JFUkVRV
	afg7VlzX48qickUOyBqy2wlbq9Whx/sN2y/30wtM7qZuA2hUJ9XCuBLTPhkH+O0=
X-Gm-Gg: ASbGnctqscIIQgCGLoLQ7OlThE6Si4ixuhizklr6a9OfXi7N1UHeLzotib2kjivsHJ1
	KvfWfZarfNSJ3q8SKdnCV8voR5N0M+7EkKpqLe4XwI8Qv3YkQyji2z5+MiM9Sw7DyUOlE8uT9ku
	1Y+t40mOEZTuLhZNrG+yj/moiOiOxo1wn0GmvARAaLp0n4bVzBRM3UBWeu27kpCXZKPd3FcwDaw
	uEBNAuZkEU+zYIb+l2J7vOhELfqqSGlRTCItGN+/e+t2QbJjmCnk5VYvUklKpvHoXfXq39Z0Uv9
	QP+L7TKApq3k7O5k4tuLExMZBXqHH2R/ye/JdVtEDRZSKnxgz14lzHOOVKhzAp45PtQYDKC9FT/
	cH0eVtsyCcb0datjmW1/XQbrOO1w=
X-Google-Smtp-Source: AGHT+IGvuuLoVK2j6sMyyQsZa8p1VCqZY8y0EZ8duJvRWZG85z91U/cgYPqYUZihq20x9iTbe4XZTg==
X-Received: by 2002:a17:907:7203:b0:ac7:19f0:aa5a with SMTP id a640c23a62f3a-acabd2517dcmr7867666b.27.1744231064521;
        Wed, 09 Apr 2025 13:37:44 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:50 +0100
Subject: [PATCH v4 29/32] rtc: s5m: switch to devm_device_init_wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-29-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

To release memory allocated by device_init_wakeup(true), drivers have
to call device_init_wakeup(false) in error paths and unbind.

Switch to the new devres managed version devm_device_init_wakeup() to
plug this memleak.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/rtc/rtc-s5m.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-s5m.c b/drivers/rtc/rtc-s5m.c
index 095b090ec3949e0e8074cc344105daa00b795245..f4caed953efdd23fd0132d74d5199dec9cdfd294 100644
--- a/drivers/rtc/rtc-s5m.c
+++ b/drivers/rtc/rtc-s5m.c
@@ -779,7 +779,11 @@ static int s5m_rtc_probe(struct platform_device *pdev)
 			return dev_err_probe(&pdev->dev, ret,
 					     "Failed to request alarm IRQ %d\n",
 					     info->irq);
-		device_init_wakeup(&pdev->dev, true);
+
+		ret = devm_device_init_wakeup(&pdev->dev);
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret,
+					     "Failed to init wakeup\n");
 	}
 
 	if (of_device_is_system_power_controller(pdev->dev.parent->of_node) &&

-- 
2.49.0.604.gff1f9ca942-goog


