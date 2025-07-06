Return-Path: <devicetree+bounces-191828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E012AF09AB
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 06:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FEBF7AD429
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 04:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57A51A00F0;
	Wed,  2 Jul 2025 04:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="CW7cJ8lN"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7397F374EA
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 04:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751429733; cv=none; b=dNHFCWFYVLrPWJE9fToZLn0gHKeXc4nXOX7BLG/1pdF0Lt7MFA4uglcXvrtflJxbCymWZr918ymVzQjRITIR352Txh8MwzJRlooWzspwGFNa9wWabq2r8aAmpQRiUloaxRVpYAQ4p3yJMRoLm2Dph1DMq1+vZK7q6jZlfyfy3I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751429733; c=relaxed/simple;
	bh=jE20g9Zox0XFvzxD2FICODTEPEej0WovQVF70Jz/RPo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=kX7UfBsgkShpoCqM7jXzSMJn63r501ax07Xp09fePn5IwkXKqyus2HpTPt2UzWgrKQXH/tnxR2SWg4KZGYcoQ2g9+J8frr9C/oNSlIpwmV9F2+FlDKvJKXI9MfLEq0DjpX3G5En9Ku4qUY0i4gvL0E8QXjJZpPV3InWgURXNoXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=CW7cJ8lN; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250702041529epoutp04b279ea44a1d7e99cdc41e3ebd9b0a30e~OVA84THD62879428794epoutp04S
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 04:15:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250702041529epoutp04b279ea44a1d7e99cdc41e3ebd9b0a30e~OVA84THD62879428794epoutp04S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751429729;
	bh=dzSOjmVG/qviZa0J9qW06zNK9D7hAaYltgUrXMSHzgY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CW7cJ8lNmOX7W7eKnWmaDaGdf2TsVi/E6M2NaEVnqX9+IRFo4FxbZgrFpGxBJkwSa
	 t6ZkbEkZXeEMoLxaje1BNULjPREApZ8ZZytIFgTpxPVeXloy+e9mUCPsfDSGDrN0AY
	 zttuqgdEnSSLevfWP3W5B02sed8ozo+YBTyecyxU=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250702041528epcas5p11f7b012fab5de2fb22c70089c32308d9~OVA7rT1ZB2996129961epcas5p13;
	Wed,  2 Jul 2025 04:15:28 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.175]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bX64t0JyTz6B9mM; Wed,  2 Jul
	2025 04:15:26 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250701120002epcas5p2c4d728d599a819057bcc40b724881276~OHtRg2gIH0511605116epcas5p2i;
	Tue,  1 Jul 2025 12:00:02 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250701115959epsmtip1bb515e6078065cef456ed1ede6dc339f~OHtOlyyB_1373213732epsmtip14;
	Tue,  1 Jul 2025 11:59:59 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org,
	neil.armstrong@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v4 3/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo HS phy
Date: Tue,  1 Jul 2025 17:37:03 +0530
Message-Id: <20250701120706.2219355-4-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250701120706.2219355-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250701120002epcas5p2c4d728d599a819057bcc40b724881276
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701120002epcas5p2c4d728d599a819057bcc40b724881276
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701120002epcas5p2c4d728d599a819057bcc40b724881276@epcas5p2.samsung.com>

This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
compatible to the USB3.0 SS(5Gbps). 'Add-on USB2.0' phy is added
to support USB2.0 HS(480Mbps), FS(12Mbps) and LS(1.5Mbps) data rates.
These two phys are combined to form a combo phy.

Add a dedicated compatible string for USB combo HS phy found in this
SoC. The SoC requires two clocks, named "phy" and "ref" and various
power supplies (regulators) for the internal circuitry to work.
The required voltages are:
* avdd075_usb - 0.75v
* avdd18_usb20 - 1.8v
* avdd33_usb20 - 3.3v

Add schema only for 'Add-on USB2.0' HS phy in this combo phy.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 2e29ff749bba..b024339b5acc 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
   clocks:
@@ -250,6 +251,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
-- 
2.34.1


