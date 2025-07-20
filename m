Return-Path: <devicetree+bounces-197990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69587B0B784
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 19:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99C66178E30
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 17:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA9E21E0AD;
	Sun, 20 Jul 2025 17:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="CLKD3ZEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049631CFBC
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 17:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753034152; cv=none; b=GZbAvU9/+GrgZBYSd4sYn46WW/N5kWphs5zFWu0FDOag0BtYQcHQLaXO+CP3viNqhW363MDLpHDTAqlV9tN9QhHSzUcds7AyayHyOMqfFqg9PYUSiuodSDWNfV2bD9nCdIF9x7Q1fM6VlzSvUnqBgll1Qy1KVZHNMsWI8Pwkafo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753034152; c=relaxed/simple;
	bh=FxKoTTrrsa2pfKrQ7iZGKdyFN0A+OumMn143cDd4E8E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S7i+FKf7EHDf/qghhEzYp7+mIL7C1Mp/ZeG6k8/1EbhmPYrIYklE8xo6YP3k7/7Vww7wOVhZbxRtpewnJIiQdoZx7Fx+3g90G2Fc3SXNXJjjryfGu9kkQp851E42ie9WLOK369Rf2JIZF9+RFsxhI5NiA1D6OfPNu/M404zCWf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=CLKD3ZEQ; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 40373 invoked from network); 20 Jul 2025 19:49:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1753033748; bh=vCf/XlZtziyUPtDRK6OGTZ1iwHVlAnqUsHc+bCwUDB8=;
          h=From:To:Cc:Subject;
          b=CLKD3ZEQUKBP9sB1gdDbntbxETGrqnGz+Gt717JcKDruaQezXHFAuvaJh7LDowXTQ
           DZYtxA2HfZ3GQ6LSwBnGu+v7CvTTCD++XCrxAPjdGSwIdK+naatvYcIiHy4wPDCp7P
           azxQOaa+xA7hOfSz4S+VnEkXmYvEBVeJKpcrcBzZ2bcx8hsCInMnJLPxocdFYTB7/q
           jyaG8PmX9lWxgSqC/N1bOQAEX+L0M5iGKsj7faCBjnOKAWHAQPS7zJGU52g9oBrWRt
           Ie4eS/S8FYLChPubT9hGdElflJnCQJKgB2Nb2tjw5izSLvPf/kdLS0bRX8+IdO3SSc
           kBpdPxzpHrkzg==
Received: from 83.24.129.157.ipv4.supernova.orange.pl (HELO localhost.localdomain) (olek2@wp.pl@[83.24.129.157])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <herbert@gondor.apana.org.au>; 20 Jul 2025 19:49:07 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	atenart@kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH 2/2] arm64: dts: mediatek: add crypto offload support on MT7981
Date: Sun, 20 Jul 2025 19:49:03 +0200
Message-Id: <20250720174903.1321533-2-olek2@wp.pl>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250720174903.1321533-1-olek2@wp.pl>
References: <20250720174903.1321533-1-olek2@wp.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: 2451c495f819e4f25474ddb960c350f4
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000009 [IRpE]                               

The MT7981 as well as the MT7986 have a built-in EIP-97 crypto accelerator.
This commit adds the missing entry in the dts.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 5cbea9cd411f..ebab8dde1e70 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -94,6 +94,20 @@ pwm@10048000 {
 			#pwm-cells = <2>;
 		};
 
+		crypto@10320000 {
+			compatible = "inside-secure,safexcel-eip97";
+			reg = <0 0x10320000 0 0x40000>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ring0", "ring1", "ring2", "ring3";
+			clocks = <&topckgen CLK_TOP_EIP97B>;
+			clock-names = "core";
+			assigned-clocks = <&topckgen CLK_TOP_EIP97B_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_CB_NET1_D5>;
+		};
+
 		serial@11002000 {
 			compatible = "mediatek,mt7981-uart", "mediatek,mt6577-uart";
 			reg = <0 0x11002000 0 0x100>;
-- 
2.39.5


