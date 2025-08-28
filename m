Return-Path: <devicetree+bounces-209941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0E3B3995C
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E96087B8933
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 10:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124E130BBBA;
	Thu, 28 Aug 2025 10:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RXSFrqG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396930AD08
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376136; cv=none; b=TyCFs45ELLjhEQz+ZqYhtMWY4GQc5gF0kdda+2ZOS2tdfJYU8WXwa+AE2pPJKALUpV8wKy7n1PIuaDZ31l7JypiQDrDLchcwD5nnn+obGagTlraHFqylP3zxO+8N35v7BSGajhP/SPc8Lh2+Vr1JzOBbG3lqfIoL/ocOFeE+XXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376136; c=relaxed/simple;
	bh=7zIHfbYuxqEFfC5pFIBPbouxdTNkb8pQDDivm5vTvI8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LZViIxzVAB2PqQvS75sXPjIhLo8xbIbgEzUiooDdwHy+ZGP6CiEsaTYvRC5hdEHY1so0oJPOBp7DzbjNjA8hbTpAJ+20M+XVM30cyg32Sf5CcX93CkjEE5dQcVYmGDrzH7imUesqtYhh59FXKx5jaCMI0p3OLVeCmEfetDd6pWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RXSFrqG6; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3c51f0158d8so736921f8f.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 03:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756376132; x=1756980932; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXANAbHwVPpe4jvCbblWLvMrGtujuwItYgIeQizTWw0=;
        b=RXSFrqG63v0tW5+XFFP93cFaQyBkCapRgzRiloOe110h1qjdJtJqwJ7scAhdN/7XjW
         At2rum7GpouDErbmuhyiQC0fpXqQ+04uSOvvSLxQpQkGo2KNsrEfPMDslxSIC84cxm4c
         SMcuT5mOjiZWpTlgOjMeQfWGXFww1Mag2hzEBoK08ZYdenIJGL+QwahMRi0sA6b5VN1H
         zEJfuBDa9PS9qg3u1kEKuV4+kKZEeOp/pHrB9GWcdPGPC7zf/vQNPL+bZbZJ4tIO9daj
         TBBd1lbJAn9NOMT3zSzjOTLmf3n47Rkwl+LXgtlCobK/l4GAqzPjmIuhhzOBG7GPfuVT
         f9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756376132; x=1756980932;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RXANAbHwVPpe4jvCbblWLvMrGtujuwItYgIeQizTWw0=;
        b=RNYnRoEwQ62wdneX7Y1gwVkJ5Qjsxukd0ejI4iBHJbe4oDSKkVpCfvWib0szFc/62F
         8Ku6RBSagTuWN8HPDkAnvA7HzPJPVHeM+H1y9pj/9URXcT7w6MEeOyVfhku4kKsOKJw3
         FcF3wQL/ZGEuWxXj7fbwSg5egWG2dk6rH8ZCJIdP0IohUJ9jSmc+0VcKtd/X5JD03QgX
         uE7K8fJCImp2++9boVHvisetGcd7Xb1PjiMVNa751j3ev9fxIt/gEKHB60n+wBEaGbWA
         MvzNWvV8aC9YYG1qJ7Ro+nvkSAYEw2Cg3KoWTNRneKFDpL72FfWuDWi02jjqS1OWHhdP
         dh5g==
X-Forwarded-Encrypted: i=1; AJvYcCW26KAOVdhxDuUtkNQxgo+nqOtrnsJk/em/Rbyt8ukIv7USGFsAqG7Zw4FrDl24PiU//La8dv3TK/Bp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy6OpAr+gO8VFKaP9T9WoC1jAXy0mCSgok2IJKkPyZr+LgSNss
	KdIIztFVPRCsvcqXKLTs7ZABL8a+teH/oEOwmZ0XUOgypF9JGcpkVBqbEj1bpr2o6mA=
X-Gm-Gg: ASbGnctWKZD+OL9U7QgFAF+u2D1Guwwm4YiRNNzFeuPYmoDuehEMEWKmXNxMNxizGug
	UeFn/2/ZrGZilJNwwQvph0xXtj3o+KTnfKa1hf+RMvmPrUGGvQrJvvI+wuWMe5dTTMw2HmLGO6Y
	IMK4hsaaklxBE6Y/vQ6IKQcNokitzdUwLKA4HLH/Haf8pEk2+YE96HNx3UDfMSTrOawm5TqqbIQ
	Nk4tp6r4BkaQp++vcDLVV9wroSBKlo7n5XzVakTfyPI2+mem2TAofLpVUp2oAgjP2VVcUaIEPAt
	k7+MpeCv9TNqY/9GruyJBKBfXKpoUoMTjjGIXlFMrSbvqfALk2oQTXp2xMrpGEH/ftMCThJRCtv
	bTxS+EBW8H5cCGTZeFwpdCCyMga6ZO0E=
X-Google-Smtp-Source: AGHT+IEPuV+SVBjgix8/NEPnZ8nglpuTYsTPM2vPoIioxa72GpCO8DZr4EiqG2j2YOqQDR084wp4Tg==
X-Received: by 2002:a05:6000:18ad:b0:3b7:948a:1361 with SMTP id ffacd0b85a97d-3c5da741330mr16413826f8f.6.1756376132441;
        Thu, 28 Aug 2025 03:15:32 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b66f2041fsm49976305e9.5.2025.08.28.03.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 03:15:31 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 28 Aug 2025 11:14:44 +0100
Subject: [PATCH v2 5/9] dt-bindings: lpspi: Document support for S32G
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-james-nxp-lpspi-v2-5-6262b9aa9be4@linaro.org>
References: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
In-Reply-To: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

Add compatible strings 'nxp,s32g2-lpspi' and 'nxp,s32g3-lpspi' for S32G2
and S32G3. Require nxp,s32g3-lpspi to fallback to nxp,s32g2-lpspi since
they are currently compatible.

Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index a65a42ccaafe..a82360bed188 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - fsl,imx7ulp-spi
           - fsl,imx8qxp-spi
+          - nxp,s32g2-lpspi
       - items:
           - enum:
               - fsl,imx8ulp-spi
@@ -27,6 +28,10 @@ properties:
               - fsl,imx94-spi
               - fsl,imx95-spi
           - const: fsl,imx7ulp-spi
+      - items:
+          - const: nxp,s32g3-lpspi
+          - const: nxp,s32g2-lpspi
+
   reg:
     maxItems: 1
 

-- 
2.34.1


