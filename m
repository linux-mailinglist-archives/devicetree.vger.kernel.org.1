Return-Path: <devicetree+bounces-127635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 488159E5D7F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:42:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB674162BD9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE38227B8F;
	Thu,  5 Dec 2024 17:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CtXWiCQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB540226EEF
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420504; cv=none; b=jZA2RoiOuPoc+68zp1rgJfOlYzX2/sfN7lVH0QnaXxLrzWQN3aRP+DudiSvsDqeUCqgWB1DjKHPDhiVMELlS+wdlLF7D1o8mmwnaitGAQedPDTKxXcbDpes20FnpDGv6f45AksL2J0/45HpebCpjtG4vAgD6eC6IWYc0M4FtjJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420504; c=relaxed/simple;
	bh=qkOSoUzBaI2Fy8SWilouKpsw5RFfufxg16Ai+gil2WI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AnLdEnsDssGMUd3wRRuXnSAw1FXpa/sx4+jh+2rCY6IIoF2I/SbOLaHoqu9KM+1UaNNh7kX3rG1wtk2gJHUhecwHEgSmuPZ1nzw14U1wQjyFipC4BwtaxdBOAlylARVBL9QN7F906OnWfHtvyywKXbriZoQQISlCmq/N0OfGwO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CtXWiCQ0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-434a742481aso11829335e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733420501; x=1734025301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKTSOcD5L+z2qw5+nXllrVScKZxcBqJj6UXu4K9Ii9s=;
        b=CtXWiCQ0iAj64ySZJ7k+jQsVdV09vNpwwFL+aNbKMMlei6LJjCeLPG+Co6/JcinROG
         8DxX2qlGnRgF0cX0qmoBmARpsgHyhB9blHXWNkx8neADPgc1nJKaavHUaJkjtkD/2B4n
         EjIDAyHA1tojW+PDJkpEtLAcjedgZntREbSxE4dwE6WIc17mFvU3FQZ95/TwnYw+MqS8
         jqGryan9d5BvDis7sWMbIurNYl1DNEzqkGGXI/CtG178YXc0LhqIrCK45fJZLSxxMuXk
         2YEZ1OVkloOQkXuEF9Ug1mfRSAw7vbyRiiM4nvl5SRUkwV03Q5J4zhEzzk6m2cHns0KB
         q4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420501; x=1734025301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XKTSOcD5L+z2qw5+nXllrVScKZxcBqJj6UXu4K9Ii9s=;
        b=Hr7XrKMH96cr2vOe9N3QRpmKue3D8eYkwsrS7eOQEcnk8NsPbP77y9McyenCX/wLuX
         ShqDE0sA3XfSeq7C82jrpCtutgXorAOiQ3DrGtXrx70iKrA5FnL5/IRE9DtJ04iiBKBy
         CeOn1XY4LVNKCEE6NvRt+aOHYOllEBOaY1b5Jp9yf5bO5HMm+UYZWlxsM1bDMBsLzuQv
         6EQWnj2JuXqCTzPDG45t7FcdSNrK2/NzB4nLC2zIpath6H787lzanoWygCGFG40e/zkr
         m7lV1cCchg9PkakLbdJIDfDzkazTt2aQb/VzEiTYcIpBHQHQhtKMEXhAXrMuXkDAco7p
         2avg==
X-Forwarded-Encrypted: i=1; AJvYcCXObNWEE4wCi+X4BdRxKiLipfUxTgyai2nSoNv4mzxcKy9eC1iqFcBPWygnBtJOLLX/qwonjC+x6hjV@vger.kernel.org
X-Gm-Message-State: AOJu0YyD5fL04GbOuAEeNO7yae348Qaf4eqo8HfTNwS/znvnIj5Ox0wi
	1ZDt4Dg569q1+QLD59BUg87//M6gbIZjNkJW3yDZc9S+jxqmXeJ8LNWmBXptjlc=
X-Gm-Gg: ASbGnctJW2aHthbanOiXgBjp5APeb4eAqCee7Qqz4Gcai1qgHGjzJzjDZFpuKrXGcab
	yTPzPXNlnZsOJgxhN/Fjz1ewOXApETBr66ODyEUyGuAPikUbPCIG2ZMSgZ0hK18SRnAzGamSDcr
	Z7rfn+7n+Y0RgCty+fgWUtm7Bgoaly9wb9Iabzrjjyu/D2izf8eAz5mDCSzk8o10XRcK6xh6VzD
	7dlm0yEfx81Qpso3wq9GBuKa6nNHUxpASYCmEOWdv1Q+BApOF8OEUG9nOOiTkfmzyAeXMRwkK/W
	6I1JSV/eZglzvdaYxIuNAP0WhEith/eo
X-Google-Smtp-Source: AGHT+IGqhJzyDS4e04vMn1WyVytA3R0WpmSjXAbWRrFlxmWxFGHaT0ntvkzlA3YzSBZ0INS2vdnPeQ==
X-Received: by 2002:a05:600c:3ca1:b0:434:9e1d:7626 with SMTP id 5b1f17b1804b1-434dded7366mr1195635e9.25.1733420501143;
        Thu, 05 Dec 2024 09:41:41 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0d6961sm30318525e9.12.2024.12.05.09.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:41:40 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: jassisinghbrar@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: mailbox: add bindings for samsung,exynos
Date: Thu,  5 Dec 2024 17:41:35 +0000
Message-ID: <20241205174137.190545-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205174137.190545-1-tudor.ambarus@linaro.org>
References: <20241205174137.190545-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the Samsung Exynos Mailbox Controller.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/mailbox/samsung,exynos.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml b/Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml
new file mode 100644
index 000000000000..1fddec1fc64c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/samsung,exynos.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Mailbox Controller
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description: |
+  The samsung exynos mailbox controller has 16 flag bits for hardware interrupt
+  generation and a shared register for passing mailbox messages. When the
+  controller is used by the ACPM protocol the shared register is ignored and
+  the mailbox controller acts as a doorbell. The controller just raises the
+  interrupt to the firmware after the ACPM protocol has written the message to
+  SRAM.
+
+properties:
+  compatible:
+    const: google,gs101-acpm-mbox
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
+  interrupts:
+    description: IRQ line for the RX mailbox.
+    maxItems: 1
+
+  '#mbox-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - '#mbox-cells'
+
+additionalProperties: false
+
+examples:
+  # Doorbell mode.
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/google,gs101.h>
+
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        ap2apm_mailbox: mailbox@17610000 {
+            compatible = "google,gs101-acpm-mbox";
+            reg = <0x17610000 0x1000>;
+            clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+            clock-names = "pclk";
+            interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+            #mbox-cells = <1>;
+        };
+    };
-- 
2.47.0.338.g60cca15819-goog


