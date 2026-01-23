Return-Path: <devicetree+bounces-258836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBQgFU5Cc2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:41:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD32073894
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DBF3308DB72
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F7636AB53;
	Fri, 23 Jan 2026 09:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bUVGLMgC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A803136999F;
	Fri, 23 Jan 2026 09:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160837; cv=none; b=a3VlDusyvmkiWbqD7L1J9qdWCFHcZa3t7O/8sQ19go5duTffloVaQFagwnMTH/G7kOu48/DP9m0euwnwjQiC6Y3a33PA2Lt9+jvBZiD/XyHbQgZwzrJjSGq+cxrVO/kfLy7W1h2/vVPURhe097gyKs8n0tEMBSnpAbIpOWoKI+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160837; c=relaxed/simple;
	bh=in40fZfBJur7b2gTli4i7mrCZHp27MkqzsX2uoHgeGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rzytR+i8qzUc32tyIRRMqa4hjx2sp1bHhwQCG4WpX5PpSfKWKhX+j1UmvOXac/x6FG5HntLmLeU1eEb6XS9Dh+56QXo8/HRWmCmliOxVwrm/GDaBVX6OpPp4Ts66LoF8zMBNnhbuA0vGOburUFWMcqtowchT//wUNBGjfJ2OCPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=bUVGLMgC; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0697F1A2AFF;
	Fri, 23 Jan 2026 09:33:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CF3396070A;
	Fri, 23 Jan 2026 09:33:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 306B6119A879B;
	Fri, 23 Jan 2026 10:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769160825; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=AumlAK3D+nBnNV49+1NREtHq21qZzWdFJkGV6lEmtAE=;
	b=bUVGLMgCg9aRioam0lpyysvJCDaFLPOQhcfrTllGrrS2jyDuwMQsvJt0DH1KGe21byYjyQ
	41mr/zGLcvhgMk9BaH0tjgwJexMTkbGFsE9h5FbgUppqrr2C+pI7BhTNDqBVAswNn3sANl
	15BCg7BQMN1ocXNcO/FTGVaPaCmm8dz53qKRXeDisqC6/8Xen0AISJG7L8F6+qVmo3vtbx
	hR7tZQMi/x9RFsadJ181ywUbVyPO70D76TnEuYASXgXL69s5WYrUQ0QNvqJaohq1p7JNMu
	HatsgjnC6FWSEKDH21MhK8x8m/hCTBp+MX7YqjKJaNgB+nl25oLFHe4qzRqDLw==
From: Richard Genoud <richard.genoud@bootlin.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Paul Kocialkowski <paulk@sys-base.io>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH v3 1/4] dt-bindings: pwm: allwinner: add h616 pwm compatible
Date: Fri, 23 Jan 2026 10:33:19 +0100
Message-ID: <20260123093322.1327389-2-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260123093322.1327389-1-richard.genoud@bootlin.com>
References: <20260123093322.1327389-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,csie.org,gmail.com,sholland.org,pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258836-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard.genoud@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD32073894
X-Rspamd-Action: no action

Allwinner H616 PWM block is quite different from the A10 or H6, but at
the end, it uses the same clocks as the H6; so the sun4i pwm binding can
be used.
It has 6 channels than can generate PWM waveforms.
If the bypass is enabled (one bypass per channel) the output is no more
a PWM waveform, but a clock that can (and is) used as input for other
devices, like the AC300 PHY.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
index 1197858e431f..4f58110ec98f 100644
--- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
@@ -14,6 +14,9 @@ properties:
   "#pwm-cells":
     const: 3
 
+  "#clock-cells":
+    const: 1
+
   compatible:
     oneOf:
       - const: allwinner,sun4i-a10-pwm
@@ -36,6 +39,7 @@ properties:
           - const: allwinner,sun50i-h5-pwm
           - const: allwinner,sun5i-a13-pwm
       - const: allwinner,sun50i-h6-pwm
+      - const: allwinner,sun50i-h616-pwm
 
   reg:
     maxItems: 1
@@ -62,7 +66,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: allwinner,sun50i-h6-pwm
+            enum:
+              - allwinner,sun50i-h6-pwm
+              - allwinner,sun50i-h616-pwm
 
     then:
       properties:
@@ -83,6 +89,17 @@ allOf:
         clocks:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: allwinner,sun50i-h616-pwm
+
+    then:
+      properties:
+        "#clock-cells": false
+
 required:
   - compatible
   - reg
-- 
2.47.3


