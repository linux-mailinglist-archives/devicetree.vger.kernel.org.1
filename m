Return-Path: <devicetree+bounces-166512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E54A878F3
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C0D91892AAD
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328E9263F2D;
	Mon, 14 Apr 2025 07:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DsPiA1l8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3511F258CF8
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 07:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744616110; cv=none; b=IBlhRxky6z6fy2KNHhv79yiQ/3czDt+7jTHgMV3PZVVI0hIUbe/sqaqdYwf+ZxYIRQqcWGgucrTWSOzBsjh+bzmdhZMGRynHIfZs8N+4mJrPqpB04J6iVOTSJeh5DRwZXhlZNk7nZGUgHK2F8LJpa2d1kXhWNAgAcEJDM+OUqoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744616110; c=relaxed/simple;
	bh=7EGoSxyZzU4q3wMa/1B9RL8gmsmcIFk+84VxlSi6Sno=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Qx8Kp2ySORVHOjMx4G2PGeZ4Xq9bVf/2rnrG6y8/lheHC0PMDHaydDqcuwlmfc9vCT9G34ljL7xcubAWE0olAJZCGo99zL9MSQ3h9skMdLGBK1dcifiL9OLt8jttSgimOdnpSEFfWAAUqp8/W0M/SQhFHAmRJ6DZhZkEEj51Fl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DsPiA1l8; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so32005015e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 00:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744616105; x=1745220905; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NCLOV7LW2sCf+llBBjrEx21uZp9vw+Sjf5JHLJEffcY=;
        b=DsPiA1l8YNuNIfQwocgG7oFk1iU1UV83hNxjK7UrUKaiLRZnLG/yb7N/5mY/FHsWhQ
         pW7kn6Hf9fj7AtjhhHekpWix3cq5AFUDkQIg7K9iL++ZNwgIw7mfdpV7zx8xtG8IqRT6
         W4FaxgBxZ4gi3eTuretM++NaX+sk0urZjsdTOAMdzagxdOZF2xawlMIgP+GdarLjtLQx
         Xp0hIQZ7kJ80cPWSpS+uyhMPITdGvXT8ecRijseVTlwWGOg9NpokCy4DN6bGyajKSaNV
         s+bSeHwng6fO2GPr39l4gAtn3ZRZCpbRoCxePkKdyPMdJ4DueGcuaIdPJYlwwC/X1XlL
         y/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744616105; x=1745220905;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NCLOV7LW2sCf+llBBjrEx21uZp9vw+Sjf5JHLJEffcY=;
        b=UeuTIAVekf5VjWhLk3ON7XeY+V201E1MNZ4AVPeFp4PTPa/njksvL9Dv9KgymDPR1j
         xV/LIultmB6IwsKwzdP8KeM9/j+gzwmUAUlbe20BK8cs2m6+jQsXcxapq2hdK+noI/EL
         CToNVHXpfuJI+yh6SY+7u+esyObZF7Qi7VwT0OORAb2GIrsn3gsl2T7FYJ1tzWsM2vM4
         lPdSBuQbplPnd7+Q3qDtcQIweiSMguDBUAAIEs4oZNNAQx1YaNO3bXiY4vvHRcUW+zQ+
         lvghIn41rIlBB762MQabRoFcsUQJkTFPAQutR83tGjlaBH7Gnn88goaZsjzvBejM3YbO
         Rxkg==
X-Forwarded-Encrypted: i=1; AJvYcCWG3Df98GdPBfVErYu4AGPEgLakY2lt58bTwqiFXyXtEdkjmB8KuH3pq8HbHJLn5yn4bhcwwaaSoC4d@vger.kernel.org
X-Gm-Message-State: AOJu0Yyau71xN6808Hv/VbVWpd649PxIThotYh/fEUP5r66J9qLh3HOq
	59on5JberGbJemSE4I/2CyUPq93ZaTd+rBhwdcwaOursTCBNUMu+nWPF0kN1mGA=
X-Gm-Gg: ASbGnctNSVa8j+1lJm2N6K5UEoTm2AiKqOlL+aTCICC4IwLFtYM+08Zl4KzeAmxA8Zr
	+K/O7BbGQkUzvUPoGNSjQFM826dJK8VtHoQdFXKdcTQNxBHX8bI3fFuyc56qlngYlz5qP2J+ryj
	9nv0pZTxGqwMCxbJZl3o7YvQri7L0f41ddJ2Djd7X08fFdSvmeXzS1WRb0IoeZpGC9FE/jaJGNH
	cqtIP8Bp/ms+p19YuEgiSIn0KVYhsSkOJFQn5xzcxdlVcWfjRdaxbPnElzmogLqjqU6wbLtTV0M
	fxgPiP2B5gbGsby7NO9CoibR3cEquaOoUB4x+68u7/xUBzECxBNk9N+rPejLia27qKIWM2TpA6X
	WWDsZNb/OwpQ3aCHTJw==
X-Google-Smtp-Source: AGHT+IHa0Y15AjuuA8Tmi5tOJeVaFk6gqLu4ymA87BqNvKQnk3PftrJet0B6GXWbGctECoqC+wEEyg==
X-Received: by 2002:a05:600c:1c8e:b0:43c:fe15:41cb with SMTP id 5b1f17b1804b1-43f3a95dc30mr91510165e9.15.1744616105264;
        Mon, 14 Apr 2025 00:35:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bf8a:3473:5c13:9743? ([2a01:e0a:3d9:2080:bf8a:3473:5c13:9743])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f235a5d57sm169684115e9.34.2025.04.14.00.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 00:35:04 -0700 (PDT)
Message-ID: <2740b178-34cc-4b95-a8da-7e6862cabc92@linaro.org>
Date: Mon, 14 Apr 2025 09:35:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC v5 0/8] media: qcom: iris: re-organize catalog & add
 support for SM8650
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
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
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Vikash, Dikshita,

On 10/04/2025 18:29, Neil Armstrong wrote:
> Re-organize the platform support core into a gen1 catalog C file
> declaring common platform structure and include platform headers
> containing platform specific entries and iris_platform_data
> structure.
> 
> The goal is to share most of the structure while having
> clear and separate per-SoC catalog files.
> 
> The organization is based on the curent drm/msm dpu1 catalog
> entries.

Any feedback on this patchset ?

Thanks,
Neil

> 
> Add support for the IRIS accelerator for the SM8650
> platform, which uses the iris33 hardware.
> 
> The vpu33 requires a different reset & poweroff sequence
> in order to properly get out of runtime suspend.
> 
> Follow-up of [1]:
> https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v4:
> - Reorganized into catalog, rebased sm8650 support on top
> - Link to v4: https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org
> 
> Changes in v4:
> - collected tags
> - un-split power_off in vpu3x
> - removed useless function defines
> - added back vpu3x disappeared rename commit
> - Link to v3: https://lore.kernel.org/r/20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org
> 
> Changes in v3:
> - Collected review tags
> - Removed bulky reset_controller ops
> - Removed iris_vpu_power_off_controller split
> - Link to v2: https://lore.kernel.org/r/20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org
> 
> Changes in v2:
> - Collected bindings review
> - Reworked rest handling by adding a secondary optional table to be used by controller poweroff
> - Reworked power_off_controller to be reused and extended by vpu33 support
> - Removed useless and unneeded vpu33 init
> - Moved vpu33 into vpu3x files to reuse code from vpu3
> - Moved sm8650 data table into sm8550
> - Link to v1: https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org
> 
> ---
> Neil Armstrong (8):
>        media: qcom: iris: move sm8250 to gen1 catalog
>        media: qcom: iris: move sm8550 to gen2 catalog
>        dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
>        media: platform: qcom/iris: add power_off_controller to vpu_ops
>        media: platform: qcom/iris: introduce optional controller_rst_tbl
>        media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
>        media: platform: qcom/iris: add support for vpu33
>        media: platform: qcom/iris: add sm8650 support
> 
>   .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
>   drivers/media/platform/qcom/iris/Makefile          |   6 +-
>   .../media/platform/qcom/iris/iris_catalog_gen1.c   |  83 +++++++
>   ...{iris_platform_sm8550.c => iris_catalog_gen2.c} |  85 +------
>   ...ris_platform_sm8250.c => iris_catalog_sm8250.h} |  80 +-----
>   .../media/platform/qcom/iris/iris_catalog_sm8550.h |  91 +++++++
>   .../media/platform/qcom/iris/iris_catalog_sm8650.h |  68 +++++
>   drivers/media/platform/qcom/iris/iris_core.h       |   1 +
>   .../platform/qcom/iris/iris_platform_common.h      |   3 +
>   drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
>   drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
>   drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 ---------
>   drivers/media/platform/qcom/iris/iris_vpu3x.c      | 275 +++++++++++++++++++++
>   drivers/media/platform/qcom/iris/iris_vpu_common.c |   4 +-
>   drivers/media/platform/qcom/iris/iris_vpu_common.h |   3 +
>   15 files changed, 598 insertions(+), 300 deletions(-)
> ---
> base-commit: 2bdde620f7f2bff2ff1cb7dc166859eaa0c78a7c
> change-id: 20250410-topic-sm8x50-upstream-iris-catalog-3e2e4a033d6f
> 
> Best regards,


