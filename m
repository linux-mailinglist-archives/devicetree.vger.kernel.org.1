Return-Path: <devicetree+bounces-233378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0A9C21A1D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:02:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0C48E4EFF82
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E321D374AD8;
	Thu, 30 Oct 2025 17:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CIinMekw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82893374AC1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847098; cv=none; b=FIOL3tehb1P6o0LXkL6EweQezCqyhQPSUHWuxuHZfB6cM1Izd0s0fZ+uSxslHhTz6fanLS/53Hhgs800lzw6UJioc2QTMQJpegPbbbThWxW3iqnovjJThqDbuCuP8G8SVtAZ4Ar6cubmYvMH7O+MZj84IqYRtoAqyB4rU0gwq2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847098; c=relaxed/simple;
	bh=3z2mhzRxyfQNv1R0hi7ZTnOWImB9S2k6FugjQXRhwUY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ia1fB4gFdMzMNJlJFwWuvwFfgG1RsfZJZhet8/qOSOcpL/Hoq6Y/x3CnHKvGCOvoPfMEY59pPbRKSGLfksRVsaU2rJnEjWBifkzKlA9lswGt1seDrZylSoW9BdjO1oqIbZmhJf9zU4hIneuh8S9whFNoWnW2d5udLjzjoiutAaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CIinMekw; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47109187c32so7748035e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761847095; x=1762451895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8YnOhLYa4+B1Ekt7MbimeIIDg/J8LnZDYbx9DRe05Y=;
        b=CIinMekwGQ3fN31rSkF4qOfK52HPYRwt8CU5EA//fipNZ25F0qTS/ogihBvQHpi2Xg
         ogC6qWoYf8qJQPG4bWrJpF3LQ4l9V8gy02CKSP+uKPefN3Q/kj574XDlk9mAXMT09Cf1
         VhTDXeDMjZfbkiBoLvZmxua+UsxJzasre4Sm0CFTF8Sgjg+269lpIMT5kaqhLco9PcaF
         I6I+7ds6M5xQ+3JsIF4znCkEdYaBlRw/gAGFxWTu7GEgMp1fIURhSTqewERiKDtozjuN
         VpsYmasRGwzAlZYeUxEdVqGiuZtf2JNmZn4oeW4M+J7E4O6nogZKbTdf+8CxFxlRlsHq
         EsVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847095; x=1762451895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8YnOhLYa4+B1Ekt7MbimeIIDg/J8LnZDYbx9DRe05Y=;
        b=Z9lOrYncW/GmtHht5AAtrXcs6TT9H6/lm1CQoa7rF7VW8h7V/Di5L0cCJZHRMbnQmh
         nM9m6nVo49fEB5FmlskMfPvGGAdMgVVSJhRYzZTlMiYNCLKgtmRyep9fqHV4dptYvh9W
         1scF/ZpNYGi4ZJSAelUy+HCva6OARKHsgaIJMgFCijZ+r23uBRv7FlS/d98YzF3FF8kB
         m4nWFfdBbkGJZF7fXq0Z6Y365GBcwJcpEEU0mhPPbopmW5mumZByD/6bK2dVMYrQld22
         DIL8jn7neSAKnglzHK60LgX03H861PPQHKblGHfuAPgErpw1VOfCC2wdy901Jpo74mEQ
         5orA==
X-Forwarded-Encrypted: i=1; AJvYcCWiWamOBn7FAjXqzEUyMLKYor/UWWHxm7GTjsT42MbZ1fI6oYqxgAH8lJnUJ4uleN29ikhuTHDfkuso@vger.kernel.org
X-Gm-Message-State: AOJu0YzVtUCwWA3Dv51/m7G6nP9T4CqPu3etDvnjl+8rn0kBrm9AOOxu
	pEGdb+gRZfNP08ykaTguubEDkc2vmuV6u+LSQ50RzS7xB6ZAITMFk+kT
X-Gm-Gg: ASbGncuWNb1Bixd8G+g2fh926Hx2Hd5mbLx8BAYitDF7XCGeRJEB080+vzg1q+7nJWt
	Q39jobiBYE8lAuFLXq0dg0p5kojIdzryCqo56+q1XncA+F4RWaIjgWebgDNmTA2REkyiYqRX5Js
	VFGLg6ptU9raVzs7RSRnQKkf/G/iBE9b9Kmm9NwMVaBW2GViSDiVO4nwNcjDOK297bc4yIJDk7Q
	igOnNZ0fdUabAaYZt/+V1a7MyRh0HY1LBE4SA38ka+8YVNUvhEDIResFjRyaHe2puxRGRr1/zpE
	EkDOkJN1bWil8RYnTwkj2NIGpuJsf4oc2Mp8pHmYgwqN3+299+5ieO+KW5Iouxplcp1lagQIySd
	cv4gPVnckfRUacDxEx8zJ7lk0MC6i3h8VvK4NuRXaj7N67t9HBWkmMUtBgdK7r4jr5uEn00q4LF
	gwVZatVzfFcKR4GnuuMFAoJa0lUVCgHx/epJNZJaGaWSx7Mm1czmDF1puAtpjZ6V5g89HA+1s=
X-Google-Smtp-Source: AGHT+IE1FuZnnp5NmXH6wKHeFVq3jsmIh/MUmdAqP8BqCay4i4c5dgPUHmDX609AIkhZuUJDO3bVbw==
X-Received: by 2002:a05:600c:820b:b0:471:c72:c807 with SMTP id 5b1f17b1804b1-4773087af79mr5773565e9.22.1761847094521;
        Thu, 30 Oct 2025 10:58:14 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772f53aad6sm15098055e9.13.2025.10.30.10.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 10:58:14 -0700 (PDT)
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
Date: Thu, 30 Oct 2025 17:57:49 +0000
Message-ID: <20251030175811.607137-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030175811.607137-1-biju.das.jz@bp.renesas.com>
References: <20251030175811.607137-1-biju.das.jz@bp.renesas.com>
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


