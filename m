Return-Path: <devicetree+bounces-288414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCFFB/fO5GlDaAEAu9opvQ
	(envelope-from <devicetree+bounces-288414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 14:47:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BCB423FC1
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 14:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83C713014C3B
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 12:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97C033CEA8;
	Sun, 19 Apr 2026 12:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="w8Zns91L"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C20B2E413;
	Sun, 19 Apr 2026 12:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776602844; cv=none; b=DmLfmwOYlkFORmeT/uPaViBiPUD0TNM2mkDjMB5pWsuoJHRKQscRWgb0r73Yqknh8pnB36LyuVRvcZuM9QiYaXTgrECi4s6Nsm0nvU2RhUKPPaKZhNaaTCUxQYU1JHebfG+KlwTKUhH/pW0sATn/21UIKCVAAq4E9FbsGh1kvlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776602844; c=relaxed/simple;
	bh=dD/RfwTsFCY3zQ8t1EhNPKXgRitASUKlWpSEoGxz1ds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bkqim4Of5xN2KYX3SwiNb9f5qLoYny3NwZ0zQkdo1YDH3Dbjnrc4pzg35hnxrZaCfpSSj3+T+QesViFmYfge9HJOqvtIV8TA2prqCainJeVqaHIwq0/p6elSEicwIFa87FcSq/8UX5S7+1t5hsXUt4JW4yzGHrseRd44NIVEwVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=w8Zns91L; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nNGkVqfNLX5y0uPiukZFMwNrvXW0tlDPdmovR+85RVc=; b=w8Zns91L4uCrgUnHvgbLDFHOrP
	xcY+G46dLuU1feVvzSuL6U344xWsd9bCId6k7jdP1+pg0QV313zzi31uoNSfqRZB9v3uKyJBd45Gq
	z/fWmIFIfBATvy8isVJaNXbCrLrMW3rvXr3+9lY3MoHxLScMrqew6TFB5GFHqA766JO7Zihuc6rj5
	Z6IBqUL+zmt3lIKRB3meky8KqfcQ9l8MRFfF/ex2GViBA4Q2S5WbAjES0l60zKFe0Lrk9OnnOB3Yb
	A/vTa7bk218pnvemoI4KZnHJOzYK7JMHyHeprkaBhQw//yGTUc1A5Nx/a4Pt65U3i4QMnN2EPGFDX
	V8NMqtjA==;
Received: from user-5-173-16-91.play-internet.pl ([5.173.16.91] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wERYT-0000000FcT1-3GqR;
	Sun, 19 Apr 2026 14:47:17 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Sun, 19 Apr 2026 14:46:07 +0200
Subject: [PATCH 1/4] dt-bindings: timer: allwinner,sun5i-a13-hstimer: add
 H616 and T113-S3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260419-h616-t113s-hstimer-v1-1-1af74ebef7c5@mmpsystems.pl>
References: <20260419-h616-t113s-hstimer-v1-0-1af74ebef7c5@mmpsystems.pl>
In-Reply-To: <20260419-h616-t113s-hstimer-v1-0-1af74ebef7c5@mmpsystems.pl>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776602788; l=1615;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=dD/RfwTsFCY3zQ8t1EhNPKXgRitASUKlWpSEoGxz1ds=;
 b=4nrUKn+94IDdME4xFuYNSnTvSuLhM+KuSC/GFrXESVLIh2b4USkQsHXGE6Wc6uzTa+NahW8l3
 52ir+K2U/Y9B9eKDTLvl+S2C1Q3uPalViRvckW5G43m32MaSMppxa4G
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288414-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.813];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mmpsystems.pl:mid,mmpsystems.pl:email]
X-Rspamd-Queue-Id: 99BCB423FC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

H616 is compatible with the existing sun5i binding, but
require its own compatible string to differentiate register offsets.
T113-S3 uses same offsets as H616.

Add allwinner,sun50i-h616-hstimer
Add allwinner,sun8i-t113s-hstimer with fallback to
allwinner,sun50i-h616-hstimer
Extend schema condition for interrupts to cover H616 compatible variant.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
 .../devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml    | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
index f1853daec2f9..bb60a85dc34b 100644
--- a/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
+++ b/Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml
@@ -15,9 +15,13 @@ properties:
     oneOf:
       - const: allwinner,sun5i-a13-hstimer
       - const: allwinner,sun7i-a20-hstimer
+      - const: allwinner,sun50i-h616-hstimer
       - items:
           - const: allwinner,sun6i-a31-hstimer
           - const: allwinner,sun7i-a20-hstimer
+      - items:
+          - const: allwinner,sun8i-t113s-hstimer
+          - const: allwinner,sun50i-h616-hstimer
 
   reg:
     maxItems: 1
@@ -45,7 +49,9 @@ required:
 if:
   properties:
     compatible:
-      const: allwinner,sun5i-a13-hstimer
+      enum:
+        - allwinner,sun5i-a13-hstimer
+        - allwinner,sun50i-h616-hstimer
 
 then:
   properties:

-- 
2.43.0


