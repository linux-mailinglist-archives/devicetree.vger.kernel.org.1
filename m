Return-Path: <devicetree+bounces-241595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41688C800C6
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DAA83AA93A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2365D2FBDF3;
	Mon, 24 Nov 2025 10:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="aTvsO4Z+"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0852FB982
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981868; cv=none; b=CfhNIKtBLQvcfPJK80Lqv9CwLh6QsdeX4zIg/5LqsNVrDWwyajGVOjEwZgjcVbXvKVGgD3DxjWoFEFaMv9b7grnu0R5xVdMI00dfmackWGMHnb+bagyy7yZ8FoEAqixP+kfRUCWIz9ZeQP3TmuPe1knn5bYSGJxp6YBtIG54UY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981868; c=relaxed/simple;
	bh=QU4jHwtcbJ6vF7wERjBp1ZrTDECIY7eIhDL88I9jQiw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=RNNZqmt60NEL+uCG3FFRg+y7NBwgYndazx98zUx3A/MJ5R+o7OU3L0s5k4y0m+oRWUtZGhhiZ2ACwI9DNxRSbxzGrqwLFr0yqlbUvnY7mDgWpjyEoA/CapDy/xWWdnV3dTVo1GfvFMcwTnTUkO3GrI0TdK+AR71L4FENYi5OhAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=aTvsO4Z+; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251124105743epoutp012fa1a6eed6d613670f0e1de3e6b0f550~67CiwP0qU0859908599epoutp01n
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:57:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251124105743epoutp012fa1a6eed6d613670f0e1de3e6b0f550~67CiwP0qU0859908599epoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763981863;
	bh=kk9HmVPFpQ2R/aJFNdexBjgNEdJJyrkVPPQMrQyMok4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aTvsO4Z+inK4hm4+1fN7J3epttkuHNjV/AWEJslYzORL1P+eRMBAyPgGF2wVQ2QI4
	 B1ItGqGF9l3eV9h4d014B1YYzPLYhUXzTo/kS02jocaYygSAwlEB/5LZ65Cf06eTKe
	 ynD9dQrGpBG+tuTNcCEcJ/TqoXOnFXT4/ejk8hYk=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251124105742epcas5p16b628f80e4675021f93ff508770ffa89~67CiJvhhP2894728947epcas5p1h;
	Mon, 24 Nov 2025 10:57:42 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.95]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dFN854ynNz6B9m7; Mon, 24 Nov
	2025 10:57:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890~67Cgi2uco1723117231epcas5p2d;
	Mon, 24 Nov 2025 10:57:41 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105737epsmtip2ab736bdf3da7a14a091e8812461f2760~67CdcLtZb1716317163epsmtip2J;
	Mon, 24 Nov 2025 10:57:37 +0000 (GMT)
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
Subject: [PATCH v10 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Mon, 24 Nov 2025 16:34:52 +0530
Message-Id: <20251124110453.2887437-6-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124110453.2887437-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890
References: <20251124110453.2887437-1-pritam.sutar@samsung.com>
	<CGME20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890@epcas5p2.samsung.com>

The USBDRD31 5nm controller consists of Synopsys USB20 femptoPhy and
USB31 SSP+ combophy. Document support for the USB31 SSP+ phy found on
combophy of the ExynosAutov920 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml     | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 15e75b0f66f1..2f457f8b13e8 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usb31drd-combo-ssphy
       - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
@@ -232,6 +233,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
@@ -256,18 +258,32 @@ allOf:
         compatible:
           contains:
             enum:
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       required:
         - dvdd-supply
         - vdd18-supply
-        - vdd33-supply
 
     else:
       properties:
         dvdd-supply: false
         vdd18-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usbdrd-combo-hsphy
+              - samsung,exynosautov920-usbdrd-phy
+    then:
+      required:
+        - vdd33-supply
+
+    else:
+      properties:
         vdd33-supply: false
 
 unevaluatedProperties: false
-- 
2.34.1


