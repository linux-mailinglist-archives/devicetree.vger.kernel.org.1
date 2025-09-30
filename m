Return-Path: <devicetree+bounces-222705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321ABAC1E7
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF43D1881F30
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B4F2F549D;
	Tue, 30 Sep 2025 08:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XttyYDmM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49712F532E
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222016; cv=none; b=tPGsboviIygNAUJjjfpu/Dw3k+U0Ugl7R9YEDqycSrvJkOzW8z1v0vBhtQnV3lmZgb5tgq9Y0Ho+lyI6TprX4Dqi2dIgvXrnhktJclFL1czwxL572UoFNwediWI63y8VGr1YrIOQujta2rJYM3CdbLu2E700hYMMCZ+lzFsbo74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222016; c=relaxed/simple;
	bh=zn+CaRbVeke91i9T3DQ7+L4MQQGRwZK7VRhzOr2u8RA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qf3l/gVEPhcNuDv0tpQIMf6eEdMSbXCbpIOBJKNr8NaX2IQmfAg83qNVxvb8Avy/g5vDhPqcbYGiv2MXrjA4K9ZZhBV1T0lhNVzrAm2KHGdYk+1OyudU94ijDFgWInkeb6w0ohF2ntbdAhi76CWpgsL+EzktbmFxv7AkegGcqzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XttyYDmM; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso41740785e9.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222013; x=1759826813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V33lrbDBdpgDfc9x4hYQa/F6X3VcQqYOJF639C+QnLE=;
        b=XttyYDmMvRIG02/ZyPu8rYaQV+8WziP8W8KhOEheKBC7ieJp0JTb8bWQ7jxy6NNG5u
         I9S4bFIwEZGazeN0HxdmooAdONnHe31ja3Qg13+5VfEA/W/fFUU9xKWsoAoAviwBcM0Q
         a25ty7TcJOWw+FzwpWu9RKQRP4RAq6Mq/9eWtVl8sZ22braR3S0GpIIjrUOIXQouQga+
         4/tYweo6m74cWELpYq/soGkeaynSs2wJ7iYvzMTqBZHvNihbEry2UM6WVOl8DXj/B1gp
         3hM8lz68fGmtNgATJ4CwLXTVfKdN/DCMLLPfvi472568jzf5EjFLTinA6ILZQzn7rOYr
         SLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222013; x=1759826813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V33lrbDBdpgDfc9x4hYQa/F6X3VcQqYOJF639C+QnLE=;
        b=swtKPoXYZeoURTu2xtYTTWqGk+v12HcvTGyzytXd3jFJzSU4AT3lUoXh4zO/JdLJTa
         XPEjCoPTN6SBmEoieVoYd9Q+2cmYUEKt9laGaXCp8gjMUviAzTGOfN9gWklvaOe4/D0V
         JhzHJIuINxHOLMNjLQCAoTvRawtjdaGVIQtCAqzr/uVGz/XBtBAzfuxMkOO38PehRip0
         wt3WfmE+HbDrdllMjyrwYGg56OcNqYFseL/eNlsisYQWTtLLYG7c1uC812kmuhgdtLE2
         dWyqsDTis14EzfH+opr1K0HbCRJEtNkOOXMiZdYfm8DJ9745AMeUb2xVSysdrGRPGpkM
         rsPg==
X-Forwarded-Encrypted: i=1; AJvYcCXDnPinzil/u8IwLMStYAN1jvQqb0BnBxWs1M4j7OvalE9npfQBUJjGrV7yw7IYnPpc24jos0ZZE0TV@vger.kernel.org
X-Gm-Message-State: AOJu0YzWQmdiEPu0w0pryagd3sqkMlb40uZ0clNcA+Q3mVmmP0GcWlhO
	ukgxIhWjgFzquziKPESUIHFgGvOBpXex6MnEJSdkvnKW+zS04sjPMlTc
X-Gm-Gg: ASbGncta+msRjv9qC8du52/dhnCWKb5xS5bJFRwqcQH/EyniiurBTDRIuitGZmusbJh
	sdX0VLsaZUDPZwwYsg7K2dc7Hyu4R4toPPBZYIsAHHTaDe5MaeaU9KiJ47tGsPBUuVyKXBnTk/4
	b0wL7E+ofoWDeGs3zq+FduAtu4eaOLY/OSlk9gGOvjD46GHJOyRAkkIEw2/HahHM76st0VjN4cG
	uVj7OMsvJXQFt3oXgU59RUnjibIFXAnVp7c1/vZrrD8XCs8uE7jXxz92RYB+TmMrBEAc09li3BF
	NTOCKzLSyrpU7KXOwQzDqFJNyhbCW+qLFOw1G3DnIAIX0XLlkeAT/sNODN2ykCU+vMstJyAFAW9
	DUtbIwk94tpAew7tkyDx5mqG4CuFbPQquP9Z/uWoGBViv/t2gHW1K6ORVIRmWrz+6Bqtt16CaYs
	nx7ht5MSIPa0URXd629TiggXSs8Qcg8GDtGq6XuC9i
X-Google-Smtp-Source: AGHT+IE6t7X9LCnai11B2rSAFpAnlmP2yS3ko2WKL5rG+zgL8fO97OZwBT8DQj4yAE2uWbubKrm0RA==
X-Received: by 2002:a05:600c:a0d:b0:46e:45f7:34f3 with SMTP id 5b1f17b1804b1-46e45f736d6mr114824825e9.8.1759222012854;
        Tue, 30 Sep 2025 01:46:52 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e56f3dcacsm48573735e9.2.2025.09.30.01.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:46:52 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 30 Sep 2025 10:46:45 +0200
Subject: [PATCH v8 2/7] dt-bindings: memory: introduce DDR4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-b4-ddr-bindings-v8-2-fe4d8c015a50@gmail.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
In-Reply-To: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Introduce JEDEC compliant DDR bindings, that use new memory-props binding.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
new file mode 100644
index 000000000000..a2eb6f63c0ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,ddr4.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DDR4 SDRAM compliant to JEDEC JESD79-4D
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+allOf:
+  - $ref: jedec,sdram-props.yaml#
+
+properties:
+  compatible:
+    items:
+      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,20},[0-9a-f]{2}$"
+      - const: jedec,ddr4
+
+required:
+  - compatible
+  - density
+  - io-width
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ddr {
+        compatible = "ddr4-00ff,azaz,ff", "jedec,ddr4";
+        density = <8192>;
+        io-width = <8>;
+    };

-- 
2.43.0


