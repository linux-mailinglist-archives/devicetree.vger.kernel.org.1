Return-Path: <devicetree+bounces-77873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21032910304
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:36:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FCF61F2293E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193371AC77D;
	Thu, 20 Jun 2024 11:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GHuH2mFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581CA1AC770
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 11:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718883318; cv=none; b=d8zOKCkYEPEYtEXOUdMFQp/bFA/VghP5oz/ml+JFM5CBNNOv52P4wHCtthgv993JFqJ1XZOuQAKkJM5eBtzdPeA54Nw4cpVh4B0NjxA5aEQIhH28uyiLp4R5i8xXwM4ZT7hds2Ju4qcsVhV9kgS+tFdLZ4eH+aor1COs2Z0l64I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718883318; c=relaxed/simple;
	bh=rVL5TZdNAPCclrb5nE/XztIDuSnB+tAbeOBu2bqcECw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YcFjbWJYaM6Eoo1ee4xEjIgEQN0XlD31f42QNKo6noCVRFP2HlQ/yu5II3cFBP5KhYrtVR/tUXPfVRJz0WYoWap/nNXtyBQJvKpk7/CmXEKtQGW/Uq1+R59nIs0deeowmieprOhzrkfgNKdOMNaRFkHl/cHVt8P0KuSk6lpAKSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GHuH2mFU; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42179dafd6bso11902415e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 04:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718883315; x=1719488115; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vwhUYUm1LCcouMp8HtttE3x8uGAo7twu336vKpgolWc=;
        b=GHuH2mFUgq7SOm5DP2CQdOx3Xl0QYvdQs0dQgZzlf62HJIp/bFmHU9UA5lr8RY5+xa
         h149oV47I2t2O9LW3yeumq8R+5XuqJ/9wrf8C2lyjjpipwl/Fs4R07wj2xXYX8HpjScr
         4yFB2SyTxT+8t1I5bs/s/8N7UfnKCYeW3lJxlciYftha09UzJ6Wqi4p9Pp2E2AeDWbS+
         5Q/gmxhJ3Q0h5OwtQnxa9vMDqpU6+1SP1JnUlguEf3kCmujqZaUCSPVnNAf4GENoALqm
         IZPcV6+X6viboPDMKrbhoHGuRMaNCUTnpfuUG/tR1cZecl0KL+e52R4AyFz2D/NdCi0A
         ixHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718883315; x=1719488115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwhUYUm1LCcouMp8HtttE3x8uGAo7twu336vKpgolWc=;
        b=CSGOfPBJzFzVH8wFoQiOnVy4L9EmWfiaUi1X+SNNBWpmJLaQBAUGPK8D1gpY+VIp5B
         7edcm4AXo2EDzalezkAxj7mdjwsCU0nD1/zmSzvanCx2W922YPnQD4znUKQmrr2H4tWf
         5w0QRV9cDpIWLA5T5xpMnx3i4fyVpIWipEwHN763UBkbEBVaiVMaoPydygCEf4HUNfpM
         24vAOUHqXVLrk/vckYkvftGcltnR0dznNcQYjF9aLLy52wFdkDVaT38CIaoWkY1Fq0Pj
         bcO5M/dfAHNk96RdYjAxRYvEMONq2kYPBmq4hasCntu1eF31x8/ek6r0/XosspZkXOGz
         9Vhg==
X-Forwarded-Encrypted: i=1; AJvYcCU14Cb1zbRY70MeZx+13rbObLJ1U7r4rr4OaQJp3+cBCz2MX2dfmLniIHLGhiHDiwIj6kIJLBOY0epAw4Pde2wdoOdvpR977Svgdw==
X-Gm-Message-State: AOJu0YxFcj1PQ1tVHx55MzJmeU1qTm3AlFf64nVzlHW5FNe+FO9D0HbW
	+kLQ5UoFFAZCFYkWQFCi7bfao3CR2+xOEQ+K4TUZDaxNbkuv/TzH/2k2xokADpg=
X-Google-Smtp-Source: AGHT+IGi5yGLp+acd2pIdKmRbWvISb3mjF6HWkCd3+3m9OrI9Xm2zm7H3RAJLTnEbn4GReVJ1cf5AQ==
X-Received: by 2002:a05:600c:3587:b0:421:661d:89d6 with SMTP id 5b1f17b1804b1-42474d34551mr54893695e9.14.1718883314652;
        Thu, 20 Jun 2024 04:35:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42471e6623fsm49708985e9.1.2024.06.20.04.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 04:35:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 20 Jun 2024 13:34:52 +0200
Subject: [PATCH 4/7] dt-bindings: i2c: nvidia,tegra20: drop unneeded
 address/size-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240620-dt-bindings-i2c-clean-v1-4-3a1016a95f9d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=838;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=rVL5TZdNAPCclrb5nE/XztIDuSnB+tAbeOBu2bqcECw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmdBPhjRGCc4lUC0U2O07I7kHcdltVj1nTGFgwC
 sahQvJaFr+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnQT4QAKCRDBN2bmhouD
 12X5D/4yRWWhLEtJEV2feHXZffzW+59NtR0n+V00C033mlHpgQOTkhIS6zxDZ9Ih4FxyzLDj7YK
 O2It2+JIbRxDrecf85UGoK+tTE0FzqCP7d69y+m/UzIgFRP2pNU0NPWnfOBBzxiiML3umIdULgJ
 +dUK1G/T9q3fKI37S6r9tgcToya4zy9hc+u3epP3GNDyzSV5a+zu8I/8ixl5sUmVQZktup9m7ne
 z+77q551bwrbrlt827awh4P92x4TUFZf6kmjmFhbOBQmPiRClZrCaVXMRNxCWmegmRhu4jrE+wi
 fP0Rn7GayfdZGnB1saS8C0pk7HeZ9TdsdJLwKd59SrfIj35el2+XJNIG8F61/70oGd3/inIk2lu
 TdWGlqbT9KY8akeyN91YjW2iJPDpW2E8MjuzpDtMPHhN/NNZ7i5NTOSa/k61K51GA0CapxzmSKR
 hnrfwBfEL8hx49L/5etkLgTSv7P1lGG3ciAYf5qtvIWqTCFLpQycfuw8MP/WRBpQYf05igbxknN
 WFLaqzmm/h4jcIhixhvwXQg7HkX8gYQJaSFp2+HGzgQnWD0QR3S1Iv7d2kGSPJx5EWn/TvO5CIK
 byiD4qhrGyvTGswfSZ9mK6OWmGtpFqGSnH25fmndDM1KCre0xxbt0qUE4AZ5NJwTHLfOcqfxDBJ
 HPsn8SEE1+PLGag==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The reference i2c-controller.yaml already defines 'address-cells' and
'size-cells', so drop them from list of properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
index 424a4fc218b6..92fbc1a2671a 100644
--- a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
@@ -87,12 +87,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  '#address-cells':
-    const: 1
-
-  '#size-cells':
-    const: 0
-
   clocks:
     minItems: 1
     maxItems: 2

-- 
2.43.0


