Return-Path: <devicetree+bounces-190214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EE2AEB0D7
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 10:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 280DF4E1F8F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 08:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C02235364;
	Fri, 27 Jun 2025 08:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PsOzgwgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C44229B18
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751011324; cv=none; b=T+YLcRIFVBeoXNhRczR1CPR74ukPKpR/GIUvKvac0Y7srdseaocKdJZFTOdosApEWoHpeDRA3N80llp6DPFh/Pe0Bncq0eTL3SpjhtHoFQ7bqf2OK3+EQdpDYhm8SBFS2hD7bhv92DqUzHFrxGbHwLe3qBlCOOMMnX9nPj+s9B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751011324; c=relaxed/simple;
	bh=PwmTdHsj4/TIhdqdhH2xWAIrULM+XVHbnLKlVFqmrQc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lj1qTmK+n9thJHLVxvlToiUpdut1nnGqzyfZ0ktm9LNSnNDphzoEGqg2j0SCbUbomJPjf82wt8FltqAmZuFMzOD76X+rbwP8Li7y667Oml+NRLPtttDI2l3qniNe7MBvvnc3IMq4XgHKSZWMaPow/YBopMiCDOXloKBkn/LQgcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PsOzgwgS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4530e6f4db4so652435e9.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751011321; x=1751616121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aYKyHT6aO5DOvkeXEodSr/zn4tG0sPpdUKZb0fO86vs=;
        b=PsOzgwgS3Gy9VrlLf2Ub++c0tjjE8KPUUW05h/0bQIb+3XDlKLe8C1dlwAAPueyHR4
         Hse+ejm58Yh2C82DsiuL+EmtejSaA0DMPvxB+08kSLU9CJxrsOb+/9Npz7HWf2CNnVmB
         yLM2bprcU5yVLkaqgZbFHq0y7pt/3CLNPv4/4EwQUDappLy/fIekbV9mBBLqebzcYqpJ
         ZzMqvPN9hRWA/U8/z8TnUP8O2Xcsm7zuiEWumbNDldserLHBlk4JMpd07QHQSTvT/Fey
         BJVKthL9gPnW1vgRJbLFNaPbGFDTbFHI4MlJfUqCs2N998oY9E3JZSHe2hoJ8N9nNYG/
         t18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751011321; x=1751616121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYKyHT6aO5DOvkeXEodSr/zn4tG0sPpdUKZb0fO86vs=;
        b=w9iwIs2eirZkqRpSMvedm/34xxYGAIv+DyEk+vNzvYI3/6LMioB+WuCf/C4/ssHKDC
         xTfYZyrOITXWkf1Ujy2RfxC74VcBKjA31vQqc2YcUyjR/kG+keko1SFtgBxPVT2kzjQS
         V01SX/IfW3gWL9zOtSUn+PnUFSuL0P6XNVbx9QYLuZ1i8IZfGT25BusuMPg5fEqJFkg/
         044EUNj7WF5YONFSGEEB26xi95ci9StCF5pw1ineGOrxOeL4VTVztsQhTrymY69Dh6Fm
         rMMktq5IF7x/nvV/MahiVEv4wAX8bXvBkGdltu5ZqJCNuK+xuXEuG3Z48rR47VizCEpy
         TlZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQen7Qe30LGdwogqVyuGlTcoPCd5xCla8zL0KiTNTmNKVLLI15iKeQsk0aExqjQrJcK3bR0DO0ZEQb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4U/ZoOYmGOmlfVZFFg0uINci4bzfdSbPb49EIVvbnHZEL8UBH
	7ZEmd4iqWYts8et0VidBFurM4g78ypVPN5733iAp+NZ7cg7dR1ADBzCgBn17Z/d4Vyk=
X-Gm-Gg: ASbGnctFCcWs7Fw94mm4h7a6qPTLWJ9n2Cobiz6Kul8qTAOlVlVBp1l8zQo+J4uwQbO
	GfeSz34ljZrBJiy/2mU57HIccja9P6kpNeBqlrnsVdFLVca3McM1RSfGGmSKrp0IXs0RY3l2eDS
	4g60+U6dOyQeoBac3F3kEW0zQ7sm9NSqyIfTNRLPqMu2xuKJQeC+tif6OCuWYUy9F0F/LfM/6wD
	AfJxZYI3SAkG7NV2LBUfPCRmwWTgnv20ehZhw8tqVTm9ptmFDoZImxg/15PB6sbNRL3d5LEcSvh
	xIGvIp6Z30LN+bTW7TPW8FBMX+YKw6Ah66Abf/WIO58hwOpPeZ5/KMRsmZHcdSTPpARc2bnPC6E
	z
X-Google-Smtp-Source: AGHT+IGbEV2sUnNrxRFYjuNrRGMB7WXW//KusOejXZ3SR2Oskrso+cf6bF7nRXl/S837W13BPpM60A==
X-Received: by 2002:a05:600c:358d:b0:453:8c5:95d3 with SMTP id 5b1f17b1804b1-4538ee5d303mr8805925e9.7.1751011320856;
        Fri, 27 Jun 2025 01:02:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a423abbsm43490295e9.39.2025.06.27.01.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 01:02:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 27 Jun 2025 10:01:51 +0200
Subject: [PATCH 1/2] dt-bindings: leds: issi,is31fl319x: Drop 'db' suffix
 duplicating dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-dt-bindings-db-v1-1-d5c7072acbee@linaro.org>
References: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
In-Reply-To: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1148;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PwmTdHsj4/TIhdqdhH2xWAIrULM+XVHbnLKlVFqmrQc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoXk/zDffaVv55xO33AhhgMDKyChlptnb0LKWur
 /dA0UkREASJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaF5P8wAKCRDBN2bmhouD
 1yO3D/wMQLq1PsZux5RgQ00wXyiyyHfReZ+crthyF6UOADtqrkzEfMMHGxklbh8VFbm4OwQmyVd
 gQCQmXR3RSty42vCDsZK235jY80s6ogQudAcA7sudV9l03aos+6xp7c/FASx8Ziko10NlvSgyIE
 pfX4xD7FqMA//3i5ze18WV1q69K3iCcXy25FYV7bWbJJl1eHBBikOphoDL4HAeSMjG3U0GJ/MCh
 eyqUfl6OuiP2DJId69jXKDhc7OHJt8BGTBlh3KIoGc/3MF1ufLTnUc0cISc9cX7jk6aBSKBXZEl
 +U5JHKpIhuSPNZ4utuTREOV3BUO37GgGhdUnS6jOeLgePHd++txihWJ6zePHEzwGqkC7A7s2BeU
 +y7SXiwWPY45eVNiF5m4FlVdiA7GKi3KnaSu4BGwAg3vqaxS1ykJmQzjCHMmbwQK52sSFzlbnSW
 WPW9Qas3JC74gC623P192CvfOVPvyYv46Ul6REyHemhEo5eg7AduALAPCadm5Bk32gzTgGeOnKG
 uzNXOGn/N+8WVXWWKPBaxl1YaQeOAjaAWdAJ5M6f2iftZWDwXqbRpFmQx+EZXkzUEKWNSR9CVX9
 9P+fR7ARSG9kkSXJPCBWQec9OM4CShzGn9tpkRr7dESn6Gtteg9gCombIJ0NNhiw0s7muTsiNMC
 /rzMX3sNs4DelnA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

A common property unit suffix '-db' was added to dtschema, thus
in-kernel bindings should not reference the type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166
---
 Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
index 3c0431c51159e549920b17cf2ddfd1b85ecde810..906735acfbaf94fa08244f771139df207dd6e4da 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
@@ -42,7 +42,6 @@ properties:
     description: GPIO attached to the SDB pin.
 
   audio-gain-db:
-    $ref: /schemas/types.yaml#/definitions/uint32
     default: 0
     description: Audio gain selection for external analog modulation input.
     enum: [0, 3, 6, 9, 12, 15, 18, 21]

-- 
2.43.0


