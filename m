Return-Path: <devicetree+bounces-264500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBF7DDxsi2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C4911DF8B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 518BA300E5C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5C538A9DF;
	Tue, 10 Feb 2026 17:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hp9f3GGH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696E738A9BB;
	Tue, 10 Feb 2026 17:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744867; cv=none; b=UkP6jpYB/3Ab0jC2HnjYS+XTC7EZdQN52jp5nyEGu2SO+VdBbax4N6/CDYROZX6GkrWxabcNcO0060AYmj9rBN8G5AXLj+HOO2aaYw9cKsTtkf4qcqc8kyhlNBxAottKQnvv46deEcQR4teGfyHtpx3eE6XFY26AxXeLLB1UUDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744867; c=relaxed/simple;
	bh=1GYTl899loeKuDybjdYgszBFDSlbIF8YB849krPxnc0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=babV4831rNzu/dmcIjPLyzDAw/zLOn/qn/R67Yrb88PJhzMAElaKfpq/BB0AubceEZRd10PS1pD3E+/5eN976ebKo+9QRtQprGlUozbEC3cnVbKRr/XHxLoAGHcWQoNxMwZMagVMhyDq+2Iphw1+GKnyvLeLkz77tT6aT4XTWU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hp9f3GGH; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 36A4A1A0D9C;
	Tue, 10 Feb 2026 17:34:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0226A606BD;
	Tue, 10 Feb 2026 17:34:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3534B10B91FBE;
	Tue, 10 Feb 2026 18:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770744864; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=0s0U5LlMK8JRmYuXCMEm1DGi0KEOLQu1ipU4LX8zcW4=;
	b=hp9f3GGHrJEauLs7fC+MSDCAEKP0qOlI1lLkhle9YArbhXYMQ6WP2ZA+rHT2fPTaVrdo2l
	0ekNpVnF/CdoZZkpCJmZdaaXO6JSOgxib5sVZ21pKqt8Vmaw/Mhdj6bObolLNrgsSpqBUD
	UpIxyZ9LX6vtFRBLsomPyWOSVfMOuim1mcDkneo4is7UHAiYMQcTtHhyfDPUmNvSKHxOhK
	+7+LOeuv7Ik0/uQ5TikzmDNxNd3F5ujYGTzPu4VA4UsJbMirThPN1qfRktBwwrpqsjhAOK
	vbUfoiTIedvuuYy7RdAwDt1rgDjjqNLYbBRWjYhjAnPQ/ruA8UUsQti21/Enng==
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
Subject: [RFC PATCH 03/15] fdtdump: Return an error code on wrong tag value
Date: Tue, 10 Feb 2026 18:33:31 +0100
Message-ID: <20260210173349.636766-4-herve.codina@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-264500-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 48C4911DF8B
X-Rspamd-Action: no action

fdtdump prints a message on stderr when it encounters a wrong tag and
stop its processing without returning an error code.

Having a wrong tag is really a failure. Indeed, the processing cannot
continue.

Be more strict. Stop the processing, print a message and return an
error code. In other words, call die().

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 fdtdump.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fdtdump.c b/fdtdump.c
index 6c9ad90..0e7a265 100644
--- a/fdtdump.c
+++ b/fdtdump.c
@@ -146,8 +146,7 @@ static void dump_blob(void *blob, bool debug)
 			continue;
 		}
 
-		fprintf(stderr, "%*s ** Unknown tag 0x%08"PRIx32"\n", depth * shift, "", tag);
-		break;
+		die("** Unknown tag 0x%08"PRIx32"\n", tag);
 	}
 }
 
-- 
2.52.0


