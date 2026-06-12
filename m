Return-Path: <devicetree+bounces-311041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NoSXAjIxLGprNQQAu9opvQ
	(envelope-from <devicetree+bounces-311041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:17:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D81C67ACEB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:17:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=SsLYRTmM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311041-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311041-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DA7D322FA85
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30CC4390200;
	Fri, 12 Jun 2026 16:11:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB86E345725
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280714; cv=none; b=e1HJh5n/vS9G0xzHPpZbmXI59Ugn5luN7x+MidsWkTs3YQNDXK0Zkq7OVpsyz/kPh37HB8IvqAoVX/ZrUF5z9csVikh4laAuj9STF20HiNuoCtjejqMsXbYyNbzqsMRsd+4JkCVI/BvQN7RM7Pt3ooHRB7ZVEja/KU0ooaQ4gDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280714; c=relaxed/simple;
	bh=hqIZNEJ+ngwlZ761oj7BZgDyKDMxvbazfKsfFaHaPBQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=DOpiG7pDItSUfpe+Sk3Cp2Y2IVjFDsgVEQaFBQIXTEkbGqrlIkkQR9ltHq960S+BH95C+wyzemVYNjipsWXggn76O0TFKd7cEnZu5YpLta2RlfzkHILG1hYYIAZcn8kqjWM/hybnph/vGiKG14Txs5Sl2KCtK4bPYnikfMxo7H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=SsLYRTmM; arc=none smtp.client-ip=203.254.224.33
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20260612161151epoutp03138aa11f4dbb9493d035f8f7d9975d19~4YV56Q2NJ1558815588epoutp03W
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:11:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20260612161151epoutp03138aa11f4dbb9493d035f8f7d9975d19~4YV56Q2NJ1558815588epoutp03W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781280711;
	bh=yaYCowk7JVZ5hc+4haO2BGnTeTwQ73DyggnqwLDb2as=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SsLYRTmMUTDiOWZonhICrLVWD4VceVyRQZuPWuhgv1ae+UdFgy8b8QLizPYnqImwN
	 mzZXbMP7w475RcRyc6qcEIJZ61bO1LQokwL3k6cJnAKgA5Hyps1YfbMq9oHWiUxDci
	 u9Pu/RtvM5yUDG85bfRjo2OwFonV72tRD8moROP0=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260612161149epcas5p1f98f57d56cf872c97db48be3bd4f9fc1~4YV48nMGB1158811588epcas5p13;
	Fri, 12 Jun 2026 16:11:49 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.92]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4gcPfF2RnXz3hhT3; Fri, 12 Jun
	2026 16:11:49 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260612161148epcas5p33904df90bd840d20a6db05622aaa28b8~4YV3Hzo0y1868818688epcas5p38;
	Fri, 12 Jun 2026 16:11:48 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260612161145epsmtip12f104651608bcf2fb1a3b7b036a8c368~4YV1DZASj0270302703epsmtip1l;
	Fri, 12 Jun 2026 16:11:45 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: krzk@kernel.org, peter.griffin@linaro.org, robh@kernel.org,
	conor+dt@kernel.org, linusw@kernel.org
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	hajun.sung@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH 5/5] MAINTAINERS: Add entry for Samsung Exynos8855 SoC
Date: Fri, 12 Jun 2026 22:00:20 +0530
Message-Id: <20260612163020.411761-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260612163020.411761-1-alim.akhtar@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260612161148epcas5p33904df90bd840d20a6db05622aaa28b8
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260612161148epcas5p33904df90bd840d20a6db05622aaa28b8
References: <20260612163020.411761-1-alim.akhtar@samsung.com>
	<CGME20260612161148epcas5p33904df90bd840d20a6db05622aaa28b8@epcas5p3.samsung.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,samsung.com:dkim,samsung.com:email,samsung.com:mid,samsung.com:from_mime,infradead.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:peter.griffin@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:hajun.sung@samsung.com,m:alim.akhtar@samsung.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
X-Rspamd-Queue-Id: 8D81C67ACEB

Add maintainers entry for the Samsung Exynos8855 SoC based platforms

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 49a10f0ceb07..fb9b24220258 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23914,6 +23914,13 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS8855 SoC SUPPORT
+M:	Alim Akhtar <alim.akhtar@samsung.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-samsung-soc@vger.kernel.org
+S:	Maintained
+F:	arch/arm64/boot/dts/exynos/exynos8855*
+
 SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org
-- 
2.34.1


