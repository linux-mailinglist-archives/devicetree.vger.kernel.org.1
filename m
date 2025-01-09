Return-Path: <devicetree+bounces-137051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B03D3A075EF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F365188965F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1614E217F26;
	Thu,  9 Jan 2025 12:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tRRWuE2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4084863B9
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426537; cv=none; b=Osb9pAt37jRhohjMVa0kuWzz54sinJCEBhgN9xBHuUYqvG2a4LknXjz00mscdQW7uqALId59xDSkCKUTx0eHUuAMihEtCkidT+e3u+10iYxPtO9jUPO5/BLJBAewGKhlnFarBGQpvECH7E7mEz5kjwJQVAVgTGONhSDUwSK4xDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426537; c=relaxed/simple;
	bh=SwiIcta0H5MZwsZVVoWmj7SBbdF8E3D3A56iD+sitlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qWEdLGCcaZEMv9yxCpFQ2RO5OWOTiUREw4HRb6LVY3HzBbm/XS25G/efdAkJtX1W68EzRsshhEXrqfCeMvX1GF4WYbu6h36ji8erDI614KtxbTBcxAZ7E5CZfKwWqBkv7cxsY09k8r23BlDQ4nffaS2JmkcIjKdOjoJSSuPlUOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tRRWuE2s; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso9473681fa.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426533; x=1737031333; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=tRRWuE2sEyad0op4xnCRdMhIKlbbTZbYShpFazgjBusPZDMygA5AI4Zo5biT9e9IS7
         J84mdj8xGLzsL5dVwy9cLRK0hwY2s3WI1PDmwESUvssJKYqpNuzCTF2mD6vO4S2pet7D
         c6uGPJ3OS9Ufd5RzZq/IXCL016mNMPyCMgq2EcXzzcGSs/4wIu2IhSI0JPkCtPde3d4/
         fmUi++ZYVxbOckczolfA8HOdm5NJ2DRvT2MOYUM1acWon27kagBmKj/k3/bCfV3WWoaQ
         lSo0x8NxP/nbMZ+6k6JFB6aXdpCCEO4Vjn/7UW3XDUJL/QAoZiN+5ZLEb0rNf5Jy9GoL
         sD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426533; x=1737031333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=gSweq5qUcJch47t9tds7IuDA913pA2V970WGn/Wy6Vc7/gkfZgDeyMeJ/04TFDeHUX
         N0FN3I/YVDlyLSKelUkuGy5vYKyJpnCtRwlnK8CVkIhqMrKbdJIAGDEOBxgO9YEzIdrA
         LEPmNzZ1GOHM5B+FdstLcfk8Xu38a+wfBMAsp5HTsSFawR0D7RPS/LabrmNn4jKW+Ttg
         eDOy+4iSGvXrhypGRZ6pi9jiXYzhVB/NXBCueCtKdG5SAa3v+bodAMc71haJtHbzlll/
         jCtI4r35Q9zuNBEde5x1ZleRVIjJ+B4JeJ6yzhfqI0lHvZnpE9b2RVIet7HP3Tk64kLC
         BfJA==
X-Forwarded-Encrypted: i=1; AJvYcCV8fqfdKqyQkVruk0lprOXChinEfiYDNaY9WO7uMw6FARLq4vepYSABDbVBXogtKRSyvCWRB340p8e6@vger.kernel.org
X-Gm-Message-State: AOJu0YxUPqqe5VXXmVSWXINalB17ZbVC+52jfqeAJzK1qG2puDTaOmiK
	Pc9H1IMpPkB2z5SttU14BiKzrTX1LTCJl7I5mvsZxvv4UjLXPshKjTFk8b6E4Ko=
X-Gm-Gg: ASbGncs84gqYXmyoTrQN9qwxyVDSBdQ+I6EAwaZVqhvsN/pbLN/VbwbFL1271/eaGiA
	WlTP7JaCOzJihr+GFGPe70eGxA9Jgl37xwi9GzZ+dUB/kiQOS+vn8UKBJ7McpEuVRf82zFqPLji
	gWUL0iGxl2MumGHepJOhBTpTovD760FmdSvh3Tbm7YtDEHdi28CQA6qMCQ1o51JAjZEhsiP/feP
	JDXWrczuH4URXP8wIJQYz3zBpU3P5th1z03dKLF07Qp74wpWoC2aGrs17tT+rgXNE116xwJOjO1
	fhYx78Jf1UBY0lmf1hrMJgwTDq8VGR4c7ja7
X-Google-Smtp-Source: AGHT+IE1P1UCOivFTvYWWTS/q4LjMLHD5zB9iByIGL1otwhnL6V5dvTRWi82T/q6jI3Oss5lknekTg==
X-Received: by 2002:a05:651c:50a:b0:302:1fce:392e with SMTP id 38308e7fff4ca-305f45e7f69mr24518741fa.25.1736426533394;
        Thu, 09 Jan 2025 04:42:13 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becb309sm185975e87.253.2025.01.09.04.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:42:12 -0800 (PST)
Date: Thu, 9 Jan 2025 14:42:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 10/20] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <woyxxwpwuicp7enqkwbquuwpknftc4exkui3wlmkvjcohb3yhj@iv3adwzot534>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-11-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:15AM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>  include/drm/bridge/analogix_dp.h                   |  4 ++++
>  2 files changed, 18 insertions(+)
> 

-- 
With best wishes
Dmitry

