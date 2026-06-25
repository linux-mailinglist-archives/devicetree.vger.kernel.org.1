Return-Path: <devicetree+bounces-315584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f3+hI5b5PGoVvQgAu9opvQ
	(envelope-from <devicetree+bounces-315584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:49:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8586C4651
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:49:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="TNN5ElT/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315584-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315584-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 747433080E44
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5241C3839A8;
	Thu, 25 Jun 2026 09:45:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030C83806D0
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:45:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782380702; cv=none; b=p3oYfwoJQvTRifJEvSG3HUyrH7HP+/kDnnc75a1Kz+rJsrVPSJGnRQHeay5yLVLhWwZ0rFqoCj+VSC7n8zpcmOBa/GLSI9R5CJ00/i/YSC5UOl31PxfFqV706lsR2pU9xqss7qiHRu7aLIC6hhh/fZNKZl605qweNm01JrTdDVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782380702; c=relaxed/simple;
	bh=fkXjDcb0MZiU0R9v5lZXsnJk7FSq22Eatie+ZuSTVFs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U1ju/Zj/70h5vfSe7O/sxG5NEEckUtPtcjc9N1MoRWgKliwVLBFutulPxfJbDYvIVuYj1/f6EsdINuExoJTER0DM9RwJ7+dPA0leEd3ryTczBNy5JJgbFbe3na+BKOAaSBsE2Ss+f4RM1YBBkuyDFMtdZ07u0hL1MoFb1W4Xxs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNN5ElT/; arc=none smtp.client-ip=209.85.214.173
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2c7ee0d7f1fso8499065ad.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782380700; x=1782985500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWFRHwCJWqyDwSA9g6vZ6qYM6bFdwonDXcZifiRo3bA=;
        b=TNN5ElT/2qxRo6rJ0XVh4ZxiV+GJa4gefgJTQZ7VI6Sg+r2n66lzV1xlHdoEJXbihF
         dLKjRsVBoMC8liGW/KMjuETqvKbUchi0s7ab2M9Vn4REnb0c/4qXijsAOlsG7lwbjNxR
         yVC8HTQbXsvpj4G0sWwp/uu9sDprF5Csk0eK5rcBMS5yEoj7geCzpMq0B9ZrJkD5rVYu
         dn88erbMOC7wq2kA6y+TFepbmEqBWp6VtkU0VPbSs9S4AVBmL8Gm24V3gKl0isabgxDt
         JaHRdKBkwalXsxGvbmEDmE57cBMczAGm1e9/KNAnyumDOphzrzw8oLXBhPT0QWRpfBAP
         7Njw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782380700; x=1782985500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eWFRHwCJWqyDwSA9g6vZ6qYM6bFdwonDXcZifiRo3bA=;
        b=qQw70vlSl90BSHDbQOSiPCOoe+6W0prDnX7vJmAKnUGjMcL3PpdXxDjXRMgf5VsskI
         kRxKfY2aLbpUMMpbHGJti/3tTJcj06aNLCOTAcepessCZvyLmqX3LlUrDv85ZqpZFijH
         9Ur+Cw+ozL9AZyyyMlthV24wX9s/lwOc53G9vZJ8Htd8aY/xU0fxs7dPmcxQZLU7Mm3O
         JJm/5mL6d3kfIiucRAP3Vetz/MOH0oQliiWHRaZ3Do6fhPx6GkkC2ply9xvvv3bc/wuS
         Fa8G6CgoH0rOzJTYrSijQikeRqyPX23UKywU79WC+CgYOvweaXVWbI8cNxH7U+eTsSPw
         tbUg==
X-Forwarded-Encrypted: i=1; AHgh+RpCAD/JH5PW7QgPGHuHHkQUUiJUPSyBewBb6jXFVKgNBId6xmaWB1N+jhphjXnAZ1rEveqeif5QY8M2@vger.kernel.org
X-Gm-Message-State: AOJu0YyASy2TmoZa89k/odJnvKpn5o4YGjSXL/21aXV0KSoHDBKAAR8n
	moUL7HT3ZTdnrWdPQ6g+y4Ak4dyaCXy/e9pmCfe0fTPe6sN6ntJuMC2T
X-Gm-Gg: AfdE7cmRYvZT2yXPxTdFGOdmVYZtuo9Ny3YKjxmr41i4QrderL3WZTKdgQioVXWoJND
	U6Xr7kRVv7brfgNUOYCFL9SFvS9A9OjzCcYLZIlLDUl+VUv97A1qkf0Ir3sOG7v01Fbmca6PDXL
	GixWyYnBOF9gb8/OkGzIxV9W41xbF2p6eF1HE0n2FAkJnbHx8tiQGUxNisrHFTy57iHQDZtSVsQ
	8oLAH4hbxJYRDDFuzTcxDuNcE7WxyPcnlE7ww6KdT/4W/kCg8C2l1Op2inLGKbGUDoXQ4Z6AWUX
	MOT9bbIBNfL0y/dZPrHt4TqeRGRVi2FCGyniTmEqMFIKSc7mm6X1a3O7lcrd3iJoErHnC8Jd8+7
	Defw1lP6hNiYX8GeDrA0MGLtx4oM8HugYhPBuHx4hpNMGSc+nwzd4+Jwz0uOhKSBNPntuFhoraU
	bmM7p/3wz+//NxHSakloIEIsfJIHM6+OkLhzhyl3TVwBfwNRc2CPOOBe6tjfSOKX4ipk+61Baxx
	ZMCK/xRrGAC
X-Received: by 2002:a17:903:19e7:b0:2bf:23c3:34ba with SMTP id d9443c01a7336-2c7fc7948aemr19245855ad.28.1782380700312;
        Thu, 25 Jun 2026 02:45:00 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f5ac8c26sm16614995ad.1.2026.06.25.02.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 02:44:59 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: zhengxingda@iscas.ac.cn,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v5 1/7] dt-bindings: display: verisilicon,dc: generalize for single-output variants
Date: Thu, 25 Jun 2026 17:44:43 +0800
Message-ID: <20260625094449.708386-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625094449.708386-1-a0987203069@gmail.com>
References: <20260625094449.708386-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD8586C4651

The verisilicon,dc binding was originally written for the T-Head TH1520
SoC carrying a DC8200, and hard-codes five clocks, three resets and two
output ports.

Add the Nuvoton MA35D1 DCUltraLite (nuvoton,ma35d1-dcu) to the binding.
The DCUltraLite uses only two clocks (core, pix0) and one reset (core),
with a single output port.

Use allOf/if blocks to express per-variant constraints rather than
hard-coding the DC8200 topology at the top level.  Each compatible's
block constrains the clock and reset item counts; the nuvoton block
additionally overrides clock-names to the two names it actually uses.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/display/verisilicon,dc.yaml      | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
index 9dc35ab973f2..1e751f3c7ce8 100644
--- a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
+++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - thead,th1520-dc8200
+          - nuvoton,ma35d1-dcu
       - const: verisilicon,dc # DC IPs have discoverable ID/revision registers
 
   reg:
@@ -77,6 +78,62 @@ required:
   - clock-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: thead,th1520-dc8200
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+
+        clock-names:
+          minItems: 5
+          maxItems: 5
+
+        resets:
+          minItems: 3
+          maxItems: 3
+
+        reset-names:
+          minItems: 3
+          maxItems: 3
+
+      required:
+        - resets
+        - reset-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: nuvoton,ma35d1-dcu
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: core
+            - const: pix0
+
+        resets:
+          minItems: 1
+          maxItems: 1
+
+        reset-names:
+          items:
+            - const: core
+
+      required:
+        - resets
+        - reset-names
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


