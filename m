Return-Path: <devicetree+bounces-139027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F9A13B7D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DDB33A96F8
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF8C22ACD7;
	Thu, 16 Jan 2025 14:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tsw/gp0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866F27083F
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737036063; cv=none; b=VoMbSTfsaNodTG3/x3St9lzRwb5Ufe/W8ODcbGV3IGFwYLUibOHAJPm+ihmGZC5oYe8V6mkSr3lYO7qwlPlblkvufhOJ1boCBhCVMmb2BqeIHggersNjlioHbrFZVsvRCFNG7MiqmNvoNvqgT18INNFPyLTI+jEa+OF2E5Gh2y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737036063; c=relaxed/simple;
	bh=uQ6Bg5/6V5Dq9OSmE8te0C3SbDjnup2vFnjKFigEBUI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pkn18ZlyIs2lwB9TPmw6CfGUosxKX9dkYSf1X+8CTQVNQTO7SdlUP4iwkp7P4Qwnex5Xtz3DmoCzlXD5xljPYnY7Qi6qalN3SnQ0xHWYFTYi+VQpV8wKaHrgd44gkqPM/nXVtEFEuXE4DXzeRYwzHQnLgsoSjzjX3qW/D9nAtFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tsw/gp0Q; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3862ca8e0bbso744548f8f.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737036060; x=1737640860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIm25PmeAZOAYMgQVdnUOumJT9enCa4+yPDMgOnkhGU=;
        b=Tsw/gp0Qxab3KqB7imCaJZ8N00bJ4gTrOLrMZ9ZVlmrSz5Uo+mnjONfA5xeSOjV41J
         uqR42XydkFcP7l+x0YCYaKgV3YuVyr9SU/ebVfoi9V3e52E9hgXquTs/9fwKbkf3eptK
         3jXNDd/JdrFx+vUGxgO0bSYH/tjUcSRZajTSbfCQYvW9sytvxXM8XLsB0bk0fmrdUiK+
         CyE9S3UcnvKWr1oQBx/tLY6cRVZbfT+XB86UMFQLtCP3ireDVbOntc5+OfF2p8FcQm2V
         g48+8qV6U+EqxTrM61byRuCcuIhegszS708MfPXbspG5C9A2dFNyssodPXVKJ/suU37q
         K0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737036060; x=1737640860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZIm25PmeAZOAYMgQVdnUOumJT9enCa4+yPDMgOnkhGU=;
        b=HNjBjUhMgnhkLRidlrALrAxXLYaIf47Tdxp5zgzn1fUr/nls4dzvkes4ozijFOa9PO
         +KMm0A6HB2T8kPqWi7YZgsT+dkKcvEVOH9dFTvJeHSl9p2ehxpyk+6r/zC6R9Zq9mDeA
         rFW6owerx4ghHUa6wgWdIk7qQTLozcS4kjJSE3WG99rL2rMy0h2whjPv+ad0r0CLE4qt
         UClX2nJVv/nAxngbjRWDB/dUmrajoltffOPhez6TvkCM59XwBGdIa3sGncN41pdqoINn
         Hf31uyVJs+TH66MpvZ+6T2NOa6m0sVvnkGCLvnCbzw1Osd1i+2yB59eLzoh44f8y+tMI
         DKWw==
X-Forwarded-Encrypted: i=1; AJvYcCVLIB66IIxxuT6sGfeDdXhLnHwf1dcFY4IEU0tHG5Kc//DZ1ELzq3Rj/nqZTH3xwv8kuJCImH/Ye8jJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3ggM2veGvRrE5LHbB0F3FzLCY1G3eQ4yskTq/sqdrOaUSkNBD
	3mEXfPHH15QbkiXADFL6lKGaWKNuev3CBvnEdGpdfCOj5+oTSGxjEgmExla52QQ=
X-Gm-Gg: ASbGnctJ1+mjEsA54/bMFOgCg9Xn98qscvYjcMqOdb2FsBwKgFytAKqKQRDBD5i3YPw
	DnL00pr1pxfGL2/Jx3WubRR63fyyMFqiNMrjemwnKTryIp0R1BurVvpUyZEm7JKTyVCWxDR4adj
	PExNzoO6U/4O7ea9KSNuN1LfVHg1eMjiaht1dLfpkEm51Qd91FGTfLVlrcKJ9N1kBWkRerFZMV6
	N1cQawKwktN51UrhfZzRNL0IyB6zGaKfinDHeBe/lkkCmNMsHhFyzhK5qv5NfNh1hXVhfWEV4Q5
	iQ4M6XZO6USBsuZqasz4gcHRi7IPr1wn7897
X-Google-Smtp-Source: AGHT+IEO3mG+Bm83EMpGNeFN/Ai638KiKI6Wq7PleUU2fAOUa9hDQU/99f71IsakTNgZI5RVY5hkFA==
X-Received: by 2002:a05:6000:2a9:b0:386:43c9:3ac2 with SMTP id ffacd0b85a97d-38a87305311mr18559964f8f.15.1737036058578;
        Thu, 16 Jan 2025 06:00:58 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1f2esm20608846f8f.98.2025.01.16.06.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:00:58 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 16 Jan 2025 14:00:47 +0000
Subject: [PATCH v6 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250116-gs101-acpm-v6-1-e3a2e1a3007c@linaro.org>
References: <20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org>
In-Reply-To: <20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737036057; l=2126;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=uQ6Bg5/6V5Dq9OSmE8te0C3SbDjnup2vFnjKFigEBUI=;
 b=KG6sUTyaRCehZTlKyZ7MYQQEeX/4uKyAT101iEiiV+mspjeG0iwJV4erWBMVMQCn4N+DybEF7
 1b9hgLyK7UGDr/gH9I/c9e50PHvhzMtbRlCDfuilda7lqymPFRmG+S1
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
index 000000000000..982cb8d62011
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
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
2.48.0.rc2.279.g1de40edade-goog


