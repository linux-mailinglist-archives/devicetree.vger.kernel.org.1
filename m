Return-Path: <devicetree+bounces-109741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBFE997CF3
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:16:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 737D91F240A9
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 06:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED101A00E2;
	Thu, 10 Oct 2024 06:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="IaQ/+rik"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E061311AC;
	Thu, 10 Oct 2024 06:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728540986; cv=none; b=n/dFXetVjGByBn9gu9y84hxNYK68z72DCpXWujSgIcEsMFEXbAeF4h8/ewq7FDyAcBJkIdZkFcfVMX0VXQuAtWoBtD/ytkjwaI1cJKGD1wR4WxjwFC83laFh90VK6inDVBozjiQbEO5VMCLxkaNhEk7jXIdl9EyLifax+8ZSTds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728540986; c=relaxed/simple;
	bh=wZMo5EDqSt3NdhtVfm2/aFYUIYnFZQfM2cEUtlVW1ws=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Pnc7XokJKxA+qDMcYgFxan4OS/MeqooHdv5PbmHa0cPpCgij+sKHEKUNe4slajMkWoAVPGwSLC1dPwyd4F3QWjSnmZcwVubBTVkLutDcERGvSZTycuv5B0aVNMF7WfD0P6HpjFQpEArnsqC/oOnEAO3i0YqkFq81fkTfGKhNhdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=IaQ/+rik; arc=none smtp.client-ip=217.70.183.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 4B33CE0004;
	Thu, 10 Oct 2024 06:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1728540980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x4ZKErzNe55dAsKnkZtKWlGkkYRRlcZD9pB/2M1k254=;
	b=IaQ/+rikuPy0j0w2CFh8u4mG/kc8EHKiKVeykbnlTKUfvCY6el+jgmsZYWKnU4Fk46bpkk
	7bwEgvByoHlN1UtHNSGdGS0qWdTrPzDAg1Zz9SJ2nrGMYV4hZbN97ck+1rpkSzA6qXtxX+
	jhrwV5Ab36QSolCZy2gWT0HlJTDrzoldpIZt3unIJZm0rZa3cAPgKTiAA/Cjc1DCyYxNgK
	vmeiQ+cPVEdcM6lpLEzD6fDuetq6nePKQ0srCaZEOU0mwtwcVLRhrHCVWBk9+Vi8afbuwb
	wDZk0LFWYZqL9ZibSdLKCUZV4+jZWL2Mf42sJ6SQAKuEIJR/dMnuleBYPN4/Fg==
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Simon Horman <horms@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Andrew Lunn <andrew@lunn.ch>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v8 0/6] Add support for the LAN966x PCI device using a DT overlay
Date: Thu, 10 Oct 2024 08:16:08 +0200
Message-ID: <20241010061615.787073-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi,

This series adds support for the LAN966x chip when used as a PCI
device.

For reference, the LAN996x chip is a System-on-chip that integrates an
Ethernet switch and a number of other traditional hardware blocks such
as a GPIO controller, I2C controllers, SPI controllers, etc. The
LAN996x can be used in two different modes:

- With Linux running on its Linux built-in ARM cores.
  This mode is already supported by the upstream Linux kernel, with the
  LAN996x described as a standard ARM Device Tree in
  arch/arm/boot/dts/microchip/lan966x.dtsi. Thanks to this support,
  all hardware blocks in the LAN996x already have drivers in the
  upstream Linux kernel.

- As a PCI device, thanks to its built-in PCI endpoint controller.
  In this case, the LAN996x ARM cores are not used, but all peripherals
  of the LAN996x can be accessed by the PCI host using memory-mapped
  I/O through the PCI BARs.

This series aims at supporting this second use-case. As all peripherals
of the LAN996x already have drivers in the Linux kernel, our goal is to
reuse them as-is to support this second use-case.

Therefore, this patch series introduces a PCI driver that binds on the
LAN996x PCI VID/PID, and when probed, instantiates all devices that are
accessible through the PCI BAR. As the list and characteristics of such
devices are non-discoverable, this PCI driver loads a Device Tree
overlay that allows to teach the kernel about which devices are
available, and allows to probe the relevant drivers in kernel, re-using
all existing drivers with no change.

This patch series for now adds a Device Tree overlay that describes an
initial subset of the devices available over PCI in the LAN996x, and
follow-up patch series will add support for more once this initial
support has landed.

In order to add this PCI driver, a number changes are needed:
 - Patches 1 and 2 introduce the LAN996x PCI driver itself, together
   with its DT overlay and the related MAINTAINER entry.

 - Patch 3 removes the syscon API usage from the reset driver used for
   the LAN966x.

 - Patches 4 to 7 allow the reset driver used for the LAN996x to be
   built as a module. Indeed, in the case where Linux runs on the ARM
   cores, it is common to have the reset driver built-in. However, when
   the LAN996x is used as a PCI device, it makes sense that all its
   drivers can be loaded as modules.

Compare to the previous iteration:
  https://lore.kernel.org/lkml/20241003081647.642468-1-herve.codina@bootlin.com/
this v8 series mainly:
  - Add missing spaces
  - Add "Reviewed-by" tags

Best regards,
Hervé

Changes v7 -> v8
  - Patch 1
    Add missing spaces around '=' in dtso

  - Patches 2, 4, 5 and 6
    Add 'Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>'

  - Patch 3
    Add 'Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>'
    Add	'Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>'

Changes v6 -> v7
  - Patch 1 (patch 3 in v6)
    Re-introduce the syscon node in the overlay

  - Patch 2 (patch 4 in v6)
    No changes

  - Patch 3 (patch 2 in v6)
    Rework code to map the syscon device locally without using the
    syscon API in the LAN966x case.
    Update commit log

  - Patches 4, 5 and 6 (patches 5, 6, and 7 in v6)
    No changes

  Patch removed in v7
    - Patch 1 in v6 (reset controller DT binding modification)
      Rejected

Changes v5 -> v6
  - Patch 1
    New patch in v6 relatead to removing syscon usage.

  - Patch 2
    New patch in v6 related to removing syscon usage.

  - Patch 3 (patch 1 in v5)
    Add 'Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>'
    Remove syscon node from the overlay.

  - Patch 4, 5, 6 and 7 (patches 2, 4, 5 and 8 in v5)
    No changes

  Patches removed in v6
    - Patch 3 in v5
      Rejected

    - Patch 6 in v5
      No more applicable

    - Patch 7 in v5
      Already applied

Changes v4 -> v5
  - Patch 1
    Add missing include files and keep pci_ids.h.
    Remove IRQ_RETVAL() usage.
    Use __free().
    Remove the pdev->irq check.
    Avoid local variables in devm_pci_dev_remove_intr_ctrl() and
    lan966x_pci_load_overlay().
    Use dev_err_probe().
    Sort header includes in alphabetical order in dtbs file.

  - Patch 3
    Fix a typo in commit log.
    Simplify modification done in device_node_get_syscon().
    Use devm_add_action_or_reset().

  - Patches 4, 5, 6 and 8
    Add 'Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>'

Changes v3 -> v4
  - Patch 1 and 2 (v3 patch 6 and 7)
    Move the driver from drivers/mfd to drivers/misc.

  - Patch 4 and 5 (v3 patch 2)
    Rework reset driver dependencies and module building support.
    Split v3 patch into two distinct patches:
      - patch 4, as suggested by Geert, add a dependency on the
        LAN966x PCI device
      - patch 5, allows to build the reset controller driver as a module

  - Other patches
    Except reordering, no changes

Changes v2 -> v3
  - Patches 1 and 5
    No changes

  - Patch 6 (v2 patch 18)
    Add a blank line in the commit log to split paragraphs
    Remove unneeded header file inclusion
    Use IRQ_RETVAL()
    Remove blank line
    Use dev_of_node()
    Use pci_{set,get}_drvdata()
    Remove unneeded pci_clear_master() call
    Move { 0, } to { }
    Remove the unneeded pci_dev member from the lan966x_pci structure
    Use PCI_VENDOR_ID_EFAR instead of the hardcoded 0x1055 PCI Vendor ID
    Add a comment related to the of_node check.

  - Patch 7 (v2 patch 19)
    No changes

  Patches removed in v3
    - Patches 6 and 7
      Extracted and sent separately
      https://lore.kernel.org/lkml/20240620120126.412323-1-herve.codina@bootlin.com/

    - Patches 9
      Already applied

    - Patches 8, 10 to 12
      Extracted, reworked and sent separately
      https://lore.kernel.org/lkml/20240614173232.1184015-1-herve.codina@bootlin.com/

    - Patches 13 to 14
      Already applied

Changes v1 -> v2
  - Patch 1
    Fix a typo in syscon.h (s/intline/inline/)

  - Patches 2..5
    No changes

  - Patch 6
    Improve the reset property description

  - Patch 7
    Fix a wrong reverse x-mass tree declaration

  - Patch 8 removed (sent alone to net)
    https://lore.kernel.org/lkml/20240513111853.58668-1-herve.codina@bootlin.com/

  - Patch 8 (v1 patch 9)
    Add 'Reviewed-by: Rob Herring (Arm) <robh@kernel.org>'

  - Patch 9 (v1 patch 10)
    Rephrase and ident parameters descriptions

  - Patch 10 (v1 patch 11)
    No changes

  - Patch 11 (v1 patch 12)
    Fix a missing ret value assignment before a goto in .probe()
    Limit lines to 80 columns
    Use indices in register offset definitions

  - Patch 13 and 14 (new patches in v2)
    Add new test cases for existing of_changeset_add_prop_*()

  - Patch 15 (v1 patch 14)
    No changes

  - Patch 16 (new patches in v2)
    Add tests for of_changeset_add_prop_bool()

  - Patch 17 (v1 patch 15)
    Update commit subject
    Rewrap a paragraph in commit log

  - Patch 18 (v1 patch 16)
    Use PCI_IRQ_INTX instead of PCI_IRQ_LEGACY

  - Patch 19 (v1 patch 17)
    No changes

Clément Léger (2):
  reset: mchp: sparx5: Allow building as a module
  reset: mchp: sparx5: set the dev member of the reset controller

Herve Codina (4):
  misc: Add support for LAN966x PCI device
  MAINTAINERS: Add the Microchip LAN966x PCI driver entry
  reset: mchp: sparx5: Map cpu-syscon locally in case of LAN966x
  reset: mchp: sparx5: Add MCHP_LAN966X_PCI dependency

 MAINTAINERS                            |   6 +
 drivers/misc/Kconfig                   |  24 +++
 drivers/misc/Makefile                  |   3 +
 drivers/misc/lan966x_pci.c             | 215 +++++++++++++++++++++++++
 drivers/misc/lan966x_pci.dtso          | 167 +++++++++++++++++++
 drivers/pci/quirks.c                   |   1 +
 drivers/reset/Kconfig                  |   4 +-
 drivers/reset/reset-microchip-sparx5.c |  38 ++++-
 8 files changed, 455 insertions(+), 3 deletions(-)
 create mode 100644 drivers/misc/lan966x_pci.c
 create mode 100644 drivers/misc/lan966x_pci.dtso

-- 
2.46.2


