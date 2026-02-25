Return-Path: <devicetree+bounces-268467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LYQDGUjn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:29:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905419AA62
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C8EB3197BE4
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F283D411D;
	Wed, 25 Feb 2026 16:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="pSd7uyJi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B403D7D79;
	Wed, 25 Feb 2026 16:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036697; cv=none; b=W8b8gGm2iPNwt8uEMSk0U1BeYNAGlYFAiX7PvNsJPz9TdJYtshqhxiCOVduqfRfVxJaAsCynW1gZyADcAGAlfvJPXmLnj+wfS09+YTU0KMxeDukF/3h+y03Vo4KPhlXXh9b5lGeFPTCqOSnlhLjypGX2KK7jSVz5/aYtRDBY/wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036697; c=relaxed/simple;
	bh=s9aEZ3Ji306CnnDc6ILWuNW8h3xADseqYKG3AI6sm+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uwensbZxVYek3Pd/M54Khzq3RV8pTLNn1fMgamwe9dJ7s2zYCC+63gcNfL+HCnX3zaU3Ln05Dtf+1cE2Rd65j1lrOX08tOK9XS7a86P+aXdqNDC+v9zZ0fuKgX9gPjszFf0+aUZjs3/fIoIyHKZSGNpffpSOeZlhWNBK5+zBHkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=pSd7uyJi; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id F29EBC40641;
	Wed, 25 Feb 2026 16:25:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E5A845FDE6;
	Wed, 25 Feb 2026 16:24:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9BA17103692E7;
	Wed, 25 Feb 2026 17:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772036694; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MKKB01c323/N361DE3aK7dkvikONqWPVusDTWKCcQ6M=;
	b=pSd7uyJiT1q+6QGosFTN0Hxk7mXrKShFzABq8Mb550h3hhZiikVLks23xfqqUi4MEWh5ai
	58I0h8s4xFkzMZAnZZ0BYmnr57mvMGc3Ty/q/0Gl7LGO3PijQm4E9cbA8XSIAGGtXZyGPA
	b5elmcVeuzXWI8qtf90wrSJfyzNwQJEHGRBqqHDjqikaXiye/rS1qomX+2L9JuMqkGIRMX
	gExBv/tNodG0lmMObNN5vCbapWDF5h65VHR/4+/ljg2kqmPjsQ5e4QLy1daTrFCS6TJGu9
	S1+NtFFBWLh8rdCFCXISAzlNIRg8YaWFYpWfu4jPhuaLxAY8vuhGHi+xIiQS3g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Wed, 25 Feb 2026 17:24:45 +0100
Subject: [PATCH 3/3] dt-bindings: mtd: st,spear600-smi: Fix example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-perso-fix-spear600-smi-yaml-v1-3-8ef3d205ab3a@bootlin.com>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Miquel Raynal <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268467-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email,fc000000:email]
X-Rspamd-Queue-Id: 9905419AA62
X-Rspamd-Action: no action

Example is wrong, the reg property of the flash is always matching the
node name.

Fixes: 68cd8ef48452 ("dt-bindings: mtd: st,spear600-smi: convert to DT schema")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
index 62d4359908f2..e7385d906591 100644
--- a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
+++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
@@ -76,7 +76,7 @@ examples:
         interrupts = <12>;
         clock-rate = <50000000>;  /* 50 MHz */
 
-        flash@f8000000 {
+        flash@fc000000 {
             reg = <0xfc000000 0x1000>;
             st,smi-fast-mode;
         };

-- 
2.51.1


