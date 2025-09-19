Return-Path: <devicetree+bounces-219378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D74B8A777
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA204587977
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF4831E8AD;
	Fri, 19 Sep 2025 15:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="OzzEXMb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FD431DDA4
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758297561; cv=none; b=lqBdUAw2fE8A9XHPAHQQdhiNS6NTn6+DcMjdzRSI540uA8c74D5UxJMo+vgvjH7zUfNZp9Zw2mfsSPLXJ5oo8lBkdWYRYtH0OCAvSNLGHG/Fb2UJ6UzGIbcEBzEnqrl7ncEXWTdTqMwFa2DeGCNijBHbiFfu8w3gbIQ0fW4HwGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758297561; c=relaxed/simple;
	bh=e6z+FuB07lTrzgCpwwNvKm6kawfyWQVO1KrgqPQyPRo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bkY2Q1c41v0qQFb2vPX0K9WbxatDwlcOpJAyqP6PWD99VRFeC96/WZWpWE8h0NbgXQOindm0xss0I+LD3EwYmkSOLx+RXApnt4HMjrnC8oIoV+AZe+iMny/rPc8mWdVRaIacMbY8m9ONi9zwX5PcxOTrEZcwY4TcB2H0rOVTwm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=OzzEXMb8; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3fe48646d40so15446485ab.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758297558; x=1758902358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PieohXBDde9aJoeZPffJCOlv0SEwDrquFxpLVqeOn8w=;
        b=OzzEXMb8iNidjAQ+Q1UitYIq2nxiOkbL1kRhIMg9lv1mtiRnQidlYhI+HI01GL6XsS
         EU3y7TxNlSH+MYcQekmlB9SqLWtdP30opbXtyeh3nAb7b1QYPkGNhWPe5QIsbMWzNPed
         wjppShPK7hbqtC4LpoVu1LOb/Q/5uaIXQ+85p7pO+lJD5E3DjZO7k+LOVPzrRkE5YzHN
         PiYD10sThJ5GpTdpM2L4AtaCobexHPUR+fTU1UFXzVm+skc4U2YJBXsKtgMWcKrB7GfB
         EZQ+iyVQgKfConJO3WgTdBv2e+t76+e3pGVbNiUTVUnSgaP8NOHYlwRotMSrn9hNXHZI
         YKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758297558; x=1758902358;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PieohXBDde9aJoeZPffJCOlv0SEwDrquFxpLVqeOn8w=;
        b=U2FG2JmNN3Ruytw+9ML6XYp8ISyRq5sAWxCNZPiDiV38u0Yz+5pTYeKCMm0a06HJIf
         onkI85cMCiac+K3FFPYtgYzDzcPgw38UAbk/pieermr2cBMx1oEvuYNUHDFO62Paakyl
         9/MrANt8cnnxb8erjtEQ3hJd/y3NFdL0a4p1PkXh5pgvyJZWMbs/vp7kN+LKlMZ9CMpB
         ZuYHpxCULtv8B5KZbVwVCSSUWvG3GTp2hgwKgm3Th3tDID+MKgShOUkQLF6IBKQauGen
         vjKyAUrju3rl/YYu8xeqGGn3tDJkbqGzA5lkcF9jmTXxEbkrAdn3py4+MMVGSLLOilb1
         93+A==
X-Forwarded-Encrypted: i=1; AJvYcCU1k/0Jtzc+OdAgSQhSZok3XJ2XAlD113OuPryeJ4AMpIUyGl0o9/a09yc+ZDPPcp2tbU9iHfoCz1Zk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3whEpS8PEXYzSUHuAp0ExOXhOfOEZLnvuh5gE0xX6w/93iY4c
	DzFRigHzI5Fe4PN7CEQahiNXrGLUAhHIFDKcjPNDRuxBQetZGQMi1ag4D/asQdn/e3I=
X-Gm-Gg: ASbGncs+QUzIX2LyRcRpJeWkbnnYe90KiftrQq6Pu2rzvvSEuHnbcZEi9Pv8/dI6jVe
	7DMetmE5iuskuVzTda7s3DirrKINOOdBe2CrK4XvGB5X5lsHynzwfZutoGMmHr2dwHrZ2o46O5y
	QoSdPnI1vwq4cWLTNVaD7cn4yXUfEPxzkqM9Nr1aHm4GWhtKBmSKB1SoE6RCH3QHrgKpMXabxdJ
	qhX0lOgOPGs/Q5JqH7i99IKVUTZ6RMDOtw9xNii2nAvJBSskL6rO4r2teROcbbswncZds+pPTtL
	UHCh+ttHqU6m7Ui4zq47qq9mo6/CaXKjOgq2lYTFStFnavtrdwBKUtYFpo8LovCPAYTWlpf02kK
	i+hRr8BADfdnvXb+WOybjsUp/mrJmdEviQum4gC1JeuosK0OLQxY4P9NBx6GOGfngJQ==
X-Google-Smtp-Source: AGHT+IEjqrlSFIoeKxmjUweDtrCLwaQpAtyQ3arbMa+ZmRjzpi9BoH5PVFn/nUo5LPbXaE/8/YT8KA==
X-Received: by 2002:a92:c5b2:0:b0:411:6759:bfad with SMTP id e9e14a558f8ab-42441af5df5mr105138315ab.10.1758297558106;
        Fri, 19 Sep 2025 08:59:18 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-53d50aa460bsm2250898173.52.2025.09.19.08.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:59:17 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	ziyao@disroot.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] spi: support the SpacemiT K1 SPI controller
Date: Fri, 19 Sep 2025 10:59:10 -0500
Message-ID: <20250919155914.935608-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the SPI controller found in the SpacemiT
K1 SoC.  The driver currently supports only master mode.  The controller
has two 32-entry FIFOs and supports PIO and DMA for transfers.

Version 2 incorporates changes suggested during review of v1.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/spi-v2

Between version 1 and version 2:
  - Use enum rather than const for the binding compatible string
  - Omit the label and status property in the binding example
  - The spi-spacemit-k1.o make target is now added in sorted order
  - The SPI_SPACEMIT_K1 config option is added in sorted order
  - The SPI_SPACEMIT_K1 config does *not* depend on MMP_PDMA,
    however MMP_PDMA is checked at runtime, and if not enabled,
    DMA will not be used
  - Read/modify/writes of registers no longer use an additional
    "virt" variable to hold the address accessed
  - The k1_spi_driver_data->ioaddr field has been renamed base
  - The DMA address for the base address is maintained, rather than
    saving the DMA address of the data register
  - The spi-max-frequency property value is now bounds checked
  - A local variable is now initialized to 0 in k1_spi_write_word()
  - The driver name is now "k1-spi"
  - DT aliases are used rather than spacemit,k1-ssp-id for bus number
  - The order of two pin control properties was changed as requested
  - Clock names and DMA names are now on one line in the "k1.dtsi"
  - The interrupts property is used rather than interrupts-extended
  - The order of two pin control properties was changed as requested
  - Clock names and DMA names are now on one line in the "k1.dtsi"
  - The interrupts property is used rather than interrupts-extended

Here is version 1 of this series:
  https://lore.kernel.org/lkml/20250917220724.288127-1-elder@riscstar.com/

Alex Elder (3):
  dt-bindings: spi: add SpacemiT K1 SPI support
  spi: spacemit: introduce SpacemiT K1 SPI controller driver
  riscv: dts: spacemit: define a SPI controller node

 .../bindings/spi/spacemit,k1-spi.yaml         |  87 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |   7 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  20 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  16 +
 drivers/spi/Kconfig                           |   8 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-spacemit-k1.c                 | 968 ++++++++++++++++++
 7 files changed, 1107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
 create mode 100644 drivers/spi/spi-spacemit-k1.c


base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
-- 
2.48.1


