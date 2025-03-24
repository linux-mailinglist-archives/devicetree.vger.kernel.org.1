Return-Path: <devicetree+bounces-160101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23623A6D7EA
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9545216CA5F
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 10:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F8219C542;
	Mon, 24 Mar 2025 10:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y6sNNUjf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB111802
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 10:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742810428; cv=none; b=hE+h0lIHCVWOcK1SjepGRQIthPoagu0CdzAv6/U6UXy3PQ/EnjA8EslIrh5O6GDc+ZrjxVCZUb39MJ4mFcMwDv81ihH6bzbdBdy5XxAtX6NsOYs3mHhfn2IHcN4MlH3uW1RwyznOC6bJbO0kPiwBJTjzRZgBBJMaYaihW/tFB5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742810428; c=relaxed/simple;
	bh=bJ307yDY9+IspNnAzdnPvV0xfH6lKNyPBtW9ptEq1w0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AauoRwUkgZI11o4rIc3C1jgNPF8w3RRPmBiKF+tiBy9BbZsl0m5+fW7c4+uN7Uk9LUcw1sPSTuus84TxHwTIJvQ7IW5JLuCnRQgHds/k53Cunyn7uoUIjI0LFnLppWzINFSgPdXr9dkqXDNrYhaDjLkRJLwuXNZPG5eAMCAyUXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y6sNNUjf; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3996af42857so3313214f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 03:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742810425; x=1743415225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3RzGV1RpQts5giBdaR6NJZIGRMhOnCTfW5GoZwlJYO8=;
        b=Y6sNNUjf6b4IbgheANIsaRlk0VxQKBKZvc3QVeJLeuBCUTssyXAr/soLWgd3XUqqaJ
         fsp0B2eaNxvcm9/YBD7K9FbedeMDgOgQtPzn+jZKKmRp9TScNplMdw+AXxYv3iZwErRi
         +4zOIlL48IYAcjC+ddBQXQz5CHld71Lfzqn6EBMRwVFXsYtQgro4oYsFXwsaAg9M5gE7
         SHZBBPZNGIGBGqwy6zeUMYA1FRxqrZ3IJyyM/jsqRIQ8yxCsMSnIdi5bW0jpLwfa7Gdz
         7T8R6PYjuubcKUxdgondox9UR1yaApLpAufe4LVdwWB1t4e5GLhtAltZLiI770QbSNe3
         lM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742810425; x=1743415225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3RzGV1RpQts5giBdaR6NJZIGRMhOnCTfW5GoZwlJYO8=;
        b=m5U2/zcgpfP4mTmAFnYZvZFKYDyDWUmUgw82cOg6jKB6oa/uX6lbGq+tqyAw4i6OWS
         PrVRvF0cMdjiPY+f5P3+nFLOFOENg7vPglsOx1YKG78fvTExLnVcy9RD3Skmq2/fgloI
         H2bm/ZT6ly1xGv+UraTUpIXBCNfol2XomQUH+Z/2xM80GAb2C20r6J8+php+jr0dP7FC
         s7yAHURsCtqT0k7zxSgau7grYy/hWEGP0DpVIYwqNQ2xXZR3DJia1icIw09BhFsq8nC0
         vM3NjqOLy2mGXeOrT2H30BJc0CD9fLGOOZQoMNCnH8IvkMGu+7QW+z+Bf1hG8SEjvQz+
         rEsw==
X-Forwarded-Encrypted: i=1; AJvYcCWw2ZqJ0fKcVLCWnXZQnXXRLLKJLDyObEH/gD/Z17Mg4Mr16fbADE3ItCEDnYZYHvSxcwBhctck07Lp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/wNyLST4F2KTnQr4ZHIg7eZXAcrmSV7rLQYSKv7aImtJVI0rT
	uBAslL0rEnm+IWixXB4jAXI8cTysv/LZlfrUksgI1Ugyj+Gd7Ql+MFDdiZnf/vA=
X-Gm-Gg: ASbGncujkPB+nOVdjA2Z7/Z5w/Qpqjh+QGr2tdC+j2gqQnKrm9bFjaWRAyK3uxYPd/T
	pGJemwAzzOJGT4giL9uopzKdkwN7GQC3/iihzgpSXBXdCHP50ER1b9sZFG5Ak02PJY6uKcy+xbb
	tozRrR9VllVii7hZF3mbSj2KOjz40hDSnwRG0/1pkOPNi2SbPl85HcESou4MbF4gBUmtCMf2Qo4
	MgZI8RUGQk3NsBzy0wjS5IVX5FTbO/JdQjlQDB32BYv14hKDTNlArk9c6ycIbtkU84zUVPdCX81
	4WchcgYPRTr4M33QZuWb9wmz0Z+hP1n/Qrap5rfr3+BKOBB3EtXuO0NpGyu2ZRY1oqj5W18=
X-Google-Smtp-Source: AGHT+IGVC5Cc2BTYBbFdNtgjSgvA47GAhTFPvWufLC91XobhDpo2M7uGRnbnSjRmU2ARwM+unXFsow==
X-Received: by 2002:a5d:47af:0:b0:391:21e2:ec3b with SMTP id ffacd0b85a97d-3997f8f743dmr9193072f8f.3.1742810424883;
        Mon, 24 Mar 2025 03:00:24 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f995611sm10625933f8f.15.2025.03.24.03.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 03:00:24 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Thomas Fossati <thomas.fossati@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
Subject: [PATCH 1/2] dt-bindings: NXP System Timer Module
Date: Mon, 24 Mar 2025 11:00:05 +0100
Message-ID: <20250324100008.346009-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
and the compatible for the s32g2 variant.

Cc: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/timer/nxp,stm-timer.yaml         | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml
new file mode 100644
index 000000000000..41093892c617
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/nxp,stm-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description: |
+  The System Timer Module supports commonly required system and
+  application software timing functions. STM includes a 32-bit
+  count-up timer and four 32-bit compare channels with a separate
+  interrupt source for each channel. The timer is driven by the STM
+  module clock divided by an 8-bit prescale value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm
+      - items:
+          - const: nxp,s32g2-stm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: System Timer Module clock
+
+  clock-names:
+    items:
+      - const: stm
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    stm@4011c000 {
+        compatible = "nxp,s32g2-stm";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>;
+        clock-names = "stm";
+    };
-- 
2.43.0


