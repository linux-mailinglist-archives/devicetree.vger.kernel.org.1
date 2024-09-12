Return-Path: <devicetree+bounces-102282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E83976381
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70D671F24710
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4741118E349;
	Thu, 12 Sep 2024 07:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qjbKfsr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7206118E052
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726127588; cv=none; b=Cq75MX26+/E5swGmcfDGEEWzmaAbOtFvSGcYfh0gdOa211ci2IsNJhGfwauYPIF8GxdDKVIY1PUT+jSVHsZaw/3SnYu/Kfd5z5m1kC07zPwR/NXFs6+UHF/CByF/pIJKvnY+LuT1kxe8KTR1weV+pAqdkKRVLXLmM08j81pW0W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726127588; c=relaxed/simple;
	bh=tEbEuuKZpwAnFVH5hSfQscYydf1M6jbKUfNey+GAKPg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l5gj/hmsDjKcVBS+cE3/TEiluHQoMzz4sl0hlWkRfGSlNFE36WdOmKnhyH93WH2Mi28K/92GVPKx5IWsWC2ZlQDEsly04cgclpEewoSf+v6Yz2DWrzc+4aoFnZvmMGqQftWOw/E/FphkOXwE1ZWcfAtyx/VGDrLbyHB0S8o4FPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qjbKfsr9; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f75428b9f8so10461181fa.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 00:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726127584; x=1726732384; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=plV9zVWaER2nVL76z2wZIDE0Ej/fFWbWekwnS0bRoPg=;
        b=qjbKfsr9aRhV9tYkJdEOurMU6qHFa2xjFrGEVyN05uwA2hn60kshKNdgRR6N4jGbdB
         fYzQtW1OdkiTOD2PQsYBCAV6nAapiRAy+0iwE0D18kW1lzF34gpiFTp3hNT9kLT1GSIH
         ZIiJPD8CTVjnbhrnRGuU02UK6DwmxwzqQwrDMq2pzXKFTNEeKw2ZNrT+TgxB+zcQUxh9
         fP/2ZdTYKB1EFvNJsEUdjfglonqxHVWAORccmwe7QNONj9SQ9KfB39v5bpyEiPcEC/wL
         l8PDoj6WtZ0qIP6xAEo/Fcoad0z1pQ1pwN7ueMS5lGEOmnYA0s291IQxIF6WZqo9ssZ2
         CD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726127584; x=1726732384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=plV9zVWaER2nVL76z2wZIDE0Ej/fFWbWekwnS0bRoPg=;
        b=rNdo3KcDLPOhsiY1OuL5gCPPAr8QfeAfVyCKvyU8b2d5ijS93dqffOlHfDZ3iDj7qL
         FvqTRYOfpXnpTG6bXlNO698U8y09zE7nPmYjMj6sb7dM05C4qw32HDYjyiFpEG+nqyVu
         pelAg//kDXi3OgGLcZTfuXfcgWEDuMlQEuQkBd7qDYV2XN9mDv2Ys1Qk7wXoq5yDLQ9R
         IWbFD5z11/4LG7AC6eNG9JzMDDqE7l076xUvRYqnNh29XHMjv/Q/DUUtpah3SrIT9Xyq
         gFeNVgvYZp3ciUDBdso5ezrKehzKNIRnLTsPhlTXCLR0EtPIndgcdNRtPoSJBhu7fXIo
         nxsA==
X-Forwarded-Encrypted: i=1; AJvYcCVfFG749BUdv7nvzLNhEGtL/1j5K0Ro5ZSKDZ1mxAm+uKx/9hU9lOieYitVYUxHbhcygcufeHJZQy70@vger.kernel.org
X-Gm-Message-State: AOJu0YxFiPtl0DrHDsFMqL4CSM7Hv3xdUxlWyHKjMqxM5WHFvwUzV8pe
	BVpVfUearBab700wqAlUsYXVGiJL0YWm/K9XToixPeiRJA9k50JXyQtMDqXH5gw=
X-Google-Smtp-Source: AGHT+IGNAjjrqwXcc00olSCpw8KkiqSQhqCV9M6o89EyqQyNZCGyom+XQTk0RI8UmFhrk56pycAn7Q==
X-Received: by 2002:a2e:a7c1:0:b0:2f6:4a89:9afa with SMTP id 38308e7fff4ca-2f78e18c52bmr1151811fa.22.1726127584296;
        Thu, 12 Sep 2024 00:53:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75bffe937sm18013361fa.55.2024.09.12.00.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 00:53:03 -0700 (PDT)
Date: Thu, 12 Sep 2024 10:53:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mahadevan <quic_mahap@quicinc.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, swboyd@chromium.org, 
	konrad.dybcio@linaro.org, danila@jiaxyga.com, bigfoot@classfun.cn, 
	neil.armstrong@linaro.org, mailingradian@gmail.com, quic_jesszhan@quicinc.com, 
	andersson@kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com, quic_vpolimer@quicinc.com
Subject: Re: [PATCH 0/5] Add display support for Qualcomm SA8775P platform
Message-ID: <3cpxwtqxapxhvg3w323xr7drv7p5sozrlwgoqscz4dqyuqft5x@x3pqxdjbpca6>
References: <20240912071437.1708969-1-quic_mahap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912071437.1708969-1-quic_mahap@quicinc.com>

On Thu, Sep 12, 2024 at 12:44:32PM GMT, Mahadevan wrote:
> Add support for mdss and dpu driver on Qualcomm SA8775P platform.

You can not support a driver. Also, MDSS, DPU.

> 
> ---
> This series depends on following series:
> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/
> ---
> 
> Mahadevan (5):
>   dt-bindings: display/msm: Document MDSS on SA8775P
>   dt-bindings: display/msm: Document the DPU for SA8775P
>   drm/msm: mdss: Add SA8775P support
>   drm/msm/dpu: Add SA8775P support
>   arm64: dts: qcom: sa8775p: add display dt nodes
> 
>  .../display/msm/qcom,sa8775p-dpu.yaml         | 120 +++++
>  .../display/msm/qcom,sa8775p-mdss.yaml        | 225 ++++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  85 +++
>  .../msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h   | 485 ++++++++++++++++++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |   3 +-
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   3 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   3 +-
>  drivers/gpu/drm/msm/msm_mdss.c                |  10 +
>  8 files changed, 931 insertions(+), 3 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

