Return-Path: <devicetree+bounces-253268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A089FD0906E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9955D30DB575
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B18F035A94E;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ezHg/Mrl"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C10C359F86;
	Fri,  9 Jan 2026 11:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959288; cv=none; b=td+yDW+9aebsVWN9u7+nAFXqn9fvoAmZbl3UqrFF0kDezgzS/7oNLb3o6B/gGMSMLaZr8qWWrxEX4vRGE4lM24E2QqKzF+sRo79iS7AAee75/NqARzcxEZabLWjvG9xGu7bzeDKrZG4o/feyDBAwlEWJfQWnA5fw1ZXSVjPAyJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959288; c=relaxed/simple;
	bh=JQQ9uUUWvTOcI1b1QPZrc3DbM5ir8kQy0SvCXacT88Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rtb/u+7MiYTiiAgqczcxkmOmtRnRKuJiaLdD6jyfiIL9iWb8quRkrDadOOnzYESNWx1Rsl+3ibcz2TitT02sW9LGquUIh/YTL+CcSTXegqa3IvFh+WC0m/sgtDqCMQWmt/jH1zMD9h2pSgsYSqjPF7SgrKXX6GY+vRtSfMIWFVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ezHg/Mrl; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959278;
	bh=JQQ9uUUWvTOcI1b1QPZrc3DbM5ir8kQy0SvCXacT88Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ezHg/MrlBwvAX5TCyKZeL4aT+MfexfD7YZlFmW5gpMoVhZho38c3jn6PuhHxyweac
	 ehMoOUvBAY/0BKtP6TlRR3TVvMpLtwjRBPo+sABW1VdPGa0DtVnrsV1asPat3On+Lx
	 qU7goiY+x+NNjtB7lQgzjrRnFqzcF1CJBRckgqbHXMOBph0NOAl0OjlvaoOQrKnnzu
	 hjwoD3Mxlf2SwtG5l75uaaliUUB0psAu4qgweNBP7Fhy1Gbzqh1ryMUCIqE70ZQIfA
	 lLxbJw9dMv/Qk/Mf4EXSuE3m8V3cBCbYH/Zb2o6myXBujXaEioSoRiVlyd3T7ELN14
	 sw8y4o/sRmimg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CBB8C17E150E;
	Fri,  9 Jan 2026 12:47:57 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 04/11] arm64: dts: mediatek: mt7981b-openwrt-one: Remove useless cells from flash@0
Date: Fri,  9 Jan 2026 12:47:40 +0100
Message-ID: <20260109114747.37189-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In spi2's flash@0 there is only one `partitions` subnode: this
alone makes specifying address and size cells useless, but then
this subnode has no address and no size, which even makes the
currently declared address/size cells wrong.

Fixes: 869b3bb5ada2 ("arm64: dts: mediatek: mt7981b-openwrt-one: Enable SPI NOR")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
index 3de368c73bc8..48b80af90438 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
@@ -213,8 +213,6 @@ flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <40000000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.52.0


