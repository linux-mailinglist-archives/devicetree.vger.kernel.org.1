Return-Path: <devicetree+bounces-68041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 336D38CAA15
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56DC81C20BA3
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 08:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0671F56757;
	Tue, 21 May 2024 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fk867RZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBB76D1BA
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 08:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716280512; cv=none; b=UA4WEkl3Rr5JPEtwxUs+iLA3Lux1oykfJund/PWrKbrau5nDfB7jcNamxy/2budn89fjhIhSzzcE1TcARYdlbchKd3UcwryWIZ5uiNWEShbf9CcU/nZ+OHRuzbkzxmJLhfiztDjaRL7CEZPzWmbkqT5gVDxVCtxbdwzgL3TIhUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716280512; c=relaxed/simple;
	bh=NlwH4SiK0L+gpnBQwJDh1NjtO2j/huh8EReOYhlSk/Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QcWP9s269dvKVMiDsGb3s4Nd4SChl4XfSBeCsE/1LioJ3ws2J4rwQqueHtfvf997WAmv8s4YkyTLxtLkOcgQcshdliKTHUOUixYV297bVveYVp5O41ClIM1MiEs0TuP+fwMI8t4HT4Z+9Uhg8c/uG2BO6emhfsLE2aXAS5PCc6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fk867RZm; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so8265216a12.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 01:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716280508; x=1716885308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5vQHIjPxEVF2pY5wEilHDdYPpJmasWX2rT/NqjXEStQ=;
        b=fk867RZmCVaQXvgTMfM7zNOOJLl9jkcS6L4VJPjGQ58ozg81tJocOecSCbGzqsyDeg
         yNIZFRVELfNO5l2wxPry/bs3nMKxj6LoWs+iX3unfnFXh1i4Iq8qvD9GhGCC3Ybe17Jc
         bFHt9M1xhhLVXM5rXmu1/TvzpqTbE531AcxX8UmMxsvxjxxYRcAzlVsMbHtnMhR6sNLs
         H4y6SkXxMB/AC/DLSwpKzLQs/QDQGONm0g6l2h0De676vwLG1FQlm26VO2eVmXptlrXW
         ECLw2++u5ISKdHUCFQGQ+3vwCORzsqRlJdRgcWx9ws6DcrND5P2gi/5j0FioZn+yI6Dm
         sMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716280508; x=1716885308;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5vQHIjPxEVF2pY5wEilHDdYPpJmasWX2rT/NqjXEStQ=;
        b=n93jVxeBJfxz3aquRTRmE+kQu5EmSSwS4/kXzZWRxYTaJ7MOMLKCEipolAzNEWnawv
         +o3pf0DSM3vh29x4lK9ryEygaeYrG81UxdnL5eUqHIa2K9fqdqe+kP7vUEK5HJkD7egn
         Iey2nOwMOOsRqs8tWTomRr+Vfqp4KtXt+q4O74C9w/+dqZkxe7IkJLsRjrLWWbbrG75O
         TUK5jL6ICUetHRiskSzLNeQ8/OpfPE0x7pFwTcMYBjpD3tRi0haIpEJHpmvPkHBTaQMw
         un7p5zGTZZItG9pv/cBFS+pxqX4Rbj1oFIuRzQbO46bptRBAJ3Loq7q5XEgyz/fyadcN
         vytQ==
X-Forwarded-Encrypted: i=1; AJvYcCUA1dapD8LWHoVZO6VR/v7QyuHRKte9r0Y1dnYyM4pS9U6ZsaOoLFeuY6AO8ZBJzZx5ZxOraBIc7jEhal1GdIVdNmapx5vf/rcfsQ==
X-Gm-Message-State: AOJu0Yy4BXubpJX8JXfuQD9NLx9a2PJGpJwBU4O27avxl3ySTImMcGHN
	4kOdRReDmYkrdt+FyLFKpaFz7DEKcoDg9gqv8BOItNSVcM6O/micu5DvYklPbqc=
X-Google-Smtp-Source: AGHT+IFCxVzIMzseBlri9Hon45PvliI+L9gLB+9KrD/2MfBm36727haERcz0qRBqSpr70+AwqkXdaQ==
X-Received: by 2002:a50:9993:0:b0:571:bed1:3a36 with SMTP id 4fb4d7f45d1cf-5734d707663mr32792639a12.38.1716280508047;
        Tue, 21 May 2024 01:35:08 -0700 (PDT)
Received: from localhost (host-87-18-209-253.retail.telecomitalia.it. [87.18.209.253])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-575058cd7casm6870293a12.65.2024.05.21.01.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 01:35:07 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Marc Zyngier <maz@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v3 0/4] Add minimal boot support for Raspberry Pi 5
Date: Tue, 21 May 2024 10:35:12 +0200
Message-ID: <cover.1716277695.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This patchset adds minimal support for the Broadcom BCM2712 SoC and for
the on-board SDHCI controller on Broadcom BCM2712 in order to make it
possible to boot (particularly) a Raspberry Pi 5 from SD card and get a
console through uart.
Changes to arm64/defconfig are not needed since the actual options work
as they are.
This work is heavily based on downstream contributions.

Tested on Tumbleweed substituting the stock kernel with upstream one,
either chainloading uboot+grub+kernel or directly booting the kernel
from 1st stage bootloader. Steps to reproduce:
- prepare an SD card from a Raspberry enabled raw image, mount the first
  FAT partition.
- make sure the FAT partition is big enough to contain the kernel,
  anything bigger than 64Mb is usually enough, depending on your kernel
  config options.
- build the kernel and dtbs making sure that the support for your root
  fs type is compiled as builtin.
- copy the kernel image in your FAT partition overwriting the older one
  (e.g. kernel*.img for Raspberry Pi OS or u-boot.bin for Tumbleweed).
- copy arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb on FAT partition.
- make sure you have a cmdline.txt file in FAT partition with the
  following content:
  # cat /boot/efi/cmdline.txt
  root=/dev/mmcblk0p3 rootwait rw console=tty ignore_loglevel earlycon
  console=ttyAMA10,115200
- if you experience random SD issues during boot, try to set
  initial_turbo=0 in config.txt.

Changes in V3:

DTS:
- uart0 renamed to uart10 to reflect the current indexing (ttyAMA10
  and serial10)
- updated the license to (GPL-2.0 OR MIT)
- sd_io_1v8_reg 'states' property have second cells as decimal instead
  of hex.
- root node has size-cells=<2> now to accommodate for the DRAM controller
  and the address bus mapping that goes beyond 4GB. As a consequence,
  memory, axi and reserved-memory nodes have also size-cells=<2> and
  subnodes reg and ranges properties have been updated accordingly
- ranges property in 'axi' node has been fixed, reg properties of sdio1
  and gicv2 subnodes have been adjusted according to the new mapping
- 'interrupt-controller@7d517000' node is now enabled by default
- dropped 'arm,cpu-registers-not-fw-configured' as it is no longer
  relevant on A76 core
- l2 cache nodes moved under respective cpus, since they are per-cpu
- dropped psci cpu functions properties
- added the hypervisor EL2 virtual timer interrupt to the 'timer' node
- splitted-lines url are now on a single line

sdhci-brcmstb.c:
- simplified MMC_CAP_HSE_MASK leveraging already existing definitions
- MMC_CAP_UHS_MASK renamed to MMC_CAP_UHS_I_SDR_MASK to better reflect
  its purpose. Added also a comment.
- sdhci_brcmstb_set_power() replaced with the already existing (and
  equivalent) sdhci_set_power_and_bus_voltage()

DT-bindings:
- removed the BCM2712 specific example, as per Rob's request.


Changes in V2:

- the patchshet has been considerably simplified, both in terms of dts and
  driver code. Notably, the pinctrl/pinmux driver (and associated binding)
  was not strictly needed to use the SD card so it has been dropped
- dropped the optional SD express support patch
- the patches order has been revisited
- pass all checks (binding, dtb, checkpatch)


Many thanks,
Andrea

References:
- Link to V1: https://lore.kernel.org/all/cover.1713036964.git.andrea.porta@suse.com/
- Link to V2: https://lore.kernel.org/all/cover.1715332922.git.andrea.porta@suse.com/

Andrea della Porta (4):
  dt-bindings: arm: bcm: Add BCM2712 SoC support
  dt-bindings: mmc: Add support for BCM2712 SD host controller
  mmc: sdhci-brcmstb: Add BCM2712 support
  arm64: dts: broadcom: Add support for BCM2712

 .../devicetree/bindings/arm/bcm/bcm2835.yaml  |   6 +
 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |   4 +
 arch/arm64/boot/dts/broadcom/Makefile         |   1 +
 .../boot/dts/broadcom/bcm2712-rpi-5-b.dts     |  64 ++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 292 ++++++++++++++++++
 drivers/mmc/host/sdhci-brcmstb.c              |  65 ++++
 6 files changed, 432 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712.dtsi

-- 
2.35.3


