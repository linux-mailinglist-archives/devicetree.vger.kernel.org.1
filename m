Return-Path: <devicetree+bounces-206691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B335CB2D470
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17A671C236E0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 07:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE4C2D3A75;
	Wed, 20 Aug 2025 07:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FPloofxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580652D3750
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755673380; cv=none; b=a+bJWPuvov7KxBDe9jVF3tIlo+/pHnikr7iLNIVRehO5ZCH4iYSD3zT5jVok0hjDbZBdx/3APB6M4gWdmznaR+NWsQGVzko4WcY96P/qlJlx8iiA/VJmzZXwsSM+mzujH6Li+16UsZrsFqbVdi5YPR3WT4y186yccOUgsWSqsmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755673380; c=relaxed/simple;
	bh=HbkuPHQO9jhKV8ffqBrLXqJ13Z1bPzLyMUmFXKOeato=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lneTYy7fcW3t2KbOQK6RThNbq+/jp8xk67iH9Hd86TspE4VLBPE5k82En9roLrsCPkyl9ix/V2fGxpsigr4NPja5yJ+v+Yhkq5UsKfGHOjdAJ6LFA/I9idmDtlYCtCalD8xOGjRZq+3Xevy7MOJ5UuH6++2Ib1KFHE29adJe6FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FPloofxa; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afdf4bb0e5cso5350066b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673377; x=1756278177; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ftElaWDs76SxbU5UXNsnZBygKAXPkr+qMloZ0Jeef7M=;
        b=FPloofxaTOMuu6sXIqGm/BVhPAqBhSLQixEtsTaySyMI50dsZ6nkmdHfDvZYM2fFQs
         0MzVzR0AtmbUosmflxziFDvoKDIgEV043yScMmGXanPBubIiAcHE6v8tKBSNKMqsPFhv
         S6u2Jfj6PZcas/5dKye1BU2H0rHkyjXqb2n33vHeoD6+hZSkuq0WoVIFOcUeaZszz7pT
         NHKLo/HHcz4XWkIaR/+tQOyuyj0RGPbYK/JstR8rUfrG76M/OqdjQISJhXniZeNqIM+f
         dV7gDin/DVL14WBrjUk/gUXL/2bJqKZSPvbkE/0jmn2RgnK/s57MeNQKzebV5K933Vua
         qhcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673377; x=1756278177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ftElaWDs76SxbU5UXNsnZBygKAXPkr+qMloZ0Jeef7M=;
        b=qVj4FBfp/8oonhuXIr0OcCoeIsZ3tb5JehBlQUKEBhY/pF8JxdVdR1tnYUfufqlNbz
         E4di8+xgNLBo/0fFk3yiXAqR9SfiIQMyzUUWJYLxdb3Efu72Hb4DhWmm8NOpvtVbbYuM
         qlbVI790fDDC1OpB8zrpN9etX1zSdxHfHyFJjI3LHfwjSoUlgrMPJuSBltcc8qwCuAwX
         HwZYxaaeyjUMWEXg7CYJQ+kDSubAt2PhGfearEmqEvkbOjfMIt85xc9LH+cs0Rr48NAr
         sq+uAbr35vSvrj/Lm1r2xWSQ7QDjk0hiyy4n4BvUpGE66PAg5spT1z9avpkXn4qlSskH
         Uk7g==
X-Forwarded-Encrypted: i=1; AJvYcCXpPp7cZJMX+HhwN7ZGcUwWvMNNS6e0RgsvmHnlphSI2ESYAVYWurMU6XIPl2+bATpABux/uKHVIBQR@vger.kernel.org
X-Gm-Message-State: AOJu0YyMDdSpVT+2XOeSl6IuLySaJBqx/XLpC4PsPg0ubScpwaWSFwhS
	ScpHS+na8duC00qwGlvg9EMui+eQ+GaZ1pbIDWWatbRfamcLAu0yOoBeldK3sTye1vw=
X-Gm-Gg: ASbGnctYnVMtiyKL+VBLxOliSqcKbYXF1UU8K4Qh8vNp78f/8fxH3WpZYoj8SbTFa9s
	TAU2vFlHuL68P5tV8i6C+wwAj4Es7sJCVxuV3CED0IeiKjUqzRogkzyUo4uroLW512vklT07RLQ
	D3URdcL6glkllINKeBB2cjx0hGXnnSbJuW6I10M8OL564bJmOD5NQlIuBul+iiBakg/c3pfJnhA
	Fxp2gZSRrtYr7hbf7lyXN10yqq2+/0w4zJ5ohs7SSZXSglscTFisg8h8wEE7jU4d9Pb7QczVEMJ
	ULA9N/cJkJvNs0N9xoGhrMYEmQVUsWSIUXWUiU579TXPemwyWJRCr59lQpVXpf2IHx89xKdh5fj
	hWoNCT3WiNey/TpHA3GkeRG9hRYr3HDeK/PuFuCs=
X-Google-Smtp-Source: AGHT+IGzfjQq1LjJ7ggzhlchsb+Gf7jF7ybHUUX6hqr66XtQog29EL3V/Chhryj5RJeGuJiIjRa24Q==
X-Received: by 2002:a17:907:7e8b:b0:af9:3397:ee9d with SMTP id a640c23a62f3a-afdf00a8954mr69459366b.3.1755673376560;
        Wed, 20 Aug 2025 00:02:56 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 09:02:42 +0200
Subject: [PATCH 3/3] dt-bindings: display: rockchip,dw-mipi-ds: Narrow
 clocks for rockchip,rk3288-mipi-dsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-dt-bindings-display-v1-3-d5b2555df51f@linaro.org>
References: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=HbkuPHQO9jhKV8ffqBrLXqJ13Z1bPzLyMUmFXKOeato=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMWpPbr64E/k0zg+O3azP2p8KtOcS4cXs8UK
 kxOJqi0BAeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzFgAKCRDBN2bmhouD
 13LSD/9IQvUF5G4t0gW3smruaTu9Lu+S7YS+HVDySWD1gSsXPgb4rnghh3t0QVcd9X4pv8u+5Pe
 0Z1bb/YZTTRhdte/mruSY+AWm04RLEAmMuANTR2OLJE1q3pM0NasI1i/nDME+KRbTcbY5acZCHa
 oNbxYAQ2RGTT1mzq0FrvUDbAJNP4qt1bJHr9mHceexS0ZikYyOwiJI5iMrxc3P2nhUvn/ANW2w2
 exCEVwjKr48QJUqEcAyi5obb3i+S+pjzkPHsejmoLZiXiHPbzZKboO1U7cONJO3xihpeCXHUvO+
 2feirvTp4or1YS5/oGfbNKbk4jqn3pPdRv23ELlPfNYzzzGCNm4WMk7j6/3qPzxRk1ZSFPmnmrg
 Oj7Qyc4QM0VXyWJog6Z7kCLPjLyA3/t1fisq9WlB6JHimLpAa7qAwicFwRuwDhXPg0BjPN8KP9Y
 EBy/BDqiHCvBW2C4IKBbjlBmTC4tzWnB/+YMMNG/aazNWx92d7rb6ESMtm6+Sf2dlEx9O3WXmgY
 zB3PNZvuCqDtJp/FZL+D5fdGNTXJxgT228graq/ykbqNZh2ASKYiASXdGNPUJ3cicneVwuH5mjj
 qGyOBsivQS7Q97vJ9OXlDM5nv6DOtOleVnlRnlKv3/G3W1XCAEzbYLiMqDrOHGA2yr+tUBCyDWe
 b8FF+yr43g/UALA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The binding allows in top-level from one to four clocks and each variant
narrows the choice, but rockchip,rk3288-mipi-dsi missed the minItems.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index 0881e82deb1105e4f92843380c0183569f688f08..c59df3c1a3f78ae0d345dc725f4dfb3eedb3de22 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -97,9 +97,11 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 2
           maxItems: 2
 
         clock-names:
+          minItems: 2
           maxItems: 2
 
   - if:

-- 
2.48.1


