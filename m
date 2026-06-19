Return-Path: <devicetree+bounces-313745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +GrZKJofNWoznQYAu9opvQ
	(envelope-from <devicetree+bounces-313745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:53:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E75826A5503
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:53:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sifive.com header.s=google header.b=jQ2fJS4b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313745-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313745-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=sifive.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E95D3306A15D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 10:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5F0376469;
	Fri, 19 Jun 2026 10:51:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4152C37267C
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 10:51:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781866273; cv=none; b=pN5ioG9Lxy0YZKf1u28IVr0RyTqR5T3Nu4ouUKtTKx0UFiNgxklqRomlSCTe+GR04VMg2QuU/RVD9UR7cxwRpiSppG9tixvi1kPseqq55Y1LwwEI7SgR7OWcIMisr9B2en7YgXGazVm54HwVxXxchMpZ9UO6pr6300bQFluZaF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781866273; c=relaxed/simple;
	bh=UCDEAN1JZM06ojaDCJMZGh2N+kGi3rW2nTPUSS22OXY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ey+cTwyRIbzSzv3/LxLO5033j9uIZuVeg0RVpBoysH0RmsMihsEh/iyxHuvfexoUB2mOBrNOtfPZzKJuzjDoChPBQhvUCaKmIiKbXn4sEjbjg+jA8fS2iuTC4uw+opUaZMDD/V1c4tB9CoWWIEzLDFvdt8bDWhnx9Cc6ApS4HRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=jQ2fJS4b; arc=none smtp.client-ip=209.85.215.175
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c859878eb48so868261a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 03:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1781866271; x=1782471071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+AnvJHsC+E9gxmigHUGfqcWt/5+4STIPC8FnrseYIVY=;
        b=jQ2fJS4bIorMEkttdcHyeuTo7u/T++X9rYv9pVUtm89QiuIG2CIFV5Fq0P4uD1nTeO
         Ulg8pRtcxs0Ud6KISpMhZI1UQe/F5ypmKVQaeG04p4C95rEjhDzxj4mATfSusVx4tlzk
         J2choRDtwFKu7Nym6y5ki1Cj5dAXiqK4XmDwWqc9vvsh0NSrs+knHNcuj79NdIs6OlUl
         HPowEprONmWFbmYOmaXM96D+GQqoCUJ81VM1NqDoHPklfqHJI8DbhhFh7ftP9OqcmtM8
         II+yMXZAzY8vxPIHeTJWtsV3LLKkJvVJub6S7wjCM10N/88FZuiRN71raLb9aD56f80f
         IZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781866271; x=1782471071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+AnvJHsC+E9gxmigHUGfqcWt/5+4STIPC8FnrseYIVY=;
        b=Y6/FqvPfp8g7SnHJcgNKTyIdV95OtUwzqcX7jUxsF3tlG3iCg22t37Q04dmOdeOytf
         EYymf8UohQHNvyXWJAfz0SgSEv6irhTVu8Pcxycz5yjA9x/JhynVSii3SgpBwK2o01ML
         y0+QXNorl18m4hfdsFCbTZY8CFXKCzE9O4xFbBGXZvlzyIzgRu7lr9vf5VQmnij0yf1q
         Q9/hfwlWtebOV7syEFKy7jfUBoUxuU7v4pfbF+viKuWq54qk00P2/pyTv1kcrF00o2lb
         vVVIKyrTF1MKOcvz3aUbAqiS31s9YjKZAXOuRnSR5qZotOn0LHPxdw4+8xsZrcTBrSIw
         YN/Q==
X-Gm-Message-State: AOJu0YyWEGUUmqzYutTXXIZM9NGWoN6LF1VZD3N5bkNFS/BlOwzTpgAm
	0uPOegfc1WRs/dCaAxLa5Os3DN7HGXfPcKqcT+TSI4zjko2EyQAkGpzAOAM6b3ZdgqOVYUBubzS
	655BVDvtEevz6yAUmdkadgF++kC+5pogDsTR2bCRpijkEQPRsil1X/pVK60h9zxBUEslfmPFKIZ
	J6g1lAfCtc3I3rPvhNkGvGfoBLZakRYlbvfWLyZU2dMdh34y7vWQFW
X-Gm-Gg: AfdE7cmRg/gBaV/Gm2Tsz3x5SX/+UE4QgQDf0YNx7lAq9kNOU1Ma9zvRcubhyW6Ah+x
	lSpd670OntDyQf62e1UsaFAgLZm4oOKlzJJu6fa/UUZYq6GqUvEsfeFGomyZWI7vfOgI/ZGRRXW
	rOlD4gYkGTY9c8oh3KE9iSvaztsCJjdZ/beTuf1/UtENmw89qGATMHl8TYmaSgjq0WiyUszvHRQ
	2Qr3ZU1+KzvlFhY7beTa7fcBBsOHqXixjlAK3q7jGomGWQaHIYcWxAwKd5kxOV5hVQX0qLzM88B
	vOoMuGmgocwWC/Cpjala4ll+2AcUgvy8Q25h25kGX5tDVZLY+smxi25ZYffIR5zRe3QSHJ02Axb
	JdS0iL2glA3g7vLjHjwtuoJx79X9+I2P+wIQizoEse7VXfnBRgv/dL+pruZ4uVSy4Qx15f7f8GQ
	g3D0DlI7NcjBKJh/mu+mAM+h5pX/iFd260zcX7
X-Received: by 2002:a05:6a20:2d14:b0:3b4:7b2a:6a0a with SMTP id adf61e73a8af0-3bb35b6e1d3mr3626858637.35.1781866271432;
        Fri, 19 Jun 2026 03:51:11 -0700 (PDT)
Received: from hsinchu16.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8a84c6eb1bsm1993583a12.2.2026.06.19.03.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 03:51:10 -0700 (PDT)
From: Yu-Chien Peter Lin <peter.lin@sifive.com>
To: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com,
	dlan@kernel.org,
	guodong@riscstar.com,
	dfustini@oss.tenstorrent.com,
	michal.simek@amd.com,
	junhui.liu@pigmoral.tech,
	darshan.prajapati@einfochips.com,
	akpm@linux-foundation.org,
	zhangchunyan@iscas.ac.cn,
	luxu.kernel@bytedance.com,
	pincheng.plct@isrc.iscas.ac.cn,
	nick.hu@sifive.com,
	jim.shu@sifive.com,
	zong.li@sifive.com,
	greentime.hu@sifive.com,
	robin.randhawa@sifive.com,
	scott@riscstar.com,
	dave.patel@riscstar.com,
	raymond.mao@riscstar.com,
	Yu-Chien Peter Lin <peter.lin@sifive.com>
Subject: [RFC PATCH 1/3] dt-bindings: riscv: Add Worlds ISA extensions
Date: Fri, 19 Jun 2026 18:58:32 +0800
Message-ID: <20260619105834.1277302-2-peter.lin@sifive.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20260619105834.1277302-1-peter.lin@sifive.com>
References: <20260619105834.1277302-1-peter.lin@sifive.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[peter.lin@sifive.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	TAGGED_FROM(0.00)[bounces-313745-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:samuel.holland@sifive.com,m:dlan@kernel.org,m:guodong@riscstar.com,m:dfustini@oss.tenstorrent.com,m:michal.simek@amd.com,m:junhui.liu@pigmoral.tech,m:darshan.prajapati@einfochips.com,m:akpm@linux-foundation.org,m:zhangchunyan@iscas.ac.cn,m:luxu.kernel@bytedance.com,m:pincheng.plct@isrc.iscas.ac.cn,m:nick.hu@sifive.com,m:jim.shu@sifive.com,m:zong.li@sifive.com,m:greentime.hu@sifive.com,m:robin.randhawa@sifive.com,m:scott@riscstar.com,m:dave.patel@riscstar.com,m:raymond.mao@riscstar.com,m:peter.lin@sifive.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.lin@sifive.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sifive.com:dkim,sifive.com:email,sifive.com:mid,sifive.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E75826A5503

Add DT bindings for RISC-V Worlds ISA extensions to tag
transactions with World IDs that hardware uses to enforce
world-based isolation across execution contexts.

Signed-off-by: Yu-Chien Peter Lin <peter.lin@sifive.com>
---
 .../devicetree/bindings/riscv/extensions.yaml | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 2b0a8a93bb21..1bc8b1aa67c0 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -193,12 +193,35 @@ properties:
             ratified at commit d70011dde6c2 ("Update to ratified state")
             of riscv-j-extension.
 
+        - const: smlwid
+          description: |
+            The standard Smlwid extension for M-mode control of lower
+            privilege World ID via the mlwid CSR as ratified at commit
+            TBD ("TBD") of riscv-worlds.
+
+        - const: smlwidlist
+          description: |
+            The standard Smlwidlist extension for M-mode control of lower
+            privilege World IDs via the mlwidlist CSR as ratified at commit
+            TBD ("TBD") of riscv-worlds.
+
         - const: smstateen
           description: |
             The standard Smstateen extension for controlling access to CSRs
             added by other RISC-V extensions in H/S/VS/U/VU modes and as
             ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
 
+        - const: smwdeleg
+          description: |
+            The standard Smwdeleg extension for M-mode delegation of lower
+            privilege World ID control to S-mode via the mwiddeleg CSR, as
+            ratified at commit TBD ("TBD") of riscv-worlds.
+
+        - const: smwid
+          description: |
+            The standard Smwid extension for M-mode World ID control via the
+            mwid CSR as ratified at commit TBD ("TBD") of riscv-worlds.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced
@@ -262,6 +285,12 @@ properties:
             ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
             ("Updated to ratified state.")
 
+        - const: sswid
+          description: |
+            The standard Sswid extension for S-mode control of lower
+            privilege World IDs via the slwid CSR as ratified at commit
+            TBD ("TBD") of riscv-worlds.
+
         - const: supm
           description: |
             The standard Supm extension for pointer masking support in user
-- 
2.43.7


