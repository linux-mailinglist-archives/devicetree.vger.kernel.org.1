Return-Path: <devicetree+bounces-293598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ALOBCha+2kuZwMAu9opvQ
	(envelope-from <devicetree+bounces-293598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:11:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC834DCF2A
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:11:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 04992302813B
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 15:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA1B48BD33;
	Wed,  6 May 2026 15:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="aupmFI8G"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02D640DFB4;
	Wed,  6 May 2026 15:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778080260; cv=none; b=V8E8j4XQc+G49Gvuc4J0tvrSL3GfIokuW1eZdB3YwtozjOTdI3HcCz9Q90xF5P2hm0fMW+gtOw4OJ1/6CTZCxMlEsVeqJQP5VFGyZkz1w7Kb2J3vZ6E0WSVsVoFTq4kfBMGQuOrWegZxzZ1nNtKX4Oyv8hL477eCrSY7jAM8ukM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778080260; c=relaxed/simple;
	bh=qh9sEc57bKsGot5lE2/m8eNigSmNqLcdmef/IL3Fdfc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ljkC+p6Q34lf0krLOvBt59SL8w1bCwShNBDAa27bTTf67m8pEYzHwAdmlmbMlaR1Axfv02LWL8Lbr0PuEk44fmG5CXmD5t+SM3pj6J+cIH0uL0U8vQ/+EXzFR2hg5pyCwSOSCbzZgtBhtxXwldwnq/OIcJc8oN5Z3oG8FpMv0Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=aupmFI8G; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Qe8+erd3ATmRXcw/RE05XoQwx+r6eTzDQ+NZAClJ7ws=; b=aupmFI8GCa+7MruzjqPKwv7Gfb
	g3fnFfM/30mzXt3+HIIUayEVMnvsvkTVnUQc+RFoLD1rsgoGoX8Yo/9VFBh0ix3tSE0W5GGYal61Q
	094lVI8BoxA6DFRv/7HgrwbdEWcPyjwd/wFeGlPwYUX0vTlo+GUUW3prR1AHzIQhBjmZwSQu3ssXm
	+XJz0T1Z/0nwXgUgbuAsUih8KjdWEZ2kqvZzdJzbYU5R81XRWf4CHb7Lkn3yyLH/3tVwoj+GO2w+g
	q2HWtix6JjBO7I5H4Hi8573B7HkGMzjOoi0kV26YNMxp+Vz1GGn9mWVLTl3N9gQvGXz1MBuxTRwRb
	eNXGdSiQ==;
Received: from user-188-33-36-99.play-internet.pl ([188.33.36.99] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wKdti-00000003atJ-3FO5;
	Wed, 06 May 2026 17:10:50 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Wed, 06 May 2026 17:10:26 +0200
Subject: [PATCH v4 1/4] dt-bindings: timer: allwinner,sun5i-a13-hstimer:
 add H616 and D1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-h616-t113s-hstimer-v4-1-591d425863d6@mmpsystems.pl>
References: <20260506-h616-t113s-hstimer-v4-0-591d425863d6@mmpsystems.pl>
In-Reply-To: <20260506-h616-t113s-hstimer-v4-0-591d425863d6@mmpsystems.pl>
To: Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: Michal Piekos <michal.piekos@mmpsystems.pl>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Andre Przywara <andre.przywara@arm.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778080247; l=1635;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=qh9sEc57bKsGot5lE2/m8eNigSmNqLcdmef/IL3Fdfc=;
 b=cPaaaYLo5ADrTcyLAT6CZyP+LM1sUg2xNixGvhiLKQyIIQNuR/nvMdpg41TJhY1tJnhYX5yOJ
 /lpcITM6KMCBl2DUeBuqVIpRh0yDBX+aW/u17cHbtrKETPqzsTDy9uS
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: 9BC834DCF2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293598-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.622];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mmpsystems.pl:mid,mmpsystems.pl:email,microchip.com:email]

D1 is similar to existing sun5i, but with different register offsets.
H616 uses same offsets as D1.

Add allwinner,sun20i-d1-hstimer
Add allwinner,sun50i-h616-hstimer with fallback to
allwinner,sun20i-d1-hstimer
Extend schema condition for interrupts to cover D1 compatible variant.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


