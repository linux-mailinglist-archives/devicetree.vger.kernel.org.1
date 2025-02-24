Return-Path: <devicetree+bounces-150103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD32AA41331
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 03:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E7DE7A3ECC
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 02:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B0419AA56;
	Mon, 24 Feb 2025 02:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tAQr5Rhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838E1EED6
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 02:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740363015; cv=none; b=Xwx5X1hBAZyRaVE+38FY7RpYpUW5tr9cVb8P58Ibh3yni9V8iD71eDTnc/k8KIHFuCvJp7fK8uaL1zHvylukTfvH37CiaAwYkafhXJTvPQQv22tNhZEVAQzZPHrQxwdUr+0zgV0lL52oBsmNMoCO5y2wKcRTAu59bZcnD9UIwmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740363015; c=relaxed/simple;
	bh=pXl5FCo4Yn6NoCnHJPcbb2aEl83v3Sc4Fm/FsJGwW8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ERNBCQJoJcd09agfMeuulEP+V7TpCZiNq1kfE/fTPS8EN+H9muaPTIjeQDf8zO9A0jdJEYPLVj5ibVCNoeu9f1zUvEHY6V4AnG1v4nRNsGYIvoY9YEa0o3uC49PFsCp4zBeUXmsmCDIfBDTmyw+hGO9bMfIWVJCjbUh8X9RppOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tAQr5Rhp; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-309311e7b39so35554181fa.2
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 18:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740363012; x=1740967812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=70SIM7ve3ohVCr23pGlRASua+1uwWRT9srkX+niW28E=;
        b=tAQr5Rhp0ZOYO6ZHKNJKmDOFTtHe71/3G4ntEgOXCPqmwpAYfqOu3a8ODxViMFUS8m
         J0jBt+8bdAMxY3RvFIHbDouC/vvibgOBUz4eyDZMASTkm+/sZYORGCDbhgP2X5c2fstL
         P2+0jDmZ9fHoTzaM2qnqjRYJ/JThuQ5Dq8L3AhIi4UTVlnhjUWSGbR6dGwa+rcg6T6o/
         xkQkcekynFjxDXUwKCQlX+t4+L2MUU6OqiE7aI/8sHseIINs3Jfi2/0200ka0KWyI3+J
         UKw+ASnVGkPuWWV9oFkgjuGwTItwNsxNmCiUeln1ONBU0t2q2fYFvf4wpo6/P6VlZh43
         bCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740363012; x=1740967812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=70SIM7ve3ohVCr23pGlRASua+1uwWRT9srkX+niW28E=;
        b=wxZTR0x1vaiqjLmuhlOpYxcrkpjN3T9j/rWXGcQu5DRmqk/iO1iHn49vtEwYCz1tke
         31DpUkHChOFfSwlqPSQJ4UnBtgyqhJ+1MFeSdUTj27IBIEFVOeXWfeb1M1oKdRVyhIOq
         iPqeRXuFi7F4bcv5w1xtInJdsJEV4rAAicWVVbCsS8zW6x8d8W7m+HfHtMw6VhRD1vkI
         HKJKirKtm4snh8FG2ZUNEUshllPl11MzMRrwOwy/ZAJgy7bTEXp/vQkto5zs8nTmGZi7
         8hiRhe6a5LoOhQc1yHLu+k61H8KgZO7yCZHbzyEXTTeC7MmiTzSwAmyd2HKcahyMQs4u
         PT5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPVxsjzv7z7cOiCR0k/mnZvW84WQ4tvG7iyn+39TKiFuLpBFahX4YPt8ywgWXC0k7SH/iFKRmZl8B1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0npOhrMXESp51LIQ4xcJphQTa/jukmuAzLv8ESLyWkszgow0B
	5pTpnnmzEviU+4BsONFx8SqT7U8WBywhWkNwdKfXvvkwVXaASAaTFIPPdPFoph8=
X-Gm-Gg: ASbGncvfeCgvc/jW+Pb+t0Ob1/pwDaDcVZd6ex8tY8WWX79ZTyQZOfxWQpqnEU2u0oe
	GMhD/7fcseN+abXvlFgtKhjiQZwerKmpaZiQDmLC6KRdv0lY3kk5q2ckNZzB9otWrBIDvOlVebx
	uFX3eWFy1GaD1Xx6WgvyKSv0fwYES2yKIpltrhrawgYJAgZG+0TkUT1SMfBrKCAMjEM8W5Bqc8l
	Ib8xiKwwU3sfzBfPwTh7PmtBXwMtjVZIEh8BpZY16pcNDASR8RpFigF/J3WJDd7fpcGa+cJt6KP
	nF9XBi1fXZqPJemZ+W8TyHErCzvm5zD/q014ZYK72ee1UZMXJ5GYheLrDwEVC+njTPXTjXkvNEt
	OKM2nMg==
X-Google-Smtp-Source: AGHT+IEWdqjReqmo0CabaDV+wigcDC1IzI30i9hnje8CtWWpRhAfh0Nh8SpUaaNV8YO6QJ4AwRMK8Q==
X-Received: by 2002:a05:6512:3f19:b0:545:646:7519 with SMTP id 2adb3069b0e04-54838d3d9d5mr4448013e87.0.1740363011574;
        Sun, 23 Feb 2025 18:10:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54618f0a36bsm2533548e87.195.2025.02.23.18.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 18:10:11 -0800 (PST)
Date: Mon, 24 Feb 2025 04:10:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] drm: bridge: Add support for Solomon SSD2825
 RGB/DSI bridge
Message-ID: <hz6amgqdmvr6tow5k3gj6n2bnaayejrdv6yhj6sjzs7v3dbjbv@3dcm45ydkkd3>
References: <20250223153244.149102-1-clamor95@gmail.com>
 <20250223153244.149102-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223153244.149102-3-clamor95@gmail.com>

On Sun, Feb 23, 2025 at 05:32:44PM +0200, Svyatoslav Ryhel wrote:
> SSD2825 is a cost-effective MIPI Bridge Chip solution targeting mainly
> smartphones. It can convert 24bit RGB interface into 4-lane MIPI-DSI
> interface to drive display modules of up to 800 x 1366, while supporting
> AMOLED, a-si LCD or LTPS panel technologies for smartphone applications.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig   |  13 +
>  drivers/gpu/drm/bridge/Makefile  |   1 +
>  drivers/gpu/drm/bridge/ssd2825.c | 821 +++++++++++++++++++++++++++++++
>  3 files changed, 835 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/ssd2825.c
> 

> +
> +	if (buf == MIPI_DCS_SET_DISPLAY_ON) {
> +		/*
> +		 * NOTE! This is here since it cannot be called in bridge enable because
> +		 * bridge pre enable and bridge enable have no gap in between.
> +		 *
> +		 * Existing framework bridge-panel seq is:
> +		 *	panel_prepare > bridge_pre_enable > bridge_enable > panel_enable
> +		 *
> +		 * Using prepare_prev_first was tested, but it switches seq like this:
> +		 *	bridge_pre_enable > panel_prepare > bridge_enable > panel_enable
> +		 *
> +		 * This will not work since panel hw MUST be prepared before bridge is
> +		 * configured. Correct seq should be:
> +		 *	panel_prepare > bridge_pre_enable > panel_enable > bridge_enable
> +		 *
> +		 * Last two functions are swapped related to existing framework. I am not
> +		 * aware about method which allows that.
> +		 *
> +		 * Once there will be such method/flag, code below should be moved into
> +		 * bridge_enable since it is basically a bridge configuration completing
> +		 * after initial panel DSI sequence is completed.

Will bridge_pre_enable -> panel_prepare (including
MIPI_DCS_SET_DISPLAY_ON) -> bridge_enable work?

The rest looks good to me.

> +		 */
> +		config = SSD2825_CONF_REG_HS | SSD2825_CONF_REG_DCS |
> +			 SSD2825_CONF_REG_ECD | SSD2825_CONF_REG_EOT;
> +
> +		if (dsi_dev->mode_flags & MIPI_DSI_MODE_VIDEO)
> +			config |= SSD2825_CONF_REG_VEN;
> +
> +		if (dsi_dev->mode_flags & MIPI_DSI_MODE_NO_EOT_PACKET)
> +			config &= ~SSD2825_CONF_REG_EOT;
> +
> +		/* Complete configuration after DSI commands were sent */
> +		ssd2825_write_reg(priv, SSD2825_CONFIGURATION_REG, config);
> +		ssd2825_write_reg(priv, SSD2825_PLL_CTRL_REG, 0x0001);
> +		ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0x0000);
> +	}
> +
> +	return 0;
> +}
> +
> 

-- 
With best wishes
Dmitry

