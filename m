Return-Path: <devicetree+bounces-165255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B2BA83CD8
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 10:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 302D6173C85
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 08:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C241C20B810;
	Thu, 10 Apr 2025 08:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S67htKsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CFF2045B3
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 08:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744273610; cv=none; b=ajhLM5DoeJxnBOH5nrUvUTPvlXi+NJVpibBtNF1heKzS1ArgxVfSoZuqPmvmolVI2AYezJ5oLP4YpK/W6zbcuzjWWGj2ICwE3d2qqpC++fICrXgvDuATeZpYr3eoAUFudOlzoMz46s0cqIsf7ogoXGoASgOvj85BUENrL3UifHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744273610; c=relaxed/simple;
	bh=Qw+ihHzG5xct+geio3rYuIIVhgSwwRDJSCuqYbtpH4w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LUd5BzP5p+ouJa2mc/TaKEcNtCcA44Vn+wytLVfE1YrYkyl0kLh2nWM9bFlnstNIEHvo7D0rbs4P2LN2t7VofRmdmLSVXNFEMXW4FcbnSx5MByVNePejFoJ8UQJV3dMBaBQmM6Ye/2jrvZ1A0LrIGeYHEX+SGuOer1d/8u2JM/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S67htKsN; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39c266c1389so260884f8f.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744273606; x=1744878406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BoLuuoO2Fvx4pIGyt5bGUZIVskYzSTtG3IaMJttRhAg=;
        b=S67htKsNjmw9XgntdxzuX+TxJRFXrkBYb2J6hbSnES4mk33LR3Ay3lyy4VuWSeAzSi
         LLAoWcw3OI9JUvD5BR/CknWHTM2OUd8uLXN522Oi2oZCwPDl9ksJeaB9rNGBuVN8y+eq
         3vbvYHhAKpA70zfoYEz6ZAMRh9OqSYRaamrrWtrOLMEDIaqU2LkAcmk7sB2CMYiw5WBF
         MmUHvWbGRaBJ98/I26MnYRgwhBWdAeoQjqoJC/06NvXOGJlX+QbVaMixWFPvWkeE9CH3
         PmY0GZ5drccFuHtX9yDzFxFBvDRpEJ1RP0B/hYkK406od8b1LxRMJNie6Dhfhyi/qwaU
         /cjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744273606; x=1744878406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BoLuuoO2Fvx4pIGyt5bGUZIVskYzSTtG3IaMJttRhAg=;
        b=nkDZskX8y9bSPCUCzZrDM99Sy9u+hDIz/jbzi+0gCucG+exGtsDt1tQiKqBCHq9ANo
         as0rJzVcnwjMyqWrz2yxcEM25ACoxqjN3RrXFujPdFgEvMPVSPC64zRzdblPPE6zZHNI
         66DBfjpa8a3g4kk92oRcKuK+BPTX5uZppFyTqewWrWtPdMRJ6BpaEwHRAri30d1+jgFx
         fnUX69+SzaF2zKQmFT3t9AJzX5Kqv96cXifCi2eEvh+wCZyCUG9Uypm/lzwwT80AVVLw
         0MWsNt3oYIopR2jDZmn/3eB26bDINxlwpRqFiZ7lUGhiJ3ft7flJj1XPGjHNxU5VTBOV
         /Qsw==
X-Forwarded-Encrypted: i=1; AJvYcCXu9G5+dyCp6G+/KA66EaNBZYIl7IEnQCVDQVWBIxuRwkz0JkS3OyJBs1Dj+5dS951g07IoS58gWcSw@vger.kernel.org
X-Gm-Message-State: AOJu0YzzXVWuox3IIbNAS5OcRMlgWtGTM6aVqSW+wWb5gy5ReuynK2hi
	1m/46GUHHWmnCXndFqEpI0lPXb9EahN3pvH/QwzAb7BA/OGlDYZLp6GeoZFGbVI=
X-Gm-Gg: ASbGnctz/0F5PmyA36iWMC6PozgWDhbeIPwzZzzz7DmE7GznVr0rhjTskEktQLCB3bj
	GyhN5/m/hGEiR4IZR9DuZ8PboE/jMvy6Yh2vCT2jIVWL0PMVZCoNHOyP2mlD1gyrPyVBWU9q3u7
	Kn+ww9ha83OvJZyLEurUZVYPw7zs3GvfawV+T3BBwIQGK8eZHi2itLhQKtZYN4gLHXxFXuf/D8s
	eo9ULYtB/o6UVxfWt+ZWDxXJ4pyx1NCJv4QASXN79XqgM/eDIzGuz2KqHPx+VKDqmoZlTAM1d0I
	ngKGaRwqj3iOiI9DmGJ8dWC+vMyeomhaVQ2/T1GklvIL0ttaUGjZWvfHjkeC9SV1PUY=
X-Google-Smtp-Source: AGHT+IFJAAYpm4ch8BzX/j32mCSfuBT0k4tmo3Fc4S6M/p1AIC8JN3xN7HEUUqArc7BN3Wfv8o/vIA==
X-Received: by 2002:a5d:5889:0:b0:391:4674:b136 with SMTP id ffacd0b85a97d-39d8fd52397mr1003636f8f.29.1744273606025;
        Thu, 10 Apr 2025 01:26:46 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233a2c84sm42884645e9.11.2025.04.10.01.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 01:26:45 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net,
	linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	S32@nxp.com,
	ghennadi.procopciuc@nxp.com,
	thomas.fossati@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	alexandru-catalin.ionita@nxp.com
Subject: [PATCH v4 1/2] dt-bindings: watchdog: Add NXP Software Watchdog Timer
Date: Thu, 10 Apr 2025 10:26:13 +0200
Message-ID: <20250410082616.1855860-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
References: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe the Software Watchdog Timer available on the S32G platforms.

Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/watchdog/nxp,s32g2-swt.yaml      | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
new file mode 100644
index 000000000000..8f168a05b50c
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/nxp,s32g2-swt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Software Watchdog Timer (SWT)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-swt
+      - items:
+          - const: nxp,s32g3-swt
+          - const: nxp,s32g2-swt
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Counter clock
+      - description: Module clock
+      - description: Register clock
+
+  clock-names:
+    items:
+      - const: counter
+      - const: module
+      - const: register
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@40100000 {
+        compatible = "nxp,s32g2-swt";
+        reg = <0x40100000 0x1000>;
+        clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3c>;
+        clock-names = "counter", "module", "register";
+        timeout-sec = <10>;
+    };
-- 
2.43.0


