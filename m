Return-Path: <devicetree+bounces-264928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8A/zEZqNjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D55712B35A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E534D30166F6
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9FF2D5A14;
	Thu, 12 Feb 2026 08:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="vJWWlKJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4BE28CF50
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884485; cv=none; b=eAm4Kjs8UdUH1JwUtOw50d5uP4CQz3ZbasN/rx1qemfvjFBvK9SSokj8/XdQCXAJd1xdEk4XUiJkNcVI/0zZJioNEsDZugfi/SGv/+w5UBiVpKDHpi9fV+1gE6u+wIR4/xlS63MOtLAg+01GV80J7lNAiB5Mjdwuheupzkh6Kwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884485; c=relaxed/simple;
	bh=i2C4QG32uqinxmG+92zNMFriCWwEXJhhsJXYSYJnB+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=eiq4R+fzxZWllIB0Ujc//I0wzrRO8qA8H/pkFPiTGwUvWsp5Bis5ldQq3GWVT9f/d0Bwl43ezhZYPbpmJchFsgwodpp4y3OdQn2SdxzmZYIwdmfNMO1tZsy4Jmyy1b0hR95KdCwobstwr8sYewfI4zSkhsD76YNnPKalytFsCSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=vJWWlKJb; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260212082121epoutp031bf0f3d6a1686e550cb1573619c71290~Tcg2-WqwO1456214562epoutp03F
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260212082121epoutp031bf0f3d6a1686e550cb1573619c71290~Tcg2-WqwO1456214562epoutp03F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770884481;
	bh=QJr6ZwYHC77eHqB4PbJ9qOH8wUGggnjBluftMUJoltU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vJWWlKJbZ1ojOdZgX/IsfkhowEfRyjI7tLe5WeETiH6aph4j4bhNRJa/JqAbJdqee
	 YiB1omGg+WwWD7AnxAuUnIdP8ZfV6ctIdI+PlX1fpMoHgmdBsoyAHEoi6gUd8T4yMX
	 cHy7Cl7JsF6YpGM0fggtM20ZZC3yKDpgPv+ngPv4=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPS id
	20260212082121epcas2p2c521dc6014dc4ae082f1391593640d73~Tcg2jSnMa1450514505epcas2p2x;
	Thu, 12 Feb 2026 08:21:21 +0000 (GMT)
Received: from epcas2p1.samsung.com (unknown [182.195.38.204]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fBStn15pfz6B9mL; Thu, 12 Feb
	2026 08:21:21 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
	20260212082120epcas2p4c6d8af1b07e82baded76eb356c9b87ee~Tcg13PRPb1340313403epcas2p4G;
	Thu, 12 Feb 2026 08:21:20 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [10.229.19.146]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260212082120epsmtip13610ddac2922bc1f19dbba658114bc75~Tcg1wg_pT2276322763epsmtip10;
	Thu, 12 Feb 2026 08:21:20 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v2 2/2] arm64: dts: exynosautov920: Add hsi0 syscon node for
 PCIe PHY
Date: Thu, 12 Feb 2026 17:21:04 +0900
Message-ID: <20260212082105.1878720-3-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260212082105.1878720-1-sh86.bae@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260212082120epcas2p4c6d8af1b07e82baded76eb356c9b87ee
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260212082120epcas2p4c6d8af1b07e82baded76eb356c9b87ee
References: <20260212082105.1878720-1-sh86.bae@samsung.com>
	<CGME20260212082120epcas2p4c6d8af1b07e82baded76eb356c9b87ee@epcas2p4.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.244.192.64:email,0.244.36.0:email,samsung.com:mid,samsung.com:dkim,samsung.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.244.153.48:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9D55712B35A
X-Rspamd-Action: no action

Add the syscon-hsi0 node to control PCIe PHY power, PLL settings,
and device direction (RC/EP mode) on ExynosAutov920.

Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 2cb8041c8a9f..d21f8e008a00 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1021,6 +1021,12 @@ cmu_hsi0: clock-controller@16000000 {
 				      "noc";
 		};
 
+		syscon_hsi0: syscon@16030000 {
+			compatible = "samsung,exynosautov920-hsi0-sysreg",
+				     "syscon";
+			reg = <0x16030000 0x1000>;
+		};
+
 		pinctrl_hsi0: pinctrl@16040000 {
 			compatible = "samsung,exynosautov920-pinctrl";
 			reg = <0x16040000 0x10000>;
-- 
2.45.2


