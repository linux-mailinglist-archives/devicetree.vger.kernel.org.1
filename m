Return-Path: <devicetree+bounces-295730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ0QIYwbAmocoAEAu9opvQ
	(envelope-from <devicetree+bounces-295730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:10:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D170C5141DB
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C7D5303AAB6
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D7F4657DC;
	Mon, 11 May 2026 17:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NdnWIGnn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457E046AEE5
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 17:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778521488; cv=none; b=bxP/9WC96DLsUI32FELTcbraSmxlrqSvKouSPh6ovrb2IQPRQ7sH9SJ/kQFjwhYF2ySJC1DvbNSDq4IXtDMGIO+nBlL07LCr0swle1gudpIWBnr6jV+8AmMAqvt3ZRi+/mMECom1LhEMOL5puLZwpPGMIbvhsOhZkvlgiDb7O18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778521488; c=relaxed/simple;
	bh=O6n8bbB8NeQW1Fqvhmlkdl4YSa1LzkkvTTlDYBWDtM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L2OJwX4TGAQx7AF6AKj8shSfqK7TkvTLxPcPuZoHxW8GRzpTgTGOe/MykmkaxUEAn1dW8n3kKHp5VX6hjwOUHZ2oRLgajX7PYC7mvqIteGRlnUpMkRbePZ0V5Ni3eiAxrjT2EnO2NwzyoTgJi1F+voQvEDyAQ58E1yJ/xWFPRlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NdnWIGnn; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c80167f56cdso1797414a12.3
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 10:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778521486; x=1779126286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SU5v2vJdNUYCjJPIJ4muUT9VTCLXyhHjccJmI7U6Y+0=;
        b=NdnWIGnn2awYiQyN6LI4ygwGSjnIZ0da88v0vO/SnhMXzB39vTr578rIrtu3+VvJNi
         QTMiYOTvCgsCV+VWhJVXRNms4YkHGor3/bTPdhNwIEH7QAp5zRfjcmKBPzuMVM4dbn5X
         K9QZS3q4JMpHcv3O7PtHNSOmjhRJTWbobZayys/SRtI9y6M4DkT0UpEePAYqHi/k3VpP
         i18H4u6STp6iP3eiy8tomcZ1NRe8e24B5sC//BhYad2rwLOHMBJ9+17RqqYzEpmLrQv5
         9I94sd+uCjbJp6SPFI3tvMYFROWV7spoF9gDGVH+fYEfLccA2MMBqlpAkrSoq95IZpSg
         IdSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778521486; x=1779126286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SU5v2vJdNUYCjJPIJ4muUT9VTCLXyhHjccJmI7U6Y+0=;
        b=GnCWhGhg0V7nfW1QshmOGAx6CxUNC9ayTfTTkqf0hMGbEzbT4tZZtTN0dvDd2sS7vS
         p2iTNq6PP488WrafuAJPOXGD1GeEQg+Bx4zEb0hmzuN33Mkk2KdjyjRH3psC4eUj5Rpd
         LCyb/yg4Xuhv/XshCRjTGFh66P4mXZgmf4QmLfWFME74PUiPx3P1CksdVICFzsZlNU3Y
         tgOzpjmD9HfUCCyiCijZ345GdqQgjpN3l0qrkpd55kSs0PvyxjWDG5qjSquj68fao4bV
         c4FJKeEBt+3FKYmrHvLHp2FmIbpILZqzKWJ4Lvw/7qC0VTKPVxIyibdnus5XxOG0K9fl
         iDGQ==
X-Forwarded-Encrypted: i=1; AFNElJ/t3NG0Czr/nba1c2ajrirVc7MkuktfA99qURQTxalGNoG+NoNYFcIaJmeJ/tnw+lHwxG5hz3mktpAp@vger.kernel.org
X-Gm-Message-State: AOJu0YxUvnyF5Ss89fhDA+BS3VyNP2TbkPvqosobaTES88WKG7jsSe9K
	31NxJvlZ7Y7WxFeaEjSnCFNvts7h8XXZq3jeiV66BZJpXUYRwaQs+Jge
X-Gm-Gg: Acq92OE/DJZJLeDsdcqGd0g92yAParXxQfPSlimeQx+8P+WDrSbseVJpuodLN+QS0jK
	b7grbpkGaMz4SPvPaXqZ1vSoEVDV+FqX3jR1pp6MLtLNY3+l/nuopE3KGAdPU5TTPfVWW4tNbA3
	xXIELnXV8yNYmVqYyf422BN9GgOqqQ2yH0h3eL+9VIgQ8Kwh81JfXzMj+XQvW+Zr31uSFa7m18e
	DbgVxy19X54f3E++m8sMkY8C85mui9+Y7AlKnvZDgLDIhJePEFUQ4IOHxjn7gqX3hVpJBB9TaK8
	U7xaOq39gT9TN02uDm/JlPI84klEbJ6RMYghbQOrZUqLCRCFj+vaHXTp6BrrUZ6Jb2m6DBDuBBL
	XHthJFF8sRSPoT1EVY/m9FrwrZGJV55dAoirHxjBSAXiB1D01kUizqYKeJJR39Yju8oYzc8Dr8w
	xfBrgxWyzwXNPEp4ZK9l1AMJD1hOViJCNFyeOMYnqRVBIn1E1LIwum3x0vINxRA4GZqoVCMinIC
	KQ7uGA83l+WYNgYAWIQ8sxsj37k9j6uB6L4Meu5+gI/C/5F+H5UVB1F+F0u
X-Received: by 2002:a17:903:1aae:b0:2b0:60db:7927 with SMTP id d9443c01a7336-2ba795bdee7mr262936595ad.28.1778521486537;
        Mon, 11 May 2026 10:44:46 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.www.tendawifi.com ([14.139.108.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e365a1sm106838425ad.44.2026.05.11.10.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 10:44:46 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: jic23@kernel.org
Cc: ak@it-klinger.de,
	andriy.shevchenko@linux.intel.com,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 v8 04/11] dt-bindings: iio: adc: hx711: add HX710B support
Date: Mon, 11 May 2026 23:13:29 +0530
Message-ID: <20260511174342.123820-5-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511174342.123820-1-piyushpatle228@gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D170C5141DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-295730-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.989];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[it-klinger.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,intel.com:email,devicetree.org:url]
X-Rspamd-Action: no action

Add the avia,hx710b compatible and document the HX710B-specific
DVDD and VREF supplies.

Add constraints that forbid HX711-only properties on HX710B nodes and
require vref-supply for HX710B, then add a separate HX710B example.

Keep the existing HX711-only binding extensions in earlier patches so
this change is limited to the new variant.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iio/adc/avia-hx711.yaml          | 42 ++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
index 9134bbe41379..b2b5c7bdf05e 100644
--- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/iio/adc/avia-hx711.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: AVIA HX711 ADC chip for weight cells
+title: AVIA HX711 and HX710B ADCs
 
 maintainers:
   - Andreas Klinger <ak@it-klinger.de>
@@ -14,9 +14,14 @@ description: |
   differential input channels. Channel A supports gain 64 and 128;
   channel B supports gain 32.
 
+  The HX710B is a 24-bit ADC with fixed gain of 128. One input measures
+  the differential voltage between the two input pins; a second measures
+  the DVDD-AVDD supply voltage difference for battery level detection.
+
 properties:
   compatible:
     enum:
+      - avia,hx710b
       - avia,hx711
 
   sck-gpios:
@@ -44,6 +49,17 @@ properties:
       RATE pin state is determined by the board wiring.
     maxItems: 1
 
+  dvdd-supply:
+    description:
+      Digital supply voltage (DVDD). For the HX710B, DVDD must be
+      greater than or equal to AVDD. When DVDD is a battery rail and
+      AVDD is a regulated supply, one channel monitors the DVDD-AVDD
+      difference for battery level detection.
+
+  vref-supply:
+    description:
+      Reference voltage input (VREF).
+
   clock-frequency:
     description:
       Controls the SCK bit-bang timing. The value is used to derive the
@@ -53,6 +69,21 @@ properties:
     maximum: 2500000
     default: 400000
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: avia,hx710b
+    then:
+      properties:
+        vsup-supply: false
+        rate-gpios: false
+      required:
+        - vref-supply
+    else:
+      properties:
+        vref-supply: false
+
 required:
   - compatible
   - sck-gpios
@@ -72,3 +103,12 @@ examples:
         avdd-supply = <&avdd>;
         clock-frequency = <100000>;
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    weight {
+        compatible = "avia,hx710b";
+        sck-gpios = <&gpio3 10 GPIO_ACTIVE_HIGH>;
+        dout-gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+        avdd-supply = <&avdd>;
+        vref-supply = <&vref>;
+    };
-- 
2.43.0


