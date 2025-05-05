Return-Path: <devicetree+bounces-173710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CD5AA94F2
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D42DD3BB20D
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D32258CD3;
	Mon,  5 May 2025 13:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KJMbGmoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA1F2561DC
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746453435; cv=none; b=fKr2s10JfF48UWoTbuC32TavZiFmeCKotR0kO7TyF/rW/KEaUFxdSGJCWlBGEHuT1QAktjbr0CJCVaVQOswgFcj+LhZqLzZ5JddFDnhvF0XOJ4/9FdEM6C2p66QvZZJB14KSltLAMZJ9ByTLHV+RV27jiAFwsjwBgYXZ49zhR9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746453435; c=relaxed/simple;
	bh=cvWIoQGrtgo+3ChyE96QITsQpkx48iXSqXhKsZn9rE0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=uRfUfHVrCrTno5Iurc3MkDVI2W+UgVgwoVERnw7hWROf5HgahEqVCkcPpae9lFckYH2hTd7SKo4VOV4Q0XP3lBiOKspsc50XauwoboxG61wTBYm3xiYFr7/sP3/Ut4P+ilFWrAiDuVWNY1ORx3k51x4hV9ir7PFfUuS7VZWY6xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KJMbGmoR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-441c99459e9so8785695e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746453432; x=1747058232; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tpOfCpy36Um39vuzOQ53zo4WM5KtHq+wPwA/g9psN6k=;
        b=KJMbGmoRm6wcTsN+0irHQsscyspXZGQl/Ac1bRyna82n3FDrnQLPRTVdhWT99WWp8j
         SnyZ58LZCjf84b9CzioU9OcuK8cYyGqB4B/vd9yxpe/CT/XdXVL/gyEBdYmRwOvLynV4
         feCS0geq6M9UkhmtxmsS+L7HXTKCq2LEpeNph6hRgh/npJpWNcWmfZGLnWZOUgXmSmE5
         qI27SEkTC7lUWT06qgXL7nGAAn+99RfHvggVs1AUow+sFrblVm7efAh9QmZijAurNyoz
         vxbkS9yKmjCS9hUHB1eip7j2FaxXhfvY+qfYauZ7DBeFDioADWgpmAUXazvfmtdMEuek
         k2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746453432; x=1747058232;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tpOfCpy36Um39vuzOQ53zo4WM5KtHq+wPwA/g9psN6k=;
        b=TvCIBXAW3Ye8c1ZHqPDSyaMucdNKfvJhiHpzbTq9iWLP4dFRfv5NPUK8L9/nxPqzHN
         jToup7YEcqOL2/QMOD5RAsC48SUWdcEEqr/2+6jLaMGySjJzzvheHcpoTjFqNw9jy056
         FLbgvkeFkagIBiCRdoC5WrMgSAngwFLGXKY7Ih39TMt9s+mOSiOfePCLJUcJRr96jjxQ
         yVOvSXgnFWBJ5BsE2KARFEq2PSa3z10eMmDckFIbJbkGIRLr+zlBBPOrTSwFy0JRl5G5
         8pO//qgSn7/AfVNSxdMHb3HdnOhJsrwK1QybIyGTRLNt4O82B2eqKtclTBDBPrY9Z9jU
         JPcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVru10Pbmz9a2Co7yO7vg3VmfP8L6P+djzCFatucLOgmzfzETbw1KagndMHpY6YAJ4s0fyNwZR0yKV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmo6KUo9xI6dmz7NUq3A4Fr0v+tOwe6RLKDz+fMaXnq84AnyYu
	OqI2RzhmzzRabZJJha+6i2kqworNTUXUjPvxWulrsyM8trRyCplgJllqw6E7IYM=
X-Gm-Gg: ASbGncsJyVWTHd9WnNBQAwJsuxUrMs3qzwePW9xT7l3TTpVokDRrBN7h682sYztnQdq
	Z3nXtegMJWb3+Y0TCdjn/IV37GKtGoWxOsuQbMsn6iba74T5m4si63/+xaYQNgl8MzB6BGn5Bbp
	fhnyqRyCgdDoG5tjfXI45yJY4FhLEbDQnuU3g13U57XhyZeM7AnUNo1Ymjsi3gwyRjkD2FKzZtM
	E5nyOVK4DK26HK0XEBlSmmQlwCtPjzQuTWArbbGgDR9dDazfLzUUl+LPPiK/ETqoM6eeO2R6Hro
	VLUDya0AyD5zOcdi5r2HMGyrP5KO8WZSRrzvMjwRXAq1aAdI5BbBc2Hl4nay8HUJggEFcn2SboS
	ttvGuoRq7olgvRPlZSA==
X-Google-Smtp-Source: AGHT+IERbb85euZHYXgiYa/TxvOEZ/vOaHxMeVPrrX0S12v3xDTa50lnxHqFU0pSGJ3Idq6PuA6aDA==
X-Received: by 2002:a05:6000:c8b:b0:3a0:9fe1:c2ac with SMTP id ffacd0b85a97d-3a09fe1c507mr4152470f8f.22.1746453431630;
        Mon, 05 May 2025 06:57:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:88d3:1ad7:3ae1:56e3? ([2a01:e0a:3d9:2080:88d3:1ad7:3ae1:56e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b17260sm10778567f8f.98.2025.05.05.06.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:57:11 -0700 (PDT)
Message-ID: <861acd58-5eed-4291-bae2-965bfb5fe2bb@linaro.org>
Date: Mon, 5 May 2025 15:57:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/4] drm: panel: Add support for Renesas R61307 based
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250503094149.29201-1-clamor95@gmail.com>
 <20250503094149.29201-3-clamor95@gmail.com>
 <ffac4a1b-5dfa-48e9-8ac4-37939b6a9347@linaro.org>
 <CAPVz0n3i7=jM9GB-CggFOJEN7B+oBWvyqsSn8UXav3MH0BQJ5g@mail.gmail.com>
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
In-Reply-To: <CAPVz0n3i7=jM9GB-CggFOJEN7B+oBWvyqsSn8UXav3MH0BQJ5g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/05/2025 13:41, Svyatoslav Ryhel wrote:
> пн, 5 трав. 2025 р. о 10:50 Neil Armstrong <neil.armstrong@linaro.org> пише:
>>
>> On 03/05/2025 11:41, Svyatoslav Ryhel wrote:
>>> R61307 is liquid crystal driver for high-definition amorphous silicon
>>> (a-Si) panels and is ideal for tablets and smartphones.
>>>
>>> Supported compatibles are:
>>> - hit,tx13d100vm0eaa
>>> - koe,tx13d100vm0eaa
>>>
>>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
>>> ---
>>>    drivers/gpu/drm/panel/Kconfig                |  13 +
>>>    drivers/gpu/drm/panel/Makefile               |   1 +
>>>    drivers/gpu/drm/panel/panel-renesas-r61307.c | 327 +++++++++++++++++++
>>>    3 files changed, 341 insertions(+)
>>>    create mode 100644 drivers/gpu/drm/panel/panel-renesas-r61307.c
>>>
>>
>> <snip>
>>
>>> +static int renesas_r61307_probe(struct mipi_dsi_device *dsi)
>>> +{
>>> +     struct device *dev = &dsi->dev;
>>> +     struct renesas_r61307 *priv;
>>> +     int ret;
>>> +
>>> +     priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>> +     if (!priv)
>>> +             return -ENOMEM;
>>> +
>>> +     priv->vcc_supply = devm_regulator_get(dev, "vcc");
>>> +     if (IS_ERR(priv->vcc_supply))
>>> +             return dev_err_probe(dev, PTR_ERR(priv->vcc_supply),
>>> +                                  "Failed to get vcc-supply\n");
>>> +
>>> +     priv->iovcc_supply = devm_regulator_get(dev, "iovcc");
>>> +     if (IS_ERR(priv->iovcc_supply))
>>> +             return dev_err_probe(dev, PTR_ERR(priv->iovcc_supply),
>>> +                                  "Failed to get iovcc-supply\n");
>>> +
>>> +     priv->reset_gpio = devm_gpiod_get_optional(dev, "reset",
>>> +                                                GPIOD_OUT_HIGH);
>>> +     if (IS_ERR(priv->reset_gpio))
>>> +             return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
>>> +                                  "Failed to get reset gpios\n");
>>> +
>>> +     if (device_property_read_bool(dev, "renesas,inversion"))
>>> +             priv->inversion = true;
>>> +
>>> +     if (device_property_read_bool(dev, "renesas,contrast"))
>>> +             priv->dig_cont_adj = true;
>>> +
>>> +     priv->gamma = 0;
>>> +     device_property_read_u32(dev, "renesas,gamma", &priv->gamma);
>>> +
>>> +     priv->dsi = dsi;
>>> +     mipi_dsi_set_drvdata(dsi, priv);
>>> +
>>> +     dsi->lanes = 4;
>>> +     dsi->format = MIPI_DSI_FMT_RGB888;
>>> +     dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
>>> +                       MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM;
>>> +
>>> +     drm_panel_init(&priv->panel, dev, &renesas_r61307_panel_funcs,
>>> +                    DRM_MODE_CONNECTOR_DSI);
>>
>> Please switch to devm_drm_panel_alloc()
>>
> 
> This helper is not available as for 6.15-rc5

Please rebase on on drm-misc-next or linux-next:

https://cgit.freedesktop.org/drm/drm-misc/

Thanks,
Neil

> 
>>> +
>>> +     ret = drm_panel_of_backlight(&priv->panel);
>>> +     if (ret)
>>> +             return dev_err_probe(dev, ret, "Failed to get backlight\n");
>>> +
>>> +     drm_panel_add(&priv->panel);
>>> +
>> <snip>
>>
>> With that:
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


