Return-Path: <devicetree+bounces-141128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F39A1D795
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF673A8478
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB841FFC47;
	Mon, 27 Jan 2025 13:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gt3Xw6sL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF601FF613
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737986169; cv=none; b=d0pkp6Jn/KklA+74t1i4DuZJOEN46A5S/WnqLE/hpia6DSxPCq1qM+h31qEL53INloL/kU8JJw0G+GeMnAjiqJvJjJp3A8ow3rs84trzkx8IlM9a4FRcX9Ha0We6fOoMGjeDo+BOJODrPt0aKRJXBVEvaYl24XnjEVHl7aGZruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737986169; c=relaxed/simple;
	bh=+6jz4tHMxHorEMU5+vxgQW0NALIa8XqK7viSuGah46c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GY72CNIw0hhIH8nOXjEZeNXQk9e7WP/1q4tNJIviSig8NXSOW/kyk1pmA/D3CyhUQnaipnbdCMy49vIbdbHnYU3wwv+d6/mMyqtH0MdF+Ndzd4B9gD0VLYQXENa7jmX4N+4Ilo02afDQfwArwcwv1IhQn1yaC+KEENemrEtGvmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gt3Xw6sL; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-305d843d925so38894811fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737986166; x=1738590966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wt4sS6zTyCweAZYH++LZePNO/qvVROY3D8Q5U1D/3eY=;
        b=gt3Xw6sLC+IZi8QYYULKx60S6wWn4tCn53y3FxmdrgLp3z7rIcP7FjAJYa6vsvq2SK
         qjxBzQcHZBDg2d6/OxLyNiHsIk/BdTsiuNOBKjDPdB/adc1h2zDQ8Ayc+ykOS3z+qvay
         VZmpEKb1nWVPhT3dr/U2XEPqtqsbNCS2HPtPGv4cu7Mp096NofS/VjIS0ZAqRqV606/d
         RjqjAmbxhZl1+D7ytAKPXBABDgeEg+9dyhb9Z/PA3nAtmNheyxHNs14muLAj+/4hvKJs
         aWEJ+vQbSCOgNrOVbUp2s9JfSeoqgKt703IiReaL/k7LiXqdK0Z5s5BlFNIGkGsQ/HPw
         9y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737986166; x=1738590966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wt4sS6zTyCweAZYH++LZePNO/qvVROY3D8Q5U1D/3eY=;
        b=Y9PWAR6+laoSLcY+qsbWE0OTmcLL02JZ0StFJEyUgI9fNdsSt1nHHBQLGYrax2+2pV
         /zsfOmio2B5IRbn7qU9Ax9gRbXSZm+9OH4Ni1ZYu6YtQuDq+EOvGaqrebN+q6alye/Rh
         DHld0WRS6R5wL1EdFcIXW7gvS321GYL6gH0p+BD1nU+wP4OsJygMo9wU0UqSV9T+SVgH
         K+NwEKMRjJehsy6DdF2mzSM1dPhGIni5ZMGeRxhvKi8E4zzgY8auZsIky+XW4JQ0lYp1
         AdwOpFc+8I6TE4Ke9niU0iaE5hw0N/K8WP1pvLuOW6VigughEElmuIWGIMRhfA/EmCbq
         OPmg==
X-Forwarded-Encrypted: i=1; AJvYcCWtMsf/rMcZjxOrL42G3gTZfSojdaNDoDAMO0AIPQbw5A7Le99z2XaBnDSBnZSZMd6SEpqJYtypetU/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/qapGTS06CAxsUYJODjRckO/oTHgLVMlL8HHY6iK8z4lKcNTa
	rfdfOGKWx7XJkUl08oFtcSpCCFJmF/4ggNoiaJHxuV3+rU2ch8a0n179opqtevs=
X-Gm-Gg: ASbGncsQq6jv49Ng60ItTCP1LQiQ9yrrzbI9OwvG1qSfNOW8B9plHPWescbyp+H1q6C
	kPU28Jz7Jawpo/PIvkbgyVp9mdqar0M9J9vdWE6Rg4HOz00t3HZOZhVKHNaeQI3RmEYB4LHWWGA
	15FkyLC1YlnbS5CjN9g9/QQFDnnNFYAiuXrG0YDlH2Ka54h32rVnnlUNIOGMrZDMLQWrAyqhTWd
	HO0nSSe96IQgiF1SrSpygb4lDvnTee3ZkmQKAk1JERiDDAp4no/QLceyTZx/e9JrMJnyHUX5aEb
	9edZqUb4a/0SrzOBdY8gk3qVNtkWnNksR31wc3EClDjCc2hfFcwIKJ398Uqz
X-Google-Smtp-Source: AGHT+IEndS/LVqeUqSpxsvwA84LzRH+l+YBnVxcXQWp9YfcsB2fe5zmaDUUkUk95OVNxnfDlx/rsmw==
X-Received: by 2002:a05:651c:2104:b0:301:12:1ef3 with SMTP id 38308e7fff4ca-3072ca5bc35mr153845421fa.4.1737986166078;
        Mon, 27 Jan 2025 05:56:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076bc49b5fsm14359241fa.101.2025.01.27.05.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:56:05 -0800 (PST)
Date: Mon, 27 Jan 2025 15:56:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display/msm/dsi-phy: Add header with
 exposed clock IDs
Message-ID: <4vy6tjdvhkplly3uqqekdmz6brkcbac6pijrn6gdyz4x3hralr@meeugoua2ats>
References: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>

On Mon, Jan 27, 2025 at 02:21:04PM +0100, Krzysztof Kozlowski wrote:
> DSI phys, from earliest (28 nm) up to newest (3 nm) generation, provide
> two clocks.  The respective clock ID is used by drivers and DTS, so it
> should be documented as explicit ABI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Patch for Display tree, although with Ack from clock.
> ---
>  .../devicetree/bindings/display/msm/dsi-phy-common.yaml  | 2 ++
>  MAINTAINERS                                              | 1 +
>  include/dt-bindings/clock/qcom,dsi-phy-28nm.h            | 9 +++++++++
>  3 files changed, 12 insertions(+)
>  create mode 100644 include/dt-bindings/clock/qcom,dsi-phy-28nm.h
> 

> diff --git a/include/dt-bindings/clock/qcom,dsi-phy-28nm.h b/include/dt-bindings/clock/qcom,dsi-phy-28nm.h
> new file mode 100644
> index 000000000000..ab94d58377a1
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,dsi-phy-28nm.h

I think this should be dt-bindings/phy/qcom,foo.h

Other than that LGTM

> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_DSI_PHY_28NM_H
> +#define _DT_BINDINGS_CLK_QCOM_DSI_PHY_28NM_H
> +
> +#define DSI_BYTE_PLL_CLK		0
> +#define DSI_PIXEL_PLL_CLK		1
> +
> +#endif
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

