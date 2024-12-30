Return-Path: <devicetree+bounces-134717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CA99FE5D7
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3990D3A0730
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE30C19ABC3;
	Mon, 30 Dec 2024 12:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dqFuxMKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FFE25948B
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735561992; cv=none; b=NuMT3P+axZRaukU/ONjfIcDLhGqkZ7Jk2eL7+/YFBGdF0/g0sMSSQkSi20dpeyrYWX3qsclPJSQxtVYsGrCFHaRhwD1LvV3mCKD0OPJRBBeTCKUnqOYNTpjAXDXJPSXGP8H4tp8w6MA8f1slWtdJguu24JCWDZ+6t4YAo6bxKZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735561992; c=relaxed/simple;
	bh=K1cnF7ZVgFSzeBU7W0gbmUd7x692D1069OyuQiSbTJc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YH2hOPvBz/2Dfb867qzVC50p4OeE+VXhh15sr7L9UqRkqENdrCmO83jxCmIL/IxNGxixGS10l3D93AB2tcSUk/zx0F8qKa9cTqyXaLWPZK2SHknk/ci7y1hfW1PDaUv6V46w+FS+uBvM6Whs40AXsDMlzFVeQv4fcB9ZpcA1eNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dqFuxMKP; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5401c52000dso10465677e87.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561989; x=1736166789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=dqFuxMKPHsn70j5g+K8kX4eqqYJ4g+cGJ3AF3TGNN0lR7EpbNXbRdBB+AD+dYO/t6W
         suoNkA1baOJs8HE1d+D6IcWlLNPABC8L05Mrw0r05DucwkuDC6FfItCdR86xgpATeTtd
         y+QmqbgL2mRPSWnHYQoJZimjob9t1obcbMxNcy6J4L4uAG5/RE3qnmQNwI/Wd2ZH/+Jd
         e/QU7/WkCOrIpOlwwzKBKSaXup2dsW14Rw45TQ1cnWi/et+6rOHjAV4Yo8m90Z1l8jDO
         5IjBUbQvAsW02/gb87iV/IKtH8glNfY4GWaaU5WiUImtnh1LRogs4iv3gR1JZ/YQ4wXR
         ZJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561989; x=1736166789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sk7KZ64g3QjSKBcPqpBugYd5y4zZQVTOsSnxLt9QvEM=;
        b=P8L5DjxIk+/M5I8GCx0vjt2XWCjrDYRTl5EQriGij8hUD4l+AfP8KWWcEujIFbwmLk
         dJgKZRD8o+sT/KdTbKqYwySk/XqbQVX1c88JJImifhZEpfErSy3KJZu9q7b9NlcdJsgF
         m2vrVouIExMcShn0ai7le4pUxhGAbE1L6a1RnP35JkLrzKDqEurDM0mD9rgo4G/hj+fS
         kgg6FMv7lI1OJVjPK4otUp3cE+pRKEoTgCnohAe/e/ryIDGbXm1STCGmbwydx/Pc5eYS
         xG0E1oiTwsxZvVH02YVww/tPjDtPSdpn/grg5fGqIeOh4J/OvCP4YpI84JIEeI7TIpZD
         MHHA==
X-Forwarded-Encrypted: i=1; AJvYcCXgZpZiZlUsYPDboXjTu1NSj4x8WHQkH3A7vv7KYtogpA60kCnLswetW1ZnS5vP9yVPZ9/VdQFa9wl3@vger.kernel.org
X-Gm-Message-State: AOJu0YyNcSyQtSpaTLahvYze21w/eySn74qrTj13dhGekdUFJCd3aopH
	wiZsa+86z7dF1RcG70mYvRkbsOo8jHwBIlc8P7Xzn/rRjdH9p8pym1qRpD1zg3g=
X-Gm-Gg: ASbGnctIAQaCEYwqhOwhzZlkixZtMSr+h29O5gDhrYisI7IPVH/2hyq7VedAhZwmk+5
	/cxbALCgbVX2y09Wta9y32AeMIj4Kr9GtYKBZvuWIVL8/E/NKnBOzb428jHBVl3kOOWJtOG9XJ2
	zWuEO9IT5CL/Jlcfza6KXZFu8Ryjv3hEonYPPnkHiN7yEpsv5sGpkMYddl5IuCFhE8gOT3lwo/1
	uxjOautF4VPjDuW3yC24h0xdgRTZ3aHL08zkMWeGu3eiY8Ilk7nil/naFU07NjgxE1zVNnpFWkm
	nwlYgWHKm9eytTLMJsySBY2Vf0lXI0c8mnLj
X-Google-Smtp-Source: AGHT+IGzkRgSziPMi+OuvqqF5BpICe3Uj4EKlYJrSjSIBpngZHhFVUrx0eOYogAtQxS8zwZb6NLAVg==
X-Received: by 2002:a05:6512:2246:b0:542:2e04:edd1 with SMTP id 2adb3069b0e04-5422e04f073mr7912458e87.42.1735561988824;
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm3125829e87.130.2024.12.30.04.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:08 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 04/17] phy: phy-rockchip-samsung-hdptx: Swap the
 definitions of LCPLL_REF and ROPLL_REF
Message-ID: <ru3xpse4mg62gcxemut3zro6qw6v6firjnefo57k74n2ti66ym@l3pe2hpz5csl>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-5-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-5-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:00PM +0800, Damon Ding wrote:
> According to the datasheet, setting the dig_clk_sel bit of CMN_REG(0097)
> to 1'b1 selects LCPLL as the reference clock, while setting it to 1'b0
> selects the ROPLL.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

