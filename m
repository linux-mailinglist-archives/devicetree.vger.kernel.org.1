Return-Path: <devicetree+bounces-134730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2B29FE61A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 797E7160D0C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495271A3BC0;
	Mon, 30 Dec 2024 12:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bgt03sdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1F51547F0
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735563098; cv=none; b=O6kVZ8IQSl/pE4/8JeTDP0YrUgbJxz6RKGq9TsQNCC2V8GEiMv3SUusZBVYJ0/owrUejaGjbuaWnwr8idQAFcQlvIPOJ6QOvcH35NVyChXeAz5ZLwQxvBH8XEih8IH5/3v9jxpoPN5gw9ZoEiOih5lGzafdGgDZgRpUIpK4xeFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735563098; c=relaxed/simple;
	bh=qtH7bam1CO5iXPifXdBEnihOUGRjjgSM3NsVmyeCbw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LCf0zGPrEBYTddZCE2CDDKib2hHXepHGlTTBRRyV+1ux61ApLQeL2uOwxmpkQSlCCAhEtBOJhprI0RMXxb3UV7gf0r14ir3CgToYzmcKRXj/OXvDF/SB5FA+NG1lzqkbUjRMEXk0BnhWzlbOsSfTsGk7iFowjq4dOftOHLVJKyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bgt03sdx; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53e399e3310so11190170e87.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735563094; x=1736167894; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=bgt03sdxt1cLFM2nFI12Zp2Sy+VJ8CxNWwFOarx8q1zV7WIQ9EWofvAf+wpA4mhDhJ
         wpZWbBsI6ifpatbtEDHyHzF0IU6Fk7agtjbzxK0f+pQqfoQb/VggAcBzVJ+CldL24m/m
         lMZ/sweOGAVZE7P1qviZhxBgSxrqV39xQWvQbbgiZFCXgPlazfQu/eenfV53v88JZzPC
         mPF99WwhYNpuDyo7za1Hrjl1jwhx2KW7ZcS6Dsh0g5TLhDBS6QW+cRNYlhBptEGhGBY+
         0LUw0succgyjwP4vYEVmle1iWaMfF+8eLYEJ3c20GzLqqnyf/shkrX/cRkjP6kXGB1lB
         PHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735563094; x=1736167894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=WXeSTEOqQLsiBLhiuMHHDg+kDFvOIQ28P/VJMTwfXCIMsk4gpYerQ5NP0vUzcfSAqP
         lqdlREJ+59rO6STLvSP7SzYt7+ydLAkdNMtnqiz81lI2I0eSZWJb++4NNA3FovLo3o79
         KWK/xp66QiQCDg9fhsu2XhLHUGSk4TP+Yewjq69lGVh1pMp2OC3EssB6V3laNj3W09sd
         ijUVZ7AhzhjPSD0QwRsqoNh1cYI6EACykVxVUd4TDbZNXpe0Uy3GG2e2iouIpcJSGwec
         mZSiXgvgAEeRfdG5nHbMGtxpMjg/uTUELGAsj5GqXKSnR+Y3Xyw/RkuexIcySwcs+zpV
         9/dA==
X-Forwarded-Encrypted: i=1; AJvYcCV1uOf9Icb7+Cv8bfdrolaUZtedV8tphog7HQ1N/sMBqYbemJlK8Vl3VQWkbjRY8JzV0IFIZ8r7r6pX@vger.kernel.org
X-Gm-Message-State: AOJu0YwNS6kC4SI/sl4z9RXY6lyUDJnUHdXWURlR5BUhh1MaHA2RmUWs
	gaLMx4AELr9lWGJki739Qxb70zRwqBvfjYR8Phq0KU56J9uvfPIwXt4dbrAAiGM=
X-Gm-Gg: ASbGncsBPMncURcv/zzeoZYnhRY4rDepMg/RdN/m4/BoRTsFXbtN+SLkdQ3GvRGTrOg
	bBjL9El53ev8y6zC770l+SZ3A6MbzW1mW5KIPP/AcWhNSp00zGr6mVp2e0ta6p+tQSfy6oe5Rto
	cWFwGKb9iACl5W6W9F68Wpn6Dieh6eK68abz+Mdl+N7fjz9dd7/GoODBmDubxQuSTGzqukFwG5j
	/d2J6p7bXTQBGSXnKiCzUhbNKETaEeWCc6jcOLzNuSMSywAWWGz7fV9jlqSht8ue6p9J8oFEzTz
	XVNZswva3mcuTPgVkik2HR9ZRU752/C3ElRV
X-Google-Smtp-Source: AGHT+IEW593Bqv5NB/vO2QEA4rz6rsbxfXb7nT58hLPf3Wn4NzBw3y0XPudnrMXfV5cdFkQkrpllxQ==
X-Received: by 2002:a05:6512:1255:b0:540:3550:b0f8 with SMTP id 2adb3069b0e04-542295305b7mr11077421e87.24.1735563094455;
        Mon, 30 Dec 2024 04:51:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223821504sm3074015e87.198.2024.12.30.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:51:33 -0800 (PST)
Date: Mon, 30 Dec 2024 14:51:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 12/17] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <tlfkh3vwuwtqiaps3l4krv2grttlbe7ahienvjlglnzzdn3czk@pfdgmrvp65yf>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-13-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-13-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:08PM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

