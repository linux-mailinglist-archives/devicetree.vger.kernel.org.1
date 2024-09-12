Return-Path: <devicetree+bounces-102284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF49763A6
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F4B31F22449
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCF218FDC2;
	Thu, 12 Sep 2024 07:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V1WIYOmy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F7718FC91
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726127807; cv=none; b=DsNMdidAn4y2MdCdZ8jr/d1QDcZxAz9jILaZpuQ+Gyyn03zqQ/4twzGLeh4nSw1MqE5+B7w7dVeMM65O5R2TDDq+jCLojKIcnBkqWiceBr7wwY0ZBCV54OFiciJee8b4wPju5FDxWOLQFmm5PywMGMuNaCOmPF3ftcurW9VLPKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726127807; c=relaxed/simple;
	bh=ixO4eAmSsyxYP705i69Tpb+LkysSM4JEOUqvDo0Heu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qqRTLlJ6TTEmWCy8Dp/c3q5dfmNk+7QQhhpuY0LQsJlEc2cDZwc/wJblZcb3cB/axZcHJVIMegFYcFYUVt2EF5S+qzpT+dXMKc5FP/EnrYzKZMs73+jCvV+Izv36CTLHMKaMAl/gn6Xrfq74dOqux0SlaIiTDN7nLgnbg0ktw1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V1WIYOmy; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f763e9e759so7200371fa.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 00:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726127804; x=1726732604; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rzUy16PQ8SDXmHcug8jXm/7h574vKZnBpTKJTICvI5k=;
        b=V1WIYOmyvSEUhyx5B/vR/Gwh9FEp7kZBcDYs4ifdZSaiJywhDOBs08UeGXCKMkqZ+p
         rsn/5+A6eNJCtChho/5dK8kAfQoSxMSKadZr2gTi73uH1LQ2/CPw5DVGgzrCP3SHeUiY
         49aNA8MOs1XR1WElidhx8YQAe8PAVboVQp81c8fZotmoOjSBkkb8vdMd928bPrGpP49v
         b2aGxxiNrUAAIikjEn+tHb00E0LByb7Cb6Gh7ILk+NDz3GeCpyQVgU5/E2RRBdyEvtlI
         c5HkkRJmt6K2SbDk8xCc/Efke4g9zS/q+NOPi6YQcS7cqkNpVvuYBuOR/dU64eeiID0O
         nIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726127804; x=1726732604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rzUy16PQ8SDXmHcug8jXm/7h574vKZnBpTKJTICvI5k=;
        b=PA9AlxtjnWIrHNCwCJ2Xnyo8B82WeHBoQuUdcin4mtibhLB/rVteKG8PyoiPRHANFe
         pWHCto0ekuJvW2TV4EamlVijuZMmhkqkqCK+Bosfmg58AHdxHpwCJDk24l0J7wWmSUsl
         bV5MEG0xhiWIEdr5XAy5zwjqkJmH5tvo4JohE8okyw11W9tmjdoPaY5/j3e0QBE2iuza
         ZDk30lgX2Jjy87WHET0Y3N1gJhieCDp1+DgsoY79QYani70rs4zIyKDLU71ENuQI2zr0
         021X8GFm18I+RrvJiXSrQUj6FFHrupWEp7bwSH8nJt++/c8FsfZ1i0aSxkC2nI9zUqKI
         g22g==
X-Forwarded-Encrypted: i=1; AJvYcCXnFoeYffnIJMP5Zxr38a69VDx7u8vrFVj6wLc/4X6h3PxtYQMPXtnsTUWy2fjwo2d8Zpou41+eZyz9@vger.kernel.org
X-Gm-Message-State: AOJu0YxdpB8IpzvbOEAYe6G3t/2I/QDytOvFIaSQELS02dv0Fm2+/JUE
	ewsaDJNJuntMVjNjuqv6pz4GmDfifrAbYbWO6BIKt0btepuO94LQF/HxqD11jVU=
X-Google-Smtp-Source: AGHT+IEO+oaR2J+/C5HWt9j3Jqj2WBAglLEJ+Odvyq26KObdZCTNoi/+ljmrdSm1pK1NNmf0NzUFaQ==
X-Received: by 2002:a2e:be91:0:b0:2ef:2016:262e with SMTP id 38308e7fff4ca-2f787ca97e6mr12162111fa.0.1726127803444;
        Thu, 12 Sep 2024 00:56:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c07c897sm18188401fa.75.2024.09.12.00.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 00:56:43 -0700 (PDT)
Date: Thu, 12 Sep 2024 10:56:41 +0300
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
Message-ID: <7fcbvouzb7gq6lclrkgs6pxondvj5wvutyw3swg55ugvzfpvd4@2ph7x7ulxoyv>
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
> 
> ---
> This series depends on following series:
> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/

As such, it probably can not be merged before 6.14 (the mentioned series
will go on 6.13, we usually don't do cross-tree merges into drm). Please
rework the bindings to drop the dependency (it is possible, use fake
nodes instead of using dispcc + ID). Then you can specify that only the
DTS patch depends on the dispcc support, allowing driver changes to go
in first.

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

