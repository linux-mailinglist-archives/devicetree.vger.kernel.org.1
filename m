Return-Path: <devicetree+bounces-139294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A38A1500A
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74A323A929E
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC72D1FDE1B;
	Fri, 17 Jan 2025 13:04:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC041FF1CB
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 13:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119091; cv=none; b=JmZNGZwLDPwicP55RNUc004FPYSQlr0hIt/NpbSOoDhU5rWxkAZOh1u5lGBj/i0ycZ6Sjeh6G6c5p2JrGjOUL5Rs2eA8BiyiS7Y4futbGDOEFTt4d49uySvw4Y9kNcs5oVVxczwzon0PHp4OYmtQzWfNbQZsCAdsTTizuRWTuXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119091; c=relaxed/simple;
	bh=0UO3u5nfdfgQJ+zubDx33rKWmIcfceK/PZGAyHKNBK0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mSk/tX0+dG5coG4JSM2FVNqpQypmXVqmACF9INwKvnB6P25K4FxMXFevJqEzS5oA+mhSpCDd5NCRTgAc5ZJ2yrwH4TdqbrDkCZlFZVY55zJD6Ao154O6ekDod/muDyqHxC6BseOHkXzrUKVnJbp8uy4TKsxRxqucGWxZj8VrvbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by albert.telenet-ops.be with cmsmtp
	id 2D4g2E00927fVKr06D4gPu; Fri, 17 Jan 2025 14:04:42 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU1-35X7;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wBA-3YUY;
	Fri, 17 Jan 2025 14:04:39 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Herve Codina <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 2/3] irqchip: LAN966X_OIC should depend on MFD_LAN966X_PCI
Date: Fri, 17 Jan 2025 14:04:37 +0100
Message-ID: <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Microchip LAN966x outband interrupt controller is only present on
Microchip LAN966x SoCs, and only used in PCI endpoint mode.  Hence add a
dependency on MCHP_LAN966X_PCI, to prevent asking the user about this
driver when configuring a kernel without Microchip LAN966x PCIe support.

Fixes: 3e3a7b35332924c8 ("irqchip: Add support for LAN966x OIC")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
    PCI endpoint mode,
  - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
    symbol that ended upstream.
---
 drivers/irqchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 22f5fbd41f65d97e..cf713b6e9cc9346f 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -169,6 +169,7 @@ config IXP4XX_IRQ
 
 config LAN966X_OIC
 	tristate "Microchip LAN966x OIC Support"
+	depends on MCHP_LAN966X_PCI || COMPILE_TEST
 	select GENERIC_IRQ_CHIP
 	select IRQ_DOMAIN
 	help
-- 
2.43.0


