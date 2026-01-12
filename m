Return-Path: <devicetree+bounces-253838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 563CAD11EA5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 538213014119
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F6925A34F;
	Mon, 12 Jan 2026 10:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="IjUolPXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973193.qiye.163.com (mail-m1973193.qiye.163.com [220.197.31.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4A327B352;
	Mon, 12 Jan 2026 10:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214068; cv=none; b=Gs4xYnb7zNnO5oRTCFwNmPJ5DGWwq70SC2s04EqdwoqY0omDLyPHMg4h04eSBv9Igto3oYkyvbvebr+9rkXkAZumd8A2VzUx8ifOC6umViWTd+5ooBJW4PbWS3d3U6UaMx49PiUC1jjLmzGFKJLtMDQHFyXxK4c7SYQD8wsg5+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214068; c=relaxed/simple;
	bh=syYhLBFZCuRjeoJcpdyMucRxy5iB/ePNhHhnwcYoDyE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=j9578ML7qEXkVf9aoPKh4zXhl/je5q6ej1gjkub8cq9QSBtQDJoPvnFrU8zjVOk1E5HzUsIfnHHaZ3UoY9hwfkgvds/jlDny9S0giVMQ2k8XfA194bCM1/t3+NDWwh5NsY/RZ93q1bjHAK3Rs3BRBSxWQ53SMS+/sN5YmQ9jpWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=IjUolPXG; arc=none smtp.client-ip=220.197.31.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3053af572;
	Mon, 12 Jan 2026 18:29:06 +0800 (GMT+08:00)
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
Subject: [PATCH v2 0/3] Add RK801 PMIC support
Date: Mon, 12 Jan 2026 18:28:46 +0800
Message-Id: <20260112102849.1479-1-chenjh@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bb1c092a509d2kunm68a7e29c4d1efc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk0ZT1ZCQ0NDHhpCSExMTBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IjUolPXGBI32U2/6Hp1ZxtsmY1GZzhC6zNLHxQc+MdRk5m0mCm9dbMm2Xh6FXnQPIOsVDm+3YyuIil8NjbLCJW6Qu0zzCOBJs9EIwyFniA8nlH4m0+aWe0+cLkLiiIZJ+WU7f28jHkCBzqjHeghND+jel6tT5bGanADyBtv+kQ0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=JANRds0JTJSP9J51OSj0NJw6bCvgunMVHLtK63EJKKo=;
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


