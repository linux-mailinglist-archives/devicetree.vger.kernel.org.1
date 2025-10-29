Return-Path: <devicetree+bounces-232745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A629C1B59F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:46:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D00D25A5D8E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868C0355812;
	Wed, 29 Oct 2025 13:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JUvmwQig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F22C2E2EE7
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746168; cv=none; b=Xg88AgorsrsrmtJ68b6kenz6/fJ2n4VWq8lu2hew71392cPI/gtB8Li3YDNgoqopMQrC8W95wNjdwLIy/mnkFx4eh15q5WAm1efPTOWvfX0xBFQ1X/FCge8E9iZMHEXAAqE8Oebq6lYs7ZLBgqbZEkI6NftFPAZZLYFZBCss0Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746168; c=relaxed/simple;
	bh=NlDVT84FRw/2mXN8rUhepff7GU8/kbx+go4sEcGg10w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oMGDyfd+G3/CKT5lqjZGb8I2MuucjLOiAZzgkuGeGWIc/eev0J10lxDdt6VbGJq/x09I3RGa6ca3deEKwZHWFEBZyEitwxm9v4FJAb3ue3aAq3cGBItG3IOSBeumhhKTfkmnlWZZQnyMrk/4klvi24AoU+BPDTLPIpLBReca49M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JUvmwQig; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b6d78062424so57301566b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761746164; x=1762350964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63ONXHD7xxtFJR0GpIWYvdgt2ZZqq/c+9blnPN26amc=;
        b=JUvmwQig0QMMPmB9vK03RxTn3ZE2+uVje0SQ8kLE0k+3CnuQ30FcHY0hA2CEAp7MJv
         Zmp5cVtp+PCzIbI4bG+ticjWg2wfJrs3AbDsYcEbJ39F4wdoEpq3uF20u1x/8CcSqC7l
         6ersAjZh+uXXg23LYCU9xA9cLtYECINXMB8738A6Oc2yIqxPH/Xlyq3WeadeBR+coT7l
         MpUDVGndh7FDT7k7ZxoanBO0GvDbrEgmXLMsu3ghPptWTBkRvKKt3T4SyVKjEsXkCNrx
         IiWGAaDN2hjpWGQAQqFcrv7y9BlKqLLmU3yP972FAGNsfr3Xe58sF3quSCHvFutgiuv/
         v49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761746164; x=1762350964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63ONXHD7xxtFJR0GpIWYvdgt2ZZqq/c+9blnPN26amc=;
        b=bnmLNtcCdKULZkc3sLw4IvsGOBeSt8Y/DreL6ZTVOUp5lJdY4tSLlxz8EFQ8B5Wj5M
         romWHoxNBcofgALDcZwhQMDFCOZ7+58PJumSu215KGtgF3dgTZLnDvRsMbhAf2htMwpn
         tL+qzTbAdVUJkGxbHZSsyhmDhn7CQGtQErsHOnF6EoYgsGHtD+YEX3GcIjTRuwMAkBpO
         3U9H2CSPYXGokjHEG35Ow+qMm4SfnZtWFVIuquJ7DZhRStL6sCyOE1wXEBDe1UVajRzG
         Kh2vJx/qczZyQv+c2n+yDLKx6vc3mC7feX+art+VteFGIlESraj70Y3EUqxDMFVYJ71a
         OaZA==
X-Forwarded-Encrypted: i=1; AJvYcCXkeZilLzASHwCh2hxXWSkpAvJiGfeEfuDhgTi59vJaI16XCfy4IGVnH/0PJugpVYaZw/pK3Nfni/xv@vger.kernel.org
X-Gm-Message-State: AOJu0YwWokf/1cIbb4jwzeMz/rF2+IlP4JD7QIJj0bEgVyoeS0gnzyXI
	8xHhOjH9tM2dd1qTmo4lkuVUGxKzxBZhCPThWfVWv2UZ54S5XUtUdeDA
X-Gm-Gg: ASbGncvqPpSUtM1GaxWYV5l1EUiz6gNbZEFrCLjjlH2XBCYKloopODbvfE0C1W+zNmC
	y+FHIL9R3So9IfZxcCePgojptIzVpTLAxuCvsxS0pATcer7uLjj0XEiJcsTwtaJyvmv8vTy0los
	XHFv5sUmesDqoqmAjXlYjvL80xFu5izumujk/NhlGTLBNHgoqFBMJ0dqMq0HpF9CM2e6J1dav6z
	9A12pG6lzyWzBk92ZczoxTa4HkJbXa0Fm+t9D8H51Dadq2qD2d6Ny6PP+rkqOkVBfl8ta/guDlf
	HE7iI21B/3bF+n7VG1kZGL4/VTPXIZDYe2gcMLT8enTcKTvpnACaG5Xrbbf4n43AKt5TTvrN5aL
	bEvwQmADbSsu4JF9rqIlwXJ3zg9mL6orWkMJE6JUpwGzynmb7qDOqpuMphq8ciBH3u2sG05lh1V
	wYfTtaAEhpRMafBYFsPcud8pO0DQ==
X-Google-Smtp-Source: AGHT+IHH54LZbYTOXZg7mV9ntZU3iJVYCB8V/9k7x05K1JXFlb07Aw0IydcZp3Dr0TOMorMdCHGUFg==
X-Received: by 2002:a17:906:f58f:b0:b3d:b8c3:768d with SMTP id a640c23a62f3a-b703d2cc2c0mr267175966b.7.1761746163828;
        Wed, 29 Oct 2025 06:56:03 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8534d99dsm1444960766b.21.2025.10.29.06.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:56:03 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 2/8] dt-bindings: clock: document 8ULP's SIM LPAV
Date: Wed, 29 Oct 2025 06:52:23 -0700
Message-ID: <20251029135229.890-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
References: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add documentation for i.MX8ULP's SIM LPAV module.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 .../bindings/clock/fsl,imx8ulp-sim-lpav.yaml  | 72 +++++++++++++++++++
 include/dt-bindings/clock/imx8ulp-clock.h     |  5 ++
 .../dt-bindings/reset/fsl,imx8ulp-sim-lpav.h  | 16 +++++
 3 files changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
 create mode 100644 include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h

diff --git a/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml b/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
new file mode 100644
index 000000000000..662e07528d76
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/fsl,imx8ulp-sim-lpav.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8ULP LPAV System Integration Module (SIM)
+
+maintainers:
+  - Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
+
+description:
+  The i.MX8ULP LPAV subsystem contains a block control module known as
+  SIM LPAV, which offers functionalities such as clock gating or reset
+  line assertion/de-assertion.
+
+properties:
+  compatible:
+    const: fsl,imx8ulp-sim-lpav
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: bus
+      - const: core
+      - const: plat
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+  mux-controller:
+    $ref: /schemas/mux/reg-mux.yaml#
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#clock-cells'
+  - '#reset-cells'
+  - mux-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8ulp-clock.h>
+
+    clock-controller@2da50000 {
+        compatible = "fsl,imx8ulp-sim-lpav";
+        reg = <0x2da50000 0x10000>;
+        clocks = <&cgc2 IMX8ULP_CLK_LPAV_BUS_DIV>,
+                 <&cgc2 IMX8ULP_CLK_HIFI_DIVCORE>,
+                 <&cgc2 IMX8ULP_CLK_HIFI_DIVPLAT>;
+        clock-names = "bus", "core", "plat";
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+
+        mux-controller {
+            compatible = "reg-mux";
+            #mux-control-cells = <1>;
+            mux-reg-masks = <0x8 0x00000200>;
+        };
+    };
diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
index 827404fadf5c..c62d84d093a9 100644
--- a/include/dt-bindings/clock/imx8ulp-clock.h
+++ b/include/dt-bindings/clock/imx8ulp-clock.h
@@ -255,4 +255,9 @@
 
 #define IMX8ULP_CLK_PCC5_END		56
 
+/* LPAV SIM */
+#define IMX8ULP_CLK_SIM_LPAV_HIFI_CORE		0
+#define IMX8ULP_CLK_SIM_LPAV_HIFI_PBCLK		1
+#define IMX8ULP_CLK_SIM_LPAV_HIFI_PLAT		2
+
 #endif
diff --git a/include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h b/include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h
new file mode 100644
index 000000000000..adf95bb26d21
--- /dev/null
+++ b/include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright 2025 NXP
+ */
+
+#ifndef DT_BINDING_RESET_IMX8ULP_SIM_LPAV_H
+#define DT_BINDING_RESET_IMX8ULP_SIM_LPAV_H
+
+#define IMX8ULP_SIM_LPAV_HIFI4_DSP_DBG_RST	0
+#define IMX8ULP_SIM_LPAV_HIFI4_DSP_RST		1
+#define IMX8ULP_SIM_LPAV_HIFI4_DSP_STALL	2
+#define IMX8ULP_SIM_LPAV_DSI_RST_BYTE_N		3
+#define IMX8ULP_SIM_LPAV_DSI_RST_ESC_N		4
+#define IMX8ULP_SIM_LPAV_DSI_RST_DPI_N		5
+
+#endif /* DT_BINDING_RESET_IMX8ULP_SIM_LPAV_H */
-- 
2.43.0


