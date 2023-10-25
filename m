Return-Path: <devicetree+bounces-11609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9184B7D637C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D419281C9E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E586B1A585;
	Wed, 25 Oct 2023 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jDxgooMv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8813E1944F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:37:33 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88E7B172E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:16 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40836ea8cbaso39445505e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219315; x=1698824115; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fFtoAc6Ru7Qp07nSAhUXpkXw+KE3l91fE8GqLwFTz4=;
        b=jDxgooMvcEW0C5tfdy42KHNCYl1+KuokNMUbB4Ymk+6XxlZteIcjv9JsLBqN/c4aWy
         9RKcrXNkcwOQLvf17aLnGO0jteeJvqwDqLUTfcW2iC6RQ0YI7IkzWQYlguCzEIeGoyBl
         O6+m5sCslIogsXq4YACN47nT7Ah8S7/xCmmWQi7MgoonmFVvV2iHUMyfcoq9vUHOs3D/
         70YH0/A4o8ULiLEMyCAqVGRjPGE3GYXqeM2VVDPotKGB3e0lG1iHjgelsJLTBsysGI6P
         efE4zr3rZoS5k8lKuXQpftgQLppULRhONM+9dEl5oEf55Hkk+d2AiuruRZIkr0oX8Ubu
         atFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219315; x=1698824115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3fFtoAc6Ru7Qp07nSAhUXpkXw+KE3l91fE8GqLwFTz4=;
        b=w8DPSr5oPjk0RqLSpizO4KLYgMe38WcS6QEeiuy6AX5wFGC/aOCBimT/mEbZGYkCoZ
         BLqJcETa6AvDvTieXOKKu92FvQPrZfQOTeAVVsdZ3qhsKUYyWadBie2NrNjdQBwZWY+u
         bJ9zlQsbgqgxu+WvvOdXbymFq2lakMGXY7F+R2s16UwGZB7tz5yUpYlljmH7uxNn1u4a
         vvSzV6g9/i3/iX9JnhEEbL1oGqbL7AaFEX6yFQoop8mo7KD8pgoTkKkDBc9rlmxbj98/
         SFLWZfy+n7ZgD1QLPFZIQsy0fsyAxyqqsR39+p8byhgfFHpdCCFz33q06f0mlvfkiHqQ
         0YpA==
X-Gm-Message-State: AOJu0YyakXGLqwsZJmumVAAKi9jnARQeRsD959KcT1c3N0X+8k702Ogf
	j1stgmZeV+tT6CfFilvLi3NS/w==
X-Google-Smtp-Source: AGHT+IFOJmsVlBgqDuVM7cZUkC1Qc78O56fKpNAsMjlkaX/ns5d9NTUBTm3yNqsbG9uVrOoj5ZA8bg==
X-Received: by 2002:adf:f346:0:b0:32d:bc6e:7f0d with SMTP id e6-20020adff346000000b0032dbc6e7f0dmr9370311wrp.18.1698219314768;
        Wed, 25 Oct 2023 00:35:14 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d60d2000000b003248a490e3asm11449058wrt.39.2023.10.25.00.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:04 +0200
Subject: [PATCH 6/8] drm/msm: mdss: add support for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-mdss-v1-6-bb219b8c7a51@linaro.org>
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=798;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zrLyLHxFw562jEHuGgaIFKv3/ZZayt+rroyJbKldfGQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUnn+VYAawtEoLBs6jAfc7PeGayc71Cx9fxTW+I
 TrFtRReJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFJwAKCRB33NvayMhJ0U/6D/
 0T4blsbsX4VW4wfXWNRfRmOepPALpcWhL0yGQYy28pnluPYrDJEEQJKAEBotJ5nJzS1qw0OaZ30Cam
 wS0O8MKgSdcN1SlX/8nQhTNHe8fHeDPOAmZ9b63cI3M0je4bgUgj8urwzKDjx/fTecVhI5k8NEgh20
 kR2DsFVSq44pXe8CWwzTxd01ykLxtSPw3ebKjID1yu5JxE0sW2w3I+UeOk1UwibG7PA2svtkTnLvdK
 7s8xSOaCbn+QN5ne0CoK8aDD1bd6D6HyHwHTGsNvOtsTeCjMpAgfZwRyFynqh1TYhmzoiRJccmYKJP
 M6Mk+Cj0qIL9t+ruqiqX54HK8zGH7oRmQObJn7b4BEDXLXI5IAbn68d86AQSBQcxfl6jovpvNqK76w
 6zmR+OAsflGlQ4BubdgD1hdqYaR4B3+2ShXRvdptF5RV7LDvHCvgaLMf4G/74yzfsuhuuOPFpP76X4
 WEHjyC6HGQhsZSA2XzmJQkG/5LERVn9W+SLpYSQpJdqzPE609bRBoHLhneF17H9p3BKCMZgZYO9Prn
 NcE5tIaaK+IozI6Kt0D+SSgejIph/YXzKmirs0FLmy+6zQNJClCES3thCUfxDOOpuYR4soGE3esbOX
 MJFVj8yR3aMbV9C1JJMSk4XorYj3Zkl8N/g9qcf9Iz4VgGLcmao5RBgQ+UJQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add Mobile Display Subsystem (MDSS) support for the SM8650 platform.

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


