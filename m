Return-Path: <devicetree+bounces-138542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5E8A10FD9
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 19:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4D021887526
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3821FCFC5;
	Tue, 14 Jan 2025 18:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mOCbxCAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FED1FC7EA
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 18:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736878832; cv=none; b=sHeBJP8YVRi97g8aWTVJsjKHSZdmTBM60EjdkxembE3nRR2nIlHcVOBe6L7dIbe1xruS+F8jwmK08mNflr0beFrqGChE6f3pUk98kUn4swebvUXEqAROZ/ng3C5lU9zXB+lrm/3p6K8Rm0DhcMm07HjIarkji71oMb+AdtOo2Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736878832; c=relaxed/simple;
	bh=4K9iFpgEz2yPmgk+BJfkf6hcPSKJsJttyhj2iGZgWmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b8mrUllwir4muGfhG4vaQ5QS4kylRdN2HymzjC+w/ifEA0Ykhc9ZdItfFDpkRh8oHnZZwzGNe7WT3GtnxvW6NaFKPQJgSetl2QZMaZztFyUTm22L2PApX1l2T9YXIgtBroPxNqZRV4kg079iMPMSZojSgo/i1RPjE6IPIwzTm4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mOCbxCAC; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4368a293339so66400435e9.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736878829; x=1737483629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zpzT+aUzJ1Q97S7iT1IDWutNkzHMdDAlflIDJCmxtro=;
        b=mOCbxCACQOc50vvkgEzEeLqza2s+kVpZNNQ4EO9HXiuo9u+U3VfCCZO1KHIMwmmUOl
         3j0AiuQPNtZwa0sWBVojyOW+Marlt2BRwUh+4qj2LTZ9gGcGC0xdVMG8Wz1EduI4sUB1
         jPb5faCXgnIq0cqG8xz6W19h3lMf1DwdJttmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736878829; x=1737483629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zpzT+aUzJ1Q97S7iT1IDWutNkzHMdDAlflIDJCmxtro=;
        b=luRsKe8gwIoIhOuPJkkaVBjTgrzME5vwQPO6A2j/vufWPBZ6ZWnlRCj+6wiloi5gQD
         z+5SajHn3X4W8NYSEsJQZ7Ow53oX4DMdLvz92+UfXLbja3fXhOt0bJIncRXGJaMf6YBN
         gW9b/Swi87YxjwYOiSou4xbT9pVXQALWjdBZdwWENUFIaSj4pkh5fKCSlcPXBV4fIhGs
         /6Q8SNGBkkmf0ALi14E6lQbCHiXE9conJvW7CeQgEUneDktD853WX4nypBDmuvSWsVlr
         QetJoOVWc9c8Lei78jKi3azWtDPNEBqspwsB2EzLGFmIwLS8IGjf4Pkwene+zfrSu+di
         Y84w==
X-Forwarded-Encrypted: i=1; AJvYcCUKOmhaX/9RywVZctmcKAEzu5uVjErwkm0ffOp/WQFTtgT8zgPQlzDdnztONqCe3n25qdSzgMzyPX8+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8ZowdJ1WfEDyFryneoIesfpb0f57j6g8iphm2YcltecNU4iZk
	8yk01pErY+iqZ2PKeG91Via1dRIls7Cg6wVIm43THy/zH89MFgkXpTCAjmXImv0=
X-Gm-Gg: ASbGncsCnvO3Lp90TnwDXWSMK7LTxAyUdAkz1rKP0MZFlzXYGiBYiv5kZxdsfkE+uo/
	nWO9fiZahV8itPVrEqcVXWje5S4hELA4Vb8BXvz86GQ8QAGohymlniaggXxKtjRBAsPE0Tw3eNz
	cSfeGmklY2Z949L4iWT33fIvAv9YIhWaupK2B3aFVOs/WKgENdg003qFCfPM+/OCpdikQAwv1ao
	4YpYpHZRZ8zS3FBFBm3vosXUxuqxGSAwEWccDTxYvBnRNU1xXDN9PxzE1tEilOWp++HTmoilobV
	GLFV9GOawsLeQm2u8LjB3w==
X-Google-Smtp-Source: AGHT+IHnG0SooqxUeZ0EsULhwv0RsoU3JoPUI7vSBUDQG3JQ9VKYcmjmgQ2ZhBW1LT60TAvEZ1greg==
X-Received: by 2002:a5d:6da2:0:b0:385:fc70:7f6 with SMTP id ffacd0b85a97d-38a872fadf3mr22273830f8f.7.1736878828905;
        Tue, 14 Jan 2025 10:20:28 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38be66b01c7sm278970f8f.22.2025.01.14.10.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 10:20:28 -0800 (PST)
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
Subject: [PATCH v4 2/4] dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
Date: Tue, 14 Jan 2025 19:19:47 +0100
Message-ID: <20250114182021.670435-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250114182021.670435-1-dario.binacchi@amarulasolutions.com>
References: <20250114182021.670435-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v3)

Changes in v3:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v2:
- Update the commit message
- Change st,ssc-modmethod type from non-unique-string-array to string

 .../bindings/clock/st,stm32-rcc.yaml          | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
index 8f2494a0b28e..f83a6120d65a 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
@@ -53,6 +53,26 @@ properties:
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
@@ -78,6 +98,10 @@ allOf:
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
@@ -95,6 +119,18 @@ additionalProperties: false
 
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


