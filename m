Return-Path: <devicetree+bounces-125318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF7D9DB8B0
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7DC9164B6B
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318161A9B30;
	Thu, 28 Nov 2024 13:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="feihFoWl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C20146019
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800618; cv=none; b=q9IfcWYnunCyxTXy2znU9YHnoZVfmPD62dlAiHppevchFnYMRgUwY/6yJeSQCQXRUNh2D6m8+vCtQao2EciuT91LSvYnXdPd1+XaZGUC++VmdZqk0fCeAb3jbj+UMXolip18pLHOlgVMa7FKFV0jXhuuIP6k5deaegixgxMeDFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800618; c=relaxed/simple;
	bh=UkRWDGIYcosnptVfDrpixA3gL5nnTPr9/n7pCEn4IMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S+f1u++93vIVC6Y/4IdWZh3P1+RfnCEhtrmMlVGgUU2Mn7aa17mQFPhMc59R7UNy/cgXYzjF8VEYo1J6iDgQuxfmrfbTTQXxaJTqWtDEeTFLqX6JvY9LScfiBtm307Kcc6BwFuN4M/tEsV/auQMa8CN9ItYky2oXLZQXLn6uV4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=feihFoWl; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de771c5ebso881254e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800614; x=1733405414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yCjaLIoqKd3bBOokmeosaZwBTg8Xdv4t4ZzkEjKsEdE=;
        b=feihFoWlkZbvHRGyaB4V5GHjqP5rN4T7mfQ6Fo6CKLHbCNqmVomK7fNKtiCJNlTMb8
         ajuEE9E+j2dvsLgLtlu/8ErSOk+tx96/qe+j2NmCDN1dCH/P9KZJFEfW9IjMegnUouX+
         oA0gFb0SxtMIBSsV6Xjkvf3/GYRvhDhjCPWp+1oxH3PQExAQ1c/A8EdtePVeopsfKRTz
         LBEktSyLFsqbbuedL2mqGbCTbJnKRZNeAEfUNkzZllLK6cxvLMfPq21DnUdMBtM7bRjr
         lJ7lNLsPZE+jmvg7UpZYIQLJalD4WU/eBA8eoquIVJksL5cQaSg7BzlSuG/WuWR5rEcA
         PywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800614; x=1733405414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yCjaLIoqKd3bBOokmeosaZwBTg8Xdv4t4ZzkEjKsEdE=;
        b=XYoeWNRDIPN2nCdKpMv6I6OZFa5PlkDK28FrS1ZAeyaOCPECDTY5z37ZMgN/t0+70t
         ECzlAa5E3cku85FybscPVfn5/3tlGlu6xXyS/b3GQMqZJJR5qMNdDvwVk1FzyrQ8pDYG
         5up85PxRl0VN+Yw8AOvRS2uEXVNpQH6TXiNSwTmmS9wVIee0YsaRUGDjG0Iy/3ZLXzQm
         RarbqA+1YE114ciGaGmT7nh+I9VZfNdv9G0w0AgUCYo226+dx/g3EZDPCgxxvTnNcBsv
         ZqLL1RSo5Ofvb5rwEmVDi206j1H3tijGeaOLLrgHFvITzWf8/GyQmxrp1SWTMc41M5aP
         1dwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwgUSPvE9+PlDJHSQO4RXcM02XUvU54tDQwd3I0TCNygbgxq0UJVD+EHtyHW2ervmM+HkD09TK0iWG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgek5K+jGi7JNpEZkDiNmM0xGp6kFg8ipsvt6bqxabT4ZQma5P
	0yyBbnOlWzf6JmT6t7r7n2YrEr123GHQg5pk2oZZoNis3BXFluvuRXHB+xyeFYY=
X-Gm-Gg: ASbGnctaS63b9GEsYYLdr7sli7d8BIIVmKrXL9280ccH7hLkvIcOBFungcMWlauM6S9
	Fp09xTHXaJJFVW6xB5pZ00YTSMn7A8oh2mAJbZ3t+sHzDulWcARQOx/qVDM2eeZ14NZG3kKqebm
	ZT8G7jHk5+0PBWsWtD2YkfXqZoaCcAtliZMI8EoT+Nlc5X02O8sJosflHdqB/WOY2NaJhvfFRq1
	lY0qTk1VvHA8EW3d7gyQSGQaqIUVcwAS6YwpyFrF/ZtXakinEjJulrLGCCn9j6UB2kkcWUdqfMX
	MmnzJtj5foq6qaItq8r7knOKo80hKA==
X-Google-Smtp-Source: AGHT+IExPmce5P4ZT632z2IC0da+T/+lWJvFnMY6sShZcO7cz0kH9x97oQAlFQTrdXw86Rylra8OBQ==
X-Received: by 2002:a05:6512:238a:b0:53d:cb7e:2251 with SMTP id 2adb3069b0e04-53df010471fmr3419369e87.36.1732800614564;
        Thu, 28 Nov 2024 05:30:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64310d2sm178615e87.48.2024.11.28.05.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:30:13 -0800 (PST)
Date: Thu, 28 Nov 2024 15:30:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 5/7] drm/msm: adreno: enable GMU bandwidth for A740
 and A750
Message-ID: <lseuso7qmbgtt36jrpzipip2e5m6r4wbi4ixxss5mi6ssi3thx@dzt5tlsjbyu7>
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-5-81d60c10fb73@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-topic-sm8x50-gpu-bw-vote-v3-5-81d60c10fb73@linaro.org>

On Thu, Nov 28, 2024 at 11:25:45AM +0100, Neil Armstrong wrote:
> Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
> is in place, declare the Bus Control Modules (BCMs) and the
> corresponding parameters in the GPU info struct and add the
> GMU_BW_VOTE feature bit to enable it.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

