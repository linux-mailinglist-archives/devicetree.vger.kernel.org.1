Return-Path: <devicetree+bounces-189636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C0EAE8A15
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 18:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5933B167E04
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2D62D4B7C;
	Wed, 25 Jun 2025 16:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Zrh3HOUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A577B1C8610
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869686; cv=none; b=lj9bkdvvLBCApDmupSENV59CQczxot4LN8SftovIKE0uNQov2Vbrnz7iGWsHeSt/SBOpf5J2vJ5gZ5/8E0BOJaJPT90U6d332NHuvRRuwLoxVGb7cXIKzTP5VTpD5m5vw2dgTUr5tk+QG95dtqwhygRE8iUnhIBiTYltTmk4lAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869686; c=relaxed/simple;
	bh=J1G4wA185/RC88pABxfSgtgPkiCmT4wLJ8Skkm4M8e4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tGo8N7w5Njj8nr26pJ+NGkN11Z9RblUgaOEIu19GHdG5ihbAqiBoleZlipYfJ0+1aBccuB7RKE2Wggnbd/++ZNrHngbAgmXqW0sizncPLoycaXY+Ubpxdhx7HtIcLm+vH7T67yTMaMGiTyxNk+APkFvP+WUPxzpZQ6ZE3CHCTwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Zrh3HOUS; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d38d562a55so5084085a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750869683; x=1751474483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tDCKEZvvy/u8mP8K+Ymdr+bMEt+s7GIZAgO/5a0i/oc=;
        b=Zrh3HOUSnh9X3Mi06r+O5wAyrlxTqvX5qejNnuGMcNOFYuLVNOIOAC2v+LOATfid8F
         P690xyYFui6ZS2y7b3qViATLMWtyxnUh/tjwOgGJjuR4kZudjTn7RZJsIv0QwULQgPt0
         Fm4Om5hynBeBioGll3q7l9lCrLOHX6vIMs25iLAfC4rEfqsGWxaQSUabWqTqVhAFNkar
         CBU9YImOSVPHgVHQ4KBS3WvGc+N6kK5Xj+S3I6EDUCvvxkIwnijbjaAy39Tw6DfMVOn5
         pOF66nan/wpxv60KDDiGRvm+Ua5CvelAr3sl5CRQmKcx5nrYCSOT4iGOx6bGYbYk6c7r
         lKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750869683; x=1751474483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tDCKEZvvy/u8mP8K+Ymdr+bMEt+s7GIZAgO/5a0i/oc=;
        b=C6p+7d4AO32Zo9ZDK+4bJwEuHF4EPU9McbDTbWLwURv0XSvddI2fBT/UNnJkEAtTtx
         Bn0TQvB5HVLW81qnzY3yklRzWNLmeJ8po4hug4R5CHAYl3XxpCXxp42Z+4IQ/sF605fO
         +4F6lSYl3PUXhrOc9niX0a3A2yCzWBNG/H9LnmleIQmv0YDUIMPwpFRVcgmOGNrtybDM
         llOjW0sQuLjQITuvaMoHy6Q8WIl86EcRKggpn2fPi6S/bkSjcDsA5lQImc0N3UdBpqkM
         EYlir0EkYZPc9z9g5GCDkJs98+K6kl3RZC1vPrsX3uGfy71NLccAWYisC2Z02rrwmfd3
         my6A==
X-Forwarded-Encrypted: i=1; AJvYcCXw0ZxfNBZA2P9M0zqneHcMI0TR5BlAoVXChgbzRmofZR9UAZu2+h3BtU18PzcRLD972OKmUj+q1M+B@vger.kernel.org
X-Gm-Message-State: AOJu0YxTm5a4k8xTocVwIKJD+i2lU44DLRejT/dMf0dkeb9eIbE3gq8T
	Mxx8X/1xfw/3JzYHt+5N9rl6ZbOnbaAfT+TsfwSdfUtvfCfUXTYPxsTpPjZHJusMkowRXpCBgUe
	MkWY2
X-Gm-Gg: ASbGncvfEZl3Yq//Q1TYtgSr9FC5EcBL34TzNV+QHZApxRkFZ7GU+RxM6lZ7Z2o3NQj
	Av4PuP1dirLXjacWJHjqSfB7rWYJFEbl3lENZdYcyTUHj65rpO3sGp8O4X5emauxieLgfr+PoWD
	DpAeJjKrDL9tY9mS0fq/0euapG00AczTBPDZ8NXwp15Y6yJp9NGRuKxtq2eWEfX9Igjb2uHVHH7
	nK03ZjUeIOSla5Eclfl83JUVxo6pkJ8eaGDZAnoR/vZXtkR/MPGa4/Qz58Pvjny/TCTNtb1vI77
	q48qBjP3dfRqEH98FpHI65SOBLU53MTKZiHIi1dHHaq3x1MkhVzfPuvEpDvmo9LIVtkyufg4YZK
	+pOAJxNGwSF0nKEq3UANVJct1uXGmxI2tjSiv4sOv/ugSfQ==
X-Google-Smtp-Source: AGHT+IF0qAzBR+5ebXXveqzmLr/2w4QQCNXjecbTJ4SgCA/yOFBNe+rVWxWjr5FO7bLbStXLn3XERQ==
X-Received: by 2002:a05:620a:40cb:b0:7d3:f1ff:5bac with SMTP id af79cd13be357-7d42972ce65mr495536885a.27.1750869683376;
        Wed, 25 Jun 2025 09:41:23 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3ffdb190esm576783085a.86.2025.06.25.09.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 09:41:23 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] spacemit: introduce P1 PMIC support
Date: Wed, 25 Jun 2025 11:41:11 -0500
Message-ID: <20250625164119.1068842-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements 6 buck
converters and 12 LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as drivers for its regulators and RTC.

This version primarily updates the RTC code (in patch 4) based on
review feedback.  It also adds adds a dependency in patch 2, to
ensure the MFD_SIMPLE_MFD_I2C dependencies are met when selected.

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v4

					-Alex
Between version 3 and version 4:
  - I got confirmation from SpacemiT that the RTC hardware does not
    implement the "latch" of registers as documented, and updated the
    RTC code accordingly (looping on read)
  - The RTC set_time() callback now returns an error value if one is
    reported when a regmap write re-enables the RTC
  - Renamed the RTC Kconfig option to be RTC_DRV_SPACEMIT_P1
  - Renamed the RTC source file be "rtc-spacemit-p1.c"
  - Replaced an RTC enumerated type with simple numeric indices
  - A message is no longer reported when devm_rtc_register_device()
    returns an error in the RTC driver
  - CONFIG_MFD_SPACEMIT_P1 now depends on I2C, to avoid a build error
        
Here is version 3 of this series:
  https://lore.kernel.org/linux-rtc/20250622032941.3768912-2-elder@riscstar.com/

Between version 2 and version 3:
  - Removed "spacemit-pmic.c" and updated "simple-mfd-i2c.c" instead
  - Added an RTC driver, so that the MFD has more than one sub-device
  - Other suggestions were directed at "spacemit-pmic.c"

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20250613210150.1468845-1-elder@riscstar.com/

Between version 1 and version 2:
  - Added Reviewed-by tag from Mark Brown to patch 3
  - Implemented suggestions from Vivian Wang:
      - Fixed a typo in the subject line in patch 1
      - Now use module_i2c_driver() for the PMIC driver in patch 2
      - Added MODULE_ALIAS() for both drivers (patches 2 and 3)
      - Defined and used DRV_NAME in both drivers
      - Added additional Kconfig module help text for both drivers

Here is version 1 of this series:
  https://lore.kernel.org/lkml/20250613210150.1468845-1-elder@riscstar.com/

Alex Elder (7):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 ++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  18 ++
 drivers/regulator/Kconfig                     |  12 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 169 ++++++++++++++++++
 12 files changed, 621 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: 1b152eeca84a02bdb648f16b82ef3394007a9dcf
-- 
2.45.2


