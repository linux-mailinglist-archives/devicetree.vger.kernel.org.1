Return-Path: <devicetree+bounces-309397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YetDN0TwKGraNwMAu9opvQ
	(envelope-from <devicetree+bounces-309397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:04:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA11665D6D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:04:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=bVUcxM80;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309397-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309397-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ACB41302874F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 05:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6F82371067;
	Wed, 10 Jun 2026 05:03:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328232F5A13
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:03:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781067821; cv=none; b=Sf8wVE1eWaQIrWOHbcNgjNcl6FOzvJ1ga/VaBa4eV24apFGmOpch8pC6zfRtLMA+AsRXgf1xOnev8UdjQqLwrp1lfaAsvEUucChUb+CxCltbACe2nvFi7/NdsiB2ZdIG9Kz8QFsIX4ech7kMwkf9CoxIR02EXIFW1z1tH8Q/NWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781067821; c=relaxed/simple;
	bh=noIEuo4m4RtxryyPPeDY5B2/yJAh86I1RrQWpaZuXrE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=mB5eJU3ONX82bj2BXGqZ+cd86ps+DB9Thbx9BAf53TR4ldx2LagEi69VX0+FZoA982gHCHLFWJCbZG9lqiQQFMm1I0WVRog4W4ctuJqMuCaKjqNGv5BIh3MbPh09Y+t9EYYivY9Evh8Zc4MTZuhSGRFvXfcxNGhFcHE3FRAI780=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=bVUcxM80; arc=none smtp.client-ip=203.254.224.34
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260610050338epoutp043dd0493faeee2140ed55c656b75c8fed~3n76JeKB82568725687epoutp04h
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:03:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260610050338epoutp043dd0493faeee2140ed55c656b75c8fed~3n76JeKB82568725687epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781067818;
	bh=tkq0fRzfd/K901BPZoES6621kH5OMPmDRlzrVeU+Wpo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bVUcxM80ypG3mu7RLmUFFE5Ksemp/M8EeQ6D6qaYgy9vVxqVKN01lfu2JrrxsAuct
	 IINqLGZzuK0BjbfJ/YV9yr1Bumi2hmedl8eoYRd9PZ5oHSs2LqROeXGXLfNuiQ4kRh
	 iLXzX/At+Ylse6nR184dnKEX5ghRB9yZ4RgO5B0Q=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPS id
	20260610050338epcas2p3cd24a4eb507a20db2755a839f834cc72~3n751eDhx0715807158epcas2p3g;
	Wed, 10 Jun 2026 05:03:38 +0000 (GMT)
Received: from epcas2p3.samsung.com (unknown [182.195.38.212]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4gZtw95Xqmz3hhTJ; Wed, 10 Jun
	2026 05:03:37 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20260610050337epcas2p1f6d27933f30ac063454fd25acbde327f~3n75FdVWB1919519195epcas2p1r;
	Wed, 10 Jun 2026 05:03:37 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [12.81.221.119]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260610050337epsmtip20946b4cb4fa967ce2bcf483b8228ec99~3n74_1iwQ1096610966epsmtip2Q;
	Wed, 10 Jun 2026 05:03:37 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v3 2/2] arm64: dts: exynosautov920: Add hsi0 syscon node for
 PCIe PHY
Date: Wed, 10 Jun 2026 14:03:26 +0900
Message-ID: <20260610050326.2903402-3-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260610050326.2903402-1-sh86.bae@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260610050337epcas2p1f6d27933f30ac063454fd25acbde327f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260610050337epcas2p1f6d27933f30ac063454fd25acbde327f
References: <20260610050326.2903402-1-sh86.bae@samsung.com>
	<CGME20260610050337epcas2p1f6d27933f30ac063454fd25acbde327f@epcas2p1.samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309397-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:alim.akhtar@samsung.com,m:kishon@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:sowon.na@samsung.com,m:sh86.bae@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[samsung.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DAA11665D6D

Add the syscon-hsi0 node to control PCIe PHY power, PLL settings,
and device direction (RC/EP mode) on ExynosAutov920.

Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 0bf7c4cb9846..cc3ed5c52ffe 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1382,6 +1382,12 @@ cmu_hsi0: clock-controller@16000000 {
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


