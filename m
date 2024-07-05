Return-Path: <devicetree+bounces-83440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 691DC92860D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 11:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A5DA1C2257D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815E515FA8F;
	Fri,  5 Jul 2024 09:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EC14ZGLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050A115F314
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 09:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173149; cv=none; b=hfoPQgeL2vEp7VeMU7K8i90tOl2M0c6YuEZkNsjPKLJIo0nTcpzC3IP/PHkMe3HdUQtWJGyhGocmNifzRAY6MYRsj2rYAP3APe14uKmiMAuXKs4ANYDl3528UWLCaizRSF3g/0W2m93uqAUPuQNizyHv83tLHW8rX1jomY4zuPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173149; c=relaxed/simple;
	bh=TGEUdfIgxrn5p+oeEOU3I8iRwVeJfrhCUIuhAZVBvgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hElDTf1+WVv7h+HwvKq4nWvzv51BYV7bvMUO2exQM5pydphGd8oS1JULRIUsMcP5rYqY18rhjDSVKQ5Fm5wDJnASPTlOnKAo1sTC5W/9Pomnqp8chBuJU9abdJAdIirMYcQsZJjg58JzB/mjS2P9JGMIrKQ5BUZYEzP1PlRH2uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EC14ZGLv; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52e98087e32so1606415e87.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 02:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173145; x=1720777945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HewTxIxxAw4d0VO0IzaF9nti4qYjTs9zA5y2utlK+JY=;
        b=EC14ZGLv6zkuUSjTOQy/YX09vERe5u/msJkyyf4gyhYAem69UPim2qyYP0+cRrE+DD
         fiL+7kU9Z1jc812UU9RYbkdHZRjhKGY42rGtNzKlAJFb5jsQ9Gn4rgQqRN5xS7DQfdns
         LyWc0jr0bPSGEQJTtrbPgaeFj4trg+zybDg/03ydwW9DrJTwsRI96dJYLK7QjEFExTkT
         tcEc4JMveSaU3BlWc0gO8nX+i2RWOpb0LTAiVDRGoiE3R5YYoWpQTwmTSMx32zLJMt7i
         1huDrRzus2ji1EhPLkP8U9drUNGRVpyGxn2itI/kh/W3S/+qLdgI+fsFrOMYZCh40qvd
         TJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173145; x=1720777945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HewTxIxxAw4d0VO0IzaF9nti4qYjTs9zA5y2utlK+JY=;
        b=qVCWQHFbrHjbQibJLOpypb2w7ladKUJM/oYbN9VfH4X+G4S6ptaZ/P+ISlFiYHiMHQ
         kF8O8XP6hp9CP8fyq/gTLrQhBztR7fBUqhp0vN22W8R/K3y53tIDDMG++9h3ZjM98Ud3
         /tuydJgZD6u5PKKHuQHc6MMsvQyDOUNh7CqiXKkOPLgUytigjSDfg0dt0+aM1Z6yO4bk
         uhZkltt1IoedFJu17PoaSZvSl+p31mPzDGxmGkywQYqM2JNFkGi/6t/FYnfPnBjfVCHN
         PHFZbwDr/QbVrVIH9ZipBAeq2JLIAsNdxcOBHhjdrABcNKYRYRjyHI28H1tQBO0Jv7fI
         w4Ww==
X-Forwarded-Encrypted: i=1; AJvYcCWoIahtXRJYqnOEl7ZFjRzLx0+HzQpf8ldZ5BigUTb/KpXBJUlusAzwmkS4+27YIqaa0UOim1N1kssNCdCSl+S4Fvrbfycz5YgtgA==
X-Gm-Message-State: AOJu0YxquByUgrte9n2/+bVL8rorqe6u2Al5PzULwm+wJisjxrgjC3Ek
	C75RRjLphn5XFbddrB5BUpGGqEJMPp1NrUNzysRVG8g69+Q2GTYQeQshUBtlJXo=
X-Google-Smtp-Source: AGHT+IGNfSuHZVFsjxGRqi721AgFHExWikVzZX/wJrHfHopGLF9m4l1eGZxSOMp6gJxffsVUPzQnDw==
X-Received: by 2002:ac2:5e2a:0:b0:52c:e112:4b0c with SMTP id 2adb3069b0e04-52ea06133f1mr2313228e87.9.1720173145308;
        Fri, 05 Jul 2024 02:52:25 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:36 +0200
Subject: [PATCH RESEND 17/22] dt-bindings: thermal: sprd: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-dt-bindings-thermal-allof-v1-17-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TGEUdfIgxrn5p+oeEOU3I8iRwVeJfrhCUIuhAZVBvgE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IyLM7fgGzrFDU4lF7RNxv6EBHPu6d7Cyz/c
 4CXChnXZxeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCMgAKCRDBN2bmhouD
 1/CkD/9EEtVLnTR6HLb+RQ8ppD8kzzvgKrlRWNFNyulVlT+RxcwDrdvWUOKWp0+Wy529rcI+BQd
 kgGT76Zk08TYdy95tjLeShJw43znJlBAgXdoQpqcMYdANi3Cy7qwy1KuhaT6REsKsYLl0lTGPWn
 xdB96EUooRu49pYHGDExtWpxE1bboFwhGkQhF+U0yk3BZcPnT68Z2cPyDn+kkSjor1+eq+SLhdd
 KgnODZtv+sqS7FXy5GBAkZn5nBTKg/Aw2FN8rGyKL9DEjZxD0r5au7pi+nhVXXRkq9l2Qls8hG2
 q/OlwGwyhik9vnJmJGSEyqJHCQ5LeXWicHypvDdBQJI6NgYYxTXP763jyentekBZQgxNuKHhLKE
 kd8C7mWcvTxwQ/uYcQI/U2CUJmCndTpCjjqJ/pdfKQbt1Kgh41Ds+H0/iO0vtdvc7ph8O4lzV5n
 jR7OVueGt5+DFCEHEoQC9Q3bzDKkn52XbUixejyhNhyiuMs/MEYCxMwYW/jmOUKrCftEOFwbpFA
 6+vWwyww/34OR0DWbkr/f+2NJ0eIzeGTD3SI+t2lKPKRStxxS7J0ay86BxJeMhFy+lUpBuZUa5T
 5HhaVeWBMzKTDYo/rEBbLEUVxxJirKQgaBLueIQGp1+kir47wZidQZjkUIScpS0pSFVzMsTMbqH
 Z6z7AANGQXxg0NQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/sprd-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/sprd-thermal.yaml b/Documentation/devicetree/bindings/thermal/sprd-thermal.yaml
index 76aaa004c8ac..f65076fc68f9 100644
--- a/Documentation/devicetree/bindings/thermal/sprd-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sprd-thermal.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Baolin Wang <baolin.wang7@gmail.com>
   - Chunyan Zhang <zhang.lyra@gmail.com>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: sprd,ums512-thermal
@@ -77,11 +79,10 @@ required:
   - clock-names
   - nvmem-cells
   - nvmem-cell-names
-  - "#thermal-sensor-cells"
   - "#address-cells"
   - "#size-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


