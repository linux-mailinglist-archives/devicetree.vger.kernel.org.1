Return-Path: <devicetree+bounces-268686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEAyA8EOoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:13:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ECA1A3354
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:13:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 860803015EDC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E1A395279;
	Thu, 26 Feb 2026 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="ftHDagL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AE8392809
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096716; cv=none; b=QfjgLLymqqHAX38RwJ0nuhVYJeUN8JxDuV16rxXzHWIgjlUxKcHQgPdfhCAE6DaqauZbKHJj9ttiGrAN22lEsJ76X4DFsfXgLA3w5NG2RIh8E6VmKAxjzG6vElYcnK+1svLjtI5eOzhyo7pl57mQxNplLLNmhH5KTd1VCfTSKzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096716; c=relaxed/simple;
	bh=Ll1C/k6us6VNV4G+XvSuQrT3k/czbVvKdxB4yjiF6jE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=d4j3E8AA66+BV4ZrdELlvIC+S82ue3HdluoMtYURP3lOqvn2/KHs6uwsTJ8cl9INzrDQoFeTvNbDT8h5/xipnDHz3EfHmFta7qPZLcOKeNrB3uWMGvifYBldvKS+r4jOhlKmhDVsYHpZNJ0eG5cVMhecv0WxFBwKXjfSEQxg6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=ftHDagL2; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260226090505epoutp04199d7f6e52d0c060486efbff6e4b5cb4~XwJCcAH4U1147211472epoutp04G
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:05:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260226090505epoutp04199d7f6e52d0c060486efbff6e4b5cb4~XwJCcAH4U1147211472epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1772096705;
	bh=PZeSZWFesAgEfOfY1Eam39aeSIQJZPf2ZiqvMOXv1vc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ftHDagL2pNZ07RVKrxfZTZoS/4kGwdLYW4PfNKKvzEtsV+X0NRh8kVgGKs7hmteWT
	 VaDhb5wUQ0s7VyP1QpWL8XNu8PQ3KjnfYUh4SyLx0tE4hyvFYFZB+8yN529xAg0BYV
	 UWaj4uXmmMA0iLqxJdWZsO4zw2/WoMdL8lEnyuPE=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260226090505epcas5p1d8fd7593316a7567deff72615749a3eb~XwJCGLO1C0280902809epcas5p18;
	Thu, 26 Feb 2026 09:05:05 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.41.42]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4fM5Bn2Hlmz6B9mF; Thu, 26 Feb
	2026 09:05:05 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260226090505epcas5p2c4f159fa29187685275dd950dd69f5cd~XwJB71Xtg1465714657epcas5p23;
	Thu, 26 Feb 2026 09:05:05 +0000 (GMT)
Received: from hzsscr.. (unknown [109.120.22.104]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260226090504epsmtip15c749afc4ee9ee5c3a5b0c944563d3a8~XwJBPGh3f0295402954epsmtip1B;
	Thu, 26 Feb 2026 09:05:04 +0000 (GMT)
From: "ping.gao" <ping.gao@samsung.com>
To: shawn.lin@rock-chips.com, ulf.hansson@linaro.org,
	jh80.chung@samsung.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	robh@kernel.org
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, hy50.seo@samsung.com, kwangwon.min@samsung.com,
	ping.gao@samsung.com
Subject: [PATCH v3 1/3] mmc: dw_mmc-k3: before set biu_clk rate, check
 biu_clk available or not
Date: Thu, 26 Feb 2026 17:09:58 +0800
Message-ID: <20260226090958.300440-1-ping.gao@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <CGME20260123085150epcas5p42f2cc04843ae7657380b2968261246cb@epcas5p4.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260226090505epcas5p2c4f159fa29187685275dd950dd69f5cd
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268686-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,samsung.com:mid,samsung.com:dkim,samsung.com:email];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ping.gao@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 19ECA1A3354
X-Rspamd-Action: no action

If biu_clk is not available, no need to try to set and get
rate of it, just bail out and print a warning

Signed-off-by: ping.gao <ping.gao@samsung.com>
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


