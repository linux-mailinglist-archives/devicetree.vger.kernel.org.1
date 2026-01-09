Return-Path: <devicetree+bounces-253267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5AED0905C
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6ABCB30D4EAC
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0EE35A93B;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JS7uinol"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CC4359F8D;
	Fri,  9 Jan 2026 11:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959288; cv=none; b=ocougWkfolQqBVJUQ+fKGtWK436j5KaIHy1RynAY75GzeOn361TigN8dYaOM255AfgTNQhhW5yBTn/YzV8FUw47JOqF9WkH9vfPQi5OpyPmFgv8csi9Jd9Fm54i9VkDE7GBLOKlVTAEmObA7gzqG0lqZ/8lHYYM09QPalIGq3/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959288; c=relaxed/simple;
	bh=OzoPO+OLSyAg1VhmUybHI1KvXEqvQKuV5ZYinEoXMrA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NzztAN1CS1Y5D+/EEihhBcH16BtSDCgBELPJRHpsECPsUEzkEBRVFuPSgb6m4TNvw6wAYndSijFAut2+qcx2LDdZ/MlMw9xL2I2ddhJTe9OY9VVOWiFoporACbLX+Zqr0jNQmKz8Z3o+AeZ1WuJ1LqGIo/KEdc9BzR7DOoa3e0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JS7uinol; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959281;
	bh=OzoPO+OLSyAg1VhmUybHI1KvXEqvQKuV5ZYinEoXMrA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JS7uinolBEIm7Lo+Qf8egLoJljMqYqx93segk2IjQ3sI7aW9eKG8WPlxIfFMYPRaS
	 KPj7B00H/csozTrgZt4xvL4Y/gcLsT92xDLs472Z0t0eunpe/+R97PTKvCSRXaTFhH
	 FfzsSMlJifdsEmg0134ozgk6K0b0DrYralTjxyiFKfiSB6MYwO8aDWY/SM5qN20MeV
	 NQWppDySceCgLd+AeP8Un49atmRbsI4XcNLYwJoyhPtxblmwTNdZ7Pj5QTYuhWwFVd
	 WpxtpX5vQZuXIDfljdW894V6jykiUqROoQUKznKAFLSaV6vYTMcRcu86HmFI2kMNL5
	 m2ZKoo/H8vmOA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5A5A017E1380;
	Fri,  9 Jan 2026 12:48:01 +0100 (CET)
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
Subject: [PATCH 09/11] arm64: dts: mediatek: mt8173-elm: Remove regulators from thermal node
Date: Fri,  9 Jan 2026 12:47:45 +0100
Message-ID: <20260109114747.37189-10-angelogioacchino.delregno@collabora.com>
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

The only reason to have a regulator in the thermal node is to keep
the CPU cores up while reading temperatures, but this is incorrect
because the AUXADC Thermal IP doesn't need any regulators to work,
at all.

Since the thermal node was inherited only for adding vregs, remove
it entirely.
This change is safe also because, among other things, the actual
driver never used those regulators anyway.

This also fixes a dtbs_check warning.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index dc064cdcedb5..a0573bc359fb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1147,11 +1147,6 @@ &ssusb {
 	status = "okay";
 };
 
-&thermal {
-	bank0-supply = <&mt6397_vpca15_reg>;
-	bank1-supply = <&da9211_vcpu_reg>;
-};
-
 &uart0 {
 	status = "okay";
 };
-- 
2.52.0


