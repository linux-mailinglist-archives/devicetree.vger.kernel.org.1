Return-Path: <devicetree+bounces-225858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E63FBD190D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 023023B0D56
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA4C2DFF19;
	Mon, 13 Oct 2025 06:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YaiJCpr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AC722156A
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335248; cv=none; b=QaX4aAcHC2vmgMiJPASH3TEsqzrj0rFBVOSY+AIutsr39SOMXkdsfLcXWgfi2D+ptucSm9Ir6K32csl5OWNIOIEdyOieG2Nn9kp95VUHgS5uq95HgEiM2wuOjIGthChe6KlMh8G8b6sN4TpAVGuAAKyN7HNuMUfXcMIzbz6wpgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335248; c=relaxed/simple;
	bh=H86OdhgTHF+sXtUDW7aUQJv0MWH5MWu/K9PkO+/x6d8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jS+RahZ3rOKzn59NWcYd6z4tSf04QcWSj7WwRhbt2IJWWlBPOtQIjFbSNH9hj0qVrV/Nfh12RpldZ5+iMoPCpR7hhfckKEYRicg2TTzrHx8tRymmb7jNol1LIQSFxC6UN2WAlzG36LabFyklIMG1ITXISQhBkJVjb2VnQVWPZMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YaiJCpr6; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b48d8deaef9so685551766b.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 23:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760335245; x=1760940045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3GAzaDQKIDLrSVL1wcySzyvMJnY8KNZJxvSnSoEULDg=;
        b=YaiJCpr6UwJlmrGujCOvMt3zESHCT4S8ah/8CgABe7ULtUkdw/I0KWSpnL5GeZON5A
         TS27pwaR4iBMjYrNMk57D/QHJCKHHGWkeFqZfM4VPM+plXRyBCaNsGiUq0FZA8jRNHdd
         S4+LqIlxJbVbp+gIbcq3sguw7uHVkOxOqbSgGN0oPAqVfSgTl6FuR1nMPyZ0dMR3P/du
         N9LapNCE/suxukJdfGxZu/2fVFgVHGmuQWtup8wO5tri03uYrL2bDfcxDdHbnBwi01/f
         okLa3k/y9IGCgjHr8iHnouCo2xNBLd8oFaBRVMbjgKWOeb8D7HN+GfD/VY3bCy/WLBf3
         LVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760335245; x=1760940045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3GAzaDQKIDLrSVL1wcySzyvMJnY8KNZJxvSnSoEULDg=;
        b=NcBQpKW++SfIiI6MtnnVkmX9kOux1ofR7Y5XavvqYbzbQQqRa8AyHAcTooZCkLtHxK
         JofQFlv8dUPhNSCVUmRy6goP28uHB58wqMeOFhUUZEEMLwLdetMAe3k81paV4j0sHJdw
         vJ4XrhHd8L65yOqsqF1hhFqpSqpBKGTYSDaQ3weX9dYPS2se9UT1nSpstUl8Hii0coY2
         KLs79D41uHJ0MNDnmt73IsUcBY7fAdg6tWfHSGnpiGeFNF2UilCSgtcVqfY78XPRMmX+
         z1OvK0SjW2nAY5cK+AFI0BUOKkNYsWAMVlk/AOd3LFlc28kbnuC8bMV2O3KRIIqMvvpE
         WHnw==
X-Forwarded-Encrypted: i=1; AJvYcCWEMttBJDiUFSLPR9oFN/tXw8GKbjoAJQzpARh1GzC/GS779Mc1vU3mmDJBwnhXlxQSVogCLgBhEyeq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh2JmOp4oMauRncVR7z7i75TqrVE4EfmVa3eNHxyGLiC/kR8p/
	ONTLWUGuSFk8jMuWOljE39M7uGze0K6ofsCrszjCx097APzj3wdDtrw2
X-Gm-Gg: ASbGnctnvLZieZL7MuYvxHBaqZd9jeWPzmHq6JBgb2tnOftRykr3oERMrTZTYyKuI6b
	WlhxsJll6PZdZx0VMHcMBEnf24TxJj+PmbHjrgODpq86cK7J61SUvh0eV+G8PuoECdT6aO7HXE5
	Kv5SZpbtM4Bf9SDlbD15CzTukrdxV9Ut2agGMevuzjIh9r7fGq34j5fDuk0B8rPbM2BKfTEa9ve
	JTn+6kTxn9tqUSQ/GjX6Be7PSoB/vVW1O92YikvZP6/0jOiOP/vmwEEZBV7Gyxo1b+pgulIWCo7
	xMcnp3/srIT01IC/NZL5qvr4/5R6IDmeXtYLAntzU0gqvH+QqFQhLPIcBkCaLmGwDfhpeqYEg8z
	guVfXoPtfmNq0G7aHb9vA2aUL29+s7jQEFDdzHzWMbpI=
X-Google-Smtp-Source: AGHT+IGUA8rD//TeTvAJr48jm7HezjLLZ3o8NbtmUrTw8/RjBdRlUCx4yAuWNCTMiro0lpfDlE6whg==
X-Received: by 2002:a17:907:94d0:b0:b3c:e14c:e24 with SMTP id a640c23a62f3a-b50aa69e3c6mr1868584466b.13.1760335244759;
        Sun, 12 Oct 2025 23:00:44 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cacba7sm848329466b.5.2025.10.12.23.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 23:00:44 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2 RESEND] dt-bindings: i2c: Document GPIO detected hot-plugged I2C bus
Date: Mon, 13 Oct 2025 09:00:16 +0300
Message-ID: <20251013060018.43851-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013060018.43851-1-clamor95@gmail.com>
References: <20251013060018.43851-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Schema describes hardware configuration that uses a GPIO signal to
determine the bus's presence and state, allowing the system to dynamically
configure I2C devices as they are plugged in or removed.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/i2c/i2c-hotplug-gpio.yaml        | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
new file mode 100644
index 000000000000..d1d5d830c91b
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-hotplug-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO detected hot-plugged I2C bus
+
+maintainers:
+  - Michał Mirosław <mirq-linux@rere.qmqm.pl>
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description: An I2C bus, where some devices on the bus are hot-pluggable
+  and their presence is indicated by GPIO line.
+
+properties:
+  compatible:
+    const: i2c-hotplug-gpio
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+  detect-gpios:
+    description: usually the same GPIO used as an interrupt. In the active
+      state should indicate that detachable devices are plugged in.
+    maxItems: 1
+
+  i2c-parent:
+    maxItems: 1
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - interrupts
+  - detect-gpios
+  - i2c-parent
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c-dock {
+        compatible = "i2c-hotplug-gpio";
+
+        interrupt-parent = <&gpio>;
+        interrupts = <164 IRQ_TYPE_EDGE_BOTH>;
+
+        detect-gpios = <&gpio 164 GPIO_ACTIVE_LOW>;
+
+        i2c-parent = <&gen2_i2c>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+...
-- 
2.48.1


