Return-Path: <devicetree+bounces-264927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LvTMnaMjWnq3wAAu9opvQ
	(envelope-from <devicetree+bounces-264927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:16:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DA012B2AE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B7AC306BD36
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D217C242D7D;
	Thu, 12 Feb 2026 08:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="KyIhY3oK"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFC41D9663
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884206; cv=none; b=hb4c9R8J3LhF6tok+jvp70Bfn0ltzrR+lFDUmkztCSgcjev5n14k+zJf22evuTglwaEy4UgTXmuKbV5oaApejblU2paScP3JkQ3P3sZtlovwfZUwHGaqW5/pP3IykAlSGcBu8xjyUYQW1yTnv0xDXDyPzSnEauudHTgSLDk4la0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884206; c=relaxed/simple;
	bh=v/5qMrdIXjRmEOGy1fxpbfXdM8SXsCe8TcNwkmpAdT0=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=qnpH93LQsa/OqKR+g67MI0b/iR8GbY9k3P1OW91WGA6EbL/bOW/0Alpy9U+jNDsjCjdm/1H1B3brawV5B3KrZCPP4k7eeRwnJHME+3sC/LGcB9H5qQQJ2HCYLaDZKj/Nhlvkj+b2AfHQakK8SP852EqLTer3SVsg2Mai+Vhg0sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=KyIhY3oK; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260212081642epoutp03c5c9cc1c8d7939dc9b94787893929708~TcczRexob0977009770epoutp03k
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:16:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260212081642epoutp03c5c9cc1c8d7939dc9b94787893929708~TcczRexob0977009770epoutp03k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770884203;
	bh=fYXLMUq51ld2S/ccOGRxNiqqyw4cWbXp17P8AE98wuM=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=KyIhY3oKGhmqh6YT15Bd+37kr9x243c0YtJKPHmHkBRNCgNyFp5E2ciTJczDwzSsd
	 iyXXpASMrnz+G1vwWk4h3dRocTKnSZpzib0hyhiO04ni9OIGPBmr3ZCtoejh0oC4NL
	 e6+qroj+K65Kx8PIVakpsOZ6drSrN2pNtajKRfZk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPS id
	20260212081642epcas2p14f5b709689d0447523bed621d50b7443~TccymksnI1103211032epcas2p1J;
	Thu, 12 Feb 2026 08:16:42 +0000 (GMT)
Received: from epcas2p3.samsung.com (unknown [182.195.38.205]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4fBSnP5hPLz3hhT4; Thu, 12 Feb
	2026 08:16:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20260212081641epcas2p18a5bad8edf23c5a35c1562245ee2224f~TccxhWPdl1102611026epcas2p1L;
	Thu, 12 Feb 2026 08:16:41 +0000 (GMT)
Received: from KORCO118486 (unknown [12.80.208.104]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20260212081641epsmtip2ce95176f21ce81ae846c45bf83f14e93~TccxdL9P02450824508epsmtip2L;
	Thu, 12 Feb 2026 08:16:41 +0000 (GMT)
From: "Sanghoon Bae" <sh86.bae@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <vkoul@kernel.org>, <alim.akhtar@samsung.com>,
	<kishon@kernel.org>
Cc: <krzk+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<sowon.na@samsung.com>
In-Reply-To: <474a7e3d-a506-4f4a-8bfb-fa6d203707cd@kernel.org>
Subject: RE: [PATCH 1/1] dt-bindings: soc: samsung: exynos-sysreg: add hsi0
 for ExynosAutov920
Date: Thu, 12 Feb 2026 17:16:36 +0900
Message-ID: <000d01dc9bf7$eaa23a80$bfe6af80$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFOtjm7Fjd07XGZZ5ZMM+QG6R8EygIDKRClAfmnLMoCGtr0xrZpxQyw
Content-Language: ko
X-CMS-MailID: 20260212081641epcas2p18a5bad8edf23c5a35c1562245ee2224f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251117085146epcas2p303931d9501af51f08639b17ab7cbe34b
References: <20251117085134.289371-1-sh86.bae@samsung.com>
	<CGME20251117085146epcas2p303931d9501af51f08639b17ab7cbe34b@epcas2p3.samsung.com>
	<20251117085134.289371-2-sh86.bae@samsung.com>
	<474a7e3d-a506-4f4a-8bfb-fa6d203707cd@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	TAGGED_FROM(0.00)[bounces-264927-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:mid,samsung.com:dkim,samsung.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 52DA012B2AE
X-Rspamd-Action: no action

> On 17/11/2025 09:51, Sanghoon Bae wrote:
> > Add hsi0 compatible for ExynosAutov920 PCIe settings for:
> > - PCIe PHY power control
> > - PLL settings for PCIe
> > - PCIe device direction (RC/EP)
> >
> > Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
> > ---
> >  .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
> >  1 file changed, 1 insertion(+)
> 
> You miss an user for this binding.
Will add the dt node for samsung,exynosautov920-hsi0-sysreg in the patchset.


