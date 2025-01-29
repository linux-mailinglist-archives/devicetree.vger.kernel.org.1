Return-Path: <devicetree+bounces-141635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 526EAA21BA6
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 083EB7A117B
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BE21B4242;
	Wed, 29 Jan 2025 11:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y1yZ65Vf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9E31B042F
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148700; cv=none; b=JkRqswcln/drP3oP5LPflhEDNGjJMyoCa4VVDqyeV8C+a95ValPtbXGOe45q4V6mOPswRxzZoFdhLpdiWy7m/tFnUjxfa0M8MHNQ5alGjquL9bsV0K0mXc3GKlG1TwnkvcodJgyq3HjmUNthXDlAT9nsmNF4qSoYCzqTFW0Tskw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148700; c=relaxed/simple;
	bh=mj9E4SRlwU2+ogNUoYRTExcnrVD+/JKmUcsECqo0Q+s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WZSDgrh1YmH+Nj2T1Lz+lrSMUu3c9+hcecR7sftD6RjCIdunlFHLIKuDBJsFrjJ3E9wVG0FTrfpCRobspkkkeS2NuiYWaNxxpf3c27Nv7Ee//FCF37jR9BBmEWN0ra+P68KBEE+uTEfuP0Knvya0yxdPQc/03HjgbfNE7I9p2yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y1yZ65Vf; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361c705434so47773075e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148695; x=1738753495; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bAU4GIvVmdt4JZJ7rSRSO2Uc+HtQ8JKsDSpEn0o2lz0=;
        b=y1yZ65VfqfBA01N5d0XT1yWr7ZYyaicCYt7dH7N0WpSVUZBhOG0AUiIbaeCMI9k6GT
         PKcHty/UiWrUTIzzEGoI9PFdAnzXUPvrXv88pyOGKST0iSG4KCCosdpT8QMBMQy6Co4c
         9hedDAtcImePtGKI5jqXRZd2SrrH8lEdfCXx2DmhJL58cVK6tJcSqQTg8DUtLJ1WCnQi
         nY2V2Ah4wxU2XmshVm5Asj8Bn7GMB0KgQBdsKtLm4uh61Unpy+dlSuZXMaA4Bdy3C+rY
         1qH0KqOPX/n3nOeFTdUwkMK6/jc5qwwfVhOtVFZQgMMHex/3pLASm9uYzyhGrO5j28lL
         B2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148695; x=1738753495;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bAU4GIvVmdt4JZJ7rSRSO2Uc+HtQ8JKsDSpEn0o2lz0=;
        b=XbKGmk42u3C1RL1nKG20g67mQVIiKupheJyWZrjx9ChoKFdmAmTST4siAqV62V/ir5
         qNlJE0Bw+7WFqD6KR17wfjuNSaD+MCdfaX79grB7KqSPQjAzFU0Sm2a45EhSsi3lRVUk
         JU7ECjt220AZ/JPuLaYsRuoII9/tdT2hEGvcFgbNXJQZHbxrcEh1bcKxr/gefgb5i7OM
         045C8PJ3H3IRBJ9Yo8OenqZ90WZYatkUSiaCkdoz6KYVkX8MGSbHQ003MW/BSody1Kg9
         cIORd16/3cqaoHz1urFUapL+dDvVbjLnAabje/3+OiWrdQOlsOOzURFOWy+iCsYi6qwp
         sjqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPEgwYZXhT01tecQD1P+dM93BM471V/ayWtlgUSiqJB8S4s9pS4gB3G7TMaPVs5Kg4pj8Po1UcbrDD@vger.kernel.org
X-Gm-Message-State: AOJu0YwqedlS61moz+OZIRZNd3b4/yQJiGlvUD8ujjVFF1S+5KVaWa7K
	b3lCZWwGoA4R5nf1HwVsC5Jf4f6nB61xx83IkIArAbpFgQQhfqxWFBtYUu0aZyM=
X-Gm-Gg: ASbGncuVUoUvAIW4PmnIo7E59ave5uaA3EkY15JmpOZ/Z9DtMHkHwo/MjRvFljdu6Ks
	HtEWriUTHQEVGoBVArB6jwEKR4UjJ0lBIJ+umF1O/xOvHwOCZYcap1BgEHoOHxYnFkfLg1eiSjo
	XKMihnhwl5lanfOIEoaSE/qnxh2FFFtUfLeOex7svYTmX7aZtrd0WDmlqu31jMJAP7JvtULYSIg
	Z4Lg60eVUdQelsG/LkqBKLB46KnwwEpRCSHR3iB9rG+U7ReNtHCj1yaYqUjPiRySvReVLvfYsTF
	9Ocg0pVPVaJk/Dj60iVhYs/xqVfIsxqGs5ztZBpj4UtWgqQ/G8+Qv0Ugj8MZTVhfUi8HJLE=
X-Google-Smtp-Source: AGHT+IGoJE2bH4Lrk+kyxraLibRytPNA902qZKJwBAr0z2UhRf6p4L2iIn4biM5sloY+TAdsS9ECKg==
X-Received: by 2002:a05:600c:3b94:b0:434:a929:42bb with SMTP id 5b1f17b1804b1-438dc3cbb71mr21327205e9.18.1738148695417;
        Wed, 29 Jan 2025 03:04:55 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:04:54 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v3 00/10] add support for Software mode on AD7606's iio
 backend driver
Date: Wed, 29 Jan 2025 12:03:01 +0100
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOUKmmcC/x3N0QqDMAxA0V+RPC9QU+zQXxmjRBNn2FalhTkQ/
 31lj+fl3gOKZtMCQ3NA1o8VW1OFvzQwLZweiibVQI4611KPu204vpDlGlyILBJHnp6aJJY9vld
 RFCHizoXgZw+1s2Wd7ft/3O7n+QNHOVHAcwAAAA==
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

The previous series added iio_backend mode, but the configuration for this
mode was only possible through GPIOs (Hardware mode). Here, we add support
for configuring the chip using its registers (Software mode).

The bus access is based on Angelo's ad3552 implementation, that is we have
a particular compatible for the backend (here axi-adc) version supporting
the ad7606's register writing, and the ad7606 is defined as a child node
of the backend in the devicetree. Small changes are added to make the code
a bit more straightforward to understand, and more compact.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
Co-developed-by: Angelo Dureghello <adureghello@baylibre.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Changes in v2:
- Improved descriptions.
- dt-bindings: improved descriptions, added exemple and additional
  property for the custom IP.
- Reworked some macro commits to avoid changing order and associated
  diff artifacts.
- Various cleanups and formatting fixes.
- Link to v1: https://lore.kernel.org/r/20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com

Changes in v3:
- add some fixes found while testing,
- general commit meessages fixes,
- codying style fixes,
- dt-bindings: add some properties as requirted,
- use iio_device_claim_direct_mode (and release),
- rename bus read/write functions with "bus" as done for ad3552r.

---
Angelo Dureghello (2):
      dt-bindings: iio: dac: adi-axi-adc: fix ad7606 pwm-names
      iio: adc: ad7606: fix wrong scale available

Guillaume Stols (8):
      dt-bindings: iio: dac: adi-axi-adc: add ad7606 variant
      iio: adc: ad7606: move the software mode configuration
      iio: adc: ad7606: move software functions into common file
      iio: adc: adi-axi-adc: add platform children support
      iio: adc: adi-axi-adc: add support for AD7606 register writing
      iio: adc: ad7606: change r/w_register signature
      iio: adc: ad7606: change channel macros parameters
      iio: adc: ad7606: add support for writing registers when using backend

 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |   1 +
 .../devicetree/bindings/iio/adc/adi,axi-adc.yaml   |  70 +++++++-
 drivers/iio/adc/ad7606.c                           | 152 ++++++++++++++---
 drivers/iio/adc/ad7606.h                           | 111 +++++++++----
 drivers/iio/adc/ad7606_bus_iface.h                 |  16 ++
 drivers/iio/adc/ad7606_par.c                       |  69 +++++++-
 drivers/iio/adc/ad7606_spi.c                       | 145 +---------------
 drivers/iio/adc/adi-axi-adc.c                      | 184 ++++++++++++++++++++-
 8 files changed, 541 insertions(+), 207 deletions(-)
---
base-commit: ae62b72e76b72f98a4955580cb1a46095fda7d8e
change-id: 20250129-wip-bl-ad7606_add_backend_sw_mode-dd22a50663f3

Best regards,
-- 
Angelo Dureghello <adureghello@baylibre.com>


