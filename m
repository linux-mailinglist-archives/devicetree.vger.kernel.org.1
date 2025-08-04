Return-Path: <devicetree+bounces-201713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D90B1A599
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 17:15:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A30513ADE9D
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 15:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A9020A5F3;
	Mon,  4 Aug 2025 15:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yd/MYvyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C4E1DD0EF
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 15:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754320542; cv=none; b=Etff7KnEBk9kiIVNA790wIaMLYcizU2+917aR9f7HsS2XCt0FsZS0jnZDeidjZ2WISyhUra4HNeobJ7E4SdrZRZA4ZtbZauEqYUDutdl/7t+f4wFfhpMJyqzreygoO4EHvK5Vtocr5onVr0QNuuweKFPuyRXvrdARL1d6QKA/y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754320542; c=relaxed/simple;
	bh=mhvy51gDJdGX52YsY08HNDaaFP+bnKnsfUxWvu+Gcrk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DHcf9uO1ay3TjvnFtDJ4qyNkOmSqyQoeWkFTY+0GTdPA1EQcMuYif8lz1U2gP3v9KvXPvl9Gcftz4tST5r5OliPnymKtq6ln4xYh/poaJw5s9XqwKk5BhPUtsjkiXkSOQFVV56d7yyvunWcjPMfTMOuYMLQMlvaKuclMZbG3raM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yd/MYvyG; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-459ddf9019cso2780655e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 08:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754320537; x=1754925337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nJjeVcCtnXKnWhoVwXfMDE8hWmtcV5EpJXafPxt/CSU=;
        b=yd/MYvyGnvbA+x6WI7xh9g8yRpLoesy+MpxHGxqOoG7fToiE7btygyvLNbjh7Kxn5a
         yvNci1UDQ12hOdz3MFTEo1MGa9ViorWZpgi04h/tt4sMnrE9gnT43Y1ZsKj+AOxLj3ot
         o9NmyDmHQdxi9kqCmmcybjee0t88RTxo0rRyuDT9kzurkf0w3lT6rmPSva0EmKH+1e3I
         tGhPk6dH6P8T3zTWQ/dlV6k9dV+K334hpf0hjwygKd+m4L8tXD0t5s5tU7iIcjM+ZcFU
         CQMXYGcVq7X8uINpz8pyzv2kaADyVe6YQYFk5jqoxa7mSRJoQ/hF5gTRDmV8f2yULlEE
         0nYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754320537; x=1754925337;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nJjeVcCtnXKnWhoVwXfMDE8hWmtcV5EpJXafPxt/CSU=;
        b=AXUZ0EdYTbytJDi4MLA4JdaGH9uPs8L/Y3tXDkpylwgiG3u3zUUg9kkah8thSoH4Wv
         SlnNclByETg6KR2kKhb9BgZ8XyPDrDlWSi4nyGT2PQZz25WoBxFOsvfdX6dwEkUXWhy7
         tu60gdrZW2wBDWvw4/77aQokY88/nlH+9ByacFCFyFqHKDJ1pOkyJ8wrwPc5bBziVFZA
         g2mfzh3tlKob9VmiHEXgRxTo31NiHNjn6d9xkstjbBih02jWtjOjf+i0/4JLZWd4zFxG
         vDui4JXyAeTsCOuOdtamthx1EzGYLsZ+zUe5JSJmh0TxqbNKLcNLYif9wQqOvlQedTzO
         PinA==
X-Forwarded-Encrypted: i=1; AJvYcCVotWRUSp4rnXjXRl/+Qr2bCnzbPTOec7XZKrNWzUKWxP7epjy/7j++eynzQGTuIeb7zkJAHOi37Qk2@vger.kernel.org
X-Gm-Message-State: AOJu0YweUZiRojWShHhaZsRr440sNPcppcv6cP2kwkItZRXYs20XmKY+
	xy+YUJHattsZRJThuMExvnDZ+2QA8SJzXMv+W4befWuzJI7WPTNZMtwFBEaU9vrzM7U=
X-Gm-Gg: ASbGncuGo5S+P20o3lwzbysTYtOhlk6Wp8+OoUTyWnN2/gOH20UvxahR5sSDSfW37vc
	YUuZuGXZ0cKd1u3g7Vvu7ZcvojnbA6ilvf2YYCBltNHQ4jq9XTv9EnPgsRX08tFIQzTxpkfX4ko
	JUvYaIo1oymFGP/L+sDQzNlaZD6ARSm/c2tlDoJOeosJux4ZlwjSX7ZTIIV/emrM59uF3q1OAru
	VGLN+WZumMPH0WQe4DQvSHpDao++opCUtFDCzWatL2CAcvfk3MVWCeUkwoMEV5ioiyAGiz6jZRO
	rUNMFOr9/BRLBgFTtSZlJWuEx03CDWupnCeN3Bn4SqpG0uqfhBOOTTxNgk+J1GkMVLclSqEIsXt
	tmdiGdEZlTEP8YKTvRZehyR1QuaKestge0WUnM/MNSM9EErYNsnHUsHF0CQyNWTM0uIhlJ7JUkr
	o=
X-Google-Smtp-Source: AGHT+IEETbK5B9R4l4zfHSKM2IatUBsewiluok9u8cat8QEYDfF7e+N5lM3tAMhEwAekOpfuhYvQ+A==
X-Received: by 2002:a05:600c:4ec6:b0:458:c059:7da0 with SMTP id 5b1f17b1804b1-458c0597f5bmr62093385e9.2.1754320537459;
        Mon, 04 Aug 2025 08:15:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3030:f63e:fedd:700f? ([2a01:e0a:3d9:2080:3030:f63e:fedd:700f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589edf5638sm171780825e9.4.2025.08.04.08.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 08:15:37 -0700 (PDT)
Message-ID: <0a2963df-59a7-45a8-a74e-e6f4ff1f9868@linaro.org>
Date: Mon, 4 Aug 2025 17:15:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 01/13] drm/panel: ilitek-ili9881c: turn off power-supply
 when init fails
To: Heiko Stuebner <heiko@sntech.de>
Cc: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, hjc@rock-chips.com,
 andy.yan@rock-chips.com, andyshrk@163.com, nicolas.frattaroli@collabora.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-2-heiko@sntech.de>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250707164906.1445288-2-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/07/2025 18:48, Heiko Stuebner wrote:
> The prepare function turns on the power-supply regulator first, when
> preparing the display. But in an error case, just returns the error
> code, but does not power off the regulator again, fix that.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 28cd7560e5db..d7a17dca2a9c 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -1292,7 +1292,7 @@ static int ili9881c_prepare(struct drm_panel *panel)
>   						      instr->arg.cmd.data);
>   
>   		if (ret)
> -			return ret;
> +			goto disable_power;
>   	}
>   
>   	ret = ili9881c_switch_page(ctx, 0);
> @@ -1304,18 +1304,22 @@ static int ili9881c_prepare(struct drm_panel *panel)
>   					 &ctx->address_mode,
>   					 sizeof(ctx->address_mode));
>   		if (ret < 0)
> -			return ret;
> +			goto disable_power;
>   	}
>   
>   	ret = mipi_dsi_dcs_set_tear_on(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
>   	if (ret)
> -		return ret;
> +		goto disable_power;
>   
>   	ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
>   	if (ret)
> -		return ret;
> +		goto disable_power;
>   
>   	return 0;
> +
> +disable_power:
> +	regulator_disable(ctx->power);
> +	return ret;
>   }
>   
>   static int ili9881c_enable(struct drm_panel *panel)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

