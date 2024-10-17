Return-Path: <devicetree+bounces-112355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C42A9A1DF5
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C508C1F23B0C
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759A31D88C7;
	Thu, 17 Oct 2024 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7Hf8xom"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68271442F6
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729156497; cv=none; b=irB7fAXTQDm6sYtXLdotrvNRwW959A9FP/lwltfvZKwE8VIeCcKyScEKiku15tf59/8mKgsONa49WOfO5onvi1PuuaZ1hkYztclHVo7Rgijze+bjBGgOBFU+h23Co2Blbf6TtsSNp7N26kuwG6xj8rf/90VAjuj1R22E01NX5xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729156497; c=relaxed/simple;
	bh=OFUTbt01W57UIzbwt1gpTo3z57X1onq8v0mSZ7fvckY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i9Ml/n7xYsLJgr7zOJSqYd+SKv1cNdMyE0F1WjpC1+pnuFjk8SfcHU8HYdt985bo0+hF5DJuLYYiYzVX5JRALsHx7wKess58F1ZykNf1j/NEZ2sCBSp8lukKM72IkgtwyLzBlRIzlcDJqxcUW/tMsG20qpQTO8XX1hAkY0Y7npc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7Hf8xom; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4ee8d15aso81072f8f.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 02:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729156491; x=1729761291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=++RZvUSYm5I0ITBIr1eDkKq7SHCu0gvOfmRf7dj2AKQ=;
        b=u7Hf8xomKotgv0K6Fe8eh3K8uKgYJe6IPo2CeDagYQ7YEjDyr8xgodIbfm0TLWzFAS
         Lv/fpAWDjqWiIMFszWM1LbSw5UuJC5FYIzDH7oBi8A8XM+oXm1rJqs9x1nwJEsaI9gFg
         SDpxmIBPseOtyr0WzxiO1eutKE5ookgrfpm9/weh36PBHo8Ib6DVS4l0SuGxA/3WTav3
         +JC3ScPIgoN+ws94VseMSKXepFB+0QRYK9ZSki/cXtfbIIHmnmJ+VwyHoUJiFvexEAZY
         wYY5apiXZ5t2dKUQSdcvQwmhx1WG0/VuZevbIuZ5ZQEepwxT7BWBTkoiY+DdtBfLP2/h
         yyCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729156491; x=1729761291;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=++RZvUSYm5I0ITBIr1eDkKq7SHCu0gvOfmRf7dj2AKQ=;
        b=Jti+ME8qBWcOfGJ+jbR1S4ywaQ+DjBJX6KNp6LnFjdTxU1M0zWB41A7XpG/DLnH67J
         jCIZUyiX7PnyXb0vFLZ7pmVNy9aKHDPTAQ9vM52InjGnnpx4LZRTdSOeA0RnhyptrtgL
         NHe45qXchH0NoNQsTCh4/5HFYRXOuSlS79NtdiTNa3jfI8jiAyZFyVzHHwaQ1blw0tM5
         46UlN4E3WrvrrV1dwGEfr1HXN78m/+fzWQLgCvuD1GyJAP3hfOQZ/XZGfmHkZPKtKKgf
         bZBrkF53uJrlqwIMMzBv8HsCnBlN2nYkAjHqfxivjC1QuGCT45rLXNexfahi+zy8POms
         02lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBm0eRWL1bX85vbgXCJDu9xYIZy664BhOyRHPbSErzRr1rpzA8YtCLQLi3fFzh9X/IbEbAdvj/GHAp@vger.kernel.org
X-Gm-Message-State: AOJu0YzG2sFOshMEQB4+cpTVtUqE/sLhwGTZQTg+AirGkKDnfjwtynT5
	qKYAiZ5soKmfiIMKyJAwYBpqTKK9EZaicgJs1NwvrGFZEcHriL3gW7g3GEAX69pZepYI3l+mv4I
	t
X-Google-Smtp-Source: AGHT+IEE02ekLjm8TbPP6kTm+oXFzkRyX+nHueXutR7x0HjMCzdjaSTpWmIK7+MmtHTpAANlj6Cbrw==
X-Received: by 2002:a5d:47a6:0:b0:37d:4517:acfb with SMTP id ffacd0b85a97d-37d936999e4mr953956f8f.2.1729156491016;
        Thu, 17 Oct 2024 02:14:51 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa8778csm6614252f8f.25.2024.10.17.02.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 02:14:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mailbox: qcom,apcs-kpss-global: correct expected clocks for fallbacks
Date: Thu, 17 Oct 2024 11:14:47 +0200
Message-ID: <20241017091447.41450-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 1e9cb7e007dc ("dt-bindings: mailbox: qcom,apcs-kpss-global: use
fallbacks") and commit 34d8775a0edc ("dt-bindings: mailbox:
qcom,apcs-kpss-global: use fallbacks for few variants") added fallbacks
to few existing compatibles.  Neither devices with these existing
compatibles nor devices using fallbacks alone, have clocks, so the
"if:then:" block defining this constrain should be written as
"contains:".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/mailbox/qcom,apcs-kpss-global.yaml     | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 982c741e6225..9d2dfd85b207 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -165,12 +165,13 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,msm8953-apcs-kpss-global
-            - qcom,msm8994-apcs-kpss-global
-            - qcom,msm8996-apcs-hmss-global
-            - qcom,qcm2290-apcs-hmss-global
-            - qcom,sdm845-apss-shared
+          contains:
+            enum:
+              - qcom,msm8953-apcs-kpss-global
+              - qcom,msm8994-apcs-kpss-global
+              - qcom,msm8996-apcs-hmss-global
+              - qcom,qcm2290-apcs-hmss-global
+              - qcom,sdm845-apss-shared
     then:
       properties:
         clocks: false
-- 
2.43.0


