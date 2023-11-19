Return-Path: <devicetree+bounces-16904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B27F0644
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A53F1280DA1
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEB310A1F;
	Sun, 19 Nov 2023 13:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="isGSUOXy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE5D1B4;
	Sun, 19 Nov 2023 05:04:36 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5079f3f3d7aso4963662e87.1;
        Sun, 19 Nov 2023 05:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399075; x=1701003875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzT0lRkt7N8UBpPYeMIE5NMpA+DwB2IGbll8lyHIHPQ=;
        b=isGSUOXyEBJ8AgA47jcK4jRio5s4qVPpu0yCYTrrM6vdwel4vghE4K41Ka3ecrxR39
         O1fJHZDN75RwQJtdlRfqeKYuzqigYvHtOd43leXK67ieNokUjLd+Xs+bCfMs48Y3hL9E
         jQrWBafMkNrd6djXZcvCnI3G241aGZBp2yzUY8b287KnwxeEA/vK6N5kYW7pEXdt+64g
         9AMoS00W0e+TNsHTL1XnjhTQED5hp41Xc9w+uZ0+5Qg2cBovwEV5wQF4iwvFFWhdt5Pk
         b4tlUavJn4S+lhwaPGCiJVxPxzip1F/OzJEGO5L2NLbK2vsmRAv04CyyZ28SVWU+IPGW
         CaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399075; x=1701003875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzT0lRkt7N8UBpPYeMIE5NMpA+DwB2IGbll8lyHIHPQ=;
        b=Tsu5tTUSeg7USOr9DDZZP5LYy+OBV7tx4AWIncVGXIXrHtegNSGP92XBcKSqL9nE61
         pvdipUZ04j2oJC4fVaZEzc5Re6rAOVS+A3DGGVDrAFkY9JDITxwhH6+qZ9r+vvd1MXtu
         U0SextzsPr7ROQz0OHgCLKX6GQ7kxRzeC5yPCy13dBfW0+LfqJwkQSUWHI8NKCHlyRFQ
         HX2ZtZ3Tuy6+lcFwUcRr8SmnR3SYEOU63HiwBc4SRH3q1AIDGOiA9kAJdNCzgmfEdoGL
         0mEwQ8pi96vyawTGqZq1uBGxPXiadLXTNOsjzba/hJI/rjBrGmUehySOFl4PcL/ZFwxS
         lCuA==
X-Gm-Message-State: AOJu0YyusofQJg6pd6L8u7zEulJmNDYe58rG21ylHTZHzcCmTaP5ShG7
	GbBubd4tirYGLQNtQnDsXEWACq6O4g==
X-Google-Smtp-Source: AGHT+IHKIxJAIXgZQLYbHr6rTD0G7bwgZjyxT5KiMK1hCbcOm03nmnlAG9qhMMglsw+0h+Kf8N32VQ==
X-Received: by 2002:a05:6512:41d:b0:503:1d46:6f29 with SMTP id u29-20020a056512041d00b005031d466f29mr3342940lfk.37.1700399074597;
        Sun, 19 Nov 2023 05:04:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:34 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
Date: Sun, 19 Nov 2023 14:03:51 +0100
Message-ID: <20231119130351.112261-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Geniatech XPI-3128, a RK3128 based single board computer.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..d3c5b25fc2fd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -237,6 +237,11 @@ properties:
           - const: geekbuying,geekbox
           - const: rockchip,rk3368
 
+      - description: Geniatech XPI-3128
+        items:
+          - const: geniatech,xpi-3128
+          - const: rockchip,rk3128
+
       - description: Google Bob (Asus Chromebook Flip C101PA)
         items:
           - const: google,bob-rev13
-- 
2.42.0


