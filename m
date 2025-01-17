Return-Path: <devicetree+bounces-139295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BFA1500B
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 689E83A8DE8
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209F81FF608;
	Fri, 17 Jan 2025 13:04:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from riemann.telenet-ops.be (riemann.telenet-ops.be [195.130.137.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B6C1FECBA
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 13:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119097; cv=none; b=l8Aq1nBWih1dIgvWeQhlDAtQugw7vjDrAgD+vxJo/TYa0D2KJy9frL78PzRp0/fR8/wJSCOS+3fA1Z3hm8vTDRb7W9szbE6nqyifoqBMjZnDdVx3vZMvYjYuGmRE1lPEcOngXifNijgOhhRlRlLeARnPJVVLhJUoExIQzYuJtB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119097; c=relaxed/simple;
	bh=8hqTgJahLL+NMAv7Hz+CY+deA9s/zG/F97tj5MTL2Ss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iYVImH4GQPe9/trW3IQeyxB0z23rcIhGMfitRoHyXwX1EZ1UyDmM5uQ46Tu8Q8+NLJ0XhCrIgRM8z7wbUB7Nv+FkSTDtV9ojl15Q/mGroBVk/duKqVrF1fRE92b5HHlNDjGU4BJmnbKxAc0wsjEGaBnMRHx8NJBEGR8Z0VuTP4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4YZKhJ384nz4xKDB
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 14:04:48 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by baptiste.telenet-ops.be with cmsmtp
	id 2D4g2E00427fVKr01D4g4o; Fri, 17 Jan 2025 14:04:40 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU2-35Ga;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wBF-3g08;
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
Subject: [PATCH v2 3/3] phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 || MCHP_LAN966X_PCI
Date: Fri, 17 Jan 2025 14:04:38 +0100
Message-ID: <0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
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

The Microchip LAN966X SerDes PHY is only present on Microchip LAN966x
SoCs.  However, when used as a PCI endpoint, all peripherals of the
LAN966x SoC can be accessed by the PCI host.  Hence add dependencies on
SOC_LAN966 and MFD_LAN966X_PCI, to prevent asking the user about this
driver when configuring a kernel without Microchip LAN966x SoC and PCIe
support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 drivers/phy/microchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
index 38039ed0754c6548..2f0045e874ac81ad 100644
--- a/drivers/phy/microchip/Kconfig
+++ b/drivers/phy/microchip/Kconfig
@@ -15,6 +15,7 @@ config PHY_SPARX5_SERDES
 config PHY_LAN966X_SERDES
 	tristate "SerDes PHY driver for Microchip LAN966X"
 	select GENERIC_PHY
+	depends on SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
 	depends on OF
 	depends on MFD_SYSCON
 	help
-- 
2.43.0


