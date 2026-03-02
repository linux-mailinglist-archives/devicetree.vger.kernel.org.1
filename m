Return-Path: <devicetree+bounces-270106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIHQIoKvpWleEQAAu9opvQ
	(envelope-from <devicetree+bounces-270106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:40:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5CD1DC059
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C87130532B4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D73A41324B;
	Mon,  2 Mar 2026 15:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egeu3r5u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F002411619;
	Mon,  2 Mar 2026 15:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772465764; cv=none; b=Dia82no5lE0KfWAqlQJcI56lJYbHboMnW2TDYJ+z92nEAdAyqXBcFAXeKAytx4vAd1Oad6XNVkEoSolnUSkV/oII+tG1lSVjcDnF2vEA9bE6hekrLeon5EbJxlR7KzNjP4BhvGS6jQUvS05cEtsJYIKgxy+REKRrVntpH/oxen8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772465764; c=relaxed/simple;
	bh=CYDoAqYz0+vG1YQhjmnYaSQHBJESLZPbzW7By0gNSOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k64Sm2M9uxe5agLMcsBfSa715f7D+51nxugOrhMUdCKlymiN0e2kajy0/HAUGTO//oBX6lETf50pSQSIHcfLrjMCVpvMaAmdpesSn2yFT6V+DzDUld1Xy9wEG9OCy/yUT4LlPPOv9dOgSvrQ4lKxjc/LoaYqcAPriYTdY2Psavg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egeu3r5u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06CB4C19423;
	Mon,  2 Mar 2026 15:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772465764;
	bh=CYDoAqYz0+vG1YQhjmnYaSQHBJESLZPbzW7By0gNSOo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Egeu3r5uSdNJbTroxXrYZTsIzdwvS/kLOLoawApPgryLcShe9eV0nus7z5+cCpzz2
	 YUhZS6tmboo/GQMxAN3a2dU+LY5yuUf2mfzTfoic39T7q9MgvHS6nG0P3Ms+y+uW8C
	 DgDwO0bvQZGN+Gk3sru6L8Z/5w4NblvhElu/C1LBCSBiOP+zAPbZITv91Romuyi4W0
	 8Pw90etuB6iEYCHEhHH3VxQw8jzAtDua/feEeeQbynK21dN4piIT0tL52DnHxaVG89
	 Dob2x/UKFCXAu79eu3UbsJ+6P081awMfZMXJclpgQdVaY6XWP0x2EEoYgKMzvnP79L
	 LTZzxts9cSWUQ==
Received: by wens.tw (Postfix, from userid 1000)
	id 188D35F95F; Mon, 02 Mar 2026 23:36:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/3] spi: dt-bindings: sun6i: Allow Dual SPI and Quad SPI for newer SoCs
Date: Mon,  2 Mar 2026 23:35:56 +0800
Message-ID: <20260302153559.3199783-2-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302153559.3199783-1-wens@kernel.org>
References: <20260302153559.3199783-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2C5CD1DC059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270106-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,csie.org:email]
X-Rspamd-Action: no action

Support for Dual SPI and Quad SPI was added to the Linux driver in
commit 0605d9fb411f ("spi: sun6i: add quirk for dual and quad SPI modes
support") and commit 25453d797d7a ("spi: sun6i: add dual and quad SPI
modes support for R329/D1/R528/T113s").

However the binding was never updated to allow these modes. Allow them
by adding 2 and 4 to the allowed bus widths for the newer variants.

While at it, also add 0 to the allowed bus widths. This signals that
RX or TX is not available, i.e. the MISO or MOSI pin is disconnected.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---

Changes since v1:
- Moved "allOf:" block after "required:" block
- Dropped "type:" from child node in conditional block
---
 .../bindings/spi/allwinner,sun6i-a31-spi.yaml | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
index a6067030c5ed..6af4ff233158 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -6,9 +6,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A31 SPI Controller
 
-allOf:
-  - $ref: spi-controller.yaml
-
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
   - Maxime Ripard <mripard@kernel.org>
@@ -82,11 +79,11 @@ patternProperties:
 
       spi-rx-bus-width:
         items:
-          - const: 1
+          enum: [0, 1, 2, 4]
 
       spi-tx-bus-width:
         items:
-          - const: 1
+          enum: [0, 1, 2, 4]
 
 required:
   - compatible
@@ -95,6 +92,28 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: spi-controller.yaml
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - allwinner,sun50i-r329-spi
+                - allwinner,sun55i-a523-spi
+    then:
+      patternProperties:
+        "^.*@[0-9a-f]+":
+          properties:
+            spi-rx-bus-width:
+              items:
+                enum: [0, 1]
+
+            spi-tx-bus-width:
+              items:
+                enum: [0, 1]
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


