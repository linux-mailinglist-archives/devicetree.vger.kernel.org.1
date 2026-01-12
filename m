Return-Path: <devicetree+bounces-253914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAD2D12951
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A23F301702A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1597E357736;
	Mon, 12 Jan 2026 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="TkK8JX0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731118.qiye.163.com (mail-m19731118.qiye.163.com [220.197.31.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BEC1E4AF;
	Mon, 12 Jan 2026 12:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768221860; cv=none; b=OkhJzXHPA3EAOWiNvOBKoGlornl1WLAZX6JHPQYw6MmRwQGXKpHZ6WvMtROzo9i8ZsF1Q91xU2mGJSTtkGGgnLyzn7gPkjC5wat6aH/W6pNHRrP+ic3ruv/jepoGhBez712qhJTmDteMU2mET22kdoEs8wKBiW76V9xXBic75JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768221860; c=relaxed/simple;
	bh=VtHLaD2zE9lwuhYnSpGVjLD/u9t5Cg5QbV01IYoahkM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Un0qwHhThkhjRJ8xTZ/LxZam9RAMN+xLtS15JW+guzLWPcr0qAnNX4THU1uPz9q1p+Z48fWXWwihlzOhbfZDY6Zz72ohFF0HNnQdTjsTzN66erx2hyTJIy3fmZKeP5S1mh2T4GZXmmOUFo6Ti4T9cLYheDnmTZn3dunaueDB7B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=TkK8JX0K; arc=none smtp.client-ip=220.197.31.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 305730432;
	Mon, 12 Jan 2026 20:44:08 +0800 (GMT+08:00)
From: Joseph Chen <chenjh@rock-chips.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Joseph Chen <chenjh@rock-chips.com>
Subject: [PATCH v3 0/3] Add RK801 PMIC support
Date: Mon, 12 Jan 2026 20:43:48 +0800
Message-Id: <20260112124351.17707-1-chenjh@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bb23c332509d2kunm3fddfe07a776
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0ZGVZCHx1CH0JPGhlLTkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TkK8JX0KXZcpy90oV5dsPlnE7CtnXOhMVV/0yuvoGZF2anvjt205KjzvqyNQ+yMiAFv7VG7AL06UXUceZw4LP8ZMPvIs5Tj8+AeeEjdVm8IchwIJ8ndM/WndA7FzoONzuHbipPRHFXMjwBpcJ5fQGl+u4y/4gkJtoIGtMjKc5sU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7K96o9PfB6wlxTIuc4FqOnAFIU3qJ4/WcE8q4TkwfB8=;
	h=date:mime-version:subject:message-id:from;

This patch series adds support for the Rockchip RK801 Power Management
Integrated Circuit (PMIC) to the Linux kernel.

The RK801 is a PMIC designed for multimedia and handheld devices. It
includes:
- 4 BUCK regulators (DCDC)
- 2 LDO regulators
- 1 SWITCH regulator
- Interrupt support for power key events

The implementation follows the existing rk808 MFD driver architecture
and integrates RK801 as a new variant in the RK8XX family.

Patch 1 adds the device tree binding documentation for RK801, describing
the compatible string, regulators configuration, and example usage.

Patch 2 adds the MFD core support for RK801, including device detection
and register definitions.

Patch 3 adds the regulator driver support for RK801, implementing the
4 BUCK regulators, 2 LDO regulators, and 1 SWITCH regulator.

Changes in v3:
- Fix patch split issue: MFD patch incorrectly removed the entire
  drivers/regulator/rk808-regulator.c file in v2
- Kconfig description: use "Rockchip RK8xx Power Management Chips"
  instead of listing all individual chips (suggested by Heiko)

Changes in v2:
- Include all necessary To/Cc entries
- Rename pmic/regulator names from uppercase to lowercase(dcdc[1-4]|ldo[1-2]|switch)
  to align with DT coding style
- Drop 'rockchip,system-power-controller'
- Remove unused 'pwrctrl-gpios' from DT binding example
- Split regulator support into a separate patch (was part of mfd patch in v1)

Joseph Chen (3):
  dt-bindings: mfd: Add rk801 binding
  mfd: rk8xx: Add RK801 support
  regulator: rk808: Add RK801 support

 .../bindings/mfd/rockchip,rk801.yaml          | 197 ++++++++++++++
 drivers/mfd/Kconfig                           |   6 +-
 drivers/mfd/rk8xx-core.c                      |  81 ++++++
 drivers/mfd/rk8xx-i2c.c                       |  33 ++-
 drivers/regulator/rk808-regulator.c           | 243 ++++++++++++++++++
 include/linux/mfd/rk808.h                     | 118 +++++++++
 6 files changed, 674 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

--
2.25.1


