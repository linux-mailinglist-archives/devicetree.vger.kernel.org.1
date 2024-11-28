Return-Path: <devicetree+bounces-125327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B600F9DB979
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BE66281AA1
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0EAB1AA7AF;
	Thu, 28 Nov 2024 14:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yQFereLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E18019DF8D
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732803515; cv=none; b=egfvgwDPXlj3TXXIvKkGwO1U7ZP/dvTKOFYPJCXcm/o/pzMQZC94w7OG+A0ArgohiSZca9QynWGuHzXf4nNG12wYTnOqGzuqTUte7Q7Xclvgpb2AIizlRk6065F0jCrWIZ5mQ9xM5sM0koffW9KrAyCRd1NNWPTh0j9DwOjdWS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732803515; c=relaxed/simple;
	bh=dcwb9b33KIM/BSPqPVuj+rX/P95ylrOXU+LmT00E+2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PiQnoXWZmvOXxApWP3tV8x4PrIX++c68asn7DHGIDMkjbfIdg2wlgUauI1oj5lquEGhe3wsQT3Cg+EqqyF3aAO2okReiYq25Y8WAz14VGydLiZV9Cjl4YYAO51nkWuj220drWzIhDFUl/8EDhAo50GedHsT1s45UnqUhihojKHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yQFereLR; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ffe28c12bdso4997841fa.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 06:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732803512; x=1733408312; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xA8QccDB7jDinpTszrKQcVtNkmKlzXFjmJDa5bO0Mmg=;
        b=yQFereLRqx3TUmAloybv5y6exMM6SDvOqnquGmqoBgI6GLSNyIV70fM1PKgfghZNYZ
         0f0gkMjAsAtr1vGNXiQ6CnL9bAbrozgXcWP3sk8ixh/xlzeGkWHfqVxA7O01oWBUVZI1
         euF6nW46XQwM/tH7jbqmWnwpzU2B06/Hu90rEuwurrveR92hZ7FQn9HvHeVfQ9zF+n0U
         NA7zzAstEpkTl37uAz60DsN7joembZ5ey/v5OKVRrfa48kPwPvlnSN/fz1gVOb++GK4g
         93dLOJySW4m5dJNTiS2Wvn1XtNiHjSBJiGiC58v2QbyCwJ3QWnptpwe/x4XXBWpXVzWZ
         1p/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732803512; x=1733408312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA8QccDB7jDinpTszrKQcVtNkmKlzXFjmJDa5bO0Mmg=;
        b=a8v1EyghvVh6eFG+EWx81pqE4Hg0Swsz5ELyno3MwiNhj3YWPdM5kBxGJo4M8dUnU5
         tSG4IGc+LuOfYKEs9pAwuDgYDJ/+5p28UGXw9LP9PRboNEEuJfc2sbYY2sdbs8LxaFD5
         VK2Vp4vhbaigeTi0yT9dKpg9FyPJEwBb7VvYWtvdJsxg2Lj4mETTKqI6R/pB6MoFg5ya
         wLKqmSYWq4Vi9rlWUYieCMlRiZI97QaFibO7FaV2lkgpSnvDHLRrD6ygDvozCLk0S3Eo
         5GUjGMxxCDI67XrwP+Tmvx36F8jfThh42cZmYc53No+1R2bY6ogCsT37oK85RZc3Psm6
         BEJA==
X-Forwarded-Encrypted: i=1; AJvYcCUNuhauY+7cxuhJcSo1zrbZtmG0rq03eRV6441FEIhgOkHteW5Szte+8Q9XVyGQNnXqwSBAvUDBi1+k@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5W/QUBgtrANPqhcS+WyHyTgFuMKzqBfzu4iobVuqMRaa1ctkZ
	+2T4EnZ3ljgncyfBVcIe0IADfATGVNR83ofLMivTZVhLhGgszah9EsdhleTEcwQ=
X-Gm-Gg: ASbGnct7V43Std4lNk+vnOaxQ46EI+omR930BDmYYId4UfwtQTKTeIMHLhgUa7Hixcv
	U9bTkexjk4dNklX+0xLti/vTzISVFHqFf6U5SelIH4Dns/GAQtakKDMaOI11O/yO8Uyld/cgUor
	utzCHng/rIhuMfc7d7PnfnujKU8hvMUO52CVUFXuQyVZ35x9QQ90l6/A+CuFoc2qLbnpqdRfXlo
	UeSgnwj4Wp414NcxIfoJlfUnDqdYfRvxkjBixBv/C4TuJWEZkpEyHS5NdU7Y5F/JtIkp9vlM/0x
	zrPwjy4a2+6iHnyxlJPrHx5zOgmlfQ==
X-Google-Smtp-Source: AGHT+IEWrfuUcnXV1iqJHqdNEOSGIK8M6/LbygKUp+v7qqACcol4zNxR8qGEVUdI0pmwpuF4EUOzaA==
X-Received: by 2002:a05:651c:887:b0:2fb:8920:99c6 with SMTP id 38308e7fff4ca-2ffd604fc7fmr46439611fa.23.1732803512212;
        Thu, 28 Nov 2024 06:18:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfc75452sm2022861fa.85.2024.11.28.06.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 06:18:30 -0800 (PST)
Date: Thu, 28 Nov 2024 16:18:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, glx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, 
	aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [v4,09/19] drm/imx: Add i.MX8qxp Display Controller display
 engine
Message-ID: <kixewphwyawbyrfu6pxtqx5fywqmq7ms2sa5j5pzogetmebcjz@ouhpohk7twbc>
References: <20241125093316.2357162-10-victor.liu@nxp.com>
 <c4334c9b-833b-4923-8188-64d662231512@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4334c9b-833b-4923-8188-64d662231512@linux.dev>

On Thu, Nov 28, 2024 at 04:46:53PM +0800, Sui Jingfeng wrote:
> Hi,
> 
> On 2024/11/25 17:33, Liu Ying wrote:
> > i.MX8qxp Display Controller display engine consists of all processing
> > units that operate in a display clock domain.  Add minimal feature
> > support with FrameGen and TCon so that the engine can output display
> > timings.  The display engine driver as a master binds FrameGen and
> > TCon drivers as components.  While at it, the display engine driver
> > is a component to be bound with the upcoming DRM driver.
> > 
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > ---
> > v4:
> > * Use regmap to define register map for all registers. (Dmitry)
> > * Use regmap APIs to access registers. (Dmitry)
> > * Inline some small functions. (Dmitry)
> 
> 
> Why?
> 
> Its seems that the switch to regmap APIs is not very necessary,
> as ioremap/writel/readl are simple enough and easier to use.
> 
> Isn't that this just introduce an intermediate layer? It's okay
> for display bridges/panels that behind I2C bus or SPI bus. But
> then, why drm/msm still haven't be converted to use the regmap
> APIs ?
> 
> Just a few questions, has no opinions to your patch.

Please respond to the original review comment. Then we might be able to
discuss if the suggested change was logical or not. Discussing changelog
doesn't make sense becasue there is no context here.

-- 
With best wishes
Dmitry

