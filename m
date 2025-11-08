Return-Path: <devicetree+bounces-236286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA2DC42ABE
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 10:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EFFD84E1396
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 09:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB861C4A13;
	Sat,  8 Nov 2025 09:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AErEj0Wb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C7818C31
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 09:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762595195; cv=none; b=LrBB4jpOY0Qtk7IbgvkGbW6rlCXlEml2/EQj52UoREpax72RkWsJpbeitF5IxyWYwErU897yvFnzLfYIP1wX6lHAVjZCM6t/6czkHHY3ZfKk9bWtDvrd1D+3zW4HLNb4SXdGsBWDWgaAl1xQfBY0thVj5w89FsZlbxkYvkzFkek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762595195; c=relaxed/simple;
	bh=7muQtF/Ps3f3Prt0anv07LxtYlAabYY8Z1NqAek/RGI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pAgw9ASjB7kFJaILJRbUDwohgqXZd9QiDtdpZIseqXWyLqWXswzRmd9MBZ4P7X0/2/BcX9totyfU424ArdwmGR4EGYk7xI15Dr5vtu5izO/qvn7mxuqElBNZn0WlOH/D0wLjKWgdFl/2baf0146V4Z8bztmZkalNJ4SxUQGnySg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AErEj0Wb; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4775ae77516so17248055e9.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 01:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1762595192; x=1763199992; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o5fKnhw/NCqAOhc6+zKFOhAFJG9FM08SQ0463gUm+Tk=;
        b=AErEj0Wbc0pFtu3+TMWpG0X6eqni9AMHPrx58kdzH/MseeCjuYhvxwjrUyDxYF+Nkh
         8/xeCG9xVhkxnoFDvHY0PqW098z/LwiKynQBLXD636fpa2RgyJXxTCNXPwR0rATpm2oP
         2HJB3H3JS2878yHaYWKB84p8cKeqXcZEvB//WOR3GAUFe/irBTZCJow75OTtvPEcg+5l
         nh941DZqph2qZK+RXyWaM1NmEG85DRp8GIsNDJGffoGO/EoFDgiGpOXRmrwosa46zhYK
         4EZJ2HBS+1/m6s34Cdn4Rt1hua8dTnahlfstdR8gwj1z47kFGMIDCYQd4MOQbPsLLbtV
         1Tcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762595192; x=1763199992;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5fKnhw/NCqAOhc6+zKFOhAFJG9FM08SQ0463gUm+Tk=;
        b=PbH8nvgj+FU7cTkdP+5Iy7zD7iyCMUt26vm93WUj182LC+wsRVNh+pFt4J6iabRxmy
         6JRLZde9+001ooWKOwT36c6Qm4uEs7Syp8QWGSHc1tZH+xwly2GF9T15Tnh/DQgg0Tuh
         eyCPO3KwVcoQ35jIAM+jFG0zN3w329BFTW9JiMy1F+56mEr8vyR6XPrzqVukR4Jg8Bga
         GDudlRj5oUAt5+mEGPkBUIZO3pRRhPheMXhW4pawxirgIPKtF/W94BO6+jB1jXRXtF9H
         1QiEFyfKgnkNZmrIUwS6wkxtp//1he6Nk2nJMBsX7WlyN6ryySm0LORJppdEwxHXwyVn
         aeBw==
X-Forwarded-Encrypted: i=1; AJvYcCX4e0Q2z63SOUHS+nuxjIQZ6+oQGrOmK+uNT7WvbM7I2sO21COZH27t7YRnof6PWLfNicbE4nzwJ8ij@vger.kernel.org
X-Gm-Message-State: AOJu0YzyVfSzh/2+mq37Twxr4qgwGS0/qVWT+eZpxRHvccfOLfEFf7PX
	EmXsUTzL0PLDaAIXDML37VUMRYMQpZG6O0WgXVBQMuFwkg97EGhhrxQ1OoGhktPboN0=
X-Gm-Gg: ASbGncsfondMVrF3oGJklYA/k/nMjRS64ULc/9XS/jtZSRfIwvEYCeqAhVTU+XU3uSC
	YbENNP6anzL4pIPWWzDTjd8/GgmzQ4Ptc+R3nP4wz4NioLUzM/7F21jTzRJlx680Ty2socb8/rh
	piLrgFse+fdh6Q+H+9yUskVvK94niRAfMrkckJ3NpHjyE55Yh3R9mgwnMjzZLTpnqApDvwfA9gd
	ZWBgRbsYaIqda9GsGnrWa+qlz6Qg9XwwEvVhvOEnAahCbj6TDDnGcicO4GYjBevBifEBuWZ+PTj
	1xYlBbtB/5MLeVVyEnAOyaneanrBAgSbNyHeRPNpNMMZE37yMFEXXhd4hLHyVHipRVfC9kRLIE+
	MAWSu540HfHmikKLJMVm2jcdyWjVR7qmXmlWkzHhveF5nyE612HETZdeKpbXSknLZJes4wfrx6x
	k6muCyoftM
X-Google-Smtp-Source: AGHT+IEH/jRPr1v2VuWmGt7YU/kqwBRVt0nus66tigdVpePgNGEa74ypym8+2ImhYiYRq6hQphHHnA==
X-Received: by 2002:a05:600c:474d:b0:46f:b42e:e39e with SMTP id 5b1f17b1804b1-47773298044mr12511755e9.39.1762595192311;
        Sat, 08 Nov 2025 01:46:32 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775ce211d8sm221049125e9.11.2025.11.08.01.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Nov 2025 01:46:31 -0800 (PST)
Message-ID: <04a2ca3f-c63b-42fa-b4a0-8cdf29887c88@tuxon.dev>
Date: Sat, 8 Nov 2025 11:46:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] rtc: renesas-rtca3: Add support for multiple reset
 lines
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251107210706.45044-1-ovidiu.panait.rb@renesas.com>
 <20251107210706.45044-3-ovidiu.panait.rb@renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251107210706.45044-3-ovidiu.panait.rb@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/7/25 23:07, Ovidiu Panait wrote:
> Switch from devm_reset_control_get_shared() to
> devm_reset_control_array_get_shared() when retrieving resets.
> 
> The RZ/V2H SoC requires two resets for the RTC block instead of one,
> so this will allow to handle multiple resets without additional changes.
> 
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> ---
>  drivers/rtc/rtc-renesas-rtca3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-renesas-rtca3.c b/drivers/rtc/rtc-renesas-rtca3.c
> index ab816bdf0d77..3524053269ef 100644
> --- a/drivers/rtc/rtc-renesas-rtca3.c
> +++ b/drivers/rtc/rtc-renesas-rtca3.c
> @@ -726,7 +726,7 @@ static int rtca3_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	priv->rstc = devm_reset_control_get_shared(dev, NULL);
> +	priv->rstc = devm_reset_control_array_get_shared(dev);
>  	if (IS_ERR(priv->rstc))
>  		return PTR_ERR(priv->rstc);
>  


