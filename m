Return-Path: <devicetree+bounces-140549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D3FA1A2FA
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BACBB188BD7D
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6130A20E318;
	Thu, 23 Jan 2025 11:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKHtaeAy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEFE20DD50
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631903; cv=none; b=uWyRyOIvmi7rt0tKytPMPdpwt7S1LqEmR0NNn8ghAGjccjRzoFqOGIjNBv8ylxZez2L20qgY0R3NzJD94nBwfHJvvW0XuqZooDAl8jGWXZ84hPaUdEmgLAQBxK3V0iuEFbaF68m+TDKLgTTmIbFX2Ax5Tinp8WYnnQjqFaTVrPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631903; c=relaxed/simple;
	bh=l3LJR7vCABVSgtGFeGuIYW5yd6Iv+6tuGLGBDwZ6DTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T/iVhfvxi7Zfeq/qvKI5Mjv/zehnJKhwqkktGD4RUZ8dEStzw1waFLInNpEQWDi+2daR2kkPjIt49cEcSUgz/QpLIOlWV/hnGGpnXKR2cqcR3cZLsma5hl+Nn1u39eMX4RcdSr7B87HUQLtThmREfHjPhBKTsMP6kz+RlrFqBZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKHtaeAy; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so763183e87.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631900; x=1738236700; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6GV/GI1CAs1idJHC9goHRl9dRjKhZ5TZhhQYyHtO4m8=;
        b=mKHtaeAy1N/i5ZZZVYE1iFURBPTKr0YWNokT8wXygkbtUtfoV8ksn3lYqYh+Z/IdGz
         PdGFNUyAZiRehRGVLkrXGMLmUwsK2gE18VDPd60QqnQa9/BQWx+uYdR87xzG2BmR2ExE
         RyVe8Qze7yHsBQNrOG/skZ9jOv4sqjeAdaUKI1DnJjrzDYfWA5gbm9OCTVJzC4qWAy7X
         QqfDUvPZSdFcbn2qFcDglkCRj8GjtQ4LyIRfrl8PvP5IjcCEZoJEeHAelPPSv1/TZw5N
         PZmwegydV3AibRPEW8d97CJ2OtY4GrpA+b/Ty5A5KTRb6VoRgVWB1FEcm3UD4IqF96LG
         r7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631900; x=1738236700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6GV/GI1CAs1idJHC9goHRl9dRjKhZ5TZhhQYyHtO4m8=;
        b=F08YaNgL25v4ZcDEx5K6rzm/mHmUiZj3+kvVAM/lLnyL5o6U77atKcrqzs/2e9LLoK
         ohyLAO1iQGPi6Z3bbrbeaB7asfhSNDhYS2XqVUrMoZQjEgsKT6IOtOcuav3t7QVWPGHh
         4JYOZvSMrC8Cpd8NTvtG3mTHpiBwb+HVvtCJN1wvuPZnDZPHqDq91ZsyR7gWj8E8MTXt
         4+5fg2VgCpR+jOpP9jjEJouk4DEhcJ/73yUdwmDDMJszmHejO1MmHw32jRcrEkmDu4yE
         YM30VdYTfLCIJSpsiWFayai25n4EymwYjQd8X1aq43ueLLj/je230OaKf5REQVaZDjva
         miJg==
X-Forwarded-Encrypted: i=1; AJvYcCWZZG94WC0IZhsDzkN/7kLeFOc9kOtIrbg8nGWzSYm0hnMG0TmKhUI1E9Rlzxf+IkA+FfP9c1Z5dtPb@vger.kernel.org
X-Gm-Message-State: AOJu0YzLfh4maOVkrusFwnOpTqTkS4Ez1PJItPes0xOzMCO09FdP7qbn
	Hp0cypBMESV2STLt2ueQYw9ftimyXrK8ixTsvCZSPGUEGeiJ9d5BljkP2KaWjCo=
X-Gm-Gg: ASbGnctsJw/D2bEgg28xH6kUITYT1UA3qUXyJ1hOW4yN5iiOhF3vch8+aTwCDrvdCII
	fmzUCWfzYDlBHQzNgLUf94EKI8jjzbwOiSBqa1GAHyAHI4WP/PGfDKBWsrcYxpTZ5QqEVKD/7Fo
	o1ENLKPXTwMC7/swKJWSZjY0zl4IubOOnLunzYBxi3fMhySLxx7EokV/UT/vGOuuO6+QUTl3Pbt
	MWriYcDNyL+3ZYL4jvrSbllR2hpRFec/zMihW2Mr0cpYcq6ZgN2R6uRMIaxgjxrZTLuQnfOQyD7
	CDzNeR2rkywSQb5UMTtn/CmncGyFNTW+JOdSMl0EhTQY52fII8X7fg4QTy52
X-Google-Smtp-Source: AGHT+IHtXPZP5fXc+jx9qkDw8OG65Yz52T0nmfyDaHj9u5aH3nN5zjNMvgxVC7Tag6Djcezn71sacw==
X-Received: by 2002:a05:6512:483:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-5439c21f2bfmr7480684e87.11.1737631899528;
        Thu, 23 Jan 2025 03:31:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7a281sm2612994e87.259.2025.01.23.03.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:31:38 -0800 (PST)
Date: Thu, 23 Jan 2025 13:31:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>, 
	Douglas Anderson <dianders@chromium.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model
 LP079QX1-SP0V
Message-ID: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-13-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:45PM +0800, Damon Ding wrote:
> The raw edid for LP079QX1-SP0V panel model is:
> 
> 00 ff ff ff ff ff ff 00 16 83 00 00 00 00 00 00
> 04 17 01 00 a5 10 0c 78 06 ef 05 a3 54 4c 99 26
> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 ea 4e 00 4c 60 00 14 80 0c 10
> 84 00 78 a0 00 00 00 18 00 00 00 10 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 4c
> 50 30 37 39 51 58 31 2d 53 50 30 56 00 00 00 fc
> 00 43 6f 6c 6f 72 20 4c 43 44 0a 20 20 20 00 3f
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Please use get_maintainers.pl when compiling To/Cc lists. Added Douglas
to CC manually.

Or, better, split irrelevant patches to separate series.

> 
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
> index f8511fe5fb0d..77e3fd3ed160 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1808,6 +1808,12 @@ static const struct panel_delay delay_200_150_e50 = {
>  	.enable = 50,
>  };
>  
> +static const struct panel_delay delay_50_500_e200 = {
> +	.hpd_absent = 50,
> +	.unprepare = 500,
> +	.enable = 200,
> +};
> +
>  #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product_id, _delay, _name) \
>  { \
>  	.ident = { \
> @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[] = {
>  	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "MNB601LS1-1"),
>  	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MNB601LS1-4"),
>  
> +	EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP079QX1-SP0V"),
> +
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d51, &delay_200_500_e200, "Unknown"),
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5b, &delay_200_500_e200, "MB116AN01"),
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5c, &delay_200_500_e200, "MB116AN01-2"),
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

