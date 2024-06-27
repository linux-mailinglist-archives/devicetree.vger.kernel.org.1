Return-Path: <devicetree+bounces-80762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C24091A5D4
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB3621C21E1B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56742155CAE;
	Thu, 27 Jun 2024 11:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RtZgseXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C4D1534E7
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489366; cv=none; b=LIvYbIiDLOD86vu2NrXyxL1r77eexdc+YACIfDyYhM9DT299uAWPPslG0zQms2pxZ6DyBI9po6KkZRbdBdGDiWK/V3sE17Dt4MR09WnkgVsIiRmmLArLmLC5eARExfkmDrvY9Uxtyy18GIz6a0pQoECVzspVP39X53YodvOoyek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489366; c=relaxed/simple;
	bh=UkWKKOsTNz1C80xDz4hBzX/O51GwHLLmPnZ3RZsUr6g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QJn6Uh9Q7x3uY+CqN0u/xXyXA9B53DwruXJ01oBb+TJ2ecC35jNI8Z5QGCz/Jw2i99yB5W0iTON+0g6kSx2zCvMeDs4DhYV0Sc8b5GodF2h7jVtsV5eMDbFP1TC5g0AE3Efz/uN3Ya1Tw0ZYX9LlbGeG5zVicnzP8yUMGQx9UMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RtZgseXB; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-424ad289949so16686965e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489362; x=1720094162; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eB7qTRAxnSkgE7t4FDRl+bpfSSJGxOmGp8nh0Nok6h0=;
        b=RtZgseXBbYvyIAQx7Fd6NA6axTCq9hMPJgniK+RRFgWhL4hphY5R8rnmDZFl2cJLew
         36ckxGHa7WRYgdyNxgp0V08/IKITfV0pR7mlfLIYCAcRHoDvKf/8ZNLLzmS8wAaY33jx
         IHX7GE9q3sVVW0PAyBtLasO/9uYlM2VhHXi8KvgbTAMRebzeTDXQaX1gaXPJ4m1Ei/NV
         ZpT/g69DGccJazgMgeF4Gga61prR+76WOOLq7rt1HhiJb9XBG+vgQGj7z6l+NwL4R1Bq
         vqugQV7NK0xBdwOIiSbEv5cvs3uiNF/VfxYHNOzq0A6vjIwtfVpVhgCC+4a0DYpgjNth
         HubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489362; x=1720094162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eB7qTRAxnSkgE7t4FDRl+bpfSSJGxOmGp8nh0Nok6h0=;
        b=weItS1la4KC3UrWiD1+/4tYTL/vP9fl7wwtFMoaHtCD66c2PBOw7k4c0qDylEttuqR
         feLF1lRiB6JXYyw6QGttwCzE0+FBYY0QKbLArfrEaa98bk9kNd5OXaUdNRWf8xIMT+Gf
         PZxAhbZvldJSf5ejCNc2v0a3J/OR6za3N/oO9mITQFg+GEwr8e3KTN6UmliHsHzDSVa4
         2UrtYh5o0qROnVCUkKfDgvSdYueUMyoKaYQIjQHGjCx19M15M33lYX911MLpjYhNDMrB
         KbjQ69K6bbERANQ9JSC74QqdL8Lr5DsYAFajnl8mqA8kyKkA6JvEiyEaSUe4Ub5thq2E
         s3iA==
X-Forwarded-Encrypted: i=1; AJvYcCWUvoooeuV6iyWa2OmNel4Hre1mP5mpXXVFkMx5BUsPgLCHlqhgvuE76PUMD0/k7RuF8Hgby7UHJ5oNPn+EEwd0kwszupwKKfqsJg==
X-Gm-Message-State: AOJu0YxydlJNzm40gSY/2FUrm/0eO6X61MtwNVvOtwsD+Mod/kDvu+j3
	b63ZavaMAj4OII2sX7X2s2m/kZ48QH9ZqBI5ZhCJ6Vk/kWHObdk/UZ7dmSZnoeBADZE7L3JZ914
	4sOQ=
X-Google-Smtp-Source: AGHT+IElItNp3cSHKsJTKvy1VXuKu2eMXWGGPys9ZBSGpHUZHQxdJ4zDKyVCa4+CO6Sc9OuHVdXXdA==
X-Received: by 2002:a05:600c:6d8e:b0:425:656b:76ae with SMTP id 5b1f17b1804b1-425656b7748mr9686195e9.23.1719489362352;
        Thu, 27 Jun 2024 04:56:02 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369980asm1597552f8f.80.2024.06.27.04.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:56:01 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 12:55:19 +0100
Subject: [PATCH 3/6] ASoC: dt-bindings: wsa8840: Document port mapping
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v1-3-bd8987d2b332@linaro.org>
References: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
In-Reply-To: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1157;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=UkWKKOsTNz1C80xDz4hBzX/O51GwHLLmPnZ3RZsUr6g=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfVNNzIYgBD4wI/PAjnXHpOZClxrctCQtBgmud
 GG2+Eky/sSJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn1TTQAKCRB6of1ZxzRV
 N9iDCACoqrzNg2bonxWWRPIlk9J/1IuSP15wQmt8YcvPWxi9MTepRJQPWXHxS1T+I6Ed6N8E/4N
 siF4aiQKS7sRkNPP2evMWdyZqxlxlEtpbakw/afA1Kom4IUNmr/PLJb9o6Q2A4d4i5pQmvuCb9L
 1qR9Gskw+nZszbxIjsQJPphvXkYJWBig549ZgMhQTIttc7XLohqNPj/pLEXYMzy6QzELCqA70E/
 SCoeVcc5H/RqwYYDhOJFjBPYFUCPnhHPQsdmZlCNY/qK7QyEFPNBAlpo+FYb17sZl9ey1s0X2o8
 LZFQxRULxG/4R4NU7W4ixlSBxc8IoPGu9jfwRWfztLfoY7y4
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Document port mapping property for wsa884x. Port mapping is required
to be able map correct master ports.

All the device ports are not mapped in same order as master ports, so
there is a need for having static port mapping for WSA codecs.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
index 22798d22d981..83e0360301e1 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
@@ -32,6 +32,14 @@ properties:
     description: Powerdown/Shutdown line to use (pin SD_N)
     maxItems: 1
 
+  qcom,port-mapping:
+    description: |
+      Specifies static port mapping between slave and master ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 6
+    maxItems: 6
+
   '#sound-dai-cells':
     const: 0
 

-- 
2.25.1


