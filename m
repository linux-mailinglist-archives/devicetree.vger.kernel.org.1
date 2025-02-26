Return-Path: <devicetree+bounces-151682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA07A46872
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3E211730CB
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F156922A4EE;
	Wed, 26 Feb 2025 17:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="km5KCfub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF79E22A1EA
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740592288; cv=none; b=ls9PiZlp5526Fwvwh3950FG9MfslWOdXgHgzz9q6HfzlIiz6+4NEkyq3yHb5cBTrxT/MpZPGQMd/XAdjjLtemGiSYtleny/6hfqdAUq5Zb7WaQktqHefSfVYdTUhDJMkXzJvpXHN25aC7HxSZjamiC5v66aZdcowL9mAQEKAbk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740592288; c=relaxed/simple;
	bh=I4feaQK2NeL1iMZsywRHTjEz/SueHsximMXGo9uKgLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NwrwQSCp+numfb5Eq8TpvS0Y98D1offVr1s+Gww2flZyW8GvyPMjawX3W8V9adxmAUOpyaZptCOSMAL1VVrAbvRFl3g6ZHr2wCVi5Dunw6UdaBXWDEGh8vAAbtN9UGqGVaXeqyjkdopI9dUUUhAwyX1K4sd59lKUyACTtgyEoeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=km5KCfub; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e0516e7a77so10923443a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740592285; x=1741197085; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A9YomS+c0wThxhIl04CUTErMlrQA8JmWzVl1nv3uerI=;
        b=km5KCfuboEwYf3Lk8LTH7jJmnQvgCD+Dc8ClSyE8K3EK2mwV9/emetFM6v+S7X7Hlu
         4uK9rloDtfjz47LEtO9xjUAS9Oj89VIw4I3Py/QU+qc6r8zA39pTHTvSvq/V8+bgBiZY
         hj5VZSTd0RnEm9E3xpJx32rUEzk3Nrf3/Ze6LTAnx0OR0x4paJ5o9GLhCYhwOG/+Bxmb
         05DHgc8rvMxqaTa+VuQyBDwUiVbBEPcYOTO1Zf1pVtoq1c/JHNW0hyVMxDy1vTRWohTf
         6h9LXVt1sg0IlQogJ2yHxaPYzhO/n6JStcDD2mwliNsVUV9qGJB9iGWYaemL3Fh8pwc3
         egIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740592285; x=1741197085;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A9YomS+c0wThxhIl04CUTErMlrQA8JmWzVl1nv3uerI=;
        b=FZahU/N7x9wy8jsFoFsYLoHFQVut9YxhhCh7YdpQQYySm+32UcCxTguMYXEEcq1Vk5
         teVFDnR1OC+EGlSbQZp9XwdzqWGTvmNJ6gjO+MpPcUN981WiaUIQtYXbv7Eiu3ykNcEs
         wd/MrN/chyRu6Ec/wi0I8P6oBh3IJ8SCA5TjKfLdkIg8iR2y92DiE3CW05IvarpivGj8
         m1EPJaHFvrbQ5rpW/IbnqhS5jntdhMoQ8G0lljSRLnyc2vqb+EXZFGZ4HTo4GWuOFuo+
         Y7YO8eR2jHOEjicsqurT3/c1xsWdoYDSCA2j1nqwo4LH5uYXE/djULTUnH4WY5wAqLIU
         hVdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTprmBc+s8+fBSEAhOxNx3WiiRJ7DA7anC1m5YnJqlBJCcNuuNRWCDTi6Al6iAH1IcQ2bNuysmZU5e@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc5vqI2z/mPZ0d6p2CkVoQ2j5AW+9o+KL9I+IEfkbUTJSQHv6W
	/Xsm7uGH1iZk6MngcKwWwT71TqY0etctw0rA0vhXeARkR8r6WtaWrcudClo9V6s=
X-Gm-Gg: ASbGncv4+8JFK2EDdPUboObqrNuoim2f6VEfJ9syP1Pk+XpR37PDWWS659Ivur3e28B
	nAerup2/AIxK5IaOCx3oP0jbOgzHojUmQ5f+HL2PrCcF/pAIHu5G43O1TB7OUYg4Ptc9BXBxfxy
	2zIfAIdHu6KK4TtUNiZ53/09RzCl+UO5VvXjkbAzBWVCy0WDrXrGVjrIy8GKlCIJ2sLtz3MxHUD
	niW43oYJI0aqMp8uchA+u8JXz3C0GwcvfedoZ7C1rvwtBQh5KV0zwaSNSW2SpGWG5HtPmWSfVtG
	cfGmx+WeOdoMIBcLkQeCZWtuwXy0M9rLlUlm7NZ2HF78CSWH9R8S5N3D0P2n42Vw9rZDlslzB8d
	aaf7AZBVCBQ==
X-Google-Smtp-Source: AGHT+IF7S3Byg/2EA8G/VaFXwC0WijN7Hyq+Y45Wz3xtOjrJyqaLL3aB8h/6a9ePi5nZG42xtp7hZw==
X-Received: by 2002:a17:906:6a22:b0:aba:6204:1c03 with SMTP id a640c23a62f3a-abc0df5d89fmr2632175766b.57.1740592284983;
        Wed, 26 Feb 2025 09:51:24 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1cdb131sm361889866b.7.2025.02.26.09.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 09:51:24 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 26 Feb 2025 17:51:21 +0000
Subject: [PATCH v2 2/6] dt-bindings: nvmem: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250226-max77759-mfd-v2-2-a65ebe2bc0a9@linaro.org>
References: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
In-Reply-To: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
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

This describes its storage module (NVMEM).

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
2.48.1.658.g4767266eb4-goog


