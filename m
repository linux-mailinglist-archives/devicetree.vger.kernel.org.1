Return-Path: <devicetree+bounces-197961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A4B0B625
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 14:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C95763B7F37
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8BC21578D;
	Sun, 20 Jul 2025 12:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KBT9ZL/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0D021170D
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 12:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753014617; cv=none; b=XnPY3mE3G777l9PcZuS5eVrvJcr1Nl3DF7NobjhnWKKQuQS0AMVGlG+xaqf8X+N/6XZsToTFuxJQb0oN+OAch/dQxgivdnaOtTfa2IqNOFu7ks6XDGaAgvpX+f82MnpOBYj/faCicNMnYENxFNJ8ShXyp/7IIFH0miGuOTAAl3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753014617; c=relaxed/simple;
	bh=lrVr6vyO/GU3pnxEMXTf5/aN2EXpLcZcEs388mBJkEI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O2Q/PPTKz1FtNiYPUN7q0w0Dk3u+TwUrx3TvMPWNVwywJ3ACc9CFQYqf/ODFiYxBUMo0ewx0IQ4has2wgsToq+8geSq9myHEalNBpShD78kXp+w9YdTMocth3jb9yFOTbGhNXaOZ0Wflil2XVyVNRWgRV9tJ0wv6QC76BuJhMCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KBT9ZL/G; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-456107181f8so1805065e9.2
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 05:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753014612; x=1753619412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WOmXIHslm007FzsXzToQ9K53LoS29sfzMlaZ0QeflvU=;
        b=KBT9ZL/GuzbWX3kZTO+axpYSAqnQJWqwUYSP9W8eG/AdhK4BEzk7Lad55T5usssWo2
         zTGn2QTXXAcTx3LN/9PIH3vvdBnNg+8JVvqhALTv1WP8Uur9QHeQIlJNa4AWNEHsCzJX
         +JIn99Oq3Bj2CX63DoryA9SiJC4ctP1OG/6qNJRO0AX4Xmj3QHNcGQBeOpiVcEtFYMZY
         k6l+xhLs+h6z5g5nlxSruzUsBIfpoKUJ1S7/zMC7sat4S2dmttITMnUn4ak4xyP5cClH
         L+GY7pSWlHSPrkezCLvYetrkBNh7QjjgPOAB2nkAaKpk16ReGNWyGgtl94HKknGImLqz
         spOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753014612; x=1753619412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WOmXIHslm007FzsXzToQ9K53LoS29sfzMlaZ0QeflvU=;
        b=Z0I/xCz+68PP3Lx1aVOEBtPvfFU7I4CqyDef8LRNPwL0+lIo7FSuQwCFKlPNS5qF/M
         4kv8cPFa2l9sxlOxtD2ZSw120rwAO51m6ABRFLwdaVz0kDs5sqZf7pRHs3wsAyVFTcxZ
         kmryhifhd43Sp1/fp+RzCrDpbLuWuHQNLaQpDGxYCB5JuWKIy+k3Zuqwoo2mPcWz8z7I
         xOom6C2Xh9ia86dZWfSSeTltW9RCM0hQmNk9lPbbJGighraRJSXy/sL7neOmRxV2NWhT
         M5ateHeIa9U4MveY7F9wqB4gdL3MUwJkZ6ro2gR/IY9ZKx4IGqXS92NgdGtSqYabkFSF
         ThkA==
X-Forwarded-Encrypted: i=1; AJvYcCU0BlgfalKABiYfLYO1iC8IYDPG6YrvJSKHvWAIs2pBIjZpifBoa99mVpBsaoVh2648hsRfmjSbBulY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfbaz5PYoYJf6L5ZXzJf0exu4ekg1oJRbBkTCT2Qs2ii6OLcVS
	tsKq9ceORMNLU7Lx7CZnjW2kWuMKPoiYQ0BQIRVb/5UMDWoOZEMqpUUcQ7v5f/cGfDk=
X-Gm-Gg: ASbGncuSA0AEYmqThxNquNNvXSknY4P827Du07KsU1+yist0MiQFJIecTf+sPmdenCn
	5z4VsAMf2cpvj1nfAEP60rWbX8r9UlNs56y1FclIXAkQWyzIzZL4rCGtgCFhdQFM5NZQVmk5uZq
	5pFXtyOwfbNPa8ddt8+Sv52CreHsFkZ9xZVXGt3GMplArtxsclaOAykGbqIPArvwz0LdYwveyTX
	YdVsGe3FrZX7GMWfTdv9XVbR2pwFbs4LbcTrB+GVwKzSNKkscE4swYbfIV7VEmBI7n1E+eNuyWF
	iHjni8B3tMCLoYrs553h1DZeoeSLLeef79qsRhMYUBALiYbQQhCUI8XfmgT8dCZM7RbVwfOuwZ2
	ljHC8Y0SRTVGmVsuUcgrENWafD/a/QXaxT3RSJwX6ePA=
X-Google-Smtp-Source: AGHT+IF1jb/t3lMEYkuVgJjgGXy7n6gJqv+86XFthlPcTDAu6sCMAg/ieEjC5qGzPo+xE85GYYxQBw==
X-Received: by 2002:a05:600c:3591:b0:453:9b3:5b70 with SMTP id 5b1f17b1804b1-4562e23d1ebmr67166885e9.8.1753014612459;
        Sun, 20 Jul 2025 05:30:12 -0700 (PDT)
Received: from kuoka.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e8ab7a1sm131396955e9.34.2025.07.20.05.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 05:30:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Kevin Tang <kevin.tang@unisoc.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: sprd,sharkl3-dpu: Fix missing clocks constraints
Date: Sun, 20 Jul 2025 14:30:04 +0200
Message-ID: <20250720123003.37662-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=973; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=lrVr6vyO/GU3pnxEMXTf5/aN2EXpLcZcEs388mBJkEI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBofOFL04wCWPK1JMPYGESdpRjENFrgPOAvPGkpY
 xCwQQkWfu+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHzhSwAKCRDBN2bmhouD
 1x9WD/0c9aIWe7bwg6zEBRiI80exn32zI0JiolaPNhMaTwhqjLrrmYp3+NdbgjCQCOTVxjRkUdn
 pz5HBCu6MBE7Yi9GVGdAxeZMi51UywuDupAmA7dssM8ZpmdRNQLQn5ExISOj64Dn6rN0BcdVjGT
 xblZd32kRtFzI20IFQNzAiGhTtzMYyO57saKQJDIbKFYuYwxjimgkQFp/muc/aBEID/Ynza9PSO
 /gOyOyjzzV4f0APpL3vQhgg5gRXcLVqpJNl0a5XJ2RCtYlx1HLli3x0FYQxu7aXFDJdfTTHlON8
 ho1hDAFLZyZjQRM6PAs1aVGjYjmLbkonywGjPDGf3P8YkfnMH95XQjTzKtpFwEWHyRQpA8D/XDV
 KdyX2/56W7OuCbfSnYUCPCEygMZr/xk7iUiUaYgX4hXiHwOTlwZ8N7YfEHh86W2rxkwhJKttzrh
 drtPn5x9l0zbzBIGiv1/5wZ741vOqBe26o2gm1Bz/LIuZGo4N+crTHrzbZ6yVYGjIWHoTFG6Sn9
 OGK4XS8F9GoTvSdA1w63RPyBc+nSR8Kw0bfdzUNtbVKXMa1maAUmWrehcrhYNKl7wKsvaGGq7E7
 G9d5SinQagBmL54VEoQYFEydP+u0WVjs+mVjzKYnmjDcskdSRuiK0KO0ShHV1z4Vei6O+yR40g7 31ylTJUR0XYBl1g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

'minItems' alone does not impose upper bound, unlike 'maxItems' which
implies lower bound.  Add missing clock constraint so the list will have
exact number of items (clocks).

Fixes: 8cae15c60cf0 ("dt-bindings: display: add Unisoc's dpu bindings")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/sprd/sprd,sharkl3-dpu.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/sprd/sprd,sharkl3-dpu.yaml b/Documentation/devicetree/bindings/display/sprd/sprd,sharkl3-dpu.yaml
index 4ebea60b8c5b..8c52fa0ea5f8 100644
--- a/Documentation/devicetree/bindings/display/sprd/sprd,sharkl3-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/sprd/sprd,sharkl3-dpu.yaml
@@ -25,7 +25,7 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 2
+    maxItems: 2
 
   clock-names:
     items:
-- 
2.48.1


