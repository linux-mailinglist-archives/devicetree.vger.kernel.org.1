Return-Path: <devicetree+bounces-246205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC42CB9E03
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AFD4305F38B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E14A285CB4;
	Fri, 12 Dec 2025 21:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="BfpYjokR"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BD03B8D5D;
	Fri, 12 Dec 2025 21:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765574526; cv=none; b=o82m7Rn43JemhTjBT4ZGZJ83xL8OUYYrt1xy4VwFbKTKZxfzJ5xOwEkbd/rUn9fHCwd2cHanMramV9nJxtl+aI2xzAtHsyCGgLu3hAp26cz0hQzPP4Qbl1og7IzlsiVpyB3ZhCfszemN95whNJVKPhiI5fg4R7m1mlBrvxUCCww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765574526; c=relaxed/simple;
	bh=4GtvOFererhWUuFi0CkJf91AedoH8NmNvVJyMlu0740=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b1i3tdF0fNyHO7SBMyioHJPW4vZstU+xWpUm46EXKBstzDa7aCatDlc/GCeu8xpMfgGsooflrC+O/sYS87tafTSDCJ/YNgYw716VSZ6fhpY/Y4ZTMDpdQS/lsqWO/hmQseV8Ncr/WkG21GKaakXB3OppuMYbkYTGM64ws641MHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=BfpYjokR; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765574427;
	bh=IKuzSWtohKF/9ET2bz7WQiHSXrsUgF5VTXfnh4mpkBE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BfpYjokRo+aQysQQE960lnMzdg85mW88b15iNhCSqEyBylI8FaxC7f3JYP5UO2ZUE
	 L/5kq+nEE8Z5eyY/R7nPzfGLx6V3BNJZdJrZrB4ObfciFW59fgviAFvsZDVHfNRoA+
	 0beW5SDawu/pyGRbWPL21HC6xIhjlLBzBJatEdmwjCyRbag+tYaKTWm8Xin3a2P4yT
	 x5ceK0D24cl8CK+pRddDeAU69xw8q0auqo5NAK9vuvY79ijJpcPDdJfS4ZqXimpRhA
	 z0Pp+UHR4klwfMFEbtJVJkh4J+iFMy8WWuI76b+zfTzWurWXwdHHpDVx3n4px7BB+H
	 cXGnXMX2NX55Q==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 50639B221414;
	Fri, 12 Dec 2025 22:20:24 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Hal Feng <hal.feng@starfivetech.com>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/3] riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite board
Date: Fri, 12 Dec 2025 13:19:19 -0800
Message-ID: <20251212211934.135602-3-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20251212211934.135602-1-e@freeshell.de>
References: <20251212211934.135602-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Append "starfive,jh7110" compatible to VisionFive 2 Lite board in the
least-compatible end of the list.

Appending "starfive,jh7110" reduces the number of compatible strings to
check in the OpenSBI platform driver. JH-7110S SoC on this board is the
same as JH-7110 SoC however rated for thermal, voltage, and frequency
characteristics for a maximum of 1.25GHz operation.

Link to previous discussion suggesting this change:
https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Fixes: 900b32fd601b ("riscv: dts: starfive: Add VisionFive 2 Lite board device tree")
Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: E Shattow <e@freeshell.de>
---
 .../boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
index b96eea4fa7d5..b9913991a1b7 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "StarFive VisionFive 2 Lite";
-	compatible = "starfive,visionfive-2-lite", "starfive,jh7110s";
+	compatible = "starfive,visionfive-2-lite", "starfive,jh7110s", "starfive,jh7110";
 };
 
 &mmc0 {
-- 
2.50.0


