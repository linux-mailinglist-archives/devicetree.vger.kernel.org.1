Return-Path: <devicetree+bounces-161657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 397F1A74D92
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F1423BDB5C
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC2D1D5AB2;
	Fri, 28 Mar 2025 15:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MaCBo4c5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010322AEE3
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743174957; cv=none; b=BqF9asv3j275G6uz/cJinQlOgB88drMgX7fAIwKRDXnsu4NdKWAHJLqKqIb4yqWLJL99nZ9l+Qcg816I1Ubwi8xcbw27T1eemfMvDPjLPoWgIM39+DlmVfb5br8KqyZZ85WtamFRaOcgmLevbn9yph0sRKGG498KZZKHcNZzVno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743174957; c=relaxed/simple;
	bh=UTt732wJ9n8PLRvrT1PCargeNlx14cqXwsCi/u96O9I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TUUmw39TRea+c72P+FG4/MVCdPNc+q178skMx67AO7gghEqr0opMFCNeQnsonSLcqrndvTaefOY3wdaPtBbrAIBwlxU54AXeEM2vDkHO/1nRzmDMg6KNX5VJo/BfpiA+Z/xstPYJtcD4nvzsWDNe7pe153Mb949J+Ef3egGqU3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MaCBo4c5; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so25097805e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743174952; x=1743779752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7iMl7ipkwOPC7e3j6qlBN0GX/yfrn6BNcMk907xgyr8=;
        b=MaCBo4c5bpLNWOhHg33JD5CmlPvocBrCHyHxaXQ+UFz4WUfg/D+tAWB2MZA3RiV1RG
         CZw/KaKhdJS3gd1XrD/y3ndUGqn8TfRQ7W/ufqf4++m68XqztpsS9ez7d+f4BQZOJDXj
         z7kMnKwxHcQchlMuwfilcn+Yr3ENGFjPGsC9BbX8y1ACJGAxcNpBBTJkQLHRNmaUlwet
         23Wrwt1B8mdlM8ZO9NkgWUNuRfnr47b6tP8Rr+5Won1xfZggQDAFJ4M7N487GNCnkIEC
         IoC17ZLukahqT2OHqMEITw1WSk+jHwLXN8YoRa3q/7/DLM/8OPthJltJ+lVW2akY8Hhl
         Hj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743174952; x=1743779752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7iMl7ipkwOPC7e3j6qlBN0GX/yfrn6BNcMk907xgyr8=;
        b=QyomFJcUpOgiMd1VqZpY/ro7YGQG1vhbqIb0/YXNcadw90ay0U0tMgSpQpHQtR90iZ
         Q01sHh/pikGPZYEk76PMC4niEy3uNpTql6/MO/86V6n0jvzFvEuy8VGlNWpoerbPjeX+
         TWmJfFuwwlbV+45llkh3yH57i093szVNrFCpjCsjsjmQk3vhXdQsb87W6ha8r4Jz74U3
         2cj3T0LiGz6R9ht02jveV3R4ZWSiUFFnKeaJMdpqb6RUECQgPqEhwB19pxaD++gVvnUQ
         vJdB9TzTJAQkIlrI+3El5quObIG1cI3cP4MXCikmuJ6nGT/e+3qlDogUe9/HBSyPAOC+
         ZaiA==
X-Forwarded-Encrypted: i=1; AJvYcCVTuvwLv9jLsdXCe1GIgo/1AG/wWIys/tLUOQUuHemW2pmFeKx2xgyaAgabxqiDMQ0YiHRkJl1SPaVI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hE2mCJnbavdC6iKMCe6qag8sPmw7+xCHr1GukGoWsUKxbrsx
	NXUk+x4isvTnXKxpZZd6b8ltEbcfrg7yLbS/V+q95P7UxM5UUqfrGwEbX6/n2QE=
X-Gm-Gg: ASbGncsn6H06bNUV2dTnMajey3jSGJscIprY26vNqHh0GrK9iUK/xgi69GoibsnmOs6
	HiGnJGTlqHzx7blQUzvcM6LZn4DLyxcLHtG0SgZwCrN3az10qQp4cA0PiD7ateGeUSnVRmbA2Oz
	NLcJ6qL8sHLPSxsJMqwd6H2tSCsNaAFPc6UoXixkBg+pGxJ7sD1OuNq/amUFjLKXeRj01AfGWVN
	YwvrRe2Ed1ugRHZ9xYMr5yav8Ijl2f+RvvpDbI6RQGtGeG07mjMH3f6/S4qn6T0Vam7wrEFYpXD
	EovWtQOcAYAmfsSH8tZ1hky01T8Q8+kFKhCq6H40yqFihKAgXYSpLpzov5C938H1gpqvEug=
X-Google-Smtp-Source: AGHT+IGrvdqns/KyfFdg9NaFSTKqJeDUYv3jAEEnoDUOD84kdMdf7zIggJoC/R5v670HU7RhL5LOHw==
X-Received: by 2002:a7b:cbd8:0:b0:43c:f5fe:5c26 with SMTP id 5b1f17b1804b1-43d866d3e2dmr60639945e9.4.1743174952199;
        Fri, 28 Mar 2025 08:15:52 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d830f5b41sm75979335e9.27.2025.03.28.08.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 08:15:51 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net,
	linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org,
	S32@nxp.com,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Subject: [PATCH 1/2] dt-bindings: watchdog: Add NXP Software Watchdog Timer
Date: Fri, 28 Mar 2025 16:15:13 +0100
Message-ID: <20250328151516.2219971-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
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
 .../bindings/watchdog/nxp,s32g-wdt.yaml       | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.yaml
new file mode 100644
index 000000000000..06ead743d5c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/nxp,s32g-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Software Watchdog Timer
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and
+  application software timing functions. STM includes a 32-bit
+  count-up timer and four 32-bit compare channels with a separate
+  interrupt source for each channel. The timer is driven by the STM
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nxp,s32g-wdt
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    watchdog@0x40100000 {
+        compatible = "nxp,s32g-wdt";
+        reg = <0x40100000 0x1000>;
+        clocks = <&clks 0x3a>;
+        timeout-sec = <10>;
+    };
-- 
2.43.0


