Return-Path: <devicetree+bounces-140863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88354A1BEBA
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 23:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 675E818901F9
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 22:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAFC01EEA28;
	Fri, 24 Jan 2025 22:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlebjrao"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14511E98FC;
	Fri, 24 Jan 2025 22:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737759421; cv=none; b=fHAOd0AwCdDfetIBtNhfSgGVGOFYc5Fc9D9HwgUnTi+H1Rfaw1jyqfz/tTyOYIW4LbsMR2tB431VccWJptU7fl5jyF6o/xUCiOsWWJnQJW5TmbvXNng3i7LlegPsL3chpmQythnTxSWin4p7lrfiv63VeTTFs4YjtCHOhuDvggE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737759421; c=relaxed/simple;
	bh=rD8zVsoHrvDCJiAxoW8j17L6g1g8ycDLuzn/lDj+KiA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mj5ll2ScrSnfgN3I4iw457A5XCBfYlDNmUeFGoOXeM+djz1z0UfwSdWA+vjxkY1X1nzPSuQZWpkAhTrsbvIKqRtTgcd/0Ip2ylYeJgI4CTYepZ+IodkuRnmZvDPBYeMJBHzGtUjHo49Q7PEAF2ryau96gUHRkoAgpevGT91oIl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlebjrao; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1504EC4CED2;
	Fri, 24 Jan 2025 22:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737759421;
	bh=rD8zVsoHrvDCJiAxoW8j17L6g1g8ycDLuzn/lDj+KiA=;
	h=Date:From:To:Cc:Subject:From;
	b=tlebjraorwEn1LoZNHnsQb7EqU+yopaq4Caaq0tbCHCgivuC4Rqg4xmNR7Jatu0rc
	 7P/8BtjVKw1ceS+lyt3Rh8/EjsHjme2n7FigJSikQNTctvGcvftD8k4rU6SzgQhMMx
	 m/DA3J9SWBkoT2tY4A84USg3E8/TTkpDwyWjcczyFXlNMfeXEPKdUhvQBDbtGpUDTX
	 oDDgKSHHbBezyXQCrWL0uSmUFo0EKMDfwT+z0/rnpnzq5qgyWIiD2Lrpyf2JfL69a0
	 Sz22hYvbqlFk5YDhk8vJzgswurA5R5Hm97ZHWXwaWY6HIJ9P8XKur7ixZyhVdEMY8J
	 8wD9sSs7c191g==
Date: Fri, 24 Jan 2025 16:57:00 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree updates for v6.14
Message-ID: <20250124225700.GA2614452-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Linus,

Please pull DT updates for 6.14.

Rob


The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.14

for you to fetch changes up to 15e2f65f2ecfeb8e39315522e2b5cfdc5651fc10:

  of: address: Fix empty resource handling in __of_address_resource_bounds() (2025-01-24 15:59:23 -0600)

----------------------------------------------------------------
Devicetree updates for v6.14:

DT Bindings:
- Add Bindings for QCom QCS615 UFS, QCom IPQ5424 DWC3 USB, NXP imx7d
  MIPI DSI, QCom SM8750 PDC, QCom MSM8976 SRAM, QCom ipq6018 temp
  sensor, QCom QCS8300 Power Domain Controller, QCom QCS615 Power Domain
  Controller, QCom QCS615 APSS, QCom QCS615 qfprom, QCom QCS8300
  remoteproc, Mediatek MT6328 PMIC, Allwinner A100 OPP, and NXP iMX35
  GPT

- Convert Altera socfpga-system, raspberrypi,bcm2835-power to DT
  schema

- Add Siflower vendor prefix

- Cleanup display, interrupt-controller, and UFS binding examples'
  indentation

- Document preferred line wrapping (the same as the rest of the kernel)

DT Core:
- Add warning when of_property_read_bool() is used on non-boolean
  properties

- Restore keeping bootloader DTB when booting with ACPI. Turns out some
  x86 platforms relied on that. Shrug.

- Fix of_find_node_opts_by_path() handling of alias+path+options

- Fix resource bounds checking for empty resources

- A bunch of small fixes/cleanups all over from Zijun Hu

- Cleanups in bin_attribute handling

----------------------------------------------------------------
Alexander Stein (1):
      dt-bindings: samsung,mipi-dsim: Add imx7d specific compatible

AngeloGioacchino Del Regno (1):
      dt-bindings: sram: qcom,imem: Document MSM8976

Chuanhong Guo (1):
      dt-bindings: vendor-prefixes: add Siflower

Cody Eksal (1):
      dt-bindings: opp: h6: Add A100 operating points

Dirk Behme (1):
      docs: dt: unittest: Correct SELFTEST to UNITTEST

Dmytro Maluka (1):
      of/fdt: Restore possibility to use both ACPI and FDT from bootloader

Fabio Estevam (2):
      dt-bindings: timer: fsl,imxgpt: Fix the fsl,imx7d-gpt fallback
      dt-bindings: timer: fsl,imxgpt: Document fsl,imx35-gpt

Huang Borong (1):
      dt-bindings: interrupt-controller: update imsic reg address to 0x24000000 in Example 1

Jingyi Wang (2):
      dt-bindings: remoteproc: qcom,sa8775p-pas: Document QCS8300 remoteproc
      dt-bindings: qcom,pdc: document QCS8300 Power Domain Controller

Karan Sanghavi (1):
      dt-bindings: power: Convert raspberrypi,bcm2835-power to Dt schema

Krzysztof Kozlowski (6):
      dt-bindings: interrupt-controller: arm,gic: Correct VGIC interrupt description
      dt-bindings: display: Correct indentation and style in DTS example
      dt-bindings: interrupt-controller: Correct indentation and style in DTS example
      dt-bindings: interrupt-controller: ti,omap4-wugen-mpu: Add file extension
      dt-bindings: ufs: Correct indentation and style in DTS example
      docs: dt-bindings: Document preferred line wrapping

Kyle Deng (1):
      dt-bindings: mailbox: qcom,apcs-kpss-global: Document the qcs615 APSS

Lijuan Gao (2):
      dt-bindings: nvmem: qfprom: Add compatible for QCS615
      dt-bindings: qcom,pdc: document QCS615 Power Domain Controller

Mao Jinlong (1):
      dt-bindings: arm: coresight: Update the pattern of ete node name

Melody Olvera (1):
      dt-bindings: interrupt-controller: qcom,pdc: Document SM8750 PDC

Niravkumar L Rabara (1):
      dt-bindings: soc: altera: convert socfpga-system.txt to yaml

Rayyan Ansari (1):
      dt-bindings: thermal: qcom-tsens: Document ipq6018 temperature sensor

Rob Herring (Arm) (3):
      dt-bindings: memory-controller: qca,ath79-ddr-controller: Drop consumer from example
      device property: Split property reading bool and presence test ops
      of: Warn when of_property_read_bool() is used on non-boolean properties

Sayali Lokhande (1):
      dt-bindings: ufs: qcom: Add UFS Host Controller for QCS615

Stephen Boyd (1):
      of: Hide of_default_bus_match_table[]

Thomas Weißschuh (3):
      of/fdt: Implement use BIN_ATTR_SIMPLE macro for fdt sysfs attribute
      of: Constify 'struct bin_attribute'
      of: address: Fix empty resource handling in __of_address_resource_bounds()

Varadarajan Narayanan (1):
      dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB DWC3 bindings

Yassine Oudjana (1):
      dt-bindings: mfd: mediatek: mt6397: Add bindings for MT6328

Zijun Hu (15):
      of/fdt: Dump __be32 array in CPU type order in of_dump_addr()
      of: Simplify API of_find_node_with_property() implementation
      of/irq: Correct element count for array @dummy_imask in API of_irq_parse_raw()
      of: unittest: Add a test case for of_find_node_opts_by_path() with alias+path+options
      of: Fix of_find_node_opts_by_path() handling of alias+path+options
      of: Correct child specifier used as input of the 2nd nexus node
      of: property: Avoiding using uninitialized variable @imaplen in parse_interrupt_map()
      of: Remove a duplicated code block
      of: reserved-memory: Fix using wrong number of cells to get property 'alignment'
      of: reserved-memory: Do not make kmemleak ignore freed address
      of: reserved-memory: Move an assignment to effective place in __reserved_mem_alloc_size()
      of/fdt: Check fdt_get_mem_rsv() error in early_init_fdt_scan_reserved_mem()
      of: Do not expose of_alias_scan() and correct its comments
      of: reserved-memory: Warn for missing static reserved memory regions
      of: Correct element count for two arrays in API of_parse_phandle_with_args_map()

 .../bindings/arm/altera/socfpga-system.txt         |  25 -----
 .../bindings/arm/arm,embedded-trace-extension.yaml |   6 +-
 .../bindings/display/amlogic,meson-dw-hdmi.yaml    |   8 +-
 .../display/bridge/fsl,imx8mp-hdmi-tx.yaml         |  32 +++---
 .../bindings/display/bridge/samsung,mipi-dsim.yaml |  76 ++++++-------
 .../bindings/display/mediatek/mediatek,aal.yaml    |  52 ++++-----
 .../bindings/display/msm/dsi-controller-main.yaml  | 118 ++++++++++-----------
 .../bindings/display/msm/dsi-phy-10nm.yaml         |  48 ++++-----
 .../bindings/display/msm/dsi-phy-14nm.yaml         |  34 +++---
 .../bindings/display/msm/dsi-phy-20nm.yaml         |  36 +++----
 .../bindings/display/msm/dsi-phy-28nm.yaml         |  34 +++---
 .../bindings/display/msm/dsi-phy-7nm.yaml          |  34 +++---
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    |   7 +-
 .../devicetree/bindings/display/renesas,cmm.yaml   |  12 +--
 .../devicetree/bindings/dts-coding-style.rst       |  16 ++-
 .../bindings/input/mediatek,pmic-keys.yaml         |   1 +
 .../bindings/interrupt-controller/arm,gic.yaml     |   4 +-
 .../interrupt-controller/aspeed,ast2400-vic.yaml   |  10 +-
 .../interrupt-controller/brcm,bcm7120-l2-intc.yaml |  30 +++---
 .../bindings/interrupt-controller/qcom,pdc.yaml    |   3 +
 .../interrupt-controller/riscv,imsics.yaml         |   2 +-
 .../{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt} |   0
 .../bindings/mailbox/qcom,apcs-kpss-global.yaml    |   1 +
 .../qca,ath79-ddr-controller.yaml                  |   7 --
 .../devicetree/bindings/mfd/mediatek,mt6397.yaml   |   2 +
 .../devicetree/bindings/nvmem/qcom,qfprom.yaml     |   1 +
 .../opp/allwinner,sun50i-h6-operating-points.yaml  |   1 +
 .../bindings/power/raspberrypi,bcm2835-power.yaml  |  42 ++++++++
 .../bindings/remoteproc/qcom,sa8775p-pas.yaml      |  44 +++++---
 .../bindings/soc/altera/altr,sys-mgr.yaml          |  51 +++++++++
 .../bindings/soc/bcm/raspberrypi,bcm2835-power.txt |  47 --------
 .../devicetree/bindings/sram/qcom,imem.yaml        |   1 +
 .../devicetree/bindings/thermal/qcom-tsens.yaml    |   1 +
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      |   3 +-
 .../devicetree/bindings/ufs/qcom,ufs.yaml          |   2 +
 .../devicetree/bindings/ufs/renesas,ufs.yaml       |  16 +--
 .../bindings/ufs/samsung,exynos-ufs.yaml           |  28 ++---
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 Documentation/devicetree/of_unittest.rst           |  12 +--
 .../translations/zh_CN/devicetree/of_unittest.rst  |   2 +-
 drivers/acpi/property.c                            |   1 +
 drivers/base/property.c                            |  38 +++++++
 drivers/base/swnode.c                              |   1 +
 drivers/of/address.c                               |  33 ++----
 drivers/of/base.c                                  |  25 ++---
 drivers/of/fdt.c                                   |  33 ++----
 drivers/of/fdt_address.c                           |  21 +---
 drivers/of/irq.c                                   |   2 +-
 drivers/of/kobj.c                                  |   4 +-
 drivers/of/of_private.h                            |  20 ++++
 drivers/of/of_reserved_mem.c                       |  15 ++-
 drivers/of/pdt.c                                   |   2 +
 drivers/of/platform.c                              |  23 ++--
 drivers/of/property.c                              |  35 +++++-
 drivers/of/unittest.c                              |   9 ++
 include/linux/fwnode.h                             |   3 +
 include/linux/of.h                                 |  30 ++----
 include/linux/of_platform.h                        |   2 -
 include/linux/property.h                           |  15 +--
 60 files changed, 630 insertions(+), 534 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
 rename Documentation/devicetree/bindings/interrupt-controller/{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt} (100%)
 create mode 100644 Documentation/devicetree/bindings/power/raspberrypi,bcm2835-power.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/raspberrypi,bcm2835-power.txt

