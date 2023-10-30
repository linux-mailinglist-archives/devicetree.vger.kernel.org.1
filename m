Return-Path: <devicetree+bounces-12843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8857DB841
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97808281458
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4014220FD;
	Mon, 30 Oct 2023 10:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tYMGk+04"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC36ED29A
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:36:53 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258FFE1
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:52 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-508126afb9bso5961938e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698662210; x=1699267010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BQUtMmhP8dK4X8gyF58pOXTNlNmCqs0e9rkXe7+J4ZQ=;
        b=tYMGk+04AsffpInG91hCw7Y/XO8cSr7cA0r30paogsY9GPrxQ0x3YLTDh5/5KmKQlO
         57mkfyLvXFbjsLJaQciUPv2Qh3Pc0X5IbNwZbrGgUMtBUe8Rlj/tL0jH5VcXnDGVbKYU
         f7bCYTzF23wlqcVhIqDjxorUaTjEhwnsqgJ++E422RyXJMtao+U1l8ByeXeAlYa7kVMw
         v/MH3iti99Liq+zp/vJjDqnOcFL+iwSMT3yHcFQF3iTsaUEVG/4GN9WqtANe0tFCB3ws
         XrRh0wWxJdfZhU39H+rVnt03wg8O5GrfNW/OZlim+NExnI2Z11z8yl87JVLqWnN6l7hQ
         Hggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698662210; x=1699267010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BQUtMmhP8dK4X8gyF58pOXTNlNmCqs0e9rkXe7+J4ZQ=;
        b=YfdmlMIOZqGHB1lPUI3HIw+S3cjUjpM3qtvzxn9WqEle49GOUDjkS9weaxw8O4t8l8
         3A8cIagZlLF/8nfYghp33KtJAyI+BzFiHqf8yDD4fZqayRUlAW/VdoPyxQafusAZZBz8
         QZ807NqTq/H3IU1LREAamu7eG2ldX6RUVzncoTg8U+1R0spD2e04cCQDrwNPxxNcGygs
         88M2KUbmVBfFgxJ+ARgCav/JiZ113BHGUc7GQVY/Vc2ILDU2nFDFQdtiTOEfV0S9zBiT
         Rzz0DHujphgiDRjw1XpPhUivf4M8kr2En01+0GDxNpvGI0SeRceHi/lZ60s5sTYEt/Ki
         9HNA==
X-Gm-Message-State: AOJu0Yxq+6dwqC1CRK7ZGoDC3FtblYVYvcJtT6kyYOzczniddSA6Zyvc
	7LyM1BqfLIPAhEytWIBYLmoKSA==
X-Google-Smtp-Source: AGHT+IHfXwpP2Ap37baVspJyHp0mJ1Xts9KTo2NI4MBOzgvTKkzyrjYYn9sVwp8m+CprIkiqj1KTsA==
X-Received: by 2002:a05:6512:1081:b0:500:daf6:3898 with SMTP id j1-20020a056512108100b00500daf63898mr7278395lfg.26.1698662210356;
        Mon, 30 Oct 2023 03:36:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c458500b004060f0a0fd5sm8783209wmo.13.2023.10.30.03.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 03:36:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 11:36:28 +0100
Subject: [PATCH v2 6/8] drm/msm: mdss: add support for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-mdss-v2-6-43f1887c82b8@linaro.org>
References: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=859;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=optkb8hrjPq+qQd/lfPAxbzCpU2oz8b/um1vODBfZNk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP4c4OkV6WLFVMCM8tqrTGgQhQNBWAphAL/cwfIQt
 vYYkR4iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT+HOAAKCRB33NvayMhJ0Sx0EA
 CIp76pTITqgi3wDKcfBUVjawQmBU0/xXhBqhZJ7sAh85xtmsGbq2/gBMTHrZjYbHjWme+yArLaq43j
 t/nDhz8d15VtIrspB+9LCvys5122PjjuX156COziR8hXhf+06N/oyikJ8H91PUu8gyhbaVoNjtjg6/
 L2w5/6Z77s3KZTSea6mWhrtzhu/YpZZTZBxLC/Og/G6jnsDO+3cyrzR1tSIi7j4xGy5A5qa+Eos7jq
 hLKMZJACH0+WWomVmI8K4SWk6zvt1gJWF/WfKmq6/BwSGZkTT3zNbvRB/VH3IIy8j6ZEbt+3ZcJGl9
 s9HXU/R6/tgHxoqNvLqi625JyQblU6TO1TInXRNXzaRPF51OcqC+zIahgmtw33crkyQ45SyVLId/JE
 YjfmHsV1SxDVIhGsEzW5FnRj25u4P88Ig0Jlfc/f4MT4/uLZc9DwMH2eywyFrbpJwiJNs5XbmIn8MK
 J7aeirEe6k0aM6013XgoHMi/HjZXZTI8dnpdrjIf9KHD2r7tx/9ojh/sgEDVf4DKi3DynfPIZhrWww
 0UIPW2gs1s2ApQqZR/PPV1gh/F3bTVUUcqjvyP6bws0ILOLwjFes3mfARC/R5TYK9S8YSaysRPhRIs
 UquLdh5ZrYw/z/JLrihh6nUrj3m+1OGDeplgyvTP2BcTqTlAhxOQVzOXKDSw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add Mobile Display Subsystem (MDSS) support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 6865db1e3ce8..33947a2e313c 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -621,6 +621,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8450-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8550-mdss", .data = &sm8550_data },
+	{ .compatible = "qcom,sm8650-mdss", .data = &sm8550_data},
 	{}
 };
 MODULE_DEVICE_TABLE(of, mdss_dt_match);

-- 
2.34.1


