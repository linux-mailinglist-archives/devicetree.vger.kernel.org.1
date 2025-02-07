Return-Path: <devicetree+bounces-144045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 703DAA2C99E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 18:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BB4D3AC4A1
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1284519D898;
	Fri,  7 Feb 2025 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pldazPaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD1194A53
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 16:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738947512; cv=none; b=s5QMAh/e+R4K+RFt8SfviBsSScxRHWy0L+Z8vhYYbP3AemX2KUW6a6tN6JfU6PSI7dJnQC+ZHjK8/Oq3rdF0esXZFpzzIGqI0iVAE9ZlqW2kD2R1bkRVHsl2H7KWIFNVk8snaURs4xkTQrKyrsfv2YcYjVKHboITd0iVY8S/9mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738947512; c=relaxed/simple;
	bh=UAyzLXl206Hka+nZ4mitYd2YFgx9SzlgPOsj3Cg2FRM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rMfAr+n0I/OJVs4TEKS/tzcLjd3y2kcq5SWr7R+lYtOGfpZyKGJRAYGSQpncDUgaV1Wk0Dc7uuyhPveAJtFHDDfxvWftRBMcyqlrI/8W/5/4kjaj53pZOqZfLC3h3VnONEKNWC5S3bWDVtSm2147jvHWrggFKCQKD83+3+ppBss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pldazPaA; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f6ca1a8aa6so12556417b3.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 08:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738947509; x=1739552309; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=27oFQYf91Dloj6jyxwrUr7dxmGXERcb1UW6tbtKiP8g=;
        b=pldazPaAMyB8lgcjEoooGdIFoK6DMROt6eFhQiCjuQKulCys/HT/OFnIvkIee2qdT7
         djAlhX+1eIpGDl9BX7onjSw09ZxJESTShdtM+jiosGPh1331VknIITKRMzLpSOX0fPgV
         XFQbO3V10XxEX111yDAYlHo7n4LXBJW81K4yYVQX0iNMxcnMV8ef0xUNWYs9JY5xTeIw
         q8im/W5ufTwqBBCk8tcUHLgaSV9Wl0OYYxnh8vg6dlaylwhG8kkai3JnEFwIh6+HicuH
         4tn7U2KwAIXDkpQ21ibaVp8+6idFPMW/ism7sAbIwj6XTAf2+GGLvHKilxuutTv6XEbw
         VBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738947509; x=1739552309;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=27oFQYf91Dloj6jyxwrUr7dxmGXERcb1UW6tbtKiP8g=;
        b=NbQhrzni9LonZPE5vziNk9qlBAPOMxSD5g/dBqI1pSVQY5nsNMQz/rMQF4JY0tRjdK
         8MDJh/06+kDh9sICkz9GByhFDH48nj2btK6vI6xrX746i05lCfwkkrEHndYB4ttj/TZe
         nxqM45VQHrgt86hhsV/Zrok7bTle1qGcbY76OUaYafkHLDFUy4tHG8+zDVbYa9LJJgsN
         Ks0I44/tpATgO6t38lBBXqPcM+4hntNQzNe37Qc+od6H8kZeA0vKuQ4fLYS7pkglinpW
         IcJw04B9bbu8/YunuBwyF1dYQxbVWpD4EyAv1M80SL7dmsguSH9m+7p31LZy2N62s/UZ
         TbvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtMVye57qZwCErF+cSoKpDUEqjsEHFRO5e8PPGR3eAgv6PijjhB0ezbgw9Poww9lyerwz4TdiqKDNX@vger.kernel.org
X-Gm-Message-State: AOJu0YxuDVsmfq5MI/odcjfTWh/1FHmSPFvU7PKU+HGFFh6lCGl4HMtt
	hWcr/01HGAq5PFhoVuoG+RKQlINWOsoIlecF5+IH2/AqZot3U5en1qCbyDK++V86sfsI9xHhwfL
	FHa+X5Ac6F0kJntr9mM2zlDjZ+bkXIvxI1qheOA==
X-Gm-Gg: ASbGncsUuqXwZ3YLyckxYd5dJihFH4DwSkvAXxtNrGl/SzYWTZxMH6O7wParb6LNCBP
	i4b1Tzo8AwsyAqlKFptoUy+8/ita0p4gj2o4+pVKu6jGMriyokFKDjlu/P61tuqqGEF0DQra2BA
	==
X-Google-Smtp-Source: AGHT+IEu4Hyrf15nRFOfu+/0wIU/F0sEzYBhEg4wPUS8216Hy1mszoPNBAKnenIT6vKlzaVZSszBdgs4MWDyXS4Mfe8=
X-Received: by 2002:a05:690c:350f:b0:6ef:8296:359d with SMTP id
 00721157ae682-6f9b28ceac3mr39041717b3.22.1738947508975; Fri, 07 Feb 2025
 08:58:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org>
 <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-2-852b1d6aee46@linaro.org>
In-Reply-To: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-2-852b1d6aee46@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 7 Feb 2025 18:58:21 +0200
X-Gm-Features: AWEUYZmBPR-J1PCz9MhgEjUk9CeBfh40TL1EHs1HVsEe3GRaQwWTHGmL1C1gm5Q
Message-ID: <CAA8EJpoLnHfOEH81U=fKuL1vOvZss8+zYRFstXp0JZLQy2OX+Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: display: qcom,sm8650-mdss: only document
 the mdp0-mem interconnect path
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Feb 2025 at 12:50, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The mdp1-mem is not supported on the SM8650 SoCs, so only support a single
> mdp0-mem interconnect entry.

No, please add cpu-cfg interconnect instead.

>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
> index 24cece1e888bd35f169dc3764966685de4b6da1d..cee581513c519924712c7e0fc055099f886d0a99 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
> @@ -29,10 +29,10 @@ properties:
>      maxItems: 1
>
>    interconnects:
> -    maxItems: 2
> +    maxItems: 1
>
>    interconnect-names:
> -    maxItems: 2
> +    maxItems: 1
>
>  patternProperties:
>    "^display-controller@[0-9a-f]+$":
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

