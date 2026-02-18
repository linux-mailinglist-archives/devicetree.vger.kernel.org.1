Return-Path: <devicetree+bounces-266427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMZdOcy9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:25:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 505321569A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE0EE301BF5F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CA82D5C8E;
	Wed, 18 Feb 2026 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="V3354klM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay38-hz1.antispameurope.com (mx-relay38-hz1.antispameurope.com [94.100.133.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F722BE034
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.214
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421104; cv=pass; b=n5VPXQrUmMRKUgHrrbqWs5RAHVeNmA40E9aQn0xJfYfpgV4ogUhcu8hV1adTtNHuD4KyBNAxv1Bm7afvic9spdfZyxfBUhS62jUfL/B0suRylzEumYi8dZcIyW2apCRzC3dPkKXZl5h+XHIrYsLxzhwZ8aVors46Dp2lwZR73y4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421104; c=relaxed/simple;
	bh=8H3g4LrDDnVAOOryXkCEr0HuwrzgS7Ym/b9junQV+vQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ESC8tGzdiUNAgQgEoeHenBL+tyviuyh5kufU4CdqpLQtc2g0g0K4BMC3oZkfy+MAKYsP7lerD7vGkf87fcGn9D8TFFzB/gBDLZLbnOmq3slh8FboWL1NRq+EWv3mggPrfVdWZebvAfw5AzaUeJuPDR0fSdrxkLubk8SGyyWb20s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=V3354klM; arc=pass smtp.client-ip=94.100.133.214
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate38-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=/iP3fOaMQBWNKNN1vjX0YDigLj4q0i816Ex++HVQlrk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421062;
 b=We8fr2H2QNen3wdZ0AKaw7f7zFfv6s9fgxYicCuqF5Xojmw+4pI+KGEJ0aFa6Be9dx8NYnBW
 fQBEdM0ap/E+TojR1MOolsUUeSvMm5rL3zIja2+g9jWjbIE1uHnlrojYItJJLBszh7Y/7myBPPG
 fc99bCQSPqOjWHRfpz3WUwldG3gGe6LOUSLYP0udM/LOCVnSS83XMO1WF7a5yQO0qjqHsyVEgcy
 tbHfPmAhspmqSt08BwhBGLB5J2qb4b+XXLyg27wp1o7XjxsF3OBVr97ZXSvbIlV2ib0fjBJNEVX
 vXqOO2tNiYaArj59ZgJY725pWI5mbtv5vUjvWId6NpTDg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421062;
 b=BXO7Uy7LzvDmlsRaT++HlJ+ShqcdAkmFIkE5W3m7h52hVAcrug3iiZbWijHZTAC7VPD/a3W1
 01BUMasnlHutDr7zOvg8hYOj9SKf0qxWAIP1oSbuo4wHtvz/QLKUETF6MQXh5xyk4ihCGWAScxc
 otObor7LsNFMgWsow8VNdc3fvqNB/dryDUuEUn+Z8xUlkMNkFoPwkLk9rCxd6flWWGx18Fe8vf8
 YkQpqmOjMV/mbtPETMcyDY2dCAJx68jb/OAS2DzzozogHV7f9pGI0FTUvDb87uERGyHi3HoAh9t
 Kk8dyKjospszjEVwFMMdh3xwzKRuMEgIktvGezQtrPsUw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay38-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:24:22 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4C9A5CC0CB7;
	Wed, 18 Feb 2026 14:24:15 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Subject: [PATCH] dt-bindings: arm: fsl: correct spelling of TQ-Systems and TQMLS1012AL
Date: Wed, 18 Feb 2026 14:24:11 +0100
Message-ID: <20260218132413.32250-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay38-hz1.antispameurope.com with 4fGHKW65wnzLlWL
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:8787bf2b07796fd9d050897537af6e93
X-cloud-security:scantime:2.294
DKIM-Signature: a=rsa-sha256;
 bh=/iP3fOaMQBWNKNN1vjX0YDigLj4q0i816Ex++HVQlrk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421061; v=1;
 b=V3354klMaE7Q4bR9togfVCTCybkBUdGyq9iQlqZr5QX5AXwb06lw4BnMQEa9/aHe8MfgLoa/
 zSBQyVUGOpKf8Yqux67WRHNCybXoaOcpuaV7YB23T81FhDSsRq8qm3TCrVoqpSeuYwoSiEq6zmG
 R332TJY9LThZ/3s6VGyalLOZcQCWSrCfKmjOcgh1T/PGkapzSSRPujCWgCanZXa0OEw3NlzsFdZ
 sCvGyx5SiL20WaYlRhw6mOycQ25ghkcy4M6rdz+hx+hc9pGIEJYWwtdQ9GWdhiShcZlbbJlL7Wi
 HI1jnQ8gMD1QZ9vnDTlZw9Ayh3KCuPufK002+oCZQiApA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266427-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 505321569A9
X-Rspamd-Action: no action

TQ-Systems is written with a hyphen. Correct the spelling.
The correct SoM name is TQMLS1012AL.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..13e5d40cbb26 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1626,7 +1626,7 @@ properties:
               - fsl,ls1012a-qds
           - const: fsl,ls1012a
 
-      - description: TQ Systems TQMLS12AL SoM on MBLS1012AL board
+      - description: TQ-Systems TQMLS1012AL SoM on MBLS1012AL board
         items:
           - const: tq,ls1012a-tqmls1012al-mbls1012al
           - const: tq,ls1012a-tqmls1012al
-- 
2.43.0


