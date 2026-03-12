Return-Path: <devicetree+bounces-274481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJbINBd5sml/MwAAu9opvQ
	(envelope-from <devicetree+bounces-274481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:28:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D66C26EEAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EC3030AD931
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38021376BF2;
	Thu, 12 Mar 2026 08:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SUNucwN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C63434A797
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773304037; cv=none; b=ZtMallssPAXPNPrQ2b/UT1Pqq/XkBH58PukHN63vrDVc6NRBCByIuFI1eEqZ3RH797GrsKeDbQhiH9MjDVTUYo7iFq47CI/u1uwwcZWeAdMxpb1tu9+qPvAnMtn6u6msmw7+H4lP9/mFblv0e/6SWf2k+CtVjWWzOpb6Z9cucMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773304037; c=relaxed/simple;
	bh=wBxyqppGt2i2tSwcaWrs1I6l6vXH1+ZcfjTJ0ISdvaE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GHz37ss4R4tdUatHJoSvuv0aQo6pOUYG0OakTndN+f51wMnomkoB9GyOLsgLcaB5aFYNZL4J2k511Pu6daguSay1atfYfP/JqTnlEHULSk0gNTxj8kvZ1R9H/bqf9pPm/lXhemaWWWXZbzGFWIH1Uh3gWalVPIBWjIjuOf+gwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SUNucwN6; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso5602535e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773304034; x=1773908834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uedDcFbH0r3wxJK4Nkw9V1od9AYnobc+4Fv3N7Cy3Y=;
        b=SUNucwN6YSPwE2CFKcy247ib7Ns75R5Iy3NNIIgtqd16X7246hRF+fjBqNr4isjGET
         yIahl3nJ09fY9ePy7q4ebZA6X5qDGv61waeI/yOdno/tb+fOvMruSHg4s5HPQFOeA8fr
         EXm1bTJ5zdn+Tk48XiT79mgDngBA3D+u07YugCns0VTY0mCamHd+rPrB9NnZO/YQodhe
         t1+NV3KwA9c1pHETn6cKph0awPw5bquZqXaLMC+9XKA/OdN3i+Ru1pX67MaB4PhaIAZc
         8lmBQd/tWHjI0ggXpahX8EHZJP334t46zIrVx7dRKmfTgzjR1rjKQzixPc6R8e1kNWoE
         0fKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773304034; x=1773908834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7uedDcFbH0r3wxJK4Nkw9V1od9AYnobc+4Fv3N7Cy3Y=;
        b=fIVDtQGVprOYwlLPMWnKdfoNg2fg9cqedEFGlaeNN9edg2GvZsYYNoMvgQVdXuuuw/
         +/rjXBKcg5+pSR5VIJiXK/+3gpdBJrUpI3P5321oYx8cHOZ/7glJg3sBdDUmD2u324mF
         7Qql7URhnB7Hi+9K0qO38qCf3dBxc6SWIeVJT0jWXU1HirIAtFKgI137gEm0dS6arJgZ
         kKulgnvm74bs6H2yaW1zIa/suPQ1BT0vlgR+AiZw+wOVKSO1W2f2brATrNfp8WhqwjlC
         ppTNCcTs9N4QVW7/VsU74a3pDruyo4Kg7KeC1cuo6DlpIcp+3BVzN35Yt9CkrPMss4wl
         JgAw==
X-Forwarded-Encrypted: i=1; AJvYcCXoM5U6z/slX9dB7JaZuy3hiPtYSTlagYxlkYNf1EPZQcqHRXclM4OmBHrZ2ZGdpoyN2wS8KlFwluMS@vger.kernel.org
X-Gm-Message-State: AOJu0Yysio+bQRyAXNUrThSfSAr68RBZrPEiHjjwfz7VScaAbF0A5X9j
	OYjkthvldpKAFnnecz87mg3k0tqNZTodV4PTOxlrKB8PcqgoA8ykBsSq
X-Gm-Gg: ATEYQzxce/3cDiG16P0W4RcfqhGcTzZVA4AwlmjS9l/IOuR68/Slk2XhYr93IjT9Alh
	I1WrPaGfBdYjKbq3HbNi2lN16uh0N3V94+a7K4FBCTLbT2U8aWblQTUiSSVBJEBuJrvCRgqxx4s
	CJ/Vk5+2mIFRN3FiXVjAP7U21YktqEMvfO+x5XrJS5IAhgM4Jum6Bmq/VGzzV17KQjqmkphv0z+
	I9iId93qWbn5rUa5pZMZH2CXm4lwd7GlrZrQW2BDtnGQEvEnHmpJfiSBr6FVwC/DLZd67f3GC31
	asx/XC+d5eFzfRwokeRdvx0e6FBj+x6VnoDQ1iO7bvsoldHMPNKBUfQUYxxvFGLFrXx9tRP/NT5
	hEfXRv+5g7QyiLLQKQaZJaI13Dcsk5HwOFX+KBoQtTzVwkU647T6ZHWLbHAYAQFaXoPCQCLVkPk
	ifk24u3Tvaw23dT4D5t4491kjVmc3sVd0C+ptU/7hThRouOX/ApaMsubvIzA==
X-Received: by 2002:a05:600c:3b18:b0:482:e5d4:b7ca with SMTP id 5b1f17b1804b1-4854b0b32d8mr96124265e9.8.1773304033517;
        Thu, 12 Mar 2026 01:27:13 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:775:4d0d:d776:157e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854a2eea84sm65925065e9.1.2026.03.12.01.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 01:27:13 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 1/2] dt-bindings: serial: renesas,rsci: Document RZ/G3L SoC
Date: Thu, 12 Mar 2026 08:26:58 +0000
Message-ID: <20260312082708.98835-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312082708.98835-1-biju.das.jz@bp.renesas.com>
References: <20260312082708.98835-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274481-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 6D66C26EEAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the serial communication interface (RSCI) used on the Renesas
RZ/G3L (R9A08G046) SoC. This SoC integrates the same RSCI IP block as
the RZ/G3E (R9A09G047), but it has 3 clocks compared to 6 clocks on
the RZ/G3E SoC. The RZ/G3L has a single TCLK with internal dividers,
whereas the RZ/G3E has explicit clocks for TCLK and its dividers.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../bindings/serial/renesas,rsci.yaml         | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
index e059b14775eb..85ebb3056066 100644
--- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - renesas,r9a08g046-rsci # RZ/G3L
           - renesas,r9a09g047-rsci # RZ/G3E
           - renesas,r9a09g077-rsci # RZ/T2H
 
@@ -145,6 +146,31 @@ allOf:
         - resets
         - reset-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g046-rsci
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+
+        interrupt-names:
+          minItems: 6
+
+        clocks:
+          minItems: 2
+          maxItems: 3
+
+        clock-names:
+          minItems: 2
+          maxItems: 3
+
+      required:
+        - resets
+        - reset-names
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


