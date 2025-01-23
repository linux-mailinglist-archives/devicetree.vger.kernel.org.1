Return-Path: <devicetree+bounces-140547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC22A1A2EE
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11366168DC0
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 655FF20E6EE;
	Thu, 23 Jan 2025 11:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RnUCjlzX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C6120E6E5
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631782; cv=none; b=J8u94L8gqH92REEFUtTrYd5IGEFw/nbBIAqqm9jwIioFXMlw2oAX8BrTmaCcv6tZMvnDYe/kED70njU6q/3uPDDLyK7dvFQAjnyzTC2GNoo5RsMMRwNSd40SDz3oUA7C1+uXQA+6Ei+4tFQMhjT6pwg36EQJCthsYvd3nv3Oj78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631782; c=relaxed/simple;
	bh=LhKYQqWHil79JpJFAUp0UnXVrBoBK4U2gnsgfSHxM3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LZukJURgmCvLLLzPSNech4KhQMXTwQEsokVO5t5tgljBi2JS+sR/mHZnsNaKe5/FIMI8T0eR8J8H3vn9ni6nN2LvXHckoTsFVMfwb8DxRazsUYbFSd0zTM0b9yusq+nfriwJ+GKcI7JG6IZMwwDymIIC7XjM0wTCRt6C4R6xEIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RnUCjlzX; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401c52000dso839052e87.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631779; x=1738236579; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=RnUCjlzXgRlfXNN/UVk81//eAVHl5Z528UHQkgsHHQzAnZ4ADv1jusccPi94Umg2//
         GnOOjLo8WTsh8NgPkg2KMArKXpkyFjIXutEEz+qfECqqEC2h6VpXJ61Zwqy91WzcAxFy
         AUIdDVYA6RIxh7v4rzxkloykMfipl0euZHzI5pa6D+Gp8gMpmGyLSD0Ppg6eN3LCmo7+
         j0WUgZfEYHfK6sv/MqAF3VVrE/Ytr1xQZq9TVL7+6Y/caBX93k7NNA9bxhyXhT9iOrlm
         EQ49/LX39MqQ3Ads+atGBFSITEji0UxTYKf11B1f51qjyG22VhBpRvzeUhUfUHOFdcUo
         5+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631779; x=1738236579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=FYxJKUzxzN8NP9Q89Ig/9P+i/uL+NUNYUQ8PRDlqUOH6ol9jC5cBxKHefN8DxWY+hG
         Q0DORbiXE3saMvUO4spI0qqjk4N4s8U0NyLCcNEapPL8VqO6YBdm0wEPHUyANsxX8ADt
         gqE6rk2ocNL+1RneWd/SDmtSqH9XkaC6V+T0TSTj/NZ2dYwZzJhhGw/UggSQF2e7TrvR
         RyBQi1s9iMEm4AuGKQIB8QzEvtBSUz5N31kS9vqAp0xvaajRUvqjTtTLuj58zAdq/h6t
         pNLQ18AZss35ErDig8msIDCuAPIorHwgT/9qXgJpBMXf2eR599w5DPjx/jOBSpX6VI0c
         4Y8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUDfXzeNiU9m4L3GbBwh28bxITRpkj/qFItyWijmmuIA7WF3tR58jG7mv/G0LxEmSgGo9dtJuXhVk0O@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+pRzoqIhbvj8b1C9FtnWFf6NwnMsahRRvCtzsLYIIlkPKilxj
	B8tAF+B2+Rk7dhDYI5f2XE459Mfk2dDq9G2Lr679rsDBVUXzYjESxtQ1P/ihxbk=
X-Gm-Gg: ASbGncvMboxxxVpSFvdTV2a1W5poYZ3pRBbi7f7fUpAQ31jpSAjfZAVhz0P07lT7Dcs
	uggfsnMuhvQkPxWuzC/FKMOyQOu25dgTrTn1uTDrvk+7NZxTA9Q71Q9cflcqf841ds2AMy1u69t
	iBm/kunjK2+zZpKJ76qYhg4W4RHTg/YGWOhvZV1SEA5p7OPqIZBTZg6TRB1ZM5BjhPoNpfui/YS
	ajgR/AkFFX5+DkOnSxXyqfAeR1EyKKe4ID7zENQGtMdmGKeRnJXbfpW/tli7a2Ud+klGOQVvuDl
	en0Mnz2hRtqC/6WIkvjx1r8VkFsq2a0u0wjP6VOLUpTUwuuaChG6l8sI5Rj+
X-Google-Smtp-Source: AGHT+IH/IRIwigEV36zPfTMvutci/xM95ud1AjoiE5XvAxHbcLlm2/4wSeaGwe0S+EmSvBufcEVLsw==
X-Received: by 2002:a05:6512:2346:b0:542:297f:4f64 with SMTP id 2adb3069b0e04-5439c280a83mr10948852e87.43.1737631778565;
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543bae0ba76sm771974e87.8.2025.01.23.03.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Date: Thu, 23 Jan 2025 13:29:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 11/14] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <k4hno2c46ys3unusw4emhkevp3yezhtgyy566vfyfju3efyei2@twict2pypjug>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-12-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-12-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:44PM +0800, Damon Ding wrote:
> RK3588 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block. There are also two independent
> eDP display interface with different address on RK3588 Soc.
> 
> The patch currently adds only the basic support, specifically RGB output
> up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
> features.
> 
> In additon, the above Analogix IP has always been utilized as eDP on
> Rockchip platform, despite its capability to also support the DP v1.2.
> Therefore, the newly added logs will contain the term 'edp' rather than
> 'dp'. And the newly added 'apb' reset control is to ensure the APB bus
> of eDP controller works well on the RK3588 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

