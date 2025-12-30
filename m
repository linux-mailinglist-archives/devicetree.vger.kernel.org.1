Return-Path: <devicetree+bounces-250387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D9CE8BF8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 06:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC8B43008D5D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 05:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E082E0418;
	Tue, 30 Dec 2025 05:58:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5E91EB5CE;
	Tue, 30 Dec 2025 05:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767074290; cv=none; b=IsMDz2dkgnMoJ1kj/MiTmU4+kNHtfaHlgXE9JWRGB962m2PIZExRCChhr1AZt9dmwH5ye+HFyfPbQHl4XxDg1DBd3LCKh+K7oLElfpOOmtXfktv8HI7e8FJfA/xF/cE8Bmh9FwRi31BctGnxAALKjdzX7bDeZ0bgDS7pKMd3ccA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767074290; c=relaxed/simple;
	bh=mJ6CAzj7csowkPDHckG6xiofX22C+TX2RFXXrChBJAo=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=sOoUTEfU0O9rUizx1B0Nn8fd8i7REpPIY4KVF+TY+QT2EwPqwA5hd/ylkSxF10q2HP1cao2Z4NB7zFiEk0352JnrLNuzASMPLdCr3Lvbu/QHdu9OSv5/C20a8oBkX14sWBHcUJCy5WboTG/yDk/3ocUVUW5rQ5UazRLmegeZkr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 30 Dec
 2025 13:57:59 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 30 Dec 2025 13:57:59 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Subject: [PATCH v8 0/4] Add ASPEED PCIe PHY support
Date: Tue, 30 Dec 2025 13:57:57 +0800
Message-ID: <20251230-upstream_pcie_rc-v8-0-03598cdd80cd@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOVpU2kC/43QQWrDMBCF4asErSszo9FIcla9RylGVpRaLYmN7
 JiGkLtXyaIuxJAun+D/BnQRY8wpjmK7uYgc5zSm/liGe9mI0PnjR5RpV7ZQoBgRSJ6GccrRH5o
 hpNjkIJ3WbLnetQ5JlGzIcZ++7+Tbe9ldGqc+n+8XZry93jEwSEAEgBUhkyErUX768HVuQtefX
 v04xLibYuiq0B/ETZrVUltkIE0KKsVM7j81LXUNCMy1UhWWmhme1/q3RlAWanaKK3SIBp/HvMS
 I9vEPZ5YgW+2xdmyND/tVxSyKAlxRTFFccA4gsGnRrCr2j4JmRbFF0T62sGcKOsQH5Xq9/gCIm
 rOqOAIAAA==
X-Change-ID: 20251103-upstream_pcie_rc-8445759db813
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767074279; l=5242;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=mJ6CAzj7csowkPDHckG6xiofX22C+TX2RFXXrChBJAo=;
 b=InCnTgqDtABRSeQEh7aOeE19GyPLupzdA+tbSZx4f52CusgmuuJ0GPQ5U9UeFN52k5QSw4bDu
 bPYl3VQjeU4CFulY4LPpam23yPILxMUDzySXAoMB0uYhm7MipoEkYPJ
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=

This patch series adds support for the ASPEED PCIe PHY,
including device tree bindings and PCIe PHY driver. 
The patches introduce the necessary device tree nodes.

Summary of changes:
- Add device tree binding documents for ASPEED PCIe PHY
- Update MAINTAINERS for new bindings and driver
- Implement ASPEED PCIe PHY driver

This series has been tested on AST2600/AST2700 platforms and enables PCIe device
enumeration and operation.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
Changes in v8:
- Update the title of cover letter
- Remove 'default y' from Kconfig
- Change 'PHY:' to 'phy:' in the title of ASPEED PCIe PHY commit.
- Remove unnecessary headers from phy-aspeed-pcie.c.
- Add ASPEED PCIe PHY MAINTAINERS
- Remove applied patches
  [v7,2/7] dt-bindings: PCI: Add ASPEED PCIe RC support
  [v7,5/7] PCI: Add FMT, TYPE and CPL status definition for TLP header
  [v7,6/7] PCI: aspeed: Add ASPEED PCIe RC driver
  [v7,7/7] MAINTAINERS: Add ASPEED PCIe RC driver
- Link to v7: https://lore.kernel.org/r/20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com

Changes in v7:
- Add PCIe port into aspeed,ast2600-pci.yaml.
- Remove aspeed_pcie_init_ports() and merge aspeed_pcie_port_init() to
  aspeed_pcie_parse_port()
- Refactor aspeed remap pcie addr to aspeed_pcie_map_ranges()
- Link to v6: https://lore.kernel.org/r/20251201-upstream_pcie_rc-v6-0-8c8800c56b16@aspeedtech.com

Changes in v6:
- Refer to pci-cpi-bridge.yaml to update aspeed,ast2600-pcie.yaml and
  the pcie node of aspeed-g6.dtsi.
- 'dt-bindings: pinctrl: aspeed,ast2600-pinctrl: Add PCIe RC PERST#
  group' have applied, remove it from this version.
- Adjust the defnitions in pci.h. 
- Link to v5: https://lore.kernel.org/r/20251117-upstream_pcie_rc-v5-0-b4a198576acf@aspeedtech.com

Changes in v5:
- Remove legacy-interrupt-controller and the INTx points to pcie node itself.
- Correct bar mapping description and implementation to PCIe address
  configuration in pcie-aspeed.c driver.
- Link to v4: https://lore.kernel.org/r/20251027095825.181161-1-jacky_chou@aspeedtech.com/

Changes in v4:
- Remove aspeed,ast2700-pcie-cfg.yaml
- Add more descriptions for AST2600 PCIe RC in aspeed,ast2600-pcie.yaml
- Change interrupt-controller to legacy-interrupt-controller in yaml
  and dtsi
- Remove msi-parent property in yaml and dtsi
- Modify the bus range to starting from 0x00 in aspeed-g6.dtsi
- Fixed the typo on MODULE_DEVICE_TABLE() in phy-aspeed-pcie.c
- Add PCIE_CPL_STS_SUCCESS definition in pci/pci.h
- Add prefix ASPEED_ for register definition in RC driver
- Add a flag to indicate clear msi status twice for AST2700 workaround
- Remove getting domain number
- Remove scanning AST2600 HOST bridge on device number 0
- Remove all codes about CONFIG_PCI_MSI
- Get root but number from resouce list by IORESOURCE_BUS
- Change module_platform_driver to builtin_platform_driver
- Link to v3: https://lore.kernel.org/r/20250901055922.1553550-1-jacky_chou@aspeedtech.com/

Changes in v3:
- Add ASPEED PCIe PHY driver
- Remove the aspeed,pciecfg property from AST2600 RC node, merged into RC node
- Update the binding doc for aspeed,ast2700-pcie-cfg to reflect the changes
- Update the binding doc for aspeed,ast2600-pcie to reflect the changes
- Update the binding doc for aspeed,ast2600-pinctrl to reflect the changes
- Update the device tree source to reflect the changes
- Adjusted the use of mutex in RC drivers to use GRAND
- Updated from reviewer comments
- Link to v2: https://lore.kernel.org/r/20250715034320.2553837-1-jacky_chou@aspeedtech.com/

Changes in v2:
- Moved ASPEED PCIe PHY yaml binding to `soc/aspeed` directory and
  changed it as syscon
- Added `MAINTAINERS` entry for the new PCIe RC driver
- Updated device tree bindings to reflect the new structure
- Refactored configuration read and write functions to main bus and
  child bus ops
- Refactored initialization to implement multiple ports support
- Added PCIe FMT and TYPE definitions for TLP header in
  `include/uapi/linux/pci_regs.h`
- Updated from reviewer comments
- Link to v1: https://lore.kernel.org/r/20250613033001.3153637-1-jacky_chou@aspeedtech.com/

---
Jacky Chou (4):
      dt-bindings: phy: aspeed: Add ASPEED PCIe PHY
      ARM: dts: aspeed-g6: Add PCIe RC and PCIe PHY node
      phy: aspeed: Add ASPEED PCIe PHY driver
      MAINTAINERS: Add ASPEED PCIe PHY driver

 .../bindings/phy/aspeed,ast2600-pcie-phy.yaml      |  42 +++++
 MAINTAINERS                                        |   8 +
 arch/arm/boot/dts/aspeed/aspeed-g6-pinctrl.dtsi    |   5 +
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi            |  53 ++++++
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/aspeed/Kconfig                         |  14 ++
 drivers/phy/aspeed/Makefile                        |   2 +
 drivers/phy/aspeed/phy-aspeed-pcie.c               | 194 +++++++++++++++++++++
 9 files changed, 320 insertions(+)
---
base-commit: 8640b74557fc8b4c300030f6ccb8cd078f665ec8
change-id: 20251103-upstream_pcie_rc-8445759db813

Best regards,
-- 
Jacky Chou <jacky_chou@aspeedtech.com>


