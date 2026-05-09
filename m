Return-Path: <devicetree+bounces-294895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFYtKTdD/2lU4AAAu9opvQ
	(envelope-from <devicetree+bounces-294895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 16:22:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA0500013
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 16:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6EAF30177B6
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 14:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F82E396588;
	Sat,  9 May 2026 14:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N1tp/vI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A764733D50F
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 14:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778336559; cv=none; b=CMreBph18I8wLGrCj+6CdoYzPmewtUF7bLRKAEbsUbgzpTYASHR267Ev9K7wfha6/8mafeE7tVa5sQV/zplsKb/u5i19W5N+zl3pwloRnOGyf7QfJeqGizBrRhX7r8PoC4PurZl3IE5Mu8yFWFCnOqgMP8NCaIcNBqA/pKyKTUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778336559; c=relaxed/simple;
	bh=Is77detragqtoD9J1EJ55/9pKE36jnstRpS4hdnKrYA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KquG4NJpB9y1U/e5TrXkAevLVF4anU21l37Y6FE5uFYbZZ/Ky0hmpsnTGlQeGGb+eqVkVB8pZRJ3cTfmFK+wXxsvOQe9CcxkI0r9HOATwpNKgwVlqO2XeKt1J5fxAS+ll/iY30B3prGAlbB+Z3JQqenOG57gJrHFJW8YN6hzdPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N1tp/vI8; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43fe3e22e33so1712481f8f.0
        for <devicetree@vger.kernel.org>; Sat, 09 May 2026 07:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778336556; x=1778941356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/tUYnfT7OoYNSnANZCAI0KuF7oC4DPgTc2FTMQNskm0=;
        b=N1tp/vI8TuA0u/ZbBqEeukS6RBNQw/0wJLsqoqdvgQIuJF/XXhRZA+A4YzjhfEieO/
         Gru3plEIjtVeN9HZo3n7d5TiJo0XvRpgFPcS2e58utY5GMjA0PDtME0HBgsUQHskm4Wx
         tHoLEWO0nOpvJETuSsVMEryGB90XpCQdlc/XFlS2eDGrXPB+uk2iC3xtV3GSVmEnn8Ol
         /au0pzdS8tEnpGIGyolY2XQWOj+DNkkBk+uJIesTpU2DX7by9SoEWpKUxi2m1IBdgWE5
         H04u1D/oHyGtGrt+wMo4Q5Q/EsyGZd9Mv4Qqaw1gs4giagz8jGJBermgkeSL17yF384T
         g/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778336556; x=1778941356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/tUYnfT7OoYNSnANZCAI0KuF7oC4DPgTc2FTMQNskm0=;
        b=sNlLQ1TV9F1cDh3D1fSQ7wCGh1uGWamO/j/RlokZ4PtGhsmyZuRSY9Ddf0+F4oE7JQ
         RCOid9rqPXg9j9d94/Vbj3PfKmfmd7qYlWPbMcpb13xAVs9bBwfG16QcODmxj9uggAyt
         WCfT+v6WuoY6jOVAq/ftLrUe6oUsEayxWYkEN4QzNO7XbtHpPzqWQAor6VQmDEcOqAaL
         wziKhvxGt9pYoH/0n2DVqwijHZ8VWm3jmrEoCE8Zt6AKfFN99Slu+/WvujKpTN3MsV+x
         0wqs7EdRiRoV6zk3mRGGW7sXxuSEM7Firu/Oe4Y60d4Rtqvp6qyBPCkqwTX57Wxh3XjI
         aW9A==
X-Forwarded-Encrypted: i=1; AFNElJ943lqUdS3JPlGv9Ydc+mjyvzgn/u3/bGzh9qQ2gJ1js0qFeXJ44L8ZGqEQqUnVJJmJNbmkM7gA3mii@vger.kernel.org
X-Gm-Message-State: AOJu0YywMadWSJOpkl9hp54UIy06OH0/zI2IMBwKrtmn69UZgEdD9fXd
	6IotyjL6jirA9AScpxOHf6Qx0E7FXERaDHCooeXXWzV8k0SbBk8Cjyuy
X-Gm-Gg: Acq92OHOVgK585qS927PnsB7eo1uPMw3QJce3jXVYiUkWXQTkRurtI8hmK38FOsc4s7
	d2krlNvPLlhQne4K5ZMEodASAAawp7RMHsVwBlvILOwVoqN7vxay46jjIIhRrY4viv+fjswVvEl
	7hRIdAxFXno92uL/73PrcLhpMZA9rpQThSKqV9GXwY+xqe2PnINTch7wnkvUG+UBm2scWkrPwD1
	zj08Sdp1C7a/+lSXrRyfdW0tDXXHwu+ebOErju9OTqlGUfxclKnObHlMUYTI54CCdT8vtyqMN1i
	J3dCZjtySFQd69jXFYykezz0dkc9TF86nVDef8VHs0QvVZsBfPazAmLrkI87DpjppEpvNDdQlmr
	cx90VO0+UZcQPqbaasebCnHcYE0Xh5Y/WKJEb5VT61G/hX/5UMpEf0f3NOrWnlg3Qjs896yk+6K
	JzuuTlehdhnTWMkQf1Ye9z8Aj6uXbsSZmL7mEw3pXhDfgF73WyUIaQc/H+B7rOFps1WIHL
X-Received: by 2002:a05:6000:2c0c:b0:43d:7e11:1b72 with SMTP id ffacd0b85a97d-4515a6c32dfmr26267242f8f.9.1778336555910;
        Sat, 09 May 2026 07:22:35 -0700 (PDT)
Received: from DB-07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45492271510sm15127763f8f.37.2026.05.09.07.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 07:22:35 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v3 1/5] dt-bindings: iio: dac: ad5504: add output-range and missing gpios
Date: Sat,  9 May 2026 15:20:39 +0100
Message-ID: <20260509142047.30302-2-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260509142047.30302-1-0rayn.dev@gmail.com>
References: <20260509142047.30302-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 48BA0500013
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294895-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[metafoo.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:url]
X-Rspamd-Action: no action

The AD5504 output range (0-30V or 0-60V) is determined by the R_SEL pin.

Use standard output-range-microvolt and range-sel-gpios properties to
describe the hardware configuration of the R_SEL pin. Ensure mutual
exclusivity using the not/required logic. Additionally, add missing
vlogic-supply, clr-gpios, ldac-gpios and datasheet links, and provide
a complete usage example.

Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 .../bindings/iio/dac/adi,ad5504.yaml          | 39 ++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
index 9c2c038683b4..e0123dceaa33 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
@@ -10,8 +10,10 @@ maintainers:
   - Lars-Peter Clausen <lars@metafoo.de>
   - Jonathan Cameron <jic23@kernel.org>
 
-description:
+description: |
   High voltage (up to 60V) DACs with temperature sensor alarm function
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad5504.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad5501.pdf
 
 properties:
   compatible:
@@ -27,6 +29,29 @@ properties:
     maxItems: 1
 
   vcc-supply: true
+  vlogic-supply: true
+
+  output-range-microvolt:
+    description: |
+      Specify the channel output full scale range. The R_SEL pin
+      determines if the range is 0-30V or 0-60V.
+    items:
+      - const: 0
+      - enum: [30000000, 60000000]
+    default: [0, 60000000]
+
+  range-sel-gpios:
+    description:
+      GPIO connected to the R_SEL pin to select the output voltage range.
+    maxItems: 1
+
+  clr-gpios:
+    description: GPIO that controls the /CLR pin (active low).
+    maxItems: 1
+
+  ldac-gpios:
+    description: GPIO that controls the /LDAC pin (active low).
+    maxItems: 1
 
 additionalProperties: false
 
@@ -34,9 +59,17 @@ required:
   - compatible
   - reg
 
+allOf:
+  - not:
+      required:
+        - range-sel-gpios
+        - output-range-microvolt
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -45,6 +78,10 @@ examples:
             compatible = "adi,ad5504";
             vcc-supply = <&dac_vcc>;
             interrupts = <55 IRQ_TYPE_EDGE_FALLING>;
+
+            output-range-microvolt = <0 60000000>;
+            clr-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+            ldac-gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
         };
     };
 ...
-- 
2.47.3


