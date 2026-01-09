Return-Path: <devicetree+bounces-253266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F97D0905F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBC5630D6127
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B3B435A93C;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="l6OPOkQd"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BF7359F8C;
	Fri,  9 Jan 2026 11:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959288; cv=none; b=i1Z5VP7pmQIEWhDa1rjW+oBisYGMX+Vfb7Ei6F1GTrtBVY93vtI5UhNM1Jnqf5ERxHb8NUb4rk2zKFYZT2TnRbHMXzFTNbZuDVqIqNy45Q+i3sBcch29rCEkdosOasoSAOE9h1OBKQNl4H5uShv2dAqlkmQttKeoAgeDWIMyk/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959288; c=relaxed/simple;
	bh=+llngvhmnPs9HezSMeUlJSXb6LBNkWf6GCZ6nFhSGF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tXCB3gjHaYq5MGuzLyJPrkMRKCUIvgZBubsdP0tQhNOhSEAEX/ip1jlGwV0MUHJMeiesaszvtr7SrJ3B0l3w7xXwBR0mCzNhSo/DfY/3QAJP+WFCFLsBoDo0CFaCC8v/zbWe81RQdB/oIbWSZbhp6Y0I2LMqJsh2gh28LdhHIAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=l6OPOkQd; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959281;
	bh=+llngvhmnPs9HezSMeUlJSXb6LBNkWf6GCZ6nFhSGF0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l6OPOkQdfD6UkhygUDWjItRGvG2RP16MQBWJEZYqct4T5QDWSGeojLxgrja/d4Hv0
	 13TluM/AgTRxuEFjRnADzr5LuMIiwgYi3k9wd1ys1Z7q7Wrxf8gnz4DxQLOp30uDcP
	 0qVhe8kQDeZXkJGZpoAIEbt3WrgN/yAjLX4fzLF0t/8O2DywZudLO1LQkoeT4MtOP7
	 lF5Jpwolvd5RrgvvUaUNtqHVwu9aHXxIIQM6t7Nx2fSjCLvfKefo5AB8EcpE17gTP4
	 XiaovES653Fd89s6rz7UZzZoyBmLavkWhGwQvodKciy3O+oDq8fv1RNILH8WmIpGBR
	 aXShuLicltHyw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A1E8417E1525;
	Fri,  9 Jan 2026 12:48:00 +0100 (CET)
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
Subject: [PATCH 08/11] arm64: dts: mediatek: mt8173-elm: Fix dsi0 ports warning
Date: Fri,  9 Jan 2026 12:47:44 +0100
Message-ID: <20260109114747.37189-9-angelogioacchino.delregno@collabora.com>
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

Since only a single port is present, remove the inner `ports`
parent node and just declare the single port as `port`.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 59813fff7833..dc064cdcedb5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -206,11 +206,9 @@ target: trip-point1 {
 
 &dsi0 {
 	status = "okay";
-	ports {
-		port {
-			dsi0_out: endpoint {
-				remote-endpoint = <&ps8640_in>;
-			};
+	port {
+		dsi0_out: endpoint {
+			remote-endpoint = <&ps8640_in>;
 		};
 	};
 };
-- 
2.52.0


