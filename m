Return-Path: <devicetree+bounces-42532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4478F857AE3
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 12:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22191F22C3D
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7156A58207;
	Fri, 16 Feb 2024 11:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vHbYtuH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632858109
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708081438; cv=none; b=SSWFJ9eRJVacpezpmXvDkoFG3kAdYt0DoTCgwFo87rkKIhzI0ywF/Smi79XM/ceFomm54BCwdR2acIECwkIBVlXrZY3DewhdZaRJRdcrJZvB+3PxPzMF/HYTCuNz49iaWFwq2ZBG9wg8orviLH468ge5GL0DyT9mU69AUndBQTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708081438; c=relaxed/simple;
	bh=7rJgqOrASH1+9XrvkT4uAGIQBP7+drYr4P1tenEnLrU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EkG4I7GdY9HHas/e/N7LSwl/Sy+qehidqUKbBmyiAhdef88ruC0LElrsjBspmOQpp3m/slhwESaskWZJXX8F+5jStIKAJz59Ne/i1QNWTifNPiwCbsh4UqXRWNHgVazIG9yV6MvMmMLIcJwgFsRBIzQBjOFs17z+f0hYY8oGZ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vHbYtuH9; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-41241f64c6bso3883285e9.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 03:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708081434; x=1708686234; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3p79qEtfp2ZjIJ+XTjXE+1hnr3OUwv786b7yeYiOaw=;
        b=vHbYtuH9FeDfiEFVS+hHfrp3/Mw1yXUwy33R1nb441voux464wagNysJABoEZS77bg
         kEBkzIGjGg41AV1OfnRVwAiaoRpOBn/uYUQR6+kVX2Si1CArrldRTEKVqpItaoMJPqjt
         uLsMfFbxe4TXnRxINcHX6UgOewWYzS+XNzLab1Jih53y9Z048mHHIZYD7tHow6cdQDLC
         QLKkydlBsTMJe2Z8FAzJthp3J3ZLh5f5qMP1PK0LmOmFRrztaVOJkBS9CCG7f0sF7Ods
         YQYnzIeWFUFM/p/C0bq646KtQw/u4j2In7BOTRBBn61V5VWzXqLjybjYPMRLVDsqT+4z
         G6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708081434; x=1708686234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3p79qEtfp2ZjIJ+XTjXE+1hnr3OUwv786b7yeYiOaw=;
        b=COlj/Zzh+0UUvnGu8t9eusEKyGRYeOO4sC94nr/qVL2Xikdya9mRbC/gC1bYk0l+If
         NXv9HuzdcE3ZBBhS6cdYBaEJnqLT24kN+WlrhM1vBEsezE99iBSi8/EBoywE+U6ox3o9
         2VvfYjyRddytjaVO6DTzi+iRW7i1Ukf1FxzcRwcfvQOJdVCz/H5uYamZXWqA6uV7QeKV
         PO4pM9Wssu8gU1vIRvg4NrMuUpGglT6svVPYF5RK5a9MGhIZS7FcO54Q2rbymAYKGFg0
         Hnta5/fTsr2Eb6QltA+Gclx7G+Md7OvYkxrivFBEfkoSp0va8sccRdGwRIVpAiQzmLCw
         LjTg==
X-Forwarded-Encrypted: i=1; AJvYcCVv/QBPCxOwPoVhzN2asWCmiksQOAkoeMObLHiytAmWmLhUvGNOYIr8n3I6NPJ0+Nw+IkqCfjjf3JsmDBKPZy0o3058EUi4whFXEQ==
X-Gm-Message-State: AOJu0Yyk+IgDJb8BcznES28+HUGKB7DQhtpqrXZLY5HswUjmYdoD7kGd
	O8iCnR585rH2cttam3Zl/bqY1lqbGGjD39I4AaICrDe242+pOVk/P8P7kijyxnY=
X-Google-Smtp-Source: AGHT+IGBdNL8KeMG/RG+D3xrVj+pgMbj754F04oy4yi1RpZ6V0RRLQa/LsZkNh4S2dCingJr9VMEQQ==
X-Received: by 2002:a05:600c:198f:b0:40f:ddc8:f804 with SMTP id t15-20020a05600c198f00b0040fddc8f804mr3001191wmq.17.1708081434548;
        Fri, 16 Feb 2024 03:03:54 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r2-20020a05600c35c200b004123b049f86sm1993174wmq.37.2024.02.16.03.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:03:54 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 16 Feb 2024 12:03:48 +0100
Subject: [PATCH v3 1/7] dt-bindings: display/msm/gmu: Document Adreno 750
 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-topic-sm8650-gpu-v3-1-eb1f4b86d8d3@linaro.org>
References: <20240216-topic-sm8650-gpu-v3-0-eb1f4b86d8d3@linaro.org>
In-Reply-To: <20240216-topic-sm8650-gpu-v3-0-eb1f4b86d8d3@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=852;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7rJgqOrASH1+9XrvkT4uAGIQBP7+drYr4P1tenEnLrU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlz0EVKmuMnelD+jPOCbPUzTsHxLthOrLTOHgLjSTa
 xPs9FyKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZc9BFQAKCRB33NvayMhJ0UhfD/
 oDuWdTNYoa15dCO3oA5HvDkWIEClqPqQZHvjaUyI02QCzOQZbQS7T7thHZbOFed88h2oi6jIbXWzgV
 KxWH7h8S+J7gQL4u5XD9bhu5Vcgt4wqA+DABnmw2rxLW3UrwVUkiPnnG95WLAheF81uTwWkWjFfgLX
 y1XQ7DMFEmSUgEubL7Q3WAyicXwmHy26yaqP/Et0eGr7vrRSPwLJuPkXp4JNSZ5itASbwbEItH8PVu
 SncEDTCd8qFewiyGcpenZiCcy/1KNythe/3892+ASMfBHrU3bfAxkHGusUoG75tHoxkfnA+XpjIx4j
 YbIjYFCotP4yelFiFH0ll2Jy4japCWmcRYNg9bjZK7cRqXUjuIT1CPtZYllK4RC8JWY5Kg4PxPNFZP
 kTHo3d3pIPQs1EfRodWBPD3BOM0Vir6ynTmSchUKvskzoG4RUtPx2iu44CEvZ1LWVoe4tj44QQnNtA
 bs+omtQ3D3SkHCQ/04RN+kLEZtBIXrSzdNOV4eLdvPN6yzDvXq0GpNVUIVAJeTrueIS1tDhmghfzLi
 F9PuzzDWB+BSPKDkfkYCK6dWICYAjdb02YJuuC1zuN5gBd8r+dBhyuBMRgOBFd2YjERvpVuX9GU5Fd
 SD5S4DilqNQ8hWaCpNhf6b3skPzzzmSq5FTK+/cGKy8Tn2KWa4l+597zsTdQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Adreno 750 GMU found on the SM8650 platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index 4e1c25b42908..b3837368a260 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -224,6 +224,7 @@ allOf:
             enum:
               - qcom,adreno-gmu-730.1
               - qcom,adreno-gmu-740.1
+              - qcom,adreno-gmu-750.1
     then:
       properties:
         reg:

-- 
2.34.1


