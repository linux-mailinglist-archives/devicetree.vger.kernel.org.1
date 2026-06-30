Return-Path: <devicetree+bounces-317589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bew8MeKRQ2p0cQoAu9opvQ
	(envelope-from <devicetree+bounces-317589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:52:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E516E2777
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:52:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sifive.com header.s=google header.b=aaSddYk+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317589-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317589-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=sifive.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB6CE309D223
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37B23C3C06;
	Tue, 30 Jun 2026 09:46:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CD632AAD6
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:46:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812813; cv=none; b=iRMwa/gTr+Wddv2/lUZ+8bDDbsIMcloT94EWzUEgthyroakFxHuxSimSe5+lthn6Sl735pCGCIGeK16vMOPosNxdXR9fDRalycQ4Zl8vgzZKKXh4IwuBZ9VxtIQ2DQ4aCl6JKH4HKdTJDuqNgY4ruanc5RDWIwvrK8GYMqVy/pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812813; c=relaxed/simple;
	bh=LKKqj8wK/zRa52p1Z1hwx3tYVATwyfEAhduXEkkwS9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nvL7rFahd2LgdpX0Y2deqeIcXyE4jcr29YKhdncKRxJUtXNQW2AL/XaYHDICvdrYD7jooKVkduofvikNGEHzBiAwhb0a02nk05rTsAy9yAgyjbzAvyO+8FypQNPJw3Cg7aL4ya6xi1ARVBr4EeDEEWGBohU5oSpnl6Nd8jrIsck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=aaSddYk+; arc=none smtp.client-ip=209.85.214.173
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2c8c30492a0so36262485ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1782812812; x=1783417612; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VWg7g3fm5AGzhOqj0AZfrV2kQgiHMqxvuQptIptT+5c=;
        b=aaSddYk+e7jplRjFEpjjKvUiMC8cb+wM+LOrTuqjVV9sGMwkdMxtEAblE5xNhVFkyX
         YzqXUlwqzhE0oNxQZRXW6kibCE02RSCGcQvKnNBOOXiOXfZWgF4/dpFR0hrQfgvTMCIs
         p5Q9MRhOB+vBYdh6EillKELXU0MuP3YfHfxdcbPzeo9Omzs0ow665Z7yBypoV/BcriYk
         rW5hn7YT9ILaRJtCAyHUXrg/KJlm/nrKeHNgsxcraDIJFMXLnl1PzmtVt4dGxD3+hMZ/
         yzT8Bj7vhl24aHZR3oWFcICH44AjR4o67eLC53ez64m8oTg5e+MwwkU5tuKl1zZESy8b
         TRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782812812; x=1783417612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VWg7g3fm5AGzhOqj0AZfrV2kQgiHMqxvuQptIptT+5c=;
        b=Oej6mUvn9ywM3DsANUzRfU7MxbZBPcfb2gNBJzg4hmcKmfiVrvN9l2hTg0TULbq/y5
         Av4nQgWeohM6Lx355YERNeD4JeH+kFh0Cn8I78wdxub/a9o03/+ucQgk4fHEmfIHHBJ7
         qZeUQuDEogeb+tEm1qZW8x02OKSzKFg86x2VMXnFP9RAKyfP2hiton6wBvRK7Tp1C4QH
         SViiwFKB3NOrIc04nf5xpYhOYn579wed4YTfa/Rvl4EjngIabpmBn/MJucD8a6ikglls
         /nj6GNqfCVlbQVUAODGThHlEo4v0bpbzsHQxOMy8rudchWUoK/90ZlAeTtzvMzV1cky4
         d9ww==
X-Forwarded-Encrypted: i=1; AHgh+RqbOGjJcPnDPrh1KJd5a9+0lvJPlEhop/C5YAa1sDiL+4jMgNnExU8UrqJL3ucxQZ+XdnBQOqPA7EkQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzSTOKYI2yxFHj2Zw5LprYRaSmxVEYnXuVC12hPC+c72nqnZRTP
	JtiRkX+Hj0pv9qQ8N0vyKTHQWd2at9ueeiTG/XQasuLhXzqEmj10WDMirc1RzB+hbt5Q8WLftCl
	bxbzjcxH3mXa65u+wTcKwMiInH204NKGnAAMMCqStJPFmuWOXzBhvWrJK77b8Oaz1iVMnaFG1Iv
	3BVSJlJpZUx4zfsNl9IBPBxPX2ySzM+jg7ikbQKP4K0n5D0fwlzZ2rtA==
X-Gm-Gg: AfdE7clVNLre8d8pNW/nDqtEFU5wpt8rduneNwewq7hFMnjagsWCwMrcSAIt2UJUxNg
	p4j6LfdYf+OBezDopopCcYqSWaREHJVbBqAiue8EeRRqBiZX7FxzRHGCEGQV4hZY5uEawqLE5/I
	1qxWLfx+cR9tJxQhZOjW1tpuTcAe95XO3yPR6eQ5WpSGGgFYo9XjtFg0l56T6VmtH7xvTPSyq0u
	9lgUbQdHFONh0udgkXTdNF8iz6O+z7PE9xJhRV90IOMTMZ9NN3JSP8M+6n6cfeyPdv7hk7JJ2C/
	DESe4Kp56miQx0lR8oB38kSp2NitapxP/4ap/C6quw6BR28Ew5Fz2dode/UPFWvXCD72amZKVmp
	fu9UGqJ4OyODMlL5Le2Otsi9h05c2JeQWlBZ7INkbjmQCViEzs9FRUcHRkfSqcO/FgwFKVP2o5m
	ohyqEqVkff9qUZvEj3O349wWbXJD7fIbg=
X-Received: by 2002:a17:903:283:b0:2bd:5ab:af95 with SMTP id d9443c01a7336-2ca2d3d173emr23138885ad.0.1782812811689;
        Tue, 30 Jun 2026 02:46:51 -0700 (PDT)
Received: from EricL-ThinkPadX1-TW.local ([136.226.240.181])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca37c87bb8sm10144675ad.30.2026.06.30.02.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:46:51 -0700 (PDT)
From: Eric Lin <eric.lin@sifive.com>
Date: Tue, 30 Jun 2026 17:46:24 +0800
Subject: [PATCH RFC 01/12] dt-bindings: riscv: Add SiFive pre-ratified
 trace components
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-v1-1-c9c1ffc64e4b@sifive.com>
References: <20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-v1-0-c9c1ffc64e4b@sifive.com>
In-Reply-To: <20260630-dev-ericl-riscv_trace_support_v3-new_sifive-v3-v1-0-c9c1ffc64e4b@sifive.com>
To: Mayuresh Chitale <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel.holland@sifive.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Greentime Hu <greentime.hu@sifive.com>, 
 Eric Lin <dslin1010@gmail.com>, Eric Lin <eric.lin@sifive.com>, 
 Nick Hu <nick.hu@sifive.com>, Vincent Chen <vincent.chen@sifive.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782812801; l=3629;
 i=eric.lin@sifive.com; s=20260630; h=from:subject:message-id;
 bh=LKKqj8wK/zRa52p1Z1hwx3tYVATwyfEAhduXEkkwS9Q=;
 b=F3XqnwGVGBr2rfVhsZoSpQwG7aatf5ROijOBMiyw7Eiz0GiPCYCZ85sOZPx0WQCzMKJAq4q1o
 UOfrIRe5zE7AsCFUL5jIOkHTs8IXL+uiK68C0jG2g1EyT/KvXbGzUC1
X-Developer-Key: i=eric.lin@sifive.com; a=ed25519;
 pk=RLPQN6uNJ1cSM8GhP+L++2j3pf5ohznFbkNdwIO1XDw=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317589-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchitale@gmail.com,m:anup@brainfault.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:samuel.holland@sifive.com,m:alexander.shishkin@linux.intel.com,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:greentime.hu@sifive.com,m:dslin1010@gmail.com,m:eric.lin@sifive.com,m:nick.hu@sifive.com,m:vincent.chen@sifive.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com,brainfault.org,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,sifive.com,linux.intel.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,sifive.com,gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26E516E2777

Add compatible strings for the SiFive pre-ratified encoder and funnel
trace components. These implement version 0.x of the RISC-V trace
specification and do not support the generic riscv,trace-component
fallback.

Co-developed-by: Nick Hu <nick.hu@sifive.com>
Signed-off-by: Nick Hu <nick.hu@sifive.com>
Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Eric Lin <eric.lin@sifive.com>
---
 .../bindings/riscv/riscv,trace-component.yaml      | 73 +++++++++++++++++++---
 1 file changed, 66 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
index bb519bc4a163..70c8d257b46f 100644
--- a/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
+++ b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
@@ -16,16 +16,23 @@ description:
   The RISC-V trace components have implementation specific directed acyclic
   graph style interdependency where output of one component serves as input
   to another component and certain components (such as funnel) can take inputs
-  from multiple components. The type and version of a RISC-V trace component
-  can be discovered from it's IMPL memory mapped register hence component
-  specific compatible strings are not needed.
+  from multiple components. While the type and version of a RISC-V trace component
+  can be discovered from it's IMPL memory mapped register, specific compatible strings
+  are used for pre-ratified trace components.
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qemu,trace-component
-      - const: riscv,trace-component
+    oneOf:
+      - items:
+          - enum:
+              - qemu,trace-component
+          - const: riscv,trace-component
+      - items:
+          - const: sifive,trace-encoder0
+        description: SiFive Pre-ratified Encoder Trace Component
+      - items:
+          - const: sifive,trace-funnel0
+        description: SiFive Pre-ratified Funnel Trace Component
 
   reg:
     maxItems: 1
@@ -117,4 +124,56 @@ examples:
       };
     };
 
+  - |
+    // Example 2: SiFive trace encoder and funnel connection
+    encoder-0@2000000 {
+        compatible = "sifive,trace-encoder0";
+        reg = <0x2000000 0x1000>;
+        cpus = <&CPU0>;
+
+        out-ports {
+            port {
+                encoder0_out: endpoint {
+                  remote-endpoint = <&funnel_in0>;
+                };
+            };
+        };
+    };
+
+    encoder-1@2001000 {
+        compatible = "sifive,trace-encoder0";
+        reg = <0x2001000 0x1000>;
+        cpus = <&CPU1>;
+
+        out-ports {
+            port {
+                encoder1_out: endpoint {
+                  remote-endpoint = <&funnel_in1>;
+                };
+            };
+        };
+    };
+
+    funnel-0@2002000 {
+        compatible = "sifive,trace-funnel0";
+        reg = <0x2002000 0x1000>;
+
+        in-ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port@0 {
+                reg = <0x0>;
+                funnel_in0: endpoint {
+                    remote-endpoint = <&encoder0_out>;
+                };
+            };
+
+            port@1 {
+                reg = <0x1>;
+                funnel_in1: endpoint {
+                    remote-endpoint = <&encoder1_out>;
+                };
+            };
+        };
+    };
 ...

-- 
2.34.1


