Return-Path: <devicetree+bounces-247140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F8CC4C39
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DC1D304C2BE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF57033C524;
	Tue, 16 Dec 2025 17:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMlFCyv3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BAD33C50A;
	Tue, 16 Dec 2025 17:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765907965; cv=none; b=k5eBfyoqE2Vv3B7wHEdkWpqw0VWOpmJLMxsYipWvwOamHPVrH37l8LG4rSQ5S9k6JJafsBA+Yut1JXbKA0q8QnD0tqk5tDSteE/ORemYIzZawKta5ti9Z2m4ZDv65rzh4ECL8ltkNr1++rMUXl2Ut5oh+yi0PeQuSyDaIF79X9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765907965; c=relaxed/simple;
	bh=TIgqwdHAusKqb6Pr4Pt95gvNZkar7d/zsw7q3oG2Xo4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CUEVckr2WlI9tG1//X7qrCNH5XdB04YmvURq03Uqp+/eFb9XKxo9aYve9m40+MVa7Z31ojt8KfJBUMtN3P3IwvSHvSSDFNNi01j5C2G5BJ0ZP6+0/UtuBiawVKJ5WWit2E3foH6WyaSBtGdQ3PFz2lWu9Ey9WeJntsLcqTMaI6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMlFCyv3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D7DEC2BC87;
	Tue, 16 Dec 2025 17:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765907965;
	bh=TIgqwdHAusKqb6Pr4Pt95gvNZkar7d/zsw7q3oG2Xo4=;
	h=From:To:Cc:Subject:Date:From;
	b=ZMlFCyv3BDj6luflKEHj1GArdq2KGur9v2jKniD16lg6x/F3R9vBpAFDEJHl/9pEm
	 ZiSKcH7edyFFUF4BbvlHKTKL+QX0Ox0yH1WIPG1UrKiAlFw9GSpOYQy87w9zbhExi6
	 Eq9mLCZtcaBwVe2F5UIa7eew9vGskn3N1MSJm5BbUa4m8nw9Zf9pbHebl7S/w/BmbN
	 SBBLokUutMeZHvfuA+uufUxwKaquBLquD00xE5F13NUQwYu+bKvvu25JSteLekI9W1
	 evWJczk7TPL1sW3r2caVNVIbaV9kxvID+7cQdZafTOjO29rDAAY9nEYxP0Zc31INBi
	 HX86toooUD0xg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: xilinx: Drop "label" property on dlg,slg7xl45106
Date: Tue, 16 Dec 2025 11:59:13 -0600
Message-ID: <20251216175914.2791200-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "label" property is not documented for the dlg,slg7xl45106. Nor is
it common to use for GPIO controllers. So drop it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kd-g-revA.dtso | 1 -
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso | 1 -
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kd-g-revA.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kd-g-revA.dtso
index 02be5e1e8686..d0230da47068 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kd-g-revA.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kd-g-revA.dtso
@@ -75,7 +75,6 @@ u3: ina260@40 { /* u3 */
 	slg7xl45106: gpio@11 { /* u13 - reset logic */
 		compatible = "dlg,slg7xl45106";
 		reg = <0x11>;
-		label = "resetchip";
 		gpio-controller;
 		#gpio-cells = <2>;
 		gpio-line-names = "USB0_PHY_RESET_B", "",
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
index b92dcb86e87e..5d1f031bbd89 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dtso
@@ -103,7 +103,6 @@ u14: ina260@40 { /* u14 */
 	slg7xl45106: gpio@11 { /* u19 - reset logic */
 		compatible = "dlg,slg7xl45106";
 		reg = <0x11>;
-		label = "resetchip";
 		gpio-controller;
 		#gpio-cells = <2>;
 		gpio-line-names = "USB0_PHY_RESET_B", "USB1_PHY_RESET_B",
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
index 99ad220d13d6..1d5c95bd6073 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dtso
@@ -104,7 +104,6 @@ u14: ina260@40 { /* u14 */
 	slg7xl45106: gpio@11 { /* u19 - reset logic */
 		compatible = "dlg,slg7xl45106";
 		reg = <0x11>;
-		label = "resetchip";
 		gpio-controller;
 		#gpio-cells = <2>;
 		gpio-line-names = "USB0_PHY_RESET_B", "USB1_PHY_RESET_B",
-- 
2.51.0


