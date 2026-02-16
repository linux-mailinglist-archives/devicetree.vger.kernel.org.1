Return-Path: <devicetree+bounces-265894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II7cH6dPk2nA3QEAu9opvQ
	(envelope-from <devicetree+bounces-265894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:11:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2E51468DC
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6710830242B9
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C589B2D780E;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCRGUBi4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D3F2D6E6C;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771261853; cv=none; b=E+JnE5Qmn4BcokchVs4Hz70UnEzjJaHtSFa7icHZCktJE4Z9Ye21OYRrfggK4d45/N1CYfBP5FoqfXu3+qyr9Edixz8bft0w/p/wKpKqgUbetolyyuE+rHY3KffXyRjOGENL6QZDL9m0XIyMbXREXMF6pvHS2eoiwdl+j3ul4Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771261853; c=relaxed/simple;
	bh=EZj9PEqcMRD9AXu6Ji7mgkwC/I81mfpx66mtqOW1pvk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r3d+FK7tCx8Les65gd6r1wFxnJ1WnjxV1ibKi/2RXdW0nhePFZY74R4RB2BboHOtab4KesIomGVdTXUJKmnox0XlTm/bmnRA0cF20jE6LcMVq9S2z8S1813JXKTNxjVxq/NPgicWQW2s0KnK1hjJlLvZVUGymbatDfxYNMV1QgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCRGUBi4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693F5C2BC87;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771261853;
	bh=EZj9PEqcMRD9AXu6Ji7mgkwC/I81mfpx66mtqOW1pvk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OCRGUBi48DYYOS3tZI9ybh0B2PIKCUIEI/nDtKp9YAY1npGfH7chXT+XhW6mES/Wq
	 jsVo51Id7ZWWz/HkttOYGHbYjYQaeDA7BchitNpcT71C78vLDMi4bVfHdEMc7bsVMN
	 gj2CI4OzGX86q8iJGuqZlsLzKUIrRwCxKMvfPpxXFGw5hTrvBd4e70pZ1kO3zbseZG
	 vT3nohjygW/wOgfoipgPGNdgGYJWNETGxXLqmWJwx6jMWZr+7idipNjiWu9lzrsc/S
	 W2UbvXBnVSy2dcIDo4B4F/RihVhYVDkEJ7Q+3nqsNOmcv3V5k/OmQmeEBRaiHTr2aK
	 aYxpNa4+tJ9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C30AE81A5A;
	Mon, 16 Feb 2026 17:10:53 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Mon, 16 Feb 2026 17:10:46 +0000
Subject: [PATCH v5 02/11] dt-bindings: iio: amplifiers: Add AD8366 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-iio-ad8366-update-v5-2-7e6091357d02@analog.com>
References: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
In-Reply-To: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
To: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771261851; l=3583;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=UNy0X4JXjvK2gtiyKRQ2Bqv9CAzSNJz7qZQMTmwPQ1I=;
 b=OK8h33nMRSJospAT0GUmWIUjai/GKZVF2PWkT9nSujIDMJUcC02Ds4ACwe3VqxAePJqwRpeI8
 QlJxHRESLgXBxlDdRhEiC0PHgVSQ1eij74DieCyPnY0YyPCusj0IOlK
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265894-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,analog.com:mid,analog.com:email,analog.com:url,analog.com:replyto]
X-Rspamd-Queue-Id: EB2E51468DC
X-Rspamd-Action: no action

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Add device tree binding documentation for amplifiers and digital
attenuators. This covers different device variants with similar
SPI control. Each device has its own gain range and step, hence
no fallback compatibles are used.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 .../bindings/iio/amplifiers/adi,ad8366.yaml        | 97 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 98 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
new file mode 100644
index 000000000000..2719de1166a1
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/amplifiers/adi,ad8366.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AD8366 and similar Gain Amplifiers and Digital Attenuators
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+  - Rodrigo Alencar <rodrigo.alencar@analog.com>
+
+description:
+  Digital Variable Gain Amplifiers (VGAs) and Digital Attenuators with
+  SPI interface.
+
+properties:
+  compatible:
+    enum:
+      - adi,ad8366
+      - adi,ada4961
+      - adi,adl5240
+      - adi,adrf5720
+      - adi,adrf5730
+      - adi,adrf5731
+      - adi,hmc271a
+      - adi,hmc792a
+      - adi,hmc1018a
+      - adi,hmc1019a
+      - adi,hmc1119
+
+  reg:
+    maxItems: 1
+
+  vcc-supply:
+    description: Regulator that provides power to the device.
+
+  reset-gpios:
+    maxItems: 1
+
+  enable-gpios:
+    maxItems: 1
+    description: Power-up or Serial Mode Enable GPIO.
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: adi,hmc271a
+    then:
+      properties:
+        reset-gpios: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              anyOf:
+                - const: adi,ad8366
+                - const: adi,ada4961
+                - const: adi,adrf5720
+                - const: adi,adrf5730
+                - const: adi,adrf5731
+                - const: adi,hmc792a
+                - const: adi,hmc1018a
+                - const: adi,hmc1019a
+                - const: adi,hmc1119
+    then:
+      properties:
+        enable-gpios: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      amplifier@0 {
+        compatible = "adi,ad8366";
+        reg = <0>;
+        spi-max-frequency = <1000000>;
+        vcc-supply = <&vcc_3v3>;
+        enable-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index ec9a6beb7619..ab4e487d603a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1589,6 +1589,7 @@ M:	Rodrigo Alencar <rodrigo.alencar@analog.com>
 L:	linux-iio@vger.kernel.org
 S:	Supported
 W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
 F:	drivers/iio/amplifiers/ad8366.c
 
 ANALOG DEVICES INC AD9467 DRIVER

-- 
2.43.0



