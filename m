Return-Path: <devicetree+bounces-259264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJUIJ/A2dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:29:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4134B81342
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9DD8A3001002
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302DA3242BA;
	Sun, 25 Jan 2026 15:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fNGwNrde"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF763164B8
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354989; cv=none; b=MgPvu3Li+glqllSjcFsdnU9tsIMNr3v2g6LoMwmB1aTiNLwlSWxFsnAB4jJF1UUCJaMghgftA1dBJYRPOdFYd5BJRtIcFCIgFIfPx6wZOumbElLJrpc+ozbnacbAJNVlxDYhHi6aeQ+9sZmQMOcsqVuvtAsjxTfB998qwzxQ9cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354989; c=relaxed/simple;
	bh=E7A9c27yUqkUqACBSnmKRI2cuBoHgawSFZnfB30gBd0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qLzsL3WmXDJE0GGsrz3XKD8SeUW6zYBy+fxyuqEdn7L8CXL+2oMPyZp3lDzTvs4XNtFu0jUDOBedUSNDsgnljLx+RVpj7hpNq267gn7I+3wm1b1EjDFOb2M8Wp86o8PJAHk8IvtQrWPMpfkpMhZCfooBR4yE02DRRDmfFHufja8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fNGwNrde; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so6051356a12.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769354986; x=1769959786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opwAzXZXGpL/t9kjdWql8KWUaKqEP4kujq0iT4W20S8=;
        b=fNGwNrdepw7oYaIRFPK4bX1+DT7mszB/Pa2XbpR7OnhsDFdZtC1w/YBPMrdRCsvGel
         PQRSQnY8NnPZxlomlRoJlvy2Ru1OgVuHK/fCc24vS5722LZvAX/89++Ek5W/JiIroh+Q
         CV0z8HZj9/7dFxvYvJBYVxt7TANH3Fq/iwIO1hVf9q86TTI7W8HPAFI6Pstt/nKt+C+j
         QkjfFym+bYXEb1jfikpDszDY/A76Ypa6uKm4CicfVGAzNukZ5aXl5HVAPWVERudu1mmy
         spg7c5Qz57aB/cEcXcelPNciwJIzrcUsp2aqMznmOVGrzHeGGDfGoIPNaMUwQ/shGyec
         ageQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769354986; x=1769959786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=opwAzXZXGpL/t9kjdWql8KWUaKqEP4kujq0iT4W20S8=;
        b=VIxjbrciM1ZXdM+OeMqtPI6AIDaHGqoTDIvJLoVOfiz0Xfr5mqoCZzFTDu+lG2yyPv
         cm7KJ71G6rbUq3P0aaYq2xzJ63RmDeH3VjS7kqigeMqR1tsoU7D+5Ey90CKTor4W021K
         uEwh6BBBYLQcZPYz3F4ySkVIXXns90MRfEIDSPIKOU1g7G2qPNYdIBj/Tnb8LpE7lldw
         gXLLGBxxYAgd2satb04FbjDuU76/5XMvyepM0Ixs+tLJQe8SoOXnGQ0Vg0cAIzrAlMSG
         s/4nz/D9B47rfvoLRvxVcgrq7ZF8YUG+hapReV/uxsQjaTjaeYv9ukOuKIfRYLRLn8Tc
         6YLg==
X-Forwarded-Encrypted: i=1; AJvYcCV3T3GUJ1FuHdCXvjQiPgFOdfNu7BZT8/EuK+rhFzDLdaunfYpJE9K/mAuaUEi5gPR9OrmOUhtn4s44@vger.kernel.org
X-Gm-Message-State: AOJu0YyrgkXaGttTiPZNyklXWuFQ/VZTIZXt0yOTSIMisdj55kCPF6EC
	fbcRI5xBxCsAIMeNAOSucsA3KmL0vTSEgPyZGQSOMFd2pqXmhlfWVuLD75TEtCYB
X-Gm-Gg: AZuq6aJ/q4i+TYHHAq0EGzI0bkQfa+A+qVEc+o0mPraq18dHoFBoXHvIryUutS3q9qR
	wwAevjvKaUpXDA/9KTWmp1NvBZJhKzzteP4aA+esUDAoaRD2Fmf+1viTZoOCPZ+eMsZfwY29zcp
	OIEbXWaxx4ujm/httECQgZQmm99Q1iS17hn3FCEVcG+TAp/wz2eFX2KhGIXB83HHNn5+WKIrIAJ
	YM5j6xuoPOIJvqWio/kkz/VEcD7ZnwSU8GPw+EzbP/YjnIM2bebult40zpRd45a05z+yMaRKyrA
	RbbW1cOgHhEzEiceyLPnYvEE5Z7/J3uwakJUF4/I+oWwZTvICsSgWEQmeKKQNuOpaW06B+/hLS5
	+npXrHoyN9nU8hRm/+ohuoePug8CrNgaTrnPVWY2gbi7RQE0/q63Kx9Zqb1KBKiCV7BfemrUDj/
	Ex
X-Received: by 2002:a05:6000:2483:b0:435:bdc0:48e9 with SMTP id ffacd0b85a97d-435ca1ab666mr2383866f8f.55.1769348600123;
        Sun, 25 Jan 2026 05:43:20 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c246ecsm22459688f8f.10.2026.01.25.05.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:43:19 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 07/10] dt-bindings: input: cpcap-pwrbutton: convert to schema
Date: Sun, 25 Jan 2026 15:42:59 +0200
Message-ID: <20260125134302.45958-8-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125134302.45958-1-clamor95@gmail.com>
References: <20260125134302.45958-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259264-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4134B81342
X-Rspamd-Action: no action

Convert power button devicetree bindings for the Motorola CPCAP MFD from
TXT to YAML format. This patch does not change any functionality; the
bindings remain the same.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
 .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
 create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml

diff --git a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt b/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
deleted file mode 100644
index 0dd0076daf71..000000000000
--- a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Motorola CPCAP on key
-
-This module is part of the CPCAP. For more details about the whole
-chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
-
-This module provides a simple power button event via an Interrupt.
-
-Required properties:
-- compatible: should be one of the following
-   - "motorola,cpcap-pwrbutton"
-- interrupts: irq specifier for CPCAP's ON IRQ
-
-Example:
-
-&cpcap {
-	cpcap_pwrbutton: pwrbutton {
-		compatible = "motorola,cpcap-pwrbutton";
-		interrupts = <23 IRQ_TYPE_NONE>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
new file mode 100644
index 000000000000..643f6b2b1f13
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/motorola,cpcap-pwrbutton.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC power key
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  This module is part of the Motorola CPCAP MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
+  power key is represented as a sub-node of the PMIC node on the device
+  tree.
+
+properties:
+  compatible:
+    const: motorola,cpcap-pwrbutton
+
+  interrupts:
+    minItems: 1
+    description: CPCAP's ON interrupt
+
+required:
+  - compatible
+  - interrupts
+
+additionalProperties: false
+
+...
-- 
2.51.0


