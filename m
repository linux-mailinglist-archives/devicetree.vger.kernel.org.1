Return-Path: <devicetree+bounces-104430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E798597E5DD
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F0021F20F5C
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 06:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C03218049;
	Mon, 23 Sep 2024 06:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BzW2k26p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B96517BA9
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727071679; cv=none; b=ihSi+EyfyYaAskvDm/3UFxOqA/ZcVHX+GwX4F/84eTruVIcdgGxIa1aqF0InPuSUNxXVH5Nr5k2LEcLdlU022TyDCm93pmMuLwUp5to1vwFBWGeha0a2eKPkQL2gjiTvBWfg+18zf3ee/gQVl4jfur7JsW0vpXSb1f08/MKP5LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727071679; c=relaxed/simple;
	bh=G3enpQSCpJDlnfNEBv0DcEbUfgDaeO75AF82NJ/37lE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MXbYdpWZSmhoA23Kr9rXI1vszDIjzzZgJSLEHcdseG+gl6KHiJHKRuCudLhrf0TxBtF4Og5+sadiqixCQ35oZ1e5y7GbxfeUOGwRfYyNxDkF7pfNGQI37O3qI88VqV3MqIXsGpXjNAasAQSKuNC9QyNXAyXl7uoFBIEMR4bkjzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BzW2k26p; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53568ffc525so4455947e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Sep 2024 23:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727071675; x=1727676475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gCmO/YTjAtYJXPPaJsx5QKtYsIvj2q2oYXd++xIla/8=;
        b=BzW2k26pz/Z01taXd9LL4YkiTRGNlnaNz/4w/vGs/zzGLPjdFn5Wd8bz0YEfsORaW0
         ljXXNZR86eUdAAuvBgrfVSr8Oe8c7srIBnjvznuqVCh2WGMiiTxVb4/lHuWLobnaYsdq
         WCgFgLM8iVShsk6LMuN3AhUdz4hFS737xR3AscRWDmCh6MLKrluAw094kW60VwumLRYj
         L+1KndwFHbljwrVs/PJg+RTLXXSTohkmKJUlnaSsPNqDFZvaDkae6aS8Nq5YbO9vf3Wk
         2V7crwxDagugGwnVRjTwWodlZ8K8NEck1iY2BLCgtZ/rVdpAvZesYFa8jVBjpZrWl37j
         lEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727071675; x=1727676475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gCmO/YTjAtYJXPPaJsx5QKtYsIvj2q2oYXd++xIla/8=;
        b=vyqkgpynQ5Ma1FEJkKhAhjLEvUHFLut36RpLX2IqE26OpgYEsoiuu6ANDoAVV8Oczi
         KnluNch916MzqndXTReqOIMh71tdZOXvXxhL+2WFAg9h3L/VdxaKjemh+aUDFzyaYhiT
         6SpgWalokMhKycapeHm8vua2MVllDc4PtzRqU1sdrhzD+CxEYcwuPCT476ugtudmuAio
         eCCz05B1ixOc7mo+zMHt1ZYeblKK/o1lVHL3f8ELZb94Cnx+t354pVzTrN/ROTh8zS6/
         slljOaEibyLkFgelVO7u9qJ/UA5dGWhDH89Nw6TDtqwMian9/E7FmPWotx3/4j5ftT32
         4utA==
X-Forwarded-Encrypted: i=1; AJvYcCWUOjh2O8hBeCxE9fJcOAOm8LyfuYZo43+Dn+FyLIJHP9hpJaou4qRpgGRf//3vxAo5Z/63OzSl01D1@vger.kernel.org
X-Gm-Message-State: AOJu0YzXlRTaeHbDJVBFOgtRB3hU1OxdN1XNsC9BFwgqBZXHSiSd9WLO
	TYX11PrejLEaDxtEmPMgGvhKzmaGD5WTtw6nkMeJFDAxFJ+FIZf12hhDff0LjRQ=
X-Google-Smtp-Source: AGHT+IE9nytSnroJiHN9xKcxla1q+HIPMXUfGMJEkQjc2qU3zMNEUmMCLyZt/tDAoafU+Yd8PgQ6Yg==
X-Received: by 2002:a05:6512:39c9:b0:536:56d8:24b4 with SMTP id 2adb3069b0e04-536ac2d0514mr5129471e87.5.1727071675372;
        Sun, 22 Sep 2024 23:07:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53687046624sm3172932e87.62.2024.09.22.23.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 23:07:54 -0700 (PDT)
Date: Mon, 23 Sep 2024 09:07:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikandan.M@microchip.com
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dharma.B@microchip.com
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add Microchip AC69T88A LVDS
 Display panel
Message-ID: <f4z2egmrcoh7kih2pyr3mq7fzuwtvod6vxlzzim2iw3ly7jcr3@2uxiyzlfixhp>
References: <20240919091548.430285-1-manikandan.m@microchip.com>
 <20240919091548.430285-2-manikandan.m@microchip.com>
 <zognzunciriytm3uvoolxjsvu43v3m2lnctsz5swusnmm3aj2z@ag7zkncccdmf>
 <83e9d20d-f294-4303-b570-816ebc989bcf@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83e9d20d-f294-4303-b570-816ebc989bcf@microchip.com>

On Mon, Sep 23, 2024 at 05:50:22AM GMT, Manikandan.M@microchip.com wrote:
> On 20/09/24 9:13 pm, Dmitry Baryshkov wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Thu, Sep 19, 2024 at 02:45:48PM GMT, Manikandan Muralidharan wrote:
> >> Add support for Microchip AC69T88A 5 inch TFT LCD 800x480
> >> Display module with LVDS interface.The panel uses the Sitronix
> >> ST7262 800x480 Display driver
> > 
> > AC69T88A seems to be a module name, rather than a panel name. What is
> > the actual panel name present on this module?
> Both names, "Microchip AC69T88A" and "MPU32-LVDS-DISPLAY-WVGA" are 
> present on the display module

Which panel was used for the module? I don't think that Microchip
produces LVDS panels.

> > 
> >>
> >> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> >> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> >> ---
> >> changes in v2:
> >> - replace microchip,ac69t88a-lvds-panel with
> >> microchip,ac69t88a
> >> ---
> >>   drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
> >>   1 file changed, 28 insertions(+)
> >>
> > 
> > --
> > With best wishes
> > Dmitry
> 
> -- 
> Thanks and Regards,
> Manikandan M.
> 

-- 
With best wishes
Dmitry

