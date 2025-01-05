Return-Path: <devicetree+bounces-135692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48624A01B57
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 19:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2C733A29B2
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB6E1D5179;
	Sun,  5 Jan 2025 18:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="HTBW8RLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC89F1D0F62
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 18:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100943; cv=none; b=Gn0tWHr7OWLrCFoC4O10FLM129VxtzS71oLuD52t+bvsNd5Cs3oWeygEyIwbJWFZtCexg6VUWRbySw4FSRVPmRoxzzA3Cr6F5U4EnaSvSfC6jflIiiXYEUGT/ldx3yUNKwbvi4VqmvAy98SZDJuZbILV6jouDrDHYkqdJA4VQAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100943; c=relaxed/simple;
	bh=yOiVkGwEdMZydm8mezT59eqr13KDSeir4uRipppy1Y8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hqihujdYi2YxCtVFgxdiO1F7DYbPc00DcE9uhsZATai/X68evYmw5zEraNmc/yP9fyv+AIgqWyT7BWkm54BCRTqC/lnCAP5oNLbzZ3tQ+AK2Ow+EJwgRiSLZdTjDNWUhmd7k/JPwwKgDdGm6b8ELPUyl0SmT43CMqHQRNpaVLXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=HTBW8RLZ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d88c355e0dso5338313a12.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 10:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736100939; x=1736705739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DBSWyldngVnQclvBLd3GqHALlVJ1Kxh3yvgFvrg0xjA=;
        b=HTBW8RLZzDaJtfRzAnBA0x6LLLOMzPddLL6YT5kTESOSAWpjhrP35VmttHyFkYXKdF
         4dbTchOaiI5U7g6gXI9wriDQauoxdlBeQm6VHf9SBcb+7PErTf6Dixta89E3KcU2ccvY
         WaGKuK53HNicptqa8R7VkPU6JebsnFy30M284=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736100939; x=1736705739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DBSWyldngVnQclvBLd3GqHALlVJ1Kxh3yvgFvrg0xjA=;
        b=SSpMpqpc9MMu8xCo3CO55wUc0Nku9bewoM537k/8nnBgtD3bWmwYXiGG1xTinivnN6
         NmRy/chY89LtmqWg6XPxkJEx/Pe9wSkFZSw1trZrZBhwP4D4409umqQAnB4i6CKmdh0n
         8r6ZZocRPWxfpBGiWPTIkI3XFYFEvXL7+5ThftRahH3OjUPHPIGFbrk+BkwjZs1FeKBQ
         VnQ4bZUJVdKw8CCDT6uKye/X5QeYNjtRPdWbqmlrrQLm/0zFTmpvUJ7av5ISXidRlDUp
         BZrM6uzDEKLK6Sys6wAU6CF3VysmLoqIahHeET+RSxn1BbzQw6t6jT+lB60W2Aq3Q8+s
         mrYw==
X-Forwarded-Encrypted: i=1; AJvYcCUzu57Dd9+YBMIOupR1XAPrcc3SA4uM3FlH7D9tm9f0QN3C6sXBGd0pPlTSUnI2mM6SvdumPiPuHZDa@vger.kernel.org
X-Gm-Message-State: AOJu0YxaKg48QNOpx29ITFdbuLjBhfmq6bnNiZ9NKXPP7WH7x+C9alxG
	0Azf352iscVuXUGLapsdPjZAvJtcauCLN9cQ7HQ5yXOrqEwQbIl4nulSIdp8wx8=
X-Gm-Gg: ASbGnctJB/y0qwR8yaJzCzowc4nh+nK38KWB/XyUr3/+avXsv7w2X2Hgnc3EQOydO+p
	l4llp2aP5pwmoHFMqchvTJvMLKe4GyA8kQDLFBBEvswma0kWNNOC6KguHYN6zaqdsHnKEC3DUoZ
	lV9bXrGdqujd5IlZZ9dfqDdJlEewEEvBGxxHzCnk3EgOk6cx8n7QNDrt/ng1Fzi/IytaZ/Tfs1N
	0tjtAh/vqWA5Pf/PV5JIe10AHp82WVso7l3wkXN5oGH4hraA7zrqjvYyUExJH9tv2AM7OxiHW/X
	Tuv/UnqgxXOS6s9HfQr7hGdsT02+Pc82GnDmlwbwL9ukePMUT61lT9yo9eXaGAU/c0MhxqwUFG1
	nF2VVT3EzHm/8cwbQ2Q==
X-Google-Smtp-Source: AGHT+IEouP5DBWHZTHTQqFEZUf+3uEYRS8Zu6JvRBqEkbBu3GJtaa/Q5Qj6PinpQXdyRMCSrqc9f7w==
X-Received: by 2002:a17:907:3e90:b0:aa6:abb2:be12 with SMTP id a640c23a62f3a-aac3354ff4dmr3925314866b.37.1736100938804;
        Sun, 05 Jan 2025 10:15:38 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f178sm2138185066b.38.2025.01.05.10.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 10:15:38 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
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
Subject: [PATCH 4/6] dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
Date: Sun,  5 Jan 2025 19:14:16 +0100
Message-ID: <20250105181525.1370822-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The addition of DT bindings for enabling and tuning spread spectrum
clocking generation is available only for the main PLL.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../bindings/clock/st,stm32-rcc.yaml          | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
index ae9e5b26d876..c345d3ff3fc4 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
@@ -77,6 +77,26 @@ properties:
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
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
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
@@ -97,6 +117,10 @@ allOf:
           const: 1
           description: |
             The clock index for the specified type.
+        st,ssc-modfreq-hz: false
+        st,ssc-moddepth-permyriad: false
+        st,ssc-modmethod: false
+
     else:
       properties:
         '#clock-cells':
@@ -118,6 +142,9 @@ examples:
         reg = <0x40023800 0x400>;
         clocks = <&clk_hse>, <&clk_i2s_ckin>;
         st,syscfg = <&pwrcfg>;
+        st,ssc-modfreq-hz = <10000>;
+        st,ssc-moddepth-permyriad = <200>;
+        st,ssc-modmethod = "center-spread";
     };
 
   - |
-- 
2.43.0


