Return-Path: <devicetree+bounces-134532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 774599FDD4F
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 05:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BCCD188024C
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 04:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23433175A5;
	Sun, 29 Dec 2024 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q490b2vt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472FCDF5C
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 04:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735447713; cv=none; b=oK/R+Vi/9KWY6FTKAtRO7UwAhXBIbF0F0L8kStOxbCKfet3+z6JjOkr1KLkH+N8wT2zh+osQ8Os1FqZBPL161qU5qe4oabmoRu8HxW7KC6Y+Nnzqf60MF+a3nFmO4l6ll7yRu9l2bJRTACtyN0nS9v2jdCWuYnnZtJm5ppisKN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735447713; c=relaxed/simple;
	bh=FPkY4mjFFFZGICGQO2A8SKKvYltiwlyYXaMqMQRMLs0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tj2tzEdjIJAQeKCv1FjaFmjuCQ8qho4P9AKvl6yDYsaC5793Ef6ZUbnUvrjw9YpbklQve5fzVXRVEpk53PgBVDt8PRcefISHnQ8TGUbcy67qudLeiPPVmi0V5UbG9NUrP9yr8b/+xFDiDrIq10nzU+r76IqoylsgEmj3KJ29thw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q490b2vt; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-300392cc4caso96600601fa.3
        for <devicetree@vger.kernel.org>; Sat, 28 Dec 2024 20:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447709; x=1736052509; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=q490b2vtYAiIW9mHwiw6NrDm3aeRezaWAAzgzpt5O2coXznxodXxEn9Hc2LIs7A4Bd
         E5XuMptXohyq2V5xu6Pv89JZjjo7AFXRKhhj/5pyivdRs9u8OZtVbXxMvXD8pSLuNBPU
         Biulgms8zG2xrZhVGbRzcAsQLAUsw/YLKneRH0fXqpsAIkAFPfwU2nJfY2mZuXAub5oE
         jhzRCiEnrsNWYQA97X53zrHfEEsyMIdqvSX/YOUmpGAS5nVWdWPbBeDYzYiUfrEu5eol
         KdqY0iSAldS/FG4Su5BF3nPYKXbNw7tp9Rau03TPxF6BP4C68Bn46fj53DUB7SAdPG2Z
         56fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447709; x=1736052509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=lQnBYvk+yI2OP1lU7sip4KtuZE63Oa3bTQAECLEgYIFifYiyUbkggq61w1MKFr3RVh
         p1yjIT+zTVILjVp6f+gSQKpg8PszSBuGktRC6e5OY631YXEKR/NDqQeZx11nk3VITHjp
         qcaSknl8qWuuZ5Wz9Uq2jMT7j9lr/gZYRFvgUS0Roa5uiUje/g8LkySw3dwf3+K0Y90J
         IaR4MUno2qa9whrWqL81W8yG1lACfpKK9/WAimkAdVqbp2mYr4Sls+8bTyuAp9urLAHj
         ISS7r50aV40DSF0eOjdYBRlyv5dra2k8bmtKFALXNpfh2sWpSZaU0wc5rnq6pO/+SyPN
         p7vA==
X-Forwarded-Encrypted: i=1; AJvYcCWPzspCOr4c6Q7liwD2RFPyjvot3x+fVAonrzSoPUTBRiDRFgwGWHfp81k2vsFqVSKT6Afb6ysIryQB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+pOjGVtGU8nj8ZJAYzBBKjaFTgJ2qh/rDNApZmQWbYDcSmww6
	/hPGSloyLdKh23UfRh7ePzjhPiSaNKUO4pvJN+QEuUl9NTctTnDSjwl+pXNxv84=
X-Gm-Gg: ASbGncvs07mUjsTBIJCfNkxsF3w92BfJ8buu3bYZerXBDWpSAKuErXkariRvgpvl7gD
	bBzIGxV4DFSiomM2KisRvdlvMFGV7vUCEVyAlHyIftIdDVTZDlSqrVNpClYcMpPT5NUz0vl7smo
	yPwdDPtn95k4gauPDp9aAursFG+KMBeUUUizagxTLwnvvWwmiJK70oUXj9DfuVOTsshtCw0TVkv
	zJDTEuqo87ShFuK2F2AMB3n+93/XLHVd6pZ2mbaDMieyPit6U5Ut/pbwRW2zbAEcm8pgTJBwSZ7
	YsA2C+k1D/sxLQcN3VZDncYvhJQ6zUYv4l6v
X-Google-Smtp-Source: AGHT+IFLdOShLFUrgmFocbWkVBhAX2agF1zyEDdRzkJIIIUTfHxFHK7o41L90uicbnh2u3edwxhOVQ==
X-Received: by 2002:a05:651c:50a:b0:300:3a15:8f2a with SMTP id 38308e7fff4ca-30468503587mr106112501fa.2.1735447709482;
        Sat, 28 Dec 2024 20:48:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adac821sm30924381fa.59.2024.12.28.20.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:48:28 -0800 (PST)
Date: Sun, 29 Dec 2024 06:48:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <nqbcp4wwvzxh7qpvlobt3mw7clj22bmq72xsaw7sbzfj3dpyll@u5mq5ciijse2>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:05PM +0800, Damon Ding wrote:
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
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

