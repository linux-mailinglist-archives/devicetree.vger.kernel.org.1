Return-Path: <devicetree+bounces-36588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A57841E88
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53BD51C211EE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0C557883;
	Tue, 30 Jan 2024 09:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ccmA6EkN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C378657889
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706605203; cv=none; b=Bm8X+tFcPzEk1yYjGL1eGR+gsLq0F+7t0sXSiq4ApE6dVAT6eD1Y9doWtVO1XZKuRUxZNiw2DYCSbfFJ10HjI9h+mOGCYWxFXN1MMhwMWYf4FXow5Xzw7UQTirb2PnDSSC7c4UUmGpIp2kVwVK9pr1gIQb3nUSr1rxlibl3sjGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706605203; c=relaxed/simple;
	bh=Ss8eXXVOK69pwFg4ALxuF9O7AP24QrPRskLjKqOA56E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2uwp5WbB11J6tOgAGB2N1gEzQihuCl3ItX+9+Knrzgw0h1K0FbLlktRSVpH5ot3Gxo3vwH3Iit8+Fo53xKKBjRLCxrvI9DXigj9YEXzIlNALV72pIMna/+pINZC7BuzA3aiO2IMjRm/Yz2iwLCwsJyu6maSqHiDLrfQXgoBvHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ccmA6EkN; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55f496d60e4so318449a12.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706605200; x=1707210000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Db3zP9xDe7AQg6WDfeMGEY2GUxXn8qP4OsKoMMuxQJ0=;
        b=ccmA6EkNzCqWrEQnNllEh5x+B612famcR+jlP8oxYKGjSZoV5kFif7IeHvL5qOA9ex
         trkC183mEh/r7lh1b7iFoieOKGBSpBGLXi9FL1g9pzocgc9L+zDzcDAlHbV8efoKtiQc
         xh86Nre7G5tEOJACdu1SvoH9jfcZBnNNNWeU1ZqzYIJ4Yp47ynBRJSko3Bx85VlPe2Cl
         30R2qciJAtpnO/NaoFjkf7Ji0gP9xOg0OHy5N78864zBR88IpP3CaqQ0+dZGpSFdhFDc
         e1dEerihR3/7wBOndQJR9kygmz4QjwOHH1C9xMsy9ZnOS03qQuKSNGNKjveI3aWP+m1m
         fGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706605200; x=1707210000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Db3zP9xDe7AQg6WDfeMGEY2GUxXn8qP4OsKoMMuxQJ0=;
        b=Lam6U5kTzxUtlykt7pEY6Rft84XxM1ByWJhqEBtNwKBG7ami3Czr4mXaAdWpnRUYw+
         fe0IRqauZZvZp6dXmZZkN2VYF0jKeYYWO5Bc6Pp72H6/F2IOE/CSqAkpFuxtfe9cKlFb
         cVYw4DZA7+GKmvlHHQ2Lzah8FKBs3T0ViVo2ngyVrKiFc0scDEhlPPjyNJ9G0DyOj/7W
         evJv8m6P+b0MNla7VzT9wXf7pPxZwRN3GeTVY2odqeLRdgBHwAcevoDcddnCNPTcm/fH
         4NnefkUV9W/F9RN/2VS6FQv6WSf8TzfDb/fvyQ0I+Nl8WcxblszVXf2Rrh5ukMJMBZHJ
         28kg==
X-Gm-Message-State: AOJu0YxmQw6XPir6vIC6wxYVzXlT/9aBdwtwla6nI/5PvSujML0it3pP
	iTnijarJAhWABap6f+9EMC0xkYb0kZ3pjVj7lMQ0vcY0bQGpZoMvn6tTUoE9BB8=
X-Google-Smtp-Source: AGHT+IFpF6eb2hwZ1pcq0BDPc8nFxpTlxhdwU9wZlPnph/0Br1InfNUBcZB2iLz9YJiS9cXsEmiNZQ==
X-Received: by 2002:a05:6402:22e4:b0:55e:f4fb:66f6 with SMTP id dn4-20020a05640222e400b0055ef4fb66f6mr3348290edb.18.1706605200064;
        Tue, 30 Jan 2024 01:00:00 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402195300b0055e96290001sm3700180edz.27.2024.01.30.00.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 00:59:59 -0800 (PST)
Message-ID: <3e078f39-ccd4-4bf4-b11c-5160cc1f0221@linaro.org>
Date: Tue, 30 Jan 2024 08:59:57 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: samsung: gs101: add support for cmu_peric1
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, semen.protsenko@linaro.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240129174703.1175426-1-andre.draszik@linaro.org>
 <20240129174703.1175426-4-andre.draszik@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240129174703.1175426-4-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/29/24 17:46, André Draszik wrote:
> CMU_PERIC1 is the clock management unit used for the peric1 block which
> is used for additional USI, I3C and PWM interfaces/busses. Add support
> for muxes, dividers and gates of cmu_peric1, except for
> CLK_GOUT_PERIC1_IP which isn't well described in the datasheet and
> which downstream also ignores (similar to cmu_peric0).
> 
> Two clocks have been marked as CLK_IS_CRITICAL for the following
> reason:
>     * disabling them makes it impossible to access any peric1
>       registers, (including those two registers).
>     * disabling gout_peric1_lhm_axi_p_peric1_i_clk sometimes has the
>       additional effect of making the whole system unresponsive.
> 
> One clock marked as CLK_IGNORE_UNUSED needs to be kept on until we have
> updated the respective driver for the following reason:
>     * gout_peric1_gpio_peric1_pclk is required by the pinctrl
>       configuration. With this clock disabled, reconfiguring the pins
>       (for USI/I2C, USI/UART) will hang during register access.
>       Since pinctrl-samsung doesn't support a clock at the moment, we
>       just keep the kernel from disabling it at boot, until we have an
>       update for pinctrl-samsung, at which point we'll drop the flag.
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> 

Looks good to me:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

