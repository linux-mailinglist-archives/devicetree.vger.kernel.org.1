Return-Path: <devicetree+bounces-143992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C285A2C72B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1F907A56B3
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6DB23ED7D;
	Fri,  7 Feb 2025 15:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SjqWuqCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053371EB1B7
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738942196; cv=none; b=DRIG3YUBbNeQOfBGGE/ott8y6U6pfGZvdwpnJ6mrq8CMlPLb9TZW04b6km2qqc5liDbTS+rnYr7oWjkO5J6tht9V0mCR81PxTubSLq5G0jItwvzZybgP46sXnO6YdJPDT+9W9zCrRK/u1NHsVyb4bqT0qF7DNqzFMiI3JeNN1YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738942196; c=relaxed/simple;
	bh=V7ZhEkTlDjAWx4+eB5Cx9IjkVRaezyIIl4x2rGpDimw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SSmyZSfCBaKPX6aE1aPq/dHhcO77IlYscYjEgylXHVOUq9f27sQ+BhSl4qt4HAhFlsVFwXFn6LaqquEz5jQr46IoHCmfVGnA2w0MCIcfm6KxUrTXcBv75x0hNrkejUMHoaCY6AFlOkV4Bs5HwgdfAI+CzFyxmbpWs/SqxmE3JdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SjqWuqCI; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso13433155e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738942193; x=1739546993; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NkZO69thNDcfaAG3NbtxaUIPk7UAb9CQ7DP0haQo+g=;
        b=SjqWuqCI4g/5R8qxRzCfVKzUxZ9rZ61WqmRJLbaxM6J2CL78wCMyjlScHaNQ9DYCJC
         hAtQCTISxsg02JWnamAMeIolTrrf//tZjqtmADVeqaf78D2YfMh2MX/XfPMac7xGvDHe
         MQ01GukCyrSHRuOnZ5uFl9Y/bZqbbyGVSfsU0wPtguFx6Cj/YpIEuq42ifgdcg3U/P+b
         YukT3seFzKrTwrQSre6Amw4q9J78cTXgDJCCY+KuMXTzIixgpi2my7VJIZZFb8S2rw6x
         QwS826Tmbh00f93fn8pVkWOTmAneyF0mBf4ahY9/hVKzeLA/ZlqbIH8vEVn7uKvxAvZJ
         ylmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738942193; x=1739546993;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+NkZO69thNDcfaAG3NbtxaUIPk7UAb9CQ7DP0haQo+g=;
        b=aKpuPQ9ySd1TKIfSol+uzYaqY3ZNvE2c1ZMr3yOfRGYpRb9nyZrLn61zQWFAqaVEi+
         uwmIOyRAMWCclcNu614R2KWLYrBtYECo8dLSLpupFYh9K7NrcpQ4RUe6DZXvEcyDs8y2
         yL1zLzsdVU8x0wEc6mT6JGnFQCAkZMKZkdhXqW5Po9CgJBSHtQnxaxY0b0bnpII4kTuT
         GuME1mKxFT5Epq4DuewZs+KQvb9CwT7gQ4FNwnSuvkLSY/W6qbMiPJOtb4Z75fiTqNZ1
         sZXsOgCc0Vw94Mx34LfAWizVF/0Xbitn2+5VKTtakR4qEFMN9Nk4U9tuB7HNo31SoKTO
         luoA==
X-Forwarded-Encrypted: i=1; AJvYcCUkLP1dMUpN530+dk6PBNrzR/xGvwRE2bsbTubDc/OzKeX1jIQIGAt4sRx7V3ZmVaBW+1yrejbMNLCu@vger.kernel.org
X-Gm-Message-State: AOJu0YxutL0eAn6iBAdlTlcy0g7s3OxZYtrDw9w2TFNaoGidphNC94eE
	AxqTZxhj/Jqg65XgozMEgzab0o0aYixCpw6XS1gGanQuypR63lveD062as1zpmA=
X-Gm-Gg: ASbGncsAQ9WVqAIiR3qZdzBm5c/Fxz+owssT0UCOCELDXBN9x9SD61OZQAYQ+fobIk7
	LcWEUpVLhVtNpInOoau7JU3JUnw0MevQbNmx0k0A4vnPytGbz9ePnGQ838YoALQoBTDKnCIp6NV
	4lwqeNgvmGXgDx7axERxfly/bIHG+LcurbP1suKLyw2JoyGPw6sTPp+mxHOLYkDtvkYMoE0anhb
	emQj18VwcALT5PWr3HxjF8/DQAOnAx7Aq1m0LX5DvPSRzue6Ypw5LH0Wgnu+OBQ5a4H2dhVEVzM
	2GajpOD4hDF8UlS7QLTkb1fmdoabTr3JKYbt4rWyB95RWe6UHSOvNiXeMj8vd8RSUUkPYWg=
X-Google-Smtp-Source: AGHT+IGeQisxWwVjKLpLxc81XidOEmaj/9PkpKcRmfg/FautVUd5O56htUIcsiEZRQHq7y6VAI6+bQ==
X-Received: by 2002:a05:600c:3c96:b0:436:1b86:f05 with SMTP id 5b1f17b1804b1-439255b81e1mr25888635e9.11.1738942193266;
        Fri, 07 Feb 2025 07:29:53 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffd8sm57141905e9.10.2025.02.07.07.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:29:52 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 07 Feb 2025 15:29:47 +0000
Subject: [PATCH v7 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-gs101-acpm-v7-1-ffd7b2fb15ae@linaro.org>
References: <20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org>
In-Reply-To: <20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738942191; l=2122;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=V7ZhEkTlDjAWx4+eB5Cx9IjkVRaezyIIl4x2rGpDimw=;
 b=xPUvF+VVaql0+WFwyO78FZrctDRJ3K5bgzTZVoVvCOUptqjae9NCBxYAsf6FZ1nQ/oQMsb/BG
 TUGInsgGHopCIptyOe0/vC2gzHMsGe8LKcPAXQ0IasExUenWkpiR42j
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
2.48.1.502.g6dc24dfdaf-goog


