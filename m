Return-Path: <devicetree+bounces-247266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ACCCC66B7
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5735E3006728
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D958E33BBD4;
	Wed, 17 Dec 2025 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VXTNWBt7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E313246F5
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765957823; cv=none; b=Z3xJouIE2inq0o5im+mEKGyrqJNwTaqLS5DJViW0T5YUMnFVOZf/tyomGOLjU2bUDMUWqxv4jLUuzT1s2dKhXcule9otCED764RTrhDKVIZERaTmiG2WaF4/4SjlfyO6LmJBeyAXn/uZ2cI0axQ41DCZwdoPil7b8eGrhBxWFcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765957823; c=relaxed/simple;
	bh=rRE+Pn6uRjeIMKhh5F8RB2UlR4gSdwImg4JvNVWYId0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c60Uuk+SPyleShqOY8comIxR7hIuijWzNd16NzmjubeiPcp11JdEtk1oL+WSLzLEPGdTVuCDN9yNCOUlr/0fi/FweZ0BCh7fMvuLDQy6fsflua5V80iZz7Qe7231pk13qEcK0eQsWlE7TAeCBaztKJsXjHSYRBG07/33wJXfohw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VXTNWBt7; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477770019e4so50682925e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765957820; x=1766562620; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cI6o8go+UXL/S5TqQXusywCs+KEzzJC/G+A907W08g=;
        b=VXTNWBt7ds+4RtgsA2e/Xe9hkG2AUuB7OFXtmQ3k+Go8hKRJ3XJtoely6IKdVbd7Cd
         ME3Y8AEfSi20WvdfC5XqlwfQI9/m0pPvZX32Oaa7muGUZyZ4w1MzZnxXLeNbjVhf4snx
         BOE0YwXLEEraevD6d/TYDfpuQ/cft6SQ3owokz5QKt/ilm8bNFxiSHcAnmOZm0pfPIPs
         ifr9dk8geHJp2aNVI39VWXVj+tZths2MwBnt/c6f2Y5W0rqjJnJn7TplBb3eHpu/0r+/
         inOEal8INVNEBnumvrwddvEknOSuati6x3QvyflYf3qn0wjRHwpeQgHCQGidN4ACeZDT
         d1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765957820; x=1766562620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4cI6o8go+UXL/S5TqQXusywCs+KEzzJC/G+A907W08g=;
        b=lRc3VgurJaVGXyjoN7xEdYU1dHMaUqagUE82nzyrjUlCi3z6FThG++xT8paY/b6kq1
         RaxXHFonDCYpuySRkKeZOyt1TBtJ2bROnCTDZocbWJmcW4xsqBTu4uZW9Hu+vo2saCAF
         Hta0khvu1q7eINDnkHz4t+uEieOsXh1GhCCaCsRwWeYHYtXduRLDC8bbBdUOwmdgo0Qf
         vNYDj3ulDp60ob1VjzOiFDRfF+xthvt8omZUSvaZnyLI9jTwm4p9nrPWynBeO2rKKbzC
         MC+Yfkust5WcE9f57iird5ow0DqaGGruvJ9dJHKrvP7S9XSH3Vm03My2TfgscSvwkQyl
         1Egg==
X-Forwarded-Encrypted: i=1; AJvYcCWJXfaiGzXc7hcM2HmO7bGRaqaQqGH2YyWHTPAo1C6zeM6UH251Bv4sXsvc+JOi3F0iru5cNUiC7sV/@vger.kernel.org
X-Gm-Message-State: AOJu0YzxTEFBbZb5Wg+FTyTJkOe9HzYXDMQYHMPXCoUIu0mFzdQzIyry
	nDwxtSahFcFpxeS71Bug7cWpy/+Np/YU4A4csp/lvqJY4ln2aZk6vKVv06GCJYBNkzA=
X-Gm-Gg: AY/fxX6l3Hf2Gf5ryhaNapcM2veLip8786rWSBgWrOZpWOWoyLvOpC5Gw5wp4DFlJc6
	XhVRM7/lEihM1UKxeW7fbGdFM/aHuL26rdjErBrGZCwk6TfHLh+m/f+IZ6mfyhSMxmIdCijBXdB
	2HfTYQkxfab7FTnG5cSx7RDG1KDboCQf9bxvKizrdD3qdaDaDEsSe3hJjG+7PzDTD5JlhJQIEOP
	O7tQe7MnUWlJV0f0p6cJhz8hy7k2+V7Nhmzr6QjRmaOXD87ctbuaWen/5cp5CQbTBCnCRuL/6kN
	n8bn2WepOVY1T2G2aGF6HdK0q7/n0QFsgZri14SJA9KRVSvXuDXyB0rYIdSMPK6bnmioMaZQPTU
	kD17nYrebjrZt12lw0imXxtIRnlSVwV4U6EJ9pVv40XidcYY3XNGhuWqjkpD22cR9PPfWQSR9N5
	5GlPk3aq0zuLuhaxFuiRKBv9befAUiIU8=
X-Google-Smtp-Source: AGHT+IHUt4H0d4IVMI4vL/GyjK6b+P3BJ1v53Cknxck8AjlUtvfUSe1tsqrmrYziamrC2AoPcIxuOA==
X-Received: by 2002:a05:600c:4595:b0:479:3a87:2092 with SMTP id 5b1f17b1804b1-47a8f9145edmr164663625e9.36.1765957819748;
        Tue, 16 Dec 2025 23:50:19 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1edff5sm26094315e9.14.2025.12.16.23.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 23:50:19 -0800 (PST)
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
Subject: [PATCH v3 2/3] dt-bindings: counter: Add NXP System Timer Module Counter
Date: Wed, 17 Dec 2025 08:49:56 +0100
Message-ID: <20251217075000.2592966-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217075000.2592966-1-daniel.lezcano@linaro.org>
References: <20251217075000.2592966-1-daniel.lezcano@linaro.org>
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


