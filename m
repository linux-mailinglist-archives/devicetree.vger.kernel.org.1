Return-Path: <devicetree+bounces-171539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33159A9EF43
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 13:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 694893BA392
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 11:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2534267B8E;
	Mon, 28 Apr 2025 11:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QIzvOetu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D1B267728
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 11:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745840173; cv=none; b=ciVOdXT7k+s+OjtBgRvjpk0vpqEnXHUdBcmpDwinE0UwIWtNFID0BNhrKHpZl0qzsCtr5G1lGa0nRYSRKN4QuJMO8ooHmfm2HUKDw8fzvXyQwWZEduiA5W4/Q3Ex/UvorU48q8o6rgUg0e4IPLZf8mREWA/jb7RxKmpVkqiZXQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745840173; c=relaxed/simple;
	bh=U6P6ZeSrPYv97XE+r6V4N7rXLoprPzfswXE2mWXxNIc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SUxT+K1LVoAin5r0JYqXBK7lR2E84zgi5pwi0i/EgxCCWG6+nCbwPTGhNfiOvXfB9n8DU1QAulG1H6is3XBbWUgAMPICRwShBYGfe+dDmD9ZCzgXuKUjmi2sGKBTCsB923/mw94Bw3PT92TSW5Ib7AGLVp3vPb77xXiPXiBuQb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QIzvOetu; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-acae7e7587dso704426666b.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 04:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745840168; x=1746444968; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NBA5CuIc8YCbS4yzG+KOg86MsWIMfhXd5TGhL3Zsn8A=;
        b=QIzvOetu2zQNGBnY6qQ10Hd0E2cuXjR3yEknUr4z1FLnwaXDRKbM19Z5ZcAU8wm9M6
         lS9tLZJ19BvARJta5dYONz47toSyzpXr8C/EkCaZDalPz3aKqz13iePB1O/OVOX9USre
         o+EXG+Rq28vJy7hISuwU6UnYMG3tYs+RoYuFlIZUYBKmR0ZwXX38VRtzqSCN3v2jwMrn
         esWXADdmjmuGKxM3exWpDG8l1iQS/N3Ansdjjv6GL66QuBrBHsd+rLq71vRENBBFDIsP
         kxothbp/p6gsTA0v7Lro3gFRIEyyaR0bGhcCPIVqEuPGXiAt+c4EzKBv+KlwQzEHR8qb
         QTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745840168; x=1746444968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBA5CuIc8YCbS4yzG+KOg86MsWIMfhXd5TGhL3Zsn8A=;
        b=uk7ifBcIB+w/2Qjzfb70PvZt5cGyyKtL01Q2/zOMr6x1OGuH0JVnvjeGXBlKOp21Jy
         TfhvQu1xnZs7Ai4ZwaIloH/wte7jU1PLvVJ7nz43ytXZenW9obL2UpiNa3ucluyOy+Fl
         n2x/UpnrwxEuOKv8XUPriYdVdR1UGwGteChu9qbK0ZGsZeA6813FNtr9L9DmLL3R9AFA
         sZ+PuWTwqFWfAWIruoG/5L2bb8Bml28aHTHaGWQGOIfwrsDHWx6lhbep6LayZMROUyjx
         UkQWDdQZ0YEPqpN8ble6pMNumEVs32M9WwoQnH39Xu9Vb2ajpOQG6BIVSKr1T+XnmIGW
         JbyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMbxMScE/xijLI6eVgx/kyHcP0vt27bsPhjaNi6Vxujt9lv+9JBhJqD3utI0aA7LEEbt8J6/NX2lOW@vger.kernel.org
X-Gm-Message-State: AOJu0YyJkQ0FxcupcQq1BkrxuStS7nR2pp6GPtGhXJiMaq6ve6S0w2UB
	TCKa3lSclWTg4uFArYMvbwPkiYVfM9V0x9t4kucyBCuRLn6RMd/pe4h6IU1cvv4=
X-Gm-Gg: ASbGncuFCjtv1ki6yMAZWDmRwwbtDzWfiJQkUrfAVMmAv5srUpbKwEKs6zh4JUXxHUY
	VPdLyt2qasaaOQye62XAVtMTrHsAncwdKD16fmBa13fk8V+iwiQmHsXjWvqFh5UzV0NvQDVFmIr
	CWbhqtogOXdzWNGJnwUe47AtqxTpFPZNZqH4uKJ10ZO6XO9crkCvgqpL+MCBbMGgd7L9+ok/d/Q
	tOc2QqKOA2SJcTKt/Qq7O460PDzY+xEvht8n31LrlFozT2qHHGLf0tPrn4VZUS4bm+xlv0DWo8R
	5srkisxBu7yURwDL7QnkHey0WYKz/Cgv4uXDDTQ1kSdiDBDdWjyYrns5ZgwP5jPEgNPprlm+3cy
	I2T0cmIG8eJoir6ZD0vh1v9IM
X-Google-Smtp-Source: AGHT+IEg+c7X+Ta+5FJs9im5JHBiLsTS2tROmBMx41A+5pPg9TXu3iCXPaGd3tUwOuhF2Ei4yP46AQ==
X-Received: by 2002:a17:906:9fc6:b0:acb:5583:6fe0 with SMTP id a640c23a62f3a-ace71095745mr954872166b.15.1745840168498;
        Mon, 28 Apr 2025 04:36:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edb1580sm619937766b.175.2025.04.28.04.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 04:36:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 28 Apr 2025 12:36:05 +0100
Subject: [PATCH v7 2/6] dt-bindings: nvmem: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250428-max77759-mfd-v7-2-edfe40c16fe8@linaro.org>
References: <20250428-max77759-mfd-v7-0-edfe40c16fe8@linaro.org>
In-Reply-To: <20250428-max77759-mfd-v7-0-edfe40c16fe8@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes its storage module (NVMEM).

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* drop example as the MFD binding has a complete one (Rob)

Note: MAINTAINERS doesn't need updating, the binding update for the
first leaf device (gpio) adds a wildcard matching all max77759 bindings
---
 .../bindings/nvmem/maxim,max77759-nvmem.yaml       | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1e3bd4433007341a11040f513bf444866b9e38a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/maxim,max77759-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 Non Volatile Memory
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This module is part of the MAX77759 PMIC. For additional information, see
+  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
+
+  The MAX77759 is a PMIC integrating, amongst others, Non Volatile Memory
+  (NVMEM) with 30 bytes of storage which can be used by software to store
+  information or communicate with a boot loader.
+
+properties:
+  compatible:
+    const: maxim,max77759-nvmem
+
+  wp-gpios: false
+
+required:
+  - compatible
+
+allOf:
+  - $ref: nvmem.yaml#
+
+unevaluatedProperties: false

-- 
2.49.0.850.g28803427d3-goog


