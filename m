Return-Path: <devicetree+bounces-245543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E86CB1F9B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0509430FD3DC
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6803009E9;
	Wed, 10 Dec 2025 05:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xPSyCIZe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0C43002A0
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 05:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344324; cv=none; b=STGeCjuAVD0f2hufaDcpO1bjt1aNVk9x4oN8F0+rWimxAqwZ3fdEz7IEq0Z6EgrtPY1Fbz5Y18HvJkMOG1ieWVzvNrZGLm6GbaKrwdxCUBrgmoRZjIBKFNS9GslM+1FAPxpebz5ucnSdXTuEUogk+xjH5nxvHlLsKmcQqXr0IAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344324; c=relaxed/simple;
	bh=rRE+Pn6uRjeIMKhh5F8RB2UlR4gSdwImg4JvNVWYId0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dvo7Qv8we+J9A4oppuNhGy7WrtKAZacPLla2n/hgp5vsbftQGU6gbw7xvlC6VQWY8Fz3ebcbpfnmHw8uigHuuMmrpYGYghC7HZk8xozmy4ijOcS977O7Jdp6FvdwjO7wXbWwO5v5b+Cz7NhQKA1ZP+jxn+wk+o7QMOh+f5/Smbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xPSyCIZe; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477563e28a3so3856905e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 21:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765344320; x=1765949120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cI6o8go+UXL/S5TqQXusywCs+KEzzJC/G+A907W08g=;
        b=xPSyCIZenDPC1OgdI9oTEOXmV7JSnb9S3NAjdBV9Z9A25oUP8OALMiwrVCeD0ms2tD
         m98EV9K8w+MYPHP7ZhMw26cx1JxSmfPgEKvQ1Zrr2SSEfacxYClqq8Ai/0i3ap+dlG19
         mW9tTWFyPLFfhtom7uOemJH8cCFHK7AQNh1J3Jc/JNiOrXW9oX6qQ9/kNpc41Q80qmme
         +uNBXHUinVDegT6J7HtSi6pIJhBhHaKkjgW0wC5KlezKYm+ryXRYUS7bl22HYK/1ULaH
         EwUROBakfEtl0rAo0kTygY78JCkIgBdLvmDLh9lFK9/psJZIErn41jztFQHl7nutfoo0
         yJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765344320; x=1765949120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4cI6o8go+UXL/S5TqQXusywCs+KEzzJC/G+A907W08g=;
        b=Ey3RrCnXWKzlAbuhP1bvUcuvxibgWsVwAmDhZZuWcQzGJ73JOgPuKoNShpHS5TqgpB
         mpUlcQs4cQks0W/NI6YrHCC9phV/nUIPih83f0TEQ2i/OVjy+jim1Cp4GIWAXaVbP5yV
         gKMWwvqQnaSSHlkeV6NS+flSYm0/+URq7b0MI+wZOfEvAXwVyoort2xt7xNwfY6Xdlz8
         pvRHKnmZjIHSILVPGvkqPP/NEK+NiUQiKFQFqF8kbmMcGG1IiAdguguvfgTZzr/2Gn2I
         lk03SdABRzVOJ5TLLjgpnHQ6mrdPtjdTy7tHrU9o6E6rhdiddGupvnSPvKha6/jNelpL
         EV4A==
X-Forwarded-Encrypted: i=1; AJvYcCUm/9/EPYkJdiK/65ZMtOIP/a84L0JrthfoIvJZnNFJlGUQdPWAAkPpVPdzkIGc+c63mOd5KG/0oT3+@vger.kernel.org
X-Gm-Message-State: AOJu0YyWuU9wP8lej9Lu5GLuWLjVpZZ7fJkybA+Dcr6LLkZd2LyZv1yH
	PrEU1XFns3RR8VNtl0VowoEmf7CQpSuTwoTlWoMSd8NgNcTDsz2BaXgCOsKCLBxOObk=
X-Gm-Gg: ASbGnctQrAI5VZSEUVzIZNmj6Am4aYwQacp7GDUymUO6jWSAn9uQZAsWOFqdwYrYRbG
	//h1+50UgTKsS8XH8z6gxyOW8y2qTCsGDRpfqEq480W9aqR5HsZ2bbnRH0i6xoFyUW7k1DXmG36
	H1h9/dg/MsSiKW3py265YRFf+k1SkCQngvCWQr6/Sf1YVpP73RtPuq8lk3gHUWLjRB/a/VtF7nY
	ktKURz+kTi+6ORRILVqhkkqNn4ab7USEFZ1oFP+9K9OSkGjG3udZ+L0w5C9NuUcZDPRXDt0TUkh
	eGYUQsz20G41FSA95HK8rhKVuhHyAxHVJYRXRtxVKBrVd2mN9k3apntTOQqlQetfgsse7kg2Gp3
	NaYo21+fpOAMXSqr8jHgjTzuhRIIzgjnJTi5YVgvbYfiWnFUyGXBItMTSiDweJgT69fO4t1oK+V
	JKduKN5St+6gb/IRKHzNk2w6mUGuTGuwQ=
X-Google-Smtp-Source: AGHT+IFm2uRrTxNeE4MWzwAU4VluA6mvY1no+6jYZZ3xTzIhUq0RwCW0mb7k9rZckuaKaPuIe8SKTw==
X-Received: by 2002:a05:600c:4e92:b0:479:2a78:4a2e with SMTP id 5b1f17b1804b1-47a838d1688mr9398385e9.7.1765344320173;
        Tue, 09 Dec 2025 21:25:20 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:4fde:b93c:87db:86e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d3a75a3sm33485695e9.6.2025.12.09.21.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 21:25:19 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
Subject: [PATCH v2 2/3] dt-bindings: counter: Add NXP System Timer Module Counter
Date: Wed, 10 Dec 2025 06:24:46 +0100
Message-ID: <20251210052449.4154283-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251210052449.4154283-1-daniel.lezcano@linaro.org>
References: <20251210052449.4154283-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
when it is used as a counter and the compatible for the s32g2 variant.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml

diff --git a/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
new file mode 100644
index 000000000000..4d42996f5ad3
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/nxp,s32g2-stm-cnt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and application
+  software timing functions. STM includes a 32-bit count-up timer and four
+  32-bit compare channels with a separate interrupt source for each channel.
+  The counter is driven by the STM module clock divided by an 8-bit prescale
+  value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm-cnt
+      - items:
+          - const: nxp,s32g3-stm-cnt
+          - const: nxp,s32g2-stm-cnt
+
+  reg:
+    maxItems: 1
+
+  interrupts:
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
+    timer@4011c000 {
+        compatible = "nxp,s32g2-stm-cnt";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+        clock-names = "counter", "module", "register";
+    };
-- 
2.43.0


