Return-Path: <devicetree+bounces-307929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0VoQHOIqJmr7SwIAu9opvQ
	(envelope-from <devicetree+bounces-307929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:37:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB965244E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:37:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rs3PGZxZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307929-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307929-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7257E3015CB4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F902314A6B;
	Mon,  8 Jun 2026 02:32:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1F231618C
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:32:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780885969; cv=none; b=rKFySICxV7L4VzgGCJEUR0peKm2yn+S7Zf0z4/53i30K5AUx+SMMfNPG8F9lG1+NLy+zfTg/ohoX7NLQ3c30O8J2NLMoAUeMM8yHkDZ7Hb4yOmZbB02+HdnRS9mtlFJgaJtzryZ3wC6nfu27VGxaMASf264dGFUokZ16DBvkG8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780885969; c=relaxed/simple;
	bh=07WiGulSAq9c2hVE03sspjmSsLQqMIv4OYb6R1D4cy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AWBpRs6Z47WOn1VxkSG3gAceik9RzfAbRUe4y+FMifIhmeZeFYoeHvRv/bL245icUXxVrBbDwoqwRHFN4flSVFVLdl8uwvolGO1Ra71EBdc4zduTe6ZlwPYertZP/BNYjfGtuLISClj3LhQFPpl08nlqPg16VJ4SHJ5ZlpPqPmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rs3PGZxZ; arc=none smtp.client-ip=209.85.214.170
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2bf2e8ccca1so26099305ad.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 19:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780885967; x=1781490767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mE/QA9NRrIBzmpaNm7qJKCCCXhuuJ1hBihamFPKJO/0=;
        b=rs3PGZxZV4ue7iZ5FS82No/YI6KmQB+JVBJRw82PWGHPRchvGNbWiXZj3f9wT2TFYa
         dYwH5DhIMX9P+tvAI351PDX913sVxkYhWCUavMYMocQ0gNkfmjr2wqsljt0skGCDegxz
         b7yd+XQEYweaJ5Pzv8KAFaT5RKUq2DoiyfV5oGe3gCPZPTQ+gkyRlxo2KynkO+jZaI42
         pOT1A2xO9J294Cs5O2NGvme2dE6kckl0rrFYQh5dULjZrL0fgiSjzOj/F8hmPtpM9QXp
         enZ/x/dFTAt4/wcZNzaqZ4k4E29/coWPgw9jPr/JrNNCxTBCra3+VCaSq/u9mDxFE1wn
         0BtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780885967; x=1781490767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mE/QA9NRrIBzmpaNm7qJKCCCXhuuJ1hBihamFPKJO/0=;
        b=bhHqT+NTUvZDdY3TSXlnIWVvuFIZMvFKJ7+JbeUrVFhe2Fub+p9a5ouZBA5Ll3eXdG
         C7LQ0r8NuU0w2r1pPqBRabpzPd3MRI8uO1lIvZSSOO/cDhlcEq515C7UR0keGUhAlOV+
         vqtUZ12Q9oMPXcgN1mi0J7uYen/gkl+4AeZrZYTjDkcdXZeruDWspyC2bqiUlZhkH1qD
         IEMAw+qdvKnQEXUVMU8Mg1/HTNvQD3v9YeDiHVqoZ/1I4YqNqWm0NsI6JeKTTbNbcVcQ
         k894E2+Yql95WB+hAgVhzfSmGZ7nO7AJ6bacDWsmru8p51hgaHmYBKuWT5JzZH/NrfhT
         Bj5g==
X-Forwarded-Encrypted: i=1; AFNElJ9O10ob7vMwcHqhKDZbsZEwy8nmbADM/WK07P+bD3+Ul0xsdMlYKpUFd/SX+d6r7e3dShrP8NJ6EpxO@vger.kernel.org
X-Gm-Message-State: AOJu0YxGWVnCwafQkpJTTW7AzB+nYvR+byYHWPVYuI8W814pVFLsXLYv
	izuBB+f7ZIESyZZ8RKE1s0BCYnhaKX566YlSQUXs18owwCJUtCs8GfiI
X-Gm-Gg: Acq92OFKtQdzYqltC33k52J2m6VMTUPqurG+0HXJT3K3Rm3Ytb5U3ZkxmCuEfD37Wy1
	ugoo0rRLq1RjCrg0CDRc+quU7qf2qb+5h+e64FhYyaWF1zpMIIqlgvWHoQzpz2IHEZdF8NmFKvZ
	/Lr/VlWbi4bl46d0iaC1FxyOO6jNBssY6UxgSAWI59uvEqigrnwHYe7NKIioGjw5RBYGSCbvpZ3
	N+/zwFLVKLQKJUNC7gHmEh2eA5X6azkPZAJJhm7e9b8DRqFEGZNQpVasz+ceq1X3jPxQZLKCprO
	W2mhvesIzXBDJ1ejcqQYfipNBQtyvrjKvKRKjrl9/+Ri4LQxsfpkn/jtDekLSW+K4UTrpMd603+
	vsdQq27g+M61O8XifmTAOBQJdc3YNWopSjta4D9lJ7FF8bJ/xqkX70883phOFFoWQFIupwCcuLg
	tnpsWd+NWXbSZiN8F+pShl5752DM24DZz4xefUXeS/Wv5kWAq/AuCfF9m5rhdpGwklYRxXG0O/G
	uNZ6NiOh7dCbkrjZUpsnx8zZetJwDYqPA==
X-Received: by 2002:a17:902:ced1:b0:2c0:fa4e:91f6 with SMTP id d9443c01a7336-2c1e7d41eabmr144113125ad.13.1780885967308;
        Sun, 07 Jun 2026 19:32:47 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c245dd3b5dsm38143485ad.81.2026.06.07.19.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 19:32:46 -0700 (PDT)
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
Subject: [PATCH v3 1/5] dt-bindings: display: verisilicon,dc: generalize for single-output variants
Date: Mon,  8 Jun 2026 10:32:33 +0800
Message-ID: <20260608023237.305036-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608023237.305036-1-a0987203069@gmail.com>
References: <20260608023237.305036-1-a0987203069@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307929-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C0AB965244E

The existing schema hard-codes the five-clock/three-reset/dual-port
topology of the DC8200 IP block, preventing reuse for single-output
variants such as the Verisilicon DCUltraLite used in the Nuvoton MA35D1
SoC.

Rework the schema so that variant-specific constraints are expressed via
allOf/if blocks:

- Add nuvoton,ma35d1-dcu to the SoC-specific compatible enum.  The
  generic verisilicon,dc fallback remains the driver-binding string.
- Relax the top-level clocks/resets definitions to minItems ranges so
  the base schema accepts both variants.
- Keep ports in the global required list and keep additionalProperties
  tightened to unevaluatedProperties.
- Add an allOf/if block for thead,th1520-dc8200: five-clock (core, axi,
  ahb, pix0, pix1), three-reset (core, axi, ahb).
- Add an allOf/if block for nuvoton,ma35d1-dcu: two-clock (core, pix0),
  one-reset (core).
- Fix a stray space in the port@0 description.
- Add a DT example for the Nuvoton MA35D1 DCU Lite using ports/port@0.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/display/verisilicon,dc.yaml      | 103 +++++++++++++++---
 1 file changed, 90 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
index 9dc35ab973f2..db0260d874c5 100644
--- a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
+++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
@@ -17,7 +17,8 @@ properties:
     items:
       - enum:
           - thead,th1520-dc8200
-      - const: verisilicon,dc # DC IPs have discoverable ID/revision registers
+          - nuvoton,ma35d1-dcu
+      - const: verisilicon,dc  # DC IPs have discoverable ID/revision registers
 
   reg:
     maxItems: 1
@@ -26,6 +27,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 2
     items:
       - description: DC Core clock
       - description: DMA AXI bus clock
@@ -34,24 +36,19 @@ properties:
       - description: Pixel clock of output 1
 
   clock-names:
-    items:
-      - const: core
-      - const: axi
-      - const: ahb
-      - const: pix0
-      - const: pix1
+    minItems: 2
+    maxItems: 5
 
   resets:
+    minItems: 1
     items:
       - description: DC Core reset
       - description: DMA AXI bus reset
       - description: Configuration AHB bus reset
 
   reset-names:
-    items:
-      - const: core
-      - const: axi
-      - const: ahb
+    minItems: 1
+    maxItems: 3
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -59,7 +56,7 @@ properties:
     properties:
       port@0:
         $ref: /schemas/graph.yaml#/properties/port
-        description: The first output channel , endpoint 0 should be
+        description: The first output channel, endpoint 0 should be
           used for DPI format output and endpoint 1 should be used
           for DP format output.
 
@@ -77,7 +74,60 @@ required:
   - clock-names
   - ports
 
-additionalProperties: false
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
+          items:
+            - const: core
+            - const: axi
+            - const: ahb
+            - const: pix0
+            - const: pix1
+
+        resets:
+          minItems: 3
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: core
+            - const: axi
+            - const: ahb
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
+          maxItems: 1
+
+        reset-names:
+          items:
+            - const: core
+
+unevaluatedProperties: false
 
 examples:
   - |
@@ -120,3 +170,30 @@ examples:
         };
       };
     };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+
+    display@40260000 {
+        compatible = "nuvoton,ma35d1-dcu", "verisilicon,dc";
+        reg = <0x40260000 0x20000>;
+        interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk DCU_GATE>, <&clk DCUP_DIV>;
+        clock-names = "core", "pix0";
+        resets = <&sys MA35D1_RESET_DISP>;
+        reset-names = "core";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                dpi_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
-- 
2.43.0


