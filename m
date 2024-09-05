Return-Path: <devicetree+bounces-100487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC3196DDC0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFD5A1C22E6C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF4C16F839;
	Thu,  5 Sep 2024 15:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bOQ3Zv9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2511C7F7FC
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725549533; cv=none; b=TJdKij06U9fHjSjU+wDNfnQW7FO+4APFg8k4z8REy4kJnE5To/7a/NN/GJPWkOg7+z97ChSckLYqs1FauGOJVnugHLpQ216dOSefQRu3lBLH2/yfd0qZ81Mt3NEuZhDQavYjoi5wRnPOJGkiklECl2N3avpMQs5amRX3GuShuAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725549533; c=relaxed/simple;
	bh=Gb6599VhX8ruz8G0A+CkltNV++3x6ZCj8UiYhUmIkv8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sI1ak526oVtuE9xE1ike1xVoqCYyO6w4pG+yy1YPcw9KVY8oT+UzPXjXnRvKZJPIwakHUdGNGnsUfg10m/WwJn+u31hE1GL1Hsr1CrkXbQPmgJ7ubfvh0vr5rVU4FFgTZWylLtFt48WVDKVMoxy5AtD90Gi3Wv+s8KRkgKUvrG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bOQ3Zv9C; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-374bfc395a5so582810f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725549529; x=1726154329; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GKnN3Sj3NjmHkRK3J9xJkwDDKF4HeXSlEMl5CXXrYFI=;
        b=bOQ3Zv9CJfrsOhoY/vcfV9fnhH9+M2ApbnTfux6JB0GMwm9nUNdeurq99RK2OpEYOg
         PFKfKHLYHMh6Pwp1/fen3B8J+WYm2DQ4gA9P1LdRz0okOZ7qZW/G2PP+auZHkY01Hwc7
         5rNROyuiW/vBA5iSLDH4U+nmGMsMY8P/FmmDe6tfmo1pPipRXWItfU1/MYEyik6yCgEs
         S8Vl4O7FWf9CpqbXq+CsrvzOKRqqjezDonoB2H7JU90d80JaxtXpwTaSko2+bwmXsKCY
         +2sWvIK+XYsGipobQBuNBgJq2Eqa1fMZyymsRPNjCNKHdJnC/nU73+gh/24ht+yKVErW
         iEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725549529; x=1726154329;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GKnN3Sj3NjmHkRK3J9xJkwDDKF4HeXSlEMl5CXXrYFI=;
        b=wEdt7sHAJQuE1+Uu5MLZtJD0S3Hm7y3tjE/BParmMeCYczJm/hUZtU32MkPOoihbN/
         qc1NIcITElAZMZuM2Lso8KvUZgmtq7bjYvgQK01Q5WCz/kOa/XeSQz/OKDKRopSrOB4N
         iuLRnsLucQ0EnWKmUELdwjyF18/UrnCiXjSQh77E0H2Cu0J71ZTXCUUpp7i7i6YcYHcR
         CwOkfU8K8K/Ikk08vl8ZuRlgCsy3aSXdHfOU2dN+ZOBoSF95KiKVU95HfrUic/JBbpKq
         yLydStMf6a8f8DdN0yqJa8RDTKHjTMb1eO1qnYUurmr/+ub0GGxupeBjoEPC38m4IBRV
         8mIA==
X-Forwarded-Encrypted: i=1; AJvYcCVTGVebt1sCJx1y7S4TdnEB90t4FO4mx4kF9kmCokehwzTEz/36tJw18ZjYnWxHhNsEuX4XewwB0T0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyYk+61HttgL0/+sDHeWbr8QH8LLBScFSv5RnllFBrtzMuMdWei
	Ks9+JezyTWIMJLDsQ31/cEFDBwslm2lHhm1ZNOotXDEZPymPokDOctdvx8YkoPY=
X-Google-Smtp-Source: AGHT+IHCfME4IdTiaaC734sa5tnw22fLpOVYiMQVbF4yWqonOoJbPx9SwXiUMy3xcGaJGpYXc8WPuw==
X-Received: by 2002:a5d:55ca:0:b0:371:8685:84c with SMTP id ffacd0b85a97d-3779a70775amr3826216f8f.15.1725549529296;
        Thu, 05 Sep 2024 08:18:49 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c1de81b2sm14031076f8f.30.2024.09.05.08.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:18:48 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Subject: [PATCH v2 0/9] iio: add support for the ad3552r AXI DAC IP
Date: Thu, 05 Sep 2024 17:17:30 +0200
Message-Id: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAIrL2WYC/x3NwQrCMBBF0V8ps/bBJBpBf0VcpHZSH0haklILp
 f9ucHk29+5SrdCq3Ltdiq2snHKDP3Xyesc8Gjg0i1d/0ZsGfDmj/yAO5xB8QdyIVUFOWKwuzCO
 cpeCuvVNLKq0zF0vc/o/H8zh+ZCTeL3MAAAA=
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

The serie comes from the previously discussed RFC, that i
converted to a normal patch from this v2.

Purpose is to add ad3552r AXI DAC (fpga-based) support.

The fpga DAC IP has been created to reach the maximum speed
(33MUPS) supported from the ad3552r. To obtain the maximum
transfer rate, the custom module has been implemented using
the QSPI lines in DDR mode, using a dma buffer.

The design is actually using the DAC backend since the register
map is the same of the generic DAC IP, except for some customized
bitfields. For this reason, a new "compatible" has been added
in adi-axi-dac.c.

Also, backend has been extended with all the needed functions
needed for this use case, keeping the names gneric.

Note: the following patch is actually for linux-iio/testing
---
Changes in v2: 
- use unsigned int on bus_reg_read/write
- add a compatible in axi-dac backend for the ad3552r DAC IP
- minor code alignment fixes
- fix a return value not checked
- change devicetree structure setting ad3552r-axi as a backend
  subnode
- add synchronous_mode_available in the ABI doc

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
Co-developed-by: David Lechner <dlechner@baylibre.com>
Co-developed-by: Nuno Sá <nuno.sa@analog.com>

---
Angelo Dureghello (9):
      dt-bindings: iio: dac: ad3552r: add io-backend property
      iio: backend: extend features
      iio: backend adi-axi-dac: extend features
      iio: backend adi-axi-dac: add registering of child fdt node
      dt-bindings: iio: dac: add ad3552r axi-dac compatible
      iio: dac: ad3552r: changes to use FIELD_PREP
      iio: dac: ad3552r: extract common code (no changes in behavior intended)
      iio: dac: ad3552r: add axi platform driver
      iio: ABI: add DAC sysfs synchronous_mode parameter

 Documentation/ABI/testing/sysfs-bus-iio-dac        |  16 +
 .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   |  42 +-
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   |   1 +
 drivers/iio/dac/Kconfig                            |  11 +
 drivers/iio/dac/Makefile                           |   3 +-
 drivers/iio/dac/ad3552r-axi.c                      | 567 +++++++++++++++++++++
 drivers/iio/dac/ad3552r-common.c                   | 163 ++++++
 drivers/iio/dac/ad3552r.c                          | 394 +++-----------
 drivers/iio/dac/ad3552r.h                          | 199 ++++++++
 drivers/iio/dac/adi-axi-dac.c                      | 282 +++++++++-
 drivers/iio/industrialio-backend.c                 | 157 ++++++
 include/linux/iio/backend.h                        |  33 ++
 12 files changed, 1532 insertions(+), 336 deletions(-)
---
base-commit: 8b6f7caca90addc22eb4ae958639048001096003
change-id: 20240905-wip-bl-ad3552r-axi-v0-iio-testing-1ef516b10ef0

Best regards,
-- 

  o/ QW5nZWxvIER1cmVnaGVsbG8=
   www.kernel-space.org
    e: angelo at kernel-space.org
      c: +39 388 8550663
       


