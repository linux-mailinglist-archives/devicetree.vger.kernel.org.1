Return-Path: <devicetree+bounces-264510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC6bF1hti2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:39:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F4E11E060
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06A7330BF769
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A28F3ACF12;
	Tue, 10 Feb 2026 17:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="sNCt7FYF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E3E3A6403;
	Tue, 10 Feb 2026 17:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744884; cv=none; b=DI2v6nb1G/aIOkV7Bhqp4x3dqDWatBWRfgOBIFZ8AvzsVo7nImp3PMwW1g+xDDaliI3UfwYclV1l5O+jOPC6ZmPyLseCbJyN8jGFsUXx3VCtNl5dBCP9rULArI8C1Dw1WHf3/EWwFQk9OKfO84JE5zkM4Iv4CHvK+vP9vf9MmeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744884; c=relaxed/simple;
	bh=HQ4pWzYerX30F4hSO8byThnhG2+VNt8BytSWSpIE4eQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cl6zeTuIuS06Z2P5X8U5mMymcRX6KZC4H4TUhBCB8AYjRhJ/+iPXNx0wjxkiez3U0oFwPdDeXu+guMbSjnnWubB0Iwbb+ALnCJvQAUucyoXpXx+iPONqjBbhoAZKlAmsT2rLa0atMr1z+XqX2qYOM9b51Ai98Q4WcD61cw+0X0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=sNCt7FYF; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 8AC851A0D81;
	Tue, 10 Feb 2026 17:34:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5FE4C606BD;
	Tue, 10 Feb 2026 17:34:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3620410B9221F;
	Tue, 10 Feb 2026 18:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770744879; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=DSVj63KfoDkgV6+eP5+RXnlkCT5AQSLoR9qU3u9WU6U=;
	b=sNCt7FYFHAWlf40+DTFC2iwkyQlwkKO2wxHX3hNsYhc1Gtmokza/UWXLftKjlcfxi2QB0c
	Zt7rGKrlzDEhYq8Kk4Dm4Xy+X/XvN1xNSXiBhEo6LaJyiDr9Tb594B3ASRaMi+5V5QTZ9r
	X6qW4YvE5nvOI6YKkJK/U0RA1xWgUrgrhmPAkOcF3iqh2m6ZGPwBdHuOZdbEGVp+YQk/XO
	CY0rGlDPyXN0tZgYCIhJ23iBAQvZNMd71wfr5Iwsrvnr6N67ygk1dVH9WZ+jXC2GTWs9Ze
	zb5UCv43mGK4OYKJnY6oR09L0Uwpbr36ppk8wF/k+R+ysqLcwuo3/Nqg+M1EIw==
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
Subject: [RFC PATCH 13/15] libfdt: Introduce fdt_ptr_offset_
Date: Tue, 10 Feb 2026 18:33:41 +0100
Message-ID: <20260210173349.636766-14-herve.codina@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264510-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: F0F4E11E060
X-Rspamd-Action: no action

libfdt provides internal used helpers to convert an offset to a pointer
but nothing to do the reverse operation.

Fill this lack and introduce the fdt_ptr_offset_() internal helper to
convert a pointer to an offset.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 libfdt/libfdt_internal.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/libfdt/libfdt_internal.h b/libfdt/libfdt_internal.h
index c1ae306..9fd0012 100644
--- a/libfdt/libfdt_internal.h
+++ b/libfdt/libfdt_internal.h
@@ -47,6 +47,11 @@ static inline void *fdt_offset_ptr_w_(void *fdt, int offset)
 	return (void *)(uintptr_t)fdt_offset_ptr_(fdt, offset);
 }
 
+static inline int fdt_ptr_offset_(const void *fdt, const void *ptr)
+{
+	return (const char *)ptr - (const char *)fdt_offset_ptr_(fdt, 0);
+}
+
 static inline const struct fdt_reserve_entry *fdt_mem_rsv_(const void *fdt, int n)
 {
 	const struct fdt_reserve_entry *rsv_table =
-- 
2.52.0


