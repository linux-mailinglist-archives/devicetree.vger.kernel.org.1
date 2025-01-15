Return-Path: <devicetree+bounces-138809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 571ABA125C4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56B9B188ADC9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9F68633E;
	Wed, 15 Jan 2025 14:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qsTU7wrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4274A70808
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 14:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736950709; cv=none; b=lsvb563aBXbyGrH0B8xi0rOtWfcQAQfwUl0c4eSSTdxGLKHZDK9Ro8iz1+3Pzqth72y8fskdtBp6qZZGReKT2N+eqz22NWa6wc1Xyf/O3dnmldTSwvyOJmKTxFFy7xpyt8tYN8RYhHLmOtRugFp4ox4MccbWs90qHn4Ko/0O6HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736950709; c=relaxed/simple;
	bh=5HGsUQ8DOjZ0Xsj5e9DwGxqdEHV2zqdEVfltYYG6Yao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qZUjqGxGVzpLUqCasA5Vi2HR/09omp5XXvTEq7zY0dNh/Ufi208L2WtC7NujNv2kOKhr19meBEngp8+5dYtOJdiLkf3n1FsxHd+k2nqu2HHU2o0YX/FTsxYvqqXYQLmfjE4yPv5ep6A7t9gEXp5PzESnsnAHQSx+G0B3XpXXYQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qsTU7wrA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436202dd730so48606975e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 06:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736950706; x=1737555506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a42DOBe1uqn7pmMlyPetZLEiqSZyshl+HGTpgvC7gGM=;
        b=qsTU7wrAwk/mzF7/fkd/4640lNChBGS6DK7qfysnFsmHwMGD/R+8NwDM+rHjYGArOm
         xB8tGDQrUgoda6OupgMD2iBq3v3nyNh1bQG3ldXy2N1jULt2mhytnyB9QxkbOJ02pb2k
         RGbBmNyaP9EkV/Egl6dXuyZ2G/01qY1VGrylWQU7kKG0ynkAJ5wCHJS7bnxa7qgWHo+n
         2W4DuVCLy9uM83Lm153WNiUQA5yQzmZjbbS04AedAolvVwUEbI1OjHG5Vr8m6CPMg3TO
         dXnU2cSCDJKdOx4I48gTd/64D7+yD8oNA3KUXWKqIrQA+jP9H4pP3aH3kOzu0z+8K4HV
         Uoew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736950706; x=1737555506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a42DOBe1uqn7pmMlyPetZLEiqSZyshl+HGTpgvC7gGM=;
        b=vmh3D7DAdbZQhsQ7V8XXm0+mQREh3A0DEnvRDWKjgDHw7FyvjXxCwKrCam/dSmxic0
         av2D7ppiIww6ONavWL90R7jIcKy/9+UZtoH6Gsw0WMxTH6XHxa0pM8TAFEXLnYZEcC85
         zLppPydyPjwyGZpX+ehMzTZrYQb5eFlZ/L2TopgFsnzghlA55i+udiJNxq65gZ/+NGBt
         xQZt1Moyy/SlC3tBPSWwZRmLrYanDfAryDWQK9gxsSMOJxutxzpI63D0UYg+cOrbL9hx
         znfJXirSaQCvC+9WaVeKztwBuKAtc5noyWitCo+STEPXrCohcsrpX4yl1C6hVCRnK7U3
         7DNw==
X-Forwarded-Encrypted: i=1; AJvYcCVKWbUOS8jIk929/V99yI/8kpV5hHly5N8OmyCj5GkAqgHZ5YVdxN2YaIeQ91PoSy+sBVGCbsKIsb99@vger.kernel.org
X-Gm-Message-State: AOJu0YxgeHj8gb8+vlWkameFexy+qjmfW3kPA06tIwvCfU5OrMqkRGpf
	J5OA1VBUmSb4xeqSpQkJB8MYFaRebCkS0DKkyWNfe0WSOMBwzfFBkWM8/NbUd3w=
X-Gm-Gg: ASbGncsvk0bADSNGZWW9amijHO99l2WxSg+JswXs7TS+gDBaTpo1+ssobvLXvuUF571
	hkSknuXHY4OCESVCk71DAZmLeZOWDsf6erB7igwoMr2qn1oKTw0FLkMXBWk6yE1DsDAy+5Wqfcs
	IMTNdobcG2zM4X+T171WuiaMpNbqNq9QkpKPXGcivVdJXXq7qwkHTshsRMeeMQYRl01kkm7GwYC
	98u5oPBoLrS7j4WYmczy3K+tIT9WyMIbcnyQ8M9AB7odr15fFikEbhC6tbCVo6ITwkUC/6jCLwR
	lHwjgGbLaSFX+Vu3LZLsCpl+jsTBMknigs0U
X-Google-Smtp-Source: AGHT+IEhSosZqUJXLG8olJ1UCoWQCrVDewzF96mOttUN5/GBxHCh4eNVf1fIYgFOhcK75geW+AWZjQ==
X-Received: by 2002:a05:600c:3ca0:b0:436:1c0c:bfb6 with SMTP id 5b1f17b1804b1-436e270620emr239929715e9.27.1736950705682;
        Wed, 15 Jan 2025 06:18:25 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74d8e06sm25184555e9.31.2025.01.15.06.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 06:18:25 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 15 Jan 2025 14:18:14 +0000
Subject: [PATCH v7 1/3] dt-bindings: mailbox: add google,gs101-mbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-acpm-v4-upstream-mbox-v7-1-948e09fcb5f2@linaro.org>
References: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
In-Reply-To: <20250115-acpm-v4-upstream-mbox-v7-0-948e09fcb5f2@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736950703; l=2400;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=5HGsUQ8DOjZ0Xsj5e9DwGxqdEHV2zqdEVfltYYG6Yao=;
 b=BWb4jQeZFy4QCExxs2qrhgDBCcW6TGsPvQ8HLUII0HvZxdebpZmFiFftHoddgvs0g1T5x+jqg
 GKCe8+3WaMmDEe+Ngs8gIWHsrY0JDO5cfxTtlzU4ww26Xh7b2vudpOA
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add bindings for the Samsung Exynos Mailbox Controller.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/mailbox/google,gs101-mbox.yaml        | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
new file mode 100644
index 000000000000..e249db4c1fbc
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/google,gs101-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Mailbox Controller
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description:
+  The Samsung Exynos mailbox controller, used on Google GS101 SoC, has 16 flag
+  bits for hardware interrupt generation and a shared register for passing
+  mailbox messages. When the controller is used by the ACPM interface
+  the shared register is ignored and the mailbox controller acts as a doorbell.
+  The controller just raises the interrupt to the firmware after the
+  ACPM interface has written the message to SRAM.
+
+properties:
+  compatible:
+    const: google,gs101-mbox
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
+    const: 0
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
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/google,gs101.h>
+
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        ap2apm_mailbox: mailbox@17610000 {
+            compatible = "google,gs101-mbox";
+            reg = <0x17610000 0x1000>;
+            clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+            clock-names = "pclk";
+            interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+            #mbox-cells = <0>;
+        };
+    };

-- 
2.48.0.rc2.279.g1de40edade-goog


