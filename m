Return-Path: <devicetree+bounces-264930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPzpEImNjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA612B33B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F3B04302ECBE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEEE2D6E68;
	Thu, 12 Feb 2026 08:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="JLlQT7/n"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9288F2D0C7A
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884485; cv=none; b=CbegMenQ638Rkaxk+uWA0dJ9xhX/3Jhrm7uzbkvp1gXQMlZDgQSrjcDKucilBw4Etd4e2BclGDFyNTSq8NkLeEWax6Ow2poMiJzdJF1sRJQCoa3Jshpo/2SH2FLIuuEmmNOCszoH1DoQwZBbVDmy15mJhGr4MCEbeZynzEZMGeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884485; c=relaxed/simple;
	bh=7gcQw7FbIiJo3iJ+fuHTuQo7HyMAPDNUNBl/8HU+sbY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=rare8fpoC5RGfHUPBU1y1CApxwvPCyg/z62ZKA1axSwt7eN85TxM2RHBljn1ZcuRg8TQ/BGSgnnKCCJ/lGhg3l4IKo207uvuxoa/VNDbPrrhEotAOeMYUXV4IaDEy0PLopwkV9pp55MSuEpaFkMiO3rBTUeU97W/AZKMz56gewc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=JLlQT7/n; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260212082122epoutp0330e56f2bb0df574dc1ac220820662d2f~Tcg3uYP6C1223512235epoutp03N
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260212082122epoutp0330e56f2bb0df574dc1ac220820662d2f~Tcg3uYP6C1223512235epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770884482;
	bh=jq+7d+WH907G/sC72dBql4EeICkftJSTEn0lJUay7qs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JLlQT7/n8CpjN/SFjrK24gJ0CmpRi0DyUlmQGp0R9NwvyCUtCqnfULO1YgMiL9q2q
	 bx/tnK57cDlM0XH004/+DwxseRcyAg7jzhLUsQhfagcT8Z5nAo0Fp9nC+e4+FpRvE2
	 3Aikux8yIy2RyRTo2icHUYItvj+fC/gUxLj+qWjQ=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPS id
	20260212082122epcas2p3c5f2ab74825781264abeb75589396d26~Tcg3WeWyl2198121981epcas2p3s;
	Thu, 12 Feb 2026 08:21:22 +0000 (GMT)
Received: from epcas2p4.samsung.com (unknown [182.195.38.211]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fBStn6Py6z6B9mG; Thu, 12 Feb
	2026 08:21:21 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20260212082121epcas2p23411797366815b497a70833acaf1a2aa~Tcg2hZ0ax1906619066epcas2p26;
	Thu, 12 Feb 2026 08:21:21 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [10.229.19.146]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260212082121epsmtip17949632b44ebe8353f67291179d22e39~Tcg2a1BrO2268222682epsmtip1m;
	Thu, 12 Feb 2026 08:21:21 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v2 0/2] Add ExynosAutov920 hsi0 support to exynos-sysreg
Date: Thu, 12 Feb 2026 17:21:05 +0900
Message-ID: <20260212082105.1878720-4-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260212082105.1878720-1-sh86.bae@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260212082121epcas2p23411797366815b497a70833acaf1a2aa
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260212082121epcas2p23411797366815b497a70833acaf1a2aa
References: <20260212082105.1878720-1-sh86.bae@samsung.com>
	<CGME20260212082121epcas2p23411797366815b497a70833acaf1a2aa@epcas2p2.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264930-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,samsung.com:mid,samsung.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: DECA612B33B
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


