Return-Path: <devicetree+bounces-259749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KERmN1tmeGnTpgEAu9opvQ
	(envelope-from <devicetree+bounces-259749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:16:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB5090A78
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69DD1300A8EA
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61C4149C6F;
	Tue, 27 Jan 2026 07:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cFl5u8Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E04267B92
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498180; cv=none; b=D/dx++EYJMFLQofwet1K3bHL2yICBjzgGRnfjrJN8/0loZeRplkus8VWFaRk8CMWPu2h4nvq/6ga7Y4dZu6xLHPpkTIsnzWvoQ/kKvNMyvSk+rDV1mDI0/0mZs33rScO+Lr5a8ATpL0DF6elLivdu+I5uYhKAAdujjHhOV/uPtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498180; c=relaxed/simple;
	bh=Bt2f8O71ILMUJlYCIa3igd0y5irBYca7QPYlmNcvzT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GcIAqGM1l8eXIPQ+O6F+BxJff1WABZXOPolksi8rr6zeC2aVz4FSBpDk301E1dylpM7JSN0TUXFnagLnCllloloLU5H1mkvSpILJgwSMypWDMYwvL0ofM7XgGD6Je4AU5lvz2NqB42TJiIptA0mY0jFzjrwX9c6/9rWPMV9qSJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cFl5u8Fu; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a102494058so30162065ad.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769498178; x=1770102978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGC1e7GTJ+gs5YLdBWssdAfqY7NGH0UJX4m8BTmPg/I=;
        b=cFl5u8FuLiaTqn/KBxYAfmNRfSpENIR9RxFKYKDlHliYAgQrzryooPNc89yVw+Ue5a
         OFKjTSPkdEm8ecUClXvwA4HkhJgADPSbIZay3itRo5a8Fe2W06h4Oz9YZ7b5OG5RzfAz
         8tYZm3lOqp/YyMeqCWwfUI/LRqmHgDunnf/UzkuhvB5/xAaasCLYpUbI2J6n6yxVmtdp
         hNCinzm4bYk9iKb3S04xrexVx9fhFuvyROw+DAbpuIthtJ6F+oqxaBdy3lxoR4iEkt5j
         OdhlBiuS7Ga0HSubInIvOLaA80aJtpYxZAeau6DWcM1g52ugnqwvzfYQPPeEs63ZeT7C
         7IBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769498178; x=1770102978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EGC1e7GTJ+gs5YLdBWssdAfqY7NGH0UJX4m8BTmPg/I=;
        b=SWGhvBAJHWkbexr3orVW5GYhixrz1404fswbQnSuWtHstQlakqAPilni/WtVqeyNOg
         DcDtuoAzukZF8+d9ZMb4gXlQQAi2lNyVyF61DVjY7Td6M2j+aSv+Dibh1jGDImcOepPD
         lXxI/B3+YixnzBwjLk8W91/HrYXniLXTwg6YpszMsvre1wSFhSfH5mdYOKlywMPZ745y
         V0+uXIQ3LsubE5zesDdJIGvjRa2uAu6snHGrQhcxSF7/ZMXC+yC3QKSKntvuDvzVDQxK
         E4rz+97QTaCFwA+n/xCoCcbFyc6v4Kvj9BzNQmR0a1qKruOnAnc7nQ17C4iBWUph4H8u
         01PA==
X-Forwarded-Encrypted: i=1; AJvYcCWR2jFdhyTsctExWXPlC8d4OkrlPhCisJyvhN0hLYp2KRYxRQYo6YJmlSd0N7GR/ldlAA20nEeUEILI@vger.kernel.org
X-Gm-Message-State: AOJu0YyBaDQt+b94nW3y3lpcj9BozgubePhHNGZYzYTzfejQQ66DDj2y
	1BF6fUfByxsNNiGBJDVNRnbn+T+gkphvMHdL0q9ux2qnpvk5/sdh7i72
X-Gm-Gg: AZuq6aIgCtexQHGL3M3RHOcRj3RlJYxUCfIG1yo6KKtfvTNjbXX7heB4Zl2JkC8WXm0
	8Vw+BigROaXIA835CQlktE2HkAUFG5Z3H4wthfMgbCGQ7EwYWUdORQ9D9MiB550mUF5mc4YpDdB
	4RHz4hJ9vwvcoqkhA/qs98Hnjl5+4jNQuTI1yOobs/xyoU8/gxa0RUB5SazX3LrPZSV0Ycrv27Z
	Se13urQ3fxZnoFsgLK5Jg5sj08d+5lZV57BrqE1DAVKJetMjis6d4VgffKnCs10b8g33Yk2qt0t
	DiMK780DCN4Xr60mpT7hZ3XHAesdaR6btNOfcfl9hiFSbPQRgEF1u0wkWN0ThZH1c+IvT60ywLp
	R3rWaeC4bxQftdRukohfQcHMglAx/dAslFoKm6zKrMt/luQ5t97m8OfkYHBJQeBIsTx1VmFULA/
	u2Vi6GDMl4h09iPbcuCH4h5+PwaUYHFzyqDTCGdU2RlHaF5+fYhO1PtxvylXk=
X-Received: by 2002:a17:903:189:b0:29e:fc06:b8a5 with SMTP id d9443c01a7336-2a87130b27bmr8439315ad.18.1769498178413;
        Mon, 26 Jan 2026 23:16:18 -0800 (PST)
Received: from cn1dhc-k02 (125-227-180-151.hinet-ip.hinet.net. [125.227.180.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fb063esm106160505ad.85.2026.01.26.23.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 23:16:18 -0800 (PST)
From: Yu-Chun Lin <eleanor15x@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	james.tai@realtek.com,
	soc@lists.linux.dev
Cc: afaerber@suse.de,
	arnd@arndb.de,
	linux-arm-kernel@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cy.huang@realtek.com,
	stanley_chang@realtek.com,
	eleanor.lin@realtek.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH RESEND v3 1/2] dt-bindings: arm: realtek: Add Kent Soc family compatibles
Date: Tue, 27 Jan 2026 15:14:00 +0800
Message-ID: <20260127071530.25426-2-eleanor15x@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260127071530.25426-1-eleanor15x@gmail.com>
References: <20260127071530.25426-1-eleanor15x@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259749-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor15x@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,realtek.com:email]
X-Rspamd-Queue-Id: 3FB5090A78
X-Rspamd-Action: no action

From: Yu-Chun Lin <eleanor.lin@realtek.com>

Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.

Additionally, convert legacy DTS-style comments to YAML description
properties, following the pattern from the ARM bindings conversion series
[1].

[1] https://lore.kernel.org/lkml/20200622125527.24207-2-afaerber@suse.de/

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
---
 .../devicetree/bindings/arm/realtek.yaml      | 42 +++++++++++++------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index ddd9a85099e9..be529490640c 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -14,21 +14,21 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      # RTD1195 SoC based boards
-      - items:
+      - description: RTD1195 SoC based boards
+        items:
           - enum:
               - mele,x1000 # MeLE X1000
               - realtek,horseradish # Realtek Horseradish EVB
           - const: realtek,rtd1195
 
-      # RTD1293 SoC based boards
-      - items:
+      - description: RTD1293 SoC based boards
+        items:
           - enum:
               - synology,ds418j # Synology DiskStation DS418j
           - const: realtek,rtd1293
 
-      # RTD1295 SoC based boards
-      - items:
+      - description: RTD1295 SoC based boards
+        items:
           - enum:
               - mele,v9 # MeLE V9
               - probox2,ava # ProBox2 AVA
@@ -36,25 +36,43 @@ properties:
               - zidoo,x9s # Zidoo X9S
           - const: realtek,rtd1295
 
-      # RTD1296 SoC based boards
-      - items:
+      - description: RTD1296 SoC based boards
+        items:
           - enum:
               - synology,ds418 # Synology DiskStation DS418
           - const: realtek,rtd1296
 
-      # RTD1395 SoC based boards
-      - items:
+      - description: RTD1395 SoC based boards
+        items:
           - enum:
               - bananapi,bpi-m4 # Banana Pi BPI-M4
               - realtek,lion-skin # Realtek Lion Skin EVB
           - const: realtek,rtd1395
 
-      # RTD1619 SoC based boards
-      - items:
+      - description: RTD1501s SoC based boards
+        items:
+          - enum:
+              - realtek,phantom # Realtek Phantom EVB (8GB)
+          - const: realtek,rtd1501s
+
+      - description: RTD1619 SoC based boards
+        items:
           - enum:
               - realtek,mjolnir # Realtek Mjolnir EVB
           - const: realtek,rtd1619
 
+      - description: RTD1861b SoC based boards
+        items:
+          - enum:
+              - realtek,krypton # Realtek Krypton EVB (8GB)
+          - const: realtek,rtd1861b
+
+      - description: RTD1920s SoC based boards
+        items:
+          - enum:
+              - realtek,smallville # Realtek Smallville EVB (4GB)
+          - const: realtek,rtd1920s
+
 additionalProperties: true
 
 ...
-- 
2.34.1


