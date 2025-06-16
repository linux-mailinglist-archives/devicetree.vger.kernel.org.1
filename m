Return-Path: <devicetree+bounces-186225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A20ADAC4A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A66897A6576
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04116274FEF;
	Mon, 16 Jun 2025 09:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KKY2kJ1g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455FB26D4ED
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750067161; cv=none; b=XncXQgTUmqwuULdKgUL/0A9VZME3FXJ1ePen4dClQwApvQrtbUUa4JYu3JhOp8f3DtJkzQuOs5si6+0cF0Fvml2nhh18EfqrW8umRKnmtFo8Id0g1VRtBidrqGEYRNkh7FaSNwcwIbrKLPVAPPR2uIYB6fi6mTgR+Bx+BS6AzZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750067161; c=relaxed/simple;
	bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A5V6VSWe9ohMKdGlxcXlrf8Il0DGB9GAeyzJkwCAYDMzyboJVpFYdr9oFZDaoSlqEcDnaaAzulhqsrya9AkLrwc9qLMjEiKoZwDcIVJuRttOPafgI63jAPkO5NAEv05mAh8B7Az0nnbDEYQ4nCAS2gnGJmyI6lGw7wROAN/D8ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KKY2kJ1g; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad88d77314bso950119666b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 02:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750067157; x=1750671957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=KKY2kJ1g477V2aDopHXzOBX1g0Wr+zGKwVmr/Okczw8j9JzQ5x7HYV2cq6h9bHVctq
         0P2o31ltbSwQBfB8Y4J/Ro9w4NsFwlbjHngRm0RUV0CQ/aooT1Lzk4PUNFjdaDZ0GN9r
         ftsHm8EbMV449i0taD3ClQQd74SG1+fDoENZHejQmtX17/kxQhZrbuoYeqCbD3jxBtpS
         A8EH7YnIYDuLapnQndYwx0u/7sWA3+1ngemlwxHKowY0Vm7SYrk/BG+B6FENPkgk4LYD
         HOLsxhuuM2x47f48QRI/yCk8S1Mmslw+qhzinKxlX1lKhcUQTQ1nUUn3Gqj32cSxMJby
         GXrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750067157; x=1750671957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=kDryFgOtyndRbuh5JzJav3AvSsoKcMw4jWuBPfa4ayiSm0cZcm7QQkzu6I5EEufrLM
         /dww5MlmLSV7SrBhaxO+yPnlySbqJ7ivtVpIwrbyCeL11V0Nk3hPTZZsaosAyBK0LEbJ
         38KRezBhKdjPWFrcslbPHt0KLmxD/+lrkTahil5/wG5N5za+RW2RvTuAf9jF8LPRTpuQ
         NlmbqIGQaGECpT1xiXRd21T8QdG0NaKJkAyJ3cr0423rcgIFjiPqvK9B24d38IslZ/FO
         tnAuJiakomf9C+TVg0ev3S9Qu8eYpfCE65XKkWw+5aWnzQy6IVJan5kupT+3kppKKzzs
         4wxg==
X-Forwarded-Encrypted: i=1; AJvYcCXJfPcYdKz9PJizpz54a+nCo2xtT69uHZg2ZaO570zNauRR0SyMqzDCRFO1uBh2RpeJKJVpS6PpOJKG@vger.kernel.org
X-Gm-Message-State: AOJu0YwBf6JUU25QJW49F218noQ9TYvE5s5XOb6N4OM8V0ez7kWFFGUg
	pGQJ7rCTbW0Dd1XWJLKaoznEB74EPao0VC/qsnSzwCQCUYycVQlZrTy/EsiY8zRkwGc=
X-Gm-Gg: ASbGncub1Hvart2gR/DWVBnftUj4JsBdyfxn+d25fxupuRJ71NExa6PvRcQBNW3A+Oj
	6prGQshVs4Oh9S+XYzwNKLomlYELz0wD/v64L2UEtVl6Zv0ZDf3dV3M46Bma9cm5L6b/mA+9GaO
	/+u6TptPoGmRCKWl8OZD7+Z0fMFe6iR4VAq7R8Ov5sIJlCh3w/Hbad54ZbIlRqCsX6mpjx24V/c
	E6QKABuIqTysXQcJWRBGOUFBbkdHX1qjuOg6ybt6S2W2a2UlKSgnGp5qzCKrPbZ7GzNEablV4wo
	0YjDCxBmH3qZ6RMXsW/A/evxsCfTzvjB7RAopuwNBLcEdOm8zEG4fKuqhxdQK6U8xBpgrX8K+ZW
	hOcgMRQo6gk/lGY7+mcEGQiuuagh0eNi3al05+ZKwEYQ=
X-Google-Smtp-Source: AGHT+IFBvUYtkCndZW1QzfC5qAwo46v0T9wQgNbc8jLt4Uif3oBrNGyHRoJQOBcXYgi0oCzQrIclYw==
X-Received: by 2002:a17:907:1c0c:b0:ade:1863:6ff2 with SMTP id a640c23a62f3a-adfad5c9158mr790453566b.52.1750067157607;
        Mon, 16 Jun 2025 02:45:57 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0421sm613375666b.46.2025.06.16.02.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 02:45:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 16 Jun 2025 11:45:11 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Remove
 default tuning values
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250616-eusb2-repeater-tuning-v1-1-9457ff0fbf75@fairphone.com>
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750067155; l=1248;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
 b=/lx21CCyQJsnPnwSwibTX0OuPV2RXmhvYrgVwxk7E6o5tH/+ZPfJ8KQWyk+ryg1uGi12QFX0x
 QQJMaToq3B+CMaAcZ7HaCJEL+YpaHqDu7P9lHab2Mwuuz5XVdjjg/ZL
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The reset default tuning value depends on the PMIC, so remove them from
the doc since they're not accurate for all PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index d16a543a784887eabc69faae2233057c4554be31..27f064a71c9fb8cb60e8333fb285f0510a4af94f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -39,21 +39,18 @@ properties:
     description: High-Speed disconnect threshold
     minimum: 0
     maximum: 7
-    default: 0
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed transmit amplitude
     minimum: 0
     maximum: 15
-    default: 8
 
   qcom,tune-usb2-preem:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed TX pre-emphasis tuning
     minimum: 0
     maximum: 7
-    default: 5
 
 required:
   - compatible

-- 
2.49.0


