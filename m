Return-Path: <devicetree+bounces-240376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E916C708F0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 658C44E1C33
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC7A30FC33;
	Wed, 19 Nov 2025 17:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="OGrFa886"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout4.routing.net (mxout4.routing.net [134.0.28.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F4630DD1F;
	Wed, 19 Nov 2025 17:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763574712; cv=none; b=n9kGcNbCmzlmCVlKP6/aPbpnbTk2spDDDJIDY02DRAuUQfDt0/8OKH3CXYrwbodCqh5k9N1M8OFYeJjTiQGw12b8MywrPDr6fD1hjXD5YycIft128BJhJS8kXb/jZ0mpF3/2e7Jxq5CTwat/rSo81Smt/OStxYZf7ZcTvPrwII8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763574712; c=relaxed/simple;
	bh=14fFsgn5W9ls3LXAg+iBDZfHswLhsc/IdykyVAOxQq0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=focw0s6CR+SlfaE2L5MOoJToSC1Ls1I4m8PJAB6QVnh14ECKSpSpuXcUh9QzcdK+JwxBN5ztazh6yKxSsRUVfzoW9+4Ua9HN5nEdNcAfwCR/fJVXewsEQeWIwMjWJF37cjJr15HYHg0qT2sInkZ88TH66CDzOoYAu7YVGaI5x6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=OGrFa886; arc=none smtp.client-ip=134.0.28.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout4.routing.net (Postfix) with ESMTP id DE830100496;
	Wed, 19 Nov 2025 17:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1763574700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/1g4STQANovnsZYNWV1sflDkn8/Z+KrcOvNhJVz0DmI=;
	b=OGrFa886FDjvTUNa4X4G3NOe06y58gJqa5xj6XK8tylcPeMJPL7c34vbc+xyYMK7Pm7YUS
	YtZabUqvLen18ygNESO44AQMc6mzqD73q2en6fIQyvmJdQ5K7Nb7BbMe39gSylcr9szMrq
	jUU9RXgtTTsSMTgHjCAaGkxDu6ukQUw=
Received: from frank-u24.. (fttx-pool-194.15.82.239.bambit.de [194.15.82.239])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id B52C1122707;
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
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 1/2] arm64: dts: mediatek: mt7986: add dtbs with applied overlays for bpi-r3
Date: Wed, 19 Nov 2025 18:51:22 +0100
Message-ID: <20251119175124.48947-2-linux@fw-web.de>
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
full dtb without using overlays.

Suggested-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
resend of
https://patchwork.kernel.org/project/linux-mediatek/patch/20240608080530.9436-2-linux@fw-web.de/
due to discussions here:
https://patchwork.kernel.org/project/linux-mediatek/patch/20251117211306.725678-1-robh@kernel.org/

changes:
- updated sd-nand with sata-overlay
---
 arch/arm64/boot/dts/mediatek/Makefile | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index c5fd6191a925..77d76730d61b 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -19,6 +19,27 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sata.dtbo
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtbo
+mt7986a-bananapi-bpi-r3-emmc-nand-dtbs := \
+	mt7986a-bananapi-bpi-r3.dtb \
+	mt7986a-bananapi-bpi-r3-emmc.dtbo \
+	mt7986a-bananapi-bpi-r3-nand.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc-nand.dtb
+mt7986a-bananapi-bpi-r3-emmc-nor-dtbs := \
+	mt7986a-bananapi-bpi-r3.dtb \
+	mt7986a-bananapi-bpi-r3-emmc.dtbo \
+	mt7986a-bananapi-bpi-r3-nor.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc-nor.dtb
+mt7986a-bananapi-bpi-r3-sd-nand-dtbs := \
+	mt7986a-bananapi-bpi-r3.dtb \
+	mt7986a-bananapi-bpi-r3-sd.dtbo \
+	mt7986a-bananapi-bpi-r3-nand.dtbo \
+	mt7986a-bananapi-bpi-r3-sata.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd-nand.dtb
+mt7986a-bananapi-bpi-r3-sd-nor-dtbs := \
+	mt7986a-bananapi-bpi-r3.dtb \
+	mt7986a-bananapi-bpi-r3-sd.dtbo \
+	mt7986a-bananapi-bpi-r3-nor.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd-nor.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986b-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4.dtb
-- 
2.43.0


