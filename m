Return-Path: <devicetree+bounces-139794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273CA16E7A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 15:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C70C51884A53
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72ECA1E32B7;
	Mon, 20 Jan 2025 14:35:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDC21B4F02
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 14:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383715; cv=none; b=uiXzksQz4ZnZbI3z/2jvBZX8YIPiSdn1k4Puu9LhErqrAda+FE01Or6891FeAxukHWOVymQQj1Ubla+BYEV9a1+NfS8SNMhtgmsUlBKLO3DLmw6FlxmqtLc1IMww4X8NpvNjGJSZd0pQdpych8vVWi67rihkYJaX84EIsQVTP+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383715; c=relaxed/simple;
	bh=B2UT981Fu3HSVTKAqwf0SNcrfr/ndTZprIGo6/oHasE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FFAvGmlblHseSHETsmO/8tq4bZGSpDHDzFJM3c6lNKT1pRTBOykvSt/o6kor4tkN0AhTbOjXoa7Gurht2KmD15pQiA5N4SiophdjtLPa72Hh7t+W6eKRT82zB8/F6eI4B60knEYdghPQWv/Lk84itGjr6TNpf8+5KGSaIfQrCNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by albert.telenet-ops.be with cmsmtp
	id 3Sb42E00H0raqVW06Sb41D; Mon, 20 Jan 2025 15:35:05 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTa-3YKN;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZZ-1bBT;
	Mon, 20 Jan 2025 15:35:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v3 3/3] phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 || MCHP_LAN966X_PCI
Date: Mon, 20 Jan 2025 15:35:03 +0100
Message-ID: <369233dfded88ff6fb342e03794fe31985d84d82.1737383314.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
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
SOC_LAN966 and MCHP_LAN966X_PCI, to prevent asking the user about this
driver when configuring a kernel without Microchip LAN966x SoC and PCIe
support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Herve Codina <herve.codina@bootlin.com>
---
v3:
  - Fix symbol name in description,
  - Add Acked-by,

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


