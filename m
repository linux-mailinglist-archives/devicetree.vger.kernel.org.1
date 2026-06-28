Return-Path: <devicetree+bounces-316583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhPDLO6fQWo8swkAu9opvQ
	(envelope-from <devicetree+bounces-316583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 00:27:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CA66D5287
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 00:27:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=l1lKAhbH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316583-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316583-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EF2530247E7
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7233BBA18;
	Sun, 28 Jun 2026 22:27:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE992F8E85
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 22:27:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782685635; cv=none; b=LRvRZ3UoobAvViL3bedC6F3LrdTg29lIi8fNLNbwDhk+jM0nqw6nmbGz/fHh1BhMdphpz9V/bl0pku1x49c3xh7tiq+shsjXn0RG45ALppwY/AteosSRYrnTU+mnNusFiMXaTXQ8gqgn+d5sVzWhgrmIwQzDstNAPNXbcOA9QeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782685635; c=relaxed/simple;
	bh=dF85tTd+dZAmGfNXAUiK6+VBAVoIOTl7f57pca3RVX4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSrsX9NxBUCl0snqAup2EyNy4IaNdcf3pR6zoJvV7o4B/couj6zussElWTEf55JlXmloQcEltGYeOvqz91bC/yJWKESSrMku5pL1t+wZmkke4IrWS2+NIXByXHHUNuRNVqtKxpFOTM6bN1MpeUY6QOpCRIviTi0gMUV1emIMkSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l1lKAhbH; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so19650845e9.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 15:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782685633; x=1783290433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sO2hqu5MKfYs7Z8z4isSSe2TfBcdD431qM1IwNbMCI0=;
        b=l1lKAhbHqZwlb3Gc/kxqQoGtcQtwXKOw1H6LjZ8l0JBq1QRvWlOi+ujzIgJ1z10rQ4
         itRvEKuwXytf3BvnMuQroYAJKOoaKAMqDKX5rMk+a17o8n/QmvhLKTyzg/rF2INi8pd4
         U23M3AcR9+QGC57Ry86lzeKEvP1ViI0fgbgzWD09DHmLsiaPbHShCSNKkOZ6LwUDnxyk
         QJYU1E+f9Kq6dGvlL5mCNE2iQIkMSuAkLQ4X2wW9Z2kKQtuHqTIUtLcSASo9oNjR1XQ5
         ZMYnv3wj+TzRU/vhBwjGbI7vor9tNpd3MvEvfILoRlFNXYh3FJxtoPYUJJuZVGE5h7ym
         qmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782685633; x=1783290433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sO2hqu5MKfYs7Z8z4isSSe2TfBcdD431qM1IwNbMCI0=;
        b=o8f53r7OXFbBwxMVnhYpu+g+NVS2QAHxICb5nu/TBYwMCXHsP7Su66saO/PvgUbsd+
         MM6izOvGGE/W7GB99VWU2plDkOUdARuxDHdKWjzrPgCP0kduhLy1/PfWn+yq0DAwtSWk
         N6s0op3pOUH/BtarWyW3421T2a2aU6hiaWtTNdQnnSe+N8IaFvUqHE/8J1TDtt0E+DKd
         y358zPcURzVrJ6FvDmzaTj5baUDvuDdKfBzc8L5A9nMRlFNeGi6c8ynhRC5dU5o+rX4g
         kZdwhdCLl3RrGFsGPfqZGf4PpGgiHp8bpep9bNyC431+GnyMyzzqeSFtT+vncCFVpUkq
         sLww==
X-Forwarded-Encrypted: i=1; AFNElJ9qT13krWW3PyuYdz4tM+eioH43HlJR2E4Tr7wzaWWCoQ/2GhEU45kqj3oqVLfMd9/klu7SqtGU4b0w@vger.kernel.org
X-Gm-Message-State: AOJu0YyKttSWp0FPIhHS5V9rj4pRf24oLNOlWCXicFYt0BWHPtzeImXU
	Ick7lKvwCSwsYCTQzEeVo311bhvXmYZrYRuhw/PLE8loWaYfxBBZN/uv
X-Gm-Gg: AfdE7ck7EymuhKK0ReJcvowhICvAFuOSmjpm6vGBkRDWaMAcAE2g7GHHTTVPvahgx2E
	IKNjguswguPJNyjO8zVU3xA+GR7mS0PkDyJiik5vbwjAUHCRBM3WR2TFHCL3mzCD6SY/frMvzQX
	AbZZA2AVfeIMUazfkGIDv8FClCa9Dn+c8oEKmg10TMKmmT+WHlITC8GiicaixMuUbPFYk5ne6Zo
	mGTriT0/lRxIj7vNMvBaXMUQTrM27+9Y/qJl342TaUECBC62Oblz85YaF4zQoPBlZg8oSLv4P9m
	gkA0wZQisGp5Ep+Bm9t8+ItSwVMTEU2jjWrIlE1JxS+/pdSqdlr8z5RrApLNqhhZuJ7T+Pxi+BY
	MqWNlJBz6yh4YMo33pj4h/+Dbhqx0pm46g2nKJaIHSD+tZzf+Aa/B1HAvbS/JrundGDrAuNa9o9
	Vq1iBqdLTE8P7mvZA=
X-Received: by 2002:a05:600d:4441:10b0:492:7015:bced with SMTP id 5b1f17b1804b1-4927015bd1dmr97178305e9.18.1782685632681;
        Sun, 28 Jun 2026 15:27:12 -0700 (PDT)
Received: from builder ([2001:9e8:f10e:1a16:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49269002511sm246811675e9.8.2026.06.28.15.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 15:27:12 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>,
	Kory Maincent <kory.maincent@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	=?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH net-next v3 1/2] dt-bindings: net: pse-pd: add bindings for Realtek/Broadcom PSE MCU
Date: Sun, 28 Jun 2026 22:27:03 +0000
Message-ID: <20260628222705.4052815-2-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260628222705.4052815-1-jelonek.jonas@gmail.com>
References: <20260628222705.4052815-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-316583-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:o.rempel@pengutronix.de,m:kory.maincent@bootlin.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@makrotopia.org,m:bjorn@mork.no,m:jelonek.jonas@gmail.com,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:jelonekjonas@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,makrotopia.org,mork.no,gmail.com];
	FORGED_SENDER(0.00)[jelonekjonas@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jelonekjonas@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12CA66D5287

Add a binding for the microcontroller (MCU) that fronts the PSE silicon
on a range of managed switches. The host talks only to the MCU, over
I2C/SMBus or UART, using a fixed message-based protocol; the PSE chips
behind it never appear on the bus.

The compatible names the MCU front-end, not a specific part. These
boards front the PSE silicon with an MCU that presents a stable
message protocol Realtek documents. The PSE chip behind it varies
- Broadcom on older boards, Realtek on newer - and is detected at
runtime; the arrangement appears to be a Realtek MCU-based PoE design
carried across those PSE-chip generations. So the 'realtek' prefix
names that front-end (Realtek's protocol and firmware), not the
general-purpose MCU silicon or the PSE chip - the google,cros-ec-*
model. The '-rtk'/'-brcm' suffix selects the Realtek or Broadcom dialect.

A single compatible per dialect covers both the I2C/SMBus and UART
attachments: the wire protocol is identical across them and the transport
is expressed by the node's parent bus, so it is not encoded in the
compatible.

Both dialects share one protocol family and one device tree contract, so
they are documented in a single binding under the one 'realtek' prefix,
with the '-rtk'/'-brcm' suffix distinguishing the dialect.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
---
 .../bindings/net/pse-pd/realtek,pse-mcu.yaml  | 154 ++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pse-pd/realtek,pse-mcu.yaml

diff --git a/Documentation/devicetree/bindings/net/pse-pd/realtek,pse-mcu.yaml b/Documentation/devicetree/bindings/net/pse-pd/realtek,pse-mcu.yaml
new file mode 100644
index 000000000000..3a414ef38922
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pse-pd/realtek,pse-mcu.yaml
@@ -0,0 +1,154 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pse-pd/realtek,pse-mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek/Broadcom PSE MCU
+
+maintainers:
+  - Jonas Jelonek <jelonek.jonas@gmail.com>
+
+description: |
+  Microcontroller (MCU) that fronts the PSE hardware on switches using
+  Realtek (RTL8238B, RTL8239, RTL8239C) or Broadcom (BCM59111, BCM59121)
+  PSE chips. The MCU exposes a small message-based protocol over either
+  I2C/SMBus or UART; the actual PSE silicon is not accessed directly. The
+  Realtek and Broadcom variants share this device tree contract but use
+  different protocol opcodes, selected by the compatible.
+
+  The compatible identifies the PSE-MCU protocol dialect, not a specific
+  part. The device here is the MCU: it presents a stable message protocol
+  documented by Realtek, with the PSE silicon behind it - Broadcom on
+  older boards, Realtek on newer - detected at runtime and not described
+  here. The MCU's own silicon is general-purpose and varies across
+  boards, so the 'realtek' vendor prefix names the protocol front-end
+  (following the google,cros-ec pattern); the '-rtk'/'-brcm' suffix
+  selects the Realtek or Broadcom dialect.
+
+  A single compatible per dialect covers both the I2C/SMBus and UART
+  attachments: the wire protocol is identical across them and the
+  transport is already expressed by the node's parent bus, so it is not
+  encoded in the compatible. Transport-specific properties differ
+  accordingly - the I2C attachment carries 'reg' (and, for Realtek,
+  'realtek,i2c-protocol'), while the UART attachment carries the serial
+  peripheral properties such as 'current-speed'.
+
+properties:
+  compatible:
+    enum:
+      - realtek,pse-mcu-rtk
+      - realtek,pse-mcu-brcm
+
+  reg:
+    maxItems: 1
+
+  power-supply:
+    description: Regulator supplying the PoE power rail.
+
+  enable-gpios:
+    maxItems: 1
+
+  realtek,i2c-protocol:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ i2c, smbus ]
+    description: |
+      Wire framing the MCU firmware expects on the I2C bus. "smbus" means
+      reads carry a leading command byte (0x00) and a repeated start; "i2c"
+      means bare 12-byte writes and reads with no command prefix. Only
+      applies to the Realtek I2C attachment.
+
+required:
+  - compatible
+
+allOf:
+  - $ref: pse-controller.yaml#
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+  # The I2C attachment (identified by 'reg') cannot carry serial bus props.
+  - if:
+      required: [reg]
+    then:
+      properties:
+        current-speed: false
+        max-speed: false
+  # 'realtek,i2c-protocol' is meaningful only for the Realtek I2C attachment;
+  # the Broadcom variant and any UART attachment must not carry it.
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: realtek,pse-mcu-rtk
+      required: [reg]
+    then:
+      required:
+        - realtek,i2c-protocol
+    else:
+      properties:
+        "realtek,i2c-protocol": false
+
+unevaluatedProperties: false
+
+examples:
+  # Realtek PSE chip, I2C attachment (SMBus framing).
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-pse@20 {
+            compatible = "realtek,pse-mcu-rtk";
+            reg = <0x20>;
+            realtek,i2c-protocol = "smbus";
+
+            pse-pis {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                pse-pi@0 {
+                    reg = <0>;
+                    #pse-cells = <0>;
+                };
+            };
+        };
+    };
+
+  # Broadcom PSE chip, I2C attachment.
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-pse@20 {
+            compatible = "realtek,pse-mcu-brcm";
+            reg = <0x20>;
+
+            pse-pis {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                pse-pi@0 {
+                    reg = <0>;
+                    #pse-cells = <0>;
+                };
+            };
+        };
+    };
+
+  # Realtek PSE chip, UART attachment.
+  - |
+    serial {
+        ethernet-pse {
+            compatible = "realtek,pse-mcu-rtk";
+            current-speed = <115200>;
+
+            pse-pis {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                pse-pi@0 {
+                    reg = <0>;
+                    #pse-cells = <0>;
+                };
+            };
+        };
+    };
-- 
2.51.0


