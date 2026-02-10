Return-Path: <devicetree+bounces-264499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MXDDTBsi2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7A011DF74
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 744653011100
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ACE138A9C7;
	Tue, 10 Feb 2026 17:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ta2DXNjz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA138A709;
	Tue, 10 Feb 2026 17:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744866; cv=none; b=PK/WK3MJ3FqJvY3vXsYb3sUmVGBfqb1wtyONFABL3Ti/gwZTlSVWE7wLHg46iYS0UxKGS9wArRpbxIOPcxyuIbtBy7PJdaXGxwWLmeXVdXVPn8lWDA08VHBFYdqNqpMB2EtCpwkj3dI/bCAPKQRUVmI+V89yGpR4Nuh20ETA0kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744866; c=relaxed/simple;
	bh=WtKphMCsjPcCVX5VwtmFrAns3o9ylLtWGgEPh01Qm1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MWN842WEJ+mVHvr4VZxxo+GZ4+ek4LG93mBFdgqT5ASrYVHY9iEkUIghaLUJuEc2iGwF8uc4Icy5QmuzF+41fgFFzF66jEVgwEsY+G/1fWD5l/2oMhCosPtsY3azWrIDtJ3fmHmTnXtujrnZ90Zrhlb+YlNGleSFf6ouFRKBqzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ta2DXNjz; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id EC5D51A0D83;
	Tue, 10 Feb 2026 17:34:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C0A8B606BD;
	Tue, 10 Feb 2026 17:34:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B445710B9221F;
	Tue, 10 Feb 2026 18:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770744862; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Vj+nbmbL/ubeh6lBT2UK7368Bw4bAaxwTg/HQfQrIks=;
	b=ta2DXNjztKdSya0GuB61Wd5PsVWIW7Dhi3eUXS0hnngmoC5WKlB2kxmF4aP8oHX+kZ/E95
	vsP9ZpW8Dxhg5hmaDLFoF9QUO5ZmwqwLnF8V7L/o6IXrTmR54YspwK1UyXaFTscMf2Epbs
	qvi/1Z6MnP+YXqFD106AwshVSfpkwQ0bBCncjB2KeWUMAYDhXthhMGkoydwuwj2yyNHERO
	RhnCQ6xus8GfsBUQV8yqL35wNTt7D7IPfq2VcmfHRZbp+RJyB8CKHColii108SJrIZeqTF
	D1WUH9F4E91a8oSfZMKbUPjeEjnVBJN2kt0S85apVPNFbFF8BO0WPNxAWV8Gfw==
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
Subject: [RFC PATCH 02/15] fdtdump: Remove dtb version check
Date: Tue, 10 Feb 2026 18:33:30 +0100
Message-ID: <20260210173349.636766-3-herve.codina@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264499-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C7A011DF74
X-Rspamd-Action: no action

fdtdump checks the dtb version and simply failed if the dtb version is
newer than the last version supported by fdtdump.

This check is not needed and too restrictive. Indeed, fdtdump does
read-only operations on the dtb provided and should rely only the
last_comp_version header field to know whether or not it can read the
dtb.

The current check also avoid the use of fdtdump in tests checking for
the libfdt behavior when an new (future) dtb version is used.

Relax fdtdump checks removing the check of the dtb version header field.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 fdtdump.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fdtdump.c b/fdtdump.c
index 0260609..6c9ad90 100644
--- a/fdtdump.c
+++ b/fdtdump.c
@@ -169,7 +169,6 @@ static bool valid_header(char *p, size_t len)
 {
 	if (len < sizeof(struct fdt_header) ||
 	    fdt_magic(p) != FDT_MAGIC ||
-	    fdt_version(p) > MAX_VERSION ||
 	    fdt_last_comp_version(p) > MAX_VERSION ||
 	    fdt_totalsize(p) >= len ||
 	    fdt_off_dt_struct(p) >= len ||
-- 
2.52.0


