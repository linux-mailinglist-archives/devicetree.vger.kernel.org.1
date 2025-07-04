Return-Path: <devicetree+bounces-193145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C3CAF97A6
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:14:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 425D54A01A1
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8686326A67;
	Fri,  4 Jul 2025 16:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PaB3f47z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5CF30B9BB
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645679; cv=none; b=BSszkcT0/827swPPcbZ0Zozptc7eDVJn2Vu7DmWJyypec1MUk+SnUfe0zQUAsHHh6je3oq65XvxvoX4fKSUMS0tDiCSBSAOXfPgiQKtuP5n+OL4Wsso5SINpI1qRhN/lXTdWqHbFsV8VXGA3Iy8rs2YGn/8MrCoylLNd8/PBPmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645679; c=relaxed/simple;
	bh=1yDT1jqjeSarkP/ETvqJMjt8SgFkac1TqmvFja6mNy4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GfG8Cd48g8mBk2K4U8YsGFaDGn/n3WjglYPYoz5QUpSyGWptJ/cvNW5yUZGaJaxKrySIaZa0No4HpnCxWNS0cvlF7xRTvPRh0+2hzDHMZVo6Jg5Q2dazyETPDyVd43SfNPtU+M2Dr9wsAnQOYKRgwzG6+stlL0XzJ9kwEqiVrZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=PaB3f47z; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so186488866b.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751645675; x=1752250475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h6lG/AjsJH9S6BFCzOBiq+0c8U6DQuyEYF2+hQ6MY5k=;
        b=PaB3f47z/EKi1DWmy68M1PUPn3pYdh8ZvL/IxOgmT8RW5Dn9lPirdKQc0hf7pXU+ZD
         olZ+8GRYgW9SDs3jitfA7X/LFOXNYwFSCbpB20zSM63rQLEOI7usnfYrx534uDGT81Xb
         ONqPHSXlz/0zcKQKoVlX1mAhGS6TMsqYsVlnaFTiAC+66JN/IU29XyW2nMBpyR3idmYf
         QlUxxOyUX2WCAa+YRvhd+HiVIxreDsYjUpOhsaz1mYI4SewihqDQZbu1RrjelkIjnIkk
         eV0PcFlk/OQ8mju1GZcufKoVl1FcdeN2w06Z+lEmZpqIn8PmBf9IHPwIaZa3dlvONIcE
         J9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751645675; x=1752250475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6lG/AjsJH9S6BFCzOBiq+0c8U6DQuyEYF2+hQ6MY5k=;
        b=E2ByJ6uztMIVrVOrVMaKUXki1c3kZZiucaKLRltEUEIJSX6mvNJtxkH3zZPvkxNkEa
         vSU8DCccbSQ2jveIym8mRJk7fmpSuCFPHEnC217TFcK20rhxiyJl3MRj7Ctm/fkQwpgZ
         If1/dg7227kIp3zopR1CHOPu7DrlB/UxvB63LNNl7mnTwTVggJt93VkFI+Bs55CZCJ16
         DYn+IYOfu2VjVPbClVVIZ09ety4RnR2uO+qeEghuiq3e31gNjMjHi7kY4EfF9Sbzjg0E
         lfbjCP3Ah1JrwTxQzpx3LAm2A5jj0C6mwl7cvo7tdjc47ieF/iHnk1NekdV267f3UpXa
         /JnA==
X-Forwarded-Encrypted: i=1; AJvYcCXQLXVnYicM0YcV66ppCnZokLG0ccLXx8g8kIgjE4Aavs7AJA8T7fnqgyGZwwdVS4mZ9eEyX265sUXn@vger.kernel.org
X-Gm-Message-State: AOJu0YwDgzApmretIUCkuLiHsf4LEwouBok0f9uD1eqGdSTSh/hy1Uo7
	Apth9r/chFFfLKYVpiscR+zpz840Ghc/iYTZjjJz2rWQ9KKq1aTMN1pk2CC6YpsriYw=
X-Gm-Gg: ASbGnctevVG8DvDdKzvb4WIaL9IQMPTkNl1n3e/ZFhICWVT0XM4K9DTRlhxuDB8yxk5
	NiDmaTE/U+GKjJ9DvmHp5ZhUp82vPGr0y/GrdiYSzFIZlxMIuduXP8mtbCeL9WFxHTeExWBcflq
	uw07HAojxoCHRp6aupo60vBMKFJm5Rj4vCYm8RXD7JrOMc1oxNmQkFveq79hsJVpezWL34fokEH
	NUiVwRaAQlJbu/Fenp10ziMv/PEb1f6rOuArmsuDwu7XGOIiCLh5g+WwN1RijfSK353AcjX+Pns
	dn04MjadBBHDFuUlfG0C3b2Hyl1dTjag43sQQ8zau1kw15nASV5mhiOl88vXz02+RCieeFFiia6
	gM0ovpsOBiL6lFmg=
X-Google-Smtp-Source: AGHT+IEb528uiNOCOvEavhvPClvCp90Qlmh60cyGaa2Bd5e1NI48LJ+veXRwIR+jYzpAkq2kId7/kw==
X-Received: by 2002:a17:907:9308:b0:ae3:b371:e7d3 with SMTP id a640c23a62f3a-ae3fe69333emr265030866b.22.1751645675327;
        Fri, 04 Jul 2025 09:14:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d9215sm194703766b.2.2025.07.04.09.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:14:34 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	lizhi.hou@amd.com
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 0/9] PCI: rzg3s-host: Add PCIe driver for Renesas RZ/G3S SoC
Date: Fri,  4 Jul 2025 19:14:00 +0300
Message-ID: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds a PCIe driver for the Renesas RZ/G3S SoC.
It is split as follows:
- patch 1/9:		updates the max register offset for RZ/G3S SYSC;
			this is necessary as the PCIe need to setup the
			SYSC for proper functioning
- patch 2/9:		adds clocks and resets support for the PCIe IP
- patch 3/9:		fix the legacy interrupt request failure
- patches 4-5/9:	add PCIe support for the RZ/G3S SoC
- patches 6-9/9:	add device tree support and defconfig flag

Please provide your feedback.

Merge strategy, if any:
- patches 1-2,6-9/9 can go through the Renesas tree
- patches 3-5/9 can go through the PCI tree

Thank you,
Claudiu Beznea

Changes in v3:
- added patch "PCI: of_property: Restore the arguments of the next level parent"
  to fix the legacy interrupt request
- addressed review comments
- per-patch changes are described in each individual patch

Changes in v2:
- dropped "of/irq: Export of_irq_count()" as it is not needed anymore
  in this version
- added "arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe"
  to reflect the board specific memory constraints
- addressed review comments
- updated patch "soc: renesas: rz-sysc: Add syscon/regmap support"
- per-patch changes are described in each individual patch


Claudiu Beznea (8):
  clk: renesas: r9a08g045: Add clocks and resets support for PCIe
  PCI: of_property: Restore the arguments of the next level parent
  dt-bindings: PCI: renesas,r9a08g045s33-pcie: Add documentation for the
    PCIe IP on Renesas RZ/G3S
  PCI: rzg3s-host: Add Initial PCIe Host Driver for Renesas RZ/G3S SoC
  arm64: dts: renesas: r9a08g045s33: Add PCIe node
  arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe
  arm64: dts: renesas: rzg3s-smarc: Enable PCIe
  arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC

John Madieu (1):
  soc: renesas: rz-sysc: Add syscon/regmap support

 .../pci/renesas,r9a08g045s33-pcie.yaml        |  202 ++
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi |   60 +
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |    5 +
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |   11 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/clk/renesas/r9a08g045-cpg.c           |   19 +
 drivers/pci/controller/Kconfig                |    7 +
 drivers/pci/controller/Makefile               |    1 +
 drivers/pci/controller/pcie-rzg3s-host.c      | 1715 +++++++++++++++++
 drivers/pci/of_property.c                     |    8 +
 drivers/soc/renesas/Kconfig                   |    1 +
 drivers/soc/renesas/r9a08g045-sysc.c          |   10 +
 drivers/soc/renesas/r9a09g047-sys.c           |   10 +
 drivers/soc/renesas/r9a09g057-sys.c           |   10 +
 drivers/soc/renesas/rz-sysc.c                 |   17 +-
 drivers/soc/renesas/rz-sysc.h                 |    3 +
 17 files changed, 2087 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/renesas,r9a08g045s33-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-rzg3s-host.c

-- 
2.43.0


