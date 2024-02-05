Return-Path: <devicetree+bounces-38571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C084988D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 12:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AF48B2994D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 11:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CBF9182DB;
	Mon,  5 Feb 2024 11:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hxGXfaJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B191F199AB
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 11:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707131508; cv=none; b=oyKlLqrEobCb/DZHp4LvQRHqeKYDSwdOw7vN2+6OZHrgKWlrKRcAOHowpY48UdGuaHYMoQcezf4hQnRHQJHXkTP7n8EcnTEGyqOxETWglpufC3aHFcLw5477U16Mxe0QUAJCUujiC9FL2C0PXTTmSATjYXNpCw8ciXtDDYy/u7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707131508; c=relaxed/simple;
	bh=44yD7rnL4JgRkbpkjCMO+pGS+d4RlK4ay9S/egj0OTI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=fkCrhJ4ycLOl3WYjoCKXmCx+D9NL16o+jLW9F95bEE2LpAXxtS9DWZUJXW0MyU3+sodBPKH2ZdGE5Y+Iu5Sv2MQc3YrygHhhV4B4ng960fuuaxwByK2HzSSD61xq6MKY1on44/Cy0IDgDX6ubO8VzeQdeas1hVG/fYJScoRxmMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hxGXfaJT; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40fdd11475aso3835285e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 03:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707131505; x=1707736305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R9cDwsecDZ0LscY/WGOk3mCsJ2V/32lETeX606TMcXk=;
        b=hxGXfaJTC5rOZswysszJi+WCkevppQ8OqQZhrjuAAv01FEL5WbrpGrprkJEWJKjnCk
         QxUzZVYkyOFGwDzcL4lCxGWAreeJE9c1o7SuAYcynaRdgpJm6WBrj7jLOp1BuAgsvc8c
         jf/iRTl/LXA7LdR+QAMtWmu0mPObaKKweGl0in8ynXAbdfR/0IJjQ5ObmRRe0iB+DpB/
         aKnIlDw8Tstv3IGiUvtk55wPngYpW9rsJbkShcpoqHobK2wmyqmyNALLQLLRsxB/2LGJ
         9Y+Mv/GTXNxdlIbC27AOwBhxt5VYsvr/xbOAUSrjQ8Ftu2ZZ09t15XJY+63NlBZh7QZ+
         0OVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707131505; x=1707736305;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R9cDwsecDZ0LscY/WGOk3mCsJ2V/32lETeX606TMcXk=;
        b=mZrvBUTOo/A6OnrcwC4XVCsOz/IIQzHdoSLORkgW5n3ERU4IvYF/Q4Txyqb6L9AoQC
         0VsWH1Os25XWYFgLFwLNhPqii2r3iqoM7DDBt9oJvFoyDOR9Vb82Xi1ZLIIHBlCDgN4q
         reEQjNYmgUqaTRYUG40VjzGL4fT+pfIORWIVZHK5hFjA1KPp8RjCbmoSyWas6cg6KDYD
         h6r6OiEtf4gqIJIOmUZJhIm8VGNnOEK+d+JIo3x1Omt55gGsIIWZjJN5Cfifnj+XOVYc
         YS2SKgpL5XVVM2g9SbhCv3kJSxMp0hddxn5/sK+4QFKM9etKSNkrS7aIlrZnTjf8rc/6
         zKxQ==
X-Gm-Message-State: AOJu0Yz57Lk1k6U1rSglqYFR/O9JQW7v211JDpx+im8r6DxGRY+jDuLz
	gfver0rLqE19sgTjXn3YMZ4DJ7nD1f6Kr7tsmZ3S+y1gQa+iC0h9WXSZR/94iC4=
X-Google-Smtp-Source: AGHT+IGpwEG2fx535CE8Gc+38MfusB782VlMzKPFNHzCyvdpz9UxmXG0MElN+t/AxvRZDv0A/tLT4w==
X-Received: by 2002:adf:e292:0:b0:33a:d2d4:959 with SMTP id v18-20020adfe292000000b0033ad2d40959mr9302147wri.11.1707131504859;
        Mon, 05 Feb 2024 03:11:44 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWxkTrOp4DywLkemB+bNdcX5wUPhxKOBtY45i8Kobm46Vhwt1JNWRl4pA18WSGKP4/82Cd9u3fthD72/QerfzoKx2Ykr/Y53+00yHaT0QgAq8v+xyJDgRqsPPwM3azMv37Sf6IMqwPQIOZFFE/iRHXUG+IvB/P0GRrsiYNnxgSUFFwJJErdBB2ReUtkvLKq0VA1Jn/2nWNXmogZz2sXBIiZkEiFkCz3Hk6zPk0LTIIFblIo2VsxGP3FHhmup0JoMiTjAGFrfA2dqQY74/woWSLsJFOxDUYauVAWcrCVDL/cJ3RmobkLhkpcLU/Sks0C8MrYgl+KDjT4YymxdfAgecgksxSt3NmtK8cNhk4J/0M5W+TPbnBUGKLcjA7Uv9SYiazauuGtVEetqEO07LI9KO9ff8fw27lYx9wpC44fUAx1/cEIdjD+VKiS7fjw3O3HYsKNih4zmcH6TPxISAVeZZcbru6Zl+lh0vhfchniNRXMP/uSaBfZD8JNQMkbl+442AJ5SyEojMwrWO5Iy9U+yY2mskBlpN3n7yigQdrSalDSnz3RprCsDtTXfgQepCgxkVVoSCmHAnctAvdd5VcCJ1B0j5euRUYrr6JhEiB9267qJgpdQy6SgtQwgHHjSivZfATzWxZBcFbK4qZ0BPqvKtipCV7ikM5yz+2tjcvA0HrwcPT9yaVRgVUdFkJManR38PFdXX91XVMQ1XQP33YcO+nhjAI89phG4+QeQAsxW7Q4Ltnpn0oGJWWvfO/qG4c/wEBPBkhj9xJXfPse9CLYuGVUDDOL1nnjMJ1zXGtpTU6n+HbQQ4nCjdEHm1xl4Ty5v3LnCBs4F4l4PQvTWchadLtCk7FxMD1SORQmxDRTI15ryU/SWZbDR0UKP6uDC/6ZMGscwbc3Noxd7fbsjmdHOMQfw46XrIq7/ZF+TBPa+Glrg/oq5lLRPdANZ88i0xT0fdGEpm
 N2tXumIOBX
Received: from ?IPV6:2a01:e0a:982:cbb0:bbd9:ac3e:db1d:9662? ([2a01:e0a:982:cbb0:bbd9:ac3e:db1d:9662])
        by smtp.gmail.com with ESMTPSA id b1-20020a5d45c1000000b0033b28a784dcsm5799075wrs.114.2024.02.05.03.11.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 03:11:44 -0800 (PST)
Message-ID: <9be17c88-4bf7-4340-8aef-9d5cac4e0f0d@linaro.org>
Date: Mon, 5 Feb 2024 12:11:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [linux][PATCH v2 3/4] MAINTAINERS: add SAM9X7 SoC's LVDS
 controller
Content-Language: en-US, fr
To: Dharma Balasubiramani <dharma.b@microchip.com>, andrzej.hajda@intel.com,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev, geert+renesas@glider.be, arnd@arndb.de,
 hari.prasathge@microchip.com, Jason@zx2c4.com, rientjes@google.com,
 rdunlap@infradead.org, vbabka@suse.cz, manikandan.m@microchip.com
References: <20240205110609.217022-1-dharma.b@microchip.com>
 <20240205110609.217022-4-dharma.b@microchip.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20240205110609.217022-4-dharma.b@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2024 12:06, Dharma Balasubiramani wrote:
> Add the newly added LVDS controller for the SAM9X7 SoC to the existing
> MAINTAINERS entry.
> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> ---
> Changelog
> v1 -> v2
> - No Changes.
> ---
>   MAINTAINERS | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a7c4cf8201e0..24a266d20df6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14230,6 +14230,14 @@ S:	Supported
>   F:	Documentation/devicetree/bindings/power/reset/atmel,sama5d2-shdwc.yaml
>   F:	drivers/power/reset/at91-sama5d2_shdwc.c
>   
> +MICROCHIP SAM9x7-COMPATIBLE LVDS CONTROLLER
> +M:	Manikandan Muralidharan <manikandan.m@microchip.com>
> +M:	Dharma Balasubiramani <dharma.b@microchip.com>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Supported
> +F:	Documentation/devicetree/bindings/display/bridge/microchip,sam9x7-lvds.yaml
> +F:	drivers/gpu/drm/bridge/microchip-lvds.c
> +
>   MICROCHIP SOC DRIVERS
>   M:	Conor Dooley <conor@kernel.org>
>   S:	Supported

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

