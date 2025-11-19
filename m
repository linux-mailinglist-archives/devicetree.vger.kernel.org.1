Return-Path: <devicetree+bounces-240379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423AC70905
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7C2FA34A191
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A40F30F7FE;
	Wed, 19 Nov 2025 17:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="h1pkhQ7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout2.routing.net (mxout2.routing.net [134.0.28.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D8130E0E7;
	Wed, 19 Nov 2025 17:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763575149; cv=none; b=iXXR36mGmWF0SI8+UWhABzxaudZB8dA2+U1RbC/6cuyv13JUohcZ1oJyXbJEoM+SvPpiNJyBpxLFfNd99IeNdOqqegv7olwXaLXD9TjY6i7GIGeGT1XKL/SQA0OtFAo4I+Kg2XkZkDjIwpAUKf1fXIm0yucLFkQfy3BNxC9EWAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763575149; c=relaxed/simple;
	bh=GIQ1OHRCHMJPLvY5z/iD5R4YJVTyNbwoFOPEACHZt44=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jW34TfLEi2F6DzbeBUpf6aUOO3iHb9/a0WIeqNo/qrYR9pMRj3V4913TP8W2iroOXG55h6H2l5ARf/YrwcBvvNZ6qQ6JZH/vbeb4X2Rd90kYDaOnoChtOShfbEZ0OxE/UN2Up11UGVhpzERbnor4nYdPNOJfINI14ZvJhFvINIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=h1pkhQ7o; arc=none smtp.client-ip=134.0.28.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout2.routing.net (Postfix) with ESMTP id 1C4B25FF2F;
	Wed, 19 Nov 2025 17:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1763574700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mz1Hei/9QJRhAecU/xXAdrbHkGMc20BKiYFo6RjYfNw=;
	b=h1pkhQ7oO0mI5BKEEuGV744muaLAeSUioojkJsuQ1XyGa1C6H0SN+rHH8qlOpUNMgPD9f8
	IzQrJduvjp2jn881kD1GjkrR7RYRoWXBz3IKCbUtH5+fVwc44PrI7bNZ3K/pH4e9BhmBy2
	83L0jLnVGzMP6rSrqzPuKgCP5rPB8aQ=
Received: from frank-u24.. (fttx-pool-194.15.82.239.bambit.de [194.15.82.239])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id E38A61225D8;
	Wed, 19 Nov 2025 17:51:39 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: mediatek: mt7988: add dtbs with applied overlays for bpi-r4 (pro)
Date: Wed, 19 Nov 2025 18:51:23 +0100
Message-ID: <20251119175124.48947-3-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119175124.48947-1-linux@fw-web.de>
References: <20251119175124.48947-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Frank Wunderlich <frank-w@public-files.de>

Build devicetree binaries for testing overlays and providing users
full dtb without using overlays for Bananapi R4 (pro) variants.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
It is not required to build all possible combinations, only for
common usecases and to test if all overlays can be applied.
---
 arch/arm64/boot/dts/mediatek/Makefile | 32 +++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 77d76730d61b..cac8f4c6d76f 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -52,6 +52,38 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-cn18.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-emmc.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-sd.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtbo
+mt7988a-bananapi-bpi-r4-emmc-dtbs := \
+	mt7988a-bananapi-bpi-r4.dtb \
+	mt7988a-bananapi-bpi-r4-emmc.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-emmc.dtb
+mt7988a-bananapi-bpi-r4-sd-dtbs := \
+	mt7988a-bananapi-bpi-r4.dtb \
+	mt7988a-bananapi-bpi-r4-sd.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtb
+mt7988a-bananapi-bpi-r4-2g5-emmc-dtbs := \
+	mt7988a-bananapi-bpi-r4-2g5.dtb \
+	mt7988a-bananapi-bpi-r4-emmc.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-2g5-emmc.dtb
+mt7988a-bananapi-bpi-r4-2g5-sd-dtbs := \
+	mt7988a-bananapi-bpi-r4-2g5.dtb \
+	mt7988a-bananapi-bpi-r4-sd.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-2g5-sd.dtb
+mt7988a-bananapi-bpi-r4-pro-8x-emmc-dtbs := \
+	mt7988a-bananapi-bpi-r4-pro-8x.dtb \
+	mt7988a-bananapi-bpi-r4-pro-emmc.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-8x-emmc.dtb
+mt7988a-bananapi-bpi-r4-pro-8x-sd-dtbs := \
+	mt7988a-bananapi-bpi-r4-pro-8x.dtb \
+	mt7988a-bananapi-bpi-r4-pro-sd.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-8x-sd.dtb
+mt7988a-bananapi-bpi-r4-pro-8x-sd-cn15-dtbs := \
+	mt7988a-bananapi-bpi-r4-pro-8x-sd.dtb \
+	mt7988a-bananapi-bpi-r4-pro-cn15.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-8x-sd-cn15.dtb
+mt7988a-bananapi-bpi-r4-pro-8x-sd-cn18-dtbs := \
+	mt7988a-bananapi-bpi-r4-pro-8x-sd.dtb \
+	mt7988a-bananapi-bpi-r4-pro-cn18.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-pro-8x-sd-cn18.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8167-pumpkin.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
-- 
2.43.0


