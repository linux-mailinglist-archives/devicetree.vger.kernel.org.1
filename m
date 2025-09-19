Return-Path: <devicetree+bounces-219327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 651C6B8A0E6
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 443394E1644
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A57246BD5;
	Fri, 19 Sep 2025 14:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FuHlC55X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66B13148A6
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293121; cv=none; b=nwI7WZ12WlWjltfdKmeXkVIZVDAcCHnI9X/fP/dqRfKKrUc1MBt1319kMxMVnLmTDQfP39pGWJ6JNasTlzYdQ/oj8CWO3MwEtNUs1SqxsO71QXxBifHS/yqUTSzKEFUDykfGCZTWLZczCH5Pd9GdtIj0ZTY5+kZwVun7UeFKcdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293121; c=relaxed/simple;
	bh=q5GTIDOH6nNGTWtSpjuk6PU/ndO/Nf+ZFH5Pj5u31/o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=fbMV+061cwhhjXNnOcRu5Y50Kn/zfKjaFxbSvjvfAyWhLuBmxXCgt66FVQLKumWh94REnBwcIlBrfJcXwybYns6bSNfo/deB3n8SGTUoI1NQ4nYQ6lY9jxiwFEJTMAv7EIb8yJHHlJAiqkF9qU4UbmqOdkWG3olMHg0VMbjalyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FuHlC55X; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45cb6428c46so21346925e9.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758293118; x=1758897918; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJj1y8HqXNnf98ADR5kQhDmwOZyt1Xf4VxjtZZ9P8no=;
        b=FuHlC55XGE75NnFuxZVpJ777sqLFZ1zXbQz4WSo3bPUwTAlN/cWYS4zUUjyU1w8137
         MeGYn34Cbr9xe4Acyp/hl6mJBu9aHq8Dnb/bmd6GTyWNWX0FVC4O42/oc3hTTre34RGb
         a7Trd73WhQbtnRb4eLCMNhjqi22/Te7jHOksXqn0eZGDxgGRn30FGzM3uXzfv80upgQt
         68RzV9ELz/HRC8tIhtNzPTTgR6wGXCQfMtILjm6eoE97OPt2F/ELSap/sZOME8iZ6AbS
         pS6/cQ+DKOsysiMXjsEPxAfqjYVuaDwDmX0RNmslr+Sc128vqtCUA7kXVBAVvwNWnyET
         2oGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758293118; x=1758897918;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EJj1y8HqXNnf98ADR5kQhDmwOZyt1Xf4VxjtZZ9P8no=;
        b=BsevpyB1xQUu8zz8ulotrvSvjL4cR2xzxhivHpUNNEkdaIY4EtRJ/kTW5ogvR2dROQ
         5y8UtDSPBASX2aErRn/vG/KJeRP/oUSyg8G7xawz+CDsZk3hL8x/ODz8sT8YI9WIaXud
         RyYJ2Ugw9XsK20afpKsIFn5RVX0QE5MWgMWMNr6q6MA4UuLL5Ye5kKOSwUQkO399YW4c
         UDUr4sVRn9sO7z35gMY8v7XkkL01vw7ekmNWPuAPnAn2bKR+/en8b4GAUY/np5EXtBYY
         5fdii15FU2hfztQwjMHj2EqbUsIqtIcXNhSSu9JiWk0z3tM06W0fdzq6FvjLNPsVwUx8
         L3eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNo1GR8mWaZTMoMoqPAzYEHBkK6uZP96+suRdAgtPST0rrL7npMZplxAVBIQ6aYsm8SMdSVfCLDsUZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzG5g5cf6tDwof9cFu9k1ys2FUSBrDugGkoni5qMANBikefDRK7
	pVp08XgosOTzBBfrRl4Q1DkDBYF98HwwMAN0u40agXGIvnSCvyZUdv/N9WfBZE0Bhvo=
X-Gm-Gg: ASbGncsQuJLdeNWGy2ibVwmWv8boQw5pxzDwd2lcFcej8lbpNOf+e5Gx4QSxC4Oha1C
	F8Tw3XbyxbB+1H/1exce4XQCa1IRQCU22nyszdp0egQyWU4hAxj6gijj2fwtnVwZXWZ+MyOER04
	k4AOn7MH33Kk4J9M/FNhtxLf9+jfiXQOVt4df3hZ896kk4BgVmpo2AkoQHbJX+RAnsfjp6ZAz3H
	ZMrgMPh498UCK+NHqmbVHOC7WNsHLsaj9LXQ+4eJWkXZEygnbLa+zTQLQCOx6/Q5HiXhOCq9aXB
	VtwRdAUrC3iusnS65Zt8qYJUEsqjJ9XywA6yJauUiOR9clBnAHXb/f/yMXgPKwgKeWbybKKU9+W
	lVf8WHOwRKJVVXkJ3oY8bPnVO592+hTMFlJxkac1W1lpwxvs0Dm2gOZAGhZjJ9HV8iUPBurfT
X-Google-Smtp-Source: AGHT+IFxWL+PQqZanQNlYmC61Jl0EglExICuzzye9odcz+14oOJKf1NTLs6pstSwIMChvW2GI7XGEw==
X-Received: by 2002:a05:600c:468a:b0:45d:e326:96e7 with SMTP id 5b1f17b1804b1-467eaa86e42mr31110285e9.29.1758293118114;
        Fri, 19 Sep 2025 07:45:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:77b3:66a:b2a0:c20f? ([2a01:e0a:3d9:2080:77b3:66a:b2a0:c20f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee073f3d73sm8046942f8f.8.2025.09.19.07.45.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 07:45:17 -0700 (PDT)
Message-ID: <272d8cd6-e151-4bab-b8fb-438182a575be@linaro.org>
Date: Fri, 19 Sep 2025 16:45:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 0/3] Add LG SW49410 Panel Driver
To: Paul Sajna <sajattack@postmarketos.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>,
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>
References: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
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
In-Reply-To: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/09/2025 04:32, Paul Sajna wrote:
> This patch series adds a drm panel driver for the LG SW49410 panel found
> in the LG G7 ThinQ (codename judyln).
> 
> The basic driver skeleton was generated by https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> from the vendor device-tree.
> 
> The panel driver works but during testing we noticed sometimes the
> display goes blank. Source of this problem is unknown but seems to be external.
> i.e. It could be a conflict with another driver or an issue with
> aftermarket panels.
> 
> Comments were added explaining magic numbers, and devicetree
> documentation was also added
> 
> Once this patch has been accepted, I'll follow up with
> a devicetree update for sdm845-lg-judyln
> that includes this driver, along with several other improvements
> 
> Co-authored-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
> Changes in v2:
> - use "multi" versions of functions
> - remove DRM_DISPLAY_DP_HELPER
> - change dt-bindings to panel-simple
> - Link to v1: https://lore.kernel.org/r/20250910-judyln-panel-v1-0-825c74403bbb@postmarketos.org
> 
> ---
> Amir Dahan (1):
>        drm: panel: Add LG SW49410 Panel
> 
> Paul Sajna (2):
>        Update MAINTAINERS for lg,sw49410

This patch hasn't been reviewed, and anyway the subject is wrong, it should start with MAINTAINERS:
please fix ans send a v3.

Thanks,
Neil

>        dt-bindings: display: panel: panel-simple: Add lg,sw49410 compatible
> 
>   .../bindings/display/panel/panel-simple.yaml       |   2 +
>   MAINTAINERS                                        |   5 +
>   drivers/gpu/drm/panel/Kconfig                      |  13 +
>   drivers/gpu/drm/panel/Makefile                     |   1 +
>   drivers/gpu/drm/panel/panel-lg-sw49410.c           | 502 +++++++++++++++++++++
>   5 files changed, 523 insertions(+)
> ---
> base-commit: e04c78d86a9699d136910cfc0bdcf01087e3267e
> change-id: 20250910-judyln-panel-948f177c5c5c
> 
> Best regards,


