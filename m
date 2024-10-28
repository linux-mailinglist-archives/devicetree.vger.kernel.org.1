Return-Path: <devicetree+bounces-116377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA779B2B3C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E96F5281B9A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FEB192D65;
	Mon, 28 Oct 2024 09:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CSsv9zo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A02190664
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730107254; cv=none; b=ubmGRGvoSE6Q7zwCqDG/xEshm81dkdEcoUSEK5zgxS9eg4Y59L2GO/vxnBxjyetqC/fVjidBmqwQwlcyRg2uVoxZyVncbCrSlqoyLFuQ5VE//8teV2V5susZhntoXdvRcdTxbjzHWGcwGORZzGYVYe9MbVQ8v7ZEcc40+Cv1xVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730107254; c=relaxed/simple;
	bh=j9Yh3zrZUalX47mvMkgSXxAy2RuDtztZjtjGaLcmm+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fv3cfglFm13w09XTDssgz7NI8++meYyUCW55tjA6lqgtc62TQjvd1R4yJ8dXO3scHkTigxMtskPoo7KtI4VIBIF81xqeol25rFuOa6VWmqML4k3ltdI7l5nkqNoX/bmgC/LbgoKS2WWnc8DpooADZxIB8q125Md4Nuq/2biwXjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CSsv9zo+; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so33548201fa.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 02:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730107249; x=1730712049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VPBuezFB3CXtTW5/lJNTKguPGRqG+lEFtQVwqgqjd4Q=;
        b=CSsv9zo+gjH62jHqC3592QZ17YJnAzndEYS8uph/04F3pRwA2p+oapcIwPvIAuU/Vq
         VSWiKLahxAdQyYrAbAtpynZuKOy3b6Pl9sAadhl040qjvdjQ/bsR8dMLae1LUZjLZdgJ
         R1G1jRv+2r5uoRn8+hf3XukCqddY3W36/hn2G6KZCZPA0yw9Dc46Rck1swcFxwquE4Jr
         ZaDJD4S2eG3/ryRnB5GmgcBkbaD2n8ZEPcj4bgvVdoPR2OMFpTYi+Z82F2hEAt3w5LK2
         lhNg8N3ijlkhdMC6BEIujMLWrp/oCEoLPD68vuFgSbS/IcNUOQymj+UfnDM380K7nsAK
         OENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730107249; x=1730712049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPBuezFB3CXtTW5/lJNTKguPGRqG+lEFtQVwqgqjd4Q=;
        b=ok0tG18uAcI6QzE16t7rfC+gy8VjGLVlB6P7+q53lKANzUpl2AC9rTwa2vEiHNwcgQ
         e/xwa0cjg2auKTIzI4Cpo51sLnqkchVW4j6axT9SE1wEfspAUEg0A9aMKLrS01YAl2+g
         Zz7Jd+u/E91JeMSAkRI7BuN47O9J2iTLl5HS4ZgzOypCltY3nVIMGQlqDctCzJnIEqiE
         BDBmGgn39zOy+djoBhl8dRauARqqlPx3vu4/34prtqC6iei9eVr0jO0Jw8sYsxcAwzAd
         YAys1d3thIqzAyeIaoFpPXJx8itQOVmJ1G8pG2EFi4AtNB0z2lkE4hOEFpz4zjF6Zvvl
         UxTQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+ULaVsl3CxA6vL2PYH/E5WwZutCLAXJ9Y6vwVjKqAflhNplnVLzs6iTVgkCwzDZnCGie7QgKSbEb1@vger.kernel.org
X-Gm-Message-State: AOJu0YzkiJ2Arjn0sL24Opdo36falG6p+jRHIuT04HrFreXhGewti7W1
	pHDiOu+9noEzfwpWWN6R1hqIiTmg4Yd+9KOgxFc+G33xPrAmDDJ0dMsZcsh9t9A=
X-Google-Smtp-Source: AGHT+IHMzC2RrBK1gDyjb7BDtN9UQMSMyOUaimH3SDT8yHY0Jieo0+u5sTv3iUOAiXJhLKZA5AAPKQ==
X-Received: by 2002:a2e:bea0:0:b0:2fb:5014:c941 with SMTP id 38308e7fff4ca-2fcbdf71340mr25188781fa.14.1730107249435;
        Mon, 28 Oct 2024 02:20:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb4507c44sm11199391fa.19.2024.10.28.02.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 02:20:47 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:20:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_jesszhan@quicinc.com, 
	mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	sakari.ailus@linux.intel.com, hverkuil@xs4all.nl, tomi.valkeinen@ideasonboard.com, 
	quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de, nfraprado@collabora.com, 
	thierry.reding@gmail.com, prabhakar.mahadev-lad.rj@bp.renesas.com, sam@ravnborg.org, 
	marex@denx.de, biju.das.jz@bp.renesas.com
Subject: Re: [PATCH v4 10/13] drm/bridge: Add ITE IT6263 LVDS to HDMI
 converter
Message-ID: <tjtbvn5ewlzs6wqkp2ffquiiebakhv2eg3vt4mzooeb6nibx4u@qhwx4hxvj6ou>
References: <20241028023740.19732-1-victor.liu@nxp.com>
 <20241028023740.19732-11-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028023740.19732-11-victor.liu@nxp.com>

On Mon, Oct 28, 2024 at 10:37:37AM +0800, Liu Ying wrote:
> Add basic HDMI video output support. Currently, only RGB888 output
> pixel format is supported.  At the LVDS input side, the driver
> supports single LVDS link and dual LVDS links with "jeida-24" LVDS
> mapping.
> 
> Product link:
> https://www.ite.com.tw/en/product/cate1/IT6263
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Acked-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

