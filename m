Return-Path: <devicetree+bounces-318641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kr+lDIIZRWrv6woAu9opvQ
	(envelope-from <devicetree+bounces-318641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:43:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 500D76EE450
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:43:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emailprofi.seznam.cz header.s=szn1 header.b=BhNcXJ+P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318641-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318641-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 382B730B391E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A200481AAC;
	Wed,  1 Jul 2026 13:17:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxb.seznam.cz (mxb.seznam.cz [77.75.76.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CFF47ECD6;
	Wed,  1 Jul 2026 13:17:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911823; cv=none; b=h2U//ckkrRs9EYhTkGCNYvEZSDl0KY1TLJLqS4ppf5b3oW2blO/ZewR1qIbsiiL2+6VEtqLYmuCHJmY9GKMl8AlIRSE6PlrfpZ5axJR9I4lfPhSxqcoe7k3RhysPsM350Wy7S2WG+o2if6IqPXqjxkNwNm03ZUeIDlwIaEoIGwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911823; c=relaxed/simple;
	bh=XBEYzDLV4x74wd1zBuwskczGvGY83lTzvV5/9DU/UsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X486sK0lwLg5CYyeqtBLlH0Y6STpJwThOJ1Zk65+P6QoHrZmz1ZUQQ3ifZBHETkvglSvb2eKYkefWfj5S6xjG2oeuES6J5H3pPLj5PnfxhPwx8bHd2JqNXxr0ld56vYPvw/RGxrRzerzucss/j3fUYMrS2ZshP6QaM0FJ1KTbiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz; spf=none smtp.mailfrom=loebl.cz; dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b=BhNcXJ+P; arc=none smtp.client-ip=77.75.76.89
Received: from email.seznam.cz
	by smtpc-mxb-55bd7c95dc-hrn5m
	(smtpc-mxb-55bd7c95dc-hrn5m [2a02:598:96:8a00::1200:50c])
	id 5c74c0df47e64d0b5891795d;
	Wed, 01 Jul 2026 15:16:59 +0200 (CEST)
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn1; t=1782911819;
	bh=6hK0FUG45KN6V0IfxPa0Gm6h2sME80lE+dgc+E9uivg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=BhNcXJ+P+GTHeTrPg4ozUpE5a+VnhSp400lKF7h9TZIPqmXhQqmO/Qn5Y7j8C1ni7
	 WdD+oAwBkR3eB+1AhQjmhcCk0gGQKvNSPNk7slvO0+SM4PIumnp8HK6rZ/QC+Ffsmw
	 xJLIGSf0AXmy0sxucOthVKl6qJTqpnod+2ioUdoMpqmhvOJgdTKbppBaxDUSMnbIZU
	 mXM56bKa5EycX3FIi3JdumuBLjPXybZov8e5W7cCmCBUzgIDQzJYKdxHN/zgMfeDCD
	 AJ1Y4srTgSqB7+l+o4DJAJ/TO7UQmRUDeFDzblTsPxHkAv+KOP/LG++n376JPM1NNK
	 oQ/7VWg0aIaZg==
Received: from localhost (109-81-118-98.rct.o2.cz [109.81.118.98])
	by smtpd-relay-f8b496c7c-jtrnh (szn-email-smtpd/2.0.76) with ESMTPA
	id 66f57920-5731-47fd-9f27-84ff21c20c73;
	Wed, 01 Jul 2026 15:13:49 +0200
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	=?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH 1/2] dt-bindings: clock: si544: add si549 compatible
Date: Wed,  1 Jul 2026 15:09:25 +0200
Message-ID: <20260701130927.3858536-2-pavel@loebl.cz>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260701130927.3858536-1-pavel@loebl.cz>
References: <20260701130927.3858536-1-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[emailprofi.seznam.cz:s=szn1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:pavel@loebl.cz,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[loebl.cz];
	FORGED_SENDER(0.00)[pavel@loebl.cz,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavel@loebl.cz,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[emailprofi.seznam.cz:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,emailprofi.seznam.cz:dkim,silabs.com:url,vger.kernel.org:from_smtp,skyworksinc.com:url,loebl.cz:email,loebl.cz:mid,loebl.cz:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 500D76EE450

Adding Si549 compatible, which uses different internal oscillator
frequency. Like in Si544 case, there are three types ending with
latters a,b and c. Each with different maximum output frequency.

Also fix datasheet links after Silicon Labs acquisition by
Skyworks Solutions.

Signed-off-by: Pavel Löbl <pavel@loebl.cz>
---
 Documentation/devicetree/bindings/clock/silabs,si544.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/silabs,si544.yaml b/Documentation/devicetree/bindings/clock/silabs,si544.yaml
index f87e71867108..680bc71afd1e 100644
--- a/Documentation/devicetree/bindings/clock/silabs,si544.yaml
+++ b/Documentation/devicetree/bindings/clock/silabs,si544.yaml
@@ -13,8 +13,9 @@ description: >
   Silicon Labs 514/544 programmable I2C clock generator. Details about the device
   can be found in the datasheet:
 
-    https://www.silabs.com/Support%20Documents/TechnicalDocs/si514.pdf
-    https://www.silabs.com/documents/public/data-sheets/si544-datasheet.pdf
+    https://www.skyworksinc.com/-/media/Skyworks/SL/documents/public/data-sheets/Si514.pdf
+    https://www.skyworksinc.com/-/media/SkyWorks/SL/documents/public/data-sheets/si544-datasheet.pdf
+    https://www.skyworksinc.com/-/media/Skyworks/SL/documents/public/data-sheets/si549-datasheet.pdf
 
 properties:
   compatible:
@@ -23,6 +24,9 @@ properties:
       - silabs,si544a
       - silabs,si544b
       - silabs,si544c
+      - silabs,si549a
+      - silabs,si549b
+      - silabs,si549c
 
   reg:
     maxItems: 1
-- 
2.53.0


