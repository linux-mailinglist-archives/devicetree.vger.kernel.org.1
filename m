Return-Path: <devicetree+bounces-230791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CC7C06124
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3353A3A9516
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A9CB313285;
	Fri, 24 Oct 2025 11:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="SUBAzyRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8664430E0FD
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761306047; cv=none; b=DL1D72QqhseAoB4qHabop3vHOfx+ltEWTzJlOnOjl7RescC8opr40v2QQTHgUqL/hVopvcZonQ6nKpy8oRm6XngSBrByA/5ycahSIJpQNr5AqJS95pqYRd29QFqW3Xt+GEa3ZedtwvfDFj7jS+0CHo/JGIhQUh7/71rR7EdEbGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761306047; c=relaxed/simple;
	bh=TBycVuEsoNnS8u/NOeJHPnKmqWfftrX+OE33WfKoKEE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=uCJbnYA3JP7HjDhO+h/9rFjNwHf2sbCkXUv8jtNWEl+4QvQZpk4fNHE2jnj0rDN1lHjEdsZPojX4nxuzZTTPlRD9RV5p1L5MKaSXhsEcZeuX7S4+cm2Riz7IVjWLHzfLdOKuKKoK/oDWR2gYu00ikrN8EZhxmZ8Ky62nxLI/eDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=SUBAzyRm; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20251024114042epoutp04448af9a6ee02a4d0a59906f1e4c0865a~xaoOfNsgM0824408244epoutp04f
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:40:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20251024114042epoutp04448af9a6ee02a4d0a59906f1e4c0865a~xaoOfNsgM0824408244epoutp04f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1761306042;
	bh=jIcbVnj3waROYb5DR8qb9eF/AvAmo/ZNkBO/tKnnrh0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SUBAzyRm8PBq4rMklAfGIFeqI41lNVsAzxgu+qzXPXonX6DaIgJ0jw1PGEPEpw9HV
	 VFKvg22bH2urf/3ESDm/VMnA9c9PT96LmclOOT46WJpXgLonWijdh1bZp1FldsXyB6
	 03OHZiQ+6KzhBvERT7fVHF31b+dKraiFexw47pVc=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20251024114042epcas5p229e91b907fedbafd8d86b757a29a6321~xaoOKzgdj0371803718epcas5p2H;
	Fri, 24 Oct 2025 11:40:42 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.92]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4ctLZ15319z6B9m4; Fri, 24 Oct
	2025 11:40:41 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20251024114040epcas5p3d8c093798a3fd6c9c3b0c89aa58be8ce~xaoMhI6Sw1719017190epcas5p3s;
	Fri, 24 Oct 2025 11:40:40 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251024114030epsmtip1b81fba1ba23f43edafb902c806aa3a1a~xaoC5qBsj0323903239epsmtip1Q;
	Fri, 24 Oct 2025 11:40:30 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	rosa.pila@samsung.com, dev.tailor@samsung.com, faraz.ata@samsung.com,
	muhammed.ali@samsung.com, selvarasu.g@samsung.com, pritam.sutar@samsung.com
Subject: [PATCH 3/3] arm64: dts: exynos: ExynosAutov920: Enable USB nodes
Date: Fri, 24 Oct 2025 17:18:45 +0530
Message-Id: <20251024114845.2395166-4-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024114845.2395166-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251024114040epcas5p3d8c093798a3fd6c9c3b0c89aa58be8ce
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251024114040epcas5p3d8c093798a3fd6c9c3b0c89aa58be8ce
References: <20251024114845.2395166-1-pritam.sutar@samsung.com>
	<CGME20251024114040epcas5p3d8c093798a3fd6c9c3b0c89aa58be8ce@epcas5p3.samsung.com>

Enable USB PHY and DWC3 USB controllers' nodes.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../boot/dts/exynos/exynosautov920-sadk.dts   | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
index f90f7704597c..5896dd69334a 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
@@ -160,15 +160,20 @@ &xtcxo {
 &usbdrd31_ssphy {
 	dvdd-supply = <&dummy_regulator>;
 	vdd18-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd31_hsphy {
 	dvdd-supply = <&dummy_regulator>;
 	vdd18-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd31_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
 	maximum-speed = "super-speed-plus";
 	usb-phy = <&usb_phy0>;
 };
@@ -176,15 +181,20 @@ &usbdrd31_dwc3 {
 &usbdrd31 {
 	vdd10-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_phy0 {
 	dvdd-supply = <&dummy_regulator>;
 	vdd18-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_dwc3_0 {
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
 	maximum-speed = "high-speed";
 	usb-phy = <&usb_phy1>;
 };
@@ -192,15 +202,20 @@ &usbdrd20_dwc3_0 {
 &usbdrd20_0 {
 	vdd10-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_phy1 {
 	dvdd-supply = <&dummy_regulator>;
 	vdd18-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_dwc3_1 {
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
 	maximum-speed = "high-speed";
 	usb-phy = <&usb_phy2>;
 };
@@ -208,15 +223,20 @@ &usbdrd20_dwc3_1 {
 &usbdrd20_1 {
 	vdd10-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_phy2 {
 	dvdd-supply = <&dummy_regulator>;
 	vdd18-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
 
 &usbdrd20_dwc3_2 {
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "peripheral";
 	maximum-speed = "high-speed";
 	usb-phy = <&usb_phy3>;
 };
@@ -224,4 +244,5 @@ &usbdrd20_dwc3_2 {
 &usbdrd20_2 {
 	vdd10-supply = <&dummy_regulator>;
 	vdd33-supply = <&dummy_regulator>;
+	status = "okay";
 };
-- 
2.34.1


