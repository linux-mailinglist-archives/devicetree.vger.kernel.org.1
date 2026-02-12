Return-Path: <devicetree+bounces-264931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKakHouNjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DBC12B34B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06E5C300E2AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A312BE647;
	Thu, 12 Feb 2026 08:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="XZDYIfJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C402D73B1
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884487; cv=none; b=kRN3ne3rSq7LQUbTcRKEYZSySIq4lB40Z81gl1sR4IuCZlqdqadFkbjbg3eAH7n0FkiXXHfj+gkHZa6SnDJvSPB/cjoNo+r+DOm7BgOWGVKLsAxkIFWzscOvcr7GsEynjBHB1+AUYyJl9jH8p2qmdIy6W9jjlzd7dG16ki7gXAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884487; c=relaxed/simple;
	bh=7gcQw7FbIiJo3iJ+fuHTuQo7HyMAPDNUNBl/8HU+sbY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=nGEMZcNiLw3oCY3U4uK2aynRXSikItTsTgL+RQk6MdScqVDfJPAruKBNAhNv2v4aVCQoI7RS8HKBWcv3/S6ScjZQ3ZvijCDmAYbYZmp/b762BKyJeMPHtLNEa/AwElXhSOFlNyUJ5NIGcQdqYSRaYtq7PUBysooXc62i33BXDXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=XZDYIfJw; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260212082119epoutp01795791b5bc05be40c044209e7b07ac3c~Tcg0XCGxJ0517305173epoutp01Z
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260212082119epoutp01795791b5bc05be40c044209e7b07ac3c~Tcg0XCGxJ0517305173epoutp01Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770884479;
	bh=jq+7d+WH907G/sC72dBql4EeICkftJSTEn0lJUay7qs=;
	h=From:To:Cc:Subject:Date:References:From;
	b=XZDYIfJwI10eXCIBvMXvfcr2mnmXSCKQ/rqccSq7kbXZ8bT37HuzPUm5AxvAOv1vq
	 rpGJNr98hb7wa6zs0voQuVRm01a4HaRaObjfFTvtQPfogGJZZTVSBT5QLC5Z6R04nI
	 VsqO2TRZI683eka1pTTbytImiJh45b6KUwA0oQNk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPS id
	20260212082118epcas2p32103198bb7805f633677ab604cd5da4f~Tcgz5wPNP2198121981epcas2p3e;
	Thu, 12 Feb 2026 08:21:18 +0000 (GMT)
Received: from epcas2p1.samsung.com (unknown [182.195.38.206]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4fBStk0fDDz3hhT7; Thu, 12 Feb
	2026 08:21:18 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20260212082117epcas2p1d77535385304e28d140c1254ab305511~TcgzDqxP_0985509855epcas2p1X;
	Thu, 12 Feb 2026 08:21:17 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [10.229.19.146]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260212082117epsmtip1d33214a4fe5e4052e8cfb17b4aeb1bda~Tcgy8iyVS2155921559epsmtip1G;
	Thu, 12 Feb 2026 08:21:17 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v2 0/2] Add ExynosAutov920 hsi0 support to exynos-sysreg
Date: Thu, 12 Feb 2026 17:21:02 +0900
Message-ID: <20260212082105.1878720-1-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260212082117epcas2p1d77535385304e28d140c1254ab305511
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260212082117epcas2p1d77535385304e28d140c1254ab305511
References: <CGME20260212082117epcas2p1d77535385304e28d140c1254ab305511@epcas2p1.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264931-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,samsung.com:mid,samsung.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 25DBC12B34B
X-Rspamd-Action: no action

The ExynosAutov920 SoC includes a PCIe IP and a hsi0 register block that
is mapped in the exynos-sysreg.

To manage PCIe PHY power, configure the PCIe PLL, and set the device direction,
the hsi0 registers need to be defined in exynos-sysreg.

This patch must be applied before the ExynosAutov920 PCIe PHY is enabled.

Sanghoon Bae (2):
  dt-bindings: soc: samsung: exynos-sysreg: Add hsi0 for ExynosAutov920
  arm64: dts: exynosautov920: Add hsi0 syscon node for PCIe PHY

 .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 1 +
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi              | 6 ++++++
 2 files changed, 7 insertions(+)

-- 
2.45.2


