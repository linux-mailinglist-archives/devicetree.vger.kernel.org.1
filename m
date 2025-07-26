Return-Path: <devicetree+bounces-199872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70917B12A91
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ED601C25D4D
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E022A246782;
	Sat, 26 Jul 2025 13:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="LcUHUg0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4431E6DC5
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535411; cv=none; b=jdF3W1o8pRP1ZPO8FZCNkDk/28lK2ftDFjY41fRlabRrdw4p4sdZJiIbvCBZF6R+wmmoLV0eTlwXz2xHCVfkfr0O0OMp10al2uYq607d1gI1sroFok5S6bCSTcLyvMxpKAXUyFstpSjBMP/oOa7ROM4qbVLvRg7eeFAElksBIP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535411; c=relaxed/simple;
	bh=GinK2LgXnAvt94YlnbDGugt3giCGnbBrlxqZ8J1oEgo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=axrLtIE8VfMdY59bv9NK3yUlxsiwgiZ6SvPP59cgdYYHkTMngDTezy8NDmWHMuCm96vTtunDNx9vHnLlyFZ6ADUXZrk08FfDgx0c5xfi5t7IVGx7xmckM4zjUHJqHWa5Fkqg8u0GAM51rcW4ATLWZg7BPj7XsPsoxlS0nmw5sNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=LcUHUg0a; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-87c28e9e7ddso232025439f.1
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535408; x=1754140208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MYc/mcd7ReJMM0Lef/+R1Ouv9sDF5M6QV2+DoYGQnmU=;
        b=LcUHUg0arUfYdAw6X5HCqpRrklEzgu25g8ydxO3zyssu4zdxH+/B/J2DpcsbRqu7Ao
         H3JtKVMtkoxaBv3ni7RVFYueKvx93YBLXsvaAsq7C4cPFS1c4mes7uiBdQbqbj9rCHQD
         7TDCbiM2iYGiCedns0YuyyDZUa3t/m3/qcuaeAdqYtUIa95RZcpjt2wnSljM8FDx77+y
         IzCiGVzwTaJTMSwfAQshwGW3Xw/BUAeO/VdSeusykL1j35A4nZg6cLKIi6pRT3f2k9EC
         y64fadXr+ZnmjG7yiEwy/FUdIBcR9u3UdVagaQNVaQWG/v2FjR0jhdknRCY29hB1EC+y
         W4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535408; x=1754140208;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MYc/mcd7ReJMM0Lef/+R1Ouv9sDF5M6QV2+DoYGQnmU=;
        b=j0+0U3bobq4Fkth5tWzQqCl9DXeN8QBgj36tdngKpP4EtR66PBIQSMSL2M1qWTevmZ
         RGoE9vfW3q5rPRxs6n/pgacxldJEENPYgeNhumYX8fe70vylxmIdfisfMCPMN/8em8is
         UkTrqK/GTarI3+tet+8F8y7qVxPWmMz8xzwtjNgQccF0RyR/TlWrI+dxQxNVYEo80cqX
         C7LLXpYPq1lllYSobZ43hHxZWgIZ0s45m2RbNUBDj6AsF4DsExj3dueESZw1QcmT6vO5
         vZ+wdEY23v208lAzY07lJcaWRXmWWZ8D3b+8FSXj6VwpYqC3eMSuSaWjCW1D5fG3mk7R
         qa2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVT5c0O8FPM321Bh3/SDRXikIgvUkGEjO/l5OuUiYNb9xr4YOWjhaB2F/1YEcRSvnD/owSOycA3+dbt@vger.kernel.org
X-Gm-Message-State: AOJu0YwOTMi8ZSSEAnckS/BoLxox+iSX7gY5cdwpAIqyjdPkUFEIZG86
	tCc4+rCEbPPlcqPD6jhPtn6aagqTnpP/+cf3mLf7cGGcRFdIAGfEWFs1dDbEPOvNrY4=
X-Gm-Gg: ASbGncuBdsH1GGYXXG5FVNaeQNhgUiE5FX84AjQY+EpZDMhDoXPq7s5xvYk5E0foY6C
	Wu70hWZEy7S8iKzkW6g37wqwCbkbcJVMbSmrKcJJLIVTuBS24+IJO04T+w2xVHsHLtBfcFdWlsD
	QnVnrhO1YxjrP1RPwLBnpK+Un/c2qzkeJV+VjgyEpdQvrFXhSOcaMugMfM1pk3Wmiv67uZD4PTA
	vU1KCQ8yda/3CbJ9cX2l6nBznEKWqlpg3A0r6StaHQa7/Cq+KqsJzfFxW6SYoa3SgUAj1fBOS/g
	Bf9aNIhj6FxUVe1cgHsp5+85pZ0wZZJuhOk9iyTOGNBpoXgqOPcONiKVlCkmsJidJ1qilU3WfyH
	MI83VMklY+DiwC4w1jAXqYjhMr21NmmrGjfEc7QM15tCMSBHo273VY6JnmSVdfu3NRQ==
X-Google-Smtp-Source: AGHT+IEVMqsRYx/eZWJrDGuA6CkNio+e8WgeHMt6w0uQJD0Qdm/zWA6Cch8r5o09n+huHNyuFFJcMQ==
X-Received: by 2002:a05:6602:2c85:b0:87c:4609:d10a with SMTP id ca18e2360f4ac-88022aa5b32mr1018565339f.9.1753535408253;
        Sat, 26 Jul 2025 06:10:08 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:07 -0700 (PDT)
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
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v10 0/8] spacemit: introduce P1 PMIC support
Date: Sat, 26 Jul 2025 08:09:54 -0500
Message-ID: <20250726131003.3137282-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
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

This version makes a few minor changes to DTS files suggested by
Yixun Lan.  It also reworks the function that determines the
regmap_config structure to use, and adds a function that frees
that structure when it's no longer needed (if it was dynamically
allocated).

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v10

Between version 9 and version 10:
  - The #address-cells and #size-cells for the i2c8 DTS node
    were moved into its primary definition in "k1.dtsi".
  - The interrupts property for the i2c8 DTS node was moved
    below its clock-related properties.
  - The status property in the pmic@41 DTS node was dropped.
  - The function that provides the regmap_config structure
    to use was reworked a bit.
  - A new function was added to free the regmap_config
    structure after it's no longer needed.

Here is version 9 of this series:
  https://lore.kernel.org/lkml/20250724202511.499288-1-elder@riscstar.com/

Between version 8 and version 9:
  - The max_config value is always used if it is provided with the
    simple_mfd_data structure.
  - The regmap_config structure used is allocated dynamically if
    necessary; otherwise regmap_config_8r_8v is used.
  - A small duplicated comment is removed

Here is version 8 of this series:
  https://lore.kernel.org/lkml/20250710175107.1280221-1-elder@riscstar.com/

More complete history is available at that link.

Alex Elder (8):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: specify max_register
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 135 ++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  13 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  57 +++++-
 drivers/mfd/simple-mfd-i2c.h                  |   5 +-
 drivers/regulator/Kconfig                     |  12 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 167 ++++++++++++++++++
 13 files changed, 653 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
-- 
2.48.1


