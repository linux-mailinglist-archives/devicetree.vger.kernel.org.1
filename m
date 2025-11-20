Return-Path: <devicetree+bounces-240685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C835C740C3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A49B4E137C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E8231813F;
	Thu, 20 Nov 2025 12:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fXkI4iMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C2C3375B9
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643335; cv=none; b=JG8cFn3N+xS5GQfvyEYJKuZjCR/U64nUwh5PnHQFD0FpCRKt9lm80EuVZWr/OpskSZFVne0ud+6eOMBuwj3ACxfLPfKDee2bzPywRpA/VxzNgxSUoUXshDa9EvtxpipCXpIsqI4I9m98KDf8VVIgqp5nAOPh2I6nJziDTfRiUno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643335; c=relaxed/simple;
	bh=/dKcLLoCdCPHM/5ovkfbuL3N5nvZf0n/76Vnl7xU/CU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nRDaSEoOM7diMafWa1nczFjQTQX5QxEBCg595damH+tFJkTXyVOeG7dLbuweD05TrbIohckVPzQFHTkB+MK4SDnApXbEPuxLlAReqCBXf7YNZblE3aroHhbksp9bfd+STKD7OvJrRMfl76uFXa7b1ytgWRwlgaKmaz2B7/SN+3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fXkI4iMK; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-343684a06b2so770399a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763643333; x=1764248133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYI2g7qzqIFd6PcnbO5XbBFRcJbzbxoTcjzbsIRDb8I=;
        b=fXkI4iMKc4vwJ/kT8qzMRnJLHHVTAJZfvCEP7OftWgbK+W1sPJGBu/QcNJ8FWjbT46
         Zs/wpL6ut+aLq9dmOhRjKnpLcNsAjH4Vvgd8BLn362OLsdak27l63vLH8XjA89ph7YMW
         ExeyMphF4YqvJkzy5jFo9oEvAm1hExt56za9+66reEw9+uq+YS07WGTDkI1+gxKtDVBR
         7Yk9OhCnalJXDqyb4w0J2DWIl5BKZMCxwwYLTMyp1wtwIVeGXkvsc7X78tBiYHBZg2LH
         hOu846MfJk9e+xDnZvgJfBZODglYO94lOdbVlWdgJ8XOVOZUA3kSR5re0Tz130X40WjK
         bQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763643333; x=1764248133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYI2g7qzqIFd6PcnbO5XbBFRcJbzbxoTcjzbsIRDb8I=;
        b=oxM62TijWi6Xtuuk2WpG17q4BNjfWwN/IH8r7WWx2eWOzgAk0CBdmUiMuPnVuzBL4y
         ZhUunpPGJGisn/5pvx5ylfLPDdPVtkIIY57cQWJzoUWDa0eliJHQHMs+zPrZhVTswYka
         4FBljw44/MMDBZt+zdTlgw3KMQ8W7Ue1F8GoXYrO3tkHeHMf7bkpXqxWQwbZEamWaUmF
         A3P6+ZVG/xiRlH8WU3MAmRhCbvDt4mxweghXlb2RVqsafKIOstOuVbQDXVc4NUEQtdqv
         ekBR90p7gAR3m3WpzgWr7UPL3MiTFWYDQ7xdvgp2R8WVTkg+ACkKFSqLVr4P8jAxSElQ
         mOpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBcCdL8w6QRDKV4S6ThQmXO9CBfn+6L2HsbLaP0VwMp9jaafE6NPtkyEmer46k4JGVTpgUbQ7Mnscw@vger.kernel.org
X-Gm-Message-State: AOJu0YyQPrPY1+K1B3uyRfFZSHd6+T/F4FCfudRR0kHroH/tR2ml0Ebn
	Rkl6yFhfttsAOOOYnCF3fxBBgFNmE89e3JYlZxfbIOivjIthwRl6UnQ+
X-Gm-Gg: ASbGnct+WPmw5Lkr/u61XD8x0RzYieAt9Qr3Ajzgj2ygW/qTFpkZyjTMNdwnggxEaMJ
	X5r+KsNsxWeuUK/uaXK9mGNhQk0zvJRLES0E0ght1iPT9MN65TjUlByWDsOkvY3hgZXmbC83Ack
	rYRqtmdjclEfMD3C0paAfIAmf2qTJHNcjQEytQV8IWdfjqORNAAVkV8ftyO1+VVOHffzTQxyNjT
	4fFp/ss4H9PEyEXFqQKEt/LGpjBAkFYKOOZv1JvJN3S6rlOGtmbP6aiYPunhIqTNx9lfPe1IN17
	4g7GAOL3C/Mzgh4RJpan/WEKhI5O+zZZeeC8dHkvBv73n8ZHBarPIFJBqTS9RHY71d0z3Csc1N0
	kQ9S/SVOnRjODZoDcjAzwrrzwackCv1aNEyv/nmWOWV/Zq5WoWsrJyz89eYThkAauV47cD0+QUJ
	z6GgjPfbDw4AeC5/zC1B/dhkegfAnpLg==
X-Google-Smtp-Source: AGHT+IFo3noiA0iTR4f+OKnQyX8oQgq3/RqAj4sj1Aujkff5ftm4ojRUDsVlgWmZN9/qoeQB8d2kgw==
X-Received: by 2002:a17:90a:e183:b0:341:88c9:aefb with SMTP id 98e67ed59e1d1-3472835aec6mr2945238a91.5.1763643333115;
        Thu, 20 Nov 2025 04:55:33 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34726696b52sm2586746a91.1.2025.11.20.04.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 04:55:32 -0800 (PST)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH v6 0/2] Add support for MAX77675 device
Date: Thu, 20 Nov 2025 21:54:47 +0900
Message-Id: <20251120125449.26530-1-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

MAX77675 regulator driver and device tree bindings

---
Changes in v6:
- Updated DT property names to use "adi," prefix
- Reference reset-time-sec from input.yaml and apply schema constraints
- Reference bias-disable and input-debounce from pincfg-node.yaml and apply schema constraints
- Improved descriptions in YAML bindings and wrapped lines to 80 chars
- Introduced bitfield macros
- Added parsing functions for EN mode, latency, slew rate, and drive strength
- Separated configuration apply logic from DT parsing function for better maintainability
- Refactored apply logic to use direct regmap updates
- Enhanced FPS slot handling with string-based mapping
- Improved probe function with resource cleanup and error handling
- Removed unnecessary header files

Changes in v5:
- Fix subject prefix order to match subsystem ('regulator: dt-bindings: ...')
- Drop unnecessary '|' from description fields
- Drop repeated constraint descriptions from YAML
- Rename 'maxim,en-debounce-time-us' to 'maxim,debounce-delay-us' for clearer naming
- Used common 'reset-time-sec' property from input.yaml
- Remove duplicate description for 'maxim,fps-slot' and wrap lines to 80 chars
- Drop the node reference immediately after registering the regulator

Changes in v4:
- Remove the 'maxim,max77675-regulator.h' file as it is no longer used for bindings
- Eliminate unnecessary '|' characters where they are not needed
- Add and modify code to drop references that are no longer used
- Remove dead code
- Add detailed descriptions for each mode of 'maxim,en-mode'
- Rename 'maxim,latency-mode' to 'maxim,voltage-change-latency-us' for clearer meaning
- Update max77675_parse_latency_mode function to max77675_parse_voltage_change_latency accordingly
- Fix errors detected by running make dt_binding_check
- Fix incorrect indentation in the YAML file

Changes in v3:
- Removed unused variable 'value'
- Removed duplicate .list_voltage initializer
- Wrapped of_match_table with of_match_ptr() to fix build failure when CONFIG_OF is not set
- Updated driver code to match new DT binding schema
- Changed regmap_config from REGCACHE_NONE to REGCACHE_MAPLE for improved performance
- Added volatile_reg() to mark status registers as non-cacheable
- Missing explanation of `maxim,fps-slot` default value
- Updated DT binding enums to use string values (e.g., "low", "high") instead of integers
- Converted several binary properties to boolean typei
- Renamed time-based properties to use standard unit suffixes (e.g., "-sec", "-us")
- Added default values for properties
- Removed unused macros
- Renamed macros for clarity

Changes in v2:
- Fixed build error due to missing 'max77675_of_match' declaration
- Removed duplicate '.list_voltage' initialization
- Corrected value usage in regmap_update_bits call
- Added CONFIG_OF guards and used of_match_ptr()
---

Joan-Na-adi (2):
  regulator: dt-bindings: Add MAX77675 regulator
  regulator: max77675: Add MAX77675 regulator driver

 .../bindings/regulator/adi,max77675.yaml      |  188 +++
 drivers/regulator/Kconfig                     |    9 +
 drivers/regulator/Makefile                    |    1 +
 drivers/regulator/max77675-regulator.c        | 1056 +++++++++++++++++
 4 files changed, 1254 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c


base-commit: 6548d364a3e850326831799d7e3ea2d7bb97ba08
--
2.34.1


