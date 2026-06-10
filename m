Return-Path: <devicetree+bounces-309897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WwjLLAeCKWr7YAMAu9opvQ
	(envelope-from <devicetree+bounces-309897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:25:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF9466ABFC
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:25:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UU5f8Jrd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309897-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309897-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61FB5351A7F3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CB3E40DFDE;
	Wed, 10 Jun 2026 15:13:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6403842882B
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:13:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781104436; cv=none; b=piFYmcUTXms54SJBPDU2TpsS4zP8J1nKvS7KexxefyxGza95aCX3xjYKEK0G295nX9gul0LiQMMKLQkhqz9ci+XSYuMRZ0Of6BjfW9IPWQLvTDQtuULB+eUT3fsfNosj42bWqiNFyqdzXqOXhEw3J/8C4ZwnhsdotyamttdSXN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781104436; c=relaxed/simple;
	bh=M/5gSjAn+YcjGodamaEuPXWFFEhIJf7ohDvPakJoF90=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tuLiy0NFQW32z2nvErsMZjvBYhVixdhqn7GZWl7LKompyIegVitjLbzHS0dUMhixK2O4eaaVF9PZIiZR4GRCIPADzI7rSS8oKXB2fC9vEZ1y9CocSLMjQl2co+6BNco1bS+9el9TuDyrKXnCAKV4o3fxBUSH6o1Vgze4shn3f9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UU5f8Jrd; arc=none smtp.client-ip=209.85.216.52
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-36d98c9b596so4375884a91.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781104434; x=1781709234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P61/w+k7e0xq9IcRaaKdIJbJ/H1LZmJo6tSMLynVjp0=;
        b=UU5f8JrdzgPiMlJquE39bp4KHbDe8oOvpZ/8+l6hRbM3yI8Gvw4ruruaqNWjE+WQ0E
         AufO0I189vVU8qkqh365ZkaxQNMo2THpAum7rku2gImxQCmyDXn3QxwOf2oFWDO3ctx6
         BmXxVDR29uHdgbIi8XwKVNfxMKsbadZFUoMZneby3mMXPBJyh5u0OLa5O2j5aaaeF/K5
         F0IMOTDKVYfth9NTtCTtQQG3+JV3/CkuqKo5z7h1M2YFSwCAZiUo6IBmU6SmD+qy+8J5
         eXiwK4MWWHuonbij+fKQ3FOpittbJA9h03ZsHhjrJwbWQLoZ6Za5gwkBIzciV6U6fyzZ
         I0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781104434; x=1781709234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P61/w+k7e0xq9IcRaaKdIJbJ/H1LZmJo6tSMLynVjp0=;
        b=WJLNbTicOisfNTkpikfrvQLelkEcmDtdTmIW5C9OHRfIuezkuSZD+JI2beuYW8f8iz
         RpARbcJg8M/jnaFSs6+/YeV2rtoOlzRY1Mq4uPgxTyCj1DzlgyHkCV5HTNena97w1W3/
         HtOiVXNITNG+fPFxMukd+F5COLbEuSJGfKuNbUk9sX6kp30cJJQUl0u09KRj1WjkoJhG
         U+kYx3IroFUoYhpt6mkd/9ZCdF0/p407CexVgVzVXcydz/cFNlvEq6xl+b2enDGHQyhm
         pUqngMz2GTOuU+9yGU3hAUdhWtWKExchbLnURfGyAJ5adXey+ax0O4zblcQaPAqv3JXU
         UkjA==
X-Forwarded-Encrypted: i=1; AFNElJ+FXAlyheGFfcpQJVTQh7t1IkFuZhApE9tCvmuP5OJKtNMpX4OzdTORcp+m4RQLvI2Pt+3N5lyf8bf4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo4XaiPpcgaRIVM9tTwLimWStPP7Gtzi4ViTY1iL595XOHqmCQ
	43EmX6mIu3idhdKv6xS6Hc9J52az5rxhQ5A+DTpER3RQuY5l4FD2/6A0
X-Gm-Gg: Acq92OE/wPRGAQbfm4zK88fpknbkhC+ssWldDN9wo08IsQKUkIrtpH1KwbCD9y9miq4
	smRVmy5No8cPSleZlP9h2uCYhmaHs6IIABcCstCtGvwb0CQc2i5undZmzXFYUJbky+vZNH4ebbW
	mejkIJwqeQyXZiDvXgrkxbmMECcO8R60dDLnRYaIVlvnn13PQSXMwK3xeGEDgWBlLG3MCFH40MB
	WJwpvArXjDwL27ZOixoY02E6QmOx8iBSe38HfLATDYbizb5uGUBwM7vwAhvJ6fQ1jMQNd9RlAuo
	yRMtFU2wEh97oIrDWnNoud3+pd9qReOvjn/lPoLNlIOY3yl6oD3s12u3rPbmePvGQt5z5PQWrSY
	bhJXAsLRdEInfnOxFOqTo3zFjIFAQYdzv8bqPQ3QKDzPioH8EFMtVHdMuK2L/uaxA3iMMi7rA39
	WrbJZUWcgsVltiVeFu0IdrA2w=
X-Received: by 2002:a17:903:2348:b0:2c1:ee75:56bb with SMTP id d9443c01a7336-2c1ee755854mr292480485ad.20.1781104433672;
        Wed, 10 Jun 2026 08:13:53 -0700 (PDT)
Received: from ltu.. ([171.245.6.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c1664a67b0sm254066195ad.80.2026.06.10.08.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 08:13:53 -0700 (PDT)
From: Nguyen Minh Tien <zizuzacker@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-kernel@vger.kernel.org,
	zizuzacker@gmail.com
Subject: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1220
Date: Wed, 10 Jun 2026 22:13:41 +0700
Message-Id: <20260610151342.44274-2-zizuzacker@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151342.44274-1-zizuzacker@gmail.com>
References: <20260610151342.44274-1-zizuzacker@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,analog.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309897-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-kernel@vger.kernel.org,m:zizuzacker@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zizuzacker@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zizuzacker@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DF9466ABFC

The ADS1220 is a 24-bit, 2-kSPS, 4-channel delta-sigma ADC from Texas
Instruments with an SPI (mode 1) interface, a programmable gain amplifier,
an internal 2.048V reference and a dedicated DRDY data-ready output.

Add a device tree binding describing the SPI device and its per-input
channel child nodes (single-ended AINx or the multiplexer's differential
pairs), the optional external/AVDD reference selection and the DRDY
interrupt.

Signed-off-by: Nguyen Minh Tien <zizuzacker@gmail.com>
---
 .../bindings/iio/adc/ti,ads1220.yaml          | 146 ++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml
new file mode 100644
index 000000000..1fedffc2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/ti,ads1220.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments ADS1220 ADC
+
+maintainers:
+  - Nguyen Minh Tien <zizuzacker@gmail.com>
+
+description:
+  The TI ADS1220 is a precision 24-bit, 2-kSPS, delta-sigma ADC with an SPI
+  (mode 1) interface. It provides two differential or four single-ended inputs
+  through a multiplexer, a programmable gain amplifier (gain 1 to 128), an
+  internal 2.048V reference and oscillator, two programmable excitation current
+  sources and a 50/60Hz rejection filter. A dedicated DRDY output signals when a
+  new conversion result is available.
+
+properties:
+  compatible:
+    const: ti,ads1220
+
+  reg:
+    maxItems: 1
+
+  spi-cpha: true
+
+  interrupts:
+    description: DRDY pin, signals that a new conversion result is ready.
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply (AVDD/AVSS).
+
+  dvdd-supply:
+    description: Digital power supply (DVDD/DGND).
+
+  vref-supply:
+    description:
+      External reference voltage (REFP0/REFN0). If omitted, the internal
+      2.048V reference is used unless ti,vref-avdd is set.
+
+  ti,vref-avdd:
+    type: boolean
+    description:
+      Use the analog supply (AVDD/AVSS) as the conversion reference instead of
+      the internal 2.048V reference. Suited to ratiometric single-supply
+      measurements (for example a potentiometer wired across AVDD), giving a
+      full 0..AVDD input range without an external reference. Ignored when
+      vref-supply is present.
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  "#io-channel-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - avdd-supply
+  - dvdd-supply
+
+patternProperties:
+  "^channel@[0-6]$":
+    $ref: adc.yaml
+    type: object
+    description: Represents one ADC input configuration (channel).
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 6
+
+      diff-channels:
+        description:
+          Differential input pair routable by the ADS1220 multiplexer.
+        oneOf:
+          - items: [const: 0, const: 1]
+          - items: [const: 0, const: 2]
+          - items: [const: 0, const: 3]
+          - items: [const: 1, const: 2]
+          - items: [const: 1, const: 3]
+          - items: [const: 2, const: 3]
+          - items: [const: 1, const: 0]
+          - items: [const: 3, const: 2]
+
+      single-channel:
+        description:
+          Single-ended input channel AINx measured against AVSS.
+        minimum: 0
+        maximum: 3
+
+    oneOf:
+      - required: [diff-channels]
+      - required: [single-channel]
+
+    required:
+      - reg
+
+    unevaluatedProperties: false
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "ti,ads1220";
+            reg = <0>;
+            spi-max-frequency = <2500000>;
+            spi-cpha;
+            interrupt-parent = <&pio>;
+            interrupts = <4 4 IRQ_TYPE_EDGE_FALLING>;
+            avdd-supply = <&reg_vcc3v3>;
+            dvdd-supply = <&reg_vcc3v3>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            #io-channel-cells = <1>;
+
+            channel@0 {
+                reg = <0>;
+                single-channel = <0>;
+            };
+
+            channel@1 {
+                reg = <1>;
+                diff-channels = <0 1>;
+            };
+        };
+    };
+...
-- 
2.34.1


