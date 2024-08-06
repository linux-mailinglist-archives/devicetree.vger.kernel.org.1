Return-Path: <devicetree+bounces-91307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24418948E23
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF0471F265DB
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 11:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540A31C57A2;
	Tue,  6 Aug 2024 11:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zlZ41MIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDF01C4618
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 11:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722944987; cv=none; b=LbuA51/yP1rLVQKbe5tWLXYIdjZGIsLgxxy/cS+KDZ6rwYd0G3bzBWllb9sXrq3pgZhvZCFhySKV0LP+dNCjdOHwDAhm+LB9kO17j5MfGTIHdXV6Su3fFuyJQku7Y+rCusDOZP+UidFs/82uCniaSBwnio4PoOIcBeavc/9CDVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722944987; c=relaxed/simple;
	bh=Ezp1DEESNAuzSnaq1SG6uwRupUnI1fkxIZaCm2O+49I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n+uCI8FmsG5nRW/jXQmRujDHj86AcobAE1zv9z8aeDitrB8a7NzmpBlfcrDZ7R8aUdNyBBDDItAfcUxmsSggGmRQmjW8FkfRx7iO1re4TW+6l32c09iNwRbjT02mmexQaxtuO7aUXBtq4NCbDEcTgJTxG5pq3WRtWTZjw7hzU+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zlZ41MIW; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-428163f7635so4176985e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 04:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722944982; x=1723549782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMlV2qVo85xWYVBMYhrk0PfH/1B6nF4UrxaGSSozyTw=;
        b=zlZ41MIW91eleJp6jQ/cNAGsszGoWa1MyQY2J9lpfpvVAHZJN5ygagEcVSmOHAh5EJ
         MRhlrZNm9cpce2/bhCPIcHMSH/RDF3eABEiNm8Mkx2sX+SaVIJ8na8J4aToA60hf9Xdg
         Tfyk/uKY0eggPguFHx42CUzxeqIrcQM4KmbD7cNvm7oT1Lm1qHfMO9i8WLVUtpEDfQ23
         3JYIZpM7zSqBHPNTPpBRXmwafNJ30pwPubjlMFLnBjtRQlb7wZAMMi9zyNOyZ7zBzkqT
         67IjJAzjeT0up639F395Qjb9t2HtgrYg8QGTQBAt4MSbYAI/kmd1Xuph80Yj9iJTh7id
         /u+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722944982; x=1723549782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qMlV2qVo85xWYVBMYhrk0PfH/1B6nF4UrxaGSSozyTw=;
        b=G+7SD0eK/W0nXM3S9/Y+ZjCaYrkbExvkYr2t1gKkSvs8ByDY2EJMB5skFLZXBlifYj
         lk3E6xA8xGZzPxYJU+PzvW6cMutBoYU80i4md6I5j+ca62oFc+Bdp24iJnWeujTFQsTQ
         lkzfsj2dqIVRPzKtAaISwNr6qY5nn2hwf916o22smwJpRAtYArqajkLEUjqzpZhpToq6
         e/GzAZZg3Omtl3IUMmfSU+xiM91SVGFrlZJqEeLUCLDsNoXAWEuoU20lp9MrhOQMycBy
         Vatk/SLv814bnNgogzxIijOO45LztmN7GuWU5FobvhxbgjIQnghkpyOnb3I5BmJp/8ud
         9+Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWimriZeKkMlLbslNXhkSzOhG9FCMzdFkxr0tWs6ftuS8g0vK1aWpOA/O+9h1opQt1lgSN+2C6/AkOYAZX+6EugDVDj2QAmIhbaDA==
X-Gm-Message-State: AOJu0YzIzDVH1/u1HqZPcLLidQASR8Ruqb4gDl9HTN6wWMTZ0pdtzK5u
	HvIwrwGHsWdxTbwHWc9i2QMHrJlr3GnbulyipqW6K/dMU7vRslu0nHJYpGO8qRE=
X-Google-Smtp-Source: AGHT+IG0OfTvajOEg5ehvoF4v0jk7nAbAB0WzN58qCZhXcth2JhU2Xeyj9qeu3b8QEUJOcwwmdcrrw==
X-Received: by 2002:a05:600c:444f:b0:426:5b3a:96c with SMTP id 5b1f17b1804b1-428e6b78e3amr101124575e9.28.1722944982501;
        Tue, 06 Aug 2024 04:49:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428e6e0357asm180287485e9.12.2024.08.06.04.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 04:49:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] ASoC: dt-bindings: qcom,wcd939x: Correct reset GPIO polarity in example
Date: Tue,  6 Aug 2024 13:49:31 +0200
Message-ID: <20240806114931.40090-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
References: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reset GPIO of WCD9390/WCD9395 is active low and that's how it is
routed on typical boards, so correct the example DTS to use expected
polarity, instead of IRQ flag (which is a logical mistake on its own).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml
index 6e76f6a8634f..c69291f4d575 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd939x.yaml
@@ -52,10 +52,10 @@ unevaluatedProperties: false
 
 examples:
   - |
-    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
     codec {
         compatible = "qcom,wcd9390-codec";
-        reset-gpios = <&tlmm 32 IRQ_TYPE_NONE>;
+        reset-gpios = <&tlmm 32 GPIO_ACTIVE_LOW>;
         #sound-dai-cells = <1>;
         qcom,tx-device = <&wcd939x_tx>;
         qcom,rx-device = <&wcd939x_rx>;
-- 
2.43.0


