Return-Path: <devicetree+bounces-311039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ze9RBzkwLGrsNAQAu9opvQ
	(envelope-from <devicetree+bounces-311039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:13:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F267AC3D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:13:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=dj3m9A+U;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311039-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311039-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7B8532589CA
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83A6838F23D;
	Fri, 12 Jun 2026 16:11:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B53035B636
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280701; cv=none; b=CiNBedsjSEk8YXfy0Wvd46tzUWVUjY64hKsNSydVNAKsGdJo+0RoFDNwMuXMY/CqldwvZUJorfZezQkZHTh9oQfOzaLw+2Y/MjgXRjI3imXG4/gY3P+VhG+7dyySDCZtOigH1EqemBE248QbZQs/Qyki65NIt1wRLG4P7JqCLcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280701; c=relaxed/simple;
	bh=Coc6+axgNyuKZ/w9tZNcDBOAp4QRsPLZuDPcvvKDRkU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=PKjXJNF3cGIk3wjiz+k7/QmdSOaQ+Lx8rNtfNzRzq3ekHRpOjDgNGXgxhKuZhWLcSSHwirjnec4MjN1L0bDnalIR2G2XoWbLnzw9u+3tZvRufepmQRXSW56nq7tovc/Pd6+Zc8o4CCzzYSkCrtTuA7gtvP5p45borUpidYETEOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=dj3m9A+U; arc=none smtp.client-ip=203.254.224.34
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260612161138epoutp04dd1e136942d434f9ee8da5d849183988~4YVt7nxgk2387023870epoutp04W
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260612161138epoutp04dd1e136942d434f9ee8da5d849183988~4YVt7nxgk2387023870epoutp04W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781280698;
	bh=Cz8/kWNTiABNBQS/iHlFdfUP/vEMQXqsBrLkZrtPWyo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dj3m9A+UxXTr0RLiLrQHFypwCXLvwhSWdtTT8WL+uwCwb+lwdhdKIjZ8PjhkOOhN0
	 H23bZZWbo/4oMuPcStHOv+wFhBRAFFpyvgRDwy3/3+mB9RsXa7nMZUwmnZJnuLn67z
	 +lOFcTtQfTIBSTI2rG49Xzmeqdnw66r4spewY/GE=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260612161137epcas5p14c3cd223be48dec5a976337b19d27810~4YVtIQNyK3233932339epcas5p1G;
	Fri, 12 Jun 2026 16:11:37 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.93]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4gcPf02g8tz6B9m4; Fri, 12 Jun
	2026 16:11:36 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260612161135epcas5p284a7b8906c3c2651acaa981db964fa69~4YVr3moSw0551705517epcas5p2L;
	Fri, 12 Jun 2026 16:11:35 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260612161134epsmtip19052f4564b5379b93b1a0c8d58b7c267~4YVqclJaV3251832518epsmtip1y;
	Fri, 12 Jun 2026 16:11:34 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: krzk@kernel.org, peter.griffin@linaro.org, robh@kernel.org,
	conor+dt@kernel.org, linusw@kernel.org
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	hajun.sung@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH 2/5] dt-binding: pinctrl: samsung: Add exynos8855-pinctrl
 compatible
Date: Fri, 12 Jun 2026 22:00:17 +0530
Message-Id: <20260612163020.411761-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260612163020.411761-1-alim.akhtar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260612161135epcas5p284a7b8906c3c2651acaa981db964fa69
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260612161135epcas5p284a7b8906c3c2651acaa981db964fa69
References: <20260612163020.411761-1-alim.akhtar@samsung.com>
	<CGME20260612161135epcas5p284a7b8906c3c2651acaa981db964fa69@epcas5p2.samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311039-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:dkim,samsung.com:email,samsung.com:mid,samsung.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp];
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
X-Rspamd-Queue-Id: 868F267AC3D

Document pin controller support on Exynos8855 SoC.

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 7b006009ca0e..c4773701c92e 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -53,6 +53,7 @@ properties:
       - samsung,exynos7870-pinctrl
       - samsung,exynos7885-pinctrl
       - samsung,exynos850-pinctrl
+      - samsung,exynos8855-pinctrl
       - samsung,exynos8890-pinctrl
       - samsung,exynos8895-pinctrl
       - samsung,exynos9610-pinctrl
-- 
2.34.1


