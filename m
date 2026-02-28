Return-Path: <devicetree+bounces-269469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIbnLepLommH1gQAu9opvQ
	(envelope-from <devicetree+bounces-269469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:59:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE411BFD51
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FFB830FE8CA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64FF2FD691;
	Sat, 28 Feb 2026 01:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="SD1wmzrE";
	dkim=permerror (0-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="xGG6EyKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mainlining.org (mail.mainlining.org [5.75.144.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F802FDC37;
	Sat, 28 Feb 2026 01:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.75.144.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772243869; cv=none; b=IJshqEA+yfINsYhwQqVUi9/r3ipPY/ULEx2GXx6cclMYzAvEBKe3jHxL9X/S/+EEuOm5zMXvZhRPnmU4rG3eOi5emULBxXDNp2LUNX4LJy5Smot9mgNtCG9egH4Dz2HetYtYZFnbcZlH0gZ8NZdY8GYmiC/tfyvxH8pexKGMAP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772243869; c=relaxed/simple;
	bh=hLEJw7NfpeakgWD5ooAEJP4vVxpcsaKGoIj7IO2V05M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HPEWTVUMTj2EzcJo8xeEFAq7sPz1y1JyVHHQ7udtZzhMkMTaD77RO6ANJA0sJTiGhIat82HnJoY67rywkkpEC/H+Kz6NIXQadwLxb33s2GzIkz83MZiNMeRwvDjCrHSn+CPh81/u/Th7JLm/Cg5u8+mLCbDiQ7QowY8FdlpTb/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mainlining.org; spf=pass smtp.mailfrom=mainlining.org; dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=SD1wmzrE; dkim=permerror (0-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=xGG6EyKO; arc=none smtp.client-ip=5.75.144.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mainlining.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mainlining.org
DKIM-Signature: v=1; a=rsa-sha256; s=202507r; d=mainlining.org; c=relaxed/relaxed;
	h=To:Message-Id:Subject:Date:From; t=1772243805; bh=d7WI4CCze1zokydljk3Xtok
	4i1TlNCgc0AyutExxLSc=; b=SD1wmzrEZdu7TtG1zGrpXFZFio8MT5TVivjARxgNUidfbAjhl/
	jvIRPlliBvg9W1J5wjwhgyqHSaZY0sZESgzKCPtOSWEn99gFi8hh+t1ymqjSqu//DoRifbN3bkB
	8XBlpr/lEf+f21/EaS5/k0GyVbbV39YHvpclsanUrE9JDLNYID9klScFbQZ3G3PXszObW9A5C0a
	u0bqMVbpCMe2cD9DK2a2+W243HhITrvYdo7Ynkk38INSfOvNzq3eF0G7QP4rERxCas2Www7G4gh
	50E+IbT3O+wT2B4Bn4d3aKhWZEdi0GaM2z9GMeKLltLA6Ah58qwfuSrof+vBVWgp4rQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202507e; d=mainlining.org; c=relaxed/relaxed;
	h=To:Message-Id:Subject:Date:From; t=1772243805; bh=d7WI4CCze1zokydljk3Xtok
	4i1TlNCgc0AyutExxLSc=; b=xGG6EyKO0YJR+0/e0LFzVEBPDhitJCsjVDVV8LTzw5Oq9eMrHk
	EI0eq/u1TRPtAeeEUrm89ppbfstYMnUxDsDQ==;
From: Aelin Reidel <aelin@mainlining.org>
Date: Sat, 28 Feb 2026 02:56:10 +0100
Subject: [PATCH v2 1/3] dt-bindings: input: document Goodix GTX8
 Touchscreen ICs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gtx8-v2-1-3a408c365f6c@mainlining.org>
References: <20260228-gtx8-v2-0-3a408c365f6c@mainlining.org>
In-Reply-To: <20260228-gtx8-v2-0-3a408c365f6c@mainlining.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Henrik Rydberg <rydberg@bitmath.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux@mainlining.org, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Aelin Reidel <aelin@mainlining.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mainlining.org,reject];
	R_DKIM_ALLOW(-0.20)[mainlining.org:s=202507r,mainlining.org:s=202507e];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269469-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,bitmath.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aelin@mainlining.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mainlining.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mainlining.org:mid,mainlining.org:dkim,mainlining.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EE411BFD51
X-Rspamd-Action: no action

Document the Goodix GT9886 and GT9896 which are part of the GTX8 series
of Touchscreen controller ICs from Goodix.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aelin Reidel <aelin@mainlining.org>
---
 .../bindings/input/touchscreen/goodix,gt9886.yaml  | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9886.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9886.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..6307495c2746313cfc32cdbb701455d1596be435
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9886.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/goodix,gt9886.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Goodix GTX8 series touchscreen controller
+
+maintainers:
+  - Aelin Reidel <aelin@mainlining.org>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - goodix,gt9886
+      - goodix,gt9896
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply regulator on AVDD pin
+
+  vddio-supply:
+    description: power supply regulator on VDDIO pin
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - touchscreen-size-x
+  - touchscreen-size-y
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      touchscreen@5d {
+        compatible = "goodix,gt9886";
+        reg = <0x5d>;
+        interrupt-parent = <&gpio>;
+        interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+        avdd-supply = <&ts_avdd>;
+        touchscreen-size-x = <1080>;
+        touchscreen-size-y = <2340>;
+      };
+    };
+
+...

-- 
2.53.0


