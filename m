Return-Path: <devicetree+bounces-264501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oD3gCkdsi2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:35:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B787111DFA1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8DEA6301BDD4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275E938B7C4;
	Tue, 10 Feb 2026 17:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ArA5Y/d5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC7838A9B8
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 17:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744869; cv=none; b=Eak+O7eyXaK25zbLpMUYWqJeMScDK8n5OBVQ4BQ3IGFjcmjOg6TamrgpmgfOst83aoytzcmFLK3EWqRQhwkWYOXKDe7zz0CQNjzZuFRYuBYloJqEbdvj5X+l3pk+l3qk+wbA/CkCA9BRmvaCQ56QCmplE/j5dads9m0wQyGxVNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744869; c=relaxed/simple;
	bh=zYENmNeoK50FAEN/MLEGVot7VFgpGQ/IT83bdETLvKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eYEFuneXczWZgTNNMNOZ3R/pVBF6n75f+P/YLxsCDMdb+IfbR1HixycTqb+KbEdtswhUrJa5pzj1KYtEt/WSDzLpcDTsW9fAQ7DEO+IxpyLKITgxh56eyT3pfG9gE5zljz7UKmsECOwd8GCryF637wIj7K0/kdgmEhEpCGkrDh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ArA5Y/d5; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A0E3E4E40BFD;
	Tue, 10 Feb 2026 17:34:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 71698606BD;
	Tue, 10 Feb 2026 17:34:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 898F010B92227;
	Tue, 10 Feb 2026 18:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770744865; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=wExgBnhPT8Yp1uOS4Aujf9960S3oyDSX7kIazJEW+VM=;
	b=ArA5Y/d5CuD9se5qO4fTdM0mGZhUxHPaWjS2z3ptBTIm7T9lqQY179GQqXAmF0YBZuUgfM
	U0UC/NQlheM8rDEIYSg810KALGVUXOc2RvVSKoL0X42fxSQd5SLMm5drdcLXjCVJb1orVL
	XfxMwb9rh+XvO1P0cnK7GKr3JpK9Ot3TVlY+G3vQUkx5LUN1yvLKbUyMK7SsG7Vi5haFfm
	vbY3kXbwU2JxEdGfcvRMQLhPyNNVWhuqGZXERSLJ9ouuIpLjjRPbMaH6h7CFBPY3zc3xdH
	ckksJxhzf4oYK7pVkRp/nfguPAjh2ihPYXAJwTwc7sDxl9hbaSsPRzvjKHDk4w==
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ayush Singh <ayush@beagleboard.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree-compiler@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree-spec@vger.kernel.org,
	Hui Pu <hui.pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [RFC PATCH 04/15] libfdt: fdt_rw: Introduce fdt_downgrade_version()
Date: Tue, 10 Feb 2026 18:33:32 +0100
Message-ID: <20260210173349.636766-5-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260210173349.636766-1-herve.codina@bootlin.com>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264501-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B787111DFA1
X-Rspamd-Action: no action

Current code perform a version downgrade at one place only, the end of
fdt_rw_probe_().

In order to offer a finer grain and choose to downgrade or not depending
on the exact writes done, introduce fdt_downgrade_version() to perform
the downgrade operation.

The modification doesn't introduce any functional changes.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 libfdt/fdt_rw.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/libfdt/fdt_rw.c b/libfdt/fdt_rw.c
index 7475caf..90ea14e 100644
--- a/libfdt/fdt_rw.c
+++ b/libfdt/fdt_rw.c
@@ -22,6 +22,12 @@ static int fdt_blocks_misordered_(const void *fdt,
 		    (fdt_off_dt_strings(fdt) + fdt_size_dt_strings(fdt)));
 }
 
+static void fdt_downgrade_version(void *fdt)
+{
+	if (!can_assume(LATEST) && fdt_version(fdt) > FDT_LAST_SUPPORTED_VERSION)
+		fdt_set_version(fdt, FDT_LAST_SUPPORTED_VERSION);
+}
+
 static int fdt_rw_probe_(void *fdt)
 {
 	if (can_assume(VALID_DTB))
@@ -33,9 +39,8 @@ static int fdt_rw_probe_(void *fdt)
 	if (fdt_blocks_misordered_(fdt, sizeof(struct fdt_reserve_entry),
 				   fdt_size_dt_struct(fdt)))
 		return -FDT_ERR_BADLAYOUT;
-	if (!can_assume(LATEST) && fdt_version(fdt) > 17)
-		fdt_set_version(fdt, 17);
 
+	fdt_downgrade_version(fdt);
 	return 0;
 }
 
-- 
2.52.0


