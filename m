Return-Path: <devicetree+bounces-264546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKhGEECZi2k3XAAAu9opvQ
	(envelope-from <devicetree+bounces-264546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:46:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3B111F17B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D31D13045215
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9A3332ECC;
	Tue, 10 Feb 2026 20:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mp01AMXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC723321B1
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756405; cv=none; b=HndGs7bmjU425LSvTV6TNi+zIDq9DE6dV/kHKiA72HAHBE0LRsD6LG3H1erUnmiMyWXXdDCXESDPhLxDX9aPI9ku6xDTZPhIUg3mAIlnzV+y4/OUfESeLfb9yzKaRh0XB4PL0LJiZC+X3Sa1FB+TYG6Uc8HgcXIabGtN8oKiKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756405; c=relaxed/simple;
	bh=lazVxl8WJKg/jltTmr7HFjMBJRcsa2eV7m49E9VAdAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=quwg5YO9EF726GV6gH9p9PtNOyWXtjaJTG3kcCPw5meGXNv4uGf14yuAP+EFpYDbr3VXpSHbyoLeCj01wueM6c4F7y7kmxeKJ4Jffo7/aqMn1qqe+0Z11GaO0QJ6z3jhsQJ5cQOkNzdm8g1irzRkjyX0n35jxLklaqOyQLSxoks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mp01AMXc; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806e0f6b69so46776875e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770756403; x=1771361203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OiO+nVc5IO8Z6Ent3/Ayytw2yL90H0wfU2AM1rR7mW8=;
        b=mp01AMXcKR10K0OhAWfgwPK1bDdtge5Degg31vKzuO3SocUaPCZPWximJKT/itRnHX
         NztSwcB2vF+lQUiNVKGQ7rdEH/RQFGCdc/1Hl5IlsQC20/+l9xfIMhBwUDz6mnEjDwPu
         xdTfYW5JOwXCaZUVrxpFC/AYXEMv1L5XOnKuH13X5dygs4dvTPR5ojpD44xj680CtwDj
         xG6Y+jmWsDpYQ9CyqBxJPY/K24HL0lWKCz3duOHchJK5bvtkiZjJKHJ96dWLenSYq9CL
         gSDzYJKRbiyXn9R0d7dUqTROxoMQlrTknwzkSYWGgm8G9GKI5//6YiRMiryfTMvwvcD7
         Fb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770756403; x=1771361203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OiO+nVc5IO8Z6Ent3/Ayytw2yL90H0wfU2AM1rR7mW8=;
        b=DrIlcjP2jEfJw9GIa+LT8jUzGttWpg4EdDJaJnEfBNPWFniLwcXHyRvMPhbcsqVIGv
         z9Qk1Grsl2p4MSQB0QuZ91IUx+sQ+eUjUUCOX7xPZy6Gj++hQfjzAnPYYGa5Q9m+KD1w
         5YVSQuTRsNK3HJPWAeCdzl5nLHJzx5DpemfeYNBYbwhnlkxDx4qO9gMRDu+Zti+BeHLl
         uIxoV00l5yEyZ1lkSeNj6gjlKxmRU3E+I5V+5IGLAhnzIs3o5IQ+AfZ+43YFSOuyDNLu
         One+EkR/1DgxCo9NHlu9956OEDJ76nce6YZX0JjuGTpc00tO81ESlM2mpi7JB3SdwSji
         5DMw==
X-Forwarded-Encrypted: i=1; AJvYcCU7CL06oP0ncuByCXWhxS+LdWOnwhLLfM+TYaSTmAquR7tp15QNIc6VpOa75kg0aH0HFcFCMXtsvjxL@vger.kernel.org
X-Gm-Message-State: AOJu0YwQE1ZZJKj0L9kPFJlLBmKA0Tq4pSG2dN++ykMPU1pISVo+2n/k
	ryAGaloRvmKChgVWt8nZkKZagVVnHdDTYCgQKyO7meanwGDihEgReZoA
X-Gm-Gg: AZuq6aJL0SwTb45nhuSZSX59HelT8iMOmxzRcturYpM3B8qCZOz/EnWZYYoEFTVXF1x
	CJQs7mBvcZXUKqIGGW0OBVGsHLMHnUC6qc/EW3wNOfqPc5XkEDYwomA+8JzEj+UbzQr0iKDrRSu
	PU94MF9hs5fq1piNfBlvf7wktKPYSY4iHRsho+9fJ2JOGcaTRVK9iTMDwUJgO2GtwG47DYTVJ3E
	EMtd1YBPEbo7miov5LPAtfBjqr0R8lO0IT7hhALgc0o3Pk5kcYkvo9shDktaeETKcO8o9UNoD8u
	6KW8cjmRXE2nLaw5mtYruNFT20hNgRYF7UHiYzrmUAdr2KngyC2vexMzFyyJlVY99T/e4mslDE2
	6DTUVemC+7MNwrnkIqa162UZTVJc5iahH1KnfA0CrqInTE/dgcXJgT4GnCxZCUdkFbowViEUYyy
	i6IEaYDKPvtXSBBryQACfDSTLLwmPvzz1fXxPM
X-Received: by 2002:a05:600c:548d:b0:480:4b59:9327 with SMTP id 5b1f17b1804b1-483507d0344mr48000965e9.1.1770756402734;
        Tue, 10 Feb 2026 12:46:42 -0800 (PST)
Received: from [192.168.8.10] ([2a00:f502:160:28bc:a26c:adcb:8da8:2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7d6f3esm71451965e9.9.2026.02.10.12.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 12:46:42 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Tue, 10 Feb 2026 22:46:10 +0200
Subject: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add Capella CM36686
 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260210-cm36686-v1-1-aef68dd46ad4@gmail.com>
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
In-Reply-To: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264546-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF3B111F17B
X-Rspamd-Action: no action

Capella CM36686 is an ambient light and proximity sensor developed by
Capella Microsystems, now a subsidiary of Vishay Intertechnology Inc. It
has an I2C address of 0x60 and is fully compatible with an existing
driver for VCNL4040. Capella CM36672P is a proximity-only sensor that
is fully compatible with CM36686, and therefore with VCNL4040. Add
compatibles for cm36672p and cm36686, with a fallback for cm36686 of
vcnl4040.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 4d1a225e8868..2ba4d5de4ec4 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -18,12 +18,17 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - vishay,vcnl4000
-      - vishay,vcnl4010
-      - vishay,vcnl4020
-      - vishay,vcnl4040
-      - vishay,vcnl4200
+    oneOf:
+      - enum:
+          - capella,cm36672p
+          - vishay,vcnl4000
+          - vishay,vcnl4010
+          - vishay,vcnl4020
+          - vishay,vcnl4040
+          - vishay,vcnl4200
+      - items:
+          - const: capella,cm36686
+          - const: vishay,vcnl4040
 
   interrupts:
     maxItems: 1

-- 
2.53.0


