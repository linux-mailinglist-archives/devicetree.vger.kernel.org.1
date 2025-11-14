Return-Path: <devicetree+bounces-238886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 076AFC5EFBB
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 20:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 309AB362C8B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF392DF71C;
	Fri, 14 Nov 2025 18:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CM8v8LQ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873A7287504
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763146672; cv=none; b=F6ipFAPFYK2BIBD/KtKsmZwSBC7YJUqQ48lSv5Fdw2xtDctuiZ3Hs4JwF4jPB4VQoc6GO8OMciy1dnF+afvIIkpvDqI/TuU0fQCd0XX/TlgLXrv5ln+QcWiisJH67Ht3kjKdbXM9qUw0CFA/pZtoxNTgi4tvAkETTFMicsNglz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763146672; c=relaxed/simple;
	bh=SPekITSXao5JzRpeAqm6OT/Blg0mEMpoUV8q31/6/wM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bCeGxN79P8rkvmUgaj8vKjRRX01o8yTwJuSvwK8ULSQHlAKB/IOsdV0uHmSbdbxrMUTa1kcmDvmVpKBu/IvNqpZJIageHtNDzx2m3FSICb7Hji5wWdBC3oNL63vYvAuYpgrnmpdKDteklahy8vVZDak6JwcpNi53MrVHCOpnyig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CM8v8LQ/; arc=none smtp.client-ip=209.85.166.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f65.google.com with SMTP id ca18e2360f4ac-948a3979af4so120798139f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763146669; x=1763751469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/qXJqiPsnANUtpsR8sAeXZ7h/dCQytG5r8pVCD3h57A=;
        b=CM8v8LQ/UUJv2yJrg7l5hT5htlxgp1xzDuf/o+4ow8OdHcDpkGOqCeAe/u9YjU//UE
         MezGXmK/lJt4dR9iD99/B3oseLGuey/eJvKqK5qz78LJIyMfcYfF/K0WT7tcq+V1eKoY
         4YYRXc30+jWIxL0+p4jYt4fo25Ng7cHKkukuckFitb6sO6f4xDqj0npM22sV4huVDI3E
         NWVEcdegyDeKoJVZwp2Byb4GwISiUHC2X0rGhKky5a8n+tgQVB8AsChnWmm79iuI5tHf
         tnzVBrtGl64DBlBcyw4fvNaSJjlhAavntyQ+zt8kOW9WhSGUw8pUwRK9lZoaMJD6hCJU
         EYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763146669; x=1763751469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qXJqiPsnANUtpsR8sAeXZ7h/dCQytG5r8pVCD3h57A=;
        b=dmAYz7F/C7X8hPtfTBudg+BC45Wc3XXzuRXakBhCpZRlt0kNUSP0Ug9htoGeFL0U6a
         v89fg1elYFmuhh76TD7y2ATq9L7rpj35tp1KENYi9u274WXI7gmlW7I2BdP0utjo7Eqr
         jEeaY6YEQ3p1Uv1kqa69Q5OgJneYlSDfGkbS4kec1Ajk4slnNQPep3nKH4AsHebIRUzM
         IcQwmhpCNaBgBeWKyp3WDBuQnL9olG0frVJObZJFDQSrf5HgBwZqIJkcOfD7z+27mmTg
         yGuqSylDvh9VdRsYvrcKAbPVv0MFJ8nv0Kls0CU1xJYWyByrInmB/Pq1nFreT+u+YcfP
         1mGw==
X-Forwarded-Encrypted: i=1; AJvYcCW01Xb3YahpafVlxTtxj4GR99yh2+hhOtv1QGpXKcVe+/UIBifDREID9uUBYXSK4jQqGqTNGeHTXx9v@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe6cpg/RCSefzlnOS9D/Gc4uB2byxza2lx3Y7kADT/sO4tGbcR
	PtCmVvxDrLlHWeuFQ7hLl2a/k27JdTf42jDCAi9oYaKR6MPoElr6ph9smrPatJ6OPcY=
X-Gm-Gg: ASbGnctGvo5MdHOtnbKrviXxvz6d4ywrIItFB4ke1Ou+wSVe/IgsBPNxSe/QmJN7Uhn
	K35bYtcJ0o/qnsGtB8kW8iELvsXm2dHJJupwsY/1Blf6mAplEkaMNX7VE/Ed2mOeaXrimdJHRUB
	eHDn9qLKO+XJ2P4yra1QWmiHUqADL8opjiOEFvkf8WZa8rBgOajat3nALaoy0yVrq5KktLdTbpt
	QecAii+cv9QiQ3ol8wRq3Xe7MeM0vh2gUsOgvD1BDittm+SDVerx/rAW4Lxkz/w1kYeHSyPp82M
	+qTrtpZBDqBR1CWsyk1ghbsbfn5DXPo5+KFNpFkogAX92Y9O4MVul41uqfrUNjI3z8mQE0R+s7M
	QsOeWUYQi+bhbiFdx3KN4bgFltiChh/7EpJHe4gls4fL2Y7njLf5Kc6xoZAIRn5TlyhWaOoMC9s
	IQbBNh+uZIfdzCWBh5P1zt5tUcnappI5ks9t/rHsGivxKds/YRnVTKIy7jr47xDzm4
X-Google-Smtp-Source: AGHT+IF4Nu5xfllgas5VBV6/o7VY3ZLAK+xfSIPCiHas33IRbeDvWn8RhVK1Tut1/N9t2FgYtTTWTw==
X-Received: by 2002:a05:6602:3429:b0:945:a834:5951 with SMTP id ca18e2360f4ac-948e0689de5mr706912439f.6.1763146668632;
        Fri, 14 Nov 2025 10:57:48 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-948d2ba690bsm278679339f.8.2025.11.14.10.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 10:57:48 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/3] spi: support the SpacemiT K1 SPI controller
Date: Fri, 14 Nov 2025 12:57:41 -0600
Message-ID: <20251114185745.2838358-1-elder@riscstar.com>
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

Version 7 fixes two bugs, and now builds the driver as a kernel module
by default.

(Note, this is a distinct series from the QSPI driver, which was
merged recently.)

                                        -Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/spi-v7

Between version 6 and version 7:
  - DIV_ROUND_UP_ULL() is now used when setting the speed, to address
    two errors reported by the Intel kernel test robot on 32-bit builds
  - Fixed a bug interpreting the resource pointer in k1_spi_dma_cleanup()
  - The driver is now built as a module by default, if ARCH_SPACEMIT
    is defined

Here is version 6 of this series:
  https://lore.kernel.org/lkml/20251027125504.297033-1-elder@riscstar.com/

Between version 5 and version 6:
  - Rebase only

Here is version 5 of this series:
  https://lore.kernel.org/lkml/20251013123309.2252042-1-elder@riscstar.com/

Between version 4 and version 5:
  - Added Yixun's Reviewed-by tag on patch 3

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20250925121714.2514932-1-elder@riscstar.com/

Between version 3 and version 4 (all suggested by Yixun):
  - Fixed an underrun/overrun comment error
  - Renamed a pinctrl node
  - Formatted dmas and dma-names properties on one line

Here is version 3 of this series:
  https://lore.kernel.org/lkml/20250922161717.1590690-1-elder@riscstar.com/

Between version 2 and version 3:
  - Add Conor's Acked-by to patch 1
  - Add Rob's Reviewed-by to patch 1
  - Added imply_PDMA to the SPI_SPACEMIT_K1 Kconfig option
  - Fixed a bug pointed out by Vivian (and Troy) in word-sized reads
  - Added a comment stating we use 1, 2, or 4 bytes per word
  - Cleaned up DMA channels properly in case of failure setting up
  - No longer use devm_*() for allocating DMA channels or buffer
  - Moved the SPI controller into the dma-bus memory region

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20250919155914.935608-1-elder@riscstar.com/

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

 .../bindings/spi/spacemit,k1-spi.yaml         |  84 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |   7 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  20 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  15 +
 drivers/spi/Kconfig                           |   9 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-spacemit-k1.c                 | 966 ++++++++++++++++++
 7 files changed, 1102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
 create mode 100644 drivers/spi/spi-spacemit-k1.c


base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
-- 
2.48.1


