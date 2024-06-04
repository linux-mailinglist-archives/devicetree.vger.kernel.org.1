Return-Path: <devicetree+bounces-72496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A408FC030
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 01:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B0CA1C21871
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980BC14EC61;
	Tue,  4 Jun 2024 23:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IMM1Q+vm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FA414EC56
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 23:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717544972; cv=none; b=sxw9TnzCN7C8DMeIkgBXZ9BUHYp5QXuGLvyTxYpHrpTn/K0iz3SkXQYt8chIYXok4BTaR4+q+gNGkFHkDy5Bnm7DTApVr8M8Ixj9OcgUmgQZyu2LAa5nMHcnfiKcIUdAr1myWOI5bt5Vk9RQdByniNm+BtGsqSBo0+p8sQUpzbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717544972; c=relaxed/simple;
	bh=wwaaPx6QWt15nHSdqWTKXp6nXVK1oyhFcBxCNFquLTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h9UCtqJPSZ6XuML10mZ9DEVv9Cmpny0Hl0CNDRMoRBWit/T624OU/vN7Dma+TQ64QDvkK8qJha0pbmgB/g0hGCdyA0ucHfEPRgP3Ua8wJ/LN57ePomSSPDyFupHYhvYE2qYKJASPimEAEcPU0PGpdWjC8l3Mb2G2p+2wNGqVPh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IMM1Q+vm; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2e73441edf7so66394941fa.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 16:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717544969; x=1718149769; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OYlsPq/Nl2a6jpBnYLpUuE7MhnCmlQ2CakctggIcvoA=;
        b=IMM1Q+vmn6OC2+46T2IyUDCh8tOSlLTaRZdx1GStHpngJdpQS/ElC92goOH3d1XxMW
         tXMzTfs4e4R5OTe7r5J/adPPEh1xHdQhHNgktd2F52PUWIn8JUj6z/iktssr8hmD4b8J
         xl1GMWBHhDOhUWw1lYk3CHLqXLoyYmwlWhiQv3kYcNTGNufYqHk9EYAwTCZldDP11hUs
         635JW959ee9uWLoD6Yi+GseAO6UXk+RIuPR09C5hHadyLD1o8O1T6F4tPNVrUs1NR/PZ
         QMtlF0aR/eQm89IiBU+AIfDou0eGEaZEleIkWABvO+emRly4wXNtJiF+LABTI0dybYVu
         roOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717544969; x=1718149769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYlsPq/Nl2a6jpBnYLpUuE7MhnCmlQ2CakctggIcvoA=;
        b=BG0itJ2kCCCMZtxTAXMDREU14VaN89mWwKIkRTnIqRTFW2KWdNeilyYOlaS8Za5zcA
         FetwIoceU6tTwZ3C4PeqhSgPm1BA2XMziL0TkgUvgtTdojFpFvQJs9rUTZHSdqrrQDah
         OoBC+0W+4e8Bd7D6CHcrh6ftMNZyqWIh4t34HQVqwxiroF/PVapO7IsEI/LULiXsS6X9
         37qfjH+q4T1MjzBCGVgtOoC91l1c9UKZVD366xOXr0UDMtJ3K9RO0BrRg1x1ZfEcjCGK
         xzSnowLn3toZ4n4b9nQAzseh1x1GIsRrL/YwbKzkOK0cayG3gfw9rGbXMxdNOWaBTzvi
         1r+A==
X-Forwarded-Encrypted: i=1; AJvYcCUIYJHRUGXeJv99wlduGX/eHfHWb9GfUZKM8Kl6CyBup76Ab8PnSGbGgVbyD+M5jIpubA26aXtGmMqpufDH89HK7rM+ej3oSFTzpA==
X-Gm-Message-State: AOJu0YxLmyaitw/eoyZZBNA+7TQ4MV5KlwlEyZEfzmPh5nt/UEDq11zy
	VoVcsWavfzET5S0sAyMQCphl+EZDJHYHpyerMUERu9C12XfhNu4JT3c776T5Wog=
X-Google-Smtp-Source: AGHT+IEqt/1E9UYfq6hr7NwOOCvGfJFrmEaHjn1YhWsPZoauNt3zoMgMqQ+4sf+zBHTn4FHcfvCgIw==
X-Received: by 2002:a2e:bc08:0:b0:2e9:5011:f6b1 with SMTP id 38308e7fff4ca-2eac7a73140mr3969551fa.42.1717544968775;
        Tue, 04 Jun 2024 16:49:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91cc65cbsm16085851fa.73.2024.06.04.16.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 16:49:28 -0700 (PDT)
Date: Wed, 5 Jun 2024 02:49:26 +0300
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
Message-ID: <ymccadqprkxlvhv6ekyqr7utsgejxhqmxlki7nh23htgktlynl@7upjoc5whcy6>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
 <892b2070-2fd0-42b2-a8c2-811dc7382b0c@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <892b2070-2fd0-42b2-a8c2-811dc7382b0c@collabora.com>

On Tue, Jun 04, 2024 at 10:44:04PM +0300, Cristian Ciocaltea wrote:
> On 6/1/24 7:32 PM, Dmitry Baryshkov wrote:
> > On Sat, Jun 01, 2024 at 04:12:22PM +0300, Cristian Ciocaltea wrote:
> >> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> >> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> >>
> >> It is HDMI 2.1 compliant and supports the following features, among
> >> others:
> >>
> >> * Fixed Rate Link (FRL)
> >> * 4K@120Hz and 8K@60Hz video modes
> >> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> >> * Fast Vactive (FVA)
> >> * SCDC I2C DDC access
> >> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> >> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> >> * Multi-stream audio
> >> * Enhanced Audio Return Channel (EARC)
> > 
> > It would be really nice if you can take a look at using the HDMI
> > connector framework (landed few days ago) with adaptations for the
> > drm_bridge / drm_bridge_connector ([1]). Your comments for the
> > drm_bridge patches would be defeinitely appreciated.
> > 
> > [1] https://lore.kernel.org/dri-devel/20240531-bridge-hdmi-connector-v4-0-5110f7943622@linaro.org/
> 
> I will definitely check and try to use it, but I'd rather wait a bit
> until this gets stabilized and focus instead on the mandatory changes
> required to upstream this driver. That's mostly because my limited
> availability and expertise on the matter, while trying to unblock other
> work depending on this.

Ack.

-- 
With best wishes
Dmitry

