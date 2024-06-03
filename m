Return-Path: <devicetree+bounces-71958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ADF8D8AE2
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 22:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96620B25C33
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 20:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD75137923;
	Mon,  3 Jun 2024 20:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fVhz6YkU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E856E20ED
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 20:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717446669; cv=none; b=dgwTSc7RbNq8WtuzT8fLNeXsvQ6I5RvoGgabcwuKH4uCQBYbjfVvvDtnxj0DxkPLsIsTNOdEtpqXZLtZ0J6trhhc29aUixrjqF6c9jIJIPjnhFy52gzqa6rn8sPu28S4xUPKGoszML7MR2UI7ZUSekuB2X1bIVtmxUeSXET7mWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717446669; c=relaxed/simple;
	bh=nVnxKR7e2LvFvgz7TLxMtm7sqT9P3GmKPQLTkHgszzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kYus48vZNKJDZ8Bynfx8CIGv15QUyNa6yyikDQcD9O//UGDjWIUYmCQuq46WNLlnWV9rMJt1cWO4gUm2Gx3T00dekpwrys14QUpWqULuXO4AHepRVOyL9Z30mWYwXKjs3yMNwiGOpaa0ErVn0iBbf4HL6Yr/JQ5217b79zoc1sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fVhz6YkU; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52b7c82e39eso4776772e87.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 13:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717446666; x=1718051466; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q2AjR4uuxoyAwAOvk4z2camqVDTU+eBYs24+HoHi/i8=;
        b=fVhz6YkUYzTyzXGDXPc4s08/nBSMsELHFLjDlSizf38o2fnmWTaXYXZy0HrHD4R15o
         W/pdFNHj/7uk4olKpOW/E8oxT8/RzUzDGlXzYdYXNHruDcDXRlT2Kf/eCfE8vWyqdB+5
         fENfNrmdju9Y6zSkN8IQr+p4bAuI6oXT0XA742EJw9Y2ljLI3pByXnMeHchoBL6awowW
         KsIwP11NDBoKvsg9C3XKRJHVU2ADIWv07XjlrXOwy/dyrnGmoUlkCrLdulgQ4k/mj/pY
         IaCU3BIqYkU2yeEIg1uk+iY3MqIcN8ndoWmkVAVeKRBqwAfFQ1QDSEa6eliwk5ik4ILe
         CEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717446666; x=1718051466;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q2AjR4uuxoyAwAOvk4z2camqVDTU+eBYs24+HoHi/i8=;
        b=cj3sG+o57r8KwvPrp32UH+8P5DPJjnO/lLYDdWm1oJ+6QSTCm45b13Ky2jGk3OldvE
         31TujPzYScRN15G7qWhz+i3JEqsPz8ufLfpaXH4YMG8h61FgXVA0VAgBjH7rb1ww1+o4
         vv9YOHmFo+zCt5bD94r514WJ7Oyz989l08lovMnbqM0X952F7kXikXqK03qEKTMy0ko3
         1ES0d92LPJwCS37gb4/gZiJf6unIFMIrP7366+6Tryps3S3nC+uibHFJDj59UPZlF070
         wkAE7psL4kDwR4WP2BaVmeVZbUEVuOzcUvhqbbU8F8I2hc9wn80NecutPaMjay0iQEdo
         q7TA==
X-Forwarded-Encrypted: i=1; AJvYcCV5qlbMiR2jzn118+lJucNagKLVwoLhd10ZVReoCUZBl9LKW50zkQewoutSuRNCc8v9hvCAtw94zk/PfgxiPt2R6bpxWBF6Pi+PrQ==
X-Gm-Message-State: AOJu0YyJgkyucTRmkgFQS1HnDgJOjhwVqeUugqXeMDPhtu+iDgjhg4Kw
	xDZS38DvQUBC84QzaZoIQaIFalf4ECyx5OzZR4juIBU6GPGc+LOWGbnxx9e7W6I=
X-Google-Smtp-Source: AGHT+IGGtZNy8Pr7JqVQMa2c6+HXJKdsAyzhhZ8mAe/EzUG9NQsyho1u3hZr/yzrsncDGv6TInJ/rg==
X-Received: by 2002:a05:6512:3e24:b0:52b:8455:fb1f with SMTP id 2adb3069b0e04-52b895609e6mr10600378e87.10.1717446666056;
        Mon, 03 Jun 2024 13:31:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d8a661sm1316210e87.271.2024.06.03.13.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 13:31:05 -0700 (PDT)
Date: Mon, 3 Jun 2024 23:31:03 +0300
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
Subject: Re: [PATCH v3 2/5] drm/mipi-dbi: Remove
 mipi_dbi_machine_little_endian()
Message-ID: <l2j2bhyw6uttkqbx7o7hpb2yxzawh7f5r3eggefyvhlxc4mdik@vta7x4akfw3y>
References: <20240603-panel-mipi-dbi-rgb666-v3-0-59ed53ca73da@tronnes.org>
 <20240603-panel-mipi-dbi-rgb666-v3-2-59ed53ca73da@tronnes.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240603-panel-mipi-dbi-rgb666-v3-2-59ed53ca73da@tronnes.org>

On Mon, Jun 03, 2024 at 01:21:33PM +0200, Noralf Trønnes via B4 Relay wrote:
> From: Noralf Trønnes <noralf@tronnes.org>
> 
> mipi_dbi_machine_little_endian() should really have been called
> mipi_dbi_framebuffer_little_endian() because that's the function it
> performs. When I added support for these SPI displays I thought that the
> framebuffers on big endian machines were also big endian, but I have
> later learned that this is not the case. There's a bit in the fourcc code
> that controls this: DRM_FORMAT_BIG_ENDIAN.
> 
> Just remove the function to avoid confusion. We can add big endian support
> later should the need arise and we have hardware to test on.
> 
> Instead of just amending the docs, expand it to explain the endianness
> handling.
> 
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  drivers/gpu/drm/drm_mipi_dbi.c | 35 +++++++++++++++++++----------------
>  1 file changed, 19 insertions(+), 16 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

