Return-Path: <devicetree+bounces-233374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0CCC2193C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C7FE4EAB24
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A7636CA6F;
	Thu, 30 Oct 2025 17:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="idMs0XJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EFF36CA7B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761846934; cv=none; b=fhqhnBKRSnNzxoLSwrzRH79sDY1hS3oMwnUKe9i04oO0/pJjPrkdoLRzjplsi42SI+AVbTv9BHOd5ORnX9oK3IrY+ohT33e/VF+s3cWI2kHDWABOMiWPF4gJdL/rpzhLx5JX44aK0/1wRKWVCIK1dlIvrvtCtY/4VDLC/g9OCws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761846934; c=relaxed/simple;
	bh=3z2mhzRxyfQNv1R0hi7ZTnOWImB9S2k6FugjQXRhwUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jc9oUiElHKkNQH7sy6ZFmRIqc127UtSvW6w4U5rjA3/9/rlwgYYbOOUwpRHgr4ZE2nwgvqw7xs4OpC/nUeeXFeEiqnavygrDM3vi/FOVesH42W5MKqWI2EXBxte6PdOECxtPWuh5tpw/doBJhBHqUiQP8PguUe4vMTDxBakNjLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=idMs0XJD; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso1262535f8f.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761846930; x=1762451730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8YnOhLYa4+B1Ekt7MbimeIIDg/J8LnZDYbx9DRe05Y=;
        b=idMs0XJDfBxf72c0ArwvwbhuGo/avWtFawSg+50NosGdBTO8xLjkEHaJE/i51+7aax
         vTesM0W3QilOZ+LO0VRhRDQKph8PwNMh8rEFZEjW+vLDL6yKo/U3F+zP8KncZeYF4/fI
         NmnWXYkGyNWWoWNtYhZCLgoKkmk9GIkm12Q/MLOe4ZXK8GOTeRe6hu9EuvdV2zEkiNHx
         M2maA/B+OLPfLunPKmo3uHYrbcNTjD0Qq/qa/+4jg9rrCtwfnPdMyR2JTDW0ftHk3AZR
         5kjwO5lgqksEJQojB6n+sOvnf2LQYdeBv853LshrkBMq+dOfydcvAkXVdN0INBvUSJm5
         CWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761846930; x=1762451730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8YnOhLYa4+B1Ekt7MbimeIIDg/J8LnZDYbx9DRe05Y=;
        b=IGVtC7/ceO07B/8DOwne4vMLYhCeuvFMdQO/LTRO8KeRfZf7dLyFbo2g/vEMxhprmS
         0wu353vJHJsQ3EjLT1G3ZXfBM2O80mM+x2THFU6NyIm2SUdX4D4yEbTG++EgvMWgAQTb
         tGxrGDUH87mwh5qfA2fHk12nKBRR3HEJzsRzabzYglN5k5LyVOCj8F46hhGuj3j7W4TD
         +9b7zGS5XU7D1Gfw1AOEyx4ZXpEh5IRkoNfNjVI3EB/98bWVCQA+ZPZcFSn4mikk2RDm
         eWvO3nAAy01qS71KccXruLawhovLHFOE+XdCfJoK2ElvsaHXLV/DgS7nODeR82vrhXvy
         UScA==
X-Forwarded-Encrypted: i=1; AJvYcCVBe239cqnxLyDXwCm7kzYeEa2A/flE9RdVMkgaYuNy06n2PRnYRiyEvJN7NR55uy3HW31bo071Fo6A@vger.kernel.org
X-Gm-Message-State: AOJu0YyWLltX0iD78b5CcshA0YRNt1GERsDybw4cnPrfmctngwply8I7
	9U/NwVgqTuSMpzxdW9TvdZueKpl8cwZ2eiEIsLUn+W9MDt60vWvhwV+1
X-Gm-Gg: ASbGncszcG9u62dJvgLvNMK0ydysFDUskMgiENQ1PLiny3LhTAklq0O+T2Tfk1y36Ua
	7upUW6+tPFcBNbJ+btGkJEyt7jdRQUG7n+qeM8NxkOP7xRHBb3xUgmJTklZZ87CkTN/m5vU+5kv
	5i1Fj9S0azb4QLQslPKqg3jB5N52l4h3SlLZKmb95bU85zCcXoaIpqIa5WHREePpuAjFxghwTSu
	fGzWOHMhKusVrsEpm7ibTeVOh7EftAbpppXjq35DGKDqIGdWQAueIy/em1KtDujYCh2+o3UoAbG
	XtHLl+LDdUJ01A9rGFJitCVgXYVRBql9V/dbZ+Bspi9x+KPtKaMDoZqBWNGm/as4Jl4Jp/IAVM0
	U2s9vX7rnMUwfnU56ltYhvAUmZ5kXHg2uf8vaVPumJsw+mEg0ZRnPri/oNyozJT78/JM5li/w9S
	hbizHtB1lrCSZRlsZ0AgivEf3rn8U46EYuMbRIdyz7HZjBpWUp67erQZYkHoRF
X-Google-Smtp-Source: AGHT+IFwc9rIFO7apqC3XmXhkXUpx2h1S3c6wGBMHk4QlRiJ5KyIleWF8cbqLDTxKoIV//tw2zW3AQ==
X-Received: by 2002:a5d:5846:0:b0:3fb:9950:b9eb with SMTP id ffacd0b85a97d-429bd683f6cmr459520f8f.28.1761846929243;
        Thu, 30 Oct 2025 10:55:29 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952de5f9sm33384041f8f.38.2025.10.30.10.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 10:55:29 -0700 (PDT)
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
Subject: [PATCH v2 01/13] dt-bindings: serial: renesas,rsci: Document RZ/G3E support
Date: Thu, 30 Oct 2025 17:55:05 +0000
Message-ID: <20251030175526.607006-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030175526.607006-1-biju.das.jz@bp.renesas.com>
References: <20251030175526.607006-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add documentation for the serial communication interface (RSCI) found on
the Renesas RZ/G3E (R9A09G047) SoC. The RSCI IP on this SoC is identical
to that on the RZ/T2H (R9A09G077) SoC, but it has a 32-stage FIFO compared
to 16 on RZ/T2H. It supports both FIFO and non-FIFO mode operation. RZ/G3E
has 6 clocks(5 module clocks + 1 external clock) compared to 3 clocks
(2 module clocks + 1 external clock) on RZ/T2H, and it has multiple resets.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Updated commit message
 * Added resets:false for non RZ/G3E SoCs.
---
 .../bindings/serial/renesas,rsci.yaml         | 85 ++++++++++++++++---
 1 file changed, 74 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
index 6b1f827a335b..1c2ed4cd58fd 100644
--- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
@@ -10,17 +10,16 @@ maintainers:
   - Geert Uytterhoeven <geert+renesas@glider.be>
   - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
 
-allOf:
-  - $ref: serial.yaml#
-
 properties:
   compatible:
     oneOf:
-      - items:
-          - const: renesas,r9a09g087-rsci # RZ/N2H
-          - const: renesas,r9a09g077-rsci # RZ/T2H
+      - enum:
+          - renesas,r9a09g047-rsci # RZ/G3E non FIFO mode
+          - renesas,r9a09g047-rscif # RZ/G3E FIFO mode
+          - renesas,r9a09g077-rsci # RZ/T2H
 
       - items:
+          - const: renesas,r9a09g087-rsci # RZ/N2H
           - const: renesas,r9a09g077-rsci # RZ/T2H
 
   reg:
@@ -42,14 +41,40 @@ properties:
 
   clocks:
     minItems: 2
-    maxItems: 3
+    maxItems: 6
 
   clock-names:
-    minItems: 2
+    oneOf:
+      - items:
+          - const: operation
+          - const: bus
+      - items:
+          - const: operation
+          - const: bus
+          - const: sck # optional external clock input
+      - items:
+          - const: bus
+          - const: tclk
+          - const: tclk_div64
+          - const: tclk_div16
+          - const: tclk_div4
+      - items:
+          - const: bus
+          - const: tclk
+          - const: tclk_div64
+          - const: tclk_div16
+          - const: tclk_div4
+          - const: sck # optional external clock input
+
+  resets:
+    items:
+      - description: Input for resetting the APB clock
+      - description: Input for resetting TCLK
+
+  reset-names:
     items:
-      - const: operation
-      - const: bus
-      - const: sck # optional external clock input
+      - const: presetn
+      - const: tresetn
 
   power-domains:
     maxItems: 1
@@ -62,6 +87,44 @@ required:
   - clock-names
   - power-domains
 
+allOf:
+  - $ref: serial.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g077-rsci
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+
+        clock-names:
+          maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a09g047-rsci
+              - renesas,r9a09g047-rscif
+    then:
+      properties:
+        clocks:
+          minItems: 5
+
+        clock-names:
+          minItems: 5
+
+      required:
+        - resets
+        - reset-names
+    else:
+      properties:
+        resets: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


