Return-Path: <devicetree+bounces-79136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D659141E3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF159B224D7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEFB17BA7;
	Mon, 24 Jun 2024 05:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZQsdcnfB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB58F1401C
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206484; cv=none; b=eb1fQrkFgch4jFsONAKZ7LcZi8CoDZO06OO7yW1pzGNlbFGmAD18fDv1ja8WgFFcEhNdlXTrByM92jt8ULsBcNaKRlb6Kbux841FlFsGp1FbfQZc48kSE3y9yZQ5QMbGUF+5LaEDOpks2S5SsMTO3i6m31VFa6s6VMdbRaVpVoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206484; c=relaxed/simple;
	bh=JiRbCTrVtsSCGPNd6tmirF5cOqSpGwp1bx+HJw156uE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LFOAVapkoqUeurLAxbq1M/KZq+WOJrYfhMAAwQOru8lEBfaZgZAPYWygzzyjHTU3IA6xsS2k8y+9aVVqXSOaeIUKkB5DGM4cfPOmlAl4sTltGuVrmxFM3C2sQwZZ0kXkFddLIc3LOwOmqAkdrVyvzG9o8ioyP7VCPww5tPHiGOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZQsdcnfB; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ec59193468so9148251fa.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719206481; x=1719811281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2MGm9hgBQiIaonwYDgBJ0aXBhWFo2f3cLhGxXka39iM=;
        b=ZQsdcnfBwd4N1kAEKfAFOU/fNUOfJ7vQ7b8QbgSdSk951y8D/I7JxuLP+yppvhY9is
         eM1nSBnfDkhYzIUspiX96aHuc1JzhmXPEe+bQJCvFuHBKGAOFosNMOkSjJr9YiTUDNfg
         UY5vmLKyw1z+9SrehMhvYsShqUS3eCC2ZHFeMIpc1bxSzrYQCafHwSde/SjVysNpU8Qy
         F+lEZLLcJ4bi+16hBiHVClaEYwh1ru0JITszAZxbRphKp73+MP9ioRWmusHzLHQ8GrWZ
         xDO8Y7w69kQ0h/4AODoZ22QcT5FAf2NH0l5IydYOQaEWR15k7HueFk/Kx6boGLLHHCK9
         YXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719206481; x=1719811281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2MGm9hgBQiIaonwYDgBJ0aXBhWFo2f3cLhGxXka39iM=;
        b=hAadtnmmlwI1KPvnGvoO3L5AzTkPEm0gBpqWEX6j7fN1kEoPd1FvSUGiwSAJlUTNI5
         63XfDTTyVwEZR0G0uCgUpgfXxovrakHF35obrJBRHGLzURQAy5YTVRo1xWa+EnHrn9/C
         McUDROuaWitx6Jqal4zORM6sVh4jD9ax6iyR4mRNoNqgmJFEqD+Sn7T36/Zwjfqw3ap6
         ZM5vb8AgNcQ8rzexcUaScCi/9CYLI9E9+9pj0ExgUC0fgwf2WnITjF8CDaESdbJDvYfL
         2JlCEx0/VXss4EgwHU9DNIxlZPFtRE441mDPHg0IOi9PWlcDiypu4GKQhWyHloR3ttHU
         Z3YQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgumWFPkJ9fXv900CxJazMVLJwkynfFohB9F3odRxjEPEgPYabW747laCb0wUdHCIrMLPaRvaCfQl9JolP0ORzHsMXPSdQKYusxg==
X-Gm-Message-State: AOJu0YzyhppyTlRY5zO9DbPhe97oqcJmUwOdrwzrHL89ubNefZi04rtL
	Ibh/7TWRrmLpidDjO366Rb9Bs9GMtqkyNbj5Kzg4U6+0DF7HY3DsVVQD1xqDIDY=
X-Google-Smtp-Source: AGHT+IH+EF6ZVxgix/33CGJs1LcRlM58jSDEP6hH4S/kepamdqtcu83VYx7sjlT8qvi+UsLClCqQ1A==
X-Received: by 2002:a2e:9f08:0:b0:2ec:3c7e:3b3d with SMTP id 38308e7fff4ca-2ec56be6b08mr10787131fa.26.1719206481012;
        Sun, 23 Jun 2024 22:21:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec4d7e7906sm8868841fa.121.2024.06.23.22.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 22:21:20 -0700 (PDT)
Date: Mon, 24 Jun 2024 08:21:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Caleb Connolly <caleb@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Henrik Rydberg <rydberg@bitmath.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 4/7] drm: mipi: add mipi_dsi_generic_write_multi_type()
Message-ID: <jbxk6uo3q2ddwthtc5et6gquiofgywnwh6e5kwpqe7pvglgbfg@k3djx6owef2t>
References: <20240624-oneplus8-v1-0-388eecf2dff7@postmarketos.org>
 <20240624-oneplus8-v1-4-388eecf2dff7@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624-oneplus8-v1-4-388eecf2dff7@postmarketos.org>

On Mon, Jun 24, 2024 at 03:30:28AM GMT, Caleb Connolly wrote:
> Some panels like the Samsung AMB655X use long write commands for all
> non-standard messages and do not work when trying to use the appropriate
> command type.
> 
> Support these panels by introducing a new helper to send commands of a
> specific type, overriding the normal rules.
> 
> Signed-off-by: Caleb Connolly <caleb@postmarketos.org>
> ---
>  drivers/gpu/drm/drm_mipi_dsi.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_mipi_dsi.h     | 16 ++++++++++++++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
> index a471c46f5ca6..d0fee0498d91 100644
> --- a/drivers/gpu/drm/drm_mipi_dsi.c
> +++ b/drivers/gpu/drm/drm_mipi_dsi.c
> @@ -819,8 +819,48 @@ void mipi_dsi_generic_write_multi(struct mipi_dsi_multi_context *ctx,
>  	}
>  }
>  EXPORT_SYMBOL(mipi_dsi_generic_write_multi);
>  
> +/**
> + * mipi_dsi_generic_write_type() - transmit data using a generic write packet of

This doesn't match the name of the function.

> + * a specific type
> + * @dsi: DSI peripheral device
> + * @type: data type of the packet
> + * @payload: buffer containing the payload
> + * @size: size of payload buffer
> + *
> + * This function will automatically choose the right data type depending on
> + * the payload length.
> + *
> + * Return: The number of bytes transmitted on success or a negative error code
> + * on failure.
> + */
> +ssize_t mipi_dsi_generic_write_multi_type(struct mipi_dsi_multi_context *ctx,
> +					  u8 type, const void *payload, size_t size)

write_type_multi. Or maybe write_raw_multi.

> +{
> +	struct mipi_dsi_device *dsi = ctx->dsi;
> +	struct mipi_dsi_msg msg = {
> +		.channel = dsi->channel,
> +		.tx_buf = payload,
> +		.tx_len = size,
> +		.type = type,
> +	};
> +	ssize_t ret;
> +
> +	if (ctx->accum_err)
> +		return 0;
> +
> +	ret = mipi_dsi_device_transfer(dsi, &msg);
> +	if (ret < 0) {
> +		ctx->accum_err = ret;
> +		dev_err(&dsi->dev, "sending generic data %*ph failed: %zd\n",
> +			(int)size, payload, ret);
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mipi_dsi_generic_write_multi_type);
> +
>  /**
>   * mipi_dsi_generic_read() - receive data using a generic read packet
>   * @dsi: DSI peripheral device
>   * @params: buffer containing the request parameters
> diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> index 71d121aeef24..a5d949e695d4 100644
> --- a/include/drm/drm_mipi_dsi.h
> +++ b/include/drm/drm_mipi_dsi.h
> @@ -287,8 +287,10 @@ ssize_t mipi_dsi_generic_write(struct mipi_dsi_device *dsi, const void *payload,
>  int mipi_dsi_generic_write_chatty(struct mipi_dsi_device *dsi,
>  				  const void *payload, size_t size);
>  void mipi_dsi_generic_write_multi(struct mipi_dsi_multi_context *ctx,
>  				  const void *payload, size_t size);
> +ssize_t mipi_dsi_generic_write_multi_type(struct mipi_dsi_multi_context *ctx, u8 type,
> +				    const void *payload, size_t size);
>  ssize_t mipi_dsi_generic_read(struct mipi_dsi_device *dsi, const void *params,
>  			      size_t num_params, void *data, size_t size);
>  
>  #define mipi_dsi_msleep(ctx, delay)	\
> @@ -432,8 +434,22 @@ void mipi_dsi_dcs_set_tear_on_multi(struct mipi_dsi_multi_context *ctx,
>  		static const u8 d[] = { cmd, seq };                     \
>  		mipi_dsi_dcs_write_buffer_multi(ctx, d, ARRAY_SIZE(d)); \
>  	} while (0)
>  
> +/**
> + * mipi_dsi_dcs_write_long - transmit a DCS long command with payload
> + * @dsi: DSI peripheral device
> + * @cmd: Commands
> + * @seq: buffer containing data to be transmitted
> + */
> +#define mipi_dsi_dcs_write_long(ctx, cmd, seq...)                          \

foo_multi

> +	do {                                                               \
> +		static const u8 d[] = { cmd, seq };                        \
> +		mipi_dsi_generic_write_multi_type(ctx,                     \
> +						  MIPI_DSI_DCS_LONG_WRITE, \
> +						  d, ARRAY_SIZE(d));       \
> +	} while (0)
> +
>  /**
>   * struct mipi_dsi_driver - DSI driver
>   * @driver: device driver model driver
>   * @probe: callback for device binding
> 
> -- 
> 2.45.0
> 

-- 
With best wishes
Dmitry

