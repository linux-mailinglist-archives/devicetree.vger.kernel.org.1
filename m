Return-Path: <devicetree+bounces-63323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B54E8B465B
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 14:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 366001C22406
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 12:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46C94DA15;
	Sat, 27 Apr 2024 12:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tdg6OiUH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B99482D8
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714220439; cv=none; b=fAsAQQZvM1SnSqlDd+NdbxyiJzaZlB+l9aVqrH7XFemC0ojMezMcHRqmtWQu4AzpYeU5Y+4f0J9Z1iCpM4Te26DuH3/erVDixA6dAuSWbps3zID1nd4qk8a0Mw3K2OfRamihhSQISuAuR24req/xXtBJNHwx78EOoJDhJCCQ2+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714220439; c=relaxed/simple;
	bh=zPEz5eaWVgQgbqatj3leGu+AkVdKySTplLraAGVpzYw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rEDY2cZYDlUE6bGA/4r38ZU/3Y5P3asXSsjLHkV4gDTlUqiqbg5Fb5gxELmG7XY6q1lupKDmiYzSAoDmOC+metHUKDdG5pl6BbXrjp+myLd5YTAI5kglVTmef1SLhjl3kxCPvBTWZFnoO5J7h7lBt8vaJpiVbIQeiAZ5Ud9Yxig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tdg6OiUH; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-571c22d9de4so4156366a12.3
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 05:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714220436; x=1714825236; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mSQsBtgmsU3uYBJujpqJQaj4SAUUA8XK3YqsMHQFkf8=;
        b=Tdg6OiUHqigO0l8CWrJqhlqjU9AKnhM7wKGZOhlogJfdyKcF6dDwTplw+8s7ol6lcU
         shQHSh3KqJib5GRGkq850yGYJiXUrdwD+9ww3snYa7fpC5sFU7Hrr/KF43F11coounS8
         0UhXG4gQvUQ03rGs40gUe68dm2RZ2ZqhNWdoblSbnZYevuRcOQyvyPyZQjBWA+JWOQ17
         3O/QfNFd9oXCPordPphaEBqBaw6jimRDT37THCTSaS4Tkwdb4jJJdGSg56zjmuY9F2fC
         B7sYZPKW5rYJQClxjOzQRXzVfdUKE5Ddrw1z+YIfR7mDGf4E5nCK90wM11pkfRgr1qa9
         vhCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714220436; x=1714825236;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSQsBtgmsU3uYBJujpqJQaj4SAUUA8XK3YqsMHQFkf8=;
        b=pSrVFGcQsTQYLKWIvYSMqz0HYXKbT3pYkTuvxmfXJkqYhTZOfRsqOksyHaht4w08OA
         0I1Uw77hOZQIeXE5IOTjbX0w10fDXMFZy6RuiS2b9aI4QCEPy9+SpC2ATuRF3Iazk3fu
         rAE7VEKQ2puOx+wUFIJWwvdz/7mppJazXMsWV7zvPQoYtMuDVtQh1EVtKGcRovaS5s2W
         xNz9kbpfsVQmjNnnJDyjEgirVmhVUIELEmdbkZOaKoLzZ55bC0QVHfXRD+vxO0Pnbhla
         8Af4KBeUey2v8Cz3lrywjmStz19ygM9qFpTqtvh1s/cpaWf8vVRfgE5w9PYudXdOGkM3
         qT5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWAl6XoI0DaJu1bben1c/Ns40wdtRVlq7251ogDJkAuXeRPiWDmMi6nv4Bkef2BdmcnmnizhO4sSQ/eN6aFzO1SnlBMEyEfRKHbNQ==
X-Gm-Message-State: AOJu0YwLvC2KGXrROotuGesgUSMUJ+3NizjggiL8b4Gx9IO/lSetWRHf
	B4zfuOltoJx7q/r+ispJ9GU34/p7arlhNazBOTjj2hiMy1N4UxeLvSNTpJ9TFzw=
X-Google-Smtp-Source: AGHT+IFz/JWwE6INIIuIxvGtKgZC7SjUWshhyGl4RxSGCf+fd1pANSyuUSznrF5FUQHUkJp1OQDfIg==
X-Received: by 2002:a17:906:b807:b0:a58:72a6:c5a3 with SMTP id dv7-20020a170906b80700b00a5872a6c5a3mr3493339ejb.51.1714220435855;
        Sat, 27 Apr 2024 05:20:35 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a11-20020a1709065f8b00b00a58ee439c39sm210374eju.217.2024.04.27.05.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Apr 2024 05:20:35 -0700 (PDT)
Message-ID: <63e34870-fb01-4769-aca9-8ac6843c12b3@linaro.org>
Date: Sat, 27 Apr 2024 14:20:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] drm/msm: Add MSM_PARAM_RAYTRACING uapi
To: Connor Abbott <cwabbott0@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jun Nie <jun.nie@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com>
 <20240426-a750-raytracing-v2-5-562ac9866d63@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240426-a750-raytracing-v2-5-562ac9866d63@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26.04.2024 8:34 PM, Connor Abbott wrote:
> Expose the value of the software fuse to userspace.
> 
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_gpu.c | 3 +++
>  include/uapi/drm/msm_drm.h              | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> index 074fb498706f..99ad651857b2 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> @@ -376,6 +376,9 @@ int adreno_get_param(struct msm_gpu *gpu, struct msm_file_private *ctx,
>  	case MSM_PARAM_HIGHEST_BANK_BIT:
>  		*value = adreno_gpu->ubwc_config.highest_bank_bit;
>  		return 0;
> +	case MSM_PARAM_RAYTRACING:
> +		*value = adreno_gpu->has_ray_tracing;
> +		return 0;

I'd personally go with MSM_PARAM_FEATURES as a u64 bitmap, but it's
not me that'll have to deal with this on the userland side, so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

