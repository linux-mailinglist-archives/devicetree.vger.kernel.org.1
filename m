Return-Path: <devicetree+bounces-11624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 908617D63FD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30C39B2102A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E611A70A;
	Wed, 25 Oct 2023 07:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F41nMFxQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797E818B08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:49:51 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C83D47
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:49:49 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d9beb865a40so4853454276.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698220189; x=1698824989; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1mPZL+BmecJLI1raShNlD/spbj5/yWrHF1o5a2NHN48=;
        b=F41nMFxQCLRlb1zFJ9QolQyWwfV78A4YMpbFgLf4BJSWaOTwhcRCxQ+E9xw3pmjnm1
         TfoKNWZV1SHjsDM9B/iHumGYe1gQqZlT5G8RXi02qOJKhCwALBjeqY7rl3Ih+XHoaCRp
         C0Lkix7vcmf3LEeuTqW7TTHymsnaKANs5D6IvNmb0nwe3lPAMkScdC106wH1nGqNjNan
         ovabrbGT1pv58aToeGO1d8CSFnGFFWNz0bd52Y7rdkTvi3R3Ao8qr4ZhjfhCymtUZjMt
         VxFZQ0B2ZWx9kcj/Q2bRK6S91RA3dFL9PO4yQcNkc6C7A16ZyCLNkUyA0j+5CPLHU49p
         LRzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698220189; x=1698824989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mPZL+BmecJLI1raShNlD/spbj5/yWrHF1o5a2NHN48=;
        b=W5OPblN5/c5MJL9R6IHQFYFRkurmxnLV4jhlOtmCjVu7h6nsR5SY9BJseTsGqNgNnW
         WoJsxCWItvUkNNUQOlA7KPkLGtTV2Y45aViD8SW0jJzaMUWWCVCl3dvkwaYUUHys1GlZ
         vuuMWQJn8r//STWOzeNK+nZ1L1vOyJh76vgHZpcUgdZTvcMsEWQKmxkxnyr1kj4/oCsJ
         RUsRyf2GHY9Dd1oNtqoopP+NIF1E/dXnwzZ22z8TaiGrcprSIyd5BneJCLKykqL2dtaS
         3mNGOgSIgIf+uC3vpgCWKpHoTNrfoTdBgr76ObeZn3r2noOtT7N93LzYmfGiqq/2Q4TK
         gETQ==
X-Gm-Message-State: AOJu0YzqDDw/bYjtI5xTR7kMHrmhlgiv5PvvWvMbQNRfW4nIQ1t0zMTe
	nfZWWTjxOKORJAI2UGEC4oR+DMs+TSHqS9uka3SypA==
X-Google-Smtp-Source: AGHT+IFkibsCTPletgNIKgRFCG8zEbKtKhuMRGWu9dJ/Z2gpcZTNPiloV3NsJSBSfNWJPl9BX6pmshk2fW6iQLs8Y18=
X-Received: by 2002:a25:dc04:0:b0:da0:4576:3689 with SMTP id
 y4-20020a25dc04000000b00da045763689mr3713196ybe.25.1698220189116; Wed, 25 Oct
 2023 00:49:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org> <20231025-topic-sm8650-upstream-mdss-v1-6-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-6-bb219b8c7a51@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 10:49:38 +0300
Message-ID: <CAA8EJpqSuX=BL3x7p3SUaRQ8JLtVOQNM4Cf6LojYKV66OyOJqA@mail.gmail.com>
Subject: Re: [PATCH 6/8] drm/msm: mdss: add support for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Marek <jonathan@marek.ca>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add Mobile Display Subsystem (MDSS) support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index 6865db1e3ce8..33947a2e313c 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -621,6 +621,7 @@ static const struct of_device_id mdss_dt_match[] = {
>         { .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },
>         { .compatible = "qcom,sm8450-mdss", .data = &sm8250_data },
>         { .compatible = "qcom,sm8550-mdss", .data = &sm8550_data },
> +       { .compatible = "qcom,sm8650-mdss", .data = &sm8550_data},
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, mdss_dt_match);
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

