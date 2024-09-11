Return-Path: <devicetree+bounces-101981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 054AD974FFB
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:44:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3919D1C223B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77129185B74;
	Wed, 11 Sep 2024 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zY0EqP5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC84F153820
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051438; cv=none; b=L7dBYyg1YiovK4tlLLThcfsebNFVVCpAppTi+l0ZsLNpWgpSE9VJS77R2sxAOIrFso3RvhEspOzw+wvgOqmDS6HLSAVNLTXPB6a6/qzsNc9sXzZXFiD0cMd4oMRPwagHyGGoSxawdFLK4mXmh88aYuex+6QqdIQUaFcs7OsKLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051438; c=relaxed/simple;
	bh=h/LBrWSpUs8DPI9U1+af2i3m6dozVC63fYk7NBtw7Tc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tgfXpzpYq6C7QsxEbVzHSR8jcoYy+IQWh8z8ksDZ+E0wogVjYQGE8m2Zg9CmbmlF70YszflGiLsUXEjNzejiRkfJ9hnafvA3lN5sqzmJXwA0UKmQ/tpjeOq2p7WlS9LnbxN58nmmRXTXQe+RaVLTkPKum2ZHe6KDSUDyLxGuBYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zY0EqP5S; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f75f116d11so48702811fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726051435; x=1726656235; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yEmg0mv3aZiw4epk0S/D8wOQJkCJdi8IprxOeJvP7ug=;
        b=zY0EqP5S6SX3+wBo+e/hQFGJWZlDvJAuXMh6/WVH4CvjO6w3nXiP8ElqFXsZ71XiKE
         d0NUCFbRCJZ6+JLRwwwuS3tszGBJWOfvA23YrtD/cFLOAgrImnbVzXR8fTE8GzuOHA7Q
         WsKBilNJpLU9KpdYez8v9JKWFhpFmoUXsoWafI8sh1MH59cK1PPglRD3btbafmK+Lyhv
         1inidNZ3Z2e71pz/H35eSewK3NBdbWpdvA8Hwknp3CO+LadYDv0A3XHck702SsWl90RF
         dvUEjnS2YjtmtpgKbUIF24arxeK6SL6SDk6d5emKJ64dJvehGi1Mq87PE9BjikljXN2g
         5+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051435; x=1726656235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEmg0mv3aZiw4epk0S/D8wOQJkCJdi8IprxOeJvP7ug=;
        b=fWMLe21Y9WAxxLoN1Qj/nDAXApcpt42mK0wkc5WQdXTWEX2cyA7sS0MQvx3NTPzOsr
         2pSazoWmgA3viNlgJF6egfzrat4YwPSiDCt3fMlugyEntICb3dEWFCyiArJ2nrXIrMi8
         OFo59LJguB6P2VjbeeAdzJ3iW56B19+NLbqJUJHMx7N6o1XGOOzAThHu2dmih9glvgJ0
         elpE1WbXc/mxQwW8LbDXQvfz/RB2FD1dz4B69CFl+BfzRNoqANKMe2bOR+tO9nnSc6eE
         2129HNGvbelu5+12/svraaCaOi9eISCrMHOOorx5uOw+BCS+HMoNgiigQo/29nCi1qYq
         06Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVGktxP9cYOmuLvb2PJLecKbsN2ZEn9RQ8vQ1gMS7UYf46WdmfvVsLeyxsa7iaViICiKQWaphZO2F8Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1lB8xEbYaB3LjTCi/qeN3uCgOfAaHOrqXLy5B6Wj4iW9fopNS
	OmGGhiSLo26AXej2CFFtbq8jKELLEK2SuBwHimBKx+MxWs8Nblhi4I/wyuPaWq8=
X-Google-Smtp-Source: AGHT+IHlGG8lUNXquAJHd6tZISj+TQ2YsszM2ZdBtl/KjJ9veSTZvzSOCuVd6OHtGTOCf+LGCgfwiw==
X-Received: by 2002:a05:651c:50b:b0:2f7:6129:5804 with SMTP id 38308e7fff4ca-2f761295a15mr75354701fa.15.1726051434260;
        Wed, 11 Sep 2024 03:43:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c07c5bcsm15188951fa.96.2024.09.11.03.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:43:53 -0700 (PDT)
Date: Wed, 11 Sep 2024 13:43:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com, quic_psodagud@quicinc.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4] dt-bindings: watchdog: qcom-wdt: document support on
 SA8255p
Message-ID: <j4yhwags7refg2qxc2ykkykxjv5sue3yghucsiykoyuvzmk4zj@zvh3fd6avmgi>
References: <20240910165926.2408630-1-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240910165926.2408630-1-quic_nkela@quicinc.com>

On Tue, Sep 10, 2024 at 09:59:26AM GMT, Nikunj Kela wrote:
> Add a compatible for the SA8255p platform's KPSS watchdog.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> ---
> 
> Changes in v4:
>         - Added Reviewed-by tag

If this is the only change, there is no need to post it as a new
iteration.

> 
> Changes in v3:
>         - Removed the patch from original series[1]
> 
> Changes in v2:
>         - Added Reviewed-by tag
> 
> [1]: https://lore.kernel.org/all/20240903220240.2594102-1-quic_nkela@quicinc.com/
> ---
>  Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 47587971fb0b..932393f8c649 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -26,6 +26,7 @@ properties:
>                - qcom,apss-wdt-msm8994
>                - qcom,apss-wdt-qcm2290
>                - qcom,apss-wdt-qcs404
> +              - qcom,apss-wdt-sa8255p
>                - qcom,apss-wdt-sa8775p
>                - qcom,apss-wdt-sc7180
>                - qcom,apss-wdt-sc7280
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

