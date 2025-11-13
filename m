Return-Path: <devicetree+bounces-238343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF20C5A326
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AB7FD35324E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8F6324B2E;
	Thu, 13 Nov 2025 21:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ki4yGI65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AF24502F
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070349; cv=none; b=R8YG+9NmVbzBU7yu0mvH7VYSMFXS+Fog1KF4q3CMNLNrGTdN8nZ22cJTl7YJkCOiLPuO9CtixIgHhkKm16snhABcUBVXwQ9lO0DMS1FyLe8JDiLpn+CxFvERZeKPUxAUVk/8jGF4ibvMMEf88pYDkeSwKgYec/NC2f5T0TpYeJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070349; c=relaxed/simple;
	bh=9BK/aY1DJKiNGs1q0x6hPPgaG4Z4qLB/Bh+9MtSYO0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R6+frDEs/RrsC1C/KKoUWc0Jj0XNhZG6PiM9kXfEWIKCqadwN+zg5rTy9yZn2T2c7ckNV5eEn5YJaOSlVywJSJKRgYdJ7omnkrgOI3G8iI319pMr4/I/kUQ1o38NjOXfHDHe7BpaVwcc8x51uOL07y+zjzko23M3ui0i9aLykZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ki4yGI65; arc=none smtp.client-ip=209.85.166.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f194.google.com with SMTP id e9e14a558f8ab-43377ee4825so7334225ab.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070346; x=1763675146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B379bUTcQAQWYz6DwkV1TzQYdhegW4cKAiyXnES8aOg=;
        b=ki4yGI65FMb2mCyi952WbyfyIlsuNy2mH3FYis46NNjAXey8GY6axepk0GZXQmvnmn
         wXHtKNHRX+t7MQlwX6IvSVF9/oUPiVl5pzI/9SJ4Gqjy1TUZ5ERx3sgJitRhVmOJusSl
         /HsPwUAeKgBX1FUMGYcR9KsQXlEOuNCNXneMdidoUzkyq4khmVQs3tNFxrya6VLs+IA7
         A3wpKu/N5fPJsC4o7IE+jen8iiSa2vXLpLsU4OaayzSH0rhvZgaxfca51FuK9LnzQvw6
         pfBZiNEp2FPachyFDeAtbSqyj820lurOdV60DLzuir3VXmyLXFAqqHLM2BfMhXlVt6gL
         0KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070346; x=1763675146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B379bUTcQAQWYz6DwkV1TzQYdhegW4cKAiyXnES8aOg=;
        b=M/czXXnuG4W1RCQmckXEtA9U7SBlmJvfIDOYIUTOWBTvSjggbMjSpJb+Iy7TAe+lif
         rl9hJLwXOMegBLWNvaDesF9ym/CEfjsRBg/lb0zcthkMsHIoNobbqYuWHNVhygU3QB0M
         /c9L1K0v18MXpzT+nz3Vo3finFdgxPYPlbybR8I0axuO4hyVqolyELwT+uxajuJQT3oA
         mPdWzXBax9XoH66UGQKHg0wsqs/bid+lhvjsmfYgI5YWrdiBkLgt3ISpvzmi+Dv1sNur
         rONJqcql2u+VR7YhhMSvZxfRqsum6iT+xBlmTxFWJb/jFshCXlNvMiXtea/Pm9fZPeCN
         sOjw==
X-Forwarded-Encrypted: i=1; AJvYcCWbQyHnHjamJmbKIkojBUF6PWkyu71EfpBr0RlcFt7B6SEPoLa1Kx7mwvHWnBc80C01LLbvtv30pm05@vger.kernel.org
X-Gm-Message-State: AOJu0YxxYv4ZRJELIcf08tPc4maDfCN8Uhcr1kLmaT9gp2G2Jd12UvMV
	WaF15HTk8QJ34uABlijq0lZtI3Q9EWEp0qf/l9Tj0ousb9EVNXFJdkisGoWzwk4zdrI=
X-Gm-Gg: ASbGnculet1HGMBPWYS2hBcaAz+M0SUsGp4bZcHmZWoJCQf+S6Pwbd7iTeZgODeuDvy
	1zEjdUj1mO52s578MBb1ot1W4VQZ/ChhPjY3uc1fWwWb51QcX8/qh9X1fS+1YdD8aW2BFMC2ZGt
	iCvN8Ai2XhgP+EzwAC6ZGJ0Dz+g0M42Cp82QmIS1sDHRYL7cfRX1ZNxj/CkxqSmJAmZSae+zazp
	wzPdL1NBXR+0GLrk9PgwfHdEKnw5aU2iNghOG2bzDZvBWUrIeGQwF1YsOy5g1Hg1tCO+ZSoHk0/
	7IAOvyqjghGMSWOMV/UiBwyzPnx8G7ZuYEyyodWMJTOhM3pplTXXyujs/WXk9Bku9gjsUjyXwJF
	59ilrwFLbw/i4A1zDOpW33Kuot5jevzVHFkGRzeMDADnSYOAl4+0SkZy+pmggMdCM/n8NWY+yMe
	TuHqIgNoAhuJtSyIvfaEZ9WQy1LO2DXtW9JNpLL5MMooZZETPGXWhlaQ==
X-Google-Smtp-Source: AGHT+IGJ0MUov99smegICrZ4kiST3drjyP8OcDyErpcAaWnTogYM2QvmzGI/vYXhzw3nIp4B4JWV4A==
X-Received: by 2002:a05:6e02:3813:b0:433:3316:17db with SMTP id e9e14a558f8ab-4348c863a78mr17011835ab.4.1763070345478;
        Thu, 13 Nov 2025 13:45:45 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:44 -0800 (PST)
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
Subject: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Thu, 13 Nov 2025 15:45:32 -0600
Message-ID: <20251113214540.2623070-1-elder@riscstar.com>
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
that PHY to be used for USB, the needed calibration step is performed
by the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

The driver supports 256 MSIs, and initially does not support PCI INTx
interrupts.  The hardware does not support MSI-X.

Version 6 of this series addresses a few comments from Christophe
Jaillet, and improves a workaround that disables ASPM L1.  The two
people who had reported errors on earlier versions of this code have
confirmed their NVMe devices now work when configured with the default
RISC-V kernel configuration.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v6

Between version 5 and version 6:
  - Aurelien Jarno and Johannes Erdfelt tested this code and found
    they no longer saw the errors they observed previously
  - Disabling ASPM L1 is now done earlier, at the end of the
    dw_pcie_host_ops->init callback rather than ->post_init
  - The function that disables ASPM L1 has been moved and renamed
  - The return value from devm_platform_ioremap_resource_byname()
    is now checked with IS_ERR()
  - The number of MSI vectors implemented is back to 256, after
    confirming with SpacemiT that they are all in fact supported
  - The sentinel entry in the OF match table no longer includes
    a trailing comma
  - MODULE_LICENSE() and MODULE_DESCRIPTION() macros are now
    included

Here is version 5 of this series:
  https://lore.kernel.org/lkml/20251107191557.1827677-1-elder@riscstar.com/

Between version 4 and version 5:
- Clarify that INTx interrupts are not currently supported
- Add Rob Herring's Reviewed-by on patch 3
- The name of the PCIe root port will always begin with "pcie"
- Lines in the bindings are now wrapped at 80 columns
- Subject lines are all captialized (after subsystem tags)
- Place the PCIe Kconfig option in the proper location based on
  vendor name (not Kconfig symbol); expand its description
- Drop two PCIe controller Kconfig dependencies
- Use dw_pcie_readl_dbi() and dw_pcie_writel_dbi() when turning
  off ASPM L1
- The dw_pcie_host_ops->init callback has been rearranged a bit:
    - The vendor and device IDs are now set early
    - PERST# is asserted separate from putting the controller in RC mode
      and indicating power is detected
    - phy_init() is now called later, just before deasserting PERST#
- Because of timing issues involved in having the root port enable power,
  getting and enabling the regulator is back to being done in the PCIe
  controller probe function
- The regulator definition is moved back to the PCIe controller DT node,
  out of the root port sub-node (in "k1-bananapi-f3.dts")

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20251030220259.1063792-1-elder@riscstar.com/

Additional history is available at that link.


Alex Elder (7):
  dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: Introduce PCIe PHY
  dt-bindings: pci: spacemit: Introduce PCIe host controller
  phy: spacemit: Introduce PCIe/combo PHY
  PCI: spacemit: Add SpacemiT PCIe host driver
  riscv: dts: spacemit: Add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
 drivers/pci/controller/dwc/Kconfig            |  13 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 358 ++++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1649 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 6d7e7251d03f98f26f2ee0dfd21bb0a0480a2178
-- 
2.48.1


