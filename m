Return-Path: <devicetree+bounces-171841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE295AA058E
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:23:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B16C34850E8
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAF929DB65;
	Tue, 29 Apr 2025 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JIx/2dq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156DD2973D2
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745914933; cv=none; b=DRkC2N4w9qYTQtbsK5wEdGvhQdkOT9oJ8wG0HdbI0diA5AojIPY4IfbMWZqDHw9RcG4y1jeCAGZO9ORVR/I/sIwHnseoZHHy7sM/P6lcZC0SjakrMMxaozuXVivmS337uHmakrGo+satucKzkGI0d60uvg1O/PlTHXUs8xC8c9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745914933; c=relaxed/simple;
	bh=Cc1Ucs7d+DoVlcf66E1KPy7NQ5fP8mutIpm2TD0VDuE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MbvgkEMw7h9CWR7xFRJk9KNqCXKzTHJtS39MoSiirNo67LePIROrxnWHMatkjku3HESqyUi38kRi+/MMVsn93FbuQWxFvxhE/9sr045H2+70HAtXJ9y/i1CHL4Sy9g6FtV5lIF/+DKlWiMYg/V7jQ5CGODmy8HE3e7WD97IayN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JIx/2dq0; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5f62ef3c383so10612268a12.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745914928; x=1746519728; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rgc6ivQ4v0OBxVxiMV//REmkxOVzSIsF9RwMWgdL0S4=;
        b=JIx/2dq0IdP5lsWIrTOPOeR6rm7/Ty0PDCRQFTGX5B+VLkE2tL7NxkZqVceAoqOeNb
         mVD3rpFNJ6vrN1bXWUjkrbklE8VG8Ln6Kh5sh7Qt/Aj2SIfW/dI01tp9c/K4CfrTojtK
         Zfj/SQ820rMqH2oHDyia9AyjQy9PTH3yhVUkUaFBUjETIPku/bTrUT/zp0CJOl7PYAi1
         kGrPUWO5WpfGeskOfcmfd/cZWKL2Wa1e19CNBqGFjMDPEUpKD1sOiZNyqigG9cfN8SOB
         V6pxHsDYgZCtHXs2xg9dJ0+OoeOeXDu/esQGmZiOihr4G2wPV03hZctH/+29F2WwLBWr
         lxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745914928; x=1746519728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rgc6ivQ4v0OBxVxiMV//REmkxOVzSIsF9RwMWgdL0S4=;
        b=KQHbKAKGI+wZHMfTAjJgPFjLMQ3q0Y5E8+sVUE6XqWnCs/iEvZzWSXax98PDcBwIoi
         gSNoRJyaP4cpPROz9DS+AGMSYFOXI681vzlWGXQEfD7VEY5JI28bGHlfv+uAyg6teMqv
         aG/2LVBTfvRzGehltaP3Me5aLN1+hiKpm3MMbvkcWNNF+CbTJnie+hr05OXP4HLmJHbF
         e+GiZRA0UV8MgROYDH4FoaxaJ1+UgCSAHGZWUZKQx7W11oJmuV8/nfrvH1Phdd1XAOrR
         vTS0rZ5atG3iNOOrwygf+Wc3R8eQNBToHv3ThxliuT5sPKEz4OELI2k7tyO0XkGRhHBh
         n7Zg==
X-Forwarded-Encrypted: i=1; AJvYcCU1sBm0kGz4jTQ3cSTyjJ0qM3m0kL4ogdj3pAigF8h6vXajuEBzTxd+BDNsu72bBy5z2jkBoieQbkkB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv1qWqJq28ksKpS0SxbXO/fHgKjHxAmhpjR8eGbqPQRAJMMcYQ
	nu5iGtrXM7ZXRZUMPTBwuoXrfApnFY0EkYmhMeJpJc0JWA7MFA2fayAVH20psfM=
X-Gm-Gg: ASbGnct3Q8ntoQ2gDL5kENHjwfLPG45Fa3nXaHkalZ6lmZdCQINtUxj1r/yGxIYfYod
	iulemONFCicJi97UZBYCGcmGSdQ7B5DwweXQSdwoq+jcjahpCFbSp6rfKeqbZpRQgzK8jd+VeNV
	yqkxiFuQObheDepJXHLNT1v9Om/g6bljmwmvX541ewB/TCkXmNXC3xff4g+d9/DSeOqyMwWQMPH
	u5JX13smdTBxuvnWbRBdBHLWINqVTMsTn4ddbcR8I57rVM8o5h3coth4dVVqcbFri6FK4X7pKkt
	lg6w0M2NQRF03xgkuPTHeamKWLXbYjL2Lu9Bjg7xYhMonoFahrJynemffe4KK+zavCQnpW+PuY+
	BXOErAn2wrPnJcj3q+6hckMfJ
X-Google-Smtp-Source: AGHT+IFe3Pnn1X/IyxiNpZeYuCh2G0CyBjUHp/1BGmD7TkeokHlJhATW4MV7s/37c0u7zNh9awdx1w==
X-Received: by 2002:a17:907:7e84:b0:aca:d83b:611b with SMTP id a640c23a62f3a-ace84aad97bmr1190165266b.43.1745914928158;
        Tue, 29 Apr 2025 01:22:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bbf4sm737905466b.36.2025.04.29.01.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:22:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 29 Apr 2025 09:21:38 +0100
Subject: [PATCH v8 2/6] dt-bindings: nvmem: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250429-max77759-mfd-v8-2-72d72dc79a1f@linaro.org>
References: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
In-Reply-To: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, 
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
2.49.0.901.g37484f566f-goog


