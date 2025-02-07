Return-Path: <devicetree+bounces-143871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE71A2BE80
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 09:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D463F3AAF8E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 08:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3751B4159;
	Fri,  7 Feb 2025 08:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="POvrKBBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129521B4239
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 08:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738918505; cv=none; b=chYGQXcbybTMV+K3HvV7LOdye1oA9XRdMHZ/TwKc4qymGWR3hbXXZUu2S0DtnDZiOLZs9Tk+9M3fLQzIUZJ5F222YI9H/Z2nXUEcDo1O3Qu/nKbnNvZtOBO/mVoAGRJ5x8VDk/3+aRW8/lQplYgDjXgVukAuwhap3t/rz+JnEZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738918505; c=relaxed/simple;
	bh=fqWb2OfdJWD3lslZIW4tyZKp6Rmxnzk5Iyy35cjg0DI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hj5157zXIurLkgTVIQmBWrSX15l3knPb3STGQZ3k+V4l6VE3DCf/fUK2YLORYmp14FxUee2JB4dO/ZGkgpfmrmhJzREmbdKtt5LnDZM0qY0sbq0SWMJOcAcZylivTdFrR4CZzliel0B1eewbMUVaiN2x2SJJp2wdIbAurI1Thys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=POvrKBBs; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38daf14018eso1370268f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 00:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738918501; x=1739523301; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4NA/X6pVv6MhxU2rOACQGZ3o3qUufdc5q7/UZzaZAT4=;
        b=POvrKBBskfxhWd572+FKkeXUwkqW83D3Jkd4H7pJoE8zzpymXGjhvxTSf+c8BH5sjI
         C48yp7lLoS05wtjEg5Hf9B+/uo2k8IKOGZmYoq4/rXZxjdoseVaLpmDGYWfS1roi3mNt
         Nut25k7B3wce57hjd9Tj6UBo/o2WzQj7zxZuK5zNUtdGHyZgeXEuNe/ZECU87JDmDNMp
         6KkIQNZ6r6KSXGvn8i9JsKQhDXrT80BkgAzSQGOIPYQUm0bzcYYBl6wdUbM0monGjwHE
         eMycRy8T/ZuVhJrs9Y8MclKtEsD6+5xoEcVpc+BsAYXgNRbCm28IvhnfewCeG9QVSNLg
         qZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738918501; x=1739523301;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4NA/X6pVv6MhxU2rOACQGZ3o3qUufdc5q7/UZzaZAT4=;
        b=hmGga8ECI+L9YB8cP97oVB5NrxrnyCu8nLDmJgOXUx/f/DydiorAEwmmCPHY3Fltri
         aDHG/oVXcjty/N4JSQzZLaFfnZW752JXc+k02UNSQuOwK97xgU0hU5SSZ8oPEyadznTU
         gIWlmMissQt2vnzdQ9osGRP4T/3Y8LUa/xM46Ix4BwjGLw9ywUZHmEldR2Aewug9ER54
         cnOTnew12pGsluEQLQomafcqe0yyBlwvtBOpRuyCveEKOML7XGIyTlQpWXkaUcC5aqb5
         bBfFRdKVKlNIgq3tyBN7ZyLb1USsfjQA9nlBSd2HglhfcBOOi/nVcAdgnbV91zRJcUX1
         68aA==
X-Forwarded-Encrypted: i=1; AJvYcCW4sCg0TwLZ3EYLfkhD5StPov1evcwjp22CU9YazRpd8EJKsbDyifOpXyVek8eyuQXIDlhAlSkjNgLM@vger.kernel.org
X-Gm-Message-State: AOJu0YzvbGqwrWDZG6vulj7T9xSsBRsrBrVbkowo2iWCOtLG9ClKICmJ
	jDa6zqbNCR+2z2LSOXeBkx0Ttts9iLDJyl3zGBEQ+N4QClAA5HgBuWZG4CgWAI4=
X-Gm-Gg: ASbGncuFeUXswygzymyXdGFDD7McU21dwEc09rkRlifoWx7WFTkcNWEULthta/WeYzS
	+s+YEVUAkWxz3jrDvyMNvx+zlliWb/V4lIkVCKHgeexb98U4MHoZXaM6K2INkAqAcbG2LzChstH
	k6v7A5e6ZAElnHXxG9Ow3YvR73aMA2hV+L5Efo5XwoRB5fEn4H2o4cSeKByMkcYsjl7E8UgIJ+S
	Gjrm3gdLlFMqL86xhp7nXsS/7nhMkPoTZzp0CF+5+jOsCldtFqzIBGznYPVQd5FeVjABN04h+7J
	uisVjKqYSlhKSAHfwEEuwcRiOvchHIFPc03uZFSsF99SwYxzPoCC1Z59QunRwK9DDbFh
X-Google-Smtp-Source: AGHT+IH/4XDsyicpqDQ9Y3WcFD83TXmZ51RuwSfEt0UMQTshRCiwBSTUAjS4DsFc8GU0SU2TumjluQ==
X-Received: by 2002:a05:6000:dd0:b0:386:37f5:99e7 with SMTP id ffacd0b85a97d-38dc91133aamr1353355f8f.33.1738918501273;
        Fri, 07 Feb 2025 00:55:01 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5b26:96be:712e:30cd? ([2a01:e0a:982:cbb0:5b26:96be:712e:30cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d94db77sm82525305e9.15.2025.02.07.00.55.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 00:55:00 -0800 (PST)
Message-ID: <f6d7ffa0-6c08-45fb-9153-5e4aad1ca86a@linaro.org>
Date: Fri, 7 Feb 2025 09:55:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC v2] dt-bindings: mmc: mmc-slot: make compatible
 property optional
To: Dharma Balasubiramani <dharma.b@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250205-mmc-slot-v2-1-da3c5f30e2d9@microchip.com>
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
In-Reply-To: <20250205-mmc-slot-v2-1-da3c5f30e2d9@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2025 04:48, Dharma Balasubiramani wrote:
> Remove the compatible property from the list of required properties and
> mark it as optional.
> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> ---
> Changes in v2:
> - Instead of moving the compatible string to the other binding, just make it
>    optional (remove from required list).
> - Link to v1: https://lore.kernel.org/r/20241219-mmc-slot-v1-1-dfc747a3d3fb@microchip.com
> ---
>   Documentation/devicetree/bindings/mmc/mmc-slot.yaml | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
> index 1f0667828063..ca3d0114bfc6 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
> @@ -29,7 +29,6 @@ properties:
>       maxItems: 1
>   
>   required:
> -  - compatible
>     - reg

If you remove it from here then it's still required in Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
so please add it.

Thanks,
Neil

>   
>   unevaluatedProperties: false
> 
> ---
> base-commit: 40b8e93e17bff4a4e0cc129e04f9fdf5daa5397e
> change-id: 20241219-mmc-slot-0574889daea3
> 
> Best regards,


