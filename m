Return-Path: <devicetree+bounces-309395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ck/FS7wKGrUNwMAu9opvQ
	(envelope-from <devicetree+bounces-309395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:03:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C59665D53
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:03:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=kTyD4Xni;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309395-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309395-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58D8130342A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 05:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BFC0358369;
	Wed, 10 Jun 2026 05:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2BF2F5A13
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:03:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781067819; cv=none; b=vBM3sLz+b9+VQ5w+EfZMFwBi/dZBlsc099RFBedKhz2oaH0kTis/iqar7+un7sY3DW/rVP2pg6gdZOPFJH46zOvEiMnZEj1wcOpl/B0Xc0wIUAfS8/pAV3l8qou7+oNym0pM3d4gX3/R13+jvTWZ6nAP1Or6GMogv0vDAh/H6v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781067819; c=relaxed/simple;
	bh=6+LdkKchSz4QiBF4wEyjhZrrmYq/2In6m0vhW+fMsLY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=jEJQKy4RGUPwtWfuN5Njd3Q6y3oUCv8eMIMBS0cP7Rlv5XBKuI5DSID0x0XiAhqM1BsR16k4IoiUrTbUIeb4l3wS/3rSGbDUJiID24mbz9nPa13gM6jSr6PskCVy7PUNYUUY6/hk/HW3ZUXUZkGWciFQNa5jbU4i8057y6GNcz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=kTyD4Xni; arc=none smtp.client-ip=203.254.224.33
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260610050334epoutp03bc3739e7b30f5ff487357072b3182f88~3n72Xp4VR0172001720epoutp03f
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:03:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260610050334epoutp03bc3739e7b30f5ff487357072b3182f88~3n72Xp4VR0172001720epoutp03f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781067814;
	bh=w0rfj44pzK6uCavvb+j8L9p+5QSuBoPORAdrkd5H7qY=;
	h=From:To:Cc:Subject:Date:References:From;
	b=kTyD4XnitsJ8wQR9FW6WPKjv4Er3V6EgIy/ttrIdkxEULH0FkbRCHrUU9zpNV9usC
	 XvIfu3m1AEkhjHjLOx7axHMmgbbSLBZmh3n6LKiWIbtBD5LkLwdZP1DygabyoMUXBQ
	 BpIYf4tW6SCQR7fSi4IGe5HM/2AUuN/qdGtTvo8Y=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPS id
	20260610050333epcas2p3de74fefcdd6aa3c57c6afe4449ed8a10~3n71jRxDk1025210252epcas2p32;
	Wed, 10 Jun 2026 05:03:33 +0000 (GMT)
Received: from epcas2p1.samsung.com (unknown [182.195.38.200]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4gZtw50ZmBz3hhT9; Wed, 10 Jun
	2026 05:03:33 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20260610050332epcas2p32ed8c6f7b410a295a43054a28b711ddb~3n70sHRMf1005110051epcas2p3D;
	Wed, 10 Jun 2026 05:03:32 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [12.81.221.119]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260610050332epsmtip202006736dc7e42d5045a5454abc841fa~3n70lMf2c1155711557epsmtip2a;
	Wed, 10 Jun 2026 05:03:32 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v3 0/2] Add ExynosAutov920 hsi0 support to exynos-sysreg
Date: Wed, 10 Jun 2026 14:03:24 +0900
Message-ID: <20260610050326.2903402-1-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260610050332epcas2p32ed8c6f7b410a295a43054a28b711ddb
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260610050332epcas2p32ed8c6f7b410a295a43054a28b711ddb
References: <CGME20260610050332epcas2p32ed8c6f7b410a295a43054a28b711ddb@epcas2p3.samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309395-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:alim.akhtar@samsung.com,m:kishon@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:sowon.na@samsung.com,m:sh86.bae@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,samsung.com:dkim,samsung.com:mid,samsung.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5C59665D53

The ExynosAutov920 SoC includes a PCIe IP and a hsi0 register block that
is mapped in the exynos-sysreg.

To manage PCIe PHY power, configure the PCIe PLL, and set the device direction,
the hsi0 registers need to be defined in exynos-sysreg.

This patch must be applied before the ExynosAutov920 PCIe PHY is enabled.

Changes in v3:
- Rebased on top of origin/next/dt (no functional changes)

Changes in v2:
- Add exynosautov920-hsi0-sysreg DT node as a binding user (patch 0002)

Sanghoon Bae (2):
  dt-bindings: soc: samsung: exynos-sysreg: Add hsi0 for ExynosAutov920
  arm64: dts: exynosautov920: Add hsi0 syscon node for PCIe PHY

 .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 1 +
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi              | 6 ++++++
 2 files changed, 7 insertions(+)

-- 
2.45.2


