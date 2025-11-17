Return-Path: <devicetree+bounces-239535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B66C663B9
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9038134E3C3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF1F2D0C63;
	Mon, 17 Nov 2025 21:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IchTH25r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FFA284889;
	Mon, 17 Nov 2025 21:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763413993; cv=none; b=AAWwZWObM+Zdr2Kq/cKnT3DJ+/xZBdagQgBm3/kgMpZV3fa+OEJk8dwQRu5Okw+lTlI+7MFlt1whOojL78DyNM5ZxvwsINkV/pqKuMDvp9h/0ezt/fcOMq1vuzvep4Q+YtxV/EIbMzpvkAfRe+mJknNJLNnW4qjLJynP9EYzyks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763413993; c=relaxed/simple;
	bh=TaxEPTZW9pKOCyEfKBqrhe0WhB7/O8XVURVLLMyKheE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F/4hP8UcgDkv8i9EQKzd/xxz7hL3DjX+jO+/BeLTtUplGroJ4SNyDZaZu+Lg/HAgUT5EooMdAKFi3bQJOkVWKZRsYqqzvOxTqADAoKl9CaJ1H7jp7kauQz10FTutOacoyHUcXnklJeiZUhL3kBpnt+g02OmQk1+D78tp+kvyPV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IchTH25r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A3FCC2BCB5;
	Mon, 17 Nov 2025 21:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763413992;
	bh=TaxEPTZW9pKOCyEfKBqrhe0WhB7/O8XVURVLLMyKheE=;
	h=From:To:Cc:Subject:Date:From;
	b=IchTH25rN2QbyJwJ/y5i72EvOj7/VgrflArq/eATa/9ZSm1Tklan5wL8Fq3YDhp0y
	 ahglHiTfINzQSNZ5xq2cqR2hoDHn1AP9ve5UobA1ZFomT7Jjup5InDQDwa1Ddab5K6
	 tPanbuE2PzGbrrQistSqezEjm+DOjbEyxpDBOglL7Rs8euFx9J3p4Wq4YihI9QsSDy
	 RJxTN/K361ytNjNmY19OpoxHZbXuZnzXKMECZfjONAE9BjmVfpktGBqLZ/53TLK648
	 z8VXyIcoxfAkKhg/cyYe586q9W5mM49xKRzLf43axokOIY4x0uWVu/9awcghNg/bT5
	 Mx9TScMg0cbYw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: Apply all DT overlays at build time
Date: Mon, 17 Nov 2025 15:13:06 -0600
Message-ID: <20251117211306.725678-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It's a requirement that DT overlays be applied at build time in order to
validate them as overlays are not validated on their own.

Add targets for all the Mediatek overlays.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
This will soon be a warning[1].

Note that if it is desired that the combined .dtb is not installed, then
the combined .dtb should be added to 'dtb-' variable instead.

[1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
---
 arch/arm64/boot/dts/mediatek/Makefile | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index a4df4c21399e..4e92bd9f0e53 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -15,16 +15,30 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-mini.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtbo
+mt7986a-bananapi-bpi-r3-emmc-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-emmc.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
+mt7986a-bananapi-bpi-r3-nand-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-nand.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtbo
+mt7986a-bananapi-bpi-r3-nor-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-nor.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sata.dtbo
+mt7986a-bananapi-bpi-r3-sata-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-sata.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sata.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtbo
+mt7986a-bananapi-bpi-r3-sd-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-sd.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986b-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-2g5.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-emmc.dtbo
+mt7988a-bananapi-bpi-r4-emmc-dtbs := mt7988a-bananapi-bpi-r4.dtb mt7988a-bananapi-bpi-r4-emmc.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-emmc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtbo
+mt7988a-bananapi-bpi-r4-sd-dtbs := mt7988a-bananapi-bpi-r4.dtb mt7988a-bananapi-bpi-r4-sd.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8167-pumpkin.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
@@ -104,6 +118,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
+mt8395-radxa-nio-12l-8-hd-panel-dtbs := mt8395-radxa-nio-12l.dtb mt8395-radxa-nio-12l-8-hd-panel.dtbo
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
 
 # Device tree overlays support
-- 
2.51.0


