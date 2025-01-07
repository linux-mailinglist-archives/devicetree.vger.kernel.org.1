Return-Path: <devicetree+bounces-136099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2116EA03D16
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 189161651D3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335D01EBFEB;
	Tue,  7 Jan 2025 10:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VGz6cQgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2C41E284B
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 10:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736247313; cv=none; b=GSq+O0kWK+grd4x08PYZDuWLJw3oamZoZHupAtpYpgKnjGBXVDp+x6h0NBz74Z2B/rzGfjjYu8PUuq/0p7EXiiyBeF9XUNoAYc33fgSSP5fLobbe0wNmgx9wm6PpLvBpDQRiIHju2NrBiY/ft+a53zRTlWc+U/RTuBoQrffNOk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736247313; c=relaxed/simple;
	bh=miAR7kVdfE4JEaJup30RJs9gwsyUwkCbLU9qZeboezo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gWTk5ewUpIkszXJG8sjZXEOAhOVQphuizDvT/rryZ8/R/0qfFX+Mml3WTZYWUlajv41oc1FjNvn1wENrCf7jaX41GLrplJGy3YCpJvN22gg/wlUYRnHxb1//zONZ2GPRytZiEpE9huxDPlZRQP4zXvVLqco2qTO6LGSDj0VH3Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VGz6cQgY; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so15386617e87.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 02:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736247307; x=1736852107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=VGz6cQgY+JYVdHvb+T2vgeH6lVk/q2HlsTIT5d2NrmLN28MSYk+/vA7kEy08HRVEqS
         N+rJaeUF04CYJ1aOzrXdSO9gAsdCuTWxyDl+n10gUugow9h0BqZgynNmTJOO4dLjkMPA
         UW9HtVMDXLtwdMUskWXWl1cSW+QUFliYLYINyMGFNnkWGHA6MiT+qiNS2MEmQ4F9jvXY
         k+7euO7TlDpcCXENcQEMN7VR0H9LsLEc/NkCTLARcLsMHc2SBY0iWZ4z+ZhaBT4rJng+
         /dtuH1gElJJLND4m61KfcpyuMV2SfwQbOxzg5P8SemWY4p1JbYkqVUa6r8BkG4DeAXtR
         3ang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736247307; x=1736852107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=cSg3WEwzwQVO8sXrDPcabAaSQerDM3ug3KeVpoxHQ9SPKDjOH9JVM0A9pSeT62Sri7
         MD/oZBMbniPhQU/aMJBZA3Nuo4Fy9LHq0wOycYqvOaC8baBjJNeflA2eaEnZqHzIMmNV
         7PudCuwzC0N8MRojHNZZ1I4+/DoKk0lX/hps0RHQRzg1Ntl3fP2X0chYLTeI5OKVK1b7
         YBq2FjyiPybOJ2MAMIrGUZ+Ghr06KzBltoE6LM/x+Bxdhbt+FwuCSfgDSUysTQid5jCb
         e920CnyMg7UTYRA+mqy4KFE6Qqj8wYt7ogeH2cyevK7vy4qt/VCwgry9QTsr7IgYO+Qq
         LeQA==
X-Forwarded-Encrypted: i=1; AJvYcCWt2+X0VkU+muTX2r8Y0UP9fPNUp0nYe07TdItkG8HlYZf1ijkT2eRQ7ZYqBY9Vy2btohQlVLBcEmD9@vger.kernel.org
X-Gm-Message-State: AOJu0YzxWO0oXrT1F8evGY+xjH7Lb5nYVYeaYAbpOn/ZejPs7S8IpbU+
	7/SFPoBMKEmaYX3cDjBodDFt1jMW6LB94C9Ne8xGBobNAMPNM8YcN04pewhwyVI=
X-Gm-Gg: ASbGncsrWhVFpi3JssOmEUA62ddPRXaIqdAPFhWp2HdX6vFr06squ4FYgB1IBSgYEKq
	fRyaYI2DVGoN4hEF9gAMTIhP9x8/fP/Kkn9c82wiWF0YQTfO/kJAZJqTuyxpyVvK2+EjjbVxo4Q
	NR9mJ+pNHiV+rm3aMk12dFByCZgATd1++C4U7kgyMtEtCtsRhrOC+ThXGNShdqcOkzn+3J4tAIf
	kKStT7NIUDS8zoAn4QmgsdPaaM8XzcX9cwiHmCfeG6n+Q4w+RWUulezFd8a1BLd8DpbXVR5fh5S
	1xPv6TrBZrvJCxGl7IqcNYUHkF4rwMDU/BjF
X-Google-Smtp-Source: AGHT+IGLgKzFbsWmFq6sHxnOSAOcAHZ8LpCXiCvq8SonzUfMjFA3G31B6U5QoMf8+KUqSpyXSGnKNw==
X-Received: by 2002:a05:6512:1392:b0:542:213f:78fa with SMTP id 2adb3069b0e04-542295224demr17287062e87.7.1736247307140;
        Tue, 07 Jan 2025 02:55:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832ba9sm5226861e87.277.2025.01.07.02.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:55:05 -0800 (PST)
Date: Tue, 7 Jan 2025 12:55:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 07/17] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
Message-ID: <pffzxwsqwkklur3b7c7hp6g5wonzam5fs35fwblil3cjfofozk@clwgt5gcb32a>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-8-damon.ding@rock-chips.com>
 <shr7ak7keqza3gw6wra2zra35qht2cxlzkvtuhzl3swzf2fwxy@i2v4o53lhese>
 <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>

On Tue, Jan 07, 2025 at 11:02:15AM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2024/12/30 20:45, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:03PM +0800, Damon Ding wrote:
> > > Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> > > pre-emphasis configurations of each link rate have been verified according
> > > to the eDP 1.3 requirements.
> > 
> > Well... Please describe what's happening here. That the HDMI PHY on your
> > platform also provides support for DP / eDP. Please document any design
> > decisions that you had to make.
> > 
> 
> Yes, I will add more relevant descriptions in the next version.
> 
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ---
> > > 
> > > Changes in v2:
> > > - Add the module author
> > > 
> > > Changes in v3:
> > > - Split this patch into two, one for correction and the other for
> > >    extension
> > > 
> > > Changes in v4:
> > > - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
> > >    phy_configure() result for &phy_configure_opts.dp.link_rate and
> > >    &phy_configure_opts.dp.lanes
> > > ---
> > >   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 896 +++++++++++++++++-
> > >   1 file changed, 889 insertions(+), 7 deletions(-)
> > > 
> > > @@ -933,9 +1484,339 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
> > >   	return rk_hdptx_phy_consumer_put(hdptx, false);
> > >   }
> > > +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> > > +				 int submode)
> > > +{
> > > +	return 0;
> > > +}
> > 
> > No need for the stub, please drop it. The host controller driver can
> > still call phy_set_mode() / _ext(), the call will return 0.
> 
> Without the &phy_ops.set_mode(), the phy driver can not get phy_mode to
> distinguish between HDMI and DP mode via the phy_get_mode(), even if the
> host driver calls phy_set_mode() / _ext(). Additionally, the previous
> discussion [0] also mentioned future considerations for dynamic switching.
> Indeed, I should add a related comment before the 'return 0;' to enhance
> understandability.

Oh... I see. Without .set_mode() callback the attrs.mode won't change.
We should probably fix that, there should be no need to add dummy stubs.


-- 
With best wishes
Dmitry

