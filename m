Return-Path: <devicetree+bounces-268236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMq9GwXCnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:33:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2E51950F5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AFF6309721F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D56238F22B;
	Wed, 25 Feb 2026 09:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="MJT9CozY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9D038E5D3
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011769; cv=none; b=PUa7oATjbRNipZKbn3lZ+K283mJUGl3UwLTl60eT3Q5WtD3rddRjGXxK1owmWOisa+AoJnuHeiqIrzP4GNjmdwo5cRgT/3mJ2kH/wwB3Nll8kpCgML57E9Zv0VXaFGR/nvBSTdFDkdfxylwW7pFsT6i+MUgl/a/5OSDR398KEl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011769; c=relaxed/simple;
	bh=nfhF+uSMnIk48frjPAZKn3oDK6TMKtAu7341kKYbV4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X3+G0NCcq9WXMAAB3TU0scV1U6QtCxXva3lSXzcQn9EsCeAPFMnKtC8FiE6WwW6VdK8ACAbGDtITFThNpxnpX6us5pfsJbkeovzrKWncKOzbJ41wMFHgbGDsjFiI9q/bNu1hza2zNCRjf0sDCFRPLMIdYBMzqdoJqsP9oQ7GdH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=MJT9CozY; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-482f454be5bso6187475e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772011765; x=1772616565; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IBu7E7R6aJl6XDY9NrZLFpAyzlylvs3/JCsOIqQyDUI=;
        b=MJT9CozYFMVlySd1Wc04ZN630MVFRGpXiUxXCUrLJ1FYMHAfamTS2f4kaHtKUDVF90
         XXDxW0T+7oK4zWltDhDHHA/a4IE8U8XrgaQcwlIAu9mF+dHGmrrix/0Nt6m2MCfNHUsA
         0GmMbc/8RVdwZFXFEttktD1JHHtp+3gd8h/JGTL0HBNmtPCrzhazCy7IRoX12Clds1P5
         a5xAGtyv3s6nnTMPwNzzHzLCDKz+EIp8pDsZmDqwgfQlg/nw5phBKZ5YtPnCc0swu0oh
         o3e3+JITX8MFJ8+z30G/cXIHqCSEY/GSV6cTd8WzMkhBs/+3Q6lGUyP4XV/W9kpm3f2R
         SeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011765; x=1772616565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IBu7E7R6aJl6XDY9NrZLFpAyzlylvs3/JCsOIqQyDUI=;
        b=DujP6SYPC9XsPUUDsXFQpoW3s1xqHx4jx7qG6M6iclNZTQOMW7n8E2M9QozWa1+3DE
         /wpXo3qWMnK7WQ7a/GzsqDyqgViOIcsRDtyasybpbW18ZRcL3Zw1LhmkCHIN8EpizYsl
         4WPuw7gb4bUJttqEa47ki1zEQGWSugzMnNyDC7I82VpqjX8EGuYEJ2xPyhxHkii+E1fJ
         F7gHEPrSa6VsiHXqIXnWN7SqJjAOtgp375+1vBVBIyacNx95uOjdGZvIy2YZfjDLMQAX
         kVxBlpLa7oOadgFwxaT8drHo9r9Ii4G88AtbzXdErr98pydCq0hF1s42ySX4SXSYDdez
         Bxag==
X-Forwarded-Encrypted: i=1; AJvYcCUKq36xTPb9DXXy2HOc3loYH+I/jC1QludpSoRKGsJuM36wdHft4dYbTPPMsTTuC0UQBMchDIYJ75a5@vger.kernel.org
X-Gm-Message-State: AOJu0YyiKiQO618aSrORN2lIOkwixTZsMfjNVkvloNp73NbLBC2lSUpi
	Z4N8HluQJcMjJxio/B+/G8AtRtrK4p7/1z9/RDlVVeYjFIap/kRlMGHmMml4Sh4Gwdo=
X-Gm-Gg: ATEYQzyDAVfOclckP7oljPi78vqwMnanH7DHyGZMDMzNUvJhtFfaT3NwyyvGQT7z175
	nCimWXTRof2/ue+3FSzyLhjKdQtHRlVuA2gFGh5EIlfdPmf1kwyUhJvLM08LjdTRXgp2ZbL/lr3
	dxh03sdGSAmQbTIXLx2JCDtrq+9ZlZWMWYlp9Ki/aYEiztxXkywNxM0O6TTdgHgEzCQNz7guanS
	OPS3GhaPuDGPc/s28Z2qnxPrzPQ9LEaH42iAbEOmsrZg78BlWbvUTYB1fdcIzkYTc2X/QW0R6RD
	FQCOqM3aAu87+LitINmA3vMgdaon61Wb+6oA6gMYLamt6VGNpairmu1ivMxC7Os3St/S5a9XX1E
	CR+T/LOmI4pc9RpgTfVx0HD/2Z5anW82XdpAzQJTggd5pA50pBmsZU0twbyUW6dL40Yp2PG2Iqx
	q51NToqFZdaxdUktsatxunrPoGEjCVCiKoUtlyNKCWqMo+EO45k5NJ/LXzepoYVVu68liADhUcn
	ao=
X-Received: by 2002:a05:600c:3652:b0:477:991c:a17c with SMTP id 5b1f17b1804b1-483bd726fc9mr36024395e9.6.1772011765528;
        Wed, 25 Feb 2026 01:29:25 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm33027463f8f.38.2026.02.25.01.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:29:25 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Feb 2026 13:29:11 +0400
Subject: [PATCH 1/2] dt-bindings: hwmon: Add DT schema for TI INA4230
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-ina4230-v1-1-92b1de981d46@flipper.net>
References: <20260225-ina4230-v1-0-92b1de981d46@flipper.net>
In-Reply-To: <20260225-ina4230-v1-0-92b1de981d46@flipper.net>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4435; i=alchark@flipper.net;
 h=from:subject:message-id; bh=nfhF+uSMnIk48frjPAZKn3oDK6TMKtAu7341kKYbV4k=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTOO/Cl63XXz/DexzzsokIzr/2c3njl55ksWQ7zitDwZ
 ys+2lV+6ZjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCq2Q8yMkz2+b3EznnicpMDHkz35Ceu0+fp3DmnnnPR6Xuc1cGfrGYwMnyf1VJ
 cdDBm65K4G8xf+M+LPtxu0rf3+635qU6iVn+ZpjEAAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268236-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email,0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,flipper.net:mid,flipper.net:dkim,flipper.net:email,0.0.0.44:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.3:email,ti.com:url]
X-Rspamd-Queue-Id: 4F2E51950F5
X-Rspamd-Action: no action

Add DT binding for TI INA4230, which is a 48V 4-channel 16-bit I2C-based
current/voltage/power/energy monitor with alert function.

Link: https://www.ti.com/product/INA4230
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/hwmon/ti,ina4230.yaml      | 128 +++++++++++++++++++++
 1 file changed, 128 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
new file mode 100644
index 000000000000..8027eb902f7e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/ti,ina4230.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments INA4230 quad-channel power monitors
+
+maintainers:
+  - Alexey Charkov <alchark@flipper.net>
+
+description: |
+  The INA4230 is a 48V quad-channel 16-bit current, voltage, power and energy
+  monitor with an I2C interface.
+
+  Datasheet:
+    https://www.ti.com/product/INA4230
+
+properties:
+  compatible:
+    enum:
+      - ti,ina4230
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    description: Required only if a child node is present.
+    const: 1
+
+  "#size-cells":
+    description: Required only if a child node is present.
+    const: 0
+
+  vs-supply:
+    description: phandle to the regulator that provides the VS supply typically
+      in range from 1.7 V to 5.5 V.
+
+  ti,alert-polarity-active-high:
+    description: Alert pin is asserted based on the value of Alert polarity Bit
+      of the CONFIG2 register. Default value is 0, for which the alert pin
+      toggles from high to low during faults. When this property is set, the
+      corresponding register bit is set to 1, and the alert pin toggles from
+      low to high during faults.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+patternProperties:
+  "^input@[0-3]$":
+    description: The node contains optional child nodes for four channels.
+      Each child node describes the information of input source. Input channels
+      default to enabled in the chip. Unless channels are explicitly disabled
+      in device-tree, input channels will be enabled.
+    type: object
+    additionalProperties: false
+    properties:
+      reg:
+        description: Must be 0, 1, 2 or 3, corresponding to the IN1, IN2, IN3
+          or IN4 ports of the INA4230, respectively.
+        enum: [ 0, 1, 2, 3 ]
+
+      label:
+        description: name of the input source
+
+      shunt-resistor-micro-ohms:
+        description: shunt resistor value in micro-Ohm
+
+      ti,maximum-expected-current-microamp:
+        description: |
+          This value indicates the maximum current in microamps that you can
+          expect to measure with ina4230 in your circuit.
+
+          This value will be used to calculate the Current_LSB and current/power
+          coefficient for the pmbus and to calibrate the IC.
+        minimum: 32768
+        maximum: 4294967295
+        default: 32768000
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        power-sensor@44 {
+            compatible = "ti,ina4230";
+            reg = <0x44>;
+            vs-supply = <&vdd_3v0>;
+            ti,alert-polarity-active-high;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            input@0 {
+                reg = <0x0>;
+                /*
+                 * Input channels are enabled by default in the device and so
+                 * to disable, must be explicitly disabled in device-tree.
+                 */
+                status = "disabled";
+            };
+
+            input@1 {
+                reg = <0x1>;
+                shunt-resistor-micro-ohms = <5000>;
+            };
+
+            input@2 {
+                reg = <0x2>;
+                label = "VDD_5V";
+                shunt-resistor-micro-ohms = <5000>;
+            };
+
+            input@3 {
+                reg = <0x3>;
+            };
+        };
+    };

-- 
2.52.0


