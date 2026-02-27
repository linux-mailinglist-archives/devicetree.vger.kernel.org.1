Return-Path: <devicetree+bounces-269303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDHxE/62oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC91B9B34
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB1BE3157B2F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC9D43CEEE;
	Fri, 27 Feb 2026 15:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fl+wSgRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF80C43900E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205297; cv=none; b=KC7hKSj3Ucrdh1jusPk2S430aErh/RkqJ+9a8+K06ySMP9H2AYYG2vpcFtsL9R5Qk7KPuoI2myjbJK8A51SyHBaD55q5Q3t2qnxbtJyjvY4+I8yzznXxpw7ivqSpzkBDW7oPAuKEfC2oUCce9abCdYQQtD0lu7AN52E/ij218uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205297; c=relaxed/simple;
	bh=Tnr5MVM54yT5olpBGIRL9iYHBO46LGWJbdN2YfWRz0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G8b1utGnRSANErx8yI/88n47qB06ruCwofJrarnlnsCN8jZJoCqaIMedSDZ+4jhUqke2O9SrKBHf3alwwStBRKvLauTjXR5LFKfS/jC1Cj5a/6iYeQn/eypp57gMsA4IgsDkLmnFOfxRVKCEzoBNcYXnseic07+LbEsZ5w1qUjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fl+wSgRl; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3562212b427so959561a91.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205296; x=1772810096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4E6HXkvhuNIpYntCK6bZF0992wJwuTJEJOmXq3XUUw=;
        b=fl+wSgRlI0fvKz/CbOFyIR7tcLronpU3C8hiUCvddIpJkTWKqGVw9VOA8WBFMONZyO
         IqFUWiE3ZWhtsK74WZU2DAwcG2aes93jrMfVZsLvHEt3dg5q6SmOUJLhoLnekECrG1Pn
         JGjCyRHAJFbXcCMvO9DWi18yUGjDOX/iY+TmN6hrytSN0JVaZuGCsuYACPqItQFe8FVo
         h03CVUFALpsYS1FuIjBVt/2x6WIDjmKs8oNWtplX2hI66JBTG/IQagbUwbutJoCj+7xT
         6DKXw5dsp9k3YLcj02YCSrxagHK3upjuIdafARacrw61QXYVjBd5MIla/K5q7Uh7Z2h/
         XJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205296; x=1772810096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f4E6HXkvhuNIpYntCK6bZF0992wJwuTJEJOmXq3XUUw=;
        b=ArO62fx8/oLOktJKKTKSVj1JqzNUh6qpt8RU/jJNb90ZZupRTA89SFRLNLr9FaFVKl
         Vb2i3AYQpYR0nlbupEk8w0jahVoNZoH33WsqLVO1CFVI1LfTM9vyxP4+Aj6Yf+cpFzPS
         0umVhPbzwGb6JQjIXWO62akkKxFyBc/fI49ehpaIYEh9m8GQJXlqEvh4Zfc8NfJ6L2cU
         tHCxEOHs52nkG2ZvuUOpbWOhaAPv5GSNf6kIl2fCnok++jsVftCl28TkkAp0TTQ6aGaA
         no+L+G5ASqF4WUY0McYRTcYJRrszLYi5K9lY4bQKA+ukHyVNs0bsAiV8HABK0Ax9jifj
         3TeQ==
X-Gm-Message-State: AOJu0YxdRdhgyDIYJbwGCeDzCuGULUrs9OrcKn3TCqQXR0FYpCpe7ISz
	2zgsjWVExdtYzEEFM9A12rlwtb7T0jQQZXnGjrSInHW5Nom7P/UkQDYh
X-Gm-Gg: ATEYQzzTjlXxMggNCDJGIMH+mf0+W19OXVbHQVlKz3WCvaBrOMEpmEfSdofGDcMzTha
	A5bXVlPwOAFc5I924bwH6HZ9+/SEYnyG/oCrHKtKaTP2caq1Wm1pfEGe2It8v7M5dztC9n6Orz3
	1AD7y7WS5BcuEvOufkYieHDAT1th8tT/Ze0v1AFOse9D+sTxYMsKEJRJdy8HASJ8U+gMa3YHoX4
	IR4qUZvp5HDjev5b1XgF6AHw7MWTXcZcpF+ZrquHO4hwflVOVOc5gVL3dUhnMP3PmYPvqhsjbpo
	JlOwCMwA57bs84waPt7Gw7vTqQIbUGYUJVIduCWhjM72o108HNtYXY3bHmwWSJ+d/d1huPhAxGU
	+R8gb96Q26t2KZ2lBB688e/KsJ7SewDss4Hpw0J028ccoUnHZgxMQSgOg2vy8HTZstpabsVmuL9
	7teibTJLC4NLRDRy1C4JzRIBrhE6HhQFBPnMhsQrnh5YAf5Gj5jgwbYnFxqys=
X-Received: by 2002:a17:90a:da85:b0:32e:3829:a71c with SMTP id 98e67ed59e1d1-35965c93b31mr3629448a91.16.1772205295979;
        Fri, 27 Feb 2026 07:14:55 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:14:55 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 27 Feb 2026 15:14:33 +0000
Subject: [PATCH v4 3/5] dt-bindings: arm: microchip,sam9x60-pit64b :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-arm-microchip-v4-3-7e2ae1c5b5d6@gmail.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269303-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:email,devicetree.org:url,microchip.com:email,f0028000:email]
X-Rspamd-Queue-Id: D4AC91B9B34
X-Rspamd-Action: no action

Convert Atmel Periodic interval timer of 64bit (PIT64b) binding to YAML
format.
Changes during conversion:
- Add missing compatible "microchip,sama7g5-pit64b" along with a fallback
compatible "microchip,sam9x60-pit64b".

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  8 ---
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++++++++
 2 files changed, 68 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 70059f66f2b4..d0561f7f465c 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,13 +1,5 @@
 Atmel system registers
 
-PIT64B Timer required properties:
-- compatible: Should be "microchip,sam9x60-pit64b" or
-			"microchip,sam9x7-pit64b", "microchip,sam9x60-pit64b"
-			"microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b"
-- reg: Should contain registers location and length
-- interrupts: Should contain interrupt for PIT64B timer
-- clocks: Should contain the available clock sources for PIT64B timer.
-
 System Timer (ST) required properties:
 - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
 - reg: Should contain registers location and length
diff --git a/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
new file mode 100644
index 000000000000..f00ac7e858d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sam9x60-pit64b.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sam9x60-pit64b.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PIT64B 64-bit Periodic Interval Timer
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  The Microchip PIT64B is a 64-bit periodic interval timer used in
+  several modern Microchip ARM SoCs including SAM9X60, SAM9X7 and
+  SAMA7D65 families. It provides extended timing range, flexible
+  clock selection and supports both periodic and one-shot interrupt
+  generation modes.
+
+properties:
+  compatible:
+    oneOf:
+      - const: microchip,sam9x60-pit64b
+      - items:
+          - enum:
+              - microchip,sama7d65-pit64b
+              - microchip,sama7g5-pit64b
+              - microchip,sam9x7-pit64b
+          - const: microchip,sam9x60-pit64b
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - pclk
+        - gclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    timer@f0028000 {
+        compatible = "microchip,sama7g5-pit64b", "microchip,sam9x60-pit64b";
+        reg = <0xf0028000 0x100>;
+        interrupts = <37 IRQ_TYPE_LEVEL_HIGH 7>;
+        clocks = <&pmc PMC_TYPE_PERIPHERAL 37>, <&pmc PMC_TYPE_GCK 37>;
+        clock-names = "pclk", "gclk";
+    };
+...

-- 
2.43.0


