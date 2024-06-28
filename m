Return-Path: <devicetree+bounces-81095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5667991B46F
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 03:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDEB6B22BEA
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57843FC01;
	Fri, 28 Jun 2024 01:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xt7IEcWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7780212E75
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536841; cv=none; b=MQJu5Ed65xlzPgHZqg1e9oqj07NYisSRVPOdefaOBLgMyxAKdOY7eGHx1ue1PJyP+NxTNE7Abka93Hr21dzAZLSgdSDzEfV6byFcd5Bbp6T39lOjVWcGn7iD5VeBns3QBK1S8ZAr3f5NMAYQPwEHB084hVXOXziszYq493N9vNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536841; c=relaxed/simple;
	bh=qJXIxi00JGv1u1BKGWLBWZ9NoQ0XPM5g1tXOS5qbSFs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WPGaR++vIIQJGZUmMUJHQOmsuBsaJVP5YGr0a0oTkc4aHFW3k96YplKdVlA2J2rQgZFgUOoM/7ALYtdKuDOpFd63G4SPmSQXV7eYfOgX8uB17tWVeZ2sz5tAXUWPCES1jUDvIfIKqWnUv8CzAG2oJuTAn2b5WckFEK6QJU88PXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xt7IEcWa; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-367339bd00aso24973f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 18:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719536838; x=1720141638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QHuNYRVa9MaRtF3OqiAH8vWk9W7tt+JmVEYKJVNFQi0=;
        b=Xt7IEcWa4ZOgpufQNUtIQALZudmR2T4IN9b2TsrGPvkCwP/Hy5ag87ksyWQMMkjCnT
         ytLk9l0HRP3ku1ruXW+RePhADzDP1ftYk+PlZ4jV2mvW/4bnA9xxgtan+Z+nfzX30F47
         EIHoSWQ4GiNByTR3fcyc1Xc2H8Ss72iPAoihxM1Fykz3Vy2uhz5ehv/hqjhkvM1TvMCh
         haw/f1jWG8JTSFW2S/KE1eONCw7hIlMBJn3n5jdyihgp67Shhkq+x0CIE81V9zrRW3km
         TMpEsI5yiJzoGhzVXqjvrzpGIp+di/IG+UJJ6mugPuG3VvK1pmEdT+rMhG7VhiUgZLMt
         9RjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719536838; x=1720141638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QHuNYRVa9MaRtF3OqiAH8vWk9W7tt+JmVEYKJVNFQi0=;
        b=QbztdJz0Pr2Vl3iwTkgSg0cWruKtRVi/uIPKzYU8PbeEIoQhd5wH0aBSZNW6z5v/Ef
         fV9VBUxoYmJnGqnDeA/s7ewpvt+VlM6YCOtExNbBMLkJPBrdvny1AhzOYDSWAZFRpSXp
         NGjID5MNAQYOJU24Li31eEmZcv+FmfeuqL38rZLgmt4PNGgRzFuvMobnaPx119jQn4PN
         mMedYFP/uk4nxkqsb1GJZKHg+STu1asglhnZ0+ox67HgXEGCYFhwjMAPmDw4vNuw/Yja
         LbfSXUw06kOz1YZbS8wlxFBozP+UiG+NeawYf/b6CmnLIvVGx7bkbVoKqmpWuEI+zP8P
         R9/A==
X-Forwarded-Encrypted: i=1; AJvYcCXcqNlKWN916T0zX1+X3pq+iSoTJcDPuLrU6pri9obkMXThEWkJh28HYjrduDrB9dwk8grvt6Iy9O8JCAKHZeOwhZBApTSbJDfwKg==
X-Gm-Message-State: AOJu0YymM3WOBXtpT7xa8cIShjwWinHHRGncVgmJD01nSXGVDLpMqp6g
	RltPBrbYVJnIT/+lILKO12ZhMmx5pFUvh3R1zFOcawYFvK9LC7eMMDO5audqGyA=
X-Google-Smtp-Source: AGHT+IF3udj+skoJjmirIovH98gez1HrbmQEfLVlULNbdY3lNe98fjyToQ/tPdf9UZvUlx/d+JRROw==
X-Received: by 2002:a5d:44c8:0:b0:362:4dc7:dc7b with SMTP id ffacd0b85a97d-366e965298amr9542604f8f.58.1719536837965;
        Thu, 27 Jun 2024 18:07:17 -0700 (PDT)
Received: from fuerta.Home ([2a02:c7c:7213:c700:2cd1:b0e8:abb:540])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af3c27dsm13075805e9.7.2024.06.27.18.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 18:07:17 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	alexey.klimov@linaro.org
Subject: [PATCH 1/7] ASoC: dt-bindings: qcom,sm8250: add qrb4210-rb2-sndcard
Date: Fri, 28 Jun 2024 02:07:09 +0100
Message-ID: <20240628010715.438471-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240628010715.438471-1-alexey.klimov@linaro.org>
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add adsp-backed soundcard compatible for QRB4210 RB2 platform,
which as of now looks fully compatible with SM8250.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index b2e15ebbd1bc..a92ac8501138 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -31,6 +31,7 @@ properties:
           - qcom,msm8916-qdsp6-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
+          - qcom,qrb4210-rb2-sndcard
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard
           - qcom,sc8280xp-sndcard
-- 
2.45.2


