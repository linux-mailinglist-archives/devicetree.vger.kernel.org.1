Return-Path: <devicetree+bounces-252870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BADD0D036E7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:42:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0ED973022804
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865334DA526;
	Thu,  8 Jan 2026 14:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XTObFu1v"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B53A4F49D1;
	Thu,  8 Jan 2026 14:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767883190; cv=none; b=T8oXsfesSxdOLRBx3kItoa2YxLWmItQZf1Or85/+rWy6AfTkD4VhYPbkVYihzjLL6OgIickbpU+zd7VhBTcS0GkqO7GQPaHhr6ZdqntknPc6MZ+nmjAQXk+2wvs4TQMDnzI5iz/Mvj7YxXRJv/1SM6eghfWomqXKtsijZs7H9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767883190; c=relaxed/simple;
	bh=uECYkDwl0HnfxlQNQ8iqkxcehiXDOKCT+cD5JTYw1c8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ubcDLhpyRWLwPGvoq2K9YVSfQFxgYp97CGQdOMmPF6zLzGvAuDBVlQvO8pIHbb03df7F9xZ5hiVp9qqOIa7iZDzfBthn+Z0wn6rDoECRX4I+oRpML/z4vS8kBREdOSMCYPhSfCBu2bHuEaiEqhJSfSFjL+KqX+ml8gWT5iGLtj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XTObFu1v; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767883186;
	bh=uECYkDwl0HnfxlQNQ8iqkxcehiXDOKCT+cD5JTYw1c8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XTObFu1vuvSFoNwOfFU7vbcO6F0tZwtbnbn91ogK5KyEhlo8lWN9T4I7QZ3SsjwID
	 Lp+dZh84fFrx5UlO3U3GTk9aud3NqeB5f23Fd/IGUmwKLhddvdVD026gDGowy6thhM
	 coBL4vgE/eUAjJLwrxPk8w2Zl+UaJbVgX4tkjYQTxvVb2DrP/wC3XB2RiH47Gd8lSv
	 qUALpiKO4mWCKqOh1E/TbuBvPgH0Vk8fIC6lLo9U+otHYoYXDQjDx+0i2Dz2p4G8Pw
	 rJmHCSEoGqKsO3wnhtSav0ElwWWY31FZPlMS9/oiWRig54G+kAemYuSy+BKpXnwFWg
	 0xu9OU4oIUDQQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7F94417E0020;
	Thu,  8 Jan 2026 15:39:46 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8188-geralt: Fix warnings for vdosys0 endpoint
Date: Thu,  8 Jan 2026 15:39:34 +0100
Message-ID: <20260108143934.69634-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This machine needs only one endpoint (@0) for vdosys0: remove the
address and size cells declaration and rename the endpoint@0 node
to `endpoint`.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index 7fedbacdac44..64a4e798a05f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -1279,11 +1279,7 @@ &ssusb2 {
 
 &vdosys0 {
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdosys0_ep_main: endpoint@0 {
-			reg = <0>;
+		vdosys0_ep_main: endpoint {
 			remote-endpoint = <&ovl0_in>;
 		};
 	};
-- 
2.52.0


