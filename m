Return-Path: <devicetree+bounces-239482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A599DC65566
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 170764EEBBA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F9A308F05;
	Mon, 17 Nov 2025 17:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EKFokzdd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDC7307AE3
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398831; cv=none; b=m9p74kYbs5BgxuN8wi+Sgdmmq6mTrCoPbrXydFHHywyq4Bp1LRhMv8T4bAlOhjosBw3IWmcGQb6hxfaRQEtWC0yjTz//1oDVssA15mancJyVwacXBs+TuBd5YLX6lVYqLfMxjut8JytsxuO8saP2/Cl0nNoZ3kW4qFc77smyAQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398831; c=relaxed/simple;
	bh=MjOR6MWaSqdARevq9w4THVQluyiiSbWPsiWSsoS2mwU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UiOmHEmycIjSprXFxt/PjeVgIKBtAPxWZqylwPwRz3cpkry1/tcAf1zcZC/W7eWYwE3pTBvktwQmob8zVKMJGeLcFVJISgCdphUCGiMhNvHCHwt1k6/yTYMVEU7CVhaVEGkbe9aD6cRhQYWFJzRJajThW0MaLoCMUMti/j2rc/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=EKFokzdd; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 39B941A1A33;
	Mon, 17 Nov 2025 17:00:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0F0AA606B9;
	Mon, 17 Nov 2025 17:00:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8B7F510371894;
	Mon, 17 Nov 2025 18:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763398826; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=JXCaUs8U/JNspRHlN3rFEQiKScpBbxa26neT4DytoGQ=;
	b=EKFokzddJv+9jr2XFsIb2dkNyIwhhthpKzNrS/o35e2YJRysHcw4GGO1Jpy/WdQv6mMEX2
	ETgbo1oYpSas9p216gPRGy9d8jeIsclM0VObnKkPkNrXkLdYegb2EKHytN63ruot3AQ1QJ
	6P9SjSjnbJAv8XP3We42dJAWgewBKciG//LuA2+0jIXzrx95ztSqcvMBwR0Z/ejbRfmUvk
	BMxoZd/J2dcfcHnlj+lC5VlMGaNM+VQv2NU+ywsQtdufZubJUpQ6frDm8Nl8EqZl1aYqoy
	vxkqnAIvyNrCw+KfGesBrY22i+fhCxMmh1s6KMtCaZB46OMK5piAPWQDq81+/Q==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 0/3] MTD physmap: Adding reserved RAM support and fixing
 reserved_mem limitations
Date: Mon, 17 Nov 2025 18:00:13 +0100
Message-Id: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJ5UG2kC/x2MQQqAIBAAvyJ7TnCNUPpKdAjdbA9aaEQg/j3pO
 DAzFQplpgKzqJDp4cJn6oCDAHdsKZBk3xm00hMiGhlvLyPFTKGb0tpROfTeKEfQmyvTzu//W9b
 WPpkOQ69fAAAA
X-Change-ID: 20251117-mtd-memregion-8830c1dd70ce
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
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
Gregory CLEMENT (3):
      of: reserved_mem: Support multiple 'reg' entries for memory-region
      dt-bindings: mtd: physmap: Allow using memory-region to access memory resources
      mtd: physmap: Add support for RAM reserved memory regions

 .../devicetree/bindings/mtd/mtd-physmap.yaml       |  59 ++++++---
 drivers/mtd/maps/physmap-core.c                    |  56 ++++++--
 drivers/of/of_reserved_mem.c                       | 141 +++++++++++++++++++--
 include/linux/of_reserved_mem.h                    |   4 +
 4 files changed, 220 insertions(+), 40 deletions(-)
---
base-commit: b55d426c390f2a4762b2a88b113cc44c37e08e46
change-id: 20251117-mtd-memregion-8830c1dd70ce

Best regards,
-- 
Grégory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


