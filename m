Return-Path: <devicetree+bounces-72256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1C58FB336
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FD352850AC
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B5C146016;
	Tue,  4 Jun 2024 13:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d/7IIAAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321328BF7
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717506728; cv=none; b=dbjX5iryG7vfoJOU7VvB5BKOZIn99s1brDYbIY6GNyAlPmMvbhJXAA99uhPOc82/ljlXqvskGz/bNs+ORLl/5EjxIM77Kj0aIEUhyK+rr8wDQXxtgKF6Z2Khkjz0jFwSwo3fY5AouBoxLKJsXpBUz2UfE4Wn5EMMKwg0qpuEd90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717506728; c=relaxed/simple;
	bh=JKkLtBEUrmYQnGf8tYh2jR3T3w9rFinBgGs6TA8+iUE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=AEtn/yJoDPGNmHG1fCMDBfBE4qH2aps5kRcYnkkgOZ1iVZ0nHyDhDOnlqrfJgXSiWM1Zm+QF12i52Rd4moPk+NchN+o22n5jbr8duHAQE2f3bHIlHNgXZiU7/V20NT5DgJ/Orp6EGMF7b7TwrAI7g5UpKRuKWr74yatRBIeg7wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d/7IIAAJ; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2eaa794eb9fso41399521fa.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717506725; x=1718111525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scoabqS6+XucB7o3404ijfWMEletkULCboMQ7PF182w=;
        b=d/7IIAAJrhZGoYmtd7RO29+7dl8esXI0fwm01Sj4TRaPwXniuzTaTpmNC08C7QRAY6
         VEwAk9qDw4zXHmn4Jf76IekVsiltdM+Qi8L5VaXILoa+y5qSbsT1M53mmeGmNPyTuv2E
         0yANUU2QdJtl0IbiZbpp1XhGw/Mk2/S80hRsx/UFTo5nZaHuib/8FtqiwCIc96ewcgH3
         JKsWBFoJC0i+/pwwaxLDvP9ccjFtpzzn9xPU+DVj12BQo7+Clh9TgKCCqZxilMF8UA+Y
         SZhkhOES4gWJbHE+RVPnVfBRSZwXyryJgLki4OJFzkioCq4wZvKey+PlGZTDFBFXmbDg
         z3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717506725; x=1718111525;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=scoabqS6+XucB7o3404ijfWMEletkULCboMQ7PF182w=;
        b=JOYeh1sOHTeiAj6Ve9q9JnzMrPirMCu9xX24Om414GZVrDk4Gu0130oK2GcHdcNp24
         X2WGOzGhpxwxgbxZzMztnDXZBe4oozc5aCvKjnyan/GQluK4mU/vcEs9E8KyfTKvxoM6
         s/oCWQUYpEnoCVwZqVR4QErxkiRdSq8hh0o6nHxTJOEX9Edy9pwxo1y/V75I3hFCSFwV
         VonlStnXa7mkv2JpxdZeRM5g0TbNPofH9/Zt5lC1bjCf539fPkC6+iUw+EEaU96SHDos
         iFe6Tj1/s1UMZjUg5Ah3x1RUfziyeX7qcakrlmbEAV6D6PLQp0fRLS8Vr0MVoe3/TPqK
         feiw==
X-Forwarded-Encrypted: i=1; AJvYcCX5a6WMrsYfRHR4jixa086KF5UAKTrrqZ3mRNT5/03vJb+xzbOyISDCwVwV/wtmn/4XM7pI27tJ5PRG/lfMS8NIy5ERYxj86KqPXw==
X-Gm-Message-State: AOJu0YwHC4vgQO8CrylqRydkbgfel+Gv5ZNpdwoa/js3kNao7O9fD+VJ
	3jc721kDK38j+WXXGawvdwTgVsYYoCR+2ZMbOrIsbwi9mMe2t71TiqcHDGuU9pk=
X-Google-Smtp-Source: AGHT+IEvFTfvdKINEDRD11Vcd01v7jqXDgHD79oA6Jf4/oVf1B01pQg+yySRPRVnwxYWE8QOmGpS0A==
X-Received: by 2002:a2e:b8c7:0:b0:2e9:5263:36e9 with SMTP id 38308e7fff4ca-2ea951d5c81mr82447921fa.43.1717506725401;
        Tue, 04 Jun 2024 06:12:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:409c:8ebe:886e:8c03? ([2a01:e0a:982:cbb0:409c:8ebe:886e:8c03])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91bb49ebsm15646791fa.34.2024.06.04.06.12.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:12:04 -0700 (PDT)
Message-ID: <4a4ca630-f71c-4012-a076-8e31b67b2517@linaro.org>
Date: Tue, 4 Jun 2024 15:12:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] soc: amlogic: meson-gx-socinfo: Add S905L ID
To: Christian Hewitt <christianshewitt@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240604050752.3312468-1-christianshewitt@gmail.com>
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
In-Reply-To: <20240604050752.3312468-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2024 07:07, Christian Hewitt wrote:
> Add the S905L SoC ID observed in several P271 boards:
> 
> kernel: soc soc0: Amlogic Meson GXLX (S905L) Revision 26:a (c1:2) Detected
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   drivers/soc/amlogic/meson-gx-socinfo.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
> index 6abb730344ab..7e255acf5430 100644
> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
> @@ -64,6 +64,7 @@ static const struct meson_gx_package_id {
>   	{ "962E", 0x24, 0x20, 0xf0 },
>   	{ "A113X", 0x25, 0x37, 0xff },
>   	{ "A113D", 0x25, 0x22, 0xff },
> +	{ "S905L", 0x26, 0, 0x0 },
>   	{ "S905D2", 0x28, 0x10, 0xf0 },
>   	{ "S905Y2", 0x28, 0x30, 0xf0 },
>   	{ "S905X2", 0x28, 0x40, 0xf0 },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

