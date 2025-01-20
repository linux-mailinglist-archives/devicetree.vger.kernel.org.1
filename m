Return-Path: <devicetree+bounces-139796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 312B8A16E7D
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 15:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0903B1884BA1
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C17B1E3DC8;
	Mon, 20 Jan 2025 14:35:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cantor.telenet-ops.be (cantor.telenet-ops.be [195.130.132.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B7F1B4F02
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 14:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383717; cv=none; b=nyoL9t7ZCKs03PA05aHA/7D4yz55L9h9sTrfxuZkuG0+y1pehIq8jfheYY8epgfiV7PWEf+4FesoCbiJ/P4x92DV2Wsjr9oi5tC7pEzo1/DYHB+1P4JCpOaHQlAvaKktyHOFAdjHtXs8LLdI1m5DaAwzXmOmxk8L1y/sjDZC8PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383717; c=relaxed/simple;
	bh=yoMFeNOYx/fRih0B0q5kqS006hBl9QR0DznFXuOlvyY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nMyFCGnkHfHgf/7BmbBGLx9hnPH1tYbsscmwk+A/kiqSnZsAnMuPDMy/so3PyiXMAHb0BoKAOzgCisxBcXdPJFfEa8lFOhqaX0LMxmaU5rY2JS0OPxp4YFPBdXcCs4rgHjMXuKyyai+Rxxx6+PD6N6I5aqRv+uvWX//nPn0WwlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by cantor.telenet-ops.be (Postfix) with ESMTPS id 4YcCYF4v8cz4x4K5
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 15:35:13 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by michel.telenet-ops.be with cmsmtp
	id 3Sb42E0090raqVW06Sb4lJ; Mon, 20 Jan 2025 15:35:05 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTR-3Hu6;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZO-12VC;
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
Subject: [PATCH v3 0/3] LAN966x PCIe endpoint cleanups
Date: Mon, 20 Jan 2025 15:35:00 +0100
Message-ID: <cover.1737383314.git.geert+renesas@glider.be>
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

Changes compared to v2[1]:
  - Add Acked-by,
  - Fix references to bogus MFD_LAN966X_PCI symbol.

Changes compared to v1[2]:
  - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
    PCI endpoint mode,
  - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
    symbol that ended upstream,
  - New patches [1/3] and [3/3].

Thanks for your comments!

[1] "[PATCH v2 0/3] LAN966x PCIe endpoint cleanups"
    https://lore.kernel.org/cover.1737118595.git.geert+renesas@glider.be

[2] "[PATCH] irqchip: LAN966X_OIC should depend on SOC_LAN966 || MFD_LAN966X_PCI"
    https://lore.kernel.org/578dafcbdf8287e73dd30e96e23814b8c029ea96.1721719060.git.geert+renesas@glider.be

Geert Uytterhoeven (3):
  dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify
    endpoint use
  irqchip: LAN966X_OIC should depend on MCHP_LAN966X_PCI
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

