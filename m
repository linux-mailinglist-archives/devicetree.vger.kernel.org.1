Return-Path: <devicetree+bounces-266431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGV2Le69lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:26:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8ED1569C6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C90FE3006475
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57C52D0C9D;
	Wed, 18 Feb 2026 13:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="fiP91SJU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay123-hz1.antispameurope.com (mx-relay123-hz1.antispameurope.com [94.100.132.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D362C1598
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421164; cv=pass; b=hNMkDsMmu+DrRc4mP2cogGKUPWt83jmtUSLhDAkY3WnrzRRLDP/9qOiuw0EsDOxcRUidj0avm0H2+iPXsfQ+tTSfX9zHhEmTidlYDmnWPvwrjKLhihKu0G3r7qK0TJnENPfn64tg580LGVOzyES454HOnsoR6S8+a4pfroIm9Ck=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421164; c=relaxed/simple;
	bh=5c2dyIMU97fBiuOJZYII660XNaTeK5nBtkXdJ1oeIEk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eFMUegsXOfM+NgvN2sOXAWlBCZBxsxABVdyEfLyYbem1o54K5YDFgMpfDGZMuGO0oDIbb9175GMpjDsFlDRqrPoD46xIocMPy83EQhLE7LNswdZateswxPriQp/rrtz3Px4a3XvovvAGFguHZDw0SytZTaD08THme34ictcPGgY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=fiP91SJU; arc=pass smtp.client-ip=94.100.132.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate123-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Vct5iZGd/imATYwEFgUO2YyJOrdt2X4AFQLzoSzucfM=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421076;
 b=hVztcgijvD3aMHHtZQxyIs7rs4lyAN3ZTEgdk1qlgn57bL9jdj5/YUYbkh1w30WQ9rD49k7q
 oMWTM1cNepFbY+xlb+bgXy0c71CPmCVGNMZ2oFHm0u3dE8fxSKuoxp2hOC+TzxwRWcGnZuv90rL
 N7drvlGME6XXhbYgSSxV8Xegfh1HFF/OyEz7Ma7NeVOnBg1S8cOwyp4fPh/IkrcrRNiB5yGCGu7
 7MlWRoLZKe5tKeiaIfyYdYNWspREO++syVRQL6NEUdUmzOKJ8uay7GC794sXNYY4qBE+lFX9l09
 jLYTA+gLfMuu3LuGdDcIs80cncnybw7u1aJ/V7Y4JCvDw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421076;
 b=aR0QIcJ6+I1632jI/P5SNC3P0EA374wzXSLrzCLh4Zi5iXxwruZxlpIT7q0MraCOreY56eWT
 CBqgepgOtZo/pTw9O2wYwAXCRF6CKSjvivWIuM0LBYdac3wVXfNm/VBlms/qVDGEHe6zpRabgPj
 PzzA2rWy8DjW0yhOgX4KPYnU1ozp8ceUEVl0A1EIcmjf7DVJmnZ8PO6z5xpurm+9cUWY/Y3OMdp
 3V7+oFK/cQQS2wWZbM1LhJ1CEWI5GEaeR/GeUxYW+qv+SwkfxGxP2bZS/dWgRKhBIXm/0JYXavT
 5iKHLzCVbiHvCtpK1cNvPmcQjC2uK1LyExHjmozcZVcig==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay123-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:24:35 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 30899CC0956;
	Wed, 18 Feb 2026 14:24:28 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: tqmlx2160a: correct spelling of TQ-Systems
Date: Wed, 18 Feb 2026 14:24:25 +0100
Message-ID: <20260218132426.32293-1-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay123-hz1.antispameurope.com with 4fGHKm5Mmpz2mZGl
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fafd118ef6036930a1a51b8f197bd6b9
X-cloud-security:scantime:2.384
DKIM-Signature: a=rsa-sha256;
 bh=Vct5iZGd/imATYwEFgUO2YyJOrdt2X4AFQLzoSzucfM=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421075; v=1;
 b=fiP91SJUQafQ5hlKL+66YellDCcywsaJUgJfGboPHqzun+q7zUjGHtEiWf0eUr3nm+5I2CjH
 XRmYtSGmKjUpFJiVNa9sOWPnpRmisp6TZv23RAKIZ73rkS5bncQROb+Vykq6z96VVUuUzDtcWgM
 a8fAMqAy6ALtvCZwPQr8j7LeZIE36c2sIrBmCBDWl6ZC8yu64fr3cBRRD2pxlo7TxEo0S7D1/49
 pKE+1SLOwOQwBCceIJbH+3miVJFvcYvaOMhyNQt1Sz7TgkYNloE/eUvUSQ7+xTWW/lShmc7Tj4b
 uEfEyqq1AbUqrxEqLMyl1ibYI3QTtqcVNycO8SxnCTD6A==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266431-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 5E8ED1569C6
X-Rspamd-Action: no action

TQ-Systems is written with a hyphen. Correct the spelling.
While at it, remove "GmbH", as the legal form of the company omitted
in the model name of other TQ-Systems hardware as well.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 .../boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
index f6a4f8d54301..48b23f474fbf 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
@@ -14,7 +14,7 @@
 #include "fsl-lx2160a-tqmlx2160a.dtsi"
 
 / {
-	model = "TQ Systems GmbH MBLX2160A Starterkit";
+	model = "TQ-Systems MBLX2160A Starterkit";
 	compatible = "tq,lx2160a-tqmlx2160a-mblx2160a", "tq,lx2160a-tqmlx2160a",
 		     "fsl,lx2160a";
 
-- 
2.43.0


