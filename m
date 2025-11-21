Return-Path: <devicetree+bounces-241194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B660BC7A9B1
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE8FB4E278B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538542EB861;
	Fri, 21 Nov 2025 15:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Ao77SuV1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C280B2D7388;
	Fri, 21 Nov 2025 15:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763739775; cv=none; b=bVmUI+uokSBVtTFbiNlh2Xjknc/m/PWyypx8/mlpWJ0rV01ts2mH/3ySo86OARLwN9V+WlvdaWBW6TIgj/2F8CqCnml9b2ujCov26Q3u40A7BqfSV474UesS0suX6soNTIPfzuvKGlHS6oxBxrAR2dBaFiOhdzamz5do6ma2qvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763739775; c=relaxed/simple;
	bh=AyzzxToqnIAsSlOdhPRR7RN98+9hvID79dbBdLzfwko=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kuWEqDIx0BvaA3sJHxfFE8K+m4ARWXS0tGApeZb+L8AT2JJ2V4mnPpYFF6d4c6PBkZnQjuSEaIPFQiO/vIN/hYZ873L31aKSdrqYTMYEQ1+aLuAGTDdfb+PG01sfbrJTgnqsvNVVEvLcHmbhl9FiLULHcCn0kt+EN/YfGKrzbBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Ao77SuV1; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 522911A1C94;
	Fri, 21 Nov 2025 15:42:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 19DEE60719;
	Fri, 21 Nov 2025 15:42:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1DFBD10372188;
	Fri, 21 Nov 2025 16:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763739760; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=yTl8T9kOPsRlZLi/qxLvoBg6wGqTVmaXfk9LwQI9gG0=;
	b=Ao77SuV1edzIejLmr9NePiyIi6sDLyET5aHhLyRUZYC3OmM3c5LiAnuKMdqHGrow6OWaCg
	54OyYzdJpRo81tUPqvjP0zv6xlkRPt85CCRGCRiOYHiBIP2y5cn2YoUj2DjiLR7PJIN3dY
	71M+9AbGuTSCcGXHjwMlGbxF4E2wt+yNyODv0jKqaOs3pBZq0qJSQxoOZ1i90/MsymcfIS
	azL8tDVsuXpqOIY9ZmIrQ8/HUB1WlepKdtSH6886eq3/qZQTc3fMjKhPxmNbXsNVoIIXTN
	Pq0EvQQzy8Nl4Qbs44rAVOTSCz4g+r0LyuACqKWf3f/typfuD+/7/Iu9hTbnjA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH v2 0/3] MTD physmap: Adding reserved RAM support and fixing
 reserved_mem limitations
Date: Fri, 21 Nov 2025 16:42:34 +0100
Message-Id: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAGqIIGkC/3WMQQ7CIBBFr9LMWgxD01JdeQ/TRQtjO4kUA4RoG
 u4udu/y/fz3dogUmCJcmx0CZY7stwrq1IBZp20hwbYyKKk6RNTCJSscuUBLfYphaKVBa7U0BNV
 5BXrw++jdx8orx+TD58hn/K3/ShmFFHpuux7R6MvU32bv05O3s/EOxlLKF7EcAKusAAAA
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
extended to allow memory-region phandles for RAM access, and the
physmap driver is modified to use these regions.

Gregory

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
Changes in v2:

- Properly managed cases where register entries used by the memory
  region are out of order, particularly when one or more register
  entries are mixed with memory region entries in an other node.
- Used "memlog" as the node name instead of "sram," which was misleading.
- Link to v1: https://lore.kernel.org/r/20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com

---
Gregory CLEMENT (3):
      of: reserved_mem: Support multiple 'reg' entries for memory-region
      dt-bindings: mtd: physmap: Allow using memory-region to access memory resources
      mtd: physmap: Add support for RAM reserved memory regions

 .../devicetree/bindings/mtd/mtd-physmap.yaml       |  59 ++++++---
 drivers/mtd/maps/physmap-core.c                    |  56 +++++++--
 drivers/of/of_reserved_mem.c                       | 139 +++++++++++++++++++--
 include/linux/of_reserved_mem.h                    |   4 +
 4 files changed, 218 insertions(+), 40 deletions(-)
---
base-commit: b55d426c390f2a4762b2a88b113cc44c37e08e46
change-id: 20251117-mtd-memregion-8830c1dd70ce

Best regards,
-- 
Grégory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


