Return-Path: <devicetree+bounces-202220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AA7B1C753
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 16:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B488D3A2EC7
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 14:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C4028C5D1;
	Wed,  6 Aug 2025 14:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Delc9JxC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E845B1DED49
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 14:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754489278; cv=none; b=B+XcsQYLjsRv46xob1Or9xagT6HmQMQBcjs9RU1B/b6tiHfPq6H/duI2aqGI9TYQMiNQqUDLVzetJtsyntXIp39OrzfYYN7ZsQz8p4YZWnr+PZB4ejNJT2hQtkNcoZCme4Ry/vdhF9GUjvHz69U0hpR+QRtfe1OR5jC5K5Sr3eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754489278; c=relaxed/simple;
	bh=5ClgcGgo+fcnd+8D57GTJTfiQF9syoEA+kAp4PAKd/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bfCHlNRYmEYUelmnbNkidn2XavwUgPOD15Tk/numHHlF9nmLIcVebfP76G6ed8woMcmeUZK/j+4FkCJgZjp5WgM8rWwODrZjMfJLX6yCnY4gkNF/kFfJ8JaPb9KNUeIi6L8TGEuTpyy776kfgjlxg50qEzYCi0vOPUMr+nCnZVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Delc9JxC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4589b3e3820so66012005e9.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 07:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489275; x=1755094075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8Pm5cYrQInMJGl5+hX9jruWqynnloC64HQ1dkE8Byo=;
        b=Delc9JxCsY5eTnL5rNllonFu1BMz9wDykIBaYyBDWyRTMIUsnqWC4HoTyBs1vo0f0e
         WGe1RBieQeT89x8MWTo90Xz1DfgM3Xs7FvnhI2DJ0Amu9yzAVb9eZG6CEmgGEPccJ+ir
         ilwkMHvVBovhhoPLNvI7lS9krjNZNJByKZQwJzLFzK3piBp267c0k8vy40AY1Ig28W2p
         cdCAReIjSg0Geyn2Gr6uMwKv1cSMLgvbbjSGnVzLWk1ZUGqdFg110cYNI54e3fTk1UP+
         GqA4bmnkYLmaGzd/5dAD/mNb6A/fS87tM/lk/sw3LeERlmIxqmp6nZOyu9/YBKlJfyVU
         pO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489275; x=1755094075;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q8Pm5cYrQInMJGl5+hX9jruWqynnloC64HQ1dkE8Byo=;
        b=lKdLCIlhTzGurJQIxxxQC4t6z2RtUSU5AybPvNURcy/YEigR3tanZTHgKkHZgBXOBc
         POPbsKpCMfsQHBDYDwijhBAQfIJkorPZndCpo+eYZ8Oy5uCvzaFwCia+IB00p3CPhaGP
         51HHeqqeiLsgwRnMu0FB6fV/7vl91M5eb+6UaxtzpCz2lfegESN1qZaZyJNcAfKcZmX6
         aJSAvBv1ZBSw/YjXsC3A1Hh3/frE7+5mo+x5BH91TDLou3aXUldcl2LioIGqVCg4andL
         5lXxzRuYSXLcNRbRWUh1inzoZxmuKvhjhkdORorHqhOvDirNVS8jxfJEp/UcgdyuPZ+i
         FccQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbJ3QdIGLIwPeLDHc6uSX69taMAlHqtUmQNOW21SF44kaTI3wjJGV4wE/ypDCq3LsY6tZGemqRYC+j@vger.kernel.org
X-Gm-Message-State: AOJu0YxU2FGtszByhTIHByli82xPaQSLOWmy2wkdqnjO84RJpR5cTU2z
	dXF6JAgQrLowkvwLOopqeWOc4HtO3SH+HKrgY0mVe4y4wGzpAVIHxMtBVDWzIXsMfKI=
X-Gm-Gg: ASbGncsG+TnwAyeFItkmBjgdpI4Yn/+i7VSQv8mmkYIZ35RyC2CJjZ2VnpcIEQ1ilCl
	nNZJkEO7JwfzVS1Z81cvifKIJDKJS+IFCk0WU2JLIvi5k/pmkPyuG7O8aSJaGKLUoivocfdlHcq
	+4u1bWWdVB3RFChJ8esfF1u/GQj/lQBRpcC6N3CrDQUvgIQgV9v3nFIoETOb8szEby94A6td+No
	DOHUKNnOzIpFfyX4Y3MXDOumyJW9D5dX36yx0wS7jQYcyM4UYdhH8LeXrWd8G0SgGpGTmFvK1DI
	gyfz6/YlGqRSfRQ/vu34uluIQ2MEFvlXuPOOyLtBaiG3Q3Xcb7XcFB0O5J++wGHvEUhk+iJ2EIa
	OxnJmkiQ4Yq0JW6GPSQa7wnXJTYFMid2eL3exJIGRh7TI/UXZ3Qqx1sabSvfpt4L3UWPsQz4pKK
	0EU5obeEUjlw==
X-Google-Smtp-Source: AGHT+IHyy3f0kKEfQMWCY8d3Nqb03JJf0GPhRnQICd+XwnofzSDkX6gRuK7WSpYOcTRPtt5zNiAXUg==
X-Received: by 2002:a05:600c:a03:b0:458:b068:777a with SMTP id 5b1f17b1804b1-459e9ee8b3bmr23272885e9.30.1754489275136;
        Wed, 06 Aug 2025 07:07:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5862fd9sm54780515e9.16.2025.08.06.07.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:07:54 -0700 (PDT)
Message-ID: <6ecd2cac-87cb-4921-8c8c-0f04112dff2d@linaro.org>
Date: Wed, 6 Aug 2025 16:07:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H
 SoC
To: Prabhakar <prabhakar.csengg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 14:25, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add initial support for the Renesas RZ/T2H SoC to the R-Car Gen3 USB2 PHY
> driver. The RZ/T2H SoC requires configuration of additional
> hardware-specific bits for proper VBUS level control and OTG operation.
> 
> Introduce the `vblvl_ctrl` flag in the SoC-specific driver data to enable
> handling of VBUS level selection logic using `VBCTRL.VBLVL` bits. This is
> required for managing the VBUS status detection and drive logic based on
> SoC-specific needs.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 85 ++++++++++++++++++++++--
>   1 file changed, 78 insertions(+), 7 deletions(-)
> 
<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

