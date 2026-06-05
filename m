Return-Path: <devicetree+bounces-307271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6ZYwA6eXImqVagEAu9opvQ
	(envelope-from <devicetree+bounces-307271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:32:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A50646E0A
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:32:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YnBIqZ3V;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307271-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307271-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92E64315FC7D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 09:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB123F8245;
	Fri,  5 Jun 2026 09:18:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AE23F8234;
	Fri,  5 Jun 2026 09:18:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780651093; cv=none; b=sbCb6OWb4Us9A884RYM5j4ej0jS5sQYGu/CBBssA03sZ5SyxRvRXEI0syB4zQeVEoGKl/u4Tvg+r9BM/5osndDJe2N46kcCQyol2Z3Q6IkPLvvsM42LV4ryfADBq21c/fOXXgKLvJvnlzg79HAla17WUXXxeVzqLs7jTzJdboHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780651093; c=relaxed/simple;
	bh=NYQPBwWxbuUp+SSxakiJcE+Gwy8u4I+aCTn1eg1mRpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DkhLAKFNco8/TVzKYys25iyNHEpew8mYDHXd20jm3WQQkgr3jaUpRJaqHRfWKltCRCrcRdCkOMXj3O5qxd7ZKE1UzvUZlbIV6vxxmG98fp5cIKk6VZe9Cnr0A8ITHu4SO0tU6z2iGPysf1BDsNL9ns7kB5L6RQ5fg37NwuA/OEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnBIqZ3V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44B24C2BCC4;
	Fri,  5 Jun 2026 09:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780651093;
	bh=NYQPBwWxbuUp+SSxakiJcE+Gwy8u4I+aCTn1eg1mRpc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YnBIqZ3VJ73nn+9aH6VpOXh6ZC06JFfUhNGzFr73umSym76F4P+vjFmUXsATcP2HU
	 UaywSDlF/jldHKQZeYsYI8dR6/Xpi4e3WKIPIXx2lO1r7oD5nK0YQmHfF3sT0TbCbR
	 APaCmKWStZHF5DNlFGvXThk5vWmjNrso/wlHJt1fot1NBmYvPwXKYkwtG5kBF8wsDA
	 qmSIIyS5SCvWtPF39Wddjbn1EC9kmgWDUuYF1CdlWouaHwUgkdSkyOI7/9L2pVxrkL
	 +94B8ctDEfekwf4NMLnSFpiqplcUfrSGL8KNT9mPgSD9UHGS4unHa4EyfFcehpnYlY
	 iXLFzAldx1IcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27AE1CD6E7C;
	Fri,  5 Jun 2026 09:18:13 +0000 (UTC)
From: Herman van Hazendonk via B4 Relay <devnull+github.com.herrie.org@kernel.org>
Date: Fri, 05 Jun 2026 11:18:12 +0200
Subject: [PATCH v2 1/2] dt-bindings: power: supply: maxim,max8903: add DC
 and USB input current-limit controls
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-submit-power-max8903-dc-limit-v2-1-0c5396e98f14@herrie.org>
References: <20260605-submit-power-max8903-dc-limit-v2-0-0c5396e98f14@herrie.org>
In-Reply-To: <20260605-submit-power-max8903-dc-limit-v2-0-0c5396e98f14@herrie.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780651091; l=4290;
 i=github.com@herrie.org; s=20240417; h=from:subject:message-id;
 bh=y3jq3IEz6lBQ6Jj7RCPl1bWyp4QEaitytOHy869VV20=;
 b=2zDwl8KSheKDn+M1O1+82K2Lx0OMt5lwY7UEerjIFfVmedaoT4A3cf0fFVKwLdTk4sMaRhTdc
 bBsErrda6ceA2w2qqX+0lH4uKdlnfsJm2TstiU8ICiNQqmB68SHaQ76
X-Developer-Key: i=github.com@herrie.org; a=ed25519;
 pk=YYxdq8fb5O9vhkW3n2dCH044FPZZO5718v/du7fRhFw=
X-Endpoint-Received: by B4 Relay for github.com@herrie.org/20240417 with
 auth_id=809
X-Original-From: Herman van Hazendonk <github.com@herrie.org>
Reply-To: github.com@herrie.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307271-lists,devicetree=lfdr.de,github.com.herrie.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sre@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[github.com@herrie.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:mid,herrie.org:email,herrie.org:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58A50646E0A

From: Herman van Hazendonk <github.com@herrie.org>

Add three optional properties to the MAX8903 charger binding to
describe board-level GPIO control of the DC and USB input current
limits:

DC input (TA / DOK pin):
  - dc-current-limit-gpios (1..4 GPIOs): mux control lines feeding
    the MAX8903 IDC resistor mux;
  - dc-current-limit-mapping (uint32-matrix of {microamps,
    gpio_bit_pattern} pairs): the available current levels and the
    GPIO bit pattern that selects each level.

USB input (USB / UOK pin):
  - usb-current-limit-gpios: a single GPIO driving the IUSB pin.
    The IUSB pin is silicon-fixed by the MAX8903 datasheet (Pin
    Description): low selects 100 mA, high selects 500 mA. Only
    the GPIO mapping is board-specific; the current values are
    not exposed in DT.

A dependentRequired block ties dc-current-limit-gpios and
dc-current-limit-mapping together so an incomplete DT cannot pass
validation with only one half of the pair.

These let userspace clamp the input draw via the standard
POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT power_supply attribute. The HP
TouchPad uses both: two TLMM lines select between 0.5 A, 1.0 A,
1.5 A and 2.0 A DC input current limits behind the MAX8903B
charger, and a third TLMM line picks the IUSB 100 mA / 500 mA
limit.

These are purely additive; existing platforms remain unaffected.

Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 .../bindings/power/supply/maxim,max8903.yaml       | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
index 86af38378999..b3d8c0a5f214 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
@@ -44,9 +44,40 @@ properties:
     maxItems: 1
     description: USB suspend pin (active high, output)
 
+  dc-current-limit-gpios:
+    minItems: 1
+    maxItems: 4
+    description:
+      GPIOs controlling DC input current limit via resistor mux.
+      Used with dc-current-limit-mapping to select charging current.
+
+  dc-current-limit-mapping:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 16
+    description: |
+      Array of (current_microamps, gpio_bit_pattern) pairs defining available
+      DC current limits. The gpio_bit_pattern is applied to dc-current-limit-gpios
+      to select that current level.
+    items:
+      items:
+        - description: Current limit in microamps
+        - description: GPIO bit pattern value
+
+  usb-current-limit-gpios:
+    maxItems: 1
+    description:
+      GPIO driving the MAX8903 IUSB pin. IUSB is a silicon-fixed
+      two-state input - low selects 100 mA, high selects 500 mA.
+      Only the GPIO mapping is board-specific.
+
 required:
   - compatible
 
+dependentRequired:
+  dc-current-limit-gpios: [dc-current-limit-mapping]
+  dc-current-limit-mapping: [dc-current-limit-gpios]
+
 anyOf:
   - required:
       - dok-gpios
@@ -65,3 +96,25 @@ examples:
       chg-gpios = <&gpio3 15 GPIO_ACTIVE_LOW>;
       cen-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
     };
+  - |
+    /* Example with DC and USB current limit control */
+    #include <dt-bindings/gpio/gpio.h>
+    charger {
+      compatible = "maxim,max8903";
+      dok-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+      flt-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+      chg-gpios = <&gpio3 15 GPIO_ACTIVE_LOW>;
+      cen-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+      dcm-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+
+      /* DC input current limit via IDC resistor mux */
+      dc-current-limit-gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>,
+                               <&gpio1 1 GPIO_ACTIVE_HIGH>;
+      dc-current-limit-mapping = <750000 0>,  /* GPIO[1:0]=0b00 */
+                                 <900000 1>,  /* GPIO[1:0]=0b01 */
+                                 <1400000 3>, /* GPIO[1:0]=0b11 */
+                                 <2000000 2>; /* GPIO[1:0]=0b10 */
+
+      /* USB current limit: IUSB pin, 100 mA (low) / 500 mA (high) */
+      usb-current-limit-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+    };

-- 
2.43.0



