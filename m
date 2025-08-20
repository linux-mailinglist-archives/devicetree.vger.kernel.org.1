Return-Path: <devicetree+bounces-206688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C29EB2D473
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:04:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B419C4E33F2
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 07:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9356D2C11EC;
	Wed, 20 Aug 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ayql48Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7482C21C5
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755673373; cv=none; b=Wf/JCz9osfKycqqYTlA4Hhb2Zx3NfAn2xZ70FdgRcVQtfJ6JNojgEidKhQG+Vweq2o+s+8BO7iOUz7AfFFdaTiOpznc3wbK2q8TfzTWW7tL6tRfm7Bg75Ndr97L5c95YC8vpRle7hj7D/cbTTuXOOb4209yIJBvh1dZ8ZGdCCRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755673373; c=relaxed/simple;
	bh=x6AMMrfKmpsnt80qI/jaePh0x1MxD2M+8h0kme5S3Q4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=poWekvLUSUTJVHOr5PoUFLtBPVvZHDj5uphm+xcInFljYFvJWj2ABB2wK3dlqBRbY5EnYp1aEXQ3Zxb90DQkBu1XVAoqOnxJND9Ef3kd/nW6qPuXscD/sJIiGU43Jf3V0OD22j8VWtz6jMlfbOxWo0y7ac1F79M9qCVprwtKCxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ayql48Ud; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso94417466b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 00:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673370; x=1756278170; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kz8t+h/h/0n0QXBXq+nhgUGC9ql7IeTr95ekPgWAy9w=;
        b=Ayql48UdW5wMucRBLmRuaPoWOcyrK3nFUzVxt5MGg968ELMyZ/66J8ndjJX3duik0h
         Uju8Dhu6Y5pNuiNePl/8/il0ijnKn5yq/ZycqHRKcyHxOvVDZ7UwGRLm7kQGJJLurEdg
         bWZkpnoo2HkWGGSbBnC5Urro5z9U2GotEz2O1kBeSdkKyiLcwG56A5gCt2wtlNGuUryV
         bux0ILtS4LZn8xl+udlfZFWTuN77m3mV1ldvbfMR3QjqYbFto92THAnYjyA5wyDMp5wh
         uWTK4FLC6kjUd9MWoKEV9USSY5KmWfZPtv5lsJM9PkwlQ/7plWhLplI+8YhuMR10mSBb
         dvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673370; x=1756278170;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kz8t+h/h/0n0QXBXq+nhgUGC9ql7IeTr95ekPgWAy9w=;
        b=WGN4U9FVXHu6eoCCAFBARBZesx94TV8h4Poo6odmxW3R2t3yy5UrioKc3Tme1Aiz3Z
         bD7kTv7tzGi5m0xsCa3kHjehWI8RLX6kYOTAPMGvd8Pnnpy4tzjdqkzXAOGXFC7/X/SW
         505bzaSkxSi22larc2Lqij9pQa55R/d2rkrW8zGzj1LzwPpN2zNa746dBsl5yjDkyCzO
         /bskkU9qNVk+RY5QU0bveB21d3go4VX06M7gRFwSxGLNNVjvTtRxyd7QVm/JW/o+r/YV
         kWL+df4v80hDKRw7shO7bjABb0QqXz3eXhq0Rnrdd0sKSggX7YF3CYdSFOlBPPUw5NYW
         K8aA==
X-Forwarded-Encrypted: i=1; AJvYcCWg/JfXX/G5dDH44FoNYxHkQl7mGP+LSVrGAEy2Z3uOcdn91GzIxIUQEewnYyWLfcUqFqVbFydqu28e@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/a3XH4kmR2an++s0e4VugQzq7ocNugt69TwmRcVXZvtwq1s2
	/nod+uvv+tPg4NXZx8ZdC6cVTI7KNuqqKruEg0GiK6NmUR+fVPtUfyq2yJmqbAAvBhY=
X-Gm-Gg: ASbGncvHeF6tu0jecSskTBaRc9lsLvUZtPIoHBAzsO14T4z+qhswPqSWI4KYt3DHdXe
	wWHqrnnF3U8mxQAcXdXUaEdmzf4A+DB4KZpY/aY795Kgrtq3b7Aded/wnIoKJSqUFdSfEVqBhYr
	1PLy0nLbBM0UeK6PG90eclHnAVir4rSsQrHtadGwAcN+UFjCN49pNT/bKf72YEDAh67KpEBxQr0
	xK7UIwUg27QSOTla1IsVpPJOJEJxHfhrqfdsBxrRAaoKhw6N2yTL+pyFwUB2F5h0Nzi2XcQQi9K
	oGiRRInzmU7bnxcKTM9WS5kA7PnfQwlgPr4F+en9mUmAMYHN9PHrcObxhOo9VSWhZhz3HuYGi7F
	9dvzskAGM0VMspBTnd1mchcFxRnYPS2te21kZbL4OQB1J66Q/gw==
X-Google-Smtp-Source: AGHT+IEUJtY9T7M3w+t6NgODZP2UMBO1bB6yUNgABbdBlZ++2gMxl+ZFtQKIgu4nmM7A4aFMOc3sVQ==
X-Received: by 2002:a17:907:6094:b0:af9:3d0a:f383 with SMTP id a640c23a62f3a-afdf019afd1mr77479066b.6.1755673370012;
        Wed, 20 Aug 2025 00:02:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] dt-bindings: display: Few cleanups
Date: Wed, 20 Aug 2025 09:02:39 +0200
Message-Id: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA9zpWgC/x3M3QpAQBBA4VfRXJta6ye8ilwsM5jS0o5E8u42l
 9/FOQ8oB2GFNnkg8Ckqm4/I0gTGxfmZUSgarLGlqa1BOnAQT+JnRRLdV3dj01QuK/KxrhxBLPf
 Ak1z/tevf9wMZuMYIZQAAAA==
X-Change-ID: 20250820-dt-bindings-display-996a143c86ad
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=x6AMMrfKmpsnt80qI/jaePh0x1MxD2M+8h0kme5S3Q4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMRGm342NsJMwTGBeIUU3aEDsSSJNSmaCf3z
 2hb1+uhE/aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzEQAKCRDBN2bmhouD
 18bZD/91yp/iNgPOT/8uepdf/zbiG/DGKC1+o61nNJG7BV5sIXxSsdSZ1foiLkHXibtjcNRwQ/s
 x+wbb+LGT8rwNihSQTbClhlnGpXKGOb5kIJQ9z3T+PIKGYN6CIV3o4p6hfvnGiiew5aADThPKJ9
 8NFQigShv/pzBXx/7yRzb4UyRxhkvfSjxBXf76ppaLwyvUh3Tcf5awj8aHfTVb9kR2jVBM21gAD
 SRTfGiqhC9yWvPJP16o9c3sdHOf8Pak2qnpJyfXj8yXGv3+EpcwZ4oJj55lq0mjIBoTlHaedT8L
 CwM/STq7YsVkiQHD2Yd6bln07WWyUdQtXiVUbm/JBKJgSAyysh1/E7VRbp17BQ2yvsl8AuRzi1X
 qVjHurkILLCLqiOGWuyYBYbr+Oddhxx3w3ZDR47yvJGMmXlHwfzTab5U5IW8OfiXHiSgAP0STuS
 zfMQFCqSeskPBGzRZm3FMVw6Cmlt4kZSgBff7JbYb6rD7dQZF1Z185+7beNhzP7mkFdtVplBT6B
 ueg1Uhz/o51bOZgNc3s2Jf/nBPRDEFwXdw5iSS63VO+LfPJsFJmg98MoUMEpkCbz4oMfag2Ig6Z
 Tl/wWTVLi9tC3Z4XuYkUHpUtHbUGghMGsxPnlZ+gCDNEYcdQN30wBgZOxKPet6HCgmghz8FDqla
 d+DIIriSdXsoRwg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Few minor issues fixed.
Rob, can you take them directly? Display bindings are pretty often not
picked up.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: display: ingenic,jz4780-hdmi: Add missing clock-names
      dt-bindings: display: ti,tdp158: Add missing reg constraint
      dt-bindings: display: rockchip,dw-mipi-ds: Narrow clocks for rockchip,rk3288-mipi-dsi

 .../devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml        | 3 +++
 Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml        | 1 +
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 2 ++
 3 files changed, 6 insertions(+)
---
base-commit: c2a1a5ede4717e6f12d49fe5177a66d40cbf4847
change-id: 20250820-dt-bindings-display-996a143c86ad

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


