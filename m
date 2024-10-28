Return-Path: <devicetree+bounces-116379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F36C49B2B43
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F5C9B22667
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71011AB536;
	Mon, 28 Oct 2024 09:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="obnKKrr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62991CC88B
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730107289; cv=none; b=PAGLc2ppIKr5IkwY3a/0w0n7LjK/RvptKyqQelk1rIYEF5crrpXr1xCzHILC23AXWFhKbZXQyBas9jPikrgZXii09DplvK5kTB5+Lo0Kdl8/HQeqStsbILCCR1orbicURYFJOaDBvOkupeAi5V3vp8sZbXy5jWMcblZoldDGI1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730107289; c=relaxed/simple;
	bh=0jA2nKhDLnxRGiEvYnV+NPzqXUb511R/IyOADJWqmrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U6y0RUZRuaqilZPI+ahhbEK79H4PCechoaxAw5YM8zR1EGpFpxUu5Gtvh5S1HK7zKwaIB9YB8US4Elc3SNbHFvDgzYot1TO6iA/fLvi8tJnwYDkQAccmcaLFQ5UZ+vw6OTOmsBTScHC+xeyhSwrhDOm2t/7yzz/t/JrO/WL4DJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=obnKKrr9; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539d9fffea1so3769834e87.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 02:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730107286; x=1730712086; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NMxl3S3T78M4ZDclpZfWNpG18/6HovRsXKrq1tEEQMc=;
        b=obnKKrr9bcGtI22biGFCH6jqRu5nHnyw1yVRYV6r2urGWcRKWRqEvX9sHIcYSNNOoc
         BrICVcISxcXlNHjr+UYNq24s7K3rLJpet0bJfJYxrLl9853WgK0sphCKLjsDefh1TXke
         jKDkNoB9LCC2fcXauUI6zW40u71uac+IGP9k3jhYgDMVPwMWgvdGKHKsR37eiVIWdop3
         tl0U5x0Rfanr/b2EvyYQv7RteAm97FBQZYTCyoZ7iKvX/0QJi4rj/z9UBizYwfdPLk39
         KQfXqJaFmvy5r+tM8px/DziFB8g/ubCZ2J51bhTsvzEhBgfWtOura8ww9Rn7WGM9taJw
         iCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730107286; x=1730712086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMxl3S3T78M4ZDclpZfWNpG18/6HovRsXKrq1tEEQMc=;
        b=Hx1u9RNj7xbUETuA7CZ7Ajf0SFLx5OF2/lpivTUC7LAxu7RyaaWfLv93kPUvxDqiWf
         ON1o2U1FujZ7yaWsJ4o1ik4GiK9Y+AALwZfkgDP9lv9nRmX5szWjaxoyb/zMQ+G8QSl/
         abbgyTBIo8zjeknGxh5Y7WFWs7u0Z6yokcAkaC7wt78JSwtlL0HOyXdg13UX+UQ3at4a
         /SNtrlfs2VB4HziVpU1LdGnX/msaOViBKKfqWXxdaG/vbxNSn1fb+MsrESOQ1PMHLTK+
         a48YZm7fcXxKya2PYZVSKmx0IRnjIFr4pgT/HYjKvkrBoHt28ne98HW0orzxrjpdOKlB
         jYhg==
X-Forwarded-Encrypted: i=1; AJvYcCUD+EhhaRDC+sPt05K6YBiG25D3i3aiFQSwI9MA/PSVBQXa0FPfU/cO3hk/00tMH0McqZFnY9EzJ+mv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7cYLGqDZmdziwwPo5tlzxrCr0SvlwkZmtIGESSVPemtHh5CB+
	oMhzEVgWS55cP2isZfSlGsInZH9NcECyJZG9FWYiYXAjBNuh06LLcVoYn0FoksM=
X-Google-Smtp-Source: AGHT+IFLri/jKsB1rbBwLcG+4d/hkJZCTM08WJqeMH6Xd736MsKNNG7MWeqbuGnrpaHJPvqDTjFhqw==
X-Received: by 2002:a05:6512:2256:b0:539:edea:9ed9 with SMTP id 2adb3069b0e04-53b348ec028mr2877777e87.1.1730107285683;
        Mon, 28 Oct 2024 02:21:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1c9ecasm1026060e87.218.2024.10.28.02.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 02:21:25 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:21:22 +0200
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
Subject: Re: [PATCH v4 13/13] MAINTAINERS: Add maintainer for ITE IT6263
 driver
Message-ID: <izlahf3rnobapkvaxvq2lpyz6vsurdhkhnigzogstljpupn37x@3a7ziz63n2zt>
References: <20241028023740.19732-1-victor.liu@nxp.com>
 <20241028023740.19732-14-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028023740.19732-14-victor.liu@nxp.com>

On Mon, Oct 28, 2024 at 10:37:40AM +0800, Liu Ying wrote:
> Add myself as the maintainer of ITE IT6263 LVDS TO HDMI BRIDGE DRIVER.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v4:
> * No change.
> 
> v3:
> * No change.
> 
> v2:
> * New patch.  (Maxime)
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

