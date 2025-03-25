Return-Path: <devicetree+bounces-160438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D161A6EB7F
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20BFB7A2F90
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457F2253B60;
	Tue, 25 Mar 2025 08:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="audrdITL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2A71A23A8
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891230; cv=none; b=RZoC1MZQ5xdyug3jvoDSaYGrSurWizvX2kuyWZHm0Uis+2k/hoHFo2CFAw/Iy+xCSkBN6Wb+CMXRVGA6FibDHNFdd2YW65CoJ2LN+gVGlCEw4UAOuW9vmvlIeT98oOlpe0H4+1OASZ4cj3B6GlV+qaMuSRK8MiOFvz6m20P8kmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891230; c=relaxed/simple;
	bh=SPqlnkjtrS5DVFkshdhSurAaxj8Nd6Gmu/f6A5AIxGQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T86w9da1Lcw+yXaOYZAi8z+wIwae7Dbhos7rojZGfBHWPe4aQTUcDM0y8J6oPYb/1AkYK46J5daLO2LHEHcIsho50hs3z6bYBM+MsfII6ySg6EwdgGffSg8Vht3zfWvYV4+PHQy1aKqyn+2jBkC+yO/3BcTI5hWpn4HGMKe8DuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=audrdITL; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so8411152a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742891227; x=1743496027; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6hGtk8l3NJ5m0ZZ1f8dhJbnrFpOfREyFqNdfBX5qs4=;
        b=audrdITL+3JD0qjIVIRgUWyS8b6jX7sm9yXG/1MFXs3U2QlOh9v1y9c3P9kozkKtDS
         ZnP+aZYmF02Ep4Xb+HIxg7sleFZZTQxJei205UvCICrM3DTPbfan2E2apI/cE0EPeMb5
         zKUd5jMRjhTYUTjqfqetEPUlDbfgITeFxcxc8c7Lfvo/BGzR/SbW6DhZhFCUZaEFt4sh
         GLF3aBxYusNBB5h9dsfP4RjFQwg3NedQg1SiAnbQkbw7Oy9AsV2Qb8Oz8TCWC1LjHpDo
         AaQE7wQ4G6QBG/uh7pvua1kfBH6+MY5oGNguecz6RV+tJx8f3Lr17eTNn8cxrSvBQimh
         RFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742891227; x=1743496027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6hGtk8l3NJ5m0ZZ1f8dhJbnrFpOfREyFqNdfBX5qs4=;
        b=F3OIgIW7vHCRUzpen4ZFZnCs2YZK/nkslCcHHpO6Sc0WaaV1+nTC4g4KKjcqN3fzEU
         1xwrLTn2P6UVQSgPGybIEpccqqLSx+yInlrNDD/eUinfsakVdzF9ZvCz6Er/eXTfGMDJ
         vAwyrnTyHernU60NqTirpTKGTunOeTDizMfKw4OAQZJbr6D9f9vxpMzzgsoG5d6WgDkq
         /iPNh0NR8zUYZtMzNWUuE7z+szwAvrp8CVNuHLPPX9VH3M21HihA93HkChRrNKtikagY
         F0Mq9QN4wApEZgM47j5pXpHH62z9mw0WrNEa3tP4Raa/jv/E3C9UG6AsmbUNUe1FBeYf
         eV2A==
X-Forwarded-Encrypted: i=1; AJvYcCWF+vhqnkqLWNSI6SBwQ8ZuhpeWUahBDyi1bHosCHAMbmE2vyssRmdiJVDaUgRQB1KY+hhhelMjQOVM@vger.kernel.org
X-Gm-Message-State: AOJu0YzFDqQqM/gmRGffJaxlCkpiH2ofnTuG9FtNs1EtPf1cgKQnKFC2
	PXq/XArfjG3JzJYKi/d4TKs4E97kUbcLTdOMzR8r6lHRdIMx5oqfDDRnr9z1Hpk=
X-Gm-Gg: ASbGnct5uHzYPfdEP+4s6tAQSEp8lio8KNVzwceZEEaS345XBmg1fOHyyw+qkECavE3
	mbg7Tp98fDff+43aYZ5ogB8y7V+WlK+E1xA90n7t7kgGS1iripuXLMVmx62ud/SyosS1vjkvugg
	l4/FWlDbc1lMCjGebqdUsLqeISL9GUhTFRBl7UJxACdVqi+ODMbCqo80wXfmxRlDBbsI/4ImASF
	9yP2/URLCj1Viz8CooF1s2540ikzmHsgnVHpG9AnjeBOIQCPmby0gt7g1wbdo5MEHOOIO5R8ezU
	tsqxFyZESa1PZTeSK8SXmMTpH20+I+Bztq1vjlZIMvXO1RR/7oN6ASUMyoZJet47w6nSzPzIriW
	sxrmc5qdBcwDXg+XedDjy+Xqpd6eT
X-Google-Smtp-Source: AGHT+IHsx90NaiqQbXCOGp0fcibvruE9A5P7xlNyFKRVB8QYQJ3nkOK83Yyo533oiwE+WjcVKloNsQ==
X-Received: by 2002:a05:6402:5243:b0:5dc:7643:4f3d with SMTP id 4fb4d7f45d1cf-5ebcd40aff7mr14451507a12.1.1742891227067;
        Tue, 25 Mar 2025 01:27:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcce36d66sm7377366a12.0.2025.03.25.01.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:27:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 25 Mar 2025 08:27:03 +0000
Subject: [PATCH v6 2/6] dt-bindings: nvmem: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-max77759-mfd-v6-2-c0870ca662ba@linaro.org>
References: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
In-Reply-To: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
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
2.49.0.395.g12beb8f557-goog


