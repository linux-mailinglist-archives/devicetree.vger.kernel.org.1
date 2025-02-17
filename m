Return-Path: <devicetree+bounces-147562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 224B5A389E4
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1FCA3B13FD
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A3022655B;
	Mon, 17 Feb 2025 16:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QR8BUiPM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB19225769
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810518; cv=none; b=LuVC7Du3LSrtY12m3VOk48Q5er1uloVLf9sFceIiyElk+kO/NrfH3d93LnR1+zs0isjPHs57a6UmJJsOkedPzqGq30wCKVTi8hsXZMajPsM39I1s+hQCTuXNgJuDLSWys0YfKzzsCVyMb9ZSMlUmedq4sQxifaOWIqTSECHp9Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810518; c=relaxed/simple;
	bh=K/LvPsSs8jLRaKqgMy3wwlLWJHnMlL7FxoRoOu4sBqA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Blbc9BEp57SOt3yBW92X85ZMyD1rAbM+3/7buvqV666JKp2coU4WqbgNzvR//FeFS4hxw3tS93JzF5eyuNWjft68bsL/wEOXe7alIJs0U0zG6LfeZ15Oh9mLk4D5bdBXV+ZvhEmxDdRCaK6c9nbC8AJEUMzmNc5TUyE+YsSQRC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QR8BUiPM; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5dbf7d45853so587273a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810513; x=1740415313; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HAwXSbZcFpOuQBHVRwbOUqZidyc0Shw8eVGCnAwERkg=;
        b=QR8BUiPMrzRxYT+0ix/ZmPy27o+VvDXGa//26oeGO/JPengT+ZZwCzghwxnFmPN21+
         T1AB5U5FR/SswxEpl1azdDpYDQVwe+c+x8l5GdpdvmCYc8omcyxSNaPs7fOJwjHvXLjn
         H5J8lWoa2Ahh5FN8SKH+deVTqnBU3rFJ2sTGvy3GirQzvqp7aFGWPdidJMvGqQkJRS5p
         x88pOYwqf5zD4qoKE5s35rTbOxC0Nta8rujoAnSbBvt9kIPsJSc+YHybYjlJ5WIrWd4Z
         WHQ5W6kTHShYZt/guHbVH1OHLTSV1OrkUXKnjz+XJlyMPtWHqLcQ+Y4e4/JCDS7AxRLX
         nfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810513; x=1740415313;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAwXSbZcFpOuQBHVRwbOUqZidyc0Shw8eVGCnAwERkg=;
        b=JkLy0f88IGEoAv3prP5xQcr8BaiVEEnISiguAojP/Xh08U3fVVlZ/g1ze4E3Zk3LjM
         enD5bHfe/z7yEmfWEHih7d1fru06pIfYbDPbiJhIhV7+LN5pKR54Vc9YQ5ZJs84THpBZ
         ivl4zsA5AdcNu2uHPwYkmUphmzzUMgk3an+buDc8DEAiEHNQ5zm+8k9zYMG1cFIVs0x0
         3yoQNoxEh8Ued0d37lhJbNdejAJXY6RZnbmbX59wemVS9z4FxCZqzdoUkYd3XLuKsEI8
         +YpMgcJ2Ict5XjcW+XdsW3XVR9P+V/Pl9zxBIiqwfitVoMPI7LtIkiTIpyseOCb3cr6J
         aBVw==
X-Forwarded-Encrypted: i=1; AJvYcCX8F/NaQd0VgTazmROwmhb8D2+2JekNP+oLPI2Dhlcne9WYoZlvbKgdvK3rE3ca4TeHeEb4w8oLWcxb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywpdjao6If7ChgxAxOMxW7FVE3GbjYa7ALONydImu5ijsbGXZ9r
	e94HLCPxVAo9G7XXx2aJvHMuZVCmd6wDb+XAcfK+2MFszUfM3pbexD0ZPThMpkc=
X-Gm-Gg: ASbGnctyovtSH7Ytn+Ul6xVNDPq21ivUcFIghi8eLGPyeD6jWamcQfldT2phdVeGEaj
	y7cu2nUr1IrsriKlAg5W8TfmOtjuwM7eRJ2acfJIc18+CmqrkUbv71GQGCUMU4U5o1GhN3smy31
	DODdFex0q9AQJ3Wh92w5I815/0cvRMgmDl3JLKlJoxCV6ow03xciu2GmSPhZGjopPJtV53b6s3w
	FrRGciatvFjt9ydlEW8g4j2CB9u7/Cby3nWUdmpoic9TTxOQdpgaa5pVLxsuV/PRx/R1bpyGMPW
	IgJoCNOla8ARmKdJnlyiVH/Yla/Hvm4=
X-Google-Smtp-Source: AGHT+IHwt9rKtdqVpWvlWMU9opivZ7B6UiCBuR01NuzfOowAfznEVo3RY7QMrNt1GQOd6t23b+mNaA==
X-Received: by 2002:a17:907:c1f:b0:ab6:db64:b040 with SMTP id a640c23a62f3a-abb70dad1e7mr357653066b.12.1739810513000;
        Mon, 17 Feb 2025 08:41:53 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac781b78sm82647966b.60.2025.02.17.08.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:41:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 17 Feb 2025 17:41:26 +0100
Subject: [PATCH v2 05/16] dt-bindings: display/msm: dp-controller: Add
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-b4-sm8750-display-v2-5-d201dcdda6a4@linaro.org>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
In-Reply-To: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=978;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=K/LvPsSs8jLRaKqgMy3wwlLWJHnMlL7FxoRoOu4sBqA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBns2a78Jl/FGD655nQ2ck6lMnvuiIvLFc2KWABe
 cxYdI+PBHCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7NmuwAKCRDBN2bmhouD
 19SAD/47HAphtGjTesMY+DDBLPGVDxs9LvcNhaL12xOwXoKX9nzrjNxyunuPfjSnCSMX6P+7WvR
 WOE0v45WZ/wAuJSaUZmryLvApkkf1UCY9+KEXnglMErTefMJW5nA1ZANRAQ7oVJuZe08MJq6UZ2
 6FcW/BuA7wkxKcZ4+jf4/z2GJgBl2B8zrWxAA7vW4AAoF/nwM8f2g3+3cFiEzCEyiCOKFUl+51S
 1/NYFYzfTa8qebl4rQr/QBmTPe+8qoP6eFrwusxrsXJezjXMpAG0kB8Wto/YxxtWfLAEgWE8H7U
 v6FG6CT8MTIMY9YAML0nRz4pcGnsfq2Mjv8zN+LurTsu4WVrr9Y50URiIvm9ufKAe0OQIHBrRmt
 fSt/MfvWHwBdOv8ivzJBjOQZKcVTXFRg1t4Z2ovrdDxNL6yvFzcSMvHKHOYOImeo4JKRRWHX2xS
 lcNVc0pJsEGBPFz1eeYZPiMXBklL2KZGlRXHTKQU3qqOMDdogSf2k37eOf3Qi3zGEUF27X3o80W
 1n9sHksn6pT9ZLoemO+9GDmyV+3j+eKrZRX28sta+LIFpua0998IQwIQ7F1KRFTcwtJYfm9GuGm
 TMXIcJ2EKF7scPlkiwVXAYTHa6K2Tg9KRqnxHO1m5Y9LrSctkxV/vuc7R1+zQuk+0BB6JwUMgxV
 iWuep+VjxioDxXw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DisplayPort controller for Qualcomm SM8750 SoC which so far looks
fully compatible with earlier SM8650 variant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index e00b88332f2fed2fc33f6d72c5cc3d827cd7594e..a4bf9e07a28355c0391d1757fab16ebe5ff14a44 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -37,6 +37,10 @@ properties:
               - qcom,sm8450-dp
               - qcom,sm8550-dp
           - const: qcom,sm8350-dp
+      - items:
+          - enum:
+              - qcom,sm8750-dp
+          - const: qcom,sm8650-dp
 
   reg:
     minItems: 4

-- 
2.43.0


