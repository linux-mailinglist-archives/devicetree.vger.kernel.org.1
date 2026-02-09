Return-Path: <devicetree+bounces-264023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDegM//tiWnDEQAAu9opvQ
	(envelope-from <devicetree+bounces-264023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:23:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A480110312
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C481A30066BA
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C32F37AA9D;
	Mon,  9 Feb 2026 14:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WEVuPakh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f194.google.com (mail-yw1-f194.google.com [209.85.128.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291183446C7
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647037; cv=none; b=cgKhaILNJW4ZhDHVo5sSQZ4Oh1/rzUwEui1odxNK73zlWxq0CEPDrijyKf29sgUEWjeGYEly9FhOV7OIHSZpNYptKxeDfNgS9WoyQKTKK5MkbPXrT/zSjyfAQb9x/qpttbOQJJfdedIDvPuBgSEWfXJbkz/2J+HnsEXv6oTT7hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647037; c=relaxed/simple;
	bh=zT7ghM6hNRSAnvMOdpsrrBvdH8nHGRJGNrKkXNiW0lo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rmy7Rf6lwZNCggjNMdS18lp/med0COXRE8P7+LFaC0f1lUI/OeQdwfqI8nPFPN6DE+/GQcCsgAaXHudkMQeK0G9J0Llurshz5odKLDDBRcbhvFJdHDZ+7wkHcuPajWGiS4+O7J6T1RFkLJZ+b8Mdd/gbI3MRXHUvNC04PzjIYig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WEVuPakh; arc=none smtp.client-ip=209.85.128.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f194.google.com with SMTP id 00721157ae682-79639c2d2b5so16215017b3.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770647036; x=1771251836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rpT//HF8ja4RuclSr7p+NXdCcERtIsyjZBNMoKdEQ4=;
        b=WEVuPakh0TiPnXtAnhmQH+8guK00txy7HX/1LPTC6XYB3cfkPY9qOPCeDlI8yt/4Cf
         QytUrN55dYIf+KCd0rzl0a+rgmC1FQP2gJg9oAoTC5+cZrMz77Zodl1zcX8Oz+tvq/lf
         coYDu6LC2n95tdEFQP2zHt6IRtjA6lPx+8D7q+H0AyE7E1YX+Dzc1UE/A3Kvl7P53QZp
         1aHe1jvyxWd8Ry+EjTa5O3h0uG/HzZkjaL/SbZqv34DxUbtA6rYxW2+CQ2pStSfR2igz
         TYM+TAs02nXEecEnIU1vORf4LX2eoTGs7nB6bp+VvHBRWDS7Cl/U+sk20c8bK7qei13E
         Xv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770647036; x=1771251836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/rpT//HF8ja4RuclSr7p+NXdCcERtIsyjZBNMoKdEQ4=;
        b=GlwC5wTBwhx3YZEU/5VqSlZ3ucy1Bk/aF+TRKuKgCn5MfgUroESDr+tdpXHgFizyV4
         xq6aLnDA9Xl3rd8EziUYxmbMBeMWsz5/vR3Pkh9YM+ugU5dOttAxlIWn9XysfCGcrdTO
         kpXODdNijkd9vTREYvEog9mSmHfiV/dDR9nw34S4dRs279uB6IEdno2HVvau9Df1Kz4C
         glMXiVf9Qyzp9spoZrO9jl13roE9YeN7sqFkpL856J2v4I5PkFzQYlL/l1gTVth5LhvT
         nYNfcJaD5Psnn6B3pDQaktIVz7vfMr4Geq4VAn+rV0hp7kPnxJz93BIVwOgGwl5lZo5B
         GruA==
X-Forwarded-Encrypted: i=1; AJvYcCUZANcwj9yrZkthDiE1bPdxz1YFzrwYTQtOioHJvyjXJZIETZJvx26398ZyhiRDIUI1RaVnvRe8p/IM@vger.kernel.org
X-Gm-Message-State: AOJu0YyzhGaU2vcL8H4q/1/to3dQyhT2qj6b5WYlnD3hD2TV4MqM/jAE
	7NpVGx1JV/eCZPO1efeVH3wlOrlAX+Ub+WHTmIzwzWno0SJfIWIZ31Ks
X-Gm-Gg: AZuq6aLGPpX4ygDm7qei+Ele05FSW9SFu8NEBPL5M2GJkca8NHSZnzre+a5JDU7LbOj
	4DIWR1UvZRc/mG4u/s0Om9lmcCcrJMrvDefIHYQ+34SK4w3A/+90dAkYNYdBYV2TSVPBAKv/zKz
	MAinAtSI+pfzOsB8YRts//lBWJWIOdpa2aGUaBkBRfuSil5aqCQEZumKm6Yum4qKvogjjmZnN4I
	SzRhuB/L9wURPi+GqYadracYhp5bB5nbSXymmHArWSerwu9JybiHMmFd6XTGRlp7wVxcf0JtiWo
	aC+210zUejebkL6Yb6gaEXRgFBzs7Pk+TqpNa33nIxJDvE+CU9xVE2QXwuS30CYtpGeOO/S58Hi
	RtzSv4ZKLz7yy4ZW3GO7pdLkJi/1WGMcfsmtJk8FMoACw3/FY21CKsIkuVzwOZYWJvMmnOXIcpn
	TVadOllRRNdGuTjyDTihulE7SF
X-Received: by 2002:a05:690c:c4fa:b0:796:2bd2:4b23 with SMTP id 00721157ae682-7962bd25c2emr80535017b3.3.1770647036142;
        Mon, 09 Feb 2026 06:23:56 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a0467easm92497947b3.13.2026.02.09.06.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:23:55 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 09 Feb 2026 16:23:41 +0200
Subject: [PATCH v2 1/2] dt-bindings: Add binding document for cm36686
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-cm36686-v2-1-a48126d2b124@gmail.com>
References: <20260209-cm36686-v2-0-a48126d2b124@gmail.com>
In-Reply-To: <20260209-cm36686-v2-0-a48126d2b124@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264023-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.60:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5A480110312
X-Rspamd-Action: no action

Document the Capella cm36686 ambient light and proximity sensor devicetree
bindings.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../bindings/iio/light/capella,cm36686.yaml        | 97 ++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
new file mode 100644
index 000000000000..0e54b681e197
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/light/capella,cm36686.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Capella cm36686 I2C Ambient Light and Proximity sensor
+
+maintainers:
+  - Erikas Bitovtas <xerikasxx@gmail.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: capella,cm36672p
+      - items:
+          - const: capella,cm36686
+          - const: capella,cm36672p
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device. Must be 0x60 for both cm36686
+      and cm36672p sensors.
+
+  interrupts:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Regulator that provides power to the sensor.
+
+  vddio-supply:
+    description:
+      Regulator used to power IO and I2C bus.
+
+  vled-supply:
+    description:
+      Regulator used to power proximity LED
+
+  proximity-near-level: true
+
+  capella,proximity-led-current-microamp:
+    description:
+      Current for proximity IR LED
+    enum: [50000, 75000, 100000, 120000, 140000, 160000, 180000, 200000]
+    default: 50000
+
+  capella,glass-factor:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Lux amplification factor to account for packaging - a number by which a
+      lux reading is multiplied.
+    default: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - capella,cm36672p
+    then:
+      properties:
+        capella,glass-factor: false
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddio-supply
+  - vled-supply
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      light-sensor@60 {
+        compatible = "capella,cm36686", "capella,cm36672p";
+        reg = <0x60>;
+
+        vdd-supply = <&pm8916_l8>;
+        vddio-supply = <&pm8916_l6>;
+        vled-supply = <&reg_prox_vled>;
+
+        interrupts-extended = <&tlmm 113 IRQ_TYPE_EDGE_FALLING>;
+
+        proximity-near-level = <30>;
+
+        capella,glass-factor = <16>;
+        capella,proximity-led-current-microamp = <100000>;
+      };
+    };

-- 
2.53.0


