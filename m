Return-Path: <devicetree+bounces-244993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD945CAADB2
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 21:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E25613056561
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 20:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC7B277C9A;
	Sat,  6 Dec 2025 20:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="bySTcO7E"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6C91B0F23;
	Sat,  6 Dec 2025 20:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765054102; cv=none; b=VgpD/5MS4w/KX68NywYlSeERneBkR8zbl6SQEAHH6PS9v0X9zdyiEONTOhmtOGivjwkjTtuUFV1i5NiEqHc6V89Xxub/1A/mjV7nmbIjNGs+XPYoqGmIp3379nF+J7uuPGJzOGQi4NbgnJyk7oVtgpJspyn9+NsdwrBzT5v9Y2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765054102; c=relaxed/simple;
	bh=K8lTY0jNflJx0Gw36mGAEk11dvzlV0Ea1fPEq4UD1/U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bYSK+4nYKWUKoCZXk3R1fN2z5OFtSKiK+SGbjOY1dW4X9gClNTEUSZGuOAa19IbceXIcFbd2AO0dxxknPnDjDIxH/p0DKDDQJM5vpfsRmdAC6shdPKtAJO6YAirbqjVhpyZdWH8ikF4ccn3vmLnqjpJ2ZI5RuZkk/N5f8DLbUos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=bySTcO7E; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765054045;
	bh=/hVPiAB1UhekBVxBQYggXVu9VX3NvkQjJuMtLwWXj/M=;
	h=From:To:Cc:Subject:Date:From;
	b=bySTcO7E+iV+2lsZfaGng0ngnuaPFQndvR9zQfJ87eh3Q1ObOxvkSy3kwLPDzDQTW
	 FtswZBfn2B01TPDCht7gyUIo3jR11EyNoIc06xj3/hvI5HEMsni/uoitMgUVO7mMP8
	 KrI0qI2hbxBWP0LHgEA1KXrOc8Eobzp5vWaLdcGiv6lv71IQydVYCcFQEaAuwbdCPT
	 PUwz5yx6FT9Y9xZN3JDsJXbrVPcradIPr44DXi4GF2FiJdgMgXlxFonFvE1t4pLhWW
	 5TQWeL6Trp+Gm3awOQ0THFgX/SnlUhZrmhRbuHnMxSI3xodwcm9Qoree2/9zOJp9lx
	 iat6e/FYjt3fQ==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 611C9B220632;
	Sat,  6 Dec 2025 21:47:22 +0100 (CET)
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
Subject: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110 compatible to VisionFive 2 Lite
Date: Sat,  6 Dec 2025 12:45:30 -0800
Message-ID: <20251206204540.112614-1-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Append starfive,jh7110 compatible to VisionFive 2 Lite and VisionFive 2
Lite eMMC in the "least compatible" end of the list. JH7110S on these
boards is the same tape-out as JH7110 however rated for thermal, voltage,
and frequency characteristics for a maximum of 1.25GHz operation.

Link to previous discussion suggesting this change:
https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Fixes: 900b32fd601b ("riscv: dts: starfive: Add VisionFive 2 Lite board device tree")
Fixes: ae264ae12442 ("riscv: dts: starfive: Add VisionFive 2 Lite eMMC board device tree")
Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: E Shattow <e@freeshell.de>
---
 .../dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts     | 2 +-
 .../boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
index e27a662d4022..7544efa95de4 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "StarFive VisionFive 2 Lite eMMC";
-	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s";
+	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s", "starfive,jh7110";
 };
 
 &mmc0 {
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

base-commit: 5e5ea7f61610239fca058011e7d4f342b34d1558
-- 
2.50.0


