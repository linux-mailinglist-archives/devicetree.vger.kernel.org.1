Return-Path: <devicetree+bounces-95863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C8795BA14
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94D401F24089
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC3D41CBEBA;
	Thu, 22 Aug 2024 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OdoExPkz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AA91CB15E
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724340500; cv=none; b=mlP+bAm3cs57F16kj7S1pcCGaodIfDmsaMYtWBNnJzzqoM0KQ8TcOKiojaUvUVHHHbqJ9eIOTtYjvJH86EPFDlQX5RBBx71f9/82FWBzetFTHCkQDG8dkCiU3q1ZVqb1E6G2/SZ5iggSoIMBdvMvZEJJlWRc3AvMYfzi7mu4N2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724340500; c=relaxed/simple;
	bh=LBFFDsm/zfrS0rd8SU927JaSUE2tzSc1L6UBcRcd76I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lM1C5m9xNnXj8rLzSW46W6XIAm9p+zIv37OoAIz0Nkr2NynJZiXUwugTBabGXbhJ9+aFgvjxp5gOroWpsVEwRaZy5S8gfqsCPpxluKNdUFIdrE+i97feejuITSiPBA1xRbUERe2RkXSlYM0UD8gsvPRVXfGiMVMlUkPEcZ4LcXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OdoExPkz; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5334879ba28so1234594e87.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340496; x=1724945296; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oG0PQto83btnEL28K6haZsLSn7p7+BWVYeK6+IqQicQ=;
        b=OdoExPkzWUcU34Q/UVxriUD2ai3wD+qWxIX8I2iEkUM04fWwxnHQBaMxhJrMTGpV88
         cl4GNXLI50ETCaIMBgh9qvsYYtEeBgwqID3MFf8G9xlx8+yYmSOE94ewnKhfZIkiWSyQ
         +q6AwJNbg8pw5MewjBiaxZi/F1SASSr1C5mhUEvpyDGi828JaMqG5B5cGO8AyXh5T04J
         bYOYASXIIyVDT81OztW6FSgWcrdArywa36PWmDX8OoCmu5x5Ysl151h7stIIdOuf+67r
         HQFqqFwO4FjCzjMfT+BEwz4EteMmtm434rB46liZwhCUS7Pnt7BdsTMB64Ag3euhKLfP
         P6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340496; x=1724945296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oG0PQto83btnEL28K6haZsLSn7p7+BWVYeK6+IqQicQ=;
        b=XH5wEy5d0cbAehqCYfSMHyY6bNk3oFoQ+snMAHnqxOPQzTd+epClWeWJvsKLIgXfTV
         67riktPMzcJj/OTxmz+kAzNCbJ8Ys74si5x+Ffk7+6MemTNK67ljv2X9q8MZWeMgw/hY
         PWDBPXm3viGemVg94QvZYydmEmM6dSQs0axbQybeRfoc6qODcH8C9ayqnQTkzOu8uUWN
         TaSi3anW2BFrMJC71tCcPFkbOWHtSUi15SrDOytkP6gCeBpQrNkkdR7l/ye0crIdAG40
         kw03yNtxjsufmkeEd09DMXouM+hAb35IiAqpNarVFdOrQLBU6HEUwKO/pBSv+iwWXEid
         5heA==
X-Forwarded-Encrypted: i=1; AJvYcCX1w4Bivoktcz0cB+04ZkROFvBfKF5av/GT1cBSBE/M5/h3/M83SIjQpb9H5vh0YmHwAlNtv7Ey/hlz@vger.kernel.org
X-Gm-Message-State: AOJu0YzfjPwGmRiYYhNf+VZa5KGijk1JD9Pc+XAtPC8CGXeBy31T5cDz
	aT2m6fzl9af0yaRMklIWv3X582FA5LJrPzvlpIbF3hbpCpsJYQjXQd1ZXE6IGds=
X-Google-Smtp-Source: AGHT+IHF2HEzRj6RLICHJMj0My+kwTWQOaRUjHy9OJ1aWJK8tooH9yYqAZuBr0m26WtCehY9rsGeRw==
X-Received: by 2002:ac2:4c46:0:b0:52e:9b92:4990 with SMTP id 2adb3069b0e04-53348562455mr4098402e87.32.1724340495855;
        Thu, 22 Aug 2024 08:28:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:15 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:45 +0300
Message-Id: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds initial USB support for the Renesas RZ/G3S SoC.

Series is split as follows:

- patch 01/16		- add clock reset and power domain support for USB
- patch 02-04/16	- add reset control support for a USB signal
			  that need to be controlled before/after
			  the power to USB area is turned on/off.
			  
			  Philipp, Ulf, Geert, all,
			  
			  I detailed my approach for this in patch
			  04/16, please have a look and let me know
			  your input.
			  
			  Thank you!

- patch 05/16		- moves SoC identification to SYSC driver
- patch 06-08/16	- updates USB PHY control driver for USB
			  support
- patch 09/16		- update documentation for USBHS
- patch 10-12/16	- updates the USB PHY driver for USB support
- patch 13-15/16	- updates the device tree with USB support
- patch 16/16		- enables the reset control driver

Thank you,
Claudiu Beznea

Claudiu Beznea (16):
  clk: renesas: r9a08g045: Add clocks, resets and power domains for USB
  dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add #reset-cells for
    RZ/G3S
  dt-bindings: reset: renesas,r9a08g045-sysc: Add reset IDs for RZ/G3S
    SYSC reset
  soc: renesas: Add SYSC driver for Renesas RZ/G3S
  soc: renesas: sysc: Move RZ/G3S SoC detection on SYSC driver
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S SoC
  reset: rzg2l-usbphy-ctrl: Get reset control array
  reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
  dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
  phy: renesas: rcar-gen3-usb2: Add support to initialize the bus
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings
  phy: renesas: rcar-gen3-usb2: Add support for the RZ/G3S SoC
  arm64: dts: renesas: Add #reset-cells to system controller node
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support
  arm64: defconfig: Enable RZ/G3S SYSC reset driver

 .../bindings/phy/renesas,usb2-phy.yaml        |   4 +-
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  35 +++-
 .../soc/renesas/renesas,rzg2l-sysc.yaml       |  16 ++
 .../bindings/usb/renesas,usbhs.yaml           |   2 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 120 +++++++++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  61 +++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a08g045-cpg.c           |  17 ++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  60 ++++++-
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |   3 +-
 drivers/reset/reset-rzg3s-sysc.c              | 140 ++++++++++++++++
 drivers/soc/renesas/Makefile                  |   1 +
 drivers/soc/renesas/renesas-soc.c             |  12 --
 drivers/soc/renesas/rzg3s-sysc.c              | 158 ++++++++++++++++++
 .../reset/renesas,r9a08g045-sysc.h            |  10 ++
 include/linux/soc/renesas/rzg3s-sysc-reset.h  |  24 +++
 18 files changed, 648 insertions(+), 24 deletions(-)
 create mode 100644 drivers/reset/reset-rzg3s-sysc.c
 create mode 100644 drivers/soc/renesas/rzg3s-sysc.c
 create mode 100644 include/dt-bindings/reset/renesas,r9a08g045-sysc.h
 create mode 100644 include/linux/soc/renesas/rzg3s-sysc-reset.h

-- 
2.39.2


