Return-Path: <devicetree+bounces-309653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OLNYHgA4KWoySgMAu9opvQ
	(envelope-from <devicetree+bounces-309653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:10:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB1E66822E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:10:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=andestech.com (policy=reject);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309653-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309653-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BEC23013DE8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9CA138E8A6;
	Wed, 10 Jun 2026 09:57:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (atcsqr.andestech.com [220.128.198.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B1C3E3C50
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:57:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781085477; cv=none; b=vEPFGmpmnHYieWKmBdvGz1lhYzLDtEJOoiO4anszUYDJmTXLb9izw0aoxGbZQIyeiaNPIHIFDbjcyKLNLAPwmo/9fvw2Q9xfbVjRa+3ZzH2vkxDpE0whNDAUpX5qlUIH7MYjriJ8WbeUF+C5mxKgs/ENEuhA2n/I49hPt3mAQHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781085477; c=relaxed/simple;
	bh=HQGCYef9Jech7YbFS/MDuDvw8Gqg08Q9Lt3ZA2xMrWM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ws5J+LL2FaTXTHcq90Ib5eaQ2MjvVR7L6eyGceJqakKGn9+Rb7YCA7u+zTm3okYuj3PotgFA2Q9DjQTORM6cnv64KMmsUQxCKQxm8Zj3a9K9kC3Y468zGQjEZSsXNr8qb6mn9YZ87hk64xAShmmwBl2g4S11nUJIwSAsiWCJ8Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=220.128.198.184
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 65A9vh0d075452
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Wed, 10 Jun 2026 17:57:43 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 10 Jun
 2026 17:57:43 +0800
From: CL Wang <cl634@andestech.com>
To: <vkoul@kernel.org>, <Frank.Li@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <dmaengine@vger.kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>, <cl634@andestech.com>
Subject: [PATCH v5 3/3] MAINTAINERS: Add entry for Andes ATCDMAC300
Date: Wed, 10 Jun 2026 17:57:24 +0800
Message-ID: <20260610095724.1980622-4-cl634@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610095724.1980622-1-cl634@andestech.com>
References: <20260610095724.1980622-1-cl634@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 65A9vh0d075452
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[andestech.com : SPF not aligned (relaxed), No valid DKIM,reject];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dmaengine@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tim609@andestech.com,m:cl634@andestech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_FROM(0.00)[bounces-309653-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[cl634@andestech.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cl634@andestech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[andestech.com:email,andestech.com:mid,andestech.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CB1E66822E

Add a MAINTAINERS entry for the Andes ATCDMAC300 DMA engine driver and its
associated Device Tree bindings.

Signed-off-by: CL Wang <cl634@andestech.com>

---
  Changes for v5:
    - No changes from v4

  Changes for v4:
    - No changes from v3
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2fb1c75afd16..0d17580a6d17 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1868,6 +1868,12 @@ S:	Supported
 F:	drivers/clk/analogbits/*
 F:	include/linux/clk/analogbits*
 
+ANDES ATCDMAC300 DMA DRIVER
+M:	CL Wang <cl634@andestech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/dma/andestech,ae350-dma.yaml
+F:	drivers/dma/atcdmac300*
+
 ANDES ATCSPI200 SPI DRIVER
 M:	CL Wang <cl634@andestech.com>
 S:	Supported
-- 
2.34.1


