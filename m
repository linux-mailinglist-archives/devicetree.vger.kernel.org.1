Return-Path: <devicetree+bounces-146274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F3A33FD8
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F23C01698F8
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 13:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96EE923F421;
	Thu, 13 Feb 2025 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x9I52c7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD44423F404
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739451920; cv=none; b=sAJ98sPv5PjreNuyYNPFXcEN6gS8j4RxDwEuoovt8jNKTXO2PaVAPUdNVUXUnRaH0rxjXKNvcDjdbmKZ/Nb33SCmA6K5/s7amMz3ylRmnuZQMJMweY6ual1AJkXSD4Aj4irJQG0Bj1WqDt4LKITt8KQqo4hhjkMtfNbXb+Xlx04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739451920; c=relaxed/simple;
	bh=ygfKgwFm02MPjCPY1HixRGigRORpbX7fhEuE+FfQvu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XmxS+CRB5BznOUmYkVPgyhojCwic7DOkGgIwEoM8UepvbInTXf+o1S71ctPrscyqqupRwBUZy5gxA8uE7Ebq06hKizjR9zr5cB2Kb6008vr97DR1yea+tquqfQ0RHxqEy7/WRZSpxLlb7D7IvOlUO8Ls8wBRskuVOiJit+H2iuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x9I52c7a; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4395b367329so5412395e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 05:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739451916; x=1740056716; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iDZLTKxxQDiElbpYU/xxls41XiMypbn1c9DwAMmHY20=;
        b=x9I52c7aXZhpVAfUTJB130E/cUxCl8VYVsarP/2SoMQLzqN4qIzjxKPhZm6JUjmzpv
         6BoupP2jeBN9726dMQ85qexfHs7SgMEs3f2wMfUtcAeZmOy3wz1mLVz0jZsR4mcJ/kUP
         F7iQou6hT076RTlu+YPJjEuk6r8k6K78HtKdp5J8mx2jdq7K74HEcg7YntGVeQtHpE5M
         ZSLyJAWboSVakFIRC9VCY7Vb+5KQqIeiKP/NYxUP5YF6l+fV4NrGehW6XUOzDMnBKYir
         gkskuJuZXcUWhudm68RGIIW3geTE0UCdapmSEL6D5nZP1sDz5ix5J0vXJ5sR9DPI4rsw
         MAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739451916; x=1740056716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDZLTKxxQDiElbpYU/xxls41XiMypbn1c9DwAMmHY20=;
        b=jdAv+756Ohfk7/wGKF/CvhqpDsJuyk7uDjxnlmDbZn7fGUQdpNE/gSUsZ3ZBQO3PoR
         vmkDI37Oe+Ty+BpVsojJnNtw0WukhUpRzieISccMazfW1u3+PeUiJGyhOEWnpR55RE0v
         WRqNhGlxDgmzmuU8zXzxz23fpkROpw8emKX9Tb37j+Uwss3t8QxTfqBfQxqWR+RXu52u
         s3mrmfBw/Oy9VdX1JSH36DLjYv570I38clqHtQWzNtM36papCT7Kp1y7kUl6iqPYmBlg
         Hlcpw3vyC4gax4816dZF6wFYoIl26FLOEL6nDb4Rc3FqCG8Vaw9K1C+IWRA09IT9bBFS
         HmsA==
X-Forwarded-Encrypted: i=1; AJvYcCWGuXHLMtHRf3bSqZYEiZyCd04fSnTlxcKsJKBY7G7awFXQJwCEGBmcsNSGyVV6iipch3rMNnQIxzLL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywaa1GUeeHt+3rjKIwqrnpdgERs+39Olab40Pom1Xn7PLdfe7d1
	9TgyMUpw+gJCIMIYMohvC8MQcK0yeJyIfS7hsarzQ7NLXmUkXZnp9qw4uEzrfBwFDbAvaFvYgjX
	/58I=
X-Gm-Gg: ASbGncs+l+Z+JBp9M69LorJo2Eklge2akhRQijRBnEsLCU750gY4JvnM3qDXPtymLIZ
	y3m+LNeeprN2TP3HvvmgRe9WKA0wbm2B+nvRmONbMhTWYbDddZkin4Mq+RlLXNt0cuoO06SzskV
	XwiPK5qWiqKcCl4BXsKLmpvjG/WdfacTS0xtlX84uzKyWCNw9p66TReMxd6e4fSB4sgwqk2oglE
	lgX6/ybZZwUyL1j0ibTN+m0u95P3yqz6IG348p9lWCmAkssLmJZ8fCRLT3rdAUPpKLVNBJpkeM4
	isTV3VLS5m0Da4WgoXw8qGtsYv5csvXB+cL2PheIljN6pFqg0obuVZTlfI55fJU0/wjSOsg=
X-Google-Smtp-Source: AGHT+IE5WnMtblBw9bIRTim3qtt24a1KeYp9jziJc9822H6YJkG6wfJIr/g5tZ1Z/h2vjMhWRm4IyA==
X-Received: by 2002:a05:600c:2309:b0:439:59cf:8e0a with SMTP id 5b1f17b1804b1-439601a11afmr36920925e9.24.1739451916481;
        Thu, 13 Feb 2025 05:05:16 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43961884251sm17004025e9.31.2025.02.13.05.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 05:05:16 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 13 Feb 2025 13:05:14 +0000
Subject: [PATCH v9 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-gs101-acpm-v9-1-8b0281b93c8b@linaro.org>
References: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
In-Reply-To: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739451915; l=2127;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=ygfKgwFm02MPjCPY1HixRGigRORpbX7fhEuE+FfQvu4=;
 b=p+BdejU3bp4Gn9o8URtHOIITqvqQBk9qAN4b77rnytls72rwCC5qbe+5PGAN7kGVTb6VHNFUE
 JOS9Y0RwVIRByzxT/6brrSn8HdcGJjC2twSMQD/8ol6iU9XphUUIK2d
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add bindings for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
new file mode 100644
index 000000000000..2cdad1bbae73
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/google,gs101-acpm-ipc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos ACPM mailbox protocol
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
+  compatible:
+    const: google,gs101-acpm-ipc
+
+  mboxes:
+    maxItems: 1
+
+  shmem:
+    description:
+      List of phandle pointing to the shared memory (SHM) area. The memory
+      contains channels configuration data and the TX/RX ring buffers that
+      are used for passing messages to/from the ACPM firmware.
+    maxItems: 1
+
+required:
+  - compatible
+  - mboxes
+  - shmem
+
+additionalProperties: false
+
+examples:
+  - |
+    power-management {
+        compatible = "google,gs101-acpm-ipc";
+        mboxes = <&ap2apm_mailbox>;
+        shmem = <&apm_sram>;
+    };

-- 
2.48.1.502.g6dc24dfdaf-goog


