Return-Path: <devicetree+bounces-127641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA39E5DAF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 469BF168207
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AD5226EF5;
	Thu,  5 Dec 2024 17:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nWt3CZVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE194224AEB
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421232; cv=none; b=iuiesKm6LVgn5gSSrL40UYhK/oLJnPcCnWuyt+/evwu4lsFPJpVKGzXkjuPf6pzSwXSZgrTffu6gwaF2uf+VaX9JazO8NDYcvWS4hLF6l1SUnzEL9TZxk2XmI7LJNBYSb2dkHSPotISODetT+P7n2bTlry9SFZWIbY4R0hAPOms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421232; c=relaxed/simple;
	bh=BjPBsTXSUJhOZ07W5tsbKN6EJfyDsDv5Mkm/n+Qnf7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kQsg6Vr9YX/GODo9EfRYpayExbqwW4Y7wPnd1UHh7nHULA15Vv3QVPK/my1IEVYbAhz6sR/k+X8ny9IjuKRqsgrG2cUegAlPu6Mwq6doYGFKtLCcLjfAhr8H6ugNUkQQj8V1eT+SpDUlzKu47MrIevZpIFZ47WOI9CtoRCHT0dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nWt3CZVl; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434a9f2da82so8622125e9.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421229; x=1734026029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PR2xJ5Z9SsCGNBcYWItEbZKibtJD439Z5G3+KUVhGYw=;
        b=nWt3CZVl1YtjAofaSKC8UUvj4W4CSZ5TBxSfH7rYefKpLvtF/xCJcptFyvUFPGHRR8
         Qujd1olIpAxyNlm9rNwq9mndcpltD0fZwea6IPPOZ2J446yiu/DtF2JzQCL5RNmSYI36
         fZ2Piaj4eoPzPXWxRXNPISnot+XaEWAYv8b1kKrLlXchGl2xs9GN5uYvnskQTLDQDEiZ
         3tz26rdQvgqagq0lodDthWh0N+ItkgSedF83W4dIR8YcZwmyqKfPZETCjrI8SotDRXDW
         Tr+9ehRDs4DZJL6zJ2ebJ5mxvAOS21PyP9qnA6tEhBVxbyBs8viE0hLHdQGVMEWEwhzt
         ZWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421229; x=1734026029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PR2xJ5Z9SsCGNBcYWItEbZKibtJD439Z5G3+KUVhGYw=;
        b=j9GB+DMjac51J4gllKxbMaMZPaWkWpLYfO/wTU68ahzgmCcbHMPZhAGV4n3dVbWRaS
         KLt6Vorcua2CmbpEGYLsjnd2GHCgCXG2Xecf16ibVCuuJmSmGd/4BwdblwsYWloMti9Y
         hrMxmmTi9fBGlEsiwWjyt1pKbenIR1bHZr48Wi5nn8vj2tP12HWR7/u1csucqaXCAsHl
         jMNKHlGe5qAtF8i7T5Q1rhNCrcHNwF64Iz0IGuSnG7vuHxAhTEW1fz1+TGt8nOJq5mXs
         DzGA4NH1q2HjB2W3lpd/Yl/CNyYsQtYqCOIYm8jaIrpqoZcG6WLfWpZP3oQ2IaZGig+Z
         2eIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCI0AToHYLuGnzr1J7V/fFJvGcGjWnZ9uOCkxzQrnZ1ohhoclmbwVGhTdcwo22eUrimXRr7lvribDI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9O1bUE6NdUjyOwkOHhxG2CbgVYS3ImtHkaSa+hYoJlOAve6Wc
	fKyx3NKZBZAJTOaoytPmZC3MB/q/Jr5d6hVl6erE/CJpiyIrlRcqZUMUUCEMeAk=
X-Gm-Gg: ASbGncvlJ6PxNbcKto0AUUjdqt08db6NPdBslhnk5YFp4cW9i/oPlx/+EqQClhJvEC4
	aY2oBEDPe0NA75hmhh1UZjhudD7uPJ5BhBIBO5l1ovO/+q6HO/ZeMkvisZENnRgN5Sx8eM9hqLU
	XoOd0hNJPtITRljX2DifvWn4vClU5JM+2R2vAzXJbj05WKrMgfunYPaBLMYkWAwqiDBMKu3MDHJ
	fPGA9tx6hW4tkqSlWb305glX50o6t9+fB8C13EhlD9YtfGXW/8Cog/CesRsIGU63641TL3wdm9h
	vEuVv2Drj36ymcWflUAA+wMh337l/jht
X-Google-Smtp-Source: AGHT+IGglrekvKKTqqsY8LE2N+RmZaoeHCt9yP48Sso0w5nnfmLh8mPNzUHKoOLK/L5/37jluV81wQ==
X-Received: by 2002:a05:600c:1d21:b0:434:9cc4:5139 with SMTP id 5b1f17b1804b1-434ddeb0492mr2236875e9.17.1733421229341;
        Thu, 05 Dec 2024 09:53:49 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5280fc4sm67882835e9.24.2024.12.05.09.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:53:48 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
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
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: firmware: add samsung,exynos-acpm-ipc bindings
Date: Thu,  5 Dec 2024 17:53:43 +0000
Message-ID: <20241205175345.201595-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205175345.201595-1-tudor.ambarus@linaro.org>
References: <20241205175345.201595-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for the samsung exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../firmware/samsung,exynos-acpm-ipc.yaml     | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml

diff --git a/Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml
new file mode 100644
index 000000000000..bfc9b4af9ea1
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/samsung,exynos-acpm-ipc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung exynos ACPM mailbox protocol
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description: |
+  ACPM (Alive Clock and Power Manager) is a firmware that operates on the
+  APM (Active Power Management) module that handles overall power management
+  activities. ACPM and masters regard each other as independent hardware
+  component and communicate with each other using mailbox messages and
+  shared memory.
+
+  This binding is intended to define the interface the firmware implementing
+  ACPM provides for OSPM in the device tree.
+
+properties:
+  $nodename:
+    const: acpm_ipc
+
+  compatible:
+    const: google,gs101-acpm-ipc
+
+  mboxes:
+    description:
+      List of phandle and mailbox channel specifiers.
+    maxItems: 1
+
+  shmem:
+    description:
+      List of phandle pointing to the shared memory (SHM) area. The memory
+      contains channels configuration data and the TX/RX ring buffers that
+      are used for passing messages to/from the ACPM firmware.
+    maxItems: 1
+
+  initdata-base:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Base address of the configuration data in the shared memory.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - mboxes
+  - shmem
+  - initdata-base
+
+examples:
+  - |
+    firmware {
+        acpm_ipc: acpm_ipc {
+            compatible = "google,gs101-acpm-ipc";
+            mboxes = <&ap2apm_mailbox 0>;
+            shmem = <&apm_sram>;
+            initdata-base = <0xa000>;
+        };
+    };
-- 
2.47.0.338.g60cca15819-goog


