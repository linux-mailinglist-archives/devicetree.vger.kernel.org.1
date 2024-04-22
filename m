Return-Path: <devicetree+bounces-61550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE898AD2BB
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 18:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E001E1C20A86
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 16:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB73153813;
	Mon, 22 Apr 2024 16:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mDwYwW8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB1D6A039
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 16:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713804701; cv=none; b=gwDZEtqnuI55QfulOeWG2kKHJK+SIKBXAaBalR6AcG/A0CEYogtdD88q6o5+u/NDhmmZmuhyLv9k/ReYmlDt+hgKStmPxOPbqoG5XWvqBkCmyIDy9iNVxQ9CAv457qVWXszEEaBN1WA7hRlEQvasLLOMPBO78a+MydYRObPQrD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713804701; c=relaxed/simple;
	bh=tVqTYD1FvxyKRph9YfxGJap4Bei1YEEakxE59J2eS8c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=OgEaH4XfWy59gl0W1COBnaKznt3I4imELEgRsKh1cI041tXzjxtXw0JnjW+YytXD8t3ILjxLGsVTHOOnLKgxaXyxR2DPpYkBpv2Q2FkJx64lyzIzTHMLKO5jPl/EuRyZpGWl1Y+rbz8ZSAMmdHYA+ATr9wP4VFDLo2fARm8JBy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mDwYwW8v; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41a5b68ed85so7038195e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713804698; x=1714409498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJE4rl1eEAUqGfBZC2SJPu8F2JMT82hT5pkxBZ1KzUY=;
        b=mDwYwW8vc4RSNt8jpwHE+5EIojxVjaHPoBiB+p9cKX1Vrl1z+kEkpPNx0K5NJiqHBR
         oMFabc3SxFOm5YXJKhexNUtjm+reMLdlvtC18va2jbFqlkIY2cekQCwnYqkJFVkgTHZ+
         wsEJvg1lpsUKNLBXPtRb3w2ir+e++MC3hZkH7OvE+x6xQ9p6WettBFskWnaErL3MKUjS
         hVuEioWpj1Dw5dbsID92lXJgznEZvr+vU8C/ugmtUXjlkMnXym3b56aY+dl7vq/qo613
         GCc8gyQEvPIYpXtfNND6uFxZ44VVRqnP1THqLo4XV8yUZTYvOpYDCrL+fqL9tzC548vT
         K84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713804698; x=1714409498;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EJE4rl1eEAUqGfBZC2SJPu8F2JMT82hT5pkxBZ1KzUY=;
        b=qTJ94lQBHyYIZv69AdkpAwCjpb2mU4+6jkbZY5VuIyRaMG01NJ0W8x8Q4V9b2jQMz3
         C0Xyl2ybhULE3S74zNYxvcOjZM0ElIHiqxk6BXMgaZ1h3BgC8oNHW1q8RetrwLuW50ae
         FCvcfJtJlcZZYV2YrnOzAEw2XQiJAo9apmUYcnTWURtxmCkthTWQsR73INC93ZCVaCeU
         l9oNhPap2qzRaiarLQ85wUvwryADl51ZENc3alobK/hHORgh+EtuIldVs8QkGWyt5nXu
         x6Z/L2UtZGlqE21hnKe+YIuuxY4Sdez3pP4G3VpuvQ33BnRzqHyAxM+BkxI85jJAAcrp
         wKDA==
X-Forwarded-Encrypted: i=1; AJvYcCVYn+k3QtMzXSDsMMVUiruzQm4eJi1KkKDaZmqZy+fiQFHl7ZjlBmesuSoXEuqfGX4kVdaRi6uBoUltq//xP8+kREz51eE4O+/jiA==
X-Gm-Message-State: AOJu0Yws3VPwP6uax5+YxdeZb0l6NQE1krqUECJpooM31HotBEJ0EQd2
	wRadqcn3oV+A/cFE6/7mHAh4cEWtIRvIoWxpjaqQzgFJ8jK23IM5MNBg/bLI1N8=
X-Google-Smtp-Source: AGHT+IEnfwfQbwhcjAOciihqlrDnokk0wOxDOpXOkMdC9cD5R08X2KCDBWIiDoP1zJiRjjvC/4n74g==
X-Received: by 2002:a05:600c:a05:b0:41a:5d49:97e9 with SMTP id z5-20020a05600c0a0500b0041a5d4997e9mr157502wmp.9.1713804698013;
        Mon, 22 Apr 2024 09:51:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e5e5:892f:e81f:7cad? ([2a01:e0a:982:cbb0:e5e5:892f:e81f:7cad])
        by smtp.gmail.com with ESMTPSA id fc14-20020a05600c524e00b004161af729f4sm17228944wmb.31.2024.04.22.09.51.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 09:51:37 -0700 (PDT)
Message-ID: <ee095697-d3b9-40b5-84a5-6d20ff14ca0f@linaro.org>
Date: Mon, 22 Apr 2024 18:51:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v12 4/7] drm/meson: gate px_clk when setting rate
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jagan Teki <jagan@amarulasolutions.com>, Nicolas Belin
 <nbelin@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20240403-amlogic-v6-4-upstream-dsi-ccf-vim3-v12-0-99ecdfdc87fc@linaro.org>
 <20240403-amlogic-v6-4-upstream-dsi-ccf-vim3-v12-4-99ecdfdc87fc@linaro.org>
 <CAFBinCChEc+GH+tdmByWDM=Gs_BUpDh=6S=ch3QbGUt501_Ejw@mail.gmail.com>
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
In-Reply-To: <CAFBinCChEc+GH+tdmByWDM=Gs_BUpDh=6S=ch3QbGUt501_Ejw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Martin,

On 10/04/2024 21:34, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Wed, Apr 3, 2024 at 9:46 AM Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> Disable the px_clk when setting the rate to recover a fully
>> configured and correctly reset VCLK clock tree after the rate
>> is set.
>>
>> Fixes: 77d9e1e6b846 ("drm/meson: add support for MIPI-DSI transceiver")
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/gpu/drm/meson/meson_dw_mipi_dsi.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
>> index a6bc1bdb3d0d..a10cff3ca1fe 100644
>> --- a/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
>> +++ b/drivers/gpu/drm/meson/meson_dw_mipi_dsi.c
>> @@ -95,6 +95,7 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>>                  return ret;
>>          }
>>
>> +       clk_disable_unprepare(mipi_dsi->px_clk);
> nit-pick: clk_disable(mipi_dsi->px_clk); should be enough here as my
> understanding is that we only need to {un,}prepare a clock once.
> 
>>          ret = clk_set_rate(mipi_dsi->px_clk, mipi_dsi->mode->clock * 1000);
>>
>>          if (ret) {
>> @@ -103,6 +104,12 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>>                  return ret;
>>          }
>>
>> +       ret = clk_prepare_enable(mipi_dsi->px_clk);
>> +       if (ret) {
>> +               dev_err(mipi_dsi->dev, "Failed to enable DSI Pixel clock (ret %d)\n", ret);
>> +               return ret;
> If we ever hit this error case then there will be a lot of additional
> errors in the kernel log:
> - initially the clock is prepared and enabled in
> meson_dw_mipi_dsi_probe() by calling devm_clk_get_enabled()
> - we then disable the clock above (generally disabling a clock is
> expected to always succeed)
> - if the clock can NOT be re-enabled here we just log the error
> - in case a user tries to rmmod the driver (to modprobe it again) to
> try and recover from an error the automatic disabling of the pix_clk
> (based on devm_clk_get_enabled() where it was enabled initially) there
> will be a splat because the clock is already disabled (and enabled
> count is zero, so it cannot be disabled any further)
> 
> For the 32-bit SoC video clocks I keep track of them being enabled or
> disabled, see [0], [1] and [2].
> In my case this is important because we can run into cases where the
> PLL doesn't lock (I am not sure how likely this is for your case).
> 
> It *seems* like we need to do something similar as
> dw_mipi_dsi_phy_init() can be called when changing the display
> resolution (or whenever drm_bridge_funcs.atomic_pre_enable) is called.
> To illustrate what I have in mind I attached a diff (it's based on
> this patch) - it's compile tested only as I have no DSI hardware.
> In case dw_mipi_dsi_phy_init() is called only once per device
> lifecycle things may get easier.
> 
> PS: I'm so happy that we don't need any clock notifiers for this!
> So: good work with the clock driver bits.

I checked and tested your patches and it doesn't work because the pc_clk
needs to be disabled & prepared in order to correctly reset and setup again
the video clock tree.

dw_mipi_dsi_phy_init() is called at each DSI mode change, but it requires a
full clock tree recalc and reset, so it's safer to keep the current design.

I'll try to send a change to better handle the disable_unprepare() failure, but
definitely only calling clk_disable() wasn't enough.

Thanks,
Neil

> 
> 
> Let me know what you think,
> Martin
> 
> 
> [0] https://github.com/xdarklight/linux/blob/meson-mx-integration-6.9-20240323/drivers/gpu/drm/meson/meson_vclk.c#L1177-L1179
> [1] https://github.com/xdarklight/linux/blob/meson-mx-integration-6.9-20240323/drivers/gpu/drm/meson/meson_vclk.c#L1077
> [2] https://github.com/xdarklight/linux/blob/meson-mx-integration-6.9-20240323/drivers/gpu/drm/meson/meson_vclk.c#L1053


