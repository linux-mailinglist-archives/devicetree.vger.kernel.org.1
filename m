Return-Path: <devicetree+bounces-269666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF49GLzIo2nCMwUAu9opvQ
	(envelope-from <devicetree+bounces-269666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 06:03:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A75041CE88D
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 06:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23CB1301FF93
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 05:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E2B296BC1;
	Sun,  1 Mar 2026 05:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZznFKDjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC111C549F
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 05:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772341432; cv=none; b=Jq1jVm89xN9gmAQp2WzOZcSWUshXWckQrOHkIUbxVQ7HfsCFzSD/+4gEsePRN4gt8THJqFkeNxW3JcQrGDYGxsJiyr33VlDE5VWmkVofT67AbxhAvj5mXCXTSwDTx4Y2JG5zoOO0G1dq4QWPDYGOVizFIGYXZMXWE59ZfG+8V04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772341432; c=relaxed/simple;
	bh=RlGTf/4H4OU8apDC6e/Zd5qyUgBMbtGB47+4tk66DyQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=u0j/cD0ibLQY0adGN56ICEnvsb/RTRCCv/lgaIIL1osCAdsYfPJlUwMbu40VDegm5nHx5fJ14mS1ljU1wEqHX5xADCGu9y0OvqlIi/KR/Jg8OJwVAVMiNUaMIPCu8T5PccZiU84V9nbe19UrQtCR5GK0JT+CxkVAPaXRHy+bUgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZznFKDjc; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c70c38515d3so208247a12.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 21:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772341431; x=1772946231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j1rjWnBPITQNfNMdhrBH9I2uYG+cgvDp41PZgspKsNU=;
        b=ZznFKDjcURmSB67gW/y3pwatascniIaFbSDIQVRAc3+TIN9MrDF0dt14bFIhkJgqrv
         ImzEMllb0XsrUF2k/iskvJWcVGC1OcK1tEhRghiQUx3BoeTkcfJziN5IsiJ2z/L72VMg
         QZiHFlBdLHZkgdnTfPiiIRo+UffQCb3mDx7WhO94NwabRpTz3u5pL9f9QGtRgvlQCGYx
         7/payV2E9Tnqmo87KCkVe18sEZr4huOQgVgKNMSu21xSpThPlxDB09TSXs/jgx0PCfM3
         zdoilCzHZ2g/hfWx0aqVOHiaHFgLdC3q6XAHGRvvqlupHHhMI8jZ2niWDUSdibrQ8EaR
         A1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772341431; x=1772946231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1rjWnBPITQNfNMdhrBH9I2uYG+cgvDp41PZgspKsNU=;
        b=RxdzwsUGiKQ/c3tH45L1uuD7A5WElg855vE7CR5j7HaN/Lsv+MAADFM2/lQATeBEd0
         tZADDd/58x2cpxvhypFi25yyjoIdrliRFC24thC4aNE/psczk9XVFGzs2/DOuOn9sUzA
         JNgXqAAq62xS/EwqABFRR3d8HEsBfEO+J+jRd3CS9zF6c/4EcteylVOigouiy3qZtkO5
         woLjgACoUOtnM7Dh7HhM3du5G07mJyBER+kFzhp10iJvoa6DfmRwCp9QXlRUe7OzDf/S
         LJNQJg+PTHIJAh/u/f9v6qB1cCFfd6lxP8SQ1iP0UD0Cpz4XQO4y0kNv5pap8+X0QwBf
         HwEA==
X-Gm-Message-State: AOJu0YyYsXVpbz+w8X5SkEi/1GGYntjU6QD0LjDTZrXWSVagvZYs5g6Q
	GJ07lRNxJALZySp24Fqp6g/WJGThWxdbVjyv93QL4nWS+/qURj4Git+m
X-Gm-Gg: ATEYQzyKar6g6z4Pz5uHWMg6QdPovXFIJs49vKXMEnk5/WqHYMCpxVaTewQ7YLXNvtL
	LzKM39KTSjs9ctbpw2cSxhyhk2J2O8/Y4fNV0Ed9I8qKbqV4s/KHli+EIhf/GqdL4NDyo29M2Uc
	1XV6lBAZL8o7MQlKRRBcAXKcXSU/1rNiNeF99FbDllbZ8vf+Ou5E9jXtTAahHsKoJP6fcQddmZW
	YRYodulK4bDtD9xP3jUCe2Z+4trXwb2Cr78oQAj7/pjqMddu4VZOoxskLCcS4/I9BoMNpBFiXYv
	Hju6QIAV/ylzfppkxQDjjOEL5Xhw8j7BIt5dW/PgrJqI/4d7jPjRd+d5y4PjJtrTTbEhTb/IXFy
	a3TFkEjlUw2FfUSYlp2fKO5eNnrRJ7D3aqg1xsG2MkGcYAfEXete0stxNmDECU9u84yGm6unnYh
	ofC/VOsqCkG/anaGc3i4lY9XulTLNhv6GZQ3aqtV4JgBW7G/bUotJCG/eu06SvpNv8ibgzEEc3M
	OpDNVo0k5KECA==
X-Received: by 2002:a05:6a00:2e98:b0:81f:44bc:8714 with SMTP id d2e1a72fcca58-8274d966ec6mr6166940b3a.2.1772341430810;
        Sat, 28 Feb 2026 21:03:50 -0800 (PST)
Received: from cute.. ([2405:201:31:d01f:a5d:5f1a:a014:e1f5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a0571acsm9601038b3a.55.2026.02.28.21.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 21:03:50 -0800 (PST)
From: Soham Kute <officialsohamkute@gmail.com>
To: hvaibhav.linux@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Soham Kute <officialsohamkute@gmail.com>
Subject: [PATCH] dt-bindings: greybus: Document google,arche-platform
Date: Sun,  1 Mar 2026 10:33:43 +0530
Message-Id: <20260301050343.23258-1-officialsohamkute@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269666-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[officialsohamkute@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: A75041CE88D
X-Rspamd-Action: no action

Document the Google Arche platform which enables the Unipro
link between the application processor and the SVC in a
Greybus-based system.

Signed-off-by: Soham Kute <officialsohamkute@gmail.com>
---
 .../greybus/google,arche-platform.yaml        | 71 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/greybus/google,arche-platform.yaml

diff --git a/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml b/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
new file mode 100644
index 000000000000..6e176efc264a
--- /dev/null
+++ b/Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/greybus/google,arche-platform.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Arche Platform
+
+maintainers:
+  - Vaibhav Hiremath <hvaibhav.linux@gmail.com>
+
+description:
+  The Arche platform driver enables the Unipro link between the
+  application processor and the SVC (Supervisory Controller) in
+  a Greybus-based system.
+
+properties:
+  compatible:
+    const: google,arche-platform
+
+  svc,reset-gpios:
+    description: GPIO used to reset the SVC
+    maxItems: 1
+
+  svc,sysboot-gpios:
+    description: GPIO used for SVC sysboot signal
+    maxItems: 1
+
+  svc,refclk-req-gpios:
+    description: GPIO used to request the SVC reference clock
+    maxItems: 1
+
+  svc,wake-detect-gpios:
+    description: Bidirectional GPIO for wake/detect signal between AP and SVC
+    maxItems: 1
+
+  clocks:
+    description: SVC reference clock
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: svc_ref_clk
+
+  svc,reset-active-high:
+    description: Present if the SVC reset GPIO is active high
+    type: boolean
+
+additionalProperties: false
+
+required:
+  - compatible
+  - svc,reset-gpios
+  - svc,sysboot-gpios
+  - svc,refclk-req-gpios
+  - svc,wake-detect-gpios
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    arche-platform {
+        compatible = "google,arche-platform";
+        svc,reset-gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+        svc,sysboot-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+        svc,refclk-req-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+        svc,wake-detect-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+        clocks = <&svc_ref_clk>;
+        clock-names = "svc_ref_clk";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index e08767323763..46cb6825f4d6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10886,6 +10886,7 @@ S:	Maintained
 F:	drivers/staging/greybus/arche-apb-ctrl.c
 F:	drivers/staging/greybus/arche-platform.c
 F:	drivers/staging/greybus/arche_platform.h
+F:	Documentation/devicetree/bindings/greybus/google,arche-platform.yaml
 
 GREYBUS SDIO/GPIO/SPI PROTOCOLS DRIVERS
 M:	Rui Miguel Silva <rmfrfs@gmail.com>
-- 
2.34.1


