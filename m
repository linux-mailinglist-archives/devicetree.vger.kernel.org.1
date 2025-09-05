Return-Path: <devicetree+bounces-213285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BEFB4503F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:51:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 283AC189ACD8
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6377B26F47D;
	Fri,  5 Sep 2025 07:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TYs6mVA8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6214D244668
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 07:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757058673; cv=none; b=ZAn/sYjizhfyMlQH/1FsrL1Ley2PeVeClas2gJjmdJB6TIiT8/QfSt6Uhdf9HwYIYV0qlKOaZGF7DKjkOhVpNNaHq7xwSok2E7d2q7UZriAazGDu24gQvHpM/qodKbBGyoJiAzV0F3Kv3ESjk0n3w+R4CQuqdGCM5NzoABb6QeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757058673; c=relaxed/simple;
	bh=HpBW9ztCphu9D+zh6vwg7+g+3DgPn5GvwtPmpzJhpi8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bPr8wCqt1ttHOSLhVGKD9dHc2en3ZG8qUvLdKz8W1IMagqhKN2oMSuZU97e0OO617FXqCc/npKPe5y6S3m8nvxb3QOZgxLB9dNoM7lzhTcrYMJX5/vMnvb5HKlDrbAEbRw0Q3jbciN3gtDcxcwcFgf6ODKaFSf4DHoNTQefSMLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TYs6mVA8; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-61ce9bcc624so2479120a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757058670; x=1757663470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Fek3hgFv14ByAC4ENYyA/aKvGhAef+q+BWE8UMW+V8=;
        b=TYs6mVA8qUAOJDcjx1oFJDB9+voGqoTiYCWyYpGHpUqShLSELu4YduRGUjg5J7tN16
         OoJtIkCjFNFbC7P9JvGkUgFo3a2mNz5lsYFbT3XqucbHAJeSy7zYYuXJH6NL5MRsoCdy
         jksNw9gq0SLS1JRvApINjgb1/k9RMuhPt0uxrVbjxHo6cExDg0YyCQFX9Z8s6kfQC74G
         7yxHKnRfAHmWIYLAmNTgKqkXaCkL+NGElBgwqJw9ZjXtkM2uRSlDeEt0Twe/OIOpFaS1
         lzXN4TTqK+nI+T0YpW56Q33CC+1AjCag8Iy4FCeeOuQlmc9KcRIbCAhgNOBShhaxbqaP
         e04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757058670; x=1757663470;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8Fek3hgFv14ByAC4ENYyA/aKvGhAef+q+BWE8UMW+V8=;
        b=JSUU45ghJGvBMZEQCO12BomkQDH2XtyE14furC6Vp6kvaD88TERbiC8wIK881YqTRk
         jGyXyhliFpY/DIWCRBUmu1XuLf1BiLg+6rvZRe7CnaOIX/4oaaJWoyasOUc79X0RfnNp
         GzI6PPdaTii2Ii2aj/vFYjzy0KDyujeKhrEvsj9Xs49cuJ2EOTLtHIIUlOqFvgwyRqOz
         /fIYBODpwxoNxzO6tMaZ+bdDYsZXXfugMvBw9YO/VI9UZl0gRH2SZcHv5b2cp5XMGnlB
         QSpwLgAtr2+jD2vii2W8zHqq3mi4V1bD7s+umkC5JSrHwS8B2LEl+lcyrPR9ziVp9GY2
         osmg==
X-Forwarded-Encrypted: i=1; AJvYcCV6uixSbTn0EddshRMLXnum45gd4e/+zTHlQeN3qd//3Ta5PwnP8VIxb51+2YrEsiYxV4ftMSMApJ3J@vger.kernel.org
X-Gm-Message-State: AOJu0YzXikqwa8vpqBHHwtiiEwqahe2GDO7lY8Qlx8MdsoPLYG/O9ifY
	Dkob53zlm7Co+sSFy89m5kUPTHXpNLbLWgsYV/kyCJuhKyJFGb6mWiRjk27HBEyt8iE=
X-Gm-Gg: ASbGncvzuk0dQuQ97aN7Pm3LrJ2WezoHJztUdxYNaBaAD9renXCGUwA8RJJ7WvGSJ7s
	6vTa9FFGMjIv5nB/6q4vr42xUlG3cQcT1ucp0VYpSnkEu3/LyNPoKz2b+0tPIAX9O8TPqt9bVxY
	GMl49dPw/463q6q9vwoBiOQ3SaYIWyg3c9snoGNrnuh00EC0qsbYQQWK0mO1p3I+jNQsevBhooN
	ZkEjtJDxepBANTHo5ha4DwxLi90dc3+PmifzA63gluqYUQXOOfYIxMpdBnbEd9nC/knNNwrHQd0
	45a1xMPvstXSLZP6p5zTbykEV0DrAaE3wZsGR/ZbXbPe4PI8402WREetLERZyHrkUqp6oR+ePOE
	MRPaP3WkMY4LpxsSXIDcT4pRqv2OZs/8mXBOv7Nu2y3PS
X-Google-Smtp-Source: AGHT+IFgzgqr54lyZk759VB+wCuCumNakupjTyV8q7KH49ewQeYz3V4LPh1SGAWQQZu32+3dH/7N+w==
X-Received: by 2002:a17:907:da9:b0:b04:7880:3e88 with SMTP id a640c23a62f3a-b04788056a3mr725297266b.18.1757058669532;
        Fri, 05 Sep 2025 00:51:09 -0700 (PDT)
Received: from [192.168.7.190] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b042fcae867sm1132057866b.58.2025.09.05.00.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 00:51:09 -0700 (PDT)
Message-ID: <a0d85f06-a87b-40f6-a74a-27b148f309fd@linaro.org>
Date: Fri, 5 Sep 2025 09:51:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: ili9881c: Allow port subnode
To: Marek Vasut <marek.vasut+renesas@mailbox.org>,
 dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 David Airlie <airlied@gmail.com>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250904200130.168263-1-marek.vasut+renesas@mailbox.org>
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
In-Reply-To: <20250904200130.168263-1-marek.vasut+renesas@mailbox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 22:01, Marek Vasut wrote:
> The ILI9881C is a DSI panel, which can be tied to a DSI controller
> using OF graph port/endpoint. Allow the port subnode in the binding.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
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
>   .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> index 434cc6af9c954..cf0aa996e072d 100644
> --- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> @@ -30,6 +30,7 @@ properties:
>       maxItems: 1
>   
>     backlight: true
> +  port: true
>     power-supply: true
>     reset-gpios: true
>     rotation: true

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

