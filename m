Return-Path: <devicetree+bounces-252342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73193CFDDA5
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B160C30275DD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F79731AF3D;
	Wed,  7 Jan 2026 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dJa/3HBT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4002431AA95
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767791120; cv=none; b=JieU9RTbqHqhIUdi19On7ib8BI6KDqyOFipUGjoFJsypcQQ/fj9EY+XABVuJwEvUkedFZOSUG57C8ZKafcHNSmbcedABLvfDsUbRd6vs7EqO43aaRwb/qBLZh+lCpPbhXKsNyWqVuXnf6TghRj97zCBkeCLbaMTgvl8IPBxkr9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767791120; c=relaxed/simple;
	bh=KNTTOR+1YucK1tqEVdpxfA9zEVnUXr+ThTjX+VOjaMw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qO4dwcfTASuzcgPIoTcEghKuUxddVgy0QfR84nBqQRDHfcFoOmEbECSylzOZwv+iihVphSnu2GhZVXptjei/tMSrN57ojlntavVMWYDJaD1Iv2PEuU++60bnUIHkdKVfMxBZlDGiI5aqqdAhIB5xgGZx2UYkkxt9ZRFQLNrQLpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dJa/3HBT; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 080B2C1EC8B;
	Wed,  7 Jan 2026 13:04:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1559F606F8;
	Wed,  7 Jan 2026 13:05:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1F302103C821A;
	Wed,  7 Jan 2026 14:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767791113; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=1ga9hgoLz/9NRUhVBfHrCw/F/qtxibREvdnxc5/TAuU=;
	b=dJa/3HBT2YYvgkLM+gr+n0s+1sPAl5nAgRbJfk3suFGpcKg/ezPW02AwahlEfdNPkG6KcV
	BrFwkDye8tRMNiMV7V6t2fWhuf9AmsRwMmqXOkli46Y/ru1+xx2PnmwHnniAtNWG4fPRGj
	itFHyltR0rL3lE/c/1Yakndj7XXbwYfy5rmOP3lwN/Wset1UhinZd8ZQZWUxCEq3DrXNZO
	X9GFkvjBTATGLhgoQwey7G7PTa012c6IwHyr8QjLYtOvAhvSBE26AIlj9C+5uL3zgO0CrN
	1UoBg1dWM7X6j39iz+IzMhpvgcGBBO7ePBqBLcDNjPWRrKhooiuLIN7EMDkp+w==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH v3 0/4] MTD physmap: Adding reserved RAM support and fixing
 reserved_mem limitations
Date: Wed, 07 Jan 2026 14:04:51 +0100
Message-Id: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPNZXmkC/3WMwQ7CIBAFf8XsWQwLUqon/8N4aGHbkkgx0BBN0
 3+X9qQmHuflzcyQKDpKcN7NECm75MJYQO53YIZm7Ik5WxgEFwoRNfOTZZ58pL48WV1LbtBazQ1
 BcR6ROvfcetdb4cGlKcTXls+4rv9KGRlnupWqQjT61FSXNoTp7saDCR7WVhYfvsBfXxTfKCVVZ
 w21dPz2l2V5Aw0XtN/sAAAA
X-Change-ID: 20251117-mtd-memregion-8830c1dd70ce
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Hello,

While working on adding reserved RAM support to the MTD physmap
driver, I encountered a limitation in the kernel's reserved memory
support: although the Device Tree specification allows multiple reg
entries for a memory-region node, the kernel only processed the first
one. This limitation prevented proper support for reserved RAM regions
in MTD.

This series addresses both issues:

First, the reserved memory support is extended to fully support
multiple reg entries per memory-region node, ensuring compliance with
the Device Tree specification.

Then, with this foundation in place, the series updates the MTD
physmap driver to support reserved RAM regions. The DT bindings are
extended to allow memory-region for RAM access, and the physmap driver
is modified to use these regions.

Gregory

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
Changes in v3:

- Fix the placement of the __free() annotation in patch 4, and also
  address the same issue in the current codebase with patch 1.
- Add MTD properties directly into /reserved-memory nodes, as
  suggested by Rob.
- Rebase on v6.19-rc1
- Link to v2: https://lore.kernel.org/r/20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com

Changes in v2:

- Properly managed cases where register entries used by the memory
  region are out of order, particularly when one or more register
  entries are mixed with memory region entries in an other node.
- Used "memlog" as the node name instead of "sram," which was misleading.
- Link to v1: https://lore.kernel.org/r/20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com

---
Gregory CLEMENT (4):
      of: reserved_mem: Fix placement of __free() annotation
      of: reserved_mem: Support multiple 'reg' entries for memory-region
      dt-bindings: mtd: physmap: Allow using memory-region to access memory resources
      mtd: physmap: Add support for RAM reserved memory regions

 .../devicetree/bindings/mtd/mtd-physmap.yaml       |  69 +++++++---
 drivers/mtd/maps/physmap-core.c                    |  73 ++++++++--
 drivers/of/of_reserved_mem.c                       | 150 ++++++++++++++++++---
 drivers/of/platform.c                              |   2 +
 include/linux/of_reserved_mem.h                    |   4 +
 5 files changed, 252 insertions(+), 46 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251117-mtd-memregion-8830c1dd70ce

Best regards,
-- 
Grégory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


