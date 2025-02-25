Return-Path: <devicetree+bounces-151212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3769A44E1A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 21:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 227293AECC1
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083FF20E019;
	Tue, 25 Feb 2025 20:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hEnpq2bB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E9B1A238B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 20:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740517035; cv=none; b=NbHrEp4KlMhw3Yl7RsI2YKjnbOdyt3GZkOdNdKBbO/Cn2lALXLmRQrt902djnB3UGp4f1yCb/2rNo+YbqvDV/t7q+nBSypO6XhuxTWg5uPQtoz5anMnqKYW0OUDsdTolzXcYVI1hiYSprFJfQQASXTFm8B0K4PeA2WMuTNvEXj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740517035; c=relaxed/simple;
	bh=Ho2tqjl8RDylbwgCGJsLcMFxwZUteXNFVsZvLqhv/J4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1UbmBqDG92QWKJeX//psVE5eriMb9idCTDKOozJS6p7yIWTH9ei/srAWpRiG/WuprRsYut2S3qfsnzONEw/eSDsozbrrPyzE4Vs+fbvOMXwddSNvYY08SAasKg32Dn9qwtPw1xE++ywBWIFTb7+1xFN29gNH0oYpgXWKlNA4MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hEnpq2bB; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5452efeb87aso6084242e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740517031; x=1741121831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RC4nwCVky+xPc0uxnaEdDnOXaTOZCldxGM13yaUgyKU=;
        b=hEnpq2bBclErB10VRewV/heBsllNtj/RkNZP3JbPvS9U8DZafDKwiXKxSflRHLKFsO
         aSWI9IzFXm1/KU4W2o7f5tzgkPdwlp2TyUknllJC2KAsg0qPuZYVYHRM9ImBDLxceX96
         g9QK0iZRo2vJP2QDj8vNpBG6aHY+ehoZjwaN1Kq4Qn6We20+DbAw8RZYRs5fsYMi6uCZ
         cqkUbEp7nA44lzwGcmXgT9/IUdD32q1sXW8H2yP8oXiq8bTtTlWWBKg6B/tziVG5s15b
         xkna29tSQM58+4JS7Ho8ZswatUjgJaWPeQQ+cPH8ib1H3fZacqlC/n6WXrJFJVlzkzzU
         GTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740517031; x=1741121831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RC4nwCVky+xPc0uxnaEdDnOXaTOZCldxGM13yaUgyKU=;
        b=WhbkF7X0KXZpCqMoXs3+yxwdJRvOEHVJzEqwVmETYokQxx/357fr1Kz5Z5iO8TtVpo
         Wlrzm/UyaRDs8V7+ZY04QtYvIdCbl5Mqw5qDE9PnvVtRM1hWv7ldr3Ca67dkiKmGqiJO
         6Z1vm5+6Fwgjl9/siXVGukZSJbW3I0UJlqeRhwqtIzw3YvurAb8DT6Byr+64un1eVe7J
         BFpuP3D0a9ZRxtnS9aszdr33HmMH4cE97qBILcao9lv0owgnCCl+diol6IxMMieU+qDu
         wVOyOngsfLYs4WPgZGhzaSgNKo5/k3nxifgXGDLd6iJO07PNlhqPDH0+vuU2aRiAkRad
         EKhg==
X-Forwarded-Encrypted: i=1; AJvYcCU1Vwm3Di1DdMYbhc32ItstRGj16Mv4BafElOXSCDjSqqi1UXYPrt7VIQ0Du9jeUrfbWqzu1U1Pd1Om@vger.kernel.org
X-Gm-Message-State: AOJu0YwTR2qW61pzgXdRf9TYJFDZp5tqwXqmVeX9RuYfmmLJJ7CTT9IX
	y4M2ykgUObCrVa8HcEtdNu+/P9EVXN2OYYf7wNi7jSXYgZdkVFlo6/VmS6arzLY=
X-Gm-Gg: ASbGnctHIogLTxw1p25DtWHXbr4vTCCSm5lYBcW/GMxTT+RuoEvvp2d2J4zMRS0WHMM
	ha/1MiK+skA/xl8ZR3ZRgWDT/J2KIEPgUnNT8LFJVFYyn1hQfsKLILLylH5iOD/EFe6P9V+PAod
	QSyZ7HJ+Qnt/dJihh6iksuV7QDfQcuZc6PPmWYrvewzt9Ry01IwromcoMOSaWF3D3A9kLf1G8ym
	j6+oNwaFeOl5Ot195NmlmSSpyUecAK+Fsiq1TVgItksUfSb+rkJlYUnugFczGL20CUjJnQymO1m
	YmCsqin2/MKNOZIDitWdBwMctV/Umlv4APdSYOZhpAHPiyXLmTYUb92EdKy7p7A1tMEpM6GugZh
	qySLrsw==
X-Google-Smtp-Source: AGHT+IHRv8mh/QNtBZyrnliPjjpkMnU2s4zUsA7EqzstzJNaDy/fNbCuH+kkInHHb1dD5QukYC4paA==
X-Received: by 2002:a05:6512:130c:b0:545:2953:1667 with SMTP id 2adb3069b0e04-5493c57a2eamr788746e87.13.1740517031002;
        Tue, 25 Feb 2025 12:57:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b9d78sm271652e87.79.2025.02.25.12.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 12:57:10 -0800 (PST)
Date: Tue, 25 Feb 2025 22:57:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org, 
	andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com, 
	quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 10/11] drm/bridge: anx7625: update bridge_ops and sink
 detect logic
Message-ID: <yvjb7sd42uhvomsw2svotyxrvdxihsa3qch3lfynpaoap6g3hp@dcqmaw65zsk2>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
 <20250225121824.3869719-11-quic_amakhija@quicinc.com>
 <ne35ljkudi5jta2cby7fgjzqsd5sjpwcjpwhv6kmedq6nomho5@txynsflvtc6f>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ne35ljkudi5jta2cby7fgjzqsd5sjpwcjpwhv6kmedq6nomho5@txynsflvtc6f>

On Tue, Feb 25, 2025 at 07:58:24PM +0200, Dmitry Baryshkov wrote:
> On Tue, Feb 25, 2025 at 05:48:23PM +0530, Ayushi Makhija wrote:
> > The anx7625_link_bridge() checks if a device is a not a panel
> > bridge and add DRM_BRIDGE_OP_HPD and DRM_BRIDGE_OP_DETECT to
> > the bridge operations. However, on port 1 of the anx7625
> > bridge, any device added is always treated as a panel
> > bridge, preventing connector_detect function from being
> > called. To resolve this, instead of just checking if it is a
> > panel bridge, we should verify the type of panel bridge
> > whether it is a DisplayPort or eDP panel. If the panel
> > bridge is of the DisplayPort type, we should add
> > DRM_BRIDGE_OP_HPD or DRM_BRIDGE_OP_DETECT to the bridge
> > operations.
> > 
> > In the anx7625_sink_detect(), the device is checked to see
> > if it is a panel bridge, and it always sends a "connected"
> > status to the connector. When adding the DP port on port 1 of the
> > anx7625, it incorrectly treats it as a panel bridge and sends an
> > always "connected" status. Instead of checking the status on the
> > panel bridge, it's better to check the hpd_status for connectors
> > like DisplayPort. This way, it verifies the hpd_status variable
> > before sending the status to the connector.
> > 
> > Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> > ---
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index d2655bf46842..9b6303267924 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -1814,9 +1814,6 @@ static enum drm_connector_status anx7625_sink_detect(struct anx7625_data *ctx)
> >  
> >  	DRM_DEV_DEBUG_DRIVER(dev, "sink detect\n");
> >  
> > -	if (ctx->pdata.panel_bridge)
> > -		return connector_status_connected;
> > -
> >  	return ctx->hpd_status ? connector_status_connected :
> >  				     connector_status_disconnected;
> >  }
> > @@ -2596,9 +2593,10 @@ static int anx7625_link_bridge(struct drm_dp_aux *aux)
> >  	platform->bridge.of_node = dev->of_node;
> >  	if (!anx7625_of_panel_on_aux_bus(dev))
> >  		platform->bridge.ops |= DRM_BRIDGE_OP_EDID;
> > -	if (!platform->pdata.panel_bridge)
> > -		platform->bridge.ops |= DRM_BRIDGE_OP_HPD |
> > -					DRM_BRIDGE_OP_DETECT;
> > +	if (!platform->pdata.panel_bridge ||
> > +	    platform->pdata.panel_bridge->type == DRM_MODE_CONNECTOR_DisplayPort) {
> 
> This is incorrect, because there can be other kinds of bridges in the DP
> chain. I think it's better to check for !eDP instead.

Another option comes from the aux-bus bindings. If there is an aux-bus
node, it is an eDP. If there is none, it is most likely DP (well, unless
anybody has been using the bridge with eDP panels defclared using
platform devices rather than the aux-bus.

> 
> > +		platform->bridge.ops |= DRM_BRIDGE_OP_HPD | DRM_BRIDGE_OP_DETECT;
> > +	}
> >  	platform->bridge.type = platform->pdata.panel_bridge ?
> >  				    DRM_MODE_CONNECTOR_eDP :
> >  				    DRM_MODE_CONNECTOR_DisplayPort;
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

