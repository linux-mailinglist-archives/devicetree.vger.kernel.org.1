Return-Path: <devicetree+bounces-312353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g/PRDn0HMWo7agUAu9opvQ
	(envelope-from <devicetree+bounces-312353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:21:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A704668D184
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:21:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Hl4lQx+Y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312353-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312353-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F3051302BBC4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E4C40E8E6;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6D740BCAD;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598072; cv=none; b=c46QMUYoKoGt76NyhcBIINjXAoncoSI9xTuojxjKzaAgbYdM84mHPHWGF3yT16lDKWOgjMyjLBQ/jlpCx0UbsUA71hEEFQjVifWvCvsB0wySLfCElltk5E7+G7jDkCXPhmN/XX+C/hgjgDPFzsqWqpg8UlW484XPrYxhAU3kQKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598072; c=relaxed/simple;
	bh=LvtsNlDuTcXJ3gpZpJaUFimdeysIQ+ChA83A04En+C8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R+DqcKipKGrSmYPOiTEQjDQo/Q886WG+oNYbIhmmskRpxHzx3gzg4bqG69FwV+v5iHK4orX2mrNSHzY7eLDfeJPMtsffPkW/miYWybes3AQ/8Zj34lXHN1NhjxJYyaHEzTYIGYdJaHpq82atGfFMHifUAGP5PE7UpKJY8j1AeY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl4lQx+Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E723C4AF0F;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781598072;
	bh=LvtsNlDuTcXJ3gpZpJaUFimdeysIQ+ChA83A04En+C8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Hl4lQx+YTNoPIJ9pkGiD278jcIWRi8OANfd4C34vut24GV8KiSxxDSICaFJ17gxvh
	 IYJBU71f/MJ8vUxoFiqXhtX6cmPr0KRZa2q9FWMdbXLNSXlI02HM3ys8qOr+vEFZwj
	 S5HeDUErRPvC4ON1/s25/G+Q6k64gnXAnrE8DTvB/WGXd/wQFh4xqMaY9LQobkC6do
	 QxJkAWBZdluvGJp4krzTpYqwGRincf5Mj8VUefm4Gx9SJCIRWLyHzLR92Hdq+A4lv7
	 6ceeFfbv2bjonFhHqwBgckOgUt7oBxjqwen53l9/V8lTUJVoKNX1Ev/XB1sO7JRjgX
	 RolFLUCPj9/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 211E9CD98E3;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Tue, 16 Jun 2026 09:21:08 +0100
Subject: [PATCH v3 02/12] dt-bindings: iio: dac: ad5696: rework on power
 supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-ad5686-new-features-v3-2-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
In-Reply-To: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
To: Michael Auchter <michael.auchter@ni.com>, linux@analog.com, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781598070; l=2578;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=8i/RvBS1dQfe5RpOf8a8oE51Nrhlpu7hWudVwTfCk/8=;
 b=o+DPVqtsVXXD6dfjykMl8zhm9ZfZi0BAcIhMrEReLXlmrNKdu7eUHEobEbT8tl5v72eo9BZsr
 C3yHXKXBeXtAgJtdo4BMi+ux+w80V7eXxEmrrLGnOBAIJSE4CpsV0+Z
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312353-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	FORGED_RECIPIENTS(0.00)[m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:rodrigo.alencar@analog.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,analog.com:replyto,analog.com:email,analog.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A704668D184

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Add supplies for VDD, VLOGIC and VREF input voltage pins. The vcc-supply
property is deprecated, once it does not really exist as none of the
devices describe any power input with that name. VCC is also misleading as
it sounds like the input power supply, but it is being used as an external
voltage reference, which should be called VREF. Certain devices require
vref-supply to be available once an internal reference voltage is absent.
For correct operation vdd and vlogic supplies are required.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 .../devicetree/bindings/iio/dac/adi,ad5696.yaml    | 34 ++++++++++++++++++++--
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
index c55158c464fd..7b936824917e 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
@@ -33,9 +33,22 @@ properties:
   reg:
     maxItems: 1
 
+  vdd-supply:
+    description: Input power supply.
+
+  vlogic-supply:
+    description:
+      Digital power supply. On some tiny package variants for single-channel
+      devices, this supply is internally connected to vdd; in that case, specify
+      this property with the same regulator as vdd.
+
+  vref-supply:
+    description:
+      Reference voltage supply. If not supplied the internal reference is used.
+
   vcc-supply:
-    description: |
-      The regulator supply for DAC reference voltage.
+    deprecated: true
+    description: Use vref-supply instead.
 
   reset-gpios:
     description: Active-low RESET pin to reset the device.
@@ -62,8 +75,21 @@ properties:
 required:
   - compatible
   - reg
+  - vdd-supply
+  - vlogic-supply
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            anyOf:
+              - const: adi,ad5693
+              - const: adi,ad5694
+              - const: adi,ad5696
+    then:
+      required:
+        - vref-supply
   - if:
       properties:
         compatible:
@@ -90,7 +116,9 @@ examples:
       ad5696: dac@0 {
         compatible = "adi,ad5696";
         reg = <0>;
-        vcc-supply = <&dac_vref>;
+        vdd-supply = <&dac_vdd>;
+        vlogic-supply = <&dac_vlogic>;
+        vref-supply = <&dac_vref>;
         ldac-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
       };
     };

-- 
2.43.0



