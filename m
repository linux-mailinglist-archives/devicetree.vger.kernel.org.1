Return-Path: <devicetree+bounces-241057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E9EC78D62
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 97E5F32576
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F8B34D3B5;
	Fri, 21 Nov 2025 11:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nbFJyN4H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B9034C80A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724973; cv=none; b=BdaTSTykklcLd+AjkUzCEPJn59d1nlFohquGTg6yXn8IijeocDUrhhlqlZrHUSOjLqxR0m9wpf6nmb7IJE4sY/kSr134DWD9rxQIAlaRUp7ifLtwK4CXto14qEkQq63Nz5pZqY2XJjopRQRpP+QOrL8PI8LzgsX6baiKlQpBuaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724973; c=relaxed/simple;
	bh=0Xgb/9mVJW7hgkTLSLU7Gx7yPxUxQ8+vHGmiAdW12gM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CJO0X8Heb/gRHEN6i1jAT8wAR9Apj3sp3iIxhQeYVDNHInSCIsffqhDn+/2aZebKqnnpxE1armA4DMO9VNeiie09LtSOO0yN2o9vLnUe2rQ1d5ECXF/XSW/ebTtMS5zwpO21DOnt1Rv/Mz9mkh0I/QILYQkUExgU5A/m5EVVLDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nbFJyN4H; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so20671135e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724968; x=1764329768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pd7t5fWnxoD0F7D4K2dQCGmFIg70xqNr7m8gGGuPbaI=;
        b=nbFJyN4Hj9g+nBvD0Y++wvFDzXFMN0Mhxkfc3GwwPx0lcAOYXneRfgyPiOS1dkJ/PK
         yQx6iTkolkXEdWthL3VPZQWzE8VTjp+zVxP2vGqJJNob3+S/Oup/4nM5LrekqUMH7fsN
         7koo6YeQHBbF6VuOZFrDikpYwUJ6rL1F9niO678xRPt2lPv0akZsdhFJ95viCAtB3/HQ
         tdpBOBtU+lhoSiiolrLSb25kMprzX9h5gTQfO5DdwrlkXVGnSZI69tYohyglJBiYMKpe
         cAukk7pAD/J8oE9FH9uS3UXDVHF9dyW4azeJ5tst6+DVM3DtIvah0CZU1k80hVDZmJMP
         DaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724968; x=1764329768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pd7t5fWnxoD0F7D4K2dQCGmFIg70xqNr7m8gGGuPbaI=;
        b=LtP5ktMsxeydc8H5b6vJjE3jozce42NMh3BWsAUW97azg8VhSFNgvbl6iR7ZACQfC1
         IEq9v/gDqDsFjHbZzsVde9E6y2w8CZmOEOSNnkJrlWV+sHHFiZ03JvzScvmVs6hjxsCz
         LoGQT1hzJBa3wPkIEcjbB4DTv16cFOaZwhkKD2vnGcX+6HMGMBNvzFNyy2mds2hKj3CL
         XLmqMlN5wSzCgWJALqWzC1yswFQc/4xQHh+vigt6GbXoKu+YGVHa2bSdp3hACSqkhUHT
         JyruiC4oFibdaT+1dOGgbiGB4ipEXH4fxEmL9yZubbYG3GDUp/UgppRmtmsO8VzyAiXS
         p5JQ==
X-Forwarded-Encrypted: i=1; AJvYcCUttHrkcVwWYMvQlE5XirIkBIdaswvF1gWEP3cIj+J/dR0c+Y1uZrTOFRQCsSxnTOYDio1O6+b2AYRg@vger.kernel.org
X-Gm-Message-State: AOJu0YzkS4xDiseiqrCCtGsDuBmh13Az5s43kGR4f1wmDWM/PLUrhA02
	k8fIceDbk7SaDf/j1/2Su8TPE1FxBSPvAnKaWkG/2wKSabZWA1Ue4inm
X-Gm-Gg: ASbGncvtMDPw5FGFuqPTACFxcocgsuANskQ5GMaqX1YJ5dzc0mSAPn2MAG1p16xeJZ1
	9c5CpWuN1yqjVpx0FMDhpQn555rLLhtpqPEZh8sTwW1KaRVOod8tPvS3Li20npoWbxxPTK78aiP
	uSssy6s631656wvbLhAxIFnuwlcNZfdNSnRMokwitOXhDKvTlcdpjvk0/kpFmt3mzgNOWKHI9ex
	sHmgThAy7G5Enxn90faZw4Mb4oG+dRaCrIpZRAGgI6W5shnrjliG0hUL5oL2aPvKYdyCnAOTQCe
	f0llqFPXwGi2+7t51rR7nWDxsDt5um428xXVHtc9PRcSuW6C/a8Jh6b1HAtXPvhDvZAQizzmPsf
	s0pEQUS2uipi6+S1qnz0NQYk4GRHSlQQVzrpk/FxDgVdvATcxe1IM03zhMP29qv90FfjNxFV+0u
	+O6dO7v2ClsdgZGm4alYXrtPjKxUZWAAL1QFw=
X-Google-Smtp-Source: AGHT+IG+78NQPeUTwdJOOwmZ3xZrTkwqNVC7lhMKcp2TAKbxx/0UaQzB+YMUlWDYO5m22REoRHO+8w==
X-Received: by 2002:a05:600c:5252:b0:477:582e:7a81 with SMTP id 5b1f17b1804b1-477c110328amr19217505e9.4.1763724968166;
        Fri, 21 Nov 2025 03:36:08 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:07 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 04/11] dt-bindings: net: dsa: renesas,rzn1-a5psw: Add RZ/T2H and RZ/N2H ETHSW support
Date: Fri, 21 Nov 2025 11:35:30 +0000
Message-ID: <20251121113553.2955854-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Extend the A5PSW DSA binding to cover the ETHSW variant used on newer
Renesas RZ/T2H and RZ/N2H SoCs. ETHSW is derived from the A5PSW switch
found on RZ/N1 but differs in register layout, clocking and interrupt
topology, and exposes four ports in total (including the CPU/management
port) instead of five.

Update the schema to describe these differences by adding dedicated
compatible strings for RZ/T2H and RZ/N2H, tightening requirements on
clocks, resets and interrupts, and documenting the expanded 24-interrupt
set used by ETHSW for timestamping and timer functions. Conditional
validation ensures that RZ/T2H/RZ/N2H instances provide the correct
resources while keeping the original A5PSW constraints intact.

Use the RZ/T2H compatible string as the fallback for RZ/N2H, reflecting
that both SoCs integrate the same ETHSW IP.

Add myself as a co-maintainer of the binding to support ongoing work on
the ETHSW family across RZ/T2H and RZ/N2H devices.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/net/dsa/renesas,rzn1-a5psw.yaml  | 154 +++++++++++++++---
 1 file changed, 130 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml b/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
index ea285ef3e64f..ec15ea4deeb0 100644
--- a/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
@@ -4,43 +4,108 @@
 $id: http://devicetree.org/schemas/net/dsa/renesas,rzn1-a5psw.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas RZ/N1 Advanced 5 ports ethernet switch
+title: Renesas RZ/N1 A5PSW and RZ/T2H, RZ/N2H ETHSW Ethernet Switch
 
 maintainers:
   - Clément Léger <clement.leger@bootlin.com>
+  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
 
-description: |
-  The advanced 5 ports switch is present on the Renesas RZ/N1 SoC family and
-  handles 4 ports + 1 CPU management port.
+description: >
+  This binding describes the Ethernet switch IPs used on Renesas SoCs:
 
-allOf:
-  - $ref: dsa.yaml#/$defs/ethernet-ports
+  - The A5PSW (Advanced 5-Port Switch) found on the RZ/N1 family, which
+    provides 4 external ports and 1 CPU/management port.
+  - The ETHSW (Ethernet Switch) found on the RZ/T2H and RZ/N2H families,
+    which is derived from the A5PSW IP with some register layout
+    differences, additional timestamping support, and a total of 4 ports
+    including the CPU/management port.
 
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a06g032-a5psw
-      - const: renesas,rzn1-a5psw
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a06g032-a5psw
+          - const: renesas,rzn1-a5psw
+
+      - const: renesas,r9a09g077-ethsw
+
+      - items:
+          - const: renesas,r9a09g087-ethsw
+          - const: renesas,r9a09g077-ethsw
 
   reg:
     maxItems: 1
 
   interrupts:
-    items:
-      - description: Device Level Ring (DLR) interrupt
-      - description: Switch interrupt
-      - description: Parallel Redundancy Protocol (PRP) interrupt
-      - description: Integrated HUB module interrupt
-      - description: Receive Pattern Match interrupt
+    oneOf:
+      - items:
+          - description: Device Level Ring (DLR) interrupt
+          - description: Switch interrupt
+          - description: Parallel Redundancy Protocol (PRP) interrupt
+          - description: Integrated HUB module interrupt
+          - description: Receive Pattern Match interrupt
+
+      - items:
+          - description: Switch interrupt
+          - description: Device Level Ring (DLR) interrupt
+          - description: Parallel Redundancy Protocol (PRP) interrupt
+          - description: Integrated HUB module interrupt
+          - description: Receive Pattern Match interrupt 0
+          - description: Receive Pattern Match interrupt 1
+          - description: Receive Pattern Match interrupt 2
+          - description: Receive Pattern Match interrupt 3
+          - description: Receive Pattern Match interrupt 4
+          - description: Receive Pattern Match interrupt 5
+          - description: Receive Pattern Match interrupt 6
+          - description: Receive Pattern Match interrupt 7
+          - description: Receive Pattern Match interrupt 8
+          - description: Receive Pattern Match interrupt 9
+          - description: Receive Pattern Match interrupt 10
+          - description: Receive Pattern Match interrupt 11
+          - description: Switch timer pulse output interrupt 0
+          - description: Switch timer pulse output interrupt 1
+          - description: Switch timer pulse output interrupt 2
+          - description: Switch timer pulse output interrupt 3
+          - description: Switch TDMA timer output interrupt 0
+          - description: Switch TDMA timer output interrupt 1
+          - description: Switch TDMA timer output interrupt 2
+          - description: Switch TDMA timer output interrupt 3
 
   interrupt-names:
-    items:
-      - const: dlr
-      - const: switch
-      - const: prp
-      - const: hub
-      - const: ptrn
+    oneOf:
+      - items:
+          - const: dlr
+          - const: switch
+          - const: prp
+          - const: hub
+          - const: ptrn
+
+      - items:
+          - const: switch
+          - const: dlr
+          - const: prp
+          - const: hub
+          - const: ptrn0
+          - const: ptrn1
+          - const: ptrn2
+          - const: ptrn3
+          - const: ptrn4
+          - const: ptrn5
+          - const: ptrn6
+          - const: ptrn7
+          - const: ptrn8
+          - const: ptrn9
+          - const: ptrn10
+          - const: ptrn11
+          - const: tp0
+          - const: tp1
+          - const: tp2
+          - const: tp3
+          - const: tdma0
+          - const: tdma1
+          - const: tdma2
+          - const: tdma3
 
   power-domains:
     maxItems: 1
@@ -50,14 +115,21 @@ properties:
     unevaluatedProperties: false
 
   clocks:
+    minItems: 2
     items:
       - description: AHB clock used for the switch register interface
       - description: Switch system clock
+      - description: Timestamp clock
 
   clock-names:
+    minItems: 2
     items:
       - const: hclk
       - const: clk
+      - const: ts
+
+  resets:
+    maxItems: 1
 
   ethernet-ports:
     type: object
@@ -73,14 +145,48 @@ properties:
               phandle pointing to a PCS sub-node compatible with
               renesas,rzn1-miic.yaml#
 
-unevaluatedProperties: false
-
 required:
   - compatible
   - reg
   - clocks
   - clock-names
   - power-domains
+  - interrupts
+  - interrupt-names
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g077-ethsw
+    then:
+      properties:
+        interrupts:
+          minItems: 24
+        interrupt-names:
+          minItems: 24
+        clocks:
+          minItems: 3
+        clock-names:
+          minItems: 3
+      required:
+        - resets
+    else:
+      properties:
+        interrupts:
+          maxItems: 5
+        interrupt-names:
+          maxItems: 5
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+        resets: false
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.52.0


