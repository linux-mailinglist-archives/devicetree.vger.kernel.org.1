Return-Path: <devicetree+bounces-184057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6818AD2E93
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 09:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4BE73B1905
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 07:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6E727AC5A;
	Tue, 10 Jun 2025 07:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y2eIVvot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2835727AC35
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749540262; cv=none; b=hCxhm0fAwy5/c+Yda3coBT/fSx7dtbAhile0qr2mZrcdm9VXcuIvrSqTgs2+C2mYwuWKS5hdvRbf9OJe80LGj/tV2Dcyhxc0flSdkMOoGKLqDxOl7+reL6lUN75gcZFkKc9W2k1DtxZQ0g2E31+9uzOK+b/PAhQwjVCgwoq6ExM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749540262; c=relaxed/simple;
	bh=C/2GnNiLsRp0Hqx4a0jWo4KIWzRyyL2nf+rRc8NoJWQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Qdav/8ZF118HkXYhUYeKvPXiGGy3jujntInmLABryUueylDGg03Fa3ZCh2sphxnM1XjfHJQ4WEuPaMZj0Y6C3Jf+oRIe+70SmhgXA0toq9dK2DtLrHmg9HMs5hbagQBtrXRO96VyP7Qzdct9qmQRryAT3vcM5oM14OWg4Wt5qHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y2eIVvot; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450cfb79177so24587055e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 00:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749540257; x=1750145057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Ct5DaGbTXHB6VLZbLZ+n7DCJpYObNUiN7xrzDYEfiU=;
        b=y2eIVvotK3rbFD/66sL5S43Baw0cWZ+Pjt9P5iXfN1Umw+8BAVhcNtphgYhi1d+9Mz
         ef0yzaObYwTOaBABnfVwhy6CKaAYsFENS5TzSLx16dZeERq2Ucky7UjatGPjdIvCpmoI
         3husLEqO6lTH3lZKxBh+aAlDMU6yRb2VAhjKKwBYxfkND8/cUZn8A78BT1WondEvxnK5
         OtwQzTWz6gRD8K3Jpgw3vk4Z+a4ZGYX5mcCsVp+GAW8zamJ9wzKjHwPMeSbHRopfo6Pi
         GBFBPFdznMnGmX0PJVMUAs+E3pLv+qA6qKOCVgcm5tAcYSHblfxPDQLqlh4Jalw0kpTl
         PCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749540257; x=1750145057;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Ct5DaGbTXHB6VLZbLZ+n7DCJpYObNUiN7xrzDYEfiU=;
        b=ChbDfCkk5ugj3mx15Tn8yV4wEhQR6WpyPPlSamOCG57MKAiy3wWtfB5D/SlixMbFhy
         eyQRW+qsjdga3GdfuHUIT9ShgNY/WgCwCQT3WlkA4Y/ZyUIpYzFq6BmQbWRXcGSr4B0g
         kwXfKxsxZ1hnS4SxOAKe+3F81iskT9Gqu5o1SbEpdDXNOa16qQj5tvDIjixHUmvCBG9G
         yAWTb9OY7VlriTAFUOAamfCx9Wq5XNbMS1P1BARN2BVHhN2FbHSUJ5l3WQo768HuwypF
         NLjcaOUvj0HfFV3PnBM1UN1fsHNpLMbQCdvkdeceZjIYKSFGgsGqpvwr4kozNOFhXMqz
         oEaQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8m+XEkUv6p2h3oLKi4ntlEnaEfJWuVaX5+UUBSit1ascdygG7aMbi1UYTVqWbXd8V4hzgKJvw2JY2@vger.kernel.org
X-Gm-Message-State: AOJu0YwgHTGCneANLKFDSIU5otix2Q2SIaii+84U85EHfXS5JP80TJ4L
	/42zCLsRycKEmJwnw3nKwLiuIuclN4+36PPnYB78FBYZGxeUXcuJ5+P/vGwAii2Wq8Q=
X-Gm-Gg: ASbGncsO9eSEWqDdtEzOYI7H9SBD7NhMcmVyG2/oqjkjXUq2rfvOR/NpuitGkPH7aYK
	8/QnJcdSVVPlMpGUu79kJEbqxAqyAgd6acpEp6/pMvaUlSy5hAgHgz82exa6c71pYle2LFv2+UU
	lLSTJn2BlflA3qwvidb+u47aePBlblRCbK87OToqABRPQs3U14Zy7dMEdaooLeTb/xSSeAxHWUa
	DE8/2wGTJFHjK8IJwKqQQ8l+bHEVNvlj7FmShzziL39FB3XSdZR5zOlEq7OFbvYnJV+WHhjMpMN
	rGiUKhYGh5jS72RgiMLxFKzH5Ap1am5lweVnIEkDzoqwqRaoBeTF5iCIMa78/+eOyvc4FVMU0sZ
	c7/TfFBO5m+Lu9l1sHMQVRsCYXrCGFmR9Jc+I
X-Google-Smtp-Source: AGHT+IE97eN6z8mBDxazJcIb+pUGWiJccU812o6mz4Mu1DHe08c1zOSsXFyvGRxaycOwNGTiw2NDdg==
X-Received: by 2002:a05:600c:530d:b0:43c:efed:732c with SMTP id 5b1f17b1804b1-452014b384cmr104907225e9.28.1749540257306;
        Tue, 10 Jun 2025 00:24:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f0b:a9b6:d508:9d14? ([2a01:e0a:3d9:2080:f0b:a9b6:d508:9d14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4531fe8526bsm4156705e9.0.2025.06.10.00.24.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 00:24:17 -0700 (PDT)
Message-ID: <a51e20d9-8fd2-4c59-9586-f87e984616e1@linaro.org>
Date: Tue, 10 Jun 2025 09:24:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/3] drm/panel: ilitek-ili9881c: Add configuration for 7"
 Raspberry Pi 720x1280
To: Marek Vasut <marek.vasut+renesas@mailbox.org>,
 dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250608142908.54121-1-marek.vasut+renesas@mailbox.org>
 <20250608142908.54121-3-marek.vasut+renesas@mailbox.org>
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
In-Reply-To: <20250608142908.54121-3-marek.vasut+renesas@mailbox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/06/2025 16:28, Marek Vasut wrote:
> Add configuration for the 7" Raspberry Pi 720x1280 DSI panel
> based on ili9881.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Based on https://github.com/raspberrypi/linux 0d7ac78a3dd9 ("Extending ili9881c driver support for nwe080 panel")
> by Dave Stevenson <dave.stevenson@raspberrypi.com> and others
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 219 ++++++++++++++++++
>   1 file changed, 219 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 2f5ae69148cc..06c5ef9a4946 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -1224,6 +1224,199 @@ static const struct ili9881c_instr am8001280g_init[] = {
>   	ILI9881C_COMMAND_INSTR(MIPI_DCS_WRITE_POWER_SAVE, 0x00),
>   };
>   
> +static const struct ili9881c_instr rpi_7inch_init[] = {
> +	ILI9881C_SWITCH_PAGE_INSTR(3),
> +	ILI9881C_COMMAND_INSTR(0x01, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x02, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x03, 0x73),
> +	ILI9881C_COMMAND_INSTR(0x04, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x05, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x06, 0x0a),
> +	ILI9881C_COMMAND_INSTR(0x07, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x08, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x09, 0x61),
> +	ILI9881C_COMMAND_INSTR(0x0a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0c, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x0d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x0f, 0x61),
> +	ILI9881C_COMMAND_INSTR(0x10, 0x61),
> +	ILI9881C_COMMAND_INSTR(0x11, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x12, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x13, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x14, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x15, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x16, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x17, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x18, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x19, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x1e, 0x40),
> +	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
> +	ILI9881C_COMMAND_INSTR(0x20, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x21, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x23, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x24, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x25, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x27, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x28, 0x33),
> +	ILI9881C_COMMAND_INSTR(0x29, 0x03),
> +	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x30, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x32, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x33, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x34, 0x04),
> +	ILI9881C_COMMAND_INSTR(0x35, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x36, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x37, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x38, 0x3c),
> +	ILI9881C_COMMAND_INSTR(0x39, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3b, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x40, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x41, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x42, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x43, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x44, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x50, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x51, 0x32),
> +	ILI9881C_COMMAND_INSTR(0x52, 0x54),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x76),
> +	ILI9881C_COMMAND_INSTR(0x54, 0x98),
> +	ILI9881C_COMMAND_INSTR(0x55, 0xba),
> +	ILI9881C_COMMAND_INSTR(0x56, 0x10),
> +	ILI9881C_COMMAND_INSTR(0x57, 0x32),
> +	ILI9881C_COMMAND_INSTR(0x58, 0x54),
> +	ILI9881C_COMMAND_INSTR(0x59, 0x76),
> +	ILI9881C_COMMAND_INSTR(0x5a, 0x98),
> +	ILI9881C_COMMAND_INSTR(0x5b, 0xba),
> +	ILI9881C_COMMAND_INSTR(0x5c, 0xdc),
> +	ILI9881C_COMMAND_INSTR(0x5d, 0xfe),
> +	ILI9881C_COMMAND_INSTR(0x5e, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x5f, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x61, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x62, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x63, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x64, 0x07),
> +	ILI9881C_COMMAND_INSTR(0x65, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x66, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x67, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x68, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x69, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x6a, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6c, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x6d, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x70, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x71, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x72, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x73, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x74, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x75, 0x0e),
> +	ILI9881C_COMMAND_INSTR(0x76, 0x0f),
> +	ILI9881C_COMMAND_INSTR(0x77, 0x0c),
> +	ILI9881C_COMMAND_INSTR(0x78, 0x0d),
> +	ILI9881C_COMMAND_INSTR(0x79, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x7a, 0x07),
> +	ILI9881C_COMMAND_INSTR(0x7b, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7c, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7d, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x7f, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x80, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x81, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x82, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x83, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x84, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x85, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x86, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x87, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x88, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x89, 0x02),
> +	ILI9881C_COMMAND_INSTR(0x8A, 0x02),
> +	ILI9881C_SWITCH_PAGE_INSTR(4),
> +	ILI9881C_COMMAND_INSTR(0x6C, 0x15),
> +	ILI9881C_COMMAND_INSTR(0x6E, 0x2A),
> +	ILI9881C_COMMAND_INSTR(0x6F, 0x33),
> +	ILI9881C_COMMAND_INSTR(0x3B, 0x98),
> +	ILI9881C_COMMAND_INSTR(0x3a, 0x94),
> +	ILI9881C_COMMAND_INSTR(0x8D, 0x14),
> +	ILI9881C_COMMAND_INSTR(0x87, 0xBA),
> +	ILI9881C_COMMAND_INSTR(0x26, 0x76),
> +	ILI9881C_COMMAND_INSTR(0xB2, 0xD1),
> +	ILI9881C_COMMAND_INSTR(0xB5, 0x06),
> +	ILI9881C_COMMAND_INSTR(0x38, 0x01),
> +	ILI9881C_COMMAND_INSTR(0x39, 0x00),
> +	ILI9881C_SWITCH_PAGE_INSTR(1),
> +	ILI9881C_COMMAND_INSTR(0x22, 0x0A),
> +	ILI9881C_COMMAND_INSTR(0x31, 0x00),
> +	ILI9881C_COMMAND_INSTR(0x53, 0x7d),
> +	ILI9881C_COMMAND_INSTR(0x55, 0x8f),
> +	ILI9881C_COMMAND_INSTR(0x40, 0x33),
> +	ILI9881C_COMMAND_INSTR(0x50, 0x96),
> +	ILI9881C_COMMAND_INSTR(0x51, 0x96),
> +	ILI9881C_COMMAND_INSTR(0x60, 0x23),
> +	ILI9881C_COMMAND_INSTR(0xA0, 0x08),
> +	ILI9881C_COMMAND_INSTR(0xA1, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xA2, 0x2a),
> +	ILI9881C_COMMAND_INSTR(0xA3, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xA4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xA5, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xA6, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xA7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xA8, 0x7e),
> +	ILI9881C_COMMAND_INSTR(0xA9, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xAA, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xAB, 0x6b),
> +	ILI9881C_COMMAND_INSTR(0xAC, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xAD, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xAE, 0x4b),
> +	ILI9881C_COMMAND_INSTR(0xAF, 0x20),
> +	ILI9881C_COMMAND_INSTR(0xB0, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xB1, 0x50),
> +	ILI9881C_COMMAND_INSTR(0xB2, 0x64),
> +	ILI9881C_COMMAND_INSTR(0xB3, 0x39),
> +	ILI9881C_COMMAND_INSTR(0xC0, 0x08),
> +	ILI9881C_COMMAND_INSTR(0xC1, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xC2, 0x2a),
> +	ILI9881C_COMMAND_INSTR(0xC3, 0x10),
> +	ILI9881C_COMMAND_INSTR(0xC4, 0x15),
> +	ILI9881C_COMMAND_INSTR(0xC5, 0x28),
> +	ILI9881C_COMMAND_INSTR(0xC6, 0x1c),
> +	ILI9881C_COMMAND_INSTR(0xC7, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xC8, 0x7e),
> +	ILI9881C_COMMAND_INSTR(0xC9, 0x1d),
> +	ILI9881C_COMMAND_INSTR(0xCA, 0x29),
> +	ILI9881C_COMMAND_INSTR(0xCB, 0x6b),
> +	ILI9881C_COMMAND_INSTR(0xCC, 0x1a),
> +	ILI9881C_COMMAND_INSTR(0xCD, 0x18),
> +	ILI9881C_COMMAND_INSTR(0xCE, 0x4b),
> +	ILI9881C_COMMAND_INSTR(0xCF, 0x20),
> +	ILI9881C_COMMAND_INSTR(0xD0, 0x27),
> +	ILI9881C_COMMAND_INSTR(0xD1, 0x50),
> +	ILI9881C_COMMAND_INSTR(0xD2, 0x64),
> +	ILI9881C_COMMAND_INSTR(0xD3, 0x39),
> +};
> +
>   static inline struct ili9881c *panel_to_ili9881c(struct drm_panel *panel)
>   {
>   	return container_of(panel, struct ili9881c, panel);
> @@ -1450,6 +1643,23 @@ static const struct drm_display_mode am8001280g_default_mode = {
>   	.height_mm	= 151,
>   };
>   
> +static const struct drm_display_mode rpi_7inch_default_mode = {
> +	.clock          = 83330,
> +
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 239,
> +	.hsync_end	= 720 + 239 + 33,
> +	.htotal		= 720 + 239 + 33 + 50,
> +
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 20,
> +	.vsync_end	= 1280 + 20 + 2,
> +	.vtotal		= 1280 + 20 + 2 + 30,
> +
> +	.width_mm	= 90,
> +	.height_mm	= 151,
> +};
> +
>   static int ili9881c_get_modes(struct drm_panel *panel,
>   			      struct drm_connector *connector)
>   {
> @@ -1613,6 +1823,14 @@ static const struct ili9881c_desc am8001280g_desc = {
>   		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
>   };
>   
> +static const struct ili9881c_desc rpi_7inch_desc = {
> +	.init = rpi_7inch_init,
> +	.init_length = ARRAY_SIZE(rpi_7inch_init),
> +	.mode = &rpi_7inch_default_mode,
> +	.mode_flags =  MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_LPM,
> +	.lanes = 2,
> +};
> +
>   static const struct of_device_id ili9881c_of_match[] = {
>   	{ .compatible = "bananapi,lhr050h41", .data = &lhr050h41_desc },
>   	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
> @@ -1620,6 +1838,7 @@ static const struct of_device_id ili9881c_of_match[] = {
>   	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
>   	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
>   	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },
> +	{ .compatible = "raspberrypi,dsi-7inch", &rpi_7inch_desc },
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(of, ili9881c_of_match);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

