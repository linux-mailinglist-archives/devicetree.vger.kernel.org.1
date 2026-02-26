Return-Path: <devicetree+bounces-268689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE47NHQNoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:08:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 427001A3239
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 627F930C39AA
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF3D38E5F2;
	Thu, 26 Feb 2026 09:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="DRJ4uOHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE462392C4D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096762; cv=none; b=GVqw3au2160883fMmSnK1EQsGWjQNn/A7RP0ZYkztp0MMgVhLceBYlnvDSSR5dbvNODRWfouLiHsgXuocZyLR5wfLmAGVKUfMZvA59SP9ZQByE62i7DBxxNu95rUXwLrCCYwfKx8YK6ZjxEFfztxYn20HRUWp9vnb5nB9a1AMtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096762; c=relaxed/simple;
	bh=aE2vtxJvalYSjSofMR04Km6NVyxGzqLey7HQnLxPN3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=IHAvMOS5xItT3OtOdvPoUxvq+PJchVhm/hjnw/iGmcUsbR+maNJhGTPWMDE8wvIYf53rVatRawdJOBuK3s1W2Ejabd9Boc8RE/i8HkXIVMtoWOtrin5A9r5TGDPSQb2A8wCuIqsgo2fY3roW0L7NK5M3K/fIF2qx4bNFJ+ZhYoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=DRJ4uOHU; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260226090558epoutp04228ae9449b9a399b21d096c8f2316141~XwJztY_9T1190611906epoutp04e
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:05:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260226090558epoutp04228ae9449b9a399b21d096c8f2316141~XwJztY_9T1190611906epoutp04e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772096758;
	bh=I7ZFQYOB7yx8R4QMFhxffaCSlEpWbjWPfNRbKezJ+x8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DRJ4uOHUgKfyR4R9Zjt0bSFyjHsNzPdgbqHLmHav4qAQUYWwak5v+boJYoi8b2wE2
	 G2r24IuqdlfzqoWnY+yz19gnXB5vSZEwm81DSvjjb/Ded+86Q6Pbh3KtX2Z67ELj1i
	 yR4b7NO0egxGn7wkEdlJCGTKMnLYXM9/zYlnQXvw=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20260226090558epcas5p34db3ae29a09e725ebeb5e29d4077b85a~XwJzP0PQG2391023910epcas5p3D;
	Thu, 26 Feb 2026 09:05:58 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.41.40]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4fM5Cp0hGRz2SSKg; Thu, 26 Feb
	2026 09:05:58 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20260226090557epcas5p417e32bd964f256e22e7005057e1d1092~XwJzDswpU0643906439epcas5p4F;
	Thu, 26 Feb 2026 09:05:57 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260226090557epsmtip17501757744c424baa60b39ddfbef31ee~XwJyQlV1u0308703087epsmtip1R;
	Thu, 26 Feb 2026 09:05:57 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: shawn.lin@rock-chips.com, ulf.hansson@linaro.org,
	jh80.chung@samsung.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	robh@kernel.org
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, hy50.seo@samsung.com, kwangwon.min@samsung.com,
	ping.gao@samsung.com
Subject: [PATCH v3 3/3] dt-bindings: mmc: synopsys-dw-mshc: No need to
 enforce setting two clocks
Date: Thu, 26 Feb 2026 17:10:51 +0800
Message-ID: <20260226091051.300579-1-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <CGME20260123085150epcas5p42f2cc04843ae7657380b2968261246cb@epcas5p4.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260226090557epcas5p417e32bd964f256e22e7005057e1d1092
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20260123085150epcas5p42f2cc04843ae7657380b2968261246cb
References: <CGME20260123085150epcas5p42f2cc04843ae7657380b2968261246cb@epcas5p4.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268689-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:mid,samsung.com:dkim,samsung.com:email];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 427001A3239
X-Rspamd-Action: no action

The driver `dw_mmc.c` now treats the biu clock as optional, so the
binding can be relaxed to allow a single clock.
Signed-off-by: ping.gao <ping.gao@samsung.com>
---
 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
index a6292777e376..7a02fb6f585b 100644
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
@@ -24,11 +24,12 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 2
     description:
       Handle to "biu" and "ciu" clocks for the
       bus interface unit clock and the card interface unit clock.
+      If only one clock is present it must be "ciu" clock.
 
   clock-names:
     items:
-- 
2.50.1


