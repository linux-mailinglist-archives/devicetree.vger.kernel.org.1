Return-Path: <devicetree+bounces-272389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDlWJhHtq2lziAEAu9opvQ
	(envelope-from <devicetree+bounces-272389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:17:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A294E22ADA3
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 10:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E979301B876
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 09:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4525638B7A2;
	Sat,  7 Mar 2026 09:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bphnJWki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A866338B7A3
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 09:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772874998; cv=none; b=XXph8qKyp3n6x+gum4uGvCAoJ0QM65zif0e0bfU0DlxTRr7bImLWwfI5ZjmsXcdd+wK0V1RYfLU8hbrEb0y7sK36J/SuyNPno55Rk3eiXE5ZpaUZFCmIjylUIMeHeqVfq+dUxX4P/ZI8IJP4yPATHHP5A8xVSqx7ZaA0nJqAHBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772874998; c=relaxed/simple;
	bh=dloQM5j6GGXl6pXKT9QuqBOKOBUfSZKFqBxV9h0h6lc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=taLHK84sM9rKIzlJwwZywLpUT1nIfic8dHIDXKDUm0S4Gqa3FkhEKi7k54LNXPXxnK8tWg3Hiu2Kg+5XXUDwvu59ny2C9U73nOMaYW5eKy4RBBS3ClN8Y2ljkKhG6dQjPkAt7VleWw1qDCZcx9SnIZUUTWB+peITd/JSAN9lHFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bphnJWki; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a9296b3926so76082335ad.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 01:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772874995; x=1773479795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bW3VZiLdDmix0hxhYvm5DhZwcyWfk2K5eWWffGvWYiM=;
        b=bphnJWkij258Koozowl+Gl5dieGHmXci+R44bFLd6RvAX/kmlpIMVCsv9V1pxpBAXB
         suUt0TOjb3LXLMRXNMMMPrMyqAuhO2a249SRCmaf3r/frFOqCdbARKCYfH0ezIAuCO85
         FJrnKlN5ePGHJu2gyKncnYwRpc/6TBFXRN1paZb1mLq5+3WKieAqJjyewSabecLnyXek
         3UMaRxdO9b7aaNLlrUZWuai45qsPwpp3FwaovJpdXE7CNZBSL1PnarA8PEXgzc+IBFCy
         ElRFyt5c7ZrnroLZo8zYP8ItOviZ9LhVHVQFgmermdZl+TPAmJme5g6g49glH0A7RHpx
         kmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772874995; x=1773479795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bW3VZiLdDmix0hxhYvm5DhZwcyWfk2K5eWWffGvWYiM=;
        b=VKpeE/hcS/s47cbcwC6nHzOglyg/LbzmdohfF8kEi853Vz3M3UwvmTPLqp4Hn/LUWk
         MNxmMhlwjMcH6XNEk8AK/7qw6dtEIT+jVSxTzSWP50Ts2PY+x2AMFb54W9QqpRC206p4
         XqiWFH5XaPcxK3RMehNXN9+V/s+eLt/HB5h5V3Z5ytgWAbcWRO/HFWZVJt5AiVXdf77/
         wgYGflL11ys4qohXzrs8fRIIZKhGx5LVYUTe9uWFpOSkYbGmlLExEeX1g38Y2Y9wrvhi
         0jSbdZUrvX2FoqzLX7WSJQp5FXdCE75Tj05KixGMCUMwTSx8Y+bfgAS0s4+BXXAitoY/
         z3KA==
X-Forwarded-Encrypted: i=1; AJvYcCXNrx2i7mboGzqkUlodk1dyoSBjUwoVej0rB9qpP35Nu6UE4Dto0G7+SU5axuOV3TD5quh70S//6ztO@vger.kernel.org
X-Gm-Message-State: AOJu0YyxqmsJTxtxk2T6Q1n/R4bsTLM/ofMLYJ4zgQ5KX8HQv8ss1Z6p
	S34uU61vKHHLypeWep4vSLf1QLc6jCZficVcFiMOjFII5mueGcWOwdxG1uFmpw==
X-Gm-Gg: ATEYQzy4ckJFMBS12Es1SBqTg0Erd/7fvQpAddV1GDocCLiUmJLRlxcethg2dwmo4RT
	M1TZBWsl0djouhi0rPgmWvfE395d/eC9YbjhWEgQV/i7tiwDFp0XNW20vPeDQgx6ZVqTncTP+5r
	fnmxdndWzbD4Yp29iBx6Nx9Pp6OTKzSvS6J/woRpV9QFYn/HngRgQQR0+e+j1oNvSb+ts/vbgHK
	ikmsVtbgrLJQ1xHYIb9jfp7DJK3pEfH/rqQVjsyEwy1F8+OLxLQuQl1u8aFO8QhaXHuHrae5qZJ
	nxt7zk5Y27pxFA19b04mqiOGqOs9Quo6cHufO3JEHsBI715Ke7RDheYdHsoFQULU1aAtifzxafY
	wUGIYdOnTPWOMhVNo0bb72Fg2BMJf1THKZqbYd+LU1q94H6iBdgN0PMbR4H8t3krzfkbHeCJLOE
	svbK0rDeqX34B+W3G7BOv0VGVn+1PjLt2OnfR4QjIWdmV8r+Q7wt6Zrg==
X-Received: by 2002:a17:903:120f:b0:2ae:670e:309f with SMTP id d9443c01a7336-2ae824f4d5fmr50056685ad.34.1772874994942;
        Sat, 07 Mar 2026 01:16:34 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.215.222])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ae83f74e4fsm45569385ad.58.2026.03.07.01.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 01:16:34 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 07 Mar 2026 09:16:19 +0000
Subject: [PATCH v3 2/5] dt-bindings: usb: generic-ohci: add AT91RM9200 OHCI
 binding support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260307-atmel-usb-v3-2-3dc48fe772be@gmail.com>
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
In-Reply-To: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: A294E22ADA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272389-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add binding support for the Atmel AT91RM9200 OHCI USB host controller
to the generic OHCI schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/usb/generic-ohci.yaml      | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 961cbf85eeb5..a8a94b9c1fee 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -55,6 +55,7 @@ properties:
           - ti,ohci-omap3
       - items:
           - enum:
+              - atmel,at91rm9200-ohci
               - cavium,octeon-6335-ohci
               - nintendo,hollywood-usb-ohci
               - nxp,ohci-nxp
@@ -137,6 +138,16 @@ properties:
       The associated ISP1301 device. Necessary for the UDC controller for
       connecting to the USB physical layer.
 
+  atmel,vbus-gpio:
+    description: GPIO used to control or sense the USB VBUS power.
+    minItems: 1
+    maxItems: 3
+
+  atmel,oc-gpio:
+    description: GPIO used to signal USB overcurrent condition.
+    minItems: 1
+    maxItems: 3
+
 required:
   - compatible
   - reg
@@ -144,6 +155,28 @@ required:
 
 allOf:
   - $ref: usb-hcd.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: atmel,at91rm9200-ohci
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: ohci_clk
+            - const: hclk
+            - const: uhpck
+
+      required:
+        - clocks
+        - clock-names
+
+    else:
+      properties:
+        atmel,vbus-gpio: false
+        atmel,oc-gpio: false
+
   - if:
       not:
         properties:

-- 
2.53.0


