Return-Path: <devicetree+bounces-207257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CD7B2EF8D
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:28:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F343188AED6
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A9E2E972E;
	Thu, 21 Aug 2025 07:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="llwLGrfw"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F1F2E8B86
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755761290; cv=none; b=n+Enq+itxyGxdfJj4eoYnHWOQpunUTW+9aNR0Hx8f5BhRRVEL/ycFcsomU55AqB4kqIGA8R4it3poXIv+zlQhWEw82eLWeJ2hxLzqGa1No2sNTCE8pm4JM5ivWL9G1ly2o/m/rLM9fueAMFxvT/ysblxCWlrRiM6ihCiyi1ywMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755761290; c=relaxed/simple;
	bh=88Lt4aP+ewswjg17OSpE6y4lwdUPoRldgDkV/MhYvKY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=EpwdfVshr/kHmVB3iCQPC0Cf+WoHl5tt7lF9rsYp/Klu6FbAlynVi1TpQqV5DdfL8V6eNI4C2P+zPyj/mU8Qx7QYjUhDID3fQpj5vRbPTEFgIn5Ur/fzb22pfeHCXdstPDkh/4USvNsDeyolrjtfV7XO5IFbZlezqMhsoSUOWoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=llwLGrfw; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250821072807epoutp031fed0c9c0617f3bbc13b26882c6147b2~dt5aaM_Bj0861108611epoutp03v
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:28:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250821072807epoutp031fed0c9c0617f3bbc13b26882c6147b2~dt5aaM_Bj0861108611epoutp03v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755761287;
	bh=/UZny0nmt2vMBkU2e/gpL3R9Mx0QIOy020xV8xd0zVI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=llwLGrfwDTxzOdI6xv87THuL6s+Ai4wIhJVXMcxuIgyvn0EebpKYTatCaiU9DadyG
	 xoya5nNwPpLx9kOAlNItiWWJv+/SueYuQM2nqNKZ9thxf1YSDVEl+a2GLOvXUTqv8U
	 EnQENjv7UVs8G1qWynk1Q/5Hx9cctospbohtiyk4=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250821072806epcas5p1d013b385ea49b1be2cf7989d44b02877~dt5ZhYmnr0117501175epcas5p18;
	Thu, 21 Aug 2025 07:28:06 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.93]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4c6w051R5Sz2SSKf; Thu, 21 Aug
	2025 07:28:05 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250821072804epcas5p20256917f2a714f4946139174f8fc20f5~dt5X2Ebhl0550705507epcas5p29;
	Thu, 21 Aug 2025 07:28:04 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250821072801epsmtip13370fcd9bc3653a3c56cfcf69abae89a~dt5UxkUol0593105931epsmtip1E;
	Thu, 21 Aug 2025 07:28:01 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org,
	johan@kernel.org, m.szyprowski@samsung.com, s.nawrocki@samsung.com,
	pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v6 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 21 Aug 2025 13:06:58 +0530
Message-Id: <20250821073703.2498302-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250821073703.2498302-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250821072804epcas5p20256917f2a714f4946139174f8fc20f5
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250821072804epcas5p20256917f2a714f4946139174f8fc20f5
References: <20250821073703.2498302-1-pritam.sutar@samsung.com>
	<CGME20250821072804epcas5p20256917f2a714f4946139174f8fc20f5@epcas5p2.samsung.com>

This SoC has USB2.0 phy and supports only UTMI+ interface. This phy
requires two clocks, named as "phy" and "ref". The required supplies for
this phy are vdd075_usb20(0.75v), vdd18_usb20(1.8v), vdd33_usb20(3.3v).

Add a dedicated compatible string for USB HS phy found in this SoC.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e906403208c0..e238fd0c9f6c 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-phy
 
   clocks:
     minItems: 1
@@ -110,6 +111,12 @@ properties:
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
+  dvdd075-usb20-supply:
+    description: 0.75V power supply for the USB 2.0 phy.
+
+  vdd18-usb20-supply:
+    description: 1.8V power supply for the USB 2.0 phy.
+
 required:
   - compatible
   - clocks
@@ -219,6 +226,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
         clocks:
@@ -235,6 +243,22 @@ allOf:
 
         reg-names:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usbdrd-phy
+    then:
+      required:
+        - dvdd075-usb20-supply
+        - vdd18-usb20-supply
+        - vdd33-usb20-supply
+
+    else:
+      properties:
+        dvdd075-usb20-supply: false
+        vdd18-usb20-supply: false
 
 unevaluatedProperties: false
 
-- 
2.34.1


