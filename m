Return-Path: <devicetree+bounces-137940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32471A0B269
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259A91886760
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E2D234981;
	Mon, 13 Jan 2025 09:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OM1knhdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE023314C
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 09:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736759409; cv=none; b=PLG7fpG2VmgLfCg03gF11tTrVe8Y4UEiraMgfssJwSaoYfn+0+uB6LsueMhyDSos9O2qz5IqORarkBcW3TGkkMLebSpRvdb8jxd1mAKSRrBIuO8HYql0cOM5vNLi8kNbS836yHKxFp2Y/POC7GjJIZ+lP0ayH4ZGC4EBbQarQZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736759409; c=relaxed/simple;
	bh=UPt5XHsUeXfSOSWQnOZPDxBhomW3facOCcP7lKEMfsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TzcxlR9YMxnxEb5enAmEz8TrL3smfHQol6l92HzR5BBjQqpbwPQzM7fS8x6+9RyBGgS1ckaU24RhFkF2C8h79mjOFChJjFwmAtPuP7QGNqtdCgUvxodLAewJ06CDjYj1hg2GzLvf7VpRCm62V5DjO3CtYmoVlr037HW5gTDX+Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OM1knhdD; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e3a227b82so3488104e87.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 01:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736759405; x=1737364205; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=OM1knhdDYhgdqkXJ77hj4vJByawLrZV3nXT0yCHdFVBliwmzLMqjm3//5SdOaS+1E0
         36q3i5uGE8CpaJFkFTJbS5uDY9C4NhZzwoK78xgpsu4lQs+N6yayJ7f/OBwuQgraIj43
         5vnPfhOu9i0Lm/xtknSKdLzBvLzIFlYWI5mEtudNTzJzKFEj2J+vERAQTvzxlMxG60U6
         kDKsTuEDSchm+cgf+lQBJVsKraSuZKdilSLHLhdMZnxTKi7awkyotcCbeOsqgxlmKxW3
         Bf5wXRdBe5ICeJqVvFh5N/KMTQzbajf/VoxKMnDS9Fb6lf9djnq8LpInFPA/EhILhwGP
         8ECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736759405; x=1737364205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=bv08LW4ELV48resAqqx9e7Epsw7MEqoXv3iM8dOForX5vV+4gA/es91sSsGBoLKnrq
         KkdisIDXxiE8jwehj2luCK1aD9SJpSQ+w4IGu6cnTpr3JU/xy23XT1GfJJfw5iZu3O8+
         fxoAmWsGjKKLeqRp9f/XlR9RWpA+qLIxJ7nGNEoe3cAzxaciu95shGn1XQdajJYMtVFe
         UHNB/utcufAmDlPXL/ca2JMrWeMf2kBPYtTb2eBDqQn7K/hFk1YSUSv0FMw4La7p13Kq
         HboE81BC8FNfqaBTJXZHmBPj2nVLDNGt/9WAuE3CYAMwBsyrTQ0gwevchwDLOyKiM7QK
         ZU1w==
X-Forwarded-Encrypted: i=1; AJvYcCUmRU5wUWbDXVTTahk5S1pJXcl15SkeXwZ3uetN5FU1oi9y6jQC2RUOH5LmkMi3H1GsQd0vJAuWGAHj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2wroXvGvVC6whAE5kXGMZQKz3TaReKMtZ0qQzjJjQqQnIfyAd
	j1g+xaY69lXSLZCcbEuoID9Xyer0/dp/bgHEIBtK3CL8CnoBPxkNAPUynNxU/88=
X-Gm-Gg: ASbGncvMU47jnFgFes/Du55H3mEPPn3sQ8sKdqU1sTsLRcwmGJgNMtGHKu/3CuNY0R+
	unQ9SMuh5PkOEf+rzFkf2IriZCWDIrfZbUhZquuq6CxvoC68AlB0KnLau/jsN1+4MxNSZfEt8PO
	UX1OrDVwgxW39bEoqPoo4lUMSdTzqYTJ1gl980gJjKN1NM/HWtcrjIzaYBdrLxcA3r0ZceE+j2p
	G/eiY1+BBG/y8joukiiPKBOQ+CZR6j7LbF9hjvA+La+ppkjAisnONFDMGXM17/LJLWQBxTOHwkv
	PnR0X/y/f+bZ/kea0DBp95BkJswkp4saY4Sp
X-Google-Smtp-Source: AGHT+IGw4VY/Y6W8zkOKJuAFr5OCeGQE4lHsOJ/tJKFeVu0YC0sUMWeW67o9DovWrzDT+skDY5PJJw==
X-Received: by 2002:a05:6512:3f12:b0:540:3566:5397 with SMTP id 2adb3069b0e04-542845b70d4mr6410811e87.22.1736759405308;
        Mon, 13 Jan 2025 01:10:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5492bsm1294955e87.104.2025.01.13.01.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:10:04 -0800 (PST)
Date: Mon, 13 Jan 2025 11:10:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 0/6] Add eDP mode support for Rockchip Samsung HDPTX
 PHY
Message-ID: <ezoduel3qz5ihlhekry26cb7ace3bm4xmzsfrsqvbodtcl3gjq@xxo75h7uozei>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>

On Sun, Jan 12, 2025 at 05:07:08PM +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593

Then it should have been v6, not v1.

> 
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
> on RK3588 EVB1 board.
> 
> Damon Ding (6):
>   phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
>     ROPLL_REF
>   phy: phy-rockchip-samsung-hdptx: Supplement some register names with
>     their full version
>   phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
>     registers
>   phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
>   dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
>     HDMI TX Controller
>   arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   4 +-
>  .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
>  .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
>  .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
>  .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
>  .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
>  19 files changed, 934 insertions(+), 75 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

