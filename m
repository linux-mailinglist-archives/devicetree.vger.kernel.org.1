Return-Path: <devicetree+bounces-233466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0E2C227F3
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 23:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E3693A96C5
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A632EC54F;
	Thu, 30 Oct 2025 22:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="hq6LxwAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71962BEC30
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 22:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761861787; cv=none; b=TlelYQsAhoXnQu4Psealbk3Bk5SoXO3Dru5DrylFx5KaNYNPqfYrdz+5ypqAebLv+VMW1mpe+TFrKObxjcCJfjxWzeB+tHcNjTpvoMlPOG2bQjTw3NayMitSOBcyppHIezQ4dZggmHuAFjkBWQgB1TMJmlS7Z/M93V/fF21fvcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761861787; c=relaxed/simple;
	bh=QOIcc2+l6slkkak/Opq+CJtKjU3NIDV1tx4AeEAkKKA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RxwVvg9CVyJIJZGOJvMVZ51gR/D+rwnHKD2scm4VMuHtCUeRWjbbL5MltTTyl0wrM7TubakxjV4xfHsA0xuKzZjeWkVg9vW++xtxcYocrwUVak02rdhqIlZvgaqzpMyR/jCtFo4ykHw00nhuYhOINrf8rFDTPyhm2e1FLVjFLGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=hq6LxwAB; arc=none smtp.client-ip=209.85.166.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f66.google.com with SMTP id ca18e2360f4ac-92b92e4b078so70212239f.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861785; x=1762466585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Phq3DSvAibN+39Xx+hszp3gQ0pcRpusIMooyNw/JXGg=;
        b=hq6LxwABKQGj79VzwpC3ILMrIvEQotDvfVQRmijlLee66+gmJN9oSHdn9Nd+ZFkiQz
         Ao+NzN7hw2jr3RRTfxOcN9vB4Ze4HV0sqifbeLTaZrZt5oCUaIedCFiSIhgcvPiMoRlD
         qAYW+H/2QB2mIgeuj7UJkkLSsOQh5Uc61Oi9k+8cIFP6kxvlkKqIWcCWL+ffQzUoYOMv
         AjWY5aVVbvrCywFJ334MdA0CWvYhpPHZ6FU+t8vzDa6RBuAHyLnOxCHP2LqJ+58t08Qa
         IoB7Mg4bz7/xv6yR9fBFgFgKrdSQEzpRegRxM+NtSmGwIVVHwtzE7LgOsKP/oKjIDtCD
         ht6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861785; x=1762466585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Phq3DSvAibN+39Xx+hszp3gQ0pcRpusIMooyNw/JXGg=;
        b=c/bhw8rhXYfZlIqD0ThFXxfgXOaObTDFKJpVWZv4wLzlhEbtdOtDWTxNsERqJfDwlJ
         ffHn7WnQiYCc0vwaQyzWfyvj1Knb+KGRPZ2AtA7vkJUsMYqjUmepObZeKYNyKdgyn8E/
         wYBuBzkqn6HcwA5aF9Nl6nnASjMdEUpTiBoKPFCmnEpz0sy9hOl6ukYtZX4jmcwYEy3G
         hoUtPhdS8yjeC32kWrQeyGVlcq+u3neOlnxI4akaa0HlonknP5XTbA2i2TLlKKjplKyU
         pzn7XsCvZt0IHmPEo36GmjLsY9arLTBKB8Rv0+BYrJQ9bEZzh1nVsfRH3+WVsK+pbQ+e
         DO6g==
X-Forwarded-Encrypted: i=1; AJvYcCWuRbSZVLLePEhnWAGRRdpDxZwVdjBZ2eT/RMrHH4ts5/aVnzIhqcPxcT/iqiIuZqs+A+v3pWaugMUT@vger.kernel.org
X-Gm-Message-State: AOJu0YwFvU8NDga3ltq8zxavVbkeuzBe29L6iGtsqB7jEPTk9Tpp3Qaj
	cpy3jxmL64GAoqd33nT6XRBI17yGb/cHeBxZApMWjD8O/l7hWPFg8Ex8F12ZSz5n8dQ=
X-Gm-Gg: ASbGnctS3wcG6O6hnaFwF17RbnyHpGu5QjQfEmROzGkbYb1uGdX27Lq6a8PKlX49g+T
	k8Sk1m2+P3E+PUpO9U4NI1HBpbLjoT8bvlRfwk8HdowW5EEzgTZibzio5rh6cjww8OV8g3CWvcK
	HTquAKnVmCF/J5XowfB2aX956V2LOGxsvdutVfo7eVQe2cJ8zyBy3joRLB9UTj+LzHDxM6waRzX
	14xYa0jlKu3Q0/FKAgzbF+aZMfFkEjyzJtNbfWmJtWjqRNCGchDg312Ia/U2IbsnJ0EhigOKlr9
	F+spM12ftrd20yY6xBArkCRsLxuBs1CGsdVLJIk9/EvaF1SHzS1nXEJXs0qemiwvoTIhm7TdvxJ
	dCDs59aiJNOuIUzL9aKrSPlj1jJLj8EySaV3py+luZfunxxLBBGl/OmagWfGpgyQk30HSPNm+RA
	PkpSK9sRGELVBpIQJJXHiYfYnPT5YnBF3GYYJq/7jcTR2p15godWpJdw==
X-Google-Smtp-Source: AGHT+IHIfi5HvcZFQEMsBLWU40iLrdbD6dtXflle6FkJVnDeQEPilinICeuX7JKqnLgG58PEKCRkEQ==
X-Received: by 2002:a05:6602:1606:b0:944:f050:65d6 with SMTP id ca18e2360f4ac-948229ca479mr236508039f.10.1761861784511;
        Thu, 30 Oct 2025 15:03:04 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:03 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org
Cc: ziyao@disroot.org,
	aurelien@aurel32.net,
	johannes@erdfelt.com,
	mayank.rana@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	thippeswamy.havalige@amd.com,
	krishna.chundru@oss.qualcomm.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Thu, 30 Oct 2025 17:02:51 -0500
Message-ID: <20251030220259.1063792-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series introduces a PHY driver and a PCIe driver to support PCIe
on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
one PCIe lane, and the other two ports each have two lanes.  All PCIe
ports operate at 5 GT/second.

The PCIe PHYs must be configured using a value that can only be
determined using the combo PHY, operating in PCIe mode.  To allow
that PHY to be used for USB, the calibration step is performed by
the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

Version 3 of this series incorporates suggestions made during the
review of version 2, and based on some error reports from Aurelien
Jarno and Johannes Erdfelt, disabled ASPM L1.  Specific highlights
are detailed below.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v4

Between version 3 and version 4:
  - In the DT binding for the PCIe host controlloller, add a new
    sub-node representing the root port
  - Move the phys and supply properties out of the PCIe host controller
    and into the root port node
  - Define the spacemit,apmu property later in the binding and DTS files
  - Define the device_type property first in the binding examples and
    DTS files
  - Add root port sub-nodes in the examples and the DTS files
  - Select the PCI_PWRCTRL_SLOT config option when PCIE_SPACEMIT_K1 is
    enabled
  - Parse the root port node in the driver, and get the PHY
  - Leverage the PCI pwrctrl slot driver to get and enable the regulator
  - Don't set num_vectors to 256; just use the default (32)
  - Cleaned up some comments, white space, and symbol names based on
    feedback from Mani
  - Add some runtime PM calls to ensure it works propertly
  - Add a new post_init callback, which disables ASPM L1 for the link

Here is version 3 of this series:
  https://lore.kernel.org/lkml/20251017190740.306780-1-elder@riscstar.com/

Between version 2 and version 3:
  - Reviewed-by from Rob added to the first two patches
  - The "num-viewport" property has been removed
  - The "phy" reset is listed first in the combo PHY binding
  - The PHY now requires a resets property to specify the "phy" reset
  - The PCIe driver no longer requires a "phy" reset
  - The PHY driver now gets and deasserts the reset for all PHYs
  - Error handling and "put" of clocks in the PHY driver has been
    corrected (for clk_bulk_get() rather than clk_bulk_get_all())

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20251013153526.2276556-1-elder@riscstar.com/

Full details of changes made for version 2 are available there.


Alex Elder (7):
  dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: introduce PCIe PHY
  dt-bindings: pci: spacemit: introduce PCIe host controller
  phy: spacemit: introduce PCIe/combo PHY
  PCI: spacemit: introduce SpacemiT PCIe host driver
  riscv: dts: spacemit: add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
 drivers/pci/controller/dwc/Kconfig            |  11 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 349 +++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1638 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 131f3d9446a6075192cdd91f197989d98302faa6
-- 
2.48.1


