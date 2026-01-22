Return-Path: <devicetree+bounces-258403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHh1ByogcmmPdQAAu9opvQ
	(envelope-from <devicetree+bounces-258403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:03:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8603466FFA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADDD6929706
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBEF93AE6F0;
	Thu, 22 Jan 2026 12:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="XsD2TwKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87693AA1B3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769086298; cv=none; b=WZ6wJkjPmAYd6V/XuDTUzID49f+kP6qXV2bwTd5Q0HGTkWcXJIldfcesVOn1MQdUt9k+V9UbhQu+63FMEa8eBakmLPdQlxjEmbqQSPLPgISYa1HKtIP1VAZx5nsTGQ5/o2Vihs64Ia81IaO4oQUvNkW5aD0gZtP5UP2s/jMm3UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769086298; c=relaxed/simple;
	bh=8LwI9l35aWFCznA9tYtPt7+sdhTJwEuqglb7Ot9Jl68=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=u4kFLepl8LGPY11lenPTcDoUJWCN8yhDiEu9E7nqtqvI0pbzG03WvNXgX/2DGccn+rKO8ahninDkcR+LhDPEehiL3AUU+X5ALkyNgfyCbeplt0Rjq6VwWGormI+tTxaZCeXirsodZjI83/lTLeDuGUWDM46YpEtDrUMgnnQ6MWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=XsD2TwKO; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260122125132epoutp025104194e8ffa805d156d46eada7e9a12~NDpwhO-Gp2051020510epoutp02t
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:51:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260122125132epoutp025104194e8ffa805d156d46eada7e9a12~NDpwhO-Gp2051020510epoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769086292;
	bh=1YEdIuy+mVK4BJTKeVyMQ8ipqgyiyzWXJoHQTOrtzcA=;
	h=From:To:Cc:Subject:Date:References:From;
	b=XsD2TwKOve6Ati77Wwp+/RvQEfcOw+eTOzWSbk+crGiOixRiSjmryWmQrJTqnyNJn
	 RGLbmKuP5akum2YfUsisN/opU0gjC1NRR68FV/cKsJT+KMwyrrOmjpOL7Ofu3/DOYG
	 jYbJM6KXI59XWw4fRgSch8NAFRP3GJS4TF3F8Dvg=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20260122125131epcas5p4f312c87b94c2c65a742b0199a077c0d7~NDpv4ZN_q1352113521epcas5p4S;
	Thu, 22 Jan 2026 12:51:31 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.93]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4dxgtB55j9z2SSKY; Thu, 22 Jan
	2026 12:51:30 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20260122125130epcas5p4ac37f540c609f3016ff02f5708e897a2~NDpuh5Hhf1109211092epcas5p4b;
	Thu, 22 Jan 2026 12:51:30 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260122125128epsmtip1fdc3cb93ecb73e4058921f2ecf8443a7~NDpsvxkan0713007130epsmtip1R;
	Thu, 22 Jan 2026 12:51:28 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	rosa.pila@samsung.com, dev.tailor@samsung.com, faraz.ata@samsung.com,
	muhammed.ali@samsung.com, selvarasu.g@samsung.com, pritam.sutar@samsung.com
Subject: [PATCH v2 0/3] Add and enable USB nodes for ExynosAutov920 SoC
Date: Thu, 22 Jan 2026 18:37:18 +0530
Message-Id: <20260122130721.205664-1-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260122125130epcas5p4ac37f540c609f3016ff02f5708e897a2
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260122125130epcas5p4ac37f540c609f3016ff02f5708e897a2
References: <CGME20260122125130epcas5p4ac37f540c609f3016ff02f5708e897a2@epcas5p4.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	DMARC_POLICY_ALLOW(0.00)[samsung.com,none];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:mid,samsung.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258403-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_NONE(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8603466FFA
X-Rspamd-Action: no action

This SoC has 2 USB typeC and 2 typeA ports those are DWC3 DRD
controllers and among them, one single USB3.1 DRD combo phy and three
USB2.0 only phy controllers. This patchset adds and enables USB and
USB-PHY nodes in dts.

PMIC is not implemented yet, we rely on USB LDOs being enabled by the
bootloader and used dummy regulators for now.

To drive vbus for host mode, it needs GPIO pin to enable vbus regulator.
GPIO expander is present in the dts, we used it to enable the regulator
using GPIO.

USB ports are configured as OTG, and default mode is configured as
peripheral. It will be changed based on requirements.

changelog
----------
Changes in v2:
- As v1 was pushed 3 months back, resending this patchset.
- Since dependencies are merged, removed links from coverletter.
  link for v1: https://lore.kernel.org/linux-devicetree/20251024114845.2395166-1-pritam.sutar@samsung.com/

Pritam Manohar Sutar (3):
  arm64: dts: exynos: ExynosAutov920: Add USB and USB-phy nodes
  arm64: dts: exynos: ExynosAutov920: Add regulators for the USB
  arm64: dts: exynos: ExynosAutov920: Enable USB nodes

 .../boot/dts/exynos/exynosautov920-sadk.dts   | 160 +++++++++++++++++
 .../arm64/boot/dts/exynos/exynosautov920.dtsi | 162 ++++++++++++++++++
 2 files changed, 322 insertions(+)

-- 
2.34.1


