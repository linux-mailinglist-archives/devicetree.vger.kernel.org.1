Return-Path: <devicetree+bounces-312545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pWD+MExLMWrSgAUAu9opvQ
	(envelope-from <devicetree+bounces-312545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:10:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 263EA68FC5A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:10:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=AJkYqrVK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312545-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312545-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDB02317E0DA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825CC374745;
	Tue, 16 Jun 2026 13:09:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound6.mail.transip.nl (outbound6.mail.transip.nl [136.144.136.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27BE374A1B;
	Tue, 16 Jun 2026 13:09:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781615370; cv=none; b=d+5RHA2a0WrAlNP3HshxdRyhnzrR5l56ZAg16HJa1YV1pMfyAYtJBuDh7bsJewNzmNel32WHSnO8CiHdTwyZu/Mf+N3FIfuxgclm8tMyo/KbmzfZst2Ck98xZquPVjdj0JczFsLtDHXxOMulLJUm00Vszg46Dx6G8axSZH7+v6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781615370; c=relaxed/simple;
	bh=CK33TNa9SheLY8lCX11VLFemMv+xC1hg4xSfmjqQv2Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H42UbhGWu/urQJNQev93xAov1PcX+b/pSVH8JmQ5tAnYP04sdSH1iec6VxQbMnHNRq2Pp8RUzXLa4tha/DGLKE/XR1tzF7sxMucYtAAtpC7flvYEZLmQ+1//xKhxtvCDBjJ6cpUhEMstx6s4EgMfMKuAmhgzjkUyOh4aGK+r6tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=AJkYqrVK; arc=none smtp.client-ip=136.144.136.128
Received: from submission12.mail.transip.nl (unknown [10.103.8.163])
	by outbound6.mail.transip.nl (Postfix) with ESMTP id 4gfnFX1GcCzwLHdX;
	Tue, 16 Jun 2026 15:02:08 +0200 (CEST)
Received: from [127.0.1.1] (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission12.mail.transip.nl (Postfix) with ESMTPA id 4gfnFW26Y3z3SJ37P;
	Tue, 16 Jun 2026 15:02:07 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
Date: Tue, 16 Jun 2026 15:02:05 +0200
Subject: [PATCH v2 2/3] dt-bindings: iio: st,st-sensors: add
 st,fullscale-milligauss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-2-063edcf74e60@herrie.org>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
In-Reply-To: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Denis Ciocca <denis.ciocca@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Denis Ciocca <denis.ciocca@st.com>, 
 Linus Walleij <linusw@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, devicetree@vger.kernel.org, 
 Herman van Hazendonk <github.com@herrie.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781614923; l=5598;
 i=github.com@herrie.org; s=20240417; h=from:subject:message-id;
 bh=CK33TNa9SheLY8lCX11VLFemMv+xC1hg4xSfmjqQv2Q=;
 b=z09ZgHaePo74W3jkJkUturnBGept6GYOOZ107fhh9YwTjWjsuj+i5+pRpTasmft+bVMUioZa/
 bJik5Km4t5SCPjIRb2z8ZbLs/DhZpFC2CW9mpW/FlsqCdqunf8rTdb1
X-Developer-Key: i=github.com@herrie.org; a=ed25519;
 pk=YYxdq8fb5O9vhkW3n2dCH044FPZZO5718v/du7fRhFw=
X-Scanned-By: ClueGetter at submission12.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1781614927; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=VAxElGXdunDODgznWU+hK4uck2vrkbcn6Yab79LlD1M=;
 b=AJkYqrVK6LvozlJfi/qeeGBH9qVMAzVRLqzx58I6NlMcoiCFwsMPd8WqXa3QjI/Z7wXXok
 IeL8zXVHppjBikmb9PftGmnGKF8oLm1BQyKAsAjYTXG5b5aYMAE7mirwYxvugXjiM7pE2F
 esNOjHLaGr+uk2rlMfvOk09cbpOi1MI90t3LHVuGFlDTlRRhPSs2a0Pyyt4WwvkDh4rWY0
 xkI45TvdFGq/D1CjxQGTno81J1+lj1a5dWUriwB/RrqBNFQbzSytF7eoL+QMeUzhhNZel/
 P/01tN9F0jQwvEbsH/wYtrfp08BVLRc0p9V5wLEf1jFo0wU7q8XGM7IoO9nhTQ==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:github.com@herrie.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,google.com,metafoo.de,st.com];
	DMARC_NA(0.00)[herrie.org];
	FORGED_SENDER(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-312545-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[github.com@herrie.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[herrie.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,herrie.org:dkim,herrie.org:email,herrie.org:mid,herrie.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 263EA68FC5A

Add an optional st,fullscale-milligauss property that selects the
initial magnetometer full-scale range at probe time, expressed in
milligauss.

The motivating case is the LSM303DLH magnetometer on the HP TouchPad
(apq8060 / tenderloin) where the kernel's chip-default +/-1.3 G range
saturates the X axis to the chip's 0xF000 overflow sentinel out of
probe, because the chip is mounted close to surrounding power planes
and picks up enough DC bias to exceed the smallest range.

The chip is not wedged by the saturation: a sysfs write of a wider
range to in_magn_x_scale recovers it on the next conversion, and a
UDEV rule on add of the IIO device is a viable steady-state
workaround. What the DT property buys is the probe-time window: the
in-tree consumers we use (sensorfw's iio-sensors-adaptor and the
geomagnetic / orientation services on top of it) start polling
in_magn_x_raw essentially as soon as the device node appears and
treat the 0xF000 sentinel as a legitimate sample. Until a UDEV rule
fires and commits the wider range, every read returns the stuck
sentinel, and on slow-boot paths the consumer may have already
cached a bogus calibration baseline by the time UDEV catches up.

st,fullscale-milligauss lets the device tree declare a wider
initial range up-front so the correct range is in effect before any
IIO consumer can open the device, and keeps the board-specific
magnetometer calibration alongside the rest of the hardware
description rather than splitting it between DTS and per-distro
UDEV rules.

The full property name is spelled out rather than abbreviated to
"-mg" because this same binding file already covers ST accelerometers
where the conventional shorthand "mg" reads as milli-g (acceleration);
the explicit "-milligauss" suffix makes the unit unambiguous if a
similar tunable is ever introduced for the accel/gyro/pressure
families.

The property is scoped to magnetometer compatibles via allOf/if-then
clauses, with per-family enum lists of the accepted milligauss
values (1300..8100 for LSM303DLH/DLHC/DLM, 4000..16000 for
LIS3MDL/LSM9DS1/LSM303C). LSM303AGR / LIS2MDL / IIS2MDC have a
single fixed full-scale (15000 mg) with no register to switch
ranges, so the property is rejected outright for them. DTSes that
misspell the value, place the property on an accelerometer /
gyroscope / pressure node, or set it on a fixed-FS magnetometer
fail dt_binding_check rather than emitting a runtime warning.

The property is purely additive: if absent, drivers fall back to
their existing chip default. No existing in-tree DTS is affected.

Assisted-by: Claude:claude-opus-4-7 dt_binding_check checkpatch
Assisted-by: Sashiko:claude-opus-4-7
Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 .../devicetree/bindings/iio/st,st-sensors.yaml     | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
index a1a958215cdb..f0805604c849 100644
--- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
+++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
@@ -126,6 +126,13 @@ properties:
   mount-matrix:
     description: an optional 3x3 mounting rotation matrix.
 
+  st,fullscale-milligauss:
+    description:
+      Initial magnetometer full-scale at probe time, in milligauss.
+      Per-chip allowed values are enumerated in the allOf clauses
+      below.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
 allOf:
   - if:
       properties:
@@ -163,6 +170,70 @@ allOf:
           maxItems: 1
         st,drdy-int-pin: false
 
+  # Per-chip enum lists for st,fullscale-milligauss. Out-of-range
+  # values fail dt_binding_check instead of being demoted to a
+  # runtime warning by the driver.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,lsm303dlh-magn
+              - st,lsm303dlhc-magn
+              - st,lsm303dlm-magn
+    then:
+      properties:
+        st,fullscale-milligauss:
+          enum: [1300, 1900, 2500, 4000, 4700, 5600, 8100]
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,lis3mdl-magn
+              - st,lsm303c-magn
+              - st,lsm9ds1-magn
+    then:
+      properties:
+        st,fullscale-milligauss:
+          enum: [4000, 8000, 12000, 16000]
+
+  # Single fixed full-scale, no register to switch: reject.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - st,iis2mdc
+              - st,lis2mdl
+              - st,lsm303agr-magn
+    then:
+      properties:
+        st,fullscale-milligauss: false
+
+  # Reject st,fullscale-milligauss on non-magnetometer compatibles.
+  # Keep this enum in sync with the three magn clauses above when
+  # adding a new magnetometer compatible.
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - st,iis2mdc
+                - st,lis2mdl
+                - st,lis3mdl-magn
+                - st,lsm303agr-magn
+                - st,lsm303c-magn
+                - st,lsm303dlh-magn
+                - st,lsm303dlhc-magn
+                - st,lsm303dlm-magn
+                - st,lsm9ds1-magn
+    then:
+      properties:
+        st,fullscale-milligauss: false
+
 required:
   - compatible
   - reg

-- 
2.43.0


