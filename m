Return-Path: <devicetree+bounces-147611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1CCA38C37
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9129416EBF6
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D909236A70;
	Mon, 17 Feb 2025 19:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BDOYIYOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE01022A7F9
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819927; cv=none; b=f++MuGrGKn8by41xjpElXSZFI92IFc6L4QWPSV13NKtZkpX9Mwd4wl2y7zA+6RWPdhZOc6rQoHmIYZdryf2Z4GurWBmJpwTG7DapNFXaMVpVxfmdngzqQqmJ6wAfhbwI3y/HPkle5M2kzKsZX5C84lX699++VfFhIOZDQvpCru4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819927; c=relaxed/simple;
	bh=mhMQAL+ZuCppMLZz3hGC1V1w1m+yQ2xV52Svf7YNBBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I7ugdc+eF5zvk+Lhml+K9KRaLLrfIm6Vukd+hCobckORecK64Bq5vJ4t4UPXCSUIDqWJA++3+piVcB59WdB6aaS2rO9pm1AdYDyUIVPv2a+o4IqSCI+4pasDB6P0Ktec0SdkQpZQfNVpOx/iEr590Tu/VF8LOGdOEdvENXKZoX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BDOYIYOB; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54626a71b40so838732e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739819923; x=1740424723; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DK+fqhLw+0oSKSvkhmUshysfw/dArV7Gb0FGu6H8pRM=;
        b=BDOYIYOBgxrYEXkVTg9BNQkdzk2Hk/0TDeHpNhz8Rr0L2ZSG9mRKe/f1U2e3isBkKE
         PHdjNJZ3n4CT1WlAAfTEChtcsFEYTxpA6YS1K4nmGkDq8btB6S1CQ3lMndViSv3eZz7T
         qWoqQ50kqY7wdbOCEc2UN4bhuNT9wiCMy6Kb2I9UePtYAcacHyOrqAQ35w61DOA0Sqwo
         HoDxN3QjiaX02qY5qi62tCUKwKjLbuJ/uzdolThFyQcrgg4cBjxaFADyNA3gEydedpv1
         Z9hduDbGsBk0+5vsNuRWySc+f4BfP5ZAuaqf7U6bgNf7LcH7VynAMsvv1ZZgwgAF60zO
         3CSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739819923; x=1740424723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DK+fqhLw+0oSKSvkhmUshysfw/dArV7Gb0FGu6H8pRM=;
        b=xRO0UyKuo+hD+Qr6LJONOl/17exxXcu41ZJf7ySRpZKXaXjDsSRrco6cOWsgUje90I
         9oGrVIs+B+Ywub1EW2bW95ixRKLw98eYaJo0CpREqtCdm4ohEVmSb7QNlRKlcoLz+SYt
         GQLDoUKRNXTL/CqI05XSOc/IppSQZeD1fjRFZ+xTT5ktfSzAE4M+g3dHhmPqda5wThNT
         TqiyP1XeKLju1r5XbaCTK9a93PNnkE8tC3kzHsN2I8bQbTIDYv2KAVC9JY+VyyqcGvW2
         v1jUhvUBKXgYThgdQHq/ecbZKKjK3yBTpaUnsapeJN4qOM1FxMeIac+lfZiXEUl7t5D+
         XMDg==
X-Forwarded-Encrypted: i=1; AJvYcCVP2TqClb6PrzdqH8gy8Hw+QytJfv6NV/LlZGD0OUsNvUJWffEj2JbQBw9DzdyH/ubwtJp9KPclwcyV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9dXe8KV0wjhb6l0DvMLYyrwJnhaavpajnjqhhUpA00PXt5Hgk
	g20M96Qje9D8FGW8y3PIovjp8lQqeEDC8AqAj4gmw9URLIrLfrq1orrcDu+h4k4=
X-Gm-Gg: ASbGncvmlTg8OvAhGolZ+oeA68zcP1jYlb1AiDCeAztHOdYpTgfXhQUiJD2q6QKJZSX
	txCFl5HMjIhGQVCvUq0oM8qckHrWckiMmiNfCoK4rUHfK0+gq/1+FdrsMAMZRuqfUy8e9CQ8aPe
	3q1Soo5mA+KYotzUWk8r5SjizidhwbTVQTyb1lJU43KN6va9TYQP8CCYAigLzO/xzONL5gy1qff
	GV+ieWM7S3BqJKYqCajdUXml36XlNH67MXk6Mo6av+in+mDGdIubmZufNBX1RpAXlqLdOwmVfW2
	5bXpNOlRKjY4eUqcz09GkbWMivesbaSSMOOsbqLG3ssZ6Oel9vmXfLpdq/IJP5oYAP36aIk=
X-Google-Smtp-Source: AGHT+IH7pPe9WdA9acnmeu4tM6FBkJrCmOJkB/cGc23MUQGTJZAedW80zQq+KjfFc7YHQvnbMFONmg==
X-Received: by 2002:a19:2d11:0:b0:546:27f0:21a7 with SMTP id 2adb3069b0e04-54627f02773mr695030e87.49.1739819922816;
        Mon, 17 Feb 2025 11:18:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5461d4f2aa5sm694294e87.0.2025.02.17.11.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 11:18:41 -0800 (PST)
Date: Mon, 17 Feb 2025 21:18:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 15/16] drm/msm/dpu: Implement new v12.0 DPU differences
Message-ID: <qlotuliwnm5spneolztca7avmh2a46pz2xqlxzqbw5kwa53m6q@oyhnzz7fhay3>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-15-d201dcdda6a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-b4-sm8750-display-v2-15-d201dcdda6a4@linaro.org>

On Mon, Feb 17, 2025 at 05:41:36PM +0100, Krzysztof Kozlowski wrote:
> Implement new features and differences coming in v12.0 of DPU present on
> Qualcomm SM8750 SoC:
> 1. 10-bit color alpha.
> 2. New CTL_PIPE_ACTIVE and CTL_LAYER_ACTIVE registers for pipes and
>    layer mixers.
> 2. Several differences in LM registers (also changed offsets) for LM
>    crossbar hardware changes.

I'd really prefer for this patch to be split into a logical chunks
rather than "everything for 12.x"

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. New patch
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  49 +++++--
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  12 ++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c  |  59 +++++++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h  |  17 +++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c   | 210 +++++++++++++++++++++++++++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.h   |  18 +++
>  6 files changed, 350 insertions(+), 15 deletions(-)
> 

-- 
With best wishes
Dmitry

