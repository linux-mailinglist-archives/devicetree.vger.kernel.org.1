Return-Path: <devicetree+bounces-252641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 808C8D0186D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 09:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 640A530C79F4
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1230A39A7FC;
	Thu,  8 Jan 2026 08:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WbMtxix7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5D739A806
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767859779; cv=none; b=qGX5hLXgsCZNBflRgGpwjc+Ng7oKitwWcmq2jX0XQzNH0JGpUiCAaWaYCz/xKPLsL1nstp+Vh5VXpOFrRuXiCArMjvvlSPkgcBBYcrAXTN89wWNgziLFCXUyOTw505bk1zkk4cLd7iWs7OeX53tIGCjzHXIbSFwK71EjWdl/K1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767859779; c=relaxed/simple;
	bh=BkuzIM+xJSw6D9gd0ClP6IeKUS3iAxeuX1yHGi4chXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pdFzHrU8Y9WceG5aVMgkHyICvbJtoBsbjlZISk+yqvJll3D1079mry9pwDIiQE69YRi0o68z1kSoYsk+hZ8UMlWPbsahJiAifjmkSDGDbwgjCs0j+uVLVODS5DKHkDSwKOssNN1BVfVHQHSJNKI7RdgTHWg+dvbjwX7iqLDv7UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WbMtxix7; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so1979404b3a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767859767; x=1768464567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cM8S9Nf7P6gRpX7oKCBS4znehPOLHvbNE32ZCa5tCAA=;
        b=WbMtxix77iyRiMu/v6TL6S3OE4lOZf0DwNv0JOtIuj0UWdibRbv7EvHx/rC4SrGzEI
         j8FIUcuUbWNqf3OHvvwnjp16n/ZVsN3Zqqo2u/sPVCPcDY7KRQCIPkCfqBx+MSCgeNrj
         FhglvRwKieoa43KClvFE1X8AXiHAqWN1u2qcBtrQyxADPdHHAp5J7G0PeJ+VGcmzc16H
         Qr6mlPaoK+3KHnALV+6lbtMfVlf8sNcOAUz9K0VWPh1zGndJCuKoGfn46pYcTUej8gWW
         wn3jYiiY6+sQPI/3ufuLrH77ZZvcplgWmNlX601WCLYmsP8NVyDteo8AjjAUd5uAhraR
         OnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767859767; x=1768464567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cM8S9Nf7P6gRpX7oKCBS4znehPOLHvbNE32ZCa5tCAA=;
        b=GlkG9gH52z9gYkCOHoY7mje+r23Qis4aShZy2aKj9MDLo8lokOpZpJqVxGgEcweq0f
         lMAtwGllNBfLZVd2O8uC0N9DgOQSqiyA46DfgezoeAZq2pCJ7oHZvuohtZwX86DLqyO/
         qHphf4XbrUF2/y9z4ipQy+i+yGit9qIGoJLDsJkcQVwi5A5T0aNj5tTdeSRqmHTaJi/R
         NcbmHkmytg0jqFc5BlWq0gsWcohWEupagK7kW9+oKHH30+ATBI6c6HAOaEPl5F5xYogA
         PGFj4rnDbLZiYmBqAzbTXrPRUktDuY8xw+2OSovNqnkYGhCvzqV97mDD2r70jSBduP65
         0pCg==
X-Forwarded-Encrypted: i=1; AJvYcCWnoxlvUEM7qUlh2Xtcvb+KF9gePFELYzru8awkOfYJLSmdlJRjehC7ySfZErCUVeoYJjHWvre4mfFi@vger.kernel.org
X-Gm-Message-State: AOJu0YyK/D+YQYpe4ROCpklGuRqg6vSgNR+oe26eK05tGfLfq3miXGzq
	NtE7J4gOOjcfPeMXLYxJo/ZD/6eQJM6qq+NidqRPbaBrWSfdNr4Dpqxz
X-Gm-Gg: AY/fxX5j/urTarSwW4MOHGp4MBPjxYjFZVT4TLp1s7qXabq3957ESPT0cUB7ioAgO6z
	Osqy76GMzcGGcFqAxJcIuTuhp1P4n6JrW754lNIpErF3Rt+kHnStX9gAP2pujtcKRKK6VfO7X2w
	rXuvd+mopSj8901N4zyU7ldINwjsS2yYkd59nhj4JQVPTRyOoRqbXOg4o6YBONHAwQXiNXY737+
	6Ls2nQX7vRdfjT0RAzixNvPUbiJhXbnB4GXVaSIY9MNZJFPguWlw4q66Av8hh0kT7/4DgJjs/fE
	sVD6tB6JWg+anHwNDuIjsEKuEk8lkyrTQg5jFZsl28TxU2C5L8ZXyG8LGUNI4+kBWEYjL0D+Zy4
	m2rK1TMZ4lDUJCt6dZFIfMzM2ySQQy6FQOL1rPh1ad0d4scqhdiaSbzIXOdm5WXQA2IgQY4pgDK
	uuL21UmhmOfEFCKr843AtfQiV5D7GHmDD5e7QK5MKP0yRUw5Ct/md5WqB3f5ra4i/9HYgZ67rBn
	swpHZsIMFxaD7wT1Bw8Od8ixaH3X9u1
X-Google-Smtp-Source: AGHT+IHkLLcdy5t5w8lcYwpa7aN5PM2YSQikFaFZHwIq35VG+97ooL0I8Sxc+NQu2jzK08rf+aGvdA==
X-Received: by 2002:a05:6a00:1f09:b0:781:16de:cc1a with SMTP id d2e1a72fcca58-81b806c7544mr4661904b3a.32.1767859766947;
        Thu, 08 Jan 2026 00:09:26 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm6900582b3a.16.2026.01.08.00.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:09:26 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	sre@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v2 4/6] dt-bindings: power: supply: google,goldfish-battery: Convert to DT schema
Date: Thu,  8 Jan 2026 08:08:34 +0000
Message-ID: <20260108080836.3777829-5-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260108080836.3777829-1-visitorckw@gmail.com>
References: <20260108080836.3777829-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Battery binding to DT schema format.
Move the file to the power/supply directory to match the subsystem.
Update the example node name to 'battery' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v2:
- Add reference to power-supply.yaml schema.
- Change additionalProperties to unevaluatedProperties: false.

 .../devicetree/bindings/goldfish/battery.txt  | 17 --------
 .../power/supply/google,goldfish-battery.yaml | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/battery.txt
 create mode 100644 Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/battery.txt b/Documentation/devicetree/bindings/goldfish/battery.txt
deleted file mode 100644
index 4fb613933214..000000000000
--- a/Documentation/devicetree/bindings/goldfish/battery.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Battery
-
-Android goldfish battery device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-battery" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish_battery@9020000 {
-		compatible = "google,goldfish-battery";
-		reg = <0x9020000 0x1000>;
-		interrupts = <0x3>;
-	};
diff --git a/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
new file mode 100644
index 000000000000..909252d91c16
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/google,goldfish-battery.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Battery
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: power-supply.yaml#
+
+description:
+  Android goldfish battery device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-battery
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    battery@9020000 {
+        compatible = "google,goldfish-battery";
+        reg = <0x9020000 0x1000>;
+        interrupts = <0x3>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


