Return-Path: <devicetree+bounces-81383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8936B91C195
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 16:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BACFE1C237AA
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D111C9EAD;
	Fri, 28 Jun 2024 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OmUH3gU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DFF1C68AA
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586127; cv=none; b=kFQu76ykELowySwfxx1S+aW9gbY9xSeTBWPyMoqy95NOXmDgcaeR/gBa/YVRdqmgKUfeCabBDnYlsx99PCYDkSBlmLeJSlhcUkga0pElnsfr+cDiHqsb5Iy+L8CwQ+VLvIrgVhV4ciFMONP4SqnjfLAvNMCcJm/CJH9rkA/epb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586127; c=relaxed/simple;
	bh=TIZIXKMsUIcBcBNX8jkDzeY8VA7Mhb/sJ7N5yvRpSuw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ilildtK0c6qifX0vTenlbRi0JjzQSl7z5Lqv1kp9bSFLY+F9o3HC+/QqIXdkdNu0DAuqwWZtNZTjqJ6EJ6/FQjmzkRcRpaS19g4J6lYZnosni8CiCbfi7sR2/ON8J+OGL8yCzOkLZdfYfptR0GKJpIo4zB1L44eHIaypi8PkxMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OmUH3gU2; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so8692151fa.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719586123; x=1720190923; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0syamWwYKEIgGFfBRP6mPS2Iu9QxWFGeekc+8eB0dRA=;
        b=OmUH3gU2HjJ08h9gcbgCvhKQ60f0zK7OETyEt+VYQlMd6YONKXyjpJtz+0tXymzTCj
         9WPDx731RI9Bhiysus0vUGiw4MxjAvNRqEcdLHYu1iiDaClmcDHMsoOsUMArpdOzVsPb
         jgCO7LKDPkJD136yVvewajpVgvxfvh6H/I3H7DtNY25J5HZeOnUGLLkMDAvZokVjtyyu
         Vd3xVDTLsQxSYwG286oGlWr4hFC6WGQxnVqiN1mdbkQKypNvFnZC2xESUgKD1vP9K5GN
         MihOjbiFQnI8UbkETcPJvny+UGWyycPXAHQhp8sSHZmtIvtGfN9e0629V7775o/L3ROV
         MORg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719586123; x=1720190923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0syamWwYKEIgGFfBRP6mPS2Iu9QxWFGeekc+8eB0dRA=;
        b=nVZdxYIpXXni/cYseDppglubhuf/MH1bKg7SWoX7mHPK5yLnzmZHHt4BGiXqce2p1g
         X2BM/wtqbJGGlpCAucQfUKdka1oPbwtGh6ONvdfIdYbk2/G2w7SeD8QVIoBqv5C6pizd
         9rkEaFLj2IdpbErS9khhGpD7d+9rvshmxriif+3Q/fWX7ugXjo5C6FNZm8qae1o/jDkB
         VZ0SSMYBxlQhxAKkK+vHAA46SzOgt92z2EmsLfLkbOUbE+qGSoIfFpk7ihDuSduvqiU8
         GNk6eqtLoiimfRCwmBRGT52E04XmO4TgptqOOHqhSarenEu1mEl4yfg3gu9q89dAWw/d
         DEyA==
X-Forwarded-Encrypted: i=1; AJvYcCWai21wJmEv03BQosWfxj/6JbKRUrHl325ve/qV+/yANtW6AW3ow2AyEC7lwmIpLk2J6x8ZXVLFvm8QVws3TWw87U76ZK28tNRckA==
X-Gm-Message-State: AOJu0YywM51TxJVIILtjTC4yytOwN7hImlUj/C8GxHTTQC+roiuOLGlX
	BEtNt/i1YdypG3qwcS7OrA6RdtbnDcAPggxGE9AiZv4Zvy/rT+vOaqGfdCfeXew=
X-Google-Smtp-Source: AGHT+IGdYd+dELr8zIKWmQcy9X5n0z09TSJbmVdeFrFpZc6IVQh56XrFpIW3yj6V8h5TPsPZTCvydg==
X-Received: by 2002:a2e:8913:0:b0:2ec:6755:a0cf with SMTP id 38308e7fff4ca-2ec6755a196mr77843931fa.32.1719586123293;
        Fri, 28 Jun 2024 07:48:43 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af55c0asm37972575e9.15.2024.06.28.07.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 07:48:42 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 28 Jun 2024 14:48:27 +0000
Subject: [PATCH v2 09/10] iio: adc: ad7606: fix standby gpio state to match
 the documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240628-cleanup-ad7606-v2-9-96e02f90256d@baylibre.com>
References: <20240628-cleanup-ad7606-v2-0-96e02f90256d@baylibre.com>
In-Reply-To: <20240628-cleanup-ad7606-v2-0-96e02f90256d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beniamin Bia <beniamin.bia@analog.com>, 
 Stefan Popa <stefan.popa@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com
X-Mailer: b4 0.14.0

The binding's documentation specifies that "As the line is active low, it
should be marked GPIO_ACTIVE_LOW". However, in the driver, it was handled
the opposite way. This commit sets the driver's behaviour in sync with the
documentation

Fixes: 722407a4e8c0 ("staging:iio:ad7606: Use GPIO descriptor API")
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8cce1fad9763..50ccc245e314 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -443,7 +443,7 @@ static int ad7606_request_gpios(struct ad7606_state *st)
 		return PTR_ERR(st->gpio_range);
 
 	st->gpio_standby = devm_gpiod_get_optional(dev, "standby",
-						   GPIOD_OUT_HIGH);
+						   GPIOD_OUT_LOW);
 	if (IS_ERR(st->gpio_standby))
 		return PTR_ERR(st->gpio_standby);
 
@@ -686,7 +686,7 @@ static int ad7606_suspend(struct device *dev)
 
 	if (st->gpio_standby) {
 		gpiod_set_value(st->gpio_range, 1);
-		gpiod_set_value(st->gpio_standby, 0);
+		gpiod_set_value(st->gpio_standby, 1);
 	}
 
 	return 0;

-- 
2.34.1


