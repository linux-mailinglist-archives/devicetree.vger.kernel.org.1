Return-Path: <devicetree+bounces-38956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD5E84AFC6
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C01D31C22EF0
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6864B129A72;
	Tue,  6 Feb 2024 08:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SAgf2Oa3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95286129A88
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707207472; cv=none; b=MZuRCCRu0ZpnJ4QE/5oG2WYtP5WudjU1CoURHAEg2Z1vUs/H+e3j3u06D7Dvqz5erAYvCRU5Kf4tg5KjPrJsB1IJhvpaSfZneDG86fcexRZ0O6ECkryz6Bg+s/dCK6N8rw4oPGJT4GMRnM2NAiDx+kmr3/X0J2KcynNnMVl+2Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707207472; c=relaxed/simple;
	bh=J3nMKyi46JjYq2RxiLrwvBfnOV1E/P1Evi1Dg0bx9qA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=T3BBhxIcupPCLWxALPjqycn7OntHD6ccbdGKfMgPb/DBGp06vvqh1O0GgkAtZ+P2KO5MKd+KMcRSQkSr1GmH/dRD6awJ6LRHJh0k2cgFjkLkoqgBrNMiz04YmVA1igao87Oir/LikbwQ0QjKzti9dZgBuSMBP5bMEPBC6ykfre8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SAgf2Oa3; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33b130f605eso3442814f8f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 00:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707207469; x=1707812269; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UyN5OHMQS53X20sOXqYyX0W/PsIbBopkeWbqDFzNQLU=;
        b=SAgf2Oa3M5P+J3SMchgxBUbhi3FHbiFWdtxfKcR695wESN0O+gdpV75OEW3PDtJr7R
         bovOUh32K0ShnCg8UumdJKQJe/BorsUxBcCX9SYBiu0KGVcB7IlTREFOBIwFZ9YigmLb
         qUq4jbVIwUhYgpwAzu+AFq0dBbAevFE6WO4vArEkhoECcLywqMF/OZZFkuBdbGDhjOcy
         ODKTtiyjBgYAWpqNMlLlgLx2sEfJ7ziQBoRZfE/QYuWr5kJqnQVByoD2D8UYWUc457Jz
         cSRDyl/tfigNFZ4qVjchRLc6f32buYeOUvG4Be2POzp+2y4H1UULuVJ+UJm3ShwgPzBN
         K86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707207469; x=1707812269;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UyN5OHMQS53X20sOXqYyX0W/PsIbBopkeWbqDFzNQLU=;
        b=avlv3tAahg7sg+oFVr66/Zjvt+u+sbgU91/J7hIzale/Ud47WBgxAK5+4Y4RPPi8jO
         O8A618KbBCH82+OO3kdeZpnwBbIvSO7kKkzR/KnWdvz4q7G9mmjHdWdgyL28vx1o1FLd
         +R/4hDQpVwlOpea5Q7uMsCkCiRgZuDOLWIg52DLQM+E1bfJuG8zpUrvZ+q8Zx3s7UTb+
         BJZpFskhBoLGdISACaXlk5IadLOrRi0hiiMMIPt5YJch4VLumTPc9joob5AVHS1wabqA
         SqS1K/zDJJhVyUytxSIz/PVKsEZ89v+CQna9rX0nIsl3KE9yzCWm8hS4lJMcvAweVU3h
         Onpw==
X-Gm-Message-State: AOJu0Yz8QSGvzYzhAaLTdDos1vbUFB3R55XA7Q9mXNNED3cagq/HyX5g
	7Jn7Ip96YakkKG8MHYK9nIrcLtVmrmp02FgfUr3H/dLzk7IimuC9dA4yVQPk9Wc=
X-Google-Smtp-Source: AGHT+IHAWrg8qRK6AZYhEs+t47vN/8OCCIixVZWOXrnHnOpCitooPhNhs+moVNdSthDRAt8USHwP1w==
X-Received: by 2002:a5d:4986:0:b0:33b:139e:9110 with SMTP id r6-20020a5d4986000000b0033b139e9110mr603630wrq.36.1707207468752;
        Tue, 06 Feb 2024 00:17:48 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU3BzcUEkoM6juRR1EGp+PLKZxtOtBug1EJ4C0nP92GLAnLGzemAa2sr+2UeW8SX+HXIm5tAGSssUiSqoCjdq773ZxesH70yJdiR2w5jvn5nn1wScia8XUAUuznbFN8g4Y+jyjgXHrRPYleYecfBWF8eTghG8EgqaKlAGX5CikZbjOh5NUHhxmZ72HITcqKM/bjSICAdflkffgroAavUHFrMxcMoTnTd892daW+i5iN9Y//8nEMHlBtLqsxUYrRcphJqn5WVISWqu5aN4+9ga9VExroHbyLDVlsb8jyhC44RgvYZZhsgKLPEJ1pKHeh/0vCjpOh4VCLKGBPO1DaDN0ATLQ+geriTMo1NkVCpk6HJR8AcIwykzU4MaQ7/Z+rDgGuMTH7hyn8ngRd8bKQVuE/JwxmJ1/ZDq6HlZBzNxsPyZ5wjE2q8jfyaBFfSvLh3j2BuK40JSzeIaL/GMfzVRyprYfLf/ewWEM4MN9u0292Bzvx0g5/kxXqxkY3BVcVQIXuecNtOxj7nd+PmjzkqqzeZSM8HMKT2OANFevPDAQI2/o16li6V/8pRFLBJbGQ7OnCSCoWZDAVtUo7Qkc4VORA+PUQgAXIWOfMdfLG1iAS7n1gRj6aAQbfiIwRl3/OGA==
Received: from ?IPV6:2a01:e0a:982:cbb0:ba23:8574:fa8:28dd? ([2a01:e0a:982:cbb0:ba23:8574:fa8:28dd])
        by smtp.gmail.com with ESMTPSA id n2-20020a5d67c2000000b0033b4335dce5sm1418976wrw.85.2024.02.06.00.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 00:17:48 -0800 (PST)
Message-ID: <30648f19-f25b-49cc-94f1-213bc96c67f4@linaro.org>
Date: Tue, 6 Feb 2024 09:17:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/5] drm/panel: simple: push blanking limit on RK32FN48H
To: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20240205-ltdc_mp13-v1-0-116d43ebba75@foss.st.com>
 <20240205-ltdc_mp13-v1-5-116d43ebba75@foss.st.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20240205-ltdc_mp13-v1-5-116d43ebba75@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2024 10:26, Raphael Gallais-Pou wrote:
> Push horizontal front porch and vertical back porch blanking limit.
> This allows to get a 60 fps sharp.
> 
> Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 7b286382ffb4..10b361d603be 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3516,10 +3516,10 @@ static const struct display_timing rocktech_rk043fn48h_timing = {
>   	.pixelclock = { 6000000, 9000000, 12000000 },
>   	.hactive = { 480, 480, 480 },
>   	.hback_porch = { 8, 43, 43 },
> -	.hfront_porch = { 2, 8, 8 },
> +	.hfront_porch = { 2, 8, 10 },
>   	.hsync_len = { 1, 1, 1 },
>   	.vactive = { 272, 272, 272 },
> -	.vback_porch = { 2, 12, 12 },
> +	.vback_porch = { 2, 12, 26 },
>   	.vfront_porch = { 1, 4, 4 },
>   	.vsync_len = { 1, 10, 10 },
>   	.flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW |
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

