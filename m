Return-Path: <devicetree+bounces-207318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0C0B2F278
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47FEE1CE32CC
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5919296BD4;
	Thu, 21 Aug 2025 08:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cRKn9U+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AD21DDC08
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765156; cv=none; b=p4W98xlpS8TH/DKA+Neqfk9wYScZ7gyXiW50ZXY9XHvnFE4JFkkNmGfOpQt/d193Hu+VXc1Ri59hedi9pH8vH4iXLj+bZAmlo47/bzToxVlNdFjjRoUtePFb4PigLySNVRjROgnTj0FmVjKRhFWoLQgVuYbdSjTUgZFFYzUJxEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765156; c=relaxed/simple;
	bh=aiOPgCva8kudkEPl+V/XfNEIoC3r9JUXD0el5mRjFUo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mo6Mo3sbn+YwS6ZzA4rAPgETtC9rwIeOW339gJxQ/bwSpqz8dhu0r1BLDB5dNu+FYi/aabDCSvSgSsxXj30jTBX1EIPnqI9+/JCid0F9GsEDPZ4l5J3kSQ0oZ6Fo7ylWSKS4bLFy0myLbxQtM2e3nUVmu6t1rZxx5+ZxMIPPo38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cRKn9U+t; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7a96309so8736166b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765154; x=1756369954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2tpMok2B6oSFp46bPm9JfIyRCEx8l+K6LCpsnmOC61A=;
        b=cRKn9U+tm20Cldh9/5ac1FLmv5qTvB7XX8b/OlPgwgkcHMXchpk4foQR903V8sdeaf
         9uTkrTfFgJmexqWimkFZWq3tvfegECj4Fegrw1U8SqjdofQ4AwbTIYX5Bfy8uuryGnbA
         xBi1K4Sd8xSBv6PdeEA8l4+cJ93lq97+l5WfLAl9AoQJ6aDq6hwRHTXQtwLtroJOpUvp
         S8/y2LotpM78x6t86AOOnzgFhcabYZZLhodFFZLs2TSWQIMgsspeW2PqPkcgbACrv/M+
         4AbGhbJB2gITvxVuHMG6UUw6earSl8Xwd+Ff1H/Ac+4HZtZkjM6Sf2eia9DU4vHcStUW
         Ye+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765154; x=1756369954;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tpMok2B6oSFp46bPm9JfIyRCEx8l+K6LCpsnmOC61A=;
        b=b3XeSZH7P8pUBchQN73PjQ2O2/hPks/CHkRKdBSjzK6rDCZQ4NvR/dCvpD0fWWrPS5
         cLQudFE6wvWO4AzzVyX6ZCzmtxZIx4y0exTlWfeOt+n/aSHaYENBpqi8SdKzYqOaciuF
         z25KhRr9kSEW+jCTHmJrsH00ruBvwVISfpHoAix/cSULYEpSg3UjxF6qP1HXTZEAnSL8
         xPuqBkrLBVyEAPjNxHvQplvucQ3j6aQl27sNHjpg0VQW6QYPA1B8OnGUjw/VV7HhpIdW
         GaUZC2jZQN0Hzl+/VMg49V2kzKmC0q9MDVlUOYlZ5BaBx1crg1nrSljn9mjZOtvhRRec
         D4RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdPeGLWgMwDUpzN3D7nkoyfhJpWeupxXecP2ig0s9cCcjgJewbmNVs+WDk+by2Tb3Pi8G1iqAdIuWw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7XBoTRcQJGZSdmH/01GsEu2mOR/7zWNL79kTPPBUOn6BadCwF
	Xbfe6I5UtBvY3+O5PKNgxMBIdrSk45u4yXCZEOImFeokdxu9MhV7IAJjY9NGr1CffeI=
X-Gm-Gg: ASbGnctu2ON6vWOxcVGogAMi2pU96JV14yocoU0kLEwetN9qp8RoCtDcF8C1N0hwfIS
	o3tL7wJExhLp+cG8zvGqouY/6mJ3dx+yv9CGwtW+OxapajI8b1Wo6fHuIAkjPqMcevCj0pW7f63
	cfDr1Xwu/ltGqGdMTyyG6MiP34FcUo4nZNBMLNwKF2Rq3+4ggpO7Rx/tb9q2IBzRj7T/QjVtFaJ
	0/mB9NLODO7otmNDngIshLtza6bsCx9coN0+y9v0HHsy/FftfESReWt9JFnIOSWNndVzKaRa7mU
	3tx0GoqwgBltbTHZvID83arwG4El1GFC1++bLB7D6xBDJZp46W0Qkhumxh5jRb/vjKG+F/2IWLD
	a9UvjMfcAFPTY4tP95lqai4elViNOg5Nwgg==
X-Google-Smtp-Source: AGHT+IGrKLDvcNhMPRRUz5yZ/0B+UqV3cuCDD78GAK5IX9VMQFlpjMOiQBg7/gspXEwR8WFrVNM3Ow==
X-Received: by 2002:a17:907:94ce:b0:ae4:1093:d41d with SMTP id a640c23a62f3a-afe07618e48mr78991366b.0.1755765153518;
        Thu, 21 Aug 2025 01:32:33 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded478bfesm341676166b.60.2025.08.21.01.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:32:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Lukas Wunner <lukas@wunner.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: gpio: Minor whitespace cleanup in example
Date: Thu, 21 Aug 2025 10:32:14 +0200
Message-ID: <20250821083213.46642-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1764; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=aiOPgCva8kudkEPl+V/XfNEIoC3r9JUXD0el5mRjFUo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptmNfZQGc9s1xwN7F1mVlmTvdanxSxY0HauHI
 HP4rAniXDCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZjQAKCRDBN2bmhouD
 13frD/9kUAvsG4k8pJHW7pM/M1lFmN1E9aryLzVWQdCoRNM+oMCJXweuixV9wDUQtiguoG73Da0
 HrY+SLZZ35XqDk/J10NgDL8vSKBSl/QH6wD4qhZpDxcRB+gNfBk+XtwDnwULbdNhsxf6Jo4PXrx
 HJribt3Qh+TFuMQJP85Q8wEVZNRdE1iki2kV6LWQVLDW5Y7akzcYz4gdMKjYfWNdQxlrimLk9Ob
 VFKndIUkSaEHo1izt8KnxGxdoCKhxRMDtSEi2BJ7ixlugZ2z29M3ykbYCCsidPnEs9hJt+J3+QM
 i+V5+WO4l5x2LEpUZ1+Qyq7+XUq7JkBBCTFq04DZ9l/S1QMLyBRo4XXShVB7MmvVrumAhy74KSo
 PB6aI4D7fk+4WexLlIOwKHk0GXVDiXSnmSqBfKX6RQqv9V1TG+FliEIex4cmGMilpT5oBPURibT
 19arh2P8kq4samhnaK6kFAHQ+iVo/MuT8UiFAjtWw97nSfRkrWVeEwl04yGd8YMludhYjju1V3R
 uamX9C1mdkuzSJFM0C4YBAV3a7irZZMDfED+dejWUfzPZQPvzJfLz/ZWaIhC1Z9OWIVrhv1xLL4
 NTO8viJCzgJ7dFii5xPMpRjF4ecUEoz8FVpiDWuebjdIRRf3rHRlE+KiFc9nl7cTXLERfDHgNcg ZfzyrRVol9a3U9g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/gpio/maxim,max31910.yaml  | 6 +++---
 .../devicetree/bindings/gpio/spacemit,k1-gpio.yaml          | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/maxim,max31910.yaml b/Documentation/devicetree/bindings/gpio/maxim,max31910.yaml
index 82a190a715f9..4d200f9dffd5 100644
--- a/Documentation/devicetree/bindings/gpio/maxim,max31910.yaml
+++ b/Documentation/devicetree/bindings/gpio/maxim,max31910.yaml
@@ -95,9 +95,9 @@ examples:
             #gpio-cells = <2>;
 
             maxim,modesel-gpios = <&gpio2 23>;
-            maxim,fault-gpios   = <&gpio2 24 GPIO_ACTIVE_LOW>;
-            maxim,db0-gpios     = <&gpio2 25>;
-            maxim,db1-gpios     = <&gpio2 26>;
+            maxim,fault-gpios = <&gpio2 24 GPIO_ACTIVE_LOW>;
+            maxim,db0-gpios = <&gpio2 25>;
+            maxim,db1-gpios = <&gpio2 26>;
 
             spi-max-frequency = <25000000>;
         };
diff --git a/Documentation/devicetree/bindings/gpio/spacemit,k1-gpio.yaml b/Documentation/devicetree/bindings/gpio/spacemit,k1-gpio.yaml
index ec0232e72c71..83e0b2d14c9f 100644
--- a/Documentation/devicetree/bindings/gpio/spacemit,k1-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/spacemit,k1-gpio.yaml
@@ -80,7 +80,7 @@ examples:
     gpio@d4019000 {
       compatible = "spacemit,k1-gpio";
       reg = <0xd4019000 0x800>;
-      clocks =<&ccu 9>, <&ccu 61>;
+      clocks = <&ccu 9>, <&ccu 61>;
       clock-names = "core", "bus";
       gpio-controller;
       #gpio-cells = <3>;
-- 
2.48.1


