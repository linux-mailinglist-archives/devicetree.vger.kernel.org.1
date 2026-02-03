Return-Path: <devicetree+bounces-262031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFYSFPl1gWn3GQMAu9opvQ
	(envelope-from <devicetree+bounces-262031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:13:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A405AD455A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E8DB300B133
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 04:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B739A2F6184;
	Tue,  3 Feb 2026 04:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f1szFFZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD411547EE
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 04:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770092022; cv=none; b=bOGMIz14x7vd8v6i8qNIlDWpjlEVHfpoSTARfC3Dk/JWi5sG9qNy4dQXJLJ7WYOumFsl0HsDxxAOAaMWhfxpFXcl/X5fpvJ7Gr3bqVFJjyEW43UXD+ghWvoU5f6GqRI6YwBzrLdQ3NPegkjCP+miO4O6/8kaltvis47FwApyCRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770092022; c=relaxed/simple;
	bh=qB81YucfOx5FS6ln9w/fZaVAkV+6bL3HcxUsK0YTnQg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TLHlaWbe4eVEBML/flVv7KmdjtQQ/h4CU7Kjm4/gJVgjpEHYakvnfWHjY5YnITKccdlHXsAAy2X38cEWY2kN+I5Bu8gzw8peKTdA5CnqdKMtZAZ9UQmIOGcW2TzVu2rRPQXK3S0WuGx4pLhRu/Evp5pHKj6hac8Erp2FzWon/vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f1szFFZj; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c2dc870e194so2304918a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770092021; x=1770696821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dK8WXIcVHk0OfvOActR0X4+xNwaVImkR0mKuB/pTuLA=;
        b=f1szFFZjcQP77mFu2P2axCc1zcQ5dAeLO9s73U55wH2/URR90xTRmVmdsnh/8nmtGG
         uiSwYJvxakHovzT8gLctR9EpKzSizJx/EMmgsdgFHn9fdDuHV/pLyO2KdKWSiWnXWbDF
         6RYtRhPGTRFgjgObeZb+o/vReyCu1yzUuf1WXOxwBJK2hDcUWaPBwVuUo33kZwSiemNb
         tvBHpco3+eFt/9SImQIs0MgCVAHYoGZW71FKdXcLNRFB2seoyMIqhllQM7w+d43oiz6/
         3/rzIYOhisi6p2A5O2sImGbKgB17TjF6CcMOQ8Qa6C4DN7tklxYGwVGtnZ0jR7vOtm0R
         GZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770092021; x=1770696821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dK8WXIcVHk0OfvOActR0X4+xNwaVImkR0mKuB/pTuLA=;
        b=buusRzHKCCKZ83rNAhge+u0W9aYu4RuEFLJJiDIdv8j86yxyACM8HSroFsT3rsilwq
         olbYQKW4KSkRXnp1ANHsfnql+zciL9EZy6U3wdGPeTs/P0LcnimTqTdsXePl6qWIif93
         KuCSgGYOlordrLUrHGJtplkpBsTpfCN96UsgJC5gFh8zUDEVlONtepgmSosZMwr+y99F
         SgNwrsUVaFlYvzeaQjgkSA3tFkname0tYlp15zLdvcLUIs886Ts2JpdYIE+8KNGGmo2o
         UhAQvbLCy1bTQr2X0baH3HzMn/GVFB2jV4+oawlSxehNpC6pFIwbiDY6yBZbmvCSSU9L
         mRpg==
X-Forwarded-Encrypted: i=1; AJvYcCUATsVZvo4qyTvvwpyLH3zjFeEyUIOAmZAC+JFaMlLTrwULeKFXisUnR8cOyKpbC3vytsR8Pr39zAq6@vger.kernel.org
X-Gm-Message-State: AOJu0YxRJ9LMvku53oacx5qr/w6yWpk56ySW1zY64GjRY+WDzQvTAn4V
	ltKvGdtzbEKdTbDcqHUjsGIsyUml8ggAbDOJtbST7VHz7YDuLlRGkE6j
X-Gm-Gg: AZuq6aLpCK4MUeBFipUvNnqhMIpAraVXjydIGyw1nRobPHBp7us85P3j66qbBTFIGsu
	963RNDxoJJQkEJcuWDMKkcrUqDWVcpagBdsiwTA/xWLetN+8jERruL5yZueXyIy1gDANqRaclbx
	9ChhS3CQdceiY8fg2Fn77X4GbNmA4ol23yLZpqmyi8hWL/Xe4WIsSIRXe7PY1gLSqAGy6Msx6xc
	fq2cAU7T2x54yRjUpVZmwk2Jc3IwLbeNh+aXvtceMuUzG+IO0Zdl0faygzeMC5xIB/1WduFfihG
	V/4rMRr+8OjYexUMAosg1SHMmLF4Brk2H2GNLD4RK5hyqlJ15Ln0j+qSFb6fttyw77hVNJSF4J2
	7oBZ8odjN6QJgLkTYR40AZN/z4QJPqsACXro5aJ57QSFgM05cSG1i2CBvXyQkOJivxOhDlsOXS3
	tlk79rrlN/zvfY0QMdCiahgsC1ODdV
X-Received: by 2002:a17:903:15cf:b0:2a0:d05c:7de3 with SMTP id d9443c01a7336-2a8d7ed6494mr135040035ad.15.1770092020496;
        Mon, 02 Feb 2026 20:13:40 -0800 (PST)
Received: from fedora ([2401:4900:88ba:bcfc:246e:b45f:7ef4:a424])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eef44sm165547585ad.11.2026.02.02.20.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 20:13:39 -0800 (PST)
From: harshdaniel66356@gmail.com
To: parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-staging@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Harsh Daniel <harshdaniel66356@gmail.com>
Subject: [PATCH v3] media: dt-bindings: media: microchip,dim2: Add MediaLB DIM2 binding
Date: Tue,  3 Feb 2026 09:43:25 +0530
Message-ID: <20260203041325.12419-1-harshdaniel66356@gmail.com>
X-Mailer: git-send-email 2.52.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262031-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshdaniel66356@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[218e000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,43c00000:email]
X-Rspamd-Queue-Id: A405AD455A
X-Rspamd-Action: no action

From: Harsh Daniel <harshdaniel66356@gmail.com>

Add device tree binding documentation for the MediaLB DIM2 module found in
Microchip (formerly SMSC/K2L) IP, used in Freescale i.MX6Q, Renesas
R-Car Gen2/Gen3 SoCs, and Xilinx FPGAs.

This consolidates the previously proposed separate bindings into a single
document as they share the same hardware block.

Signed-off-by: Harsh Daniel <harshdaniel66356@gmail.com>
---
 .../bindings/media/microchip,dim2.yaml        | 136 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,dim2.yaml

diff --git a/Documentation/devicetree/bindings/media/microchip,dim2.yaml b/Documentation/devicetree/bindings/media/microchip,dim2.yaml
new file mode 100644
index 000000000000..c8cbee47ab1e
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/microchip,dim2.yaml
@@ -0,0 +1,136 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/microchip,dim2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip MediaLB DIM2 Controller
+
+maintainers:
+  - Andrey Shvetsov <andrey.shvetsov@k2l.de>
+
+description:
+  MediaLB DIM2 module found in Freescale i.MX6Q, Renesas R-Car Gen2 and
+  Gen3 SoCs, and Xilinx FPGAs.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx6q-mlb150
+      - renesas,rcar-gen3-mlp
+      - xlnx,axi4-os62420_3pin-1.00.a
+      - xlnx,axi4-os62420_6pin-1.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: MediaLB Interrupt
+      - description: AHB0 Interrupt
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: pll8_mlb
+
+  microchip,clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - 256fs
+      - 512fs
+      - 1024fs
+      - 2048fs
+      - 3072fs
+      - 4096fs
+      - 6144fs
+      - 8192fs
+    description:
+      DIM2 clock speed as a multiple of the frame sync frequency.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - microchip,clock-frequency
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6q-mlb150
+    then:
+      required:
+        - clocks
+        - clock-names
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,rcar-gen3-mlp
+    then:
+      required:
+        - clocks
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - xlnx,axi4-os62420_3pin-1.00.a
+              - xlnx,axi4-os62420_6pin-1.00.a
+    then:
+      properties:
+        clocks: false
+        clock-names: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mlb@218e000 {
+        compatible = "fsl,imx6q-mlb150";
+        reg = <0x0218e000 0x4000>;
+        interrupts = <0 150 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 151 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 1>, <&clks 2>;
+        clock-names = "core", "pll8_mlb";
+        microchip,clock-frequency = "2048fs";
+    };
+  - |
+    /* Renesas example */
+    mlp@e6050000 {
+        compatible = "renesas,rcar-gen3-mlp";
+        reg = <0xe6050000 0x1000>;
+        interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg 123>;
+        microchip,clock-frequency = "2048fs";
+    };
+  - |
+    /* Xilinx example */
+    dim2@43c00000 {
+        compatible = "xlnx,axi4-os62420_3pin-1.00.a";
+        reg = <0x43c00000 0x10000>;
+        interrupts = <0 144 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 145 IRQ_TYPE_LEVEL_HIGH>;
+        microchip,clock-frequency = "2048fs";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..f002a1117ef8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17650,6 +17650,7 @@ M:	Christian Gromm <christian.gromm@microchip.com>
 S:	Maintained
 F:	Documentation/ABI/testing/configfs-most
 F:	Documentation/ABI/testing/sysfs-bus-most
+F:	Documentation/devicetree/bindings/media/microchip,dim2.yaml
 F:	drivers/most/
 F:	drivers/staging/most/
 F:	include/linux/most.h
-- 
2.52.0


