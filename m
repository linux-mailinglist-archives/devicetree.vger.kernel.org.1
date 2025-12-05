Return-Path: <devicetree+bounces-244849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D0DCA9708
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 23:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54E4D302CC28
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 22:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD692DECA1;
	Fri,  5 Dec 2025 22:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="yJRRRkih"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout1.routing.net (mxout1.routing.net [134.0.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620012E11BC;
	Fri,  5 Dec 2025 22:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764972015; cv=none; b=eRBD+jBWiuXpPsOECzb4rIilWM5fp3kJaE03oueMB4DTyC+1EcV1YoQjsPsvapMMqEN5d27LGniDtGZFt/k41LVt7RL72KAd13xW+870J+z0mQodhVN/7Se3QRw0o2u3tY2Z01vbCmc0knUOCk58y3jdYyBkuo5IfB4LTFMG7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764972015; c=relaxed/simple;
	bh=h3RIxJkW9rRmUV+QIwsHT+O1Z85Ipm+cyH8Ox6bnGOI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b9lBCNzkbt21vJVvVce/V7aTchTsCCv6JoB299thqD2QBay5M/bzZcARvsqwuNiw9CiEngzvlS9GZfA/yA7AcMlNhGBu3otCu0Dx4U9JFPbwUS/ypkdVNITTspNvWzoS/kyZwJopsCFDNmWsMVaJz3yMY0EOf1aY0ePlzwtKybE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=yJRRRkih; arc=none smtp.client-ip=134.0.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout1.routing.net (Postfix) with ESMTP id 1BE7A3FD50;
	Fri,  5 Dec 2025 22:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1764972005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Bsaeh+R85W3yqBXY0/3dvY5ZY1X6APknzRRJmY7imCA=;
	b=yJRRRkihclJuRSI/DLO1f3PO8oASBGmyaBC+rF5SUnfv3zT3xsbKyKAU+KRrSq5t7crTf+
	2Nx695LypGQojaYqtGjLjg/HcFW4QTJuJ1q8qn01KK8KLph2NxfimDi/actEOVldkm5z1Q
	N108qUsFeV8T4xwo6l+ef9z+zSDJVZA=
Received: from frank-u24.. (fttx-pool-157.180.225.155.bambit.de [157.180.225.155])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id E5F1F1226F1;
	Fri,  5 Dec 2025 22:00:04 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH] arm64: dts: mediatek: Apply mt8395-radxa DT overlay at build time
Date: Fri,  5 Dec 2025 22:59:38 +0100
Message-ID: <20251205215940.19287-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Rob Herring (Arm)" <robh@kernel.org>

It's a requirement that DT overlays be applied at build time in order to
validate them as overlays are not validated on their own.

Add missing target for mt8395-radxa hd panel overlay.

Fixes: 4c8ff61199a7 ("arm64: dts: mediatek: mt8395-radxa-nio-12l: Add Radxa 8 HD panel")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
This will show a warning [1] in upcoming 6.19.

Note that if it is desired that the combined .dtb is not installed, then
the combined .dtb should be added to 'dtb-' variable instead.
---
extracted missing part from [2] with updated commit title/description
after my bananapi series [3] to solve all warnings. Added Fixes-tag to
make sure it lands in 6.19.

[1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
[2] https://patchwork.kernel.org/project/linux-mediatek/patch/20251117211306.725678-1-robh@kernel.org/
[3] https://patchwork.kernel.org/project/linux-mediatek/cover/20251119175124.48947-1-linux@fw-web.de/
---
 arch/arm64/boot/dts/mediatek/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index cac8f4c6d76f..3f76d9ce9879 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -166,6 +166,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-grinn-genio-700-sbc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
+mt8395-radxa-nio-12l-8-hd-panel-dtbs := mt8395-radxa-nio-12l.dtb mt8395-radxa-nio-12l-8-hd-panel.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
 
 # Device tree overlays support
-- 
2.43.0


