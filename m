Return-Path: <devicetree+bounces-138107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F459A0BB0F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 181EB3AA582
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C44622F82D;
	Mon, 13 Jan 2025 14:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="W63xq+uU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9912222DFA5
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780247; cv=none; b=uECGgxwq1VKEixGRP41QGOk4oFt0+lsx1goXiRJZjZI4IwbXf6fXTj91Zb/XvI/tasM5f8uKl7en/FsQfxakRdTbKaeaDoyIkaSo8CRkq0erfrkXHHEdw7V5LEg1DNtZEA3cPqT76SOaFZj8Ibe3nz2ka2lTxG74PrmF0YNuNoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780247; c=relaxed/simple;
	bh=ZC8TFqmEccx1T/wjcHtffQmZC5UCagFKPztnEc0J07w=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=dCX4+nhOUKAJtjoGf6DG5ErjYVaCAQQSyLHGe+F+TSQC9mJLBRINYoX/aw2Ma8GkebZQY8cZhlKkEuu0xR4xwptWvPIJUYKYGiHEQ+2X0fMrrrdkMV1gYM0AE9wELnW0gQfTaekmjzaIO35u3JH7tCnO70nB9Vifj7uTUzq4mwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=W63xq+uU; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-5d3d0205bd5so6682491a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1736780243; x=1737385043; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FwnS3vaGfU2joF6cYNFfsBCgKjyVEnMzRnIWwalUQU8=;
        b=W63xq+uUluv93Q6rqgQolyyslqu5eu6i1ALH0BDGjyLzj83EvgeqyXJZhVTxaj6j6h
         fiBO0rlahklJPg8nv0lEKSUDOqZ8I6Yt6uR25VqZ1jagfYumxbzzxrL/C//fI9+HyGZV
         XPBhiuSW5RQRoeIddb26ZpZO5ColTTKLN20/vJAuaGqVF2evdFGbaJ9Xoe3nKcSNl9j3
         8P0HsESCgIiq2vvvoBg+2QoESQqcPPMg6eim1dMmL0QMwdbRZ7qKuApMinHRxg4VSqQQ
         ijzJ8yV3aS8iVlR24ZXjgu+JQNOZ/TzJAE/2HBK0mwf6IVBMlLETFmRSFL/2CXK85Me3
         bPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736780243; x=1737385043;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FwnS3vaGfU2joF6cYNFfsBCgKjyVEnMzRnIWwalUQU8=;
        b=C0Uycny+5B2N3gEVeYY1eiPRCqeRAAf6RntA1z0/JJcqmUPnW7nl07QcfSUVuexCnO
         KUXGeKxInnQnFkTD9VgTky97ljDEobAPGfFYlOrMhzxmIVOb+uSmFT2Rm9bxdSu//zD3
         UWL2jxiaVk4O8SGnwbcqa0NiQByvfVDpNlo3C8ITJVV8psut1U8HOTA8pHzxurA0e1wz
         moSE69loeD6aXiQ4K0B4xKRpBWR4gyE9R8+0rXjz3MOrwdqPk0i4O1lheCnpv5yELLY8
         xIUzUopIEwFkKWwieM5jdn0ig7m0t/eADMvIhb+Rk81wB6F647p6XLPFKyPhNIYcXNz3
         nIYA==
X-Forwarded-Encrypted: i=1; AJvYcCWgsJLEzLrlAqmoXm3GVZwVu8OdmJr5R8gmSYxSopxVOivpARuqmF6rNFOplLx0COZheaMUEC3+fb90@vger.kernel.org
X-Gm-Message-State: AOJu0YwyQv9bqgflqNXYjLMZNZ1cAl9dpa3U9E0uUQ5ISJkQ8mda2O2I
	D/j6AFe6kO/DXUjL4kMTJbxdL501pAiJ7yLbKKhLKSx4IRgajOoTkXFDRx3EGV8=
X-Gm-Gg: ASbGnctKgnmkb3y5EUxj2xpin5xiFsE6gyp/gNmEi3jJ2Co+MMrLjfvDrfA1mOeZlTV
	L5xDOBODwZmxW0NphlwkJTOmO4PaEJUhkipyItq0XrrgOW1yvyeNbx2we0h6RViz4Th0K3D/fWY
	OXKGhIUjdAkA6v5029hj9Ex1o5C7NrkzCsGwDD61TjcOlSxqh4E72htFSuGpuuO9aj+kLMuOAiG
	f3m8cwbQ0TfQ/iBUEESeIKQgPsV3HKi2bKYPbZp+XFzp1x0wqiy/4ArPYlTuBZAMoPLRY/GyAhQ
	YbU+8Cy44myppXyR7T4HcaDOICc=
X-Google-Smtp-Source: AGHT+IF+dQmIb1tSxF2qnawRLekJBTCQVTuDzMZWssaSx8RiWN62SO954NQh7GFSKEfS+l/Tll7rpQ==
X-Received: by 2002:a17:906:ef0d:b0:aab:d7ef:d44 with SMTP id a640c23a62f3a-ab2ab6c1ad2mr2040825166b.24.1736780242877;
        Mon, 13 Jan 2025 06:57:22 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c90da2c8sm516494166b.62.2025.01.13.06.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:57:22 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using a DT overlay
Date: Mon, 13 Jan 2025 15:57:59 +0100
Message-ID: <cover.1736776658.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RP1 is an MFD chipset that acts as a south-bridge PCIe endpoint sporting
a pletora of subdevices (i.e.  Ethernet, USB host controller, I2C, PWM,
etc.) whose registers are all reachable starting from an offset from the
BAR address.  The main point here is that while the RP1 as an endpoint
itself is discoverable via usual PCI enumeraiton, the devices it contains
are not discoverable and must be declared e.g. via the devicetree.

This patchset is an attempt to provide a minimum infrastructure to allow
the RP1 chipset to be discovered and perpherals it contains to be added
from a devictree overlay loaded during RP1 PCI endpoint enumeration.
Followup patches should add support for the several peripherals contained
in RP1.

This work is based upon dowstream drivers code and the proposal from RH
et al. (see [1] and [2]). A similar approach is also pursued in [3].

The patches are ordered as follows:

-PATCHES 1 to 4: add binding schemas for clock, gpio and RP1 peripherals.
 They are needed to support the other peripherals, e.g. the ethernet mac
 depends on a clock generated by RP1 and the phy is reset though the
 on-board gpio controller.

-PATCH 5 and 6: add clock and gpio device drivers.

-PATCH 7: the devicetree overlay describing the RP1 chipset. Please
 note that this patch should be taken by the same maintainer that will
 also take patch 11, since txeieh dtso is compiled in as binary blob and is
 closely coupled to the driver.

-PATCH 8: this is the main patch to support RP1 chipset and peripherals
 enabling through dtb overlay. The dtso since is intimately coupled with
 the driver and will be linked in as binary blob in the driver obj.
 The real dtso is in devicetree folder while the dtso in driver folder is
 just a placeholder to include the real dtso.
 In this way it is possible to check the dtso against dt-bindings.
 The reason why drivers/misc has been selected as containing folder
 for this driver can be seen in [6], [7] and [8].

-PATCH 9: add the external clock node (used by RP1) to the main dts.

-PATCH 10: add the relevant kernel CONFIG_ options to defconfig.

This patchset is also a first attempt to be more agnostic wrt hardware
description standards such as OF devicetree and ACPI, where 'agnostic'
means "using DT in coexistence with ACPI", as been already promoted
by e.g. AL (see [4]). Although there's currently no evidence it will also
run out of the box on purely ACPI system, it is a first step towards
that direction.

Please note that albeit this patchset has no prerequisites in order to
be applied cleanly, it still depends on Stanimir's WIP patchset for BCM2712
PCIe controller (see [5]) in order to work at runtime.

Many thanks,
Andrea della Porta

Links:
- [1]: https://lpc.events/event/17/contributions/1421/attachments/1337/2680/LPC2023%20Non-discoverable%20devices%20in%20PCI.pdf
- [2]: https://lore.kernel.org/lkml/20230419231155.GA899497-robh@kernel.org/t/
- [3]: https://lore.kernel.org/all/20240808154658.247873-1-herve.codina@bootlin.com/#t
- [4]: https://lore.kernel.org/all/73e05c77-6d53-4aae-95ac-415456ff0ae4@lunn.ch/
- [5]: https://lore.kernel.org/all/20240626104544.14233-1-svarbanov@suse.de/
- [6]: https://lore.kernel.org/all/20240612140208.GC1504919@google.com/
- [7]: https://lore.kernel.org/all/83f7fa09-d0e6-4f36-a27d-cee08979be2a@app.fastmail.com/
- [8]: https://lore.kernel.org/all/2024081356-mutable-everyday-6f9d@gregkh/

CHANGES IN V6:

PATCH RELATED -------------------------------------------------

- patch 2: added: Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
- patch 3 and 4: added: 'Reviewed-by: Rob Herring (Arm) <robh@kernel.org>'
- patch 8: removed a stale paragraph from git commit message regarding
  gpio renaming through configfs


RP1 MISC DRIVER -----------------------------------

- interrupts definitions moved as documentation from rp1_pci.c to
  pci1de4,1.yaml binding schema


Andrea della Porta (10):
  dt-bindings: clock: Add RaspberryPi RP1 clock bindings
  dt-bindings: pinctrl: Add RaspberryPi RP1 gpio/pinctrl/pinmux bindings
  dt-bindings: pci: Add common schema for devices accessible through PCI
    BARs
  dt-bindings: misc: Add device specific bindings for RaspberryPi RP1
  clk: rp1: Add support for clocks provided by RP1
  pinctrl: rp1: Implement RaspberryPi RP1 gpio support
  arm64: dts: rp1: Add support for RaspberryPi's RP1 device
  misc: rp1: RaspberryPi RP1 misc driver
  arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
  arm64: defconfig: Enable RP1 misc/clock/gpio drivers

 .../clock/raspberrypi,rp1-clocks.yaml         |   58 +
 .../devicetree/bindings/misc/pci1de4,1.yaml   |  135 ++
 .../devicetree/bindings/pci/pci-ep-bus.yaml   |   58 +
 .../pinctrl/raspberrypi,rp1-gpio.yaml         |  198 +++
 MAINTAINERS                                   |   14 +
 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     |    7 +
 arch/arm64/boot/dts/broadcom/rp1.dtso         |   58 +
 arch/arm64/configs/defconfig                  |    3 +
 drivers/clk/Kconfig                           |    9 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/clk-rp1.c                         | 1527 +++++++++++++++++
 drivers/misc/Kconfig                          |    1 +
 drivers/misc/Makefile                         |    1 +
 drivers/misc/rp1/Kconfig                      |   21 +
 drivers/misc/rp1/Makefile                     |    3 +
 drivers/misc/rp1/rp1-pci.dtso                 |    8 +
 drivers/misc/rp1/rp1_pci.c                    |  305 ++++
 drivers/misc/rp1/rp1_pci.h                    |   14 +
 drivers/pci/quirks.c                          |    1 +
 drivers/pinctrl/Kconfig                       |   11 +
 drivers/pinctrl/Makefile                      |    1 +
 drivers/pinctrl/pinctrl-rp1.c                 |  789 +++++++++
 .../clock/raspberrypi,rp1-clocks.h            |   61 +
 include/linux/pci_ids.h                       |    3 +
 24 files changed, 3287 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
 create mode 100644 Documentation/devicetree/bindings/misc/pci1de4,1.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
 create mode 100644 drivers/clk/clk-rp1.c
 create mode 100644 drivers/misc/rp1/Kconfig
 create mode 100644 drivers/misc/rp1/Makefile
 create mode 100644 drivers/misc/rp1/rp1-pci.dtso
 create mode 100644 drivers/misc/rp1/rp1_pci.c
 create mode 100644 drivers/misc/rp1/rp1_pci.h
 create mode 100644 drivers/pinctrl/pinctrl-rp1.c
 create mode 100644 include/dt-bindings/clock/raspberrypi,rp1-clocks.h

-- 
2.35.3


