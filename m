Return-Path: <devicetree+bounces-113608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAE59A666B
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD3D21C21ABC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65D71E5726;
	Mon, 21 Oct 2024 11:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpHh/977"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC431E3787
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729509462; cv=none; b=DI7b4TTTI3utEA59DcJ57E52+BajdgHxz0Xpx/uEHWQbxnABDhebmrleMmxsYRyzfYLPlWTgA4PO/MIpj4hX2wMP0fjLvMR/HJew91ObHMO45Bo4+uaSAFmvCT9qIPdtgpzfnzEW43DCWZrIENC4SaZieBr4YDvz07PWGfNAanY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729509462; c=relaxed/simple;
	bh=FGjFS6H21VmAbW/4feNiFztxcv6DuYXgQWN+2SrfmQM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GQ3GJS3TCVyawbmNtKo1zDG+pGr8o4uaR3ss5T3D1chXV7nzwhGP8e/Jpe/so6p6BF3tfIFYkR3UekyJOsbj65q+kj/DEvfcd57p/SXcTkyFUuUf5sElw1UENRRdq4QqOu7b6wE7TE+7QlEzK5sP05rhMpZtGN/sP7A8RP7LQDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QpHh/977; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539983beb19so4688089e87.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 04:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729509458; x=1730114258; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YNeF2ZBGHaW1ol/9+W1XXsRcpbYR9GHCwlVWOv4fcZQ=;
        b=QpHh/977tphzIGppbQvWdNKvtKBgmt32SXupbgfIbHff87aD0tLBfN+UrFWvkx5P+t
         1VPMrreO4x/f8umBq56Rq76+ElB/64nAjKGpvAzCSknGsKHz75vWBi1DZs6mAL58etGe
         xSHgnWe1uIoEW7Vk04tYmZG7fZh6+uPkwb816HXB/0w7LEtinbvJAdxwTuXxj+cMN82X
         41DxhrOw/G1OZKjIzj6LnBqwnr1XBX6QxefulOFMmRXvLwGfMPpakiQwHrY1Cm597rpM
         OwKdbWNUZ2xPUe95PEhMfrvDJ2RKHv/ZRnQJPdfMuYJ9EiQpRbyv1vQgKqX0f7lYpSV4
         6ZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729509458; x=1730114258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNeF2ZBGHaW1ol/9+W1XXsRcpbYR9GHCwlVWOv4fcZQ=;
        b=eIbD2UjWbKTWd+2ZWl5Y2TuDUL241pXTffWvDxll6g1/yDozDfL0wo5bqETamCvcV4
         i1WDQU4UYSfCflzNczT+ANW9UcNICuOCrcl0FQuFMoTmockhA82u/l/vrrwu/Rq77uT/
         dPYI80etrx/vetP/PbF9XvoFzhpIv2eC3kDAI9TyDt+Nk2YQQe/9p2/FgEgGVXSe9Dgf
         1lwTTt7NkYJGoh1dbc/A5q5jg0yZlXNIKhAbnnfVFi6X2gsxz0a9mI3DVq762SqHjvIV
         Y7OPjb9On9NGYgbTyznAiW0kYTJnFWmC6jy8myWZdm5ivNH7hUfXWOyLFfayed2bR1uG
         r2eA==
X-Forwarded-Encrypted: i=1; AJvYcCXIxjzbO/6Ms6JkS/c6LJkF4bN0WxyAIDvzk0O83Hrv8pLXbo8vNKWflrpgYjHrDVTeQK11gHUYC8Hz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0rr4KwsfZofa53kLAkWjxFM2EZS+/sZEEWOLg9yUnZqb5hEEl
	C0z8QbtarlqZK4vXWSVWPBR7I+nkn5YH3chCm5qONBpkK0x08jm7Nsula325ruA=
X-Google-Smtp-Source: AGHT+IEEkroMVurdl00NK7PlaqSl2yw7wRW19flraaPUODpUSSN62Bfto3+ygPG9Fg+h3Gwjkprg0w==
X-Received: by 2002:a05:6512:12c3:b0:53a:40e:d54f with SMTP id 2adb3069b0e04-53a1543ef11mr5132397e87.8.1729509457981;
        Mon, 21 Oct 2024 04:17:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a223f0007sm458767e87.91.2024.10.21.04.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 04:17:37 -0700 (PDT)
Date: Mon, 21 Oct 2024 14:17:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_jesszhan@quicinc.com, 
	mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, tomi.valkeinen@ideasonboard.com, 
	quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de, nfraprado@collabora.com, 
	thierry.reding@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com, sam@ravnborg.org, 
	marex@denx.de, biju.das.jz@bp.renesas.com
Subject: Re: [PATCH v3 05/15] drm: of: Get
 MEDIA_BUS_FMT_RGB101010_1X7X5_{JEIDA,SPWG} LVDS data mappings
Message-ID: <ry5fed5bwwlnefcmfrhycazin36j2dsi24zegl4hteiuc4rxh4@qbs7imdlix5c>
References: <20241021064446.263619-1-victor.liu@nxp.com>
 <20241021064446.263619-6-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021064446.263619-6-victor.liu@nxp.com>

On Mon, Oct 21, 2024 at 02:44:36PM +0800, Liu Ying wrote:
> Add MEDIA_BUS_FMT_RGB101010_1X7X5_{JEIDA,SPWG} support in
> drm_of_lvds_get_data_mapping() function implementation so that function
> callers may get the two LVDS data mappings.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * New patch.
> 
>  drivers/gpu/drm/drm_of.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

