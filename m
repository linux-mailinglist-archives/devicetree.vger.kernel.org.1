Return-Path: <devicetree+bounces-77874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1666A91030E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 084A51C211E5
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5FF41ACE76;
	Thu, 20 Jun 2024 11:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xI71BoAN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99AC1AC78D
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 11:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718883321; cv=none; b=MsCIZgY3q/SFDO48WYakVMEiPIpmCSlo736d8EjCgympAV7D64oLBXSykcguOPbVKdOo+CcLlVpYp78MRvQwo7V7RtQnph3ecn2Jek/u2DyugK4I+O5h5FrxDbkCGu/bc2rMqne/TDvB1RONssgf426SGSLLx0sK/x7tZlD6sRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718883321; c=relaxed/simple;
	bh=zPPCGCpVrPzpnwGMQ8MGX8wE9ElLtDgEtXc1fM6D7sg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J+xY9WsY5GF3cSFCuRwfcDyAQ4uJ+SSsMvf67W0kFJTKvX1fKkt6AKz3+cLK4F81zELSEcljWSfP9L3EEtQngtU/6H/AvDt7bxUH35cOowpPA7jzM6Lisk2OP3vBYZOf2PF6T7V0bIa20ncgiEJVExckSo0YKtGmdjlyJjEzkIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xI71BoAN; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42179dafd6bso11902735e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 04:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718883317; x=1719488117; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fk1qcrUS7VR6uiv3rXSOo78BTaK4F+eyz6aHAa6MhHk=;
        b=xI71BoANoCNX+T31uIR+oBYEZSyXeXJgO0+j1dfeWvUkH6WYX9Ki+2Nvdmwoepv7DY
         wcrUuuy476qy5wjklnOe6VmVoueN1HQr0MNrHzMMgCPCGyjYCU2nh1DLOVFDXdQK7ya5
         tRTPOm8LKMqOfOIN0zn+XpthckWgPOf3sxmYTEUX0sHV3VjFRy4IsCgd+uliwRXvSBkh
         9PX9fZzryRwSOy8Zo11qpKTErcKoSCoHxVBMipeWRvL+NGdriMuWqf3wt2FkpOC3QxRY
         PfEmzRYzYwSrplDy6KSq9nHpmrCHeVG8tXb0XMHy18GD9v7BwO6bW13m267SZAceopTf
         uKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718883317; x=1719488117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fk1qcrUS7VR6uiv3rXSOo78BTaK4F+eyz6aHAa6MhHk=;
        b=jUz3OsY4bvWvCQoDwu9zOHgUog7J5Coz1p+5nJNl/HORFeQBY6Fp/ImE2zdys7AjDI
         rxXgfByZZxnYH45SYjQ60ryFp3kKzP6P1lIdb3ccZY7LO+dquNZpMwEPeQw7kMsq9Vl5
         sxgoZNtNYaYwU1O0PWwgTHGzHaW0xXTql4Jm4RXC1Dc2DUWfkALL4v0VxM7+zdjfI7yU
         rh7jrQCCKchAcC4WKaHI3urJ0RTJk8ddFcKlp36/a31E0qyQBvxumduBKDnugIOq7WUO
         sx2Zaq5PpH3cwBGhfG3O9KS3uLQJy4GF+J+ND6rWON+zNu2+4FUl13Ob8qwDxfPqRj4T
         Nt8w==
X-Forwarded-Encrypted: i=1; AJvYcCUz2tISVOdg1ktFCKJGFKWIzfuiMfgibYjG0LVIG5xXmHfk6ujXifNvQRLuMCpxwT6GBGaYYPD+GLf7PBnJ6BI6rZjVm1jkRvVenQ==
X-Gm-Message-State: AOJu0Yyerfio6XU5J7nFSOIMn35rHWmBwPGjI0NzXt4J0+3MgjoizluT
	lPp0qBmDLJPFkRvRNcS0ojGBRnZXkS1sDbwhreTjO8lT1L5u8MP9t1THidD46KU=
X-Google-Smtp-Source: AGHT+IGMJUumhVd5zXX1rZU2J+BofHfd7fe0MAIVGxolusk6jZTAFq1NMKscErXYaaG68fe04/BU0g==
X-Received: by 2002:a05:600c:787:b0:421:8179:6127 with SMTP id 5b1f17b1804b1-42474d41065mr43498665e9.20.1718883317066;
        Thu, 20 Jun 2024 04:35:17 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42471e6623fsm49708985e9.1.2024.06.20.04.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 04:35:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 20 Jun 2024 13:34:53 +0200
Subject: [PATCH 5/7] dt-bindings: i2c: samsung,s3c2410: drop unneeded
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240620-dt-bindings-i2c-clean-v1-5-3a1016a95f9d@linaro.org>
References: <20240620-dt-bindings-i2c-clean-v1-0-3a1016a95f9d@linaro.org>
In-Reply-To: <20240620-dt-bindings-i2c-clean-v1-0-3a1016a95f9d@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Sergiu Moga <sergiu.moga@microchip.com>, Benson Leung <bleung@chromium.org>, 
 Guenter Roeck <groeck@chromium.org>, Doug Anderson <dianders@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 =?utf-8?q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vignesh R <vigneshr@ti.com>, 
 Kamal Dasu <kamal.dasu@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Chris Brandt <chris.brandt@renesas.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Pierre-Yves MORDRET <pierre-yves.mordret@foss.st.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 chrome-platform@lists.linux.dev, linux-tegra@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-omap@vger.kernel.org, 
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-renesas-soc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1074;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=zPPCGCpVrPzpnwGMQ8MGX8wE9ElLtDgEtXc1fM6D7sg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmdBPi8sMmfgAT+DLum6aX4eAJT720TZZUkgMYw
 dBmfI6bvhyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnQT4gAKCRDBN2bmhouD
 1+1zD/9KzXHoic8Js9IUevJUSUE5qw0ydGDkJYZhaxsct+uBZoLdqQn/whX6ZYyfBFgZ7o8weCW
 z/uL4moE2VBBBYfuHGCyQ9b8c36gL4uV9ejRbYShlKCl/52gH52I0+TEJ4p7+94ez47mPJi7uXo
 I7mz+pEIhzb0Rp9eltBnyTfZw4CF6G6Ly+R5egovOIwM4oVYMdgsAoo9TQHlrE/y4oFzGmSpZTf
 wZ/50+rdWr/hWGodiJZSlqWWaVdAvC3SxDTY67//Hjub/2cs6ALiP4v7Xulsx1QHLr7U7s8JTq/
 uXr8Sezuzi0p91Qzipa5Nurvs5ZQncV5xL8VZgXAUeClC/+gnqxYJywGSdcCmLV3j/IdiU7y3fs
 KLcXmrlkHX317BwGXdSJUtmt8uUKXovBI92qdGwmuCR3hx7MPJlVPpA613HrEDC/mai2fYLEpKu
 aI7SzB+vmya07U34LGOSdSO6uQkuCh7xz+r1rRRzVbXG1ZcO046fMm5ORSXwzEN5mQPHQl/GDpR
 XcXClw/9IHKj6Eo1W+tfACtgWDPEqIOAFMcxgZL0LTlT8UYNU68n8drTzsA6meXAy9nHLfkUCTL
 8B5IPOyaQppDn4T67+uRuvq7EkaQHLcnqvOWaj9tAMnsvQ/Md8kToe1yTrTWBQau2bGEO6+AMoC
 UAk2iDhLThbpVhw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The reference i2c-controller.yaml already defines 'address-cells' and
'size-cells', so drop them from list of properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
index 1303502cf265..bbc568485627 100644
--- a/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/samsung,s3c2410-i2c.yaml
@@ -26,9 +26,6 @@ properties:
               - samsung,exynos850-i2c
           - const: samsung,s3c2440-i2c
 
-  '#address-cells':
-    const: 1
-
   clocks:
     maxItems: 1
 
@@ -73,9 +70,6 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: Pandle to syscon used to control the system registers.
 
-  '#size-cells':
-    const: 0
-
 required:
   - compatible
   - reg

-- 
2.43.0


