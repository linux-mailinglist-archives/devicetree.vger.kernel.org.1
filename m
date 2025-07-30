Return-Path: <devicetree+bounces-200822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A05B16292
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 16:21:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B7FC16840E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC672D5C73;
	Wed, 30 Jul 2025 14:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MuIUxDm5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A042AE84
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 14:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753885309; cv=none; b=pW1sunwhzLoLN1voRkzq7jvn3oMtS3aZXCx94ydThh+z8s5yerj/9yQpBisng1znBo9KS9TnYmLfUf0EFeIxI/BzQl4veUNVZzgKhOD/FwTjVmFfMp7uqHirh4mqJwu55a11srIx8oO1TbnYSWbC/dHLnvmF5abHTUPvHn+dMrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753885309; c=relaxed/simple;
	bh=nnBI8oydSFQHa82yNQVammP8UkmvOduxcI1kLmqhFlQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=t4xfR/r8ZIIpFv4hFbjOEKLp+wM+FSHm2YgDlAqA6o1VLGdSymAsWhIXlPcyJxQrtOaNHOTDNt4N+8psWbKKOF3OF3EtDo6q4goVnUf5CsKtbYoKB6ACS0SUXkboLO7J8zh8LUiz7g5wWUdPLmbTNpWhCtsYvOr+vC4//sueEiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MuIUxDm5; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b78d337dd9so1638638f8f.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753885306; x=1754490106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wl6QWGFqf/eD1ZaqoeecpKgPsEHgZ0O15WgFpZqHFQ0=;
        b=MuIUxDm5FT91t1NxqxsX6C0BoUQ9eQ8xb3rr5YyEmqMuKBiQH+Qa04qAUHdUuhzfmH
         dIHmXYLx9S4Ekz7zkymdUp3KnCbs2vBTZnOHhb4J1cqe8xAha3wP2rWfn2tFpF9ZF4ta
         6BBQJ+WC2iLZG+FNkSMa7DbBPh6+m0lS2kHzUmC1Vp63FAytvgrgN+3ZHWM/zUiOm9x9
         KmLwy7iWytq+aoo5SeDPPosL1egKfyEYkJnk2652Y2mIFjW0pWlehAmhjKZZJAnToN2K
         qVMMF5e1agSl+gtLBkwTxLEeWSE9+cyjvhO4lOrK4GqItQQtYEIEnKALmvH9OcnfVa/0
         Q9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753885306; x=1754490106;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wl6QWGFqf/eD1ZaqoeecpKgPsEHgZ0O15WgFpZqHFQ0=;
        b=ZOrq6Dh/s/C0FpB8kBpeogAf6ELCLomQ6gMJf4MAxsQDmNyCYDWaVJv9nC3/nfmyJV
         NFIIwTSvbCjkXj56MFEAuhz7a5nyWKXhxFpdmaWeK9ZeZtQ7bo6ZtrxcLXkb9IG9OmO1
         MnCSYQjfp4691MQfiakk2Ju21BJTXZZKLhd5R8uVZy2VAhK9wDeRWKLX75oY/OGMg/5U
         Lh2ROVSMzbAA7FtnuP/KIIAe/EN0MuXD2lRVWOe03+xHG/rJIGmt6elwjh7ZLyfJ5E9v
         xVLxwdPj8QDfcH/ZOOPmsbJll/PuY6qS5Mnh5R/HUEldlS9K9Go+GzVoFmHK6I2ww7mN
         rMmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCx5PEJD//q4RIW4kts2R6imstN066siCrXna8AKzu/Lg8ODcz+rTz/Oo+E7UqfcbfWNy/vVe+jSt4@vger.kernel.org
X-Gm-Message-State: AOJu0YyLqmYiDsv+Q9O+dr1CitEwwhYHf51lKzJX/b3629vBdw3QihpQ
	Wxc5s0b4paJV0MLcXVw6CRyE9mG56GTNJaQO8O45T/FnLfp8XIR8v7BhFxkfAVMaXaY=
X-Gm-Gg: ASbGncvCFc83F+yTuAYxX4kMlOoWAA7VrgE+d/7fM0a2skd+OBEqBla6thWbWzhfPAE
	Xilt0BxYwGOx6mnmIVvd9F5p7BIRJ4BMeipANzd/JFV37m9x4nl0PGwZtkyvZMoZ9eRiueoxtx2
	iApW3kypOjOYAr012WaepMR8wC/SeVDnX1MW/iJa//t10s9aMIKYnyXKzK3Hsf6WKWfBe1V6t1G
	qYkaeqx2hkAU36rIU5GsYbKxWN8Sz59+syrAFj4JE2HOTyA8ttOT7Z7XUBlKBQLk68LWw4iY9KJ
	+1Ac/3DGuTRQ6JBnRfJmz3wJzN09wjrOC9kXP5eh3pZdLh38vCTnF74ZDyF/FwYzC5N7ysIwuk6
	5/Qu7bmcmjkx6gMBZ2TiMZB7YoiyoEC5FLcKp0P+fQAQWVxcDguHtDfzE54J8Y88htluLdxyxFI
	Q=
X-Google-Smtp-Source: AGHT+IFA5qYlm5bEqedLiGYvfasaSXHztZvhGiNg4RG0SNJu3GimE97Yr6qXPi7PsXOCZn+S+k7M/Q==
X-Received: by 2002:a05:6000:26c6:b0:3b7:8362:fed8 with SMTP id ffacd0b85a97d-3b794fc19dfmr3050534f8f.2.1753885305784;
        Wed, 30 Jul 2025 07:21:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5cc9:639a:a021:88ef? ([2a01:e0a:3d9:2080:5cc9:639a:a021:88ef])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b7883228dasm11024541f8f.50.2025.07.30.07.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 07:21:45 -0700 (PDT)
Message-ID: <1a961543-76ff-4c22-a18b-b679923fbcca@linaro.org>
Date: Wed, 30 Jul 2025 16:21:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 2/2 RESEND] drm: bridge: Add support for Solomon
 SSD2825 RGB/DSI bridge
To: Svyatoslav Ryhel <clamor95@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Heidelberg <david@ixit.cz>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250730055424.6718-1-clamor95@gmail.com>
 <20250730055424.6718-3-clamor95@gmail.com>
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
In-Reply-To: <20250730055424.6718-3-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/07/2025 07:54, Svyatoslav Ryhel wrote:
> SSD2825 is a cost-effective MIPI Bridge Chip solution targeting mainly
> smartphones. It can convert 24bit RGB interface into 4-lane MIPI-DSI
> interface to drive display modules of up to 800 x 1366, while supporting
> AMOLED, a-si LCD or LTPS panel technologies for smartphone applications.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>   drivers/gpu/drm/bridge/Kconfig   |  13 +
>   drivers/gpu/drm/bridge/Makefile  |   1 +
>   drivers/gpu/drm/bridge/ssd2825.c | 775 +++++++++++++++++++++++++++++++
>   3 files changed, 789 insertions(+)
>   create mode 100644 drivers/gpu/drm/bridge/ssd2825.c
> 

<snip>

LGTM

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

