Return-Path: <devicetree+bounces-47215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C0486C732
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 11:45:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B679B286E63
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B576379DC5;
	Thu, 29 Feb 2024 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="j4y3ToAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DB579DA4
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 10:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709203513; cv=none; b=SO/sQFrRbXofMsry+LyAyY4ICqDn9wWvJuIiJI/5psTDJuUgyeQHf11tbQmY+0sioF9BgPL3c8pAiQQ9PlRaZWze7mmNBaYZBEEkXIqHY0LpRZxAQAeQAL/SNwPT7HCSUM0ceca0y1J2AKyf1aQ08WYeDJca/BAvgfK7/KhAT4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709203513; c=relaxed/simple;
	bh=U8TUeUeS8Mpm6yPKLA1adAb3ghUX2OrwMfDDLfDi1LY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=riwAsWOX92xiEVP2Ihfeqw6/iCX4RJhhQ5tDou3PnK290auwH9RqvC2lEsC/+bxC1nkLBalHgb08Pl95rWnjy1/o9Si9hteMEKMFlqKsjDkqUk4/lf0kuldZ77a3CO2PCEnNMgGbtjiAd3bcFu55fXgvq5stx+/GN8uFGcKP4wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=j4y3ToAa; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33df8203a08so219079f8f.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 02:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1709203510; x=1709808310; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FIG7k4yYwKeN7C5fU4t/ffavSfw5nunyOq/We0rginA=;
        b=j4y3ToAanNVA2PLj59dKSos2L73j8vnp3qiC6Pz3fQL5UmmQXxEIRHfVn63TUL3W03
         boID2IOKmFJQENeT5OlyRp/YU8g3mELIVJHYD6ytgxWBT96KbFl+HAZZvDJoZVyZnsv0
         ncQN+2r12jAyYytlz89hbhOLfNaJ30yrUE2NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709203510; x=1709808310;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FIG7k4yYwKeN7C5fU4t/ffavSfw5nunyOq/We0rginA=;
        b=dnjNlGbWXQSjwN2ugTfNC5R16NYL5Dxdh+mG/kZ2kJIWtkwEamO6Js72l5CNcG3mE9
         2fwmli4DSQdY8q/u7Xbm3YERQNhRC5TezRyQOqivl4+qvBveM6U9zVvrmEEqWG74Uzki
         +KCrl7WqQA5GmucDzolvfWBxa5FM05ahU53H/xcNd5BTDwqt1uEwTP2gOs+Budj2DeM1
         fik4Kb5dPnp96vE3qf7eR3y+L9zqvlAvfDGM6ov/DgHoJgcRVU4rsHEDew1lxaZ7uNDV
         G8tSZtsWGPEDE9dP/dk/Z9cYLt+7+HkKxyJpSTmLFXNXuMcbHF0RTDInXXODU2NKQrj9
         95PQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFpUN6WGDgWoQUMJylM0ep6yomyZghcsnM1Vkyy8ycz87VCIXXNWsDxAavDve+K7JeEpuPNZowOAhiKnySPB0k3hH2Urw822c8bw==
X-Gm-Message-State: AOJu0Yzphv3WqRpAK8GTAKLofUJra4i4v3Ili97vzWjZSt0EAxMw76QK
	ERFSd/mQYIM/1PU23HY13p6p3yH8efLyg/YUQd7GfQLd6Kj/5RuEyQSar5PNhz4=
X-Google-Smtp-Source: AGHT+IEddsPiJqmxeX/yYcSFQD2n9jwvO1fu5RUcQbKTB5SZn1NFPFMfALlSkq4X0Mt7ej05VQ/xpQ==
X-Received: by 2002:a05:600c:3b1e:b0:412:9a51:d5a6 with SMTP id m30-20020a05600c3b1e00b004129a51d5a6mr1367841wms.4.1709203510274;
        Thu, 29 Feb 2024 02:45:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id jp21-20020a05600c559500b004126101915esm4807415wmb.4.2024.02.29.02.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 02:45:09 -0800 (PST)
Date: Thu, 29 Feb 2024 11:45:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Maxime Ripard <mripard@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC 0/4] Support for Simulated Panels
Message-ID: <ZeBgMx-BwT-o-clA@phenom.ffwll.local>
Mail-Followup-To: Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maxime Ripard <mripard@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
References: <20240116-jz-test-sim-panel-v1-0-f9511f46c9c7@quicinc.com>
 <x6wi5xnihnbpqsujjfjfw3ft6njncruta5l3xa44pds5oxmdkw@mmvv4bciy65s>
 <87cyu0qn81.fsf@intel.com>
 <e1f10583-1d5b-fdac-24bf-098a0ba06241@quicinc.com>
 <hhmbghooegclx3jbsx2neryligk3mj77lq7gns5xegags5ltoz@acdu6hssqwlw>
 <99705d73-abcf-6d41-3d50-757e706cf1fc@quicinc.com>
 <Zbi4-S49CWlUkO__@phenom.ffwll.local>
 <gs634bhdctmpxhhdjw3bddirvc6ex7fwdmy4xr4pygyibvmp5g@zfouf76tmti2>
 <6470960a-dbe8-43ca-889a-b5a7cc934569@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6470960a-dbe8-43ca-889a-b5a7cc934569@quicinc.com>
X-Operating-System: Linux phenom 6.6.11-amd64 

On Wed, Feb 28, 2024 at 01:49:34PM -0800, Jessica Zhang wrote:
> 
> 
> On 2/2/2024 2:15 AM, Maxime Ripard wrote:
> > On Tue, Jan 30, 2024 at 09:53:13AM +0100, Daniel Vetter wrote:
> > > > > > > > Wouldn't it be simpler if we had a vkms-like panel that we could either
> > > > > > > > configure from DT or from debugfs that would just be registered the
> > > > > > > > usual way and would be the only panel we register?
> > > > > > > 
> > > > > > 
> > > > > > No, we need to have validate actual hardware pipeline with the simulated
> > > > > > panel. With vkms, actual display pipeline will not be validated. With
> > > > > > incorrect display pipeline misconfigurations arising from different panel
> > > > > > combinations, this can easily be caught with any existing IGT CRC testing.
> > > > > > In addition, all performance related bugs can also be easily caught by
> > > > > > simulating high resolution displays.
> > > > > 
> > > > > That's not what I meant. What I meant was that something like a
> > > > > user-configurable, generic, panel driver would be a good idea. Just like
> > > > > vkms (with the debugfs patches) is for a full blown KMS device.
> > > > > 
> > > > 
> > > > Let me respond for both this question and the one below from you/Jani.
> > > > 
> > > > Certainly having user-configurable information is a goal here. The end-goal
> > > > is to make everything there in the existing panels such as below like I
> > > > wrote:
> > > > 
> > > > 1) Display resolution with timings (drm_display_mode)
> > > > 2) Compression/non-compression
> > > > 3) Command mode/Video mode
> > > > 4) MIPI mode flags
> > > > 5) DCS commands for panel enable/disable and other panel sequences
> > > > 6) Power-up/Power-down sequence for the panel
> > > > 
> > > > But, we also have to see what all is feasible today from the DRM fwk
> > > > standpoint. There are some limitations about what is boot-time configurable
> > > > using bootparams and what is runtime configurable (across a modeset) using
> > > > debugfs.
> > > > 
> > > > 1) Today, everything part of struct mipi_dsi_device needs to be available at
> > > > boot time from what I can see as we need that while calling
> > > > mipi_dsi_attach(). So for that we went with boot-params.
> > > > 
> > > > 2) For the list of modes, we can move this to a debugfs like
> > > > "populate_modes" which the client using a sim panel can call before picking
> > > > a mode and triggering a commit.
> > > > 
> > > > But we need to have some default mode and configuration.
> > > 
> > > Uh, at the risk of sounding a bit like I'm just chasing the latest
> > > buzzwords, but this sounds like something that's screaming for ebpf.
> > 
> > I make a half-joke to Jani on IRC about it, but I was also being
> > half-serious. If the goal we want to have is to fully emulate any panel
> > variation, ebpf really looks like the best and most flexible way
> > forward.
> 
> Hi Maxime and Daniel,
> 
> For our current sim panel requirements, we can go with implementing the
> configfs first then add ebpf if requirements get more complex.

Agreed, this is definitely the pragmatic approach to get this going.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

