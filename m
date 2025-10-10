Return-Path: <devicetree+bounces-225243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B83BCBD6C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4E0AF34E0F7
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D8F27281E;
	Fri, 10 Oct 2025 07:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="F1QugMWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C08635
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760079650; cv=none; b=aHcs3clVEtTHVRAdeGPC4ywoorgSuuL1X/2s0Tr0qkcEurVFtZ0T6br6P493oa1z3PhX+XUCzxUT+tDPaA+51PmMTckdY4l36anpa54vt9X6ydJn5zoX1/jKkA+1V254TExPs9MAi0bJcE0VO10r4neD/CCHr0oVM3hYR2mo1is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760079650; c=relaxed/simple;
	bh=6c7z1HgCPmXXk9Wrez/e0B7hL20G52UwSHo6IHeKdTk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=F8/y5MV+PrXN60QSK+IB/5zdg96eczgiHr9Ca+PQnTFYih5faU6v/8JwrXrPzPIMzLydfIlv4ptpKP1NJUH/iTZjsQsYQf252vRfMNJmc1AyYPeHCDKo9lrdtRH9MBvaIVNYPyHlKEY3Z4keR6+Rll7ZEKUavToiIcfQSeWLBiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=F1QugMWK; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251010070045epoutp01a63728ce3ba5c1c91903c9f5ec8469c7~tDxzUs5fV2354723547epoutp01l
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:00:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251010070045epoutp01a63728ce3ba5c1c91903c9f5ec8469c7~tDxzUs5fV2354723547epoutp01l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1760079645;
	bh=chMB2IJ82Cq497kVbgxtv/f0phmS3PCgshMplIBs7dw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F1QugMWKj2k02Br6weRj6e1uav6qoCugsAibxB9xALWqMUnCIsioRR46VkBPMl9/c
	 qk0yABlMX92WD8XXstNRNCzeatkTnTWyPMTL4euG6E9hAJ15nadeToZleI35dRHjVU
	 EaoKfh+gLIRHr8b6WHwmTcWZTB2B2dNT6kRT9j+g=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20251010070045epcas5p29af926ad04ef2d96327c1e69dcdbc9ce~tDxynMld02285922859epcas5p24;
	Fri, 10 Oct 2025 07:00:45 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.95]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cjd1R71Kmz6B9m6; Fri, 10 Oct
	2025 07:00:43 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20251010070043epcas5p3b55be4611210178151e15470f7d8e092~tDxxDTgwk0258502585epcas5p3Y;
	Fri, 10 Oct 2025 07:00:43 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251010070038epsmtip2cb9ee8d044ab378b3e2b8d710fad2cac~tDxsEsW250636306363epsmtip26;
	Fri, 10 Oct 2025 07:00:37 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	johan@kernel.org, ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Fri, 10 Oct 2025 12:39:07 +0530
Message-Id: <20251010070912.3758334-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251010070912.3758334-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251010070043epcas5p3b55be4611210178151e15470f7d8e092
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251010070043epcas5p3b55be4611210178151e15470f7d8e092
References: <20251010070912.3758334-1-pritam.sutar@samsung.com>
	<CGME20251010070043epcas5p3b55be4611210178151e15470f7d8e092@epcas5p3.samsung.com>

Document support for the USB20 phy found on the ExynosAutov920 SoC. The
USB20 phy is functionally identical to that on the Exynos850 SoC, so no
driver changes are needed to support this phy. However, add a dedicated
compatible string for USB20 phy found in this SoC.

This phy needs 0.75v, 0.18v and 3.3v supplies for its internal
functionally. Power Supply's names are as per phy's User Data-Book.
These names, (dvdd, vdd18 and vdd33), are considered  for 0.75v, 1.8v
and 3.3v respectively.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e906403208c0..8d8114eb5660 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-phy
 
   clocks:
     minItems: 1
@@ -110,6 +111,15 @@ properties:
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
+  dvdd-supply:
+    description: 0.75V power supply for the USB phy.
+
+  vdd18-supply:
+    description: 1.8V power supply for the USB phy.
+
+  vdd33-supply:
+    description: 3.3V power supply for the USB phy.
+
 required:
   - compatible
   - clocks
@@ -219,6 +229,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
         clocks:
@@ -236,6 +247,24 @@ allOf:
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
+        - dvdd-supply
+        - vdd18-supply
+        - vdd33-supply
+
+    else:
+      properties:
+        dvdd-supply: false
+        vdd18-supply: false
+        vdd33-supply: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


