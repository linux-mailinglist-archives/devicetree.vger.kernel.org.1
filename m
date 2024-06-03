Return-Path: <devicetree+bounces-71974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2798FA3B4
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 23:47:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79C071C23C6F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 21:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9896113C3CD;
	Mon,  3 Jun 2024 21:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pZqbKxER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC0312E1FF
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 21:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717451228; cv=none; b=QZmVphPuRtidJU9VZIN1jC3b4Xk3YFMHJXcpHRZUBt87h14gLsxK9EXCGjuhaqyO2qn8PRjxLm985RijND7ZENKwT6jQbVhgX31aKXOEmh1lH3y+J5FGXyLtvDKjoSSYCxJoxehYzJTJ6jFdBnkneDa//7jX6TYtBv/lpUe/W14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717451228; c=relaxed/simple;
	bh=MkchS3T1yd/q8NMQ5OnngmwnF/j9QgKZ2Hww8Q8rcjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k+HQuzd0EGALLJs1+naRNZNxCA80SmtKxIizbdbiJAdXuPihVV/0gn/baKWFJwzqyqoHrHGNQ//8TYeTigyfEKvBxp8gPPiY8StCIfICEaA3HJi3IzTz2+NViREggVsQqFb8qfx82zYWe2bR2d2K2B610ZxVzPY76Ac22InUSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pZqbKxER; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e96f29884dso3753581fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 14:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717451225; x=1718056025; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FoNDEjuOcgHDOVnZsyqRle0CnqIa5i20V/byDmBZIYI=;
        b=pZqbKxERbLF7hNyIw9z3gbVjV4gq5DACJn8GjOYzmEylzGCiHPbjSb8u0fdhTRZSnu
         YL4NEwGdNxQzKQQUApo13gmpm+7uXSQcBis79qIss8ZfAkrRoLVdMS6ugjJtMnMpjd5V
         Oqtj4/gE5vD7r/e8+iV7khiL/TRr4/KdeR2dY8baplZ+XWWaVURlpW/4QlLdTgqjkZdg
         eDOWi8jUE0ivlmcZETrjhY3r7fLsaZNQ408coNH3A4zXdztRDdoUomkDah348y3BP+Vu
         vuhuSzpk9YPanDYsngBPiXKCrUy5suNVX8IIMT2ICyixrzS9SNG6fFrh0e7/W7DsvRO2
         RnrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717451225; x=1718056025;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FoNDEjuOcgHDOVnZsyqRle0CnqIa5i20V/byDmBZIYI=;
        b=mHIm7Ls336B6SE7z1N4nShF9f9d1f4gblAC8SfVA2h0fFJGyOjBvZ7z7WDiAwsWnvN
         /MafIFvhsLNo9ml00YaaE96RVA2MHToxY9KeZrF1q29Qjnvz+ZsEMdwdIrpBs0dmmkEO
         GogiIodTbso/6pJsIln7BL2mNGf9AZb/fN8BZT8Um/3N+4jZe/cwlpvDsOJbHRc4zkrf
         7TIr3/JnpZHVwj8xWKvCZWXjsexMkDOKb5Q4SwTDv72xlZtWberxhyXbnJVFfhhdE12i
         07wFE7MYWZCi5UtC39EN/zw5V3LZrisW+syWXjhhqnKUkMRCUa8t5/tcLDJv+V29htwq
         LaPw==
X-Forwarded-Encrypted: i=1; AJvYcCV3ySs5NubOdZIDW8/O0Wh9YbW/QadUynto3YOwHi62hXjFgF1nxWB0QygZW8RaewI5S0ROIhz7wKEn0bY4RMFm4x5ByrsV6JW55g==
X-Gm-Message-State: AOJu0YwGByxhXYndCbgoYqMuxn0tqEnuRcKBAlgdcpAGkg+HYGywYn2y
	AxB0cl0mybSdwqf5GsguYIZzniWjwOJHMMQX1j/w/2KTHfea9v6z/ilvzDO1aoc=
X-Google-Smtp-Source: AGHT+IEj4vQ1nY8StZT7F/AmAO9Jl6Uf5hey1JkSdjWJ4OoehBOPXVZJP+dMJdd2kMJUgH8mBkF+vg==
X-Received: by 2002:a2e:b8c7:0:b0:2d6:f69d:c74c with SMTP id 38308e7fff4ca-2ea951e0961mr72022941fa.38.1717451224716;
        Mon, 03 Jun 2024 14:47:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91bb4aedsm13686521fa.33.2024.06.03.14.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 14:47:04 -0700 (PDT)
Date: Tue, 4 Jun 2024 00:47:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: noralf@tronnes.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <david@lechnology.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>, 
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Subject: Re: [PATCH v3 4/5] drm/mipi-dbi: Add support for DRM_FORMAT_RGB888
Message-ID: <qij3fk3psujfazigjt56hrpj2celdeyvsz3uzioo5aorbzzwql@kbglyrbkd6g6>
References: <20240603-panel-mipi-dbi-rgb666-v3-0-59ed53ca73da@tronnes.org>
 <20240603-panel-mipi-dbi-rgb666-v3-4-59ed53ca73da@tronnes.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240603-panel-mipi-dbi-rgb666-v3-4-59ed53ca73da@tronnes.org>

On Mon, Jun 03, 2024 at 01:21:35PM +0200, Noralf Tr�nnes via B4 Relay wrote:
> From: Noralf Tr�nnes <noralf@tronnes.org>
> 
> DRM_FORMAT_RGB888 is 24 bits per pixel and it would be natural to send it
> on the SPI bus using a 24 bits per word transfer. The problem with this
> is that not all SPI controllers support 24 bpw.
> 
> Since DRM_FORMAT_RGB888 is stored in memory as little endian and the SPI
> bus is big endian we use 8 bpw to always get the same pixel format on the
> bus: b8g8r8.
> 
> The MIPI DCS specification lists the standard commands that can be sent
> over the MIPI DBI interface. The set_address_mode (36h) command has one
> bit in the parameter that controls RGB/BGR order. This means that the
> controller can be configured to receive the pixel as BGR.
> 
> RGB888 is rarely supported on these controllers but RGB666 is very common.
> All datasheets I have seen do at least support the pixel format option
> where each color is sent as one byte and the 6 MSB's are used.
> 
> All this put together means that we can send each pixel as b8g8r8 and an
> RGB666 capable controller sees this as b6x2g6x2r6x2.
> 
> Signed-off-by: Noralf Tr�nnes <noralf@tronnes.org>
> ---
>  drivers/gpu/drm/drm_mipi_dbi.c | 29 +++++++++++++++++++++++++----
>  include/drm/drm_mipi_dbi.h     |  5 +++++
>  2 files changed, 30 insertions(+), 4 deletions(-)

The patch generally LGTM. The only nit is the name of
'emulation_format'. My first impression was that it is a format that the
driver is emulating to userspace, however it looks like this is
over-the-wire format (with the RGB666 vs RGB888 note kept in mind).

If my understanding is correct, I'd suggest renaming emulation_format
to something like 'raw_format' or 'panel_format'.

> 
> diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
> index 77f8a828d6e0..eb330676857c 100644
> --- a/drivers/gpu/drm/drm_mipi_dbi.c
> +++ b/drivers/gpu/drm/drm_mipi_dbi.c
> @@ -206,6 +206,7 @@ int mipi_dbi_buf_copy(void *dst, struct iosys_map *src, struct drm_framebuffer *
>  		      struct drm_rect *clip, bool swap,
>  		      struct drm_format_conv_state *fmtcnv_state)
>  {
> +	struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(fb->dev);
>  	struct drm_gem_object *gem = drm_gem_fb_get_obj(fb, 0);
>  	struct iosys_map dst_map = IOSYS_MAP_INIT_VADDR(dst);
>  	int ret;
> @@ -222,8 +223,18 @@ int mipi_dbi_buf_copy(void *dst, struct iosys_map *src, struct drm_framebuffer *
>  		else
>  			drm_fb_memcpy(&dst_map, NULL, src, fb, clip);
>  		break;
> +	case DRM_FORMAT_RGB888:
> +		drm_fb_memcpy(&dst_map, NULL, src, fb, clip);
> +		break;
>  	case DRM_FORMAT_XRGB8888:
> -		drm_fb_xrgb8888_to_rgb565(&dst_map, NULL, src, fb, clip, fmtcnv_state, swap);
> +		switch (dbidev->emulation_format) {
> +		case DRM_FORMAT_RGB565:
> +			drm_fb_xrgb8888_to_rgb565(&dst_map, NULL, src, fb, clip, fmtcnv_state, swap);
> +			break;
> +		case DRM_FORMAT_RGB888:
> +			drm_fb_xrgb8888_to_rgb888(&dst_map, NULL, src, fb, clip, fmtcnv_state);
> +			break;
> +		}
>  		break;
>  	default:
>  		drm_err_once(fb->dev, "Format is not supported: %p4cc\n",

[skipped]

> diff --git a/include/drm/drm_mipi_dbi.h b/include/drm/drm_mipi_dbi.h
> index b36596efdcc3..85bf19b98cee 100644
> --- a/include/drm/drm_mipi_dbi.h
> +++ b/include/drm/drm_mipi_dbi.h
> @@ -101,6 +101,11 @@ struct mipi_dbi_dev {
>  	 */
>  	struct drm_display_mode mode;
>  
> +	/**
> +	 * @emulation_format: Pixel format to use when emulating XRGB8888
> +	 */
> +	u32 emulation_format;
> +
>  	/**
>  	 * @tx_buf: Buffer used for transfer (copy clip rect area)
>  	 */
> 
> -- 
> 2.45.1
> 
> 

-- 
With best wishes
Dmitry

