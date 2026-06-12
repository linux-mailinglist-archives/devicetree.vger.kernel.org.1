Return-Path: <devicetree+bounces-311037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4t0vHC8wLGrmNAQAu9opvQ
	(envelope-from <devicetree+bounces-311037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:13:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D790267AC32
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:13:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=QuAVxueh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311037-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311037-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24B7F324050D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB8E3921DB;
	Fri, 12 Jun 2026 16:11:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC8E384CF6
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280698; cv=none; b=ekZ9PWdo+HtJ5Aduxz0KggOSUXsIAqYzvJ9XcXvhrh5/eTPYh/IPwnX0ijsvsr48iuo314JLQFKdV5MvN4V1VQ5KCimpSyK4NTgCSMqSL4EOYdxmKRJmAF0si1vYCQgbfaLeok3v362b9o5bBSoumN78bJBjXGsNSZ3LdZdoylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280698; c=relaxed/simple;
	bh=eYfoVTTY5NEjUxbcKceaFp2ZtOa8bfuibisKfUP+gSc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=dZh0VFcqrZOcDNrg01920jZ16urZT2sNeQSkVguiInDhkGY0gk0vwZaDqyet24YirM7rAtLXWZ3C1RYY/UuM46EVsh0ZDXZQEQcT6qmGwp2l1Uu5I8gk2pJJYtBLsE2gmKQ/3guxt9kXImwHZlri25qy8bRyKp7wBKgzn0EApwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=QuAVxueh; arc=none smtp.client-ip=203.254.224.25
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260612161135epoutp0251d4bb4e9ba0a555a7638b9b7cba2633~4YVrXImIC1807818078epoutp02H
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260612161135epoutp0251d4bb4e9ba0a555a7638b9b7cba2633~4YVrXImIC1807818078epoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781280695;
	bh=wl26fAR/gW6o8YIBNsSnb/apIo7BbF6qv1tG/czd9Dg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QuAVxueh5b+gJnIuvmTzt8X+Lea7cfhuPPZzK/pB0EKlJf1AVBQu7U89QKEab659J
	 AwQ5SjFs4JvIWVsmE11d9V0uaGv9UjEGy3DEt6UHjkQlbZMCN8BEE4aibY3UjxYDgR
	 nzsi+NZokCVy+RXk7VVaDaMF7F1V5rKLqjopr08g=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260612161134epcas5p257c6031f0579b2d030c91f471d59e323~4YVqqIIPJ0551705517epcas5p2J;
	Fri, 12 Jun 2026 16:11:34 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.87]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4gcPdx51P1z6B9m4; Fri, 12 Jun
	2026 16:11:33 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20260612161132epcas5p154cfe97ffb995875f68d8bb6b73c22ce~4YVohhzY10799207992epcas5p1y;
	Fri, 12 Jun 2026 16:11:32 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260612161130epsmtip13d86a065431a729a09355266ada97c6e~4YVmu245_0270302703epsmtip1h;
	Fri, 12 Jun 2026 16:11:30 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: krzk@kernel.org, peter.griffin@linaro.org, robh@kernel.org,
	conor+dt@kernel.org, linusw@kernel.org
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	hajun.sung@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH 1/5] dt-binding: ARM: samsung: Add Samsung Exynos8855
Date: Fri, 12 Jun 2026 22:00:16 +0530
Message-Id: <20260612163020.411761-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260612163020.411761-1-alim.akhtar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260612161132epcas5p154cfe97ffb995875f68d8bb6b73c22ce
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260612161132epcas5p154cfe97ffb995875f68d8bb6b73c22ce
References: <20260612163020.411761-1-alim.akhtar@samsung.com>
	<CGME20260612161132epcas5p154cfe97ffb995875f68d8bb6b73c22ce@epcas5p1.samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311037-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,samsung.com:dkim,samsung.com:email,samsung.com:mid,samsung.com:from_mime,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:peter.griffin@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:hajun.sung@samsung.com,m:alim.akhtar@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D790267AC32

Add Samsung Exynos8855 smdk board to documentation

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index 753b3ba1b607..273464400477 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -235,6 +235,12 @@ properties:
               - winlink,e850-96                 # WinLink E850-96
           - const: samsung,exynos850
 
+      - description: Exynos8855 based boards
+        items:
+          - enum:
+              - samsung,exynos8855-smdk         # Samsung SMDK
+          - const: samsung,exynos8855
+
       - description: Exynos8895 based boards
         items:
           - enum:
-- 
2.34.1


