Return-Path: <devicetree+bounces-221616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B5BA1687
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 999571C028A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBAA320CD8;
	Thu, 25 Sep 2025 20:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jDot24T6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D96B271A9A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833156; cv=none; b=FP5ObscQDejpRTp+8+RpynsDU/ZhvlikpyIanYNjuYrmuGE5cgYriR1WWEjIjDkc3GFmGGIOEwPZvU5zTmPrSjaXXsgfY0qE3IDOTykLHWJardUdEaK6yQXbY3i5BUzsb0z6QS45Sl/ZDBP6op3ft+0eQBvKAtQaOOc2IkzYmaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833156; c=relaxed/simple;
	bh=6/fVemqx0boFHVf8BglV+KY7l1wA+KVgHJ6A3PVERVE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mFboZlpQZqWNTYkcHmXztGELIPOAESo5gWTdvKR/uiBbIZ77pcJb810fYGs9F1Glk74Pn4XB9oslYERHvpD8qrGaeAFWokE812LNKvwldgHvUuddYqHgX9w6RkMd8k4RsqQphCkxuveHHLg/o8JTIymAAxQpiG3YHkbmJdU2D2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jDot24T6; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-46e37d10f3eso7169615e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758833152; x=1759437952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FawQ9LId3cga0DodGg9MhmIp2lk7tl7dCQ1MCM1JQxI=;
        b=jDot24T6cXDlqEuqT9WlAfFM8crSHKQQqdowlonaStGaiWGulPDsnostmO5y1ZaB6O
         WcO8uaF6hoCSj6PCSwrBGANE16c2wcePGspSZCFfQjiW39pVwpJ01kj61vs6mSfIvSRa
         5J35tFQQiROItEFLHPooSEiOswI7FyO2JypbXRLYU7StnMBOdrwjZXgYg6RqW8kyoxO/
         e0TEtcQfAbI1WqWXzDUePM8QiCwOsWCAoATJIQQbLY5ELbM/zumIHKI9VI9M4J9kgROY
         EbYpr8B63mbfy0dVTrWIfmUxjGLJkaQucI1m2H/Lqcuf81dBZUGWSXFtePDWk8cip3H9
         9+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758833152; x=1759437952;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FawQ9LId3cga0DodGg9MhmIp2lk7tl7dCQ1MCM1JQxI=;
        b=dPdPdZEHmg3BAVzPFoMkvmK1dgYmPB63iZMygkJZLVxK6cyS76pszv3U7RU1XdmQFQ
         WvsflJDZAm6THvzPDTJXKUKzAlwg0Y2r3FaeFuU5Eu1oNsBlwCptGleFHmCCdffOHmbX
         F8E/Ko17joB0g1POdfy6H1nVQtWsilpnNN7bIS8twtSj6PdYj4g+PB9VWJFibghgCGgO
         Q43p0+KTEKrrcxPfZqcWPnNqS3l70Ts95tmkOf80viarLG3a+hLFQfEdbbvoVkQnh1NP
         pwwEvozkvcZrG8WeMKXJZtUAWMELvteRmIZTdV55Dch8cTfguNABEEU0j9A7GfCmNh+T
         OMgw==
X-Forwarded-Encrypted: i=1; AJvYcCVaFWrWML3+83oUsFx5oiK5geDHkplcxACX00kRdH08KOgX1UdTz8/6+hPjS4qSROFvYsBIWdq5F2L1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwb8AOoQvU3IZAMskqAeeGFK8RhQK/dRgA4sBwz19Cpilb+i0K
	oM0FuKBhmjAgNHVL8oxgz0VOSFDjD9KBTzUApFvXPDfJo0sbSpDCmtt7
X-Gm-Gg: ASbGnculwJA5UN4oK29oS6R5SlutweFSTtSAJV4UkzTwZm2CMPBaSEHGm2h9tKIpCPQ
	KcgXNryHmGIaTskf9UfePdZm5ftgsf6Z5hvhjndVdw9xtUQvNvHPBM+x1d5qOx6o+5ayg0eeaZY
	4JuyfJ0102iyXtuNojRt6u1owCKNF7MbD1OQ0E50M+SQA56yxqtRp+ZBP3uvl1izIv15/oZuhwG
	TQPg0hqP0ttd+n6H1xEkqgVh2LLn1gyniFIb4Onu5h5FVD2o9yrVpK/o5OGauk+zbt32NXrsRXY
	X8LQBm+7/BPY3gvqH81gwirPmTxNZCDNOflqFZSJtRHk62YOwFKuT7kyX6jy59Re+G6sWmBumTO
	23Zq5J/7fh8zzraLnfvmLdc8yQ2axrOUJN0WGJO0=
X-Google-Smtp-Source: AGHT+IEHiCxXo80MoGqRQ4HgceWd3FnDtzRwnXBD2L0CdoGsZPj/nAU+IAdeObX5HfW52mzD3aiY1g==
X-Received: by 2002:a05:600c:c83:b0:46e:1c2d:bc84 with SMTP id 5b1f17b1804b1-46e329eb10emr51861395e9.17.1758833151386;
        Thu, 25 Sep 2025 13:45:51 -0700 (PDT)
Received: from localhost.localdomain ([78.209.201.53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm91201395e9.1.2025.09.25.13.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 13:45:50 -0700 (PDT)
From: Antoni Pokusinski <apokusinski01@gmail.com>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux@roeck-us.net,
	rodrigo.gobbi.7@gmail.com,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	grantpeltier93@gmail.com,
	farouk.bouabid@cherry.de,
	marcelo.schmitt1@gmail.com,
	Antoni Pokusinski <apokusinski01@gmail.com>
Subject: [PATCH v2 0/4] iio: mpl3115: add support for DRDY interrupt
Date: Thu, 25 Sep 2025 22:45:34 +0200
Message-Id: <20250925204538.63723-1-apokusinski01@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,
This set of patches adds support for the DRDY interrupt in the MPL3115
pressure sensor. The device has 2 interrupt lines, hence the new
binding. I also added support for the sampling frequency which
determines the time interval between subsequent measurements (in the
continuous measurements mode) so it's obiously tied to the DRDY
interrupt feature.

Kind regards,
Antoni Pokusinski

---
Changes since v1:
* P1: add `vdd-supply` and `vddio-supply`

* P2: new patch: use guards from cleanup.h   

* P3: change macros of control register bits to convention
      MPL3115_CTRLX_NAME
* P3: MPL3115_PT_DATA_EVENT_ALL: use GENMASK
* P3: trigger_probe: do not fail if dev_fwnode() returns NULL
* P3: trigger_probe: use devm_iio_trigger_register()
* P3: trigger_probe: introduced enum mpl3115_irq_type and 
      changed IRQ setup logic accordingly

* P4: MPL3115_CTRL2_ST: use GENMASK
* P4: read_raw: samp_freq: use FIELD_GET
* P4: write_raw: samp_freq: use FIELD_PREP
---

Antoni Pokusinski (4):
  dt-bindings: iio: pressure: add binding for mpl3115
  iio: mpl3115: use guards from cleanup.h
  iio: mpl3115: add support for DRDY interrupt
  iio: mpl3115: add support for sampling frequency

 .../bindings/iio/pressure/fsl,mpl3115.yaml    |  71 ++++
 .../devicetree/bindings/trivial-devices.yaml  |   2 -
 drivers/iio/pressure/mpl3115.c                | 314 ++++++++++++++++--
 3 files changed, 352 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml

-- 
2.25.1


