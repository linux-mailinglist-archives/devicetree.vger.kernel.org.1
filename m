Return-Path: <devicetree+bounces-260498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBWXB64uemlq3wEAu9opvQ
	(envelope-from <devicetree+bounces-260498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:43:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B82A44E1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 126923056482
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A86A42F659C;
	Wed, 28 Jan 2026 15:38:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD942ECD1B
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614723; cv=none; b=ZGPhtqaQX+4p90bVYeyAgqUSIb3D2o+fHhmnZX3pyJgNNPb/tCkSfwXtgi16J5BIncHjyEHKpGkeba1Utm7uLAv54h3uDj/Y3LWG+kp6jFclZQZ0Fc2fx822Z6yOylTeeHwq2HROT0x1dHcj2QK3XvC8OqsCYNkMqznp9+q0qSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614723; c=relaxed/simple;
	bh=8OlP/76Ew+hhf0/5eOzjr5oQG0D+UPVg93zLkxqIWvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gwELsSC26hh1WaUX3NoSqVzFw2CgOKYSDlB+Jv7fjOUfMlSCck4PZV17TvYoUoMmTgCsavjFzilnEL5d4/6oFDvw8DFuZzV1rRvJeC7BfQ2YqMTFB5Yw0MaCpxPAuZRkM4FsC8rBYN5v/nOM1H9gAh6Q75eKC3MpQNifCJZdMaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0003ot-Nh; Wed, 28 Jan 2026 16:38:26 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-002wSR-2p;
	Wed, 28 Jan 2026 16:38:26 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vl7cg-0000000FRAO-0SOw;
	Wed, 28 Jan 2026 16:38:26 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: [PATCH v3 5/8] dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
Date: Wed, 28 Jan 2026 16:38:21 +0100
Message-ID: <20260128153824.3679187-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260128153824.3679187-1-o.rempel@pengutronix.de>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260498-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C9B82A44E1
X-Rspamd-Action: no action

The Maxim DS4422/DS4424 and DS4402/DS4404 current DACs determine their
full-scale output current via external resistors (Rfs) connected to the
FSx pins. Without knowing these values, the full-scale range of the
hardware is undefined.

Add the 'maxim,rfs-ohms' property to describe these physical components.
This property is required to provide a complete description of the
hardware configuration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v3:
- Moved minItems and maxItems to the main property definition
- Refined property description to state that values depend on chip
  variant and hardware requirements, deliberately avoiding specific
  "typical" ranges to prevent unnecessary hard-limit enforcement.
- Corrected the rfs-ohms example to use a plausible value within
  datasheet typical range.
- Removed redundant constraint definitions from the allOf logic.
changes v2:
- make maxim,rfs-ohms a required property as the hardware range is undefined
  without external resistors.
- add allOf constraints to enforce 2 vs 4 items in maxim,rfs-ohms based on
  compatible string.
- drop explicit $ref for maxim,rfs-ohms to fix dt_binding_check warning.
- update example in binding to include the new required property.
---
 .../bindings/iio/dac/maxim,ds4424.yaml        | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml b/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
index efe63e6cb55d..4323df2036ac 100644
--- a/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
@@ -27,9 +27,43 @@ properties:
 
   vcc-supply: true
 
+  maxim,rfs-ohms:
+    description: |
+      Array of resistance values in Ohms for the external Rfs resistors
+      connected to the FS pins. These values determine the full-scale
+      output current. The actual resistance depends on the chip variant
+      and specific hardware design requirements.
+    minItems: 2
+    maxItems: 4
+
 required:
   - compatible
   - reg
+  - maxim,rfs-ohms
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - maxim,ds4402
+              - maxim,ds4422
+    then:
+      properties:
+        maxim,rfs-ohms:
+          maxItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - maxim,ds4404
+              - maxim,ds4424
+    then:
+      properties:
+        maxim,rfs-ohms:
+          minItems: 4
 
 additionalProperties: false
 
@@ -43,6 +77,7 @@ examples:
             compatible = "maxim,ds4424";
             reg = <0x10>; /* When A0, A1 pins are ground */
             vcc-supply = <&vcc_3v3>;
+            maxim,rfs-ohms = <40000>, <40000>, <40000>, <40000>;
         };
     };
 ...
-- 
2.47.3


