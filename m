Return-Path: <devicetree+bounces-110851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D1D99C1C9
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 09:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64BEB1C23945
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 07:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53114148FF3;
	Mon, 14 Oct 2024 07:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZYzAQF5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AF2374D1
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728891878; cv=none; b=niYKu338rBRicipyAj0osSYsKEOmwWT1Np9uAJ/80HpnAK1SPsSQ1nc1+PMFDUeq90e3rArPlnP/z01R+QYnCK01fEX5Wu0P8X2F8l+zjCnt/IaaV5yScbtqbeSa5b3QRGY6fwMrDTnInjQKdHZeONQa79Btyio/lnmgLy0MiLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728891878; c=relaxed/simple;
	bh=tHoInpNDKl2gruq7qtskCljCeno7zgIwtBF5iQMd6Dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZIBPImdVCOLy4DCceJ1RYCvnRqxFtwiSY7KH0b4xw+PezxIuiUpPGbyZ7NL1kHssrjA/1iy+ehCcwKoaOwtzFlpDTJ9ndumNlBHA/Y1IEl1fjsP/H9sceRPr6vb5deJfGuL+rFKcYmTAZ6+Cs3k2DHMNU/I+cVh3Quiq8h1431Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZYzAQF5Q; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so4474474e87.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 00:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728891874; x=1729496674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=712c5FyvCZ48tk6arDhkoFcc2zKpp/plaCLZzk2XSM8=;
        b=ZYzAQF5Qlbj2t2jZGlAkbuzTQWIIGbssCvou5HH1fcl6t/i5QIG5F2WPkRgLfAWD8D
         PMRtuXHv1FDNcG/2/nl9RQWDf6rVVe4F4UeVA2HAVOHzlbOrHzFB2Yk6C25d2vrJ0iqq
         bho+1sbbHGJnP3mkxdYyZUMV9p1MzXFMDOoBGjZN4E60OQsX7mAAGZHcY/xBKQHTR31K
         +NCQ8Mz2ZSNhNEBZi58qUPP4iJBe42cFSUfYOY8oYsChSp2Aptu8aOlTKP1jzUnamFKB
         +0nJ1eh71Q16uOM5B3Z3weFJCtCJbK2GrsfTHV57Y9KsyKZY8pQR1S6zTn814bDfmvCw
         ClJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728891874; x=1729496674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=712c5FyvCZ48tk6arDhkoFcc2zKpp/plaCLZzk2XSM8=;
        b=XkHba/QJQx0Eg3Bl8cwNGG3C5uRS/V02b6MQbIsxK/Xuf+T2DSQyasSdR5lrTPQDgP
         ldrSvOHwBdGlfuZMOpNB0RvPOe3qw4N3LN3X0+O9FkNwD8M4sZM8bIW1qn9KXaMKguOJ
         +JU8Xd7fXLFDuEDO64CwJ7Ezup2ntmCYRcyb7ilw7WYrMgdTxwmxiXR3+VrK4r9oJ6KC
         +xAE3lgLRxx8IVkZXT3Mh95aCsQEAQDBKjMHhqqjIGtUydnUimcdoXfpMztB3MWH/Mca
         oJAcAnquHUQOJpT6ZPl8DQBYd16Jsn1f3Wzc+f7XpXguF2F++Py3wk1kgk/bKwuH0blC
         bo3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWsPvM6Grt4/uHrsew5EjKitvWBDC4Tq9P4jVrd54YGUVTp+qXs9R9DEYsLIpkpqjIiUTHBS8S7TkNO@vger.kernel.org
X-Gm-Message-State: AOJu0YwfMQi/OCn6ZbJA8eC2aaOI8rzQnA8WxipypS1yee+8vaTY7eoR
	lkbuZfyDRU85nXPBGloN9i7bknLxPIyyPS3+fGc7YvuW1o2gL6b7ynJZ3Qm6VBE=
X-Google-Smtp-Source: AGHT+IFT9rp0tyhuFf/cf5YGInYm93VZLRSOjyCVDuwPz3bf8zP9LLRqvJPW3F7vW5Lxz1yopbTLyw==
X-Received: by 2002:a05:6512:2255:b0:539:968a:9196 with SMTP id 2adb3069b0e04-539da56b4b5mr4281084e87.48.1728891874449;
        Mon, 14 Oct 2024 00:44:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539db3612c7sm1181418e87.131.2024.10.14.00.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 00:44:34 -0700 (PDT)
Date: Mon, 14 Oct 2024 10:44:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wadim Egorov <w.egorov@phytec.de>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, bbrezillon@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH v2 2/2] drm/bridge: sii902x: Set input bus format based
 on bus-width
Message-ID: <yhn2467hxdsfootza7rdgi3ixqzbyadfd2zeijzqddzevxkwdq@ylk63q4biwqk>
References: <20241007085213.2918982-1-w.egorov@phytec.de>
 <20241007085213.2918982-3-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007085213.2918982-3-w.egorov@phytec.de>

On Mon, Oct 07, 2024 at 10:52:13AM +0200, Wadim Egorov wrote:
> Introduce a bus-width property to define the number of parallel RGB
> input pins connected to the transmitter. The input bus formats are updated
> accordingly. If the property is not specified, default to 24-bit bus-width.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v2:
>   - Use bus-width instead of data-lines as suggested by Krzysztof
>   - Handle default case separately as an error case
> ---
>  drivers/gpu/drm/bridge/sii902x.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
> index 7f91b0db161e..3b9e4e1dec45 100644
> --- a/drivers/gpu/drm/bridge/sii902x.c
> +++ b/drivers/gpu/drm/bridge/sii902x.c
> @@ -180,6 +180,8 @@ struct sii902x {
>  	struct gpio_desc *reset_gpio;
>  	struct i2c_mux_core *i2cmux;
>  	bool sink_is_hdmi;
> +	u32 bus_width;
> +
>  	/*
>  	 * Mutex protects audio and video functions from interfering
>  	 * each other, by keeping their i2c command sequences atomic.
> @@ -477,6 +479,8 @@ static u32 *sii902x_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
>  						     u32 output_fmt,
>  						     unsigned int *num_input_fmts)
>  {
> +
> +	struct sii902x *sii902x = bridge_to_sii902x(bridge);
>  	u32 *input_fmts;
>  
>  	*num_input_fmts = 0;
> @@ -485,7 +489,20 @@ static u32 *sii902x_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
>  	if (!input_fmts)
>  		return NULL;
>  
> -	input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
> +	switch (sii902x->bus_width) {
> +	case 16:
> +		input_fmts[0] = MEDIA_BUS_FMT_RGB565_1X16;
> +		break;
> +	case 18:
> +		input_fmts[0] = MEDIA_BUS_FMT_RGB666_1X18;
> +		break;
> +	case 24:
> +		input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
> +		break;
> +	default:
> +		return NULL;
> +	}
> +
>  	*num_input_fmts = 1;
>  
>  	return input_fmts;
> @@ -1167,6 +1184,15 @@ static int sii902x_probe(struct i2c_client *client)
>  		return PTR_ERR(sii902x->reset_gpio);
>  	}
>  
> +	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);

More common pattern would be:

sii902x->bus_width = 24;
/* ignore the error */
if (endpoint)
	of_property_read_u32(endpoint, "bus-width", &sii902x->bus_width);


> +	if (endpoint) {
> +		ret = of_property_read_u32(endpoint, "bus-width", &sii902x->bus_width);
> +		if (ret) {
> +			dev_dbg(dev, "Could not get bus-width, defaulting to 24-bit bus-width\n");
> +			sii902x->bus_width = 24;

If endpoint isn't defined in DT (for whatever reasons), bus_width is also not set in the code.

> +		}
> +	}
> +
>  	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, 1, -1);
>  	if (endpoint) {
>  		struct device_node *remote = of_graph_get_remote_port_parent(endpoint);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

