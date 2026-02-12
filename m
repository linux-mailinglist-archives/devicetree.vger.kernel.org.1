Return-Path: <devicetree+bounces-264884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKhcMaUvjWk/zwAAu9opvQ
	(envelope-from <devicetree+bounces-264884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:40:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC07D129090
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF099301C652
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 01:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862C11D61BC;
	Thu, 12 Feb 2026 01:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaPy2VoV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6345A42049;
	Thu, 12 Feb 2026 01:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860442; cv=none; b=tuFZKWdXnzqMKqYRpNacVoIO7dvEBz0NWiQDhXUmspyLc60+CD/M2lKJUUwWXpjg045h0Hs22vzsnIZvrmQYP1UnDTvE1zbmR2uD4cFVF4h769rg7u1p3cC0SrocNLUIO4RW0Z86W0EhBGwkZbXlZ98tFsXm8fGsaSzJtk4JsVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860442; c=relaxed/simple;
	bh=BYTURLlvWnzIlcy/yxaJV/33CKLNuHgH44otwCfCxVo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=egOn86awFv3r4hFgciOrjwgxHFDfvodNK7BH4wCrvEX3VFWV2XNXUbp8mvEu8GeIrqEHpDkghO0MAxxdDx2mxZdza99slJZD0+QmpOIU7ysY4c+6f51htij/QZalwE7w97Qcjodvbg8hvcAlOYOJImWmHU9F/7AzO4xV+tBiQ04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaPy2VoV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB775C4CEF7;
	Thu, 12 Feb 2026 01:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860442;
	bh=BYTURLlvWnzIlcy/yxaJV/33CKLNuHgH44otwCfCxVo=;
	h=Date:From:To:Cc:Subject:From;
	b=MaPy2VoV9Bv3BV9zs442KWvpvNTrdrCTc/LubPIh6fZoyjTeXwtTiForfOxEQinmA
	 1L1apc6U/3Z3zYpIAcEfEOgOrIkyz9Nh/d33dZbu1+hp6Kjdh8WkqQVy7QvJbJ9LFb
	 1/NksE/K+EUXnvelXhpOWFf3RK/llmfehGvQDdfVOypnkwg6fSW0lK4JY0MDXTjMe7
	 vsUGa8U2JWkSzOEFJ+iZsIwIPGjZIfiCU06x9iw0P/0JNeR++WxgLxeQCLij5hIEe0
	 fZ4GxHIo3cGyB7Z4yHT2965s03ero0f/S4CcYh3D4tNxmPhHa8FWUxDcZgmSXFuGWf
	 ehz+yPZJ0CPnQ==
Date: Wed, 11 Feb 2026 19:40:40 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree updates for v7.0
Message-ID: <20260212014040.GA120198-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264884-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DC07D129090
X-Rspamd-Action: no action

Linus,

Please pull DT updates for v7.0.

Rob


The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-for-7.0

for you to fetch changes up to a16f91f80735e653b88370b840d5c771f2c175c5:

  dt-bindings: interrupt-controller: Add compatiblie string fsl,imx(1|25|27|31|35)-avic (2026-02-10 20:58:26 -0600)

----------------------------------------------------------------
Devicetree updates for v7.0:

DT core:
- Sync dtc/libfdt with upstream v1.7.2-62-ga26ef6400bd8

- Add a for_each_compatible_node_scoped() loop and convert users in
  cpufreq, dmaengine, clk, cdx, powerpc and Arm

- Simplify of/platform.c with scoped loop helpers

- Add fw_devlink tracking for "mmc-pwrseq"

- Optimize fw_devlink callback code size for pinctrl-N properties

- Replace strcmp_suffix() with strends()

DT bindings:
- Support building single binding targets

- Convert google,goldfish-fb, cznic,turris-mox-rwtm, ti,prm-inst

- Add bindings for Freescale AVIC, Realtek RTD1xxx system controllers,
  Microchip 25AA010A EEPROM, OnSemi FIN3385, IEI WT61P803 PUZZLE, Delta
  Electronics DPS-800-AB power supply, Infineon IR35221 Digital
  Multi-phase Controller, Infineon PXE1610 Digital Dual Output 6+1
  VR12.5 & VR13 CPU Controller, socionext,uniphier-smpctrl, and
  xlnx,zynqmp-firmware

- Lots of trivial binding fixes to address warnings in DTS files. These
  are mostly for arm64 platforms which is getting closer to be warning
  free. Some public shaming has helped.

- Fix I2C bus node names in examples

- Drop obsolete brcm,vulcan-soc binding

- Drop unreferenced binding headers

----------------------------------------------------------------
Andreas Kemnade (1):
      dt-bindings: omap: ti,prm-inst: Convert to DT schema

Andrew Jeffery (2):
      dt-bindings: bus: aspeed: Require syscon for AST2600 AHB controller
      dt-bindings: crypto: Document aspeed,ahbc property for Aspeed ACRY

AngeloGioacchino Del Regno (2):
      dt-bindings: crypto: inside-secure,safexcel: Add SoC compatibles
      dt-bindings: crypto: inside-secure,safexcel: Mandate only ring IRQs

Bartosz Golaszewski (1):
      of: replace strcmp_suffix() with strends()

Binbin Zhou (3):
      dt-bindings: interrupt-controller: loongson,liointc: Document address-cells
      dt-bindings: interrupt-controller: loongson,eiointc: Document address-cells
      dt-bindings: interrupt-controller: loongson,pch-pic: Document address-cells

Dominik Haller (1):
      dt-bindings: display: bridge: lt8912b: Drop reset gpio requirement

Francesco Valla (1):
      of: property: fw_devlink: Add support for "mmc-pwrseq"

Frank Li (2):
      dt-bindings: soc: imx: add fsl,aips and fsl,emi compatible strings
      dt-bindings: interrupt-controller: Add compatiblie string fsl,imx(1|25|27|31|35)-avic

Geert Uytterhoeven (1):
      dt-bindings: display: bridge: nxp,tda998x: Add missing clocks

Gregory CLEMENT (1):
      of: reserved_mem: Fix placement of __free() annotation

Krzysztof Kozlowski (16):
      dt-bindings: mediatek: Drop inactive MandyJH Liu
      of/platform: Simplify with scoped for each OF child loop
      docs: dt: submitting-patches: Document prefixes for SCSI and UFS
      dt-bindings: Fix I2C bus node names in examples
      dt-bindings: mediatek: Replace Tinghan Shen in maintainers
      of: Add for_each_compatible_node_scoped() helper
      ARM: at91: Simplify with scoped for each OF child loop
      ARM: exynos: Simplify with scoped for each OF child loop
      powerpc/fsp2: Simplify with scoped for each OF child loop
      powerpc/wii: Simplify with scoped for each OF child loop
      cdx: Simplify with scoped for each OF child loop
      cdx: Use mutex guard to simplify error handling
      clk: imx: imx27: Simplify with scoped for each OF child loop
      clk: imx: imx31: Simplify with scoped for each OF child loop
      dmaengine: fsl_raid: Simplify with scoped for each OF child loop
      cpufreq: s5pv210: Simplify with scoped for each OF child loop

Kuan-Wei Chiu (1):
      dt-bindings: display: google,goldfish-fb: Convert to DT schema

Luka Kovacic (1):
      dt-bindings: Add IEI vendor prefix and IEI WT61P803 PUZZLE driver bindings

Marek Vasut (4):
      dt-bindings: display: bridge: ldb: Add check for reg and reg-names
      dt-bindings: display: bridge: tc358867: mark port 0 and 1 configuration as valid
      dt-bindings: eeprom: at25: Document Microchip 25AA010A
      dt-bindings: display/lvds-codec: Document OnSemi FIN3385

Nauman Sabir (1):
      dt-bindings: display: mediatek: Fix typo 'hardwares' to 'hardware'

Peng Fan (1):
      dt-bindings: firmware: fsl,scu: Mark multi-channel MU layouts as deprecated

Rasmus Villemoes (1):
      of: property: stop creating callback for each pinctrl-N property

Rob Herring (Arm) (17):
      dt-bindings: kbuild: Support single binding targets
      MAINTAINERS: Add Makefile.dtb* to DT maintainers
      dt-bindings: arm,vexpress-juno: Allow interrupt-map properties in bus node
      dt-bindings: arm: vexpress-config: Update clock and regulator node names
      dt-bindings: bus: stm32mp25-rifsc: Allow 2 size cells
      dt-bindings: Remove unused includes
      dt-bindings: trivial-devices: Add socionext,uniphier-smpctrl
      dt-bindings: firmware: Convert cznic,turris-mox-rwtm to DT schema
      dt-bindings: raspberrypi,bcm2835-firmware: Add 'power' and gpio-hog nodes
      dt-bindings: net: brcm,amac: Allow "dma-coherent" property
      dt-bindings: arm: Drop obsolete brcm,vulcan-soc binding
      dt-bindings: reset: syscon-reboot: Allow both 'reg' and 'offset'
      dt-bindings: power: syscon-poweroff: Allow "reg" property
      dt-bindings: trivial-devices: Add some more undocumented devices
      dt-bindings: mfd: Add Realtek RTD1xxx system controllers
      scripts/dtc: Update to upstream version v1.7.2-62-ga26ef6400bd8
      dt-bindings: Fix emails with spaces or missing brackets

Ronak Jain (2):
      dt-bindings: firmware: xilinx: Add xlnx,zynqmp-firmware compatible
      dt-bindings: firmware: xilinx: Add conditional pinctrl schema

Tuo Li (1):
      of: unittest: fix possible null-pointer dereferences in of_unittest_property_copy()

 .clang-format                                      |   1 +
 Documentation/devicetree/bindings/Makefile         |   6 +-
 .../devicetree/bindings/arm/arm,vexpress-juno.yaml |   6 +
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml          |  24 --
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml      |   8 +
 .../devicetree/bindings/arm/omap/prm-inst.txt      |  31 ---
 .../bindings/arm/ti/ti,omap-prm-inst.yaml          |  55 ++++
 .../devicetree/bindings/arm/vexpress-config.yaml   |   6 +-
 .../bindings/bus/aspeed,ast2600-ahbc.yaml          |   8 +-
 .../devicetree/bindings/bus/fsl,spba-bus.yaml      |  14 +-
 .../bindings/bus/st,stm32mp25-rifsc.yaml           |   2 +-
 .../bindings/crypto/aspeed,ast2600-acry.yaml       |   7 +
 .../bindings/crypto/inside-secure,safexcel.yaml    |  22 ++
 .../bindings/display/bridge/fsl,ldb.yaml           |  10 +
 .../bindings/display/bridge/lontium,lt8912b.yaml   |   1 -
 .../bindings/display/bridge/lvds-codec.yaml        |   1 +
 .../bindings/display/bridge/nxp,tda998x.yaml       |   3 +
 .../bindings/display/bridge/toshiba,tc358767.yaml  |   2 +-
 .../bindings/display/google,goldfish-fb.txt        |  17 --
 .../bindings/display/google,goldfish-fb.yaml       |  38 +++
 .../bindings/display/mediatek/mediatek,dp.yaml     |   2 +-
 .../bindings/dsp/mediatek,mt8186-dsp.yaml          |   2 +-
 Documentation/devicetree/bindings/eeprom/at25.yaml |   1 +
 .../embedded-controller/lenovo,yoga-c630-ec.yaml   |   2 +-
 .../bindings/firmware/cznic,turris-mox-rwtm.txt    |  19 --
 .../bindings/firmware/cznic,turris-mox-rwtm.yaml   |  40 +++
 .../devicetree/bindings/firmware/fsl,scu.yaml      |  20 +-
 .../firmware/xilinx/xlnx,zynqmp-firmware.yaml      |  21 +-
 .../bindings/hwmon/iei,wt61p803-puzzle-hwmon.yaml  |  59 ++++
 .../devicetree/bindings/hwmon/sensirion,shtc1.yaml |   2 +-
 .../devicetree/bindings/input/syna,rmi4.yaml       |   2 +-
 .../bindings/interrupt-controller/fsl,tzic.yaml    |   8 +
 .../interrupt-controller/loongson,eiointc.yaml     |   3 +
 .../interrupt-controller/loongson,liointc.yaml     |   3 +
 .../interrupt-controller/loongson,pch-pic.yaml     |   3 +
 .../bindings/leds/iei,wt61p803-puzzle-leds.yaml    |  41 +++
 .../bindings/media/i2c/onnn,mt9m114.yaml           |   2 +-
 .../bindings/media/samsung,exynos5250-gsc.yaml     |   2 +-
 .../bindings/mfd/iei,wt61p803-puzzle.yaml          |  80 ++++++
 .../bindings/mfd/mediatek,mt8195-scpsys.yaml       |   3 +-
 .../devicetree/bindings/mfd/realtek,rtd1xxx.yaml   |  69 +++++
 .../devicetree/bindings/net/brcm,amac.yaml         |   2 +
 .../devicetree/bindings/pci/mbvl,gpex40-pcie.yaml  |   2 +-
 .../bindings/power/mediatek,power-controller.yaml  |   2 +-
 .../bindings/power/reset/syscon-poweroff.yaml      |   8 +-
 .../bindings/power/reset/syscon-reboot.yaml        |   2 +-
 .../devicetree/bindings/remoteproc/mtk,scp.yaml    |   2 +-
 .../devicetree/bindings/submitting-patches.rst     |   4 +-
 .../devicetree/bindings/trivial-devices.yaml       |   8 +
 .../devicetree/bindings/usb/ite,it5205.yaml        |   2 +-
 .../devicetree/bindings/writing-schema.rst         |  12 +-
 MAINTAINERS                                        |  10 +-
 Makefile                                           |  14 +-
 arch/arm/mach-at91/pm.c                            |   7 +-
 arch/arm/mach-exynos/exynos.c                      |   8 +-
 arch/powerpc/platforms/44x/fsp2.c                  |   5 +-
 arch/powerpc/platforms/embedded6xx/hlwd-pic.c      |   4 +-
 drivers/cdx/cdx.c                                  |  15 +-
 drivers/clk/imx/clk-imx27.c                        |   7 +-
 drivers/clk/imx/clk-imx31.c                        |   7 +-
 drivers/cpufreq/s5pv210-cpufreq.c                  |  10 +-
 drivers/dma/fsl_raid.c                             |   4 +-
 drivers/of/of_reserved_mem.c                       |   3 +-
 drivers/of/platform.c                              |  15 +-
 drivers/of/property.c                              |  49 ++--
 drivers/of/unittest.c                              |   6 +-
 include/dt-bindings/clock/oxsemi,ox810se.h         |  19 --
 include/dt-bindings/clock/oxsemi,ox820.h           |  29 --
 include/dt-bindings/clock/qcom,mss-sc7180.h        |  12 -
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 --------
 include/dt-bindings/clock/xlnx-zynqmp-clk.h        | 133 ---------
 include/dt-bindings/dma/jz4775-dma.h               |  44 ---
 include/dt-bindings/dma/x2000-dma.h                |  54 ----
 include/dt-bindings/gce/mt6779-gce.h               | 222 ---------------
 include/dt-bindings/memory/mt6779-larb-port.h      | 206 --------------
 include/dt-bindings/mux/ti-serdes.h                | 190 -------------
 include/dt-bindings/pinctrl/mt6397-pinfunc.h       | 257 -----------------
 include/dt-bindings/reset/bcm6318-reset.h          |  20 --
 include/dt-bindings/reset/imx8ulp-pcc-reset.h      |  59 ----
 include/dt-bindings/reset/oxsemi,ox810se.h         |  42 ---
 include/dt-bindings/reset/oxsemi,ox820.h           |  42 ---
 include/dt-bindings/sound/audio-jack-events.h      |  10 -
 include/linux/of.h                                 |   7 +
 scripts/Makefile.dtbs                              |   1 -
 scripts/dtc/checks.c                               |  42 +--
 scripts/dtc/dt-extract-compatibles                 |   1 +
 scripts/dtc/dtc.c                                  |   5 +
 scripts/dtc/dtc.h                                  |   6 +
 scripts/dtc/flattree.c                             |   6 +-
 scripts/dtc/libfdt/fdt_overlay.c                   |   3 +-
 scripts/dtc/libfdt/fdt_ro.c                        |   4 +-
 scripts/dtc/libfdt/libfdt.h                        | 214 ++++++++++++++
 scripts/dtc/libfdt/libfdt_env.h                    |  27 --
 scripts/dtc/libfdt/libfdt_internal.h               |  14 +-
 scripts/dtc/livetree.c                             | 309 ++++++++++++++++++---
 scripts/dtc/srcpos.c                               |  22 +-
 scripts/dtc/treesource.c                           | 114 +++++---
 scripts/dtc/version_gen.h                          |   2 +-
 98 files changed, 1255 insertions(+), 1838 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
 create mode 100644 Documentation/devicetree/bindings/arm/ti/ti,omap-prm-inst.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.txt
 create mode 100644 Documentation/devicetree/bindings/display/google,goldfish-fb.yaml
 delete mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.yaml
 create mode 100644 Documentation/devicetree/bindings/hwmon/iei,wt61p803-puzzle-hwmon.yaml
 create mode 100644 Documentation/devicetree/bindings/leds/iei,wt61p803-puzzle-leds.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/iei,wt61p803-puzzle.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/realtek,rtd1xxx.yaml
 delete mode 100644 include/dt-bindings/clock/oxsemi,ox810se.h
 delete mode 100644 include/dt-bindings/clock/oxsemi,ox820.h
 delete mode 100644 include/dt-bindings/clock/qcom,mss-sc7180.h
 delete mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h
 delete mode 100644 include/dt-bindings/clock/xlnx-zynqmp-clk.h
 delete mode 100644 include/dt-bindings/dma/jz4775-dma.h
 delete mode 100644 include/dt-bindings/dma/x2000-dma.h
 delete mode 100644 include/dt-bindings/gce/mt6779-gce.h
 delete mode 100644 include/dt-bindings/memory/mt6779-larb-port.h
 delete mode 100644 include/dt-bindings/mux/ti-serdes.h
 delete mode 100644 include/dt-bindings/pinctrl/mt6397-pinfunc.h
 delete mode 100644 include/dt-bindings/reset/bcm6318-reset.h
 delete mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
 delete mode 100644 include/dt-bindings/reset/oxsemi,ox810se.h
 delete mode 100644 include/dt-bindings/reset/oxsemi,ox820.h
 delete mode 100644 include/dt-bindings/sound/audio-jack-events.h

