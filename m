Return-Path: <devicetree+bounces-60610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A55FD8A9CA1
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C12E1F20B59
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C4B016D4F7;
	Thu, 18 Apr 2024 14:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CAnk8hko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D5A16C871
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713449841; cv=none; b=aNx8AJuS6MkOYEtQMaRPY3ajMe0xan9e5UqRYwSlAe0HO2AajPU9w1sgaZecTrEpxvSFJhzSm5dEtjmXN+MQOouEY9ZGVKIJ9Z/noZkHcqWHwo6hMfp3P4NV3FPviCR/DrglSzHdbObMaIE4UbAsrPKURAPzDipf1GdhNwpC0XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713449841; c=relaxed/simple;
	bh=VLBa/QW0VMhizu6I6UwEaoKrZbEmjO1DzaRZBpi+k9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EoOIhhPt4/Nw9eej3Xa0NeiauTV37Ufux4wG2Fu0u3bwR725lDuc+6NM9/qIFrQxLl4uW1qo2uZMdzUriz0Jxljm+u7Gnh0OtDxVoQAGOaTDLQutaEpEred2s+7Lr4oThMkeGHHgGFbCvl8BoRCqiCJ4dp96rEYhkecHV4U4R5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CAnk8hko; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2db6f5977e1so12560761fa.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 07:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713449837; x=1714054637; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rlVm2DUZvHbif6Pq4uHc3DKM1FD6wia0Q9c386ZrYoc=;
        b=CAnk8hkoEgSGcdVpeRLa469EYi1C/puefoF0f3uXGsg7CQ6rxl80EdwydwUTeDXr3Q
         ISQrKx6/ZS1AXIhJfL/Z1fSc9ZwmxtqDgUiLGnmy/qOBdkFlcL1sHxyPNw9o97I1kFoI
         Qe62Uc/knEGoOKB29t3b7tgDyxD+TAuKJ45cvCvKCVjF1aOuUjXZRd4S8Tt3RjpI7u1P
         5mNA0eNEg8jP3U3lIRpoc/XQa5NCadNF64pmYMCsfX38mV1xM/0n7VqK+X9R6SFEcDhO
         mRqBScFDhQGGkHpUfBhG+vSFAQir7SKAKAn4Vlwo7cNuJsMbU5V5fpSN1OZ5Kifn4/vZ
         o1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713449837; x=1714054637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rlVm2DUZvHbif6Pq4uHc3DKM1FD6wia0Q9c386ZrYoc=;
        b=PGH4xl7Xj8L/f3qCwR4sJ4vAIjwFyseu6cvH69PimyLgd+Zicz4LKFv46rK6vrbbj9
         b2yM0nGyPte5u8cOAcb0F/my16mDUA9BFX51gARXzrU+L/u72uR47KhYYhl2XSwvdxpO
         5MMsQ7JV0Na27dIc+8gFnp6+08G/jFDHdW9KtJpOz94BfNaaJlqsKlLG+CesbJ2c27RV
         fYbjXlfKlnpeyZgL5/hC5lBdUvFoNgq7IPrRIdzjff0odjWs8O0qUOM6lxT9e7PfaxcI
         uQpwwnU+J0n6VO/cL/Ueb1V6L69OmZiw2CG1NV82p017zwJyzLLPk0k/+ML168IyszH3
         eI/g==
X-Forwarded-Encrypted: i=1; AJvYcCXiCyZKhvzu0QJCnp0T9+F0w7rNXK9gSRBOLhzKdCbnKw631M+4KrGhOstoN1GTrFxmoVLxbcnehsNN1nncxes0uRBoT7iNdWRO3g==
X-Gm-Message-State: AOJu0YxZFJEYr8MrTAT6R+WMUB9p9WgSU5HdkcAUAC+nsmpn25q/zeWo
	t/eL9wV20e9h4v6wtdiNbZ3FGaYozTTJakYw9yDfD0ll5d/ZmncoE1QpNjL9voU=
X-Google-Smtp-Source: AGHT+IG29OVR9aeDUGbdzj3TNRPQowmj8/BArbOQQhnLP5iP4zpyAQRi7xFLgRXdY6/+8+QulNMbAg==
X-Received: by 2002:a2e:9113:0:b0:2d8:6104:f95a with SMTP id m19-20020a2e9113000000b002d86104f95amr1707719ljg.23.1713449837718;
        Thu, 18 Apr 2024 07:17:17 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i9-20020a05600c354900b004180c6a26b4sm6267510wmq.1.2024.04.18.07.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 07:17:17 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 18 Apr 2024 16:16:53 +0200
Subject: [PATCH v3 05/17] dt-bindings: display: mediatek: dsi: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v3-5-53388f3ed34b@baylibre.com>
References: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
In-Reply-To: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=962; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=VLBa/QW0VMhizu6I6UwEaoKrZbEmjO1DzaRZBpi+k9Q=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmIStiG3vDJ5hjSI1S9skJevxMqAzoslZvCwRiUMz/
 ha/l3HWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZiErYgAKCRArRkmdfjHURbkQEA
 CrkzpBaKFv+sfRSX59WBpP/1SWDq7+EFOlk0CU1eVD0GSGXscbwRNrFZRQAmDsmEVPUVagzfH+pZnP
 ct3eaGmNSH2L+rCfXHCXfun2BJLq6DgTzwIVnhSA14kkSYc7pSA7x9pUqR7BRcRNTz9UZzaNEYdJ4k
 WbsDMt6LUdGx32iQCqFRPCjkOaJoMUa6jbDy5vXIFnAkti0QnVqaZAmHjydLRprruQ5NstgXTvWo+3
 ctdOcjOG/lwznUGT0OBjckvGKmi3XWTGh4Hc9cU95o5r1uSG1prY6QOAGN6pkjUfFm9GuDfdUkLv4h
 aerO9tB6wmEVRrCdJIBXRZqDDQKe/KlD9sBSjk2zKdblfkWHGef4ApvCCTKiaQoP+xmPjBx4VVz5vG
 YdnZ6zhxYg5E77TslY4/T0cDmmwqZxJ4RBFdzJKdJX1qi6Z/mDGbRrzXt1ROOjizpwdZ3QnhH5M+D8
 cSRVBkMcy2hmxjqs5xl31iFUOB4nVYZBTMtEO3CCsMTOxbGmxkYQfV1OcjPKF2icCpoiOWs3daI00m
 avkKjpD9lXLsMN/TAR1lKIaQtUhKUQycCSgZQohawoKjnV1A7TN1pscogLIT+IO5jV/p6dJyT5dUiS
 Cx+kAgmwbMv6CiXzug0cZiI8hMCrTYdkZbThFbKrZlq2JpkGwNU47/bQpP4Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the Display Serial Interface on MT8365, which is compatible
with that of the MT8183.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
index 8611319bed2e..a7aa8fcb0dd1 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
@@ -37,6 +37,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8195-dsi
+              - mediatek,mt8365-dsi
           - const: mediatek,mt8183-dsi
 
   reg:

-- 
2.25.1


