Return-Path: <devicetree+bounces-185541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D303AD83C9
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 09:11:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2162189A3FC
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 07:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3350927603B;
	Fri, 13 Jun 2025 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="qu9WvxSB"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6784C274FF9
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749798633; cv=none; b=juSZdh+D8+rRbnG3MbLH+VaitsqN88/nKbp3/bMYQrojaa9dwlFJVaHAdWgAmQWRGIDZ+g3Ju/Kzec2kZsAEODDg1ny6SIczyTqocgl89W6jzBQdAn+wBEwP7yN6tmZbI/E7QMqZMD6M1GqZez0EgRDGY8s371N99Ut+GVC4EAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749798633; c=relaxed/simple;
	bh=sNKtx6isdfqTQ7GdqiBNgNgQ++zH0Gt1vrjt7tJy00s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=GJGQy+xcaBeOY1GB/4i5f4EejQv/0eorWTbrghNeBeh0gvRIau8UsMylMzo5YMZXIzXtUFszHDXTrwFrTQrD8fQai+M4W6H897HFmosqgLEdtQKKPpm3R0UFrdr3CEbMVlvR4t3yO5d1ZVNrWf4jzuNyMq9sQa6xdTqZ86AneBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=qu9WvxSB; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250613071029epoutp02272aa3f438f3179762afc75613074569~IiJUh90AM0780507805epoutp02S
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:10:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250613071029epoutp02272aa3f438f3179762afc75613074569~IiJUh90AM0780507805epoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749798629;
	bh=jIzgwrmtIZVgUQM7G/vlslTlX66wNwtzyffxYrtcguU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qu9WvxSBfx0NFlz/AEMMNUyNSCTRYALfrwQ5IWTIGNOKWUBck5/iShmkx3Umys38k
	 HpmBeeXMJFtDY4lMb/fI5Ixo1EGieuuC1QcTJH/oQD+/V+iGfz8D23iXDW/Y4SW+PP
	 T1dWuRfOLzhYPNb15NZSJvnUj7uxwpBzpc7hShrM=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250613071025epcas5p4d69d7c0229ffbe35da7923ff45e3226a~IiJRXlt1z2402624026epcas5p4O;
	Fri, 13 Jun 2025 07:10:25 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.181]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bJVsW6yZyz6B9m5; Fri, 13 Jun
	2025 07:10:23 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250613055059epcas5p28b26f4ccb0f58e1bfb172e92f9903a08~IhD6fR3Kq1469914699epcas5p2N;
	Fri, 13 Jun 2025 05:50:59 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250613055056epsmtip1719e57bbf20b6d5bd9cead39b3a2f125~IhD3x2vw70398103981epsmtip1j;
	Fri, 13 Jun 2025 05:50:56 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v3 7/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo SS phy
Date: Fri, 13 Jun 2025 11:26:11 +0530
Message-Id: <20250613055613.866909-8-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613055613.866909-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250613055059epcas5p28b26f4ccb0f58e1bfb172e92f9903a08
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055059epcas5p28b26f4ccb0f58e1bfb172e92f9903a08
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055059epcas5p28b26f4ccb0f58e1bfb172e92f9903a08@epcas5p2.samsung.com>

Add a dedicated compatible string for USB combo phy found in this SoC.
The devicetree node requires two clocks, named "phy" and "ref".

This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
compatible to the USB3.0 SS(5Gbps). 'Add-on USB2.0' phy is required
to support USB2.0 HS(480Mbps), FS(12Mbps) and LS(1.5Mbps) data rates.
These two phys are combined to form a combo phy.

Add schema only for 'USB3.1 SSP+' SS phy in this commit.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 26660799e3ca..5dd68c21c133 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -35,6 +35,7 @@ properties:
       - samsung,exynos850-usbdrd-phy
       - samsung,exynosautov920-usbdrd-hsphy
       - samsung,exynosautov920-usbdrd-phy
+      - samsung,exynosautov920-usb31drd-ssphy
 
   clocks:
     minItems: 1
@@ -221,6 +222,7 @@ allOf:
               - samsung,exynos850-usbdrd-phy
               - samsung,exynosautov920-usbdrd-hsphy
               - samsung,exynosautov920-usbdrd-phy
+              - samsung,exynosautov920-usb31drd-ssphy
     then:
       properties:
         clocks:
-- 
2.34.1


