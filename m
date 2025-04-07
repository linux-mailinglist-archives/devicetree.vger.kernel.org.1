Return-Path: <devicetree+bounces-163871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E22F3A7E602
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8488F3A4657
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83ED22066E9;
	Mon,  7 Apr 2025 16:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dZ0gSQ+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AF82066D7
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041821; cv=none; b=QVHG80ANgiUGesh1mMgULhjjnOWTp86ukEWNvJPrX9Go2yPZdmq8bknGDy1DTIRjIGRImmqSHJ8hnVuz1GXAtJyy+0WZ6sLAcwk413Ex0+G3nZ133xE+sKSjVjXId8Q13u4/z4yz1Bzt8OixuqUAXLmSvCf0PvhfBH4leCnvDN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041821; c=relaxed/simple;
	bh=cwUg5LduXXZcufnnSzBfEonNlCK2lmvkVORVQf2hbvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rc6EuNvA+uJ8tP2EE+CKrkvLItz99Bvi81Ml+++5opPqpGEofEFZuKnvYt0CStSeoZXHXFkLvrg86oa/TsSw4uMrNxND0j2e6hToF93tIMNoIqBDyvvKGNteZhS9DC707mSVDhVr/rF5piDqOB+JodlaMjXowDyDfr6OIGJ0rlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dZ0gSQ+k; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so3963535f8f.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744041818; x=1744646618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wbL55eomgr//IZJoFaosxxTA80M3t+xWAEMNMsogd4o=;
        b=dZ0gSQ+k/qITe+teA4mXmxNx0O6eTsggoiImqwRIx3eJDpQTV5I/d6mSdXVOxAKU1c
         M7pK4DjGxjPzk9PKe/DbzaYLGzIbyNFhbYIQl78Ur5FPC5OymDvdQwXkvc7U57Wpn7Mw
         ZvvO5swq6FpOuMjP95lAhxvHptKO7jqOwri0A+xxQLoMjzgorBdOQ/pPvtgGN9Q8YQup
         DLxcz4mGgcZwu52aSEqIJpU7ul+Clsod/A1k+BUVhw/YE1UF1mfhu3Skv7TSTW19Z6iZ
         FNwoQZSb46qNZuFQdcP896RnHiXdPMQFA84P+gX/ULYgWW20/hRZslfnB+ChMm92lXIB
         sX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744041818; x=1744646618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wbL55eomgr//IZJoFaosxxTA80M3t+xWAEMNMsogd4o=;
        b=wIBQpY6tEbZx5jAGOKeCeqpn2AmxWMyER1d9PsAmlbZwQzQPsCqOpgsQb0vY+NN92f
         1Gz4Jm8NsWljsPVDdPm6w2e4eVJjR9YhDgG+PmZADE6t8AGFQrkZpch5dR6mG2isicFL
         JP4M8sg1+pynsJCmk9zvpuFXaUgb0WfHnHnw+Y7AtTwUha1hn1NAGz9lKJ6Bhspo/BhL
         BLT/fys0IYy6863CGnHKqzq+ct5V/ddqwoYLEouojiB/jwaAHgmhuIYgi6wOAieiQUUg
         YetzuCxbj7UinG8038Y9i0MEd8Inyq8ViWLvW6Vu+Bv82lfDK4O8Zqg7ZIh4Y0KNj9iF
         FMsw==
X-Forwarded-Encrypted: i=1; AJvYcCWXe1e9y3AnnQxLkLamOm0v5oIhlrHrsY6G3MwW/J+sQ5RjflnjGIbvZMBNtW8pJjJB0X5qxRsRIyVj@vger.kernel.org
X-Gm-Message-State: AOJu0YxpxsyBXBJDUpyanSU3Qgkxo+lscsEtfMPB9VdDj4zQFhk+mgWp
	Qq4I8XXZzXcT105zckN6EJTXxkswHVZzGzYNIOoWMY++pCSJS4v/5nMQXktlyik=
X-Gm-Gg: ASbGncvmeS9MAJfYyiSoE96+qPT74vX2mI2sKSdUKW6gYJ5O/yujlMO+kiJY3q2rgyB
	LYUtDT//mHCZvrawutNjTEtgoPY7Q3EgDJLplssLCEf4+8fZ7xrguO9nCTYKJoa8wPTWRNnZPSO
	CvQWau1yl9CqqOnTkydia/syiNS2M8V7t3tybziu/HjGLHVvd8vlKtFcMTQHUT4AvsTQMel/7lX
	jQ5sLnLxt6FJE6OlJEaFiticPLZxaw3hlU6Z0JdBj0U5CR3FQcTbi5wa9HGpZO6ksMFOhH3904Q
	fQnLl74C1F9rWU3d5l7StJ6nCDYv0AlBM0MSD05Rd+XvZdtjlZgKycbGBIGOIX0at3bfMk4=
X-Google-Smtp-Source: AGHT+IGz+Q5GGF73nsTcrEA6hA6PV9lyUFIqD+pbjsmX9Oz/pnvq3IzYO9Cy6F+x+KrU3yJohdTA8Q==
X-Received: by 2002:a05:6000:1a87:b0:398:fd9b:b935 with SMTP id ffacd0b85a97d-39d1475794amr11311063f8f.53.1744041817603;
        Mon, 07 Apr 2025 09:03:37 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec17b3572sm137701205e9.39.2025.04.07.09.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 09:03:33 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: watchdog: Add NXP Software Watchdog Timer
Date: Mon,  7 Apr 2025 18:03:16 +0200
Message-ID: <20250407160318.936142-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250407160318.936142-1-daniel.lezcano@linaro.org>
References: <20250407160318.936142-1-daniel.lezcano@linaro.org>
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
 .../bindings/watchdog/nxp,s32g2-swt.yaml      | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
new file mode 100644
index 000000000000..48ba9e9979ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
@@ -0,0 +1,56 @@
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
+    minItems: 1
+
+  clock-names:
+    items:
+      - const: counter
+      - const: module
+      - const: register
+    minItems: 1
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
+        clocks = <&clks 0x3a>, <&clks 0x3b>;
+        clock-names = "counter", "module";
+        timeout-sec = <10>;
+    };
-- 
2.43.0


