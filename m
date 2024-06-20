Return-Path: <devicetree+bounces-77872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A729102FD
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B419F1C21743
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9EDE1AC45D;
	Thu, 20 Jun 2024 11:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g4h7gnxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3311AC443
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 11:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718883315; cv=none; b=YvKLrHrEXXvTyGlO8CY0r1UxHboKsv9PvL7KBd3nJgL+jJmloxUzHkcRNlugQiE7FB5pksz/+u8HdSd378C+JmjFiIHDdvcipbLUajCcuT/BbJyCAgB+2Bkc7QXM9wjJnRqbf7Oo1M4O8MT1NJCJFN6xwpAEIm3I0QulpU2agOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718883315; c=relaxed/simple;
	bh=VIAAR+9ZzNdiUd9DXoAU508RTOlGXzHJZLY4QqsPl/Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r9tJ/Hbik8ckMMtzkYPeK5qT69ovKvNTec4SPlJJQGCOXNFQrpglBZF6PaA84PA3ZyGEPv71mYi+InRdGS0cGPyWNNXSn2C2crIwLQGDI1bJLDZ3eg/M0uz930WSFzvdzg78ux5uGUWZJaqwg4s1zWPE78CK5KF0pH3aFxT3ZyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g4h7gnxu; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso891524e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 04:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718883312; x=1719488112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xM531uJKzclciaU1onR3kjOex5SXkuzDDuoHCNY3Hn8=;
        b=g4h7gnxuAx8E07rArD1Zv+OxzeiTj8B0ir1GrTQCGEgwTEvoTDbe8Su9EsNS1dNt1u
         JJb7OoL0YsM7fEk+pC+dZDVMMbIkgt4ln8MlTgg2LIsKw8gF+V0/Kpo0WRMge9EdR+uI
         pdAoQBKi/xb7FCBRq/Kpwom4UTGiphwozpLAW5Llnsrqd1MwyVr7tLreQPvBku34Oq1u
         7gS7LQOpt4BsKMQDGZGVYZ/Ep1AoSdLfftx+QQvl1n6Zn3S5K/dQ3agAw1L4quUQ+g2u
         x8SmMQ5L8eR3T6myEV2zJq6xtBz+VraES/kqTZ0/Ksez04gHaOToA+XdMZ6xFcZZRT6b
         DcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718883312; x=1719488112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xM531uJKzclciaU1onR3kjOex5SXkuzDDuoHCNY3Hn8=;
        b=mCrtDkGkzLVFPF/ahZm+HRM65iqPTIA34FiY5t2Zl0wIUDTDYnHeaNJGWLRGB9cDqA
         8nyNIxHEnzfM7cxN2JmQFGRyRy+Em0Sf2/O4/SVS7914oN6MVU4OwcbMwM++srUw+XOZ
         utP8UkMfFiOth+/U2OY+diOjoQnO0yoFds6+tWdqzznAGS8DS2WoLOxvE2qPB3RPhU0c
         P4xSlLS1anmyhTus3wScqXCB1cCboldepOlQ9FJ7nrbfuiOsUX1hTXfMhlfWsPe6a0hr
         XYWu6p4Y/XVW3XnyJWi5i1knhGN48ooJv+q1w6v20hzWfhLMqjFnvD7+hZUqc4utWkEw
         2JiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR6izqyVlt+l8lJQVtrnucbnIymwIhGjygKr7Uk1UQpgmKgLc2mdH48WqMuLJXFEaqEtPtBToJhtwBH8oTAWu1wCKLE5pF4BEfNw==
X-Gm-Message-State: AOJu0YwN3mNBeErYYIVAL9d9kYIU6isyT11LHi0x7SI7dizjSFXZSUYL
	UYguhAvHVdaTjzAFvGry8893QXv6qYLBSrUeLRHu33CuiFv0LixkFwEIBhIdTNQ=
X-Google-Smtp-Source: AGHT+IHN5p1ZhBCkLLOHlujYFLWxyfZ388elBT4mBsOwQE+cyOCwyUR/18lU0uOjM07vFGaliodC2A==
X-Received: by 2002:ac2:5974:0:b0:52c:8009:e0cb with SMTP id 2adb3069b0e04-52ccaa62705mr3195772e87.41.1718883311328;
        Thu, 20 Jun 2024 04:35:11 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42471e6623fsm49708985e9.1.2024.06.20.04.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 04:35:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 20 Jun 2024 13:34:51 +0200
Subject: [PATCH 3/7] dt-bindings: i2c: atmel,at91sam: drop unneeded
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240620-dt-bindings-i2c-clean-v1-3-3a1016a95f9d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=VIAAR+9ZzNdiUd9DXoAU508RTOlGXzHJZLY4QqsPl/Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmdBPgL4PDnH6nsfCQcGgJAY5MlNNW76Ds1lu5y
 OPz6nu6bhuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnQT4AAKCRDBN2bmhouD
 14QyD/9IW4X9J32ciR8sJIyc1S/ErJP2y4Ut7YRY30iCO0p0sVYpL+voJZxZwR4SWhHXbIDj1MW
 4Ugj3M8nl1A2hWMzkv1OHWiBKD1kwljUwJTN9xnA+LywlE/t8QthKvVNMhHoeuYgHJf/pl0+UDS
 u17iyCx48aBjMd4RU7ov5Vro99N0ZWSOsEYUja9hj/YaX549X++4U8KGUDkmprAoqkV2yx0zlUK
 ulC1CBzolDDdimVmrToG8wElBIn4zhxPg+mfYV6434DdwuGvCSfHIHqaE/pFQ9/jNZqOAdVUuBZ
 ktFHWj+AAL7MpekoL26H43StDHEfwnsGHinZ9sfn7EZftE9GqEGftoI7+tmXTPcv9LbVKPsdQrQ
 FWWch6WWj52ChOeZXOo3iCVxIuOA9LIAhz0vU2zo2kcDpmW2f5Vl+vJf/ljJExxuEyjjW9i4iBQ
 8DwEA43O+Ck5HwYROJsUalOde0DRyy7DLfj9o9oJsd1csbNHx6nTn6ibc8xXAH3ssdSVmLDkZ/v
 To/ESiX0sOgECYD8M93I8s0/XFfqZ3Vc2/ss+WYu54j1xcx0ioKkxO5qtABKMWHGQHBekxyKYjZ
 fR/FXSpokYqtkLm6Pwx9zoZwfWe1tHfcnh5rtmHa7xeamqS3Hi8v02dUX91kfQAIPmNjKC6c4rV
 +UTW99U9R3cDwzQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The reference i2c-controller.yaml already defines 'address-cells' and
'size-cells', so drop them from list of properties.  Drop them as well
from required properties, even though i2c-controller.yaml does not
require them, because I2C controller could be enabled without any
children in DTS for user-space usage.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
index b2d19cfb87ad..588478862bd1 100644
--- a/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
@@ -36,12 +36,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 0
-
   clocks:
     maxItems: 1
 
@@ -72,8 +66,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - "#address-cells"
-  - "#size-cells"
   - clocks
 
 allOf:

-- 
2.43.0


