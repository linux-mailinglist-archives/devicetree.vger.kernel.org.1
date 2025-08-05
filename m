Return-Path: <devicetree+bounces-202002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E01B1B94D
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 19:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 463116229A0
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 17:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E74298CDE;
	Tue,  5 Aug 2025 17:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="DVYrcYqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E526F29B20C
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 17:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754414570; cv=none; b=uAOrCEWwaCikKdqnV80u69NQe9eYTGFiWL6o1DTVBGwgXgCkQgEZ5V8bBliEEPzjEHhIDBWeetx7NOPaKT8j5AbMWsb01Yve8ecWp0mhKVrQKqLyizQ7cTHjt5W2hv0rEQHSt0D3VoO29Q6iB2rQ6yW+ViOKgGQmH1LNpjMquBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754414570; c=relaxed/simple;
	bh=OX8gd1CM5J5RFtT0XbqghipFe7Rj2C0IzsizUpUj2Q8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=Pn2hIaepfHRzg3MwN5bYHB248g6PKGdafEKQv3xAorkB+0xMYQ0aPIEup/ndyIy3OnsdlEHd1Gue6euvRUovpC2IQof9Zk3IpoCGgjBLcfxEdlFJGN3pX9EtFD5quP1m9aP4zRnd80zEdyU6o17T/489r6iklEq3bR3IrIVYTWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=DVYrcYqP; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250805172247epoutp043188e4d9cb96ce3a4898218b6ef53928~Y7sDoHdqP0614606146epoutp04c
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 17:22:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250805172247epoutp043188e4d9cb96ce3a4898218b6ef53928~Y7sDoHdqP0614606146epoutp04c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754414567;
	bh=butMxkt3CmNqo8ZKkw5fJLl7FH5PZlVxY7GC0RKm6xw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DVYrcYqPjBomcfUqG/eUKK42h91dI+7pDZZJzbr8QEJTuzp3WJ0OQO5gRArOF57Bz
	 SRNoZOG6vrrM0Am31w8hWKJcRWKXln/xNDTCKZlkpSvcmLo0+PEUpZmhCk2EImZAeI
	 WseZ1lVCLkbOze65f42g7618SovqTJIU/O68DDQM=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250805172246epcas5p16c95b3e82936251b80118d788a48a3b4~Y7sCnLayd3014130141epcas5p1T;
	Tue,  5 Aug 2025 17:22:46 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.93]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bxKxd0xrYz6B9m5; Tue,  5 Aug
	2025 17:22:45 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4~Y3DrVW8uf1521715217epcas5p3C;
	Tue,  5 Aug 2025 11:43:20 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250805114316epsmtip1786da2ef65e10ab19b965d79fc527bc4~Y3DoafOPg1492214922epsmtip1L;
	Tue,  5 Aug 2025 11:43:16 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org,
	m.szyprowski@samsung.com, s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v5 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Tue,  5 Aug 2025 17:22:15 +0530
Message-Id: <20250805115216.3798121-6-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250805115216.3798121-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4
References: <20250805115216.3798121-1-pritam.sutar@samsung.com>
	<CGME20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4@epcas5p3.samsung.com>

This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
compatible to the USB3.0 SS(5Gbps). It requires two clocks, named
"phy" and "ref". The required supplies for USB3.1 are named as
vdd075_usb30(0.75v), vdd18_usb30(1.8v).

Add schemas for combo ssphy found on this SoC.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 4a84b5405cd2..7a71cff10fb5 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usb31drd-combo-ssphy
       - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
@@ -118,6 +119,12 @@ properties:
   vdd18-usb20-supply:
     description: 1.8V power supply for the USB 2.0 phy.
 
+  dvdd075-usb30-supply:
+    description: 0.75V power supply for the USB 3.0 phy.
+
+  vdd18-usb30-supply:
+    description: 1.8V power supply for the USB 3.0 phy.
+
 required:
   - compatible
   - clocks
@@ -227,6 +234,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
@@ -258,6 +266,17 @@ allOf:
         - vdd18-usb20-supply
         - vdd33-usb20-supply
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usb31drd-combo-ssphy
+    then:
+      required:
+        - dvdd075-usb30-supply
+        - vdd18-usb30-supply
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


