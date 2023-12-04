Return-Path: <devicetree+bounces-21262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 199F2802F78
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 11:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E75C1C2031C
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF661EB38;
	Mon,  4 Dec 2023 10:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FG22JHgT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2ED2FF
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 02:01:25 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9e1021dbd28so583147766b.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 02:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701684084; x=1702288884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gcpWgbYxTJM4cDAhuGusGlvYgR0Ejalgkc6iMWP0mY=;
        b=FG22JHgTG56LLk+w8LIVub6yVamtIsam+1oKG9ylMA91dBQxWyOq91GuDLokRa+Y6q
         CP0jdSRAeIl6ONcbmjuS4J5kacFHrBeujbjMOO7SATzv4Loi6YDwoEQU0YW7W43OSPi+
         Hm+B2jni6kzHJMpW4y7vHY6fN4Qm5Yj2uBxt5GT/eHRQXeSwfHBBfvDrn1hX0naFWcJX
         Ql9gbjHMJHpli3z7v8vK25iJKKTalkCEs/Ibkw6eWkoQHdABwXaaM7N6Zg8M5TVw678b
         wyrafC12qtAvZNiXAmn90MUUo/TC8Vp2dXjOydaanwIiWieAMW2hTz0MfGu3nEdb0CHw
         djRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701684084; x=1702288884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5gcpWgbYxTJM4cDAhuGusGlvYgR0Ejalgkc6iMWP0mY=;
        b=LS4SBAy2EEa6NP8jvQo2239pBVoD5DR8nyV6AfIA3ZoArv8W4bOBu2X7FAVql/Unt7
         h5rslmZbw4v6vIH5EsTU6xh+2g/3eQBH8w/rg6pVViXnqVpcYb9uxNUhp3R4iYhH0V6U
         3Ep4pBCH2clDRBz9JoChgkJJMFHu2wDGy7KzjbXgQ6L5sVAdHP5fgTgYFcPNWKlgnvVQ
         wXDgppfkMtkrph/h7zhBsoRovLZ2wh2mIqQwA4WLEa4dJgluR5ItITAFnQu+KF+aENJ2
         c0qbIGQSDNbO/8y+HP5cHv1MycK1Mnldcd+Aw0COacZEMF54ffJiHGDUNC5NvshCNl4w
         ZYCQ==
X-Gm-Message-State: AOJu0Yw6o0t1baVFDlwKFV/XYLzx5grlmDbnQwc4QJwNaTazi5LlaFMv
	2MxfxACQeMudtrgliSs+nIs7+g==
X-Google-Smtp-Source: AGHT+IGIU3jORR6B0x3FGVJgT+5hu64J0FQmCPUvyJ3aNFTkxr8CSXX7InvfFNXJYlFuqoPmGBKcKQ==
X-Received: by 2002:a17:906:3f57:b0:a1b:7313:504f with SMTP id f23-20020a1709063f5700b00a1b7313504fmr701721ejj.101.1701684084486;
        Mon, 04 Dec 2023 02:01:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id pj21-20020a170906d79500b00a188fe9563esm5065572ejb.131.2023.12.04.02.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 02:01:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ASoC: dt-bindings: qcom,sm8250: Add X1E80100 sound card
Date: Mon,  4 Dec 2023 11:01:16 +0100
Message-Id: <20231204100116.211898-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204100116.211898-1-krzysztof.kozlowski@linaro.org>
References: <20231204100116.211898-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document bindings for the Qualcomm X1E80100 SoC sound card.  The
bindings are the same as for other newer Qualcomm ADSP sound cards, thus
keep them in existing qcom,sm8250.yaml file, even though Linux driver is
separate.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index ec641fa2cd4b..4673fdffe312 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sdm845-sndcard
           - qcom,sm8250-sndcard
           - qcom,sm8450-sndcard
+          - qcom,x1e80100-sndcard
 
   audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-- 
2.34.1


