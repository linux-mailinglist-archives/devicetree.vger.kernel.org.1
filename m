Return-Path: <devicetree+bounces-255555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C99CD2434B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:36:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 24577300C347
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5FD3612F7;
	Thu, 15 Jan 2026 11:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="YH/+Oh2S"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFDF35E523;
	Thu, 15 Jan 2026 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768476976; cv=none; b=NaPILQtQzdb9KkEmJZ8vZzmD+WqXpdH6WFmCDo1VsY9+0zqJtbAQMniOWeXEw3WS+xKXKxGeg6lqPztyoc7aBZujAj2lrVpouLDxe5z+ScrkTs649+RkjWLW0KgJiG8uipzLpulRa0PWZkrwvUbFrBtf+l2RKWmhwYS1NYAI7UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768476976; c=relaxed/simple;
	bh=2838NbiS+1I9aTZDaFkizTzSaYb5pk5Dt6Y8NWiwHvs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XNaXaawEhGMqOzPAAexj0+o8Boy/NfqyY2Wqv2PClTaeTowcltnBD7A4PNrrS/xovnvHXFD3HEOuT4Q1BTk8WqgWdwaYdvmPfi9LWWQ+CAjycmcYYJVUd/OSu3PlluB7poqyDB8XTA+MB/abiGmG3R7NWlD4NAi/TRAPiph2cYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YH/+Oh2S; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768476973;
	bh=2838NbiS+1I9aTZDaFkizTzSaYb5pk5Dt6Y8NWiwHvs=;
	h=From:To:Cc:Subject:Date:From;
	b=YH/+Oh2Sn6E8FX9gjDRLpQxpEiu4eghAuxWK4GQUOjPW39tWQ+OyjPq38gSq1ofMB
	 XCFO9JZeEA/girDwkQfCPaUZcdzAkikPemTM1X5kS9x2AcNwLLcF3gT8rPOhS95Nuc
	 1p4trT55hIO2OepyiRJ6qaOpfQfuWanKI4Wle+YItrfbU0DHFkkOwOpQ5tbq25XuBL
	 nEc6yU7NSEGFzhH3z5yFQ78YpAPlRJaUCS5e685rCmQlw7/y84eLCct0X09U5bLlxz
	 3K+2sniULZLkZOgqR47ylgaJECTNDwQ3zPpM2S//ZwrsztZGRdMmsRAsJA5Px1v1/e
	 qlDl+eOx2A+/w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6B8A317E01E7;
	Thu, 15 Jan 2026 12:36:13 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: mediatek: mt8186-evb: Add vproc fixed regulator
Date: Thu, 15 Jan 2026 12:36:08 +0100
Message-ID: <20260115113608.64817-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This board at the moment has no support for PMIC regulators, but
the CCI requires a vproc regulator in order to both stop giving
dtbs_check warnings and to actually probe.

Since vproc is a system-critical regulator and the bootloader
enables it at max voltage, model it (at least temporarily) as
a regulator-fixed and assign it to CCI.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-evb.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-evb.dts b/arch/arm64/boot/dts/mediatek/mt8186-evb.dts
index 2667a7424200..a941a931a07c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-evb.dts
@@ -22,6 +22,19 @@ memory@40000000 {
 		device_type = "memory";
 		reg = <0 0x40000000 0 0x80000000>;
 	};
+
+	vproc: regulator-vproc12 {
+		compatible = "regulator-fixed";
+		regulator-name = "vproc12";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+	};
+};
+
+&cci {
+	proc-supply = <&vproc>;
 };
 
 &i2c0 {
-- 
2.52.0


