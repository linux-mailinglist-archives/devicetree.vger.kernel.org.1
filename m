Return-Path: <devicetree+bounces-222042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8414EBA546C
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 00:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A020C1C024FF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 22:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D767299937;
	Fri, 26 Sep 2025 22:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UIQY2NCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A251D5151
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 22:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758924140; cv=none; b=pB1Pyyr0XHaXVgOnkXQlRan2Y2VbnbOGXIkxsJu+CNN7YBPWzKw9/GNhDAqMtNZ6mhOObjPKkorj/O4FBRi2Q7PPPvGKmL7pjLpsbOfA1/3yoz+BASnKFNg0Nf991GWvxlq8sFMx+7m8VQlGABXgq/R/z36rvV8Apdu+DQvkEgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758924140; c=relaxed/simple;
	bh=Fzii6xFMlq2tmZrhMKrNSx2r3cN9Y5yZ6BuKvSWLAQI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=alFavFzBB9gxjYwlE96j4BRtQ+RsYQHnMdg9+jtbiyVR1uk7hEC8gyJdz/6CJ1q0PC03IP8PZPRbgJegdIkhhD6f8JEmiJupykX7sNaOPbxv2YXkN4Rzk64+/cgpF7lNtwaHgXstpuGZcbIAFWLaJx7YttCUxSlv5+l1/Qf+ARs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UIQY2NCy; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3f2ae6fadb4so2398843f8f.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 15:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758924136; x=1759528936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WiK0o9OsPPIgnlfmJq/d9pxBatMc1jJsoABLigao4DU=;
        b=UIQY2NCy9DlNOrYxMIR0XxQw28GYK9+6neyP/uc4goA7MbHwrAzhaexkiyda0IUxvT
         m4QRO2+jgaxPWntO2X2QeNVv7KPJB4rqh2jAplU1xUtxTdn5xvSxgzCAkBbIwmMPzqK+
         nQxBvysqjLaHvKaBgw2kxi3AQNxspgZKNrpwrE6VutIOFIeNQov6jykxLLby/N40lwSy
         MngQlKq/PIcub9P7Q4lxJrU7frD/Ht3IhqU66BDwfe14ruP37YsgDRZrcu3DKxwslOiG
         Tp42T1UZdZwGa9zU02Hqmhj09RO6+94oSVQabapgc5QDA4pvbLxWllkDrPR9D7x1Ysqh
         O5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758924136; x=1759528936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiK0o9OsPPIgnlfmJq/d9pxBatMc1jJsoABLigao4DU=;
        b=mixf0kZ2YppL0zCRLx/EnB0z0CE2D27rENoXgLYDb+nc8MfR2Ve2Sdfw9sGCINe2f7
         DVamkCbR3xU5nXryp9B63xWO2fxJ/B6PPhKN4A9dFM2pPjGHPm+31Y6sYvPYnRvNeZD9
         uaoZkAT4RNd/M+bHOyCeikHak98RCFFEV4NhHE/7z3gA0eLbeW+hmd//0wY3aCrbXVpc
         P9UBBIc0DEwTtkfY/9NXlhyCqacaQKLFEg+6a+a1vlKgkA7sVhZA06e0tqOcC/JjHHEV
         T73dDnHWnWvXp1p+eeqRJj9ZOBhOHEM5dshzqsBER1oDQcpyHDg6Vvk5WXOxoOCwngar
         I+tA==
X-Forwarded-Encrypted: i=1; AJvYcCWYkKm0xmaYR/SaxV6ZMoO3NRqTqAIIh3sKx+w09iL1d3pDaK2lF+7i9ZEGJQE5Kseov03nVUlCApmp@vger.kernel.org
X-Gm-Message-State: AOJu0YySpFwJznsQ+m64sPUP+CEOEs3qocKFrGZamiDwlehn3GknLlBl
	tRUOWwZw67Q415SZITdTWkJuEwnzM5sEUymT07QDVwjp4pWjdThqkKj5
X-Gm-Gg: ASbGncvhisiOga1439ad8Qnd3En37DSAos1FdB3hF2UDOfzVg+TPW6jr5f25/WCxzMJ
	dyIfkkBPHterIuttoU/NHg/BbKt5T7IHsqSZcdMY6XSjXHATJL/+lo2MndXtAkiJrSJtE+7Vb1b
	Y5KDKFG4bDmEx4EMT61bXKWIK/RqrWZuWu1RoK0zr5F3NEhgnH4DZlA7GJIRajalddec62e2bUM
	Mt7TLiqCsiC7W/AID3J2VIougUP899i+4R/jjWbIiM1NU+EhXhCJ0/B7kfbJUXAdAI8zAXKGlbH
	KAiZ2GdtGou6lR0fAOdh4QksMH44wr5wWu9iEUvCOeLtkC0vCAu4JDNDUkjulwU+2ulGvkYv6I8
	O7E7ofWT/pq3sFU9ZxLhVu1z5DGbqiWL+XP/RMuKm
X-Google-Smtp-Source: AGHT+IFOpFRZvqIjkfBl0P4vtqpIDNMACFW7mLBlCtVmhjKs7Ub89Ws2JgUgQ8sZ1aDgm5ZAaXD9PQ==
X-Received: by 2002:a05:6000:1866:b0:3eb:6c82:bb27 with SMTP id ffacd0b85a97d-40e4accc83dmr7196825f8f.61.1758924136008;
        Fri, 26 Sep 2025 15:02:16 -0700 (PDT)
Received: from localhost.localdomain ([37.163.230.203])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc82f2965sm8410236f8f.55.2025.09.26.15.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 15:02:15 -0700 (PDT)
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
Subject: [PATCH v3 0/4] iio: mpl3115: add support for DRDY interrupt
Date: Sat, 27 Sep 2025 00:01:46 +0200
Message-Id: <20250926220150.22560-1-apokusinski01@gmail.com>
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
Changes since v2:
* P4: included linux/bitfield.h

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


