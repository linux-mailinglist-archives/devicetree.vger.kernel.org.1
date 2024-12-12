Return-Path: <devicetree+bounces-130313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4269EEDFB
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6510B16CF70
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26065225403;
	Thu, 12 Dec 2024 15:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jM/yX69W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1315A2210CD
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734018403; cv=none; b=aNhKsXgrsc81skRciqhIL8PdbT3y7DjJUgR08VyQupRRJJe7Xr3xdGiknkAHn02wo3h4kZN0vGFQ3ZTwj/hBYkDuP4s6yLfdh886r2TNsSWdQPyAPCiJX3J/eGOn5n/0RqLPmiWlO68+596Kj3GJ0FWv1OENEgQmdSPWdz9CdVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734018403; c=relaxed/simple;
	bh=cEhVpbbgbLN/il4wFzhz4s4fTLiguDqzZ1YIvysOh58=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uM3Y6Vm/8OKDcKXHYletcuf7IY4D1hJ2a89Ka7t6zIl4FPNOTI61E+TSs2X4qOfvSae4v3+/bG+0hQ16Q4iFegfWxUTsd2qdOj28BoLesT/ijwgzmUGIVLU/D/XMv2KMtIMASwHlGiNT2B8Kwlelr1fC5B6cvhdB4ONNWPonyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jM/yX69W; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436202dd7f6so8375645e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734018398; x=1734623198; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4WsKt5owuBinbsPCptNpyMgMvfYh26FsI8OPPdtiDjI=;
        b=jM/yX69WnUxdeATG9KSatiEipPa688iZZZXHJ1uJXb4wkOi/QGv4MToklQ+Iq2+51o
         xO95vtL5H9V7369W6rzSn1r+E8aIXT9wYapMxSX8sjIRhINus2gafivHf+eL4CZLheGE
         rGym02ZfYYzCs7n69jjxLEdLo+IsG+9fO1w/i/cd2FAl+ScEfC6i5aVFbjr64i/breX3
         XIeW7FBJH+WPyvQALgrAmBNwUdrrh/Qsp4FlbhIwW4jb7YooubKjcEc4e8AC5pGqWnkQ
         j1Kax+VRwLtsVXmT+5sfeFNGjzbI+aBQ4W+IN79g0UV6W523BPiLl8ti3eJ2hMvFNxxL
         GkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734018398; x=1734623198;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4WsKt5owuBinbsPCptNpyMgMvfYh26FsI8OPPdtiDjI=;
        b=GfNybXdUdx4Kw2F8UOGiUrRK/dxYJ+4YHxknXi7Vf9opIJHI/U6uT/zvDHUiAW2RMg
         3yrNxcHUgGcaWGBT9vsICgeKOqKafg1ZZuqM+neFWHnaRvFGruKZ0WF5RGMnZqpNGWIY
         s+BotAnp+u3Gui+YjZA03nvWUCrCi1D0uzUSG4HBsQ/mFBGrbzM5YJr5POEjbUgTXESQ
         kCyU47TXaZXDKPPMT/8FMDfRDQLwxd3MlTHe6EFINzAXI/g6QRc7UD0rTQk6i/e5WlJ0
         Ecrt4WWr7+QLX2Ot2jG89RsAMhIQXqKoiwYXcMbDlvZaD9RIA4VOLBscy+igjuB4/0Bo
         PceA==
X-Forwarded-Encrypted: i=1; AJvYcCVOh5pqgA9URSYtU1hJRKEmHtlOWLYyOGogRTXTZHf+dW1byB3l5LsSeth+9prmGVNQevnCZHBzbaK/@vger.kernel.org
X-Gm-Message-State: AOJu0YyChcgfg3bGS706HBiBxPiU9BRdPRCIXvlF84bbmY33XmUSkyGv
	KC0tSVMDmMXjOMXY+usLPqyX4YsbNFF560vZS2Z6V7RaK6RjGrl0syfiZiNrlvs=
X-Gm-Gg: ASbGncvfVRcdtBe4elhwgYwV0o8i33HKU9NSwgMVQdEH6RK+y6QZy9l3CIUVS3lqt/H
	AJMZy0EsQ5WdHgvgdhiYVGwb9BPeQTSncAfeL62H7jOq6/1eG3c0e4JdD5yvaVMAS7475K/Sx7I
	KjXL81GVMo/Xv394XqKXp6HOzKAcIrHKAvcC5CoRlDAHsUoPK6rEXdDfO4XzdhAfziHLLDRyLZ2
	TwLjvX+xezoOhDveDUOHlbWLQTlRpla8R/KquF3MfsHxFTLlw8AmyrkvXtfyGA1W2a7XGmfREvA
	ZRmhQIxvtqzAvIyNFw24hf0m5tkouw2vdw==
X-Google-Smtp-Source: AGHT+IF+tOoHGDUkaMxeL60yLvDUBO3/VwAE5mhjxt8LHc7fox7yQSRqiqimmqwzGsm44iXWePis/w==
X-Received: by 2002:a05:600c:3b13:b0:434:f335:849 with SMTP id 5b1f17b1804b1-4362288371emr32131815e9.29.1734018398498;
        Thu, 12 Dec 2024 07:46:38 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625550518sm20273075e9.5.2024.12.12.07.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 07:46:37 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 15:46:22 +0000
Subject: [PATCH v4 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-b4-acpm-v4-upstream-firmware-v4-1-3f18ca64f1b9@linaro.org>
References: <20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org>
In-Reply-To: <20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734018396; l=2060;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=cEhVpbbgbLN/il4wFzhz4s4fTLiguDqzZ1YIvysOh58=;
 b=f3YksKtopgrGy7H1vyqUY3Bvrfn8RopvwpVOYs7QLQL2eDN0NV5jbThSpAYnDZ2tlFX/T6GHl
 MoFgi5ZKF9tBAEBt4ttVy/MtpHnDX/2vBgwMrpoi6YEl6TWcwjUxwOL
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add bindings for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
new file mode 100644
index 000000000000..8821325abcef
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -0,0 +1,51 @@
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
+        mboxes = <&ap2apm_mailbox 0>;
+        shmem = <&apm_sram>;
+    };

-- 
2.47.0.338.g60cca15819-goog


