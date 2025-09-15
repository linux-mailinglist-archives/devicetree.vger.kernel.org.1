Return-Path: <devicetree+bounces-217541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C95B58201
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 856BC3ADBB4
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8A92848A8;
	Mon, 15 Sep 2025 16:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nCEehg3p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634FD25A2CF
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953679; cv=none; b=p+makFTVgggM6m7aCvSwRTHZn03yFnpGHBspHjBAqXcO8R4/Jl8BJBckeqquHlX5nmoZa/jTE7UKXoqOggvOGhqdMSar+A1OpKKwZ8chDLZNyCyxZ/fGy/Ug12oRxxGoCQeoqzRHE0BwMceEWTK0SyHyd7RyZPof/6Br64jEqmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953679; c=relaxed/simple;
	bh=HZPCk3JqUA3vYxv2NPfDB+tVL6uTR2siqsxBukIGtE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HNI4s+Jggi7oEVWZKRKoklR8NRM76K63p/2nYBpAejuKhN/MXuDLEAh1sm9dRFT9ALZaVZeIhrJ7ku+SPuJA2RpkpMCH/yXexpLG+N7p5SOwVDCIHdh5V8OtvnSyybn+NK7k751olq32XUnvNNT6t3GuqAquv8emLrebcevxdlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nCEehg3p; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45dcff2f313so27922985e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757953674; x=1758558474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c/K+Z0wL5+PZjzV0vqQ/YTMEX+mNIMBAJmD7MHAv9vo=;
        b=nCEehg3p7ZjrBkR1o9dVtCYqkviINENyRvvwZdwta8NPOj7aQsMKToUgUvj4rHxfif
         bFDuBgN39L7zO6bnMdQCLysDoECK52dSQc9kWDwMfOVy8b3t/VCw8DIeQxat+7oZW1TT
         rh3K1N0ht5112EkFDf6EH5G6J2UdGrGxG0OlFAOZrprKJLxyplQEfetLK4MX6hxDjG9b
         dyMAuKBOy8J/nWGHAY/eZOzwdBYFxXY72Lgw8bGxCn71QlutffRBhmWaSV5ZlpHY3oVJ
         O+vjf6CF8Sbwn+RhP0MFmPKn8o0I84sgB1r+8k9USu5D2NI5TgtKKW2Qw5L8nI+zpp0A
         dw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757953674; x=1758558474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/K+Z0wL5+PZjzV0vqQ/YTMEX+mNIMBAJmD7MHAv9vo=;
        b=RZO9g2ls19/0hZnOT4Oh0m0t1cdGXySZw17RpayuifK5SJfgDEw7R0VUkmd/v7geLa
         V0XeX3+VuMc1LRUPB3fJDM3QAYQmkBEWeeNbt8LyQ4pyc4pAxy9Z96byy8Gm0f5ewqxC
         h56J7bGmaT3VV2CV1iexffsgTF4c68fPGzsvXPn/RaAuP9yOxNP691UC20zY8rS7h8yL
         KomiKMB9lE6H1rjtKFck1RTOBpBkR038vjEDHEyxuDrmB696rk39t/zSYr0sSz42741k
         SfwL+qz5/OI8JKDE/W6RYts/GOwd+EYwTW7yuOHWb7Er1Hmy6w+rJ4C71xgb/6qSZv07
         sLXw==
X-Forwarded-Encrypted: i=1; AJvYcCWTyydPxH0ruD1bx5H0FbrvzgLjtVBI4N3INj7tvB/gVhT6JDmW1mmcB97nzAdVOxV4C7mtXXVpKs6g@vger.kernel.org
X-Gm-Message-State: AOJu0YxuUAIvHUap9GUOaqIftO+q3QKjucXRzQVyWnVbUUdl6hLVkCWl
	Farn5nlUkkbNsrbdNO72fIjYuK0sbo+wMnSGlOFtgY8LVHfNWeygqTDkqNhDxcAn4VI=
X-Gm-Gg: ASbGncs7UDTLXxJcsTLgNpzJaV2JnB7Kkr4dwu/DRtaZIPQ2dJT8y8QD2pe3yDUxn9f
	kr1UguTERNKEVskqvvhJTAdxUrBaqFffT5fUqTJAkbY21AiPxbn+29iY1ESlJbzqcjddkJTuVBx
	N9453V+EfcHI048Y+vFs6VcUSISPk8p8SuhJuzgErLaK4sR+7jn1Cp7nmojovvyvpa1ZiAwJPgy
	iMnZ4UiBHmGWYCH0XoKgW/taVvHB41HKUU9uQhwNITlt2SjUmKNQy3qi7mFHLNMgm0yrf0E8f72
	4FORAT7IpUKCEvZTZwu0WYYk3JzrKQm5Uw2lvEIw/6lITUPFTTMnIqmcC8E2VilT8sbEAsq/sjl
	OyVf75u2hoPHTrBuH1JJlAZc3NkS/3L2UnvW/y2M=
X-Google-Smtp-Source: AGHT+IEn0sbvsgmnzVv9y6r8pDxl2GODt+IaZynjI4BpZgrjw2lmcfqmUv1WBZqeRiA6ek+oG19YaA==
X-Received: by 2002:a05:600c:58d8:b0:45b:868e:7f7f with SMTP id 5b1f17b1804b1-45f211f856fmr108161745e9.17.1757953674396;
        Mon, 15 Sep 2025 09:27:54 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:e60f:4b6c:1734:808b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9a066366fsm7857989f8f.44.2025.09.15.09.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 09:27:53 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Mon, 15 Sep 2025 17:27:49 +0100
Subject: [PATCH v4 2/4] dt-bindings: mfd: qcom,spmi-pmic: add
 qcom,pm4125-codec compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-pm4125_audio_codec_v1-v4-2-b247b64eec52@linaro.org>
References: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
In-Reply-To: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, 
 christophe.jaillet@wanadoo.fr, Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add qcom,pm4125-codec compatible to pattern properties in mfd
qcom,spmi-pmic schema so the devicetree for this audio block of PMIC
can be validated properly.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1e9ceb2187e988ce7c9514ff6dc2c..776c51a66f6e7260b7e3e183d693e3508cbc531e 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -137,6 +137,12 @@ patternProperties:
 
   "^audio-codec@[0-9a-f]+$":
     type: object
+    oneOf:
+      - $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
+      - properties:
+          compatible:
+            const: qcom,pm4125-codec
+
     $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
 
   "^battery@[0-9a-f]+$":

-- 
2.47.3


