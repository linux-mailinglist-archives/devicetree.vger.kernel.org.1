Return-Path: <devicetree+bounces-264648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCLZN2U6jGlZjgAAu9opvQ
	(envelope-from <devicetree+bounces-264648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:14:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2131221E5
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:14:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A53903006D58
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1BB350A00;
	Wed, 11 Feb 2026 08:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mZfgsnnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FC934FF71
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770797657; cv=none; b=MCPMV82KlJ6NU8uSMNqDGw9zKATwdINKRrOEZQzrWhD6tQLD1uy9vIYuwNHL7Hq8IOr5kKGsbkWWx/brVXg6F/CYGvWz2BjbIQm6oMwcB7XqtEwvDQIPn4iqGWxJ98SAcGAV821+bxRDBK0+NF8V5qFEy1d6BooDAEmVmKuoNd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770797657; c=relaxed/simple;
	bh=kgeB/mXRVhBY032aHGr7l0zao2inBR+pzoMDX7O4N14=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nePbRa2VUOs+CsU3fkOV0Jt/mnw46Nm0/G6grRuw9MBh8+uV+YcR8LMJ6IJdgG9C2NOnxfpJ7GWLucRA4NJWZuVnpll2ALL+sRNcqlTeey8fCcZ6m+pdQEsz//fwu4n6xaoQoBNSlQZEKnDglniSZsvDTB9oxMoiUBiKfRK9Miw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mZfgsnnl; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-45f10d7eb81so1751885b6e.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770797653; x=1771402453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X6JrbLie5g+deNg6l8anM21cq00T82ekWyP4ks5bzZ4=;
        b=mZfgsnnlwor6z0gFf/e6XhrEbzEYMLRct/kYl2t/jvN/zksDKzg5e1nhV4wWK5Q4DX
         8yUID76FOlEHxJ90OJstUfXQJ6fqx1ipXgEXBbQoLuAIP2ivLlHTr1++LRxRXeteD2yz
         f652/DErBNDn652NRNNwJhI7CjRw8rYVATVYTVXIIaOYAkMDVlJK5FDW7WRkIm1t+kKT
         uSw8pLiQZ0cGusju5zVYLJMns7omKrlCSA+W3xa42kpM3aihH6xKS1oIjy8FigOOCxML
         aRBDKy3trziDV6sDAjmJep32NIUUTAQkyPGnT3S2EGOn2ANNl5qW+ATLCFHmVNb0Hlot
         YtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770797653; x=1771402453;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6JrbLie5g+deNg6l8anM21cq00T82ekWyP4ks5bzZ4=;
        b=X82hfgSgNiflPOv7jv0WZwa+kRWbz55A77gR3gb7Hid4mswHt3fysLRa+wT3mH10QB
         dR6WxuEbQhWrHjEGM9IO0fDleFVBI533pH7bYaDmrlkukdDWC9LH3RPIbTDke/dnrWOi
         X1kX10VWqSIR/pgLxYdORuC2M1W2FOXZC4V1LpuZ31Z7QJ10GVu4ll5njr1mk4HjNgFq
         E6ymapKgYtcz1sp4pC49m5AOoIeQEtetlPE2TRcvIBZIyqnAl7phsGGfrTt4fEM4+p9F
         PEkzzlBG5nQ8W0xOGlR0UxElWib+Rsit36e5APQJAycuNtonn4V84e6xEwjaG99jwICE
         6mxg==
X-Forwarded-Encrypted: i=1; AJvYcCXa7Zk8/2X4kduKM1sbwK4T/L7x434aBhlQto2qsd2Q4K8Oc9jtVw1uC2MJHyJ3VdGKB04D1RFnWQ2b@vger.kernel.org
X-Gm-Message-State: AOJu0YwQuzF0h0iucRjkbWyIiUDZJ9XFrTZXbh0HCQbI99BVZSZClurt
	t7gEEDN/L9Ao+bmPMaqtBjzEJJHGePwxpnG15DGMjWzV92UQa6VeEDoN
X-Gm-Gg: AZuq6aICg/WgfV/DXipRotzqh2Wjk4kBqVst1vFvLgy625esJFXya7NiTm5LrokHuJG
	MSk8lZoE94PvTscjeUEi0OwzrAtGkT3IooC397bFgoVFpP+baGQDNZ9VF/ZcqKivl6bHK+3by1E
	lSPF20Je9RpMZ+fBlU5Bv135VJRBMXcrUtFE718qcXNPAbyTSwn2pE+mp+5okogxatjgvD7q5cd
	82IvLeXuuKUJDFQ3JnszCagwBJduRVjLOpmUHoZotxlAUxnT/jInvsl++DY8euWNw/B5BbbvgiT
	1eVvdYTBKdf1SoH/d+a4wPLVy+Qj1eF52LiIFsOeE20nircQeXk5KdfVSiUN/PtYsWvsnUuZy+u
	2rzXptmSAOaO1dLknZIPkx3TIMKlvassh5n7jJ5r0N32IEOXxSccp6QtctAbF0E6UhPxVa5c3+Q
	J/fLa3SBLBcr+gg1b30mF6Mdr/MU6SDJKj2e26jAX8fxY7JeE2DOyJjQNGAMKpBvcXruZTRvWEi
	Im0NMJHaZq9+aCRXX1sCRJrLCBMbnX1B578rQsJQlk0RamE9oIBx8WuzS+9iDWPZ2XkOfoxBA==
X-Received: by 2002:a05:6808:1315:b0:45c:8045:89a6 with SMTP id 5614622812f47-46366656081mr863730b6e.59.1770797653214;
        Wed, 11 Feb 2026 00:14:13 -0800 (PST)
Received: from james-x399.localdomain (71-218-105-26.hlrn.qwest.net. [71.218.105.26])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4636b093ee1sm624852b6e.14.2026.02.11.00.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:14:12 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
To: linux-gpio@vger.kernel.org
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <linux@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
Date: Wed, 11 Feb 2026 01:13:49 -0700
Message-ID: <20260211081355.3028947-1-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264648-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,kernel.org,ew.tq-group.com,vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email]
X-Rspamd-Queue-Id: 1C2131221E5
X-Rspamd-Action: no action

Document the gpio-aggregator virtual GPIO controller with a dedicated
schema and compatible string.

Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the new
binding file.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
Changes v1 -> v2:
  - Add MAINTAINERS entry for the new binding file
  - Rewrite binding description without "this binding" wording
    (suggested by Krzysztof Kozlowski)
  - Drop unrelated consumer node from the example
    (suggested by Krzysztof Kozlowski)
  - Add gpio-line-names usage to the example to show named aggregated
    lines
---
 .../bindings/gpio/gpio-aggregator.yaml        | 54 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
new file mode 100644
index 000000000000..e7df266a3d8f
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO aggregator controller
+
+maintainers:
+  - Alexander Stein <linux@ew.tq-group.com>
+
+description:
+  GPIO aggregator forwards selected GPIO lines from one or more GPIO
+  controllers and exposes them as a virtual GPIO controller.
+
+properties:
+  compatible:
+    const: gpio-aggregator
+
+  "#gpio-cells":
+    description: Specifies the line offset and GPIO flags.
+    const: 2
+
+  gpios:
+    description: Array of GPIOs to aggregate
+    minItems: 1
+    maxItems: 32
+
+  gpio-controller: true
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 32
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    gpio_agg: gpio-aggregator {
+        compatible = "gpio-aggregator";
+        #gpio-cells = <2>;
+        gpio-controller;
+        gpios = <&gpio0 3 GPIO_ACTIVE_LOW>,
+                <&gpio3 1 GPIO_ACTIVE_HIGH>;
+        gpio-line-names = "modem-reset", "modem-enable";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 13b291d801bc..e1bf9a37f87f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10789,6 +10789,7 @@ M:	Geert Uytterhoeven <geert+renesas@glider.be>
 L:	linux-gpio@vger.kernel.org
 S:	Supported
 F:	Documentation/admin-guide/gpio/gpio-aggregator.rst
+F:	Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
 F:	drivers/gpio/gpio-aggregator.c
 
 GPIO IR Transmitter
-- 
2.43.0


