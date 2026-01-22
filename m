Return-Path: <devicetree+bounces-258406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8I5SEMImcmkVdwAAu9opvQ
	(envelope-from <devicetree+bounces-258406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:31:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA7674E4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BE691961DA5
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B033D3E9F62;
	Thu, 22 Jan 2026 12:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="dATG2pNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE03E9F8B
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769086303; cv=none; b=h1eUHi5YR8WbVM+G7vLVku6ibtw0J6fwFDKirCUa33gnBKzEm5HjTankEKcuZWhox32mrfdTe0Wynlf/s8Ihumme6koy2+PswuD1clyS1aqhItr2NENY+CHeoTs++8ANi0+lsYalhPh1xeK6jnBX+i/WdyUGI1wDdUaw4Iis+qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769086303; c=relaxed/simple;
	bh=TBycVuEsoNnS8u/NOeJHPnKmqWfftrX+OE33WfKoKEE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=N6pH+QUF9+RJZURVkTvckY9TFjuOlORkAFKnO4ctl0wZs3mJ6XoNq+WLGI3Ox4BhB7pc/RZhVrhz1CtW56fB0W/keVed9ssZb1XyXZZ0LXqFccmaAPDpqO538YfH2QDrU73jp03r5oFW4N82x7BjP+K2vQ2FyRJo9ZIekMeQaM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=dATG2pNr; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260122125138epoutp0443c9ef26311117670cc237b385f970bb~NDp2l8if52512425124epoutp04t
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260122125138epoutp0443c9ef26311117670cc237b385f970bb~NDp2l8if52512425124epoutp04t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769086298;
	bh=jIcbVnj3waROYb5DR8qb9eF/AvAmo/ZNkBO/tKnnrh0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dATG2pNrNR6UFza9FZLPb11R2MAq68CszXYbV/KyYnzQRqUHAV0uzlot/mh+RAx9p
	 bfgBuvY7AdGF3x58MrVCZbTcbAuucr/b/45i5dCNw68QTKrRzpYocf19ey4b71LeHZ
	 ZtDLWe5Gx2OTL7iLBTn6poLzUftEydus8iAG45F8=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20260122125138epcas5p4be5e677084de1243a64086923eff6f6a~NDp2DQwmp1800418004epcas5p4J;
	Thu, 22 Jan 2026 12:51:38 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.91]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dxgtK27dpz6B9m7; Thu, 22 Jan
	2026 12:51:37 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98~NDp0o_hqk2554025540epcas5p2G;
	Thu, 22 Jan 2026 12:51:36 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260122125134epsmtip1de6ed596648cd4ab20e3f219ec3fb5b6~NDpy2xoNO0683506835epsmtip1h;
	Thu, 22 Jan 2026 12:51:34 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	rosa.pila@samsung.com, dev.tailor@samsung.com, faraz.ata@samsung.com,
	muhammed.ali@samsung.com, selvarasu.g@samsung.com, pritam.sutar@samsung.com
Subject: [PATCH v2 3/3] arm64: dts: exynos: ExynosAutov920: Enable USB nodes
Date: Thu, 22 Jan 2026 18:37:21 +0530
Message-Id: <20260122130721.205664-4-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260122130721.205664-1-pritam.sutar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98
References: <20260122130721.205664-1-pritam.sutar@samsung.com>
	<CGME20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98@epcas5p2.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[samsung.com,none];
	TAGGED_FROM(0.00)[bounces-258406-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[samsung.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 89DA7674E4
X-Rspamd-Action: no action

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


