Return-Path: <devicetree+bounces-244092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA586CA0155
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 17:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A75D30213D6
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 16:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA84035E544;
	Wed,  3 Dec 2025 16:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SolF6are"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BCB35BDBF;
	Wed,  3 Dec 2025 16:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764780181; cv=none; b=NKBuXAYduGeJRV9K9eojGNIgv8daOETX8XESM9E6oQhvHkC/+f/G+3EikyaUYtWbDJr4KL2SZXgawLySLGA9AnbqDiBSUnNtVK0dbzVEnOGLmfbwEWygs2kMCnpduHS50F/nUkBkwN0j6frpPE793sNuTEQUKidR0V07GvOYgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764780181; c=relaxed/simple;
	bh=WG97AvXqyeUjtikJKSfwt8pit18AHvKYTv9jkqHU8ts=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=H6aDhhfgWtbj664bxc1LgXwZmcAiQf+eU2csuUYelR5CcwKcd0UOG8nWZVKALzmxCU+wC4SmWJSCl+ZtRfL2wNY84C66YLqyCFQVSVyJwIOaMS3oFeDV7ymt2i5XAvD8DNNMgh4Hle1qNj2gO9bDXLl14Xbmfx0b6faou8NsTMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SolF6are; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61691C116B1;
	Wed,  3 Dec 2025 16:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764780181;
	bh=WG97AvXqyeUjtikJKSfwt8pit18AHvKYTv9jkqHU8ts=;
	h=Date:From:To:Cc:Subject:From;
	b=SolF6are9aR4EJ0q6SOfRSrG0loUJZvWE/FaltOZHYijTutClKBctAcxMx4YT3vir
	 Qngz4qJwNvDJDyR7uiTTlCOH8QRp4kJZfslXuy59Br0bBUtpfvXqnxJgtL4CKPH405
	 CcBhJ7VO3aES5HA0fcD3Kfby4mk7YwUluB7FTh9NrBYg3dE5jUUUJ00VM/igYnBZUL
	 PQxJ4xVCygKb60TXNnXfC4ztMKx6WSEtcJKbOiaxHFlD/O3wYxWlCI7hTJXihfBIEd
	 a0A/pGbqxinFE1eT7e2a/JRC0wE+jyWhd16TMHjMnqtC1/qPKagUfL7v26v7+z7MK+
	 6ZjTgzhQSj15w==
Date: Wed, 3 Dec 2025 10:42:59 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree updates for v6.19
Message-ID: <20251203164259.GA3838993-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Linus,

Please pull DT updates for 6.19. It's all the usual stuff with the 
exception of a few driver updates across the tree to use a new DT helper 
function.

And please apply this patch[1] to fix my automated testing.

Rob

[1] https://lore.kernel.org/all/20251203152437.3751325-1-robh@kernel.org/


The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-6.19

for you to fetch changes up to 954c55c658e11c0cdc4cfa85968a0a5df975e26a:

  dt-bindings: kbuild: Skip validating empty examples (2025-12-03 09:36:43 -0600)

----------------------------------------------------------------
Devicetree updates for v6.19:

DT bindings:
- Convert lattice,ice40-fpga-mgr, apm,xgene-storm-dma, brcm,sr-thermal,
  amazon,al-thermal, brcm,ocotp, mt8173-mdp, Actions Owl SPS, Marvell
  AP80x System Controller, Marvell CP110 System Controller,
  cznic,moxtet, and apm,xgene-slimpro-mbox to DT schema format

- Add i.MX95 fsl,irqsteer, MT8365 Mali Bifrost GPU, Anvo ANV32C81W
  EEPROM, and Microchip pic64gx PLIC

- Add missing LGE, AMD Seattle, and APM X-Gene SoC platform compatibles

- Updates to brcm,bcm2836-l1-intc, brcm,bcm2835-hvs, and bcm2711-hdmi
  bindings to fix warnings on BCM2712 platforms

- Drop obsolete db8500-thermal.txt

- Treewide clean-up of extra blank lines and inconsistent quoting

- Ensure all .dtbo targets are applied to a base .dtb

- Speed up dt_binding_check by skipping running validation on empty
  examples

DT core:
- Add of_machine_device_match() and of_machine_get_match_data() helpers
  and convert users treewide

- Fix bounds checking of address properties in FDT code. Rework the code
  to have a single implementation of the bounds checks.

- Rework of_irq_init() to ignore any implicit interrupt-parent (i.e. in
  a parent node) on nodes without an interrupt. This matches the spec
  description and fixes some RISC-V platforms.

- Avoid a spurious message on overlay removal

- Skip DT kunit tests on RISCV+ACPI

----------------------------------------------------------------
Ariel D'Alessandro (1):
      dt-bindings: media: Convert MediaTek mt8173-mdp bindings to DT schema

Christophe JAILLET (1):
      of: overlay: Avoid spurious error messages in of_overlay_remove()

Dave Stevenson (3):
      dt-bindings: display: bcm2711-hdmi: Add interrupt details for BCM2712
      dt-bindings: display: Fix brcm,bcm2835-hvs bindings for BCM2712
      dt-bindings: interrupt-controller: brcm,bcm2836-l1-intc: Drop interrupt-controller requirement

David Heidelberg (1):
      docs: dt-bindings: Extend the ordering list with a blank newline before status

Erick Setubal Bacurau (1):
      dt-bindings: fix redundant quotes on fsl,imx6q-vdoa.yaml

Geert Uytterhoeven (2):
      of/irq: Ignore interrupt parent for nodes without interrupts
      of/irq: Handle explicit interrupt parent

Guenter Roeck (1):
      of: Skip devicetree kunit tests when RISCV+ACPI doesn't populate root node

Krzysztof Kozlowski (12):
      dt-bindings: Update Krzysztof Kozlowski's email
      of: Add wrappers to match root node with OF device ID tables
      cpufreq: dt-platdev: Simplify with of_machine_get_match_data()
      cpufreq: mediatek: Simplify with of_machine_get_match_data()
      cpufreq: sun50i: Simplify with of_machine_device_match()
      cpuidle: big_little: Simplify with of_machine_device_match()
      firmware: qcom: scm: Simplify with of_machine_device_match()
      irqchip/atmel-aic: Simplify with of_machine_get_match_data()
      platform: surface: Simplify with of_machine_get_match_data()
      powercap: dtpm: Simplify with of_machine_get_match_data()
      soc: qcom: ubwc: Simplify with of_machine_get_match_data()
      soc: tegra: Simplify with of_machine_device_match()

Louis-Alexis Eyraud (1):
      dt-bindings: gpu: mali-bifrost: Add compatible for MT8365 SoC

Marek Vasut (2):
      dt-bindings: interrupt-controller: fsl,irqsteer: Add i.MX95 support
      dt-bindings: eeprom: at25: Add Anvo ANV32C81W

Niravkumar L Rabara (1):
      MAINTAINERS: Change Altera socfpga-ecc-manager.yaml maintainer

Pierre-Henry Moussay (1):
      dt-bindings: interrupt-controller: sifive,plic: Add pic64gx compatibility

Rob Herring (Arm) (18):
      dt-bindings: mailbox: Convert apm,xgene-slimpro-mbox to DT schema
      dt-bindings: bus: Convert cznic,moxtet to DT schema
      dt-bindings: arm: Convert Marvell CP110 System Controller to DT schema
      dt-bindings: arm: Convert Marvell AP80x System Controller to DT schema
      dt-bindings: power: Convert Actions Owl SPS to DT schema
      dt-bindings: Fix inconsistent quoting
      dt-bindings: arm: Add missing APM X-Gene SoC platforms
      dt-bindings: arm: Add missing AMD Seattle SoC platforms
      dt-bindings: arm: Add missing LGE SoC platforms
      dt-bindings: nvmem: Convert brcm,ocotp to DT schema
      dt-bindings: Remove extra blank lines
      dt-bindings: thermal: Convert amazon,al-thermal to DT schema
      dt-bindings: thermal: Convert brcm,sr-thermal to DT schema
      dt-bindings: thermal: Drop db8500-thermal.txt
      dt-bindings: dma: Convert apm,xgene-storm-dma to DT schema
      kbuild: Ensure .dtbo targets are applied to a base .dtb
      dt-bindings: fpga: Convert lattice,ice40-fpga-mgr to DT schema
      dt-bindings: kbuild: Skip validating empty examples

Wolfram Sang (1):
      dt-bindings: bus: don't check node names

Yuntao Wang (9):
      of/address: Remove the incorrect and misleading comment
      of/fdt: Consolidate duplicate code into helper functions
      of/fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
      of/fdt: Fix the len check in early_init_dt_check_for_usable_mem_range()
      of/fdt: Fix incorrect use of dt_root_addr_cells in early_init_dt_check_kho()
      of/fdt: Simplify the logic of early_init_dt_scan_memory()
      of/reserved_mem: Simplify the logic of __reserved_mem_reserve_reg()
      of/reserved_mem: Simplify the logic of fdt_scan_reserved_mem_reg_nodes()
      of/reserved_mem: Simplify the logic of __reserved_mem_alloc_size()

 Documentation/devicetree/bindings/.yamllint        |   2 +-
 Documentation/devicetree/bindings/Makefile         |   3 +-
 .../bindings/arm/altera/socfpga-clk-manager.yaml   |  20 +--
 .../devicetree/bindings/arm/amd,seattle.yaml       |  24 +++
 Documentation/devicetree/bindings/arm/apm.yaml     |  28 +++
 Documentation/devicetree/bindings/arm/lge.yaml     |  28 +++
 .../arm/marvell/ap80x-system-controller.txt        | 146 ----------------
 .../arm/marvell/cp110-system-controller.txt        | 191 ---------------------
 Documentation/devicetree/bindings/arm/psci.yaml    |   1 -
 .../bindings/bus/allwinner,sun8i-a23-rsb.yaml      |   2 +-
 .../devicetree/bindings/bus/cznic,moxtet.yaml      |  94 ++++++++++
 .../bus/fsl,imx8qxp-pixel-link-msi-bus.yaml        |   2 +-
 Documentation/devicetree/bindings/bus/moxtet.txt   |  46 -----
 .../devicetree/bindings/bus/st,stm32-etzpc.yaml    |   2 +-
 .../bindings/bus/st,stm32mp25-rifsc.yaml           |   2 +-
 .../clock/allwinner,sun4i-a10-gates-clk.yaml       |   1 -
 .../bindings/clock/marvell,ap80x-clock.yaml        |  54 ++++++
 .../bindings/clock/marvell,cp110-clock.yaml        |  70 ++++++++
 .../bindings/clock/nvidia,tegra124-car.yaml        |   8 +-
 .../bindings/clock/nvidia,tegra20-car.yaml         |   6 +-
 .../devicetree/bindings/clock/qcom,rpmcc.yaml      |   2 +-
 .../bindings/clock/renesas,cpg-mssr.yaml           |   1 -
 .../bindings/clock/xlnx,clocking-wizard.yaml       |   1 -
 .../allwinner,sun4i-a10-display-frontend.yaml      |   1 -
 .../bindings/display/allwinner,sun6i-a31-drc.yaml  |   1 -
 .../display/allwinner,sun8i-a83t-dw-hdmi.yaml      |   1 -
 .../bindings/display/amlogic,meson-vpu.yaml        |   1 -
 .../bindings/display/brcm,bcm2711-hdmi.yaml        |  76 ++++++--
 .../bindings/display/brcm,bcm2835-hvs.yaml         |  88 ++++++++--
 .../bindings/display/bridge/adi,adv7511.yaml       |   1 -
 .../bindings/display/bridge/lvds-codec.yaml        |   1 -
 .../bindings/display/bridge/parade,ps8622.yaml     |   2 +-
 .../bindings/display/bridge/sil,sii8620.yaml       |   2 +-
 .../bindings/display/bridge/toshiba,tc358767.yaml  |   1 -
 .../bindings/display/ilitek,ili9486.yaml           |   1 -
 .../devicetree/bindings/display/msm/gpu.yaml       |   1 -
 .../bindings/display/msm/qcom,sm8750-mdss.yaml     |   2 +-
 .../bindings/display/panel/panel-timing.yaml       |   1 -
 .../bindings/display/panel/tpo,tpg110.yaml         |   1 -
 .../bindings/display/rockchip/rockchip,dw-dp.yaml  |   1 -
 .../bindings/display/simple-framebuffer.yaml       |   1 -
 .../bindings/dma/apm,xgene-storm-dma.yaml          |  59 +++++++
 .../devicetree/bindings/dma/apm-xgene-dma.txt      |  47 -----
 .../bindings/dma/snps,dma-spear1340.yaml           |   1 -
 .../devicetree/bindings/dma/stericsson,dma40.yaml  |   1 -
 .../bindings/dma/stm32/st,stm32-dma.yaml           |   1 -
 .../devicetree/bindings/dts-coding-style.rst       |   5 +-
 .../bindings/edac/altr,socfpga-ecc-manager.yaml    |   2 +-
 .../devicetree/bindings/edac/apm,xgene-edac.yaml   |   1 -
 Documentation/devicetree/bindings/eeprom/at25.yaml |   1 +
 .../bindings/firmware/qemu,fw-cfg-mmio.yaml        |   1 -
 .../devicetree/bindings/fpga/fpga-region.yaml      |   5 -
 .../bindings/fpga/lattice,ice40-fpga-mgr.yaml      |  59 +++++++
 .../bindings/fpga/lattice-ice40-fpga-mgr.txt       |  21 ---
 .../bindings/gpio/brcm,xgs-iproc-gpio.yaml         |   1 -
 .../bindings/gpio/fairchild,74hc595.yaml           |   1 -
 .../devicetree/bindings/gpio/gpio-mxs.yaml         |  13 +-
 .../devicetree/bindings/gpio/snps,dw-apb-gpio.yaml |   4 +-
 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |   1 +
 .../devicetree/bindings/hwmon/adi,ltc2947.yaml     |   1 -
 .../devicetree/bindings/hwmon/adi,max31827.yaml    |   1 -
 .../devicetree/bindings/hwmon/national,lm90.yaml   |   1 -
 .../devicetree/bindings/hwmon/ti,tmp513.yaml       |   1 -
 .../devicetree/bindings/hwmon/ti,tps23861.yaml     |   1 -
 .../devicetree/bindings/i2c/i2c-mux-gpmux.yaml     |   1 -
 .../devicetree/bindings/i2c/qcom,i2c-qup.yaml      |   2 +-
 .../bindings/i2c/realtek,rtl9301-i2c.yaml          |   1 -
 .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  |   2 -
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    |   1 -
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |   1 -
 .../devicetree/bindings/iio/adc/adi,ad7949.yaml    |   1 -
 .../devicetree/bindings/iio/adc/adi,ade9000.yaml   |   1 -
 .../bindings/iio/adc/cosmic,10001-adc.yaml         |   1 -
 .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  |   1 -
 .../bindings/iio/adc/x-powers,axp209-adc.yaml      |   1 -
 .../bindings/iio/afe/voltage-divider.yaml          |   1 -
 .../bindings/iio/frequency/adi,admv4420.yaml       |   1 -
 .../bindings/iio/pressure/murata,zpa2326.yaml      |   1 -
 .../bindings/iio/proximity/semtech,sx9324.yaml     |   1 -
 .../bindings/iio/temperature/adi,ltc2983.yaml      |  21 ++-
 .../devicetree/bindings/input/cypress,cyapa.yaml   |   2 +-
 .../devicetree/bindings/input/ti,drv266x.yaml      |   1 -
 .../bindings/input/touchscreen/st,stmfts.yaml      |   2 +-
 .../bindings/interconnect/qcom,msm8998-bwmon.yaml  |   2 +-
 .../bindings/interconnect/qcom,rpmh.yaml           |   1 -
 .../bindings/interrupt-controller/arm,gic-v3.yaml  |   1 -
 .../interrupt-controller/aspeed,ast2700-intc.yaml  |   1 -
 .../interrupt-controller/brcm,bcm2836-l1-intc.yaml |   2 -
 .../interrupt-controller/fsl,irqsteer.yaml         |   2 +
 .../interrupt-controller/fsl,vf610-mscm-ir.yaml    |   1 -
 .../interrupt-controller/loongson,liointc.yaml     |   1 -
 .../interrupt-controller/mediatek,mtk-cirq.yaml    |   1 -
 .../mscc,ocelot-icpu-intr.yaml                     |   1 -
 .../interrupt-controller/sifive,plic-1.0.0.yaml    |   1 +
 .../interrupt-controller/ti,omap4-wugen-mpu.yaml   |   2 +-
 .../devicetree/bindings/iommu/arm,smmu.yaml        |   4 -
 .../devicetree/bindings/leds/qcom,pm8058-led.yaml  |   2 +-
 .../bindings/mailbox/apm,xgene-slimpro-mbox.yaml   |  62 +++++++
 .../devicetree/bindings/mailbox/arm,mhu.yaml       |   1 -
 .../devicetree/bindings/mailbox/arm,mhuv2.yaml     |   1 -
 .../devicetree/bindings/mailbox/mtk,adsp-mbox.yaml |   1 -
 .../bindings/mailbox/qcom,apcs-kpss-global.yaml    |  16 +-
 .../bindings/mailbox/xgene-slimpro-mailbox.txt     |  35 ----
 .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml  |   2 +-
 .../devicetree/bindings/media/amphion,vpu.yaml     |   1 -
 .../devicetree/bindings/media/fsl,imx6q-vdoa.yaml  |   2 +-
 .../devicetree/bindings/media/i2c/adi,adv7604.yaml |   2 -
 .../bindings/media/i2c/samsung,s5k5baf.yaml        |   2 +-
 .../bindings/media/i2c/samsung,s5k6a3.yaml         |   2 +-
 .../bindings/media/i2c/techwell,tw9900.yaml        |   1 -
 .../bindings/media/mediatek,mt8173-mdp.yaml        | 169 ++++++++++++++++++
 .../devicetree/bindings/media/mediatek-mdp.txt     |  96 -----------
 .../devicetree/bindings/media/nxp,imx8-jpeg.yaml   |   1 -
 .../bindings/media/qcom,sc8280xp-camss.yaml        |   1 -
 .../bindings/media/qcom,sm8750-iris.yaml           |   2 +-
 .../bindings/media/samsung,exynos4210-csis.yaml    |   2 +-
 .../bindings/media/samsung,exynos4210-fimc.yaml    |   2 +-
 .../bindings/media/samsung,exynos4212-fimc-is.yaml |   3 +-
 .../media/samsung,exynos4212-fimc-lite.yaml        |   2 +-
 .../devicetree/bindings/media/samsung,fimc.yaml    |   2 +-
 .../devicetree/bindings/media/samsung,s5c73m3.yaml |   2 +-
 .../bindings/media/samsung,s5pv210-jpeg.yaml       |   1 -
 .../devicetree/bindings/media/st,stm32-dma2d.yaml  |   1 -
 .../bindings/media/video-interface-devices.yaml    |   4 -
 .../qcom,ebi2-peripheral-props.yaml                |   1 -
 .../devicetree/bindings/mfd/aspeed-lpc.yaml        |  16 +-
 .../devicetree/bindings/mfd/stericsson,ab8500.yaml |   1 -
 Documentation/devicetree/bindings/mfd/ti,twl.yaml  |   4 +-
 .../bindings/mtd/amlogic,meson-nand.yaml           |   1 -
 .../bindings/mtd/marvell,nand-controller.yaml      |   1 -
 .../devicetree/bindings/mux/mux-controller.yaml    |   1 -
 .../bindings/net/allwinner,sun8i-a83t-emac.yaml    |   2 -
 .../devicetree/bindings/net/brcm,bcmgenet.yaml     |   1 -
 .../bindings/net/brcm,mdio-mux-iproc.yaml          |   1 -
 .../bindings/net/cortina,gemini-ethernet.yaml      |   1 -
 .../devicetree/bindings/net/ethernet-switch.yaml   |  16 +-
 .../devicetree/bindings/net/fsl,gianfar.yaml       |   2 -
 .../bindings/net/mdio-mux-multiplexer.yaml         |   1 -
 .../devicetree/bindings/net/qcom,ipa.yaml          |   1 -
 .../devicetree/bindings/net/ti,cpsw-switch.yaml    |   1 -
 .../bindings/net/wireless/ti,wlcore.yaml           |   1 -
 .../devicetree/bindings/nvmem/brcm,ocotp.txt       |  17 --
 .../devicetree/bindings/nvmem/brcm,ocotp.yaml      |  39 +++++
 .../bindings/pci/altr,pcie-root-port.yaml          |   1 -
 .../devicetree/bindings/pci/loongson.yaml          |   1 -
 .../bindings/pci/plda,xpressrich3-axi-common.yaml  |   2 +-
 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |   1 -
 .../bindings/pci/starfive,jh7110-pcie.yaml         |   1 -
 .../devicetree/bindings/pci/versatile.yaml         |   1 -
 .../bindings/phy/motorola,cpcap-usb-phy.yaml       |   4 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   1 -
 .../bindings/pinctrl/brcm,bcm21664-pinctrl.yaml    |   1 -
 .../bindings/pinctrl/fsl,imx9-pinctrl.yaml         |   1 -
 .../bindings/pinctrl/marvell,ap806-pinctrl.yaml    |  61 +++++++
 .../pinctrl/marvell,armada-7k-pinctrl.yaml         |  72 ++++++++
 .../bindings/pinctrl/microchip,sparx5-sgpio.yaml   |  12 +-
 .../bindings/pinctrl/qcom,ipq5018-tlmm.yaml        |   2 +-
 .../bindings/pinctrl/qcom,ipq5332-tlmm.yaml        |   2 +-
 .../bindings/pinctrl/qcom,ipq8074-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,ipq9574-tlmm.yaml        |   2 +-
 .../bindings/pinctrl/qcom,lpass-lpi-common.yaml    |   2 +-
 .../bindings/pinctrl/qcom,msm8660-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8916-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8960-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8974-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8976-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8994-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8996-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,msm8998-pinctrl.yaml     |   2 +-
 .../bindings/pinctrl/qcom,pmic-gpio.yaml           |  10 +-
 .../devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml |   6 +-
 .../bindings/pinctrl/qcom,qcs404-pinctrl.yaml      |   3 +-
 .../bindings/pinctrl/qcom,sc7180-pinctrl.yaml      |   2 +-
 .../bindings/pinctrl/qcom,sdm630-pinctrl.yaml      |   2 +-
 .../bindings/pinctrl/qcom,sdm845-pinctrl.yaml      |   2 +-
 .../pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml     |   1 -
 .../bindings/pinctrl/qcom,sm6125-tlmm.yaml         |   1 -
 .../bindings/pinctrl/qcom,sm8150-pinctrl.yaml      |   2 +-
 .../pinctrl/qcom,sm8350-lpass-lpi-pinctrl.yaml     |   2 +-
 .../pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml     |   2 +-
 .../pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml     |   2 +-
 .../devicetree/bindings/pinctrl/renesas,pfc.yaml   |   2 +-
 .../bindings/pinctrl/renesas,rza1-ports.yaml       |   5 +-
 .../bindings/pinctrl/renesas,rzg2l-pinctrl.yaml    |   2 +-
 .../bindings/pinctrl/renesas,rzv2m-pinctrl.yaml    |   2 +-
 .../bindings/pinctrl/starfive,jh7100-pinctrl.yaml  |   1 -
 .../devicetree/bindings/power/actions,owl-sps.txt  |  21 ---
 .../bindings/power/actions,s500-sps.yaml           |  39 +++++
 .../bindings/power/renesas,sysc-rmobile.yaml       |   4 +-
 .../bindings/power/supply/mt6360_charger.yaml      |   1 -
 .../power/supply/stericsson,ab8500-charger.yaml    |   1 -
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml      |   1 -
 .../bindings/regulator/qcom,rpmh-regulator.yaml    |   2 +-
 .../regulator/richtek,rt6245-regulator.yaml        |   1 -
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       |   2 -
 .../devicetree/bindings/reset/ti,sci-reset.yaml    |   1 -
 .../bindings/rng/inside-secure,safexcel-eip76.yaml |   2 -
 .../devicetree/bindings/serial/qcom,msm-uart.yaml  |   2 +-
 .../bindings/serial/qcom,msm-uartdm.yaml           |   2 +-
 .../devicetree/bindings/slimbus/qcom,slim-ngd.yaml |   2 +-
 .../bindings/soc/fsl/cpm_qe/fsl,qe-muram.yaml      |   1 -
 .../bindings/soc/mediatek/mediatek,mutex.yaml      |   1 -
 .../soc/microchip/atmel,at91rm9200-tcb.yaml        |   9 +-
 .../devicetree/bindings/soc/qcom/qcom,gsbi.yaml    |   2 +-
 .../devicetree/bindings/soc/qcom/qcom,smd.yaml     |   2 +-
 .../devicetree/bindings/soc/qcom/qcom,smp2p.yaml   |   2 +-
 .../devicetree/bindings/soc/qcom/qcom,smsm.yaml    |   2 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml      |   1 -
 .../bindings/soc/tegra/nvidia,tegra20-pmc.yaml     |  12 +-
 .../devicetree/bindings/soc/ti/ti,pruss.yaml       |   3 -
 .../devicetree/bindings/sound/adi,adau1372.yaml    |   1 -
 .../devicetree/bindings/sound/adi,adau7002.yaml    |   2 +-
 .../devicetree/bindings/sound/adi,adau7118.yaml    |   1 -
 .../devicetree/bindings/sound/maxim,max98090.yaml  |   2 +-
 .../devicetree/bindings/sound/maxim,max98095.yaml  |   2 +-
 .../devicetree/bindings/sound/maxim,max98504.yaml  |   2 +-
 .../bindings/sound/qcom,q6adm-routing.yaml         |   2 +-
 .../devicetree/bindings/sound/qcom,q6adm.yaml      |   2 +-
 .../devicetree/bindings/sound/qcom,q6afe.yaml      |   2 +-
 .../bindings/sound/qcom,q6apm-lpass-dais.yaml      |   2 +-
 .../devicetree/bindings/sound/qcom,q6apm.yaml      |   2 +-
 .../devicetree/bindings/sound/qcom,q6asm-dais.yaml |   2 +-
 .../devicetree/bindings/sound/qcom,q6asm.yaml      |   2 +-
 .../devicetree/bindings/sound/qcom,q6core.yaml     |   2 +-
 .../devicetree/bindings/sound/qcom,q6prm.yaml      |   2 +-
 .../devicetree/bindings/sound/qcom,wsa8840.yaml    |   2 +-
 .../bindings/sound/rockchip,i2s-tdm.yaml           |   1 -
 .../bindings/sound/rockchip,rk3328-codec.yaml      |   2 +-
 .../devicetree/bindings/sound/samsung,tm2.yaml     |   1 -
 .../bindings/sound/ti,tlv320dac3100.yaml           |   1 -
 .../devicetree/bindings/sound/wlf,wm8903.yaml      |   1 -
 .../devicetree/bindings/sound/wlf,wm8994.yaml      |   2 +-
 .../bindings/spi/qcom,spi-geni-qcom.yaml           |   2 +-
 .../devicetree/bindings/spi/qcom,spi-qup.yaml      |   2 +-
 .../bindings/thermal/amazon,al-thermal.txt         |  33 ----
 .../bindings/thermal/amazon,al-thermal.yaml        |  50 ++++++
 .../bindings/thermal/brcm,sr-thermal.txt           | 105 -----------
 .../bindings/thermal/brcm,sr-thermal.yaml          | 121 +++++++++++++
 .../devicetree/bindings/thermal/db8500-thermal.txt |  44 -----
 .../bindings/timer/nvidia,tegra-timer.yaml         |   1 -
 .../bindings/timer/nvidia,tegra186-timer.yaml      |   1 -
 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   |   1 -
 .../bindings/watchdog/qcom,pm8916-wdt.yaml         |   2 +-
 MAINTAINERS                                        |   8 +-
 drivers/cpufreq/cpufreq-dt-platdev.c               |  15 +-
 drivers/cpufreq/mediatek-cpufreq.c                 |  12 +-
 drivers/cpufreq/sun50i-cpufreq-nvmem.c             |  11 +-
 drivers/cpuidle/cpuidle-big_little.c               |  11 +-
 drivers/firmware/qcom/qcom_scm.c                   |  17 +-
 drivers/irqchip/irq-atmel-aic-common.c             |  15 +-
 drivers/of/address.c                               |   4 -
 drivers/of/base.c                                  |  47 +++++
 drivers/of/fdt.c                                   | 101 +++++++----
 drivers/of/irq.c                                   |   4 +-
 drivers/of/of_kunit_helpers.c                      |   5 +-
 drivers/of/of_reserved_mem.c                       |  69 +++-----
 drivers/of/overlay.c                               |   3 +
 .../platform/surface/surface_aggregator_registry.c |  13 +-
 drivers/powercap/dtpm.c                            |  16 +-
 drivers/soc/qcom/ubwc_config.c                     |  14 +-
 drivers/soc/tegra/common.c                         |  12 +-
 include/linux/of.h                                 |  13 ++
 include/linux/of_fdt.h                             |   9 +
 scripts/Makefile.dtbs                              |   9 +
 264 files changed, 1544 insertions(+), 1347 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/amd,seattle.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/apm.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/lge.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
 create mode 100644 Documentation/devicetree/bindings/bus/cznic,moxtet.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/moxtet.txt
 create mode 100644 Documentation/devicetree/bindings/clock/marvell,ap80x-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/marvell,cp110-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/dma/apm,xgene-storm-dma.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/apm-xgene-dma.txt
 create mode 100644 Documentation/devicetree/bindings/fpga/lattice,ice40-fpga-mgr.yaml
 delete mode 100644 Documentation/devicetree/bindings/fpga/lattice-ice40-fpga-mgr.txt
 create mode 100644 Documentation/devicetree/bindings/mailbox/apm,xgene-slimpro-mbox.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/xgene-slimpro-mailbox.txt
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8173-mdp.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/mediatek-mdp.txt
 delete mode 100644 Documentation/devicetree/bindings/nvmem/brcm,ocotp.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/brcm,ocotp.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,ap806-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,armada-7k-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/power/actions,owl-sps.txt
 create mode 100644 Documentation/devicetree/bindings/power/actions,s500-sps.yaml
 delete mode 100644 Documentation/devicetree/bindings/thermal/amazon,al-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/amazon,al-thermal.yaml
 delete mode 100644 Documentation/devicetree/bindings/thermal/brcm,sr-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,sr-thermal.yaml
 delete mode 100644 Documentation/devicetree/bindings/thermal/db8500-thermal.txt

