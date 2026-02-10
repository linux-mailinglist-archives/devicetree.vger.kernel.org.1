Return-Path: <devicetree+bounces-264504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIsfCH5si2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:35:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DE011DFCD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 553CA300E48B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50096392C4B;
	Tue, 10 Feb 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="cXMnk9f9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF1B38F220;
	Tue, 10 Feb 2026 17:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744873; cv=none; b=ngykumc5YXFzkjE4gBRTz/b2EkuC0eKfETZprkXhAtgK/j2cevX/eLWEvkB/w3vfrr9KRVwow+q+uoxRjlpdSDA8xTwkQM1XQ0IpTI+lpvKdBmLmvtluYm55eyw0iKLO0RXtt9t6cbQC8g2MW9flonnK2wrN3DYd3lGDHmyfh2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744873; c=relaxed/simple;
	bh=EM6J0dEcKfIdr7d2XOOqiXEzf+XkS7OHUWgKVYm9Hd4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FEjat7c8SGij8l/7GpyWBk9SeD31vRgjDUlZngON+YOHlm1Moi5qFSKSUweVgX9Gazu6itfVS1opape9F6ncgEScUtj1Jx0/I3crTWGpzcuRQyIwdOxOuV0ldf02SAiAqTyr47ytSz8U8OR2/GL1TC1HlabjnT0Wmqumtj6ouRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=cXMnk9f9; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id E26454E40BFD;
	Tue, 10 Feb 2026 17:34:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B9C90606BD;
	Tue, 10 Feb 2026 17:34:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B7A9C10B9222C;
	Tue, 10 Feb 2026 18:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770744869; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Kw02+4pfGTQRfMaOOh1LaHp+lrmAxxrpyVPxs0syLUY=;
	b=cXMnk9f9r+S/DTfTi3XxF/JBrdsGbUnrBIqKUKs+cAu94zkbAr8bEmeaoFPm0VwL8MOcNk
	u9dZ0hn/2cciQp/eJu8+DOtWfa3B857Pf2XABoruPS3Mi7tTlNTY8ZIuGDjzLfQBRCDGC4
	lSiOZqpFZdIExDcToiwYt01BDhdHX1FS5boqyjwEAF4lc9mxisNf0+U7ZPU8OVRGzok1w6
	J/Q7UeVH413p9j9qK9ICMlLKUb5UcbGGCIOAvblajI6TiNcNIgwPr1P7JunPw9B2I1MjDH
	zbIlMiQ4iSSagCHDc/CkDO05yupnftWkaVu77v3nHy4mhE5/Xb0J/ANfjCo1BQ==
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
Subject: [RFC PATCH 07/15] libfdt: fdt_check_full: Handle FDT_NOP when FDT_END is expected
Date: Tue, 10 Feb 2026 18:33:35 +0100
Message-ID: <20260210173349.636766-8-herve.codina@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264504-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: 30DE011DFCD
X-Rspamd-Action: no action

fdt_check_full() makes the assumption that a FDT_END tag is present
immediately after the FDT_END_NODE tag related to the root node.

This assumption is not correct. Indeed, FDT_NOP tags can be present
between this FDT_END_NODE tag and the FDT_END tag.

Handle those possible FDT_NOP tags.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 libfdt/fdt_check.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libfdt/fdt_check.c b/libfdt/fdt_check.c
index a21ebbc..cca0523 100644
--- a/libfdt/fdt_check.c
+++ b/libfdt/fdt_check.c
@@ -43,7 +43,7 @@ int fdt_check_full(const void *fdt, size_t bufsize)
 			return nextoffset;
 
 		/* If we see two root nodes, something is wrong */
-		if (expect_end && tag != FDT_END)
+		if (expect_end && tag != FDT_END && tag != FDT_NOP)
 			return -FDT_ERR_BADSTRUCTURE;
 
 		switch (tag) {
-- 
2.52.0


