Return-Path: <devicetree+bounces-314977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s0xYGInoOmroKwgAu9opvQ
	(envelope-from <devicetree+bounces-314977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:11:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC46B9DF0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:11:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mpRwqLj9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314977-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314977-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3591A30236D2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA57397B12;
	Tue, 23 Jun 2026 20:11:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB5A395DAA
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:11:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782245493; cv=none; b=n4Bq49958uzJp1SKQHQcgWBKk0NBV2wLLDAmxKK7/50aQnwziu3t6OZfKNdNr8S82MKJul9RWSu8aAm0pN6d0Vzp89P2BDqdND10GtIWV/ztcNTAentVs/UEamvdxFFcW52HKzbZxIVEwgOgvEK16uEXg4meOFxVXsV1drDYlt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782245493; c=relaxed/simple;
	bh=9ZJTV3Tr7gPHN2x9nrz/v/mE3v7g4ksoIWC4RjqyP0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GbjGg6V6/ozFvkE6EHItW8UEw5esAQ4HxK/jpdVe5y+PA0dMaqHjqBaORU1MHgZbcL03Ng828eAZU9BgyWbxv85RcPe9T+/6Dgf7mkRXVehgza3RmW3xOvOG8F5Mnwfp+LjXa/HPY3eMILSVC1Eqtzl8Ko0jH/LMK3bb8foJowE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpRwqLj9; arc=none smtp.client-ip=209.85.167.47
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5aa6792e7b8so247828e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782245490; x=1782850290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rc26whbZ5CV6ed5f60gmU1ifWX890ncOq/U9UyLKHc=;
        b=mpRwqLj9ccn7VtPX/NNZB3Ym19kXT0NVvCRxKgzDNxRBnrbcbfI76Yf8WBHEW5k5gK
         7rGLH9PhviQPyyJfl5360JIu+frqybVcmQ9iqiGCoJUYfuZQ0d3nkXnq937oatmqEkgZ
         m/uM+lrvtSWiak8SgPuycgD9M5cer73jo2wDyZGsOvJ434QG5YpYAmUbVnutLIiZsncq
         waK3f89DnjTfMK1apfSXH18gQPUQzbCf5pIEstfWsiDfuHAWtSbUl/2ZpHsxZAY9IeDh
         m/hmhjkKUkYJjmaDbgcECvMPLnSRZuypUSEcOFEdPxYIGpC8S14KmbGx3z2eZ7fO18sY
         WfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782245490; x=1782850290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+rc26whbZ5CV6ed5f60gmU1ifWX890ncOq/U9UyLKHc=;
        b=i3UiF2/hfQoe8lDtIBqBDDt3WzU+pWZQ4891tIHxcnA6vu9z1JHc4wcE7oXFFALOU3
         pKOgR23vOthSbL+bH6HSyalFdcT3wfCmDLbzygxj4D4BYGGR9YQ+wosnQu6jjbMS3N3x
         TJoYroL18DcD3Vm+X4FtutBV6YV3SIXCNeJn6kQTO2Vv5XF/HtGKCDuB2Ly1i3cJXUGs
         z+HVMobgQEZTSqLW67NbF/iEDytzXXdnnZH9n/6PllOksoV6qzr7PRzWYVRK3c6hmNa3
         eH9xEccsXBMjwbI5fqgMWxunHh6TBdkv+J55NVnBQvpyhkWSbRQ0exfdPOl+fVGi3bla
         m4cQ==
X-Forwarded-Encrypted: i=1; AFNElJ/5uCfNifIS7b/Li0id9RCKwlHbD6/rLL6MZL4wMZ22oHldojePo2KnVYMd1L32RF0GfLlaF7bhPM7M@vger.kernel.org
X-Gm-Message-State: AOJu0YzuIbBeP4lHwuvbvEbUAGjJWku2jQpPIOS5AS1LzV9i7o3kZVzj
	1vwaBGPz80DlUhBemCGbXRBNC552qly82Ne+bxOuUVdzsweogkv02atL
X-Gm-Gg: AfdE7cmWS39gjB1bG9vmfznIOy7Ap7OanQK7cKHK9tsDw/93BkuavccGatNrj4KM2+M
	eVC2L3o7Bz34KF9mWaPvyiHJUw1/tcZJbYxgVRjepj/YZVAEA2UaOloME5/NRWGJ8fgXAIURS/f
	HiYq2fCI5KOmZ52Vks7KV+PReAALk3hfXPoBcrmS/fcgF4ttJV2U5liZPkzcs3bzqUkV0WNy61m
	9WTfpInsOhI4OB/QjJXexGycZQi4Pnw2mxFBLWvAptW/+QtZLnLX6JyKCIEj5IM1QB9CdfYmSPL
	OCpars8pSvWRT+Uz7OjOzq/bvfGFIhYfzJVXqEdl8S2ph/Z9cQuvjbPrHQMEzshGilMBdDp4Or/
	+ilus9K5CyPMQsgXs2x/otOg/R0fDf0LgekOQlKrB4p/A4d5e7gIA3URoGyyLkIauVy/MN+u0cn
	LwBpvy4yMpZ+3fLh+DEVJ7G7moZ0VCyDC6s/Btb7Ay6e7PQw==
X-Received: by 2002:a05:6512:3513:b0:5ad:4ced:9c9f with SMTP id 2adb3069b0e04-5ae9d5ad154mr8361e87.39.1782245489596;
        Tue, 23 Jun 2026 13:11:29 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad69551082sm1063392e87.26.2026.06.23.13.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:11:29 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	lars@metafoo.de,
	conor@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH v5 1/3] dt-bindings: iio: health: add adi,max86150
Date: Tue, 23 Jun 2026 23:11:21 +0300
Message-ID: <20260623201124.18271-2-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260623201124.18271-1-shofiqtest@gmail.com>
References: <20260623174600.17100-1-shofiqtest@gmail.com>
 <20260623201124.18271-1-shofiqtest@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314977-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:lars@metafoo.de,m:conor@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:shofiqtest@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,analog.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AFC46B9DF0

Add Device Tree binding schema for the Analog Devices MAX86150
integrated ECG and PPG biosensor.

The device exposes two PPG channels (Red LED and IR LED) and one ECG
channel over I2C, with a 32-entry hardware FIFO and an active-low
interrupt.

Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
---
 .../bindings/iio/health/adi,max86150.yaml     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/health/adi,max86150.yaml

diff --git a/Documentation/devicetree/bindings/iio/health/adi,max86150.yaml b/Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
new file mode 100644
index 000000000000..c191f4f1525b
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/health/adi,max86150.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices MAX86150 ECG and PPG Biosensor
+
+maintainers:
+  - Md Shofiqul Islam <shofiqtest@gmail.com>
+
+description: |
+  The MAX86150 is an integrated biosensor SoC that combines:
+    - Two PPG (photoplethysmography) channels: Red LED and IR LED,
+      for heart rate and blood-oxygen saturation (SpO2) measurement.
+    - One ECG (electrocardiogram) channel for biopotential recording.
+
+  The device communicates over I2C at up to 400 kHz and raises an
+  active-low interrupt when the 32-entry hardware FIFO reaches its
+  configurable almost-full threshold.
+
+  Datasheet:
+    https://www.analog.com/media/en/technical-documentation/data-sheets/MAX86150.pdf
+
+properties:
+  compatible:
+    const: adi,max86150
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description: |
+      Active-low interrupt line.  Asserted when the FIFO almost-full
+      threshold is reached or when a new PPG sample is ready.
+
+  vdd-supply:
+    description: Digital core power supply (1.8 V).
+
+  avdd-supply:
+    description: Analog core power supply (1.8 V).
+
+  vref-supply:
+    description: ECG reference voltage supply.
+
+  leds-supply:
+    description: LED anode supply, typically 3.3 V.
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - avdd-supply
+  - vref-supply
+  - leds-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        heart-rate@5e {
+            compatible = "adi,max86150";
+            reg = <0x5e>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
+            vdd-supply = <&vdd_1v8>;
+            avdd-supply = <&vdd_1v8>;
+            vref-supply = <&vdd_1v8>;
+            leds-supply = <&vdd_3v3>;
+        };
+    };
-- 
2.51.1


