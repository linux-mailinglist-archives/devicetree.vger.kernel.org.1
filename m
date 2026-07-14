Return-Path: <devicetree+bounces-325997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L0yXL5/wVWrzwQAAu9opvQ
	(envelope-from <devicetree+bounces-325997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:17:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6946975248B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:17:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=N4SIuYA1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325997-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325997-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A4394301F49F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4D33FB7EE;
	Tue, 14 Jul 2026 08:17:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B164A3FB077
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 08:17:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784017044; cv=none; b=XU4KZNbzBCFu1uknXXW8a02rKNCRP3sabi3xbwaaShytCED2+srCOhKoizcjU9qTry319IxoevPb3y/dU+fVUoB75cC3F72VMYAlhc8ZhpPca39j4Xrh/tk62fuD81i5prqN5546fv+NzSdphch66Dq2JGDQnaCKTQQFyCciAO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784017044; c=relaxed/simple;
	bh=xEEGwX2WirNbeBAzB5AL0aELp4pmQKWtE6Dq3wSUlo0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IpURvpdVh3k4SeUKtq84YkstgQCQpDQKJzVbisYRWJcUI6+fRvSdgW7mikO+LkHd0cNumO3u5moFlRfiFR7KWgXH26OTDaCc4CbvRv76YM8F8ZquX1KOffj8McxdF2zH1WDjfa3L++W/NgP2e+ksb1N94lkJqsV/AuUym4ojzRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N4SIuYA1; arc=none smtp.client-ip=209.85.218.44
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-c12614b81c9so749615966b.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 01:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784017031; x=1784621831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CoQnMOKpiJRr1uZ4EPacW9ACutARLVYGOVPpLwGEQDc=;
        b=N4SIuYA1YpE+X4zPakS58ufaufjsMyKuKHkF0PzSROVKnTh0UWN3POFbKuusvr38Zx
         xnXfb1JzX+PHLjWy/dT8/VxeEQkwrPqubXlkr5EXFVbi4qF3VLMMSi5Fw0u5qIjpg/tD
         7ywUjcxKcLJrXaS786DpipEDrdYWlCuPAbVD6+TRR2XV5u8QZCrue7m5w9KlBbyz8L00
         Uremnl/3UGhEsK2a6QwdxQucu/tVUASNfoAsgwykO7FDuqtLpvYLr2eXIaRX7rmZqKoy
         TOEkVcZz0E4xaturFGmYW493ntFpOYl5sURYUQMTLXC0PSzk8Zye+HaKELHQEkU1V/Q/
         yfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784017031; x=1784621831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=CoQnMOKpiJRr1uZ4EPacW9ACutARLVYGOVPpLwGEQDc=;
        b=Eyv13X9aKDd50jah8meDeGmXT8kHGa3XKUi+wXcTSFyzfoGyfHCf3IjF+ngGkidSMV
         h2uhvDkb99DM+u9gE8qphH9ePLi8K7uA2ocYKlFLo/S8Qvc95Gk7QuHP/hmY9eljm5JN
         Iyvi/VJjjRiBDdSEKA+bUktIo0own5P17tkrScncNxcO2tQSSZhSopggf1lPqSCr4eE/
         5g4zmO8BdY8+Plz8ntmmwL9OezN7bIY1WU8qV0YDxTzpD2SJ2GjtGGNs6S7R6y3SweYG
         V2A14KwQjGser2DkZB+DMLmsPsWhlAm8A8FAmo38gaizqYfZlM14uP9Pp0mEUrhvd8kj
         x/iQ==
X-Forwarded-Encrypted: i=1; AHgh+Rox1q2c/zMvyTXV2u/h73vX4139kpzTHp6iEmnzx2Za73+N4nyGEoniRGik4tzq/mJ5yKamqtdNvDkN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4uSx64H18MmaD4YQxkNHRTXC5PYANaQScfobg2FMKTVLfhYjj
	GPtw7vvN/ZLz2DIfaJsmAyK9fMAeqvkI/Cc0TUKJAl+P/sminaMZyad2
X-Gm-Gg: AfdE7cnTv6dHWtVeg32nVAM452GcY+lxs1YZBgF+MBy27rwtnD9dv8T/+tYLsxqfeLe
	3jkH8Zp42pYZ5VkxA9PzBj1glQ61si0/3NNyK28a63Z/hgWrI99SEeXWAzG5u41KrWFJJIB1NuT
	TCDACoCntyAaYuicMGcyECRrZVqeam0zsOiLlrYBca0O5nNXSAOTJz03yj8Ha4U2hDz22BfJSo4
	biNfOU8Aa+o6UrkM5AYyEdS+x9jE+9qoGfB7fLi/e+FH950cw1VyEgaXHek3r9GjU+Q7xh0j5KK
	2/eNTldA7YK7jlvhQ8dVMjq0ER8XJZaOIDyQOSf0oL+XMzFtpD3KXciN4oUu0r5LVWSYmg/uqk+
	zXMLo9b1jXQ+Pf4IQA3Rww6niPMo4FKWTvjfhzmVVtv6PaaGZyBvwZXKc9dmakT927BrZ69vdIN
	XmTG7bFkspkOmLzEP4Upwn8rrScVrChsRuoTg=
X-Received: by 2002:a17:906:7304:b0:c16:12b6:243c with SMTP id a640c23a62f3a-c161e973a85mr554612966b.14.1784017030626;
        Tue, 14 Jul 2026 01:17:10 -0700 (PDT)
Received: from DE-PF5B95TD.embedded.cmblu.dev ([87.129.199.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15e353d2f8sm723085166b.34.2026.07.14.01.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 01:17:10 -0700 (PDT)
From: Wadim Mueller <wafgo01@gmail.com>
To: William Breathitt Gray <wbg@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/3] dt-bindings: counter: add gpio-counter binding
Date: Tue, 14 Jul 2026 10:17:07 +0200
Message-ID: <20260714081709.17846-2-wafgo01@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714081709.17846-1-wafgo01@gmail.com>
References: <20260714081709.17846-1-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325997-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wbg@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6946975248B

Add a binding for a generic GPIO-based counter. Two GPIOs (signal-a,
signal-b) drive two Counts; optional index GPIOs load a preset. The
counter function (quadrature, pulse-direction, increase/decrease) is
selected at runtime via the counter sysfs interface.

Signed-off-by: Wadim Mueller <wafgo01@gmail.com>
---
v7:
  - index-gpios split into seperate index1-gpios/index2-gpios, so
    Count 2 can have an index line without a dummy entry for Count 1
  - dropped Conors Ack since the binding changed
---
 .../bindings/counter/gpio-counter.yaml        | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/gpio-counter.yaml

diff --git a/Documentation/devicetree/bindings/counter/gpio-counter.yaml b/Documentation/devicetree/bindings/counter/gpio-counter.yaml
new file mode 100644
index 000000000000..782cb177ed0b
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/gpio-counter.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/gpio-counter.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO-based Counter
+
+maintainers:
+  - Wadim Mueller <wafgo01@gmail.com>
+
+description: |
+  GPIO-based software counter with two Counts:
+    * Count 1: A + B. Quadrature X1/X2/X4, pulse-direction, inc/dec.
+    * Count 2: B. Inc / dec.
+  The function is selected at runtime via the counter sysfs ABI. Each
+  Count has an optional Index (Z) that loads its preset on rising edge.
+
+properties:
+  compatible:
+    const: gpio-counter
+
+  signal-a-gpios:
+    maxItems: 1
+    description: Signal A (phase A; pulse input in pulse-direction/inc/dec).
+
+  signal-b-gpios:
+    maxItems: 1
+    description:
+      Signal B (phase B; direction in pulse-direction; pulse input for
+      Count 2).
+
+  index1-gpios:
+    maxItems: 1
+    description: Optional Index (Z) input for Count 1.
+
+  index2-gpios:
+    maxItems: 1
+    description: Optional Index (Z) input for Count 2.
+
+required:
+  - compatible
+  - signal-a-gpios
+  - signal-b-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    counter {
+        compatible = "gpio-counter";
+        signal-a-gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+        signal-b-gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+        index1-gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+        index2-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+    };
+
+...
-- 
2.43.0


