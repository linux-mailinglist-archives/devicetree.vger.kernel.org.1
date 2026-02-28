Return-Path: <devicetree+bounces-269457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBUKE2oxomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E507C1BF52A
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E86D3058ECA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8767548EE;
	Sat, 28 Feb 2026 00:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieehTOMH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656257262A
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237156; cv=none; b=uG0W9sjWpVPUinj/7Vm84WOzrXhL9hEku9vK6rNiRj3H6NaXnCdPZzLLORLVB8SZbNR9jroMuLB+Ek5kBGr2LlWVfh1NenVqX6JmiiJefNag9Lfbs/xBky4wwVekeZuDx0qhGYuD9ev2wcr1HpqCVjj4ztNhKEOqeTfUSWgZA28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237156; c=relaxed/simple;
	bh=bYrh4Mfc4OHSJajtdA4/Qg5Qu7LbvFsAaDkEV5wxqOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KO0pRf0ILh25JdXX1uuR1Q0L+bFsEyky3DbLFDC2/Xl/9osZuJ2vZPAcKtrhsm6NnKZA/aCWJnuThPaPjD64H6FQU56pQSouJr/wit9TuWY3kGx+IIE15cJquv6s3uNJarKaqCm4tdkw0uNcUBB3czR1jnhby+kdRmuShAAPsro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieehTOMH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94E6FC116C6;
	Sat, 28 Feb 2026 00:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237155;
	bh=bYrh4Mfc4OHSJajtdA4/Qg5Qu7LbvFsAaDkEV5wxqOY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ieehTOMHxRJXpGMqym8QB7fseBLnoDmkJQbbsoxXSgWyFUCJ5oT8oPWjB2PCs3PGs
	 HdWEKTNooeO9E2zQZBfoYd/DExGcgcH+JKhfvXPR4rBAq91bm7Q3jj6/63EoQtC1tp
	 2Uol5xkrJeSaK2fh5cUCVctVz3VGtHUYsnpQN8HSK9lQ+DeeMDDjIv5iIAtB8mSg/q
	 jl4B1lGGeaS7e9QHq7ElBp6qKFY+5NBi2SP8ZE0Kl9LW7ax/mYDqqc5TIVepEZ4jl6
	 1hqedSrUeM/KaBPaCUfOz/4Cwi6+lla3dBjTEhoz6rLceGT2zltFGzr1liX6YmNZG3
	 1+FNe1PgXUS5A==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:45 +0100
Subject: [PATCH 5/8] dt-bindings: arm: Add two missing Gemini devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-5-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269457-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E507C1BF52A
X-Rspamd-Action: no action

This adds the Raidsonic IB-4210-B and the Verbatim
S08V1901-D1 that were missing from the bindings.

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


