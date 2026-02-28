Return-Path: <devicetree+bounces-269483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEogG1aJomkd3wQAu9opvQ
	(envelope-from <devicetree+bounces-269483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:21:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7BF1C08C2
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6F79D3063682
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B7BF33DED9;
	Sat, 28 Feb 2026 06:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="oEOZjaX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C4034EEFC
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772259636; cv=none; b=MnO6YPulzFGLszEFWej3kbeuaBnzAs0ZXsDSkhd4siLhajaqAd21IADsLTLVjGS/JgAmzFnJZdEzLWffUHUv3bkQnz6CGaq3/HC9LvWAv6v+Qkp4GdXZOfDML+bCfv3VEmA/UM1bNN4g423NQlvL7pjr//lkBooBryLgXxmqygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772259636; c=relaxed/simple;
	bh=Mc/ukhBWOAhsNnX5Y5G66zMN5eMnSSSUgsc5IzoURhY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=uciuQapL3Ao5As9haNyll3a4YBrbHNF+eaxuQhcp7NDdhPjFK2iC4EORmxqQYa5cElvhMtOGYyY2we89RJGluGr1DUQsH9zdR3s4aQVIT+E8t9kHnBB0EKuyRQD6YpNQwSqP+d5qYGbTrxs5TBAcmMD6oNZQTOV4fwfrOZGMTh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=oEOZjaX8; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260228062026epoutp023783df12813c3f728d6a8fe891dca920~YVL2naa0s2193821938epoutp02e
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:20:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260228062026epoutp023783df12813c3f728d6a8fe891dca920~YVL2naa0s2193821938epoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772259626;
	bh=Y7aeIzf7YhdhhUIQOXfrmLJoFXSw3G6nv5YZ41qAq2c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oEOZjaX8QZLgQokHPTu/TJnJAfwAUmjBzD38XUX6y2bMUIEiNPauc8Ai3FmKSQKUl
	 5r9Q8IyYStdz9JWjmzAVzDdTmATT07aLvW756ow7hzJBVkw6/v/AL1kxt77saClg5H
	 /zvDOuXn3ncMn83VTMS6rH2sghDSSNUR00I+e0vs=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260228062026epcas5p2f41a408da6e54a6aa8adbfe41327b7eb~YVL2PtDzq1169611696epcas5p2v;
	Sat, 28 Feb 2026 06:20:26 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.41.40]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4fNFRt3Nlkz6B9m9; Sat, 28 Feb
	2026 06:20:26 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260228062025epcas5p2404df86646abdbe307bd792d339dd350~YVL1n1E102344523445epcas5p2n;
	Sat, 28 Feb 2026 06:20:25 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20260228062025epsmtip2d7252c306b207bd8913d19341d370c49~YVL07h2261538715387epsmtip2q;
	Sat, 28 Feb 2026 06:20:25 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: ulf.hansson@linaro.org, jh80.chung@samsung.com
Cc: shawn.lin@rock-chips.com, krzk@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kwangwon.min@samsung.com, hy50.seo@samsung.com, Ping Gao
	<ping.gao@samsung.com>
Subject: [PATCH v4 2/3] mmc: dw_mmc-k3: before set biu_clk rate, check
 biu_clk available or not
Date: Sat, 28 Feb 2026 14:24:56 +0800
Message-ID: <20260228062457.3210099-3-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260228062457.3210099-1-ping.gao@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260228062025epcas5p2404df86646abdbe307bd792d339dd350
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20260228062025epcas5p2404df86646abdbe307bd792d339dd350
References: <20260228062457.3210099-1-ping.gao@samsung.com>
	<CGME20260228062025epcas5p2404df86646abdbe307bd792d339dd350@epcas5p2.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269483-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3F7BF1C08C2
X-Rspamd-Action: no action

From: Ping Gao <ping.gao@samsung.com>

If biu_clk is not available, no need to try to set and get
rate of it, just bail out and print a warning

Signed-off-by: Ping Gao <ping.gao@samsung.com>
---
 drivers/mmc/host/dw_mmc-k3.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc-k3.c b/drivers/mmc/host/dw_mmc-k3.c
index ad6aa1aea549..ccb6bfe3e0ce 100644
--- a/drivers/mmc/host/dw_mmc-k3.c
+++ b/drivers/mmc/host/dw_mmc-k3.c
@@ -190,6 +190,11 @@ static void dw_mci_hi6220_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 	int ret;
 	unsigned int clock;
 
+	if (IS_ERR_OR_NULL(host->biu_clk)) {
+		dev_err(host->dev, "biu_clk not available\n");
+		return;
+	}
+
 	clock = (ios->clock <= 25000000) ? 25000000 : ios->clock;
 
 	ret = clk_set_rate(host->biu_clk, clock);
-- 
2.50.1


