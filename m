Return-Path: <devicetree+bounces-137049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0576A075E1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:39:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEB283A2B4B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352D1217668;
	Thu,  9 Jan 2025 12:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s6OXPtcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589762163BF
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426359; cv=none; b=o9ApO/+qfzohplzH3BfZaRfMBwDZah/FUX3oCABaPTQ9NwF2ghC0chchQYRCBv22Ust2AS8T8R1gmfVSxrCSiFJ7WtFbn5A3KoQsfoinQ8D6HPGndULFXKXgLElfgGcNszq2atE8KANRACqZNmuAGTO0Jri6KGVbE001Ov4bEYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426359; c=relaxed/simple;
	bh=PX7sTsrGoog0yImAKzdqPlF4UT52kWY626UmHcCKHJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LCvtQ2Eb00IHMKzTxwKjNa51Ce3uxLfd41Ol+XU4GhddE8YfOSD2YHRCamSLgiY3tu4fA0MsbfPjJ4EhJrYgvSMli5SibQ3rZMAuNbd3COQSMHnBQn0b0gfQx1pE7kzQP+r79CNAnJ9XJMOfLpSNhHY94WsB9QZJHkGnYOvR7mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s6OXPtcN; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54024ecc33dso930779e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426355; x=1737031155; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=s6OXPtcNkCYArlGoS8XdM9wJpQfgKdn2+Fx51l8LWSvckkP8LM74NS13b79t5968Qy
         lgMM68IHPXZ+er8YBrVW2EH5vT0ZJUGc2Vy68baD2o/gVTrgqjn2C/sCG8B0ZBcnCXIg
         Rkma2867aFeFKFdq1O/WqWwFmdTOvPiDAU3NnLpV4LvewDdiTynppCcSPpZpUi0DUNvE
         WNKM4kvku7HWviXnxYs70uKQWEQKQUOz+iW5f2pJQq3sQRBAeJ7pwIuc4qrEwQyheh+A
         mI1myOHl1Uk5IqPAR2PCBJWQqw1cZfoANynD7vDbJtU4q++KrWuokw9yV5ukNWgGdhkH
         M5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426355; x=1737031155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fqi2sB9Eo33cd+pF6AS06tGvsYXM7VDT81xCwEBraw=;
        b=idWDLZtdyPLrKBN3kiuHEpaIghxK6tIrQu7HdAFJWtW/p3IjnmPhOGwb/o7WWvpxJJ
         aV/kuSdKcOjNKnXZrTC5vpf+hYKkdwivZh8J89jFsufcuPmAU0zl4qKPAd9rtYoMqtxj
         l070rVLg9jfvP9LinTTgCsmMGY+GLRFieFOw2fEH+X08+YpU6erCJHrAGx4a34REuv3V
         GHxcAhvxx03awuZC8ZMhSv4Tkd5OER7ClkryXU9Jwoy8EHA2iHRFHGCby4T89oFpkwuW
         /cEWNAjiWx9DX0ceqR8VJMoN1h5vRBOiw8v7rJeEvfB8ea3ok+2Pfw8/VSh6dOXj8czY
         TIdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb28jF0MM+6AOur3a+wTj2DHMbcHCr7sNUy0bgPyGi04QBDbyMzGx/q1JpNZCkAbOs/yBkgzJkGeah@vger.kernel.org
X-Gm-Message-State: AOJu0YxYDKwCKsXYD5GWuRUhXHgrYSPqP4WSHxh9eCMIEyntmLhuC9AP
	69AC7Z5xUtuX501aOJ53A8c1jUGz5IVBdGCEE2kFQuqvnBNokmI10MK/luuF4/kY1c8vpZsiXID
	8
X-Gm-Gg: ASbGncvug7ii1HE0SkAmhWETeWmFPHel+OKcPavqTio2EXvQxchsRS0HTvJR3BJ/I31
	OunmDi3QkzUpBcWOEJwpjS8yD8thpneWmLtXuZq1LMvz47rU+38dLj5WBpiLAOBzEJAFI8oH93V
	iErWmodrNQJDIJDOO3F5vnXUrfZPwAS9sWsYu8qY9MULSIxWEwCqZIFnvX+NWuXhEKmX1UPGSDT
	r3P8W2deVAPaJp/djkSlbyptj7VY4YYNOau09RsYGPPcsEB5EP1cNdwx581VZ/ywQn1tXb4qJ9q
	iJcmCJi7kgHDwsXnyoDFHAa0gZibn8M3YMvD
X-Google-Smtp-Source: AGHT+IF8KTbR4QB2nrxLqa6lQMCAzL4XCQ4k/7mYRphIWqgLup+TimV/WVu8MCf6LAMcOCZjoERp1Q==
X-Received: by 2002:a05:6512:1242:b0:542:8da7:242f with SMTP id 2adb3069b0e04-5428da724c7mr359076e87.10.1736426355407;
        Thu, 09 Jan 2025 04:39:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea686dsm187270e87.156.2025.01.09.04.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:39:14 -0800 (PST)
Date: Thu, 9 Jan 2025 14:39:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 04/20] phy: phy-rockchip-samsung-hdptx: Add eDP mode
 support for RK3588
Message-ID: <kanqmwi4yzmqjxyxbd3ccmabitko3zfgockmhx22swz46zeqz2@klq3dkaukrxz>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-5-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-5-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:09AM +0800, Damon Ding wrote:
> The PHY is based on a Samsung IP block that supports HDMI 2.1, and eDP
> 1.4b. RK3588 integrates the Analogix eDP 1.3 TX controller IP and the
> HDMI/eDP TX Combo PHY to support eDP display.
> 
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate are set according to the
> eDP 1.3 requirements.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the module author
> 
> Changes in v3:
> - Split this patch into two, one for correction and the other for
>   extension
> 
> Changes in v4:
> - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
>   phy_configure() result for &phy_configure_opts.dp.link_rate and
>   &phy_configure_opts.dp.lanes
> 
> Changes in v5:
> - Reuse the existing functions rk_hdptx_phy_consumer_get() and
>   rk_hdptx_phy_consumer_put()
> - Return 0 instead of -EINVAL in rk_hdptx_phy_configure()
> - Remove rk_hdptx_phy_lane_disable() and related check of 0 lanes
> - Mention the design details in the commit message
> - Remove unnecessary rk_hdptx_phy_set_mode()
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 879 +++++++++++++++++-
>  1 file changed, 869 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

