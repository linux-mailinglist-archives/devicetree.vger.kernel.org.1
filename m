Return-Path: <devicetree+bounces-71506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 391528D7120
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 18:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A6CE1F21E59
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 16:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E45E152E05;
	Sat,  1 Jun 2024 16:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iFKVW+Qn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57BB28DA0
	for <devicetree@vger.kernel.org>; Sat,  1 Jun 2024 16:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717259559; cv=none; b=NhluE7bqjxejUUboWUDJLNnDa3T3aCc1ES0LDF0HADN0F8/jo0pZ4MM/G31XQBlQJrQ67Oh20HUT2rtunxbXjkiWb0gu/qwDmbDMjieCI7odxy2g53upqRvFqjTo74vy6lYhrkp8l1A3jLA7Kl/9p9NJTnYn1CEQS9f0/PjgtTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717259559; c=relaxed/simple;
	bh=6Q8v16gfsKsN+vZ0Run+ylSZZbatVo+E2fXTSv+Ql9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rtDSNBK3Z4TUTxH9rr/UCPW8Izsh8xSym6B+wZ+S835fx2JtAXLOVpMQTIuSV7BIAiaxtNAOnqprrK430rplDGD/AYhR3qx5Mu/AsKOddhDrYnjUxtrRQSnAVUQZlBl5ZL0SaD2uSbhBUYU4YrkRj7ejambbOsriYSzeE/MCiCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iFKVW+Qn; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52b90038cf7so1108238e87.0
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2024 09:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717259556; x=1717864356; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HeNWgTvWB9NOiq+Vqu2GBpsAJX9qGaBSyXZdTFfGgGw=;
        b=iFKVW+QnztLtodYjvGqRaPRDtfllj7Px3676oN9AfPNB0Tm1ySCPH3aAYqzqe85rSN
         AMAlMDATEdm9NaUzT3096xZMObCH8zoS7SXOq6EBERq797YXGNCnFF8rNlGfkzUaE5+W
         bZf+Gaq6KnDAtyMw6jozfqeMhogKDsOBgwvsbSW6hBZE4XB0w7qvb8eaRnxFd0Br5Abl
         cbpvqGlNf4k8Ipqxo5TY5zA1mgWYC+oqCN58YClV7nNqPnC188UQ7eR4c8VU5tlue1/p
         +9Qymi+U12Xj61xHPI2dppot7edhw6ooynDgxv2W4rCRM8x1lFegI6v3gMtzV6MTGFQ+
         b0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717259556; x=1717864356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HeNWgTvWB9NOiq+Vqu2GBpsAJX9qGaBSyXZdTFfGgGw=;
        b=aqc/8V4B7FyKhcR5Ti2yBun2ga2BT9MqgdVwZ0F+3QktT1vbY0+3sWPKa122Q+lWJN
         PJG4e0W++vIp+wsNg7Lb9tXzUrfm4vUHzbsDlpfu+i8GZxwxjxJ9MlXSuqIj61DZ7IVr
         owLVT4Wb4dzHrMo0wYA1zDeoHpFRXo0XOKou7o8jq+n+OksbqUPySLzIFp+DpnIfEoyj
         S1iY5ArverdaWheTP+bs1yzoMyfpbcXna5qXgxZZLNAYRqgd3iX1tOOa6MbsFm8ybDqI
         W8TMr+rRmtOwzMpOkBHVyFZfZ4YdENAw4ZSQB1nohUCdHhFjxF5zF+x+C+3+uqapvRfk
         xcuw==
X-Forwarded-Encrypted: i=1; AJvYcCVeUptMcf+Gznaif5wJe3OTGf+Mqt40o8w9R0yCvvzuG7hPvFCI8qdzCWdyEsTS2djxFMUbHkxkhDXnUKeJ3xbg70MdKffbJxb8yQ==
X-Gm-Message-State: AOJu0YxqMkEuFx6Vs4NpaEA52q6CuJ63Xk0IJGpWv82qnx16PM5uihHi
	Pvsmg8Zm10XPds6BgwZR5k5Iy5mKkQac8IbOQWvrh9ohCtNhk29kvozedvq3Lf0=
X-Google-Smtp-Source: AGHT+IEGq9nFbnbn3YZLDr5pbWxznGwX+oNfINNXl+JWzilp9OJBdS+502iu7P5yQzsdmL9dipjc6g==
X-Received: by 2002:ac2:518f:0:b0:529:a646:932b with SMTP id 2adb3069b0e04-52b8956c4dbmr3060104e87.20.1717259555422;
        Sat, 01 Jun 2024 09:32:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3eb89sm713308e87.70.2024.06.01.09.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 09:32:35 -0700 (PDT)
Date: Sat, 1 Jun 2024 19:32:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
Message-ID: <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>

On Sat, Jun 01, 2024 at 04:12:22PM +0300, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> 
> It is HDMI 2.1 compliant and supports the following features, among
> others:
> 
> * Fixed Rate Link (FRL)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)

It would be really nice if you can take a look at using the HDMI
connector framework (landed few days ago) with adaptations for the
drm_bridge / drm_bridge_connector ([1]). Your comments for the
drm_bridge patches would be defeinitely appreciated.

[1] https://lore.kernel.org/dri-devel/20240531-bridge-hdmi-connector-v4-0-5110f7943622@linaro.org/

> 
> This is the last required component that needs to be supported in order
> to enable the HDMI output functionality on the RK3588 based SBCs, such
> as the RADXA Rock 5B. The other components are the Video Output
> Processor (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for
> which basic support has been already made available via [1] and [2],
> respectively.
> 
> The patches are grouped as follows:
> * PATCH 1..7: DW HDMI TX driver refactor to minimize code duplication in
>   the new QP driver (no functional changes intended)
> 
> * PATCH 8..11: Rockchip DW HDMI glue driver cleanup/improvements (no
>   functional changes intended)
> 
> * PATCH 12..13: The new DW HDMI QP TX driver reusing the previously
>   exported functions and structs from existing DW HDMI TX driver
> 
> * PATCH 14: Rockchip DW HDMI glue driver update to support RK3588 and
>   make use of DW HDMI QP TX
> 
> They provide just the basic HDMI support for now, i.e. RGB output up to
> 4K@60Hz, without audio, CEC or any of the HDMI 2.1 specific features.
> Also note the vop2 driver is currently not able to properly handle all
> display modes supported by the connected screens, e.g. it doesn't cope
> with non-integer refresh rates.
> 
> A possible workaround consists of enabling the display controller to
> make use of the clock provided by the HDMI PHY PLL. This is still work
> in progress and will be submitted later, as well as the required DTS
> updates.
> 
> To facilitate testing and experimentation, all HDMI output related
> patches, including those part of this series, are available at [3].
> So far I could only verify this on the RADXA Rock 3A and 5B boards.
> 
> Thanks,
> Cristian
> 
> [1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
> [2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> [3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.10-rc1
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (14):
>       drm/bridge: dw-hdmi: Simplify clock handling
>       drm/bridge: dw-hdmi: Add dw-hdmi-common.h header
>       drm/bridge: dw-hdmi: Commonize dw_hdmi_i2c_adapter()
>       drm/bridge: dw-hdmi: Factor out AVI infoframe setup
>       drm/bridge: dw-hdmi: Factor out vmode setup
>       drm/bridge: dw-hdmi: Factor out hdmi_data_info setup
>       drm/bridge: dw-hdmi: Commonize dw_hdmi_connector_create()
>       drm/rockchip: dw_hdmi: Use modern drm_device based logging
>       drm/rockchip: dw_hdmi: Simplify clock handling
>       drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
>       drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config
>       dt-bindings: display: rockchip,dw-hdmi: Add compatible for RK3588
>       drm/bridge: synopsys: Add DW HDMI QP TX controller driver
>       drm/rockchip: dw_hdmi: Add basic RK3588 support
> 
>  .../display/rockchip/rockchip,dw-hdmi.yaml         | 127 +++-
>  drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h   | 179 +++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 787 +++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 831 +++++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          | 353 +++------
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 351 +++++++--
>  include/drm/bridge/dw_hdmi.h                       |   8 +
>  8 files changed, 2290 insertions(+), 348 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc
> 

-- 
With best wishes
Dmitry

