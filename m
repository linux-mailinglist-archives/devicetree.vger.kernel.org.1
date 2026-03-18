Return-Path: <devicetree+bounces-277211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEX4K6ejummyZwIAu9opvQ
	(envelope-from <devicetree+bounces-277211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:07:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA402BBF27
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D82263007A50
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399C23D6467;
	Wed, 18 Mar 2026 13:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FNdJbf1E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0369D33B6E3
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839265; cv=none; b=B5Xteu43hQw0BfbTNiT19uL0/UMlSlEtbnYqlt4Qbju+Vlg6N+e0UzufVfYPnTeCTM2CjkpI2TLJ73llwQHNW8nAxumOVo9faMrEJqY58EPohURUUmJhYaeL8hnbQx4+QSvncsdTXdd865WDpNpsnWaqVwsR7RAmdISXwoI93Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839265; c=relaxed/simple;
	bh=LfmrTgf/ojK7DT+NypOmSIL+kXWQlCzoNSxMkoXMuNc=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=LX9oBiOSM743VSPkhKHZJkaPHX2GM3skhWUFiuAzEw0CPXBtCElDbChpEzPrNFp80Ef/VqSq18HK0F/5FMcLRZ8WPL9g9fpG2JGAf/QzL5yPVgFz8VvZ1jvQgbiIVGQlrhS9p+Yq3PAerLZZrDeW6O5zBi0/DTBVSYbAUBD+vyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FNdJbf1E; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-359f35dfef6so3567811a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773839263; x=1774444063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sm0CcoDen686zb2q6eiuQx7mweJvAGSwVDuf2RW0DNs=;
        b=FNdJbf1E6strr40En/TPLv/ZGVls7OKTDSyAFC8ptjgsyMfCKklz9LmP+RFf1vyQQe
         ip84iElpM4i/IPfUhMxavJro30RDwVL4y4WbjHNiCGZAAN3gpYRjg2EyrjBI36iV0y1j
         Yy+GAcGI7rpLaeVlJTyu02+bYi/YPEQxmr1GsY9YPn9IXljt06WL+cL8SUeKTB5MSMOQ
         hENo/qBVaRRGtlPTVqukrM14hW1ZEQMJXJ1jMqswFH4GSCxW6PadP8Y6atf02VkNQIGG
         8Dxb2xsy8TZ9K0pLL8frTUGRzO3FkUSDIYAFEuP5pdSUeE8MJ70kFCozlr+7xoatPUBB
         Vg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773839263; x=1774444063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sm0CcoDen686zb2q6eiuQx7mweJvAGSwVDuf2RW0DNs=;
        b=bf/pa6enitMGWgIMX1uDPpt7vlwnaAOFP/u0yin+edWrGPK/bx7z1hey+w/BpjG781
         j/vnT/J/z56oSIK/vmdLI4Hw6oHZzwnkULNppqIA4U6A9wUHcC8zwGqqMz/r/uBAOUQC
         saeDhXfqZERrug4o2TuWyOgPWYk8UC+inE+bRPs/Ql/C98gIHNoZJKN4QXIHbTZ3X/fU
         iuFVQlWuNRouksgEk+uDdilm4qPWgmri9JyvdzsLOurwFvff2T1xc9GBYYM++/P9vCK+
         gS9gv3+eAUF6+Zr0yRr7vc1wJESWa+zZrfkMDPwRYGibGx3/MiCyUNueab9l75MkEui6
         mmKA==
X-Forwarded-Encrypted: i=1; AJvYcCVbt0oMImN/qlRcfSZ9modMctVEcHE9sCwl4vBwXo6y/GZuNKt/by1frX7mhIiKXuV7XFBsLZbu4+bU@vger.kernel.org
X-Gm-Message-State: AOJu0YwpwVc+roZcsNyCpg8ZqINA6h4oIzDG9gqVg9Y0iSoHWW3UI501
	KY4vGJlF/8TUR+5XvMm39sM0/uG+HqbEYJCTWb9k9rItXEqZBIuMbjTb
X-Gm-Gg: ATEYQzydOOrl1bPQSNgrW9CixF/msjB99n+WFzCoIyGngHfYh2lGNKeP689NH18haEW
	UyS8PkO+suL8IedrqGCBqOm+FXlvD3eJBgARhU5xbaFopyiegLmPy+TtriKC5Lgmc3zqomHEAHd
	qKPw3zb5pU5PcnvxRtldWWZQdI/xNKTXZihLnJ6rYjNwu53ncNzO2N6m7fbasaV+vmADmO1IfYc
	a9BFM453ZvkjTu0k7EnVq1f5Pms9ikPGX0FjfosmOucBCukmM39oj1rGtmA3gfLakjzBwxGjvWs
	oYv8YID2PrgQzdvdhYkQGBXsYTEgyhbcoLlmNUdO66xXj4sexE7eGyJiqdD5j/A0tZSbgyzolKX
	8nPDWiMD7mP+rgCuwqeJKy6BgvcnsgCfl46fM2JXbLQj+kCy+JEQ58nFDa/0ffd87Y51hZkgspP
	lHzbWW7zOjSkojrpsluoh+1upUg3WTDLNS0Xec33Zo22pSAxjuUqT06CnNpRVl3o1Ub1tT7xMQp
	femwXKD2zQSw6mmfWZGs10t5d7u49JYVERwFAFt
X-Received: by 2002:a17:90b:17cd:b0:35b:96bb:47b9 with SMTP id 98e67ed59e1d1-35bb9efae60mr2420291a91.19.1773839263179;
        Wed, 18 Mar 2026 06:07:43 -0700 (PDT)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2401:4900:881f:243e:f3ca:95c3:4873:c02b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcda60sm6205760a91.14.2026.03.18.06.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 06:07:42 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: lars@metafoo.de,
	nuno.sa@analog.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] ASoC: dt-bindings: adi,ssm2305: Convert to DT schema
Date: Wed, 18 Mar 2026 18:37:33 +0530
Message-Id: <20260318130733.52477-1-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277211-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: ABA402BBF27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the SSM2305 speaker amplifier binding from text format to
DT schema to enable dtbs_check validation.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v3:
- Fix Signed-off-by placement
- Replace "YAML schema" with "DT schema" in commit body
- Add missing Reviewed-by tag

Changes in v2:
- Fix subject prefix to ASoC: dt-bindings:

 .../devicetree/bindings/sound/adi,ssm2305.txt | 14 ------
 .../bindings/sound/adi,ssm2305.yaml           | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.txt
 create mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt b/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
deleted file mode 100644
index a9c9d83c8a30..000000000000
--- a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Analog Devices SSM2305 Speaker Amplifier
-========================================
-
-Required properties:
-  - compatible : "adi,ssm2305"
-  - shutdown-gpios : The gpio connected to the shutdown pin.
-                     The gpio signal is ACTIVE_LOW.
-
-Example:
-
-ssm2305: analog-amplifier {
-	compatible = "adi,ssm2305";
-	shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
-};
diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
new file mode 100644
index 000000000000..b841da2dc284
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/adi,ssm2305.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices SSM2305 Class-D Speaker Amplifier
+
+maintainers:
+  - Lars-Peter Clausen <lars@metafoo.de>
+
+description:
+  The SSM2305 is a filterless, high efficiency, mono 2.8 W Class-D
+  audio amplifier with a micropower shutdown mode controlled via a
+  dedicated active-low GPIO pin.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: adi,ssm2305
+
+  shutdown-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the shutdown pin (SD) of the SSM2305.
+      The pin is active-low; asserting it puts the device into
+      micropower shutdown mode.
+
+required:
+  - compatible
+  - shutdown-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    analog-amplifier {
+        compatible = "adi,ssm2305";
+        shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+    };
+
+...
-- 
2.34.1


