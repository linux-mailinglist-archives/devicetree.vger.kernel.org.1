Return-Path: <devicetree+bounces-290265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id I3ADG/jl7WkdogAAu9opvQ
	(envelope-from <devicetree+bounces-290265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 12:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B698B4695B5
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 12:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60C9B300D952
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 10:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFC82D7D59;
	Sun, 26 Apr 2026 10:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="k1ZvvGfX"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C07440DFA9;
	Sun, 26 Apr 2026 10:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777198580; cv=none; b=bc8KI/EQEeMibXQcV+Dk5vkmkXMoDmOjUgZ6MGKN66y4ZzrL+i8EUlGD4CDYA8KRxf5fPf6egVBjUoviL7jaSdJD3Me0VyEVj3n09XrbooxHDRo4vskTUn7AAsvej8c+uYrA9WL+VTNL+xRBgerilK31BqVBNExAc2nb7UD42OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777198580; c=relaxed/simple;
	bh=OVN+6fknNDBag7Gi2EVxMIXAe9MWOflXV4ObvO/Z4zQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DthTQvL7ijTwY8OFeiGR8QJaGkIQGM4E9OpoNwyMBpqNxqKhQL1NgKi52OQolKV8Hxr4wkKS5HphOied3tCD3Pbou9Ek7i5i3hMcOLAljuM8DpjcHG7Cu7ZxX2RvJZODfZQ36ObaU+FUZN7saGPXOsF60hcMmPWMYjxGws5EXf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=k1ZvvGfX; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jq25Q/IJKGa0yoxmppRs1ynNyRwAjtJo3EKr+Ili/4w=; b=k1ZvvGfXleAA2QDQoAxLzZuCQY
	GHqBUj6dvBfNg7w7V/jfiRgW7PXgVyC6fq1ZIzeNkeAW03LoYBLHCpFI8uqWyeAO9pib6ijylOGrU
	W/EWsUFNihn/6DSCNgEGThObjfz6hpAUh/0hNoxlAY3JS6d1Njv2aL9nBxbO4qd0t+djrvWc9Ci1e
	X22k7LSnwWw0v8M3FCYbIHsixefAgkAx7Nms9aQmt1aQRmf3SeHyRRqwLYmwIGFWOnSinFoKbhudH
	xNbxZdWagtdD4KrKJFpi4cV0Pfo6UbQWGuCoLjLu6dWSCdTrxCrCuZTj71i8sN50EXs4aGcoElel0
	d1FoNp+w==;
Received: from user-188-33-36-99.play-internet.pl ([188.33.36.99] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wGwX7-0000000CBIP-2XYL;
	Sun, 26 Apr 2026 12:16:13 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Sun, 26 Apr 2026 12:15:26 +0200
Subject: [PATCH v2 1/4] dt-bindings: timer: allwinner,sun5i-a13-hstimer:
 add H616 and D1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260426-h616-t113s-hstimer-v2-1-e65e9dc0c9da@mmpsystems.pl>
References: <20260426-h616-t113s-hstimer-v2-0-e65e9dc0c9da@mmpsystems.pl>
In-Reply-To: <20260426-h616-t113s-hstimer-v2-0-e65e9dc0c9da@mmpsystems.pl>
To: Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777198529; l=1582;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=OVN+6fknNDBag7Gi2EVxMIXAe9MWOflXV4ObvO/Z4zQ=;
 b=2AFNTsFrYikoipywaS+A83NFcT8hrsWEp7X/Fi54c/FfQbutDX+37Jluhw6RnYpDyBBs7P0Ry
 Uj6jALUaABHCKBpd8kTYW8HuFRBDhkjh9U4118BI2X/kmqImLLVl8rM
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: B698B4695B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.543];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mmpsystems.pl:mid,mmpsystems.pl:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

D1 is similar to existing sun5i, but with different register offsets.
H616 uses same offsets as D1.

Add allwinner,sun20i-d1-hstimer
Add allwinner,sun50i-h616-hstimer with fallback to
allwinner,sun20i-d1-hstimer
Extend schema condition for interrupts to cover D1 compatible variant.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
 .../devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml   | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
index f1853daec2f9..3e2725c56995 100644
--- a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
@@ -15,9 +15,13 @@ properties:
     oneOf:
       - const: allwinner,sun5i-a13-hstimer
       - const: allwinner,sun7i-a20-hstimer
+      - const: allwinner,sun20i-d1-hstimer
       - items:
           - const: allwinner,sun6i-a31-hstimer
           - const: allwinner,sun7i-a20-hstimer
+      - items:
+          - const: allwinner,sun50i-h616-hstimer
+          - const: allwinner,sun20i-d1-hstimer
 
   reg:
     maxItems: 1
@@ -45,7 +49,10 @@ required:
 if:
   properties:
     compatible:
-      const: allwinner,sun5i-a13-hstimer
+      anyOf:
+        - const: allwinner,sun5i-a13-hstimer
+        - contains:
+            const: allwinner,sun20i-d1-hstimer
 
 then:
   properties:

-- 
2.43.0


