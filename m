Return-Path: <devicetree+bounces-234795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E208AC30E02
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3509461A04
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C372F291D;
	Tue,  4 Nov 2025 12:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j4tym+YM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8CF2EC099
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257843; cv=none; b=MWy0tv+JILAWK32N+Sfu6VXJccED7CjYHEzKeJ59WzlnJ+6+5vUdI5P3uos9zZ+VliN5dTBajzt0AsQawGQ1pc5BbV16k465jkE2OU8JXspouobgsU4UZo5ft6y01skmo+lrhUwVwFhqOdrvD+069fweTthlOWXjussDM1/Iw8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257843; c=relaxed/simple;
	bh=NlDVT84FRw/2mXN8rUhepff7GU8/kbx+go4sEcGg10w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bfk1Acp0a7l9u6FeoOk5jTfQ+tPPC+Ze4rKZ8mVaraUuq2lxRgLQgX+/ynMr0S5NJlbZRCHShMzP2gxepuncmHIeSHm/hGR4WXLOQTFdwc43naD9ThhC/KgoUVy82LQxYeBaixT58vkQ5dAsRMPUnFjFdRhqjuuEHbaglsE7BAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j4tym+YM; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b6d345d7ff7so1177753766b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257839; x=1762862639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63ONXHD7xxtFJR0GpIWYvdgt2ZZqq/c+9blnPN26amc=;
        b=j4tym+YMaMVI0fvKjlzUx7nGZO4a8F0DoJiFo2AYKMNICwV2ASjOtbStnFEu9bdw7I
         LuO0/k5R3c7PK8zwNjzu+gW4RoPvdSi8zo2zGSHkcTWrNVu2v4PyvmkIPIyH6tXpGOXC
         NqmbozvL/vpLq9aSJZZa7nvc9Rywwf+ZgV4QqVpfWQb/P85af0CwiIbzWCxJpUEpdrRL
         DcX8xEUiN7oe7JDxXFXsKZ2t6cQzM3oi31rSjL61ve9KBycGcwchOI9tptxqp1NHfqGl
         UE5FRf+/8q5f0sbt7cC1SRVEhqphAZT4RAAWpBT5F2ZoxWR0C5CR+miSv17mPxFYvBnf
         SPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257839; x=1762862639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63ONXHD7xxtFJR0GpIWYvdgt2ZZqq/c+9blnPN26amc=;
        b=K/C5pzGY8xEjyEkFiXuSZYJf9k1Ysjzzn4vi10+m0drAAjEziuz9nY0A0HeRwoYFei
         NmOpzZg+YDuBw6M6h/f559oSBflb4MXQgVfFi7qWp+XXhCskYWYhczn4SE0asUKpO3bY
         EHRZ7OzIx3yaVfWoueSUtfDwL4lZ/NOQYmxrWsPAfoQSNPDXAEdlR7uldcr6u6X1HC9g
         B8FPcbGt4yE80bcTVViG44c3UCA6t05FO4JpEKZSeV631KeGcmD5FRxYu/Qrobv//wpL
         OqfGOKs6AzEUPgpbTHeqlQB1GvpjG21Yeq9R8rOS6VaQH8+YzfVi8DahO9DQR+X9Y4d8
         jihw==
X-Forwarded-Encrypted: i=1; AJvYcCW+yat4FtYqBL9NdqROOfJrqnww0Rhp5zD/RhXE5UXlIL+ITdfUwGyIEAqtWW/xG8DDebDRI8Qidbgw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw595cdiQJH5GiEGZHT81hoLthrvGfwdWRLeG81SpsCLIBJ5BcL
	JonS38Br5JV0slm67Di3uqFfWkCKwDvcrIqbYJJWprZ3PqKRmkjOT+SQ
X-Gm-Gg: ASbGncugmbQOQkMd4GkI0VApARQqRKL9qTJpgIRypbl9KRAtwFgIjxJ795+FekAUQ8J
	BCFJD3s95bu0RTITNC2q6Pw+Kyl1MtCZaTWlDteCWqCOTecBqsIWdnZR0G64b83QaoCanzv1/gP
	b4711153GgjuG4Wkag1qCiHyEfZ4gJaf6cFyGk9yB6NwWTcKxSuozl+ik6gowy96HhoOfD56jr8
	VwrdstbAheR7WbX2sH5QXQQuSRabNuyXYhV0BVnU37QtG2PtreDQS9zdGU1xDLB5J+xiWE4IUHr
	Ye2tumvFmgFi7++/8z6WvGY/u1x/Zlz1gHSBorKaRCdtBdi1mkrVEnNofJ4dgetaa21wVGuLVmd
	voXxcZnes9trghkg8HraK2OTOSDVWUi069nZelPgnDdIerChlAtc1ffovoe4Zds7E9iTX5KFplC
	AsP+r701iIRiAQ1WiMdzXfotuhuQ==
X-Google-Smtp-Source: AGHT+IG3QLmyCjtX5/Ko9tQsUxnNB5wR4XCiP6erukrj/bGwetEYdDQuHsOKUbEeVB4dKQgbNrFB5Q==
X-Received: by 2002:a17:907:72ce:b0:b6d:263c:22e1 with SMTP id a640c23a62f3a-b7217d7eb1dmr363856066b.31.1762257839139;
        Tue, 04 Nov 2025 04:03:59 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:03:58 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 2/8] dt-bindings: clock: document 8ULP's SIM LPAV
Date: Tue,  4 Nov 2025 04:02:55 -0800
Message-ID: <20251104120301.913-3-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
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


