Return-Path: <devicetree+bounces-270330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PDLLPGNpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC301EA2EC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C57DF301114C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07680383C95;
	Tue,  3 Mar 2026 07:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVxzY8t2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D2037419A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522990; cv=none; b=klkT8ZiQm0wLTb8KRjFcjrDnPtmYQgtj03AnkID+e++IXidLz4wCKKVrW0mKV8gzHBdLz3yc0QbaPXXIrFW7As9Ua3mP7Ne4dFD3td5bhBnrTqbwUqi+s7oZZymEV1BfQ0F3fEP5JxJfyJv6rEQ3BLcQoKUNOYB5Hw7l7a/Tix0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522990; c=relaxed/simple;
	bh=lDoMiCuYUhxLB7eIvq/u26hRTu299Ft1QzBtocD5oqw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gBuyvb4n3xTRsyk/zQgpnuc+WYCqogXm0uIMpDpBwrl7ZQK+DlNCznXp3MoGULRBwfLsAhUmmjtjBLz811ZNkAyCgbWb7EZXq0DB6zqGp7JATM2n+ugyoUACllcZxd8+snL2xfUrl6NVcohOsN9w2ejcO9MUmrTRhlZpvauAeW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVxzY8t2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320A9C116C6;
	Tue,  3 Mar 2026 07:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522990;
	bh=lDoMiCuYUhxLB7eIvq/u26hRTu299Ft1QzBtocD5oqw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jVxzY8t2zguUgX6FLB85gmPeCTrDdTTF8XPCeQh24rEcHtFwIwCpNScR9tela4fRg
	 CbnfmnSMJ2VhQyJxDoCTeGG/TF+se/PgGHt9IHAYo7SNge/5mjIm7kG1s9BoSWqtxd
	 f+4La/j+C/fn69dJcq5h++U/m6HJxJMr/sZRaak+1x3buEq/ZQljvnjR1J+FRBFYx3
	 xuasNxwhYXHUgA6KI6b4X/oaunzKk5r6kvi7ddR8u9pwFw43+gE1s7JmTPr1HRE170
	 uby+g99FKNk7cFLKQrchQ3OzNGATI1tSW7UbJCmQs+w4RB1SmY1mEM2jpHTsi/XHb2
	 mqy6d08U7iyUw==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:37 +0100
Subject: [PATCH v2 5/8] dt-bindings: arm: Add two new Gemini devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-5-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 9DC301EA2EC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270330-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

This adds the Raidsonic IB-4210-B and the Verbatim
S08V1901-D1 Gemini devices.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 Documentation/devicetree/bindings/arm/gemini.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/gemini.yaml b/Documentation/devicetree/bindings/arm/gemini.yaml
index fc092962ab56..dfb11244b57e 100644
--- a/Documentation/devicetree/bindings/arm/gemini.yaml
+++ b/Documentation/devicetree/bindings/arm/gemini.yaml
@@ -55,6 +55,11 @@ properties:
           - const: itian,sq201
           - const: cortina,gemini
 
+      - description: Raidsonic NAS IB-4210-B
+        items:
+          - const: raidsonic,ib-4210-b
+          - const: cortina,gemini
+
       - description: Raidsonic NAS IB-4220-B
         items:
           - const: raidsonic,ib-4220-b
@@ -70,6 +75,11 @@ properties:
           - const: teltonika,rut1xx
           - const: cortina,gemini
 
+      - description: Verbatim S08V1901-D1 NAS
+        items:
+          - const: verbatim,s08v1901-d1
+          - const: cortina,gemini
+
       - description: Wiligear Wiliboard WBD-111
         items:
           - const: wiligear,wiliboard-wbd111

-- 
2.53.0


