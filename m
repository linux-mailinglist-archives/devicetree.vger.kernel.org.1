Return-Path: <devicetree+bounces-156304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05744A5A548
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 21:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEA543A63B3
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 20:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99021DEFE1;
	Mon, 10 Mar 2025 20:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yozNS0AA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDAF1DED4B
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 20:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741639843; cv=none; b=Qap86rGHIj6PKhqWBAT2b51nFvAjCVmkvOcyPD4fqkiOgBhjBpe8uSUXWKPiLhIbHzlbQEEFR8+mdcaojE3ilY1jHvEfZqHqD61jy7tDneReuEfobWpLFbhFUCWe3K8ejbKAitOvYqV8m/iEauDVgmeZv5DLIAYVvSQ5oIiMTv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741639843; c=relaxed/simple;
	bh=JMgtmwqbCF1crKu5gvghokge0/ISSw0obFY1lBovTyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I/NZyago9UE+9YK5jGayLPcGfqMdvDylzFhw+RlAsiFLDL7lumwGuclVscuD2oNsFEe4D+U6u5RR7eMb0SiYumHeDVXZk4/7i03my/gINm6h+sUopWXl2Ipf71X5D1NaZqQd7V03SyQEZ0EZlSAY4wf2DrcZeDqbHFZXTv4wQfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yozNS0AA; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30761be8fa8so52688081fa.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741639840; x=1742244640; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MFIKZkaTfjlzWSNll4lqXgpcQhLW3KQ5qFxK5aL+7cU=;
        b=yozNS0AAdIEjVRKmRYq7iQt7ql0F92g/RzUVKg5rNwW5S7at61dY6H6NjSRvDro9ft
         qEZLd1W8ERt5VtTiWaN4rmCI6htz+qnhZkPjXrQxMTtUGYFuHtsE8sStUbqxY3hEkWgh
         0K+Es1nB7jb8hrYlsDEzEfuZ3qQfSNyExxGx9V7pYOeIEZE0ck6D1PYbDP6iUGhOaOXt
         4DfUDwA/qN/P9i9WDENVyufUslPI7dTotxsM2sV7MB8qG8mFGQbihZLGJd1ZXWLRDp+5
         zqt/GuMvAG/SavSJiImq5lHMRAcr9cKOE6LPgl9vCRRAbLVqWI8JzDD/W/rfdBBQ1oIK
         wdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741639840; x=1742244640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFIKZkaTfjlzWSNll4lqXgpcQhLW3KQ5qFxK5aL+7cU=;
        b=CSDJ8XEwansdWkdzMAsj6TNMN1sJ/8EvLenoAcYy5awm6voioxiFlsT09gtLyT2TDO
         s5yhi8PUHdLty8sixiqCFMtLHiXSdEP3wvwXtQNxhciQXFEL/4TtYMdLpk7n5qKjCXOs
         2kY8QlibPkW/v26t9R4pEnSq78om2SI7nlPF0v/1OD8ZwpyCUwnOt8aNkhzfjRy+AFES
         Soa5s9Tv4SHjHb9Ute8X7fHP8v3i3At63rexBvDW/P5sxcAuh4WpP8DK13BAFzKPKNh2
         l5PRavV6EdQhfUH3GD2aLOas0A70tdl80OoGD+BpZx/d/ZytCnSXqv5wSCNpMSMT0Vgi
         Vkhg==
X-Forwarded-Encrypted: i=1; AJvYcCWBGT1vXCwVqoV/nopMdd8GbBlRayGuYbKxwrEyo7P8UNA7GVrG8rAfT4axIG1NSCv4zELNjy57g/Pm@vger.kernel.org
X-Gm-Message-State: AOJu0YxnFX8YTqXhzEDD6PdCuMohLBgm0mH81JacY2YPcleevATVmu98
	KlRXKMw/eRTphSg/SixnslTEd1pDfJIsk/UZGS33R3Qe74z7qHcKzvl/iM+ciZ4=
X-Gm-Gg: ASbGnctP91lJcBKyiIEUZ0DPsp5GU8k2v997nAGn9w7Jppa23DVXWPdWQprcXu86R0e
	TPdnuHv2uXcnWRj6kYY4AR85toCTGwA2MgYkfNxdlMXz6+WIrzP0hcvtmdel/aKFUm/Y2QdSdWD
	PSe7EAT6xWcHR+Fxbyn7UMTwoL7uOkJMNpYaXaclPnEmWL+OUry6v+o/IKp12JwJTQOwJFuwKRW
	bhoHMsJ4x6G73TWfftcUwP6V2K2LW+y+fN60h8zPlTFTpQOhRGX7mEbTqk+yJCn9R5ba62Ycqzt
	+kd/UxecpeSURYlUl8ebnxqD/owkhqAlg4HfFtgQb12Vp5z/EB17585w5HQl6W1tHv6TxWLf0Md
	1G/8a5J2s1IlXzdIOJlil3NYn
X-Google-Smtp-Source: AGHT+IGcrlELrZBnhqzie4iDaP6avVfnzS9Zwuy/y5VMLk7WTqgSbAIjxpbHVS4pswFb2Tc4oA719A==
X-Received: by 2002:a2e:bc27:0:b0:30b:bb45:6616 with SMTP id 38308e7fff4ca-30bf45e2500mr50729081fa.29.1741639839816;
        Mon, 10 Mar 2025 13:50:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ff85e23sm1362140e87.225.2025.03.10.13.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 13:50:38 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:50:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, dianders@chromium.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 07/13] drm/bridge: analogix_dp: Add support for
 &drm_dp_aux.wait_hpd_asserted()
Message-ID: <gnwqnapqlc7bym2nd55oif5lxxiibeme22upepbrgafilpcxxn@py5j7ju4rac3>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
 <20250310104114.2608063-8-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310104114.2608063-8-damon.ding@rock-chips.com>

On Mon, Mar 10, 2025 at 06:41:08PM +0800, Damon Ding wrote:
> Add analogix_dpaux_wait_hpd_asserted() to help confirm the HPD state
> before doing AUX transfers.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

