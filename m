Return-Path: <devicetree+bounces-171976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 128A1AA0CFD
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:10:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68DB63A76BC
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9165E2D29A7;
	Tue, 29 Apr 2025 13:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dTqUYaw2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AF82D026B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932085; cv=none; b=H0XfmQ3hNm99oywvUCXAznZzx03bvObwsjBSva+s0sEFL+c5N/uUXuHm6OTYpsvx0Vosc12gHdkHz+RPCCkmrWZZ0fTgz2Kv4+MM0PbgEPiwwGIjbh1rn0dX8YnSZD3DgKpleU3pWgH1fScYe59yUBUPQa8FDcD6cZDmSv5b6Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932085; c=relaxed/simple;
	bh=FIbVVo0rbRRf8O8fRJ5PXCBl/H6IaHSYl1ya1qer2mU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mLSutd5TfKYeTVw/pR3wqR0I84dx8oTr5iRl+3iY90EwAy65kSFciHQNsYD4aACxgeX0HiLpieKOnt81nD9uVs/NCYn6BL4B+4YIL5sv5l1wIY4c65HI839Z/8tD6du5mgEcqLfTjn0c6nvgNiK0WxtbJY8oT15dL7N8A/IGF6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dTqUYaw2; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so56570425e9.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745932081; x=1746536881; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rq7rXh1qobsxmTnH95x5w2HXYH7sLiudkYRgxpX7OF4=;
        b=dTqUYaw2SODnCmkeuWbsEOkHFBD/aJgkdMQeXBRBOh6XYyE5oAxz2C3zqgsKcotJad
         C9TfGxYMrpD7Ih3tB0nseQjD1I1ExH0VE68WnSU/jnExynBdNQwDKlNhM5bBef+3nTjo
         HXs4I23orxEDg9wdvriu15jPA7FKkZIY6KaG2hU3Ae0uumY8J+i4VAwOlWLXX+NXPrGV
         Ts8izUBI8PNP5ciEyLqSya6mlnOWF/SUVyU4wd1TIXgIETDPBW60MUXs++8Noa85IRgL
         GrRUDItsS1HK0OLbMIoBa7QUst99Lr+nKbUOn+NQNmrULsyVV6TQGPN2CXXmFj9zW/di
         ujVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745932081; x=1746536881;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rq7rXh1qobsxmTnH95x5w2HXYH7sLiudkYRgxpX7OF4=;
        b=gncF/9b2czYBYO6Pm9hGl8hYMm9sOaRYDZJZ5GqKdnYQBRMSOBVHWiVBej4LjdMwG6
         /d0x4fSHM9PlRpHEOVhiqRsweWyKphtv0QEzZa5xia8AboRKl8I2EButj8z517yyIM7q
         n6kaBMVyttUOKC4XmKTaKJA3ft54QaLcpx6rVHyPjY/wYtVrr0ys+I0zEAkyXNix7B+8
         ZCrC8geDri6SBsL6t/HweR1FXS2btCKbvMbcD0TP9SIK0bSV47bBI4zEx9tudi2HyNBy
         Hu7c/0l+i4KPS7vkQuIKkAnlvsG64yEPORei9BXzwxLeqj+qd8WCyK8UP+p3wFMvEWar
         2NpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDvcfwU5y+WY7VkHQOajRpIRl7k5iidPRQRCPHIggTMEChjM5jQXyhqetYajjEO7U9i1rIH4MwLXcp@vger.kernel.org
X-Gm-Message-State: AOJu0YyUJphuqI5tXZuZHNmgNHsIstqmu6EFirWNRJtCOISDyOye2lhK
	Ko8e9ojmtgQVxLKZVf++x62itAeMPXzmrh3ARvevZ74cMgvhOiY5lUPi6g51qYk=
X-Gm-Gg: ASbGncs7+htDuOyJ6HDLUWXuv+vSxCe8nCXq5e0956V423kGu2vn0SsPaVyDe9pljO8
	6bzwANueglPMDGSecWzTcBC5DHA2JzKyEYNjSQoARhw0abHBnvJOHg3eDsXQBIfziS7v+hI1k3l
	wz823lfRghbHLm8gQqlW2R+5n9M674xRtCC9AS98PO74PwQPMeK92iHCysistGMTDkStGyRvJvf
	XpA2VvyCbab2etSwWDdPCI6MjUNwRvUoZcZoy2/9pOC+N8AKJQhK/3QcJ/kWYtbbTd8B33TwWkZ
	SBVu8PH/arI05+tZDFVUQ6vEctJ64A4A7MjWxGkjtW7OQfEc69+RM4gygYIBlRLHjCvhPqAuWCn
	NCKOVusa2fNh9
X-Google-Smtp-Source: AGHT+IHH7kPdFloz0enES8t+pHJLMxDsC3PA7QswfkYDa1uwoQfq8JQ8Oti/EC5RpCr0OlT7L+7QAw==
X-Received: by 2002:a05:600c:83ce:b0:43c:f87c:24ce with SMTP id 5b1f17b1804b1-440ab8460fcmr106121275e9.21.1745932080995;
        Tue, 29 Apr 2025 06:08:00 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a5310ad2sm155550565e9.21.2025.04.29.06.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 06:08:00 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH 0/5] iio: adc: add ad7606 calibration support
Date: Tue, 29 Apr 2025 15:06:44 +0200
Message-Id: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOTOEGgC/x3MQQqEMAxA0atI1hPIpNpBrzK4iBo1ICqtqCDe3
 eLyL96/IGowjVBlFwTdLdoyp/h+MmhHmQdF61IDExeUc4mHrdhMKN3Pk8dWJmuCbEkhk7jSiyd
 XMCS/Bu3tfN//+r4f/5nzV2sAAAA=
X-Change-ID: 20250429-wip-bl-ad7606-calibration-20a396a60352
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1455;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=FIbVVo0rbRRf8O8fRJ5PXCBl/H6IaHSYl1ya1qer2mU=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgQOPfcgcvmpc7GWyE/xGfcN7mw9FsBR9IZ7/krjwpzJ
 eUKJkeodpSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZiI4VuGf3oLT9/976hx87vC
 Wh+jq/e0oy23mP07y1+emTXXSXlH02+G/7HZzA/CZn2pm6D87sSOZyce+V00/1Oz8HDvz4kXmWt
 UHnICAA==
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

Add gain, offset and phase (as a delay) calibration support, for
ad7606b, ad7606c16 and ad7606c18.

Calibration is available for devices with software mode capability. 

Offset and phase calibration is configurable by sysfs attributes, while
gain calibration value in ohms must match the external RFilter value,
when an external RFilter is available, so implemented through a specific
devicetree "adi,rfilter-ohms" property.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Angelo Dureghello (5):
      Documentation: ABI: IIO: add calibphase_delay documentation
      iio: core: add ADC phase calibration definition
      iio: adc: ad7606: add offset and phase calibration support
      dt-bindings: iio: adc: adi,ad7606: add gain calibration support
      iio: adc: ad7606: add gain calibration support

 Documentation/ABI/testing/sysfs-bus-iio            |  20 ++
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |  14 ++
 drivers/iio/adc/ad7606.c                           | 213 +++++++++++++++++++++
 drivers/iio/adc/ad7606.h                           |  13 ++
 drivers/iio/industrialio-core.c                    |   1 +
 include/linux/iio/types.h                          |   1 +
 6 files changed, 262 insertions(+)
---
base-commit: e22e3d5089987cb4250801623026992b2ba4645d
change-id: 20250429-wip-bl-ad7606-calibration-20a396a60352

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


