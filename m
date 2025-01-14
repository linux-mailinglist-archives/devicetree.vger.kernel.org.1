Return-Path: <devicetree+bounces-138383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF58A102C7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEDA3168FE2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B54E3DABF7;
	Tue, 14 Jan 2025 09:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="is4RTWpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D62028EC91
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736845898; cv=none; b=IxxuUE3kiMcM6O+35RhMKlkfd7qYovNrPTNxza5hzOve6naI7gtkjQU9cRcyJXlqoOMppiFN55OVloo+UJJK0cQR7fkZX/pUESbxOfN9pGsEYc49tdPFGZDrYhfznaj/g4T1pwd+0x63bFsYWiv6BGBJU9H/baK+WM09bMhOLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736845898; c=relaxed/simple;
	bh=Jm64LKstJ4pAW9yrMK46CoLm71la60rak1jBChy8Qio=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bWfu7rLgncuFRZLEIP59UdcfsfuUfraUoYR9vZl+ra62kvbO4igNvmN0+Ti8hlXleeYBiyAXr/PgwH2fzg74ktmGw90ZR63HvlhXMppRFq5eh9RKqFHpoCUMoHFTqwIqeNbkCqgcaaU8RMoT5958v6d92wrsiigwA9M+R6Cbqds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=is4RTWpG; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa6a92f863cso986383166b.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736845896; x=1737450696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siX7FCTD0wixOLRdc1jnWvPAPiYOmQR7y0biY9ez4Ss=;
        b=is4RTWpGFfkuujd48o4N8R9JU1m3pgji0Yl4CUxkXNOSGi8xh9KaghXrIODi2rUsVS
         /haGcCuvsdJ06yB9t49IHdZDoLK80GGSBbcXlnO8Ul2FxTo1REx3XzZQc9tMcrhADvoW
         MTsHPZHFpYZd9v6GpSCzjmUaRQmQ93Csroi48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845896; x=1737450696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siX7FCTD0wixOLRdc1jnWvPAPiYOmQR7y0biY9ez4Ss=;
        b=ilswHCC3pWxWaCSUW4Rp4bDmiGI+bXfCV6LSdbV5GZRxgZbbtASlmmIpFfJceDztnf
         JS7v+7Vm4a8/JjKRQAymA5y2ssy5x64+Hw/hcBijWIA4cSBQ+WG956uA0AwaBRTpkETc
         ajbSI0mJg5jIQpgYxptt1Q2HbRrQ+Vlu4GtcYVQXnq1O+nJQcEgCpjXVGVfPvkXIuSR+
         PTu3nzmGPzXh/tMzN8HHAZDMVOXqIi2LKLYM0lwwopm3PMa4g2eoQjnKqp6ZVOApDGUN
         4QiAd4E4ZII970fw19GBQVUrzZpFCmuAfCdgcoq+j2V1MqEt+JxX/WlL24mQX9V3oGN8
         O89Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0YNPt/R4n45c8VfMODlXTwAT6BnBGQzrIervDtFwTCiDz/CydYL4dZv589f2aiVpr0bTZ1MjMoH6J@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0Wqw6kUu8lUNIiKF1sYKbKGdaSpuDOFER/PrwjgweEU1rwKUv
	b5WK6AnbHShOPU08jYKaCSRU89An9l+ckTQNNmkXrMX4LBHMPbIsjcj5IbcAkDs=
X-Gm-Gg: ASbGncuFYTDuOjvcOAy1eYI/E7PMnbQLwe8m2UfqhLiq3nibXBLlNVJHLbtT2q2w/B4
	PYKI7Hi01Urn2rHNLdMxcTsBMRT7CrZObgzu8Oo+qVBomEaAy4H/rbXFvXoDVjp5RtBMgTcMrQ4
	ml4hybWxn8iApHD8ZCDyCraH3NTq4uHB0+JhmqYtidpxcgxJdcMzNl7AF0yUxIZatNUhOzRZ2Ux
	hZGWUvMrVECd45oYmlr08dXl7zHjnEdBK5EHmy9kH6ZqNcS0d3TdqyL1NKsa0x7cDqztLDqwsFJ
	17j/BOfjUeMiMUzJSQVjwQ==
X-Google-Smtp-Source: AGHT+IEv+eCR9PUfncvDs0wzTMLxOKsmlNsAPus1k4vRWAgjsSpUPjW9jboACPYNr+RGKV19oiU74w==
X-Received: by 2002:a17:907:704:b0:aa6:a87e:f2e1 with SMTP id a640c23a62f3a-ab2abcb198emr2288992866b.56.1736845895670;
        Tue, 14 Jan 2025 01:11:35 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95b7317sm599640766b.154.2025.01.14.01.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 01:11:35 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 2/4] dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
Date: Tue, 14 Jan 2025 10:11:14 +0100
Message-ID: <20250114091128.528757-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
References: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The addition of DT bindings for enabling and tuning spread spectrum
clocking generation is available only for the main PLL of stm32f{4,7}
platforms.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v2:
- Update the commit message
- Change st,ssc-modmethod type from non-unique-string-array to string

 .../bindings/clock/st,stm32-rcc.yaml          | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
index 779e547700be..628bbbcf2875 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
@@ -56,6 +56,26 @@ properties:
       Phandle to system configuration controller. It can be used to control the
       power domain circuitry.
 
+  st,ssc-modfreq-hz:
+    description:
+      The modulation frequency for main PLL (in Hz)
+
+  st,ssc-moddepth-permyriad:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The modulation rate for main PLL (in permyriad, i.e. 0.01%)
+    minimum: 25
+    maximum: 200
+
+  st,ssc-modmethod:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      The modulation techniques for main PLL.
+    items:
+      enum:
+        - center-spread
+        - down-spread
+
 required:
   - compatible
   - reg
@@ -81,6 +101,10 @@ allOf:
             - description: high speed external (HSE) clock input
             - description: low speed external (LSE) clock input
             - description: Inter-IC sound (I2S) clock input
+        st,ssc-modfreq-hz: false
+        st,ssc-moddepth-permyriad: false
+        st,ssc-modmethod: false
+
     else:
       properties:
         '#clock-cells':
@@ -98,6 +122,18 @@ additionalProperties: false
 
 examples:
   # Reset and Clock Control Module node:
+  - |
+    clock-controller@40023800 {
+        compatible = "st,stm32f42xx-rcc", "st,stm32-rcc";
+        reg = <0x40023800 0x400>;
+        #clock-cells = <2>;
+        #reset-cells = <1>;
+        clocks = <&clk_hse>, <&clk_i2s_ckin>;
+        st,syscfg = <&pwrcfg>;
+        st,ssc-modfreq-hz = <10000>;
+        st,ssc-moddepth-permyriad = <200>;
+        st,ssc-modmethod = "center-spread";
+    };
   - |
     clock-controller@58024400 {
         compatible = "st,stm32h743-rcc", "st,stm32-rcc";
-- 
2.43.0


