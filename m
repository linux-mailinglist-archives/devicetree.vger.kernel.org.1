Return-Path: <devicetree+bounces-252498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9736FCFFD4B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29B163027825
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD92930CD91;
	Wed,  7 Jan 2026 19:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="r4y+dDdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B17E3A0B3E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 19:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767815151; cv=none; b=ToRazOmH5cHi6p7C717pdxIrEonPBP3z0ihqAJNG2swX9pFjulBrQHuXjmliJt6ejgYbfPiPy0+fG8B50tt8sRNv5AnioYZHdVKr+AzHvB7KqRLN7vEisyRW1cuA7iC1LhZaJeNmGCSm4z2wbbw4jN5PZos+Cluq+8iTbaZWH1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767815151; c=relaxed/simple;
	bh=XlS3l2ddno0xP1LY6X17Rv4cA5lyU23AwGOamYKZmdM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=raZUn+SFDNaw4OVzBnXuI5a2UFNjnAPolj6dYfXUQKI3tcdCZ1VUpfBzYC1HXBfDP7Cj6HyxceKOWb+ubPi9xKe6+grfPwRvINYFnQd6rsXKkSodq5pussECYcNq4bsO7xJqnJIR3GNwrnNAhsVTLPIz5XGrRD1WDDwGdtqkmBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=r4y+dDdw; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6505d3b84bcso3749680a12.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1767815146; x=1768419946; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=quK5ciOPGpJvzJstcVp2ODwhOQdezz2oTPhzvAyikRU=;
        b=r4y+dDdwLa2rgSDk1vEVbt7AvH3tEtpxoMYAGGO3MqYr77zTqPS6MmTYdGK8FK2uWS
         CGmRVWj+Y71d/O60osYsp++fsUsvGqUufM2BPWqJWl9zfJ2u82XoSEzZITV+cBkm2Tcm
         Svng6pQdp9eON0V2BV4K2PGZGXv4Y3rLtPfME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767815146; x=1768419946;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=quK5ciOPGpJvzJstcVp2ODwhOQdezz2oTPhzvAyikRU=;
        b=OA/Qawh8FYitPhstVhj8CldDKv2e7iXaNJw052EJLEf78koIJDKMRwFMEfw5fKPWRU
         GBgPuPzaWvVYEkSre1c3zywL+kSSezfhT+Q3/f49Oj5KDeAE7hX3WJzS5c6FvysFsHk1
         zX0wx8Mgtf8pqIofYgn7Z+74MxbQ2HBfLXDNmMm2EJkVAVranfvwxzHY/jJmQNyThqy+
         PoQhqSQKakrcRCUONEB/GImd4S1xwYcCwuBkDgO0Yg+7facfIEIpWurCX3HjfyUAFZuR
         LcdXPYpSH4t2CrOEw8nIIpZ5ryg5RxzTxU9XycuDFH3Uzd743+AZLVo9K/zU7NxHddnA
         r6hA==
X-Forwarded-Encrypted: i=1; AJvYcCXPajTDleHr/hWVKNVmAJKpE1sDr8+n6BFJLKILtthPXcFVbNuupuy502ot8kN/Um6+rVjnQpwH3OXD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy00q6c02YZdbgcAy3IInnnpqdQu10TkMg/dnRm3Nexq6BIMKbG
	WrZJtOwK3+WU2L/RO0KZEIgmk2aCAymj5w+QcUHleaG3romLNXlH5tCiimKou1EEY9o=
X-Gm-Gg: AY/fxX7tCVzEGVD1PfnHtQUgMLnNdbPtX4JfV1ONH9+jbzTuq/U9XcPCRTTbW1jxy/P
	l/qBe3MQrnALbDMWdITqI9x22M6mLFneRrzJfpRZ26Xi8rClalhYhJNq47c2TFI3uIcO9vCFr7O
	e9KH/c6GPqDYzitqNQjbnXKOt5UvduuBqGsDJ1XKmM8B3/6VSCLU46x5S8wLqDW++xb9WenU58p
	P30fFEUW0vIj7v7SWhKWxHj7YvMjpuxWJ2K19ZbR1HnX8Om1kEB+JFX5Mr/4/UKXnl4cFfsbc/F
	MtZhlXrbcgjoNZNDoRDeU8fZNfsJHl2Bc3T/KtfgSxpTzPqKkAgEa1+mdRKNpP5oGd9y16zJFKs
	OYUQfgTIK0uMw94dmQjtK8W6QI1XDa8X0canlrayr+q7kNKEgbS2c2k/2wBb5/Dg3dxQqsxInev
	dwQzQQnV2P7kYxrHcRbIf9zlr2DL/m3aTynsaV56EWOSYyOuD5fT5lf76fabRQRDNsXl3HkibBc
	YJHQVV1HXFCE7WGPvSGq7yV86kkBzoHGBA=
X-Google-Smtp-Source: AGHT+IGPqFKHO54fO/GR6RYjVaM2n4PRACshjmo9Oi88osBBrk9H6SPRXC5Q0NmPtbSj+MniyrTglA==
X-Received: by 2002:a17:907:1b21:b0:b73:6f8c:6127 with SMTP id a640c23a62f3a-b8445031bf9mr384207966b.12.1767815145741;
        Wed, 07 Jan 2026 11:45:45 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.41.122])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a233fb3sm591201066b.12.2026.01.07.11.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 11:45:45 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/2] dt-bindings: nvmem: add STM32 TAMP NVRAM
Date: Wed,  7 Jan 2026 20:45:32 +0100
Message-ID: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for TAMP backup registers. These 32-bit
registers are retained in all low-power modes and in VBAT mode. As a
result, they can also be used to store sensitive data because their
content is protected by a tamper detection circuit.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../bindings/nvmem/st,stm32-tamp-nvram.yaml   | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
new file mode 100644
index 000000000000..e03469fbe436
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/st,stm32-tamp-nvram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 TAMP's NVRAM
+
+description: |
+  The TAMP peripheral integrates, amongst others, Non Volatile RAM
+  (NVRAM) with 32/128 32-bit backup registers which can be used by
+  software to store information or communicate with a boot loader.
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    enum:
+      - st,stm32mp15-tamp-nvram
+      - st,stm32mp25-tamp-nvram
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    nvram: nvram@46010100 {
+        compatible = "st,stm32mp25-tamp-nvram";
+        reg = <0x46010100 0x200>;
+
+        nvmem-layout {
+            compatible = "fixed-layout";
+            #address-cells = <1>;
+            #size-cells = <1>;
+
+            fwu_info: tamp-bkp@c0 {
+                reg = <0xc0 0x4>;
+            };
+
+            boot_mode: tamp-bkp@180 {
+                reg = <0x180 0x4>;
+            };
+        };
+    };
+...
-- 
2.43.0

base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
branch: stm32-tamp-nvram

