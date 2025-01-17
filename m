Return-Path: <devicetree+bounces-139293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB9A15009
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8A3D3A9202
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A639F1FF7A5;
	Fri, 17 Jan 2025 13:04:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49F31FDE1B
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 13:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119091; cv=none; b=tJG652WCg7pnu6BtOg5jVhTQxEaBsSMLY+9m3EtE5PolxP1ziLbmSvdLux0lE1Y3b7s+cC/+g5CDj2TrElnI/S4b3MUgg1km/e1RPM5UQcobtKXGxdM1cTDMAG8qZprL6Bi302+fbqnHY4Jcz0iFO7qbOQc0rs+ARcfJKg3RVqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119091; c=relaxed/simple;
	bh=mEm+ckLvpF5Fenmr0wgsWj9Dk5iHu3mfMLHHYb2xWNU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sMXcn4GPDI1qsxfhSS951s9LIO14nIcqXunNzGU7ACPW7Y2QoiUBOo641L2UD6VLLSV+9jrVTheK6uWNqRrMECGLUn20ZKBgm7EA8TIeE3LTz5FjtSxH+lhwCkR/pT3Fc8b+70WrHjMuj3OG9j50nmZduISRpLTenYRj1HVwC8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by laurent.telenet-ops.be with cmsmtp
	id 2D4g2E00727fVKr01D4gmD; Fri, 17 Jan 2025 14:04:40 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU4-35XF;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wB4-39fz;
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
Subject: [PATCH v2 0/3] LAN966x PCIe endpoint cleanups
Date: Fri, 17 Jan 2025 14:04:35 +0100
Message-ID: <cover.1737118595.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

This patch series contains various cleanups related to the recent
addition of LAN966x PCIe endpoint support.  They can be applied
independently.

Changes compared to v1[1]:
  - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
    PCI endpoint mode,
  - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
    symbol that ended upstream.
  - New patches [1/3] and [3/3],

Thanks for your comments!

[1] "[PATCH] irqchip: LAN966X_OIC should depend on SOC_LAN966 || MFD_LAN966X_PCI"
    https://lore.kernel.org/578dafcbdf8287e73dd30e96e23814b8c029ea96.1721719060.git.geert+renesas@glider.be

Geert Uytterhoeven (3):
  dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify
    endpoint use
  irqchip: LAN966X_OIC should depend on MFD_LAN966X_PCI
  phy: PHY_LAN966X_SERDES should depend on SOC_LAN966 ||
    MCHP_LAN966X_PCI

 .../bindings/interrupt-controller/microchip,lan966x-oic.yaml | 5 ++---
 drivers/irqchip/Kconfig                                      | 1 +
 drivers/phy/microchip/Kconfig                                | 1 +
 3 files changed, 4 insertions(+), 3 deletions(-)

-- 
2.43.0

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

