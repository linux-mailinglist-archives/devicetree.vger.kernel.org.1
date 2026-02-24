Return-Path: <devicetree+bounces-267953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIEfCs3DnWnORwQAu9opvQ
	(envelope-from <devicetree+bounces-267953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:29:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EAA189037
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D18083063D5A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C353A4F23;
	Tue, 24 Feb 2026 15:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="bI+ZobXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4223A1E96
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946803; cv=pass; b=D47iL3rwqe3hoX8f1aKq3CtjuLeYt8UgAhrX/bcUpm3kWqVliR3DWUARGjVKRwbFYk64r/9OzWYqgBWIJ0v24Hc9r+ozRaPuCBP1mdjpp5T0bif3cfCBvupltJu8S95NmLsQvU277+GCNWrVJpYfbRnbfk+zcQYW5kknd+udAsU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946803; c=relaxed/simple;
	bh=k+01+hwB4kXaY+9JVNJXfnhSVvLMNocfGDfK21Z8WAA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=KlK0+/6A+3gUKYmapLTaq1gXyz6o/5RQlQ/U6Eb0KAGORztVIwPdjkzd7TtYQEmXyUoM6PrRqu5hX8M05RBJr/D6JuS2McTne32dihhb66KR2iYpRFKRZfAhNtE5meBa7zIdGa0Mx2qwFVIhRmDo+C/jrXroev3TfJMeiypA4UY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=bI+ZobXl; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=TPwHnjOyDLcddYkDcBVqNyNrgFvDUOQLimt5YHFhyj0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771946779;
 b=jFmN5LBJ0FkKTER+1rhxInnU6Jt9KTDhmYyaM0arbHnVk9MxDsgo0nZzT8qUkyaWYW0kcAAc
 i3QU9yYcFcrDDvX+oM/sjU5dqPldlYI/PkpyLjeS7vPb0o4CiVhqGGYkOApwFP6FXphzKLbVl1M
 yGlL9uSi4S2a5TX1eP7M+59lcFA5MHPR/JCKes4aVzdhCXoP+IZ657QxuLUejDPEunqIUWVwQTx
 Ob715jU/1JLn+EkY5Vz7OTQzy0kQB9rwM4Le4EuSHCaor7rn3C05DbCkeRszsS0n5cKMJFKDlEO
 3kIQduVduVOvIUtHc2iP3nXDea1UpPdBvV7SqtDVIsIuQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771946779;
 b=f1sNM9krLZRs08Pq4bZwXM0VBPqG7rAlxz8QgQEg+5fEUqZK08E5dWhPFXlU6ByjgOX3zUNe
 Pz24gRbwIw0Agrx1ealmW09AmuNYC7Fh7+8mmw2ZSVoTm3KQbH6FwFJMC6mB+67Wc9kDmv1kvpq
 YYQhcLusc1cHyh/HbfElgX421Wa6UzEsYJJvV3HHznKOV98LIZYFlDhgKDxBF+hrzYu1p2XnLUF
 t2ciP+x+ySzRBA5cxzZMCpkK5bublUNc4Fm8qeB8h5O9jRvCArYh5fIu9ER53AjETcA0MAAxgZ6
 +7H2t6P0j6juRPc8qRd0WNj3u5IE8xqgTnFKmQjnxOKMg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Tue, 24 Feb 2026 16:26:19 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 35EDFA4112B;
	Tue, 24 Feb 2026 16:26:11 +0100 (CET)
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v2] arm64: dts: freescale: fsl-ls1028a-tqmls1028a-mbls1028a: switch mmc aliases
Date: Tue, 24 Feb 2026 16:25:23 +0100
Message-ID: <20260224152523.570057-1-nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fL1lR64HJz3yYSv
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:b434f169457cacbf55fdb26bd24b492f
X-cloud-security:scantime:1.981
DKIM-Signature: a=rsa-sha256;
 bh=TPwHnjOyDLcddYkDcBVqNyNrgFvDUOQLimt5YHFhyj0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771946778; v=1;
 b=bI+ZobXl30ORnQWEmwC7Z8spiayQQp+Ihbzah5qFq/LRrsHKhPOzg18oeeayPjUrj9002iJR
 /ehT5T9ax7f4j6QqgYx/et/eu0a4Iv/pIjLjvqllyUXXPv3UIXganixpy1/iYt1PeLPS6tjU24Q
 wO404T4/VNVKfPIx4PCMQFS0y+RM9CHAqi3ftzwygh5xjoZiz48c1stN4CTtK+anOhSfa4oSlNy
 FDgKksj2G+j7MOJ9GSFdCWjDdjw2I5gZWjdMONaPcG3d5CW1v0Za6drRsI+fwg2zbCaYOQ04o3r
 0eNMOqmrzyZMGZ9K1zgsylAojPhGlHe8f9Q9/oiHZwjbg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	TAGGED_FROM(0.00)[bounces-267953-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: 77EAA189037
X-Rspamd-Action: no action

All modern TQ-Systems boards follow the convention that mmc0 is the eMMC
and mmc1 is the SD-card when both interfaces exist, reducing differences
between boards for both documentation and U-Boot code (which uses the
same Device Trees). Adjust the recently added MBLS1028A Device Tree
accordingly.

Fixes: 0538ca1f102d ("arm64: dts: ls1028a: Add mbls1028a and mbls1028a-ind devicetrees")
Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---

v2:
- updated author information after name change
- collected review tags

As mentioned in the v1 submission, it would be great to get this in
before v7.0, as the TQMLS1028A/MBLS1028A was just added in the current
development cycle, and we'd like to avoid changing the aliases after the
DTS was part of a mainline kernel release.

Best,
Nora


 .../boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
index cf338b2e80064..426a81e1743f1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
@@ -17,8 +17,8 @@ aliases {
 		gpio0 = &gpio1;
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;
-		mmc0 = &esdhc; /* SD-Card */
-		mmc1 = &esdhc1; /* eMMC */
+		mmc0 = &esdhc1; /* eMMC */
+		mmc1 = &esdhc; /* SD-Card */
 		serial0 = &duart0;
 		serial1 = &duart1;
 	};
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


