Return-Path: <devicetree+bounces-133118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0239F946C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FE0918872CA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C23217706;
	Fri, 20 Dec 2024 14:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fdChwxXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBE92163B4
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705181; cv=none; b=BAEgn9052bRIy8kvKy0fIq7E+JpxOtQBkei5tYxlKQpvZympKeoQLo2AkAOE3SJr0Gghh/UIeJgPdBPrU/HOWSUqVDdjNDc6xBeMJ8F3TVWr6cVhY0nmlD6wvZAR+aY4L8x1GHtMFFywCU9Bo5Mt9I7lKPo6i29QAL4JVGfdHvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705181; c=relaxed/simple;
	bh=qcWsBmv/JznSww/eNk8qMIS4BDY5s6ZxLb3tuX2AP68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EdxO+gbxujkKH63AdDCsgVm2yStTpYeiqRCcuVvlpleAxsEupTwWtn26IDrA9JQokwHF4CaYp465vcZqphM26zbf8Y9VbbiVoTAJnsu5RE8gMd8qRVdk4aaO8R3Y3zoCVVEUQydrnKP9emjqms+NT3aknvrQJfCLiQVz8R6Vu/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fdChwxXb; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436345cc17bso14649825e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705178; x=1735309978; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S2r054HjWrz6SG4prpVPiiYe71n6RO8+qtINI2M8+4Y=;
        b=fdChwxXbTA4966l1wYAEjbn8qUKoAzzvT16IAGPPUcM8WcVTpylvCD7LE14jvXQxtE
         mLahe6+V7/rOap2Ux4xGKeZ+uLwExkIrxIYjkrHcCwxnrW3Ufrma5hciDXDbwQtr88jv
         PdAn3Lhuetx9vv35jZn8DkQfK/sBeCk9J4Gne4XthXJKi7C8/YzTFBVYSk3YrLWxy8CX
         mmMidLtqlO8PxmP+kbUEva4em3C43o5nVHtOpBJuatY1vU+5poa8H5FYdwICcSpzp+4z
         pPTMEY2NCKJ/c/qtUfPeOoFBBZHhkplQ91S492uogWq0wAUEzSQnQCNq0g6y9q3+FkdF
         IxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705178; x=1735309978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S2r054HjWrz6SG4prpVPiiYe71n6RO8+qtINI2M8+4Y=;
        b=ImQ9aq4hJJogAx4gJOHCVYpKcewNFrNLgQ/1600e8ZWNS/njFsnz+/WmU69l8DOqQw
         IVu392FSxJobCcEq6NRMaWH0TzdUNp6drt/RY7QlwaJQCMwtkNgyDykHIp7swy319sa3
         9CEThhLN6gkxPeF9c9iMnoeDlaEg9hEjppHAXGNx3ONLmsoOjNJFatdUyDBYKc1qEd+4
         hNUNqHSxnuhallGJsZvabFqy7lcR3ygYE/TkArN7IyCEYWdxLpE2+skRPnaOMRB19xlH
         oFfTyxKAdFYrg0L7JxDAPx0T9aMM3qMb/fGCqHkgcVCAFMnbKcNWNJsaMb9NvkwTZQ3Y
         EdjA==
X-Forwarded-Encrypted: i=1; AJvYcCVimiO5W6/XYipYFFOE/0QQyGy4TfvurORGP66Ompuiwjs4p/Nucz7zwUzYWwwzQX+FLXHRBz+bvaTK@vger.kernel.org
X-Gm-Message-State: AOJu0YwiIVkKn4U7JlqaCOma+IQAWP/tH0QL7zj9lJaGBuT9/lkTkQH6
	iY5Ql0R4I1s5jf6Mp6j/1vHL3wbGkoRXYG9/cFjd7h3vopGmiIVwz7gclUQSoT8=
X-Gm-Gg: ASbGncsxL5+jtMPb9atPcDIYTcrGVVzeWYyh7w4DG+C1Xb9rHKwVf4Eax+GXN1Y9BZy
	nE7bV/qjBnIqigX/+fcPaTuKmDt2+NyMhnrw1WmGREs97ggN0kuC0yBGH46yMp01wHqnj7HgFBG
	cdVcplRbXCzyS95l92XKUaogcQOwXEV9fycL1bOKcNikvxVcD9if8iMI3Lr381jIcGhYajdx19b
	W3kyVrROItBGhCDVWK4eG6hdLTG+aXNoQ3tEWYy3g/qCTeY2QCNKOD0T0EWT7n49OKkN6Cs9Fih
	jCFs/K1GE+oONDS6ydjkcoANaurLSr6KLuOC
X-Google-Smtp-Source: AGHT+IFWUL89s9MPTN9RXW3xpCsH1N6q7qhnMGREc6l90xzRqvJXMu91tZEs3D1ocnJ+h0j+U7pNvA==
X-Received: by 2002:a5d:64e5:0:b0:385:fb56:fb73 with SMTP id ffacd0b85a97d-38a221f9bfcmr3230824f8f.15.1734705178353;
        Fri, 20 Dec 2024 06:32:58 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c829235sm4140321f8f.15.2024.12.20.06.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:32:57 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:32:51 +0000
Subject: [PATCH v5 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-v5-1-4f26b7fb3f5f@linaro.org>
References: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
In-Reply-To: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705176; l=2055;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=qcWsBmv/JznSww/eNk8qMIS4BDY5s6ZxLb3tuX2AP68=;
 b=k6t57kS4DnX5YnkmyuPdrCI2QT0B4i9671oVZXLt08rpfaAoStKPubIknxG27HXNIJcuocPwW
 r5wzeZ3Vv2kCHbe66cWirfqLNqM9gGXrPXXr5KLwnP4ewEGFR4M+tUN
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add bindings for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
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
2.47.1.613.gc27f4b7a9f-goog


