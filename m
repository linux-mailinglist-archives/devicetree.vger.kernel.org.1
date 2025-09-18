Return-Path: <devicetree+bounces-203289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCC8B20ADB
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C4593A97E9
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2241E1DFDAB;
	Mon, 11 Aug 2025 13:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PLQ+0z6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B5321B9F4
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 13:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754920460; cv=none; b=GqFxvIqLrt6faF91KmbsYzqH6P7VgXzUceoQuac2vK/qm0ED/KDrRQiCbxj3BepXDm71aRSSsxVdF7zwvWAz13KhzN2FbqQGAM5nGPuPeu0QDHXSBsHpaZDJi6QLeUC9CNvKgdbOJrdIoLMEAxonPPOxmJOCmMaJYCB9Dgv8eGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754920460; c=relaxed/simple;
	bh=c3RG28Ko/mx6f7xdaUC6cmwJZ34iCoqiGu5BWiOS8Xk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gXbkZy9EpVNkKjq1ppm44yiN2FPYPIsevmt+TKIeUwR7TGxicNG7MSYa4yaFblyCVVswDxHwVei0Ws3wfPDRKP2wvkDaq2b3Kqf5dUKTSKL1LeemVUFsiKgk85wyH4+1ZVpXu66uTl1gvXiJD8qaSASvU+s8GnIU+UQEQOrXqX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PLQ+0z6t; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6180ee20f36so196265a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754920456; x=1755525256; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y33Pv3KzofFQINb0XIyuYWEMtrAvE50zQkghzUlQZqo=;
        b=PLQ+0z6tfkdx1wEwRgXm8/T2vY25vtGFXPa3hS275HYnRYJe9z0HwKdQsKDLL5K7if
         NJZRaLd4rZL4oc9jc96bokDbhm6IZZvANPVCuusXO9aq2XBIOTuHn6IRVEROBNIA/zfl
         B1j6m7jTtbUa9yirJcR0ERNbVNeVVwaFmiLjIA3pkB1rQGKPSm7u9HFyX0hpGMEF6Q++
         jooWkFe4JNUj+Y5jb9znpYRJkHTx0shPyJDm1AOZrR4wTX/Tv33DzeK6zSOTwWrO0yxs
         yBmNxaHoXKEMKFnVE3E6U5vwfma+cAjlct15MVRma1C3aaWJkh/XgHa+ryeevRs7Et0U
         Sw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754920456; x=1755525256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y33Pv3KzofFQINb0XIyuYWEMtrAvE50zQkghzUlQZqo=;
        b=C6P+7+Rk/FKJcskbHRj1xey8h0xM6vVGWsMQJ/91DzAchMpZZXh3vq3LWVTuTVc3qy
         /Lzrw656we9AXComM/0voIodEnJLv3kRLbLT1xVyJSXnWOdvXL41NmkzqpnwXa5tF7Oi
         iv/fuXiOfDcgJBd7Y9SnV35HYFCGlX0qPCW92ojR5P1KNUBX+NI1x6hFmZaWHv7HAgaA
         1j2hHDDI+BjqHYUFI0VVYaGftZYn+nGrlyYIi1/XR+v4VRMyldnBP2Mx+sUe2fUQa2Kf
         fUGfcQNAv6ZAhHB39KWc1z8r2gWO7bEWqj+dmgu1jXcUdS90ohmWwMLB8jZONvHMgS7N
         LTvg==
X-Forwarded-Encrypted: i=1; AJvYcCVFj42hJ02yt0zm3PcgZV7spk9F/qVkHTOE/ps0Izk7ORYOcEiUBJykIchCmDTgw0B0tBzeFt+MYaHo@vger.kernel.org
X-Gm-Message-State: AOJu0YxjAdokX9dMx5Quh5i2U6Lh3dAiVbpI71/XsKVkCPFKhf4+sbgX
	VI1LOIPCJOTYBwc+G7xsRhiTcwVgzuqGu/HiLPHr7McVzO8z0DKyF0CbzbE75gmBjes=
X-Gm-Gg: ASbGnctyl9d1GehNhPcFHX7A/5FVAhx/IhRAdNARSqkoxguTJ2iCQjILjlRBWljhSGr
	+P/ZGN/tC29LjRWADLWZqTohmOL4VMPZ4CIt2BXQwIdJWNryWwtFq+hmGqefC57cEtIpMqalhAY
	LC6bRoLtxRKHVAjWM52AKUZNdncn6BG+xE/zt313CgRp6vgEEFgMIO84z4qeW23X9SAXbpm6mQh
	LE3ZrKCJ0Sh5ZHUSlB6KD0wrTPSrF/rfP6mJwnT2s2Tz4rICVoTGi4R5amtQw4tsEJtSBXEOggO
	ewOGQ8Zlba3jfoYGX1CTyEsnSbNtf0h2mV/abNAXRmgqkOqTsf5aJ5J5UW68DTsCa5fGPEzse8P
	k+IxJTCmHqNw3wcqCblCrjhq/kEcu81i/HuuLOnw=
X-Google-Smtp-Source: AGHT+IH4Qf+ySBLIVJ9RkUzdhUf9nuY3HqBodr3qXxNFSQgHsOTF3ilWLqfyHr1IQq10+Kz8o09S9Q==
X-Received: by 2002:a17:907:3ccb:b0:af9:aaa6:a86c with SMTP id a640c23a62f3a-af9dead3f1fmr358990066b.10.1754920456487;
        Mon, 11 Aug 2025 06:54:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af986a477c4sm1179029866b.56.2025.08.11.06.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 06:54:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 11 Aug 2025 15:54:04 +0200
Subject: [PATCH RESEND 2/2] dt-bindings: phy: fsl,imx8mq-usb: Drop 'db'
 suffix duplicating dtschema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-dt-bindings-db-v1-2-457301523bb5@linaro.org>
References: <20250811-dt-bindings-db-v1-0-457301523bb5@linaro.org>
In-Reply-To: <20250811-dt-bindings-db-v1-0-457301523bb5@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=c3RG28Ko/mx6f7xdaUC6cmwJZ34iCoqiGu5BWiOS8Xk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBomfYCAhXzoTChGKL7Xql44UhldrwIyMLU8rSvj
 ClxLJtPxI+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaJn2AgAKCRDBN2bmhouD
 1/rGD/95sl+p+L3yZcu4PpLeRAKVr8M0CAYYWYQISgDBn6rgUWKMSxWpjRCK+XTyJTfIVm2M0da
 rshpXmRzJhjNa2N6onDSKhQIhcWQxb8ziD1k7w2CoWg+38e9S8dzL/Dpfb8egWwXGVa/COwBnSo
 g4fNEx+07u433Bn5HQy8MfjFOczQXrOFsuFS8iQ8jXqER9zY9u66tjwNpkKuSandtQNQn9hrb3J
 gc8bWN3fkE5gVxt89ZVe32cD0Jg6cftQCiIG7K4N2zmSpzeiSPWKwo4UOvyqjE7zOFQI54ert7X
 gMFwj2f5Qxv6M5KuecERmUWYaVOFrurwMa3274qrvyahcAGfK+mDU06akPsgfdiE1Vsr5hTIZiQ
 4f+KYICmuJoClFIRJzuorhp24lAjhcEgcEDB9T2e2L2uQzYjTIrPiuMBEWYhPhp43mHSd1KTs9o
 FtpspdYBCN1VfmOyqpzK1nf9Nf6NEhZR5GsJ5AryaPV44iJNm6xIKJd724oyK+P8HL4Ae9n2l3p
 U5VFAsCg3b3+3mp+j9MmDIgyll8GFVqTkCzFndCkdhNQd7AJHdSHsi2uYFatm191/KHTZGuXRsk
 Bfj9yHmaePvlSvESbySzB/IoUn9p5izL5PH3oq7+Ly7Sbba6OFqrsGsuJsgk95oDdjbNnsK20KQ
 09bNiVFG/ckn9GA==
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
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 22dd91591a09428214afaa4c9c8e37aae9bd8aba..6a47e08e0e97b286538798190225ca2966a7ab34 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -76,7 +76,6 @@ properties:
     description:
       Adjust TX de-emphasis attenuation in dB at nominal
       3.5dB point as per USB specification
-    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 36
 

-- 
2.48.1


