Return-Path: <devicetree+bounces-137050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B220AA075EA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:41:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB0BA1889730
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59DAD217F29;
	Thu,  9 Jan 2025 12:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nUtw/dRK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873BB63B9
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426475; cv=none; b=P7Fe8dZPDpHmf9xb+nSFe8M6UkmFrC4aS1v/3wFArOQCPogUJLu78Wh7O1x3js9Z7bEIKUZk9FRjvRu45m8EB8xM9qBMEs6d3P3FhkmnnVIqlnWcYuJQZZKHRZVvo6i3g1tNeB1bLWomjBbNbubWt5PYBesytmkL8gbIRHK0CU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426475; c=relaxed/simple;
	bh=FcbniTiwQFsfzoahlpNO/UEtH8C4IVQflf95MHvHJY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XXl2ifHB44lLE/NlylkWu55qQTPPRKlG2VcgNBPhg6LnOW2z2R1xgliZZkyGkROOrbO84A3lDJb5KHlOC0qYcH+hUSmATRjzj1wxOl5Zh6unIwZynWXQPZj/cXjTIIG8cXY8xowXTXSusykHp271B3Z+Xtk4xsLHU+okzGgoIpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nUtw/dRK; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-304d760f118so5873261fa.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426472; x=1737031272; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=nUtw/dRK2m4bqBlw9wK66aEwh6Wd8sB/gTLlpp+iJk8c+tAoM/uSBswF6B4eKS473V
         ATowSvZuvEaE/PyVe/nJ5DG5CRK0DJFV30NkhUvNtXw+frtQt0YpZHXKw4UqEUZBIAon
         s7hO+XtEkXHPU0LXy0JslVknY2ZfclCgQw8i9jGuctEt0IDrEg/cFV1f2V8YRRolKyS9
         XetLGE7gonJVke8/aNNtO3rLz7RajO2H+HCN1p3mDE+94eAwR7H3LlI7/a43kB4nOMtG
         xEl7xqwYGa2CJ29TN4VakGSf8jkG8AtOZC+maM8SRt4AVbNij/3FC7DXXCtNUTds+7lY
         WACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426472; x=1737031272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=NSLOMEzrS2oPlt/H3pA2QYf1Tk8lJIe0wJKw6e8nSHGAXDUY3ZTT9uVUg+4bDhyiP7
         2m7XnxqtfDjHMFUJUppn3cYvuhZ85rcqyFlPXJVB44XNSLOVhlWjIb/xMsMHr/E+64cl
         dIFhaNDmb646IGWOHcJGRI8zBmbPoJeg2X+72+YcK0pQMGEMY3t/8ID9igbSlBeBMINM
         4TnlTkyDE/DyhmuRFSD2rdbHY9NKjY3h7VymGjz8rxwSF043SM8B6jGFMsHJSRD8+NPH
         yCiKfoXHwPJX7/gJxFBapQe2rHL27tIwL9JEspfrFdVyRaQFcDDhjJZ8QaRxL6K+JS3Y
         bIjw==
X-Forwarded-Encrypted: i=1; AJvYcCXFgY/mwKMd3ceTsPd+5iFhbElx2UqZFP/d7zmeDqH5wxDiri1CbaJ+VfVMvNImYz6Q3z7/RfX3ciDl@vger.kernel.org
X-Gm-Message-State: AOJu0YwMXitx5EpojPsF3bSG8YpcwSZrfgboINIZzN6ZqJL+//KdFO+l
	+vI3drM2SfSsfLp10E4nZaAehwn0SxjOds7lvrB6p6GKURGAlOBc7ujyT9JORp0=
X-Gm-Gg: ASbGncu6Z6k+jJKPK50oeVqGOmuOCQI8I5VkIJClW0PlJFSW3y5kSPS9HFeK2qtiGUQ
	VWiiuENsb1zB97TWInhgZ5J0v7i9eP0ei6KD+zEpZVNHcTtrAktyLKmVemWoytzs24HszRasnAb
	zVKlKkP2h5fJe6nP6kkCiq7jyymiG2T5Bak6agC/1T6uWmeqItHoaoVYSiOEYD0sLLJgPz3ihsM
	cmA8NewMRo4WkRk+7wCG0W0uTafAQ+3ht6kpfmtGG46j2d8oheZ0WkgXWB4l6PllIP9h6iUNGXT
	YiDfz/lFba39FWOgEOohrypivmG0e07NRCb4
X-Google-Smtp-Source: AGHT+IEwvFACO52C3ryh5S7HnArGMLvYQPYGuxGvrDUpjWDgL5Aq/3itURjeK26UKQyFNf6mWWqB1A==
X-Received: by 2002:a05:6512:3d27:b0:542:2388:3f09 with SMTP id 2adb3069b0e04-542845b20bdmr1837748e87.37.1736426471690;
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6a72sm185201e87.151.2025.01.09.04.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Date: Thu, 9 Jan 2025 14:41:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 08/20] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <7tvoipnypxzkzu235vc2n4jehcxgfkmgd5op5j6cqibqwmnlkg@vpftfenswtrq>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-9-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-9-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:13AM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> 
> Changes in v4:
> - remove unnecessary &phy_configure_opts_dp.lanes assignments in
>   analogix_dp_set_link_bandwidth()
> - remove needless &phy_configure_opts_dp.lanes and
>   &phy_configure_opts_dp.link_rate assignments in
>   analogix_dp_set_lane_link_training()
> 
> Changes in v5:
> - include <drm/drm_print.h> for dev_err()
> - use drm_err() instead of dev_err()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../drm/bridge/analogix/analogix_dp_core.h    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  3 files changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

