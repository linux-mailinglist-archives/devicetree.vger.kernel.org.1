Return-Path: <devicetree+bounces-246443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BC0CBCD51
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 395473002A50
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 07:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5EE22154F;
	Mon, 15 Dec 2025 07:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="Whmngpeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout3.routing.net (mxout3.routing.net [134.0.28.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE9649659;
	Mon, 15 Dec 2025 07:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765784782; cv=none; b=k4gmc9OamQvRSk4qZyQFdnS1gdDGDCLAV3q4rit5WBaggRLW0q2zfsKb5lvsj5TYz4EOmZhJ9drI2oqwJwEan5YgrU5BJcUaVGUZw1XueNyS8BQkQn91R5hMTftNe6C/Aan/2CPPn8libjAzALpiU2NGhhjW9vxRjCIpLy7f46M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765784782; c=relaxed/simple;
	bh=Wa2rXlHk/urL02kaCh7HRR5+8kgx1Tfe1qc4yIk/cIE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z/aI97usB63g0+OYl2DTzA84CWgt0LsjQbQQ1SpC7F10CPdGwQItkH3qQZ10yV3ciMbSOAJM2gGBIhH4zy2ZgzpAxchxtHn43k78ByVU9ZlAgz0GnRNW/vLR0xm6/s9DZ+QYGxAb5MJjxjYLvLEmjPObW1pZeJ4GOLq79A6rPsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=Whmngpeb; arc=none smtp.client-ip=134.0.28.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout3.routing.net (Postfix) with ESMTP id 6B0486067C;
	Mon, 15 Dec 2025 07:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1765784777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ulck124dMJfdnULyN0n+5eDDExhHKrWCMYXK+eDJ0Y8=;
	b=WhmngpebJFvrSu+zpoEvRSKeY5YNlKw0g8yhcg+3TaXHizwWi7RcC9l8aXaVXuwBqYEwo0
	k6eSW5+rbrXLLnylvVqfP+y+oZdLkK8XWwBy+Ql6gaciTbplvFiNQtupm12pN9DrrecPGu
	VIlQanZWKAAHxGU18b5xeaM0ef9pRSo=
Received: from frank-u24.. (fttx-pool-217.61.145.36.bambit.de [217.61.145.36])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id 80A1A1226B1;
	Mon, 15 Dec 2025 07:46:17 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt7988a-bpi-r4pro: fix model string
Date: Mon, 15 Dec 2025 08:46:08 +0100
Message-ID: <20251215074609.4100-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Frank Wunderlich <frank-w@public-files.de>

Fix incorrect model string in Devicetree for BPI-R4-Pro.

Fixes: f397471a6a8c ("arm64: dts: mediatek: mt7988: Add devicetree for BananaPi R4 Pro")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-4e.dts | 2 +-
 arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-8x.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-4e.dts b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-4e.dts
index c7ea6e88c4f4..621d01e3cd89 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-4e.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-4e.dts
@@ -9,7 +9,7 @@
 #include "mt7988a-bananapi-bpi-r4-pro.dtsi"
 
 / {
-	model = "Bananapi BPI-R4";
+	model = "Bananapi BPI-R4 Pro 4E";
 	compatible = "bananapi,bpi-r4-pro-4e",
 		     "bananapi,bpi-r4-pro",
 		     "mediatek,mt7988a";
diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-8x.dts b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-8x.dts
index c9a0e69e9dd5..bb15bfa5e6ae 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-8x.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro-8x.dts
@@ -9,7 +9,7 @@
 #include "mt7988a-bananapi-bpi-r4-pro.dtsi"
 
 / {
-	model = "Bananapi BPI-R4";
+	model = "Bananapi BPI-R4 Pro 8X";
 	compatible = "bananapi,bpi-r4-pro-8x",
 		     "bananapi,bpi-r4-pro",
 		     "mediatek,mt7988a";
-- 
2.43.0


