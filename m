Return-Path: <devicetree+bounces-126216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9A89E0AED
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 19:25:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77217B2E5A9
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B40B19AA58;
	Mon,  2 Dec 2024 16:38:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from weierstrass.telenet-ops.be (weierstrass.telenet-ops.be [195.130.137.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17D5175D26
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157500; cv=none; b=NSzR3JWWO+dU5TDtKkpdbvdAfx9vNfcNPCkVvlH53x7RcKugrkhSKnG6d6qWeDzwvaSf+RrcpUsgSUi/80SuxM42guYFNeA/djFdEn4EiqPg17bIRD3KAVECzfTm0lElUUFquU0e5m2EHuHpnKpfb31Jwbh8cRiLJh0c9Fgj0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157500; c=relaxed/simple;
	bh=F7Y+ASAl+2CIIsRw0IkSzwTNx3dwuThmPPRb4Hptf+c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pPtqt28TRNLccy2I6aB2Jlhd3sI4pTLJonLqGzU5J9N8NiQoY6I7O7YDvoa8vMtBSedKbtevhbw6XxWBQr0dmyoUrx/JAKDeho0qj4AYtbpeh3BG7epE2e5mTd6xTcc3UUy6HUrO3ayuCOm/xm5gpn5w/xM2hENZl2j6Qt2i0JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by weierstrass.telenet-ops.be (Postfix) with ESMTPS id 4Y28Qk35f9z4x6qT
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 17:30:22 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:17fe:4001:68cd:b1ae])
	by michel.telenet-ops.be with cmsmtp
	id jsWE2D00f1yjZj406sWEEV; Mon, 02 Dec 2024 17:30:15 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tI9JO-0007uN-P5;
	Mon, 02 Dec 2024 17:30:14 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tI9JO-007Pna-Mp;
	Mon, 02 Dec 2024 17:30:14 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 4/5] arm64: dts: renesas: Add R8A779G3 SoC support
Date: Mon,  2 Dec 2024 17:30:10 +0100
Message-Id: <978c41f932aa2dccd46ad91fc1ddfabacd1c254c.1733156661.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1733156661.git.geert+renesas@glider.be>
References: <cover.1733156661.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Renesas R-Car V4H ES3.0 (R8A779G3) SoC, which is an
updated version of the R-Car V4H (R8A779G0) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/r8a779g3.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a779g3.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r8a779g3.dtsi b/arch/arm64/boot/dts/renesas/r8a779g3.dtsi
new file mode 100644
index 0000000000000000..0295858a02602295
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a779g3.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the R-Car V4H (R8A779G3) SoC
+ *
+ * Copyright (C) 2024 Glider bv
+ */
+
+#include "r8a779g0.dtsi"
+
+/ {
+	compatible = "renesas,r8a779g3", "renesas,r8a779g0";
+};
-- 
2.34.1


