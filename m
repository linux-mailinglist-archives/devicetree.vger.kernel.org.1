Return-Path: <devicetree+bounces-276360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAyoBANIuGlTbgEAu9opvQ
	(envelope-from <devicetree+bounces-276360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:12:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA6629EDD7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:12:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E263F300D9D7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8499E3D3D05;
	Mon, 16 Mar 2026 18:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L06XRiFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9ED3D34B7
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 18:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773684733; cv=none; b=iX3EHci3GKCQMsld4hlqx7uEB6azWuVIgi/uFHZni79mssPV1NL4KyfdYp4CVuqiuNLfYZJUr+deJbZ25CguCTcEuIVpZyprnO7EMvO2v1ZgzJOuo7yUEDnHxEISUk01K0LY+qu3nr8ZbL9pg6ljfcgSU0iz0TzqgPZR3R2gn4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773684733; c=relaxed/simple;
	bh=dt3alpAXUOQoTq44HebBnWI/jUQU9/9QNQ+dm8LV8Wc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=j4zK6JpFB1F3uVBcm7m9WTzXLSWwhN6OyGMx1xSikWjZpXSHKK9JZSYt9U39LnXmJVHu4zdZciITcPLNw3Gqg9zQCAvcDzR0tF/vUvN/taw8ng7UzOS9fq+J7/PB1x1OaYUbDwilYRR+g3ndANTxXuzbTdoe3UobhRAGh0HLUeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L06XRiFd; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48540355459so46246035e9.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773684728; x=1774289528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNoFb191mvWm3HG8KPjdrK6BEhKwrJKwIStTVlNnrUE=;
        b=L06XRiFdqc5nYolNuqZlVNECB9rA1A2rW9ZQNa8d+rpEWBrJPGzePLFlMJKEJ94eNi
         MeVSo07TAJh+SDumkZ02KYA9yIPm4hoojIU7fRqUv7AlLRiNh5kMcTQJZV7hV5SuhkQu
         /m/J96fzt2CASgo5cUrVvWZzlE+lqFaWciwZV5yRSDUxGYCbYFaNPlqJRtF3VM0uFJyN
         4+hYE1dbbAGa9XVCv0lf9vM65i6eItNEwhuz+FMuXUsr7pwVFiNDMk+PxWS7nwQmpGV4
         nwQNVFDXLRZtDoahKrx8WeKZwPnYOJhVl9ef9tH5HQ33Tsy2sKPy85F/yXJoH2/KVohK
         qSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773684728; x=1774289528;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNoFb191mvWm3HG8KPjdrK6BEhKwrJKwIStTVlNnrUE=;
        b=YQP2xsvlxrfV/GjLmrayRilhZgrPgHMxCbkYsHpCSClXf7DhFk3x4YfMXly5uxFqCQ
         Dre+KKkB9CNTcENx82PCAXUGYi74WNt+c56iFFeCZArr6EPmIe3cw91UpyFVQSiduSfG
         p1KnSCxcAz173FxgwhcatEyMIMYsKCFuUewcWhmNFReJUxk2Y4HucmPv1IkXCAJDt135
         bzTaAIZnFCiK/4eMQyTmZ1WFxcw0WI+FKCLi9zPp0Kg9ORREzvGR30BfMw9m9eq7o6so
         aeKVHDdW20ttZPJd/Q83Iki/k2KuSJzJa2Y0EL7WyjAiwNCOe3aRGX1GEADYOhISHvVX
         b5mw==
X-Forwarded-Encrypted: i=1; AJvYcCXOM5YvflXiHBYPYBad4ba0Zf/cGAMqr4Hrqh6IFP5TPRxEx8qhErOz0mQ8Gkaz1Dt066mEGD4Khr5n@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq2V4y2JKV/HsPSm2AGfVJFpaqkCPdRxni2uyy7PdNga1EUu6j
	nHzM+tX1r/H40xLN7RLPq16Qw/Lr8Tm5TMFWbRgRj3W2aj4OUg1GgYIn
X-Gm-Gg: ATEYQzw26Qu468clihLNTKCWe/ewWfpDD8+Um7kzNKFE9EjaY4qrggAVrQ96SYkolv6
	qSZ+N76yO2BxoUmGPMR0NuFLUVnlk+TCIfZkMdQw/HhFo4ce/g0WAtyaraIyg0QUd3lVTd8ukTH
	5787YibaHNJ4Iy5u6qtmXSFRjmSBRfyTWSGJB+wKvS+bw5l0o/nw69EfsiruK7fCvKleMI9rZP3
	Jnu+Ct76VARQUt43dtvvoxpuTqM26SDMKXbYVi8Fhi/FL5AAhmCehogLahmy5y0ni3T5Civ1/3a
	lK3100d0la+ypHpAqsUdO19SZmRYzp56XeheKVDNmh3RcHJO6pd2ApOdopYNVjDTUro6zUuhFR8
	XdT72TyV8ZTYyM/Tba3aY7QBa9IdiDtQ1KtOCugZr7bMAe2tygUEQo98/6IdQRNJQJiQzM42phb
	E664gUvjrX0HX31BI=
X-Received: by 2002:a05:600c:548f:b0:477:b642:9dc1 with SMTP id 5b1f17b1804b1-4855670514dmr233546695e9.20.1773684727835;
        Mon, 16 Mar 2026 11:12:07 -0700 (PDT)
Received: from fedora ([82.137.32.223])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48557c89186sm247427825e9.1.2026.03.16.11.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 11:12:06 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	egbostina@gmail.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: input: touchscreen: Convert TS-4800 to DT schema
Date: Mon, 16 Mar 2026 20:10:37 +0200
Message-ID: <20260316181038.9771-1-egbostina@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-276360-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.3.232:email,devicetree.org:url]
X-Rspamd-Queue-Id: 7FA6629EDD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the TS-4800 touchscreen bindings to DT schema.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
Note:
* This patch is part of the GSoC2026 application process for device tree bindings conversions
* https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

 .../touchscreen/technologic,ts4800-ts.yaml    | 42 +++++++++++++++++++
 .../bindings/input/touchscreen/ts4800-ts.txt  | 11 -----
 2 files changed, 42 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/technologic,ts4800-ts.yaml
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/ts4800-ts.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/technologic,ts4800-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/technologic,ts4800-ts.yaml
new file mode 100644
index 000000000..c033774b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/technologic,ts4800-ts.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/technologic,ts4800-ts.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TS-4800 Touchscreen
+
+maintainers:
+  - Eduard Bostina <egbostina@gmail.com>
+
+properties:
+  compatible:
+    const: technologic,ts4800-ts
+
+  reg:
+    maxItems: 1
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: Phandle to the FPGA's syscon
+          - description: Offset to the touchscreen register
+          - description: Offset to the touchscreen enable bit
+    description: Phandle / integers array that points to the syscon node which
+      describes the FPGA's syscon registers.
+
+required:
+  - compatible
+  - reg
+  - syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    touchscreen@1000 {
+        compatible = "technologic,ts4800-ts";
+        reg = <0x1000 0x100>;
+        syscon = <&fpga_syscon 0x20 3>;
+    };
diff --git a/Documentation/devicetree/bindings/input/touchscreen/ts4800-ts.txt b/Documentation/devicetree/bindings/input/touchscreen/ts4800-ts.txt
deleted file mode 100644
index 4c1c092c2..000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/ts4800-ts.txt
+++ /dev/null
@@ -1,11 +0,0 @@
-* TS-4800 Touchscreen bindings
-
-Required properties:
-- compatible: must be "technologic,ts4800-ts"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- syscon: phandle / integers array that points to the syscon node which
-          describes the FPGA's syscon registers.
-          - phandle to FPGA's syscon
-          - offset to the touchscreen register
-          - offset to the touchscreen enable bit
-- 
2.43.0


