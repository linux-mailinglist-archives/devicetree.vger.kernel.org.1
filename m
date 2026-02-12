Return-Path: <devicetree+bounces-264929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WINTEqeNjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B8B12B369
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92D3B30D68A9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D381B245008;
	Thu, 12 Feb 2026 08:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="Ctjt6IWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E423875D
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884485; cv=none; b=PdA5iidMRXw1OqlswHZmxpPbDt/d0ftfsn1kfbGLJcvUuPm5jYziH62bGtdg6oHprnJnwd67AIvfxVupckrf5nbK1QyGiTyz3Z3jYPzP1zvhaNy5Dbe0aRdQ2v/0C+luxeaIKqWvrMggKkdoMbitqu6WDPHXYMvHGTBqh1EeaKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884485; c=relaxed/simple;
	bh=uaJz70a5HtpppJM1uDpvpzaIVatBBzKVXuSZYDb9J2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=ic4rkajGKkcQroy08wOMOwAnFDvypPj8Go0ngCDqQbZPnNzOn/DHNjtsbdz6795YsDqybzz0jj1nsWfgudbKTXkx2cNgepXNGZpTJSwHQ6Gl42fBbDrtKaElyGv2n19ATQv5cktwBHxHY6PTnBkYcrXIJzq0Ov8MmjKupBw4198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=Ctjt6IWF; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260212082120epoutp0221edc624a646458e04e3304c3bd4c327~Tcg2KzKCo0747107471epoutp02t
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:21:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260212082120epoutp0221edc624a646458e04e3304c3bd4c327~Tcg2KzKCo0747107471epoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770884481;
	bh=cM6jiX6EpRpGNIZhWV8C294Ozzp8GFh0duU7R9QGvtw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ctjt6IWFCQjdwnLRAoVI/R9mWgFK+5UkAg45RENO/8Vq3LkMsClD8I97j+hXzTKH1
	 zmTCZ88FMRVCliqwsEqSKTRdAmgcgdgw/EGYYIo7G2cnnFdcd2rGr5SFnKLfZNo5NK
	 iILXsQ8/WkB3QWL3JykqvO60OMM/KNc6LTd6PL2Y=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPS id
	20260212082120epcas2p221c7a836f88231f14b31bd950a29f7cc~Tcg1yu5AO1461014610epcas2p2g;
	Thu, 12 Feb 2026 08:21:20 +0000 (GMT)
Received: from epcas2p1.samsung.com (unknown [182.195.38.203]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4fBStm0vfHz3hhTG; Thu, 12 Feb
	2026 08:21:20 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20260212082119epcas2p34791b0d7ad5ea3b50c6bcfe03cf0f16a~Tcg06DkER2195121951epcas2p3s;
	Thu, 12 Feb 2026 08:21:19 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [10.229.19.146]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260212082119epsmtip12073e4db08141947793fb95030e49f75~Tcg0zcZTC2298622986epsmtip1Z;
	Thu, 12 Feb 2026 08:21:19 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	sowon.na@samsung.com, Sanghoon Bae <sh86.bae@samsung.com>
Subject: [PATCH v2 1/2] dt-bindings: soc: samsung: exynos-sysreg: Add hsi0
 for ExynosAutov920
Date: Thu, 12 Feb 2026 17:21:03 +0900
Message-ID: <20260212082105.1878720-2-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260212082105.1878720-1-sh86.bae@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260212082119epcas2p34791b0d7ad5ea3b50c6bcfe03cf0f16a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260212082119epcas2p34791b0d7ad5ea3b50c6bcfe03cf0f16a
References: <20260212082105.1878720-1-sh86.bae@samsung.com>
	<CGME20260212082119epcas2p34791b0d7ad5ea3b50c6bcfe03cf0f16a@epcas2p3.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264929-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:mid,samsung.com:dkim,samsung.com:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sh86.bae@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A4B8B12B369
X-Rspamd-Action: no action

Add hsi0 compatible on samsung,exynos-sysreg
To support ExynosAutov920 PCIe settings:
- PCIe PHY power control
- PLL settings for PCIe
- PCIe device direction (RC/EP)

Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index d27ed6c9d61e..a44fd24ed0ea 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -30,6 +30,7 @@ properties:
               - samsung,exynos8895-fsys1-sysreg
               - samsung,exynos8895-peric0-sysreg
               - samsung,exynos8895-peric1-sysreg
+              - samsung,exynosautov920-hsi0-sysreg
               - samsung,exynosautov920-peric0-sysreg
               - samsung,exynosautov920-peric1-sysreg
               - tesla,fsd-cam-sysreg
-- 
2.45.2


