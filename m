Return-Path: <devicetree+bounces-129189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 522579EAE7F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9512A283755
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 582E1210F6D;
	Tue, 10 Dec 2024 10:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fRXaVym6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE3B78F40
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827609; cv=none; b=KVYfgM2/gDATQ8kR+5R4NCQABkQBaGM2VO9ipkUnfZHKyqz6mAybiB6NlcxAEiKfVW5IsyS7BJ57dw8jU+GqFhepX/JJflMtkjvKAFPcdxdx9zwSATNR9SsHb5eAgZZWm+uYKTUA6YJAWWCwTMVqepey9DzCd8qVZyvPo3CURtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827609; c=relaxed/simple;
	bh=wEMeMdEeBoZpAAdY7KrtLZaCZfrF5v8r20HUxblPpDI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AnjnJEbEKBGMmUK6B1rwf1SQuR8O21O7tjOCGD//ibG5MCulU0rh5lTnAD+rll977F9IQIreTo2gvUOLa3mxSbTum0KNqRCmvWHKMoi0E4c+5AXCzCVAntB814mZetAJ1LerJT09IncCvLxuS9Q39qozHbtcz6RbFy6QvNXSigA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fRXaVym6; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a736518eso59266025e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733827605; x=1734432405; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r5QzWabQG8oecrJ7dfjZ8Dm8qolVobLj6x+A4hm/Tig=;
        b=fRXaVym6BpDjyIM9NeLDFNChswvy2k+8ZJpsos/K3EbzNFhn3XLGcLHFxpc68dn/vd
         Hd0C8RWX5pje63EFHE5QcDqHFolGVd5PkRuQmwbH+xtuktNoI945JH0Gvs01CnrKhzYI
         B3oTkRloL7rDwSfa6xOPqfla+Bc4iIv5HLMyxz77GTJICaPp4Y4ajZdq/ho06yChLhkJ
         JGW9xPdjYaQdhDQ5twoT/aMKjclcVikJH8YVA2qtkSta4Uns9SP977rynOdKHwYr08bb
         IgSC+UsKMS5NlJOZH7D3QnYbfIO9c3l2nZqmEx9CIeiykmNmwwIbexMnWtYUnHe5TK31
         u8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733827605; x=1734432405;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5QzWabQG8oecrJ7dfjZ8Dm8qolVobLj6x+A4hm/Tig=;
        b=g8SjoF7UyaT1DH1SQHRN60PSzAcJ/7BEqiB3JEm6AohaGaDQTb/8DGfhDbT4IC4nDu
         PgU3ao2ssO9OLteSzqJtQFoO5+MhBC0P/1uZeJqGX19PqRXUHQFqITrKwOoRSXA9FLzn
         ZOr8DvXbPs8mmoDbEawP4xpeMWjAIYm54/sJJpFwFyBpCR1xqbS39QhhcnFzs9zRDts4
         fxUllQsK03dHEzFxK2jfRa8yi5qhAKGyZdMCCB87XE0LStVSwL1ej3/LE1aaPu/YCTxi
         ik+RG+Ut4S0CMbDALNqsxfwAj7wG4fSapqS6MyUvP6e0Lef4fk1B1iEM4mm0+vaq/GYh
         0Q4A==
X-Forwarded-Encrypted: i=1; AJvYcCUwUranLlO+QzDex5aE/9fRV+8p1tqvw4A1jHF+tDoVkGfDODYQPAnmtgYxgGN9UmGK6faMPSLsl85b@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1zXEk/m2FzkUIb+nFHjK9xyO4yg9fXNktm9oJLwioBxGzdqQj
	05WKN3EtU/nF4jVc2Ix9uIR+hnLuG8frbeGSLvbr8GlozmTUOf0NUgN7gQA04sQ=
X-Gm-Gg: ASbGncuyEHcrZ9S/S1iyT2flDpd8MMlh+fG0+9TaPpwLJsdoLHhtc/GxGxEuojIR2Xb
	rUObxn5fQf4xrnK1gBPOBwyEXv7RX+KYlDb04crXHU6njkUg7cjRSVPLyeGi9vrhW9ewM/RMyEU
	oqCrzsX1lWIcvIuyplgZZf7/NvSBgAlSy1l6O+zZXorJKnBEjaQFODEkRqgM2HW/AVND1hVjtjn
	4OW6Wy6MZWrU8h9/r5+0X4AkT/0PDtJX0Fl3c7S9zxsbW+RdVdCcQqpWfjyvK4Sg3m21Ft81GeV
	0w==
X-Google-Smtp-Source: AGHT+IH+NSvi4p/ASxuolUPUb2vVpTEzgdFXaZ1mo13JtI0mPTZ70/EF7ebZDJtB/o9TSjqZPg96pQ==
X-Received: by 2002:a05:600c:1d12:b0:432:d735:cc71 with SMTP id 5b1f17b1804b1-434fff9c56dmr36631595e9.25.1733827604460;
        Tue, 10 Dec 2024 02:46:44 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f2d08564sm94543645e9.12.2024.12.10.02.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:46:44 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Subject: [PATCH v2 0/9] Add support for Software mode on AD7606's iio
 backend driver
Date: Tue, 10 Dec 2024 10:46:40 +0000
Message-Id: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABAcWGcC/42PW07DMBBFtxL5GyO/Yif9Yh+ossb2hI4gcbFDo
 Kqyd0y6AT7vlebcM3dWsRBWdururOBGlfLSgnrqWLzA8oacUstMCWWkECOH5KywHlLyRNkHiO+
 4JF/ztH5DQT/nhLy3Lo1Rj0oZzRrqWnCin2Pm9fzIBT+/2tr6KFmAijzmeab11PUQ2q3WelDRK
 pm0cjJG5UySvTYogx3cZJJmf6wL1TWX2/HBJg/YISuV/J/sJrngA9hRQ496gvElwO2DQsHnJsT
 O+77/AgwTQtcnAQAA
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733827603; l=2383;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=wEMeMdEeBoZpAAdY7KrtLZaCZfrF5v8r20HUxblPpDI=;
 b=Uoz2u72lAzKmUPyRjbXPKhYVUDzPzSNI6yVgInNJtfthq8mm7mlMJI2bTY/LO7MswF2H/HQBJ
 qYbdf4vXgu7BYea0dS1f4oLzk5zg7clVIWairpe6IXoqHfebpm777af
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The previous series added iio_backend mode, but the configuration for
this mode was only possible through GPIOs (Hardware mode). Here, we
add support for configuring the chip using its registers (Software
mode).
The bus access is based on Angelo's ad3552 implementation, that is we
have a particular compatible for the backend (here axi-adc) version
supporting the ad7606's register writing, and the ad7606 is defined as a
child node of the backend in the devicetree.
Small changes are added to make the code a bit more straightforward to
understand, and more compact.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
Changes in v2:
- Improved descriptions.
- dt-bindings: improved descriptions, added exemple and additional
  property for the custom IP.
- Reworked some macro commits to avoid changing order and associated
  diff artifacts.
- Various cleanups and formatting fixes.
- Link to v1: https://lore.kernel.org/r/20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com

---
Guillaume Stols (9):
      iio: adc: ad7606: Fix hardcoded offset in the ADC channels
      dt-bindings: iio: dac: adi-axi-adc: Add ad7606 variant
      iio:adc: ad7606: Move the software mode configuration
      iio: adc: ad7606: Move software functions into common file
      iio: adc: adi-axi-adc: Add platform children support
      iio: adc: adi-axi-adc: Add support for AD7606 register writing
      iio: adc: ad7606: change r/w_register signature
      iio: adc: ad7606: Change channel macros parameters
      iio: adc: ad7606: Add support for writing registers when using backend

 .../devicetree/bindings/iio/adc/adi,axi-adc.yaml   |  53 ++++++
 drivers/iio/adc/ad7606.c                           | 202 +++++++++++++++++----
 drivers/iio/adc/ad7606.h                           | 113 ++++++++----
 drivers/iio/adc/ad7606_bi.h                        |  16 ++
 drivers/iio/adc/ad7606_par.c                       |  56 ++++++
 drivers/iio/adc/ad7606_spi.c                       | 145 +--------------
 drivers/iio/adc/adi-axi-adc.c                      | 175 +++++++++++++++++-
 7 files changed, 544 insertions(+), 216 deletions(-)
---
base-commit: 5ab39233382c621d3271cc274d1534e1b687f4d3
change-id: 20241009-ad7606_add_iio_backend_software_mode-567d9c392243

Best regards,
--
Guillaume Stols <gstols@baylibre.com>


