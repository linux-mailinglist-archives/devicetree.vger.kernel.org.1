Return-Path: <devicetree+bounces-191200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C35F3AEE668
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 20:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D7733E0685
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 18:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303822E7184;
	Mon, 30 Jun 2025 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dNfo2goI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEFE2E3371
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 18:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751306673; cv=none; b=DofJbFUcmTz8s1zNB/F+y8oznHwEfVBaBTOkMuzDG9cPNU/bNgfCqr427XfUKtfO5PjpvlxO85V6N47+nu2yXvRQ1HuONW4UdOVL4ptWT3jre0NgpPsslki9o+27gpFjnBcLwEEXSEdZY8fZry6eZy1xb83mwUQSVOsgvqtQErE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751306673; c=relaxed/simple;
	bh=ZKPRDHlzzHNCWDVJJNURpJpvT7hM8AuBE6fLXfb0op0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=sAnaVP8tg8vtUqhhpD2W8mFsgEi1WnxZiz+cnQCjMADTzsHPLUUol7UPof3dL1lqEl9knwvB+MdAWkqlekHyttdkwfz7VQBPbJDs7yBawGipumNxxcj/iQYlvO3vqnDjfLd/emf0pS/1Tz1p6tNyuNKjt/pTPT8Du4OLa3A3GKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dNfo2goI; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-453634d8609so33755345e9.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 11:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751306669; x=1751911469; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jzyLhIO2/dVrs9OAoxTRKyeEq4PGZq1spv/1YCsSOCU=;
        b=dNfo2goIpl5wV6V2veov662LG74KoaGqMj6A65ZDQ72YiIwaHRk9FxXqAXYcIXjWVs
         Rv3Aalv7Ob90lu7+vGPCopR6t41rd9oabuL3B315B6qTYwUPdOaOqxT4kwCNfo5fGl5M
         N31wquRT80OQfjK3K0S/PDe++PRwSRVrLhQdGf+j+vRLfCgfJe9kDFkNYTqux8L+eBIS
         P5j17dJRh6+rzpLfZBgwRP5jiy15p3ZBFH9PGxXpc2OpZdQ5trddANbv9ZGSGj5DgQed
         PnLo8EcnJlRDwJEC/GrNxiNlwScx6BwOQzu6ua23X/l4cmim8W/NzQQVLhnvN9Ug59t8
         qqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751306669; x=1751911469;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jzyLhIO2/dVrs9OAoxTRKyeEq4PGZq1spv/1YCsSOCU=;
        b=Uohq12zcGL6o4vmXBHG0CBthyPFo47MSA4eSlH7pgrvtRgqxT1EDskqKpb47rYP/BE
         ZS5FIGyPJWHZPFB6Bt3kCz53AdrnGAD3v9izA0ZgYY8llrkMbXgQIdx/TfOjbHVYAlQb
         MIJoc3/XybTJ2X2VhmJ4dUnRQEoy4dWZMRD0ahIVDx5Bg4GBnvsrtGQKQtShKBVDnGEs
         WlZSCRIOXxBzVR1WpSQVK08KbTeRIAb7wDDnIEAWMOmfFVeYu8Z0DxBbR2/tOrNi6MzI
         EbAc6lmK2h2mpaNxFjRtHs4RittdTq96l5V3rk2AkKtlRKSraKp1i9rJMeUoNa5yYFzF
         8xKw==
X-Forwarded-Encrypted: i=1; AJvYcCWP0p2bmMUb3fgfmepaRdcUnqNCWy5w1EL4fNg0lMBhrvdkTdt1VGjIvBqFD+J/vpGhw88iI3K7gj91@vger.kernel.org
X-Gm-Message-State: AOJu0YzfZ9IhmiOl3t69w1aQ1/sURJAUL7I9l5Byt9dtT8TaFFiBPUp4
	jqpSkyPBtLvnDd69sIvu5fol8kE7Du+u8ldwnjJr8+ktqrQRSCOMHPeetGOvOvpjQes=
X-Gm-Gg: ASbGncsV/9JonggfqzEuia+j3rOel7hBJeajMdiynl/F0iHJBf5bTCxQv163SE0WV5X
	sxl8bx5yxEQXGay1MPixrHrqFa6gBdwn3l2dgvwOQTPvN0NLJuaqF8fct4YQplfRE83PKuzgAMa
	fbnD11SYZucgtByLgo8aRNPbnTST7/x2sxo/CdVKkhDVbXEFbjMsruwYtu/jTdj3QrGFdzw/07m
	GXCPxEsT1E7u2EqJwkWIcOYnVvxliRzf687OiFHAJ7sna4bx0ytig1YXcBV5AF5QPwvSq9bHv2T
	wAuqP52CTmm4/3o8nIWR8FOmd/DujIW76wPrEVPdsdEBIYqwRkScWrG78fyMzsA65ND7DfsBPoT
	Y6UAKl8JjmoG23xerY5uo66OuKK8stKI7e28e3og=
X-Google-Smtp-Source: AGHT+IHRSx5CGZmWRMNIAetHYhuZITQEsB0DhmQXeUhagKx55LzxJzkoo1AhHNRcIq8szEkLC4wGIw==
X-Received: by 2002:a05:6000:2b0d:b0:3a4:dfc2:2a3e with SMTP id ffacd0b85a97d-3a90038b75bmr9898270f8f.39.1751306668625;
        Mon, 30 Jun 2025 11:04:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb? ([2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e5f8e1sm10875328f8f.88.2025.06.30.11.04.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 11:04:28 -0700 (PDT)
Message-ID: <6c5d9ff2-fa59-4151-99fe-3bddae46b507@linaro.org>
Date: Mon, 30 Jun 2025 20:04:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
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
In-Reply-To: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/06/2025 17:48, Vikash Garodia wrote:
> This series introduces a sub node "non-pixel" within iris video node.
> Video driver registers this sub node as a platform device and configure
> it for DMA operations. All non pixel buffers, i.e bitstream, HFI queues
> and internal buffers related to bitstream processing, would be managed
> by this non_pixel device.
> 
> Purpose to add this sub-node:
> Iris device limits the IOVA to an addressable range of 4GiB, and even
> within that range, some of the space is used by IO registers, thereby
> limiting the available IOVA to even lesser. For certain video usecase,
> this limited range in not sufficient enough, hence it brings the need to
> extend the possibility of higher IOVA range.
> 
> Video hardware is designed to emit different stream-ID for pixel and
> non-pixel buffers, thereby introduce a non-pixel sub node to handle
> non-pixel stream-ID into a separate platform device.
> With this, both iris and non-pixel device can have IOVA range of
> approximately 0-4GiB individually for each device, thereby doubling the
> range of addressable IOVA.
> 
> Tested on SM8550 and SA8775p hardwares.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
> Changes in v3:
> - Add info about change in iommus binding (Thanks Krzysztof)
> - Link to v2: https://lore.kernel.org/r/20250627-video_cb-v2-0-3931c3f49361@quicinc.com
> 
> Changes in v2:
> - Add ref to reserve-memory schema and drop it from redefining it in
> iris schema (Thanks Krzysztof)
> - Drop underscores and add info about non pixel buffers (Thanks Dmitry)
> - Link to v1: https://lore.kernel.org/r/20250620-video_cb-v1-0-9bcac1c8800c@quicinc.com
> 
> ---
> Vikash Garodia (5):
>        media: dt-bindings: add non-pixel property in iris schema
>        media: iris: register and configure non-pixel node as platform device
>        media: iris: use np_dev as preferred DMA device in HFI queue management
>        media: iris: select appropriate DMA device for internal buffers
>        media: iris: configure DMA device for vb2 queue on OUTPUT plane
> 
>   .../bindings/media/qcom,sm8550-iris.yaml           | 40 ++++++++++++++++-
>   drivers/media/platform/qcom/iris/iris_buffer.c     | 15 ++++++-
>   drivers/media/platform/qcom/iris/iris_core.h       |  2 +
>   drivers/media/platform/qcom/iris/iris_hfi_queue.c  | 20 ++++++---
>   drivers/media/platform/qcom/iris/iris_probe.c      | 50 +++++++++++++++++++++-
>   drivers/media/platform/qcom/iris/iris_vb2.c        |  4 ++
>   6 files changed, 119 insertions(+), 12 deletions(-)
> ---
> base-commit: 8d2b7fde56597ca912f5daaf3ab58915458ba1fc
> change-id: 20250619-video_cb-ea872d6e6627
> 
> Best regards,

I tried the patchset on SM8550 QRD and SM8650 QRD/HDK and the system just reboots
a few millisecond after probing iris, no error messages nor reboot to sahara mode.

The DT changeset for reference:
https://git.codelinaro.org/neil.armstrong/linux/-/commit/e1b3628469c038559a60d310386f006f353e3d59

Neil

