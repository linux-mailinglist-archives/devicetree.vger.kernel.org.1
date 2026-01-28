Return-Path: <devicetree+bounces-260571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KJ0E59Nemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:55:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB185A74FA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C59E305ED0F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F00036EA9A;
	Wed, 28 Jan 2026 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Inw5wSPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C70336F417
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622527; cv=none; b=Wpi4Jx5Qgtk+Btp6Il/bVDNJY3wnNZgFWUe0CtNyLOR2w7VYwJKnl2MJ2Uy11TNW4KLAdoUBTemP7fUKWcQc2s/aUzXQq2zF8fGJJkiguRkGW6miiI4FTpsaAyncEehuRkEP4zDrvz7qK7BlBi+8n5+UprJL3QH6cIx3RUgAMho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622527; c=relaxed/simple;
	bh=Rezf1MLSSUWSNbEQN28H3BG+O8J7SEbdS+FvGdcvoa8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MfRMp4MyGBugbCDuluSwyltjAdZucxUlvAVkzL73EXJ/sNm8o5HtJPrUEn84KxRCausZHEGeQtK2EmugwHNPLTnkNMzNb0757tWPkiwr87AUIlkXCnoo4i9qsBsPXlgI9nNZN2OsAzVm7pqYVxzz2fruGaxwCNuMc1UMR7AecWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Inw5wSPt; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-40423dbe98bso44932fac.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769622524; x=1770227324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z4g1rdqkzBN7E4k3DRb93C6Pz1pOJ7VGgwv2jByOH00=;
        b=Inw5wSPtH4T4emWnh+/Mn/x8couqhdp69Q/XcKFTbF6J8GfDGZd9pMuiPKv8+XW35B
         w2FanNaQyfOBsOHz527rGHBL4LMdmZoyhheX+XcAW8sHIrDiIjVSCs/X7YvRV0q+8Tiz
         62fDKqFtTBpMYFem7R7QhmHTGYj0VWcumWtbj9j0OKYiucCRL5Z137FMOi3aAPigyouk
         AOeUPMAjhOCTRJnoZdgqvvcfWpBAXdR1AmjZoOSE5i0TaW3uFYyhVD9iUdOwiATvHzN1
         ITXIWk5DCWQCcDNptFsAakLwG+CEHV3SqWpQWxJbOBVv3Br1qlFeEvaW15W10PrhCFmV
         rxAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769622524; x=1770227324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z4g1rdqkzBN7E4k3DRb93C6Pz1pOJ7VGgwv2jByOH00=;
        b=ILopM7Ve1nENXQngCry4xJes1nTL+HH60h5AKyOmX+b42sFGfhLPEiDnSlux1fCcrr
         J0nNTEgcLhEngF/b5m3QXXB0xulqziTy46F4q2x5wuQXk6AiBPewgby0afZSnA20U73V
         vJfwVbeWGPI8poujMDdlwhe8tQCqhlZEeDsbqmBoRlvVG07mKrVuule+j0j+MSLH2ngl
         UMW30guTY3wl4l+rmS/uQN2lr3agtGtngsH9xvuIEV3coy1JWDAKcISfkF52bUNvjFyj
         IbKUn7hZL/G9Y3QfZnKmIG3Wm3mHOI0c0KZbdGFb1H2dZRP1L4vI1yyXIDSxUFIQ0g74
         guGQ==
X-Gm-Message-State: AOJu0Yy/i2K/rMxKmzJjXchnHnhUZEENu8dLT/7bwgj9hVjqRLXaM5Nu
	138W5hZ25jyokIeXfZ5AU60tvT9IgmTqQGkLRbyCCkXyoIooJjDYEjb1
X-Gm-Gg: AZuq6aKPOUEdpI464LdiVwPUphAVOW7JIRmf2oH3UsJ6Yu7gNl13cihmewXTN13Q2e9
	JZ3ymEfnZZ2Zik87Hi61biHQ+4KjzM6LG+4JZin33gMAhNKnLtT3N/xZrYOR7yxuPa1voWkwa15
	aTG9ESeEkeIEcgnXSVVE5Uhj6sg7SOzGQ4g4Y9MwEM3aKo3134E9tn4exhXw5/ORpfvmEt3R1BQ
	cRHfbUeAXix0o9pD9d1B4ifPAjsv03RFF7nj6UokI/n9r7rQpLpL7uraVSmlKWztewbe9KcugQc
	ai5y8wVXQ5DE7V1oRfiNjIvU77qbzwNehdVe9c6fxnK5tvr1KW2sYYI4uynATw6OoDqMK23uYc2
	R0ryFs0rDpc0AVfIUBfbkA2B3wxK4AeIFFEptiuSTy87mkduYAlxqDaf3JGOoxv1c7kqoNeFFv6
	ztfciO8F0G
X-Received: by 2002:a05:6870:b01b:b0:3f6:1e56:aad7 with SMTP id 586e51a60fabf-4093fce5f4emr3436398fac.15.1769622522315;
        Wed, 28 Jan 2026 09:48:42 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-409575b0a89sm2187647fac.20.2026.01.28.09.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:48:41 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V2 1/3] ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
Date: Wed, 28 Jan 2026 11:46:06 -0600
Message-ID: <20260128174608.1498-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128174608.1498-1-macroalpha82@gmail.com>
References: <20260128174608.1498-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,sntech.de,lists.infradead.org,hotmail.com,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260571-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: AB185A74FA
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add a binding for the Anbernic RG-DS Amplifier, which is an Awinic
aw87391 audio amplifier. This manufacturer did not provide firmware
so we have to use a list of init commands instead, requiring device
specific functionality rather than generic aw87391 functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/sound/awinic,aw87390.yaml        | 34 ++++++++++++++++---
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml b/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
index ba9d8767c5d5..9c1baae767c4 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
@@ -15,12 +15,15 @@ description:
   sound quallity, which is a new high efficiency, low
   noise, constant large volume, 6th Smart K audio amplifier.
 
-allOf:
-  - $ref: dai-common.yaml#
-
 properties:
   compatible:
-    const: awinic,aw87390
+    oneOf:
+      - enum:
+          - awinic,aw87390
+      - items:
+          - enum:
+              - anbernic,rgds-amp
+          - const: awinic,aw87391
 
   reg:
     maxItems: 1
@@ -40,10 +43,31 @@ required:
   - compatible
   - reg
   - "#sound-dai-cells"
-  - awinic,audio-channel
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - awinic,aw87390
+    then:
+      required:
+        - awinic,audio-channel
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - anbernic,rgds-amp
+    then:
+      properties:
+        vdd-supply: true
+
 examples:
   - |
     i2c {
-- 
2.43.0


