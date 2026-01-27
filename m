Return-Path: <devicetree+bounces-259733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sATdIvBWeGkNpgEAu9opvQ
	(envelope-from <devicetree+bounces-259733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:10:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 023D290445
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 607EA304A558
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F25331A46;
	Tue, 27 Jan 2026 06:09:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BA932D0C2
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769494191; cv=none; b=A1nO8jSf0B0wtMCmgXy8YmcizB8XjGUUeE62DdmsxmkfOWs3SL7vfTUerL8m1PR4M9YBU2e69jR1IRqEOj/WSX5Rbhaq4iwYzrWrTXNSWBHqB1ACKKEmaKH5iZ9nc7sQ6Z9/QotYEdbfHSBjwH6yKj+nSzJzfib5RpW0okNFjRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769494191; c=relaxed/simple;
	bh=tlOEm1BPNblfpRZaqxme09QCM+gvLrWtWYFzJqX7T/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sEfDqPYjdgPRFyA9YY3uPheqKGmBZhEdzsdhfPxq09NXkfZxDCBjdqO2rMKEai2PuSzUNfXZf6w9LLkSaOdhgaLsfv0M7S1zRDCXIxiDPbYktmZetjCdxB7yXX3nCOvMDIlAb6qKY8Q8Pyy62zJiGWx54IKZuy+grvLHeO8C4c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGk-0003pZ-0D; Tue, 27 Jan 2026 07:09:42 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGj-002hiJ-2s;
	Tue, 27 Jan 2026 07:09:41 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vkcGj-0000000GQEt-0aHo;
	Tue, 27 Jan 2026 07:09:41 +0100
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
Subject: [PATCH v2 2/8] dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
Date: Tue, 27 Jan 2026 07:09:33 +0100
Message-ID: <20260127060939.3914006-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127060939.3914006-1-o.rempel@pengutronix.de>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259733-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 023D290445
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
changes v2:
- make maxim,rfs-ohms a required property as the hardware range is undefined
  without external resistors.
- add allOf constraints to enforce 2 vs 4 items in maxim,rfs-ohms based on
  compatible string.
- drop explicit $ref for maxim,rfs-ohms to fix dt_binding_check warning.
- update example in binding to include the new required property.
---
 .../bindings/iio/dac/maxim,ds4424.yaml        | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml b/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
index efe63e6cb55d..400afd8771aa 100644
--- a/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/maxim,ds4424.yaml
@@ -27,9 +27,44 @@ properties:
 
   vcc-supply: true
 
+  maxim,rfs-ohms:
+    description: |
+      Array of resistance values in Ohms for the external Rfs resistors
+      connected to the FS pins.
+      - For DS44x2 (2 channels): 2 values required.
+      - For DS44x4 (4 channels): 4 values required.
+      Typical values range from 40000 (40 kOhm) to 160000 (160 kOhm).
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
+          minItems: 2
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
+          maxItems: 4
 
 additionalProperties: false
 
@@ -43,6 +78,7 @@ examples:
             compatible = "maxim,ds4424";
             reg = <0x10>; /* When A0, A1 pins are ground */
             vcc-supply = <&vcc_3v3>;
+            maxim,rfs-ohms = <5100>, <5100>, <5100>, <5100>;
         };
     };
 ...
-- 
2.47.3


