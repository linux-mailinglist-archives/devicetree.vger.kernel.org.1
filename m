Return-Path: <devicetree+bounces-152656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70531A49BE6
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 15:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 970FA3ACECB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 14:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E3426FD90;
	Fri, 28 Feb 2025 14:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sNruckEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D969626E17C
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 14:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740752723; cv=none; b=Ys9Fp2JunP3jU2fkp0InOPrS3V0C9ewgpEtUxl5/rCr4qbbcM3nYq6ey/ejxIh+PApNYY4ilR7Kkf+LfY+qu8aagL5Pzu9f8MC1DcZCFzGUqSGS/jdS2dCF4BJD4qFPGGPW3x+ucs+nhBZwkzWr+Z9+ONZPogbhaumXrkCucFOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740752723; c=relaxed/simple;
	bh=q8yvSV3OfR1cMeYWUwudsYOgSeKbzLSKCy1iuJ6/+EQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C+fN6T/4t5I/MmK2bhcm3nejrHFXPBmkUlwkeZDkcJ0G3ntDaIfXgz/LlwguiUnPkAQkM1QZkx/mM0T07iMLpigON2SsKsQR+9ud59SlgJpKtiqmc8wR7la/Gq2oG9iD+bBIySR4fF+nHiDk1/cdQFFGPAV/b/YD21jKNuVvW4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sNruckEa; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dedae49c63so3894632a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740752720; x=1741357520; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pv4wwRg4MWsotmAwTgSc9LO+fNoS+BdIZnuXjMZYvGI=;
        b=sNruckEamZmIgRbxuKsDuxtQ2qhK0FsXxlNgxFoEGvnqgQAvpE4XZGWpyDeuCIJx3a
         zZ7qnE6eVY75VGT9RSahq/loP+KUwrOV/xq21lCuDXF1cCD0Orsr3TWLn/X/+k5MwN45
         yvTX4YvhedbAbwK8/jMrnMUi6jLWw6c4V68efQcq63+pG37+yYWlSRHno5Izz9pleDW8
         S+WaTeSCY0iC17+uP7jY2tP6pvqmAsdGNI0SsoFByMoGADPLWS5ntNfzVUf5ksPR3a3V
         VNQMprq8QBVlbxukdhR4hnnyIaVjOzv3h0pq+c0U7THK7rozvXPAa4MIQ14dy7LPBofX
         M+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740752720; x=1741357520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pv4wwRg4MWsotmAwTgSc9LO+fNoS+BdIZnuXjMZYvGI=;
        b=pOG7U1gtBe7nNfg0TdU+/LhV8rVkaiZofczElnQ1AuJxUw0u3ZkJkU7XgmzqDlHZnU
         va056d2fh4tXHZaCQ996cnFC0hbP6szlWCdM9mpmVmmHeqeaQz7rh9Hu7drabOKBhqiW
         4nCidZGdrPTLVQZHlg+FAeBabYG6KDUt7rN48O+02ucZk45dgLj/glU+diA9gMFgD264
         R4ascn5sBun2de5Iko20dxHkIHUGA/oCd9jgCB7lzJBgPhAGhcnrfh+fWV+dG+ZnnpFs
         nFdZsUNsWMXKE/yE02nYsQnmHe1w2dTc1mIju/jLCYrSSp3oc13suR4FOglnfKZCiykP
         YDBw==
X-Forwarded-Encrypted: i=1; AJvYcCUN/NJAQmU2wDtTj2FYRU/XC3lVFNSV1/JC/zrUhow+hFq57faXvjdefPF9rBmXd/A3AnEB6u4rSxqG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9scaXW810vw3pNY6qs0F1K6HqOjB832Ha7fuSiD9/b6kLzhHu
	sKQkA8g6asWM4I5EFfE05SMoX2y77TY29dOrzGS1ZGHtzgokzVlfNwyjV2Xv27E=
X-Gm-Gg: ASbGncsIBsF7O5ZkvZDnkKWM5qtOAE+WpnRzLi2dBy32vGmTaHADgtPXNI33E5qcdv+
	ZU570m9h89IRcspygmhRLlnylX5Or3D2saC0JsA604pF3YqSaety/9Lk2XgcRnRsP0GOIyA+b+x
	rPKrTuQxyvNjQqVbq2N9DTY3gLJLpgXf2pWSThcbRoa+538kJJxeW0EHlKg2650n8FUemrrVfw9
	icRpVlkDrlGttI69hcPhuHOU2dQNIenRdWB5iC9nHHYYvmbm4LYvjE2HWEq6jebzS48WJGmzE7S
	n1H+xQyIH2th0Y5kIH7lEn9CNNLa66qpwnMN4gp3ay5d6UaT7qpseQbe5NY+y5/P0IFrVrE8hqB
	feviOp3lVXQ==
X-Google-Smtp-Source: AGHT+IE/1tdmhyjPnwbfzddWeK3bk95/GNSAF7R8hQFGpqHDHMj7vR+nD7yX+QHUckF9GBrqLY5hFw==
X-Received: by 2002:a17:907:7f27:b0:abe:fa17:12e0 with SMTP id a640c23a62f3a-abf25f8dd1dmr349589766b.11.1740752720119;
        Fri, 28 Feb 2025 06:25:20 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c75bffcsm298754466b.143.2025.02.28.06.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 06:25:19 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Feb 2025 14:25:15 +0000
Subject: [PATCH v3 1/6] dt-bindings: gpio: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250228-max77759-mfd-v3-1-0c3627d42526@linaro.org>
References: <20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org>
In-Reply-To: <20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
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

This describes its GPIO module.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* drop 'interrupts' property and sort properties alphabetically
---
 .../bindings/gpio/maxim,max77759-gpio.yaml         | 44 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 +++
 2 files changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..55734190d5ebdbc351e1f91675dddd8a9db80cd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/maxim,max77759-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 GPIO
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This module is part of the MAX77759 PMIC. For additional information, see
+  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
+
+  The MAX77759 is a PMIC integrating, amongst others, a GPIO controller
+  including interrupt support for 2 GPIO lines.
+
+properties:
+  compatible:
+    const: maxim,max77759-gpio
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 2
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupt-controller: true
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+  - "#interrupt-cells"
+  - interrupt-controller
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index 86fa62154d3b23bf84ce2d53cbbdc33f3d43006e..a45d1bd64d116d14bc05a64fa3da852a41e1de7f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14347,6 +14347,12 @@ F:	Documentation/devicetree/bindings/mfd/maxim,max77714.yaml
 F:	drivers/mfd/max77714.c
 F:	include/linux/mfd/max77714.h
 
+MAXIM MAX77759 PMIC MFD DRIVER
+M:	André Draszik <andre.draszik@linaro.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/maxim,max77759*.yaml
+
 MAXIM MAX77802 PMIC REGULATOR DEVICE DRIVER
 M:	Javier Martinez Canillas <javier@dowhile0.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.48.1.711.g2feabab25a-goog


